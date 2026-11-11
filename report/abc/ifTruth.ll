Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifTruth?download=true
inline.NumInlined: 170
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 34
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
  %.idx65.i.a = shl nsw i64 %i.c, 3               ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 %.idx65.i.a ; 2 uses
  %i.e = icmp sgt i32 %3, 0                       ; 3 uses
  %wide.trip.count73.i = zext i32 %3 to i64       ; 3 uses
  br i1 %i.b, label %.split.us, label %.split48.us

.split.us:                                        ; preds = %bb.a
  %i.f = add nsw i32 %1, -1                       ; 3 uses
  %.not35 = icmp eq ptr %0, null
  %wide.trip.count56 = zext i32 %i.f to i64       ; 3 uses
  br i1 %.not35, label %.lr.ph.us.us.preheader, label %.lr.ph.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.split.us
  %xtraiter104 = and i64 %wide.trip.count56, 1
  %i.g = icmp eq i32 %i.f, 1
  %unroll_iter108 = and i64 %wide.trip.count56, 4294967294
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  %lcmp.mod107 = trunc i32 %i.f to i1
  br label %.lr.ph.us.us

.lr.ph.us.preheader:                              ; preds = %.split.us
  %i.h = add i64 %.idx65.i.a, %i.a
  %min.iters.check = icmp ult i32 %3, 4
  %n.vec = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73.i
  br label %.lr.ph.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.split.us.us.us
  %.pre58 = load float, ptr %4, align 4, !tbaa !13 ; 2 uses
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %Abc_TtSwapAdjacent.exit.us.us.us.1
  %i.i = phi float [ %i.y, %Abc_TtSwapAdjacent.exit.us.us.us.1 ], [ %.pre58, %.lr.ph.us.us ] ; 3 uses
  %indvars.iv53 = phi i64 [ %indvars.iv.next54.1, %Abc_TtSwapAdjacent.exit.us.us.us.1 ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %.03138.us.us.us = phi i32 [ %.1.us.us.us.1, %Abc_TtSwapAdjacent.exit.us.us.us.1 ], [ 0, %.lr.ph.us.us ]
  %niter109 = phi i64 [ %niter109.next.1, %Abc_TtSwapAdjacent.exit.us.us.us.1 ], [ 0, %.lr.ph.us.us ]
  %indvars.iv.next54 = or disjoint i64 %indvars.iv53, 1 ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next54 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !13 ; 3 uses
  %i.l = fcmp ult float %i.i, %i.k
  br i1 %i.l, label %bb.b, label %Abc_TtSwapAdjacent.exit.us.us.us

bb.b:                                             ; preds = %.lr.ph.us.us.new
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv53
  store float %i.k, ptr %i.m, align 4, !tbaa !13
  store float %i.i, ptr %i.j, align 4, !tbaa !13
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv53 ; 2 uses
  %i.o = load <2 x i32>, ptr %i.n, align 4, !tbaa !14
  %i.p = shufflevector <2 x i32> %i.o, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.p, ptr %i.n, align 4, !tbaa !14
  br label %Abc_TtSwapAdjacent.exit.us.us.us

Abc_TtSwapAdjacent.exit.us.us.us:                 ; preds = %bb.b, %.lr.ph.us.us.new
  %i.q = phi float [ %i.k, %.lr.ph.us.us.new ], [ %i.i, %bb.b ] ; 3 uses
  %.1.us.us.us = phi i32 [ %.03138.us.us.us, %.lr.ph.us.us.new ], [ 1, %bb.b ]
  %indvars.iv.next54.1 = add nuw nsw i64 %indvars.iv53, 2 ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next54.1 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !13 ; 3 uses
  %i.t = fcmp ult float %i.q, %i.s
  br i1 %i.t, label %bb.c, label %Abc_TtSwapAdjacent.exit.us.us.us.1

bb.c:                                             ; preds = %Abc_TtSwapAdjacent.exit.us.us.us
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next54
  store float %i.s, ptr %i.u, align 4, !tbaa !13
  store float %i.q, ptr %i.r, align 4, !tbaa !13
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next54 ; 2 uses
  %i.w = load <2 x i32>, ptr %i.v, align 4, !tbaa !14
  %i.x = shufflevector <2 x i32> %i.w, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.x, ptr %i.v, align 4, !tbaa !14
  br label %Abc_TtSwapAdjacent.exit.us.us.us.1

Abc_TtSwapAdjacent.exit.us.us.us.1:               ; preds = %bb.c, %Abc_TtSwapAdjacent.exit.us.us.us
  %i.y = phi float [ %i.s, %Abc_TtSwapAdjacent.exit.us.us.us ], [ %i.q, %bb.c ] ; 2 uses
  %.1.us.us.us.1 = phi i32 [ %.1.us.us.us, %Abc_TtSwapAdjacent.exit.us.us.us ], [ 1, %bb.c ] ; 3 uses
  %niter109.next.1 = add i64 %niter109, 2         ; 2 uses
  %niter109.ncmp.1 = icmp eq i64 %niter109.next.1, %unroll_iter108
  br i1 %niter109.ncmp.1, label %._crit_edge.split.us.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !0

._crit_edge.split.us.us.us.unr-lcssa:             ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.1
  br i1 %lcmp.mod105.not, label %._crit_edge.split.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.us.us.us.unr-lcssa, %.lr.ph.us.us
  %.epil.init = phi float [ %.pre58, %.lr.ph.us.us ], [ %i.y, %._crit_edge.split.us.us.us.unr-lcssa ] ; 2 uses
  %indvars.iv53.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %indvars.iv.next54.1, %._crit_edge.split.us.us.us.unr-lcssa ] ; 3 uses
  %.03138.us.us.us.epil.init = phi i32 [ 0, %.lr.ph.us.us ], [ %.1.us.us.us.1, %._crit_edge.split.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv53.epil.init
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !13 ; 2 uses
  %i.ac = fcmp ult float %.epil.init, %i.ab
  br i1 %i.ac, label %bb.d, label %._crit_edge.split.us.us.us

bb.d:                                             ; preds = %.epil.preheader
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv53.epil.init
  store float %i.ab, ptr %i.ad, align 4, !tbaa !13
  store float %.epil.init, ptr %i.aa, align 4, !tbaa !13
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv53.epil.init ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ae, align 4, !tbaa !14
  %i.ag = shufflevector <2 x i32> %i.af, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ag, ptr %i.ae, align 4, !tbaa !14
  br label %._crit_edge.split.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %.epil.preheader, %bb.d, %._crit_edge.split.us.us.us.unr-lcssa
  %.1.us.us.us.lcssa = phi i32 [ %.1.us.us.us.1, %._crit_edge.split.us.us.us.unr-lcssa ], [ %.03138.us.us.us.epil.init, %.epil.preheader ], [ 1, %bb.d ]
  %.not.not.us.us = icmp eq i32 %.1.us.us.us.lcssa, 0
  br i1 %.not.not.us.us, label %.split48.us, label %.lr.ph.us.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.split.us45
  %.pre = load float, ptr %4, align 4, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %Abc_TtSwapAdjacent.exit.us43, %.lr.ph.us
  %i.ah = phi float [ %i.ds, %Abc_TtSwapAdjacent.exit.us43 ], [ %.pre, %.lr.ph.us ] ; 10 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Abc_TtSwapAdjacent.exit.us43 ], [ 0, %.lr.ph.us ] ; 9 uses
  %.03138.us42 = phi i32 [ %.1.us44, %Abc_TtSwapAdjacent.exit.us43 ], [ 0, %.lr.ph.us ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !13 ; 3 uses
  %i.ak = fcmp ult float %i.ah, %i.aj
  br i1 %i.ak, label %bb.f, label %Abc_TtSwapAdjacent.exit.us43

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store float %i.aj, ptr %i.al, align 4, !tbaa !13
  store float %i.ah, ptr %i.ai, align 4, !tbaa !13
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  %i.an = load <2 x i32>, ptr %i.am, align 4, !tbaa !14
  %i.ao = shufflevector <2 x i32> %i.an, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ao, ptr %i.am, align 4, !tbaa !14
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
  br i1 %i.e, label %.preheader.lr.ph.i.us, label %Abc_TtSwapAdjacent.exit.us43

.preheader.lr.ph.i.us:                            ; preds = %bb.h
  %i.aw = icmp sgt i32 %i.av, 0
  %i.ax = shl i32 %i.av, 2                        ; 2 uses
  %i.ay = sext i32 %i.ax to i64                   ; 3 uses
  br i1 %i.aw, label %.preheader.us.preheader.i.us, label %Abc_TtSwapAdjacent.exit.us43

.preheader.us.preheader.i.us:                     ; preds = %.preheader.lr.ph.i.us
  %i.az = shl nuw nsw i32 %i.av, 1
  %i.ba = zext nneg i32 %i.av to i64              ; 6 uses
  %i.bb = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bc = shl nsw i64 %i.ay, 3                    ; 4 uses
  %i.bd = shl nuw nsw i64 %i.bb, 3                ; 2 uses
  %i.be = shl nuw nsw i64 %i.ba, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.bd
  %i.bf = shl nuw nsw i64 %i.ba, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bg = add i64 %i.bc, %i.a
  %umax83 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.bg)
  %i.bh = sub i64 %umax83, %i.a                   ; 2 uses
  %i.bi = icmp ne i64 %i.bh, %i.bc
  %umin = zext i1 %i.bi to i64                    ; 2 uses
  %i.bj = or disjoint i64 %i.bc, %umin
  %i.bk = sub i64 %i.bh, %i.bj
  %scevgep84 = getelementptr i8, ptr %0, i64 %i.be
  %min.iters.check86 = icmp ult i32 %i.av, 4
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.bf
  %invariant.gep110 = getelementptr i8, ptr %0, i64 %i.be
  %invariant.gep112 = getelementptr i8, ptr %invariant.gep110, i64 %i.bd
  %stride.check = icmp slt i32 %i.ax, 0
  %n.vec88 = and i64 %i.ba, 2147483644
  %xtraiter = and i64 %i.ba, 1
  %i.bl = icmp eq i32 %i.av, 1
  %unroll_iter = and i64 %i.ba, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod103 = trunc i32 %i.av to i1
  br label %.preheader.us.i.us

.preheader.us.i.us:                               ; preds = %._crit_edge.us.i.us, %.preheader.us.preheader.i.us
  %.061.us.i.us = phi ptr [ %i.cc, %._crit_edge.us.i.us ], [ %0, %.preheader.us.preheader.i.us ] ; 3 uses
  %invariant.gep.i.us = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us, i64 %i.ba ; 4 uses
  %invariant.gep80.i.us = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us, i64 %i.bb ; 4 uses
  br i1 %min.iters.check86, label %scalar.ph85.preheader, label %vector.memcheck

scalar.ph85.preheader:                            ; preds = %vector.memcheck, %.preheader.us.i.us
  br i1 %i.bl, label %scalar.ph85.epil.preheader, label %scalar.ph85

vector.memcheck:                                  ; preds = %.preheader.us.i.us
  %i.bm = udiv i64 %i.bk, %umax
  %i.bn = add i64 %i.bm, %umin
  %i.bo = mul i64 %i.bn, %i.ay
  %i.bp = shl i64 %i.bo, 3                        ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.bp
  %gep113 = getelementptr i8, ptr %invariant.gep112, i64 %i.bp
  %bound0 = icmp ult ptr %scevgep84, %gep113
  %bound1 = icmp ult ptr %scevgep, %gep
  %found.conflict = and i1 %bound0, %bound1
  %i.bq = or i1 %found.conflict, %stride.check
  br i1 %i.bq, label %scalar.ph85.preheader, label %vector.body89

vector.body89:                                    ; preds = %vector.memcheck, %vector.body89
  %index90 = phi i64 [ %index.next95, %vector.body89 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us, i64 %index90 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %wide.load91 = load <2 x i64>, ptr %i.br, align 8, !tbaa !17, !alias.scope !82, !noalias !83
  %wide.load92 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !17, !alias.scope !82, !noalias !83
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us, i64 %index90 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %wide.load93 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !17, !alias.scope !83
  %wide.load94 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !17, !alias.scope !83
  store <2 x i64> %wide.load93, ptr %i.br, align 8, !tbaa !17, !alias.scope !82, !noalias !83
  store <2 x i64> %wide.load94, ptr %i.bs, align 8, !tbaa !17, !alias.scope !82, !noalias !83
  store <2 x i64> %wide.load91, ptr %i.bt, align 8, !tbaa !17, !alias.scope !83
  store <2 x i64> %wide.load92, ptr %i.bu, align 8, !tbaa !17, !alias.scope !83
  %index.next95 = add nuw i64 %index90, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next95, %n.vec88
  br i1 %i.bv, label %._crit_edge.us.i.us, label %vector.body89, !llvm.loop !76

scalar.ph85:                                      ; preds = %scalar.ph85.preheader, %scalar.ph85
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.1, %scalar.ph85 ], [ 0, %scalar.ph85.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph85 ], [ 0, %scalar.ph85.preheader ]
  %gep.i.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us ; 2 uses
  %i.bw = load i64, ptr %gep.i.us, align 8, !tbaa !17
  %gep81.i.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us, i64 %indvars.iv.i.us ; 2 uses
  %i.bx = load i64, ptr %gep81.i.us, align 8, !tbaa !17
  store i64 %i.bx, ptr %gep.i.us, align 8, !tbaa !17
  store i64 %i.bw, ptr %gep81.i.us, align 8, !tbaa !17
  %indvars.iv.next.i.us = or disjoint i64 %indvars.iv.i.us, 1 ; 2 uses
  %gep.i.us.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.next.i.us ; 2 uses
  %i.by = load i64, ptr %gep.i.us.1, align 8, !tbaa !17
  %gep81.i.us.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us, i64 %indvars.iv.next.i.us ; 2 uses
  %i.bz = load i64, ptr %gep81.i.us.1, align 8, !tbaa !17
  store i64 %i.bz, ptr %gep.i.us.1, align 8, !tbaa !17
  store i64 %i.by, ptr %gep81.i.us.1, align 8, !tbaa !17
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.us.loopexit.unr-lcssa, label %scalar.ph85, !llvm.loop !77

._crit_edge.us.i.us.loopexit.unr-lcssa:           ; preds = %scalar.ph85
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.us, label %scalar.ph85.epil.preheader

scalar.ph85.epil.preheader:                       ; preds = %._crit_edge.us.i.us.loopexit.unr-lcssa, %scalar.ph85.preheader
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %scalar.ph85.preheader ], [ %indvars.iv.next.i.us.1, %._crit_edge.us.i.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %gep.i.us.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us.epil.init ; 2 uses
  %i.ca = load i64, ptr %gep.i.us.epil, align 8, !tbaa !17
  %gep81.i.us.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us, i64 %indvars.iv.i.us.epil.init ; 2 uses
  %i.cb = load i64, ptr %gep81.i.us.epil, align 8, !tbaa !17
  store i64 %i.cb, ptr %gep.i.us.epil, align 8, !tbaa !17
  store i64 %i.ca, ptr %gep81.i.us.epil, align 8, !tbaa !17
  br label %._crit_edge.us.i.us

._crit_edge.us.i.us:                              ; preds = %vector.body89, %scalar.ph85.epil.preheader, %._crit_edge.us.i.us.loopexit.unr-lcssa
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us, i64 %i.ay ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %i.d
  br i1 %i.cd, label %.preheader.us.i.us, label %Abc_TtSwapAdjacent.exit.us43, !llvm.loop !78

bb.i:                                             ; preds = %bb.g
  br i1 %i.e, label %.lr.ph.i.us, label %Abc_TtSwapAdjacent.exit.us43

.lr.ph.i.us:                                      ; preds = %bb.i, %.lr.ph.i.us
  %.05462.i.us = phi ptr [ %i.ch, %.lr.ph.i.us ], [ %0, %bb.i ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.05462.i.us, i64 4 ; 2 uses
  %i.cf = load <2 x i32>, ptr %i.ce, align 4, !tbaa !14
  %i.cg = shufflevector <2 x i32> %i.cf, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.cg, ptr %i.ce, align 4, !tbaa !14
  %i.ch = getelementptr inbounds nuw i8, ptr %.05462.i.us, i64 16 ; 2 uses
  %i.ci = icmp ult ptr %i.ch, %i.d
  br i1 %i.ci, label %.lr.ph.i.us, label %Abc_TtSwapAdjacent.exit.us43, !llvm.loop !79

bb.j:                                             ; preds = %bb.f
  br i1 %i.e, label %.lr.ph64.i.us, label %Abc_TtSwapAdjacent.exit.us43

.lr.ph64.i.us:                                    ; preds = %bb.j
  %i.cj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ck = shl nuw nsw i32 1, %i.cj
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr @s_PMasks, i64 %indvars.iv ; 3 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !17 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !17 ; 2 uses
  %i.cp = zext nneg i32 %i.ck to i64              ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !17 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph64.i.us
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cm, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert72 = insertelement <2 x i64> poison, i64 %i.co, i64 0
  %broadcast.splat73 = shufflevector <2 x i64> %broadcast.splatinsert72, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert74 = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %broadcast.splat75 = shufflevector <2 x i64> %broadcast.splatinsert74, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert76 = insertelement <2 x i64> poison, i64 %i.cr, i64 0
  %broadcast.splat77 = shufflevector <2 x i64> %broadcast.splatinsert76, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.cs, align 8, !tbaa !17 ; 3 uses
  %wide.load78 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !17 ; 3 uses
  %i.cu = and <2 x i64> %wide.load, %broadcast.splat
  %i.cv = and <2 x i64> %wide.load78, %broadcast.splat
  %i.cw = and <2 x i64> %wide.load, %broadcast.splat73
  %i.cx = and <2 x i64> %wide.load78, %broadcast.splat73
  %i.cy = shl <2 x i64> %i.cw, %broadcast.splat75
  %i.cz = shl <2 x i64> %i.cx, %broadcast.splat75
  %i.da = or <2 x i64> %i.cy, %i.cu
  %i.db = or <2 x i64> %i.cz, %i.cv
  %i.dc = and <2 x i64> %wide.load, %broadcast.splat77
  %i.dd = and <2 x i64> %wide.load78, %broadcast.splat77
  %i.de = lshr <2 x i64> %i.dc, %broadcast.splat75
  %i.df = lshr <2 x i64> %i.dd, %broadcast.splat75
  %i.dg = or <2 x i64> %i.da, %i.de
  %i.dh = or <2 x i64> %i.db, %i.df
  store <2 x i64> %i.dg, ptr %i.cs, align 8, !tbaa !17
  store <2 x i64> %i.dh, ptr %i.ct, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtSwapAdjacent.exit.us43, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph64.i.us, %middle.block
  %indvars.iv70.i.us.ph = phi i64 [ 0, %.lr.ph64.i.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv70.i.us = phi i64 [ %indvars.iv.next71.i.us, %scalar.ph ], [ %indvars.iv70.i.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i.us ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !17 ; 3 uses
  %i.dl = and i64 %i.dk, %i.cm
  %i.dm = and i64 %i.dk, %i.co
  %i.dn = shl i64 %i.dm, %i.cp
  %i.do = or i64 %i.dn, %i.dl
  %i.dp = and i64 %i.dk, %i.cr
  %i.dq = lshr i64 %i.dp, %i.cp
  %i.dr = or i64 %i.do, %i.dq
  store i64 %i.dr, ptr %i.dj, align 8, !tbaa !17
  %indvars.iv.next71.i.us = add nuw nsw i64 %indvars.iv70.i.us, 1 ; 2 uses
  %exitcond74.not.i.us = icmp eq i64 %indvars.iv.next71.i.us, %wide.trip.count73.i
  br i1 %exitcond74.not.i.us, label %Abc_TtSwapAdjacent.exit.us43, label %scalar.ph, !llvm.loop !81

Abc_TtSwapAdjacent.exit.us43:                     ; preds = %._crit_edge.us.i.us, %.lr.ph.i.us, %scalar.ph, %middle.block, %bb.j, %bb.i, %.preheader.lr.ph.i.us, %bb.h, %bb.e
  %i.ds = phi float [ %i.aj, %bb.e ], [ %i.ah, %.preheader.lr.ph.i.us ], [ %i.ah, %bb.j ], [ %i.ah, %middle.block ], [ %i.ah, %bb.i ], [ %i.ah, %.lr.ph.i.us ], [ %i.ah, %bb.h ], [ %i.ah, %scalar.ph ], [ %i.ah, %._crit_edge.us.i.us ]
  %.1.us44 = phi i32 [ %.03138.us42, %bb.e ], [ 1, %.preheader.lr.ph.i.us ], [ 1, %bb.j ], [ 1, %middle.block ], [ 1, %bb.i ], [ 1, %.lr.ph.i.us ], [ 1, %bb.h ], [ 1, %scalar.ph ], [ 1, %._crit_edge.us.i.us ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count56
  br i1 %exitcond.not, label %._crit_edge.split.us45, label %bb.e, !llvm.loop !0

._crit_edge.split.us45:                           ; preds = %Abc_TtSwapAdjacent.exit.us43
  %.not.not.us = icmp eq i32 %.1.us44, 0
  br i1 %.not.not.us, label %.split48.us, label %.lr.ph.us

.split48.us:                                      ; preds = %._crit_edge.split.us45, %._crit_edge.split.us.us.us, %bb.a
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
  %.val = load ptr, ptr %i.g, align 8, !tbaa !88
  %i.h = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.h, align 8, !tbaa !90
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !91   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 92
  %i.o = load float, ptr %i.n, align 4, !tbaa !92
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.o, ptr %i.p, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !84

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.r = lshr i64 %i.d, 24
  %i.s = and i64 %i.r, 255                        ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39   ; 5 uses
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
  %.pre58.i = load float, ptr %i.a, align 16, !tbaa !13 ; 2 uses
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %Abc_TtSwapAdjacent.exit.us.us.us.i.1
  %i.z = phi float [ %i.ap, %Abc_TtSwapAdjacent.exit.us.us.us.i.1 ], [ %.pre58.i, %.lr.ph.us.us.i ] ; 3 uses
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i.1, %Abc_TtSwapAdjacent.exit.us.us.us.i.1 ], [ 0, %.lr.ph.us.us.i ] ; 4 uses
  %.03138.us.us.us.i = phi i32 [ %.1.us.us.us.i.1, %Abc_TtSwapAdjacent.exit.us.us.us.i.1 ], [ 0, %.lr.ph.us.us.i ]
  %niter = phi i64 [ %niter.next.1, %Abc_TtSwapAdjacent.exit.us.us.us.i.1 ], [ 0, %.lr.ph.us.us.i ]
  %indvars.iv.next54.i = or disjoint i64 %indvars.iv53.i, 1 ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next54.i ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !13 ; 3 uses
  %i.ac = fcmp ult float %i.z, %i.ab
  br i1 %i.ac, label %bb.e, label %Abc_TtSwapAdjacent.exit.us.us.us.i

bb.e:                                             ; preds = %.lr.ph.us.us.i.new
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv53.i
  store float %i.ab, ptr %i.ad, align 8, !tbaa !13
  store float %i.z, ptr %i.aa, align 4, !tbaa !13
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv53.i ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ae, align 4, !tbaa !14
  %i.ag = shufflevector <2 x i32> %i.af, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ag, ptr %i.ae, align 4, !tbaa !14
  br label %Abc_TtSwapAdjacent.exit.us.us.us.i

Abc_TtSwapAdjacent.exit.us.us.us.i:               ; preds = %bb.e, %.lr.ph.us.us.i.new
  %i.ah = phi float [ %i.ab, %.lr.ph.us.us.i.new ], [ %i.z, %bb.e ] ; 3 uses
  %.1.us.us.us.i = phi i32 [ %.03138.us.us.us.i, %.lr.ph.us.us.i.new ], [ 1, %bb.e ]
  %indvars.iv.next54.i.1 = add nuw nsw i64 %indvars.iv53.i, 2 ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next54.i.1 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !13 ; 3 uses
  %i.ak = fcmp ult float %i.ah, %i.aj
  br i1 %i.ak, label %bb.f, label %Abc_TtSwapAdjacent.exit.us.us.us.i.1

bb.f:                                             ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next54.i
  store float %i.aj, ptr %i.al, align 4, !tbaa !13
  store float %i.ah, ptr %i.ai, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next54.i ; 2 uses
  %i.an = load <2 x i32>, ptr %i.am, align 4, !tbaa !14
end_hunk_0
