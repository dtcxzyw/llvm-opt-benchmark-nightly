inline.NumInlined: 740
inline.NumDeleted: 107
begin_hunk_0_@_ZN17btHingeConstraint23solveConstraintObsoleteER12btSolverBodyS1_f:bb.a
bb.p:                                             ; preds = %bb.o
  %i.ajf = fsub float %i.aja, %i.ajc
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ajg = fneg float %i.aja                      ; 2 uses
  %i.ajh = fcmp olt float %i.ajd, %i.ajg
  br i1 %i.ajh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aji = fsub float %i.ajg, %i.ajc
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %.0 = phi float [ %i.ajf, %bb.p ], [ %i.aji, %bb.r ], [ %i.aiy, %bb.q ] ; 7 uses
  %i.ajj = fadd float %i.ajc, %.0
  store float %i.ajj, ptr %i.ajb, align 4, !tbaa !36
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.ajl = load float, ptr %i.ajk, align 8, !tbaa !27
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.e, i64 284
  %i.ajn = load float, ptr %i.ajm, align 4, !tbaa !27
  %i.ajo = fmul float %i.nw, %i.ajn
  %i.ajp = tail call float @llvm.fmuladd.f32(float %i.ajl, float %i.nt, float %i.ajo)
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.ajr = load float, ptr %i.ajq, align 8, !tbaa !27
  %i.ajs = tail call noundef float @llvm.fmuladd.f32(float %i.ajr, float %i.nz, float %i.ajp)
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.aju = load float, ptr %i.ajt, align 8, !tbaa !27
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.e, i64 300
  %i.ajw = load float, ptr %i.ajv, align 4, !tbaa !27
  %i.ajx = fmul float %i.nw, %i.ajw
  %i.ajy = tail call float @llvm.fmuladd.f32(float %i.aju, float %i.nt, float %i.ajx)
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.aka = load float, ptr %i.ajz, align 8, !tbaa !27
  %i.akb = tail call noundef float @llvm.fmuladd.f32(float %i.aka, float %i.nz, float %i.ajy)
  %i.akc = getelementptr inbounds nuw i8, ptr %i.e, i64 312
  %i.akd = load float, ptr %i.akc, align 8, !tbaa !27
  %i.ake = getelementptr inbounds nuw i8, ptr %i.e, i64 316
  %i.akf = load float, ptr %i.ake, align 4, !tbaa !27
  %i.akg = fmul float %i.nw, %i.akf
  %i.akh = tail call float @llvm.fmuladd.f32(float %i.akd, float %i.nt, float %i.akg)
  %i.aki = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.akj = load float, ptr %i.aki, align 8, !tbaa !27
  %i.akk = tail call noundef float @llvm.fmuladd.f32(float %i.akj, float %i.nz, float %i.akh)
  %i.akl = fmul float %.0, 0.000000e+00           ; 2 uses
  %i.akm = load <2 x float>, ptr %1, align 8, !tbaa !27
  %i.akn = insertelement <2 x float> poison, float %i.akl, i64 0
  %i.ako = shufflevector <2 x float> %i.akn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akp = fadd <2 x float> %i.ako, %i.akm
  store <2 x float> %i.akp, ptr %1, align 8, !tbaa !27
  %i.akq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.akr = load float, ptr %i.akq, align 8, !tbaa !27
  %i.aks = fadd float %i.akl, %i.akr
  store float %i.aks, ptr %i.akq, align 8, !tbaa !27
  %i.akt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aku = load float, ptr %i.akt, align 8, !tbaa !27
  %i.akv = fmul float %.0, %i.aku
  %i.akw = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.akx = load float, ptr %i.akw, align 4, !tbaa !27
  %i.aky = fmul float %.0, %i.akx
  %i.akz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ala = load float, ptr %i.akz, align 8, !tbaa !27
  %i.alb = fmul float %.0, %i.ala
  %i.alc = fmul float %i.ajs, %i.akv
  %i.ald = fmul float %i.akb, %i.aky
  %i.ale = fmul float %i.akk, %i.alb
  %i.alf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.alg = load float, ptr %i.alf, align 8, !tbaa !27
  %i.alh = fadd float %i.alc, %i.alg
  store float %i.alh, ptr %i.alf, align 8, !tbaa !27
  %i.ali = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.alj = load float, ptr %i.ali, align 4, !tbaa !27
  %i.alk = fadd float %i.ald, %i.alj
  store float %i.alk, ptr %i.ali, align 4, !tbaa !27
  %i.all = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.alm = load float, ptr %i.all, align 8, !tbaa !27
  %i.aln = fadd float %i.ale, %i.alm
  store float %i.aln, ptr %i.all, align 8, !tbaa !27
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aw, i64 280
  %i.alp = load float, ptr %i.alo, align 8, !tbaa !27
  %i.alq = getelementptr inbounds nuw i8, ptr %i.aw, i64 284
  %i.alr = load float, ptr %i.alq, align 4, !tbaa !27
  %i.als = fmul float %i.nw, %i.alr
  %i.alt = tail call float @llvm.fmuladd.f32(float %i.alp, float %i.nt, float %i.als)
  %i.alu = getelementptr inbounds nuw i8, ptr %i.aw, i64 288
  %i.alv = load float, ptr %i.alu, align 8, !tbaa !27
  %i.alw = tail call noundef float @llvm.fmuladd.f32(float %i.alv, float %i.nz, float %i.alt)
  %i.alx = getelementptr inbounds nuw i8, ptr %i.aw, i64 296
  %i.aly = load float, ptr %i.alx, align 8, !tbaa !27
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aw, i64 300
  %i.ama = load float, ptr %i.alz, align 4, !tbaa !27
  %i.amb = fmul float %i.nw, %i.ama
  %i.amc = tail call float @llvm.fmuladd.f32(float %i.aly, float %i.nt, float %i.amb)
  %i.amd = getelementptr inbounds nuw i8, ptr %i.aw, i64 304
  %i.ame = load float, ptr %i.amd, align 8, !tbaa !27
  %i.amf = tail call noundef float @llvm.fmuladd.f32(float %i.ame, float %i.nz, float %i.amc)
  %i.amg = getelementptr inbounds nuw i8, ptr %i.aw, i64 312
  %i.amh = load float, ptr %i.amg, align 8, !tbaa !27
  %i.ami = getelementptr inbounds nuw i8, ptr %i.aw, i64 316
  %i.amj = load float, ptr %i.ami, align 4, !tbaa !27
  %i.amk = fmul float %i.nw, %i.amj
  %i.aml = tail call float @llvm.fmuladd.f32(float %i.amh, float %i.nt, float %i.amk)
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aw, i64 320
  %i.amn = load float, ptr %i.amm, align 8, !tbaa !27
  %i.amo = tail call noundef float @llvm.fmuladd.f32(float %i.amn, float %i.nz, float %i.aml)
  %i.amp = fneg float %.0                         ; 3 uses
  %i.amq = fmul float %.0, -0.000000e+00          ; 2 uses
  %i.amr = load <2 x float>, ptr %2, align 8, !tbaa !27
  %i.ams = insertelement <2 x float> poison, float %i.amq, i64 0
  %i.amt = shufflevector <2 x float> %i.ams, <2 x float> poison, <2 x i32> zeroinitializer
  %i.amu = fadd <2 x float> %i.amt, %i.amr
  store <2 x float> %i.amu, ptr %2, align 8, !tbaa !27
  %i.amv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.amw = load float, ptr %i.amv, align 8, !tbaa !27
  %i.amx = fadd float %i.amq, %i.amw
  store float %i.amx, ptr %i.amv, align 8, !tbaa !27
  %i.amy = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.amz = load float, ptr %i.amy, align 8, !tbaa !27
  %i.ana = fmul float %i.amz, %i.amp
  %i.anb = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.anc = load float, ptr %i.anb, align 4, !tbaa !27
  %i.and = fmul float %i.anc, %i.amp
  %i.ane = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.anf = load float, ptr %i.ane, align 8, !tbaa !27
  %i.ang = fmul float %i.anf, %i.amp
  %i.anh = fmul float %i.alw, %i.ana
  %i.ani = fmul float %i.amf, %i.and
  %i.anj = fmul float %i.amo, %i.ang
  %i.ank = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.anl = load float, ptr %i.ank, align 8, !tbaa !27
  %i.anm = fadd float %i.anh, %i.anl
  store float %i.anm, ptr %i.ank, align 8, !tbaa !27
  %i.ann = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ano = load float, ptr %i.ann, align 4, !tbaa !27
  %i.anp = fadd float %i.ani, %i.ano
  store float %i.anp, ptr %i.ann, align 4, !tbaa !27
  %i.anq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.anr = load float, ptr %i.anq, align 8, !tbaa !27
  %i.ans = fadd float %i.anj, %i.anr
  store float %i.ans, ptr %i.anq, align 8, !tbaa !27
  br label %bb.t

bb.t:                                             ; preds = %bb.n, %bb.s, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E(ptr noundef nonnull align 8 captures(none) dereferenceable(792) %0, ptr noundef captures(none) initializes((0, 8)) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 783
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21, !range !34, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !83
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  store i32 5, ptr %1, align 4, !tbaa !83
  store i32 1, ptr %i.d, align 4, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31, !nonnull !32, !align !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37, !nonnull !32, !align !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = tail call noundef float @_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.g, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 772 ; 2 uses
  store float %i.k, ptr %i.l, align 4, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 764
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.n, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 782 ; 3 uses
  store i8 0, ptr %i.o, align 2, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 748 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !73 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.s = load float, ptr %i.r, align 8, !tbaa !28 ; 2 uses
  %i.t = fcmp ugt float %i.q, %i.s
  br i1 %i.t, label %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.k, float noundef %i.q, float noundef %i.s) ; 4 uses
  store float %i.u, ptr %i.l, align 4, !tbaa !72
  %i.v = load float, ptr %i.p, align 4, !tbaa !73 ; 2 uses
  %i.w = fcmp ugt float %i.u, %i.v
  br i1 %i.w, label %bb.e, label %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.x = load float, ptr %i.r, align 8, !tbaa !28 ; 2 uses
  %i.y = fcmp ult float %i.u, %i.x
  br i1 %i.y, label %._ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit_crit_edge, label %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit.thread

._ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit_crit_edge: ; preds = %bb.e
  %.pre = load i8, ptr %i.o, align 2, !tbaa !29, !range !34
  %2 = icmp ne i8 %.pre, 0
  br label %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit

_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit.thread: ; preds = %bb.d, %bb.e
  %.sink12.i = phi float [ %i.v, %bb.d ], [ %i.x, %bb.e ]
  %.sink.i = phi float [ 1.000000e+00, %bb.d ], [ -1.000000e+00, %bb.e ]
  %i.z = fsub float %.sink12.i, %i.u
  store float %i.z, ptr %i.m, align 4, !tbaa !74
  store float %.sink.i, ptr %i.n, align 8, !tbaa !75
  store i8 1, ptr %i.o, align 2, !tbaa !29
  br label %bb.f

_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit: ; preds = %._ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit_crit_edge, %bb.c
  %.not = phi i1 [ %2, %._ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit_crit_edge ], [ false, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 781
  %i.ab = load i8, ptr %i.aa, align 1, !range !34
  %i.ac = trunc nuw i8 %i.ab to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit.thread, %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit
  %i.ad = load i32, ptr %1, align 4, !tbaa !83
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %1, align 4, !tbaa !83
  %i.af = load i32, ptr %i.d, align 4, !tbaa !85
  %i.ag = add nsw i32 %i.af, -1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.f
  %.sink = phi i32 [ %i.ag, %bb.f ], [ 0, %bb.b ]
  store i32 %.sink, ptr %i.d, align 4, !tbaa !85
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN17btHingeConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(792) %0, ptr noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 783
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21, !range !34, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  %spec.select = select i1 %i.c, i32 0, i32 6
  store i32 %spec.select, ptr %1, align 4, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !85
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31, !nonnull !32, !align !33 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37, !nonnull !32, !align !33 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  tail call void @_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !86   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.d = load float, ptr %i.c, align 8, !tbaa !27, !noalias !90 ; 3 uses
  %i.e = load float, ptr %2, align 4, !tbaa !27, !noalias !90 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.g = load float, ptr %i.f, align 8, !tbaa !27, !noalias !90 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !27, !noalias !90 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.k = load float, ptr %i.j, align 8, !tbaa !27, !noalias !90 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !27, !noalias !90 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 604
  %i.o = load float, ptr %i.n, align 4, !tbaa !27, !noalias !90 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.q = load float, ptr %i.p, align 4, !tbaa !27, !noalias !90 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.s = load float, ptr %i.r, align 4, !tbaa !27, !noalias !90 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.u = load float, ptr %i.t, align 8, !tbaa !27, !noalias !90 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.w = load float, ptr %i.v, align 8, !tbaa !27, !noalias !90 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.y = load float, ptr %i.x, align 8, !tbaa !27, !noalias !90 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load float, ptr %i.z, align 4, !tbaa !27, !noalias !90 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !27, !noalias !90 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !27, !noalias !90 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load float, ptr %i.af, align 4, !tbaa !27, !noalias !90 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !27, !noalias !90 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !27, !noalias !90 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.am = load float, ptr %i.al, align 8, !tbaa !27, !noalias !95 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.ao = load float, ptr %i.an, align 4, !tbaa !27, !noalias !95 ; 3 uses
  %i.ap = fmul float %i.i, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.e, float %i.am, float %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.as = load float, ptr %i.ar, align 8, !tbaa !27, !noalias !95 ; 3 uses
  %i.at = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.as, float %i.aq)
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !27, !noalias !95
  %i.aw = fadd float %i.av, %i.at                 ; 2 uses
  %i.ax = fmul float %i.ac, %i.ao
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.am, float %i.ax)
  %i.az = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.as, float %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !27, !noalias !95
  %i.bc = fadd float %i.bb, %i.az                 ; 2 uses
  %i.bd = fmul float %i.ai, %i.ao
  %i.be = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.am, float %i.bd)
  %i.bf = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.as, float %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !27, !noalias !95
  %i.bi = fadd float %i.bf, %i.bh                 ; 2 uses
  %i.bj = load float, ptr %3, align 4, !tbaa !27, !noalias !96 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !27, !noalias !96 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !27, !noalias !96 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !27, !noalias !96 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.br = load float, ptr %i.bq, align 8, !tbaa !27, !noalias !96 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !27, !noalias !96 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !27, !noalias !96 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !27, !noalias !96 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bz = load float, ptr %i.by, align 4, !tbaa !27, !noalias !96 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !27, !noalias !96 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !27, !noalias !96 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !27, !noalias !96 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !27, !noalias !101 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !27, !noalias !101 ; 3 uses
  %i.ck = fmul float %i.bl, %i.cj
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.ch, float %i.ck)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !27, !noalias !101 ; 3 uses
  %i.co = tail call noundef float @llvm.fmuladd.f32(float %i.bn, float %i.cn, float %i.cl)
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !27, !noalias !101
  %i.cr = fadd float %i.cq, %i.co                 ; 2 uses
  %i.cs = fmul float %i.bx, %i.cj
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.ch, float %i.cs)
  %i.cu = tail call noundef float @llvm.fmuladd.f32(float %i.bz, float %i.cn, float %i.ct)
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !27, !noalias !101
  %i.cx = fadd float %i.cw, %i.cu                 ; 2 uses
  %i.cy = fmul float %i.cd, %i.cj
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.ch, float %i.cy)
  %i.da = tail call noundef float @llvm.fmuladd.f32(float %i.cf, float %i.cn, float %i.cz)
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !27, !noalias !101
  %i.dd = fadd float %i.da, %i.dc                 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !102 ; 3 uses
  store float 1.000000e+00, ptr %i.df, align 4, !tbaa !27
  %i.dg = sext i32 %i.b to i64                    ; 5 uses
  %i.dh = getelementptr [4 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 4
  store float 1.000000e+00, ptr %i.di, align 4, !tbaa !27
  %i.dj = shl nsw i32 %i.b, 1
  %i.dk = sext i32 %i.dj to i64                   ; 3 uses
  %i.dl = getelementptr [4 x i8], ptr %i.df, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  store float 1.000000e+00, ptr %i.dm, align 4, !tbaa !27
  %i.dn = load float, ptr %i.au, align 4, !tbaa !27
  %i.do = fsub float %i.aw, %i.dn                 ; 2 uses
  %i.dp = load float, ptr %i.ba, align 4, !tbaa !27
  %i.dq = fsub float %i.bc, %i.dp                 ; 2 uses
  %i.dr = load float, ptr %i.bg, align 4, !tbaa !27
  %i.ds = fsub float %i.bi, %i.dr                 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !103 ; 15 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dg ; 4 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dk ; 3 uses
  %i.dx = fneg float %i.do
  %i.dy = fneg float %i.dq
  %i.dz = fneg float %i.ds
  store float 0.000000e+00, ptr %i.du, align 4, !tbaa !27
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store float %i.ds, ptr %i.ea, align 4, !tbaa !27
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store float %i.dy, ptr %i.eb, align 4, !tbaa !27
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store float 0.000000e+00, ptr %i.ec, align 4, !tbaa !27
  store float %i.dz, ptr %i.dv, align 4, !tbaa !27
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store float 0.000000e+00, ptr %i.ed, align 4, !tbaa !27
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store float %i.do, ptr %i.ee, align 4, !tbaa !27
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store float 0.000000e+00, ptr %i.ef, align 4, !tbaa !27
  store float %i.dq, ptr %i.dw, align 4, !tbaa !27
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store float %i.dx, ptr %i.eg, align 4, !tbaa !27
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store <2 x float> zeroinitializer, ptr %i.eh, align 4, !tbaa !27
  %i.ei = load float, ptr %i.cp, align 4, !tbaa !27
  %i.ej = fsub float %i.cr, %i.ei                 ; 2 uses
  %i.ek = load float, ptr %i.cv, align 4, !tbaa !27
  %i.el = fsub float %i.cx, %i.ek                 ; 2 uses
  %i.em = load float, ptr %i.db, align 4, !tbaa !27
  %i.en = fsub float %i.dd, %i.em                 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !104 ; 15 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.dg ; 4 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.dk ; 3 uses
  %i.es = fneg float %i.en
  store float 0.000000e+00, ptr %i.ep, align 4, !tbaa !27
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store float %i.es, ptr %i.et, align 4, !tbaa !27
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store float %i.el, ptr %i.eu, align 4, !tbaa !27
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store float 0.000000e+00, ptr %i.ev, align 4, !tbaa !27
  %i.ew = fneg float %i.ej
  store float %i.en, ptr %i.eq, align 4, !tbaa !27
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store float 0.000000e+00, ptr %i.ex, align 4, !tbaa !27
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store float %i.ew, ptr %i.ey, align 4, !tbaa !27
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  store float 0.000000e+00, ptr %i.ez, align 4, !tbaa !27
  %i.fa = fneg float %i.el
  store float %i.fa, ptr %i.er, align 4, !tbaa !27
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  store float %i.ej, ptr %i.fb, align 4, !tbaa !27
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store <2 x float> zeroinitializer, ptr %i.fc, align 4, !tbaa !27
  %i.fd = load float, ptr %1, align 8, !tbaa !105
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !106
  %i.fg = fmul float %i.fd, %i.ff                 ; 5 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !107 ; 3 uses
  %i.fj = fsub float %i.cr, %i.aw
  %i.fk = fmul float %i.fg, %i.fj
  store float %i.fk, ptr %i.fi, align 4, !tbaa !27
  %i.fl = fsub float %i.cx, %i.bc
  %i.fm = fmul float %i.fg, %i.fl
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.dg
  store float %i.fm, ptr %i.fn, align 4, !tbaa !27
  %i.fo = fsub float %i.dd, %i.bi
  %i.fp = fmul float %i.fg, %i.fo
  %.idx = shl nsw i64 %i.dg, 3
  %i.fq = getelementptr inbounds i8, ptr %i.fi, i64 %.idx
  store float %i.fp, ptr %i.fq, align 4, !tbaa !27
  %i.fr = fmul float %i.g, %i.i
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.d, float %i.e, float %i.fr)
  %i.ft = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.m, float %i.fs) ; 3 uses
  %i.fu = fmul float %i.i, %i.q
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.o, float %i.e, float %i.fu)
  %i.fw = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.m, float %i.fv) ; 3 uses
  %i.fx = fmul float %i.i, %i.w
  %i.fy = tail call float @llvm.fmuladd.f32(float %i.u, float %i.e, float %i.fx)
  %i.fz = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.m, float %i.fy) ; 6 uses
  %i.ga = fmul float %i.g, %i.ac
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.d, float %i.aa, float %i.ga)
  %i.gc = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.ae, float %i.gb) ; 3 uses
  %i.gd = fmul float %i.q, %i.ac
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.o, float %i.aa, float %i.gd)
  %i.gf = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.ae, float %i.ge) ; 3 uses
  %i.gg = fmul float %i.w, %i.ac
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.u, float %i.aa, float %i.gg)
  %i.gi = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.ae, float %i.gh) ; 6 uses
  %i.gj = fmul float %i.g, %i.ai
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.d, float %i.ag, float %i.gj)
  %i.gl = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.ak, float %i.gk) ; 3 uses
  %i.gm = fmul float %i.q, %i.ai
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.o, float %i.ag, float %i.gm)
  %i.go = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.ak, float %i.gn) ; 3 uses
  %i.gp = fmul float %i.w, %i.ai
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.u, float %i.ag, float %i.gp)
  %i.gr = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.ak, float %i.gq) ; 6 uses
  %i.gs = fmul float %i.bl, %i.br
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bj, float %i.gs)
  %i.gu = tail call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.bn, float %i.gt) ; 2 uses
  %i.gv = fmul float %i.br, %i.bx
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bv, float %i.gv)
  %i.gx = tail call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.bz, float %i.gw) ; 2 uses
  %i.gy = fmul float %i.br, %i.cd
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.cb, float %i.gy)
  %i.ha = tail call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.cf, float %i.gz) ; 2 uses
  %i.hb = mul nsw i32 %i.b, 3                     ; 3 uses
  %i.hc = shl nsw i32 %i.b, 2                     ; 3 uses
  %i.hd = sext i32 %i.hb to i64                   ; 3 uses
  %i.he = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.hd
  store float %i.ft, ptr %i.he, align 4, !tbaa !27
  %i.hf = add nsw i32 %i.hb, 1
  %i.hg = sext i32 %i.hf to i64                   ; 2 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.hg
  store float %i.gc, ptr %i.hh, align 4, !tbaa !27
  %i.hi = add nsw i32 %i.hb, 2
  %i.hj = sext i32 %i.hi to i64                   ; 2 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.hj
  store float %i.gl, ptr %i.hk, align 4, !tbaa !27
  %i.hl = sext i32 %i.hc to i64                   ; 3 uses
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.hl
  store float %i.fw, ptr %i.hm, align 4, !tbaa !27
  %i.hn = or disjoint i32 %i.hc, 1
  %i.ho = sext i32 %i.hn to i64                   ; 2 uses
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.ho
  store float %i.gf, ptr %i.hp, align 4, !tbaa !27
  %i.hq = or disjoint i32 %i.hc, 2
  %i.hr = sext i32 %i.hq to i64                   ; 2 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.hr
  store float %i.go, ptr %i.hs, align 4, !tbaa !27
  %i.ht = fneg float %i.ft
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.hd
  store float %i.ht, ptr %i.hu, align 4, !tbaa !27
  %i.hv = fneg float %i.gc
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.hg
  store float %i.hv, ptr %i.hw, align 4, !tbaa !27
  %i.hx = fneg float %i.gl
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.hj
  store float %i.hx, ptr %i.hy, align 4, !tbaa !27
  %i.hz = fneg float %i.fw
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.hl
  store float %i.hz, ptr %i.ia, align 4, !tbaa !27
  %i.ib = fneg float %i.gf
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.ho
  store float %i.ib, ptr %i.ic, align 4, !tbaa !27
  %i.id = fneg float %i.go
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.hr
  store float %i.id, ptr %i.ie, align 4, !tbaa !27
  %i.if = fneg float %i.gx
  %i.ig = fmul float %i.gr, %i.if
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.ha, float %i.ig) ; 2 uses
  %i.ii = fneg float %i.ha
  %i.ij = fmul float %i.fz, %i.ii
  %i.ik = tail call float @llvm.fmuladd.f32(float %i.gr, float %i.gu, float %i.ij) ; 2 uses
  %i.il = fneg float %i.gu
  %i.im = fmul float %i.gi, %i.il
  %i.in = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.gx, float %i.im) ; 2 uses
  %i.io = fmul float %i.gc, %i.ik
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.ih, float %i.ft, float %i.io)
  %i.iq = tail call noundef float @llvm.fmuladd.f32(float %i.in, float %i.gl, float %i.ip)
  %i.ir = fmul float %i.iq, %i.fg
  %i.is = load ptr, ptr %i.fh, align 8, !tbaa !107 ; 4 uses
  %i.it = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.hd
  store float %i.ir, ptr %i.it, align 4, !tbaa !27
  %i.iu = fmul float %i.gf, %i.ik
  %i.iv = tail call float @llvm.fmuladd.f32(float %i.ih, float %i.fw, float %i.iu)
  %i.iw = tail call noundef float @llvm.fmuladd.f32(float %i.in, float %i.go, float %i.iv)
  %i.ix = fmul float %i.iw, %i.fg
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.hl
  store float %i.ix, ptr %i.iy, align 4, !tbaa !27
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 782
  %i.ja = load i8, ptr %i.iz, align 2, !tbaa !29, !range !34, !noundef !32
  %.not = icmp ne i8 %i.ja, 0                     ; 3 uses
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 764
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !74
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.je = load float, ptr %i.jd, align 8, !tbaa !23
  %i.jf = fmul float %i.jc, %i.je                 ; 2 uses
  %i.jg = fcmp ogt float %i.jf, 0.000000e+00
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 781
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !10, !range !34, !noundef !32
  %i.jj = icmp eq i8 %i.ji, 0
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 781
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !10, !range !34, !noundef !32
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.c, label %bb.q

bb.c:                                             ; preds = %.thread, %bb.b
  %spec.select308.in = phi i1 [ %i.jj, %.thread ], [ false, %bb.b ]
  %.0155307 = phi float [ %i.jf, %.thread ], [ 0.000000e+00, %bb.b ]
  %.0156306 = phi i1 [ %i.jg, %.thread ], [ false, %bb.b ] ; 3 uses
  %i.jn = mul nsw i32 %i.b, 5                     ; 3 uses
  %i.jo = sext i32 %i.jn to i64                   ; 11 uses
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.jo
  store float %i.fz, ptr %i.jp, align 4, !tbaa !27
  %i.jq = add nsw i32 %i.jn, 1
  %i.jr = sext i32 %i.jq to i64                   ; 2 uses
  %i.js = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.jr
  store float %i.gi, ptr %i.js, align 4, !tbaa !27
  %i.jt = add nsw i32 %i.jn, 2
  %i.ju = sext i32 %i.jt to i64                   ; 2 uses
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.ju
  store float %i.gr, ptr %i.jv, align 4, !tbaa !27
  %i.jw = fneg float %i.fz
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.jo
  store float %i.jw, ptr %i.jx, align 4, !tbaa !27
  %i.jy = fneg float %i.gi
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.jr
  store float %i.jy, ptr %i.jz, align 4, !tbaa !27
  %i.ka = fneg float %i.gr
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.ju
  store float %i.ka, ptr %i.kb, align 4, !tbaa !27
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 748
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !73 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.kf = load float, ptr %i.ke, align 8, !tbaa !28 ; 2 uses
  %i.kg = fcmp oeq float %i.kd, %i.kf             ; 2 uses
  %or.cond164 = and i1 %.not, %i.kg
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.jo
  store float 0.000000e+00, ptr %i.kh, align 4, !tbaa !27
  %.not163 = or i1 %spec.select308.in, %or.cond164
  br i1 %.not163, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !108
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %i.jo
  store float 0.000000e+00, ptr %i.kk, align 4, !tbaa !27
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 772
  %i.km = load float, ptr %i.kl, align 4, !tbaa !72
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.ko = load float, ptr %i.kn, align 8, !tbaa !81
  %i.kp = load float, ptr %1, align 8, !tbaa !105
  %i.kq = load float, ptr %i.fe, align 4, !tbaa !106
  %i.kr = fmul float %i.kp, %i.kq
  %i.ks = tail call noundef float @_ZN17btTypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 8 dereferenceable(96) %0, float noundef %i.km, float noundef %i.kd, float noundef %i.kf, float noundef %i.ko, float noundef %i.kr)
  %i.kt = load float, ptr %i.kn, align 8, !tbaa !81
  %i.ku = fmul float %i.ks, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.kw = load float, ptr %i.kv, align 8, !tbaa !23
  %i.kx = load ptr, ptr %i.fh, align 8, !tbaa !107 ; 2 uses
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %i.jo ; 2 uses
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !27
  %i.la = tail call float @llvm.fmuladd.f32(float %i.ku, float %i.kw, float %i.kz)
  store float %i.la, ptr %i.ky, align 4, !tbaa !27
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 732 ; 2 uses
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !82
  %i.ld = fneg float %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !109
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.jo
  store float %i.ld, ptr %i.lg, align 4, !tbaa !27
  %i.lh = load float, ptr %i.lb, align 4, !tbaa !82
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !110
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.jo
  store float %i.lh, ptr %i.lk, align 4, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ll = phi ptr [ %i.kx, %bb.d ], [ %i.is, %bb.c ]
  br i1 %.not, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.lm = load float, ptr %1, align 8, !tbaa !105
  %i.ln = load float, ptr %i.fe, align 4, !tbaa !106
  %i.lo = fmul float %i.lm, %i.ln
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %i.jo ; 7 uses
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !27
  %i.lr = tail call float @llvm.fmuladd.f32(float %i.lo, float %.0155307, float %i.lq)
  store float %i.lr, ptr %i.lp, align 4, !tbaa !27
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !108
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.lt, i64 %i.jo
  store float 0.000000e+00, ptr %i.lu, align 4, !tbaa !27
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !109
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %i.jo
  br i1 %i.kg, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %. = select i1 %.0156306, float 0.000000e+00, float f0xFF7FFFFF
  %.334 = select i1 %.0156306, float f0x7F7FFFFF, float 0.000000e+00
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink333 = phi float [ %., %bb.g ], [ f0xFF7FFFFF, %bb.f ]
  %.sink = phi float [ %.334, %bb.g ], [ f0x7F7FFFFF, %bb.f ]
  store float %.sink333, ptr %i.lx, align 4, !tbaa !27
  %.sink332.in = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sink332 = load ptr, ptr %.sink332.in, align 8, !tbaa !110
  %i.ly = getelementptr inbounds [4 x i8], ptr %.sink332, i64 %i.jo
  store float %.sink, ptr %i.ly, align 4, !tbaa !27
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ma = load float, ptr %i.lz, align 8, !tbaa !79 ; 3 uses
  %i.mb = fcmp ogt float %i.ma, 0.000000e+00
  br i1 %i.mb, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load float, ptr %i.lp, align 4, !tbaa !27
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.mc = load float, ptr %4, align 4, !tbaa !27
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.me = load float, ptr %i.md, align 4, !tbaa !27
  %i.mf = fmul float %i.gi, %i.me
  %i.mg = tail call float @llvm.fmuladd.f32(float %i.mc, float %i.fz, float %i.mf)
  %i.mh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !27
  %i.mj = tail call noundef float @llvm.fmuladd.f32(float %i.mi, float %i.gr, float %i.mg)
  %i.mk = load float, ptr %5, align 4, !tbaa !27
  %i.ml = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !27
  %i.mn = fmul float %i.gi, %i.mm
  %i.mo = tail call float @llvm.fmuladd.f32(float %i.mk, float %i.fz, float %i.mn)
  %i.mp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !27
  %i.mr = tail call noundef float @llvm.fmuladd.f32(float %i.mq, float %i.gr, float %i.mo)
  %i.ms = fsub float %i.mj, %i.mr                 ; 4 uses
  %.pre326 = load float, ptr %i.lp, align 4, !tbaa !27 ; 6 uses
  br i1 %.0156306, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.mt = fcmp olt float %i.ms, 0.000000e+00
  br i1 %i.mt, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.mu = fneg float %i.ma
  %i.mv = fmul nnan float %i.ms, %i.mu            ; 3 uses
  %i.mw = fcmp ogt float %i.mv, %.pre326
  br i1 %i.mw, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  store float %i.mv, ptr %i.lp, align 4, !tbaa !27
  br label %bb.p

bb.m:                                             ; preds = %bb.i
  %i.mx = fcmp ogt float %i.ms, 0.000000e+00
  br i1 %i.mx, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.my = fneg float %i.ma
  %i.mz = fmul nnan float %i.ms, %i.my            ; 3 uses
  %i.na = fcmp olt float %i.mz, %.pre326
  br i1 %i.na, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float %i.mz, ptr %i.lp, align 4, !tbaa !27
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.j, %bb.m, %bb.l, %bb.k, %bb.o, %bb.n
  %i.nb = phi float [ %.pre, %._crit_edge ], [ %.pre326, %bb.j ], [ %.pre326, %bb.m ], [ %i.mv, %bb.l ], [ %.pre326, %bb.k ], [ %i.mz, %bb.o ], [ %.pre326, %bb.n ]
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !80
  %i.ne = fmul float %i.nd, %i.nb
  store float %i.ne, ptr %i.lp, align 4, !tbaa !27
  br label %bb.q

bb.q:                                             ; preds = %bb.e, %bb.p, %bb.b
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btHingeConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef float @_ZN17btHingeConstraint13getHingeAngleERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef nonnull readonly align 4 dereferenceable(64) %2, ptr noundef nonnull readonly align 4 dereferenceable(64) %3) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 772 ; 2 uses
  store float %i.a, ptr %i.b, align 4, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 764
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 782 ; 2 uses
  store i8 0, ptr %i.e, align 2, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 748 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !73 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !28 ; 2 uses
  %i.j = fcmp ugt float %i.g, %i.i
  br i1 %i.j, label %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.a, float noundef %i.g, float noundef %i.i) ; 4 uses
  store float %i.k, ptr %i.b, align 4, !tbaa !72
  %i.l = load float, ptr %i.f, align 4, !tbaa !73 ; 2 uses
  %i.m = fcmp ugt float %i.k, %i.l
  br i1 %i.m, label %bb.c, label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.n = load float, ptr %i.h, align 8, !tbaa !28 ; 2 uses
  %i.o = fcmp ult float %i.k, %i.n
  br i1 %i.o, label %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink12.i = phi float [ %i.l, %bb.b ], [ %i.n, %bb.c ]
  %.sink.i = phi float [ 1.000000e+00, %bb.b ], [ -1.000000e+00, %bb.c ]
  %i.p = fsub float %.sink12.i, %i.k
  store float %i.p, ptr %i.c, align 4, !tbaa !74
  store float %.sink.i, ptr %i.d, align 8, !tbaa !75
  store i8 1, ptr %i.e, align 2, !tbaa !29
  br label %_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit

_ZN17btHingeConstraint9testLimitERK11btTransformS2_.exit: ; preds = %bb.a, %bb.c, %.sink.split.i
  tail call void @_ZN17btHingeConstraint16getInfo2InternalEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_(ptr noundef nonnull align 8 dereferenceable(792) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  ret void
}

declare noundef float @_ZN17btTypedConstraint14getMotorFactorEfffff(ptr noundef nonnull align 8 dereferenceable(96), float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN17btHingeConstraint9updateRHSEf(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(792) %0, float noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef float @_ZN17btHingeConstraint13getHingeAngleEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(792) %0) local_unnamed_addr #8 align 2 {
bb.a:
end_hunk_0
