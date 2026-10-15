Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ScenePreprocessor?download=true
inline.NumInlined: 96
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6Assimp17ScenePreprocessor11ProcessMeshEP6aiMesh:bb.a
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
  %.idx = mul nuw nsw i64 %i.r, 12
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
  br i1 %.not7385, label %.loopexit78, label %.lr.ph87

.preheader77:                                     ; preds = %.thread, %bb.e
  %i.t = phi ptr [ %i.p, %.thread ], [ %i.s, %bb.e ]
  %i.u = phi i32 [ %i.n, %.thread ], [ %i.q, %bb.e ]
  %i.v = phi ptr [ %.pre, %.thread ], [ %i.k, %bb.e ]
  %.not7488 = icmp eq i32 %i.u, 0
  br i1 %.not7488, label %.loopexit78, label %.lr.ph90

.lr.ph90:                                         ; preds = %.preheader77, %.lr.ph90
  %.06289 = phi ptr [ %i.x, %.lr.ph90 ], [ %i.v, %.preheader77 ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.06289, i64 8
  store float 0.000000e+00, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.06289, i64 12 ; 2 uses
  %.not74 = icmp eq ptr %i.x, %i.t
  br i1 %.not74, label %.loopexit78, label %.lr.ph90, !llvm.loop !7

.lr.ph87:                                         ; preds = %.preheader79, %.lr.ph87
  %.186 = phi ptr [ %i.z, %.lr.ph87 ], [ %i.k, %.preheader79 ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.186, i64 4
  store <2 x float> zeroinitializer, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.186, i64 12 ; 2 uses
  %.not73 = icmp eq ptr %i.z, %i.s
  br i1 %.not73, label %.loopexit78, label %.lr.ph87, !llvm.loop !8

bb.f:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.284, i64 12 ; 2 uses
  %.not72 = icmp eq ptr %i.aa, %i.s
  br i1 %.not72, label %._crit_edge, label %.lr.ph, !llvm.loop !9

.lr.ph:                                           ; preds = %.preheader81, %bb.f
  %.284 = phi ptr [ %i.aa, %bb.f ], [ %i.k, %.preheader81 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.284, i64 8
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = fcmp une float %i.ac, 0.000000e+00
  br i1 %i.ad, label %.loopexit78, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %.preheader81
  %i.ae = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ae, ptr noundef nonnull @.str.4)
  br label %.loopexit78.sink.split

.loopexit78.sink.split:                           ; preds = %bb.c, %._crit_edge
  %.sink = phi i32 [ 2, %._crit_edge ], [ 0, %bb.c ]
  store i32 %.sink, ptr %i.l, align 4
  br label %.loopexit78

.loopexit78:                                      ; preds = %.lr.ph, %.lr.ph87, %.lr.ph90, %.loopexit78.sink.split, %.preheader79, %.preheader77, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !10

bb.g:                                             ; preds = %bb.i, %.lr.ph93.new
  %i.af = phi i32 [ 0, %.lr.ph93.new ], [ %i.aq, %bb.i ]
  %indvars.iv102 = phi i64 [ 0, %.lr.ph93.new ], [ %indvars.iv.next103.1, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph93.new ], [ %niter.next.1, %bb.i ]
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv102
  %i.ah = load i32, ptr %i.ag, align 8
  %switch.tableidx = add i32 %i.ah, -1            ; 2 uses
  %i.ai = icmp ult i32 %switch.tableidx, 3
  br i1 %i.ai, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %bb.g
  %i.aj = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp17ScenePreprocessor11ProcessMeshEP6aiMesh, i64 %i.aj
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %switch.lookup
  %.sink116 = phi i32 [ %switch.ext, %switch.lookup ], [ 8, %bb.g ]
  %i.ak = or i32 %i.af, %.sink116                 ; 2 uses
  store i32 %i.ak, ptr %1, align 8
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv102
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 8
  %switch.tableidx.1 = add i32 %i.an, -1          ; 2 uses
  %i.ao = icmp ult i32 %switch.tableidx.1, 3
  br i1 %i.ao, label %switch.lookup.1, label %bb.i

switch.lookup.1:                                  ; preds = %bb.h
  %i.ap = zext nneg i32 %switch.tableidx.1 to i64
  %switch.gep.1 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp17ScenePreprocessor11ProcessMeshEP6aiMesh, i64 %i.ap
  %switch.load.1 = load i8, ptr %switch.gep.1, align 1
  %switch.ext.1 = zext i8 %switch.load.1 to i32
  br label %bb.i

bb.i:                                             ; preds = %switch.lookup.1, %bb.h
  %.sink116.1 = phi i32 [ %switch.ext.1, %switch.lookup.1 ], [ 8, %bb.h ]
  %i.aq = or i32 %i.ak, %.sink116.1               ; 3 uses
  store i32 %i.aq, ptr %1, align 8
  %indvars.iv.next103.1 = add nuw nsw i64 %indvars.iv102, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit76.loopexit.unr-lcssa, label %bb.g, !llvm.loop !11

.loopexit76.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit76, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit76.loopexit.unr-lcssa, %.lr.ph93
  %.epil.init = phi i32 [ 0, %.lr.ph93 ], [ %i.aq, %.loopexit76.loopexit.unr-lcssa ]
  %indvars.iv102.epil.init = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next103.1, %.loopexit76.loopexit.unr-lcssa ]
  %lcmp.mod121 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod121)
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv102.epil.init
  %i.as = load i32, ptr %i.ar, align 8
  %switch.tableidx.epil = add i32 %i.as, -1       ; 2 uses
  %i.at = icmp ult i32 %switch.tableidx.epil, 3
  br i1 %i.at, label %switch.lookup.epil, label %.loopexit76.loopexit.epilog-lcssa

switch.lookup.epil:                               ; preds = %.epil.preheader
  %i.au = zext nneg i32 %switch.tableidx.epil to i64
  %switch.gep.epil = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp17ScenePreprocessor11ProcessMeshEP6aiMesh, i64 %i.au
  %switch.load.epil = load i8, ptr %switch.gep.epil, align 1
  %switch.ext.epil = zext i8 %switch.load.epil to i32
  br label %.loopexit76.loopexit.epilog-lcssa

.loopexit76.loopexit.epilog-lcssa:                ; preds = %switch.lookup.epil, %.epil.preheader
  %.sink116.epil = phi i32 [ %switch.ext.epil, %switch.lookup.epil ], [ 8, %.epil.preheader ]
  %i.av = or i32 %.epil.init, %.sink116.epil
  store i32 %i.av, ptr %1, align 8
  br label %.loopexit76

.loopexit76:                                      ; preds = %.loopexit76.loopexit.epilog-lcssa, %.loopexit76.loopexit.unr-lcssa, %.preheader, %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %.not67 = icmp eq ptr %i.ax, null
  br i1 %.not67, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.loopexit76
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %.not68 = icmp eq ptr %i.az, null
  br i1 %.not68, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %.not69 = icmp eq ptr %i.bb, null
  br i1 %.not69, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.bc = load i32, ptr %i.c, align 4             ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = mul nuw nsw i64 %i.bd, 12               ; 2 uses
  %i.bf = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #11 ; 2 uses
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %.loopexit75, label %.loopexit75.loopexit

.loopexit75.loopexit:                             ; preds = %bb.l
  %i.bh = add nsw i64 %i.be, -12                  ; 2 uses
  %i.bi = urem i64 %i.bh, 12
  %i.bj = sub nuw nsw i64 %i.bh, %i.bi
  %i.bk = add nsw i64 %i.bj, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bf, i8 0, i64 %i.bk, i1 false)
  br label %.loopexit75

.loopexit75:                                      ; preds = %.loopexit75.loopexit, %bb.l
  store ptr %i.bf, ptr %i.ba, align 8
  %i.bl = load i32, ptr %i.c, align 4
  %.not98 = icmp eq i32 %i.bl, 0
  br i1 %.not98, label %.loopexit, label %.lr.ph96

.lr.ph96:                                         ; preds = %.loopexit75, %.lr.ph96
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %.lr.ph96 ], [ 0, %.loopexit75 ] ; 4 uses
  %i.bm = load ptr, ptr %i.ay, align 8
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %indvars.iv106 ; 2 uses
  %i.bo = load ptr, ptr %i.aw, align 8
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %i.bo, i64 %indvars.iv106 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bs = load float, ptr %i.bp, align 4          ; 2 uses
  %i.bt = load float, ptr %i.bn, align 4          ; 2 uses
  %i.bu = load <2 x float>, ptr %i.bq, align 4    ; 3 uses
  %2 = load <2 x float>, ptr %i.br, align 4       ; 3 uses
  %3 = fneg <2 x float> %2
  %4 = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %5 = insertelement <2 x float> %4, float %i.bt, i64 1
  %6 = fmul <2 x float> %5, %3
  %7 = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bv = insertelement <2 x float> %7, float %i.bs, i64 1
  %8 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bv, <2 x float> %6)
  %9 = fneg float %i.bs
  %10 = extractelement <2 x float> %i.bu, i64 0
  %11 = fmul float %10, %9
  %12 = extractelement <2 x float> %2, i64 0
  %13 = tail call float @llvm.fmuladd.f32(float %i.bt, float %12, float %11)
  %i.bw = load ptr, ptr %i.ba, align 8
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %indvars.iv106 ; 2 uses
  store <2 x float> %8, ptr %i.bx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store float %13, ptr %.sroa.4.0..sroa_idx, align 4
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.by = load i32, ptr %i.c, align 4
  %i.bz = zext i32 %i.by to i64
  %i.ca = icmp samesign ult i64 %indvars.iv.next107, %i.bz
  br i1 %i.ca, label %.lr.ph96, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %.lr.ph96, %.loopexit75, %bb.k, %bb.j, %.loopexit76
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
  br i1 %niter.ncmp.1, label %.preheader115.loopexit.unr-lcssa, label %bb.c, !llvm.loop !13

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.d
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.preheader, label %.epil.preheader179

.epil.preheader179:                               ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph124
  %indvars.iv144.epil.init = phi i64 [ 0, %.lr.ph124 ], [ %indvars.iv.next145.1, %.preheader.loopexit.unr-lcssa ]
  %.2122.epil.init = phi double [ %.1.lcssa, %.lr.ph124 ], [ %.sroa.speculated104.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %.2112121.epil.init = phi double [ %.1111.lcssa, %.lr.ph124 ], [ %.sroa.speculated91.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod184 = trunc i32 %i.y to i1
  call void @llvm.assume(i1 %lcmp.mod184)
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv144.epil.init
  %i.am = load double, ptr %i.al, align 8         ; 4 uses
  %i.an = fcmp olt double %i.am, %.2122.epil.init
  %.sroa.speculated104.epil = select i1 %i.an, double %i.am, double %.2122.epil.init
  %i.ao = fcmp olt double %.2112121.epil.init, %i.am
  %.sroa.speculated91.epil = select i1 %i.ao, double %i.am, double %.2112121.epil.init
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader179, %.preheader.loopexit.unr-lcssa, %.preheader115
  %.2112.lcssa = phi double [ %.1111.lcssa, %.preheader115 ], [ %.sroa.speculated91.1, %.preheader.loopexit.unr-lcssa ], [ %.sroa.speculated91.epil, %.epil.preheader179 ] ; 3 uses
  %.2.lcssa = phi double [ %.1.lcssa, %.preheader115 ], [ %.sroa.speculated104.1, %.preheader.loopexit.unr-lcssa ], [ %.sroa.speculated104.epil, %.epil.preheader179 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 1040
  %i.aq = load i32, ptr %i.ap, align 8            ; 4 uses
  %.not142 = icmp eq i32 %i.aq, 0
  br i1 %.not142, label %.loopexit.thread, label %.lr.ph130

.loopexit.thread:                                 ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 1040
  br label %bb.h

.lr.ph130:                                        ; preds = %.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 1048
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %wide.trip.count152 = zext i32 %i.aq to i64     ; 2 uses
  %xtraiter188 = and i64 %wide.trip.count152, 1
  %i.au = icmp eq i32 %i.aq, 1
  br i1 %i.au, label %.epil.preheader187, label %.lr.ph130.new

.lr.ph130.new:                                    ; preds = %.lr.ph130
  %unroll_iter193 = and i64 %wide.trip.count152, 4294967294
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph124.new
  %indvars.iv144 = phi i64 [ 0, %.lr.ph124.new ], [ %indvars.iv.next145.1, %bb.d ] ; 3 uses
  %.2122 = phi double [ %.1.lcssa, %.lr.ph124.new ], [ %.sroa.speculated104.1, %bb.d ] ; 2 uses
  %.2112121 = phi double [ %.1111.lcssa, %.lr.ph124.new ], [ %.sroa.speculated91.1, %bb.d ] ; 2 uses
  %niter186 = phi i64 [ 0, %.lr.ph124.new ], [ %niter186.next.1, %bb.d ]
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv144
  %i.aw = load double, ptr %i.av, align 8         ; 4 uses
  %i.ax = fcmp olt double %i.aw, %.2122
  %.sroa.speculated104 = select i1 %i.ax, double %i.aw, double %.2122 ; 2 uses
  %i.ay = fcmp olt double %.2112121, %i.aw
  %.sroa.speculated91 = select i1 %i.ay, double %i.aw, double %.2112121 ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %indvars.iv144
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load double, ptr %i.ba, align 8         ; 4 uses
  %i.bc = fcmp olt double %i.bb, %.sroa.speculated104
  %.sroa.speculated104.1 = select i1 %i.bc, double %i.bb, double %.sroa.speculated104 ; 3 uses
  %i.bd = fcmp olt double %.sroa.speculated91, %i.bb
  %.sroa.speculated91.1 = select i1 %i.bd, double %i.bb, double %.sroa.speculated91 ; 3 uses
  %indvars.iv.next145.1 = add nuw nsw i64 %indvars.iv144, 2 ; 2 uses
  %niter186.next.1 = add i64 %niter186, 2         ; 2 uses
  %niter186.ncmp.1 = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %niter186.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.d, !llvm.loop !14

bb.e:                                             ; preds = %bb.e, %.lr.ph130.new
  %indvars.iv149 = phi i64 [ 0, %.lr.ph130.new ], [ %indvars.iv.next150.1, %bb.e ] ; 3 uses
  %.3128 = phi double [ %.2.lcssa, %.lr.ph130.new ], [ %.sroa.speculated101.1, %bb.e ] ; 2 uses
  %.3113127 = phi double [ %.2112.lcssa, %.lr.ph130.new ], [ %.sroa.speculated88.1, %bb.e ] ; 2 uses
  %niter194 = phi i64 [ 0, %.lr.ph130.new ], [ %niter194.next.1, %bb.e ]
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %indvars.iv149
end_hunk_0
