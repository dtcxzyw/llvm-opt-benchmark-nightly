Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/stress?download=true
inline.NumInlined: 37
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 33
begin_hunk_0_@stress_majorization_kD_mkernel:bb.a
.lr.ph532.epil:                                   ; preds = %.lr.ph532.epil, %.lr.ph532.epil.preheader
  %indvars.iv663.epil = phi i64 [ %indvars.iv663.epil.init, %.lr.ph532.epil.preheader ], [ %indvars.iv.next664.epil, %.lr.ph532.epil ] ; 3 uses
  %epil.iter1058 = phi i64 [ 0, %.lr.ph532.epil.preheader ], [ %epil.iter1058.next, %.lr.ph532.epil ]
  %i.agr = mul nsw i64 %indvars.iv663.epil, %i.ada
  %i.ags = getelementptr inbounds [4 x i8], ptr %i.aga, i64 %i.agr
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.afz, i64 %indvars.iv663.epil
  store ptr %i.ags, ptr %i.agt, align 8, !tbaa !56
  %indvars.iv.next664.epil = add nuw nsw i64 %indvars.iv663.epil, 1
  %epil.iter1058.next = add i64 %epil.iter1058, 1 ; 2 uses
  %epil.iter1058.cmp.not = icmp eq i64 %epil.iter1058.next, %xtraiter1057
  br i1 %epil.iter1058.cmp.not, label %._crit_edge533, label %.lr.ph532.epil, !llvm.loop !121

._crit_edge533:                                   ; preds = %._crit_edge533.loopexit.unr-lcssa, %.lr.ph532.epil, %gv_calloc.exit457
  br i1 %.not.i443, label %bb.dt, label %.thread.i466

bb.dt:                                            ; preds = %._crit_edge533
  %mul.ov.i460 = icmp slt i32 %1, 0
  br i1 %mul.ov.i460, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.agu = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.agv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agu, ptr noundef nonnull @.str.14, i64 noundef %i.ada, i64 noundef 4) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.dv:                                            ; preds = %bb.dt
  %i.agw = call noalias ptr @calloc(i64 noundef %i.ada, i64 noundef 4) #16 ; 2 uses
  %i.agx = icmp eq ptr %i.agw, null
  br i1 %i.agx, label %bb.dw, label %gv_calloc.exit462

bb.dw:                                            ; preds = %bb.dv
  %i.agy = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.agz = shl nuw nsw i64 %i.ada, 2
  %i.aha = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agy, ptr noundef nonnull @.str.15, i64 noundef %i.agz) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

.thread.i466:                                     ; preds = %._crit_edge533
  %i.ahb = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  %i.ahc = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit467

gv_calloc.exit462:                                ; preds = %bb.dv
  %i.ahd = call noalias ptr @calloc(i64 noundef %i.ada, i64 noundef 4) #16 ; 2 uses
  %i.ahe = icmp eq ptr %i.ahd, null
  br i1 %i.ahe, label %bb.dx, label %gv_calloc.exit467

bb.dx:                                            ; preds = %gv_calloc.exit462
  %i.ahf = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ahg = shl nuw nsw i64 %i.ada, 2
  %i.ahh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahf, ptr noundef nonnull @.str.15, i64 noundef %i.ahg) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit467:                                ; preds = %.thread.i466, %gv_calloc.exit462
  %i.ahi = phi ptr [ %i.ahb, %.thread.i466 ], [ %i.agw, %gv_calloc.exit462 ] ; 11 uses
  %i.ahj = phi ptr [ %i.ahc, %.thread.i466 ], [ %i.ahd, %gv_calloc.exit462 ] ; 30 uses
  %i.ahk = sext i32 %i.acy to i64                 ; 3 uses
  %.off = add i32 %i.acx, 1
  %.not.i468 = icmp ult i32 %.off, 3
  br i1 %.not.i468, label %.thread.i471, label %bb.dy

.thread.i471:                                     ; preds = %gv_calloc.exit467
  %i.ahl = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit472

bb.dy:                                            ; preds = %gv_calloc.exit467
  %mul.ov.i470 = icmp slt i32 %i.acx, -1
  br i1 %mul.ov.i470, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.ahm = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ahn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahm, ptr noundef nonnull @.str.14, i64 noundef %i.ahk, i64 noundef 4) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ea:                                            ; preds = %bb.dy
  %i.aho = call noalias ptr @calloc(i64 noundef %i.ahk, i64 noundef 4) #16 ; 2 uses
  %i.ahp = icmp eq ptr %i.aho, null
  br i1 %i.ahp, label %bb.eb, label %gv_calloc.exit472

bb.eb:                                            ; preds = %bb.ea
  %i.ahq = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ahr = shl nuw nsw i64 %i.ahk, 2
  %i.ahs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahq, ptr noundef nonnull @.str.15, i64 noundef %i.ahr) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit472:                                ; preds = %.thread.i471, %bb.ea
  %i.aht = phi ptr [ %i.ahl, %.thread.i471 ], [ %i.aho, %bb.ea ] ; 13 uses
  %i.ahu = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not418 = icmp eq i8 %i.ahu, 0
  br i1 %.not418, label %.lr.ph585, label %bb.ec

bb.ec:                                            ; preds = %gv_calloc.exit472
  %i.ahv = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ahw = call double @elapsed_sec() #15
  %i.ahx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahv, ptr noundef nonnull @.str.6, double noundef %i.ahw) #17 ; 0 uses
  %i.ahy = load ptr, ptr @stderr, align 8, !tbaa !39
  %fwrite419 = call i64 @fwrite(ptr nonnull @.str.10, i64 15, i64 1, ptr %i.ahy) #19 ; 0 uses
  call void @start_timer() #15
  br label %.lr.ph585

.lr.ph585:                                        ; preds = %gv_calloc.exit472, %bb.ec
  %i.ahz = shl nuw nsw i64 %i.ada, 4
  %i.aia = fpext float %i.acv to double           ; 2 uses
  %i.aib = add nsw i32 %1, -2
  %wide.trip.count708 = zext i32 %i.acs to i64
  %wide.trip.count674 = zext nneg i32 %4 to i64
  %wide.trip.count717 = zext i32 %1 to i64        ; 5 uses
  %i.aic = fadd double %i.aia, 0.000000e+00
  %wide.trip.count722 = zext nneg i32 %4 to i64
  %wide.trip.count727 = zext nneg i32 %4 to i64
  %wide.trip.count732 = zext nneg i32 %4 to i64
  %wide.trip.count742 = zext nneg i32 %4 to i64
  %wide.trip.count747 = zext nneg i32 %4 to i64
  %i.aid = add nsw i64 %wide.trip.count717, -1    ; 2 uses
  %xtraiter1081 = and i64 %wide.trip.count717, 1
  %i.aie = icmp eq i64 %i.aid, 0
  %unroll_iter1085 = and i64 %wide.trip.count717, 4294967294
  %lcmp.mod1083.not = icmp eq i64 %xtraiter1081, 0
  %lcmp.mod1084 = trunc i32 %1 to i1
  %xtraiter1087 = and i64 %wide.trip.count717, 1
  %i.aif = icmp eq i64 %i.aid, 0
  %unroll_iter1091 = and i64 %wide.trip.count717, 4294967294
  %lcmp.mod1089.not = icmp eq i64 %xtraiter1087, 0
  %lcmp.mod1090 = trunc i32 %1 to i1
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph585, %bb.ep
  %.0341583 = phi i32 [ 0, %.lr.ph585 ], [ %i.asc, %bb.ep ] ; 3 uses
  %.0354582 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph585 ], [ %.1353.lcssa, %bb.ep ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 16 %i.afh, i8 0, i64 %i.ahz, i1 false)
  br i1 %i.acz, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  call void @sqrt_vecf(i32 noundef %i.acy, ptr noundef %.1364, ptr noundef %i.aht) #15
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  br i1 %i.bk, label %.lr.ph558, label %.preheader490

.preheader490:                                    ; preds = %.loopexit484, %bb.ef
  br i1 %.not.i443, label %.lr.ph562.preheader, label %.preheader489

.lr.ph562.preheader:                              ; preds = %.preheader490
  br i1 %i.aie, label %.lr.ph562.epil.preheader, label %.lr.ph562

.lr.ph558:                                        ; preds = %bb.ef, %.loopexit484
  %indvars.iv703 = phi i64 [ %indvars.iv.next704, %.loopexit484 ], [ 0, %bb.ef ] ; 10 uses
  %indvars.iv687 = phi i32 [ %indvars.iv.next688, %.loopexit484 ], [ %i.aib, %bb.ef ] ; 2 uses
  %indvars.iv668.in = phi i64 [ %indvars.iv668, %.loopexit484 ], [ %i.ada, %bb.ef ]
  %.3368556 = phi i32 [ %.6, %.loopexit484 ], [ 0, %bb.ef ] ; 3 uses
  %i.aig = trunc i64 %indvars.iv703 to i32
  %i.aih = sub i32 %i.acs, %i.aig                 ; 2 uses
  %i.aii = zext i32 %i.aih to i64                 ; 3 uses
  %i.aij = add nsw i64 %i.aii, -1                 ; 2 uses
  %i.aik = shl nuw nsw i64 %indvars.iv703, 2
  %i.ail = xor i64 %indvars.iv703, -1
  %i.aim = add nsw i64 %i.ail, %i.ada
  %umax936 = call i64 @llvm.umax.i64(i64 %i.aim, i64 1)
  %i.ain = shl i64 %umax936, 2                    ; 2 uses
  %scevgep937 = getelementptr i8, ptr %i.ahj, i64 %i.ain ; 2 uses
  %indvars.iv668 = add nsw i64 %indvars.iv668.in, -1 ; 10 uses
  %i.aio = trunc i64 %indvars.iv703 to i32
  %i.aip = sub i32 %i.acs, %i.aio
  %i.aiq = zext i32 %i.aip to i64
  %i.air = shl nuw nsw i64 %i.aiq, 2
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv668, i64 1) ; 3 uses
  %i.ais = trunc nuw nsw i64 %indvars.iv703 to i32
  %i.ait = xor i32 %i.ais, -1
  %i.aiu = add nsw i32 %1, %i.ait                 ; 5 uses
  call void @set_vector_valf(i32 noundef %i.aiu, float noundef 0.000000e+00, ptr noundef %i.ahj) #15
  br i1 %i.aby, label %.preheader481.lr.ph, label %._crit_edge538.split

.preheader481.lr.ph:                              ; preds = %.lr.ph558
  %.not593 = icmp eq i32 %i.aiu, 0
  br i1 %.not593, label %._crit_edge542.thread, label %.preheader481.preheader

.preheader481.preheader:                          ; preds = %.preheader481.lr.ph
  %min.iters.check939 = icmp ult i64 %indvars.iv668, 8
  %n.vec946 = and i64 %umax, -8                   ; 3 uses
  %cmp.n957 = icmp eq i64 %indvars.iv668, %n.vec946
  %xtraiter1063 = and i64 %umax, 1
  %lcmp.mod1064.not = icmp eq i64 %xtraiter1063, 0
  %invariant.op1106 = sub nuw i64 %umax, 1
  br label %.preheader481

.preheader481:                                    ; preds = %.preheader481.preheader, %._crit_edge536
  %indvars.iv671 = phi i64 [ %indvars.iv.next672, %._crit_edge536 ], [ 0, %.preheader481.preheader ] ; 2 uses
  %i.aiv = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %indvars.iv671
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !56 ; 2 uses
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %indvars.iv703 ; 6 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 4 ; 6 uses
  br i1 %min.iters.check939, label %scalar.ph938.preheader, label %vector.memcheck940

vector.memcheck940:                               ; preds = %.preheader481
  %i.aiz = getelementptr i8, ptr %i.aiw, i64 %i.aik
  %i.aja = getelementptr i8, ptr %i.aiz, i64 4
  %i.ajb = getelementptr i8, ptr %i.aja, i64 %i.ain
  %bound0 = icmp ult ptr %i.ahj, %i.ajb
  %bound1 = icmp ult ptr %i.aiy, %scevgep937
  %found.conflict = and i1 %bound0, %bound1
  %bound0941 = icmp ult ptr %i.ahj, %i.aiy
  %bound1942 = icmp ult ptr %i.aix, %scevgep937
  %found.conflict943 = and i1 %bound0941, %bound1942
  %conflict.rdx944 = or i1 %found.conflict, %found.conflict943
  br i1 %conflict.rdx944, label %scalar.ph938.preheader, label %vector.ph945

vector.ph945:                                     ; preds = %vector.memcheck940
  %i.ajc = load float, ptr %i.aix, align 4, !tbaa !48, !alias.scope !154
  %broadcast.splatinsert951 = insertelement <4 x float> poison, float %i.ajc, i64 0
  %broadcast.splat952 = shufflevector <4 x float> %broadcast.splatinsert951, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body947

vector.body947:                                   ; preds = %vector.body947, %vector.ph945
  %index948 = phi i64 [ 0, %vector.ph945 ], [ %index.next955, %vector.body947 ] ; 3 uses
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %index948 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 16
  %wide.load949 = load <4 x float>, ptr %i.ajd, align 4, !tbaa !48, !alias.scope !155
  %wide.load950 = load <4 x float>, ptr %i.aje, align 4, !tbaa !48, !alias.scope !155
  %i.ajf = fsub <4 x float> %broadcast.splat952, %wide.load949 ; 2 uses
  %i.ajg = fsub <4 x float> %broadcast.splat952, %wide.load950 ; 2 uses
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %index948 ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 16 ; 2 uses
  %wide.load953 = load <4 x float>, ptr %i.ajh, align 4, !tbaa !48, !alias.scope !156, !noalias !157
  %wide.load954 = load <4 x float>, ptr %i.aji, align 4, !tbaa !48, !alias.scope !156, !noalias !157
  %i.ajj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajf, <4 x float> %i.ajf, <4 x float> %wide.load953)
  %i.ajk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajg, <4 x float> %i.ajg, <4 x float> %wide.load954)
  store <4 x float> %i.ajj, ptr %i.ajh, align 4, !tbaa !48, !alias.scope !156, !noalias !157
  store <4 x float> %i.ajk, ptr %i.aji, align 4, !tbaa !48, !alias.scope !156, !noalias !157
  %index.next955 = add nuw i64 %index948, 8       ; 2 uses
  %i.ajl = icmp eq i64 %index.next955, %n.vec946
  br i1 %i.ajl, label %middle.block956, label %vector.body947, !llvm.loop !126

middle.block956:                                  ; preds = %vector.body947
  br i1 %cmp.n957, label %._crit_edge536, label %scalar.ph938.preheader

scalar.ph938.preheader:                           ; preds = %vector.memcheck940, %.preheader481, %middle.block956
  %.0342534.ph = phi i64 [ 0, %vector.memcheck940 ], [ 0, %.preheader481 ], [ %n.vec946, %middle.block956 ] ; 5 uses
  br i1 %lcmp.mod1064.not, label %scalar.ph938.prol.loopexit, label %scalar.ph938.prol

scalar.ph938.prol:                                ; preds = %scalar.ph938.preheader
  %i.ajm = load float, ptr %i.aix, align 4, !tbaa !48
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %.0342534.ph
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !48
  %i.ajp = fsub float %i.ajm, %i.ajo              ; 2 uses
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %.0342534.ph ; 2 uses
  %i.ajr = load float, ptr %i.ajq, align 4, !tbaa !48
  %i.ajs = call float @llvm.fmuladd.f32(float %i.ajp, float %i.ajp, float %i.ajr)
  store float %i.ajs, ptr %i.ajq, align 4, !tbaa !48
  %i.ajt = or disjoint i64 %.0342534.ph, 1
  br label %scalar.ph938.prol.loopexit

scalar.ph938.prol.loopexit:                       ; preds = %scalar.ph938.prol, %scalar.ph938.preheader
  %.0342534.unr = phi i64 [ %.0342534.ph, %scalar.ph938.preheader ], [ %i.ajt, %scalar.ph938.prol ]
  %i.aju = icmp eq i64 %.0342534.ph, %invariant.op1106
  br i1 %i.aju, label %._crit_edge536, label %scalar.ph938

scalar.ph938:                                     ; preds = %scalar.ph938.prol.loopexit, %scalar.ph938
  %.0342534 = phi i64 [ %i.akk, %scalar.ph938 ], [ %.0342534.unr, %scalar.ph938.prol.loopexit ] ; 4 uses
  %i.ajv = load float, ptr %i.aix, align 4, !tbaa !48
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %.0342534
  %i.ajx = load float, ptr %i.ajw, align 4, !tbaa !48
  %i.ajy = fsub float %i.ajv, %i.ajx              ; 2 uses
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %.0342534 ; 2 uses
  %i.aka = load float, ptr %i.ajz, align 4, !tbaa !48
  %i.akb = call float @llvm.fmuladd.f32(float %i.ajy, float %i.ajy, float %i.aka)
  store float %i.akb, ptr %i.ajz, align 4, !tbaa !48
  %i.akc = add nuw i64 %.0342534, 1               ; 2 uses
  %i.akd = load float, ptr %i.aix, align 4, !tbaa !48
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %i.akc
  %i.akf = load float, ptr %i.ake, align 4, !tbaa !48
  %i.akg = fsub float %i.akd, %i.akf              ; 2 uses
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %i.akc ; 2 uses
  %i.aki = load float, ptr %i.akh, align 4, !tbaa !48
  %i.akj = call float @llvm.fmuladd.f32(float %i.akg, float %i.akg, float %i.aki)
  store float %i.akj, ptr %i.akh, align 4, !tbaa !48
  %i.akk = add nuw i64 %.0342534, 2               ; 2 uses
  %exitcond670.not.1 = icmp eq i64 %indvars.iv668, %i.akk
  br i1 %exitcond670.not.1, label %._crit_edge536, label %scalar.ph938, !llvm.loop !127

._crit_edge536:                                   ; preds = %scalar.ph938.prol.loopexit, %scalar.ph938, %middle.block956
  %indvars.iv.next672 = add nuw nsw i64 %indvars.iv671, 1 ; 2 uses
  %exitcond675.not = icmp eq i64 %indvars.iv.next672, %wide.trip.count674
  br i1 %exitcond675.not, label %._crit_edge538.split, label %.preheader481, !llvm.loop !128

._crit_edge538.split:                             ; preds = %._crit_edge536, %.lr.ph558
  call void @invert_sqrt_vec(i32 noundef %i.aiu, ptr noundef %i.ahj) #15
  %i.akl = icmp sgt i32 %i.aiu, 0                 ; 3 uses
  br i1 %i.akl, label %.lr.ph541.preheader, label %._crit_edge542

.lr.ph541.preheader:                              ; preds = %._crit_edge538.split
  %wide.trip.count681 = and i64 %indvars.iv668, 4294967295 ; 3 uses
  %min.iters.check903 = icmp samesign ult i64 %wide.trip.count681, 8
  br i1 %min.iters.check903, label %.lr.ph541.preheader971, label %vector.ph904

vector.ph904:                                     ; preds = %.lr.ph541.preheader
  %n.vec905 = and i64 %indvars.iv668, 4294967288  ; 3 uses
  br label %vector.body906

vector.body906:                                   ; preds = %pred.store.continue923, %vector.ph904
  %index907 = phi i64 [ 0, %vector.ph904 ], [ %index.next924, %pred.store.continue923 ] ; 9 uses
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %index907 ; 3 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 16
  %wide.load908 = load <4 x float>, ptr %i.akm, align 4, !tbaa !48 ; 2 uses
  %wide.load909 = load <4 x float>, ptr %i.akn, align 4, !tbaa !48 ; 2 uses
  %i.ako = fcmp oge <4 x float> %wide.load908, splat (float f0x7F7FFFFF)
  %i.akp = fcmp oge <4 x float> %wide.load909, splat (float f0x7F7FFFFF)
  %i.akq = fcmp olt <4 x float> %wide.load908, zeroinitializer
  %i.akr = fcmp olt <4 x float> %wide.load909, zeroinitializer
  %i.aks = or <4 x i1> %i.ako, %i.akq             ; 4 uses
  %i.akt = or <4 x i1> %i.akp, %i.akr             ; 4 uses
  %i.aku = extractelement <4 x i1> %i.aks, i64 0
  br i1 %i.aku, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body906
  store float 0.000000e+00, ptr %i.akm, align 4, !tbaa !48
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body906
  %i.akv = extractelement <4 x i1> %i.aks, i64 1
  br i1 %i.akv, label %pred.store.if910, label %pred.store.continue911

pred.store.if910:                                 ; preds = %pred.store.continue
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %index907
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 4
  store float 0.000000e+00, ptr %i.akx, align 4, !tbaa !48
  br label %pred.store.continue911

pred.store.continue911:                           ; preds = %pred.store.if910, %pred.store.continue
  %i.aky = extractelement <4 x i1> %i.aks, i64 2
  br i1 %i.aky, label %pred.store.if912, label %pred.store.continue913

pred.store.if912:                                 ; preds = %pred.store.continue911
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %index907
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 8
  store float 0.000000e+00, ptr %i.ala, align 4, !tbaa !48
  br label %pred.store.continue913

pred.store.continue913:                           ; preds = %pred.store.if912, %pred.store.continue911
  %i.alb = extractelement <4 x i1> %i.aks, i64 3
  br i1 %i.alb, label %pred.store.if914, label %pred.store.continue915

pred.store.if914:                                 ; preds = %pred.store.continue913
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %index907
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 12
  store float 0.000000e+00, ptr %i.ald, align 4, !tbaa !48
  br label %pred.store.continue915

pred.store.continue915:                           ; preds = %pred.store.if914, %pred.store.continue913
  %i.ale = extractelement <4 x i1> %i.akt, i64 0
  br i1 %i.ale, label %pred.store.if916, label %pred.store.continue917

pred.store.if916:                                 ; preds = %pred.store.continue915
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %index907
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 16
  store float 0.000000e+00, ptr %i.alg, align 4, !tbaa !48
  br label %pred.store.continue917

pred.store.continue917:                           ; preds = %pred.store.if916, %pred.store.continue915
  %i.alh = extractelement <4 x i1> %i.akt, i64 1
  br i1 %i.alh, label %pred.store.if918, label %pred.store.continue919

pred.store.if918:                                 ; preds = %pred.store.continue917
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %index907
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 20
  store float 0.000000e+00, ptr %i.alj, align 4, !tbaa !48
  br label %pred.store.continue919

pred.store.continue919:                           ; preds = %pred.store.if918, %pred.store.continue917
  %i.alk = extractelement <4 x i1> %i.akt, i64 2
  br i1 %i.alk, label %pred.store.if920, label %pred.store.continue921

pred.store.if920:                                 ; preds = %pred.store.continue919
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %index907
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 24
  store float 0.000000e+00, ptr %i.alm, align 4, !tbaa !48
  br label %pred.store.continue921

pred.store.continue921:                           ; preds = %pred.store.if920, %pred.store.continue919
  %i.aln = extractelement <4 x i1> %i.akt, i64 3
  br i1 %i.aln, label %pred.store.if922, label %pred.store.continue923

pred.store.if922:                                 ; preds = %pred.store.continue921
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.ahj, i64 %index907
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 28
  store float 0.000000e+00, ptr %i.alp, align 4, !tbaa !48
  br label %pred.store.continue923

pred.store.continue923:                           ; preds = %pred.store.if922, %pred.store.continue921
  %index.next924 = add nuw i64 %index907, 8       ; 2 uses
  %i.alq = icmp eq i64 %index.next924, %n.vec905
  br i1 %i.alq, label %middle.block925, label %vector.body906, !llvm.loop !129

middle.block925:                                  ; preds = %pred.store.continue923
  %cmp.n926 = icmp eq i64 %wide.trip.count681, %n.vec905
  br i1 %cmp.n926, label %._crit_edge542, label %.lr.ph541.preheader971

.lr.ph541.preheader971:                           ; preds = %.lr.ph541.preheader, %middle.block925
  %indvars.iv676.ph = phi i64 [ 0, %.lr.ph541.preheader ], [ %n.vec905, %middle.block925 ]
  br label %.lr.ph541

.lr.ph541:                                        ; preds = %.lr.ph541.preheader971, %bb.eh
  %indvars.iv676 = phi i64 [ %indvars.iv.next677, %bb.eh ], [ %indvars.iv676.ph, %.lr.ph541.preheader971 ] ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.memcpy.p0.p0.i64
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { cold nounwind }
attributes #18 = { noreturn }
attributes #19 = { cold }
attributes #20 = { cold noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !36}
!1 = distinct !{!1, !36}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 double", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 _ZTS8Agnode_s", !10, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"Agtag_s", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !15, i64 8}
!17 = !{!"p1 _ZTS7Agrec_s", !10, i64 0}
!18 = !{!"Agobj_s", !16, i64 0, !17, i64 16}
!19 = !{!18, !17, i64 16}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"Agrec_s", !20, i64 0, !17, i64 8}
!22 = !{!"p1 _ZTS10shape_desc", !10, i64 0}
!23 = !{!"double", !6, i64 0}
!24 = !{!"pointf_s", !23, i64 0, !23, i64 8}
!25 = !{!"", !24, i64 0, !24, i64 16}
!26 = !{!"p1 _ZTS11textlabel_t", !10, i64 0}
!27 = !{!"_Bool", !6, i64 0}
!28 = !{!"any p2 pointer", !10, i64 0}
!29 = !{!"p2 _ZTS8Agedge_s", !28, i64 0}
!30 = !{!"elist", !29, i64 0, !15, i64 8}
!31 = !{!"p1 _ZTS8Agraph_s", !10, i64 0}
!32 = !{!"p1 _ZTS8Agedge_s", !10, i64 0}
!33 = !{!"Agnodeinfo_t", !21, i64 0, !22, i64 16, !10, i64 24, !24, i64 32, !23, i64 48, !23, i64 56, !25, i64 64, !23, i64 96, !23, i64 104, !23, i64 112, !23, i64 120, !23, i64 128, !26, i64 136, !26, i64 144, !10, i64 152, !6, i64 160, !6, i64 161, !27, i64 162, !6, i64 163, !7, i64 164, !7, i64 168, !7, i64 172, !11, i64 176, !23, i64 184, !6, i64 192, !27, i64 193, !13, i64 200, !13, i64 208, !6, i64 216, !15, i64 224, !6, i64 232, !6, i64 233, !6, i64 234, !13, i64 240, !13, i64 248, !30, i64 256, !30, i64 272, !30, i64 288, !30, i64 304, !30, i64 320, !31, i64 336, !7, i64 344, !13, i64 352, !7, i64 360, !7, i64 364, !23, i64 368, !30, i64 376, !30, i64 392, !30, i64 408, !30, i64 424, !32, i64 440, !7, i64 448, !7, i64 452, !7, i64 456, !6, i64 464}
!34 = !{!33, !6, i64 163}
!35 = !{!23, !23, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"p1 int", !10, i64 0}
!41 = !{!"p1 float", !10, i64 0}
!42 = !{!"", !15, i64 0, !40, i64 8, !41, i64 16, !41, i64 24, !20, i64 32}
!43 = !{!42, !41, i64 16}
!44 = !{!42, !15, i64 0}
!45 = !{!42, !40, i64 8}
!46 = !{!7, !7, i64 0}
!47 = !{!"float", !6, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!6, !6, i64 0}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = !{!"", !15, i64 0, !40, i64 8, !40, i64 16, !27, i64 24}
!53 = !{!52, !40, i64 8}
!54 = !{!52, !40, i64 16}
!55 = !{!52, !15, i64 0}
!56 = !{!41, !41, i64 0}
!57 = distinct !{!57, !36}
!58 = distinct !{!58, !36}
!59 = distinct !{!59, !36}
!60 = distinct !{!60, !37}
!61 = distinct !{!61, !36}
!62 = !{!33, !11, i64 176}
!63 = distinct !{!63, !36}
!64 = distinct !{!64, !36}
!65 = distinct !{!65, !36}
!66 = distinct !{!66, !36}
!67 = distinct !{!67, !36}
!68 = distinct !{!68, !36}
!69 = distinct !{!69, !36}
!70 = distinct !{!70, !36, !50, !51}
!71 = distinct !{!71, !36, !51, !50}
!72 = distinct !{!72, !36}
!73 = distinct !{!73, !36}
!74 = distinct !{!74, !37}
!75 = distinct !{!75, !36}
!76 = distinct !{!76, !36}
!77 = distinct !{!77, !36}
!78 = distinct !{!78, !36}
!79 = distinct !{!79, !36}
!80 = distinct !{!80, !37}
!81 = distinct !{!81, !36}
!82 = distinct !{!82, !37}
!83 = distinct !{!83, !36}
!84 = distinct !{!84, !37}
!85 = distinct !{!85, !36}
!86 = distinct !{!86, !36}
!87 = distinct !{!87, !36, !50, !51}
!88 = distinct !{!88, !37}
!89 = distinct !{!89, !36, !50, !51}
!90 = distinct !{!90, !36, !50}
!91 = distinct !{!91, !36, !50}
!92 = distinct !{!92, !36}
!93 = distinct !{!93, !36}
!94 = distinct !{!94, !36}
!95 = distinct !{!95, !36}
!96 = distinct !{!96, !36}
!97 = distinct !{!97, !37}
!98 = distinct !{!98, !36}
!99 = distinct !{!99, !36}
!100 = distinct !{!100, !37}
!101 = distinct !{!101, !36}
!102 = distinct !{!102, !37}
!103 = distinct !{!103, !36}
!104 = distinct !{!104, !36}
!105 = distinct !{!105, !36}
!106 = distinct !{!106, !36}
!107 = distinct !{!107, !36}
!108 = distinct !{!108, !36}
!109 = distinct !{!109, !36, !50, !51}
!110 = distinct !{!110, !36}
!111 = distinct !{!111, !36, !51, !50}
!112 = distinct !{!112, !36}
!113 = distinct !{!113, !36}
!114 = distinct !{!114, !36, !50, !51}
!115 = distinct !{!115, !36, !51, !50}
!116 = distinct !{!116, !36}
!117 = distinct !{!117, !36}
!118 = distinct !{!118, !36}
!119 = distinct !{!119, !36}
!120 = distinct !{!120, !36}
!121 = distinct !{!121, !37}
!122 = distinct !{!122, i1 false, !"LVerDomain"}
!123 = distinct !{!123, !122}
!124 = distinct !{!124, !122}
!125 = distinct !{!125, !122}
!126 = distinct !{!126, !36, !50, !51}
!127 = distinct !{!127, !36, !50}
!128 = distinct !{!128, !36}
!129 = distinct !{!129, !36, !50, !51}
!130 = distinct !{!130, !36, !51, !50}
!131 = distinct !{!131, !36}
!132 = distinct !{!132, !36}
!133 = distinct !{!133, !36}
!134 = distinct !{!134, !36}
!135 = distinct !{!135, !36}
!136 = distinct !{!136, !36}
!137 = distinct !{!137, !36}
!138 = distinct !{!138, !36}
!139 = distinct !{!139, !36}
!140 = distinct !{!140, !36}
!141 = distinct !{!141, !36, !50, !51}
!142 = distinct !{!142, !36, !51, !50}
!143 = distinct !{!143, !36}
!144 = !{!"p2 int", !28, i64 0}
!145 = !{!144, !144, i64 0}
!146 = !{!40, !40, i64 0}
!147 = !{!52, !27, i64 24}
!148 = !{!"p2 float", !28, i64 0}
!149 = !{!148, !148, i64 0}
!150 = !{i8 0, i8 2}
!151 = !{}
!152 = !{!"long double", !6, i64 0}
!153 = !{!152, !152, i64 0}
!154 = !{!123}
!155 = !{!124}
!156 = !{!125}
!157 = !{!124, !123}
!158 = distinct !{!158, !36}
!159 = distinct !{!159, !36}
!160 = distinct !{!160, !36}
!161 = distinct !{!161, !36}
!162 = distinct !{!162, !36}
!163 = distinct !{!163, !36}
!164 = distinct !{!164, !36}
!165 = distinct !{!165, !36}
!166 = distinct !{!166, !36}
end_hunk_1
