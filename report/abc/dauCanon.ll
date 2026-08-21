Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauCanon?download=true
inline.NumInlined: 334
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 101
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Abc_TgMan_t_ = type { ptr, i32, i32, i32, i32, i32, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x %struct.TiedGroup_], [16 x i8], [17 x i8], i32, [16 x i8], ptr }
%struct.TiedGroup_ = type { i8, i8 }

@Abc_TtCountOnesInCofsFast6_rec.bit_count = internal unnamed_addr constant [256 x i32] [i32 0, i32 1, i32 1, i32 2, i32 1, i32 2, i32 2, i32 3, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 5, i32 6, i32 6, i32 7, i32 6, i32 7, i32 7, i32 8], align 16
@Abc_TtCofactorTest10.pCopy1 = internal global [1024 x i64] zeroinitializer, align 16
@Abc_TtCofactorTest10.pCopy2 = internal global [1024 x i64] zeroinitializer, align 16
@Abc_TtCofactorPermNaive.pCopy = internal global [1024 x i64] zeroinitializer, align 16
@Abc_TtCofactorPermNaive.pCopy.1 = internal global [1024 x i64] zeroinitializer, align 16
@Abc_TtCofactorPermNaive.pBest = internal unnamed_addr global [1024 x i64] zeroinitializer, align 16
@Abc_TtCofactorPerm.pCopy1 = internal unnamed_addr global [1024 x i64] zeroinitializer, align 16
@Abc_TtCanonicizeWrap.pTruth2 = internal global [1024 x i64] zeroinitializer, align 16
@Abc_TtCanonicizeAda.pCopy = internal global [1024 x i64] zeroinitializer, align 16
@Abc_TtCanonicizeCA.pCopy = internal global [1024 x i64] zeroinitializer, align 16
@gpVerCopy = local_unnamed_addr global [1024 x i64] zeroinitializer, align 16
@s_Truths6Neg = internal unnamed_addr constant [6 x i64] [i64 6148914691236517205, i64 3689348814741910323, i64 1085102592571150095, i64 71777214294589695, i64 281470681808895, i64 4294967295], align 16
@s_Truths6 = internal unnamed_addr constant [6 x i64] [i64 -6148914691236517206, i64 -3689348814741910324, i64 -1085102592571150096, i64 -71777214294589696, i64 -281470681808896, i64 -4294967296], align 16
@s_PMasks = internal unnamed_addr constant [5 x [3 x i64]] [[3 x i64] [i64 -7378697629483820647, i64 2459565876494606882, i64 4919131752989213764], [3 x i64] [i64 -4340410370284600381, i64 868082074056920076, i64 3472328296227680304], [3 x i64] [i64 -1148435428713435121, i64 67555025218437360, i64 1080880403494997760], [3 x i64] [i64 -72056494543077121, i64 280375465148160, i64 71776119077928960], [3 x i64] [i64 -281474976645121, i64 4294901760, i64 281470681743360]], align 16
@s_PPMasks = internal unnamed_addr constant [5 x [6 x [3 x i64]]] [[6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] [i64 -7378697629483820647, i64 2459565876494606882, i64 4919131752989213764], [3 x i64] [i64 -6510615555426900571, i64 723401728380766730, i64 5787213827046133840], [3 x i64] [i64 -6172840429334713771, i64 47851476196393130, i64 6124988953138320640], [3 x i64] [i64 -6149008514797120171, i64 187647121205930, i64 6148820867675914240], [3 x i64] [i64 -6148914692668172971, i64 2863311530, i64 6148914689804861440]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -4340410370284600381, i64 868082074056920076, i64 3472328296227680304], [3 x i64] [i64 -3732415143318664141, i64 57421771435671756, i64 3674993371882992384], [3 x i64] [i64 -3689517697150995661, i64 225176545447116, i64 3689292520605548544], [3 x i64] [i64 -3689348817318890701, i64 3435973836, i64 3689348813882916864]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -1148435428713435121, i64 67555025218437360, i64 1080880403494997760], [3 x i64] [i64 -1085350949055099121, i64 264913582878960, i64 1085086035472220160], [3 x i64] [i64 -1085102596360827121, i64 4042322160, i64 1085102592318504960]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -72056494543077121, i64 280375465148160, i64 71776119077928960], [3 x i64] [i64 -71777218556133121, i64 4278255360, i64 71777214277877760]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -281474976645121, i64 4294901760, i64 281470681743360]]], align 16
@s_CMasks6 = internal unnamed_addr constant [5 x i64] [i64 1229782938247303441, i64 217020518514230019, i64 4222189076152335, i64 1095216660735, i64 65535], align 16
@Vec_MemHashKey.s_Primes = internal unnamed_addr constant [8 x i32] [i32 1699, i32 4177, i32 5147, i32 5647, i32 6343, i32 7103, i32 7873, i32 8147], align 16
@pSymCopy = internal global [1024 x i64] zeroinitializer, align 16
@log2fn = internal unnamed_addr constant [17 x i32] [i32 0, i32 0, i32 100, i32 258, i32 458, i32 691, i32 949, i32 1230, i32 1530, i32 1847, i32 2179, i32 2525, i32 2884, i32 3254, i32 3634, i32 4025, i32 4425], align 16
@Abc_TgPhaseEnumerationScc.pCopy = internal global [1024 x i64] zeroinitializer, align 16
@Abc_TgPermEnumerationScc.pCopy = internal global [1024 x i64] zeroinitializer, align 16
@Abc_TgSymGroupPerm.pCopy = internal global [1024 x i64] zeroinitializer, align 16
@Abc_TgSymGroupPerm.pBest = internal unnamed_addr global [1024 x i64] zeroinitializer, align 16
@Abc_TgPermPhase.pCopy = internal global [1024 x i64] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Abc_TtNormalizeSmallTruth(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 6
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i32 1, %1
  %i.c = load i64, ptr %0, align 8, !tbaa !8
  %i.d = zext nneg i32 %i.b to i64                ; 6 uses
  %notmask = shl nsw i64 -1, %i.d
  %i.e = xor i64 %notmask, -1
  %i.f = and i64 %i.c, %i.e                       ; 5 uses
  store i64 %i.f, ptr %0, align 8, !tbaa !8
  %i.g = icmp ult i32 %1, 6
  br i1 %i.g, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = shl nuw nsw i64 %i.d, 1
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 64) ; 2 uses
  %2 = zext nneg i32 %1 to i64
  %3 = shl nsw i64 -2, %2                         ; 2 uses
  %4 = sub nsw i64 0, %3
  %i.j = icmp ne i64 %i.i, %4
  %i.k = zext i1 %i.j to i64                      ; 2 uses
  %5 = sub nuw nsw i64 %i.i, %i.k
  %6 = add nsw i64 %5, %3
  %i.l = zext nneg i32 %1 to i64
  %i.m = lshr i64 %6, %i.l
  %i.n = add i64 %i.m, %i.k
  %i.o = add i64 %i.n, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.o, 4
  br i1 %min.iters.check, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.o, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.p = zext nneg i32 %1 to i64
  %i.q = shl i64 %n.vec, %i.p
  %i.r = add i64 %i.q, %i.d
  %i.s = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.f, i64 0
  %i.t = shl nuw nsw <2 x i64> %broadcast.splat, splat (i64 1) ; 3 uses
  %broadcast.splatinsert14 = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat15 = shufflevector <2 x i64> %broadcast.splatinsert14, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %induction = shl nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add nuw nsw <2 x i64> %i.t, %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.s, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi16 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %step.add = add nuw nsw <2 x i64> %vec.ind, %i.t
  %i.u = shl <2 x i64> %broadcast.splat15, %vec.ind
  %i.v = shl <2 x i64> %broadcast.splat15, %step.add
  %i.w = or <2 x i64> %vec.phi, %i.u              ; 2 uses
  %i.x = or <2 x i64> %vec.phi16, %i.v            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next.reass = add nuw nsw <2 x i64> %vec.ind, %invariant.op
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.x, %i.w
  %i.z = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  %.ph = phi i64 [ %i.f, %.lr.ph.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader17, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader17 ] ; 2 uses
  %i.aa = phi i64 [ %i.ac, %.lr.ph ], [ %.ph, %.lr.ph.preheader17 ]
  %i.ab = shl i64 %i.f, %indvars.iv
  %i.ac = or i64 %i.aa, %i.ab                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.d ; 2 uses
  %i.ad = icmp samesign ult i64 %indvars.iv.next, 64
  br i1 %i.ad, label %.lr.ph, label %..loopexit_crit_edge, !llvm.loop !14

..loopexit_crit_edge:                             ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.z, %middle.block ], [ %i.ac, %.lr.ph ]
  store i64 %.lcssa, ptr %0, align 8, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %..loopexit_crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Abc_TtCountOnesInCofsSimple(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @Abc_TtCountOnesInCofs(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %i.a = icmp slt i32 %1, 7
  %i.b = add nsw i32 %1, -6
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i, label %Abc_TtCountOnesInTruth.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %.014.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.g = load i64, ptr %i.f, align 8, !tbaa !8    ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.g)
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = add nsw i32 %.014.i, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.1.i = phi i32 [ %i.j, %bb.b ], [ %.014.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtCountOnesInTruth.exit, label %.lr.ph.i, !llvm.loop !15

Abc_TtCountOnesInTruth.exit:                      ; preds = %bb.c, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.1.i, %bb.c ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Abc_TtCountOnesInCofs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %1, 7
  br i1 %i.a, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph70, label %.loopexit

.lr.ph70:                                         ; preds = %.preheader
  %i.c = load i64, ptr %0, align 8, !tbaa !8      ; 6 uses
  %i.d = and i64 %i.c, 6148914691236517205
  %i.e = tail call range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.d)
  %i.f = trunc nuw nsw i64 %i.e to i32
  store i32 %i.f, ptr %2, align 4, !tbaa !16
  %exitcond87.not = icmp eq i32 %1, 1
  br i1 %exitcond87.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph70
  %i.g = and i64 %i.c, 3689348814741910323
  %i.h = tail call range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.g)
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.i, ptr %i.j, align 4, !tbaa !16
  %exitcond87.not.1 = icmp eq i32 %1, 2
  br i1 %exitcond87.not.1, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %i.c, 1085102592571150095
  %i.l = tail call range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.k)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.m, ptr %i.n, align 4, !tbaa !16
  %exitcond87.not.2 = icmp eq i32 %1, 3
  br i1 %exitcond87.not.2, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = and i64 %i.c, 71777214294589695
  %i.p = tail call range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.o)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.q, ptr %i.r, align 4, !tbaa !16
  %exitcond87.not.3 = icmp eq i32 %1, 4
  br i1 %exitcond87.not.3, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = and i64 %i.c, 281470681808895
  %i.t = tail call range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.s)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.u, ptr %i.v, align 4, !tbaa !16
  %exitcond87.not.4 = icmp eq i32 %1, 5
  br i1 %exitcond87.not.4, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = and i64 %i.c, 4294967295
  %i.x = tail call range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.w)
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.y, ptr %i.z, align 4, !tbaa !16
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.aa = add nsw i32 %1, -6                      ; 2 uses
  %i.ab = zext nneg i32 %1 to i64                 ; 5 uses
  %i.ac = shl nuw nsw i64 %i.ab, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.ac, i1 false)
  %.not71 = icmp eq i32 %i.aa, 31
  br i1 %.not71, label %.loopexit, label %.preheader62.lr.ph

.preheader62.lr.ph:                               ; preds = %bb.g
  %i.ad = shl nuw i32 1, %i.aa
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ak = add nsw i64 %i.ab, -6                   ; 2 uses
  %i.al = add nsw i64 %i.ab, -7                   ; 2 uses
  %xtraiter = and i64 %i.ab, 1
  %i.am = icmp eq i64 %i.al, 0
  %unroll_iter = and i64 %i.ak, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod99 = trunc i32 %1 to i1
  %xtraiter100 = and i64 %i.ab, 1
  %i.an = icmp eq i64 %i.al, 0
  %unroll_iter103 = and i64 %i.ak, -2
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
end_hunk_0
begin_hunk_1_@Abc_TtCountOnesInCofs:bb.a
  %i.ca = and i64 %i.bz, -281470681808896
  %i.cb = or disjoint i64 %i.ca, %i.by            ; 2 uses
  %.not59.4 = icmp eq i64 %i.cb, 0
  br i1 %.not59.4, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.cb)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = load i32, ptr %i.ai, align 4, !tbaa !16
  %i.cf = add nsw i32 %i.ce, %i.cd
  store i32 %i.cf, ptr %i.ai, align 4, !tbaa !16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cg = and i64 %i.ap, 4294967295
  %i.ch = shl i64 %i.ar, 32
  %i.ci = or disjoint i64 %i.ch, %i.cg            ; 2 uses
  %.not59.5 = icmp eq i64 %i.ci, 0
  br i1 %.not59.5, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.ci)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = load i32, ptr %i.aj, align 4, !tbaa !16
  %i.cm = add nsw i32 %i.cl, %i.ck
  store i32 %i.cm, ptr %i.aj, align 4, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %.loopexit61, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.cn = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.ap)
  %i.co = trunc nuw nsw i64 %i.cn to i32          ; 3 uses
  %i.cp = trunc nuw nsw i64 %indvars.iv80 to i32  ; 3 uses
  br i1 %i.am, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.v ], [ 6, %.lr.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.v ], [ 0, %.lr.ph.preheader ]
  %i.cq = trunc i64 %indvars.iv to i32
  %i.cr = add i32 %i.cq, -6
  %i.cs = shl nuw i32 1, %i.cr
  %i.ct = and i32 %i.cs, %i.cp
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.t, label %.lr.ph.1

bb.t:                                             ; preds = %.lr.ph
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !16
  %i.cx = add nsw i32 %i.cw, %i.co
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !16
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.t
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cy = trunc i64 %indvars.iv.next to i32
  %i.cz = add i32 %i.cy, -6
  %i.da = shl nuw i32 1, %i.cz
  %i.db = and i32 %i.da, %i.cp
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.1
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !16
  %i.df = add nsw i32 %i.de, %i.co
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit61.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !17

.loopexit61.loopexit.unr-lcssa:                   ; preds = %bb.v
  br i1 %lcmp.mod.not, label %.loopexit61, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit61.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 6, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit61.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %i.dg = trunc i64 %indvars.iv.epil.init to i32
  %i.dh = add i32 %i.dg, -6
  %i.di = shl nuw i32 1, %i.dh
  %i.dj = and i32 %i.di, %i.cp
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.w, label %.loopexit61

bb.w:                                             ; preds = %.lr.ph.epil.preheader
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !16
  %i.dn = add nsw i32 %i.dm, %i.co
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !16
  br label %.loopexit61

.loopexit61:                                      ; preds = %.loopexit61.loopexit.unr-lcssa, %bb.w, %.lr.ph.epil.preheader, %bb.s
  %i.do = or disjoint i64 %indvars.iv80, 1        ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !8  ; 2 uses
  %.not58 = icmp eq i64 %i.dq, 0
  br i1 %.not58, label %.loopexit60, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %.loopexit61
  %i.dr = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.dq)
  %i.ds = trunc nuw nsw i64 %i.dr to i32          ; 3 uses
  %i.dt = trunc nuw nsw i64 %i.do to i32          ; 3 uses
  br i1 %i.an, label %.lr.ph67.epil.preheader, label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %bb.z
  %indvars.iv75 = phi i64 [ %indvars.iv.next76.1, %bb.z ], [ 6, %.lr.ph67.preheader ] ; 4 uses
  %niter104 = phi i64 [ %niter104.next.1, %bb.z ], [ 0, %.lr.ph67.preheader ]
  %i.du = trunc i64 %indvars.iv75 to i32
  %i.dv = add i32 %i.du, -6
  %i.dw = shl nuw i32 1, %i.dv
  %i.dx = and i32 %i.dw, %i.dt
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.x, label %.lr.ph67.1

bb.x:                                             ; preds = %.lr.ph67
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv75 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !16
  %i.eb = add nsw i32 %i.ea, %i.ds
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !16
  br label %.lr.ph67.1

.lr.ph67.1:                                       ; preds = %.lr.ph67, %bb.x
  %indvars.iv.next76 = or disjoint i64 %indvars.iv75, 1 ; 2 uses
  %i.ec = trunc i64 %indvars.iv.next76 to i32
  %i.ed = add i32 %i.ec, -6
  %i.ee = shl nuw i32 1, %i.ed
  %i.ef = and i32 %i.ee, %i.dt
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph67.1
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next76 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !16
  %i.ej = add nsw i32 %i.ei, %i.ds
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph67.1
  %indvars.iv.next76.1 = add nuw nsw i64 %indvars.iv75, 2 ; 2 uses
  %niter104.next.1 = add i64 %niter104, 2         ; 2 uses
  %niter104.ncmp.1 = icmp eq i64 %niter104.next.1, %unroll_iter103
  br i1 %niter104.ncmp.1, label %.loopexit60.loopexit.unr-lcssa, label %.lr.ph67, !llvm.loop !18

.loopexit60.loopexit.unr-lcssa:                   ; preds = %bb.z
  br i1 %lcmp.mod101.not, label %.loopexit60, label %.lr.ph67.epil.preheader

.lr.ph67.epil.preheader:                          ; preds = %.loopexit60.loopexit.unr-lcssa, %.lr.ph67.preheader
  %indvars.iv75.epil.init = phi i64 [ 6, %.lr.ph67.preheader ], [ %indvars.iv.next76.1, %.loopexit60.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.ek = trunc i64 %indvars.iv75.epil.init to i32
  %i.el = add i32 %i.ek, -6
  %i.em = shl nuw i32 1, %i.el
  %i.en = and i32 %i.em, %i.dt
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.aa, label %.loopexit60

bb.aa:                                            ; preds = %.lr.ph67.epil.preheader
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv75.epil.init ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !16
  %i.er = add nsw i32 %i.eq, %i.ds
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !16
  br label %.loopexit60

.loopexit60:                                      ; preds = %.loopexit60.loopexit.unr-lcssa, %bb.aa, %.lr.ph67.epil.preheader, %.loopexit61
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.es = icmp slt i64 %indvars.iv.next81, %i.ae
  br i1 %i.es, label %.preheader62, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %.loopexit60, %.lr.ph70, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Abc_TtScc(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 7
  %i.b = add nsw i32 %1, -6
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 2 uses
  %i.e = icmp slt i32 %1, 6
  br i1 %i.e, label %bb.b, label %Abc_TtNormalizeSmallTruth.exit

bb.b:                                             ; preds = %bb.a
  %i.f = shl nuw nsw i32 1, %1
  %i.g = load i64, ptr %0, align 8, !tbaa !8
  %i.h = zext nneg i32 %i.f to i64                ; 6 uses
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = and i64 %i.g, %i.i                       ; 5 uses
  store i64 %i.j, ptr %0, align 8, !tbaa !8
  %i.k = icmp ult i32 %1, 6
  br i1 %i.k, label %.lr.ph.i.preheader, label %Abc_TtNormalizeSmallTruth.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.l = shl nuw nsw i64 %i.h, 1
  %i.m = tail call i64 @llvm.umax.i64(i64 %i.l, i64 64) ; 2 uses
  %2 = zext nneg i32 %1 to i64
  %3 = shl nsw i64 -2, %2                         ; 2 uses
  %4 = sub nsw i64 0, %3
  %i.n = icmp ne i64 %i.m, %4
  %i.o = zext i1 %i.n to i64                      ; 2 uses
  %5 = sub nuw nsw i64 %i.m, %i.o
  %6 = add nsw i64 %5, %3
  %i.p = zext nneg i32 %1 to i64
  %i.q = lshr i64 %6, %i.p
  %i.r = add i64 %i.q, %i.o
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.s, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.s, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.h, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.t = zext nneg i32 %1 to i64
  %i.u = shl i64 %n.vec, %i.t
  %i.v = add i64 %i.u, %i.h
  %i.w = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.j, i64 0
  %i.x = shl nuw nsw <2 x i64> %broadcast.splat, splat (i64 1) ; 3 uses
  %broadcast.splatinsert21 = insertelement <2 x i64> poison, i64 %i.j, i64 0
  %broadcast.splat22 = shufflevector <2 x i64> %broadcast.splatinsert21, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %induction = shl nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add nuw nsw <2 x i64> %i.x, %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.w, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi23 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %step.add = add nuw nsw <2 x i64> %vec.ind, %i.x
  %i.y = shl <2 x i64> %broadcast.splat22, %vec.ind
  %i.z = shl <2 x i64> %broadcast.splat22, %step.add
  %i.aa = or <2 x i64> %vec.phi, %i.y             ; 2 uses
  %i.ab = or <2 x i64> %vec.phi23, %i.z           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next.reass = add nuw nsw <2 x i64> %vec.ind, %invariant.op
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge.i, label %.lr.ph.i.preheader24

.lr.ph.i.preheader24:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.h, %.lr.ph.i.preheader ], [ %i.v, %middle.block ]
  %.ph = phi i64 [ %i.j, %.lr.ph.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader24, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader24 ] ; 2 uses
  %i.ae = phi i64 [ %i.ag, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader24 ]
  %i.af = shl i64 %i.j, %indvars.iv.i
  %i.ag = or i64 %i.ae, %i.af                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, %i.h ; 2 uses
  %i.ah = icmp samesign ult i64 %indvars.iv.next.i, 64
  br i1 %i.ah, label %.lr.ph.i, label %..loopexit_crit_edge.i, !llvm.loop !21

..loopexit_crit_edge.i:                           ; preds = %.lr.ph.i, %middle.block
  %.lcssa20 = phi i64 [ %i.ad, %middle.block ], [ %i.ag, %.lr.ph.i ]
  store i64 %.lcssa20, ptr %0, align 8, !tbaa !8
  br label %Abc_TtNormalizeSmallTruth.exit

Abc_TtNormalizeSmallTruth.exit:                   ; preds = %bb.a, %bb.b, %..loopexit_crit_edge.i
  %i.ai = icmp sgt i32 %i.d, 0
  br i1 %i.ai, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Abc_TtNormalizeSmallTruth.exit
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Abc_TtScc6.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %Abc_TtScc6.exit ] ; 3 uses
  %.014 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.av, %Abc_TtScc6.exit ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !8  ; 2 uses
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  %i.am = and i32 %i.al, 65535
  %i.an = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.am)
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %Abc_TtScc6.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph, %bb.d
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %.01116.i = phi i32 [ %.1.i, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %i.ao = shl nuw i64 1, %indvars.iv.i11
  %i.ap = and i64 %i.ao, %i.ak
  %.not14.i = icmp eq i64 %i.ap, 0
  br i1 %.not14.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.aq = trunc nuw nsw i64 %indvars.iv.i11 to i32
  %i.ar = tail call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.aq)
  %i.as = add nuw nsw i32 %i.ar, %i.an
  %i.at = shl nuw nsw i32 1, %i.as
  %i.au = add nsw i32 %i.at, %.01116.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.1.i = phi i32 [ %i.au, %bb.c ], [ %.01116.i, %.preheader.i ] ; 2 uses
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i11, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i12, 64
  br i1 %exitcond.not.i, label %Abc_TtScc6.exit, label %.preheader.i, !llvm.loop !22

Abc_TtScc6.exit:                                  ; preds = %bb.d, %.lr.ph
  %.0.i = phi i32 [ 0, %.lr.ph ], [ %.1.i, %bb.d ]
  %i.av = add nsw i32 %.0.i, %.014                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %Abc_TtScc6.exit, %Abc_TtNormalizeSmallTruth.exit
  %.0.lcssa = phi i32 [ 0, %Abc_TtNormalizeSmallTruth.exit ], [ %i.av, %Abc_TtScc6.exit ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Abc_TtCountOnesInCofsFast6_rec(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  switch i64 %0, label %bb.b [
    i64 0, label %common.ret40
    i64 -1, label %.preheader
  ]

.preheader:                                       ; preds = %bb.a
  %.not35 = icmp slt i32 %1, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.a = shl nsw i32 %2, 2                        ; 2 uses
  %i.b = add nuw i32 %1, 1
  %wide.trip.count = zext i32 %i.b to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %1, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.c, align 4, !tbaa !16
  %wide.load39 = load <4 x i32>, ptr %i.d, align 4, !tbaa !16
  %i.e = add nsw <4 x i32> %wide.load, %broadcast.splat
  %i.f = add nsw <4 x i32> %wide.load39, %broadcast.splat
  store <4 x i32> %i.e, ptr %i.c, align 4, !tbaa !16
  store <4 x i32> %i.f, ptr %i.d, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = add nsw i32 %i.i, %i.a
  store i32 %i.j, ptr %i.h, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader
  %i.k = shl nsw i32 %2, 3
  br label %common.ret40

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %2, 1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = and i64 %0, 85
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @Abc_TtCountOnesInCofsFast6_rec.bit_count, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = load i32, ptr %3, align 4, !tbaa !16
  %i.q = add nsw i32 %i.p, %i.o
  store i32 %i.q, ptr %3, align 4, !tbaa !16
  %i.r = and i64 %0, 51
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @Abc_TtCountOnesInCofsFast6_rec.bit_count, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !16
  %i.w = add nsw i32 %i.v, %i.t
  store i32 %i.w, ptr %i.u, align 4, !tbaa !16
  %i.x = and i64 %0, 15
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @Abc_TtCountOnesInCofsFast6_rec.bit_count, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !16
  %i.ac = add nsw i32 %i.ab, %i.z
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !16
  %i.ad = and i64 %0, 255
end_hunk_1
begin_hunk_2_@Abc_TtCanonicizeHie:bb.a

.lr.ph231:                                        ; preds = %.lr.ph231.preheader, %bb.ah
  %i.ll = phi i32 [ %.pre297, %.lr.ph231.preheader ], [ %i.ln, %bb.ah ] ; 2 uses
  %indvars.iv274 = phi i64 [ 1, %.lr.ph231.preheader ], [ %indvars.iv.next275, %bb.ah ] ; 2 uses
  %.2230 = phi i32 [ 0, %.lr.ph231.preheader ], [ %.3, %bb.ah ] ; 2 uses
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 3 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next275
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !16 ; 2 uses
  %i.lo = icmp eq i32 %i.ll, %i.ln
  br i1 %i.lo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph231
  %i.lp = load i32, ptr %i.ay, align 4, !tbaa !16
  %i.lq = sdiv i32 %i.lp, 2
  %i.lr = icmp ne i32 %i.ll, %i.lq
  %i.ls = zext i1 %i.lr to i32
  %i.lt = trunc nuw nsw i64 %indvars.iv274 to i32
  %i.lu = call i32 @Abc_TtCofactorPerm(ptr noundef %1, i32 noundef %i.lt, i32 noundef %i.j, i32 noundef %i.ls, ptr noundef %3, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.lv = or i32 %i.lu, %.2230
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph231, %bb.ag
  %.3 = phi i32 [ %i.lv, %bb.ag ], [ %.2230, %.lr.ph231 ] ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next275, %wide.trip.count277
  br i1 %exitcond278.not, label %._crit_edge232, label %.lr.ph231, !llvm.loop !296

._crit_edge232:                                   ; preds = %bb.ah
  %i.lw = icmp eq i32 %.3, 0
  br i1 %i.lw, label %.thread197, label %.lr.ph226.1

.thread197:                                       ; preds = %bb.ad, %._crit_edge227, %._crit_edge227.4, %._crit_edge232.3, %._crit_edge227.3, %._crit_edge232.2, %._crit_edge227.2, %._crit_edge232.1, %._crit_edge227.1, %._crit_edge232, %.preheader199
  %i.lx = tail call i32 @Abc_TtHieRetrieveOrInsert(ptr noundef %0, i32 noundef 3, ptr noundef %1, ptr noundef %1)
  %i.ly = icmp sgt i32 %i.lx, 0
  br i1 %i.ly, label %Abc_TtClear.exit, label %bb.ai

bb.ai:                                            ; preds = %.thread197
  %.not172 = icmp eq i32 %4, 0
  br i1 %.not172, label %bb.as, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store i32 0, ptr %i.e, align 16, !tbaa !16
  br i1 %i.eq, label %.lr.ph238.preheader, label %._crit_edge239

.lr.ph238.preheader:                              ; preds = %bb.aj
  %wide.trip.count283 = zext nneg i32 %i.ep to i64
  %.pre306 = load i32, ptr %i.a, align 16, !tbaa !16
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %bb.am
  %i.lz = phi i32 [ %.pre306, %.lr.ph238.preheader ], [ %i.mb, %bb.am ]
  %indvars.iv280 = phi i64 [ 0, %.lr.ph238.preheader ], [ %indvars.iv.next281, %bb.am ]
  %.0236 = phi i32 [ 0, %.lr.ph238.preheader ], [ %.1, %bb.am ] ; 3 uses
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 3 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next281
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !16 ; 2 uses
  %i.mc = icmp eq i32 %i.lz, %i.mb
  %i.md = sext i32 %.0236 to i64
  %i.me = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.md ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !16 ; 2 uses
  %i.mg = add nsw i32 %i.mf, 1
  store i32 %i.mg, ptr %i.me, align 4, !tbaa !16
  br i1 %i.mc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph238
  %i.mh = add nsw i32 %i.mf, 2
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph238
  %i.mi = add nsw i32 %.0236, 1                   ; 2 uses
  %i.mj = sext i32 %i.mi to i64
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.mj
  store i32 0, ptr %i.mk, align 4, !tbaa !16
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.pre309 = phi i32 [ %i.mh, %bb.ak ], [ 1, %bb.al ]
  %.1 = phi i32 [ %.0236, %bb.ak ], [ %i.mi, %bb.al ] ; 2 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next281, %wide.trip.count283
  br i1 %exitcond284.not, label %._crit_edge239, label %.lr.ph238, !llvm.loop !297

._crit_edge239:                                   ; preds = %bb.am, %bb.aj
  %i.ml = phi i32 [ 1, %bb.aj ], [ %.pre309, %bb.am ]
  %.0.lcssa = phi i32 [ 0, %bb.aj ], [ %.1, %bb.am ] ; 2 uses
  %i.mm = sext i32 %.0.lcssa to i64
  %i.mn = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.mm
  store i32 %i.ml, ptr %i.mn, align 4, !tbaa !16
  %i.mo = add nsw i32 %.0.lcssa, 1                ; 3 uses
  %.not173241 = icmp slt i32 %2, 0                ; 2 uses
  br i1 %.not173241, label %._crit_edge245, label %.lr.ph244.preheader

.lr.ph244.preheader:                              ; preds = %._crit_edge239
  %i.mp = add nuw i32 %2, 1
  %wide.trip.count288 = zext i32 %i.mp to i64
  br label %.lr.ph244

.lr.ph244:                                        ; preds = %.lr.ph244.preheader, %.lr.ph244
  %indvars.iv285 = phi i64 [ 0, %.lr.ph244.preheader ], [ %indvars.iv.next286, %.lr.ph244 ] ; 3 uses
  %i.mq = trunc nuw nsw i64 %indvars.iv285 to i32
  %i.mr = tail call ptr @setPermInfoPtr(i32 noundef %i.mq) #21
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv285
  store ptr %i.mr, ptr %i.ms, align 8, !tbaa !298
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond289.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count288
  br i1 %exitcond289.not, label %._crit_edge245, label %.lr.ph244, !llvm.loop !299

._crit_edge245:                                   ; preds = %.lr.ph244, %._crit_edge239
  %i.mt = icmp eq i32 %.0163, %i.au
  br i1 %i.mt, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %._crit_edge245
  call void @simpleMinimalGroups(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %i.mo, ptr noundef nonnull %i.f, i32 noundef %2, i32 noundef 1, i32 noundef 1) #21
  br label %bb.ar

bb.ao:                                            ; preds = %._crit_edge245
  %i.mu = load i32, ptr %i.a, align 16, !tbaa !16 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !16
  %.not174 = icmp ne i32 %i.mu, %i.mw
  %i.mx = sub nsw i32 %.0163, %i.mu
  %i.my = icmp eq i32 %i.mu, %i.mx
  %or.cond = select i1 %.not174, i1 %i.my, i1 false
  br i1 %or.cond, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @simpleMinimalGroups(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %i.mo, ptr noundef nonnull %i.f, i32 noundef %2, i32 noundef 0, i32 noundef 1) #21
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  call void @simpleMinimalGroups(ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %i.mo, ptr noundef nonnull %i.f, i32 noundef %2, i32 noundef 0, i32 noundef 0) #21
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.an
  br i1 %.not173241, label %._crit_edge250, label %.lr.ph249.preheader

.lr.ph249.preheader:                              ; preds = %bb.ar
  %i.mz = add nuw i32 %2, 1
  %wide.trip.count293 = zext i32 %i.mz to i64
  br label %.lr.ph249

.lr.ph249:                                        ; preds = %.lr.ph249.preheader, %.lr.ph249
  %indvars.iv290 = phi i64 [ 0, %.lr.ph249.preheader ], [ %indvars.iv.next291, %.lr.ph249 ] ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv290
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !298
  call void @freePermInfoPtr(ptr noundef %i.nb) #21
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next291, %wide.trip.count293
  br i1 %exitcond294.not, label %._crit_edge250, label %.lr.ph249, !llvm.loop !300

._crit_edge250:                                   ; preds = %.lr.ph249, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge250, %bb.ai
  %i.nc = call i32 @Abc_TtHieRetrieveOrInsert(ptr noundef %0, i32 noundef 4, ptr noundef %1, ptr noundef %1) ; 0 uses
  br label %Abc_TtClear.exit

Abc_TtClear.exit:                                 ; preds = %.lr.ph.preheader.i, %.thread197, %._crit_edge220, %._crit_edge209, %bb.d, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 0
}

declare ptr @setPermInfoPtr(i32 noundef) local_unnamed_addr #14

declare void @simpleMinimalGroups(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

declare void @freePermInfoPtr(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define i32 @Abc_TtCanonicizeWrap(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #13 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = icmp slt i32 %3, 7
  %i.d = add nsw i32 %3, -6
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 1, i32 %i.e          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.g = icmp slt i32 %3, 6
  br i1 %i.g, label %bb.b, label %Abc_TtNormalizeSmallTruth.exit

bb.b:                                             ; preds = %bb.a
  %i.h = shl nuw nsw i32 1, %3
  %i.i = load i64, ptr %2, align 8, !tbaa !8
  %i.j = zext nneg i32 %i.h to i64                ; 6 uses
  %notmask.i = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask.i, -1
  %i.l = and i64 %i.i, %i.k                       ; 5 uses
  store i64 %i.l, ptr %2, align 8, !tbaa !8
  %i.m = icmp ult i32 %3, 6
  br i1 %i.m, label %.lr.ph.i.preheader, label %Abc_TtNormalizeSmallTruth.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.n = shl nuw nsw i64 %i.j, 1
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.n, i64 64) ; 2 uses
  %6 = zext nneg i32 %3 to i64
  %7 = shl nsw i64 -2, %6                         ; 2 uses
  %8 = sub nsw i64 0, %7
  %i.p = icmp ne i64 %i.o, %8
  %i.q = zext i1 %i.p to i64                      ; 2 uses
  %9 = sub nuw nsw i64 %i.o, %i.q
  %10 = add nsw i64 %9, %7
  %i.r = zext nneg i32 %3 to i64
  %i.s = lshr i64 %10, %i.r
  %i.t = add i64 %i.s, %i.q
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.u, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.u, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.j, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.v = zext nneg i32 %3 to i64
  %i.w = shl i64 %n.vec, %i.v
  %i.x = add i64 %i.w, %i.j
  %i.y = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.l, i64 0
  %i.z = shl nuw nsw <2 x i64> %broadcast.splat, splat (i64 1) ; 3 uses
  %broadcast.splatinsert61 = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %broadcast.splat62 = shufflevector <2 x i64> %broadcast.splatinsert61, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %induction = shl nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add nuw nsw <2 x i64> %i.z, %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.y, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi63 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %step.add = add nuw nsw <2 x i64> %vec.ind, %i.z
  %i.aa = shl <2 x i64> %broadcast.splat62, %vec.ind
  %i.ab = shl <2 x i64> %broadcast.splat62, %step.add
  %i.ac = or <2 x i64> %vec.phi, %i.aa            ; 2 uses
  %i.ad = or <2 x i64> %vec.phi63, %i.ab          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next.reass = add nuw nsw <2 x i64> %vec.ind, %invariant.op
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !301

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.ad, %i.ac
  %i.af = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge.i, label %.lr.ph.i.preheader97

.lr.ph.i.preheader97:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.j, %.lr.ph.i.preheader ], [ %i.x, %middle.block ]
  %.ph = phi i64 [ %i.l, %.lr.ph.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader97, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader97 ] ; 2 uses
  %i.ag = phi i64 [ %i.ai, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader97 ]
  %i.ah = shl i64 %i.l, %indvars.iv.i
  %i.ai = or i64 %i.ag, %i.ah                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, %i.j ; 2 uses
  %i.aj = icmp samesign ult i64 %indvars.iv.next.i, 64
  br i1 %i.aj, label %.lr.ph.i, label %..loopexit_crit_edge.i, !llvm.loop !302

..loopexit_crit_edge.i:                           ; preds = %.lr.ph.i, %middle.block
  %.lcssa59 = phi i64 [ %i.af, %middle.block ], [ %i.ai, %.lr.ph.i ]
  store i64 %.lcssa59, ptr %2, align 8, !tbaa !8
  br label %Abc_TtNormalizeSmallTruth.exit

Abc_TtNormalizeSmallTruth.exit:                   ; preds = %bb.a, %bb.b, %..loopexit_crit_edge.i
  %i.ak = icmp sgt i32 %i.f, 0
  br i1 %i.ak, label %.lr.ph.preheader.i, label %Abc_TtCountOnesInTruth.exit.thread

.lr.ph.preheader.i:                               ; preds = %Abc_TtNormalizeSmallTruth.exit
  %wide.trip.count.i = zext nneg i32 %i.f to i64  ; 8 uses
  br label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i33 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i34, %bb.d ] ; 2 uses
  %.014.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.d ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i33
  %i.am = load i64, ptr %i.al, align 8, !tbaa !8  ; 2 uses
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i32
  %i.an = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.am)
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = add nsw i32 %.014.i, %i.ao
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i32
  %.1.i = phi i32 [ %i.ap, %bb.c ], [ %.014.i, %.lr.ph.i32 ] ; 2 uses
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i33, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i34, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtCountOnesInTruth.exit, label %.lr.ph.i32, !llvm.loop !15

Abc_TtCountOnesInTruth.exit:                      ; preds = %bb.d
  %i.aq = shl nsw i32 %i.f, 5
  %.not = icmp eq i32 %.1.i, %i.aq
  br i1 %.not, label %.lr.ph.i37.preheader, label %Abc_TtCountOnesInTruth.exit.thread

.lr.ph.i37.preheader:                             ; preds = %Abc_TtCountOnesInTruth.exit
  %min.iters.check65 = icmp ult i32 %i.f, 6
  %i.ar = sub i64 add (i64 ptrtoaddr (ptr @Abc_TtCanonicizeWrap.pTruth2 to i64), i64 -1), %i.a
  %diff.check = icmp ult i64 %i.ar, 31
  %or.cond = or i1 %min.iters.check65, %diff.check
  br i1 %or.cond, label %.lr.ph.i37.preheader95, label %vector.ph66

.lr.ph.i37.preheader95:                           ; preds = %.lr.ph.i37.preheader
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.as = icmp ult i32 %i.f, 4
  br i1 %i.as, label %.lr.ph.i37.epil.preheader, label %.lr.ph.i37.preheader95.new

.lr.ph.i37.preheader95.new:                       ; preds = %.lr.ph.i37.preheader95
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i37

vector.ph66:                                      ; preds = %.lr.ph.i37.preheader
  %n.vec67 = and i64 %wide.trip.count.i, 2147483644
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph66
  %index69 = phi i64 [ 0, %vector.ph66 ], [ %index.next71, %vector.body68 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index69 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <2 x i64>, ptr %i.at, align 8, !tbaa !8
  %wide.load70 = load <2 x i64>, ptr %i.au, align 8, !tbaa !8
  %i.av = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.aw = xor <2 x i64> %wide.load70, splat (i64 -1)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeWrap.pTruth2, i64 %index69 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %i.av, ptr %i.ax, align 16, !tbaa !8
  store <2 x i64> %i.aw, ptr %i.ay, align 16, !tbaa !8
  %index.next71 = add nuw i64 %index69, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next71, %n.vec67
  br i1 %i.az, label %Abc_TtCopy.exit, label %vector.body68, !llvm.loop !303

Abc_TtCountOnesInTruth.exit.thread:               ; preds = %Abc_TtNormalizeSmallTruth.exit, %Abc_TtCountOnesInTruth.exit
  %i.ba = tail call i32 %0(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #21
  br label %Abc_TtCompareRev.exit.thread

.lr.ph.i37:                                       ; preds = %.lr.ph.i37, %.lr.ph.i37.preheader95.new
  %indvars.iv.i38 = phi i64 [ 0, %.lr.ph.i37.preheader95.new ], [ %indvars.iv.next.i39.3, %.lr.ph.i37 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i37.preheader95.new ], [ %niter.next.3, %.lr.ph.i37 ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i38
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !8
  %i.bd = xor i64 %i.bc, -1
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeWrap.pTruth2, i64 %indvars.iv.i38
  store i64 %i.bd, ptr %i.be, align 16, !tbaa !8
  %indvars.iv.next.i39 = or disjoint i64 %indvars.iv.i38, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i39
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !8
  %i.bh = xor i64 %i.bg, -1
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeWrap.pTruth2, i64 %indvars.iv.next.i39
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !8
  %indvars.iv.next.i39.1 = or disjoint i64 %indvars.iv.i38, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i39.1
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !8
  %i.bl = xor i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeWrap.pTruth2, i64 %indvars.iv.next.i39.1
  store i64 %i.bl, ptr %i.bm, align 16, !tbaa !8
  %indvars.iv.next.i39.2 = or disjoint i64 %indvars.iv.i38, 3 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i39.2
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !8
  %i.bp = xor i64 %i.bo, -1
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeWrap.pTruth2, i64 %indvars.iv.next.i39.2
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !8
  %indvars.iv.next.i39.3 = add nuw nsw i64 %indvars.iv.i38, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Abc_TtCopy.exit.loopexit.unr-lcssa, label %.lr.ph.i37, !llvm.loop !304

Abc_TtCopy.exit.loopexit.unr-lcssa:               ; preds = %.lr.ph.i37
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Abc_TtCopy.exit, label %.lr.ph.i37.epil.preheader

.lr.ph.i37.epil.preheader:                        ; preds = %Abc_TtCopy.exit.loopexit.unr-lcssa, %.lr.ph.i37.preheader95
  %indvars.iv.i38.epil.init = phi i64 [ 0, %.lr.ph.i37.preheader95 ], [ %indvars.iv.next.i39.3, %Abc_TtCopy.exit.loopexit.unr-lcssa ]
  %lcmp.mod101 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod101)
  br label %.lr.ph.i37.epil

.lr.ph.i37.epil:                                  ; preds = %.lr.ph.i37.epil, %.lr.ph.i37.epil.preheader
  %indvars.iv.i38.epil = phi i64 [ %indvars.iv.next.i39.epil, %.lr.ph.i37.epil ], [ %indvars.iv.i38.epil.init, %.lr.ph.i37.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i37.epil ], [ 0, %.lr.ph.i37.epil.preheader ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i38.epil
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !8
  %i.bt = xor i64 %i.bs, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeWrap.pTruth2, i64 %indvars.iv.i38.epil
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !8
  %indvars.iv.next.i39.epil = add nuw nsw i64 %indvars.iv.i38.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Abc_TtCopy.exit, label %.lr.ph.i37.epil, !llvm.loop !305

Abc_TtCopy.exit:                                  ; preds = %vector.body68, %Abc_TtCopy.exit.loopexit.unr-lcssa, %.lr.ph.i37.epil
  %i.bv = tail call i32 %0(ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #21 ; 2 uses
  %i.bw = call i32 %0(ptr noundef %1, ptr noundef nonnull @Abc_TtCanonicizeWrap.pTruth2, i32 noundef %3, ptr noundef nonnull %i.b, i32 noundef %5) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.bx = trunc nuw i64 %i.bz to i32
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %bb.f, label %Abc_TtCompareRev.exit.thread, !llvm.loop !78

bb.f:                                             ; preds = %Abc_TtCopy.exit, %bb.e
  %indvars.iv.i4160 = phi i64 [ %wide.trip.count.i, %Abc_TtCopy.exit ], [ %i.bz, %bb.e ]
  %i.bz = add nsw i64 %indvars.iv.i4160, -1       ; 4 uses
end_hunk_2
begin_hunk_3_@Abc_TtCanonicizeAda:bb.a
  %indvars.iv.next44.i = add nsw i64 %indvars.iv43.i, 1
  %i.dh = getelementptr inbounds i8, ptr %3, i64 %indvars.iv43.i
  store i8 %.1.in36.i, ptr %i.dh, align 1, !tbaa !187
  %i.di = zext nneg i8 %.1.in36.i to i64
  %.1.in.in.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.di
  %.1.in.i = load i8, ptr %.1.in.in.i, align 1, !tbaa !187 ; 2 uses
  %i.dj = icmp sgt i8 %.1.in.i, -1
  br i1 %i.dj, label %.lr.ph38.i, label %Abc_TgExpendSymmetry.exit, !llvm.loop !314

Abc_TgExpendSymmetry.exit:                        ; preds = %.lr.ph38.i, %._crit_edge31.i
  call fastcc void @Abc_TgImplementPerm(ptr noundef %5, ptr noundef %3)
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !318 ; 4 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %Abc_TgEnumerationCost.exit, label %.preheader.i

.preheader.i:                                     ; preds = %Abc_TgExpendSymmetry.exit
  %i.dn = icmp sgt i32 %i.dl, 0
  br i1 %i.dn, label %.lr.ph.preheader.i74, label %._crit_edge.i73

.lr.ph.preheader.i74:                             ; preds = %.preheader.i
  %wide.trip.count.i75 = zext nneg i32 %i.dl to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i75, 3     ; 3 uses
  %i.do = icmp ult i32 %i.dl, 4
  br i1 %i.do, label %.lr.ph.i76.epil.preheader, label %.lr.ph.preheader.i74.new

.lr.ph.preheader.i74.new:                         ; preds = %.lr.ph.preheader.i74
  %unroll_iter = and i64 %wide.trip.count.i75, 2147483644
  br label %.lr.ph.i76

.lr.ph.i76:                                       ; preds = %.lr.ph.i76, %.lr.ph.preheader.i74.new
  %indvars.iv.i77 = phi i64 [ 0, %.lr.ph.preheader.i74.new ], [ %indvars.iv.next.i78.3, %.lr.ph.i76 ] ; 5 uses
  %.sroa.5.021.i = phi i32 [ 0, %.lr.ph.preheader.i74.new ], [ %i.eq, %.lr.ph.i76 ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i74.new ], [ %niter.next.3, %.lr.ph.i76 ]
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv.i77
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 93
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !321
  %i.ds = sext i8 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !16
  %i.dv = add nsw i32 %i.du, %.sroa.5.021.i
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv.i77
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 95
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !321
  %i.dz = sext i8 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !16
  %i.ec = add nsw i32 %i.eb, %i.dv
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv.i77
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 97
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !321
  %i.eg = sext i8 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !16
  %i.ej = add nsw i32 %i.ei, %i.ec
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv.i77
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 99
  %i.em = load i8, ptr %i.el, align 1, !tbaa !321
  %i.en = sext i8 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !16
  %i.eq = add nsw i32 %i.ep, %i.ej                ; 3 uses
  %indvars.iv.next.i78.3 = add nuw nsw i64 %indvars.iv.i77, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i80.unr-lcssa, label %.lr.ph.i76, !llvm.loop !331

._crit_edge.loopexit.i80.unr-lcssa:               ; preds = %.lr.ph.i76
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i80, label %.lr.ph.i76.epil.preheader

.lr.ph.i76.epil.preheader:                        ; preds = %._crit_edge.loopexit.i80.unr-lcssa, %.lr.ph.preheader.i74
  %indvars.iv.i77.epil.init = phi i64 [ 0, %.lr.ph.preheader.i74 ], [ %indvars.iv.next.i78.3, %._crit_edge.loopexit.i80.unr-lcssa ]
  %.sroa.5.021.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i74 ], [ %i.eq, %._crit_edge.loopexit.i80.unr-lcssa ]
  %lcmp.mod371 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod371)
  br label %.lr.ph.i76.epil

.lr.ph.i76.epil:                                  ; preds = %.lr.ph.i76.epil, %.lr.ph.i76.epil.preheader
  %indvars.iv.i77.epil = phi i64 [ %indvars.iv.i77.epil.init, %.lr.ph.i76.epil.preheader ], [ %indvars.iv.next.i78.epil, %.lr.ph.i76.epil ] ; 2 uses
  %.sroa.5.021.i.epil = phi i32 [ %.sroa.5.021.i.epil.init, %.lr.ph.i76.epil.preheader ], [ %i.ex, %.lr.ph.i76.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i76.epil.preheader ], [ %epil.iter.next, %.lr.ph.i76.epil ]
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv.i77.epil
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 93
  %i.et = load i8, ptr %i.es, align 1, !tbaa !321
  %i.eu = sext i8 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !16
  %i.ex = add nsw i32 %i.ew, %.sroa.5.021.i.epil  ; 2 uses
  %indvars.iv.next.i78.epil = add nuw nsw i64 %indvars.iv.i77.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i80, label %.lr.ph.i76.epil, !llvm.loop !332

._crit_edge.loopexit.i80:                         ; preds = %.lr.ph.i76.epil, %._crit_edge.loopexit.i80.unr-lcssa
  %.lcssa369 = phi i32 [ %i.eq, %._crit_edge.loopexit.i80.unr-lcssa ], [ %i.ex, %.lr.ph.i76.epil ]
  %i.ey = sitofp i32 %.lcssa369 to double
  br label %._crit_edge.i73

._crit_edge.i73:                                  ; preds = %._crit_edge.loopexit.i80, %.preheader.i
  %.sroa.5.0.lcssa.i = phi double [ 0.000000e+00, %.preheader.i ], [ %i.ey, %._crit_edge.loopexit.i80 ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !317
  %.not.i = icmp eq i32 %i.fa, 0
  br i1 %.not.i, label %bb.f, label %Abc_TgRecordPhase1.exit.i

bb.f:                                             ; preds = %._crit_edge.i73
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !326
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 93
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !321
  %i.fg = sext i8 %i.ff to i32
  br label %Abc_TgRecordPhase1.exit.i

bb.h:                                             ; preds = %bb.f
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !327 ; 9 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 93
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !321 ; 4 uses
  %i.fl = sext i8 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 164 ; 3 uses
  %i.fn = icmp sgt i8 %i.fk, 0
  br i1 %i.fn, label %.lr.ph27.i.i.i, label %Abc_TgReorderFGrps.exit.i.i

.lr.ph27.i.i.i:                                   ; preds = %bb.h
  %wide.trip.count.i.i.i = zext nneg i8 %i.fk to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 124 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.critedge.i.i.i, %.lr.ph27.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph27.i.i.i ], [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ] ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv.i.i.i
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !187 ; 2 uses
  %.not28.i.i.i = icmp eq i64 %indvars.iv.i.i.i, 0
  br i1 %.not28.i.i.i, label %.critedge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.fr = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.fs = sext i8 %i.fq to i64
  %i.ft = getelementptr inbounds i8, ptr %i.fo, i64 %i.fs
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i
  %.023.i.i.i = phi i32 [ %i.fr, %.lr.ph.i.i.i ], [ %i.gd, %bb.k ] ; 4 uses
  %i.fu = zext nneg i32 %.023.i.i.i to i64
  %i.fv = getelementptr i8, ptr %i.fm, i64 %i.fu  ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 -1
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !187 ; 2 uses
  %i.fy = sext i8 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %i.fo, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !187
  %i.gb = load i8, ptr %i.ft, align 1, !tbaa !187
  %i.gc = icmp sgt i8 %i.ga, %i.gb
  br i1 %i.gc, label %bb.k, label %.critedge.loopexit.i.i.i

bb.k:                                             ; preds = %bb.j
  store i8 %i.fx, ptr %i.fv, align 1, !tbaa !187
  %i.gd = add nsw i32 %.023.i.i.i, -1
  %i.ge = icmp sgt i32 %.023.i.i.i, 1
  br i1 %i.ge, label %bb.j, label %.critedge.loopexit.i.i.i, !llvm.loop !333

.critedge.loopexit.i.i.i:                         ; preds = %bb.k, %bb.j
  %.0.lcssa.ph.i.i.i = phi i32 [ %.023.i.i.i, %bb.j ], [ 0, %bb.k ]
  %i.gf = sext i32 %.0.lcssa.ph.i.i.i to i64
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.loopexit.i.i.i, %bb.i
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.i ], [ %i.gf, %.critedge.loopexit.i.i.i ]
  %i.gg = getelementptr inbounds i8, ptr %i.fm, i64 %.0.lcssa.i.i.i
  store i8 %i.fq, ptr %i.gg, align 1, !tbaa !187
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %Abc_TgReorderFGrps.exit.i.i, label %bb.i, !llvm.loop !334

Abc_TgReorderFGrps.exit.i.i:                      ; preds = %.critedge.i.i.i, %bb.h
  %i.gh = load ptr, ptr %5, align 8, !tbaa !315   ; 4 uses
  %i.gi = load i32, ptr %i.dd, align 8, !tbaa !313 ; 8 uses
  %i.gj = icmp slt i32 %i.gi, 7
  %i.gk = add nsw i32 %i.gi, -6
  %i.gl = shl nuw i32 1, %i.gk
  %i.gm = select i1 %i.gj, i32 1, i32 %i.gl       ; 2 uses
  %i.gn = icmp slt i32 %i.gi, 6
  br i1 %i.gn, label %bb.l, label %Abc_TtNormalizeSmallTruth.exit.i.i.i

bb.l:                                             ; preds = %Abc_TgReorderFGrps.exit.i.i
  %i.go = shl nuw nsw i32 1, %i.gi
  %i.gp = load i64, ptr %i.gh, align 8, !tbaa !8
  %i.gq = zext nneg i32 %i.go to i64              ; 6 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.gq
  %i.gr = xor i64 %notmask.i.i.i.i, -1
  %i.gs = and i64 %i.gp, %i.gr                    ; 5 uses
  store i64 %i.gs, ptr %i.gh, align 8, !tbaa !8
  %i.gt = icmp ult i32 %i.gi, 6
  br i1 %i.gt, label %.lr.ph.i.i.i.i.preheader, label %Abc_TtNormalizeSmallTruth.exit.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.l
  %i.gu = shl nuw nsw i64 %i.gq, 1
  %i.gv = call i64 @llvm.umax.i64(i64 %i.gu, i64 64) ; 2 uses
  %7 = zext nneg i32 %i.gi to i64
  %8 = shl nsw i64 -2, %7                         ; 2 uses
  %9 = sub nsw i64 0, %8
  %i.gw = icmp ne i64 %i.gv, %9
  %i.gx = zext i1 %i.gw to i64                    ; 2 uses
  %10 = sub nuw nsw i64 %i.gv, %i.gx
  %11 = add nsw i64 %10, %8
  %i.gy = zext nneg i32 %i.gi to i64
  %i.gz = lshr i64 %11, %i.gy
  %i.ha = add i64 %i.gz, %i.gx
  %i.hb = add i64 %i.ha, 1                        ; 3 uses
  %min.iters.check194 = icmp ult i64 %i.hb, 4
  br i1 %min.iters.check194, label %.lr.ph.i.i.i.i.preheader364, label %vector.ph195

vector.ph195:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec196 = and i64 %i.hb, -4                   ; 3 uses
  %broadcast.splatinsert197 = insertelement <2 x i64> poison, i64 %i.gq, i64 0
  %broadcast.splat198 = shufflevector <2 x i64> %broadcast.splatinsert197, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hc = zext nneg i32 %i.gi to i64
  %i.hd = shl i64 %n.vec196, %i.hc
  %i.he = add i64 %i.hd, %i.gq
  %i.hf = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.gs, i64 0
  %i.hg = shl nuw nsw <2 x i64> %broadcast.splat198, splat (i64 1) ; 3 uses
  %broadcast.splatinsert199 = insertelement <2 x i64> poison, i64 %i.gs, i64 0
  %broadcast.splat200 = shufflevector <2 x i64> %broadcast.splatinsert199, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %induction201 = shl nuw nsw <2 x i64> %broadcast.splat198, <i64 0, i64 1>
  %invariant.op = add nuw nsw <2 x i64> %i.hg, %i.hg
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph195
  %index203 = phi i64 [ 0, %vector.ph195 ], [ %index.next206, %vector.body202 ]
  %vec.ind204 = phi <2 x i64> [ %induction201, %vector.ph195 ], [ %vec.ind.next207.reass, %vector.body202 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.hf, %vector.ph195 ], [ %i.hj, %vector.body202 ]
  %vec.phi205 = phi <2 x i64> [ zeroinitializer, %vector.ph195 ], [ %i.hk, %vector.body202 ]
  %step.add = add nuw nsw <2 x i64> %vec.ind204, %i.hg
  %i.hh = shl <2 x i64> %broadcast.splat200, %vec.ind204
  %i.hi = shl <2 x i64> %broadcast.splat200, %step.add
  %i.hj = or <2 x i64> %vec.phi, %i.hh            ; 2 uses
  %i.hk = or <2 x i64> %vec.phi205, %i.hi         ; 2 uses
  %index.next206 = add nuw i64 %index203, 4       ; 2 uses
  %vec.ind.next207.reass = add nuw nsw <2 x i64> %vec.ind204, %invariant.op
  %i.hl = icmp eq i64 %index.next206, %n.vec196
  br i1 %i.hl, label %middle.block208, label %vector.body202, !llvm.loop !335

middle.block208:                                  ; preds = %vector.body202
  %bin.rdx = or <2 x i64> %i.hk, %i.hj
  %i.hm = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n209 = icmp eq i64 %i.hb, %n.vec196
  br i1 %cmp.n209, label %..loopexit_crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader364

.lr.ph.i.i.i.i.preheader364:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block208
  %indvars.iv.i.i.i.i.ph = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.preheader ], [ %i.he, %middle.block208 ]
  %.ph365 = phi i64 [ %i.gs, %.lr.ph.i.i.i.i.preheader ], [ %i.hm, %middle.block208 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader364, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader364 ] ; 2 uses
  %i.hn = phi i64 [ %i.hp, %.lr.ph.i.i.i.i ], [ %.ph365, %.lr.ph.i.i.i.i.preheader364 ]
  %i.ho = shl i64 %i.gs, %indvars.iv.i.i.i.i
  %i.hp = or i64 %i.hn, %i.ho                     ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, %i.gq ; 2 uses
  %i.hq = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, 64
  br i1 %i.hq, label %.lr.ph.i.i.i.i, label %..loopexit_crit_edge.i.i.i.i, !llvm.loop !336

..loopexit_crit_edge.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i, %middle.block208
  %.lcssa155 = phi i64 [ %i.hm, %middle.block208 ], [ %i.hp, %.lr.ph.i.i.i.i ]
  store i64 %.lcssa155, ptr %i.gh, align 8, !tbaa !8
  br label %Abc_TtNormalizeSmallTruth.exit.i.i.i

Abc_TtNormalizeSmallTruth.exit.i.i.i:             ; preds = %..loopexit_crit_edge.i.i.i.i, %bb.l, %Abc_TgReorderFGrps.exit.i.i
  %i.hr = icmp sgt i32 %i.gm, 0
  br i1 %i.hr, label %.lr.ph.preheader.i.i.i, label %Abc_TtScc.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %Abc_TtNormalizeSmallTruth.exit.i.i.i
  %wide.trip.count.i33.i.i = zext nneg i32 %i.gm to i64
  br label %.lr.ph.i34.i.i

.lr.ph.i34.i.i:                                   ; preds = %Abc_TtScc6.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i35.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i36.i.i, %Abc_TtScc6.exit.i.i.i ] ; 3 uses
  %.014.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.ie, %Abc_TtScc6.exit.i.i.i ]
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.i35.i.i
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !8  ; 2 uses
  %i.hu = trunc nuw nsw i64 %indvars.iv.i35.i.i to i32
  %i.hv = and i32 %i.hu, 65535
  %i.hw = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.hv)
  %.not.i.i.i.i = icmp eq i64 %i.ht, 0
  br i1 %.not.i.i.i.i, label %Abc_TtScc6.exit.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i34.i.i, %bb.n
  %indvars.iv.i11.i.i.i = phi i64 [ %indvars.iv.next.i12.i.i.i, %bb.n ], [ 0, %.lr.ph.i34.i.i ] ; 3 uses
  %.01116.i.i.i.i = phi i32 [ %.1.i.i.i.i, %bb.n ], [ 0, %.lr.ph.i34.i.i ] ; 2 uses
  %i.hx = shl nuw i64 1, %indvars.iv.i11.i.i.i
  %i.hy = and i64 %i.hx, %i.ht
  %.not14.i.i.i.i = icmp eq i64 %i.hy, 0
  br i1 %.not14.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader.i.i.i.i
  %i.hz = trunc nuw nsw i64 %indvars.iv.i11.i.i.i to i32
  %i.ia = call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.hz)
  %i.ib = add nuw nsw i32 %i.ia, %i.hw
  %i.ic = shl nuw nsw i32 1, %i.ib
  %i.id = add nsw i32 %i.ic, %.01116.i.i.i.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader.i.i.i.i
  %.1.i.i.i.i = phi i32 [ %i.id, %bb.m ], [ %.01116.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i12.i.i.i = add nuw nsw i64 %indvars.iv.i11.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i12.i.i.i, 64
  br i1 %exitcond.not.i.i.i.i, label %Abc_TtScc6.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !22

Abc_TtScc6.exit.i.i.i:                            ; preds = %bb.n, %.lr.ph.i34.i.i
  %.0.i.i.i.i = phi i32 [ 0, %.lr.ph.i34.i.i ], [ %.1.i.i.i.i, %bb.n ]
  %i.ie = add nsw i32 %.0.i.i.i.i, %.014.i.i.i    ; 2 uses
  %indvars.iv.next.i36.i.i = add nuw nsw i64 %indvars.iv.i35.i.i, 1 ; 2 uses
  %exitcond.not.i37.i.i = icmp eq i64 %indvars.iv.next.i36.i.i, %wide.trip.count.i33.i.i
  br i1 %exitcond.not.i37.i.i, label %Abc_TtScc.exit.i.i, label %.lr.ph.i34.i.i, !llvm.loop !23

Abc_TtScc.exit.i.i:                               ; preds = %Abc_TtScc6.exit.i.i.i, %Abc_TtNormalizeSmallTruth.exit.i.i.i
  %.0.lcssa.i32.i.i = phi i32 [ 0, %Abc_TtNormalizeSmallTruth.exit.i.i.i ], [ %i.ie, %Abc_TtScc6.exit.i.i.i ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 8 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !247 ; 7 uses
  %i.ih = load i32, ptr %i.fi, align 8, !tbaa !243
  %i.ii = icmp eq i32 %i.ig, %i.ih
  br i1 %i.ii, label %bb.o, label %Vec_IntPush.exit.i.i

bb.o:                                             ; preds = %Abc_TtScc.exit.i.i
  %i.ij = icmp slt i32 %i.ig, 16
  br i1 %i.ij, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ik = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !246 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not9.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.im = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.il, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.in = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %bb.r, %bb.q
  %i.io = phi ptr [ %i.im, %bb.q ], [ %i.in, %bb.r ]
  store ptr %i.io, ptr %i.ik, align 8, !tbaa !246
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.s:                                             ; preds = %bb.o
  %i.ip = icmp samesign ult i32 %i.ig, 1073741823
  %i.iq = shl nuw nsw i32 %i.ig, 1
  %spec.select.i.i.i = select i1 %i.ip, i32 %i.iq, i32 2147483647 ; 3 uses
  %.not.i9.i.i.i = icmp samesign ult i32 %i.ig, %spec.select.i.i.i
  br i1 %.not.i9.i.i.i, label %bb.t, label %Vec_IntPush.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.ir = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !246 ; 2 uses
  %.not9.i10.i.i.i = icmp eq ptr %i.is, null
  %i.it = zext nneg i32 %spec.select.i.i.i to i64
  %i.iu = shl nuw nsw i64 %i.it, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.iv = call ptr @realloc(ptr noundef nonnull %i.is, i64 noundef %i.iu) #24
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.iw = call noalias ptr @malloc(i64 noundef %i.iu) #23
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ix = phi ptr [ %i.iv, %bb.u ], [ %i.iw, %bb.v ]
  store ptr %i.ix, ptr %i.ir, align 8, !tbaa !246
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i:              ; preds = %bb.w, %Vec_IntGrow.exit.i.i.i
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.w ], [ 16, %Vec_IntGrow.exit.i.i.i ]
  store i32 %spec.select.sink.i.i.i, ptr %i.fi, align 8, !tbaa !243
  %.pre.i.i = load i32, ptr %i.if, align 4, !tbaa !247
  br label %Vec_IntPush.exit.i.i

Vec_IntPush.exit.i.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i.i.i, %bb.s, %Abc_TtScc.exit.i.i
  %i.iy = phi i32 [ %i.ig, %Abc_TtScc.exit.i.i ], [ %i.ig, %bb.s ], [ %.pre.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !246 ; 2 uses
  %i.jb = add nsw i32 %i.iy, 1
  store i32 %i.jb, ptr %i.if, align 4, !tbaa !247
  %i.jc = sext i32 %i.iy to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.jc
  store i32 0, ptr %i.jd, align 4, !tbaa !16
  %i.je = getelementptr inbounds nuw i8, ptr %5, i64 124 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 4 uses
  br label %.outer

.outer:                                           ; preds = %Vec_IntPush.exit74.i.i, %Vec_IntPush.exit.i.i
  %.ph356 = phi ptr [ %i.pl, %Vec_IntPush.exit74.i.i ], [ %i.ja, %Vec_IntPush.exit.i.i ] ; 7 uses
  %.027.i.i.ph = phi i32 [ %i.jh, %Vec_IntPush.exit74.i.i ], [ 0, %Vec_IntPush.exit.i.i ]
  %.0.i.i.ph = phi i32 [ %.1105.i.i, %Vec_IntPush.exit74.i.i ], [ %.0.lcssa.i32.i.i, %Vec_IntPush.exit.i.i ] ; 7 uses
  %.pre = load ptr, ptr %5, align 8
  %.pre113 = load i32, ptr %i.dd, align 8
  br label %bb.x

bb.x:                                             ; preds = %.outer, %Abc_TtScc.exit66.i.i
  %.027.i.i = phi i32 [ %i.jh, %Abc_TtScc.exit66.i.i ], [ %.027.i.i.ph, %.outer ]
  %i.jh = add i32 %.027.i.i, 1                    ; 5 uses
  br label %bb.y

end_hunk_3
begin_hunk_4_@Abc_TtCanonicizeAda:bb.a
bb.ac:                                            ; preds = %bb.aa
  %i.km = icmp slt i8 %i.jz, 6
  br i1 %i.km, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not.i.i41.i.i, label %Abc_TgFlipVar.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ad
  %i.kn = shl nuw nsw i32 1, %i.ka
  %i.ko = zext nneg i32 %i.kn to i64              ; 3 uses
  %i.kp = sext i8 %i.jz to i64
  %i.kq = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.kp
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !8  ; 3 uses
  br i1 %min.iters.check234, label %scalar.ph233, label %vector.ph235

vector.ph235:                                     ; preds = %.lr.ph.i.i.i.i.i
  %broadcast.splatinsert237 = insertelement <2 x i64> poison, i64 %i.ko, i64 0
  %broadcast.splat238 = shufflevector <2 x i64> %broadcast.splatinsert237, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert239 = insertelement <2 x i64> poison, i64 %i.kr, i64 0
  %broadcast.splat240 = shufflevector <2 x i64> %broadcast.splatinsert239, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph235
  %index242 = phi i64 [ 0, %vector.ph235 ], [ %index.next244, %vector.body241 ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %.pre112, i64 %index242 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ks, align 8, !tbaa !8 ; 2 uses
  %wide.load243 = load <2 x i64>, ptr %i.kt, align 8, !tbaa !8 ; 2 uses
  %i.ku = shl <2 x i64> %wide.load, %broadcast.splat238
  %i.kv = shl <2 x i64> %wide.load243, %broadcast.splat238
  %i.kw = and <2 x i64> %i.ku, %broadcast.splat240
  %i.kx = and <2 x i64> %i.kv, %broadcast.splat240
  %i.ky = and <2 x i64> %wide.load, %broadcast.splat240
  %i.kz = and <2 x i64> %wide.load243, %broadcast.splat240
  %i.la = lshr <2 x i64> %i.ky, %broadcast.splat238
  %i.lb = lshr <2 x i64> %i.kz, %broadcast.splat238
  %i.lc = or <2 x i64> %i.la, %i.kw
  %i.ld = or <2 x i64> %i.lb, %i.kx
  store <2 x i64> %i.lc, ptr %i.ks, align 8, !tbaa !8
  store <2 x i64> %i.ld, ptr %i.kt, align 8, !tbaa !8
  %index.next244 = add nuw i64 %index242, 4       ; 2 uses
  %i.le = icmp eq i64 %index.next244, %n.vec236
  br i1 %i.le, label %Abc_TgFlipVar.exit.i.i.i, label %vector.body241, !llvm.loop !337

scalar.ph233:                                     ; preds = %.lr.ph.i.i.i.i.i, %scalar.ph233
  %indvars.iv56.i.i.i.i.i = phi i64 [ %indvars.iv.next57.i.i.i.i.i, %scalar.ph233 ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.pre112, i64 %indvars.iv56.i.i.i.i.i ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !8  ; 2 uses
  %i.lh = shl i64 %i.lg, %i.ko
  %i.li = and i64 %i.lh, %i.kr
  %i.lj = and i64 %i.lg, %i.kr
  %i.lk = lshr i64 %i.lj, %i.ko
  %i.ll = or i64 %i.lk, %i.li
  store i64 %i.ll, ptr %i.lf, align 8, !tbaa !8
  %indvars.iv.next57.i.i.i.i.i = add nuw nsw i64 %indvars.iv56.i.i.i.i.i, 1 ; 2 uses
  %exitcond60.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next57.i.i.i.i.i, %wide.trip.count59.i.i.i.i.i
  br i1 %exitcond60.not.i.i.i.i.i, label %Abc_TgFlipVar.exit.i.i.i, label %scalar.ph233, !llvm.loop !338

bb.ae:                                            ; preds = %bb.ac
  %i.lm = add nsw i32 %i.ka, -6                   ; 3 uses
  %i.ln = shl nuw i32 1, %i.lm                    ; 4 uses
  br i1 %.not.i.i41.i.i, label %Abc_TgFlipVar.exit.i.i.i, label %.preheader.lr.ph.i.i.i.i.i

.preheader.lr.ph.i.i.i.i.i:                       ; preds = %bb.ae
  %.not.i.i.i.i.i = icmp eq i32 %i.lm, 31
  %i.lo = shl i32 2, %i.lm
  %i.lp = sext i32 %i.lo to i64                   ; 2 uses
  br i1 %.not.i.i.i.i.i, label %Abc_TgFlipVar.exit.i.i.i, label %.preheader.us.preheader.i.i.i.i.i

.preheader.us.preheader.i.i.i.i.i:                ; preds = %.preheader.lr.ph.i.i.i.i.i
  %i.lq = sext i32 %i.ln to i64                   ; 2 uses
  %smax.i.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ln, i32 1) ; 2 uses
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %smax.i.i.i.i.i to i64 ; 5 uses
  %i.lr = shl nuw nsw i64 %wide.trip.count.i.i.i.i.i, 3
  %i.ls = shl nsw i64 %i.lp, 3
  %i.lt = add nsw i64 %i.lq, %wide.trip.count.i.i.i.i.i
  %i.lu = shl nsw i64 %i.lt, 3
  %min.iters.check250 = icmp slt i32 %i.ln, 4
  %i.lv = getelementptr i8, ptr %.pre112, i64 %i.lu
  %i.lw = getelementptr i8, ptr %.pre112, i64 %i.lr
  %n.vec252 = and i64 %wide.trip.count.i.i.i.i.i, 2147483644
  %xtraiter372 = and i64 %wide.trip.count.i.i.i.i.i, 1
  %i.lx = icmp slt i32 %i.ln, 2
  %unroll_iter376 = and i64 %wide.trip.count.i.i.i.i.i, 2147483646
  %lcmp.mod374.not = icmp eq i64 %xtraiter372, 0
  %lcmp.mod375 = trunc i32 %smax.i.i.i.i.i to i1
  br label %.preheader.us.i.i.i.i.i

.preheader.us.i.i.i.i.i:                          ; preds = %._crit_edge.us.i.i.i.i.i, %.preheader.us.preheader.i.i.i.i.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i.i.i.i.i ], [ 0, %.preheader.us.preheader.i.i.i.i.i ] ; 2 uses
  %.051.us.i.i.i.i.i = phi ptr [ %i.mn, %._crit_edge.us.i.i.i.i.i ], [ %.pre112, %.preheader.us.preheader.i.i.i.i.i ] ; 7 uses
  %invariant.gep.i.i.i.i.i = getelementptr [8 x i8], ptr %.051.us.i.i.i.i.i, i64 %i.lq ; 5 uses
  br i1 %min.iters.check250, label %scalar.ph249.preheader, label %vector.memcheck

scalar.ph249.preheader:                           ; preds = %vector.memcheck, %.preheader.us.i.i.i.i.i
  br i1 %i.lx, label %scalar.ph249.epil.preheader, label %scalar.ph249

vector.memcheck:                                  ; preds = %.preheader.us.i.i.i.i.i
  %i.ly = mul i64 %i.ls, %indvar                  ; 2 uses
  %scevgep248 = getelementptr i8, ptr %i.lv, i64 %i.ly
  %scevgep = getelementptr i8, ptr %i.lw, i64 %i.ly
  %bound0 = icmp ult ptr %.051.us.i.i.i.i.i, %scevgep248
  %bound1 = icmp ult ptr %invariant.gep.i.i.i.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph249.preheader, label %vector.body253

vector.body253:                                   ; preds = %vector.memcheck, %vector.body253
  %index254 = phi i64 [ %index.next259, %vector.body253 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.i.i.i.i, i64 %index254 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16 ; 2 uses
  %wide.load255 = load <2 x i64>, ptr %i.lz, align 8, !tbaa !8, !alias.scope !339, !noalias !342
  %wide.load256 = load <2 x i64>, ptr %i.ma, align 8, !tbaa !8, !alias.scope !339, !noalias !342
  %i.mb = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %index254 ; 3 uses
  %i.mc = getelementptr i8, ptr %i.mb, i64 16     ; 2 uses
  %wide.load257 = load <2 x i64>, ptr %i.mb, align 8, !tbaa !8, !alias.scope !342
  %wide.load258 = load <2 x i64>, ptr %i.mc, align 8, !tbaa !8, !alias.scope !342
  store <2 x i64> %wide.load257, ptr %i.lz, align 8, !tbaa !8, !alias.scope !339, !noalias !342
  store <2 x i64> %wide.load258, ptr %i.ma, align 8, !tbaa !8, !alias.scope !339, !noalias !342
  store <2 x i64> %wide.load255, ptr %i.mb, align 8, !tbaa !8, !alias.scope !342
  store <2 x i64> %wide.load256, ptr %i.mc, align 8, !tbaa !8, !alias.scope !342
  %index.next259 = add nuw i64 %index254, 4       ; 2 uses
  %i.md = icmp eq i64 %index.next259, %n.vec252
  br i1 %i.md, label %._crit_edge.us.i.i.i.i.i, label %vector.body253, !llvm.loop !344

scalar.ph249:                                     ; preds = %scalar.ph249.preheader, %scalar.ph249
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.1, %scalar.ph249 ], [ 0, %scalar.ph249.preheader ] ; 4 uses
  %niter377 = phi i64 [ %niter377.next.1, %scalar.ph249 ], [ 0, %scalar.ph249.preheader ]
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !8
  %gep.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.mg = load i64, ptr %gep.i.i.i.i.i, align 8, !tbaa !8
  store i64 %i.mg, ptr %i.me, align 8, !tbaa !8
  store i64 %i.mf, ptr %gep.i.i.i.i.i, align 8, !tbaa !8
  %indvars.iv.next.i.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i ; 2 uses
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !8
  %gep.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i ; 2 uses
  %i.mj = load i64, ptr %gep.i.i.i.i.i.1, align 8, !tbaa !8
  store i64 %i.mj, ptr %i.mh, align 8, !tbaa !8
  store i64 %i.mi, ptr %gep.i.i.i.i.i.1, align 8, !tbaa !8
  %indvars.iv.next.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 2 ; 2 uses
  %niter377.next.1 = add i64 %niter377, 2         ; 2 uses
  %niter377.ncmp.1 = icmp eq i64 %niter377.next.1, %unroll_iter376
  br i1 %niter377.ncmp.1, label %._crit_edge.us.i.i.i.i.i.loopexit.unr-lcssa, label %scalar.ph249, !llvm.loop !345

._crit_edge.us.i.i.i.i.i.loopexit.unr-lcssa:      ; preds = %scalar.ph249
  br i1 %lcmp.mod374.not, label %._crit_edge.us.i.i.i.i.i, label %scalar.ph249.epil.preheader

scalar.ph249.epil.preheader:                      ; preds = %._crit_edge.us.i.i.i.i.i.loopexit.unr-lcssa, %scalar.ph249.preheader
  %indvars.iv.i.i.i.i.i.epil.init = phi i64 [ 0, %scalar.ph249.preheader ], [ %indvars.iv.next.i.i.i.i.i.1, %._crit_edge.us.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod375)
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.epil.init ; 2 uses
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !8
  %gep.i.i.i.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.epil.init ; 2 uses
  %i.mm = load i64, ptr %gep.i.i.i.i.i.epil, align 8, !tbaa !8
  store i64 %i.mm, ptr %i.mk, align 8, !tbaa !8
  store i64 %i.ml, ptr %gep.i.i.i.i.i.epil, align 8, !tbaa !8
  br label %._crit_edge.us.i.i.i.i.i

._crit_edge.us.i.i.i.i.i:                         ; preds = %vector.body253, %scalar.ph249.epil.preheader, %._crit_edge.us.i.i.i.i.i.loopexit.unr-lcssa
  %i.mn = getelementptr inbounds [8 x i8], ptr %.051.us.i.i.i.i.i, i64 %i.lp ; 2 uses
  %i.mo = icmp ult ptr %i.mn, %i.ju
  %indvar.next = add i64 %indvar, 1
  br i1 %i.mo, label %.preheader.us.i.i.i.i.i, label %Abc_TgFlipVar.exit.i.i.i, !llvm.loop !96

Abc_TgFlipVar.exit.i.i.i:                         ; preds = %._crit_edge.us.i.i.i.i.i, %vector.body241, %scalar.ph233, %.preheader.lr.ph.i.i.i.i.i, %bb.ae, %bb.ad, %bb.ab
  %i.mp = shl nuw i32 1, %i.ka
  %i.mq = xor i32 %i.jv, %i.mp                    ; 2 uses
  store i32 %i.mq, ptr %i.jg, align 4, !tbaa !316
  br label %bb.af

bb.af:                                            ; preds = %Abc_TgFlipVar.exit.i.i.i, %.lr.ph.i39.i.i
  %i.mr = phi i32 [ %i.mq, %Abc_TgFlipVar.exit.i.i.i ], [ %i.jv, %.lr.ph.i39.i.i ]
  %i.ms = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.07.i.i.i
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !187 ; 2 uses
  %i.mu = icmp sgt i8 %i.mt, -1
  br i1 %i.mu, label %.lr.ph.i39.i.i, label %Abc_TgFlipSymGroupByVar.exit.i.i, !llvm.loop !346

Abc_TgFlipSymGroupByVar.exit.i.i:                 ; preds = %bb.af, %bb.z
  %i.mv = phi i32 [ %.pre114, %bb.z ], [ %.pre113, %bb.af ] ; 8 uses
  %i.mw = phi ptr [ %.pre112, %bb.z ], [ %.pre, %bb.af ] ; 4 uses
  %i.mx = icmp slt i32 %i.mv, 7
  %i.my = add nsw i32 %i.mv, -6
  %i.mz = shl nuw i32 1, %i.my
  %i.na = select i1 %i.mx, i32 1, i32 %i.mz       ; 2 uses
  %i.nb = icmp slt i32 %i.mv, 6
  br i1 %i.nb, label %bb.ag, label %Abc_TtNormalizeSmallTruth.exit.i42.i.i

bb.ag:                                            ; preds = %Abc_TgFlipSymGroupByVar.exit.i.i
  %i.nc = shl nuw nsw i32 1, %i.mv
  %i.nd = load i64, ptr %i.mw, align 8, !tbaa !8
  %i.ne = zext nneg i32 %i.nc to i64              ; 6 uses
  %notmask.i.i61.i.i = shl nsw i64 -1, %i.ne
  %i.nf = xor i64 %notmask.i.i61.i.i, -1
  %i.ng = and i64 %i.nd, %i.nf                    ; 5 uses
  store i64 %i.ng, ptr %i.mw, align 8, !tbaa !8
  %i.nh = icmp ult i32 %i.mv, 6
  br i1 %i.nh, label %.lr.ph.i.i62.i.i.preheader, label %Abc_TtNormalizeSmallTruth.exit.i42.i.i

.lr.ph.i.i62.i.i.preheader:                       ; preds = %bb.ag
  %i.ni = shl nuw nsw i64 %i.ne, 1
  %i.nj = call i64 @llvm.umax.i64(i64 %i.ni, i64 64) ; 2 uses
  %12 = zext nneg i32 %i.mv to i64
  %13 = shl nsw i64 -2, %12                       ; 2 uses
  %14 = sub nsw i64 0, %13
  %i.nk = icmp ne i64 %i.nj, %14
  %i.nl = zext i1 %i.nk to i64                    ; 2 uses
  %15 = sub nuw nsw i64 %i.nj, %i.nl
  %16 = add nsw i64 %15, %13
  %i.nm = zext nneg i32 %i.mv to i64
  %i.nn = lshr i64 %16, %i.nm
  %i.no = add i64 %i.nn, %i.nl
  %i.np = add i64 %i.no, 1                        ; 3 uses
  %min.iters.check212 = icmp ult i64 %i.np, 4
  br i1 %min.iters.check212, label %.lr.ph.i.i62.i.i.preheader354, label %vector.ph213

vector.ph213:                                     ; preds = %.lr.ph.i.i62.i.i.preheader
  %n.vec214 = and i64 %i.np, -4                   ; 3 uses
  %broadcast.splatinsert215 = insertelement <2 x i64> poison, i64 %i.ne, i64 0
  %broadcast.splat216 = shufflevector <2 x i64> %broadcast.splatinsert215, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nq = zext nneg i32 %i.mv to i64
  %i.nr = shl i64 %n.vec214, %i.nq
  %i.ns = add i64 %i.nr, %i.ne
  %i.nt = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ng, i64 0
  %i.nu = shl nuw nsw <2 x i64> %broadcast.splat216, splat (i64 1) ; 3 uses
  %broadcast.splatinsert217 = insertelement <2 x i64> poison, i64 %i.ng, i64 0
  %broadcast.splat218 = shufflevector <2 x i64> %broadcast.splatinsert217, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %induction219 = shl nuw nsw <2 x i64> %broadcast.splat216, <i64 0, i64 1>
  %invariant.op414 = add nuw nsw <2 x i64> %i.nu, %i.nu
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph213
  %index221 = phi i64 [ 0, %vector.ph213 ], [ %index.next226, %vector.body220 ]
  %vec.ind222 = phi <2 x i64> [ %induction219, %vector.ph213 ], [ %vec.ind.next227.reass, %vector.body220 ] ; 3 uses
  %vec.phi223 = phi <2 x i64> [ %i.nt, %vector.ph213 ], [ %i.nx, %vector.body220 ]
  %vec.phi224 = phi <2 x i64> [ zeroinitializer, %vector.ph213 ], [ %i.ny, %vector.body220 ]
  %step.add225 = add nuw nsw <2 x i64> %vec.ind222, %i.nu
  %i.nv = shl <2 x i64> %broadcast.splat218, %vec.ind222
  %i.nw = shl <2 x i64> %broadcast.splat218, %step.add225
  %i.nx = or <2 x i64> %vec.phi223, %i.nv         ; 2 uses
  %i.ny = or <2 x i64> %vec.phi224, %i.nw         ; 2 uses
  %index.next226 = add nuw i64 %index221, 4       ; 2 uses
  %vec.ind.next227.reass = add nuw nsw <2 x i64> %vec.ind222, %invariant.op414
  %i.nz = icmp eq i64 %index.next226, %n.vec214
  br i1 %i.nz, label %middle.block228, label %vector.body220, !llvm.loop !347

middle.block228:                                  ; preds = %vector.body220
  %bin.rdx229 = or <2 x i64> %i.ny, %i.nx
  %i.oa = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx229) ; 2 uses
  %cmp.n230 = icmp eq i64 %i.np, %n.vec214
  br i1 %cmp.n230, label %..loopexit_crit_edge.i.i65.i.i, label %.lr.ph.i.i62.i.i.preheader354

.lr.ph.i.i62.i.i.preheader354:                    ; preds = %.lr.ph.i.i62.i.i.preheader, %middle.block228
  %indvars.iv.i.i63.i.i.ph = phi i64 [ %i.ne, %.lr.ph.i.i62.i.i.preheader ], [ %i.ns, %middle.block228 ]
  %.ph = phi i64 [ %i.ng, %.lr.ph.i.i62.i.i.preheader ], [ %i.oa, %middle.block228 ]
  br label %.lr.ph.i.i62.i.i

.lr.ph.i.i62.i.i:                                 ; preds = %.lr.ph.i.i62.i.i.preheader354, %.lr.ph.i.i62.i.i
  %indvars.iv.i.i63.i.i = phi i64 [ %indvars.iv.next.i.i64.i.i, %.lr.ph.i.i62.i.i ], [ %indvars.iv.i.i63.i.i.ph, %.lr.ph.i.i62.i.i.preheader354 ] ; 2 uses
  %i.ob = phi i64 [ %i.od, %.lr.ph.i.i62.i.i ], [ %.ph, %.lr.ph.i.i62.i.i.preheader354 ]
  %i.oc = shl i64 %i.ng, %indvars.iv.i.i63.i.i
  %i.od = or i64 %i.ob, %i.oc                     ; 2 uses
  %indvars.iv.next.i.i64.i.i = add nuw nsw i64 %indvars.iv.i.i63.i.i, %i.ne ; 2 uses
  %i.oe = icmp samesign ult i64 %indvars.iv.next.i.i64.i.i, 64
  br i1 %i.oe, label %.lr.ph.i.i62.i.i, label %..loopexit_crit_edge.i.i65.i.i, !llvm.loop !348

..loopexit_crit_edge.i.i65.i.i:                   ; preds = %.lr.ph.i.i62.i.i, %middle.block228
  %.lcssa152 = phi i64 [ %i.oa, %middle.block228 ], [ %i.od, %.lr.ph.i.i62.i.i ]
  store i64 %.lcssa152, ptr %i.mw, align 8, !tbaa !8
  br label %Abc_TtNormalizeSmallTruth.exit.i42.i.i

Abc_TtNormalizeSmallTruth.exit.i42.i.i:           ; preds = %..loopexit_crit_edge.i.i65.i.i, %bb.ag, %Abc_TgFlipSymGroupByVar.exit.i.i
  %i.of = icmp sgt i32 %i.na, 0
  br i1 %i.of, label %.lr.ph.preheader.i44.i.i, label %Abc_TtScc.exit66.i.i

.lr.ph.preheader.i44.i.i:                         ; preds = %Abc_TtNormalizeSmallTruth.exit.i42.i.i
  %wide.trip.count.i45.i.i = zext nneg i32 %i.na to i64
  br label %.lr.ph.i46.i.i

.lr.ph.i46.i.i:                                   ; preds = %Abc_TtScc6.exit.i57.i.i, %.lr.ph.preheader.i44.i.i
  %indvars.iv.i47.i.i = phi i64 [ 0, %.lr.ph.preheader.i44.i.i ], [ %indvars.iv.next.i59.i.i, %Abc_TtScc6.exit.i57.i.i ] ; 3 uses
  %.014.i48.i.i = phi i32 [ 0, %.lr.ph.preheader.i44.i.i ], [ %i.os, %Abc_TtScc6.exit.i57.i.i ]
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %indvars.iv.i47.i.i
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !8  ; 2 uses
  %i.oi = trunc nuw nsw i64 %indvars.iv.i47.i.i to i32
  %i.oj = and i32 %i.oi, 65535
  %i.ok = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.oj)
  %.not.i.i49.i.i = icmp eq i64 %i.oh, 0
  br i1 %.not.i.i49.i.i, label %Abc_TtScc6.exit.i57.i.i, label %.preheader.i.i50.i.i

.preheader.i.i50.i.i:                             ; preds = %.lr.ph.i46.i.i, %bb.ai
  %indvars.iv.i11.i51.i.i = phi i64 [ %indvars.iv.next.i12.i55.i.i, %bb.ai ], [ 0, %.lr.ph.i46.i.i ] ; 3 uses
  %.01116.i.i52.i.i = phi i32 [ %.1.i.i54.i.i, %bb.ai ], [ 0, %.lr.ph.i46.i.i ] ; 2 uses
  %i.ol = shl nuw i64 1, %indvars.iv.i11.i51.i.i
  %i.om = and i64 %i.ol, %i.oh
  %.not14.i.i53.i.i = icmp eq i64 %i.om, 0
  br i1 %.not14.i.i53.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.preheader.i.i50.i.i
  %i.on = trunc nuw nsw i64 %indvars.iv.i11.i51.i.i to i32
  %i.oo = call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.on)
  %i.op = add nuw nsw i32 %i.oo, %i.ok
  %i.oq = shl nuw nsw i32 1, %i.op
  %i.or = add nsw i32 %i.oq, %.01116.i.i52.i.i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.preheader.i.i50.i.i
  %.1.i.i54.i.i = phi i32 [ %i.or, %bb.ah ], [ %.01116.i.i52.i.i, %.preheader.i.i50.i.i ] ; 2 uses
  %indvars.iv.next.i12.i55.i.i = add nuw nsw i64 %indvars.iv.i11.i51.i.i, 1 ; 2 uses
  %exitcond.not.i.i56.i.i = icmp eq i64 %indvars.iv.next.i12.i55.i.i, 64
  br i1 %exitcond.not.i.i56.i.i, label %Abc_TtScc6.exit.i57.i.i, label %.preheader.i.i50.i.i, !llvm.loop !22

Abc_TtScc6.exit.i57.i.i:                          ; preds = %bb.ai, %.lr.ph.i46.i.i
  %.0.i.i58.i.i = phi i32 [ 0, %.lr.ph.i46.i.i ], [ %.1.i.i54.i.i, %bb.ai ]
  %i.os = add nsw i32 %.0.i.i58.i.i, %.014.i48.i.i ; 2 uses
  %indvars.iv.next.i59.i.i = add nuw nsw i64 %indvars.iv.i47.i.i, 1 ; 2 uses
  %exitcond.not.i60.i.i = icmp eq i64 %indvars.iv.next.i59.i.i, %wide.trip.count.i45.i.i
  br i1 %exitcond.not.i60.i.i, label %Abc_TtScc.exit66.i.i, label %.lr.ph.i46.i.i, !llvm.loop !23

Abc_TtScc.exit66.i.i:                             ; preds = %Abc_TtScc6.exit.i57.i.i, %Abc_TtNormalizeSmallTruth.exit.i42.i.i
  %.0.lcssa.i43.i.i = phi i32 [ 0, %Abc_TtNormalizeSmallTruth.exit.i42.i.i ], [ %i.os, %Abc_TtScc6.exit.i57.i.i ] ; 4 uses
  %i.ot = icmp sgt i32 %.0.lcssa.i43.i.i, %.0.i.i.ph
  br i1 %i.ot, label %bb.x, label %bb.aj, !llvm.loop !349

bb.aj:                                            ; preds = %Abc_TtScc.exit66.i.i
  %i.ou = icmp slt i32 %.0.lcssa.i43.i.i, %.0.i.i.ph
  %i.ov = lshr i32 %i.jh, 1
  %i.ow = xor i32 %i.ov, %i.jh
  br i1 %i.ou, label %.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.pr.i.i = load i32, ptr %i.if, align 4, !tbaa !247 ; 7 uses
  %i.ox = load i32, ptr %i.fi, align 8, !tbaa !243
  %i.oy = icmp eq i32 %.pr.i.i, %i.ox
  br i1 %i.oy, label %bb.al, label %Vec_IntPush.exit74.i.i

.thread.i.i:                                      ; preds = %bb.aj
  store i32 0, ptr %i.if, align 4, !tbaa !247
  %i.oz = load i32, ptr %i.fi, align 8, !tbaa !243
  %i.pa = icmp eq i32 %i.oz, 0
  br i1 %i.pa, label %.thread107.i.i, label %Vec_IntPush.exit74.i.i

bb.al:                                            ; preds = %bb.ak
  %i.pb = icmp slt i32 %.pr.i.i, 16
  br i1 %i.pb, label %.thread107.i.i, label %bb.ao

.thread107.i.i:                                   ; preds = %bb.al, %.thread.i.i
  %.1106110.i.i = phi i32 [ %.0.i.i.ph, %bb.al ], [ %.0.lcssa.i43.i.i, %.thread.i.i ] ; 2 uses
  %.not9.i.i72.i.i = icmp eq ptr %.ph356, null
  br i1 %.not9.i.i72.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.thread107.i.i
  %i.pc = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.ph356, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i70.i.i

bb.an:                                            ; preds = %.thread107.i.i
  %i.pd = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i70.i.i

bb.ao:                                            ; preds = %bb.al
  %i.pe = icmp samesign ult i32 %.pr.i.i, 1073741823
  %i.pf = shl nuw nsw i32 %.pr.i.i, 1
  %spec.select.i67.i.i = select i1 %i.pe, i32 %i.pf, i32 2147483647 ; 4 uses
  %.not.i9.i68.i.i = icmp samesign ult i32 %.pr.i.i, %spec.select.i67.i.i
  br i1 %.not.i9.i68.i.i, label %bb.ap, label %Vec_IntPush.exit74.i.i

bb.ap:                                            ; preds = %bb.ao
  %.not9.i10.i69.i.i = icmp eq ptr %.ph356, null
  %i.pg = zext nneg i32 %spec.select.i67.i.i to i64
  %i.ph = shl nuw nsw i64 %i.pg, 2                ; 2 uses
  br i1 %.not9.i10.i69.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.pi = call ptr @realloc(ptr noundef nonnull %.ph356, i64 noundef %i.ph) #24
  br label %Vec_IntGrow.exit11.sink.split.i70.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.pj = call noalias ptr @malloc(i64 noundef %i.ph) #23
  br label %Vec_IntGrow.exit11.sink.split.i70.i.i

Vec_IntGrow.exit11.sink.split.i70.i.i:            ; preds = %bb.ar, %bb.aq, %bb.an, %bb.am
  %storemerge.i.i = phi ptr [ %i.pd, %bb.an ], [ %i.pc, %bb.am ], [ %i.pi, %bb.aq ], [ %i.pj, %bb.ar ] ; 2 uses
  %.1106109.i.i = phi i32 [ %.1106110.i.i, %bb.an ], [ %.1106110.i.i, %bb.am ], [ %.0.i.i.ph, %bb.aq ], [ %.0.i.i.ph, %bb.ar ]
  %spec.select.sink.i71.i.i = phi i32 [ 16, %bb.an ], [ 16, %bb.am ], [ %spec.select.i67.i.i, %bb.aq ], [ %spec.select.i67.i.i, %bb.ar ]
  store ptr %storemerge.i.i, ptr %i.iz, align 8, !tbaa !246
  store i32 %spec.select.sink.i71.i.i, ptr %i.fi, align 8, !tbaa !243
  %.pre123.i.i = load i32, ptr %i.if, align 4, !tbaa !247
  br label %Vec_IntPush.exit74.i.i

Vec_IntPush.exit74.i.i:                           ; preds = %Vec_IntGrow.exit11.sink.split.i70.i.i, %bb.ao, %.thread.i.i, %bb.ak
  %i.pk = phi i32 [ 0, %.thread.i.i ], [ %.pr.i.i, %bb.ak ], [ %.pr.i.i, %bb.ao ], [ %.pre123.i.i, %Vec_IntGrow.exit11.sink.split.i70.i.i ] ; 2 uses
  %i.pl = phi ptr [ %.ph356, %.thread.i.i ], [ %.ph356, %bb.ak ], [ %.ph356, %bb.ao ], [ %storemerge.i.i, %Vec_IntGrow.exit11.sink.split.i70.i.i ] ; 2 uses
  %.1105.i.i = phi i32 [ %.0.lcssa.i43.i.i, %.thread.i.i ], [ %.0.i.i.ph, %bb.ak ], [ %.0.i.i.ph, %bb.ao ], [ %.1106109.i.i, %Vec_IntGrow.exit11.sink.split.i70.i.i ]
  %i.pm = add nsw i32 %i.pk, 1
  store i32 %i.pm, ptr %i.if, align 4, !tbaa !247
  %i.pn = sext i32 %i.pk to i64
  %i.po = getelementptr inbounds [4 x i8], ptr %i.pl, i64 %i.pn
  store i32 %i.ow, ptr %i.po, align 4, !tbaa !16
  br label %.outer, !llvm.loop !349

bb.as:                                            ; preds = %grayFlip.exit.i.i
  %i.pp = sext i8 %i.fk to i64
  %i.pq = getelementptr i8, ptr %5, i64 %i.pp
  %i.pr = getelementptr i8, ptr %i.pq, i64 163
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !187 ; 2 uses
  %i.pt = icmp sgt i8 %i.ps, -1
  br i1 %i.pt, label %.lr.ph.i75.i.i.preheader, label %Abc_TgFlipSymGroupByVar.exit100.i.i

.lr.ph.i75.i.i.preheader:                         ; preds = %bb.as
  %.promoted104 = load i32, ptr %i.jg, align 4
  %i.pu = load i32, ptr %i.dd, align 8            ; 2 uses
end_hunk_4
begin_hunk_5_@Abc_TgRecordPhase:bb.a
.lr.ph37.i:                                       ; preds = %._crit_edge.i, %.lr.ph37.preheader.i
  %indvars.iv42.i = phi i64 [ 0, %.lr.ph37.preheader.i ], [ %indvars.iv.next43.i, %._crit_edge.i ] ; 2 uses
  %.01935.i = phi i32 [ 0, %.lr.ph37.preheader.i ], [ %i.be, %._crit_edge.i ] ; 3 uses
  %.02134.i = phi i32 [ 0, %.lr.ph37.preheader.i ], [ %.122.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv42.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 93
  %i.u = load i8, ptr %i.t, align 1, !tbaa !321   ; 3 uses
  %i.v = sext i8 %i.u to i32                      ; 2 uses
  %.12225.i = add i32 %.02134.i, 1                ; 2 uses
  %i.w = icmp sgt i8 %i.u, 1
  br i1 %i.w, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph37.i
  %i.x = sext i32 %.12225.i to i64                ; 2 uses
  %.phi.trans.insert.i = sext i32 %.02134.i to i64
  %.phi.trans.insert46.i = getelementptr inbounds [4 x i8], ptr %i.o, i64 %.phi.trans.insert.i
  %.pre.i = load i32, ptr %.phi.trans.insert46.i, align 4, !tbaa !16 ; 2 uses
  %i.y = add nsw i32 %i.v, -1                     ; 3 uses
  %xtraiter = and i32 %i.y, 1
  %i.z = icmp eq i8 %i.u, 2
  br i1 %i.z, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i32 %i.y, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i.new
  %i.aa = phi i32 [ %.pre.i, %.lr.ph.preheader.i.new ], [ %i.al, %bb.g ]
  %indvars.iv.i = phi i64 [ %i.x, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.g ] ; 3 uses
  %.029.i = phi i32 [ 1, %.lr.ph.preheader.i.new ], [ %.1.i.1, %bb.g ] ; 2 uses
  %.12028.i = phi i32 [ %.01935.i, %.lr.ph.preheader.i.new ], [ %.2.i.1, %bb.g ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.g ]
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !16 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, %i.aa
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nsw i32 %.029.i, 1
  br label %.lr.ph.i.1

bb.d:                                             ; preds = %.lr.ph.i
  %i.af = sext i32 %.029.i to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !16
  %i.ai = add nsw i32 %i.ah, %.12028.i
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.d, %bb.c
  %.2.i = phi i32 [ %.12028.i, %bb.c ], [ %i.ai, %bb.d ] ; 2 uses
  %.1.i = phi i32 [ %i.ae, %bb.c ], [ 1, %bb.d ]  ; 2 uses
  %i.aj = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !16 ; 3 uses
  %i.am = icmp eq i32 %i.al, %i.ac
  br i1 %i.am, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.1
  %i.an = sext i32 %.1.i to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !16
  %i.aq = add nsw i32 %i.ap, %.2.i
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ar = add nsw i32 %.1.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.i.1 = phi i32 [ %.2.i, %bb.f ], [ %i.aq, %bb.e ] ; 3 uses
  %.1.i.1 = phi i32 [ %i.ar, %bb.f ], [ 1, %bb.e ] ; 3 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !543

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.preheader.i
  %.epil.init = phi i32 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.al, %._crit_edge.loopexit.i.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ %i.x, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %.029.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i ], [ %.1.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.12028.i.epil.init = phi i32 [ %.01935.i, %.lr.ph.preheader.i ], [ %.2.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod453 = trunc i32 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod453)
  %i.as = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv.i.epil.init
  %i.at = load i32, ptr %i.as, align 4, !tbaa !16
  %i.au = icmp eq i32 %i.at, %.epil.init
  br i1 %i.au, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.av = sext i32 %.029.i.epil.init to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !16
  %i.ay = add nsw i32 %i.ax, %.12028.i.epil.init
  br label %._crit_edge.loopexit.i

bb.i:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.az = add nsw i32 %.029.i.epil.init, 1
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %bb.h, %bb.i, %._crit_edge.loopexit.i.unr-lcssa
  %.2.i.lcssa = phi i32 [ %.2.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %.12028.i.epil.init, %bb.i ], [ %i.ay, %bb.h ]
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.az, %bb.i ], [ 1, %bb.h ]
  %i.ba = add i32 %.02134.i, %i.v
  %i.bb = sext i32 %.1.i.lcssa to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph37.i
  %.120.lcssa.i = phi i32 [ %.01935.i, %.lr.ph37.i ], [ %.2.i.lcssa, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i64 [ 1, %.lr.ph37.i ], [ %i.bb, %._crit_edge.loopexit.i ]
  %.122.lcssa.i = phi i32 [ %.12225.i, %.lr.ph37.i ], [ %i.ba, %._crit_edge.loopexit.i ]
  %i.bc = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %.0.lcssa.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = add nsw i32 %i.bd, %.120.lcssa.i        ; 2 uses
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next43.i, %wide.trip.count.i
  br i1 %exitcond45.not.i, label %Abc_TgPermCostScc.exit, label %.lr.ph37.i, !llvm.loop !544

bb.j:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 3 uses
  %i.bg = icmp sgt i8 %i.f, 0
  br i1 %i.bg, label %.lr.ph27.i, label %Abc_TgReorderFGrps.exit

.lr.ph27.i:                                       ; preds = %bb.j
  %wide.trip.count.i50 = zext nneg i8 %i.f to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i, %.lr.ph27.i
  %indvars.iv.i51 = phi i64 [ 0, %.lr.ph27.i ], [ %indvars.iv.next.i54, %.critedge.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv.i51
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !187 ; 2 uses
  %.not28.i = icmp eq i64 %indvars.iv.i51, 0
  br i1 %.not28.i, label %.critedge.i, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %bb.k
  %i.bl = trunc nuw nsw i64 %indvars.iv.i51 to i32
  %i.bm = sext i8 %i.bk to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bi, i64 %i.bm
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i52
  %.023.i = phi i32 [ %i.bl, %.lr.ph.i52 ], [ %i.bx, %bb.m ] ; 4 uses
  %i.bo = zext nneg i32 %.023.i to i64
  %i.bp = getelementptr i8, ptr %i.bf, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !187 ; 2 uses
  %i.bs = sext i8 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bi, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !187
  %i.bv = load i8, ptr %i.bn, align 1, !tbaa !187
  %i.bw = icmp sgt i8 %i.bu, %i.bv
  br i1 %i.bw, label %bb.m, label %.critedge.loopexit.i

bb.m:                                             ; preds = %bb.l
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !187
  %i.bx = add nsw i32 %.023.i, -1
  %i.by = icmp sgt i32 %.023.i, 1
  br i1 %i.by, label %bb.l, label %.critedge.loopexit.i, !llvm.loop !333

.critedge.loopexit.i:                             ; preds = %bb.m, %bb.l
  %.0.lcssa.ph.i = phi i32 [ %.023.i, %bb.l ], [ 0, %bb.m ]
  %i.bz = sext i32 %.0.lcssa.ph.i to i64
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.k
  %.0.lcssa.i53 = phi i64 [ 0, %bb.k ], [ %i.bz, %.critedge.loopexit.i ]
  %i.ca = getelementptr inbounds i8, ptr %i.bf, i64 %.0.lcssa.i53
  store i8 %i.bk, ptr %i.ca, align 1, !tbaa !187
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not.i55 = icmp eq i64 %indvars.iv.next.i54, %wide.trip.count.i50
  br i1 %exitcond.not.i55, label %Abc_TgReorderFGrps.exit, label %bb.k, !llvm.loop !334

Abc_TgReorderFGrps.exit:                          ; preds = %.critedge.i, %bb.j
  %i.cb = load ptr, ptr %0, align 8, !tbaa !315   ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !313 ; 8 uses
  %i.ce = icmp slt i32 %i.cd, 7
  %i.cf = add nsw i32 %i.cd, -6
  %i.cg = shl nuw i32 1, %i.cf
  %i.ch = select i1 %i.ce, i32 1, i32 %i.cg       ; 2 uses
  %i.ci = icmp slt i32 %i.cd, 6
  br i1 %i.ci, label %bb.n, label %Abc_TtNormalizeSmallTruth.exit.i

bb.n:                                             ; preds = %Abc_TgReorderFGrps.exit
  %i.cj = shl nuw nsw i32 1, %i.cd
  %i.ck = load i64, ptr %i.cb, align 8, !tbaa !8
  %i.cl = zext nneg i32 %i.cj to i64              ; 6 uses
  %notmask.i.i = shl nsw i64 -1, %i.cl
  %i.cm = xor i64 %notmask.i.i, -1
  %i.cn = and i64 %i.ck, %i.cm                    ; 5 uses
  store i64 %i.cn, ptr %i.cb, align 8, !tbaa !8
  %i.co = icmp ult i32 %i.cd, 6
  br i1 %i.co, label %.lr.ph.i.i.preheader, label %Abc_TtNormalizeSmallTruth.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.n
  %i.cp = shl nuw nsw i64 %i.cl, 1
  %i.cq = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 64) ; 2 uses
  %2 = zext nneg i32 %i.cd to i64
  %3 = shl nsw i64 -2, %2                         ; 2 uses
  %4 = sub nsw i64 0, %3
  %i.cr = icmp ne i64 %i.cq, %4
  %i.cs = zext i1 %i.cr to i64                    ; 2 uses
  %5 = sub nuw nsw i64 %i.cq, %i.cs
  %6 = add nsw i64 %5, %3
  %i.ct = zext nneg i32 %i.cd to i64
  %i.cu = lshr i64 %6, %i.ct
  %i.cv = add i64 %i.cu, %i.cs
  %i.cw = add i64 %i.cv, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.cw, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader445, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.cw, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cl, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cx = zext nneg i32 %i.cd to i64
  %i.cy = shl i64 %n.vec, %i.cx
  %i.cz = add i64 %i.cy, %i.cl
  %i.da = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cn, i64 0
  %i.db = shl nuw nsw <2 x i64> %broadcast.splat, splat (i64 1) ; 3 uses
  %broadcast.splatinsert333 = insertelement <2 x i64> poison, i64 %i.cn, i64 0
  %broadcast.splat334 = shufflevector <2 x i64> %broadcast.splatinsert333, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %induction = shl nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add nuw nsw <2 x i64> %i.db, %i.db
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.da, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi335 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.df, %vector.body ]
  %step.add = add nuw nsw <2 x i64> %vec.ind, %i.db
  %i.dc = shl <2 x i64> %broadcast.splat334, %vec.ind
  %i.dd = shl <2 x i64> %broadcast.splat334, %step.add
  %i.de = or <2 x i64> %vec.phi, %i.dc            ; 2 uses
  %i.df = or <2 x i64> %vec.phi335, %i.dd         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next.reass = add nuw nsw <2 x i64> %vec.ind, %invariant.op
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !545

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.df, %i.de
  %i.dh = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge.i.i, label %.lr.ph.i.i.preheader445

.lr.ph.i.i.preheader445:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %i.cl, %.lr.ph.i.i.preheader ], [ %i.cz, %middle.block ]
  %.ph446 = phi i64 [ %i.cn, %.lr.ph.i.i.preheader ], [ %i.dh, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader445, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader445 ] ; 2 uses
  %i.di = phi i64 [ %i.dk, %.lr.ph.i.i ], [ %.ph446, %.lr.ph.i.i.preheader445 ]
  %i.dj = shl i64 %i.cn, %indvars.iv.i.i
  %i.dk = or i64 %i.di, %i.dj                     ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, %i.cl ; 2 uses
  %i.dl = icmp samesign ult i64 %indvars.iv.next.i.i, 64
  br i1 %i.dl, label %.lr.ph.i.i, label %..loopexit_crit_edge.i.i, !llvm.loop !546

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa331 = phi i64 [ %i.dh, %middle.block ], [ %i.dk, %.lr.ph.i.i ]
  store i64 %.lcssa331, ptr %i.cb, align 8, !tbaa !8
  br label %Abc_TtNormalizeSmallTruth.exit.i

Abc_TtNormalizeSmallTruth.exit.i:                 ; preds = %..loopexit_crit_edge.i.i, %bb.n, %Abc_TgReorderFGrps.exit
  %i.dm = icmp sgt i32 %i.ch, 0
  br i1 %i.dm, label %.lr.ph.preheader.i58, label %Abc_TtScc.exit

.lr.ph.preheader.i58:                             ; preds = %Abc_TtNormalizeSmallTruth.exit.i
  %wide.trip.count.i59 = zext nneg i32 %i.ch to i64
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %Abc_TtScc6.exit.i, %.lr.ph.preheader.i58
  %indvars.iv.i61 = phi i64 [ 0, %.lr.ph.preheader.i58 ], [ %indvars.iv.next.i62, %Abc_TtScc6.exit.i ] ; 3 uses
  %.014.i = phi i32 [ 0, %.lr.ph.preheader.i58 ], [ %i.dz, %Abc_TtScc6.exit.i ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i61
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !8  ; 2 uses
  %i.dp = trunc nuw nsw i64 %indvars.iv.i61 to i32
  %i.dq = and i32 %i.dp, 65535
  %i.dr = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.dq)
  %.not.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i, label %Abc_TtScc6.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i60, %bb.p
  %indvars.iv.i11.i = phi i64 [ %indvars.iv.next.i12.i, %bb.p ], [ 0, %.lr.ph.i60 ] ; 3 uses
  %.01116.i.i = phi i32 [ %.1.i.i, %bb.p ], [ 0, %.lr.ph.i60 ] ; 2 uses
  %i.ds = shl nuw i64 1, %indvars.iv.i11.i
  %i.dt = and i64 %i.ds, %i.do
  %.not14.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not14.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader.i.i
  %i.du = trunc nuw nsw i64 %indvars.iv.i11.i to i32
  %i.dv = tail call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.du)
  %i.dw = add nuw nsw i32 %i.dv, %i.dr
  %i.dx = shl nuw nsw i32 1, %i.dw
  %i.dy = add nsw i32 %i.dx, %.01116.i.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.dy, %bb.o ], [ %.01116.i.i, %.preheader.i.i ] ; 2 uses
  %indvars.iv.next.i12.i = add nuw nsw i64 %indvars.iv.i11.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i12.i, 64
  br i1 %exitcond.not.i.i, label %Abc_TtScc6.exit.i, label %.preheader.i.i, !llvm.loop !22

Abc_TtScc6.exit.i:                                ; preds = %bb.p, %.lr.ph.i60
  %.0.i.i = phi i32 [ 0, %.lr.ph.i60 ], [ %.1.i.i, %bb.p ]
  %i.dz = add nsw i32 %.0.i.i, %.014.i            ; 2 uses
  %indvars.iv.next.i62 = add nuw nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %exitcond.not.i63 = icmp eq i64 %indvars.iv.next.i62, %wide.trip.count.i59
  br i1 %exitcond.not.i63, label %Abc_TtScc.exit, label %.lr.ph.i60, !llvm.loop !23

Abc_TtScc.exit:                                   ; preds = %Abc_TtScc6.exit.i, %Abc_TtNormalizeSmallTruth.exit.i
  %.0.lcssa.i57 = phi i32 [ 0, %Abc_TtNormalizeSmallTruth.exit.i ], [ %i.dz, %Abc_TtScc6.exit.i ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %.0.lcssa.i57, ptr %i.ea, align 4, !tbaa !16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  call fastcc void @Abc_TgCalcScc(ptr noundef %0, ptr noundef %i.eb, i32 noundef 1)
  br i1 %i.h, label %Abc_TgPermCostScc.exit92, label %bb.q

bb.q:                                             ; preds = %Abc_TtScc.exit
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !318 ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %.lr.ph37.preheader.i65, label %Abc_TgPermCostScc.exit92

.lr.ph37.preheader.i65:                           ; preds = %bb.q
  %wide.trip.count.i66 = zext nneg i32 %i.ed to i64
  br label %.lr.ph37.i67

.lr.ph37.i67:                                     ; preds = %._crit_edge.i72, %.lr.ph37.preheader.i65
  %indvars.iv42.i68 = phi i64 [ 0, %.lr.ph37.preheader.i65 ], [ %indvars.iv.next43.i76, %._crit_edge.i72 ] ; 2 uses
  %.01935.i69 = phi i32 [ 0, %.lr.ph37.preheader.i65 ], [ %i.fr, %._crit_edge.i72 ] ; 3 uses
  %.02134.i70 = phi i32 [ 0, %.lr.ph37.preheader.i65 ], [ %.122.lcssa.i75, %._crit_edge.i72 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv42.i68
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 93
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !321 ; 3 uses
  %i.ei = sext i8 %i.eh to i32                    ; 2 uses
  %.12225.i71 = add i32 %.02134.i70, 1            ; 2 uses
  %i.ej = icmp sgt i8 %i.eh, 1
  br i1 %i.ej, label %.lr.ph.preheader.i78, label %._crit_edge.i72

.lr.ph.preheader.i78:                             ; preds = %.lr.ph37.i67
  %i.ek = sext i32 %.12225.i71 to i64             ; 2 uses
  %.phi.trans.insert.i79 = sext i32 %.02134.i70 to i64
  %.phi.trans.insert46.i80 = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %.phi.trans.insert.i79
  %.pre.i81 = load i32, ptr %.phi.trans.insert46.i80, align 4, !tbaa !16 ; 2 uses
  %i.el = add nsw i32 %i.ei, -1                   ; 3 uses
  %xtraiter454 = and i32 %i.el, 1
  %i.em = icmp eq i8 %i.eh, 2
  br i1 %i.em, label %.lr.ph.i82.epil.preheader, label %.lr.ph.preheader.i78.new

.lr.ph.preheader.i78.new:                         ; preds = %.lr.ph.preheader.i78
  %unroll_iter461 = and i32 %i.el, -2
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %bb.v, %.lr.ph.preheader.i78.new
  %i.en = phi i32 [ %.pre.i81, %.lr.ph.preheader.i78.new ], [ %i.ey, %bb.v ]
  %indvars.iv.i83 = phi i64 [ %i.ek, %.lr.ph.preheader.i78.new ], [ %indvars.iv.next.i89.1, %bb.v ] ; 3 uses
  %.029.i84 = phi i32 [ 1, %.lr.ph.preheader.i78.new ], [ %.1.i88.1, %bb.v ] ; 2 uses
  %.12028.i85 = phi i32 [ %.01935.i69, %.lr.ph.preheader.i78.new ], [ %.2.i87.1, %bb.v ] ; 2 uses
  %niter462 = phi i32 [ 0, %.lr.ph.preheader.i78.new ], [ %niter462.next.1, %bb.v ]
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %indvars.iv.i83
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !16 ; 2 uses
  %i.eq = icmp eq i32 %i.ep, %i.en
  br i1 %i.eq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i82
  %i.er = add nsw i32 %.029.i84, 1
  br label %.lr.ph.i82.1

bb.s:                                             ; preds = %.lr.ph.i82
  %i.es = sext i32 %.029.i84 to i64
  %i.et = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !16
  %i.ev = add nsw i32 %i.eu, %.12028.i85
  br label %.lr.ph.i82.1

.lr.ph.i82.1:                                     ; preds = %bb.s, %bb.r
  %.2.i87 = phi i32 [ %.12028.i85, %bb.r ], [ %i.ev, %bb.s ] ; 2 uses
  %.1.i88 = phi i32 [ %i.er, %bb.r ], [ 1, %bb.s ] ; 2 uses
  %i.ew = getelementptr [4 x i8], ptr %i.eb, i64 %indvars.iv.i83
  %i.ex = getelementptr i8, ptr %i.ew, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !16 ; 3 uses
  %i.ez = icmp eq i32 %i.ey, %i.ep
  br i1 %i.ez, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i82.1
  %i.fa = sext i32 %.1.i88 to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !16
  %i.fd = add nsw i32 %i.fc, %.2.i87
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.i82.1
  %i.fe = add nsw i32 %.1.i88, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2.i87.1 = phi i32 [ %.2.i87, %bb.u ], [ %i.fd, %bb.t ] ; 3 uses
  %.1.i88.1 = phi i32 [ %i.fe, %bb.u ], [ 1, %bb.t ] ; 3 uses
  %indvars.iv.next.i89.1 = add nsw i64 %indvars.iv.i83, 2 ; 2 uses
  %niter462.next.1 = add i32 %niter462, 2         ; 2 uses
  %niter462.ncmp.1 = icmp eq i32 %niter462.next.1, %unroll_iter461
end_hunk_5
begin_hunk_6_@Abc_TgRecordPhase:bb.a
.lr.ph.i.i.i:                                     ; preds = %bb.am
  %i.ij = shl nuw nsw i32 1, %i.hu
  %i.ik = zext nneg i32 %i.ij to i64              ; 3 uses
  %i.il = sext i8 %i.ht to i64
  %i.im = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.il
  %i.in = load i64, ptr %i.im, align 8, !tbaa !8  ; 3 uses
  %wide.trip.count59.i.i.i = zext nneg i32 %i.hr to i64 ; 2 uses
  %min.iters.check359 = icmp ult i32 %i.hq, 2
  br i1 %min.iters.check359, label %scalar.ph358, label %vector.ph360

vector.ph360:                                     ; preds = %.lr.ph.i.i.i
  %n.vec361 = and i64 %wide.trip.count59.i.i.i, 2147483644
  %broadcast.splatinsert362 = insertelement <2 x i64> poison, i64 %i.ik, i64 0
  %broadcast.splat363 = shufflevector <2 x i64> %broadcast.splatinsert362, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert364 = insertelement <2 x i64> poison, i64 %i.in, i64 0
  %broadcast.splat365 = shufflevector <2 x i64> %broadcast.splatinsert364, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body366

vector.body366:                                   ; preds = %vector.body366, %vector.ph360
  %index367 = phi i64 [ 0, %vector.ph360 ], [ %index.next369, %vector.body366 ] ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %index367 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.io, align 8, !tbaa !8 ; 2 uses
  %wide.load368 = load <2 x i64>, ptr %i.ip, align 8, !tbaa !8 ; 2 uses
  %i.iq = shl <2 x i64> %wide.load, %broadcast.splat363
  %i.ir = shl <2 x i64> %wide.load368, %broadcast.splat363
  %i.is = and <2 x i64> %i.iq, %broadcast.splat365
  %i.it = and <2 x i64> %i.ir, %broadcast.splat365
  %i.iu = and <2 x i64> %wide.load, %broadcast.splat365
  %i.iv = and <2 x i64> %wide.load368, %broadcast.splat365
  %i.iw = lshr <2 x i64> %i.iu, %broadcast.splat363
  %i.ix = lshr <2 x i64> %i.iv, %broadcast.splat363
  %i.iy = or <2 x i64> %i.iw, %i.is
  %i.iz = or <2 x i64> %i.ix, %i.it
  store <2 x i64> %i.iy, ptr %i.io, align 8, !tbaa !8
  store <2 x i64> %i.iz, ptr %i.ip, align 8, !tbaa !8
  %index.next369 = add nuw i64 %index367, 4       ; 2 uses
  %i.ja = icmp eq i64 %index.next369, %n.vec361
  br i1 %i.ja, label %Abc_TgFlipVar.exit.i, label %vector.body366, !llvm.loop !547

scalar.ph358:                                     ; preds = %.lr.ph.i.i.i, %scalar.ph358
  %indvars.iv56.i.i.i = phi i64 [ %indvars.iv.next57.i.i.i, %scalar.ph358 ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv56.i.i.i ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !8  ; 2 uses
  %i.jd = shl i64 %i.jc, %i.ik
  %i.je = and i64 %i.jd, %i.in
  %i.jf = and i64 %i.jc, %i.in
  %i.jg = lshr i64 %i.jf, %i.ik
  %i.jh = or i64 %i.jg, %i.je
  store i64 %i.jh, ptr %i.jb, align 8, !tbaa !8
  %indvars.iv.next57.i.i.i = add nuw nsw i64 %indvars.iv56.i.i.i, 1 ; 2 uses
  %exitcond60.not.i.i.i = icmp eq i64 %indvars.iv.next57.i.i.i, %wide.trip.count59.i.i.i
  br i1 %exitcond60.not.i.i.i, label %Abc_TgFlipVar.exit.i, label %scalar.ph358, !llvm.loop !548

bb.an:                                            ; preds = %bb.al
  %i.ji = sext i32 %i.hr to i64
  %.idx.i.i.i = shl nsw i64 %i.ji, 3
  %i.jj = getelementptr inbounds i8, ptr %i.hv, i64 %.idx.i.i.i
  %i.jk = add nsw i32 %i.hu, -6                   ; 3 uses
  %i.jl = shl nuw i32 1, %i.jk                    ; 4 uses
  %.not.i.i97 = icmp eq i32 %i.hq, 31
  br i1 %.not.i.i97, label %Abc_TgFlipVar.exit.i, label %.preheader.lr.ph.i.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.an
  %.not.i.i.i = icmp eq i32 %i.jk, 31
  %i.jm = shl i32 2, %i.jk
  %i.jn = sext i32 %i.jm to i64                   ; 2 uses
  br i1 %.not.i.i.i, label %Abc_TgFlipVar.exit.i, label %.preheader.us.preheader.i.i.i

.preheader.us.preheader.i.i.i:                    ; preds = %.preheader.lr.ph.i.i.i
  %i.jo = sext i32 %i.jl to i64                   ; 2 uses
  %smax.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.jl, i32 1) ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %smax.i.i.i to i64 ; 5 uses
  %i.jp = shl nuw nsw i64 %wide.trip.count.i.i.i, 3
  %i.jq = shl nsw i64 %i.jn, 3
  %i.jr = add nsw i64 %i.jo, %wide.trip.count.i.i.i
  %i.js = shl nsw i64 %i.jr, 3
  %min.iters.check375 = icmp slt i32 %i.jl, 4
  %i.jt = getelementptr i8, ptr %i.hv, i64 %i.js
  %i.ju = getelementptr i8, ptr %i.hv, i64 %i.jp
  %n.vec377 = and i64 %wide.trip.count.i.i.i, 2147483644
  %xtraiter463 = and i64 %wide.trip.count.i.i.i, 1
  %i.jv = icmp slt i32 %i.jl, 2
  %unroll_iter466 = and i64 %wide.trip.count.i.i.i, 2147483646
  %lcmp.mod464.not = icmp eq i64 %xtraiter463, 0
  %lcmp.mod465 = trunc i32 %smax.i.i.i to i1
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %._crit_edge.us.i.i.i, %.preheader.us.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i.i.i ], [ 0, %.preheader.us.preheader.i.i.i ] ; 2 uses
  %.051.us.i.i.i = phi ptr [ %i.kl, %._crit_edge.us.i.i.i ], [ %i.hv, %.preheader.us.preheader.i.i.i ] ; 7 uses
  %invariant.gep.i.i.i = getelementptr [8 x i8], ptr %.051.us.i.i.i, i64 %i.jo ; 5 uses
  br i1 %min.iters.check375, label %scalar.ph374.preheader, label %vector.memcheck

scalar.ph374.preheader:                           ; preds = %vector.memcheck, %.preheader.us.i.i.i
  br i1 %i.jv, label %scalar.ph374.epil.preheader, label %scalar.ph374

vector.memcheck:                                  ; preds = %.preheader.us.i.i.i
  %i.jw = mul i64 %i.jq, %indvar                  ; 2 uses
  %scevgep373 = getelementptr i8, ptr %i.jt, i64 %i.jw
  %scevgep = getelementptr i8, ptr %i.ju, i64 %i.jw
  %bound0 = icmp ult ptr %.051.us.i.i.i, %scevgep373
  %bound1 = icmp ult ptr %invariant.gep.i.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph374.preheader, label %vector.body378

vector.body378:                                   ; preds = %vector.memcheck, %vector.body378
  %index379 = phi i64 [ %index.next384, %vector.body378 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.i.i, i64 %index379 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 2 uses
  %wide.load380 = load <2 x i64>, ptr %i.jx, align 8, !tbaa !8, !alias.scope !549, !noalias !552
  %wide.load381 = load <2 x i64>, ptr %i.jy, align 8, !tbaa !8, !alias.scope !549, !noalias !552
  %i.jz = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %index379 ; 3 uses
  %i.ka = getelementptr i8, ptr %i.jz, i64 16     ; 2 uses
  %wide.load382 = load <2 x i64>, ptr %i.jz, align 8, !tbaa !8, !alias.scope !552
  %wide.load383 = load <2 x i64>, ptr %i.ka, align 8, !tbaa !8, !alias.scope !552
  store <2 x i64> %wide.load382, ptr %i.jx, align 8, !tbaa !8, !alias.scope !549, !noalias !552
  store <2 x i64> %wide.load383, ptr %i.jy, align 8, !tbaa !8, !alias.scope !549, !noalias !552
  store <2 x i64> %wide.load380, ptr %i.jz, align 8, !tbaa !8, !alias.scope !552
  store <2 x i64> %wide.load381, ptr %i.ka, align 8, !tbaa !8, !alias.scope !552
  %index.next384 = add nuw i64 %index379, 4       ; 2 uses
  %i.kb = icmp eq i64 %index.next384, %n.vec377
  br i1 %i.kb, label %._crit_edge.us.i.i.i, label %vector.body378, !llvm.loop !554

scalar.ph374:                                     ; preds = %scalar.ph374.preheader, %scalar.ph374
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %scalar.ph374 ], [ 0, %scalar.ph374.preheader ] ; 4 uses
  %niter467 = phi i64 [ %niter467.next.1, %scalar.ph374 ], [ 0, %scalar.ph374.preheader ]
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.i.i, i64 %indvars.iv.i.i.i ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !8
  %gep.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i ; 2 uses
  %i.ke = load i64, ptr %gep.i.i.i, align 8, !tbaa !8
  store i64 %i.ke, ptr %i.kc, align 8, !tbaa !8
  store i64 %i.kd, ptr %gep.i.i.i, align 8, !tbaa !8
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.i.i, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !8
  %gep.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.kh = load i64, ptr %gep.i.i.i.1, align 8, !tbaa !8
  store i64 %i.kh, ptr %i.kf, align 8, !tbaa !8
  store i64 %i.kg, ptr %gep.i.i.i.1, align 8, !tbaa !8
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter467.next.1 = add i64 %niter467, 2         ; 2 uses
  %niter467.ncmp.1 = icmp eq i64 %niter467.next.1, %unroll_iter466
  br i1 %niter467.ncmp.1, label %._crit_edge.us.i.i.i.loopexit.unr-lcssa, label %scalar.ph374, !llvm.loop !555

._crit_edge.us.i.i.i.loopexit.unr-lcssa:          ; preds = %scalar.ph374
  br i1 %lcmp.mod464.not, label %._crit_edge.us.i.i.i, label %scalar.ph374.epil.preheader

scalar.ph374.epil.preheader:                      ; preds = %._crit_edge.us.i.i.i.loopexit.unr-lcssa, %scalar.ph374.preheader
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %scalar.ph374.preheader ], [ %indvars.iv.next.i.i.i.1, %._crit_edge.us.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod465)
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.i.i, i64 %indvars.iv.i.i.i.epil.init ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !8
  %gep.i.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i.epil.init ; 2 uses
  %i.kk = load i64, ptr %gep.i.i.i.epil, align 8, !tbaa !8
  store i64 %i.kk, ptr %i.ki, align 8, !tbaa !8
  store i64 %i.kj, ptr %gep.i.i.i.epil, align 8, !tbaa !8
  br label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %vector.body378, %scalar.ph374.epil.preheader, %._crit_edge.us.i.i.i.loopexit.unr-lcssa
  %i.kl = getelementptr inbounds [8 x i8], ptr %.051.us.i.i.i, i64 %i.jn ; 2 uses
  %i.km = icmp ult ptr %i.kl, %i.jj
  %indvar.next = add i64 %indvar, 1
  br i1 %i.km, label %.preheader.us.i.i.i, label %Abc_TgFlipVar.exit.i, !llvm.loop !96

Abc_TgFlipVar.exit.i:                             ; preds = %._crit_edge.us.i.i.i, %vector.body366, %scalar.ph358, %.preheader.lr.ph.i.i.i, %bb.an, %bb.am, %bb.ak
  %i.kn = shl nuw i32 1, %i.hu
  %i.ko = load i32, ptr %i.gu, align 4, !tbaa !316
  %i.kp = xor i32 %i.ko, %i.kn
  store i32 %i.kp, ptr %i.gu, align 4, !tbaa !316
  br label %bb.ao

bb.ao:                                            ; preds = %Abc_TgFlipVar.exit.i, %.lr.ph.i95
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.07.i
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !187 ; 2 uses
  %i.ks = icmp sgt i8 %i.kr, -1
  br i1 %i.ks, label %.lr.ph.i95, label %Abc_TgFlipSymGroupByVar.exit, !llvm.loop !346

Abc_TgFlipSymGroupByVar.exit:                     ; preds = %bb.ao, %bb.ai
  %i.kt = load ptr, ptr %0, align 8, !tbaa !315   ; 4 uses
  %i.ku = load i32, ptr %i.cc, align 8, !tbaa !313 ; 8 uses
  %i.kv = icmp slt i32 %i.ku, 7
  %i.kw = add nsw i32 %i.ku, -6
  %i.kx = shl nuw i32 1, %i.kw
  %i.ky = select i1 %i.kv, i32 1, i32 %i.kx       ; 2 uses
  %i.kz = icmp slt i32 %i.ku, 6
  br i1 %i.kz, label %bb.ap, label %Abc_TtNormalizeSmallTruth.exit.i98

bb.ap:                                            ; preds = %Abc_TgFlipSymGroupByVar.exit
  %i.la = shl nuw nsw i32 1, %i.ku
  %i.lb = load i64, ptr %i.kt, align 8, !tbaa !8
  %i.lc = zext nneg i32 %i.la to i64              ; 6 uses
  %notmask.i.i118 = shl nsw i64 -1, %i.lc
  %i.ld = xor i64 %notmask.i.i118, -1
  %i.le = and i64 %i.lb, %i.ld                    ; 5 uses
  store i64 %i.le, ptr %i.kt, align 8, !tbaa !8
  %i.lf = icmp ult i32 %i.ku, 6
  br i1 %i.lf, label %.lr.ph.i.i119.preheader, label %Abc_TtNormalizeSmallTruth.exit.i98

.lr.ph.i.i119.preheader:                          ; preds = %bb.ap
  %i.lg = shl nuw nsw i64 %i.lc, 1
  %i.lh = tail call i64 @llvm.umax.i64(i64 %i.lg, i64 64) ; 2 uses
  %7 = zext nneg i32 %i.ku to i64
  %8 = shl nsw i64 -2, %7                         ; 2 uses
  %9 = sub nsw i64 0, %8
  %i.li = icmp ne i64 %i.lh, %9
  %i.lj = zext i1 %i.li to i64                    ; 2 uses
  %10 = sub nuw nsw i64 %i.lh, %i.lj
  %11 = add nsw i64 %10, %8
  %i.lk = zext nneg i32 %i.ku to i64
  %i.ll = lshr i64 %11, %i.lk
  %i.lm = add i64 %i.ll, %i.lj
  %i.ln = add i64 %i.lm, 1                        ; 3 uses
  %min.iters.check337 = icmp ult i64 %i.ln, 4
  br i1 %min.iters.check337, label %.lr.ph.i.i119.preheader433, label %vector.ph338

vector.ph338:                                     ; preds = %.lr.ph.i.i119.preheader
  %n.vec339 = and i64 %i.ln, -4                   ; 3 uses
  %broadcast.splatinsert340 = insertelement <2 x i64> poison, i64 %i.lc, i64 0
  %broadcast.splat341 = shufflevector <2 x i64> %broadcast.splatinsert340, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lo = zext nneg i32 %i.ku to i64
  %i.lp = shl i64 %n.vec339, %i.lo
  %i.lq = add i64 %i.lp, %i.lc
  %i.lr = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.le, i64 0
  %i.ls = shl nuw nsw <2 x i64> %broadcast.splat341, splat (i64 1) ; 3 uses
  %broadcast.splatinsert342 = insertelement <2 x i64> poison, i64 %i.le, i64 0
  %broadcast.splat343 = shufflevector <2 x i64> %broadcast.splatinsert342, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %induction344 = shl nuw nsw <2 x i64> %broadcast.splat341, <i64 0, i64 1>
  %invariant.op511 = add nuw nsw <2 x i64> %i.ls, %i.ls
  br label %vector.body345

vector.body345:                                   ; preds = %vector.body345, %vector.ph338
  %index346 = phi i64 [ 0, %vector.ph338 ], [ %index.next351, %vector.body345 ]
  %vec.ind347 = phi <2 x i64> [ %induction344, %vector.ph338 ], [ %vec.ind.next352.reass, %vector.body345 ] ; 3 uses
  %vec.phi348 = phi <2 x i64> [ %i.lr, %vector.ph338 ], [ %i.lv, %vector.body345 ]
  %vec.phi349 = phi <2 x i64> [ zeroinitializer, %vector.ph338 ], [ %i.lw, %vector.body345 ]
  %step.add350 = add nuw nsw <2 x i64> %vec.ind347, %i.ls
  %i.lt = shl <2 x i64> %broadcast.splat343, %vec.ind347
  %i.lu = shl <2 x i64> %broadcast.splat343, %step.add350
  %i.lv = or <2 x i64> %vec.phi348, %i.lt         ; 2 uses
  %i.lw = or <2 x i64> %vec.phi349, %i.lu         ; 2 uses
  %index.next351 = add nuw i64 %index346, 4       ; 2 uses
  %vec.ind.next352.reass = add nuw nsw <2 x i64> %vec.ind347, %invariant.op511
  %i.lx = icmp eq i64 %index.next351, %n.vec339
  br i1 %i.lx, label %middle.block353, label %vector.body345, !llvm.loop !556

middle.block353:                                  ; preds = %vector.body345
  %bin.rdx354 = or <2 x i64> %i.lw, %i.lv
  %i.ly = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx354) ; 2 uses
  %cmp.n355 = icmp eq i64 %i.ln, %n.vec339
  br i1 %cmp.n355, label %..loopexit_crit_edge.i.i122, label %.lr.ph.i.i119.preheader433

.lr.ph.i.i119.preheader433:                       ; preds = %.lr.ph.i.i119.preheader, %middle.block353
  %indvars.iv.i.i120.ph = phi i64 [ %i.lc, %.lr.ph.i.i119.preheader ], [ %i.lq, %middle.block353 ]
  %.ph = phi i64 [ %i.le, %.lr.ph.i.i119.preheader ], [ %i.ly, %middle.block353 ]
  br label %.lr.ph.i.i119

.lr.ph.i.i119:                                    ; preds = %.lr.ph.i.i119.preheader433, %.lr.ph.i.i119
  %indvars.iv.i.i120 = phi i64 [ %indvars.iv.next.i.i121, %.lr.ph.i.i119 ], [ %indvars.iv.i.i120.ph, %.lr.ph.i.i119.preheader433 ] ; 2 uses
  %i.lz = phi i64 [ %i.mb, %.lr.ph.i.i119 ], [ %.ph, %.lr.ph.i.i119.preheader433 ]
  %i.ma = shl i64 %i.le, %indvars.iv.i.i120
  %i.mb = or i64 %i.lz, %i.ma                     ; 2 uses
  %indvars.iv.next.i.i121 = add nuw nsw i64 %indvars.iv.i.i120, %i.lc ; 2 uses
  %i.mc = icmp samesign ult i64 %indvars.iv.next.i.i121, 64
  br i1 %i.mc, label %.lr.ph.i.i119, label %..loopexit_crit_edge.i.i122, !llvm.loop !557

..loopexit_crit_edge.i.i122:                      ; preds = %.lr.ph.i.i119, %middle.block353
  %.lcssa322 = phi i64 [ %i.ly, %middle.block353 ], [ %i.mb, %.lr.ph.i.i119 ]
  store i64 %.lcssa322, ptr %i.kt, align 8, !tbaa !8
  br label %Abc_TtNormalizeSmallTruth.exit.i98

Abc_TtNormalizeSmallTruth.exit.i98:               ; preds = %..loopexit_crit_edge.i.i122, %bb.ap, %Abc_TgFlipSymGroupByVar.exit
  %i.md = icmp sgt i32 %i.ky, 0
  br i1 %i.md, label %.lr.ph.preheader.i101, label %Abc_TtScc.exit123

.lr.ph.preheader.i101:                            ; preds = %Abc_TtNormalizeSmallTruth.exit.i98
  %wide.trip.count.i102 = zext nneg i32 %i.ky to i64
  br label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %Abc_TtScc6.exit.i114, %.lr.ph.preheader.i101
  %indvars.iv.i104 = phi i64 [ 0, %.lr.ph.preheader.i101 ], [ %indvars.iv.next.i116, %Abc_TtScc6.exit.i114 ] ; 3 uses
  %.014.i105 = phi i32 [ 0, %.lr.ph.preheader.i101 ], [ %i.mq, %Abc_TtScc6.exit.i114 ]
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv.i104
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !8  ; 2 uses
  %i.mg = trunc nuw nsw i64 %indvars.iv.i104 to i32
  %i.mh = and i32 %i.mg, 65535
  %i.mi = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.mh)
  %.not.i.i106 = icmp eq i64 %i.mf, 0
  br i1 %.not.i.i106, label %Abc_TtScc6.exit.i114, label %.preheader.i.i107

.preheader.i.i107:                                ; preds = %.lr.ph.i103, %bb.ar
  %indvars.iv.i11.i108 = phi i64 [ %indvars.iv.next.i12.i112, %bb.ar ], [ 0, %.lr.ph.i103 ] ; 3 uses
  %.01116.i.i109 = phi i32 [ %.1.i.i111, %bb.ar ], [ 0, %.lr.ph.i103 ] ; 2 uses
  %i.mj = shl nuw i64 1, %indvars.iv.i11.i108
  %i.mk = and i64 %i.mj, %i.mf
  %.not14.i.i110 = icmp eq i64 %i.mk, 0
  br i1 %.not14.i.i110, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.preheader.i.i107
  %i.ml = trunc nuw nsw i64 %indvars.iv.i11.i108 to i32
  %i.mm = tail call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.ml)
  %i.mn = add nuw nsw i32 %i.mm, %i.mi
  %i.mo = shl nuw nsw i32 1, %i.mn
  %i.mp = add nsw i32 %i.mo, %.01116.i.i109
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.preheader.i.i107
  %.1.i.i111 = phi i32 [ %i.mp, %bb.aq ], [ %.01116.i.i109, %.preheader.i.i107 ] ; 2 uses
  %indvars.iv.next.i12.i112 = add nuw nsw i64 %indvars.iv.i11.i108, 1 ; 2 uses
  %exitcond.not.i.i113 = icmp eq i64 %indvars.iv.next.i12.i112, 64
  br i1 %exitcond.not.i.i113, label %Abc_TtScc6.exit.i114, label %.preheader.i.i107, !llvm.loop !22

Abc_TtScc6.exit.i114:                             ; preds = %bb.ar, %.lr.ph.i103
  %.0.i.i115 = phi i32 [ 0, %.lr.ph.i103 ], [ %.1.i.i111, %bb.ar ]
  %i.mq = add nsw i32 %.0.i.i115, %.014.i105      ; 2 uses
  %indvars.iv.next.i116 = add nuw nsw i64 %indvars.iv.i104, 1 ; 2 uses
  %exitcond.not.i117 = icmp eq i64 %indvars.iv.next.i116, %wide.trip.count.i102
  br i1 %exitcond.not.i117, label %Abc_TtScc.exit123, label %.lr.ph.i103, !llvm.loop !23

Abc_TtScc.exit123:                                ; preds = %Abc_TtScc6.exit.i114, %Abc_TtNormalizeSmallTruth.exit.i98
  %.0.lcssa.i100 = phi i32 [ 0, %Abc_TtNormalizeSmallTruth.exit.i98 ], [ %i.mq, %Abc_TtScc6.exit.i114 ] ; 2 uses
  store i32 %.0.lcssa.i100, ptr %i.gw, align 4, !tbaa !16
  %i.mr = load i32, ptr %i.ea, align 4
  %i.ms = icmp sgt i32 %.0.lcssa.i100, %i.mr
  %or.cond = select i1 %i.h, i1 %i.ms, i1 false
  br i1 %or.cond, label %Abc_TgCompareCoef.exit168.backedge, label %bb.as

Abc_TgCompareCoef.exit168.backedge:               ; preds = %.lr.ph.i163, %Abc_TtScc.exit123, %Vec_IntPush.exit176
  br label %Abc_TgCompareCoef.exit168, !llvm.loop !558

bb.as:                                            ; preds = %Abc_TtScc.exit123
  call fastcc void @Abc_TgCalcScc(ptr noundef %0, ptr noundef %i.gx, i32 noundef 1)
  br i1 %i.h, label %bb.bb, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.mt = load i32, ptr %i.gy, align 8, !tbaa !318 ; 2 uses
  %i.mu = icmp sgt i32 %i.mt, 0
  br i1 %i.mu, label %.lr.ph37.preheader.i125, label %Abc_TgPermCostScc.exit152

.lr.ph37.preheader.i125:                          ; preds = %bb.at
  %wide.trip.count.i126 = zext nneg i32 %i.mt to i64
  br label %.lr.ph37.i127

.lr.ph37.i127:                                    ; preds = %._crit_edge.i132, %.lr.ph37.preheader.i125
  %indvars.iv42.i128 = phi i64 [ 0, %.lr.ph37.preheader.i125 ], [ %indvars.iv.next43.i136, %._crit_edge.i132 ] ; 2 uses
  %.01935.i129 = phi i32 [ 0, %.lr.ph37.preheader.i125 ], [ %i.oh, %._crit_edge.i132 ] ; 3 uses
  %.02134.i130 = phi i32 [ 0, %.lr.ph37.preheader.i125 ], [ %.122.lcssa.i135, %._crit_edge.i132 ] ; 3 uses
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv42.i128
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 93
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !321 ; 3 uses
  %i.my = sext i8 %i.mx to i32                    ; 2 uses
  %.12225.i131 = add i32 %.02134.i130, 1          ; 2 uses
  %i.mz = icmp sgt i8 %i.mx, 1
  br i1 %i.mz, label %.lr.ph.preheader.i138, label %._crit_edge.i132

.lr.ph.preheader.i138:                            ; preds = %.lr.ph37.i127
  %i.na = sext i32 %.12225.i131 to i64            ; 2 uses
  %.phi.trans.insert.i139 = sext i32 %.02134.i130 to i64
  %.phi.trans.insert46.i140 = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %.phi.trans.insert.i139
  %.pre.i141 = load i32, ptr %.phi.trans.insert46.i140, align 4, !tbaa !16 ; 2 uses
  %i.nb = add nsw i32 %i.my, -1                   ; 3 uses
  %xtraiter468 = and i32 %i.nb, 1
  %i.nc = icmp eq i8 %i.mx, 2
  br i1 %i.nc, label %.lr.ph.i142.epil.preheader, label %.lr.ph.preheader.i138.new

.lr.ph.preheader.i138.new:                        ; preds = %.lr.ph.preheader.i138
  %unroll_iter475 = and i32 %i.nb, -2
  br label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %bb.ay, %.lr.ph.preheader.i138.new
  %i.nd = phi i32 [ %.pre.i141, %.lr.ph.preheader.i138.new ], [ %i.no, %bb.ay ]
  %indvars.iv.i143 = phi i64 [ %i.na, %.lr.ph.preheader.i138.new ], [ %indvars.iv.next.i149.1, %bb.ay ] ; 3 uses
  %.029.i144 = phi i32 [ 1, %.lr.ph.preheader.i138.new ], [ %.1.i148.1, %bb.ay ] ; 2 uses
  %.12028.i145 = phi i32 [ %.01935.i129, %.lr.ph.preheader.i138.new ], [ %.2.i147.1, %bb.ay ] ; 2 uses
  %niter476 = phi i32 [ 0, %.lr.ph.preheader.i138.new ], [ %niter476.next.1, %bb.ay ]
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %indvars.iv.i143
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !16 ; 2 uses
  %i.ng = icmp eq i32 %i.nf, %i.nd
  br i1 %i.ng, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph.i142
  %i.nh = add nsw i32 %.029.i144, 1
  br label %.lr.ph.i142.1

bb.av:                                            ; preds = %.lr.ph.i142
  %i.ni = sext i32 %.029.i144 to i64
  %i.nj = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.ni
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !16
  %i.nl = add nsw i32 %i.nk, %.12028.i145
  br label %.lr.ph.i142.1

.lr.ph.i142.1:                                    ; preds = %bb.av, %bb.au
  %.2.i147 = phi i32 [ %.12028.i145, %bb.au ], [ %i.nl, %bb.av ] ; 2 uses
  %.1.i148 = phi i32 [ %i.nh, %bb.au ], [ 1, %bb.av ] ; 2 uses
  %i.nm = getelementptr [4 x i8], ptr %i.gx, i64 %indvars.iv.i143
  %i.nn = getelementptr i8, ptr %i.nm, i64 4
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !16 ; 3 uses
  %i.np = icmp eq i32 %i.no, %i.nf
  br i1 %i.np, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i142.1
  %i.nq = sext i32 %.1.i148 to i64
  %i.nr = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.nq
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !16
  %i.nt = add nsw i32 %i.ns, %.2.i147
  br label %bb.ay

bb.ax:                                            ; preds = %.lr.ph.i142.1
  %i.nu = add nsw i32 %.1.i148, 1
  br label %bb.ay

end_hunk_6
begin_hunk_7_@Abc_TgPermEnumerationScc:bb.a
.lr.ph38.i.i:                                     ; preds = %._crit_edge31.i.i, %.lr.ph38.i.i
  %indvars.iv43.i.i = phi i64 [ %indvars.iv.next44.i.i, %.lr.ph38.i.i ], [ %.022.lcssa.i.i, %._crit_edge31.i.i ] ; 2 uses
  %.1.in36.i.i = phi i8 [ %.1.in.i.i, %.lr.ph38.i.i ], [ %.1.in34.i.i, %._crit_edge31.i.i ] ; 2 uses
  %indvars.iv.next44.i.i = add nsw i64 %indvars.iv43.i.i, 1
  %i.eo = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv43.i.i
  store i8 %.1.in36.i.i, ptr %i.eo, align 1, !tbaa !187
  %i.ep = zext nneg i8 %.1.in36.i.i to i64
  %.1.in.in.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ep
  %.1.in.i.i = load i8, ptr %.1.in.in.i.i, align 1, !tbaa !187 ; 2 uses
  %i.eq = icmp sgt i8 %.1.in.i.i, -1
  br i1 %i.eq, label %.lr.ph38.i.i, label %Abc_TgSplitGroupsByScc.exit, !llvm.loop !314

Abc_TgSplitGroupsByScc.exit:                      ; preds = %.lr.ph38.i.i, %._crit_edge31.i.i
  call fastcc void @Abc_TgImplementPerm(ptr noundef nonnull %2, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.i

bb.i:                                             ; preds = %Abc_TgSplitGroupsByScc.exit, %Abc_TgManCopy.exit
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !309 ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph.i4, label %Abc_TgFirstPermutation.exit

.lr.ph.i4:                                        ; preds = %bb.i
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.ev = zext nneg i32 %i.es to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.eu, i8 -1, i64 %i.ev, i1 false), !tbaa !187
  br label %Abc_TgFirstPermutation.exit

Abc_TgFirstPermutation.exit:                      ; preds = %bb.i, %.lr.ph.i4
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.j

bb.j:                                             ; preds = %Abc_TgSaveBest.exit, %Abc_TgFirstPermutation.exit
  %i.ex = load ptr, ptr %1, align 8, !tbaa !315   ; 9 uses
  %i.ey = ptrtoaddr ptr %i.ex to i64
  %i.ez = load ptr, ptr %2, align 8, !tbaa !315   ; 8 uses
  %i.fa = ptrtoaddr ptr %i.ez to i64
  %i.fb = load i32, ptr %i.ew, align 8, !tbaa !313 ; 2 uses
  %i.fc = icmp slt i32 %i.fb, 7
  %i.fd = add nsw i32 %i.fb, -6
  %i.fe = shl nuw i32 1, %i.fd
  %i.ff = select i1 %i.fc, i32 1, i32 %i.fe       ; 4 uses
  %i.fg = zext i32 %i.ff to i64                   ; 4 uses
  %i.fh = icmp sgt i32 %i.ff, 0
  br i1 %i.fh, label %.lr.ph, label %Abc_TgSaveBest.exit

bb.k:                                             ; preds = %.lr.ph
  %i.fi = trunc nuw i64 %i.fk to i32
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %.lr.ph, label %Abc_TgSaveBest.exit, !llvm.loop !78

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %indvars.iv.i.i519 = phi i64 [ %i.fk, %bb.k ], [ %i.fg, %bb.j ]
  %i.fk = add nsw i64 %indvars.iv.i.i519, -1      ; 4 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !8  ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fk
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !8  ; 2 uses
  %.not.i.i6 = icmp eq i64 %i.fm, %i.fo
  br i1 %.not.i.i6, label %bb.k, label %bb.l, !llvm.loop !78

bb.l:                                             ; preds = %.lr.ph
  %i.fp = icmp ult i64 %i.fm, %i.fo
  br i1 %i.fp, label %Abc_TgSaveBest.exit, label %Abc_TtCompareRev.exit.i

Abc_TtCompareRev.exit.i:                          ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull readonly align 8 dereferenceable(192) %2, i64 192, i1 false), !tbaa.struct !360
  %min.iters.check39 = icmp ult i32 %i.ff, 4
  %i.fq = sub i64 %i.fa, %i.ey
  %diff.check37 = icmp ugt i64 %i.fq, -32
  %or.cond50 = select i1 %min.iters.check39, i1 true, i1 %diff.check37
  br i1 %or.cond50, label %.lr.ph18.i.i.i.preheader, label %vector.ph40

.lr.ph18.i.i.i.preheader:                         ; preds = %Abc_TtCompareRev.exit.i
  %xtraiter61 = and i64 %i.fg, 3                  ; 3 uses
  %i.fr = icmp ult i32 %i.ff, 4
  br i1 %i.fr, label %.lr.ph18.i.i.i.epil.preheader, label %.lr.ph18.i.i.i.preheader.new

.lr.ph18.i.i.i.preheader.new:                     ; preds = %.lr.ph18.i.i.i.preheader
  %unroll_iter65 = and i64 %i.fg, 2147483644
  br label %.lr.ph18.i.i.i

vector.ph40:                                      ; preds = %Abc_TtCompareRev.exit.i
  %n.vec41 = and i64 %i.fg, 2147483644
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph40
  %index43 = phi i64 [ 0, %vector.ph40 ], [ %index.next46, %vector.body42 ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index43 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %wide.load44 = load <2 x i64>, ptr %i.fs, align 8, !tbaa !8
  %wide.load45 = load <2 x i64>, ptr %i.ft, align 8, !tbaa !8
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %index43 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store <2 x i64> %wide.load44, ptr %i.fu, align 8, !tbaa !8
  store <2 x i64> %wide.load45, ptr %i.fv, align 8, !tbaa !8
  %index.next46 = add nuw i64 %index43, 4         ; 2 uses
  %i.fw = icmp eq i64 %index.next46, %n.vec41
  br i1 %i.fw, label %Abc_TgManCopy.exit.i, label %vector.body42, !llvm.loop !580

.lr.ph18.i.i.i:                                   ; preds = %.lr.ph18.i.i.i, %.lr.ph18.i.i.i.preheader.new
  %indvars.iv21.i.i.i = phi i64 [ 0, %.lr.ph18.i.i.i.preheader.new ], [ %indvars.iv.next22.i.i.i.3, %.lr.ph18.i.i.i ] ; 6 uses
  %niter66 = phi i64 [ 0, %.lr.ph18.i.i.i.preheader.new ], [ %niter66.next.3, %.lr.ph18.i.i.i ]
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv21.i.i.i
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !8
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv21.i.i.i
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !8
  %indvars.iv.next22.i.i.i = or disjoint i64 %indvars.iv21.i.i.i, 1 ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.next22.i.i.i
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !8
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.next22.i.i.i
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !8
  %indvars.iv.next22.i.i.i.1 = or disjoint i64 %indvars.iv21.i.i.i, 2 ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.next22.i.i.i.1
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !8
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.next22.i.i.i.1
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !8
  %indvars.iv.next22.i.i.i.2 = or disjoint i64 %indvars.iv21.i.i.i, 3 ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv.next22.i.i.i.2
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !8
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.next22.i.i.i.2
  store i64 %i.gh, ptr %i.gi, align 8, !tbaa !8
  %indvars.iv.next22.i.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i.i, 4 ; 2 uses
  %niter66.next.3 = add i64 %niter66, 4           ; 2 uses
  %niter66.ncmp.3 = icmp eq i64 %niter66.next.3, %unroll_iter65
  br i1 %niter66.ncmp.3, label %Abc_TgManCopy.exit.i.loopexit.unr-lcssa, label %.lr.ph18.i.i.i, !llvm.loop !581

Abc_TgManCopy.exit.i.loopexit.unr-lcssa:          ; preds = %.lr.ph18.i.i.i
  %lcmp.mod63.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod63.not, label %Abc_TgManCopy.exit.i, label %.lr.ph18.i.i.i.epil.preheader

.lr.ph18.i.i.i.epil.preheader:                    ; preds = %Abc_TgManCopy.exit.i.loopexit.unr-lcssa, %.lr.ph18.i.i.i.preheader
  %indvars.iv21.i.i.i.epil.init = phi i64 [ 0, %.lr.ph18.i.i.i.preheader ], [ %indvars.iv.next22.i.i.i.3, %Abc_TgManCopy.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod64 = icmp ne i64 %xtraiter61, 0
  call void @llvm.assume(i1 %lcmp.mod64)
  br label %.lr.ph18.i.i.i.epil

.lr.ph18.i.i.i.epil:                              ; preds = %.lr.ph18.i.i.i.epil, %.lr.ph18.i.i.i.epil.preheader
  %indvars.iv21.i.i.i.epil = phi i64 [ %indvars.iv.next22.i.i.i.epil, %.lr.ph18.i.i.i.epil ], [ %indvars.iv21.i.i.i.epil.init, %.lr.ph18.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter62 = phi i64 [ %epil.iter62.next, %.lr.ph18.i.i.i.epil ], [ 0, %.lr.ph18.i.i.i.epil.preheader ]
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv21.i.i.i.epil
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !8
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv21.i.i.i.epil
  store i64 %i.gk, ptr %i.gl, align 8, !tbaa !8
  %indvars.iv.next22.i.i.i.epil = add nuw nsw i64 %indvars.iv21.i.i.i.epil, 1
  %epil.iter62.next = add i64 %epil.iter62, 1     ; 2 uses
  %epil.iter62.cmp.not = icmp eq i64 %epil.iter62.next, %xtraiter61
  br i1 %epil.iter62.cmp.not, label %Abc_TgManCopy.exit.i, label %.lr.ph18.i.i.i.epil, !llvm.loop !582

Abc_TgManCopy.exit.i:                             ; preds = %vector.body42, %Abc_TgManCopy.exit.i.loopexit.unr-lcssa, %.lr.ph18.i.i.i.epil
  store ptr %i.ex, ptr %1, align 8, !tbaa !315
  br label %Abc_TgSaveBest.exit

Abc_TgSaveBest.exit:                              ; preds = %bb.k, %bb.j, %bb.l, %Abc_TgManCopy.exit.i
  %i.gm = call fastcc i32 @Abc_TgNextPermutation(ptr noundef %2)
  %.not = icmp eq i32 %i.gm, 0
  br i1 %.not, label %bb.m, label %bb.j, !llvm.loop !583

bb.m:                                             ; preds = %Abc_TgSaveBest.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Abc_TgCalcScc(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #7 {
bb.a:
  %i.a = alloca [10 x i32], align 16              ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !315    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !313  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %1, i8 0, i64 %i.f, i1 false)
  %i.g = icmp slt i32 %i.d, 7
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.d, 6
  br i1 %.not.i, label %Abc_TtNormalizeSmallTruth.exit.thread.i, label %bb.c

Abc_TtNormalizeSmallTruth.exit.thread.i:          ; preds = %bb.b
  %i.h = load i64, ptr %i.b, align 8, !tbaa !8
  br label %.preheader.preheader.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = shl nuw nsw i32 1, %i.d
  %i.j = load i64, ptr %i.b, align 8, !tbaa !8
  %i.k = zext nneg i32 %i.i to i64                ; 6 uses
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = and i64 %i.j, %i.l                       ; 5 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !8
  %i.n = icmp ult i32 %i.d, 6
  br i1 %i.n, label %.lr.ph.i.i.preheader, label %Abc_TtSccInCofs.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.o = shl nuw nsw i64 %i.k, 1
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.o, i64 64) ; 2 uses
  %3 = zext nneg i32 %i.d to i64
  %4 = shl nsw i64 -2, %3                         ; 2 uses
  %5 = sub nsw i64 0, %4
  %i.q = icmp ne i64 %i.p, %5
  %i.r = zext i1 %i.q to i64                      ; 2 uses
  %6 = sub nuw nsw i64 %i.p, %i.r
  %7 = add nsw i64 %6, %4
  %i.s = zext nneg i32 %i.d to i64
  %i.t = lshr i64 %7, %i.s
  %i.u = add i64 %i.t, %i.r
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.v, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = zext nneg i32 %i.d to i64
  %i.x = shl i64 %n.vec, %i.w
  %i.y = add i64 %i.x, %i.k
  %i.z = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.m, i64 0
  %i.aa = shl nuw nsw <2 x i64> %broadcast.splat, splat (i64 1) ; 3 uses
  %broadcast.splatinsert93 = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat94 = shufflevector <2 x i64> %broadcast.splatinsert93, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %induction = shl nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add nuw nsw <2 x i64> %i.aa, %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.z, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi95 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %step.add = add nuw nsw <2 x i64> %vec.ind, %i.aa
  %i.ab = shl <2 x i64> %broadcast.splat94, %vec.ind
  %i.ac = shl <2 x i64> %broadcast.splat94, %step.add
  %i.ad = or <2 x i64> %vec.phi, %i.ab            ; 2 uses
  %i.ae = or <2 x i64> %vec.phi95, %i.ac          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next.reass = add nuw nsw <2 x i64> %vec.ind, %invariant.op
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !584

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %Abc_TtNormalizeSmallTruth.exit.i, label %.lr.ph.i.i.preheader97

.lr.ph.i.i.preheader97:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %i.k, %.lr.ph.i.i.preheader ], [ %i.y, %middle.block ]
  %.ph = phi i64 [ %i.m, %.lr.ph.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader97, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader97 ] ; 2 uses
  %i.ah = phi i64 [ %i.aj, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader97 ]
  %i.ai = shl i64 %i.m, %indvars.iv.i.i
  %i.aj = or i64 %i.ah, %i.ai                     ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, %i.k ; 2 uses
  %i.ak = icmp samesign ult i64 %indvars.iv.next.i.i, 64
  br i1 %i.ak, label %.lr.ph.i.i, label %Abc_TtNormalizeSmallTruth.exit.i, !llvm.loop !585

Abc_TtNormalizeSmallTruth.exit.i:                 ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa91 = phi i64 [ %i.ag, %middle.block ], [ %i.aj, %.lr.ph.i.i ] ; 2 uses
  store i64 %.lcssa91, ptr %i.b, align 8, !tbaa !8
  %.not53.i = icmp eq i32 %i.d, 0
  br i1 %.not53.i, label %Abc_TtSccInCofs.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %Abc_TtNormalizeSmallTruth.exit.i, %Abc_TtNormalizeSmallTruth.exit.thread.i
  %i.al = phi i64 [ %i.h, %Abc_TtNormalizeSmallTruth.exit.thread.i ], [ %.lcssa91, %Abc_TtNormalizeSmallTruth.exit.i ]
  %wide.trip.count.i.i = zext nneg i32 %i.d to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.i, %.preheader.preheader.i.i
  %indvars.iv26.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next27.i.i, %bb.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv26.i.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.preheader.i.i
  %indvars.iv.i28.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i29.i, %bb.h ] ; 2 uses
  %.023.i.i = phi i32 [ 0, %.preheader.i.i ], [ %.1.i.i, %bb.h ] ; 3 uses
  %.01622.i.i = phi i32 [ 0, %.preheader.i.i ], [ %.2.i.i, %bb.h ] ; 3 uses
  %i.ao = shl nuw i64 1, %indvars.iv.i28.i        ; 2 uses
  %i.ap = and i64 %i.ao, %i.an
  %.not.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = and i64 %i.ao, %i.al
  %.not20.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not20.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = and i32 %.023.i.i, 255
  %i.as = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.ar)
  %i.at = shl nuw nsw i32 1, %i.as
  %i.au = add nsw i32 %i.at, %.01622.i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.117.i.i = phi i32 [ %i.au, %bb.f ], [ %.01622.i.i, %bb.e ]
  %i.av = add nsw i32 %.023.i.i, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.2.i.i = phi i32 [ %.117.i.i, %bb.g ], [ %.01622.i.i, %bb.d ] ; 2 uses
  %.1.i.i = phi i32 [ %i.av, %bb.g ], [ %.023.i.i, %bb.d ]
  %indvars.iv.next.i29.i = add nuw nsw i64 %indvars.iv.i28.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i29.i, 64
  br i1 %exitcond.not.i.i, label %bb.i, label %bb.d, !llvm.loop !586

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv26.i.i ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !16
  %i.ay = add nsw i32 %i.ax, %.2.i.i
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !16
  %indvars.iv.next27.i.i = add nuw nsw i64 %indvars.iv26.i.i, 1 ; 2 uses
  %exitcond29.not.i.i = icmp eq i64 %indvars.iv.next27.i.i, %wide.trip.count.i.i
  br i1 %exitcond29.not.i.i, label %Abc_TtSccInCofs.exit, label %.preheader.i.i, !llvm.loop !587

bb.j:                                             ; preds = %bb.a
  %i.az = add nsw i32 %i.d, -6                    ; 2 uses
  %.not58.i = icmp eq i32 %i.az, 31
  br i1 %.not58.i, label %Abc_TtSccInCofs.exit, label %.lr.ph57.i

.lr.ph57.i:                                       ; preds = %bb.j
  %i.ba = shl nuw i32 1, %i.az
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 1)
  %wide.trip.count64.i = zext nneg i32 %smax.i to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  %.promoted.i = load i32, ptr %1, align 4, !tbaa !16
  br label %.preheader.i31.i

.preheader.i31.i:                                 ; preds = %Abc_TtSccInCofs6.exit45._crit_edge.i, %.lr.ph57.i
  %i.bg = phi i32 [ %.promoted.i, %.lr.ph57.i ], [ %i.er, %Abc_TtSccInCofs6.exit45._crit_edge.i ]
  %indvars.iv61.i = phi i64 [ 0, %.lr.ph57.i ], [ %indvars.iv.next62.i, %Abc_TtSccInCofs6.exit45._crit_edge.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv61.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !8  ; 8 uses
  %i.bj = trunc nuw nsw i64 %indvars.iv61.i to i32 ; 2 uses
  %i.bk = and i32 %i.bj, 65535
  %i.bl = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.bk) ; 6 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.preheader.i31.i
  %indvars.iv.i33.i = phi i64 [ 0, %.preheader.i31.i ], [ %indvars.iv.next.i41.i, %bb.o ] ; 2 uses
  %.023.i34.i = phi i32 [ 0, %.preheader.i31.i ], [ %.1.i40.i, %bb.o ] ; 3 uses
  %.01622.i35.i = phi i32 [ 0, %.preheader.i31.i ], [ %.2.i39.i, %bb.o ] ; 3 uses
  %i.bm = shl nuw i64 1, %indvars.iv.i33.i        ; 2 uses
  %i.bn = and i64 %i.bm, 6148914691236517205
  %.not.i36.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i36.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = and i64 %i.bm, %i.bi
  %.not20.i37.i = icmp eq i64 %i.bo, 0
  br i1 %.not20.i37.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = and i32 %.023.i34.i, 255
  %i.bq = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.bp)
  %i.br = add nuw nsw i32 %i.bq, %i.bl
  %i.bs = shl nuw nsw i32 1, %i.br
  %i.bt = add nsw i32 %i.bs, %.01622.i35.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.117.i38.i = phi i32 [ %i.bt, %bb.m ], [ %.01622.i35.i, %bb.l ]
  %i.bu = add nsw i32 %.023.i34.i, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.2.i39.i = phi i32 [ %.117.i38.i, %bb.n ], [ %.01622.i35.i, %bb.k ] ; 2 uses
  %.1.i40.i = phi i32 [ %i.bu, %bb.n ], [ %.023.i34.i, %bb.k ]
  %indvars.iv.next.i41.i = add nuw nsw i64 %indvars.iv.i33.i, 1 ; 2 uses
  %exitcond.not.i42.i = icmp eq i64 %indvars.iv.next.i41.i, 64
  br i1 %exitcond.not.i42.i, label %.preheader.i31.1.i, label %bb.k, !llvm.loop !586

.preheader.i31.1.i:                               ; preds = %bb.o, %bb.s
  %indvars.iv.i33.1.i = phi i64 [ %indvars.iv.next.i41.1.i, %bb.s ], [ 0, %bb.o ] ; 2 uses
  %.023.i34.1.i = phi i32 [ %.1.i40.1.i, %bb.s ], [ 0, %bb.o ] ; 3 uses
  %.01622.i35.1.i = phi i32 [ %.2.i39.1.i, %bb.s ], [ 0, %bb.o ] ; 3 uses
  %i.bv = shl nuw i64 1, %indvars.iv.i33.1.i      ; 2 uses
  %i.bw = and i64 %i.bv, 3689348814741910323
  %.not.i36.1.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i36.1.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.preheader.i31.1.i
  %i.bx = and i64 %i.bv, %i.bi
  %.not20.i37.1.i = icmp eq i64 %i.bx, 0
  br i1 %.not20.i37.1.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = and i32 %.023.i34.1.i, 255
  %i.bz = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.by)
  %i.ca = add nuw nsw i32 %i.bz, %i.bl
  %i.cb = shl nuw nsw i32 1, %i.ca
  %i.cc = add nsw i32 %i.cb, %.01622.i35.1.i
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.117.i38.1.i = phi i32 [ %i.cc, %bb.q ], [ %.01622.i35.1.i, %bb.p ]
end_hunk_7
