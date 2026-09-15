Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/backward_references_hq?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@BrotliCreateHqZopfliBackwardReferences:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.akb, ptr noundef nonnull align 8 dereferenceable(32) %i.akg, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.akg, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.lr.ph.i22.i.i.3
  %exitcond.not.i23.i.i.3 = icmp eq i64 %i.ais, 5
  br i1 %exitcond.not.i23.i.i.3, label %StartPosQueuePush.exit.i.i, label %.lr.ph.i22.i.i.4

.lr.ph.i22.i.i.4:                                 ; preds = %bb.dx
  %i.akk = and i64 %i.ake, 7
  %i.akl = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.akk ; 3 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 24
  %i.akn = load float, ptr %i.akm, align 8, !tbaa !96
  %i.ako = sub nuw nsw i64 12, %i.ait             ; 2 uses
  %i.akp = and i64 %i.ako, 7
  %i.akq = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.akp ; 3 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 24
  %i.aks = load float, ptr %i.akr, align 8, !tbaa !96
  %i.akt = fcmp ogt float %i.akn, %i.aks
  br i1 %i.akt, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %.lr.ph.i22.i.i.4
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.akl, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.akl, ptr noundef nonnull align 8 dereferenceable(32) %i.akq, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.akq, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.lr.ph.i22.i.i.4
  %exitcond.not.i23.i.i.4 = icmp eq i64 %i.ais, 6
  br i1 %exitcond.not.i23.i.i.4, label %StartPosQueuePush.exit.i.i, label %.lr.ph.i22.i.i.5

.lr.ph.i22.i.i.5:                                 ; preds = %bb.dz
  %i.aku = and i64 %i.ako, 7
  %i.akv = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.aku ; 3 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 24
  %i.akx = load float, ptr %i.akw, align 8, !tbaa !96
  %i.aky = sub nuw nsw i64 13, %i.ait             ; 2 uses
  %i.akz = and i64 %i.aky, 7
  %i.ala = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.akz ; 3 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 24
  %i.alc = load float, ptr %i.alb, align 8, !tbaa !96
  %i.ald = fcmp ogt float %i.akx, %i.alc
  br i1 %i.ald, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %.lr.ph.i22.i.i.5
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.akv, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.akv, ptr noundef nonnull align 8 dereferenceable(32) %i.ala, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ala, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %.lr.ph.i22.i.i.5
  %exitcond.not.i23.i.i.5 = icmp eq i64 %i.ais, 7
  br i1 %exitcond.not.i23.i.i.5, label %StartPosQueuePush.exit.i.i, label %.lr.ph.i22.i.i.6

.lr.ph.i22.i.i.6:                                 ; preds = %bb.eb
  %i.ale = and i64 %i.aky, 7
  %i.alf = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.ale ; 3 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 24
  %i.alh = load float, ptr %i.alg, align 8, !tbaa !96
  %i.ali = sub i64 6, %i.afz
  %i.alj = and i64 %i.ali, 7
  %i.alk = getelementptr inbounds nuw [32 x i8], ptr %15, i64 %i.alj ; 3 uses
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 24
  %i.alm = load float, ptr %i.all, align 8, !tbaa !96
  %i.aln = fcmp ogt float %i.alh, %i.alm
  br i1 %i.aln, label %bb.ec, label %StartPosQueuePush.exit.i.i

bb.ec:                                            ; preds = %.lr.ph.i22.i.i.6
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.alf, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alf, ptr noundef nonnull align 8 dereferenceable(32) %i.alk, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alk, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %StartPosQueuePush.exit.i.i

StartPosQueuePush.exit.i.i:                       ; preds = %bb.dr, %bb.dt, %bb.dv, %bb.dx, %bb.dz, %bb.eb, %bb.ec, %.lr.ph.i22.i.i.6, %ComputeDistanceCache.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %EvaluateNode.exit.i

EvaluateNode.exit.i:                              ; preds = %StartPosQueuePush.exit.i.i, %ComputeDistanceShortcut.exit.i.i
  %i.alo = phi i64 [ %i.afz, %ComputeDistanceShortcut.exit.i.i ], [ %i.ais, %StartPosQueuePush.exit.i.i ] ; 2 uses
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %i.aga
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !21
  %i.alr = zext i32 %i.alq to i64
  %i.als = add i64 %.15665.i, %i.alr              ; 2 uses
  %.1.i339 = add i64 %.167.i, -1                  ; 2 uses
  %.not.i340 = icmp eq i64 %.1.i339, 0
  br i1 %.not.i340, label %.loopexit.i, label %.lr.ph.i335, !llvm.loop !230

.loopexit.i:                                      ; preds = %EvaluateNode.exit.i, %.lr.ph.i335
  %.lcssa62.ph.i = phi i64 [ %i.alo, %EvaluateNode.exit.i ], [ %i.afz, %.lr.ph.i335 ]
  %.156.lcssa.ph.i = phi i64 [ %i.als, %EvaluateNode.exit.i ], [ %.15665.i, %.lr.ph.i335 ]
  store i64 %.lcssa62.ph.i, ptr %i.yh, align 8
  br label %bb.ed

bb.ed:                                            ; preds = %.loopexit.i, %bb.dk
  %.257.i = phi i64 [ %i.afp, %bb.dk ], [ %.156.lcssa.ph.i, %.loopexit.i ]
  %.2.i334 = phi i64 [ %.05375.i, %bb.dk ], [ %i.aga, %.loopexit.i ] ; 2 uses
  %i.alt = add i64 %.2.i334, 1
  %i.alu = add i64 %.2.i334, 4
  %i.alv = icmp ult i64 %i.alu, %1
  br i1 %i.alv, label %bb.dh, label %._crit_edge.i328, !llvm.loop !231

._crit_edge.i328:                                 ; preds = %bb.ed, %ZopfliCostModelSetFromCommands.exit
  %i.alw = load i32, ptr %i.yn, align 4, !tbaa !46
  %i.alx = and i32 %i.alw, 134217727
  %i.aly = icmp eq i32 %i.alx, 0
  br i1 %i.aly, label %.lr.ph.i.i332, label %.critedge.i.i329

.lr.ph.i.i332:                                    ; preds = %._crit_edge.i328, %bb.ee
  %i.alz = phi ptr [ %i.amd, %bb.ee ], [ %i.ym, %._crit_edge.i328 ] ; 2 uses
  %.018.i.i = phi i64 [ %i.amc, %bb.ee ], [ %1, %._crit_edge.i328 ] ; 2 uses
  %i.ama = load i32, ptr %i.alz, align 4, !tbaa !45
  %i.amb = icmp eq i32 %i.ama, 1
  br i1 %i.amb, label %bb.ee, label %.critedge.i.i329

bb.ee:                                            ; preds = %.lr.ph.i.i332
  %i.amc = add i64 %.018.i.i, -1                  ; 3 uses
  %i.amd = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %i.amc ; 3 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 8
  %i.amf = load i32, ptr %i.ame, align 4, !tbaa !46
  %i.amg = and i32 %i.amf, 134217727
  %i.amh = icmp eq i32 %i.amg, 0
  br i1 %i.amh, label %.lr.ph.i.i332, label %.critedge.i.i329, !llvm.loop !10

.critedge.i.i329:                                 ; preds = %bb.ee, %.lr.ph.i.i332, %._crit_edge.i328
  %.0.lcssa.i.i = phi i64 [ %1, %._crit_edge.i328 ], [ %i.amc, %bb.ee ], [ %.018.i.i, %.lr.ph.i.i332 ] ; 2 uses
  %.lcssa.i.i = phi ptr [ %i.ym, %._crit_edge.i328 ], [ %i.amd, %bb.ee ], [ %i.alz, %.lr.ph.i.i332 ]
  %i.ami = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 12
  store i32 -1, ptr %i.ami, align 4, !tbaa !22
  %.not23.i.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not23.i.i, label %ZopfliIterate.exit, label %.lr.ph26.i.i

.lr.ph26.i.i:                                     ; preds = %.critedge.i.i329, %.lr.ph26.i.i
  %.125.i.i330 = phi i64 [ %i.amr, %.lr.ph26.i.i ], [ %.0.lcssa.i.i, %.critedge.i.i329 ] ; 2 uses
  %.01724.i.i = phi i64 [ %i.amu, %.lr.ph26.i.i ], [ 0, %.critedge.i.i329 ]
  %i.amj = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %.125.i.i330 ; 2 uses
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !45
  %i.aml = and i32 %i.amk, 33554431
  %i.amm = getelementptr inbounds nuw i8, ptr %i.amj, i64 8
  %i.amn = load i32, ptr %i.amm, align 4, !tbaa !46
  %i.amo = and i32 %i.amn, 134217727
  %i.amp = add nuw nsw i32 %i.amo, %i.aml         ; 2 uses
  %i.amq = zext nneg i32 %i.amp to i64
  %i.amr = sub i64 %.125.i.i330, %i.amq           ; 3 uses
  %i.ams = getelementptr inbounds nuw [16 x i8], ptr %i.xn, i64 %i.amr
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 12
  store i32 %i.amp, ptr %i.amt, align 4, !tbaa !22
  %i.amu = add i64 %.01724.i.i, 1                 ; 2 uses
  %.not.i.i331 = icmp eq i64 %i.amr, 0
  br i1 %.not.i.i331, label %ZopfliIterate.exit, label %.lr.ph26.i.i, !llvm.loop !11

ZopfliIterate.exit:                               ; preds = %.lr.ph26.i.i, %.critedge.i.i329
  %.017.lcssa.i.i = phi i64 [ 0, %.critedge.i.i329 ], [ %i.amu, %.lr.ph26.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  %i.amv = load i64, ptr %11, align 8, !tbaa !47
  %i.amw = add i64 %i.amv, %.017.lcssa.i.i
  store i64 %i.amw, ptr %11, align 8, !tbaa !47
  call void @BrotliZopfliCreateCommands(i64 noundef %1, i64 noundef %2, ptr noundef nonnull %i.xn, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %6, ptr noundef %10, ptr noundef nonnull %12)
  br i1 %i.yt, label %bb.ct, label %bb.ef, !llvm.loop !232

bb.ef:                                            ; preds = %ZopfliIterate.exit
  %i.amx = load ptr, ptr %i.xp, align 8, !tbaa !61
  call void @BrotliFree(ptr noundef %0, ptr noundef %i.amx) #13
  store ptr null, ptr %i.xp, align 8, !tbaa !61
  %i.amy = load ptr, ptr %i.xx, align 8, !tbaa !63
  call void @BrotliFree(ptr noundef %0, ptr noundef %i.amy) #13
  store ptr null, ptr %i.xx, align 8, !tbaa !63
  call void @BrotliFree(ptr noundef %0, ptr noundef %i.wt) #13
  call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.xn) #13
  call void @BrotliFree(ptr noundef %0, ptr noundef %.0202.lcssa) #13
  call void @BrotliFree(ptr noundef %0, ptr noundef %i.ws) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

declare hidden void @BrotliEstimateBitCostsForLiterals(i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #8

declare hidden i32 @BrotliFindAllStaticDictionaryMatches(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @SetCost(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #9 {
bb.a:
  %.not51 = icmp eq i64 %1, 0                     ; 2 uses
  br i1 %.not51, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp samesign ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader81, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %1, 4294967292                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %vec.phi60 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %wide.load = load <2 x i32>, ptr %i.a, align 4, !tbaa !21
  %wide.load61 = load <2 x i32>, ptr %i.b, align 4, !tbaa !21
  %i.c = zext <2 x i32> %wide.load to <2 x i64>
  %i.d = zext <2 x i32> %wide.load61 to <2 x i64>
  %i.e = add <2 x i64> %vec.phi, %i.c             ; 2 uses
  %i.f = add <2 x i64> %vec.phi60, %i.d           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !266

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.f, %i.e
  %i.h = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader81

.lr.ph.preheader81:                               ; preds = %.lr.ph.preheader, %middle.block
  %.043.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.03542.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.h, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader81, %.lr.ph
  %.043 = phi i64 [ %i.m, %.lr.ph ], [ %.043.ph, %.lr.ph.preheader81 ] ; 2 uses
  %.03542 = phi i64 [ %i.l, %.lr.ph ], [ %.03542.ph, %.lr.ph.preheader81 ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.043
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21
  %i.k = zext i32 %i.j to i64
  %i.l = add i64 %.03542, %i.k                    ; 2 uses
  %i.m = add nuw nsw i64 %.043, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !267

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.h, %middle.block ], [ %i.l, %.lr.ph ] ; 4 uses
  %i.n = icmp ult i64 %.lcssa, 256
  br i1 %i.n, label %._crit_edge.thread, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.035.lcssa59 = phi i64 [ %.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %.035.lcssa59
  %i.p = load double, ptr %i.o, align 8, !tbaa !99
  br label %FastLog2.exit41

bb.b:                                             ; preds = %._crit_edge
  %i.q = uitofp i64 %.lcssa to double
  %i.r = tail call double @log2(double noundef %i.q) #13
  br label %FastLog2.exit41

FastLog2.exit41:                                  ; preds = %._crit_edge.thread, %bb.b
  %.035.lcssa58 = phi i64 [ %.035.lcssa59, %._crit_edge.thread ], [ %.lcssa, %bb.b ] ; 3 uses
  %.0.i40 = phi double [ %i.p, %._crit_edge.thread ], [ %i.r, %bb.b ]
  %i.s = fptrunc double %.0.i40 to float
  %.not = icmp eq i32 %2, 0
  %4 = icmp ne i64 %1, 0
  %or.cond = and i1 %.not, %4
  br i1 %or.cond, label %.lr.ph46.preheader, label %.loopexit

.lr.ph46.preheader:                               ; preds = %FastLog2.exit41
  %min.iters.check63 = icmp samesign ult i64 %1, 4
  br i1 %min.iters.check63, label %.lr.ph46.preheader78, label %vector.ph64

vector.ph64:                                      ; preds = %.lr.ph46.preheader
  %n.vec65 = and i64 %1, 4294967292               ; 3 uses
  %i.t = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.035.lcssa58, i64 0
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %vec.phi68 = phi <2 x i64> [ %i.t, %vector.ph64 ], [ %i.aa, %vector.body66 ]
  %vec.phi69 = phi <2 x i64> [ zeroinitializer, %vector.ph64 ], [ %i.ab, %vector.body66 ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index67 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %wide.load70 = load <2 x i32>, ptr %i.u, align 4, !tbaa !21
  %wide.load71 = load <2 x i32>, ptr %i.v, align 4, !tbaa !21
  %i.w = icmp eq <2 x i32> %wide.load70, zeroinitializer
  %i.x = icmp eq <2 x i32> %wide.load71, zeroinitializer
  %i.y = zext <2 x i1> %i.w to <2 x i64>
  %i.z = zext <2 x i1> %i.x to <2 x i64>
  %i.aa = add <2 x i64> %vec.phi68, %i.y          ; 2 uses
  %i.ab = add <2 x i64> %vec.phi69, %i.z          ; 2 uses
  %index.next72 = add nuw i64 %index67, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.ac, label %middle.block73, label %vector.body66, !llvm.loop !268

middle.block73:                                   ; preds = %vector.body66
  %bin.rdx74 = add <2 x i64> %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx74) ; 2 uses
  %cmp.n75 = icmp eq i64 %1, %n.vec65
  br i1 %cmp.n75, label %.loopexit, label %.lr.ph46.preheader78

.lr.ph46.preheader78:                             ; preds = %.lr.ph46.preheader, %middle.block73
  %.145.ph = phi i64 [ 0, %.lr.ph46.preheader ], [ %n.vec65, %middle.block73 ]
  %.03244.ph = phi i64 [ %.035.lcssa58, %.lr.ph46.preheader ], [ %i.ad, %middle.block73 ]
  br label %.lr.ph46

.lr.ph46:                                         ; preds = %.lr.ph46.preheader78, %.lr.ph46
  %.145 = phi i64 [ %i.ai, %.lr.ph46 ], [ %.145.ph, %.lr.ph46.preheader78 ] ; 2 uses
  %.03244 = phi i64 [ %spec.select, %.lr.ph46 ], [ %.03244.ph, %.lr.ph46.preheader78 ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.145
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i64
  %spec.select = add i64 %.03244, %i.ah           ; 2 uses
  %i.ai = add nuw nsw i64 %.145, 1                ; 2 uses
  %exitcond53.not = icmp eq i64 %i.ai, %1
  br i1 %exitcond53.not, label %.loopexit, label %.lr.ph46, !llvm.loop !269

.loopexit:                                        ; preds = %.lr.ph46, %middle.block73, %FastLog2.exit41
  %.234 = phi i64 [ %.035.lcssa58, %FastLog2.exit41 ], [ %i.ad, %middle.block73 ], [ %spec.select, %.lr.ph46 ] ; 3 uses
  %i.aj = icmp ult i64 %.234, 256
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %.234
  %i.al = load double, ptr %i.ak, align 8, !tbaa !99
  br label %FastLog2.exit39

bb.d:                                             ; preds = %.loopexit
  %i.am = uitofp i64 %.234 to double
  %i.an = tail call double @log2(double noundef %i.am) #13
  br label %FastLog2.exit39

FastLog2.exit39:                                  ; preds = %bb.c, %bb.d
  %.0.i38 = phi double [ %i.al, %bb.c ], [ %i.an, %bb.d ]
  %i.ao = fptrunc double %.0.i38 to float
  %i.ap = fadd float %i.ao, 2.000000e+00
  br i1 %.not51, label %._crit_edge50, label %.lr.ph49

.lr.ph49:                                         ; preds = %FastLog2.exit39, %bb.i
  %.248 = phi i64 [ %i.be, %bb.i ], [ 0, %FastLog2.exit39 ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.248
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !21 ; 4 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph49
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.248
  store float %i.ap, ptr %i.at, align 4, !tbaa !92
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph49
  %i.au = icmp ult i32 %i.ar, 256
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = zext nneg i32 %i.ar to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !99
  br label %FastLog2.exit

bb.h:                                             ; preds = %bb.f
  %i.ay = uitofp i32 %i.ar to double
  %i.az = tail call double @log2(double noundef %i.ay) #13
  br label %FastLog2.exit

FastLog2.exit:                                    ; preds = %bb.g, %bb.h
  %.0.i = phi double [ %i.ax, %bb.g ], [ %i.az, %bb.h ]
  %i.ba = fptrunc double %.0.i to float
  %i.bb = fsub float %i.s, %i.ba                  ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.248
  %i.bd = fcmp olt float %i.bb, 1.000000e+00
  %spec.store.select = select i1 %i.bd, float 1.000000e+00, float %i.bb
  store float %spec.store.select, ptr %i.bc, align 4
  br label %bb.i

bb.i:                                             ; preds = %FastLog2.exit, %bb.e
  %i.be = add nuw nsw i64 %.248, 1                ; 2 uses
  %exitcond54.not = icmp eq i64 %i.be, %1
  br i1 %exitcond54.not, label %._crit_edge50, label %.lr.ph49, !llvm.loop !12

._crit_edge50:                                    ; preds = %bb.i, %FastLog2.exit39
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #10

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{!0, !23}
!1 = distinct !{!1, !23}
!2 = distinct !{!2, !23}
!3 = distinct !{!3, !23}
!4 = distinct !{!4, !23}
!5 = distinct !{!5, !23}
!6 = distinct !{!6, !23}
!7 = distinct !{!7, !23}
!8 = distinct !{!8, !23}
!9 = distinct !{!9, !23}
!10 = distinct !{!10, !23}
!11 = distinct !{!11, !23}
!12 = distinct !{!12, !23}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!18, !18, i64 0}
!22 = !{!17, !17, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"long", !17, i64 0}
!25 = !{!"BrotliHasherParams", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12}
!26 = !{!"BrotliDistanceParams", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !24, i64 16}
!27 = !{!"CompoundDictionary", !24, i64 0, !24, i64 8, !17, i64 16, !17, i64 144, !17, i64 272, !24, i64 400, !17, i64 408}
!28 = !{!"any pointer", !17, i64 0}
!29 = !{!"p1 _ZTS16BrotliDictionary", !28, i64 0}
!30 = !{!"p1 short", !28, i64 0}
!31 = !{!"p1 omnipotent char", !28, i64 0}
!32 = !{!"p1 _ZTS8DictWord", !28, i64 0}
!33 = !{!"p1 _ZTS14BrotliTrieNode", !28, i64 0}
!34 = !{!"BrotliTrieNode", !17, i64 0, !17, i64 1, !17, i64 2, !18, i64 4, !18, i64 8}
!35 = !{!"BrotliTrie", !33, i64 0, !24, i64 8, !24, i64 16, !34, i64 24}
!36 = !{!"p1 _ZTS27ContextualEncoderDictionary", !28, i64 0}
!37 = !{!"BrotliEncoderDictionary", !29, i64 0, !18, i64 8, !18, i64 12, !24, i64 16, !30, i64 24, !31, i64 32, !30, i64 40, !32, i64 48, !35, i64 56, !18, i64 96, !36, i64 104, !30, i64 112, !31, i64 120, !24, i64 128, !30, i64 136, !24, i64 144, !32, i64 152, !29, i64 160}
!38 = !{!"p1 _ZTS23BrotliEncoderDictionary", !28, i64 0}
!39 = !{!"ContextualEncoderDictionary", !18, i64 0, !17, i64 4, !17, i64 5, !17, i64 72, !24, i64 584, !37, i64 592, !38, i64 760}
!40 = !{!"SharedEncoderDictionary", !18, i64 0, !27, i64 8, !39, i64 544, !18, i64 1312}
!41 = !{!"BrotliEncoderParams", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !24, i64 16, !24, i64 24, !18, i64 32, !18, i64 36, !25, i64 40, !26, i64 56, !40, i64 80}
!42 = !{!41, !18, i64 8}
!43 = !{!41, !24, i64 16}
!44 = !{!"ZopfliNode", !18, i64 0, !18, i64 4, !18, i64 8, !17, i64 12}
!45 = !{!44, !18, i64 0}
!46 = !{!44, !18, i64 8}
!47 = !{!24, !24, i64 0}
!48 = !{!44, !18, i64 4}
!49 = !{!"short", !17, i64 0}
!50 = !{!"Command", !18, i64 0, !18, i64 4, !18, i64 8, !49, i64 12, !49, i64 14}
!51 = !{!50, !18, i64 0}
!52 = !{!50, !18, i64 4}
!53 = !{!49, !49, i64 0}
!54 = !{!41, !18, i64 4}
!55 = !{!27, !24, i64 8}
!56 = !{!27, !24, i64 0}
!57 = !{!"p1 float", !28, i64 0}
!58 = !{!"float", !17, i64 0}
!59 = !{!"ZopfliCostModel", !17, i64 0, !57, i64 2816, !18, i64 2824, !57, i64 2832, !58, i64 2840, !24, i64 2848, !17, i64 2856}
!60 = !{!59, !24, i64 2848}
!61 = !{!59, !57, i64 2832}
!62 = !{!26, !18, i64 12}
!63 = !{!59, !57, i64 2816}
!64 = !{!59, !18, i64 2824}
!65 = !{!"StartPosQueue", !17, i64 0, !24, i64 256}
!66 = !{!65, !24, i64 256}
!67 = !{!41, !18, i64 624}
!68 = !{!38, !38, i64 0}
!69 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!70 = !{!"BackwardMatch", !18, i64 0, !18, i64 4}
!71 = !{!70, !18, i64 0}
!72 = !{!70, !18, i64 4}
!73 = !{!"p1 int", !28, i64 0}
!74 = !{!"H10", !24, i64 0, !73, i64 8, !18, i64 16, !73, i64 24}
!75 = !{!74, !73, i64 8}
!76 = !{!74, !73, i64 24}
!77 = !{!74, !24, i64 0}
!78 = !{!74, !18, i64 16}
!79 = !{!41, !24, i64 72}
!80 = !{!"p1 _ZTS18PreparedDictionary", !28, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!"PreparedDictionary", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20}
!83 = !{!82, !18, i64 8}
!84 = !{!82, !18, i64 12}
!85 = !{!82, !18, i64 16}
!86 = !{!82, !18, i64 20}
!87 = !{!82, !18, i64 4}
!88 = !{!82, !18, i64 0}
!89 = !{!"llvm.loop.isvectorized", i32 1}
!90 = !{!"llvm.loop.unroll.runtime.disable"}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !{!58, !58, i64 0}
!93 = !{!"PosData", !24, i64 0, !17, i64 8, !58, i64 24, !58, i64 28}
!94 = !{!93, !24, i64 0}
!95 = !{!93, !58, i64 28}
!96 = !{!93, !58, i64 24}
!97 = !{i64 0, i64 8, !47, i64 8, i64 16, !22, i64 24, i64 4, !92, i64 28, i64 4, !92}
!98 = !{!"double", !17, i64 0}
!99 = !{!98, !98, i64 0}
!100 = !{!59, !58, i64 2840}
!101 = distinct !{!101, !23}
!102 = !{!41, !24, i64 96}
!103 = !{!26, !18, i64 4}
!104 = !{!26, !18, i64 0}
!105 = distinct !{!105, !"FindAllMatchesH10"}
!106 = distinct !{!106, !105, !"FindAllMatchesH10: argument 1"}
!107 = distinct !{!107, !105, !"FindAllMatchesH10: argument 0"}
!108 = distinct !{!108, !"StoreAndFindMatchesH10"}
!109 = distinct !{!109, !108, !"StoreAndFindMatchesH10: argument 0"}
!110 = distinct !{!110, !108, !"StoreAndFindMatchesH10: argument 1"}
!111 = distinct !{!111, !108, !"StoreAndFindMatchesH10: argument 3"}
!112 = distinct !{!112, !108, !"StoreAndFindMatchesH10: argument 2"}
!113 = distinct !{!113, !"LeftChildIndexH10"}
!114 = distinct !{!114, !113, !"LeftChildIndexH10: argument 0"}
!115 = distinct !{!115, !"LookupAllCompoundDictionaryMatches"}
end_hunk_0
