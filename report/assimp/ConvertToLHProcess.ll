inline.NumInlined: 38
inline.NumDeleted: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.aiMatrix4x4t = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

$_ZN6Assimp21MakeLeftHandedProcessD0Ev = comdat any

$_ZN6Assimp11BaseProcessD2Ev = comdat any

$_ZN6Assimp23FlipWindingOrderProcessD0Ev = comdat any

@.str = private unnamed_addr constant [28 x i8] c"MakeLeftHandedProcess begin\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"MakeLeftHandedProcess finished\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Nullptr to mesh found.\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Nullptr to aiMaterial found.\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"$tex.mapaxis\00", align 1
@_ZTVN6Assimp14FlipUVsProcessE = hidden unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6Assimp14FlipUVsProcessE, ptr @_ZN6Assimp14FlipUVsProcessD2Ev, ptr @_ZN6Assimp14FlipUVsProcessD0Ev, ptr @_ZNK6Assimp14FlipUVsProcess8IsActiveEj, ptr @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv, ptr @_ZN6Assimp11BaseProcess15SetupPropertiesEPKNS_8ImporterE, ptr @_ZN6Assimp14FlipUVsProcess7ExecuteEP7aiScene] }, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"FlipUVsProcess begin\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"FlipUVsProcess finished\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Property is null\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"$tex.uvtrafo\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"FlipWindingOrderProcess begin\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"FlipWindingOrderProcess finished\00", align 1
@_ZTVN6Assimp21MakeLeftHandedProcessE = hidden unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6Assimp21MakeLeftHandedProcessE, ptr @_ZN6Assimp11BaseProcessD2Ev, ptr @_ZN6Assimp21MakeLeftHandedProcessD0Ev, ptr @_ZNK6Assimp21MakeLeftHandedProcess8IsActiveEj, ptr @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv, ptr @_ZN6Assimp11BaseProcess15SetupPropertiesEPKNS_8ImporterE, ptr @_ZN6Assimp21MakeLeftHandedProcess7ExecuteEP7aiScene] }, align 8
@_ZTIN6Assimp21MakeLeftHandedProcessE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp21MakeLeftHandedProcessE, ptr @_ZTIN6Assimp11BaseProcessE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6Assimp21MakeLeftHandedProcessE = hidden constant [33 x i8] c"N6Assimp21MakeLeftHandedProcessE\00", align 1
@_ZTIN6Assimp11BaseProcessE = external constant ptr
@_ZTIN6Assimp14FlipUVsProcessE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp14FlipUVsProcessE, ptr @_ZTIN6Assimp11BaseProcessE }, align 8
@_ZTSN6Assimp14FlipUVsProcessE = hidden constant [26 x i8] c"N6Assimp14FlipUVsProcessE\00", align 1
@_ZTVN6Assimp23FlipWindingOrderProcessE = hidden unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6Assimp23FlipWindingOrderProcessE, ptr @_ZN6Assimp11BaseProcessD2Ev, ptr @_ZN6Assimp23FlipWindingOrderProcessD0Ev, ptr @_ZNK6Assimp23FlipWindingOrderProcess8IsActiveEj, ptr @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv, ptr @_ZN6Assimp11BaseProcess15SetupPropertiesEPKNS_8ImporterE, ptr @_ZN6Assimp23FlipWindingOrderProcess7ExecuteEP7aiScene] }, align 8
@_ZTIN6Assimp23FlipWindingOrderProcessE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp23FlipWindingOrderProcessE, ptr @_ZTIN6Assimp11BaseProcessE }, align 8
@_ZTSN6Assimp23FlipWindingOrderProcessE = hidden constant [35 x i8] c"N6Assimp23FlipWindingOrderProcessE\00", align 1

@_ZN6Assimp14FlipUVsProcessC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp14FlipUVsProcessC2Ev
@_ZN6Assimp14FlipUVsProcessD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp14FlipUVsProcessD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp21MakeLeftHandedProcess8IsActiveEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i32 %1, 4
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp21MakeLeftHandedProcess7ExecuteEP7aiScene(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %class.aiMatrix4x4t, align 4        ; 10 uses
  %i.a = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull @.str)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store float 1.000000e+00, ptr %2, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 4
  call void @_ZN6Assimp21MakeLeftHandedProcess11ProcessNodeEP6aiNodeRK12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.c, ptr noundef nonnull align 4 dereferenceable(64) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.preheader37, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

.preheader37:                                     ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %.not48 = icmp eq i32 %i.n, 0
  br i1 %.not48, label %.preheader36, label %.lr.ph40

.lr.ph40:                                         ; preds = %.preheader37
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @_ZN6Assimp21MakeLeftHandedProcess11ProcessMeshEP6aiMesh(ptr nonnull align 8 poison, ptr noundef %i.r)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i32, ptr %i.j, align 8
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ult i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %bb.b, label %.preheader37, !llvm.loop !3

.preheader36:                                     ; preds = %_ZN6Assimp21MakeLeftHandedProcess15ProcessMaterialEP10aiMaterial.exit, %.preheader37
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %.not49 = icmp eq i32 %i.w, 0
  br i1 %.not49, label %.preheader, label %.lr.ph44

.lr.ph44:                                         ; preds = %.preheader36
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph40, %_ZN6Assimp21MakeLeftHandedProcess15ProcessMaterialEP10aiMaterial.exit
  %indvars.iv53 = phi i64 [ 0, %.lr.ph40 ], [ %indvars.iv.next54, %_ZN6Assimp21MakeLeftHandedProcess15ProcessMaterialEP10aiMaterial.exit ] ; 2 uses
  %i.y = load ptr, ptr %i.o, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv53
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8            ; 2 uses
  %.not11.i = icmp eq i32 %i.ad, 0
  br i1 %.not11.i, label %_ZN6Assimp21MakeLeftHandedProcess15ProcessMaterialEP10aiMaterial.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.ae = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ae, ptr noundef nonnull @.str.3)
  br label %_ZN6Assimp21MakeLeftHandedProcess15ProcessMaterialEP10aiMaterial.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.f
  %i.af = phi i32 [ %i.aq, %bb.f ], [ %i.ad, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %.preheader.i ] ; 2 uses
  %i.ag = load ptr, ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull dereferenceable(13) @.str.4) #15
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 1048
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = fneg float %i.ao
  store float %i.ap, ptr %i.an, align 4
  %.pre.i = load i32, ptr %i.ac, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %i.aq = phi i32 [ %.pre.i, %bb.e ], [ %i.af, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp samesign ult i64 %indvars.iv.next.i, %i.ar
  br i1 %i.as, label %.lr.ph.i, label %_ZN6Assimp21MakeLeftHandedProcess15ProcessMaterialEP10aiMaterial.exit, !llvm.loop !5

_ZN6Assimp21MakeLeftHandedProcess15ProcessMaterialEP10aiMaterial.exit: ; preds = %bb.f, %.preheader.i, %bb.d
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.at = load i32, ptr %i.m, align 8
  %i.au = zext i32 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next54, %i.au
  br i1 %i.av, label %bb.c, label %.preheader36, !llvm.loop !6

.preheader:                                       ; preds = %._crit_edge, %.preheader36
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8
  %.not51 = icmp eq i32 %i.ax, 0
  br i1 %.not51, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.k

bb.g:                                             ; preds = %.lr.ph44, %._crit_edge
  %i.az = phi i32 [ %i.w, %.lr.ph44 ], [ %i.bg, %._crit_edge ]
  %indvars.iv59 = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next60, %._crit_edge ] ; 2 uses
  %i.ba = load ptr, ptr %i.x, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv59
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1048 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  %.not50 = icmp eq i32 %i.be, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 1056
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %_ZN6Assimp21MakeLeftHandedProcess16ProcessAnimationEP10aiNodeAnim.exit
  %.pre = load i32, ptr %i.v, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %i.bg = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.az, %bb.g ] ; 2 uses
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp samesign ult i64 %indvars.iv.next60, %i.bh
  br i1 %i.bi, label %bb.g, label %.preheader, !llvm.loop !7

bb.h:                                             ; preds = %.lr.ph42, %_ZN6Assimp21MakeLeftHandedProcess16ProcessAnimationEP10aiNodeAnim.exit
  %indvars.iv56 = phi i64 [ 0, %.lr.ph42 ], [ %indvars.iv.next57, %_ZN6Assimp21MakeLeftHandedProcess16ProcessAnimationEP10aiNodeAnim.exit ] ; 2 uses
  %i.bj = load ptr, ptr %i.bf, align 8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv56
end_hunk_0
begin_hunk_1_@_ZN6Assimp14FlipUVsProcess11ProcessMeshEP6aiMesh:bb.a
  br i1 %brmerge, label %_ZN12_GLOBAL__N_17flipUVsI10aiAnimMeshEEvPT_.exit, label %.lr.ph.4.i22

.lr.ph.4.i22:                                     ; preds = %._crit_edge.3.i21, %.lr.ph.4.i22
  %indvars.iv.4.i23 = phi i64 [ %indvars.iv.next.4.i24, %.lr.ph.4.i22 ], [ 0, %._crit_edge.3.i21 ] ; 2 uses
  %i.es = load ptr, ptr %i.eq, align 8
  %i.et = getelementptr inbounds nuw [12 x i8], ptr %i.es, i64 %indvars.iv.4.i23
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4 ; 2 uses
  %i.ev = load float, ptr %i.eu, align 4
  %i.ew = fsub float 1.000000e+00, %i.ev
  store float %i.ew, ptr %i.eu, align 4
  %indvars.iv.next.4.i24 = add nuw nsw i64 %indvars.iv.4.i23, 1 ; 2 uses
  %i.ex = load i32, ptr %i.dd, align 8            ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  %i.ez = icmp samesign ult i64 %indvars.iv.next.4.i24, %i.ey
  br i1 %i.ez, label %.lr.ph.4.i22, label %._crit_edge.4.i25, !llvm.loop !22

._crit_edge.4.i25:                                ; preds = %.lr.ph.4.i22
  %i.fa = getelementptr inbounds nuw i8, ptr %i.da, i64 1168 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8
  %.not.5.i = icmp eq ptr %i.fb, null
  %i.fc = icmp eq i32 %i.ex, 0
  %or.cond = or i1 %i.fc, %.not.5.i
  br i1 %or.cond, label %_ZN12_GLOBAL__N_17flipUVsI10aiAnimMeshEEvPT_.exit, label %.lr.ph.5.i26

.lr.ph.5.i26:                                     ; preds = %._crit_edge.4.i25, %.lr.ph.5.i26
  %indvars.iv.5.i27 = phi i64 [ %indvars.iv.next.5.i28, %.lr.ph.5.i26 ], [ 0, %._crit_edge.4.i25 ] ; 2 uses
  %i.fd = load ptr, ptr %i.fa, align 8
  %i.fe = getelementptr inbounds nuw [12 x i8], ptr %i.fd, i64 %indvars.iv.5.i27
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 2 uses
  %i.fg = load float, ptr %i.ff, align 4
  %i.fh = fsub float 1.000000e+00, %i.fg
  store float %i.fh, ptr %i.ff, align 4
  %indvars.iv.next.5.i28 = add nuw nsw i64 %indvars.iv.5.i27, 1 ; 2 uses
  %i.fi = load i32, ptr %i.dd, align 8            ; 2 uses
  %i.fj = zext i32 %i.fi to i64
  %i.fk = icmp samesign ult i64 %indvars.iv.next.5.i28, %i.fj
  br i1 %i.fk, label %.lr.ph.5.i26, label %._crit_edge.5.i29, !llvm.loop !22

._crit_edge.5.i29:                                ; preds = %.lr.ph.5.i26
  %i.fl = icmp eq i32 %i.fi, 0
  %i.fm = getelementptr inbounds nuw i8, ptr %i.da, i64 1176 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8
  %.not.6.i = icmp eq ptr %i.fn, null
  %brmerge45.i = or i1 %i.fl, %.not.6.i
  br i1 %brmerge45.i, label %_ZN12_GLOBAL__N_17flipUVsI10aiAnimMeshEEvPT_.exit, label %.lr.ph.6.i30

.lr.ph.6.i30:                                     ; preds = %._crit_edge.5.i29, %.lr.ph.6.i30
  %indvars.iv.6.i31 = phi i64 [ %indvars.iv.next.6.i32, %.lr.ph.6.i30 ], [ 0, %._crit_edge.5.i29 ] ; 2 uses
  %i.fo = load ptr, ptr %i.fm, align 8
  %i.fp = getelementptr inbounds nuw [12 x i8], ptr %i.fo, i64 %indvars.iv.6.i31
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4 ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4
  %i.fs = fsub float 1.000000e+00, %i.fr
  store float %i.fs, ptr %i.fq, align 4
  %indvars.iv.next.6.i32 = add nuw nsw i64 %indvars.iv.6.i31, 1 ; 2 uses
  %i.ft = load i32, ptr %i.dd, align 8            ; 2 uses
  %i.fu = zext i32 %i.ft to i64
  %i.fv = icmp samesign ult i64 %indvars.iv.next.6.i32, %i.fu
  br i1 %i.fv, label %.lr.ph.6.i30, label %._crit_edge.6.i33, !llvm.loop !22

._crit_edge.6.i33:                                ; preds = %.lr.ph.6.i30
  %i.fw = icmp eq i32 %i.ft, 0
  %i.fx = getelementptr inbounds nuw i8, ptr %i.da, i64 1184 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8
  %.not.7.i = icmp eq ptr %i.fy, null
  %brmerge.i = or i1 %i.fw, %.not.7.i
  br i1 %brmerge.i, label %_ZN12_GLOBAL__N_17flipUVsI10aiAnimMeshEEvPT_.exit, label %.lr.ph.7.i34

.lr.ph.7.i34:                                     ; preds = %._crit_edge.6.i33, %.lr.ph.7.i34
  %indvars.iv.7.i35 = phi i64 [ %indvars.iv.next.7.i36, %.lr.ph.7.i34 ], [ 0, %._crit_edge.6.i33 ] ; 2 uses
  %i.fz = load ptr, ptr %i.fx, align 8
  %i.ga = getelementptr inbounds nuw [12 x i8], ptr %i.fz, i64 %indvars.iv.7.i35
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 2 uses
  %i.gc = load float, ptr %i.gb, align 4
  %i.gd = fsub float 1.000000e+00, %i.gc
  store float %i.gd, ptr %i.gb, align 4
  %indvars.iv.next.7.i36 = add nuw nsw i64 %indvars.iv.7.i35, 1 ; 2 uses
  %i.ge = load i32, ptr %i.dd, align 8
  %i.gf = zext i32 %i.ge to i64
  %i.gg = icmp samesign ult i64 %indvars.iv.next.7.i36, %i.gf
  br i1 %i.gg, label %.lr.ph.7.i34, label %_ZN12_GLOBAL__N_17flipUVsI10aiAnimMeshEEvPT_.exit, !llvm.loop !22

.lr.ph.i6:                                        ; preds = %.preheader.i, %.lr.ph.i6
  %indvars.iv.i7 = phi i64 [ %indvars.iv.next.i8, %.lr.ph.i6 ], [ 0, %.preheader.i ] ; 2 uses
  %i.gh = load ptr, ptr %i.dc, align 8
  %i.gi = getelementptr inbounds nuw [12 x i8], ptr %i.gh, i64 %indvars.iv.i7
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4
  %i.gl = fsub float 1.000000e+00, %i.gk
  store float %i.gl, ptr %i.gj, align 4
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i7, 1 ; 2 uses
  %i.gm = load i32, ptr %i.dd, align 8            ; 2 uses
  %i.gn = zext i32 %i.gm to i64
  %i.go = icmp samesign ult i64 %indvars.iv.next.i8, %i.gn
  br i1 %i.go, label %.lr.ph.i6, label %._crit_edge.i9, !llvm.loop !22

_ZN12_GLOBAL__N_17flipUVsI10aiAnimMeshEEvPT_.exit: ; preds = %.lr.ph.7.i34, %._crit_edge.1.i13, %._crit_edge.3.i21, %bb.b, %.preheader15.i5, %._crit_edge.i9, %._crit_edge.thread.i, %._crit_edge.2.i17, %._crit_edge.4.i25, %._crit_edge.5.i29, %._crit_edge.6.i33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gp = load i32, ptr %i.cv, align 8
  %i.gq = zext i32 %i.gp to i64
  %i.gr = icmp samesign ult i64 %indvars.iv.next, %i.gq
  br i1 %i.gr, label %bb.b, label %._crit_edge, !llvm.loop !23
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp14FlipUVsProcess15ProcessMaterialEP10aiMaterial(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull @.str.7)
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(13) @.str.8) #15
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1048
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.l = load float, ptr %i.k, align 4
  %i.m = fneg float %i.l
  store float %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.o = load float, ptr %i.n, align 4
  %i.p = fneg float %i.o
  store float %i.p, ptr %i.n, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr %i.a, align 8
  %i.r = zext i32 %i.q to i64
  %i.s = icmp samesign ult i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !19
}

declare void @_ZN6Assimp6Logger12verboseDebugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp23FlipWindingOrderProcess8IsActiveEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i32 %1, 16777216
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp23FlipWindingOrderProcess7ExecuteEP7aiScene(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull @.str.9)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.e = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull @.str.10)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh(ptr noundef %i.h)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.b, align 8
  %i.j = zext i32 %i.i to i64
  %i.k = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not130 = icmp eq i32 %i.b, 0
  br i1 %.not130, label %.preheader100, label %.lr.ph104

.lr.ph104:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.b

.preheader100:                                    ; preds = %._crit_edge, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not132 = icmp eq i32 %i.e, 0
  br i1 %.not132, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %.preheader100
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1272
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph104, %._crit_edge
  %i.g = phi i32 [ %i.b, %.lr.ph104 ], [ %i.l, %._crit_edge ]
  %indvars.iv139 = phi i64 [ 0, %.lr.ph104 ], [ %indvars.iv.next140, %._crit_edge ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv139 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %.not131 = icmp ult i32 %i.j, 2
  br i1 %.not131, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load i32, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.l = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.g, %bb.b ] ; 2 uses
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = icmp samesign ult i64 %indvars.iv.next140, %i.m
  br i1 %i.n, label %bb.b, label %.preheader100, !llvm.loop !25

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.o = phi i32 [ %i.j, %.lr.ph ], [ %i.y, %bb.c ]
  %i.p = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %i.s = xor i32 %i.r, -1
  %i.t = add i32 %i.o, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.q, align 4
  %i.x = load i32, ptr %i.v, align 4
  store i32 %i.x, ptr %i.q, align 4
  store i32 %i.w, ptr %i.v, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i32, ptr %i.i, align 8              ; 2 uses
  %i.z = lshr i32 %i.y, 1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !26

._crit_edge127:                                   ; preds = %.split123.us, %.preheader100
  ret void

bb.d:                                             ; preds = %.lr.ph126, %.split123.us
  %indvars.iv173 = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next174, %.split123.us ] ; 2 uses
  %i.ac = load ptr, ptr %i.f, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv173
  %i.ae = load ptr, ptr %i.ad, align 8            ; 21 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1192
  %i.ag = load i32, ptr %i.af, align 8
  %.fr133 = freeze i32 %i.ag                      ; 40 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 1032 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not = icmp ne ptr %i.ai, null
  %i.aj = icmp ne i32 %.fr133, 0                  ; 3 uses
  %or.cond = and i1 %.not, %i.aj
  br i1 %or.cond, label %.lr.ph106.preheader, label %.loopexit99

.lr.ph106.preheader:                              ; preds = %bb.d
  %wide.trip.count = zext i32 %.fr133 to i64
  br label %.lr.ph106

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %.lr.ph106
  %indvars.iv142 = phi i64 [ 0, %.lr.ph106.preheader ], [ %indvars.iv.next143, %.lr.ph106 ] ; 3 uses
  %i.ak = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.ak, i64 %indvars.iv142 ; 2 uses
  %i.am = trunc nuw i64 %indvars.iv142 to i32
  %i.an = xor i32 %i.am, -1
  %i.ao = add i32 %.fr133, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.ak, i64 %i.ap ; 2 uses
  %.sroa.0.0.copyload = load <3 x float>, ptr %i.al, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(12) %i.aq, i64 12, i1 false)
  store <3 x float> %.sroa.0.0.copyload, ptr %i.aq, align 4
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit99, label %.lr.ph106, !llvm.loop !27

.loopexit99:                                      ; preds = %.lr.ph106, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 1040 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %.not88 = icmp ne ptr %i.as, null
  %or.cond128 = and i1 %.not88, %i.aj
  br i1 %or.cond128, label %.lr.ph108.preheader, label %.loopexit97

.lr.ph108.preheader:                              ; preds = %.loopexit99
  %wide.trip.count148 = zext i32 %.fr133 to i64
  br label %.lr.ph108

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph108
  %indvars.iv145 = phi i64 [ 0, %.lr.ph108.preheader ], [ %indvars.iv.next146, %.lr.ph108 ] ; 3 uses
  %i.at = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %indvars.iv145 ; 2 uses
  %i.av = trunc nuw i64 %indvars.iv145 to i32
  %i.aw = xor i32 %i.av, -1
  %i.ax = add i32 %.fr133, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %i.ay ; 2 uses
  %.sroa.0186.0.copyload = load <3 x float>, ptr %i.au, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.au, ptr noundef nonnull align 4 dereferenceable(12) %i.az, i64 12, i1 false)
  store <3 x float> %.sroa.0186.0.copyload, ptr %i.az, align 4
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148
  br i1 %exitcond149.not, label %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.us.preheader, label %.lr.ph108, !llvm.loop !28

.loopexit97:                                      ; preds = %.loopexit99
  %.not134 = icmp eq i32 %.fr133, 0
  br i1 %.not134, label %.split123.us, label %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.us.preheader

_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.us.preheader: ; preds = %.lr.ph108, %.loopexit97
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 1128 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %.not91.us = icmp eq ptr %i.bb, null
  br i1 %.not91.us, label %..loopexit93_crit_edge.us, label %.preheader92.us

bb.e:                                             ; preds = %.preheader92.us, %bb.e
  %indvars.iv150 = phi i64 [ 0, %.preheader92.us ], [ %indvars.iv.next151, %bb.e ] ; 3 uses
  %i.bc = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %indvars.iv150 ; 2 uses
  %i.be = trunc nuw i64 %indvars.iv150 to i32
  %i.bf = xor i32 %i.be, -1
  %i.bg = add i32 %.fr133, %i.bf
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bh ; 2 uses
  %.sroa.0188.0.copyload = load <3 x float>, ptr %i.bd, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %i.bi, i64 12, i1 false)
  store <3 x float> %.sroa.0188.0.copyload, ptr %i.bi, align 4
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %..loopexit93_crit_edge.us, label %bb.e, !llvm.loop !29

..loopexit93_crit_edge.us:                        ; preds = %bb.e, %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.us.preheader
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 1136 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %.not91.us.1 = icmp eq ptr %i.bk, null
  br i1 %.not91.us.1, label %..loopexit93_crit_edge.us.1, label %.preheader92.us.1

.preheader92.us.1:                                ; preds = %..loopexit93_crit_edge.us
  %wide.trip.count153.1 = zext i32 %.fr133 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader92.us.1
  %indvars.iv150.1 = phi i64 [ 0, %.preheader92.us.1 ], [ %indvars.iv.next151.1, %bb.f ] ; 3 uses
  %i.bl = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %indvars.iv150.1 ; 2 uses
  %i.bn = trunc nuw i64 %indvars.iv150.1 to i32
  %i.bo = xor i32 %i.bn, -1
  %i.bp = add i32 %.fr133, %i.bo
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.bq ; 2 uses
  %.sroa.0188.0.copyload190 = load <3 x float>, ptr %i.bm, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bm, ptr noundef nonnull align 4 dereferenceable(12) %i.br, i64 12, i1 false)
  store <3 x float> %.sroa.0188.0.copyload190, ptr %i.br, align 4
  %indvars.iv.next151.1 = add nuw nsw i64 %indvars.iv150.1, 1 ; 2 uses
  %exitcond154.1.not = icmp eq i64 %indvars.iv.next151.1, %wide.trip.count153.1
  br i1 %exitcond154.1.not, label %..loopexit93_crit_edge.us.1, label %bb.f, !llvm.loop !29

..loopexit93_crit_edge.us.1:                      ; preds = %bb.f, %..loopexit93_crit_edge.us
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ae, i64 1144 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %.not91.us.2 = icmp eq ptr %i.bt, null
  br i1 %.not91.us.2, label %..loopexit93_crit_edge.us.2, label %.preheader92.us.2

.preheader92.us.2:                                ; preds = %..loopexit93_crit_edge.us.1
  %wide.trip.count153.2 = zext i32 %.fr133 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader92.us.2
  %indvars.iv150.2 = phi i64 [ 0, %.preheader92.us.2 ], [ %indvars.iv.next151.2, %bb.g ] ; 3 uses
  %i.bu = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.bu, i64 %indvars.iv150.2 ; 2 uses
  %i.bw = trunc nuw i64 %indvars.iv150.2 to i32
  %i.bx = xor i32 %i.bw, -1
  %i.by = add i32 %.fr133, %i.bx
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.bu, i64 %i.bz ; 2 uses
  %.sroa.0188.0.copyload192 = load <3 x float>, ptr %i.bv, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bv, ptr noundef nonnull align 4 dereferenceable(12) %i.ca, i64 12, i1 false)
  store <3 x float> %.sroa.0188.0.copyload192, ptr %i.ca, align 4
  %indvars.iv.next151.2 = add nuw nsw i64 %indvars.iv150.2, 1 ; 2 uses
  %exitcond154.2.not = icmp eq i64 %indvars.iv.next151.2, %wide.trip.count153.2
  br i1 %exitcond154.2.not, label %..loopexit93_crit_edge.us.2, label %bb.g, !llvm.loop !29

..loopexit93_crit_edge.us.2:                      ; preds = %bb.g, %..loopexit93_crit_edge.us.1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ae, i64 1152 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %.not91.us.3 = icmp eq ptr %i.cc, null
  br i1 %.not91.us.3, label %..loopexit93_crit_edge.us.3, label %.preheader92.us.3

.preheader92.us.3:                                ; preds = %..loopexit93_crit_edge.us.2
  %wide.trip.count153.3 = zext i32 %.fr133 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader92.us.3
  %indvars.iv150.3 = phi i64 [ 0, %.preheader92.us.3 ], [ %indvars.iv.next151.3, %bb.h ] ; 3 uses
  %i.cd = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %indvars.iv150.3 ; 2 uses
  %i.cf = trunc nuw i64 %indvars.iv150.3 to i32
  %i.cg = xor i32 %i.cf, -1
  %i.ch = add i32 %.fr133, %i.cg
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %i.ci ; 2 uses
  %.sroa.0188.0.copyload194 = load <3 x float>, ptr %i.ce, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %i.cj, i64 12, i1 false)
  store <3 x float> %.sroa.0188.0.copyload194, ptr %i.cj, align 4
  %indvars.iv.next151.3 = add nuw nsw i64 %indvars.iv150.3, 1 ; 2 uses
  %exitcond154.3.not = icmp eq i64 %indvars.iv.next151.3, %wide.trip.count153.3
  br i1 %exitcond154.3.not, label %..loopexit93_crit_edge.us.3, label %bb.h, !llvm.loop !29

..loopexit93_crit_edge.us.3:                      ; preds = %bb.h, %..loopexit93_crit_edge.us.2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ae, i64 1160 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %.not91.us.4 = icmp eq ptr %i.cl, null
  br i1 %.not91.us.4, label %..loopexit93_crit_edge.us.4, label %.preheader92.us.4

.preheader92.us.4:                                ; preds = %..loopexit93_crit_edge.us.3
  %wide.trip.count153.4 = zext i32 %.fr133 to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader92.us.4
  %indvars.iv150.4 = phi i64 [ 0, %.preheader92.us.4 ], [ %indvars.iv.next151.4, %bb.i ] ; 3 uses
  %i.cm = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.cm, i64 %indvars.iv150.4 ; 2 uses
  %i.co = trunc nuw i64 %indvars.iv150.4 to i32
  %i.cp = xor i32 %i.co, -1
  %i.cq = add i32 %.fr133, %i.cp
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.cm, i64 %i.cr ; 2 uses
  %.sroa.0188.0.copyload196 = load <3 x float>, ptr %i.cn, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cn, ptr noundef nonnull align 4 dereferenceable(12) %i.cs, i64 12, i1 false)
  store <3 x float> %.sroa.0188.0.copyload196, ptr %i.cs, align 4
  %indvars.iv.next151.4 = add nuw nsw i64 %indvars.iv150.4, 1 ; 2 uses
  %exitcond154.4.not = icmp eq i64 %indvars.iv.next151.4, %wide.trip.count153.4
  br i1 %exitcond154.4.not, label %..loopexit93_crit_edge.us.4, label %bb.i, !llvm.loop !29

..loopexit93_crit_edge.us.4:                      ; preds = %bb.i, %..loopexit93_crit_edge.us.3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ae, i64 1168 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  %.not91.us.5 = icmp eq ptr %i.cu, null
  br i1 %.not91.us.5, label %..loopexit93_crit_edge.us.5, label %.preheader92.us.5

.preheader92.us.5:                                ; preds = %..loopexit93_crit_edge.us.4
  %wide.trip.count153.5 = zext i32 %.fr133 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader92.us.5
  %indvars.iv150.5 = phi i64 [ 0, %.preheader92.us.5 ], [ %indvars.iv.next151.5, %bb.j ] ; 3 uses
  %i.cv = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cw = getelementptr inbounds nuw [12 x i8], ptr %i.cv, i64 %indvars.iv150.5 ; 2 uses
  %i.cx = trunc nuw i64 %indvars.iv150.5 to i32
  %i.cy = xor i32 %i.cx, -1
  %i.cz = add i32 %.fr133, %i.cy
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [12 x i8], ptr %i.cv, i64 %i.da ; 2 uses
  %.sroa.0188.0.copyload198 = load <3 x float>, ptr %i.cw, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cw, ptr noundef nonnull align 4 dereferenceable(12) %i.db, i64 12, i1 false)
  store <3 x float> %.sroa.0188.0.copyload198, ptr %i.db, align 4
  %indvars.iv.next151.5 = add nuw nsw i64 %indvars.iv150.5, 1 ; 2 uses
  %exitcond154.5.not = icmp eq i64 %indvars.iv.next151.5, %wide.trip.count153.5
  br i1 %exitcond154.5.not, label %..loopexit93_crit_edge.us.5, label %bb.j, !llvm.loop !29

..loopexit93_crit_edge.us.5:                      ; preds = %bb.j, %..loopexit93_crit_edge.us.4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ae, i64 1176 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  %.not91.us.6 = icmp eq ptr %i.dd, null
  br i1 %.not91.us.6, label %..loopexit93_crit_edge.us.6, label %.preheader92.us.6

.preheader92.us.6:                                ; preds = %..loopexit93_crit_edge.us.5
  %wide.trip.count153.6 = zext i32 %.fr133 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader92.us.6
  %indvars.iv150.6 = phi i64 [ 0, %.preheader92.us.6 ], [ %indvars.iv.next151.6, %bb.k ] ; 3 uses
  %i.de = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.df = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %indvars.iv150.6 ; 2 uses
  %i.dg = trunc nuw i64 %indvars.iv150.6 to i32
  %i.dh = xor i32 %i.dg, -1
  %i.di = add i32 %.fr133, %i.dh
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %i.dj ; 2 uses
  %.sroa.0188.0.copyload200 = load <3 x float>, ptr %i.df, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.df, ptr noundef nonnull align 4 dereferenceable(12) %i.dk, i64 12, i1 false)
  store <3 x float> %.sroa.0188.0.copyload200, ptr %i.dk, align 4
  %indvars.iv.next151.6 = add nuw nsw i64 %indvars.iv150.6, 1 ; 2 uses
  %exitcond154.6.not = icmp eq i64 %indvars.iv.next151.6, %wide.trip.count153.6
  br i1 %exitcond154.6.not, label %..loopexit93_crit_edge.us.6, label %bb.k, !llvm.loop !29

..loopexit93_crit_edge.us.6:                      ; preds = %bb.k, %..loopexit93_crit_edge.us.5
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ae, i64 1184 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8
  %.not91.us.7 = icmp eq ptr %i.dm, null
  br i1 %.not91.us.7, label %.split114.us, label %.preheader92.us.7

.preheader92.us.7:                                ; preds = %..loopexit93_crit_edge.us.6
  %wide.trip.count153.7 = zext i32 %.fr133 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader92.us.7
  %indvars.iv150.7 = phi i64 [ 0, %.preheader92.us.7 ], [ %indvars.iv.next151.7, %bb.l ] ; 3 uses
  %i.dn = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.do = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %indvars.iv150.7 ; 2 uses
  %i.dp = trunc nuw i64 %indvars.iv150.7 to i32
  %i.dq = xor i32 %i.dp, -1
  %i.dr = add i32 %.fr133, %i.dq
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %i.ds ; 2 uses
  %.sroa.0188.0.copyload202 = load <3 x float>, ptr %i.do, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.do, ptr noundef nonnull align 4 dereferenceable(12) %i.dt, i64 12, i1 false)
  store <3 x float> %.sroa.0188.0.copyload202, ptr %i.dt, align 4
  %indvars.iv.next151.7 = add nuw nsw i64 %indvars.iv150.7, 1 ; 2 uses
  %exitcond154.7.not = icmp eq i64 %indvars.iv.next151.7, %wide.trip.count153.7
  br i1 %exitcond154.7.not, label %.split114.us, label %bb.l, !llvm.loop !29

.preheader92.us:                                  ; preds = %_ZNK10aiAnimMesh16HasTextureCoordsEj.exit.us.preheader
  %wide.trip.count153 = zext i32 %.fr133 to i64
  br label %bb.e

.split114.us:                                     ; preds = %bb.l, %..loopexit93_crit_edge.us.6
  %i.du = getelementptr inbounds nuw i8, ptr %i.ae, i64 1048 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8
  %.not89 = icmp ne ptr %i.dv, null
  %or.cond129 = and i1 %.not89, %i.aj
  br i1 %or.cond129, label %.lr.ph116, label %.loopexit95

.lr.ph116:                                        ; preds = %.split114.us
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ae, i64 1056
  %wide.trip.count162 = zext i32 %.fr133 to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph116, %bb.m
  %indvars.iv159 = phi i64 [ 0, %.lr.ph116 ], [ %indvars.iv.next160, %bb.m ] ; 4 uses
  %i.dx = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %i.dx, i64 %indvars.iv159 ; 2 uses
  %i.dz = trunc nuw i64 %indvars.iv159 to i32
  %i.ea = xor i32 %i.dz, -1
  %i.eb = add i32 %.fr133, %i.ea
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds nuw [12 x i8], ptr %i.dx, i64 %i.ec ; 2 uses
  %.sroa.0204.0.copyload = load <3 x float>, ptr %i.dy, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dy, ptr noundef nonnull align 4 dereferenceable(12) %i.ed, i64 12, i1 false)
  store <3 x float> %.sroa.0204.0.copyload, ptr %i.ed, align 4
  %i.ee = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %i.ee, i64 %indvars.iv159 ; 2 uses
  %i.eg = getelementptr inbounds nuw [12 x i8], ptr %i.ee, i64 %i.ec ; 2 uses
  %.sroa.0206.0.copyload = load <3 x float>, ptr %i.ef, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ef, ptr noundef nonnull align 4 dereferenceable(12) %i.eg, i64 12, i1 false)
  store <3 x float> %.sroa.0206.0.copyload, ptr %i.eg, align 4
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count162
  br i1 %exitcond163.not, label %.loopexit95, label %bb.m, !llvm.loop !30

.loopexit95:                                      ; preds = %bb.m, %.split114.us
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ae, i64 1064 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8
  %.not90.us = icmp eq ptr %i.ei, null
  br i1 %.not90.us, label %..loopexit_crit_edge.us, label %.preheader.us

bb.n:                                             ; preds = %.preheader.us, %bb.n
  %indvars.iv164 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next165, %bb.n ] ; 3 uses
  %i.ej = load ptr, ptr %i.eh, align 8            ; 2 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %indvars.iv164 ; 2 uses
  %i.el = trunc nuw i64 %indvars.iv164 to i32
  %i.em = xor i32 %i.el, -1
  %i.en = add i32 %.fr133, %i.em
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.eo ; 2 uses
  %.sroa.0.0.copyload.a = load <4 x float>, ptr %i.ek, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ek, ptr noundef nonnull align 4 dereferenceable(16) %i.ep, i64 16, i1 false)
  store <4 x float> %.sroa.0.0.copyload.a, ptr %i.ep, align 4
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %..loopexit_crit_edge.us, label %bb.n, !llvm.loop !31

..loopexit_crit_edge.us:                          ; preds = %bb.n, %.loopexit95
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ae, i64 1072 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8
  %.not90.us.1 = icmp eq ptr %i.er, null
  br i1 %.not90.us.1, label %..loopexit_crit_edge.us.1, label %.preheader.us.1

.preheader.us.1:                                  ; preds = %..loopexit_crit_edge.us
  %wide.trip.count167.1 = zext i32 %.fr133 to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.preheader.us.1
  %indvars.iv164.1 = phi i64 [ 0, %.preheader.us.1 ], [ %indvars.iv.next165.1, %bb.o ] ; 3 uses
  %i.es = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %indvars.iv164.1 ; 2 uses
  %i.eu = trunc nuw i64 %indvars.iv164.1 to i32
  %i.ev = xor i32 %i.eu, -1
  %i.ew = add i32 %.fr133, %i.ev
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.ex ; 2 uses
  %.sroa.0.0.copyload186 = load <4 x float>, ptr %i.et, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.et, ptr noundef nonnull align 4 dereferenceable(16) %i.ey, i64 16, i1 false)
  store <4 x float> %.sroa.0.0.copyload186, ptr %i.ey, align 4
  %indvars.iv.next165.1 = add nuw nsw i64 %indvars.iv164.1, 1 ; 2 uses
  %exitcond168.1.not = icmp eq i64 %indvars.iv.next165.1, %wide.trip.count167.1
  br i1 %exitcond168.1.not, label %..loopexit_crit_edge.us.1, label %bb.o, !llvm.loop !31

..loopexit_crit_edge.us.1:                        ; preds = %bb.o, %..loopexit_crit_edge.us
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ae, i64 1080 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8
  %.not90.us.2 = icmp eq ptr %i.fa, null
  br i1 %.not90.us.2, label %..loopexit_crit_edge.us.2, label %.preheader.us.2

.preheader.us.2:                                  ; preds = %..loopexit_crit_edge.us.1
  %wide.trip.count167.2 = zext i32 %.fr133 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.preheader.us.2
  %indvars.iv164.2 = phi i64 [ 0, %.preheader.us.2 ], [ %indvars.iv.next165.2, %bb.p ] ; 3 uses
  %i.fb = load ptr, ptr %i.ez, align 8            ; 2 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %indvars.iv164.2 ; 2 uses
  %i.fd = trunc nuw i64 %indvars.iv164.2 to i32
  %i.fe = xor i32 %i.fd, -1
  %i.ff = add i32 %.fr133, %i.fe
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.fg ; 2 uses
  %.sroa.0.0.copyload188 = load <4 x float>, ptr %i.fc, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fc, ptr noundef nonnull align 4 dereferenceable(16) %i.fh, i64 16, i1 false)
  store <4 x float> %.sroa.0.0.copyload188, ptr %i.fh, align 4
  %indvars.iv.next165.2 = add nuw nsw i64 %indvars.iv164.2, 1 ; 2 uses
  %exitcond168.2.not = icmp eq i64 %indvars.iv.next165.2, %wide.trip.count167.2
  br i1 %exitcond168.2.not, label %..loopexit_crit_edge.us.2, label %bb.p, !llvm.loop !31

..loopexit_crit_edge.us.2:                        ; preds = %bb.p, %..loopexit_crit_edge.us.1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ae, i64 1088 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8
  %.not90.us.3 = icmp eq ptr %i.fj, null
  br i1 %.not90.us.3, label %..loopexit_crit_edge.us.3, label %.preheader.us.3

.preheader.us.3:                                  ; preds = %..loopexit_crit_edge.us.2
  %wide.trip.count167.3 = zext i32 %.fr133 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader.us.3
  %indvars.iv164.3 = phi i64 [ 0, %.preheader.us.3 ], [ %indvars.iv.next165.3, %bb.q ] ; 3 uses
  %i.fk = load ptr, ptr %i.fi, align 8            ; 2 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %indvars.iv164.3 ; 2 uses
  %i.fm = trunc nuw i64 %indvars.iv164.3 to i32
  %i.fn = xor i32 %i.fm, -1
  %i.fo = add i32 %.fr133, %i.fn
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.fp ; 2 uses
  %.sroa.0.0.copyload190 = load <4 x float>, ptr %i.fl, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fl, ptr noundef nonnull align 4 dereferenceable(16) %i.fq, i64 16, i1 false)
  store <4 x float> %.sroa.0.0.copyload190, ptr %i.fq, align 4
  %indvars.iv.next165.3 = add nuw nsw i64 %indvars.iv164.3, 1 ; 2 uses
  %exitcond168.3.not = icmp eq i64 %indvars.iv.next165.3, %wide.trip.count167.3
  br i1 %exitcond168.3.not, label %..loopexit_crit_edge.us.3, label %bb.q, !llvm.loop !31

..loopexit_crit_edge.us.3:                        ; preds = %bb.q, %..loopexit_crit_edge.us.2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ae, i64 1096 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8
  %.not90.us.4 = icmp eq ptr %i.fs, null
  br i1 %.not90.us.4, label %..loopexit_crit_edge.us.4, label %.preheader.us.4

.preheader.us.4:                                  ; preds = %..loopexit_crit_edge.us.3
  %wide.trip.count167.4 = zext i32 %.fr133 to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.preheader.us.4
  %indvars.iv164.4 = phi i64 [ 0, %.preheader.us.4 ], [ %indvars.iv.next165.4, %bb.r ] ; 3 uses
  %i.ft = load ptr, ptr %i.fr, align 8            ; 2 uses
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %indvars.iv164.4 ; 2 uses
  %i.fv = trunc nuw i64 %indvars.iv164.4 to i32
  %i.fw = xor i32 %i.fv, -1
  %i.fx = add i32 %.fr133, %i.fw
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.fy ; 2 uses
  %.sroa.0.0.copyload192 = load <4 x float>, ptr %i.fu, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fu, ptr noundef nonnull align 4 dereferenceable(16) %i.fz, i64 16, i1 false)
  store <4 x float> %.sroa.0.0.copyload192, ptr %i.fz, align 4
  %indvars.iv.next165.4 = add nuw nsw i64 %indvars.iv164.4, 1 ; 2 uses
  %exitcond168.4.not = icmp eq i64 %indvars.iv.next165.4, %wide.trip.count167.4
  br i1 %exitcond168.4.not, label %..loopexit_crit_edge.us.4, label %bb.r, !llvm.loop !31

..loopexit_crit_edge.us.4:                        ; preds = %bb.r, %..loopexit_crit_edge.us.3
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ae, i64 1104 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8
  %.not90.us.5 = icmp eq ptr %i.gb, null
  br i1 %.not90.us.5, label %..loopexit_crit_edge.us.5, label %.preheader.us.5

.preheader.us.5:                                  ; preds = %..loopexit_crit_edge.us.4
  %wide.trip.count167.5 = zext i32 %.fr133 to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader.us.5
  %indvars.iv164.5 = phi i64 [ 0, %.preheader.us.5 ], [ %indvars.iv.next165.5, %bb.s ] ; 3 uses
  %i.gc = load ptr, ptr %i.ga, align 8            ; 2 uses
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %indvars.iv164.5 ; 2 uses
  %i.ge = trunc nuw i64 %indvars.iv164.5 to i32
  %i.gf = xor i32 %i.ge, -1
  %i.gg = add i32 %.fr133, %i.gf
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %i.gh ; 2 uses
  %.sroa.0.0.copyload194 = load <4 x float>, ptr %i.gd, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gd, ptr noundef nonnull align 4 dereferenceable(16) %i.gi, i64 16, i1 false)
  store <4 x float> %.sroa.0.0.copyload194, ptr %i.gi, align 4
  %indvars.iv.next165.5 = add nuw nsw i64 %indvars.iv164.5, 1 ; 2 uses
  %exitcond168.5.not = icmp eq i64 %indvars.iv.next165.5, %wide.trip.count167.5
  br i1 %exitcond168.5.not, label %..loopexit_crit_edge.us.5, label %bb.s, !llvm.loop !31

..loopexit_crit_edge.us.5:                        ; preds = %bb.s, %..loopexit_crit_edge.us.4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ae, i64 1112 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8
  %.not90.us.6 = icmp eq ptr %i.gk, null
  br i1 %.not90.us.6, label %..loopexit_crit_edge.us.6, label %.preheader.us.6

.preheader.us.6:                                  ; preds = %..loopexit_crit_edge.us.5
  %wide.trip.count167.6 = zext i32 %.fr133 to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader.us.6
  %indvars.iv164.6 = phi i64 [ 0, %.preheader.us.6 ], [ %indvars.iv.next165.6, %bb.t ] ; 3 uses
  %i.gl = load ptr, ptr %i.gj, align 8            ; 2 uses
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %indvars.iv164.6 ; 2 uses
  %i.gn = trunc nuw i64 %indvars.iv164.6 to i32
  %i.go = xor i32 %i.gn, -1
  %i.gp = add i32 %.fr133, %i.go
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %i.gq ; 2 uses
  %.sroa.0.0.copyload196 = load <4 x float>, ptr %i.gm, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gm, ptr noundef nonnull align 4 dereferenceable(16) %i.gr, i64 16, i1 false)
  store <4 x float> %.sroa.0.0.copyload196, ptr %i.gr, align 4
  %indvars.iv.next165.6 = add nuw nsw i64 %indvars.iv164.6, 1 ; 2 uses
  %exitcond168.6.not = icmp eq i64 %indvars.iv.next165.6, %wide.trip.count167.6
  br i1 %exitcond168.6.not, label %..loopexit_crit_edge.us.6, label %bb.t, !llvm.loop !31

..loopexit_crit_edge.us.6:                        ; preds = %bb.t, %..loopexit_crit_edge.us.5
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ae, i64 1120 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8
  %.not90.us.7 = icmp eq ptr %i.gt, null
  br i1 %.not90.us.7, label %.split123.us, label %.preheader.us.7

.preheader.us.7:                                  ; preds = %..loopexit_crit_edge.us.6
  %wide.trip.count167.7 = zext i32 %.fr133 to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.us.7
  %indvars.iv164.7 = phi i64 [ 0, %.preheader.us.7 ], [ %indvars.iv.next165.7, %bb.u ] ; 3 uses
  %i.gu = load ptr, ptr %i.gs, align 8            ; 2 uses
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %indvars.iv164.7 ; 2 uses
  %i.gw = trunc nuw i64 %indvars.iv164.7 to i32
  %i.gx = xor i32 %i.gw, -1
  %i.gy = add i32 %.fr133, %i.gx
  %i.gz = zext i32 %i.gy to i64
end_hunk_1
