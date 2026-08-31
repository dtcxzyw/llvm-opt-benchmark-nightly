Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/cylinder?download=true
inline.NumInlined: 71
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3igl8cylinderIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEviiRNS1_15PlainObjectBaseIT_EERNS5_IT0_EE = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8cylinderIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEviiRNS1_15PlainObjectBaseIT_EERNS5_IT0_EE(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit:
  %i.a = mul nsw i32 %1, %0
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = mul nsw i64 %i.b, 3
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.c, i64 noundef %i.b, i64 noundef 3)
  %i.d = add nsw i32 %1, -1                       ; 2 uses
  %i.e = shl i32 %0, 1
  %i.f = mul i32 %i.e, %i.d
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = mul nsw i64 %i.g, 3
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.h, i64 noundef %i.g, i64 noundef 3)
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %.lr.ph78, label %._crit_edge79

.lr.ph78:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.j = uitofp nneg i32 %0 to double             ; 6 uses
  %i.k = icmp sgt i32 %1, 0
  %i.l = sitofp i32 %i.d to double                ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  br i1 %i.k, label %.lr.ph78.split.us, label %.lr.ph78.split.preheader

.lr.ph78.split.preheader:                         ; preds = %.lr.ph78
  %xtraiter = and i32 %0, 3                       ; 3 uses
  %i.n = icmp ult i32 %0, 4
  br i1 %i.n, label %.lr.ph78.split.epil.preheader, label %.lr.ph78.split.preheader.new

.lr.ph78.split.preheader.new:                     ; preds = %.lr.ph78.split.preheader
  %unroll_iter = and i32 %0, 2147483644
  br label %.lr.ph78.split

.lr.ph78.split.us:                                ; preds = %.lr.ph78
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %2, align 8, !tbaa !9      ; 9 uses
  %i.q = load i64, ptr %i.o, align 8, !tbaa !14   ; 5 uses
  %.idx.us = shl i64 %i.q, 4                      ; 5 uses
  %i.r = zext nneg i32 %0 to i64                  ; 4 uses
  %i.s = zext nneg i32 %0 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %i.t = fdiv double 0.000000e+00, %i.l
  %exitcond82.peel.not = icmp eq i32 %1, 1
  %scevgep101.a = getelementptr i8, ptr %i.p, i64 8 ; 2 uses
  %i.u = shl nuw nsw i64 %i.r, 3                  ; 3 uses
  %i.v = shl nuw nsw i64 %wide.trip.count, 3      ; 5 uses
  %i.w = getelementptr i8, ptr %i.p, i64 %i.u
  %i.x = getelementptr i8, ptr %i.w, i64 %i.v
  %scevgep102.a = getelementptr i8, ptr %i.x, i64 -8 ; 2 uses
  %i.y = shl i64 %i.q, 3                          ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y
  %scevgep103.a = getelementptr i8, ptr %i.z, i64 8 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.p, i64 %i.y
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.u
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.v
  %scevgep104.a = getelementptr i8, ptr %i.ac, i64 -8 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.p, i64 %.idx.us
  %scevgep105.a = getelementptr i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.p, i64 %.idx.us
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.u
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.v
  %scevgep106.a = getelementptr i8, ptr %i.ag, i64 -8 ; 2 uses
  %i.ah = add nsw i64 %i.v, -12                   ; 2 uses
  %i.ai = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ugt i32 %1, 8
  %ident.check.not = icmp eq i32 %0, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  %bound0 = icmp ult ptr %scevgep101.a, %scevgep104.a
  %bound1 = icmp ult ptr %scevgep103.a, %scevgep102.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0123 = icmp ult ptr %scevgep101.a, %scevgep106.a
  %bound1124 = icmp ult ptr %scevgep105.a, %scevgep102.a
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx = or i1 %found.conflict, %found.conflict125
  %bound0126.a = icmp ult ptr %scevgep103.a, %scevgep106.a
  %bound1127.a = icmp ult ptr %scevgep105.a, %scevgep104.a
  %found.conflict128.a = and i1 %bound0126.a, %bound1127.a
  %conflict.rdx129.a = or i1 %conflict.rdx, %found.conflict128.a
  %n.vec = and i64 %i.ai, -2                      ; 3 uses
  %i.aj = or i64 %i.ai, 1
  %i.ak = trunc nsw i64 %n.vec to i32
  %i.al = shl i32 %i.ak, 1
  %broadcast.splatinsert190 = insertelement <2 x double> poison, double %i.l, i64 0
  %broadcast.splat191 = shufflevector <2 x double> %broadcast.splatinsert190, <2 x double> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph78.split.us, %._crit_edge.us
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %._crit_edge.us ], [ 0, %.lr.ph78.split.us ] ; 8 uses
  %.07276.us = phi i32 [ %.2.us.lcssa, %._crit_edge.us ], [ 0, %.lr.ph78.split.us ] ; 6 uses
  %i.am = trunc nuw i64 %indvars.iv85 to i32
  %i.an = uitofp nneg i32 %i.am to double
  %i.ao = fmul nnan double %i.an, f0x401921FB54442D18
  %i.ap = fdiv double %i.ao, %i.j                 ; 2 uses
  %i.aq = tail call double @cos(double noundef %i.ap) #7 ; 3 uses
  %i.ar = tail call double @sin(double noundef %i.ap) #7 ; 3 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv85 ; 3 uses
  store double %i.aq, ptr %i.as, align 8, !tbaa !15
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %i.q
  store double %i.ar, ptr %i.at, align 8, !tbaa !15
  %i.au = getelementptr i8, ptr %i.as, i64 %.idx.us
  store double %i.t, ptr %i.au, align 8, !tbaa !15
  br i1 %exitcond82.peel.not, label %._crit_edge.us, label %.peel.next

.peel.next:                                       ; preds = %bb.a
  %i.av = load ptr, ptr %3, align 8, !tbaa !17    ; 9 uses
  %i.aw = icmp eq i64 %indvars.iv.next86, %i.r
  %i.ax = trunc nuw nsw i64 %indvars.iv.next86 to i32
  %iv.rem = select i1 %i.aw, i32 0, i32 %i.ax     ; 3 uses
  %i.ay = load i64, ptr %i.m, align 8, !tbaa !20  ; 6 uses
  %i.az = shl nsw i64 %i.ay, 1                    ; 3 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.peel.next
  %i.ba = sext i32 %.07276.us to i64              ; 2 uses
  %i.bb = shl nsw i64 %i.ba, 2                    ; 5 uses
  %scevgep107.a = getelementptr i8, ptr %i.av, i64 %i.bb ; 5 uses
  %scevgep108.a = getelementptr i8, ptr %i.av, i64 %i.ah ; 2 uses
  %scevgep109.a = getelementptr i8, ptr %scevgep108.a, i64 %i.bb ; 5 uses
  %i.bc = add i64 %i.ay, %i.ba
  %i.bd = shl i64 %i.bc, 2                        ; 4 uses
  %scevgep110.a = getelementptr i8, ptr %i.av, i64 %i.bd ; 5 uses
  %scevgep111.a = getelementptr i8, ptr %scevgep108.a, i64 %i.bd ; 5 uses
  %i.be = shl i64 %i.ay, 3
  %i.bf = add i64 %i.be, %i.bb                    ; 4 uses
  %scevgep112.a = getelementptr i8, ptr %i.av, i64 %i.bf ; 5 uses
  %scevgep113.a = getelementptr i8, ptr %i.av, i64 %i.ah
  %scevgep114.a = getelementptr i8, ptr %scevgep113.a, i64 %i.bf ; 5 uses
  %scevgep115 = getelementptr i8, ptr %i.av, i64 4 ; 3 uses
  %scevgep116 = getelementptr i8, ptr %scevgep115, i64 %i.bb ; 5 uses
  %i.bg = getelementptr i8, ptr %i.av, i64 %i.v
  %scevgep117 = getelementptr i8, ptr %i.bg, i64 -8 ; 3 uses
  %scevgep118 = getelementptr i8, ptr %scevgep117, i64 %i.bb ; 5 uses
  %scevgep119 = getelementptr i8, ptr %scevgep115, i64 %i.bd ; 5 uses
  %scevgep120 = getelementptr i8, ptr %scevgep117, i64 %i.bd ; 5 uses
  %scevgep121 = getelementptr i8, ptr %scevgep115, i64 %i.bf ; 5 uses
  %scevgep122 = getelementptr i8, ptr %scevgep117, i64 %i.bf ; 5 uses
  %bound0130.a = icmp ult ptr %scevgep107.a, %scevgep111.a
  %bound1131.a = icmp ult ptr %scevgep110.a, %scevgep109.a
  %found.conflict132.a = and i1 %bound0130.a, %bound1131.a
  %conflict.rdx133.a = or i1 %conflict.rdx129.a, %found.conflict132.a
  %bound0134.a = icmp ult ptr %scevgep107.a, %scevgep114.a
  %bound1135.a = icmp ult ptr %scevgep112.a, %scevgep109.a
  %found.conflict136.a = and i1 %bound0134.a, %bound1135.a
  %conflict.rdx137.a = or i1 %conflict.rdx133.a, %found.conflict136.a
  %bound0138.a = icmp ult ptr %scevgep107.a, %scevgep118
  %bound1139.a = icmp ult ptr %scevgep116, %scevgep109.a
  %found.conflict140.a = and i1 %bound0138.a, %bound1139.a
  %conflict.rdx141.a = or i1 %conflict.rdx137.a, %found.conflict140.a
  %bound0142.a = icmp ult ptr %scevgep107.a, %scevgep120
  %bound1143.a = icmp ult ptr %scevgep119, %scevgep109.a
  %found.conflict144.a = and i1 %bound0142.a, %bound1143.a
  %conflict.rdx145.a = or i1 %conflict.rdx141.a, %found.conflict144.a
  %bound0146.a = icmp ult ptr %scevgep107.a, %scevgep122
  %bound1147.a = icmp ult ptr %scevgep121, %scevgep109.a
  %found.conflict148.a = and i1 %bound0146.a, %bound1147.a
  %conflict.rdx149.a = or i1 %conflict.rdx145.a, %found.conflict148.a
  %bound0150.a = icmp ult ptr %scevgep110.a, %scevgep114.a
  %bound1151.a = icmp ult ptr %scevgep112.a, %scevgep111.a
  %found.conflict152.a = and i1 %bound0150.a, %bound1151.a
  %conflict.rdx153.a = or i1 %conflict.rdx149.a, %found.conflict152.a
  %bound0154.a = icmp ult ptr %scevgep110.a, %scevgep118
  %bound1155.a = icmp ult ptr %scevgep116, %scevgep111.a
  %found.conflict156.a = and i1 %bound0154.a, %bound1155.a
  %conflict.rdx157.a = or i1 %conflict.rdx153.a, %found.conflict156.a
  %bound0158.a = icmp ult ptr %scevgep110.a, %scevgep120
  %bound1159.a = icmp ult ptr %scevgep119, %scevgep111.a
  %found.conflict160.a = and i1 %bound0158.a, %bound1159.a
  %conflict.rdx161.a = or i1 %conflict.rdx157.a, %found.conflict160.a
  %bound0162.a = icmp ult ptr %scevgep110.a, %scevgep122
  %bound1163.a = icmp ult ptr %scevgep121, %scevgep111.a
  %found.conflict164.a = and i1 %bound0162.a, %bound1163.a
  %conflict.rdx165.a = or i1 %conflict.rdx161.a, %found.conflict164.a
  %bound0166.a = icmp ult ptr %scevgep112.a, %scevgep118
  %bound1167.a = icmp ult ptr %scevgep116, %scevgep114.a
  %found.conflict168.a = and i1 %bound0166.a, %bound1167.a
  %conflict.rdx169.a = or i1 %conflict.rdx165.a, %found.conflict168.a
  %bound0170.a = icmp ult ptr %scevgep112.a, %scevgep120
  %bound1171.a = icmp ult ptr %scevgep119, %scevgep114.a
  %found.conflict172.a = and i1 %bound0170.a, %bound1171.a
  %conflict.rdx173.a = or i1 %conflict.rdx169.a, %found.conflict172.a
  %bound0174.a = icmp ult ptr %scevgep112.a, %scevgep122
  %bound1175.a = icmp ult ptr %scevgep121, %scevgep114.a
  %found.conflict176.a = and i1 %bound0174.a, %bound1175.a
  %conflict.rdx177.a = or i1 %conflict.rdx173.a, %found.conflict176.a
  %bound0178.a = icmp ult ptr %scevgep116, %scevgep120
  %bound1179.a = icmp ult ptr %scevgep119, %scevgep118
  %found.conflict180.a = and i1 %bound0178.a, %bound1179.a
  %conflict.rdx181.a = or i1 %conflict.rdx177.a, %found.conflict180.a
  %bound0182 = icmp ult ptr %scevgep116, %scevgep122
  %bound1183 = icmp ult ptr %scevgep121, %scevgep118
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx181.a, %found.conflict184
  %bound0186 = icmp ult ptr %scevgep119, %scevgep122
  %bound1187 = icmp ult ptr %scevgep121, %scevgep120
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx185, %found.conflict188
  br i1 %conflict.rdx189, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bh = add i32 %.07276.us, %i.al               ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %iv.rem, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert192 = insertelement <2 x i64> poison, i64 %indvars.iv85, i64 0
  %broadcast.splat193 = shufflevector <2 x i64> %broadcast.splatinsert192, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert194 = insertelement <2 x double> poison, double %i.aq, i64 0
  %broadcast.splat195 = shufflevector <2 x double> %broadcast.splatinsert194, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert196 = insertelement <2 x double> poison, double %i.ar, i64 0
  %broadcast.splat197 = shufflevector <2 x double> %broadcast.splatinsert196, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.op = add i64 2, %indvars.iv85
  %invariant.op206 = add <2 x i64> splat (i64 -1), %broadcast.splat193
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %vec.ind198 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph ], [ %vec.ind.next201, %vector.body ] ; 2 uses
  %i.bi = or disjoint i64 %index, 1
  %i.bj = trunc i64 %index to i32
  %i.bk = shl i32 %i.bj, 1
  %i.bl = add i32 %.07276.us, %i.bk
  %i.bm = uitofp nneg <2 x i32> %vec.ind198 to <2 x double>
  %i.bn = fdiv <2 x double> %i.bm, %broadcast.splat191
  %i.bo = add nuw nsw i64 %i.bi, %indvars.iv85    ; 2 uses
  %.reass = add i64 %index, %invariant.op
  %i.bp = insertelement <2 x i64> poison, i64 %i.bo, i64 0
  %i.bq = insertelement <2 x i64> %i.bp, i64 %.reass, i64 1
  %i.br = getelementptr [8 x i8], ptr %i.p, i64 %i.bo ; 3 uses
  store <2 x double> %broadcast.splat195, ptr %i.br, align 8, !tbaa !15, !alias.scope !21, !noalias !24
  %i.bs = getelementptr [8 x i8], ptr %i.br, i64 %i.q
  store <2 x double> %broadcast.splat197, ptr %i.bs, align 8, !tbaa !15, !alias.scope !27, !noalias !28
  %i.bt = getelementptr i8, ptr %i.br, i64 %.idx.us
  store <2 x double> %i.bn, ptr %i.bt, align 8, !tbaa !15, !alias.scope !28
  %i.bu = add nsw <2 x i64> %vec.ind, splat (i64 -1)
  %.reass207 = add <2 x i64> %vec.ind, %invariant.op206
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr [4 x i8], ptr %i.av, i64 %i.bv ; 3 uses
  %i.bx = trunc nsw <2 x i64> %.reass207 to <2 x i32>
  %i.by = getelementptr [4 x i8], ptr %i.bw, i64 %i.ay
  %i.bz = trunc <2 x i64> %i.bu to <2 x i32>
  %i.ca = add <2 x i32> %broadcast.splat, %i.bz   ; 2 uses
  %i.cb = getelementptr [4 x i8], ptr %i.bw, i64 %i.az
  %interleaved.vec = shufflevector <2 x i32> %i.bx, <2 x i32> %i.ca, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bw, align 4, !tbaa !29
  %i.cc = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.cd = add <2 x i32> %broadcast.splat, %i.cc
  %interleaved.vec199 = shufflevector <2 x i32> %i.ca, <2 x i32> %i.cd, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec199, ptr %i.by, align 4, !tbaa !29
  %i.ce = shufflevector <2 x i64> %i.bq, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cf = trunc nuw <4 x i64> %i.ce to <4 x i32>
  %interleaved.vec200 = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec200, ptr %i.cb, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %vec.ind.next201 = add <2 x i32> %vec.ind198, splat (i32 2)
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.peel.next, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.peel.next ], [ %i.aj, %middle.block ]
  %.174.us.ph = phi i32 [ %.07276.us, %vector.memcheck ], [ %.07276.us, %.peel.next ], [ %i.bh, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %.174.us = phi i32 [ %i.df, %scalar.ph ], [ %.174.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv to i32
  %i.ci = uitofp nneg i32 %i.ch to double
  %i.cj = fdiv double %i.ci, %i.l
  %i.ck = mul nuw nsw i64 %indvars.iv, %i.r       ; 2 uses
  %i.cl = add nuw nsw i64 %i.ck, %indvars.iv85    ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr %i.p, i64 %i.cl ; 3 uses
  store double %i.aq, ptr %i.cm, align 8, !tbaa !15
  %i.cn = getelementptr [8 x i8], ptr %i.cm, i64 %i.q
  store double %i.ar, ptr %i.cn, align 8, !tbaa !15
  %i.co = getelementptr i8, ptr %i.cm, i64 %.idx.us
  store double %i.cj, ptr %i.co, align 8, !tbaa !15
  %i.cp = add nsw i64 %indvars.iv, -1
  %i.cq = mul nuw nsw i64 %i.cp, %i.s             ; 2 uses
  %i.cr = add nsw i64 %indvars.iv85, %i.cq
  %i.cs = sext i32 %.174.us to i64
  %i.ct = getelementptr [4 x i8], ptr %i.av, i64 %i.cs ; 4 uses
  %i.cu = trunc nsw i64 %i.cr to i32
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !29
  %i.cv = getelementptr [4 x i8], ptr %i.ct, i64 %i.ay
  %i.cw = trunc i64 %i.cq to i32
  %i.cx = add i32 %iv.rem, %i.cw                  ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !29
  %i.cy = getelementptr [4 x i8], ptr %i.ct, i64 %i.az
  %i.cz = trunc nuw i64 %i.cl to i32              ; 2 uses
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !29
  %i.da = getelementptr i8, ptr %i.ct, i64 4      ; 3 uses
  store i32 %i.cx, ptr %i.da, align 4, !tbaa !29
  %i.db = getelementptr [4 x i8], ptr %i.da, i64 %i.ay
  %i.dc = trunc i64 %i.ck to i32
  %i.dd = add i32 %iv.rem, %i.dc
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !29
  %i.de = getelementptr [4 x i8], ptr %i.da, i64 %i.az
  store i32 %i.cz, ptr %i.de, align 4, !tbaa !29
  %i.df = add nsw i32 %.174.us, 2                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond82.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !35

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block, %bb.a
  %.2.us.lcssa = phi i32 [ %.07276.us, %bb.a ], [ %i.bh, %middle.block ], [ %i.df, %scalar.ph ]
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %i.r
  br i1 %exitcond89.not, label %._crit_edge79, label %bb.a, !llvm.loop !36

._crit_edge79.loopexit203.unr-lcssa:              ; preds = %.lr.ph78.split
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge79, label %.lr.ph78.split.epil.preheader

.lr.ph78.split.epil.preheader:                    ; preds = %._crit_edge79.loopexit203.unr-lcssa, %.lr.ph78.split.preheader
  %.07177.epil.init = phi i32 [ 0, %.lr.ph78.split.preheader ], [ %i.ej, %._crit_edge79.loopexit203.unr-lcssa ]
  %lcmp.mod204 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod204)
  br label %.lr.ph78.split.epil

.lr.ph78.split.epil:                              ; preds = %.lr.ph78.split.epil, %.lr.ph78.split.epil.preheader
  %.07177.epil = phi i32 [ %i.dl, %.lr.ph78.split.epil ], [ %.07177.epil.init, %.lr.ph78.split.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph78.split.epil ], [ 0, %.lr.ph78.split.epil.preheader ]
  %i.dg = uitofp nneg i32 %.07177.epil to double
  %i.dh = fmul nnan double %i.dg, f0x401921FB54442D18
  %i.di = fdiv double %i.dh, %i.j                 ; 2 uses
  %i.dj = tail call double @cos(double noundef %i.di) #7 ; 0 uses
  %i.dk = tail call double @sin(double noundef %i.di) #7 ; 0 uses
  %i.dl = add nuw nsw i32 %.07177.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge79, label %.lr.ph78.split.epil, !llvm.loop !37

._crit_edge79:                                    ; preds = %._crit_edge79.loopexit203.unr-lcssa, %.lr.ph78.split.epil, %._crit_edge.us, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  ret void

.lr.ph78.split:                                   ; preds = %.lr.ph78.split, %.lr.ph78.split.preheader.new
  %.07177 = phi i32 [ 0, %.lr.ph78.split.preheader.new ], [ %i.ej, %.lr.ph78.split ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph78.split.preheader.new ], [ %niter.next.3, %.lr.ph78.split ]
  %i.dm = uitofp nneg i32 %.07177 to double
  %i.dn = fmul nnan double %i.dm, f0x401921FB54442D18
  %i.do = fdiv double %i.dn, %i.j                 ; 2 uses
  %i.dp = tail call double @cos(double noundef %i.do) #7 ; 0 uses
  %i.dq = tail call double @sin(double noundef %i.do) #7 ; 0 uses
  %i.dr = or disjoint i32 %.07177, 1
  %i.ds = uitofp nneg i32 %i.dr to double
  %i.dt = fmul nnan double %i.ds, f0x401921FB54442D18
  %i.du = fdiv double %i.dt, %i.j                 ; 2 uses
  %i.dv = tail call double @cos(double noundef %i.du) #7 ; 0 uses
  %i.dw = tail call double @sin(double noundef %i.du) #7 ; 0 uses
  %i.dx = or disjoint i32 %.07177, 2
  %i.dy = uitofp nneg i32 %i.dx to double
  %i.dz = fmul nnan double %i.dy, f0x401921FB54442D18
  %i.ea = fdiv double %i.dz, %i.j                 ; 2 uses
  %i.eb = tail call double @cos(double noundef %i.ea) #7 ; 0 uses
  %i.ec = tail call double @sin(double noundef %i.ea) #7 ; 0 uses
  %i.ed = or disjoint i32 %.07177, 3
  %i.ee = uitofp nneg i32 %i.ed to double
  %i.ef = fmul nnan double %i.ee, f0x401921FB54442D18
  %i.eg = fdiv double %i.ef, %i.j                 ; 2 uses
  %i.eh = tail call double @cos(double noundef %i.eg) #7 ; 0 uses
  %i.ei = tail call double @sin(double noundef %i.eg) #7 ; 0 uses
  %i.ej = add nuw nsw i32 %.07177, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge79.loopexit203.unr-lcssa, label %.lr.ph78.split, !llvm.loop !36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !9
  tail call void @free(ptr noundef %i.f) #7
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !40
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #9 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !40
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #8
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !14
  store i64 %3, ptr %i.c, align 8, !tbaa !39
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !42
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.f) #7
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #7 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !40
end_hunk_0
