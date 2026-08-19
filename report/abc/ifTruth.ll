inline.NumInlined: 170
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }

@s_PMasks = internal unnamed_addr constant [5 x [3 x i64]] [[3 x i64] [i64 -7378697629483820647, i64 2459565876494606882, i64 4919131752989213764], [3 x i64] [i64 -4340410370284600381, i64 868082074056920076, i64 3472328296227680304], [3 x i64] [i64 -1148435428713435121, i64 67555025218437360, i64 1080880403494997760], [3 x i64] [i64 -72056494543077121, i64 280375465148160, i64 71776119077928960], [3 x i64] [i64 -281474976645121, i64 4294901760, i64 281470681743360]], align 16
@s_Truths6Neg = internal unnamed_addr constant [6 x i64] [i64 6148914691236517205, i64 3689348814741910323, i64 1085102592571150095, i64 71777214294589695, i64 281470681808895, i64 4294967295], align 16
@s_Truths6 = internal unnamed_addr constant [6 x i64] [i64 -6148914691236517206, i64 -3689348814741910324, i64 -1085102592571150096, i64 -71777214294589696, i64 -281470681808896, i64 -4294967296], align 16
@s_PPMasks = internal unnamed_addr constant [5 x [6 x [3 x i64]]] [[6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] [i64 -7378697629483820647, i64 2459565876494606882, i64 4919131752989213764], [3 x i64] [i64 -6510615555426900571, i64 723401728380766730, i64 5787213827046133840], [3 x i64] [i64 -6172840429334713771, i64 47851476196393130, i64 6124988953138320640], [3 x i64] [i64 -6149008514797120171, i64 187647121205930, i64 6148820867675914240], [3 x i64] [i64 -6148914692668172971, i64 2863311530, i64 6148914689804861440]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -4340410370284600381, i64 868082074056920076, i64 3472328296227680304], [3 x i64] [i64 -3732415143318664141, i64 57421771435671756, i64 3674993371882992384], [3 x i64] [i64 -3689517697150995661, i64 225176545447116, i64 3689292520605548544], [3 x i64] [i64 -3689348817318890701, i64 3435973836, i64 3689348813882916864]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -1148435428713435121, i64 67555025218437360, i64 1080880403494997760], [3 x i64] [i64 -1085350949055099121, i64 264913582878960, i64 1085086035472220160], [3 x i64] [i64 -1085102596360827121, i64 4042322160, i64 1085102592318504960]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -72056494543077121, i64 280375465148160, i64 71776119077928960], [3 x i64] [i64 -71777218556133121, i64 4278255360, i64 71777214277877760]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -281474976645121, i64 4294901760, i64 281470681743360]]], align 16
@Vec_MemHashKey.s_Primes = internal unnamed_addr constant [8 x i32] [i32 1699, i32 4177, i32 5147, i32 5647, i32 6343, i32 7103, i32 7873, i32 8147], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @If_CutTruthPermute(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = icmp sgt i32 %1, 1
  %i.c = sext i32 %3 to i64
  %.idx65.i = shl nsw i64 %i.c, 3                 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 %.idx65.i ; 2 uses
  %i.e = icmp sgt i32 %3, 0                       ; 3 uses
  %wide.trip.count73.i = zext i32 %3 to i64       ; 3 uses
  br i1 %i.b, label %.split.us, label %.split48.us

.split.us:                                        ; preds = %bb.a
  %i.f = add nsw i32 %1, -1                       ; 3 uses
  %.not35 = icmp eq ptr %0, null
  %wide.trip.count56 = zext i32 %i.f to i64       ; 3 uses
  br i1 %.not35, label %.lr.ph.us.us.preheader, label %.lr.ph.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.split.us
  %xtraiter103 = and i64 %wide.trip.count56, 1
  %i.g = icmp eq i32 %i.f, 1
  %unroll_iter107 = and i64 %wide.trip.count56, 4294967294
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  %lcmp.mod106 = trunc i32 %i.f to i1
  br label %.lr.ph.us.us

.lr.ph.us.preheader:                              ; preds = %.split.us
  %i.h = add i64 %.idx65.i, %i.a
  %min.iters.check = icmp ult i32 %3, 4
  %n.vec = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73.i
  br label %.lr.ph.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.split.us.us.us
  %.pre58 = load float, ptr %4, align 4, !tbaa !8 ; 2 uses
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %Abc_TtSwapAdjacent.exit.us.us.us.1
  %i.i = phi float [ %i.y, %Abc_TtSwapAdjacent.exit.us.us.us.1 ], [ %.pre58, %.lr.ph.us.us ] ; 3 uses
  %indvars.iv53 = phi i64 [ %indvars.iv.next54.1, %Abc_TtSwapAdjacent.exit.us.us.us.1 ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %.03138.us.us.us = phi i32 [ %.1.us.us.us.1, %Abc_TtSwapAdjacent.exit.us.us.us.1 ], [ 0, %.lr.ph.us.us ]
  %niter108 = phi i64 [ %niter108.next.1, %Abc_TtSwapAdjacent.exit.us.us.us.1 ], [ 0, %.lr.ph.us.us ]
  %indvars.iv.next54 = or disjoint i64 %indvars.iv53, 1 ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next54 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !8  ; 3 uses
  %i.l = fcmp ult float %i.i, %i.k
  br i1 %i.l, label %bb.b, label %Abc_TtSwapAdjacent.exit.us.us.us

bb.b:                                             ; preds = %.lr.ph.us.us.new
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv53
  store float %i.k, ptr %i.m, align 4, !tbaa !8
  store float %i.i, ptr %i.j, align 4, !tbaa !8
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv53 ; 2 uses
  %i.o = load <2 x i32>, ptr %i.n, align 4, !tbaa !10
  %i.p = shufflevector <2 x i32> %i.o, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.p, ptr %i.n, align 4, !tbaa !10
  br label %Abc_TtSwapAdjacent.exit.us.us.us

Abc_TtSwapAdjacent.exit.us.us.us:                 ; preds = %bb.b, %.lr.ph.us.us.new
  %i.q = phi float [ %i.k, %.lr.ph.us.us.new ], [ %i.i, %bb.b ] ; 3 uses
  %.1.us.us.us = phi i32 [ %.03138.us.us.us, %.lr.ph.us.us.new ], [ 1, %bb.b ]
  %indvars.iv.next54.1 = add nuw nsw i64 %indvars.iv53, 2 ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next54.1 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !8  ; 3 uses
  %i.t = fcmp ult float %i.q, %i.s
  br i1 %i.t, label %bb.c, label %Abc_TtSwapAdjacent.exit.us.us.us.1

bb.c:                                             ; preds = %Abc_TtSwapAdjacent.exit.us.us.us
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next54
  store float %i.s, ptr %i.u, align 4, !tbaa !8
  store float %i.q, ptr %i.r, align 4, !tbaa !8
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next54 ; 2 uses
  %i.w = load <2 x i32>, ptr %i.v, align 4, !tbaa !10
  %i.x = shufflevector <2 x i32> %i.w, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.x, ptr %i.v, align 4, !tbaa !10
  br label %Abc_TtSwapAdjacent.exit.us.us.us.1

Abc_TtSwapAdjacent.exit.us.us.us.1:               ; preds = %bb.c, %Abc_TtSwapAdjacent.exit.us.us.us
  %i.y = phi float [ %i.s, %Abc_TtSwapAdjacent.exit.us.us.us ], [ %i.q, %bb.c ] ; 2 uses
  %.1.us.us.us.1 = phi i32 [ %.1.us.us.us, %Abc_TtSwapAdjacent.exit.us.us.us ], [ 1, %bb.c ] ; 3 uses
  %niter108.next.1 = add i64 %niter108, 2         ; 2 uses
  %niter108.ncmp.1 = icmp eq i64 %niter108.next.1, %unroll_iter107
  br i1 %niter108.ncmp.1, label %._crit_edge.split.us.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !11

._crit_edge.split.us.us.us.unr-lcssa:             ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.1
  br i1 %lcmp.mod104.not, label %._crit_edge.split.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.us.us.us.unr-lcssa, %.lr.ph.us.us
  %.epil.init = phi float [ %.pre58, %.lr.ph.us.us ], [ %i.y, %._crit_edge.split.us.us.us.unr-lcssa ] ; 2 uses
  %indvars.iv53.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %indvars.iv.next54.1, %._crit_edge.split.us.us.us.unr-lcssa ] ; 3 uses
  %.03138.us.us.us.epil.init = phi i32 [ 0, %.lr.ph.us.us ], [ %.1.us.us.us.1, %._crit_edge.split.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod106)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv53.epil.init
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !8 ; 2 uses
  %i.ac = fcmp ult float %.epil.init, %i.ab
  br i1 %i.ac, label %bb.d, label %._crit_edge.split.us.us.us

bb.d:                                             ; preds = %.epil.preheader
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv53.epil.init
  store float %i.ab, ptr %i.ad, align 4, !tbaa !8
  store float %.epil.init, ptr %i.aa, align 4, !tbaa !8
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv53.epil.init ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ae, align 4, !tbaa !10
  %i.ag = shufflevector <2 x i32> %i.af, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ag, ptr %i.ae, align 4, !tbaa !10
  br label %._crit_edge.split.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %.epil.preheader, %bb.d, %._crit_edge.split.us.us.us.unr-lcssa
  %.1.us.us.us.lcssa = phi i32 [ %.1.us.us.us.1, %._crit_edge.split.us.us.us.unr-lcssa ], [ %.03138.us.us.us.epil.init, %.epil.preheader ], [ 1, %bb.d ]
  %.not.not.us.us = icmp eq i32 %.1.us.us.us.lcssa, 0
  br i1 %.not.not.us.us, label %.split48.us, label %.lr.ph.us.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.split.us44
  %.pre = load float, ptr %4, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.us, %Abc_TtSwapAdjacent.exit.us42
  %i.ah = phi float [ %.pre, %.lr.ph.us ], [ %i.dp, %Abc_TtSwapAdjacent.exit.us42 ] ; 10 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %Abc_TtSwapAdjacent.exit.us42 ] ; 9 uses
  %.03138.us41 = phi i32 [ 0, %.lr.ph.us ], [ %.1.us43, %Abc_TtSwapAdjacent.exit.us42 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !8 ; 3 uses
  %i.ak = fcmp ult float %i.ah, %i.aj
  br i1 %i.ak, label %bb.f, label %Abc_TtSwapAdjacent.exit.us42

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store float %i.aj, ptr %i.al, align 4, !tbaa !8
  store float %i.ah, ptr %i.ai, align 4, !tbaa !8
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  %i.an = load <2 x i32>, ptr %i.am, align 4, !tbaa !10
  %i.ao = shufflevector <2 x i32> %i.an, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ao, ptr %i.am, align 4, !tbaa !10
  %i.ap = icmp samesign ult i64 %indvars.iv, 5
  br i1 %i.ap, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = icmp eq i64 %indvars.iv, 5
  br i1 %i.aq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp samesign ult i64 %indvars.iv, 7
  %i.as = trunc i64 %indvars.iv to i32
  %i.at = add i32 %i.as, -6
  %i.au = shl nuw i32 1, %i.at
  %i.av = select i1 %i.ar, i32 1, i32 %i.au       ; 7 uses
  br i1 %i.e, label %.preheader.lr.ph.i.us, label %Abc_TtSwapAdjacent.exit.us42

.preheader.lr.ph.i.us:                            ; preds = %bb.h
  %i.aw = icmp sgt i32 %i.av, 0
  %i.ax = shl i32 %i.av, 2                        ; 2 uses
  %i.ay = sext i32 %i.ax to i64                   ; 3 uses
  br i1 %i.aw, label %.preheader.us.preheader.i.us, label %Abc_TtSwapAdjacent.exit.us42

.preheader.us.preheader.i.us:                     ; preds = %.preheader.lr.ph.i.us
  %i.az = shl nuw nsw i32 %i.av, 1
  %i.ba = zext nneg i32 %i.av to i64              ; 6 uses
  %i.bb = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bc = shl nuw nsw i64 %i.ba, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.bc
  %i.bd = shl nsw i64 %i.ay, 3                    ; 4 uses
  %i.be = add i64 %i.bd, %i.a
  %umax = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.be)
  %i.bf = sub i64 %umax, %i.a                     ; 2 uses
  %i.bg = icmp ne i64 %i.bf, %i.bd
  %umin = zext i1 %i.bg to i64                    ; 2 uses
  %i.bh = or disjoint i64 %i.bd, %umin
  %i.bi = sub i64 %i.bf, %i.bh
  %umax79 = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %6 = udiv i64 %i.bi, %umax79
  %7 = add i64 %6, %umin
  %i.bj = shl i64 %7, 3
  %8 = mul i64 %i.bj, %i.ay                       ; 2 uses
  %i.bk = shl nuw nsw i64 %i.ba, 4
  %9 = getelementptr i8, ptr %0, i64 %8
  %scevgep80 = getelementptr i8, ptr %9, i64 %i.bk
  %10 = shl nuw nsw i64 %i.bb, 3                  ; 2 uses
  %scevgep81 = getelementptr i8, ptr %0, i64 %10
  %i.bl = getelementptr i8, ptr %0, i64 %8
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bc
  %scevgep82 = getelementptr i8, ptr %i.bm, i64 %10
  %min.iters.check85 = icmp ult i32 %i.av, 6
  %bound0 = icmp ult ptr %scevgep, %scevgep82
  %bound1 = icmp ult ptr %scevgep81, %scevgep80
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.ax, 0
  %11 = or i1 %found.conflict, %stride.check
  %n.vec87 = and i64 %i.ba, 2147483644
  %xtraiter = and i64 %i.ba, 1
  %i.bn = icmp eq i32 %i.av, 1
  %unroll_iter = and i64 %i.ba, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod102 = trunc i32 %i.av to i1
  br label %.preheader.us.i.us

.preheader.us.i.us:                               ; preds = %._crit_edge.us.i.us, %.preheader.us.preheader.i.us
  %.061.us.i.us = phi ptr [ %i.bz, %._crit_edge.us.i.us ], [ %0, %.preheader.us.preheader.i.us ] ; 3 uses
  %invariant.gep.i.us = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us, i64 %i.ba ; 4 uses
  %invariant.gep80.i.us = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us, i64 %i.bb ; 4 uses
  %brmerge = select i1 %min.iters.check85, i1 true, i1 %11
  br i1 %brmerge, label %scalar.ph84.preheader.a, label %vector.body88

scalar.ph84.preheader.a:                          ; preds = %.preheader.us.i.us
  br i1 %i.bn, label %scalar.ph84.epil.preheader, label %scalar.ph84

vector.body88:                                    ; preds = %.preheader.us.i.us, %vector.body88
  %index89 = phi i64 [ %index.next94, %vector.body88 ], [ 0, %.preheader.us.i.us ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us, i64 %index89 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %wide.load90 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !13, !alias.scope !15, !noalias !18
  %wide.load91 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !13, !alias.scope !15, !noalias !18
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us, i64 %index89 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %wide.load92 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !13, !alias.scope !18
  %wide.load93 = load <2 x i64>, ptr %i.br, align 8, !tbaa !13, !alias.scope !18
  store <2 x i64> %wide.load92, ptr %i.bo, align 8, !tbaa !13, !alias.scope !15, !noalias !18
  store <2 x i64> %wide.load93, ptr %i.bp, align 8, !tbaa !13, !alias.scope !15, !noalias !18
  store <2 x i64> %wide.load90, ptr %i.bq, align 8, !tbaa !13, !alias.scope !18
  store <2 x i64> %wide.load91, ptr %i.br, align 8, !tbaa !13, !alias.scope !18
  %index.next94 = add nuw i64 %index89, 4         ; 2 uses
  %i.bs = icmp eq i64 %index.next94, %n.vec87
  br i1 %i.bs, label %._crit_edge.us.i.us, label %vector.body88, !llvm.loop !20

scalar.ph84:                                      ; preds = %scalar.ph84.preheader.a, %scalar.ph84
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.1, %scalar.ph84 ], [ 0, %scalar.ph84.preheader.a ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph84 ], [ 0, %scalar.ph84.preheader.a ]
  %gep.i.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us ; 2 uses
  %i.bt = load i64, ptr %gep.i.us, align 8, !tbaa !13
  %gep81.i.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us, i64 %indvars.iv.i.us ; 2 uses
  %i.bu = load i64, ptr %gep81.i.us, align 8, !tbaa !13
  store i64 %i.bu, ptr %gep.i.us, align 8, !tbaa !13
  store i64 %i.bt, ptr %gep81.i.us, align 8, !tbaa !13
  %indvars.iv.next.i.us = or disjoint i64 %indvars.iv.i.us, 1 ; 2 uses
  %gep.i.us.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.next.i.us ; 2 uses
  %i.bv = load i64, ptr %gep.i.us.1, align 8, !tbaa !13
  %gep81.i.us.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us, i64 %indvars.iv.next.i.us ; 2 uses
  %i.bw = load i64, ptr %gep81.i.us.1, align 8, !tbaa !13
  store i64 %i.bw, ptr %gep.i.us.1, align 8, !tbaa !13
  store i64 %i.bv, ptr %gep81.i.us.1, align 8, !tbaa !13
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.us.loopexit.unr-lcssa, label %scalar.ph84, !llvm.loop !23

._crit_edge.us.i.us.loopexit.unr-lcssa:           ; preds = %scalar.ph84
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.us, label %scalar.ph84.epil.preheader

scalar.ph84.epil.preheader:                       ; preds = %._crit_edge.us.i.us.loopexit.unr-lcssa, %scalar.ph84.preheader.a
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %scalar.ph84.preheader.a ], [ %indvars.iv.next.i.us.1, %._crit_edge.us.i.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %gep.i.us.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us.epil.init ; 2 uses
  %i.bx = load i64, ptr %gep.i.us.epil, align 8, !tbaa !13
  %gep81.i.us.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us, i64 %indvars.iv.i.us.epil.init ; 2 uses
  %i.by = load i64, ptr %gep81.i.us.epil, align 8, !tbaa !13
  store i64 %i.by, ptr %gep.i.us.epil, align 8, !tbaa !13
  store i64 %i.bx, ptr %gep81.i.us.epil, align 8, !tbaa !13
  br label %._crit_edge.us.i.us

._crit_edge.us.i.us:                              ; preds = %vector.body88, %scalar.ph84.epil.preheader, %._crit_edge.us.i.us.loopexit.unr-lcssa
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us, i64 %i.ay ; 2 uses
  %i.ca = icmp ult ptr %i.bz, %i.d
  br i1 %i.ca, label %.preheader.us.i.us, label %Abc_TtSwapAdjacent.exit.us42, !llvm.loop !24

bb.i:                                             ; preds = %bb.g
  br i1 %i.e, label %.lr.ph.i.us, label %Abc_TtSwapAdjacent.exit.us42

.lr.ph.i.us:                                      ; preds = %bb.i, %.lr.ph.i.us
  %.05462.i.us = phi ptr [ %i.ce, %.lr.ph.i.us ], [ %0, %bb.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.05462.i.us, i64 4 ; 2 uses
  %i.cc = load <2 x i32>, ptr %i.cb, align 4, !tbaa !10
  %i.cd = shufflevector <2 x i32> %i.cc, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.cd, ptr %i.cb, align 4, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %.05462.i.us, i64 16 ; 2 uses
  %i.cf = icmp ult ptr %i.ce, %i.d
  br i1 %i.cf, label %.lr.ph.i.us, label %Abc_TtSwapAdjacent.exit.us42, !llvm.loop !25

bb.j:                                             ; preds = %bb.f
  br i1 %i.e, label %.lr.ph64.i.us, label %Abc_TtSwapAdjacent.exit.us42

.lr.ph64.i.us:                                    ; preds = %bb.j
  %i.cg = trunc nuw nsw i64 %indvars.iv to i32
  %i.ch = shl nuw nsw i32 1, %i.cg
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr @s_PMasks, i64 %indvars.iv ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !13 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !13 ; 2 uses
  %i.cm = zext nneg i32 %i.ch to i64              ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !13 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph64.i.us
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cj, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert72 = insertelement <2 x i64> poison, i64 %i.cl, i64 0
  %broadcast.splat73 = shufflevector <2 x i64> %broadcast.splatinsert72, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert74 = insertelement <2 x i64> poison, i64 %i.cm, i64 0
  %broadcast.splat75 = shufflevector <2 x i64> %broadcast.splatinsert74, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert76 = insertelement <2 x i64> poison, i64 %i.co, i64 0
  %broadcast.splat77 = shufflevector <2 x i64> %broadcast.splatinsert76, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.cp, align 8, !tbaa !13 ; 3 uses
  %wide.load78 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !13 ; 3 uses
  %i.cr = and <2 x i64> %wide.load, %broadcast.splat
  %i.cs = and <2 x i64> %wide.load78, %broadcast.splat
  %i.ct = and <2 x i64> %wide.load, %broadcast.splat73
  %i.cu = and <2 x i64> %wide.load78, %broadcast.splat73
  %i.cv = shl <2 x i64> %i.ct, %broadcast.splat75
  %i.cw = shl <2 x i64> %i.cu, %broadcast.splat75
  %i.cx = or <2 x i64> %i.cv, %i.cr
  %i.cy = or <2 x i64> %i.cw, %i.cs
  %i.cz = and <2 x i64> %wide.load, %broadcast.splat77
  %i.da = and <2 x i64> %wide.load78, %broadcast.splat77
  %i.db = lshr <2 x i64> %i.cz, %broadcast.splat75
  %i.dc = lshr <2 x i64> %i.da, %broadcast.splat75
  %i.dd = or <2 x i64> %i.cx, %i.db
  %i.de = or <2 x i64> %i.cy, %i.dc
  store <2 x i64> %i.dd, ptr %i.cp, align 8, !tbaa !13
  store <2 x i64> %i.de, ptr %i.cq, align 8, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtSwapAdjacent.exit.us42, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph64.i.us, %middle.block
  %indvars.iv70.i.us.ph = phi i64 [ 0, %.lr.ph64.i.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv70.i.us = phi i64 [ %indvars.iv.next71.i.us, %scalar.ph ], [ %indvars.iv70.i.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i.us ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !13 ; 3 uses
  %i.di = and i64 %i.dh, %i.cj
  %i.dj = and i64 %i.dh, %i.cl
  %i.dk = shl i64 %i.dj, %i.cm
  %i.dl = or i64 %i.dk, %i.di
  %i.dm = and i64 %i.dh, %i.co
  %i.dn = lshr i64 %i.dm, %i.cm
  %i.do = or i64 %i.dl, %i.dn
  store i64 %i.do, ptr %i.dg, align 8, !tbaa !13
  %indvars.iv.next71.i.us = add nuw nsw i64 %indvars.iv70.i.us, 1 ; 2 uses
  %exitcond74.not.i.us = icmp eq i64 %indvars.iv.next71.i.us, %wide.trip.count73.i
  br i1 %exitcond74.not.i.us, label %Abc_TtSwapAdjacent.exit.us42, label %scalar.ph, !llvm.loop !27

Abc_TtSwapAdjacent.exit.us42:                     ; preds = %._crit_edge.us.i.us, %.lr.ph.i.us, %scalar.ph, %middle.block, %bb.j, %bb.i, %.preheader.lr.ph.i.us, %bb.h, %bb.e
  %i.dp = phi float [ %i.aj, %bb.e ], [ %i.ah, %.lr.ph.i.us ], [ %i.ah, %bb.j ], [ %i.ah, %middle.block ], [ %i.ah, %bb.i ], [ %i.ah, %.preheader.lr.ph.i.us ], [ %i.ah, %bb.h ], [ %i.ah, %scalar.ph ], [ %i.ah, %._crit_edge.us.i.us ]
  %.1.us43 = phi i32 [ %.03138.us41, %bb.e ], [ 1, %.lr.ph.i.us ], [ 1, %bb.j ], [ 1, %middle.block ], [ 1, %bb.i ], [ 1, %.preheader.lr.ph.i.us ], [ 1, %bb.h ], [ 1, %scalar.ph ], [ 1, %._crit_edge.us.i.us ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count56
  br i1 %exitcond.not, label %._crit_edge.split.us44, label %bb.e, !llvm.loop !11

._crit_edge.split.us44:                           ; preds = %Abc_TtSwapAdjacent.exit.us42
  %.not.not.us = icmp eq i32 %.1.us43, 0
  br i1 %.not.not.us, label %.split48.us, label %.lr.ph.us

.split48.us:                                      ; preds = %._crit_edge.split.us44, %._crit_edge.split.us.us.us, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @If_CutRotatePins(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.d = load i64, ptr %i.c, align 4              ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = lshr i32 %i.e, 24                        ; 4 uses
  %.not45 = icmp eq i32 %i.f, 0
  br i1 %.not45, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.h, align 8, !tbaa !46
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !10
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 92
  %i.o = load float, ptr %i.n, align 4, !tbaa !50
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.o, ptr %i.p, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !52

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.r = lshr i64 %i.d, 24
  %i.s = and i64 %i.r, 255                        ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %If_CutTruthWR.exit

bb.d:                                             ; preds = %.critedge
  %i.w = icmp ugt i32 %i.e, 33554431
  br i1 %i.w, label %.split.us.i, label %If_CutTruthPermute.exit

.split.us.i:                                      ; preds = %bb.d
  %i.x = add nsw i32 %i.f, -1                     ; 3 uses
  %wide.trip.count56.i = zext i32 %i.x to i64     ; 2 uses
  %xtraiter56 = and i64 %wide.trip.count56.i, 1
  %i.y = icmp eq i32 %i.x, 1
  %unroll_iter = and i64 %wide.trip.count56.i, 4294967294
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  %lcmp.mod59 = trunc i32 %i.x to i1
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.split.us.us.us.i, %.split.us.i
  %.pre58.i = load float, ptr %i.a, align 16, !tbaa !8 ; 2 uses
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %Abc_TtSwapAdjacent.exit.us.us.us.i.1
  %i.z = phi float [ %i.ap, %Abc_TtSwapAdjacent.exit.us.us.us.i.1 ], [ %.pre58.i, %.lr.ph.us.us.i ] ; 3 uses
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i.1, %Abc_TtSwapAdjacent.exit.us.us.us.i.1 ], [ 0, %.lr.ph.us.us.i ] ; 4 uses
  %.03138.us.us.us.i = phi i32 [ %.1.us.us.us.i.1, %Abc_TtSwapAdjacent.exit.us.us.us.i.1 ], [ 0, %.lr.ph.us.us.i ]
  %niter = phi i64 [ %niter.next.1, %Abc_TtSwapAdjacent.exit.us.us.us.i.1 ], [ 0, %.lr.ph.us.us.i ]
  %indvars.iv.next54.i = or disjoint i64 %indvars.iv53.i, 1 ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next54.i ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !8 ; 3 uses
  %i.ac = fcmp ult float %i.z, %i.ab
  br i1 %i.ac, label %bb.e, label %Abc_TtSwapAdjacent.exit.us.us.us.i

end_hunk_0
begin_hunk_1_@Abc_TtSwapVars:bb.a
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph208
  %index219 = phi i64 [ 0, %vector.ph208 ], [ %index.next222, %vector.body218 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index219 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load220 = load <2 x i64>, ptr %i.am, align 8, !tbaa !13 ; 3 uses
  %wide.load221 = load <2 x i64>, ptr %i.an, align 8, !tbaa !13 ; 3 uses
  %i.ao = and <2 x i64> %broadcast.splat211, %wide.load220
  %i.ap = and <2 x i64> %broadcast.splat211, %wide.load221
  %i.aq = and <2 x i64> %broadcast.splat213, %wide.load220
  %i.ar = and <2 x i64> %broadcast.splat213, %wide.load221
  %i.as = shl <2 x i64> %i.aq, %broadcast.splat215
  %i.at = shl <2 x i64> %i.ar, %broadcast.splat215
  %i.au = or <2 x i64> %i.as, %i.ao
  %i.av = or <2 x i64> %i.at, %i.ap
  %i.aw = and <2 x i64> %broadcast.splat217, %wide.load220
  %i.ax = and <2 x i64> %broadcast.splat217, %wide.load221
  %i.ay = lshr <2 x i64> %i.aw, %broadcast.splat215
  %i.az = lshr <2 x i64> %i.ax, %broadcast.splat215
  %i.ba = or <2 x i64> %i.au, %i.ay
  %i.bb = or <2 x i64> %i.av, %i.az
  store <2 x i64> %i.ba, ptr %i.am, align 8, !tbaa !13
  store <2 x i64> %i.bb, ptr %i.an, align 8, !tbaa !13
  %index.next222 = add nuw i64 %index219, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next222, %n.vec209
  br i1 %i.bc, label %.loopexit, label %vector.body218, !llvm.loop !181

scalar.ph206:                                     ; preds = %.lr.ph
  %i.bd = load i64, ptr %0, align 8, !tbaa !13    ; 3 uses
  %i.be = and i64 %i.af, %i.bd
  %i.bf = and i64 %i.ah, %i.bd
  %i.bg = shl i64 %i.bf, %i.ai
  %i.bh = or i64 %i.bg, %i.be
  %i.bi = and i64 %i.ak, %i.bd
  %i.bj = lshr i64 %i.bi, %i.ai
  %i.bk = or i64 %i.bh, %i.bj
  store i64 %i.bk, ptr %0, align 8, !tbaa !13
  %exitcond160.not = icmp slt i32 %i.y, 2
  br i1 %exitcond160.not, label %.loopexit, label %scalar.ph206.1

scalar.ph206.1:                                   ; preds = %scalar.ph206
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !13 ; 3 uses
  %i.bn = and i64 %i.af, %i.bm
  %i.bo = and i64 %i.ah, %i.bm
  %i.bp = shl i64 %i.bo, %i.ai
  %i.bq = or i64 %i.bp, %i.bn
  %i.br = and i64 %i.ak, %i.bm
  %i.bs = lshr i64 %i.br, %i.ai
  %i.bt = or i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !13
  %exitcond160.not.1 = icmp eq i32 %i.x, 1
  br i1 %exitcond160.not.1, label %.loopexit, label %scalar.ph206.2

scalar.ph206.2:                                   ; preds = %scalar.ph206.1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !13 ; 3 uses
  %i.bw = and i64 %i.af, %i.bv
  %i.bx = and i64 %i.ah, %i.bv
  %i.by = shl i64 %i.bx, %i.ai
  %i.bz = or i64 %i.by, %i.bw
  %i.ca = and i64 %i.ak, %i.bv
  %i.cb = lshr i64 %i.ca, %i.ai
  %i.cc = or i64 %i.bz, %i.cb
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !13
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.cd = icmp slt i32 %spec.select117, 6
  %i.ce = add nsw i32 %1, -6                      ; 3 uses
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = sext i32 %i.cf to i64
  %.idx132 = shl nsw i64 %i.cg, 3
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %.idx132 ; 2 uses
  br i1 %i.cd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ci = add nsw i32 %spec.select, -6            ; 3 uses
  %i.cj = shl nuw i32 1, %i.ci                    ; 3 uses
  %.not133 = icmp eq i32 %i.ce, 31
  br i1 %.not133, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ck = shl nuw nsw i32 1, %spec.select117
  %.not134 = icmp eq i32 %i.ci, 31
  %i.cl = zext nneg i32 %i.ck to i64              ; 3 uses
  %i.cm = shl i32 2, %i.ci
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  br i1 %.not134, label %.loopexit, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.co = sext i32 %spec.select117 to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !13 ; 5 uses
  %i.cr = xor i64 %i.cq, -1                       ; 2 uses
  %i.cs = sext i32 %i.cj to i64                   ; 2 uses
  %smax152 = tail call i32 @llvm.smax.i32(i32 %i.cj, i32 1)
  %wide.trip.count153 = zext nneg i32 %smax152 to i64 ; 3 uses
  %i.ct = shl nuw nsw i64 %wide.trip.count153, 3  ; 2 uses
  %i.cu = shl nsw i64 %i.cn, 3
  %i.cv = shl nsw i64 %i.cs, 3                    ; 2 uses
  %min.iters.check191 = icmp slt i32 %i.cj, 2
  %i.cw = getelementptr i8, ptr %0, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.ct
  %i.cy = getelementptr i8, ptr %0, i64 %i.cv
  %i.cz = getelementptr i8, ptr %0, i64 %i.ct
  %n.vec193 = and i64 %wide.trip.count153, 2147483646
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cq, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert194 = insertelement <2 x i64> poison, i64 %i.cl, i64 0
  %broadcast.splat195 = shufflevector <2 x i64> %broadcast.splatinsert194, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert196 = insertelement <2 x i64> poison, i64 %i.cr, i64 0
  %broadcast.splat197 = shufflevector <2 x i64> %broadcast.splatinsert196, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvar182 = phi i64 [ %indvar.next183, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %.0128.us = phi ptr [ %i.dx, %._crit_edge.us ], [ %0, %.preheader.lr.ph.split.us ] ; 5 uses
  %invariant.gep169 = getelementptr [8 x i8], ptr %.0128.us, i64 %i.cs ; 2 uses
  br i1 %min.iters.check191, label %scalar.ph190.preheader, label %vector.memcheck181

scalar.ph190.preheader:                           ; preds = %vector.memcheck181, %.preheader.us
  br label %scalar.ph190

vector.memcheck181:                               ; preds = %.preheader.us
  %i.da = mul i64 %i.cu, %indvar182               ; 3 uses
  %scevgep186 = getelementptr i8, ptr %i.cx, i64 %i.da
  %scevgep185 = getelementptr i8, ptr %i.cy, i64 %i.da
  %scevgep184 = getelementptr i8, ptr %i.cz, i64 %i.da
  %bound0187 = icmp ult ptr %.0128.us, %scevgep186
  %bound1188 = icmp ult ptr %scevgep185, %scevgep184
  %found.conflict189 = and i1 %bound0187, %bound1188
  br i1 %found.conflict189, label %scalar.ph190.preheader, label %vector.body198

vector.body198:                                   ; preds = %vector.memcheck181, %vector.body198
  %index199 = phi i64 [ %index.next202, %vector.body198 ], [ 0, %vector.memcheck181 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.0128.us, i64 %index199 ; 2 uses
  %wide.load200 = load <2 x i64>, ptr %i.db, align 8, !tbaa !13, !alias.scope !182, !noalias !185 ; 2 uses
  %i.dc = and <2 x i64> %broadcast.splat, %wide.load200
  %i.dd = lshr <2 x i64> %i.dc, %broadcast.splat195
  %i.de = getelementptr [8 x i8], ptr %invariant.gep169, i64 %index199 ; 2 uses
  %wide.load201 = load <2 x i64>, ptr %i.de, align 8, !tbaa !13, !alias.scope !185 ; 2 uses
  %i.df = shl <2 x i64> %wide.load201, %broadcast.splat195
  %i.dg = and <2 x i64> %i.df, %broadcast.splat
  %i.dh = and <2 x i64> %wide.load200, %broadcast.splat197
  %i.di = or <2 x i64> %i.dg, %i.dh
  store <2 x i64> %i.di, ptr %i.db, align 8, !tbaa !13, !alias.scope !182, !noalias !185
  %i.dj = and <2 x i64> %wide.load201, %broadcast.splat
  %i.dk = or <2 x i64> %i.dj, %i.dd
  store <2 x i64> %i.dk, ptr %i.de, align 8, !tbaa !13, !alias.scope !185
  %index.next202 = add nuw i64 %index199, 2       ; 2 uses
  %i.dl = icmp eq i64 %index.next202, %n.vec193
  br i1 %i.dl, label %._crit_edge.us, label %vector.body198, !llvm.loop !187

scalar.ph190:                                     ; preds = %scalar.ph190.preheader, %scalar.ph190
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph190 ], [ 0, %scalar.ph190.preheader ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.0128.us, i64 %indvars.iv149 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !13 ; 2 uses
  %i.do = and i64 %i.cq, %i.dn
  %i.dp = lshr i64 %i.do, %i.cl
  %gep170 = getelementptr [8 x i8], ptr %invariant.gep169, i64 %indvars.iv149 ; 2 uses
  %i.dq = load i64, ptr %gep170, align 8, !tbaa !13 ; 2 uses
  %i.dr = shl i64 %i.dq, %i.cl
  %i.ds = and i64 %i.dr, %i.cq
  %i.dt = and i64 %i.dn, %i.cr
  %i.du = or i64 %i.ds, %i.dt
  store i64 %i.du, ptr %i.dm, align 8, !tbaa !13
  %i.dv = and i64 %i.dq, %i.cq
  %i.dw = or i64 %i.dv, %i.dp
  store i64 %i.dw, ptr %gep170, align 8, !tbaa !13
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge.us, label %scalar.ph190, !llvm.loop !188

._crit_edge.us:                                   ; preds = %vector.body198, %scalar.ph190
  %i.dx = getelementptr inbounds [8 x i8], ptr %.0128.us, i64 %i.cn ; 2 uses
  %i.dy = icmp ult ptr %i.dx, %i.ch
  %indvar.next183 = add i64 %indvar182, 1
  br i1 %i.dy, label %.preheader.us, label %.loopexit, !llvm.loop !189

bb.h:                                             ; preds = %bb.f
  %i.dz = add nsw i32 %spec.select117, -6         ; 3 uses
  %i.ea = shl nuw i32 1, %i.dz                    ; 4 uses
  %i.eb = add nsw i32 %spec.select, -6            ; 3 uses
  %i.ec = shl nuw i32 1, %i.eb                    ; 2 uses
  %.not = icmp eq i32 %i.ce, 31
  br i1 %.not, label %.loopexit, label %.preheader120.lr.ph

.preheader120.lr.ph:                              ; preds = %bb.h
  %.not130 = icmp eq i32 %i.eb, 31
  %i.ed = shl i32 2, %i.eb
  %i.ee = sext i32 %i.ed to i64                   ; 2 uses
  %.not131 = icmp eq i32 %i.dz, 31
  %or.cond = select i1 %.not130, i1 true, i1 %.not131
  br i1 %or.cond, label %.loopexit, label %.preheader120.us.us.preheader

.preheader120.us.us.preheader:                    ; preds = %.preheader120.lr.ph
  %i.ef = shl i32 2, %i.dz                        ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ea, i32 1) ; 2 uses
  %i.eg = sext i32 %i.ef to i64                   ; 5 uses
  %i.eh = sext i32 %i.ea to i64                   ; 2 uses
  %i.ei = sext i32 %i.ec to i64                   ; 4 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 4 uses
  %i.ej = shl nsw i64 %i.eh, 3                    ; 2 uses
  %i.ek = shl nsw i64 %i.ee, 3
  %smax173 = tail call i64 @llvm.smax.i64(i64 %i.eg, i64 %i.ei)
  %i.el = icmp slt i32 %i.ef, %i.ec
  %umin = zext i1 %i.el to i64                    ; 2 uses
  %i.em = or disjoint i64 %umin, %i.eg
  %i.en = sub i64 %smax173, %i.em
  %umax = tail call i64 @llvm.umax.i64(i64 %i.eg, i64 1)
  %i.eo = udiv i64 %i.en, %umax
  %i.ep = add i64 %i.eo, %umin
  %i.eq = mul i64 %i.ep, %i.eg
  %4 = shl i64 %i.eq, 3                           ; 2 uses
  %5 = shl nuw nsw i64 %wide.trip.count, 3        ; 2 uses
  %i.er = shl nsw i64 %i.ei, 3                    ; 2 uses
  %6 = getelementptr i8, ptr %0, i64 %i.ej
  %7 = getelementptr i8, ptr %0, i64 %i.er
  %8 = getelementptr i8, ptr %0, i64 %4
  %9 = getelementptr i8, ptr %8, i64 %i.ej
  %i.es = getelementptr i8, ptr %9, i64 %5
  %i.et = getelementptr i8, ptr %0, i64 %4
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.er
  %10 = getelementptr i8, ptr %i.eu, i64 %5
  %min.iters.check = icmp slt i32 %i.ea, 6
  %stride.check = icmp slt i32 %i.ef, 0
  %n.vec = and i64 %wide.trip.count, 2147483644
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ev = icmp slt i32 %i.ea, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod231 = trunc i32 %smax to i1
  br label %.preheader120.us.us

.preheader120.us.us:                              ; preds = %.preheader120.us.us.preheader, %._crit_edge124.us.us
  %indvar = phi i64 [ 0, %.preheader120.us.us.preheader ], [ %indvar.next, %._crit_edge124.us.us ] ; 2 uses
  %.1125.us.us = phi ptr [ %0, %.preheader120.us.us.preheader ], [ %i.fp, %._crit_edge124.us.us ] ; 3 uses
  %i.ew = mul i64 %i.ek, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %6, i64 %i.ew
  %scevgep175 = getelementptr i8, ptr %7, i64 %i.ew
  %invariant.gep = getelementptr [8 x i8], ptr %.1125.us.us, i64 %i.eh
  %invariant.gep167.a = getelementptr [8 x i8], ptr %.1125.us.us, i64 %i.ei
  %scevgep174 = getelementptr i8, ptr %i.es, i64 %i.ew
  %scevgep176.a = getelementptr i8, ptr %10, i64 %i.ew
  %bound0 = icmp ult ptr %scevgep, %scevgep176.a
  %bound1.a = icmp ult ptr %scevgep175, %scevgep174
  %found.conflict = and i1 %bound0, %bound1.a
  %11 = or i1 %found.conflict, %stride.check
  br label %.preheader119.us.us

scalar.ph:                                        ; preds = %scalar.ph.preheader.a, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader.a ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader.a ]
  %i.ex = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !13
  %i.ez = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !13
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !13
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !13
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fb = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv.next ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !13
  %i.fd = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv.next ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !13
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !13
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !190

.preheader119.us.us:                              ; preds = %.preheader120.us.us, %._crit_edge.us.us
  %indvars.iv146 = phi i64 [ 0, %.preheader120.us.us ], [ %indvars.iv.next147, %._crit_edge.us.us ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv146 ; 4 uses
  %gep168 = getelementptr [8 x i8], ptr %invariant.gep167.a, i64 %indvars.iv146 ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %11
  br i1 %brmerge, label %scalar.ph.preheader.a, label %vector.body

scalar.ph.preheader.a:                            ; preds = %.preheader119.us.us
  br i1 %i.ev, label %scalar.ph.epil.preheader, label %scalar.ph

vector.body:                                      ; preds = %.preheader119.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader119.us.us ] ; 3 uses
  %i.ff = getelementptr [8 x i8], ptr %gep, i64 %index ; 3 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 16     ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ff, align 8, !tbaa !13, !alias.scope !191, !noalias !194
  %wide.load178 = load <2 x i64>, ptr %i.fg, align 8, !tbaa !13, !alias.scope !191, !noalias !194
  %i.fh = getelementptr [8 x i8], ptr %gep168, i64 %index ; 3 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 16     ; 2 uses
  %wide.load179 = load <2 x i64>, ptr %i.fh, align 8, !tbaa !13, !alias.scope !194
  %wide.load180 = load <2 x i64>, ptr %i.fi, align 8, !tbaa !13, !alias.scope !194
  store <2 x i64> %wide.load179, ptr %i.ff, align 8, !tbaa !13, !alias.scope !191, !noalias !194
  store <2 x i64> %wide.load180, ptr %i.fg, align 8, !tbaa !13, !alias.scope !191, !noalias !194
  store <2 x i64> %wide.load, ptr %i.fh, align 8, !tbaa !13, !alias.scope !194
  store <2 x i64> %wide.load178, ptr %i.fi, align 8, !tbaa !13, !alias.scope !194
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %._crit_edge.us.us, label %vector.body, !llvm.loop !196

._crit_edge.us.us.loopexit.unr-lcssa:             ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.us.loopexit.unr-lcssa, %scalar.ph.preheader.a
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader.a ], [ %indvars.iv.next.1, %._crit_edge.us.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod231)
  %i.fk = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !13
  %i.fm = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv.epil.init ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !13
  store i64 %i.fn, ptr %i.fk, align 8, !tbaa !13
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !13
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.us.loopexit.unr-lcssa
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, %i.eg ; 2 uses
  %i.fo = icmp slt i64 %indvars.iv.next147, %i.ei
  br i1 %i.fo, label %.preheader119.us.us, label %._crit_edge124.us.us, !llvm.loop !197

._crit_edge124.us.us:                             ; preds = %._crit_edge.us.us
  %i.fp = getelementptr inbounds [8 x i8], ptr %.1125.us.us, i64 %i.ee ; 2 uses
  %i.fq = icmp ult ptr %i.fp, %i.ch
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fq, label %.preheader120.us.us, label %.loopexit, !llvm.loop !198

.loopexit:                                        ; preds = %._crit_edge124.us.us, %._crit_edge.us, %vector.body218, %scalar.ph206, %scalar.ph206.1, %scalar.ph206.2, %.preheader120.lr.ph, %.preheader.lr.ph, %bb.h, %bb.g, %bb.e, %bb.a, %bb.c
  ret void
}

declare i32 @Abc_TtCanonicize(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @If_CutComputeTruthPerm(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [32 x i32], align 16              ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %i.c = load i64, ptr %i.b, align 4
  %i.d = trunc i64 %i.c to i32
  %i.e = lshr i32 %i.d, 24                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.g = load i64, ptr %i.f, align 4
  %i.h = trunc i64 %i.g to i32
  %i.i = lshr i32 %i.h, 24                        ; 2 uses
  %i.j = add nuw nsw i32 %i.i, %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 5 uses
  %i.l = load i64, ptr %i.k, align 4
  %i.m = trunc i64 %i.l to i32
  %i.n = lshr i32 %i.m, 24
  %i.o = icmp samesign ugt i32 %i.j, %i.n
  %i.p = icmp slt i32 %4, 2
  %or.cond = or i1 %i.p, %i.o
  %i.q = icmp slt i32 %5, 2
  %or.cond3 = or i1 %i.q, %or.cond
  br i1 %or.cond3, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.u = load i32, ptr %i.t, align 8, !tbaa !170
  %.not108 = icmp eq i32 %i.u, 0
  br i1 %.not108, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.v = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #15
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %Abc_Clock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %9, align 8, !tbaa !171
  %.neg137 = mul i64 %i.x, -1000000
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !173
  %.neg136 = sdiv i64 %i.z, -1000
  %.neg138 = add i64 %.neg136, %.neg137
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i.neg = phi i64 [ %.neg138, %bb.d ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.e

bb.e:                                             ; preds = %Abc_Clock.exit, %bb.b
  %.0100.neg = phi i64 [ %.0.i.neg, %Abc_Clock.exit ], [ 0, %bb.b ]
  %i.aa = call i32 @If_CutComputeTruthPerm_int(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %4, i32 noundef %5) ; 2 uses
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !113
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !170
  %.not109 = icmp eq i32 %i.ad, 0
  br i1 %.not109, label %bb.cy, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.ae = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #15
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %Abc_Clock.exit116, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load i64, ptr %8, align 8, !tbaa !171
  %i.ah = mul nsw i64 %i.ag, 1000000
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !173
  %i.ak = sdiv i64 %i.aj, 1000
  %i.al = add nsw i64 %i.ak, %i.ah
  br label %Abc_Clock.exit116

Abc_Clock.exit116:                                ; preds = %bb.f, %bb.g
  %.0.i115 = phi i64 [ %i.al, %bb.g ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.am = add i64 %.0.i115, %.0100.neg
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2040 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !13
  %i.ap = add nsw i64 %i.am, %i.ao
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !13
  br label %bb.cy

bb.h:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !199 ; 3 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8      ; 5 uses
  %.val113 = load ptr, ptr %i.as, align 8, !tbaa !200 ; 4 uses
  %i.at = getelementptr i8, ptr %.val113, i64 4
  %.val113.val = load i32, ptr %i.at, align 4, !tbaa !69 ; 2 uses
  %i.au = sdiv i32 %.val113.val, 4                ; 5 uses
  %i.av = shl i32 %4, 5
  %i.aw = or i32 %i.e, %i.av                      ; 3 uses
  %i.ax = shl i32 %5, 5
  %i.ay = or i32 %i.i, %i.ax                      ; 3 uses
  %i.az = load ptr, ptr %i.ar, align 8, !tbaa !202 ; 7 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 4      ; 2 uses
  %.val34.i = load i32, ptr %i.ba, align 4, !tbaa !69 ; 2 uses
  %i.bb = icmp sgt i32 %i.au, %.val34.i
  br i1 %i.bb, label %bb.i, label %.loopexit.i

bb.i:                                             ; preds = %bb.h
  %i.bc = shl nsw i32 %.val34.i, 1
  %i.bd = add i32 %i.bc, -1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %bb.i
  %.012.i.i = phi i32 [ %i.bd, %bb.i ], [ %i.be, %.critedge.i.i.backedge ] ; 2 uses
  %i.be = add i32 %.012.i.i, 1                    ; 9 uses
  %i.bf = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.be, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.bg = add nuw nsw i32 %.01116.i.i, 2          ; 3 uses
  %i.bh = mul nuw nsw i32 %i.bg, %i.bg
  %.not.i.i = icmp ugt i32 %i.bh, %i.be
  br i1 %.not.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !72

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.j
  %.01116.i.i = phi i32 [ %i.bg, %bb.j ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.bi = urem i32 %i.be, %.01116.i.i
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.critedge.i.i.backedge, label %bb.j

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.j
  %i.bk = load i32, ptr %i.az, align 8, !tbaa !73
  %.not.i.i.i = icmp slt i32 %i.bk, %i.be
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !74 ; 3 uses
  br i1 %.not.i.i.i, label %bb.k, label %Abc_PrimeCudd.exit..lr.ph.i36_crit_edge.i

Abc_PrimeCudd.exit..lr.ph.i36_crit_edge.i:        ; preds = %Abc_PrimeCudd.exit.i
  %.pre103.i = zext nneg i32 %i.be to i64
  %.pre104.i = shl nuw nsw i64 %.pre103.i, 2
  br label %.lr.ph.i36.i

bb.k:                                             ; preds = %Abc_PrimeCudd.exit.i
  %.not9.i.i.i = icmp eq ptr %i.bm, null
  %i.bn = zext nneg i32 %i.be to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2                ; 3 uses
  br i1 %.not9.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = tail call ptr @realloc(ptr noundef nonnull %i.bm, i64 noundef %i.bo) #16
  %.pre89.pre.pre.i = load ptr, ptr %i.ar, align 8, !tbaa !202
  %.pre90.pre.pre.pre.i = load ptr, ptr %i.as, align 8, !tbaa !200
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bq = tail call noalias ptr @malloc(i64 noundef %i.bo) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre90.pre.pre.i = phi ptr [ %.pre90.pre.pre.pre.i, %bb.l ], [ %.val113, %bb.m ]
  %.pre89.pre.i = phi ptr [ %.pre89.pre.pre.i, %bb.l ], [ %i.az, %bb.m ]
  %i.br = phi ptr [ %i.bp, %bb.l ], [ %i.bq, %bb.m ] ; 2 uses
  store ptr %i.br, ptr %i.bl, align 8, !tbaa !74
  store i32 %i.be, ptr %i.az, align 8, !tbaa !73
  br label %.lr.ph.i36.i
end_hunk_1
