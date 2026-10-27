Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Tool_OffMeshConnection?download=true
inline.NumInlined: 48
inline.NumDeleted: 42
begin_hunk_0
$_ZN21OffMeshConnectionTool4typeEv = comdat any

$_ZN21OffMeshConnectionTool10singleStepEv = comdat any

$_ZN21OffMeshConnectionTool6updateEf = comdat any

$_ZN21OffMeshConnectionTool8onToggleEv = comdat any

@.str = private unnamed_addr constant [14 x i8] c"Bidirectional\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"LMB: Set connection end point and finish.\00", align 1
@.str.3 = private unnamed_addr constant [98 x i8] c"LMB: Create new connection. SHIFT+LMB: Delete existing connection, click near start or end point.\00", align 1
@_ZTV21OffMeshConnectionTool = dso_local unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr null, ptr @_ZN21OffMeshConnectionToolD2Ev, ptr @_ZN21OffMeshConnectionToolD0Ev, ptr @_ZN21OffMeshConnectionTool4typeEv, ptr @_ZN21OffMeshConnectionTool4initEP6Sample, ptr @_ZN21OffMeshConnectionTool5resetEv, ptr @_ZN21OffMeshConnectionTool10singleStepEv, ptr @_ZN21OffMeshConnectionTool6updateEf, ptr @_ZN21OffMeshConnectionTool6renderEv, ptr @_ZN21OffMeshConnectionTool10drawMenuUIEv, ptr @_ZN21OffMeshConnectionTool13drawOverlayUIEv, ptr @_ZN21OffMeshConnectionTool7onClickEPKfS1_b, ptr @_ZN21OffMeshConnectionTool8onToggleEv] }, align 8
@app = external global %struct.AppState, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN21OffMeshConnectionTool4initEP6Sample(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(31) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !30    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.e, ptr %i.f, align 2, !tbaa !31
  %i.g = and i8 %i.e, -2
  store i8 %i.g, ptr %i.d, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN21OffMeshConnectionTool5resetEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(31) initializes((28, 29)) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.a, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN21OffMeshConnectionTool10drawMenuUIEv(ptr noundef nonnull align 8 dereferenceable(31) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str, ptr noundef nonnull %i.a) #11 ; 0 uses
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN21OffMeshConnectionTool7onClickEPKfS1_b(ptr noundef nonnull align 8 dereferenceable(31) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 9 uses
  %.not25 = icmp eq ptr %i.d, null
  br i1 %.not25, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41   ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !42   ; 4 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.k, 9223372036854775804
  br i1 %i.l, label %bb.f, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.i, !prof !43

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #12
  unreachable

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.i:      ; preds = %bb.e
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #13 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k ; 2 uses
  %i.o = icmp samesign ugt i64 %i.k, 4
  br i1 %i.o, label %bb.g, label %bb.h, !prof !44

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.i
  %i.p = icmp eq i64 %i.k, 4
  br i1 %i.p, label %bb.i, label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.q = load float, ptr %i.h, align 4, !tbaa !34
  store float %i.q, ptr %i.m, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

_ZNSt6vectorIfSaIfEEC2ERKS1_.exit:                ; preds = %bb.g, %bb.h, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %sh.diff = lshr i64 %i.x, 1                     ; 2 uses
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.y = icmp sgt i32 %tr.sh.diff, 1
  br i1 %i.y, label %.lr.ph, label %.thread40

_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.thread:         ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr null, i64 %i.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !48
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %sh.diff42 = lshr i64 %i.ag, 1                  ; 2 uses
  %tr.sh.diff43 = trunc i64 %sh.diff42 to i32
  %i.ah = icmp sgt i32 %tr.sh.diff43, 1
  br i1 %i.ah, label %.lr.ph, label %_ZNSt6vectorIfSaIfEED2Ev.exit

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.thread, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %tr.sh.diff44 = phi i64 [ %sh.diff42, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.thread ], [ %sh.diff, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit ]
  %i.ai = phi ptr [ null, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.thread ], [ %i.m, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit ] ; 4 uses
  %i.aj = phi ptr [ %i.z, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.thread ], [ %i.n, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit ] ; 3 uses
  %wide.trip.count = and i64 %tr.sh.diff44, 2147483646
  %i.ak = load float, ptr %2, align 4, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.am = load float, ptr %i.al, align 4, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !34
  br label %bb.j

._crit_edge:                                      ; preds = %bb.j
  %.not26 = icmp eq i32 %.1, -1
  br i1 %.not26, label %.thread40, label %bb.k

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %.01929 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.j ]
  %.02028 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.121, %bb.j ] ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx ; 3 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !34
  %i.ar = fsub float %i.aq, %i.ak                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !34
  %i.au = fsub float %i.at, %i.am                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.aw = load float, ptr %i.av, align 4, !tbaa !34
  %i.ax = fsub float %i.aw, %i.ao                 ; 2 uses
  %i.ay = fmul float %i.au, %i.au
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.ay)
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %i.az) ; 2 uses
  %i.bb = fcmp olt float %i.ba, %.02028           ; 2 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32
  %i.bd = lshr i32 %i.bc, 1
  %.121 = select i1 %i.bb, float %i.ba, float %.02028 ; 2 uses
  %.1 = select i1 %i.bb, i32 %i.bd, i32 %.01929   ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !38

bb.k:                                             ; preds = %._crit_edge
  %i.be = tail call float @sqrtf(float noundef %.121) #11
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !35
  %i.bh = fcmp olt float %i.be, %i.bg
  br i1 %i.bh, label %bb.l, label %.thread40

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN9InputGeom23deleteOffMeshConnectionEi(ptr noundef nonnull align 8 dereferenceable(448) %i.d, i32 noundef %.1) #11
  br label %.thread40

.thread40:                                        ; preds = %._crit_edge, %bb.k, %bb.l, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %i.bi = phi ptr [ %i.m, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit ], [ %i.ai, %bb.l ], [ %i.ai, %bb.k ], [ %i.ai, %._crit_edge ] ; 2 uses
  %i.bj = phi ptr [ %i.n, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit ], [ %i.aj, %bb.l ], [ %i.aj, %bb.k ], [ %i.aj, %._crit_edge ]
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #14
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.m:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !32, !range !36, !noundef !37
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.bp, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = load float, ptr %2, align 4, !tbaa !34
  store float %i.br, ptr %i.bq, align 8, !tbaa !34
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !34
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.bt, ptr %i.bu, align 4, !tbaa !34
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.bw, ptr %i.bx, align 8, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.sink.split

bb.o:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bz = load float, ptr %i.by, align 8, !tbaa !35
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !50, !range !36, !noundef !37
  tail call void @_ZN9InputGeom20addOffMeshConnectionEPKfS1_fhht(ptr noundef nonnull align 8 dereferenceable(448) %i.d, ptr noundef nonnull %i.bq, ptr noundef %2, float noundef %i.bz, i8 noundef zeroext %i.cb, i8 noundef zeroext 5, i16 noundef zeroext 8) #11
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.sink.split

_ZNSt6vectorIfSaIfEED2Ev.exit.sink.split:         ; preds = %bb.n, %bb.o
  %.sink = phi i8 [ 0, %bb.o ], [ 1, %bb.n ]
  store i8 %.sink, ptr %i.bn, align 4, !tbaa !32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.sink.split, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit.thread, %.thread40, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

declare void @_ZN9InputGeom23deleteOffMeshConnectionEi(ptr noundef nonnull align 8 dereferenceable(448), i32 noundef) local_unnamed_addr #3

declare void @_ZN9InputGeom20addOffMeshConnectionEPKfS1_fhht(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef, ptr noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN21OffMeshConnectionTool6renderEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(31) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i8, ptr %i.d, align 4, !tbaa !32, !range !36, !noundef !37
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load float, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load float, ptr %i.i, align 4, !tbaa !34
  %i.k = fadd float %i.j, 1.000000e-01
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load float, ptr %i.l, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.o = load float, ptr %i.n, align 8, !tbaa !35
  tail call void @_Z16duDebugDrawCrossP11duDebugDrawffffjf(ptr noundef nonnull %i.c, float noundef %i.h, float noundef %i.k, float noundef %i.m, float noundef %i.o, i32 noundef -2147483648, float noundef 2.000000e+00) #11
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9InputGeom22drawOffMeshConnectionsEP11duDebugDrawb(ptr noundef nonnull align 8 dereferenceable(448) %i.r, ptr noundef nonnull %i.c, i1 noundef zeroext true) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @_Z16duDebugDrawCrossP11duDebugDrawffffjf(ptr noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare void @_ZN9InputGeom22drawOffMeshConnectionsEP11duDebugDrawb(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN21OffMeshConnectionTool13drawOverlayUIEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(31) %0) unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %2 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !32, !range !36, !noundef !37
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load float, ptr %i.f, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load float, ptr %i.h, align 4, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load float, ptr %i.j, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @_ZNK8AppState13worldToScreenEfffPfS0_(ptr noundef nonnull align 8 dereferenceable(936) @app, float noundef %i.g, float noundef %i.i, float noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  %i.l = load float, ptr %i.b, align 4, !tbaa !34
  %i.m = fadd float %i.l, 2.500000e+01
  store float %i.m, ptr %i.b, align 4, !tbaa !34
  %i.n = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull @.str.1, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #11
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.n, i64 0
  %i.o = load float, ptr %i.a, align 4, !tbaa !34
  %i.p = fneg float %.sroa.0.0.vec.extract.i
  %i.q = call float @llvm.fmuladd.f32(float %i.p, float 5.000000e-01, float %i.o)
  store float %i.q, ptr %i.a, align 4, !tbaa !34
  %i.r = call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.s = load float, ptr %i.a, align 4, !tbaa !34
  %i.t = load float, ptr %i.b, align 4, !tbaa !34
  store float %i.s, ptr %2, align 4, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.t, ptr %i.u, align 4, !tbaa !53
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.r, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef -603979776, ptr noundef nonnull @.str.1, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.pre = load i8, ptr %i.c, align 4, !tbaa !32, !range !36
  %i.v = trunc nuw i8 %.pre to i1
  %i.w = select i1 %i.v, ptr @.str.2, ptr @.str.3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = phi ptr [ %i.w, %bb.b ], [ @.str.3, %bb.a ]
  %i.y = call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store <2 x float> <float 2.800000e+02, float 4.000000e+01>, ptr %1, align 8, !tbaa !34
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.y, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef -1056964609, ptr noundef nonnull %i.x, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21OffMeshConnectionToolD2Ev(ptr noundef nonnull align 8 dead_on_return(31) dereferenceable(31) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.d = load i8, ptr %i.c, align 2, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 %i.d, ptr %i.e, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21OffMeshConnectionToolD0Ev(ptr noundef nonnull align 8 dereferenceable(31) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN21OffMeshConnectionToolD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.d = load i8, ptr %i.c, align 2, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 %i.d, ptr %i.e, align 8, !tbaa !30
  br label %_ZN21OffMeshConnectionToolD2Ev.exit

_ZN21OffMeshConnectionToolD2Ev.exit:              ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZN21OffMeshConnectionTool4typeEv(ptr noundef nonnull align 8 dereferenceable(31) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i8 6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21OffMeshConnectionTool10singleStepEv(ptr noundef nonnull align 8 dereferenceable(31) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21OffMeshConnectionTool6updateEf(ptr noundef nonnull align 8 dereferenceable(31) %0, float noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21OffMeshConnectionTool8onToggleEv(ptr noundef nonnull align 8 dereferenceable(31) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @_ZNK8AppState13worldToScreenEfffPfS0_(ptr noundef nonnull align 8 dereferenceable(936), float noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef, ptr noundef, i1 noundef zeroext, float noundef) local_unnamed_addr #3

declare noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() local_unnamed_addr #3
end_hunk_0
