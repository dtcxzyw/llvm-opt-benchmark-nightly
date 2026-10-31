Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcExpand?download=true
inline.NumInlined: 42
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c" 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" 0\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Abc_ObjExpandCubesTry(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11  ; 4 uses
  %i.b = tail call i32 @Abc_SopGetCubeNum(ptr noundef %.val) #8
  %i.c = tail call i32 @Abc_SopGetVarNum(ptr noundef %.val) #8 ; 9 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #9 ; 7 uses
  %i.e = add i32 %i.c, -1
  %or.cond.i = icmp ult i32 %i.e, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.c ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 4 uses
  store i32 0, ptr %i.f, align 4, !tbaa !14
  store i32 %spec.store.select.i, ptr %i.d, align 8, !tbaa !15
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 2 uses
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #9
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !16
  %i.l = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #9 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !14
  store i32 %spec.store.select.i, ptr %i.l, align 8, !tbaa !15
  br i1 %.not.i, label %Vec_IntAlloc.exit49, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit
  %i.n = sext i32 %spec.store.select.i to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #9
  br label %Vec_IntAlloc.exit49

Vec_IntAlloc.exit49:                              ; preds = %Vec_IntAlloc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %Vec_IntAlloc.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !16
  %i.s = load i8, ptr %.val, align 1, !tbaa !17
  %.not58 = icmp eq i8 %i.s, 0
  br i1 %.not58, label %._crit_edge61, label %.lr.ph60

.lr.ph60:                                         ; preds = %Vec_IntAlloc.exit49
  %i.t = sext i32 %i.c to i64                     ; 2 uses
  %i.u = shl nsw i64 %i.t, 2                      ; 2 uses
  %i.v = icmp sgt i32 %i.c, 0
  %i.w = zext i32 %i.c to i64                     ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = getelementptr i8, ptr %2, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph60, %.critedge
  %.03859 = phi ptr [ %.val, %.lr.ph60 ], [ %i.dj, %.critedge ] ; 13 uses
  %i.z = load i32, ptr %i.d, align 8, !tbaa !15
  %.not.i.i = icmp slt i32 %i.z, %i.c
  br i1 %.not.i.i, label %bb.e, label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !16  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aa, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call ptr @realloc(ptr noundef nonnull %i.aa, i64 noundef %i.u) #10
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.u) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = phi ptr [ %i.ab, %bb.f ], [ %i.ac, %bb.g ]
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !16
  store i32 %i.c, ptr %i.d, align 8, !tbaa !15
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.h, %bb.d
  br i1 %i.v, label %.lr.ph.preheader, label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %Vec_IntGrow.exit.i
  store i32 %i.c, ptr %i.f, align 4, !tbaa !14
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Vec_IntGrow.exit.i
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ae, i8 -1, i64 %i.x, i1 false), !tbaa !18
  store i32 %i.c, ptr %i.f, align 4, !tbaa !14
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.03859, i64 %indvars.iv ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17  ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 45
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %.val43 = load ptr, ptr %i.y, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val43, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !18
  %i.ak = icmp eq i8 %i.ag, 48
  %i.al = zext i1 %i.ak to i32
  %i.am = shl nsw i32 %i.aj, 1
  %i.an = or disjoint i32 %i.am, %i.al
  %.val44 = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val44, i64 %indvars.iv
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !18
  store i8 45, ptr %i.af, align 1, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.w
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.j, %Vec_IntFill.exit
  %i.ap = tail call i32 @Bmc_CollapseExpandRound(ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef nonnull %i.l, i32 noundef 0, i32 noundef 0, i32 noundef -1) #8 ; 0 uses
  %.val4554 = load i32, ptr %i.f, align 4, !tbaa !14 ; 3 uses
  %i.aq = icmp sgt i32 %.val4554, 0
  br i1 %i.aq, label %.lr.ph57.preheader, label %.critedge

.lr.ph57.preheader:                               ; preds = %._crit_edge
  %.val42.pre = load ptr, ptr %i.k, align 8, !tbaa !16 ; 4 uses
  %i.ar = zext nneg i32 %.val4554 to i64          ; 5 uses
  %min.iters.check = icmp ult i32 %.val4554, 8
  br i1 %min.iters.check, label %.lr.ph57.preheader87, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph57.preheader
  %scevgep = getelementptr i8, ptr %.03859, i64 %i.ar
  %i.as = shl nuw nsw i64 %i.ar, 2
  %scevgep71 = getelementptr i8, ptr %.val42.pre, i64 %i.as
  %bound0 = icmp ult ptr %.03859, %scevgep71
  %bound1 = icmp ult ptr %.val42.pre, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph57.preheader87, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ar, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue86, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue86 ] ; 10 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val42.pre, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <4 x i32>, ptr %i.at, align 4, !tbaa !18, !alias.scope !29 ; 5 uses
  %wide.load72 = load <4 x i32>, ptr %i.au, align 4, !tbaa !18, !alias.scope !29 ; 5 uses
  %i.av = icmp ne <4 x i32> %wide.load, splat (i32 -1) ; 4 uses
  %i.aw = icmp ne <4 x i32> %wide.load72, splat (i32 -1) ; 4 uses
  %i.ax = extractelement <4 x i1> %i.av, i64 0
  br i1 %i.ax, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ay = bitcast <4 x i32> %wide.load to <16 x i8>
  %i.az = extractelement <16 x i8> %i.ay, i64 0
  %i.ba = and i8 %i.az, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.03859, i64 %index
  %i.bc = sub nuw nsw i8 49, %i.ba
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !17, !alias.scope !30, !noalias !29
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bd = extractelement <4 x i1> %i.av, i64 1
  br i1 %i.bd, label %pred.store.if73, label %pred.store.continue74

pred.store.if73:                                  ; preds = %pred.store.continue
  %i.be = bitcast <4 x i32> %wide.load to <16 x i8>
  %i.bf = extractelement <16 x i8> %i.be, i64 4
  %i.bg = and i8 %i.bf, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.03859, i64 %index
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = sub nuw nsw i8 49, %i.bg
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !17, !alias.scope !30, !noalias !29
  br label %pred.store.continue74

pred.store.continue74:                            ; preds = %pred.store.if73, %pred.store.continue
  %i.bk = extractelement <4 x i1> %i.av, i64 2
  br i1 %i.bk, label %pred.store.if75, label %pred.store.continue76

pred.store.if75:                                  ; preds = %pred.store.continue74
  %i.bl = bitcast <4 x i32> %wide.load to <16 x i8>
  %i.bm = extractelement <16 x i8> %i.bl, i64 8
  %i.bn = and i8 %i.bm, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.03859, i64 %index
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bq = sub nuw nsw i8 49, %i.bn
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !17, !alias.scope !30, !noalias !29
  br label %pred.store.continue76

pred.store.continue76:                            ; preds = %pred.store.if75, %pred.store.continue74
  %i.br = extractelement <4 x i1> %i.av, i64 3
  br i1 %i.br, label %pred.store.if77, label %pred.store.continue78

pred.store.if77:                                  ; preds = %pred.store.continue76
  %i.bs = bitcast <4 x i32> %wide.load to <16 x i8>
  %i.bt = extractelement <16 x i8> %i.bs, i64 12
  %i.bu = and i8 %i.bt, 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.03859, i64 %index
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  %i.bx = sub nuw nsw i8 49, %i.bu
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !17, !alias.scope !30, !noalias !29
  br label %pred.store.continue78

pred.store.continue78:                            ; preds = %pred.store.if77, %pred.store.continue76
  %i.by = extractelement <4 x i1> %i.aw, i64 0
  br i1 %i.by, label %pred.store.if79, label %pred.store.continue80

pred.store.if79:                                  ; preds = %pred.store.continue78
  %i.bz = bitcast <4 x i32> %wide.load72 to <16 x i8>
  %i.ca = extractelement <16 x i8> %i.bz, i64 0
  %i.cb = and i8 %i.ca, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.03859, i64 %index
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = sub nuw nsw i8 49, %i.cb
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !17, !alias.scope !30, !noalias !29
  br label %pred.store.continue80

pred.store.continue80:                            ; preds = %pred.store.if79, %pred.store.continue78
  %i.cf = extractelement <4 x i1> %i.aw, i64 1
  br i1 %i.cf, label %pred.store.if81, label %pred.store.continue82

pred.store.if81:                                  ; preds = %pred.store.continue80
  %i.cg = bitcast <4 x i32> %wide.load72 to <16 x i8>
  %i.ch = extractelement <16 x i8> %i.cg, i64 4
  %i.ci = and i8 %i.ch, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %.03859, i64 %index
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 5
  %i.cl = sub nuw nsw i8 49, %i.ci
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !17, !alias.scope !30, !noalias !29
  br label %pred.store.continue82

pred.store.continue82:                            ; preds = %pred.store.if81, %pred.store.continue80
  %i.cm = extractelement <4 x i1> %i.aw, i64 2
  br i1 %i.cm, label %pred.store.if83, label %pred.store.continue84

pred.store.if83:                                  ; preds = %pred.store.continue82
  %i.cn = bitcast <4 x i32> %wide.load72 to <16 x i8>
  %i.co = extractelement <16 x i8> %i.cn, i64 8
  %i.cp = and i8 %i.co, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.03859, i64 %index
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 6
  %i.cs = sub nuw nsw i8 49, %i.cp
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !17, !alias.scope !30, !noalias !29
  br label %pred.store.continue84

pred.store.continue84:                            ; preds = %pred.store.if83, %pred.store.continue82
  %i.ct = extractelement <4 x i1> %i.aw, i64 3
  br i1 %i.ct, label %pred.store.if85, label %pred.store.continue86

pred.store.if85:                                  ; preds = %pred.store.continue84
  %i.cu = bitcast <4 x i32> %wide.load72 to <16 x i8>
  %i.cv = extractelement <16 x i8> %i.cu, i64 12
  %i.cw = and i8 %i.cv, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %.03859, i64 %index
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 7
  %i.cz = sub nuw nsw i8 49, %i.cw
  store i8 %i.cz, ptr %i.cy, align 1, !tbaa !17, !alias.scope !30, !noalias !29
  br label %pred.store.continue86

pred.store.continue86:                            ; preds = %pred.store.if85, %pred.store.continue84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %pred.store.continue86
  %cmp.n = icmp eq i64 %n.vec, %i.ar
  br i1 %cmp.n, label %.critedge, label %.lr.ph57.preheader87

.lr.ph57.preheader87:                             ; preds = %vector.memcheck, %.lr.ph57.preheader, %middle.block
  %indvars.iv63.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph57.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph57.preheader87, %bb.l
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %bb.l ], [ %indvars.iv63.ph, %.lr.ph57.preheader87 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.val42.pre, i64 %indvars.iv63
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !18 ; 2 uses
  %.not41 = icmp eq i32 %i.dc, -1
  br i1 %.not41, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph57
  %i.dd = trunc i32 %i.dc to i8
  %i.de = and i8 %i.dd, 1
  %i.df = sub nuw nsw i8 49, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.03859, i64 %indvars.iv63
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph57, %bb.k
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %i.dh = icmp samesign ult i64 %indvars.iv.next64, %i.ar
  br i1 %i.dh, label %.lr.ph57, label %.critedge, !llvm.loop !27

.critedge:                                        ; preds = %bb.l, %middle.block, %._crit_edge
  %i.di = getelementptr i8, ptr %.03859, i64 %i.t
  %i.dj = getelementptr i8, ptr %i.di, i64 3      ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !17
  %.not = icmp eq i8 %i.dk, 0
  br i1 %.not, label %._crit_edge61.loopexit, label %bb.d, !llvm.loop !28

._crit_edge61.loopexit:                           ; preds = %.critedge
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !16
  br label %._crit_edge61

._crit_edge61:                                    ; preds = %._crit_edge61.loopexit, %Vec_IntAlloc.exit49
  %i.dl = phi ptr [ %.pre, %._crit_edge61.loopexit ], [ %i.j, %Vec_IntAlloc.exit49 ] ; 2 uses
  %.not.i50 = icmp eq ptr %i.dl, null
  br i1 %.not.i50, label %Vec_IntFree.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge61
  tail call void @free(ptr noundef nonnull %i.dl) #8
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge61, %bb.m
  tail call void @free(ptr noundef nonnull %i.d) #8
  %i.dm = load ptr, ptr %i.r, align 8, !tbaa !16  ; 2 uses
  %.not.i51 = icmp eq ptr %i.dm, null
  br i1 %.not.i51, label %Vec_IntFree.exit52, label %bb.n

bb.n:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.dm) #8
  br label %Vec_IntFree.exit52

Vec_IntFree.exit52:                               ; preds = %Vec_IntFree.exit, %bb.n
  tail call void @free(ptr noundef nonnull %i.l) #8
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @Abc_SopGetCubeNum(ptr noundef) local_unnamed_addr #2

declare i32 @Abc_SopGetVarNum(ptr noundef) local_unnamed_addr #2

declare i32 @Bmc_CollapseExpandRound(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Abc_ObjExpandCubes(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #9 ; 6 uses
  %i.c = add i32 %2, -1
  %or.cond.i = icmp ult i32 %i.c, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %2 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !14
  store i32 %spec.store.select.i, ptr %i.b, align 8, !tbaa !15
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #9
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted55 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %.promoted55, ptr %i.h, align 8, !tbaa !16
  %i.i = tail call ptr @Mf_ManGenerateCnf(ptr noundef %1, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8 ; 2 uses
  %i.j = tail call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.i, i32 noundef 1, i32 noundef 0) #8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.k = tail call i32 @sat_solver_nvars(ptr noundef %i.j) #8
  %i.l = sub i32 %i.k, %2
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 2, ptr %i.a, align 4, !tbaa !18
  %i.n = call i32 @sat_solver_solve(ptr noundef %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.m, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #8
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %.lr.ph.i, label %bb.ad

.lr.ph.i:                                         ; preds = %bb.ad, %Vec_IntAlloc.exit
  %i.p = phi ptr [ @.str.1, %Vec_IntAlloc.exit ], [ @.str, %bb.ad ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 12 uses
  store i32 0, ptr %i.q, align 4, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.s = load i8, ptr %i.p, align 1, !tbaa !17
  %i.t = load i32, ptr %0, align 8, !tbaa !21
  %i.u = icmp eq i32 %i.t, 0
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !11   ; 3 uses
  br i1 %i.u, label %bb.c, label %Vec_StrPush.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %.not9.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not9.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.v, i64 noundef 16) #10
  %.pre9.i.pre = load i32, ptr %i.q, align 4, !tbaa !20
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.e:                                             ; preds = %bb.c
  %i.x = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #9
  br label %Vec_StrGrow.exit11.sink.split.i.i

Vec_StrGrow.exit11.sink.split.i.i:                ; preds = %bb.e, %bb.d
  %.pre9.i = phi i32 [ 0, %bb.e ], [ %.pre9.i.pre, %bb.d ]
  %i.y = phi ptr [ %i.x, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  store ptr %i.y, ptr %i.r, align 8, !tbaa !11
  store i32 16, ptr %0, align 8, !tbaa !21
  br label %Vec_StrPush.exit.i

Vec_StrPush.exit.i:                               ; preds = %.lr.ph.i, %Vec_StrGrow.exit11.sink.split.i.i
  %i.z = phi i32 [ %.pre9.i, %Vec_StrGrow.exit11.sink.split.i.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.aa = phi ptr [ %i.y, %Vec_StrGrow.exit11.sink.split.i.i ], [ %i.v, %.lr.ph.i ]
  %i.ab = add nsw i32 %i.z, 1
  store i32 %i.ab, ptr %i.q, align 4, !tbaa !20
  %i.ac = sext i32 %i.z to i64
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 %i.ac
  store i8 %i.s, ptr %i.ad, align 1, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17
  %i.ag = load i32, ptr %i.q, align 4, !tbaa !20  ; 7 uses
  %i.ah = load i32, ptr %0, align 8, !tbaa !21
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %.Vec_StrPush.exit_crit_edge.i.1

.Vec_StrPush.exit_crit_edge.i.1:                  ; preds = %Vec_StrPush.exit.i
  %.pre.i.1 = load ptr, ptr %i.r, align 8, !tbaa !11
  br label %Vec_StrPush.exit.i.1

bb.f:                                             ; preds = %Vec_StrPush.exit.i
  %i.aj = icmp slt i32 %i.ag, 16
  br i1 %i.aj, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = icmp samesign ult i32 %i.ag, 1073741823
  %i.al = shl nuw nsw i32 %i.ag, 1
  %spec.select.i.i.1 = select i1 %i.ak, i32 %i.al, i32 2147483647 ; 4 uses
  %.not.i9.i.i.1 = icmp samesign ult i32 %i.ag, %spec.select.i.i.1
  %.pre8.i.1 = load ptr, ptr %i.r, align 8, !tbaa !11 ; 3 uses
  br i1 %.not.i9.i.i.1, label %bb.h, label %Vec_StrPush.exit.i.1

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i.i.1 = icmp eq ptr %.pre8.i.1, null
  %i.am = zext nneg i32 %spec.select.i.i.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = call ptr @realloc(ptr noundef nonnull %.pre8.i.1, i64 noundef %i.am) #10
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.j:                                             ; preds = %bb.h
  %i.ao = call noalias ptr @malloc(i64 noundef %i.am) #9
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.k:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr %i.r, align 8, !tbaa !11  ; 2 uses
  %.not9.i.i.i.1 = icmp eq ptr %i.ap, null
  br i1 %.not9.i.i.i.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ap, i64 noundef 16) #10
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.m:                                             ; preds = %bb.k
  %i.ar = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #9
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

Vec_StrGrow.exit11.sink.split.i.i.1:              ; preds = %bb.m, %bb.l, %bb.j, %bb.i
  %i.as = phi ptr [ %i.ar, %bb.m ], [ %i.aq, %bb.l ], [ %i.an, %bb.i ], [ %i.ao, %bb.j ] ; 2 uses
  %spec.select.sink.i.i.1 = phi i32 [ 16, %bb.m ], [ 16, %bb.l ], [ %spec.select.i.i.1, %bb.i ], [ %spec.select.i.i.1, %bb.j ]
  store ptr %i.as, ptr %i.r, align 8, !tbaa !11
  store i32 %spec.select.sink.i.i.1, ptr %0, align 8, !tbaa !21
  %.pre9.i.1 = load i32, ptr %i.q, align 4, !tbaa !20
  br label %Vec_StrPush.exit.i.1

Vec_StrPush.exit.i.1:                             ; preds = %Vec_StrGrow.exit11.sink.split.i.i.1, %bb.g, %.Vec_StrPush.exit_crit_edge.i.1
  %i.at = phi i32 [ %i.ag, %.Vec_StrPush.exit_crit_edge.i.1 ], [ %i.ag, %bb.g ], [ %.pre9.i.1, %Vec_StrGrow.exit11.sink.split.i.i.1 ] ; 2 uses
  %i.au = phi ptr [ %.pre.i.1, %.Vec_StrPush.exit_crit_edge.i.1 ], [ %.pre8.i.1, %bb.g ], [ %i.as, %Vec_StrGrow.exit11.sink.split.i.i.1 ]
  %i.av = add nsw i32 %i.at, 1
  store i32 %i.av, ptr %i.q, align 4, !tbaa !20
  %i.aw = sext i32 %i.at to i64
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 %i.aw
  store i8 %i.af, ptr %i.ax, align 1, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !17
  %i.ba = load i32, ptr %i.q, align 4, !tbaa !20  ; 7 uses
  %i.bb = load i32, ptr %0, align 8, !tbaa !21
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.n, label %.Vec_StrPush.exit_crit_edge.i.2

.Vec_StrPush.exit_crit_edge.i.2:                  ; preds = %Vec_StrPush.exit.i.1
  %.pre.i.2 = load ptr, ptr %i.r, align 8, !tbaa !11
  br label %Vec_StrPush.exit.i.2

bb.n:                                             ; preds = %Vec_StrPush.exit.i.1
  %i.bd = icmp slt i32 %i.ba, 16
  br i1 %i.bd, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = icmp samesign ult i32 %i.ba, 1073741823
  %i.bf = shl nuw nsw i32 %i.ba, 1
  %spec.select.i.i.2 = select i1 %i.be, i32 %i.bf, i32 2147483647 ; 4 uses
end_hunk_0
