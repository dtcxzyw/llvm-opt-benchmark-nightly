inline.NumInlined: 96
inline.NumDeleted: 52
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.aiString = type { i32, [1024 x i8] }
%struct.aiColor3D = type { float, float, float }
%class.aiVector3t = type { float, float, float }
%class.aiQuaterniont = type { float, float, float, float }

$_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_ = comdat any

@.str = private unnamed_addr constant [13 x i8] c"$clr.diffuse\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"DefaultMaterial\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"?mat.name\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"ScenePreprocessor: Adding default material 'DefaultMaterial'\00", align 1
@.str.4 = private unnamed_addr constant [89 x i8] c"ScenePreprocessor: UVs are declared to be 3D but they're obviously not. Reverting to 2D.\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"ScenePreprocessor: Dummy rotation track has been generated\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"ScenePreprocessor: Dummy scaling track has been generated\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"ScenePreprocessor: Dummy position track has been generated\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"ScenePreprocessor: Setting animation duration\00", align 1
@switch.table._ZN6Assimp17ScenePreprocessor11ProcessMeshEP6aiMesh = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 4], align 4

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp17ScenePreprocessor12ProcessSceneEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.aiString, align 4           ; 8 uses
  %2 = alloca %struct.aiColor3D, align 8          ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8
  %.not33 = icmp eq i32 %i.c, 0
  br i1 %.not33, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.c, %bb.a
  %i.d = phi ptr [ %i.a, %bb.a ], [ %i.m, %bb.c ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load i32, ptr %i.e, align 8
  %.not34 = icmp eq i32 %i.f, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph28

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.g = phi ptr [ %i.m, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN6Assimp17ScenePreprocessor11ProcessMeshEP6aiMesh(ptr nonnull align 8 poison, ptr noundef nonnull %i.k)
  %.pre = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.m = phi ptr [ %i.g, %.lr.ph ], [ %.pre, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8
  %i.p = zext i32 %i.o to i64
  %i.q = icmp samesign ult i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %.lr.ph, label %.preheader, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.lcssa25 = phi ptr [ %i.d, %.preheader ], [ %i.z, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.lcssa25, i64 32
  %i.s = load i32, ptr %i.r, align 8
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.f, label %bb.k

.lr.ph28:                                         ; preds = %.preheader, %bb.e
  %i.t = phi ptr [ %i.z, %bb.e ], [ %i.d, %.preheader ] ; 2 uses
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv39
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph28
  tail call void @_ZN6Assimp17ScenePreprocessor16ProcessAnimationEP11aiAnimation(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.x)
  %.pre45 = load ptr, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph28, %bb.d
  %i.z = phi ptr [ %i.t, %.lr.ph28 ], [ %.pre45, %bb.d ] ; 3 uses
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = zext i32 %i.ab to i64
  %i.ad = icmp samesign ult i64 %indvars.iv.next40, %i.ac
  br i1 %i.ad, label %.lr.ph28, label %._crit_edge, !llvm.loop !5

bb.f:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %.lcssa25, i64 16
  %i.af = load i32, ptr %i.ae, align 8
  %.not23 = icmp eq i32 %i.af, 0
  br i1 %.not23, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #11
  %i.ah = getelementptr inbounds nuw i8, ptr %.lcssa25, i64 40
  store ptr %i.ag, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1008) %i.ai, i8 0, i64 1008, i1 false)
  %i.aj = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #11 ; 5 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  %i.ak = load ptr, ptr %0, align 8               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ap
  store ptr %i.aj, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store <2 x float> splat (float 6.000000e-01), ptr %2, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float 6.000000e-01, ptr %i.ar, align 8
  %i.as = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull %2, i32 noundef 12, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  store i32 15, ptr %1, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.at, ptr noundef nonnull align 1 dereferenceable(15) @.str.1, i64 15, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 0, ptr %i.au, align 1
  %i.av = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull %1, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.aw = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aw, ptr noundef nonnull @.str.3)
  %i.ax = load ptr, ptr %0, align 8               ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i32, ptr %i.ay, align 8
  %.not35 = icmp eq i32 %i.az, 0
  br i1 %.not35, label %._crit_edge31, label %.lr.ph30

._crit_edge31:                                    ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.lcssa = phi ptr [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bn, %bb.j ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  resume { ptr, i32 } %i.bd

.lr.ph30:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j
  %i.be = phi ptr [ %i.bn, %bb.j ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %bb.j ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv42
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph30
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 232
  store i32 %i.bl, ptr %i.bm, align 8
  %.pre46 = load ptr, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph30, %bb.i
  %i.bn = phi ptr [ %i.be, %.lr.ph30 ], [ %.pre46, %bb.i ] ; 3 uses
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = zext i32 %i.bp to i64
  %i.br = icmp samesign ult i64 %indvars.iv.next43, %i.bq
  br i1 %i.br, label %.lr.ph30, label %._crit_edge31, !llvm.loop !6

bb.k:                                             ; preds = %._crit_edge31, %bb.f, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp17ScenePreprocessor11ProcessMeshEP6aiMesh(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %.loopexit78
  %i.d = load i32, ptr %1, align 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %.loopexit76

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 4 uses
  %.not97 = icmp eq i32 %i.f, 0
  br i1 %.not97, label %.loopexit76, label %.lr.ph93

.lr.ph93:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %wide.trip.count = zext i32 %i.f to i64         ; 2 uses
  %xtraiter121 = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.f, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph93.new

.lr.ph93.new:                                     ; preds = %.lr.ph93
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.g

bb.c:                                             ; preds = %bb.a, %.loopexit78
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit78 ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 6 uses
  %.not70 = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 3 uses
  br i1 %.not70, label %.loopexit78.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %.not71 = icmp eq i32 %i.m, 0
  br i1 %.not71, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  store i32 2, ptr %i.l, align 4
  %.pre = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.n = load i32, ptr %i.c, align 4              ; 2 uses
  %i.o = zext i32 %i.n to i64
  %.idx112 = mul nuw nsw i64 %i.o, 12
  %i.p = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx112
  br label %.preheader77

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.c, align 4              ; 4 uses
  %i.r = zext i32 %i.q to i64
  %.idx = mul nuw nsw i64 %i.r, 12                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 3 uses
  switch i32 %i.m, label %.loopexit78 [
    i32 2, label %.preheader77
    i32 1, label %.preheader79
    i32 3, label %.preheader81
  ]

.preheader81:                                     ; preds = %bb.e
  %.not7283 = icmp eq i32 %i.q, 0
  br i1 %.not7283, label %._crit_edge, label %.lr.ph

.preheader79:                                     ; preds = %bb.e
  %.not7385 = icmp eq i32 %i.q, 0
  br i1 %.not7385, label %.loopexit78, label %.lr.ph87.preheader

.lr.ph87.preheader:                               ; preds = %.preheader79
  %i.t = add nsw i64 %.idx, -12                   ; 2 uses
  %i.u = udiv i64 %i.t, 12
  %i.v = add nuw nsw i64 %i.u, 1
  %xtraiter = and i64 %i.v, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol

.lr.ph87.prol:                                    ; preds = %.lr.ph87.preheader, %.lr.ph87.prol
  %.186.prol = phi ptr [ %i.x, %.lr.ph87.prol ], [ %i.k, %.lr.ph87.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph87.prol ], [ 0, %.lr.ph87.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %.186.prol, i64 4
  store <2 x float> zeroinitializer, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.186.prol, i64 12 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph87.prol.loopexit, label %.lr.ph87.prol, !llvm.loop !7

.lr.ph87.prol.loopexit:                           ; preds = %.lr.ph87.prol, %.lr.ph87.preheader
  %.186.unr = phi ptr [ %i.k, %.lr.ph87.preheader ], [ %i.x, %.lr.ph87.prol ]
  %i.y = icmp ult i64 %i.t, 84
  br i1 %i.y, label %.loopexit78, label %.lr.ph87

.preheader77:                                     ; preds = %.thread, %bb.e
  %i.z = phi ptr [ %i.p, %.thread ], [ %i.s, %bb.e ]
  %i.aa = phi i32 [ %i.n, %.thread ], [ %i.q, %bb.e ]
  %i.ab = phi ptr [ %.pre, %.thread ], [ %i.k, %bb.e ]
  %.not7488 = icmp eq i32 %i.aa, 0
  br i1 %.not7488, label %.loopexit78, label %.lr.ph90

.lr.ph90:                                         ; preds = %.preheader77, %.lr.ph90
  %.06289 = phi ptr [ %i.ad, %.lr.ph90 ], [ %i.ab, %.preheader77 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.06289, i64 8
  store float 0.000000e+00, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.06289, i64 12 ; 2 uses
  %.not74 = icmp eq ptr %i.ad, %i.z
  br i1 %.not74, label %.loopexit78, label %.lr.ph90, !llvm.loop !9

.lr.ph87:                                         ; preds = %.lr.ph87.prol.loopexit, %.lr.ph87
  %.186 = phi ptr [ %i.am, %.lr.ph87 ], [ %.186.unr, %.lr.ph87.prol.loopexit ] ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.186, i64 4
  store <2 x float> zeroinitializer, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.186, i64 16
  store <2 x float> zeroinitializer, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.186, i64 28
  store <2 x float> zeroinitializer, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.186, i64 40
  store <2 x float> zeroinitializer, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.186, i64 52
  store <2 x float> zeroinitializer, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.186, i64 64
  store <2 x float> zeroinitializer, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.186, i64 76
  store <2 x float> zeroinitializer, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.186, i64 88
  store <2 x float> zeroinitializer, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.186, i64 96 ; 2 uses
  %.not73.7 = icmp eq ptr %i.am, %i.s
  br i1 %.not73.7, label %.loopexit78, label %.lr.ph87, !llvm.loop !10

bb.f:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.284, i64 12 ; 2 uses
  %.not72 = icmp eq ptr %i.an, %i.s
  br i1 %.not72, label %._crit_edge, label %.lr.ph, !llvm.loop !11

.lr.ph:                                           ; preds = %.preheader81, %bb.f
  %.284 = phi ptr [ %i.an, %bb.f ], [ %i.k, %.preheader81 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.284, i64 8
  %i.ap = load float, ptr %i.ao, align 4
  %i.aq = fcmp une float %i.ap, 0.000000e+00
  br i1 %i.aq, label %.loopexit78, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %.preheader81
  %i.ar = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ar, ptr noundef nonnull @.str.4)
  br label %.loopexit78.sink.split

.loopexit78.sink.split:                           ; preds = %bb.c, %._crit_edge
  %.sink = phi i32 [ 2, %._crit_edge ], [ 0, %bb.c ]
  store i32 %.sink, ptr %i.l, align 4
  br label %.loopexit78

.loopexit78:                                      ; preds = %.lr.ph, %.lr.ph87.prol.loopexit, %.lr.ph87, %.lr.ph90, %.loopexit78.sink.split, %.preheader79, %.preheader77, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !12

bb.g:                                             ; preds = %bb.i, %.lr.ph93.new
  %i.as = phi i32 [ 0, %.lr.ph93.new ], [ %i.bd, %bb.i ]
  %indvars.iv102 = phi i64 [ 0, %.lr.ph93.new ], [ %indvars.iv.next103.1, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph93.new ], [ %niter.next.1, %bb.i ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv102
  %i.au = load i32, ptr %i.at, align 8
  %switch.tableidx = add i32 %i.au, -1            ; 2 uses
  %i.av = icmp ult i32 %switch.tableidx, 3
  br i1 %i.av, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %bb.g
  %i.aw = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp17ScenePreprocessor11ProcessMeshEP6aiMesh, i64 %i.aw
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %switch.lookup
  %.sink116 = phi i32 [ %switch.load, %switch.lookup ], [ 8, %bb.g ]
  %i.ax = or i32 %i.as, %.sink116                 ; 2 uses
  store i32 %i.ax, ptr %1, align 8
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv102
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i32, ptr %i.az, align 8
  %switch.tableidx.1 = add i32 %i.ba, -1          ; 2 uses
  %i.bb = icmp ult i32 %switch.tableidx.1, 3
  br i1 %i.bb, label %switch.lookup.1, label %bb.i

switch.lookup.1:                                  ; preds = %bb.h
  %i.bc = zext nneg i32 %switch.tableidx.1 to i64
  %switch.gep.1 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp17ScenePreprocessor11ProcessMeshEP6aiMesh, i64 %i.bc
  %switch.load.1 = load i32, ptr %switch.gep.1, align 4
  br label %bb.i

bb.i:                                             ; preds = %switch.lookup.1, %bb.h
  %.sink116.1 = phi i32 [ %switch.load.1, %switch.lookup.1 ], [ 8, %bb.h ]
  %i.bd = or i32 %i.ax, %.sink116.1               ; 3 uses
  store i32 %i.bd, ptr %1, align 8
  %indvars.iv.next103.1 = add nuw nsw i64 %indvars.iv102, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit76.loopexit.unr-lcssa, label %bb.g, !llvm.loop !13

.loopexit76.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %.loopexit76, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit76.loopexit.unr-lcssa, %.lr.ph93
  %.epil.init = phi i32 [ 0, %.lr.ph93 ], [ %i.bd, %.loopexit76.loopexit.unr-lcssa ]
  %indvars.iv102.epil.init = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next103.1, %.loopexit76.loopexit.unr-lcssa ]
  %lcmp.mod123 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod123)
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv102.epil.init
  %i.bf = load i32, ptr %i.be, align 8
  %switch.tableidx.epil = add i32 %i.bf, -1       ; 2 uses
  %i.bg = icmp ult i32 %switch.tableidx.epil, 3
  br i1 %i.bg, label %switch.lookup.epil, label %.loopexit76.loopexit.epilog-lcssa

switch.lookup.epil:                               ; preds = %.epil.preheader
  %i.bh = zext nneg i32 %switch.tableidx.epil to i64
  %switch.gep.epil = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp17ScenePreprocessor11ProcessMeshEP6aiMesh, i64 %i.bh
  %switch.load.epil = load i32, ptr %switch.gep.epil, align 4
  br label %.loopexit76.loopexit.epilog-lcssa

.loopexit76.loopexit.epilog-lcssa:                ; preds = %switch.lookup.epil, %.epil.preheader
  %.sink116.epil = phi i32 [ %switch.load.epil, %switch.lookup.epil ], [ 8, %.epil.preheader ]
  %i.bi = or i32 %.epil.init, %.sink116.epil
  store i32 %i.bi, ptr %1, align 8
  br label %.loopexit76

.loopexit76:                                      ; preds = %.loopexit76.loopexit.epilog-lcssa, %.loopexit76.loopexit.unr-lcssa, %.preheader, %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %.not67 = icmp eq ptr %i.bk, null
  br i1 %.not67, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.loopexit76
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  %.not68 = icmp eq ptr %i.bm, null
  br i1 %.not68, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %.not69 = icmp eq ptr %i.bo, null
  br i1 %.not69, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.bp = load i32, ptr %i.c, align 4             ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = mul nuw nsw i64 %i.bq, 12               ; 2 uses
  %i.bs = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.br) #11 ; 3 uses
  %i.bt = icmp eq i32 %i.bp, 0
  br i1 %i.bt, label %.loopexit75.thread, label %.lr.ph96.preheader

.loopexit75.thread:                               ; preds = %bb.l
  store ptr %i.bs, ptr %i.bn, align 8
  br label %.loopexit

.lr.ph96.preheader:                               ; preds = %bb.l
  %i.bu = add nsw i64 %i.br, -12                  ; 2 uses
  %i.bv = urem i64 %i.bu, 12
  %i.bw = sub nuw nsw i64 %i.bu, %i.bv
  %i.bx = add nsw i64 %i.bw, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bs, i8 0, i64 %i.bx, i1 false)
  store ptr %i.bs, ptr %i.bn, align 8
  br label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %.lr.ph96
  %indvars.iv106 = phi i64 [ 0, %.lr.ph96.preheader ], [ %indvars.iv.next107, %.lr.ph96 ] ; 4 uses
  %i.by = load ptr, ptr %i.bl, align 8
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %i.by, i64 %indvars.iv106 ; 2 uses
  %i.ca = load ptr, ptr %i.bj, align 8
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %indvars.iv106 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ce = load float, ptr %i.cb, align 4          ; 2 uses
  %i.cf = load float, ptr %i.bz, align 4          ; 2 uses
  %i.cg = load <2 x float>, ptr %i.cc, align 4    ; 3 uses
  %i.ch = load <2 x float>, ptr %i.cd, align 4    ; 3 uses
  %i.ci = fneg <2 x float> %i.ch
  %i.cj = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ck = insertelement <2 x float> %i.cj, float %i.cf, i64 1
  %i.cl = fmul <2 x float> %i.ck, %i.ci
  %i.cm = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cn = insertelement <2 x float> %i.cm, float %i.ce, i64 1
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.cn, <2 x float> %i.cl)
  %i.cp = fneg float %i.ce
  %i.cq = extractelement <2 x float> %i.cg, i64 0
  %i.cr = fmul float %i.cq, %i.cp
  %i.cs = extractelement <2 x float> %i.ch, i64 0
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cs, float %i.cr)
  %i.cu = load ptr, ptr %i.bn, align 8
  %i.cv = getelementptr inbounds nuw [12 x i8], ptr %i.cu, i64 %indvars.iv106 ; 2 uses
  store <2 x float> %i.co, ptr %i.cv, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store float %i.ct, ptr %.sroa.4.0..sroa_idx, align 4
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.cw = load i32, ptr %i.c, align 4
  %i.cx = zext i32 %i.cw to i64
  %i.cy = icmp samesign ult i64 %indvars.iv.next107, %i.cx
  br i1 %i.cy, label %.lr.ph96, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %.lr.ph96, %.loopexit75.thread, %bb.k, %bb.j, %.loopexit76
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp17ScenePreprocessor16ProcessAnimationEP11aiAnimation(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.aiVector3t, align 8          ; 6 uses
  %3 = alloca %class.aiVector3t, align 8          ; 6 uses
  %4 = alloca %class.aiQuaterniont, align 16      ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1048 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not139 = icmp eq i32 %i.b, 0
  br i1 %.not139, label %._crit_edge, label %.lr.ph136

.lr.ph136:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1056
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.v, %bb.a
  %.0110.lcssa = phi double [ -1.000000e+11, %bb.a ], [ %.4114166, %bb.v ]
  %.0109.lcssa = phi double [ 1.000000e+11, %bb.a ], [ %.4168, %bb.v ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1032 ; 2 uses
  %i.h = load double, ptr %i.g, align 8
  %i.i = fcmp oeq double %i.h, -1.000000e+00
  br i1 %i.i, label %bb.w, label %bb.x

bb.b:                                             ; preds = %.lr.ph136, %bb.v
  %indvars.iv154 = phi i64 [ 0, %.lr.ph136 ], [ %indvars.iv.next155, %bb.v ] ; 2 uses
  %.0109134 = phi double [ 1.000000e+11, %.lr.ph136 ], [ %.4168, %bb.v ] ; 5 uses
  %.0110133 = phi double [ -1.000000e+11, %.lr.ph136 ], [ %.4114166, %bb.v ] ; 5 uses
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv154
  %i.l = load ptr, ptr %i.k, align 8              ; 18 uses
  %i.m = load double, ptr %i.d, align 8
  %i.n = fcmp oeq double %i.m, -1.000000e+00
  br i1 %i.n, label %.preheader116, label %.loopexit

.preheader116:                                    ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1028
  %i.p = load i32, ptr %i.o, align 4              ; 4 uses
  %.not140 = icmp eq i32 %i.p, 0
  br i1 %.not140, label %.preheader115, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader116
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 1032
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %wide.trip.count = zext i32 %i.p to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.s = icmp eq i32 %i.p, 1
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.c

.preheader115.loopexit.unr-lcssa:                 ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader115, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader115.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader115.loopexit.unr-lcssa ]
  %.1118.epil.init = phi double [ %.0109134, %.lr.ph ], [ %.sroa.speculated107.1, %.preheader115.loopexit.unr-lcssa ] ; 2 uses
  %.1111117.epil.init = phi double [ %.0110133, %.lr.ph ], [ %.sroa.speculated94.1, %.preheader115.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod178 = trunc i32 %i.p to i1
  call void @llvm.assume(i1 %lcmp.mod178)
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  %i.u = load double, ptr %i.t, align 8           ; 4 uses
  %i.v = fcmp olt double %i.u, %.1118.epil.init
  %.sroa.speculated107.epil = select i1 %i.v, double %i.u, double %.1118.epil.init
  %i.w = fcmp olt double %.1111117.epil.init, %i.u
  %.sroa.speculated94.epil = select i1 %i.w, double %i.u, double %.1111117.epil.init
  br label %.preheader115

.preheader115:                                    ; preds = %.epil.preheader, %.preheader115.loopexit.unr-lcssa, %.preheader116
  %.1111.lcssa = phi double [ %.0110133, %.preheader116 ], [ %.sroa.speculated94.1, %.preheader115.loopexit.unr-lcssa ], [ %.sroa.speculated94.epil, %.epil.preheader ] ; 3 uses
  %.1.lcssa = phi double [ %.0109134, %.preheader116 ], [ %.sroa.speculated107.1, %.preheader115.loopexit.unr-lcssa ], [ %.sroa.speculated107.epil, %.epil.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 1056
  %i.y = load i32, ptr %i.x, align 8              ; 4 uses
  %.not141 = icmp eq i32 %i.y, 0
  br i1 %.not141, label %.preheader, label %.lr.ph124

.lr.ph124:                                        ; preds = %.preheader115
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 1064
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %wide.trip.count147 = zext i32 %i.y to i64      ; 2 uses
  %xtraiter180 = and i64 %wide.trip.count147, 1
  %i.ab = icmp eq i32 %i.y, 1
  br i1 %i.ab, label %.epil.preheader179, label %.lr.ph124.new

.lr.ph124.new:                                    ; preds = %.lr.ph124
  %unroll_iter185 = and i64 %wide.trip.count147, 4294967294
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.1118 = phi double [ %.0109134, %.lr.ph.new ], [ %.sroa.speculated107.1, %bb.c ] ; 2 uses
  %.1111117 = phi double [ %.0110133, %.lr.ph.new ], [ %.sroa.speculated94.1, %bb.c ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv
  %i.ad = load double, ptr %i.ac, align 8         ; 4 uses
  %i.ae = fcmp olt double %i.ad, %.1118
  %.sroa.speculated107 = select i1 %i.ae, double %i.ad, double %.1118 ; 2 uses
  %i.af = fcmp olt double %.1111117, %i.ad
  %.sroa.speculated94 = select i1 %i.af, double %i.ad, double %.1111117 ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load double, ptr %i.ah, align 8         ; 4 uses
  %i.aj = fcmp olt double %i.ai, %.sroa.speculated107
  %.sroa.speculated107.1 = select i1 %i.aj, double %i.ai, double %.sroa.speculated107 ; 3 uses
  %i.ak = fcmp olt double %.sroa.speculated94, %i.ai
  %.sroa.speculated94.1 = select i1 %i.ak, double %i.ai, double %.sroa.speculated94 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader115.loopexit.unr-lcssa, label %bb.c, !llvm.loop !15
end_hunk_0
