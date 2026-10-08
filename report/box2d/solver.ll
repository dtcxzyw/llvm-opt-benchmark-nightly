Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/solver?download=true
inline.NumInlined: 126
inline.NumDeleted: 54
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@b2Solve:bb.a
  call void @b2DynamicTree_EnlargeProxy(ptr noundef nonnull %i.ahz, i32 noundef %i.ajb, <2 x float> %i.ajd, <2 x float> %i.ajf) #8
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph907, %bb.ce
  %.1651.in = getelementptr inbounds nuw i8, ptr %i.aiv, i64 12
  %.0650 = load i32, ptr %.1651.in, align 4, !tbaa !98 ; 2 uses
  %.not707 = icmp eq i32 %.0650, -1
  br i1 %.not707, label %.loopexit, label %.lr.ph907

.loopexit:                                        ; preds = %bb.cf, %bb.cd, %bb.cc
  %indvars.iv.next994 = add nuw nsw i64 %indvars.iv993, 1 ; 2 uses
  %exitcond997.not = icmp eq i64 %indvars.iv.next994, %wide.trip.count996
  br i1 %exitcond997.not, label %bb.cb, label %bb.cc, !llvm.loop !189

bb.cg:                                            ; preds = %bb.cb, %._crit_edge902
  %i.ajg = load ptr, ptr %i.u, align 8, !tbaa !91
  call void @b2StackFree(ptr noundef nonnull %0, ptr noundef %i.ajg) #8
  store ptr null, ptr %i.u, align 8, !tbaa !91
  store atomic i32 0, ptr %i.r seq_cst, align 8
  %i.ajh = call i64 @b2GetTicks() #8
  %i.aji = load i32, ptr %i.am, align 8, !tbaa !199 ; 2 uses
  %i.ajj = icmp sgt i32 %i.aji, 0
  br i1 %i.ajj, label %.lr.ph915, label %._crit_edge916

.lr.ph915:                                        ; preds = %bb.cg
  %i.ajk = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %wide.trip.count1006 = zext nneg i32 %i.aji to i64
  br label %bb.ch

._crit_edge916:                                   ; preds = %._crit_edge912, %bb.cg
  %i.ajl = call float @b2GetMilliseconds(i64 noundef %i.ajh) #8
  %i.ajm = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store float %i.ajl, ptr %i.ajm, align 8, !tbaa !278
  %i.ajn = getelementptr inbounds nuw i8, ptr %0, i64 2738
  %i.ajo = load i8, ptr %i.ajn, align 2, !tbaa !145, !range !122, !noundef !123
  %i.ajp = trunc nuw i8 %i.ajo to i1
  br i1 %i.ajp, label %bb.ck, label %bb.ct

bb.ch:                                            ; preds = %.lr.ph915, %._crit_edge912
  %indvars.iv1003 = phi i64 [ 0, %.lr.ph915 ], [ %indvars.iv.next1004, %._crit_edge912 ] ; 2 uses
  %i.ajq = load ptr, ptr %i.vy, align 8, !tbaa !111
  %i.ajr = getelementptr inbounds nuw [120 x i8], ptr %i.ajq, i64 %indvars.iv1003 ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 8
  %i.ajt = load i32, ptr %i.ajs, align 8, !tbaa !116 ; 2 uses
  %i.aju = load ptr, ptr %i.ajr, align 8, !tbaa !146
  %i.ajv = icmp sgt i32 %i.ajt, 0
  br i1 %i.ajv, label %.lr.ph911.preheader, label %._crit_edge912

.lr.ph911.preheader:                              ; preds = %bb.ch
  %wide.trip.count1001 = zext nneg i32 %i.ajt to i64
  br label %.lr.ph911

._crit_edge912:                                   ; preds = %bb.cj, %bb.ch
  %indvars.iv.next1004 = add nuw nsw i64 %indvars.iv1003, 1 ; 2 uses
  %exitcond1007.not = icmp eq i64 %indvars.iv.next1004, %wide.trip.count1006
  br i1 %exitcond1007.not, label %._crit_edge916, label %bb.ch, !llvm.loop !190

.lr.ph911:                                        ; preds = %.lr.ph911.preheader, %bb.cj
  %indvars.iv998 = phi i64 [ 0, %.lr.ph911.preheader ], [ %indvars.iv.next999, %bb.cj ] ; 2 uses
  %i.ajw = getelementptr inbounds nuw [8 x i8], ptr %i.aju, i64 %indvars.iv998 ; 2 uses
  %.sroa.043.0.copyload = load i32, ptr %i.ajw, align 4, !tbaa !98
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 4
  %.sroa.444.0.copyload = load i32, ptr %.sroa.444.0..sroa_idx, align 4, !tbaa !98 ; 2 uses
  %i.ajx = load ptr, ptr %i.aep, align 8, !tbaa !124 ; 2 uses
  %i.ajy = sext i32 %.sroa.043.0.copyload to i64
  %i.ajz = getelementptr inbounds [296 x i8], ptr %i.ajx, i64 %i.ajy
  %i.aka = sext i32 %.sroa.444.0.copyload to i64
  %i.akb = getelementptr inbounds [296 x i8], ptr %i.ajx, i64 %i.aka
  %i.akc = load ptr, ptr %i.ajk, align 8, !tbaa !279
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16
  %i.ake = load i32, ptr %i.akd, align 8, !tbaa !147
  %i.akf = sext i32 %i.ake to i64
  %i.akg = getelementptr inbounds [56 x i8], ptr %i.akc, i64 %i.akf ; 4 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akb, i64 288
  %i.aki = load i16, ptr %i.akh, align 8, !tbaa !137
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akg, i64 8 ; 4 uses
  %i.akk = load i32, ptr %i.akj, align 8, !tbaa !283 ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akg, i64 12 ; 2 uses
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !284 ; 4 uses
  %.not706 = icmp slt i32 %i.akk, %i.akm
  %.pre1024 = load ptr, ptr %i.akg, align 8, !tbaa !285 ; 2 uses
  br i1 %.not706, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph911
  %i.akn = shl nsw i32 %i.akm, 3
  %i.ako = icmp eq i32 %i.akm, 0
  %i.akp = shl nsw i32 %i.akm, 1
  %spec.select720 = select i1 %i.ako, i32 8, i32 %i.akp ; 2 uses
  %i.akq = shl nsw i32 %spec.select720, 3
  %i.akr = sext i32 %i.akn to i64
  %i.aks = sext i32 %i.akq to i64
  %i.akt = call ptr @b2GrowAlloc(ptr noundef %.pre1024, i64 noundef %i.akr, i64 noundef %i.aks) #8 ; 2 uses
  store ptr %i.akt, ptr %i.akg, align 8, !tbaa !285
  store i32 %spec.select720, ptr %i.akl, align 4, !tbaa !284
  %.pre1025 = load i32, ptr %i.akj, align 8, !tbaa !283
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.lr.ph911
  %i.aku = phi i32 [ %.pre1025, %bb.ci ], [ %i.akk, %.lr.ph911 ]
  %i.akv = phi ptr [ %i.akt, %bb.ci ], [ %.pre1024, %.lr.ph911 ]
  %i.akw = sext i32 %i.aku to i64
  %i.akx = getelementptr inbounds [8 x i8], ptr %i.akv, i64 %i.akw ; 3 uses
  store i32 %.sroa.444.0.copyload, ptr %i.akx, align 4, !tbaa !98
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akx, i64 4
  store i16 %i.aki, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !121
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akx, i64 6
  store i16 0, ptr %.sroa.5.0..sroa_idx, align 2
  %i.aky = load i32, ptr %i.akj, align 8, !tbaa !283
  %i.akz = add nsw i32 %i.aky, 1
  store i32 %i.akz, ptr %i.akj, align 8, !tbaa !283
  %indvars.iv.next999 = add nuw nsw i64 %indvars.iv998, 1 ; 2 uses
  %exitcond1002.not = icmp eq i64 %indvars.iv.next999, %wide.trip.count1001
  br i1 %exitcond1002.not, label %._crit_edge912, label %.lr.ph911, !llvm.loop !191

bb.ck:                                            ; preds = %._crit_edge916
  %i.ala = call i64 @b2GetTicks() #8
  %i.alb = load i32, ptr %i.am, align 8, !tbaa !199 ; 3 uses
  %i.alc = icmp sgt i32 %i.alb, 0
  %.pre1026 = load ptr, ptr %i.vy, align 8, !tbaa !111 ; 4 uses
  br i1 %i.alc, label %.lr.ph920, label %._crit_edge921.thread

._crit_edge921.thread:                            ; preds = %bb.ck
  %i.ald = getelementptr inbounds nuw i8, ptr %.pre1026, i64 88
  br label %._crit_edge925

.lr.ph920:                                        ; preds = %bb.ck
  %wide.trip.count1011 = zext nneg i32 %i.alb to i64
  br label %bb.cl

._crit_edge921:                                   ; preds = %bb.cq
  %i.ale = getelementptr inbounds nuw i8, ptr %.pre1026, i64 88 ; 3 uses
  %.not1083 = icmp eq i32 %i.alb, 1
  br i1 %.not1083, label %._crit_edge925, label %.lr.ph924

bb.cl:                                            ; preds = %.lr.ph920, %bb.cq
  %indvars.iv1008 = phi i64 [ 0, %.lr.ph920 ], [ %indvars.iv.next1009, %bb.cq ] ; 2 uses
  %.0647917 = phi float [ 0.000000e+00, %.lr.ph920 ], [ %.2, %bb.cq ] ; 5 uses
  %i.alf = getelementptr inbounds nuw [120 x i8], ptr %.pre1026, i64 %indvars.iv1008 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 108
  %i.alh = load i32, ptr %i.alg, align 4, !tbaa !117 ; 3 uses
  %.not705 = icmp eq i32 %i.alh, -1
  br i1 %.not705, label %bb.cq, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alf, i64 104
  %i.alj = load float, ptr %i.ali, align 8, !tbaa !118 ; 3 uses
  %i.alk = fcmp ult float %i.alj, %.0647917
  br i1 %i.alk, label %bb.cq, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.all = fcmp oeq float %i.alj, %.0647917
  br i1 %i.all, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.alm = load i32, ptr %i.eq, align 8, !tbaa !211
  %i.aln = icmp slt i32 %i.alh, %i.alm
  br i1 %i.aln, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  store i32 %i.alh, ptr %i.eq, align 8, !tbaa !211
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cl, %bb.cm, %bb.cp, %bb.co
  %.2 = phi float [ %.0647917, %bb.co ], [ %i.alj, %bb.cp ], [ %.0647917, %bb.cm ], [ %.0647917, %bb.cl ]
  %indvars.iv.next1009 = add nuw nsw i64 %indvars.iv1008, 1 ; 2 uses
  %exitcond1012.not = icmp eq i64 %indvars.iv.next1009, %wide.trip.count1011
  br i1 %exitcond1012.not, label %._crit_edge921, label %bb.cl, !llvm.loop !192

._crit_edge925:                                   ; preds = %.lr.ph924, %._crit_edge921.thread, %._crit_edge921
  %i.alo = phi ptr [ %i.ald, %._crit_edge921.thread ], [ %i.ale, %._crit_edge921 ], [ %i.ale, %.lr.ph924 ]
  %i.alp = load ptr, ptr %i.vp, align 8, !tbaa !286
  %i.alq = load i32, ptr %i.vq, align 8, !tbaa !239 ; 2 uses
  %i.alr = icmp sgt i32 %i.alq, 0
  br i1 %i.alr, label %.lr.ph929, label %._crit_edge930

.lr.ph929:                                        ; preds = %._crit_edge925
  %i.als = getelementptr inbounds nuw i8, ptr %.pre1026, i64 100
  %i.alt = zext nneg i32 %i.alq to i64
  br label %bb.cr

.lr.ph924:                                        ; preds = %._crit_edge921, %.lr.ph924
  %indvars.iv1013 = phi i64 [ %indvars.iv.next1014, %.lr.ph924 ], [ 1, %._crit_edge921 ] ; 2 uses
  %i.alu = load ptr, ptr %i.vy, align 8, !tbaa !111
  %i.alv = getelementptr inbounds nuw [120 x i8], ptr %i.alu, i64 %indvars.iv1013
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 88
  call void @b2InPlaceUnion(ptr noundef nonnull %i.ale, ptr noundef nonnull %i.alw) #8
  %indvars.iv.next1014 = add nuw nsw i64 %indvars.iv1013, 1 ; 2 uses
  %i.alx = load i32, ptr %i.am, align 8, !tbaa !199
  %i.aly = sext i32 %i.alx to i64
  %i.alz = icmp slt i64 %indvars.iv.next1014, %i.aly
  br i1 %i.alz, label %.lr.ph924, label %._crit_edge925, !llvm.loop !193

._crit_edge930:                                   ; preds = %bb.cs, %._crit_edge925
  call void @b2ValidateSolverSets(ptr noundef %0) #8
  %i.ama = call float @b2GetMilliseconds(i64 noundef %i.ala) #8
  %i.amb = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store float %i.ama, ptr %i.amb, align 4, !tbaa !287
  br label %bb.ct

bb.cr:                                            ; preds = %.lr.ph929, %bb.cs
  %indvars.iv1016 = phi i64 [ %i.alt, %.lr.ph929 ], [ %indvars.iv.next1017, %bb.cs ] ; 3 uses
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, -1 ; 3 uses
  %i.amc = trunc nuw nsw i64 %indvars.iv.next1017 to i32
  %i.amd = lshr i32 %i.amc, 6                     ; 2 uses
  %i.ame = load i32, ptr %i.als, align 4, !tbaa !241
  %.not.i811 = icmp ult i32 %i.amd, %i.ame
  br i1 %.not.i811, label %b2GetBit.exit, label %b2GetBit.exit.thread

b2GetBit.exit:                                    ; preds = %bb.cr
  %i.amf = load ptr, ptr %i.alo, align 8, !tbaa !119
  %i.amg = zext nneg i32 %i.amd to i64
  %i.amh = getelementptr inbounds nuw [8 x i8], ptr %i.amf, i64 %i.amg
  %i.ami = load i64, ptr %i.amh, align 8, !tbaa !79
  %i.amj = and i64 %indvars.iv.next1017, 63
  %i.amk = shl nuw i64 1, %i.amj
  %i.aml = and i64 %i.ami, %i.amk
  %.not816 = icmp eq i64 %i.aml, 0
  br i1 %.not816, label %b2GetBit.exit.thread, label %bb.cs

b2GetBit.exit.thread:                             ; preds = %bb.cr, %b2GetBit.exit
  %i.amm = getelementptr [4 x i8], ptr %i.alp, i64 %indvars.iv1016
  %8 = getelementptr i8, ptr %i.amm, i64 -4
  %i.amn = load i32, ptr %8, align 4, !tbaa !289
  call void @b2TrySleepIsland(ptr noundef %0, i32 noundef %i.amn) #8
  br label %bb.cs

bb.cs:                                            ; preds = %b2GetBit.exit, %b2GetBit.exit.thread
  %i.amo = icmp samesign ugt i64 %indvars.iv1016, 1
  br i1 %i.amo, label %bb.cr, label %._crit_edge930, !llvm.loop !194

bb.ct:                                            ; preds = %._crit_edge916, %._crit_edge930, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @b2GetTicks() local_unnamed_addr #2

declare ptr @b2StackAlloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @b2GrowAlloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @b2GetWideContactConstraintByteCount() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @b2SplitIslandTask(ptr noundef) #2

declare float @b2GetMillisecondsAndReset(ptr noundef) local_unnamed_addr #2

declare void @b2SetBitCountAndClear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @b2SolverTask(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !115  ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !110    ; 31 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 164
  %i.f = load i32, ptr %i.e, align 4, !tbaa !105
  %.fr237 = freeze i32 %i.f                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !107  ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !148  ; 7 uses
  %i.k = icmp eq i32 %i.c, 0
  br i1 %i.k, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 256 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  br label %b2ExecuteStage.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 324
  %i.o = cmpxchg ptr %i.n, i32 0, i32 1 seq_cst seq_cst, align 4
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %bb.c, label %b2ExecuteStage.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.q = tail call i64 @b2GetTicks() #8
  store i64 %i.q, ptr %i.a, align 8, !tbaa !79
  tail call fastcc void @b2ExecuteMainStage(ptr noundef %i.h, ptr noundef nonnull %i.d, i32 noundef 65536)
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  tail call fastcc void @b2ExecuteMainStage(ptr noundef nonnull %i.r, ptr noundef nonnull %i.d, i32 noundef 65537)
  tail call void @b2PrepareJoints_Overflow(ptr noundef nonnull %i.d) #8
  tail call void @b2PrepareContacts_Overflow(ptr noundef nonnull %i.d) #8
  %i.s = call float @b2GetMillisecondsAndReset(ptr noundef nonnull %i.a) #8
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2532 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !295
  %i.v = fadd float %i.s, %i.u
  store float %i.v, ptr %i.t, align 4, !tbaa !295
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !296  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph235, label %._crit_edge236

.lr.ph235:                                        ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 2536 ; 2 uses
  %i.ab = icmp sgt i32 %.fr237, 0                 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 256 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 2540 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 2544 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 2548 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 2552 ; 2 uses
  %i.ai = add i32 %.fr237, 3                      ; 2 uses
  %wide.trip.count = zext i32 %i.ai to i64
  br label %bb.d

._crit_edge236:                                   ; preds = %._crit_edge222.us, %bb.c
  %reass.add = shl i32 %.fr237, 1
  %i.aj = add i32 %.fr237, 4
  %i.ak = add i32 %i.aj, %reass.add               ; 2 uses
  call void @b2StoreImpulses_Overflow(ptr noundef %i.d) #8
  %i.al = or i32 %i.ak, 131072
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.am
  call fastcc void @b2ExecuteMainStage(ptr noundef %i.an, ptr noundef %i.d, i32 noundef %i.al)
  %i.ao = call float @b2GetMillisecondsAndReset(ptr noundef nonnull %i.a) #8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 2556 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !297
  %i.ar = fadd float %i.ao, %i.aq
  store float %i.ar, ptr %i.ap, align 4, !tbaa !297
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store atomic i32 -1, ptr %i.as seq_cst, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %b2ExecuteStage.exit.thread

bb.d:                                             ; preds = %.lr.ph235, %._crit_edge222.us
  %.0138233 = phi i32 [ 0, %.lr.ph235 ], [ %i.fr, %._crit_edge222.us ]
  %.0139232 = phi i32 [ 1, %.lr.ph235 ], [ %.us-phi229, %._crit_edge222.us ] ; 4 uses
  %.0142231 = phi i32 [ 1, %.lr.ph235 ], [ %i.eb, %._crit_edge222.us ] ; 2 uses
  %i.at = shl i32 %.0142231, 16                   ; 2 uses
  %i.au = or disjoint i32 %i.at, 2
  call fastcc void @b2ExecuteMainStage(ptr noundef nonnull %i.z, ptr noundef %i.d, i32 noundef %i.au)
  %i.av = call float @b2GetMillisecondsAndReset(ptr noundef nonnull %i.a) #8
  %i.aw = load float, ptr %i.aa, align 4, !tbaa !298
  %i.ax = fadd float %i.av, %i.aw
  store float %i.ax, ptr %i.aa, align 4, !tbaa !298
  call void @b2WarmStartJoints_Overflow(ptr noundef %i.d) #8
  call void @b2WarmStartContacts_Overflow(ptr noundef %i.d) #8
  br i1 %i.ab, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %bb.d
  %i.ay = shl i32 %.0139232, 16
  br label %bb.l

._crit_edge205:                                   ; preds = %b2ExecuteMainStage.exit, %bb.d
  %.0136.lcssa = phi i32 [ 3, %bb.d ], [ %i.ai, %b2ExecuteMainStage.exit ] ; 2 uses
  %i.az = call float @b2GetMillisecondsAndReset(ptr noundef nonnull %i.a) #8
  %i.ba = load float, ptr %i.ae, align 4, !tbaa !299
  %i.bb = fadd float %i.az, %i.ba
  store float %i.bb, ptr %i.ae, align 4, !tbaa !299
  call void @b2SolveJoints_Overflow(ptr noundef %i.d, i1 noundef zeroext true) #8
  call void @b2SolveContacts_Overflow(ptr noundef %i.d, i1 noundef zeroext true) #8
  br i1 %i.ab, label %.lr.ph210.us, label %.loopexit

.lr.ph210.us:                                     ; preds = %._crit_edge205
  %.1140212 = shl i32 %.0139232, 16
  %i.bc = add i32 %.1140212, 65536
  %i.bd = sext i32 %.0136.lcssa to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph210.us, %b2ExecuteMainStage.exit169.us
  %indvars.iv242 = phi i64 [ %i.bd, %.lr.ph210.us ], [ %indvars.iv.next243, %b2ExecuteMainStage.exit169.us ] ; 3 uses
  %.0133208.us = phi i32 [ 0, %.lr.ph210.us ], [ %i.cl, %b2ExecuteMainStage.exit169.us ]
  %i.be = getelementptr inbounds [24 x i8], ptr %i.h, i64 %indvars.iv242 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !104 ; 3 uses
  switch i32 %i.bg, label %bb.g [
    i32 0, label %b2ExecuteMainStage.exit169.us
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !103
  %i.bi = load i64, ptr %i.bh, align 4
  %i.bj = getelementptr i8, ptr %i.be, i64 8
  %.val.i147.us = load i32, ptr %i.bj, align 8, !tbaa !102
  call fastcc void @b2ExecuteBlock(i32 %.val.i147.us, ptr noundef %i.d, i64 %i.bi, i32 noundef 0)
  br label %b2ExecuteMainStage.exit169.us

bb.g:                                             ; preds = %bb.e
  %i.bk = trunc nsw i64 %indvars.iv242 to i32
  %i.bl = or i32 %i.bc, %i.bk                     ; 2 uses
  store atomic i32 %i.bl, ptr %i.ac seq_cst, align 8
  %i.bm = lshr i32 %i.bl, 16                      ; 2 uses
  %i.bn = add nsw i32 %i.bm, -1
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !103
  %i.bp = load i32, ptr %i.bf, align 4, !tbaa !104
  %.fr.i148.us = freeze i32 %i.bp                 ; 6 uses
  %i.bq = load i32, ptr %i.ad, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i149.us = icmp sgt i32 %.fr.i148.us, %i.bq
  br i1 %.not.i.i.i149.us, label %GetWorkerStartIndex.exit.i.i167.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = icmp sgt i32 %.fr.i148.us, 0
  br i1 %i.br, label %.lr.ph.i.i155.us, label %b2ExecuteStage.exit.i150.us

GetWorkerStartIndex.exit.i.i167.us:               ; preds = %bb.g
  %i.bs = srem i32 %.fr.i148.us, %i.bq            ; 2 uses
  %i.bt = icmp eq i32 %i.bs, -1
  br i1 %i.bt, label %b2ExecuteStage.exit.i150.us, label %.preheader.i.i168.us

.preheader.i.i168.us:                             ; preds = %GetWorkerStartIndex.exit.i.i167.us
  %i.bu = call noundef i32 @llvm.smin.i32(i32 %i.bs, i32 0)
  %i.bv = icmp sgt i32 %.fr.i148.us, 0
  br i1 %i.bv, label %.lr.ph.i.i155.us, label %._crit_edge.i.i164.us

.lr.ph.i.i155.us:                                 ; preds = %.preheader.i.i168.us, %bb.h
  %.0.i.i1921.i156.us = phi i32 [ %i.bu, %.preheader.i.i168.us ], [ 0, %bb.h ]
  %i.bw = getelementptr i8, ptr %i.be, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i.i155.us
  %.031.i.i157.us = phi i32 [ 0, %.lr.ph.i.i155.us ], [ %i.cf, %bb.k ]
  %.02430.i.i158.us = phi i32 [ %.0.i.i1921.i156.us, %.lr.ph.i.i155.us ], [ %spec.store.select.i.i162.us, %bb.k ] ; 2 uses
  %.02529.i.i159.us = phi i32 [ 0, %.lr.ph.i.i155.us ], [ %.1.i.i160.us, %bb.k ] ; 2 uses
  %i.bx = sext i32 %.02430.i.i158.us to i64
  %i.by = getelementptr inbounds [12 x i8], ptr %i.bo, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = cmpxchg ptr %i.bz, i32 %i.bn, i32 %i.bm seq_cst seq_cst, align 4
  %i.cb = extractvalue { i32, i1 } %i.ca, 1
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = load i64, ptr %i.by, align 4
  %.val.i.i166.us = load i32, ptr %i.bw, align 8, !tbaa !102
  call fastcc void @b2ExecuteBlock(i32 %.val.i.i166.us, ptr noundef %i.d, i64 %i.cc, i32 noundef 0)
  %i.cd = add nsw i32 %.02529.i.i159.us, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.i.i160.us = phi i32 [ %i.cd, %bb.j ], [ %.02529.i.i159.us, %bb.i ] ; 2 uses
  %i.ce = add nsw i32 %.02430.i.i158.us, 1        ; 2 uses
  %.not.i.i161.us = icmp slt i32 %i.ce, %.fr.i148.us
  %spec.store.select.i.i162.us = select i1 %.not.i.i161.us, i32 %i.ce, i32 0
  %i.cf = add nuw nsw i32 %.031.i.i157.us, 1      ; 2 uses
  %exitcond.not.i.i163.us = icmp eq i32 %i.cf, %.fr.i148.us
  br i1 %exitcond.not.i.i163.us, label %._crit_edge.i.i164.us, label %bb.i, !llvm.loop !0

._crit_edge.i.i164.us:                            ; preds = %bb.k, %.preheader.i.i168.us
  %.025.lcssa.i.i165.us = phi i32 [ 0, %.preheader.i.i168.us ], [ %.1.i.i160.us, %bb.k ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.ch = atomicrmw add ptr %i.cg, i32 %.025.lcssa.i.i165.us seq_cst, align 4 ; 0 uses
  br label %b2ExecuteStage.exit.i150.us

b2ExecuteStage.exit.i150.us:                      ; preds = %._crit_edge.i.i164.us, %GetWorkerStartIndex.exit.i.i167.us, %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %i.be, i64 20 ; 3 uses
  %i.cj = load atomic i32, ptr %i.ci seq_cst, align 4
  %.not22.i151.us = icmp eq i32 %i.cj, %i.bg
  br i1 %.not22.i151.us, label %._crit_edge.i154.us, label %.lr.ph.i152.us

.lr.ph.i152.us:                                   ; preds = %b2ExecuteStage.exit.i150.us, %.lr.ph.i152.us
  call void asm sideeffect "pause\0A", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !149
  %i.ck = load atomic i32, ptr %i.ci seq_cst, align 4
  %.not.i153.us = icmp eq i32 %i.ck, %i.bg
  br i1 %.not.i153.us, label %._crit_edge.i154.us, label %.lr.ph.i152.us, !llvm.loop !1

._crit_edge.i154.us:                              ; preds = %.lr.ph.i152.us, %b2ExecuteStage.exit.i150.us
  store atomic i32 0, ptr %i.ci seq_cst, align 4
  br label %b2ExecuteMainStage.exit169.us

b2ExecuteMainStage.exit169.us:                    ; preds = %._crit_edge.i154.us, %bb.f, %bb.e
  %indvars.iv.next243 = add nsw i64 %indvars.iv242, 1 ; 2 uses
  %i.cl = add nuw nsw i32 %.0133208.us, 1         ; 2 uses
  %exitcond245.not = icmp eq i32 %i.cl, %.fr237
  br i1 %exitcond245.not, label %..loopexit_crit_edge.us, label %bb.e, !llvm.loop !290

..loopexit_crit_edge.us:                          ; preds = %b2ExecuteMainStage.exit169.us
  %i.cm = trunc nsw i64 %indvars.iv.next243 to i32
  br label %.loopexit

bb.l:                                             ; preds = %.lr.ph204, %b2ExecuteMainStage.exit
  %indvars.iv = phi i64 [ 3, %.lr.ph204 ], [ %indvars.iv.next, %b2ExecuteMainStage.exit ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 12 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !104 ; 3 uses
  switch i32 %i.cp, label %bb.n [
    i32 0, label %b2ExecuteMainStage.exit
    i32 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !103
  %i.cr = load i64, ptr %i.cq, align 4
  %i.cs = getelementptr i8, ptr %i.cn, i64 8
  %.val.i = load i32, ptr %i.cs, align 8, !tbaa !102
  call fastcc void @b2ExecuteBlock(i32 %.val.i, ptr noundef %i.d, i64 %i.cr, i32 noundef 0)
  br label %b2ExecuteMainStage.exit

bb.n:                                             ; preds = %bb.l
  %i.ct = trunc nuw nsw i64 %indvars.iv to i32
  %i.cu = or i32 %i.ay, %i.ct                     ; 2 uses
  store atomic i32 %i.cu, ptr %i.ac seq_cst, align 8
  %i.cv = lshr i32 %i.cu, 16                      ; 2 uses
  %i.cw = add nsw i32 %i.cv, -1
  %i.cx = load ptr, ptr %i.cn, align 8, !tbaa !103
  %i.cy = load i32, ptr %i.co, align 4, !tbaa !104
  %.fr.i = freeze i32 %i.cy                       ; 6 uses
  %i.cz = load i32, ptr %i.ad, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %.fr.i, %i.cz
  br i1 %.not.i.i.i, label %GetWorkerStartIndex.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = icmp sgt i32 %.fr.i, 0
  br i1 %i.da, label %.lr.ph.i.i, label %b2ExecuteStage.exit.i

GetWorkerStartIndex.exit.i.i:                     ; preds = %bb.n
  %i.db = srem i32 %.fr.i, %i.cz                  ; 2 uses
  %i.dc = icmp eq i32 %i.db, -1
  br i1 %i.dc, label %b2ExecuteStage.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %GetWorkerStartIndex.exit.i.i
  %i.dd = call noundef i32 @llvm.smin.i32(i32 %i.db, i32 0)
  %i.de = icmp sgt i32 %.fr.i, 0
  br i1 %i.de, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.o
  %.0.i.i1921.i = phi i32 [ %i.dd, %.preheader.i.i ], [ 0, %bb.o ]
  %i.df = getelementptr i8, ptr %i.cn, i64 8
  br label %bb.p

._crit_edge.i.i:                                  ; preds = %bb.r, %.preheader.i.i
  %.025.lcssa.i.i = phi i32 [ 0, %.preheader.i.i ], [ %.1.i.i, %bb.r ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %i.dh = atomicrmw add ptr %i.dg, i32 %.025.lcssa.i.i seq_cst, align 4 ; 0 uses
  br label %b2ExecuteStage.exit.i

bb.p:                                             ; preds = %bb.r, %.lr.ph.i.i
  %.031.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.dq, %bb.r ]
  %.02430.i.i = phi i32 [ %.0.i.i1921.i, %.lr.ph.i.i ], [ %spec.store.select.i.i, %bb.r ] ; 2 uses
  %.02529.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.r ] ; 2 uses
  %i.di = sext i32 %.02430.i.i to i64
  %i.dj = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = cmpxchg ptr %i.dk, i32 %i.cw, i32 %i.cv seq_cst seq_cst, align 4
  %i.dm = extractvalue { i32, i1 } %i.dl, 1
  br i1 %i.dm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dn = load i64, ptr %i.dj, align 4
  %.val.i.i = load i32, ptr %i.df, align 8, !tbaa !102
  call fastcc void @b2ExecuteBlock(i32 %.val.i.i, ptr noundef %i.d, i64 %i.dn, i32 noundef 0)
  %i.do = add nsw i32 %.02529.i.i, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1.i.i = phi i32 [ %i.do, %bb.q ], [ %.02529.i.i, %bb.p ] ; 2 uses
  %i.dp = add nsw i32 %.02430.i.i, 1              ; 2 uses
  %.not.i.i = icmp slt i32 %i.dp, %.fr.i
  %spec.store.select.i.i = select i1 %.not.i.i, i32 %i.dp, i32 0
  %i.dq = add nuw nsw i32 %.031.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.dq, %.fr.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.p, !llvm.loop !0

b2ExecuteStage.exit.i:                            ; preds = %._crit_edge.i.i, %GetWorkerStartIndex.exit.i.i, %bb.o
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cn, i64 20 ; 3 uses
  %i.ds = load atomic i32, ptr %i.dr seq_cst, align 4
  %.not22.i = icmp eq i32 %i.ds, %i.cp
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %b2ExecuteStage.exit.i, %.lr.ph.i
  call void asm sideeffect "pause\0A", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !149
  %i.dt = load atomic i32, ptr %i.dr seq_cst, align 4
  %.not.i = icmp eq i32 %i.dt, %i.cp
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i, %b2ExecuteStage.exit.i
  store atomic i32 0, ptr %i.dr seq_cst, align 4
  br label %b2ExecuteMainStage.exit

b2ExecuteMainStage.exit:                          ; preds = %bb.l, %bb.m, %._crit_edge.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge205, label %bb.l, !llvm.loop !291

.loopexit:                                        ; preds = %._crit_edge205, %..loopexit_crit_edge.us
  %.us-phi = phi i32 [ %i.cm, %..loopexit_crit_edge.us ], [ %.0136.lcssa, %._crit_edge205 ] ; 2 uses
  %i.du = call float @b2GetMillisecondsAndReset(ptr noundef nonnull %i.a) #8
  %i.dv = load float, ptr %i.af, align 4, !tbaa !300
  %i.dw = fadd float %i.du, %i.dv
  store float %i.dw, ptr %i.af, align 4, !tbaa !300
  %i.dx = add i32 %i.at, 65536
  %i.dy = or i32 %.us-phi, %i.dx
  %i.dz = sext i32 %.us-phi to i64                ; 2 uses
  %i.ea = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.dz
  call fastcc void @b2ExecuteMainStage(ptr noundef %i.ea, ptr noundef %i.d, i32 noundef %i.dy)
  %i.eb = add nuw nsw i32 %.0142231, 2
  %i.ec = call float @b2GetMillisecondsAndReset(ptr noundef nonnull %i.a) #8
  %i.ed = load float, ptr %i.ag, align 4, !tbaa !301
  %i.ee = fadd float %i.ec, %i.ed
  store float %i.ee, ptr %i.ag, align 4, !tbaa !301
  call void @b2SolveJoints_Overflow(ptr noundef %i.d, i1 noundef zeroext false) #8
  call void @b2SolveContacts_Overflow(ptr noundef %i.d, i1 noundef zeroext false) #8
  br i1 %i.ab, label %.lr.ph221.us, label %._crit_edge222.us

.lr.ph221.us:                                     ; preds = %.loopexit
  %.us-phi217 = shl i32 %.0139232, 16
  %i.ef = add i32 %.us-phi217, 131072
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph221.us, %b2ExecuteMainStage.exit192.us
  %indvars.iv246 = phi i64 [ %i.dz, %.lr.ph221.us ], [ %indvars.iv.next247, %b2ExecuteMainStage.exit192.us ] ; 2 uses
  %.0131219.us = phi i32 [ 0, %.lr.ph221.us ], [ %i.fn, %b2ExecuteMainStage.exit192.us ]
  %indvars.iv.next247 = add nsw i64 %indvars.iv246, 1 ; 2 uses
  %i.eg = getelementptr [24 x i8], ptr %i.h, i64 %indvars.iv246 ; 6 uses
  %1 = getelementptr i8, ptr %i.eg, i64 24        ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 36     ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !104 ; 3 uses
  switch i32 %i.ei, label %bb.u [
    i32 0, label %b2ExecuteMainStage.exit192.us
    i32 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.ej = load ptr, ptr %1, align 8, !tbaa !103
  %i.ek = load i64, ptr %i.ej, align 4
  %i.el = getelementptr i8, ptr %i.eg, i64 32
  %.val.i170.us = load i32, ptr %i.el, align 8, !tbaa !102
  call fastcc void @b2ExecuteBlock(i32 %.val.i170.us, ptr noundef %i.d, i64 %i.ek, i32 noundef 0)
  br label %b2ExecuteMainStage.exit192.us

bb.u:                                             ; preds = %bb.s
  %i.em = trunc nsw i64 %indvars.iv.next247 to i32
  %i.en = or i32 %i.ef, %i.em                     ; 2 uses
  store atomic i32 %i.en, ptr %i.ac seq_cst, align 8
  %i.eo = lshr i32 %i.en, 16                      ; 2 uses
  %i.ep = add nsw i32 %i.eo, -1
  %i.eq = load ptr, ptr %1, align 8, !tbaa !103
  %i.er = load i32, ptr %i.eh, align 4, !tbaa !104
  %.fr.i171.us = freeze i32 %i.er                 ; 6 uses
  %i.es = load i32, ptr %i.ad, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i172.us = icmp sgt i32 %.fr.i171.us, %i.es
  br i1 %.not.i.i.i172.us, label %GetWorkerStartIndex.exit.i.i190.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.et = icmp sgt i32 %.fr.i171.us, 0
  br i1 %i.et, label %.lr.ph.i.i178.us, label %b2ExecuteStage.exit.i173.us

GetWorkerStartIndex.exit.i.i190.us:               ; preds = %bb.u
  %i.eu = srem i32 %.fr.i171.us, %i.es            ; 2 uses
  %i.ev = icmp eq i32 %i.eu, -1
  br i1 %i.ev, label %b2ExecuteStage.exit.i173.us, label %.preheader.i.i191.us

.preheader.i.i191.us:                             ; preds = %GetWorkerStartIndex.exit.i.i190.us
  %i.ew = call noundef i32 @llvm.smin.i32(i32 %i.eu, i32 0)
  %i.ex = icmp sgt i32 %.fr.i171.us, 0
  br i1 %i.ex, label %.lr.ph.i.i178.us, label %._crit_edge.i.i187.us

.lr.ph.i.i178.us:                                 ; preds = %.preheader.i.i191.us, %bb.v
  %.0.i.i1921.i179.us = phi i32 [ %i.ew, %.preheader.i.i191.us ], [ 0, %bb.v ]
  %i.ey = getelementptr i8, ptr %i.eg, i64 32
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.lr.ph.i.i178.us
  %.031.i.i180.us = phi i32 [ 0, %.lr.ph.i.i178.us ], [ %i.fh, %bb.y ]
  %.02430.i.i181.us = phi i32 [ %.0.i.i1921.i179.us, %.lr.ph.i.i178.us ], [ %spec.store.select.i.i185.us, %bb.y ] ; 2 uses
  %.02529.i.i182.us = phi i32 [ 0, %.lr.ph.i.i178.us ], [ %.1.i.i183.us, %bb.y ] ; 2 uses
  %i.ez = sext i32 %.02430.i.i181.us to i64
  %i.fa = getelementptr inbounds [12 x i8], ptr %i.eq, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = cmpxchg ptr %i.fb, i32 %i.ep, i32 %i.eo seq_cst seq_cst, align 4
  %i.fd = extractvalue { i32, i1 } %i.fc, 1
  br i1 %i.fd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fe = load i64, ptr %i.fa, align 4
  %.val.i.i189.us = load i32, ptr %i.ey, align 8, !tbaa !102
  call fastcc void @b2ExecuteBlock(i32 %.val.i.i189.us, ptr noundef %i.d, i64 %i.fe, i32 noundef 0)
  %i.ff = add nsw i32 %.02529.i.i182.us, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1.i.i183.us = phi i32 [ %i.ff, %bb.x ], [ %.02529.i.i182.us, %bb.w ] ; 2 uses
  %i.fg = add nsw i32 %.02430.i.i181.us, 1        ; 2 uses
  %.not.i.i184.us = icmp slt i32 %i.fg, %.fr.i171.us
  %spec.store.select.i.i185.us = select i1 %.not.i.i184.us, i32 %i.fg, i32 0
  %i.fh = add nuw nsw i32 %.031.i.i180.us, 1      ; 2 uses
  %exitcond.not.i.i186.us = icmp eq i32 %i.fh, %.fr.i171.us
  br i1 %exitcond.not.i.i186.us, label %._crit_edge.i.i187.us, label %bb.w, !llvm.loop !0

._crit_edge.i.i187.us:                            ; preds = %bb.y, %.preheader.i.i191.us
  %.025.lcssa.i.i188.us = phi i32 [ 0, %.preheader.i.i191.us ], [ %.1.i.i183.us, %bb.y ]
  %i.fi = getelementptr i8, ptr %i.eg, i64 44
  %i.fj = atomicrmw add ptr %i.fi, i32 %.025.lcssa.i.i188.us seq_cst, align 4 ; 0 uses
  br label %b2ExecuteStage.exit.i173.us

b2ExecuteStage.exit.i173.us:                      ; preds = %._crit_edge.i.i187.us, %GetWorkerStartIndex.exit.i.i190.us, %bb.v
  %i.fk = getelementptr i8, ptr %i.eg, i64 44     ; 3 uses
  %i.fl = load atomic i32, ptr %i.fk seq_cst, align 4
  %.not22.i174.us = icmp eq i32 %i.fl, %i.ei
  br i1 %.not22.i174.us, label %._crit_edge.i177.us, label %.lr.ph.i175.us

.lr.ph.i175.us:                                   ; preds = %b2ExecuteStage.exit.i173.us, %.lr.ph.i175.us
  call void asm sideeffect "pause\0A", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !149
  %i.fm = load atomic i32, ptr %i.fk seq_cst, align 4
  %.not.i176.us = icmp eq i32 %i.fm, %i.ei
  br i1 %.not.i176.us, label %._crit_edge.i177.us, label %.lr.ph.i175.us, !llvm.loop !1

._crit_edge.i177.us:                              ; preds = %.lr.ph.i175.us, %b2ExecuteStage.exit.i173.us
  store atomic i32 0, ptr %i.fk seq_cst, align 4
  br label %b2ExecuteMainStage.exit192.us

b2ExecuteMainStage.exit192.us:                    ; preds = %._crit_edge.i177.us, %bb.t, %bb.s
  %i.fn = add nuw nsw i32 %.0131219.us, 1         ; 2 uses
  %exitcond249.not = icmp eq i32 %i.fn, %.fr237
  br i1 %exitcond249.not, label %._crit_edge222.us, label %bb.s, !llvm.loop !292

._crit_edge222.us:                                ; preds = %b2ExecuteMainStage.exit192.us, %.loopexit
  %.us-phi229 = add nuw nsw i32 %.0139232, 3
  %i.fo = call float @b2GetMillisecondsAndReset(ptr noundef nonnull %i.a) #8
  %i.fp = load float, ptr %i.ah, align 4, !tbaa !302
  %i.fq = fadd float %i.fo, %i.fp
  store float %i.fq, ptr %i.ah, align 4, !tbaa !302
  %i.fr = add nuw nsw i32 %.0138233, 1            ; 2 uses
  %exitcond250.not = icmp eq i32 %i.fr, %i.x
  br i1 %exitcond250.not, label %._crit_edge236, label %bb.d, !llvm.loop !293

b2ExecuteStage.exit:                              ; preds = %b2ExecuteStage.exit.backedge, %.preheader
  %.0129 = phi i32 [ 0, %.preheader ], [ %.lcssa, %b2ExecuteStage.exit.backedge ] ; 2 uses
  %i.fs = load atomic i32, ptr %i.l seq_cst, align 8 ; 2 uses
  %i.ft = icmp eq i32 %i.fs, %.0129
  br i1 %i.ft, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %b2ExecuteStage.exit, %bb.ab
  %.0200 = phi i32 [ %.1, %bb.ab ], [ 0, %b2ExecuteStage.exit ] ; 2 uses
  %i.fu = icmp sgt i32 %.0200, 5
  br i1 %i.fu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph
  tail call void @b2Yield() #8
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph
  tail call void asm sideeffect "pause\0A", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !149
  tail call void asm sideeffect "pause\0A", "~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !149
  %i.fv = add nsw i32 %.0200, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1 = phi i32 [ 0, %bb.z ], [ %i.fv, %bb.aa ]
  %i.fw = load atomic i32, ptr %i.l seq_cst, align 8 ; 2 uses
  %i.fx = icmp eq i32 %i.fw, %.0129
  br i1 %i.fx, label %.lr.ph, label %._crit_edge, !llvm.loop !294

._crit_edge:                                      ; preds = %bb.ab, %b2ExecuteStage.exit
  %.lcssa = phi i32 [ %i.fs, %b2ExecuteStage.exit ], [ %i.fw, %bb.ab ] ; 4 uses
  %i.fy = icmp eq i32 %.lcssa, -1
  br i1 %i.fy, label %b2ExecuteStage.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.fz = and i32 %.lcssa, 65535
  %i.ga = lshr i32 %.lcssa, 16                    ; 2 uses
  %i.gb = add nsw i32 %i.ga, -1
  %i.gc = zext nneg i32 %i.fz to i64
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.gc ; 4 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !103
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !104 ; 7 uses
  %i.gh = load i32, ptr %i.m, align 8, !tbaa !106 ; 4 uses
  %.not.i.i193 = icmp sgt i32 %i.gg, %i.gh
  br i1 %.not.i.i193, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gi = icmp slt i32 %i.c, %i.gg
  br i1 %i.gi, label %GetWorkerStartIndex.exit.i, label %b2ExecuteStage.exit.backedge

bb.ae:                                            ; preds = %bb.ac
  %i.gj = sdiv i32 %i.gg, %i.gh                   ; 2 uses
  %i.gk = mul nsw i32 %i.gj, %i.gh                ; 0 uses
  %.recomposed = srem i32 %i.gg, %i.gh
  %i.gl = mul nsw i32 %i.gj, %i.c
  %i.gm = tail call noundef i32 @llvm.smin.i32(i32 %.recomposed, i32 %i.c)
  %i.gn = add nsw i32 %i.gm, %i.gl
  br label %GetWorkerStartIndex.exit.i

GetWorkerStartIndex.exit.i:                       ; preds = %bb.ae, %bb.ad
  %.0.i.i = phi i32 [ %i.gn, %bb.ae ], [ %i.c, %bb.ad ] ; 2 uses
  %i.go = icmp eq i32 %.0.i.i, -1
  br i1 %i.go, label %b2ExecuteStage.exit.backedge, label %.preheader.i

.preheader.i:                                     ; preds = %GetWorkerStartIndex.exit.i
  %i.gp = icmp sgt i32 %i.gg, 0
  br i1 %i.gp, label %.lr.ph.i195, label %._crit_edge.i194

.lr.ph.i195:                                      ; preds = %.preheader.i
  %i.gq = getelementptr i8, ptr %i.gd, i64 8
  br label %bb.af

._crit_edge.i194:                                 ; preds = %bb.ah, %.preheader.i
  %.025.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.1.i, %bb.ah ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gd, i64 20
  %i.gs = atomicrmw add ptr %i.gr, i32 %.025.lcssa.i seq_cst, align 4 ; 0 uses
  br label %b2ExecuteStage.exit.backedge

b2ExecuteStage.exit.backedge:                     ; preds = %._crit_edge.i194, %GetWorkerStartIndex.exit.i, %bb.ad
  br label %b2ExecuteStage.exit

bb.af:                                            ; preds = %bb.ah, %.lr.ph.i195
  %.031.i = phi i32 [ 0, %.lr.ph.i195 ], [ %i.hb, %bb.ah ]
  %.02430.i = phi i32 [ %.0.i.i, %.lr.ph.i195 ], [ %spec.store.select.i, %bb.ah ] ; 2 uses
  %.02529.i = phi i32 [ 0, %.lr.ph.i195 ], [ %.1.i, %bb.ah ] ; 2 uses
  %i.gt = sext i32 %.02430.i to i64
  %i.gu = getelementptr inbounds [12 x i8], ptr %i.ge, i64 %i.gt ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = cmpxchg ptr %i.gv, i32 %i.gb, i32 %i.ga seq_cst seq_cst, align 4
  %i.gx = extractvalue { i32, i1 } %i.gw, 1
  br i1 %i.gx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gy = load i64, ptr %i.gu, align 4
  %.val.i197 = load i32, ptr %i.gq, align 8, !tbaa !102
  tail call fastcc void @b2ExecuteBlock(i32 %.val.i197, ptr noundef %i.d, i64 %i.gy, i32 noundef %i.c)
  %i.gz = add nsw i32 %.02529.i, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.1.i = phi i32 [ %i.gz, %bb.ag ], [ %.02529.i, %bb.af ] ; 2 uses
  %i.ha = add nsw i32 %.02430.i, 1                ; 2 uses
  %.not.i196 = icmp slt i32 %i.ha, %i.gg
  %spec.store.select.i = select i1 %.not.i196, i32 %i.ha, i32 0
  %i.hb = add nuw nsw i32 %.031.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.hb, %i.gg
  br i1 %exitcond.not.i, label %._crit_edge.i194, label %bb.af, !llvm.loop !0

b2ExecuteStage.exit.thread:                       ; preds = %._crit_edge, %bb.b, %._crit_edge236
  ret void
}

declare void @b2ParallelFor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @b2FinalizeBodiesTask(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1920
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2738
  %i.j = load i8, ptr %i.i, align 2, !tbaa !145, !range !122, !noundef !123
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2741
  %i.l = load i8, ptr %i.k, align 1, !tbaa !305, !range !122, !noundef !123
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = load float, ptr %3, align 8, !tbaa !150  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !151
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 2736
  %i.r = load i16, ptr %i.q, align 8, !tbaa !120
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 2224
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 2192
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111
  %i.w = sext i32 %2 to i64
  %i.x = getelementptr inbounds [120 x i8], ptr %i.v, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.aa = tail call float @b2GetLengthUnitsPerMeter() #8
  %i.ab = fmul float %i.aa, 5.000000e-03
  %i.ac = fmul float %i.ab, 4.000000e+00
  %i.ad = icmp slt i32 %0, %1
  br i1 %i.ad, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %bb.a
  %i.ae = icmp eq i8 %i.j, 0
  %i.af = fmul float %i.p, 5.000000e-01
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 2080
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 104 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 108 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 2144
  %i.am = sext i32 %0 to i64
  br label %bb.b

._crit_edge206:                                   ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph205, %._crit_edge
  %indvars.iv = phi i64 [ %i.am, %.lr.ph205 ], [ %indvars.iv.next, %._crit_edge ] ; 7 uses
  %i.an = getelementptr inbounds [32 x i8], ptr %i.f, i64 %indvars.iv ; 6 uses
  %i.ao = getelementptr inbounds [96 x i8], ptr %i.h, i64 %indvars.iv ; 15 uses
  %.sroa.063.0.copyload = load <2 x float>, ptr %i.an, align 4, !tbaa !127 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !153 ; 4 uses
  %i.ar = tail call zeroext i1 @b2IsValidVec2(<2 x float> %.sroa.063.0.copyload) #8
end_hunk_0
