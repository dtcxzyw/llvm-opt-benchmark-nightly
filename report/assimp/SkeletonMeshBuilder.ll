Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/SkeletonMeshBuilder?download=true
inline.NumInlined: 487
inline.NumDeleted: 195
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp19SkeletonMeshBuilderC2EP7aiSceneP6aiNodeb:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select, i64 1128
  store ptr %i.o, ptr %i.p, align 8
  store i32 0, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.q, align 8
  %i.t = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #11
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %i.v = invoke noundef ptr @_ZN6Assimp19SkeletonMeshBuilder14CreateMaterialEv(ptr nonnull align 8 poison)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.u, align 8
  store ptr %i.v, ptr %i.w, align 8
  br label %bb.o

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #12
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit:           ; preds = %bb.k, %bb.l
  %i.ae = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #12
  br label %_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit, %bb.m
  %i.ak = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #12
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EED2Ev.exit, %bb.n
  resume { ptr, i32 } %i.x

bb.o:                                             ; preds = %bb.a, %bb.b, %bb.j, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp19SkeletonMeshBuilder14CreateGeometryEPK6aiNode(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.aiMatrix4x4t, align 4        ; 4 uses
  %3 = alloca %class.aiMatrix4x4t, align 4        ; 4 uses
  %4 = alloca %class.aiMatrix4x4t, align 4        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 113 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 6 uses
  %i.h = trunc i64 %i.g to i32                    ; 31 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i8, ptr %i.k, align 8, !range !3
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.bo, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 36 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 12 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EE12emplace_backIJjjjEEERS2_DpOT_.exit461
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EE12emplace_backIJjjjEEERS2_DpOT_.exit461 ] ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1040
  %i.w = load float, ptr %i.v, align 4            ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1056
  %i.y = load float, ptr %i.x, align 4            ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 1072
  %i.aa = load float, ptr %i.z, align 4           ; 12 uses
  %i.ab = fmul float %i.y, %i.y
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.ab)
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.aa, float %i.ac) ; 2 uses
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.ad) ; 7 uses
  %i.ae = fcmp olt float %sqrt.i, f0x358637BD
  br i1 %i.ae, label %_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EE12emplace_backIJjjjEEERS2_DpOT_.exit461, label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %bb.b
  %i.af = fcmp oeq float %i.ad, 0.000000e+00      ; 3 uses
  %i.ag = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.ah = fmul float %i.w, %i.ag
  %i.ai = fmul float %i.y, %i.ag
  %i.aj = fmul float %i.aa, %i.ag
  %.sroa.01301.0 = select i1 %i.af, float %i.w, float %i.ah ; 5 uses
  %.sroa.61303.0 = select i1 %i.af, float %i.y, float %i.ai ; 5 uses
  %.sroa.81306.0 = select i1 %i.af, float %i.aa, float %i.aj ; 5 uses
  %i.ak = fmul float %.sroa.61303.0, 0.000000e+00
  %i.al = fadd float %.sroa.01301.0, %i.ak
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %.sroa.81306.0, float 0.000000e+00, float %i.al)
  %i.an = tail call noundef float @llvm.fabs.f32(float %i.am)
  %i.ao = fpext float %i.an to double
  %i.ap = fcmp ogt double %i.ao, f0x3FEFAE147AE147AE ; 2 uses
  %.sroa.01295.0 = select i1 %i.ap, float 0.000000e+00, float 1.000000e+00 ; 2 uses
  %.sroa.61297.0 = select i1 %i.ap, float 1.000000e+00, float 0.000000e+00 ; 2 uses
  %i.aq = fneg float %.sroa.61297.0
  %i.ar = fmul float %.sroa.81306.0, %i.aq
  %i.as = tail call float @llvm.fmuladd.f32(float %.sroa.61303.0, float 0.000000e+00, float %i.ar) ; 4 uses
  %i.at = fmul float %.sroa.01301.0, -0.000000e+00
  %i.au = tail call float @llvm.fmuladd.f32(float %.sroa.81306.0, float %.sroa.01295.0, float %i.at) ; 4 uses
  %i.av = fneg float %.sroa.01295.0
  %i.aw = fmul float %.sroa.61303.0, %i.av
  %i.ax = tail call float @llvm.fmuladd.f32(float %.sroa.01301.0, float %.sroa.61297.0, float %i.aw) ; 4 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.as, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.au, i64 1
  %i.ay = fmul float %i.au, %i.au
  %i.az = tail call float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.ay)
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %i.az) ; 2 uses
  %i.bb = fcmp oeq float %i.ba, 0.000000e+00
  br i1 %i.bb, label %_ZN10aiVector3tIfE9NormalizeEv.exit183, label %_ZN10aiVector3tIfEdVEf.exit.i181

_ZN10aiVector3tIfEdVEf.exit.i181:                 ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %sqrt.i.i182 = tail call noundef float @llvm.sqrt.f32(float %i.ba)
  %i.bc = fdiv float 1.000000e+00, %sqrt.i.i182   ; 3 uses
  %i.bd = fmul float %i.as, %i.bc
  %.sroa.01269.0.vec.insert = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.be = fmul float %i.au, %i.bc
  %.sroa.01269.4.vec.insert = insertelement <2 x float> %.sroa.01269.0.vec.insert, float %i.be, i64 1
  %i.bf = fmul float %i.ax, %i.bc
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit183

_ZN10aiVector3tIfE9NormalizeEv.exit183:           ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %_ZN10aiVector3tIfEdVEf.exit.i181
  %.sroa.01269.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %.sroa.01269.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i181 ] ; 4 uses
  %.sroa.81272.0 = phi float [ %i.ax, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.bf, %_ZN10aiVector3tIfEdVEf.exit.i181 ] ; 4 uses
  %.sroa.01273.4.vec.extract = extractelement <2 x float> %.sroa.01269.0, i64 1 ; 2 uses
  %i.bg = fneg float %.sroa.61303.0
  %i.bh = fmul float %.sroa.81272.0, %i.bg
  %i.bi = tail call float @llvm.fmuladd.f32(float %.sroa.01273.4.vec.extract, float %.sroa.81306.0, float %i.bh) ; 4 uses
  %.sroa.01273.0.vec.extract = extractelement <2 x float> %.sroa.01269.0, i64 0 ; 2 uses
  %i.bj = fneg float %.sroa.81306.0
  %i.bk = fmul float %.sroa.01273.0.vec.extract, %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %.sroa.81272.0, float %.sroa.01301.0, float %i.bk) ; 4 uses
  %i.bm = fneg float %.sroa.01301.0
  %i.bn = fmul float %.sroa.01273.4.vec.extract, %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %.sroa.01273.0.vec.extract, float %.sroa.61303.0, float %i.bn) ; 4 uses
  %.sroa.0.0.vec.insert.i184 = insertelement <2 x float> poison, float %i.bi, i64 0
  %.sroa.0.4.vec.insert.i185 = insertelement <2 x float> %.sroa.0.0.vec.insert.i184, float %i.bl, i64 1
  %i.bp = fmul float %i.bl, %i.bl
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %i.bp)
  %i.br = tail call noundef float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %i.bq) ; 2 uses
  %i.bs = fcmp oeq float %i.br, 0.000000e+00
  br i1 %i.bs, label %_ZN10aiVector3tIfE9NormalizeEv.exit190, label %_ZN10aiVector3tIfEdVEf.exit.i188

_ZN10aiVector3tIfEdVEf.exit.i188:                 ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit183
  %sqrt.i.i189 = tail call noundef float @llvm.sqrt.f32(float %i.br)
  %i.bt = fdiv float 1.000000e+00, %sqrt.i.i189   ; 3 uses
  %i.bu = fmul float %i.bi, %i.bt
  %.sroa.01248.0.vec.insert = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bv = fmul float %i.bl, %i.bt
  %.sroa.01248.4.vec.insert = insertelement <2 x float> %.sroa.01248.0.vec.insert, float %i.bv, i64 1
  %i.bw = fmul float %i.bo, %i.bt
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit190

_ZN10aiVector3tIfE9NormalizeEv.exit190:           ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit183, %_ZN10aiVector3tIfEdVEf.exit.i188
  %.sroa.81251.0 = phi float [ %i.bo, %_ZN10aiVector3tIfE9NormalizeEv.exit183 ], [ %i.bw, %_ZN10aiVector3tIfEdVEf.exit.i188 ] ; 2 uses
  %.sroa.01248.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i185, %_ZN10aiVector3tIfE9NormalizeEv.exit183 ], [ %.sroa.01248.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i188 ] ; 2 uses
  %i.bx = load ptr, ptr %i.a, align 8             ; 6 uses
  %i.by = load ptr, ptr %0, align 8               ; 5 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 3 uses
  %i.cc = sdiv exact i64 %i.cb, 12                ; 4 uses
  %i.cd = trunc i64 %i.cc to i32                  ; 13 uses
  %i.ce = fneg <2 x float> %.sroa.01269.0
  %i.cf = fneg float %.sroa.81272.0
  %i.cg = fmul float %sqrt.i, %i.cf
  %i.ch = insertelement <2 x float> poison, float %sqrt.i, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cj = fmul <2 x float> %i.ci, %i.ce
  %i.ck = fmul <2 x float> %i.cj, splat (float 1.000000e-01) ; 4 uses
  %i.cl = fmul float %i.cg, 1.000000e-01          ; 4 uses
  %i.cm = load ptr, ptr %i.o, align 8
  %.not.i.i = icmp eq ptr %i.bx, %i.cm
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit190
  store <2 x float> %i.ck, ptr %i.bx, align 4
  %.sroa.51245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store float %i.cl, ptr %.sroa.51245.0..sroa_idx, align 4
  %i.cn = load ptr, ptr %i.a, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 12 ; 2 uses
  store ptr %i.co, ptr %i.a, align 8
  %.pre = load ptr, ptr %i.o, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit190
  %i.cp = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cp, label %bb.e, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #13
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cc ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cc
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 768614336404564650)
  %i.ct = select i1 %i.cr, i64 768614336404564650, i64 %i.cs ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ct, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cu = mul nuw nsw i64 %i.ct, 12
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #11 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cb ; 2 uses
  store <2 x float> %i.ck, ptr %i.cw, align 4
  %.sroa.51245.0..sroa_idx1246 = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store float %i.cl, ptr %.sroa.51245.0..sroa_idx1246, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.by, %i.bx
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %i.cv, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i ], [ %i.by, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i.i, i64 12, i1 false), !alias.scope !4
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cx, %i.bx
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !8

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cv, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cy, %.lr.ph.i.i.i.i.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.da = load ptr, ptr %i.o, align 8
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.dc) #12
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.cv, ptr %0, align 8
  store ptr %i.cz, ptr %i.a, align 8
  %i.dd = getelementptr inbounds nuw [12 x i8], ptr %i.cv, i64 %i.ct ; 2 uses
  store ptr %i.dd, ptr %i.o, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.c, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.de = phi ptr [ %.pre, %bb.c ], [ %i.dd, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 4 uses
  %i.df = phi ptr [ %i.co, %bb.c ], [ %i.cz, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 4 uses
  %.not.i = icmp eq ptr %i.df, %i.de
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backEOS1_.exit
  store float %i.w, ptr %i.df, align 4
  %.sroa.131326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store float %i.y, ptr %.sroa.131326.0..sroa_idx, align 4
  %.sroa.161341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store float %i.aa, ptr %.sroa.161341.0..sroa_idx, align 4
  %i.dg = load ptr, ptr %i.a, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 12 ; 2 uses
  store ptr %i.dh, ptr %i.a, align 8
  %.pre1475 = load ptr, ptr %i.o, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

bb.h:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backEOS1_.exit
  %i.di = load ptr, ptr %0, align 8               ; 5 uses
  %i.dj = ptrtoint ptr %i.de to i64
  %i.dk = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dl = sub i64 %i.dj, %i.dk                    ; 3 uses
  %i.dm = icmp eq i64 %i.dl, 9223372036854775800
  br i1 %i.dm, label %bb.i, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #13
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.dn = sdiv exact i64 %i.dl, 12                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dn, i64 1)
  %i.do = add nsw i64 %.sroa.speculated.i.i.i, %i.dn ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.dn
  %i.dq = tail call i64 @llvm.umin.i64(i64 %i.do, i64 768614336404564650)
  %i.dr = select i1 %i.dp, i64 768614336404564650, i64 %i.dq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ds = mul nuw nsw i64 %i.dr, 12
  %i.dt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #11 ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dl ; 3 uses
  store float %i.w, ptr %i.du, align 4
  %.sroa.131326.0..sroa_idx1327 = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store float %i.y, ptr %.sroa.131326.0..sroa_idx1327, align 4
  %.sroa.161341.0..sroa_idx1342 = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store float %i.aa, ptr %.sroa.161341.0..sroa_idx1342, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.di, %i.de
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i ], [ %i.dt, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i ], [ %i.di, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !10
  %i.dv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dv, %i.de
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dt, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dw, %.lr.ph.i.i.i.i.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.dy = load ptr, ptr %i.o, align 8
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dz, %i.dk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.ea) #12
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.dt, ptr %0, align 8
  store ptr %i.dx, ptr %i.a, align 8
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.dr ; 2 uses
  store ptr %i.eb, ptr %i.o, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.g, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ec = phi ptr [ %.pre1475, %bb.g ], [ %i.eb, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %i.ed = phi ptr [ %i.dh, %bb.g ], [ %i.dx, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 3 uses
  %i.ee = fneg float %.sroa.81251.0
  %i.ef = fmul float %sqrt.i, %i.ee
  %i.eg = fneg <2 x float> %.sroa.01248.0
  %i.eh = fmul <2 x float> %i.ci, %i.eg
  %i.ei = fmul <2 x float> %i.eh, splat (float 1.000000e-01) ; 4 uses
  %i.ej = fmul float %i.ef, 1.000000e-01          ; 4 uses
  %.not.i.i215 = icmp eq ptr %i.ed, %i.ec
  br i1 %.not.i.i215, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  store <2 x float> %i.ei, ptr %i.ed, align 4
  %.sroa.51236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store float %i.ej, ptr %.sroa.51236.0..sroa_idx, align 4
  %i.ek = load ptr, ptr %i.a, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 12 ; 2 uses
  store ptr %i.el, ptr %i.a, align 8
  %.pre1476 = load ptr, ptr %i.o, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backEOS1_.exit228

bb.l:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE9push_backERKS1_.exit
  %i.em = load ptr, ptr %0, align 8               ; 5 uses
  %i.en = ptrtoint ptr %i.ec to i64
  %i.eo = ptrtoint ptr %i.em to i64               ; 2 uses
  %i.ep = sub i64 %i.en, %i.eo                    ; 3 uses
  %i.eq = icmp eq i64 %i.ep, 9223372036854775800
  br i1 %i.eq, label %bb.m, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i216

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #13
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i216: ; preds = %bb.l
  %i.er = sdiv exact i64 %i.ep, 12                ; 3 uses
  %.sroa.speculated.i.i.i.i217 = tail call i64 @llvm.umax.i64(i64 %i.er, i64 1)
  %i.es = add nsw i64 %.sroa.speculated.i.i.i.i217, %i.er ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp19SkeletonMeshBuilder10CreateMeshEv:bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i32 0, ptr %i.cv, align 8
  ret ptr %i.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.cw = load ptr, ptr %i.am, align 8
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %i.cw, i64 %indvars.iv ; 4 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %indvars.iv ; 2 uses
  store i32 3, ptr %i.cy, align 8
  %i.cz = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #11 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.cz, ptr %i.da, align 8
  %i.db = load i32, ptr %i.cx, align 4
  store i32 %i.db, ptr %i.cz, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 4 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 %i.dd, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4            ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = zext i32 %i.dg to i64
  %i.dj = load ptr, ptr %0, align 8               ; 3 uses
  %i.dk = getelementptr inbounds nuw [12 x i8], ptr %i.dj, i64 %i.di ; 2 uses
  %i.dl = load i32, ptr %i.cx, align 4
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds nuw [12 x i8], ptr %i.dj, i64 %i.dm ; 2 uses
  %i.do = load float, ptr %i.dk, align 4
  %i.dp = load float, ptr %i.dn, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ds = load i32, ptr %i.dc, align 4
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [12 x i8], ptr %i.dj, i64 %i.dt ; 2 uses
  %i.dv = load float, ptr %i.du, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dx = load <2 x float>, ptr %i.dq, align 4    ; 2 uses
  %i.dy = load <2 x float>, ptr %i.dr, align 4    ; 3 uses
  %i.dz = fsub <2 x float> %i.dx, %i.dy           ; 2 uses
  %i.ea = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.eb = insertelement <2 x float> %i.ea, float %i.do, i64 1
  %i.ec = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ed = insertelement <2 x float> %i.ec, float %i.dp, i64 1 ; 2 uses
  %i.ee = fsub <2 x float> %i.eb, %i.ed           ; 2 uses
  %i.ef = load <2 x float>, ptr %i.dw, align 4    ; 2 uses
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.eh = insertelement <2 x float> %i.eg, float %i.dv, i64 1
  %i.ei = fsub <2 x float> %i.eh, %i.ed           ; 2 uses
  %i.ej = fsub <2 x float> %i.ef, %i.dy           ; 2 uses
  %i.ek = fneg <2 x float> %i.ej
  %i.el = fmul <2 x float> %i.ee, %i.ek
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.ei, <2 x float> %i.el) ; 4 uses
  %i.en = extractelement <2 x float> %i.ei, i64 1
  %i.eo = fneg float %i.en
  %i.ep = extractelement <2 x float> %i.dz, i64 0
  %i.eq = fmul float %i.ep, %i.eo
  %i.er = extractelement <2 x float> %i.ee, i64 1
  %i.es = extractelement <2 x float> %i.ej, i64 0
  %i.et = tail call float @llvm.fmuladd.f32(float %i.er, float %i.es, float %i.eq) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.em, %i.em
  %i.eu = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ev = extractelement <2 x float> %i.em, i64 0 ; 2 uses
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.eu)
  %i.ex = tail call noundef float @llvm.fmuladd.f32(float %i.et, float %i.et, float %i.ew)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.ex)
  %i.ey = fpext float %sqrt.i to double
  %i.ez = fcmp olt double %i.ey, 1.000000e-05     ; 2 uses
  %.sroa.066.0 = select i1 %i.ez, <2 x float> <float 1.000000e+00, float 0.000000e+00>, <2 x float> %i.em ; 3 uses
  %.sroa.8.0 = select i1 %i.ez, float 0.000000e+00, float %i.et ; 3 uses
  %i.fa = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %i.dm ; 2 uses
  store <2 x float> %.sroa.066.0, ptr %i.fa, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store float %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 4
  %i.fb = load i32, ptr %i.dc, align 4
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %i.fc ; 2 uses
  store <2 x float> %.sroa.066.0, ptr %i.fd, align 4
  %.sroa.8.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store float %.sroa.8.0, ptr %.sroa.8.0..sroa_idx.1, align 4
  %i.fe = load i32, ptr %i.df, align 4
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %i.ff ; 2 uses
  store <2 x float> %.sroa.066.0, ptr %i.fg, align 4
  %.sroa.8.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store float %.sroa.8.0, ptr %.sroa.8.0..sroa_idx.2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !208
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN6Assimp19SkeletonMeshBuilder14CreateMaterialEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.aiString, align 4           ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #11 ; 5 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.d, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 16, ptr %i.a, align 8
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %2, align 8
  %i.f = load i64, ptr %i.a, align 8              ; 3 uses
  store i64 %i.f, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(16) @.str, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.f, ptr %i.g, align 8
  %i.h = load ptr, ptr %2, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.j = load i64, ptr %i.g, align 8              ; 3 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.l, i8 0, i64 1024, i1 false)
  %i.m = and i64 %i.j, 4294966272
  %.not.i = icmp eq i64 %i.m, 0
  %spec.select.i = select i1 %.not.i, i32 %i.k, i32 1023 ; 2 uses
  store i32 %spec.select.i, ptr %1, align 4
  %i.n = load ptr, ptr %2, align 8                ; 3 uses
  %i.o = zext i32 %spec.select.i to i64           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr align 1 %i.n, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  store i8 0, ptr %i.p, align 1
  %i.q = icmp eq ptr %i.n, %i.d
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.noexc.i
  %i.r = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.r)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  %i.s = load i64, ptr %i.d, align 8
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.t) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.u = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 1, ptr %i.b, align 4
  %i.v = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret ptr %i.c

bb.b:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #12
  resume { ptr, i32 } %i.w
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load float, ptr %i.d, align 4            ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load float, ptr %i.m, align 4            ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load <2 x float>, ptr %i.b, align 4      ; 9 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = fmul float %i.a, %i.s                    ; 2 uses
  %i.u = load <2 x float>, ptr %i.j, align 4      ; 8 uses
  %i.v = load <2 x float>, ptr %i.i, align 4      ; 5 uses
  %i.w = load float, ptr %i.g, align 4            ; 6 uses
  %1 = shufflevector <2 x float> %i.v, <2 x float> %i.u, <2 x i32> <i32 1, i32 3>
  %2 = fneg <2 x float> %1                        ; 3 uses
  %i.x = extractelement <2 x float> %2, i64 0
  %i.y = extractelement <2 x float> %i.v, i64 0   ; 7 uses
  %i.z = extractelement <2 x float> %i.u, i64 0   ; 3 uses
  %i.aa = fneg float %i.z                         ; 4 uses
  %i.ab = extractelement <2 x float> %2, i64 1    ; 3 uses
  %i.ac = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 0
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load <2 x float>, ptr %i.h, align 4     ; 12 uses
  %i.ag = load <2 x float>, ptr %i.c, align 4     ; 9 uses
  %i.ah = load float, ptr %i.f, align 4           ; 7 uses
  %i.ai = fneg float %i.ah                        ; 3 uses
  %i.aj = extractelement <2 x float> %i.ag, i64 0 ; 2 uses
  %i.ak = fmul float %i.t, %i.aj
  %i.al = fmul float %i.t, %i.ah
  %i.am = fmul float %i.al, %i.x
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.e, float %i.am)
  %i.ao = extractelement <2 x float> %i.af, i64 0
  %i.ap = fmul float %i.a, %i.ao                  ; 2 uses
  %i.aq = fmul float %i.ah, %i.ap
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.y, float %i.an)
  %i.as = fmul float %i.ap, %i.aa
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.e, float %i.ar)
  %foldExtExtBinop = fmul <2 x float> %i.af, %i.ac
  %i.au = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.av = fmul float %i.au, %i.ai
  %i.aw = load <2 x float>, ptr %i.q, align 4     ; 7 uses
  %i.ax = load <2 x float>, ptr %i.k, align 4     ; 8 uses
  %i.ay = load float, ptr %i.o, align 4           ; 6 uses
  %i.az = fneg float %i.ay                        ; 4 uses
  %i.ba = load <2 x float>, ptr %i.ae, align 4    ; 8 uses
  %i.bb = load float, ptr %i.p, align 4           ; 5 uses
  %i.bc = fmul float %i.ad, %i.bb                 ; 2 uses
  %i.bd = fmul float %i.bc, %i.ab
  %i.be = extractelement <2 x float> %i.ax, i64 0
  %i.bf = fmul float %i.a, %i.be                  ; 2 uses
  %i.bg = fmul float %i.z, %i.bf
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.w, float %i.at)
  %i.bi = fmul float %i.bf, %i.ab
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.y, float %i.bh)
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.av, float %i.n, float %i.bj)
  %i.bl = fmul float %i.au, %i.ay
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.e, float %i.bk)
  %foldExtExtBinop47 = fmul <2 x float> %i.ax, %i.ac ; 2 uses
  %i.bn = extractelement <2 x float> %foldExtExtBinop47, i64 0
  %i.bo = fmul float %i.bn, %i.az
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.w, float %i.bm)
  %foldExtExtBinop49 = fmul <2 x float> %i.ag, %foldExtExtBinop47
  %i.bq = extractelement <2 x float> %foldExtExtBinop49, i64 0
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.n, float %i.bp)
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.e, float %i.br)
  %i.bt = fmul float %i.ah, %i.bc
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.w, float %i.bs)
  %i.bv = extractelement <2 x float> %i.aw, i64 0
  %foldExtExtBinop51 = fmul <2 x float> %i.ax, %i.aw
  %i.bw = extractelement <2 x float> %foldExtExtBinop51, i64 0 ; 2 uses
  %i.bx = fmul float %i.ay, %i.bw
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.y, float %i.bu)
  %i.bz = fmul float %i.bw, %i.aa
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.n, float %i.by)
  %i.cb = fmul float %i.bb, %i.bv                 ; 2 uses
  %i.cc = fmul float %i.z, %i.cb
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.e, float %i.ca)
  %i.ce = fmul float %i.cb, %i.ai
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.y, float %i.cd)
  %foldExtExtBinop53 = fmul <2 x float> %i.r, %i.aw
  %i.cg = extractelement <2 x float> %foldExtExtBinop53, i64 0 ; 2 uses
  %i.ch = fmul float %i.ah, %i.cg
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.n, float %i.cf)
  %i.cj = fmul float %i.cg, %i.az
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.e, float %i.ci)
  %i.cl = extractelement <2 x float> %i.ba, i64 0
  %i.cm = fmul float %i.bb, %i.cl                 ; 2 uses
  %i.cn = fmul float %i.cm, %i.aa
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.w, float %i.ck)
  %i.cp = fmul float %i.aj, %i.cm
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.y, float %i.co)
  %foldExtExtBinop55 = fmul <2 x float> %i.r, %i.ba
  %i.cr = extractelement <2 x float> %foldExtExtBinop55, i64 0 ; 2 uses
  %i.cs = fmul float %i.cr, %i.ab
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.n, float %i.cq)
  %i.cu = fmul float %i.ay, %i.cr
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.w, float %i.ct)
  %foldExtExtBinop57 = fmul <2 x float> %i.af, %i.ba ; 2 uses
  %i.cw = extractelement <2 x float> %foldExtExtBinop57, i64 0
  %i.cx = fmul float %i.cw, %i.az
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.y, float %i.cv)
  %foldExtExtBinop59 = fmul <2 x float> %i.u, %foldExtExtBinop57
  %i.cz = extractelement <2 x float> %foldExtExtBinop59, i64 0
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %i.cz, float %i.n, float %i.cy) ; 2 uses
  %i.db = fcmp oeq float %i.da, 0.000000e+00
  br i1 %i.db, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %3 = shufflevector <2 x float> %2, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.dc = fdiv float 1.000000e+00, %i.da          ; 3 uses
  %i.dd = shufflevector <2 x float> %i.af, <2 x float> %i.ag, <4 x i32> <i32 3, i32 1, i32 poison, i32 poison>
  %i.de = shufflevector <2 x float> %i.ag, <2 x float> %i.af, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.df = fmul <4 x float> %i.de, %3
  %i.dg = fneg float %i.e
  %i.dh = fneg float %i.y
  %i.di = fneg float %i.dc                        ; 2 uses
  %i.dj = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.dk = insertelement <4 x float> poison, float %i.e, i64 0 ; 2 uses
  %i.dl = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dm = shufflevector <4 x float> %i.dk, <4 x float> %i.dl, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %i.dm, <4 x float> %i.df) ; 2 uses
  %i.do = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 3 uses
  %i.dp = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 0, i32 2, i32 2> ; 2 uses
  %i.dq = insertelement <4 x float> poison, float %i.dg, i64 0
  %i.dr = insertelement <4 x float> %i.dq, float %i.ai, i64 1
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.dt = fmul <4 x float> %i.dp, %i.ds
  %i.du = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> %i.dd, <4 x i32> <i32 0, i32 4, i32 5, i32 5> ; 2 uses
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> %i.do, <4 x i32> <i32 1, i32 0, i32 0, i32 4>
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.dw, <4 x float> %i.dt)
  %i.dy = shufflevector <2 x float> %i.r, <2 x float> %i.ac, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.dz = fmul <4 x float> %i.dy, %i.dx
  %i.ea = shufflevector <2 x float> %i.r, <2 x float> %i.ac, <4 x i32> <i32 0, i32 2, i32 2, i32 2> ; 2 uses
  %i.eb = shufflevector <2 x float> %i.r, <2 x float> %i.ac, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eb, <4 x float> %i.dn, <4 x float> %i.dz)
  %i.ed = insertelement <4 x float> poison, float %i.dh, i64 0
  %i.ee = insertelement <4 x float> %i.ed, float %i.aa, i64 1
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.eg = fmul <4 x float> %i.dj, %i.ef
  %4 = shufflevector <2 x float> %i.v, <2 x float> %i.u, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.eh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %4, <4 x float> %i.eg) ; 2 uses
  %i.ei = shufflevector <2 x float> %i.af, <2 x float> %i.aw, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ei, <4 x float> %i.eh, <4 x float> %i.ec)
  %i.ek = insertelement <4 x float> poison, float %i.dc, i64 0
  %i.el = insertelement <4 x float> %i.ek, float %i.di, i64 1 ; 2 uses
  %i.em = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.en = fmul <4 x float> %i.ej, %i.em
  %i.eo = fneg float %i.n
  %i.ep = shufflevector <2 x float> %i.ax, <2 x float> %i.ba, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.eq = fmul <4 x float> %i.ep, %i.ds
  %i.er = insertelement <4 x float> poison, float %i.n, i64 0
  %i.es = insertelement <4 x float> %i.dl, float %i.n, i64 0
  %i.et = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eu = shufflevector <4 x float> %i.es, <4 x float> %i.et, <4 x i32> <i32 0, i32 5, i32 1, i32 5>
  %i.ev = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ew = insertelement <4 x float> %i.ev, float %i.n, i64 1
  %i.ex = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ey = shufflevector <4 x float> %i.ew, <4 x float> %i.ex, <4 x i32> <i32 0, i32 1, i32 1, i32 5>
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.ey, <4 x float> %i.eq) ; 2 uses
  %i.fa = shufflevector <2 x float> %i.af, <2 x float> %i.aw, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.fb = shufflevector <2 x float> %i.af, <2 x float> %i.aw, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.fc = fmul <4 x float> %i.fb, %i.ez
  %i.fd = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fe = insertelement <4 x float> %i.fd, float %i.a, i64 1
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.fg = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 3>
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> %i.fg, <4 x float> %i.fc)
  %i.fi = shufflevector <2 x float> %i.ag, <2 x float> %i.af, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.fj = insertelement <4 x float> poison, float %i.eo, i64 0
  %i.fk = insertelement <4 x float> %i.fj, float %i.az, i64 1
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.fm = fmul <4 x float> %i.fi, %i.fl
  %i.fn = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fo = insertelement <2 x float> %i.fn, float %i.w, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.fp, <4 x float> %i.fm)
  %i.fr = shufflevector <2 x float> %i.af, <2 x float> %i.aw, <4 x i32> <i32 1, i32 3, i32 3, i32 3>
  %i.fs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fr, <4 x float> %i.fq, <4 x float> %i.fh)
  %i.ft = insertelement <4 x float> poison, float %i.di, i64 0
  %i.fu = insertelement <4 x float> %i.ft, float %i.dc, i64 1 ; 2 uses
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.fw = fmul <4 x float> %i.fs, %i.fv
  %i.fx = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fy = insertelement <2 x float> %i.fx, float %i.ah, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ga = fmul <4 x float> %i.fz, %i.ef
  %i.gb = insertelement <4 x float> %i.dk, float %i.ah, i64 1
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.gc, <4 x float> %i.ga)
  %i.ge = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.gf = fmul <4 x float> %i.ea, %i.ge
  %i.gg = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gh = insertelement <2 x float> %i.gg, float %i.a, i64 1
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.gj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> %i.gd, <4 x float> %i.gf)
  %i.gk = fmul <4 x float> %i.do, %i.fl
  %i.gl = shufflevector <2 x float> %i.ax, <2 x float> %i.ba, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.gm = shufflevector <2 x float> %i.v, <2 x float> %i.u, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gl, <4 x float> %i.gm, <4 x float> %i.gk) ; 2 uses
  %i.go = shufflevector <2 x float> %i.ax, <2 x float> %i.ba, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.gp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.go, <4 x float> %i.gn, <4 x float> %i.gj)
  %i.gq = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gr = fmul <4 x float> %i.gp, %i.gq
  %i.gs = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.gt = insertelement <4 x float> %i.gs, float %i.bb, i64 1
  %i.gu = shufflevector <4 x float> %i.gt, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gv = fmul <4 x float> %i.gu, %3
  %i.gw = shufflevector <2 x float> %i.ag, <2 x float> %i.af, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.gx = insertelement <4 x float> %i.er, float %i.ay, i64 1
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gw, <4 x float> %i.gy, <4 x float> %i.gv)
  %i.ha = fmul <4 x float> %i.ea, %i.gz
  %i.hb = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.hc = insertelement <4 x float> %i.hb, float %i.a, i64 1
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.he = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.hf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hd, <4 x float> %i.he, <4 x float> %i.ha)
  %i.hg = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 3>
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %i.hg, <4 x float> %i.hf)
  %i.hi = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hj = fmul <4 x float> %i.hh, %i.hi
  %i.hk = shufflevector <4 x float> %i.fw, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.hl = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.hm = phi <4 x float> [ %i.en, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hn = phi <4 x float> [ %i.hk, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.ho = phi <4 x float> [ %i.hl, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hp = phi <4 x float> [ %i.hj, %bb.b ], [ splat (float +qnan), %bb.a ]
  store <4 x float> %i.hm, ptr %0, align 4
  store <4 x float> %i.hn, ptr %i.p, align 4
  store <4 x float> %i.ho, ptr %i.o, align 4
  store <4 x float> %i.hp, ptr %i.m, align 4
  ret ptr %0
}

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{i8 0, i8 2}
!4 = !{!5, !7}
!5 = distinct !{!5, !6, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!6 = distinct !{!6, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!7 = distinct !{!7, !6, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !13}
!11 = distinct !{!11, !12, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!12 = distinct !{!12, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!13 = distinct !{!13, !12, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!14 = !{!15, !17}
!15 = distinct !{!15, !16, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!16 = distinct !{!16, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!17 = distinct !{!17, !16, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!18 = !{!19, !21}
!19 = distinct !{!19, !20, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!20 = distinct !{!20, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!21 = distinct !{!21, !20, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!22 = !{!23, !25}
!23 = distinct !{!23, !24, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!24 = distinct !{!24, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!25 = distinct !{!25, !24, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!26 = !{!27, !29}
!27 = distinct !{!27, !28, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!28 = distinct !{!28, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!29 = distinct !{!29, !28, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!30 = !{!31, !33}
!31 = distinct !{!31, !32, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!32 = distinct !{!32, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!33 = distinct !{!33, !32, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!34 = !{!35, !37}
!35 = distinct !{!35, !36, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!36 = distinct !{!36, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!37 = distinct !{!37, !36, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!38 = !{!39, !41}
!39 = distinct !{!39, !40, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!40 = distinct !{!40, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!41 = distinct !{!41, !40, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!42 = !{!43, !45}
!43 = distinct !{!43, !44, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!44 = distinct !{!44, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!45 = distinct !{!45, !44, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!46 = !{!47, !49}
!47 = distinct !{!47, !48, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!48 = distinct !{!48, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!49 = distinct !{!49, !48, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!50 = !{!51, !53}
!51 = distinct !{!51, !52, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!52 = distinct !{!52, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!53 = distinct !{!53, !52, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!54 = !{!55, !57}
!55 = distinct !{!55, !56, !"_ZSt19__relocate_object_aIN6Assimp19SkeletonMeshBuilder4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!56 = distinct !{!56, !"_ZSt19__relocate_object_aIN6Assimp19SkeletonMeshBuilder4FaceES2_SaIS2_EEvPT_PT0_RT1_"}
!57 = distinct !{!57, !56, !"_ZSt19__relocate_object_aIN6Assimp19SkeletonMeshBuilder4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!58 = distinct !{!58, !9}
!59 = !{!60, !62}
!60 = distinct !{!60, !61, !"_ZSt19__relocate_object_aIN6Assimp19SkeletonMeshBuilder4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!61 = distinct !{!61, !"_ZSt19__relocate_object_aIN6Assimp19SkeletonMeshBuilder4FaceES2_SaIS2_EEvPT_PT0_RT1_"}
!62 = distinct !{!62, !61, !"_ZSt19__relocate_object_aIN6Assimp19SkeletonMeshBuilder4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!63 = !{!64, !66}
!64 = distinct !{!64, !65, !"_ZSt19__relocate_object_aIN6Assimp19SkeletonMeshBuilder4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!65 = distinct !{!65, !"_ZSt19__relocate_object_aIN6Assimp19SkeletonMeshBuilder4FaceES2_SaIS2_EEvPT_PT0_RT1_"}
!66 = distinct !{!66, !65, !"_ZSt19__relocate_object_aIN6Assimp19SkeletonMeshBuilder4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!67 = !{!68, !70}
!68 = distinct !{!68, !69, !"_ZSt19__relocate_object_aIN6Assimp19SkeletonMeshBuilder4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!69 = distinct !{!69, !"_ZSt19__relocate_object_aIN6Assimp19SkeletonMeshBuilder4FaceES2_SaIS2_EEvPT_PT0_RT1_"}
!70 = distinct !{!70, !69, !"_ZSt19__relocate_object_aIN6Assimp19SkeletonMeshBuilder4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!71 = distinct !{!71, !9}
!72 = !{!73, !75}
!73 = distinct !{!73, !74, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!74 = distinct !{!74, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!75 = distinct !{!75, !74, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!76 = !{!77, !79}
!77 = distinct !{!77, !78, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!78 = distinct !{!78, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!79 = distinct !{!79, !78, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!80 = !{!81, !83}
!81 = distinct !{!81, !82, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!82 = distinct !{!82, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!83 = distinct !{!83, !82, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!84 = !{!85, !87}
!85 = distinct !{!85, !86, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!86 = distinct !{!86, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!87 = distinct !{!87, !86, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!88 = !{!89, !91}
!89 = distinct !{!89, !90, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!90 = distinct !{!90, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!91 = distinct !{!91, !90, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!92 = !{!93, !95}
!93 = distinct !{!93, !94, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!94 = distinct !{!94, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!95 = distinct !{!95, !94, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!96 = !{!97, !99}
!97 = distinct !{!97, !98, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!98 = distinct !{!98, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!99 = distinct !{!99, !98, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!100 = !{!101, !103}
!101 = distinct !{!101, !102, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!102 = distinct !{!102, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
end_hunk_1
