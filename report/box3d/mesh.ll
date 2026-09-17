Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/mesh?download=true
inline.NumInlined: 455
inline.NumDeleted: 107
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
begin_hunk_0_@b3GetNodeHeight:bb.a
  %i.a = getelementptr i8, ptr %0, i64 12
  %.val = load i32, ptr %i.a, align 4             ; 2 uses
  %i.b = and i32 %.val, 3
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %common.ret7, label %bb.b

common.ret7:                                      ; preds = %bb.a, %bb.b
  %common.ret7.op = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ]
  ret i32 %common.ret7.op

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call fastcc i32 @b3GetNodeHeight(ptr noundef nonnull %i.d)
  %i.f = lshr i32 %.val, 2
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.g
  %i.i = tail call fastcc i32 @b3GetNodeHeight(ptr noundef %i.h)
  %i.j = tail call noundef i32 @llvm.smax.i32(i32 %i.e, i32 %i.i)
  %i.k = add nsw i32 %i.j, 1
  br label %common.ret7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @b3IsValidMesh(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !14
  %.not = icmp eq i64 %i.b, -6148651537399239945
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15
  %i.e = icmp sgt i32 %i.d, 95
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.e, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @b3CreateGridMesh(i32 noundef %0, i32 noundef %1, float noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.b3MeshDef, align 8          ; 11 uses
  %i.a = add nsw i32 %0, 1
  %i.b = add i32 %1, 1                            ; 9 uses
  %i.c = mul nsw i32 %i.b, %i.a                   ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = mul i32 %i.c, 12
  %i.f = tail call ptr @b3GrowAlloc(ptr noundef null, i32 noundef 0, i32 noundef %i.e) #17
  %i.g = zext nneg i32 %i.c to i64
  %i.h = mul nuw nsw i64 %i.g, 12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.1275.0 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %.sroa.071.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 5 uses
  %.not127 = icmp slt i32 %0, 0
  br i1 %.not127, label %._crit_edge133.split, label %.lr.ph132

.lr.ph132:                                        ; preds = %bb.c
  %i.i = sitofp i32 %1 to float
  %i.j = fmul float %2, %i.i
  %i.k = fmul float %i.j, -5.000000e-01           ; 3 uses
  %.not116123 = icmp slt i32 %1, 0
  br i1 %.not116123, label %._crit_edge133.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph132
  %i.l = uitofp nneg i32 %0 to float
  %i.m = fmul float %2, %i.l
  %i.n = fmul float %i.m, -5.000000e-01
  %i.o = and i32 %1, 1
  %lcmp.mod.not.not = icmp eq i32 %i.o, 0
  %i.p = fadd float %2, %i.k
  %i.q = icmp eq i32 %1, 0
  br label %.lr.ph

._crit_edge133.split:                             ; preds = %._crit_edge, %.lr.ph132, %bb.c
  %i.r = shl nsw i32 %0, 1
  %i.s = mul nsw i32 %i.r, %1                     ; 6 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.0105130 = phi i32 [ %i.v, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0107129 = phi float [ %i.x, %._crit_edge ], [ %i.n, %.lr.ph.preheader ] ; 4 uses
  %.0110128 = phi i32 [ %i.y, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.u = sext i32 %.0105130 to i64                ; 3 uses
  %i.v = add i32 %i.b, %.0105130                  ; 2 uses
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.w = getelementptr inbounds [12 x i8], ptr %.sroa.071.0, i64 %i.u ; 3 uses
  store float %.0107129, ptr %i.w, align 4, !tbaa !16
  %.sroa.2.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store float 0.000000e+00, ptr %.sroa.2.0..sroa_idx.prol, align 4, !tbaa !16
  %.sroa.3.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store float %i.k, ptr %.sroa.3.0..sroa_idx.prol, align 4, !tbaa !16
  %indvars.iv.next.prol = add nsw i64 %i.u, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.0109124.unr = phi float [ %i.k, %.lr.ph ], [ %i.p, %.prol.loopexit.unr-lcssa ]
  br i1 %i.q, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %i.x = fadd float %2, %.0107129
  %i.y = add nuw i32 %.0110128, 1
  %exitcond154.not = icmp eq i32 %.0110128, %0
  br i1 %exitcond154.not, label %._crit_edge133.split, label %.lr.ph, !llvm.loop !104

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %.0109124 = phi float [ %i.ad, %.lr.ph.new ], [ %.0109124.unr, %.prol.loopexit ] ; 2 uses
  %i.z = getelementptr inbounds [12 x i8], ptr %.sroa.071.0, i64 %indvars.iv ; 3 uses
  store float %.0107129, ptr %i.z, align 4, !tbaa !16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store float 0.000000e+00, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store float %.0109124, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !16
  %i.aa = fadd float %2, %.0109124                ; 2 uses
  %i.ab = getelementptr [12 x i8], ptr %.sroa.071.0, i64 %indvars.iv ; 3 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 12
  store float %.0107129, ptr %i.ac, align 4, !tbaa !16
  %.sroa.2.0..sroa_idx.1 = getelementptr i8, ptr %i.ab, i64 16
  store float 0.000000e+00, ptr %.sroa.2.0..sroa_idx.1, align 4, !tbaa !16
  %.sroa.3.0..sroa_idx.1 = getelementptr i8, ptr %i.ab, i64 20
  store float %i.aa, ptr %.sroa.3.0..sroa_idx.1, align 4, !tbaa !16
  %i.ad = fadd float %2, %i.aa
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.v, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !105

bb.d:                                             ; preds = %._crit_edge133.split
  %i.ae = mul nuw nsw i32 %i.s, 3
  %i.af = mul i32 %i.s, 12
  %i.ag = tail call ptr @b3GrowAlloc(ptr noundef null, i32 noundef 0, i32 noundef %i.af) #17
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = tail call ptr @b3GrowAlloc(ptr noundef null, i32 noundef 0, i32 noundef %i.s) #17
  %i.ak = zext nneg i32 %i.s to i64
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge133.split, %bb.d
  %.sroa.17.0121 = phi i64 [ %i.ai, %bb.d ], [ 0, %._crit_edge133.split ]
  %.sroa.030.0119 = phi ptr [ %i.ag, %bb.d ], [ null, %._crit_edge133.split ] ; 14 uses
  %.sroa.0.0 = phi ptr [ %i.aj, %bb.d ], [ null, %._crit_edge133.split ] ; 7 uses
  %.sroa.12.0 = phi i64 [ %i.ak, %bb.d ], [ 0, %._crit_edge133.split ]
  %i.al = icmp sgt i32 %0, 0
  %i.am = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.al, %i.am
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge145.split

.preheader.lr.ph.split:                           ; preds = %bb.e
  %i.an = icmp sgt i32 %3, 0
  br i1 %i.an, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %xtraiter215 = and i32 %1, 1
  %i.ao = icmp eq i32 %1, 1
  %unroll_iter = and i32 %1, 2147483646
  %lcmp.mod216.not = icmp eq i32 %xtraiter215, 0
  %lcmp.mod218 = trunc i32 %1 to i1
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %i.ap = add nsw i32 %1, -1                      ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.030.0119, i64 4
  %scevgep180 = getelementptr i8, ptr %.sroa.030.0119, i64 8
  %scevgep182 = getelementptr i8, ptr %.sroa.030.0119, i64 12
  %scevgep184 = getelementptr i8, ptr %.sroa.030.0119, i64 16
  %scevgep186 = getelementptr i8, ptr %.sroa.030.0119, i64 20
  %scevgep188 = getelementptr i8, ptr %.sroa.0.0, i64 1
  %i.aq = add nsw i32 %1, -1
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = mul nuw nsw i64 %i.ar, 24
  %i.at = getelementptr i8, ptr %.sroa.030.0119, i64 %i.as
  %scevgep194 = getelementptr i8, ptr %i.at, i64 24
  %i.au = shl nuw nsw i64 %i.ar, 1
  %i.av = getelementptr i8, ptr %.sroa.0.0, i64 %i.au
  %scevgep197 = getelementptr i8, ptr %i.av, i64 2
  %i.aw = zext nneg i32 %1 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %1, 16
  %i.ax = zext i32 %i.ap to i64
  %mul = mul nuw nsw i64 %i.ax, 24                ; 5 uses
  %i.ay = zext i32 %i.ap to i64
  %mul190 = shl nuw nsw i64 %i.ay, 1
  %n.vec = and i64 %i.aw, 2147483644              ; 5 uses
  %broadcast.splatinsert199 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splatinsert201 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat202 = shufflevector <4 x i32> %broadcast.splatinsert201, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert203 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat204 = shufflevector <4 x i32> %broadcast.splatinsert203, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.az = shufflevector <4 x i32> %broadcast.splatinsert199, <4 x i32> poison, <8 x i32> zeroinitializer
  %6 = mul nuw nsw i64 %n.vec, 6
  %7 = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.aw
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge138.split.us.us
  %.0103144.us = phi i32 [ %i.de, %._crit_edge138.split.us.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.0104143.us = phi i64 [ %indvars.iv.next161.lcssa, %._crit_edge138.split.us.us ], [ 0, %.preheader.us.preheader ] ; 8 uses
  %.2142.us = phi i64 [ %indvars.iv.next163.lcssa, %._crit_edge138.split.us.us ], [ 0, %.preheader.us.preheader ] ; 7 uses
  %i.ba = mul nuw nsw i32 %.0103144.us, %i.b      ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us
  %i.bb = shl i64 %.2142.us, 2                    ; 5 uses
  %scevgep179 = getelementptr i8, ptr %scevgep, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %scevgep179, i64 %mul
  %i.bd = icmp ult ptr %i.bc, %scevgep179
  %scevgep181 = getelementptr i8, ptr %scevgep180, i64 %i.bb ; 2 uses
  %i.be = getelementptr i8, ptr %scevgep181, i64 %mul
  %i.bf = icmp ult ptr %i.be, %scevgep181
  %scevgep183 = getelementptr i8, ptr %scevgep182, i64 %i.bb ; 2 uses
  %i.bg = getelementptr i8, ptr %scevgep183, i64 %mul
  %i.bh = icmp ult ptr %i.bg, %scevgep183
  %scevgep185 = getelementptr i8, ptr %scevgep184, i64 %i.bb ; 2 uses
  %i.bi = getelementptr i8, ptr %scevgep185, i64 %mul
  %i.bj = icmp ult ptr %i.bi, %scevgep185
  %scevgep187 = getelementptr i8, ptr %scevgep186, i64 %i.bb ; 2 uses
  %i.bk = getelementptr i8, ptr %scevgep187, i64 %mul
  %i.bl = icmp ult ptr %i.bk, %scevgep187
  %i.bm = shl i64 %.0104143.us, 1
  %scevgep189 = getelementptr i8, ptr %scevgep188, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %scevgep189, i64 %mul190
  %i.bo = icmp ult ptr %i.bn, %scevgep189
  %i.bp = or i1 %i.bd, %i.bf
  %i.bq = or i1 %i.bp, %i.bh
  %i.br = or i1 %i.bq, %i.bj
  %i.bs = or i1 %i.br, %i.bl
  %i.bt = or i1 %i.bs, %i.bo
  br i1 %i.bt, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bu = shl i64 %.2142.us, 2                    ; 2 uses
  %scevgep193 = getelementptr i8, ptr %.sroa.030.0119, i64 %i.bu
  %scevgep195 = getelementptr i8, ptr %scevgep194, i64 %i.bu
  %i.bv = shl i64 %.0104143.us, 1                 ; 2 uses
  %scevgep196 = getelementptr i8, ptr %.sroa.0.0, i64 %i.bv
  %scevgep198 = getelementptr i8, ptr %scevgep197, i64 %i.bv
  %bound0 = icmp ult ptr %scevgep193, %scevgep198
  %bound1 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bw = trunc i64 %.0104143.us to i32
  %broadcast.splatinsert205 = insertelement <4 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat206 = shufflevector <4 x i32> %broadcast.splatinsert205, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat206, <i32 0, i32 1, i32 2, i32 3>
  %i.bx = getelementptr [4 x i8], ptr %.sroa.030.0119, i64 %.2142.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind207 = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next209, %vector.body ] ; 2 uses
  %i.by = add i64 %.0104143.us, %index
  %i.bz = add nuw nsw <4 x i32> %vec.ind, %broadcast.splat ; 3 uses
  %i.ca = add nuw nsw <4 x i32> %i.bz, splat (i32 1) ; 3 uses
  %i.cb = add nuw <4 x i32> %i.ca, %broadcast.splat202
  %.idx = mul i64 %index, 24
  %i.cc = getelementptr i8, ptr %i.bx, i64 %.idx
  %i.cd = shufflevector <4 x i32> %i.bz, <4 x i32> %i.ca, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ce = shufflevector <4 x i32> %i.ca, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cf = add nuw nsw <8 x i32> %i.ce, %i.az
  %i.cg = shufflevector <8 x i32> %i.cd, <8 x i32> %i.cf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ch = shufflevector <4 x i32> %i.cb, <4 x i32> %i.bz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i32> %i.cg, <16 x i32> %i.ch, <24 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23>
  store <24 x i32> %interleaved.vec, ptr %i.cc, align 4, !tbaa !18, !alias.scope !113, !noalias !114
  %i.ci = srem <4 x i32> %vec.ind207, %broadcast.splat204
  %i.cj = trunc <4 x i32> %i.ci to <4 x i8>
  %i.ck = shl nsw i64 %i.by, 1
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.0, i64 %i.ck
  %interleaved.vec208 = shufflevector <4 x i8> %i.cj, <4 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i8> %interleaved.vec208, ptr %i.cl, align 1, !tbaa !19, !alias.scope !114
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %vec.ind.next209 = add <4 x i32> %vec.ind207, splat (i32 4)
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %8 = add i64 %.2142.us, %6                      ; 2 uses
  %9 = add i64 %.0104143.us, %n.vec               ; 2 uses
  br i1 %cmp.n, label %._crit_edge138.split.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.us, %middle.block
  %indvars.iv162.ph = phi i64 [ %.2142.us, %vector.memcheck ], [ %.2142.us, %vector.scevcheck ], [ %.2142.us, %.preheader.us ], [ %8, %middle.block ]
  %indvars.iv160.ph = phi i64 [ %.0104143.us, %vector.memcheck ], [ %.0104143.us, %vector.scevcheck ], [ %.0104143.us, %.preheader.us ], [ %9, %middle.block ]
  %.0136.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.us ], [ %7, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %scalar.ph ], [ %indvars.iv162.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %scalar.ph ], [ %indvars.iv160.ph, %scalar.ph.preheader ] ; 3 uses
  %.0136.us.us = phi i32 [ %i.dd, %scalar.ph ], [ %.0136.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cn = add nuw nsw i32 %.0136.us.us, %i.ba     ; 3 uses
  %i.co = add nuw nsw i32 %i.cn, 1                ; 3 uses
  %i.cp = add nuw nsw i32 %i.co, %i.b             ; 2 uses
  %i.cq = add nuw i32 %i.co, %1
  %i.cr = getelementptr inbounds [4 x i8], ptr %.sroa.030.0119, i64 %indvars.iv162 ; 6 uses
  store i32 %i.cn, ptr %i.cr, align 4, !tbaa !18
  %i.cs = getelementptr i8, ptr %i.cr, i64 4
  store i32 %i.co, ptr %i.cs, align 4, !tbaa !18
  %i.ct = getelementptr i8, ptr %i.cr, i64 8
  store i32 %i.cp, ptr %i.ct, align 4, !tbaa !18
  %i.cu = getelementptr i8, ptr %i.cr, i64 12
  store i32 %i.cp, ptr %i.cu, align 4, !tbaa !18
  %i.cv = getelementptr i8, ptr %i.cr, i64 16
  store i32 %i.cq, ptr %i.cv, align 4, !tbaa !18
  %i.cw = getelementptr i8, ptr %i.cr, i64 20
  store i32 %i.cn, ptr %i.cw, align 4, !tbaa !18
  %i.cx = trunc nsw i64 %indvars.iv160 to i32
  %i.cy = srem i32 %i.cx, %3
  %i.cz = trunc i32 %i.cy to i8                   ; 2 uses
  %i.da = shl nsw i64 %indvars.iv160, 1
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.0, i64 %i.da ; 2 uses
  store i8 %i.cz, ptr %i.db, align 1, !tbaa !19
  %i.dc = getelementptr i8, ptr %i.db, i64 1
  store i8 %i.cz, ptr %i.dc, align 1, !tbaa !19
  %indvars.iv.next161 = add nsw i64 %indvars.iv160, 1 ; 2 uses
  %indvars.iv.next163 = add nsw i64 %indvars.iv162, 6 ; 2 uses
  %i.dd = add nuw nsw i32 %.0136.us.us, 1         ; 2 uses
  %exitcond167.not = icmp eq i32 %i.dd, %1
  br i1 %exitcond167.not, label %._crit_edge138.split.us.us, label %scalar.ph, !llvm.loop !110

._crit_edge138.split.us.us:                       ; preds = %scalar.ph, %middle.block
  %indvars.iv.next161.lcssa = phi i64 [ %9, %middle.block ], [ %indvars.iv.next161, %scalar.ph ]
  %indvars.iv.next163.lcssa = phi i64 [ %8, %middle.block ], [ %indvars.iv.next163, %scalar.ph ]
  %i.de = add nuw nsw i32 %.0103144.us, 1         ; 2 uses
  %exitcond168.not = icmp eq i32 %i.de, %0
  br i1 %exitcond168.not, label %._crit_edge145.split, label %.preheader.us, !llvm.loop !111

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge138.split
  %.0103144 = phi i32 [ %i.eb, %._crit_edge138.split ], [ 0, %.preheader.preheader ] ; 2 uses
  %.2142 = phi i64 [ %indvars.iv.next156.lcssa, %._crit_edge138.split ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.df = mul nuw nsw i32 %.0103144, %i.b         ; 3 uses
  br i1 %i.ao, label %.epil.preheader, label %.preheader.new

._crit_edge145.split:                             ; preds = %._crit_edge138.split, %._crit_edge138.split.us.us, %bb.e
  %i.dg = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dh, i8 0, i64 40, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 %i.c, ptr %i.di, align 4, !tbaa !26
  store ptr %.sroa.071.0, ptr %5, align 8, !tbaa !27
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %i.s, ptr %i.dj, align 8, !tbaa !28
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.030.0119, ptr %i.dk, align 8, !tbaa !29
  %i.dl = icmp sgt i32 %3, 0
  %i.dm = select i1 %i.dl, ptr %.sroa.0.0, ptr null
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !30
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 45
  store i8 1, ptr %i.do, align 1, !tbaa !31
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 46
  store i8 %i.dg, ptr %i.dp, align 2, !tbaa !32
  %i.dq = call ptr @b3CreateMesh(ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  tail call void @b3Free(ptr noundef %.sroa.030.0119, i64 noundef %.sroa.17.0121) #17
  tail call void @b3Free(ptr noundef %.sroa.071.0, i64 noundef %.sroa.1275.0) #17
  tail call void @b3Free(ptr noundef %.sroa.0.0, i64 noundef %.sroa.12.0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret ptr %i.dq

._crit_edge138.split.unr-lcssa:                   ; preds = %.preheader.new
  br i1 %lcmp.mod216.not, label %._crit_edge138.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge138.split.unr-lcssa, %.preheader
  %indvars.iv155.epil.init = phi i64 [ %.2142, %.preheader ], [ %indvars.iv.next156.1, %._crit_edge138.split.unr-lcssa ] ; 2 uses
  %.0136.epil.init = phi i32 [ 0, %.preheader ], [ %i.ey, %._crit_edge138.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod218)
  %i.dr = add nuw nsw i32 %.0136.epil.init, %i.df ; 3 uses
  %i.ds = add nuw nsw i32 %i.dr, 1                ; 3 uses
  %i.dt = add nuw nsw i32 %i.ds, %i.b             ; 2 uses
  %i.du = add nuw i32 %i.ds, %1
  %i.dv = getelementptr inbounds [4 x i8], ptr %.sroa.030.0119, i64 %indvars.iv155.epil.init ; 6 uses
  store i32 %i.dr, ptr %i.dv, align 4, !tbaa !18
  %i.dw = getelementptr i8, ptr %i.dv, i64 4
  store i32 %i.ds, ptr %i.dw, align 4, !tbaa !18
  %i.dx = getelementptr i8, ptr %i.dv, i64 8
  store i32 %i.dt, ptr %i.dx, align 4, !tbaa !18
  %i.dy = getelementptr i8, ptr %i.dv, i64 12
  store i32 %i.dt, ptr %i.dy, align 4, !tbaa !18
  %i.dz = getelementptr i8, ptr %i.dv, i64 16
  store i32 %i.du, ptr %i.dz, align 4, !tbaa !18
  %i.ea = getelementptr i8, ptr %i.dv, i64 20
  store i32 %i.dr, ptr %i.ea, align 4, !tbaa !18
  %indvars.iv.next156.epil = add nsw i64 %indvars.iv155.epil.init, 6
  br label %._crit_edge138.split

._crit_edge138.split:                             ; preds = %._crit_edge138.split.unr-lcssa, %.epil.preheader
  %indvars.iv.next156.lcssa = phi i64 [ %indvars.iv.next156.1, %._crit_edge138.split.unr-lcssa ], [ %indvars.iv.next156.epil, %.epil.preheader ]
  %i.eb = add nuw nsw i32 %.0103144, 1            ; 2 uses
  %exitcond159.not = icmp eq i32 %i.eb, %0
  br i1 %exitcond159.not, label %._crit_edge145.split, label %.preheader, !llvm.loop !111

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv155 = phi i64 [ %indvars.iv.next156.1, %.preheader.new ], [ %.2142, %.preheader ] ; 3 uses
  %.0136 = phi i32 [ %i.ey, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ec = add nuw nsw i32 %.0136, %i.df           ; 3 uses
  %i.ed = add nuw nsw i32 %i.ec, 1                ; 3 uses
  %i.ee = add nuw nsw i32 %i.ed, %i.b             ; 2 uses
  %i.ef = add nuw i32 %i.ed, %1
  %i.eg = getelementptr inbounds [4 x i8], ptr %.sroa.030.0119, i64 %indvars.iv155 ; 6 uses
  store i32 %i.ec, ptr %i.eg, align 4, !tbaa !18
  %i.eh = getelementptr i8, ptr %i.eg, i64 4
  store i32 %i.ed, ptr %i.eh, align 4, !tbaa !18
  %i.ei = getelementptr i8, ptr %i.eg, i64 8
  store i32 %i.ee, ptr %i.ei, align 4, !tbaa !18
  %i.ej = getelementptr i8, ptr %i.eg, i64 12
  store i32 %i.ee, ptr %i.ej, align 4, !tbaa !18
  %i.ek = getelementptr i8, ptr %i.eg, i64 16
  store i32 %i.ef, ptr %i.ek, align 4, !tbaa !18
  %i.el = getelementptr i8, ptr %i.eg, i64 20
  store i32 %i.ec, ptr %i.el, align 4, !tbaa !18
  %i.em = or disjoint i32 %.0136, 1
  %i.en = add nuw nsw i32 %i.em, %i.df            ; 3 uses
  %i.eo = add nuw nsw i32 %i.en, 1                ; 3 uses
  %i.ep = add nuw nsw i32 %i.eo, %i.b             ; 2 uses
  %i.eq = add nuw i32 %i.eo, %1
  %i.er = getelementptr [4 x i8], ptr %.sroa.030.0119, i64 %indvars.iv155 ; 6 uses
  %i.es = getelementptr i8, ptr %i.er, i64 24
  store i32 %i.en, ptr %i.es, align 4, !tbaa !18
  %i.et = getelementptr i8, ptr %i.er, i64 28
  store i32 %i.eo, ptr %i.et, align 4, !tbaa !18
  %i.eu = getelementptr i8, ptr %i.er, i64 32
  store i32 %i.ep, ptr %i.eu, align 4, !tbaa !18
  %i.ev = getelementptr i8, ptr %i.er, i64 36
  store i32 %i.ep, ptr %i.ev, align 4, !tbaa !18
  %i.ew = getelementptr i8, ptr %i.er, i64 40
  store i32 %i.eq, ptr %i.ew, align 4, !tbaa !18
  %i.ex = getelementptr i8, ptr %i.er, i64 44
  store i32 %i.en, ptr %i.ex, align 4, !tbaa !18
  %indvars.iv.next156.1 = add nsw i64 %indvars.iv155, 12 ; 3 uses
  %i.ey = add nuw nsw i32 %.0136, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge138.split.unr-lcssa, label %.preheader.new, !llvm.loop !112
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @b3GrowAlloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define noundef ptr @b3CreateMesh(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %struct.b3AABB, align 8             ; 10 uses
  %4 = alloca %struct.b3WeldData, align 8         ; 10 uses
  %5 = alloca %struct.b3DynamicArray_b3MeshNode, align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !120  ; 4 uses
  %.not = icmp eq i64 %i.c, 0                     ; 2 uses
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.c, -12
  %or.cond = icmp ult i64 %i.d, 4085
  %i.e = and i64 %i.c, 3
  %.not349 = icmp eq i64 %i.e, 0
  %or.cond432 = and i1 %or.cond, %.not349
  br i1 %or.cond432, label %.thread, label %bb.aj

.thread:                                          ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26   ; 9 uses
  %i.h = icmp slt i32 %i.g, 3
  br i1 %i.h, label %bb.aj, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.i = load ptr, ptr %0, align 8, !tbaa !27
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.aj, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !28   ; 6 uses
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.aj, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.aj, label %bb.f

bb.f:                                             ; preds = %bb.e
  %spec.select = select i1 %.not, i64 12, i64 %i.c ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(24) @B3_BOUNDS3_EMPTY, i64 24, i1 false)
  %i.q = mul nuw nsw i32 %i.l, 3                  ; 5 uses
  %i.r = mul i32 %i.l, 12
  %i.s = tail call ptr @b3GrowAlloc(ptr noundef null, i32 noundef 0, i32 noundef %i.r) #17 ; 8 uses
  %i.t = mul i32 %i.g, 12
  %i.u = tail call ptr @b3GrowAlloc(ptr noundef null, i32 noundef 0, i32 noundef %i.t) #17 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.w = load i8, ptr %i.v, align 4, !tbaa !121, !range !33, !noundef !34
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load float, ptr %i.y, align 8, !tbaa !122 ; 2 uses
  %i.aa = fcmp ogt float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ab = load ptr, ptr %0, align 8, !tbaa !27
  store ptr %i.ab, ptr %4, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !29
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.u, ptr %i.ae, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.s, ptr %i.af, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.g, ptr %i.ag, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %i.q, ptr %i.ah, align 4, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %spec.select, ptr %i.ai, align 8, !tbaa !42
  %i.aj = call fastcc i32 @b3WeldVertices(ptr noundef %4, float noundef %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.lr.ph

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ak = load ptr, ptr %0, align 8, !tbaa !27    ; 4 uses
  %i.al = icmp eq i64 %spec.select, 12
  %i.am = zext nneg i32 %i.g to i64               ; 3 uses
  br i1 %i.al, label %bb.j, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.i
  %xtraiter = and i64 %i.am, 1
  %unroll_iter = and i64 %i.am, 2147483646
  br label %.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.an = mul nuw nsw i64 %i.am, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.u, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.ak, i64 %i.an, i1 false)
  br label %b3CopyVerticesWithStride.exit

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader
  %indvars.iv.i = phi i64 [ 0, %.preheader.i.preheader ], [ %indvars.iv.next.i.1, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader ], [ %niter.next.1, %.preheader.i ]
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.ap = mul i64 %indvars.iv.i, %spec.select
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ao, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.aq, i64 12, i1 false), !tbaa.struct !43
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv.next.i
  %i.as = mul i64 %indvars.iv.next.i, %spec.select
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ar, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.at, i64 12, i1 false), !tbaa.struct !43
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %b3CopyVerticesWithStride.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !117

b3CopyVerticesWithStride.exit.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %b3CopyVerticesWithStride.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %b3CopyVerticesWithStride.exit.loopexit.unr-lcssa
  %lcmp.mod490 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod490)
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv.next.i.1
  %i.av = mul i64 %indvars.iv.next.i.1, %spec.select
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.au, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.aw, i64 12, i1 false), !tbaa.struct !43
  br label %b3CopyVerticesWithStride.exit

b3CopyVerticesWithStride.exit:                    ; preds = %.preheader.i.epil.preheader, %b3CopyVerticesWithStride.exit.loopexit.unr-lcssa, %bb.j
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.ay = zext nneg i32 %i.q to i64
  %i.az = shl nuw nsw i64 %i.ay, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.s, ptr align 4 %i.ax, i64 %i.az, i1 false)
  br label %.lr.ph

.lr.ph:                                           ; preds = %b3CopyVerticesWithStride.exit, %bb.h
  %.0326 = phi i32 [ %i.aj, %bb.h ], [ %i.g, %b3CopyVerticesWithStride.exit ] ; 2 uses
  %i.ba = mul i32 %i.l, 40
  %i.bb = tail call ptr @b3GrowAlloc(ptr noundef null, i32 noundef 0, i32 noundef %i.ba) #17
  %i.bc = tail call float @b3GetLengthUnitsPerMeter() #17
  %i.bd = fmul float %i.bc, 5.000000e-03
  %i.be = fmul float %i.bd, f0x3C23D70A
  %i.bf = tail call float @b3GetLengthUnitsPerMeter() #17
  %i.bg = fmul float %i.bf, 5.000000e-03
  %i.bh = fmul float %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !123, !range !33, !noundef !34
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.5425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %.sroa.6426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %.not356 = icmp ne ptr %1, null
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %bb.k

._crit_edge:                                      ; preds = %bb.u
  %6 = trunc nuw i8 %i.bj to i1
  %i.bl = tail call zeroext i1 @b3IsSaneAABB(ptr noundef nonnull byval(%struct.b3AABB) align 8 %3) #17
  br i1 %i.bl, label %bb.w, label %bb.v

bb.k:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 5 uses
  %.sroa.23.0443 = phi i32 [ %i.l, %.lr.ph ], [ %.sroa.23.2, %bb.u ] ; 7 uses
  %.sroa.15.0442 = phi i32 [ 0, %.lr.ph ], [ %.sroa.15.1, %bb.u ] ; 5 uses
  %.sroa.0188.0441 = phi ptr [ %i.bb, %.lr.ph ], [ %.sroa.0188.2, %bb.u ] ; 4 uses
  %.0327440 = phi i32 [ 0, %.lr.ph ], [ %.2329, %bb.u ] ; 5 uses
  %.0330439 = phi float [ 0.000000e+00, %.lr.ph ], [ %.1331, %bb.u ] ; 3 uses
  %.0332438 = phi i32 [ 1, %.lr.ph ], [ %.2334, %bb.u ] ; 4 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !18 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !18 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !18 ; 3 uses
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds [12 x i8], ptr %i.u, i64 %i.bs ; 2 uses
  %.sroa.0157.0.copyload = load <2 x float>, ptr %i.bt, align 4 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !16 ; 5 uses
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds [12 x i8], ptr %i.u, i64 %i.bu ; 2 uses
  %.sroa.0153.0.copyload = load <2 x float>, ptr %i.bv, align 4 ; 6 uses
  %.sroa.6156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.6156.0.copyload = load float, ptr %.sroa.6156.0..sroa_idx, align 4, !tbaa !16 ; 5 uses
  %i.bw = sext i32 %i.br to i64
  %i.bx = getelementptr inbounds [12 x i8], ptr %i.u, i64 %i.bw ; 2 uses
  %.sroa.0150.0.copyload = load <2 x float>, ptr %i.bx, align 4 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !16 ; 5 uses
  %i.by = fsub <2 x float> %.sroa.0153.0.copyload, %.sroa.0157.0.copyload ; 2 uses
  %i.bz = shufflevector <2 x float> %.sroa.0153.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ca = insertelement <2 x float> %i.bz, float %.sroa.6156.0.copyload, i64 1
  %i.cb = shufflevector <2 x float> %.sroa.0157.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cc = insertelement <2 x float> %i.cb, float %.sroa.7.0.copyload, i64 1 ; 2 uses
  %i.cd = fsub <2 x float> %i.ca, %i.cc           ; 2 uses
  %i.ce = fsub <2 x float> %.sroa.0150.0.copyload, %.sroa.0157.0.copyload ; 2 uses
  %i.cf = shufflevector <2 x float> %.sroa.0150.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cg = insertelement <2 x float> %i.cf, float %.sroa.6.0.copyload, i64 1
  %i.ch = fsub <2 x float> %i.cg, %i.cc           ; 2 uses
  %shift = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.ce
  %shift477 = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop478 = fmul <2 x float> %i.by, %shift477
  %foldExtExtBinop480 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop478 ; 2 uses
  %i.ci = fmul <2 x float> %i.by, %i.ch
  %i.cj = fmul <2 x float> %i.cd, %i.ce
  %i.ck = fsub <2 x float> %i.ci, %i.cj           ; 2 uses
  %foldExtExtBinop482 = fmul <2 x float> %foldExtExtBinop480, %foldExtExtBinop480
  %i.cl = fmul <2 x float> %i.ck, %i.ck           ; 2 uses
  %shift484 = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop485 = fadd <2 x float> %shift484, %foldExtExtBinop482
  %foldExtExtBinop487 = fadd <2 x float> %i.cl, %foldExtExtBinop485
  %i.cm = extractelement <2 x float> %foldExtExtBinop487, i64 0
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.cm)
  %i.cn = fmul float %sqrt.i, 5.000000e-01        ; 2 uses
  %i.co = fcmp olt float %i.cn, %i.bh
  br i1 %i.co, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %.not353 = icmp eq i32 %i.bn, %i.bp
  %.not354 = icmp eq i32 %i.bn, %i.br
  %or.cond357 = or i1 %.not353, %.not354
  %.not355 = icmp eq i32 %i.bp, %i.br
  %or.cond358 = or i1 %.not355, %or.cond357
  br i1 %or.cond358, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = icmp slt i32 %.0327440, %2
  %or.cond359 = select i1 %.not356, i1 %i.cp, i1 false
  br i1 %or.cond359, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = sext i32 %.0327440 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cq
  %i.cs = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ct = add nsw i32 %.0327440, 1
  br label %bb.u

bb.p:                                             ; preds = %bb.k
  %i.cu = fadd float %.0330439, %i.cn
  %i.cv = fcmp olt <2 x float> %.sroa.0153.0.copyload, %.sroa.0150.0.copyload
  %i.cw = fcmp olt float %.sroa.6156.0.copyload, %.sroa.6.0.copyload
  %i.cx = select i1 %i.cw, float %.sroa.6156.0.copyload, float %.sroa.6.0.copyload ; 2 uses
  %i.cy = select <2 x i1> %i.cv, <2 x float> %.sroa.0153.0.copyload, <2 x float> %.sroa.0150.0.copyload ; 2 uses
  %i.cz = fcmp olt <2 x float> %.sroa.0157.0.copyload, %i.cy
  %i.da = select <2 x i1> %i.cz, <2 x float> %.sroa.0157.0.copyload, <2 x float> %i.cy ; 4 uses
  %i.db = fcmp olt float %.sroa.7.0.copyload, %i.cx
  %i.dc = select i1 %i.db, float %.sroa.7.0.copyload, float %i.cx ; 4 uses
  %i.dd = fcmp ogt <2 x float> %.sroa.0153.0.copyload, %.sroa.0150.0.copyload
  %i.de = fcmp ogt float %.sroa.6156.0.copyload, %.sroa.6.0.copyload
  %i.df = select i1 %i.de, float %.sroa.6156.0.copyload, float %.sroa.6.0.copyload ; 2 uses
  %i.dg = select <2 x i1> %i.dd, <2 x float> %.sroa.0153.0.copyload, <2 x float> %.sroa.0150.0.copyload ; 2 uses
  %i.dh = fcmp ogt <2 x float> %.sroa.0157.0.copyload, %i.dg
  %i.di = select <2 x i1> %i.dh, <2 x float> %.sroa.0157.0.copyload, <2 x float> %i.dg ; 4 uses
  %i.dj = fcmp ogt float %.sroa.7.0.copyload, %i.df
  %i.dk = select i1 %i.dj, float %.sroa.7.0.copyload, float %i.df ; 4 uses
  %i.dl = fadd float %i.dk, %i.dc
  %i.dm = fadd <2 x float> %i.di, %i.da
  %i.dn = fmul <2 x float> %i.dm, splat (float 5.000000e-01)
  %i.do = fmul float %i.dl, 5.000000e-01
  %.not351 = icmp slt i32 %.sroa.15.0442, %.sroa.23.0443
  br i1 %.not351, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dp = mul i32 %.sroa.23.0443, 40
  %i.dq = shl nuw nsw i32 %.sroa.23.0443, 1
  %i.dr = mul i32 %.sroa.23.0443, 80
  %i.ds = tail call ptr @b3GrowAlloc(ptr noundef %.sroa.0188.0441, i32 noundef %i.dp, i32 noundef %i.dr) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0188.1 = phi ptr [ %i.ds, %bb.q ], [ %.sroa.0188.0441, %bb.p ] ; 2 uses
  %.sroa.23.1 = phi i32 [ %i.dq, %bb.q ], [ %.sroa.23.0443, %bb.p ]
  %i.dt = add nsw i32 %.sroa.15.0442, 1
  %i.du = sext i32 %.sroa.15.0442 to i64
  %i.dv = getelementptr inbounds [40 x i8], ptr %.sroa.0188.1, i64 %i.du ; 7 uses
  store <2 x float> %i.da, ptr %i.dv, align 4
  %.sroa.077.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store float %i.dc, ptr %.sroa.077.sroa.0.sroa.4.0..sroa_idx, align 4, !tbaa !16
  %.sroa.077.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store <2 x float> %i.di, ptr %.sroa.077.sroa.0.sroa.5.0..sroa_idx, align 4
  %.sroa.077.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  store float %i.dk, ptr %.sroa.077.sroa.0.sroa.6.0..sroa_idx, align 4, !tbaa !16
  %.sroa.077.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store <2 x float> %i.dn, ptr %.sroa.077.sroa.4.0..sroa_idx, align 4
  %.sroa.077.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store float %i.do, ptr %.sroa.077.sroa.5.0..sroa_idx, align 4, !tbaa !16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 36
  %i.dw = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.dw, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !18
  %i.dx = load ptr, ptr %i.bk, align 8, !tbaa !30 ; 2 uses
  %.not352 = icmp eq ptr %i.dx, null
  br i1 %.not352, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %indvars.iv
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !19
  %i.ea = zext i8 %i.dz to i32
  %i.eb = add nuw nsw i32 %i.ea, 1
  %i.ec = tail call noundef i32 @llvm.smax.i32(i32 %.0332438, i32 %i.eb)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1333 = phi i32 [ %i.ec, %bb.s ], [ %.0332438, %bb.r ]
  %.sroa.0423.0.copyload = load <2 x float>, ptr %3, align 8 ; 2 uses
  %.sroa.4424.0.copyload = load float, ptr %.sroa.4424.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5425.0.copyload = load <2 x float>, ptr %.sroa.5425.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6426.0.copyload = load float, ptr %.sroa.6426.0..sroa_idx, align 4 ; 2 uses
  %i.ed = fcmp olt <2 x float> %.sroa.0423.0.copyload, %i.da
  %i.ee = select <2 x i1> %i.ed, <2 x float> %.sroa.0423.0.copyload, <2 x float> %i.da
  %i.ef = fcmp olt float %.sroa.4424.0.copyload, %i.dc
  %i.eg = select i1 %i.ef, float %.sroa.4424.0.copyload, float %i.dc
  %i.eh = fcmp ogt <2 x float> %.sroa.5425.0.copyload, %i.di
  %i.ei = select <2 x i1> %i.eh, <2 x float> %.sroa.5425.0.copyload, <2 x float> %i.di
  %i.ej = fcmp ogt float %.sroa.6426.0.copyload, %i.dk
  %i.ek = select i1 %i.ej, float %.sroa.6426.0.copyload, float %i.dk
  store <2 x float> %i.ee, ptr %3, align 8
  store float %i.eg, ptr %.sroa.4424.0..sroa_idx, align 8, !tbaa !16
  store <2 x float> %i.ei, ptr %.sroa.5425.0..sroa_idx, align 4
  store float %i.ek, ptr %.sroa.6426.0..sroa_idx, align 4, !tbaa !16
  br label %bb.u

bb.u:                                             ; preds = %bb.l, %bb.o, %bb.t
  %.2334 = phi i32 [ %.1333, %bb.t ], [ %.0332438, %bb.o ], [ %.0332438, %bb.l ] ; 2 uses
  %.1331 = phi float [ %i.cu, %bb.t ], [ %.0330439, %bb.o ], [ %.0330439, %bb.l ] ; 2 uses
  %.2329 = phi i32 [ %.0327440, %bb.t ], [ %i.ct, %bb.o ], [ %.0327440, %bb.l ] ; 2 uses
  %.sroa.0188.2 = phi ptr [ %.sroa.0188.1, %bb.t ], [ %.sroa.0188.0441, %bb.o ], [ %.sroa.0188.0441, %bb.l ] ; 8 uses
  %.sroa.15.1 = phi i32 [ %i.dt, %bb.t ], [ %.sroa.15.0442, %bb.o ], [ %.sroa.15.0442, %bb.l ] ; 7 uses
  %.sroa.23.2 = phi i32 [ %.sroa.23.1, %bb.t ], [ %.sroa.23.0443, %bb.o ], [ %.sroa.23.0443, %bb.l ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !118

bb.v:                                             ; preds = %._crit_edge
  %i.el = zext nneg i32 %.sroa.23.2 to i64
  %i.em = mul nuw nsw i64 %i.el, 40
  tail call void @b3Free(ptr noundef %.sroa.0188.2, i64 noundef %i.em) #17
  %i.en = zext nneg i32 %i.q to i64
  %i.eo = shl nuw nsw i64 %i.en, 2
  tail call void @b3Free(ptr noundef nonnull %i.s, i64 noundef %i.eo) #17
  %i.ep = zext nneg i32 %i.g to i64
  %i.eq = mul nuw nsw i64 %i.ep, 12
  tail call void @b3Free(ptr noundef nonnull %i.u, i64 noundef %i.eq) #17
  br label %bb.ai

bb.w:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.er = shl nsw i32 %.sroa.15.1, 1
  %i.es = add nsw i32 %i.er, -1                   ; 2 uses
  %i.et = icmp sgt i32 %.sroa.15.1, 0             ; 2 uses
  br i1 %i.et, label %bb.x, label %bb.y

end_hunk_0
begin_hunk_1_@b3CreateWaveMesh:bb.a
  %i.ar = icmp sgt i32 %0, 0
  %i.as = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.ar, %i.as
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge124.split

.preheader.preheader:                             ; preds = %bb.f
  %xtraiter = and i32 %1, 1
  %i.at = icmp eq i32 %1, 1
  %unroll_iter = and i32 %1, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod144 = trunc i32 %1 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge120
  %.2123 = phi i64 [ %indvars.iv.next131.lcssa, %._crit_edge120 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.097122 = phi i32 [ %i.bm, %._crit_edge120 ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.au = mul nuw nsw i32 %.097122, %i.b          ; 3 uses
  br i1 %i.at, label %.epil.preheader, label %.preheader.new

._crit_edge124.split:                             ; preds = %._crit_edge120, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.av, i8 0, i64 40, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i32 %i.c, ptr %i.aw, align 4, !tbaa !26
  store ptr %.sroa.065.0, ptr %6, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %i.x, ptr %i.ax, align 8, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.sroa.0.0, ptr %i.ay, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 45
  store i8 1, ptr %i.az, align 1, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 46
  store i8 1, ptr %i.ba, align 2, !tbaa !32
  %i.bb = call ptr @b3CreateMesh(ptr noundef nonnull %6, ptr noundef null, i32 noundef 0)
  tail call void @b3Free(ptr noundef %.sroa.0.0, i64 noundef %.sroa.17.0) #17
  tail call void @b3Free(ptr noundef %.sroa.065.0, i64 noundef %.sroa.12.0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret ptr %i.bb

._crit_edge120.unr-lcssa:                         ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge120, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge120.unr-lcssa, %.preheader
  %indvars.iv130.epil.init = phi i64 [ %.2123, %.preheader ], [ %indvars.iv.next131.1, %._crit_edge120.unr-lcssa ] ; 2 uses
  %.096117.epil.init = phi i32 [ 0, %.preheader ], [ %i.cj, %._crit_edge120.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod144)
  %i.bc = add nuw nsw i32 %.096117.epil.init, %i.au ; 3 uses
  %i.bd = add nuw nsw i32 %i.bc, 1                ; 3 uses
  %i.be = add nuw nsw i32 %i.bd, %i.b             ; 2 uses
  %i.bf = add nuw i32 %i.bd, %1
  %i.bg = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv130.epil.init ; 6 uses
  store i32 %i.bc, ptr %i.bg, align 4, !tbaa !18
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  store i32 %i.bd, ptr %i.bh, align 4, !tbaa !18
  %i.bi = getelementptr i8, ptr %i.bg, i64 8
  store i32 %i.be, ptr %i.bi, align 4, !tbaa !18
  %i.bj = getelementptr i8, ptr %i.bg, i64 12
  store i32 %i.be, ptr %i.bj, align 4, !tbaa !18
  %i.bk = getelementptr i8, ptr %i.bg, i64 16
  store i32 %i.bf, ptr %i.bk, align 4, !tbaa !18
  %i.bl = getelementptr i8, ptr %i.bg, i64 20
  store i32 %i.bc, ptr %i.bl, align 4, !tbaa !18
  %indvars.iv.next131.epil = add nsw i64 %indvars.iv130.epil.init, 6
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge120.unr-lcssa, %.epil.preheader
  %indvars.iv.next131.lcssa = phi i64 [ %indvars.iv.next131.1, %._crit_edge120.unr-lcssa ], [ %indvars.iv.next131.epil, %.epil.preheader ]
  %i.bm = add nuw nsw i32 %.097122, 1             ; 2 uses
  %exitcond134.not = icmp eq i32 %i.bm, %0
  br i1 %exitcond134.not, label %._crit_edge124.split, label %.preheader, !llvm.loop !135

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv130 = phi i64 [ %indvars.iv.next131.1, %.preheader.new ], [ %.2123, %.preheader ] ; 3 uses
  %.096117 = phi i32 [ %i.cj, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bn = add nuw nsw i32 %.096117, %i.au         ; 3 uses
  %i.bo = add nuw nsw i32 %i.bn, 1                ; 3 uses
  %i.bp = add nuw nsw i32 %i.bo, %i.b             ; 2 uses
  %i.bq = add nuw i32 %i.bo, %1
  %i.br = getelementptr inbounds [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv130 ; 6 uses
  store i32 %i.bn, ptr %i.br, align 4, !tbaa !18
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  store i32 %i.bo, ptr %i.bs, align 4, !tbaa !18
  %i.bt = getelementptr i8, ptr %i.br, i64 8
  store i32 %i.bp, ptr %i.bt, align 4, !tbaa !18
  %i.bu = getelementptr i8, ptr %i.br, i64 12
  store i32 %i.bp, ptr %i.bu, align 4, !tbaa !18
  %i.bv = getelementptr i8, ptr %i.br, i64 16
  store i32 %i.bq, ptr %i.bv, align 4, !tbaa !18
  %i.bw = getelementptr i8, ptr %i.br, i64 20
  store i32 %i.bn, ptr %i.bw, align 4, !tbaa !18
  %i.bx = or disjoint i32 %.096117, 1
  %i.by = add nuw nsw i32 %i.bx, %i.au            ; 3 uses
  %i.bz = add nuw nsw i32 %i.by, 1                ; 3 uses
  %i.ca = add nuw nsw i32 %i.bz, %i.b             ; 2 uses
  %i.cb = add nuw i32 %i.bz, %1
  %i.cc = getelementptr [4 x i8], ptr %.sroa.0.0, i64 %indvars.iv130 ; 6 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 24
  store i32 %i.by, ptr %i.cd, align 4, !tbaa !18
  %i.ce = getelementptr i8, ptr %i.cc, i64 28
  store i32 %i.bz, ptr %i.ce, align 4, !tbaa !18
  %i.cf = getelementptr i8, ptr %i.cc, i64 32
  store i32 %i.ca, ptr %i.cf, align 4, !tbaa !18
  %i.cg = getelementptr i8, ptr %i.cc, i64 36
  store i32 %i.ca, ptr %i.cg, align 4, !tbaa !18
  %i.ch = getelementptr i8, ptr %i.cc, i64 40
  store i32 %i.cb, ptr %i.ch, align 4, !tbaa !18
  %i.ci = getelementptr i8, ptr %i.cc, i64 44
  store i32 %i.by, ptr %i.ci, align 4, !tbaa !18
  %indvars.iv.next131.1 = add nsw i64 %indvars.iv130, 12 ; 3 uses
  %i.cj = add nuw nsw i32 %.096117, 2             ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge120.unr-lcssa, label %.preheader.new, !llvm.loop !136
}

declare <2 x float> @b3ComputeCosSin(float noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define noundef ptr @b3CreateTorusMesh(i32 noundef %0, i32 noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #7 {
bb.a:
  %4 = alloca %struct.b3MeshDef, align 8          ; 9 uses
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.preheader168.lr.ph, label %._crit_edge

.preheader168.lr.ph:                              ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  %i.c = sitofp i32 %1 to float
  %i.d = uitofp nneg i32 %0 to float
  br i1 %i.b, label %.preheader168.us.preheader, label %._crit_edge

.preheader168.us.preheader:                       ; preds = %.preheader168.lr.ph
  %i.e = insertelement <2 x float> poison, float %2, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = insertelement <2 x float> poison, float %3, i64 0
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader168.us

.preheader168.us:                                 ; preds = %.preheader168.us.preheader, %._crit_edge.us
  %.sroa.0124.0178.us = phi ptr [ %.sroa.0124.2.us, %._crit_edge.us ], [ null, %.preheader168.us.preheader ]
  %.sroa.9.0177.us = phi i64 [ %indvars.iv.next, %._crit_edge.us ], [ 0, %.preheader168.us.preheader ]
  %.sroa.14.0176.us = phi i32 [ %.sroa.14.2.us, %._crit_edge.us ], [ 0, %.preheader168.us.preheader ]
  %.0175.us = phi i32 [ %i.ai, %._crit_edge.us ], [ 0, %.preheader168.us.preheader ] ; 2 uses
  %i.i = uitofp nneg i32 %.0175.us to float
  %i.j = fdiv float %i.i, %i.d
  %i.k = fmul float %i.j, f0x40C90FDB             ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader168.us, %bb.d
  %indvars.iv = phi i64 [ %.sroa.9.0177.us, %.preheader168.us ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.sroa.0124.1172.us = phi ptr [ %.sroa.0124.0178.us, %.preheader168.us ], [ %.sroa.0124.2.us, %bb.d ] ; 2 uses
  %.sroa.14.1170.us = phi i32 [ %.sroa.14.0176.us, %.preheader168.us ], [ %.sroa.14.2.us, %bb.d ] ; 5 uses
  %.0153169.us = phi i32 [ 0, %.preheader168.us ], [ %i.ah, %bb.d ] ; 2 uses
  %i.l = uitofp nneg i32 %.0153169.us to float
  %i.m = fdiv float %i.l, %i.c
  %i.n = fmul float %i.m, f0x40C90FDB             ; 2 uses
  %i.o = tail call <2 x float> @b3ComputeCosSin(float noundef %i.k) #17
  %i.p = tail call <2 x float> @b3ComputeCosSin(float noundef %i.n) #17
  %i.q = tail call <2 x float> @b3ComputeCosSin(float noundef %i.k) #17
  %i.r = shufflevector <2 x float> %i.o, <2 x float> %i.q, <2 x i32> <i32 0, i32 2>
  %i.s = fmul <2 x float> %i.h, %i.r
  %i.t = fadd <2 x float> %i.f, %i.s
  %i.u = tail call <2 x float> @b3ComputeCosSin(float noundef %i.n) #17
  %i.v = shufflevector <2 x float> %i.p, <2 x float> %i.u, <2 x i32> <i32 0, i32 3>
  %i.w = fmul <2 x float> %i.v, %i.t
  %i.x = tail call <2 x float> @b3ComputeCosSin(float noundef %i.k) #17
  %.sroa.0.4.vec.extract.i167.us = extractelement <2 x float> %i.x, i64 1
  %i.y = fmul float %3, %.sroa.0.4.vec.extract.i167.us
  %i.z = sext i32 %.sroa.14.1170.us to i64
  %.not164.us = icmp slt i64 %indvars.iv, %i.z
  br i1 %.not164.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = mul i32 %.sroa.14.1170.us, 12
  %i.ab = icmp eq i32 %.sroa.14.1170.us, 0
  %i.ac = shl nsw i32 %.sroa.14.1170.us, 1
  %i.ad = select i1 %i.ab, i32 8, i32 %i.ac       ; 2 uses
  %i.ae = mul i32 %i.ad, 12
  %i.af = tail call ptr @b3GrowAlloc(ptr noundef %.sroa.0124.1172.us, i32 noundef %i.aa, i32 noundef %i.ae) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.14.2.us = phi i32 [ %i.ad, %bb.c ], [ %.sroa.14.1170.us, %bb.b ] ; 3 uses
  %.sroa.0124.2.us = phi ptr [ %i.af, %bb.c ], [ %.sroa.0124.1172.us, %bb.b ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ag = getelementptr inbounds [12 x i8], ptr %.sroa.0124.2.us, i64 %indvars.iv ; 2 uses
  store <2 x float> %i.w, ptr %i.ag, align 4, !tbaa !16
  %.sroa.5.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store float %i.y, ptr %.sroa.5.0..sroa_idx.us, align 4, !tbaa !16
  %i.ah = add nuw nsw i32 %.0153169.us, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.ah, %1
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !137

._crit_edge.us:                                   ; preds = %bb.d
  %i.ai = add nuw nsw i32 %.0175.us, 1            ; 2 uses
  %exitcond206.not = icmp eq i32 %i.ai, %0
  br i1 %exitcond206.not, label %.preheader, label %.preheader168.us, !llvm.loop !138

.preheader:                                       ; preds = %._crit_edge.us
  %.not = icmp eq i32 %1, 1
  %i.aj = add nsw i32 %1, -2
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.preheader, %..loopexit_crit_edge.us.peel.next
  %.sroa.0.0193.us = phi ptr [ %.sroa.0.7.us.peel, %..loopexit_crit_edge.us.peel.next ], [ null, %.preheader ] ; 2 uses
  %.sroa.24.0192.us = phi i64 [ %indvars.iv.next208.peel, %..loopexit_crit_edge.us.peel.next ], [ 0, %.preheader ] ; 2 uses
  %.sroa.44.0191.us = phi i32 [ %.sroa.44.7.us.peel, %..loopexit_crit_edge.us.peel.next ], [ 0, %.preheader ] ; 2 uses
  %.0154190.us = phi i32 [ %i.ak, %..loopexit_crit_edge.us.peel.next ], [ 0, %.preheader ] ; 2 uses
  %i.ak = add nuw nsw i32 %.0154190.us, 1         ; 4 uses
  %i.al = icmp eq i32 %i.ak, %0
  %iv.rem = select i1 %i.al, i32 0, i32 %i.ak
  %i.am = mul nuw nsw i32 %.0154190.us, %1        ; 4 uses
  %i.an = mul nuw nsw i32 %iv.rem, %1             ; 4 uses
  br i1 %.not, label %..loopexit_crit_edge.us.peel.begin, label %.lr.ph.us.split

.lr.ph.us.split:                                  ; preds = %.lr.ph.us, %bb.p
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %bb.p ], [ %.sroa.24.0192.us, %.lr.ph.us ] ; 8 uses
  %.sroa.0.1187.us = phi ptr [ %.sroa.0.7.us, %bb.p ], [ %.sroa.0.0193.us, %.lr.ph.us ] ; 2 uses
  %.sroa.44.1185.us = phi i32 [ %.sroa.44.7.us, %bb.p ], [ %.sroa.44.0191.us, %.lr.ph.us ] ; 5 uses
  %.0155184.us = phi i32 [ %i.ao, %bb.p ], [ 0, %.lr.ph.us ] ; 4 uses
  %i.ao = add i32 %.0155184.us, 1                 ; 4 uses
  %i.ap = add nuw nsw i32 %.0155184.us, %i.am     ; 2 uses
  %i.aq = add nuw nsw i32 %i.ao, %i.am
  %i.ar = add nuw nsw i32 %i.ao, %i.an            ; 2 uses
  %i.as = add nuw nsw i32 %.0155184.us, %i.an
  %i.at = sext i32 %.sroa.44.1185.us to i64       ; 2 uses
  %.not.us = icmp slt i64 %indvars.iv207, %i.at
  br i1 %.not.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.us.split
  %i.au = shl i32 %.sroa.44.1185.us, 2
  %i.av = icmp eq i32 %.sroa.44.1185.us, 0
  %i.aw = shl nsw i32 %.sroa.44.1185.us, 1
  %i.ax = select i1 %i.av, i32 8, i32 %i.aw       ; 3 uses
  %i.ay = shl i32 %i.ax, 2
  %i.az = tail call ptr @b3GrowAlloc(ptr noundef %.sroa.0.1187.us, i32 noundef %i.au, i32 noundef %i.ay) #17
  %.pre = sext i32 %i.ax to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.us.split
  %.pre-phi = phi i64 [ %.pre, %bb.e ], [ %i.at, %.lr.ph.us.split ] ; 2 uses
  %.sroa.44.2.us = phi i32 [ %i.ax, %bb.e ], [ %.sroa.44.1185.us, %.lr.ph.us.split ] ; 4 uses
  %.sroa.0.2.us = phi ptr [ %i.az, %bb.e ], [ %.sroa.0.1187.us, %.lr.ph.us.split ] ; 3 uses
  %i.ba = add nsw i64 %indvars.iv207, 1           ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %.sroa.0.2.us, i64 %indvars.iv207
  store i32 %i.ap, ptr %i.bb, align 4, !tbaa !18
  %.not159.us = icmp slt i64 %i.ba, %.pre-phi
  br i1 %.not159.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = shl i32 %.sroa.44.2.us, 2
  %i.bd = icmp eq i32 %.sroa.44.2.us, 0
  %i.be = shl nsw i32 %.sroa.44.2.us, 1
  %i.bf = select i1 %i.bd, i32 8, i32 %i.be       ; 3 uses
  %i.bg = shl i32 %i.bf, 2
  %i.bh = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.sroa.0.2.us, i32 noundef %i.bc, i32 noundef %i.bg) #17
  %.pre215 = sext i32 %i.bf to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi216 = phi i64 [ %.pre215, %bb.g ], [ %.pre-phi, %bb.f ] ; 2 uses
  %.sroa.44.3.us = phi i32 [ %i.bf, %bb.g ], [ %.sroa.44.2.us, %bb.f ] ; 4 uses
  %.sroa.0.3.us = phi ptr [ %i.bh, %bb.g ], [ %.sroa.0.2.us, %bb.f ] ; 3 uses
  %i.bi = add nsw i64 %indvars.iv207, 2           ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %.sroa.0.3.us, i64 %i.ba
  store i32 %i.aq, ptr %i.bj, align 4, !tbaa !18
  %.not160.us = icmp slt i64 %i.bi, %.pre-phi216
  br i1 %.not160.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = shl i32 %.sroa.44.3.us, 2
  %i.bl = icmp eq i32 %.sroa.44.3.us, 0
  %i.bm = shl nsw i32 %.sroa.44.3.us, 1
  %i.bn = select i1 %i.bl, i32 8, i32 %i.bm       ; 3 uses
  %i.bo = shl i32 %i.bn, 2
  %i.bp = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.sroa.0.3.us, i32 noundef %i.bk, i32 noundef %i.bo) #17
  %.pre217 = sext i32 %i.bn to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi218 = phi i64 [ %.pre217, %bb.i ], [ %.pre-phi216, %bb.h ] ; 2 uses
  %.sroa.44.4.us = phi i32 [ %i.bn, %bb.i ], [ %.sroa.44.3.us, %bb.h ] ; 4 uses
  %.sroa.0.4.us = phi ptr [ %i.bp, %bb.i ], [ %.sroa.0.3.us, %bb.h ] ; 3 uses
  %i.bq = add nsw i64 %indvars.iv207, 3           ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %.sroa.0.4.us, i64 %i.bi
  store i32 %i.ar, ptr %i.br, align 4, !tbaa !18
  %.not161.us = icmp slt i64 %i.bq, %.pre-phi218
  br i1 %.not161.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = shl i32 %.sroa.44.4.us, 2
  %i.bt = icmp eq i32 %.sroa.44.4.us, 0
  %i.bu = shl nsw i32 %.sroa.44.4.us, 1
  %i.bv = select i1 %i.bt, i32 8, i32 %i.bu       ; 3 uses
  %i.bw = shl i32 %i.bv, 2
  %i.bx = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.sroa.0.4.us, i32 noundef %i.bs, i32 noundef %i.bw) #17
  %.pre219 = sext i32 %i.bv to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi220 = phi i64 [ %.pre219, %bb.k ], [ %.pre-phi218, %bb.j ] ; 2 uses
  %.sroa.44.5.us = phi i32 [ %i.bv, %bb.k ], [ %.sroa.44.4.us, %bb.j ] ; 4 uses
  %.sroa.0.5.us = phi ptr [ %i.bx, %bb.k ], [ %.sroa.0.4.us, %bb.j ] ; 3 uses
  %i.by = add nsw i64 %indvars.iv207, 4           ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %.sroa.0.5.us, i64 %i.bq
  store i32 %i.ar, ptr %i.bz, align 4, !tbaa !18
  %.not162.us = icmp slt i64 %i.by, %.pre-phi220
  br i1 %.not162.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = shl i32 %.sroa.44.5.us, 2
  %i.cb = icmp eq i32 %.sroa.44.5.us, 0
  %i.cc = shl nsw i32 %.sroa.44.5.us, 1
  %i.cd = select i1 %i.cb, i32 8, i32 %i.cc       ; 3 uses
  %i.ce = shl i32 %i.cd, 2
  %i.cf = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.sroa.0.5.us, i32 noundef %i.ca, i32 noundef %i.ce) #17
  %.pre221 = sext i32 %i.cd to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi222 = phi i64 [ %.pre221, %bb.m ], [ %.pre-phi220, %bb.l ]
  %.sroa.44.6.us = phi i32 [ %i.cd, %bb.m ], [ %.sroa.44.5.us, %bb.l ] ; 4 uses
  %.sroa.0.6.us = phi ptr [ %i.cf, %bb.m ], [ %.sroa.0.5.us, %bb.l ] ; 3 uses
  %i.cg = add nsw i64 %indvars.iv207, 5           ; 2 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %.sroa.0.6.us, i64 %i.by
  store i32 %i.as, ptr %i.ch, align 4, !tbaa !18
  %.not163.us = icmp slt i64 %i.cg, %.pre-phi222
  br i1 %.not163.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = shl i32 %.sroa.44.6.us, 2
  %i.cj = icmp eq i32 %.sroa.44.6.us, 0
  %i.ck = shl nsw i32 %.sroa.44.6.us, 1
  %i.cl = select i1 %i.cj, i32 8, i32 %i.ck       ; 2 uses
  %i.cm = shl i32 %i.cl, 2
  %i.cn = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.sroa.0.6.us, i32 noundef %i.ci, i32 noundef %i.cm) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.44.7.us = phi i32 [ %i.cl, %bb.o ], [ %.sroa.44.6.us, %bb.n ] ; 2 uses
  %.sroa.0.7.us = phi ptr [ %i.cn, %bb.o ], [ %.sroa.0.6.us, %bb.n ] ; 3 uses
  %indvars.iv.next208 = add nsw i64 %indvars.iv207, 6 ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %.sroa.0.7.us, i64 %i.cg
  store i32 %i.ap, ptr %i.co, align 4, !tbaa !18
  %exitcond210.not = icmp eq i32 %.0155184.us, %i.aj
  br i1 %exitcond210.not, label %..loopexit_crit_edge.us.peel.begin, label %.lr.ph.us.split, !llvm.loop !139

..loopexit_crit_edge.us.peel.begin:               ; preds = %bb.p, %.lr.ph.us
  %i.cp = phi i64 [ %.sroa.24.0192.us, %.lr.ph.us ], [ %indvars.iv.next208, %bb.p ] ; 8 uses
  %i.cq = phi ptr [ %.sroa.0.0193.us, %.lr.ph.us ], [ %.sroa.0.7.us, %bb.p ] ; 2 uses
  %i.cr = phi i32 [ %.sroa.44.0191.us, %.lr.ph.us ], [ %.sroa.44.7.us, %bb.p ] ; 5 uses
  %i.cs = phi i32 [ 0, %.lr.ph.us ], [ %i.ao, %bb.p ] ; 3 uses
  %i.ct = add nuw nsw i32 %i.cs, 1                ; 2 uses
  %i.cu = icmp eq i32 %i.ct, %1
  %iv.rem.peel = select i1 %i.cu, i32 0, i32 %i.ct ; 2 uses
  %i.cv = add nuw nsw i32 %i.cs, %i.am            ; 2 uses
  %i.cw = add nuw nsw i32 %iv.rem.peel, %i.am
  %i.cx = add nuw nsw i32 %iv.rem.peel, %i.an     ; 2 uses
  %i.cy = add nuw nsw i32 %i.cs, %i.an
  %i.cz = sext i32 %i.cr to i64                   ; 2 uses
  %.not.us.peel = icmp slt i64 %i.cp, %i.cz
  br i1 %.not.us.peel, label %bb.r, label %bb.q

bb.q:                                             ; preds = %..loopexit_crit_edge.us.peel.begin
  %i.da = shl i32 %i.cr, 2
  %i.db = icmp eq i32 %i.cr, 0
  %i.dc = shl nsw i32 %i.cr, 1
  %i.dd = select i1 %i.db, i32 8, i32 %i.dc       ; 3 uses
  %i.de = shl i32 %i.dd, 2
  %i.df = tail call ptr @b3GrowAlloc(ptr noundef %i.cq, i32 noundef %i.da, i32 noundef %i.de) #17
  %.pre223 = sext i32 %i.dd to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %..loopexit_crit_edge.us.peel.begin
  %.pre-phi224 = phi i64 [ %.pre223, %bb.q ], [ %i.cz, %..loopexit_crit_edge.us.peel.begin ] ; 2 uses
  %.sroa.44.2.us.peel = phi i32 [ %i.dd, %bb.q ], [ %i.cr, %..loopexit_crit_edge.us.peel.begin ] ; 4 uses
  %.sroa.0.2.us.peel = phi ptr [ %i.df, %bb.q ], [ %i.cq, %..loopexit_crit_edge.us.peel.begin ] ; 3 uses
  %i.dg = add nsw i64 %i.cp, 1                    ; 2 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %.sroa.0.2.us.peel, i64 %i.cp
  store i32 %i.cv, ptr %i.dh, align 4, !tbaa !18
  %.not159.us.peel = icmp slt i64 %i.dg, %.pre-phi224
  br i1 %.not159.us.peel, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.di = shl i32 %.sroa.44.2.us.peel, 2
  %i.dj = icmp eq i32 %.sroa.44.2.us.peel, 0
  %i.dk = shl nsw i32 %.sroa.44.2.us.peel, 1
  %i.dl = select i1 %i.dj, i32 8, i32 %i.dk       ; 3 uses
  %i.dm = shl i32 %i.dl, 2
  %i.dn = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.sroa.0.2.us.peel, i32 noundef %i.di, i32 noundef %i.dm) #17
  %.pre225 = sext i32 %i.dl to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pre-phi226 = phi i64 [ %.pre225, %bb.s ], [ %.pre-phi224, %bb.r ] ; 2 uses
  %.sroa.44.3.us.peel = phi i32 [ %i.dl, %bb.s ], [ %.sroa.44.2.us.peel, %bb.r ] ; 4 uses
  %.sroa.0.3.us.peel = phi ptr [ %i.dn, %bb.s ], [ %.sroa.0.2.us.peel, %bb.r ] ; 3 uses
  %i.do = add nsw i64 %i.cp, 2                    ; 2 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %.sroa.0.3.us.peel, i64 %i.dg
  store i32 %i.cw, ptr %i.dp, align 4, !tbaa !18
  %.not160.us.peel = icmp slt i64 %i.do, %.pre-phi226
  br i1 %.not160.us.peel, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dq = shl i32 %.sroa.44.3.us.peel, 2
  %i.dr = icmp eq i32 %.sroa.44.3.us.peel, 0
  %i.ds = shl nsw i32 %.sroa.44.3.us.peel, 1
  %i.dt = select i1 %i.dr, i32 8, i32 %i.ds       ; 3 uses
  %i.du = shl i32 %i.dt, 2
  %i.dv = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.sroa.0.3.us.peel, i32 noundef %i.dq, i32 noundef %i.du) #17
  %.pre227 = sext i32 %i.dt to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pre-phi228 = phi i64 [ %.pre227, %bb.u ], [ %.pre-phi226, %bb.t ] ; 2 uses
  %.sroa.44.4.us.peel = phi i32 [ %i.dt, %bb.u ], [ %.sroa.44.3.us.peel, %bb.t ] ; 4 uses
  %.sroa.0.4.us.peel = phi ptr [ %i.dv, %bb.u ], [ %.sroa.0.3.us.peel, %bb.t ] ; 3 uses
  %i.dw = add nsw i64 %i.cp, 3                    ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %.sroa.0.4.us.peel, i64 %i.do
  store i32 %i.cx, ptr %i.dx, align 4, !tbaa !18
  %.not161.us.peel = icmp slt i64 %i.dw, %.pre-phi228
  br i1 %.not161.us.peel, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dy = shl i32 %.sroa.44.4.us.peel, 2
  %i.dz = icmp eq i32 %.sroa.44.4.us.peel, 0
  %i.ea = shl nsw i32 %.sroa.44.4.us.peel, 1
  %i.eb = select i1 %i.dz, i32 8, i32 %i.ea       ; 3 uses
  %i.ec = shl i32 %i.eb, 2
  %i.ed = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.sroa.0.4.us.peel, i32 noundef %i.dy, i32 noundef %i.ec) #17
  %.pre229 = sext i32 %i.eb to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pre-phi230 = phi i64 [ %.pre229, %bb.w ], [ %.pre-phi228, %bb.v ] ; 2 uses
  %.sroa.44.5.us.peel = phi i32 [ %i.eb, %bb.w ], [ %.sroa.44.4.us.peel, %bb.v ] ; 4 uses
  %.sroa.0.5.us.peel = phi ptr [ %i.ed, %bb.w ], [ %.sroa.0.4.us.peel, %bb.v ] ; 3 uses
  %i.ee = add nsw i64 %i.cp, 4                    ; 2 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %.sroa.0.5.us.peel, i64 %i.dw
  store i32 %i.cx, ptr %i.ef, align 4, !tbaa !18
  %.not162.us.peel = icmp slt i64 %i.ee, %.pre-phi230
  br i1 %.not162.us.peel, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eg = shl i32 %.sroa.44.5.us.peel, 2
  %i.eh = icmp eq i32 %.sroa.44.5.us.peel, 0
  %i.ei = shl nsw i32 %.sroa.44.5.us.peel, 1
  %i.ej = select i1 %i.eh, i32 8, i32 %i.ei       ; 3 uses
  %i.ek = shl i32 %i.ej, 2
  %i.el = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.sroa.0.5.us.peel, i32 noundef %i.eg, i32 noundef %i.ek) #17
  %.pre231 = sext i32 %i.ej to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre-phi232 = phi i64 [ %.pre231, %bb.y ], [ %.pre-phi230, %bb.x ]
  %.sroa.44.6.us.peel = phi i32 [ %i.ej, %bb.y ], [ %.sroa.44.5.us.peel, %bb.x ] ; 4 uses
  %.sroa.0.6.us.peel = phi ptr [ %i.el, %bb.y ], [ %.sroa.0.5.us.peel, %bb.x ] ; 3 uses
  %i.em = add nsw i64 %i.cp, 5                    ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %.sroa.0.6.us.peel, i64 %i.ee
  store i32 %i.cy, ptr %i.en, align 4, !tbaa !18
  %.not163.us.peel = icmp slt i64 %i.em, %.pre-phi232
  br i1 %.not163.us.peel, label %..loopexit_crit_edge.us.peel.next, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eo = shl i32 %.sroa.44.6.us.peel, 2
  %i.ep = icmp eq i32 %.sroa.44.6.us.peel, 0
  %i.eq = shl nsw i32 %.sroa.44.6.us.peel, 1
  %i.er = select i1 %i.ep, i32 8, i32 %i.eq       ; 2 uses
  %i.es = shl i32 %i.er, 2
  %i.et = tail call ptr @b3GrowAlloc(ptr noundef nonnull %.sroa.0.6.us.peel, i32 noundef %i.eo, i32 noundef %i.es) #17
  br label %..loopexit_crit_edge.us.peel.next

..loopexit_crit_edge.us.peel.next:                ; preds = %bb.aa, %bb.z
  %.sroa.44.7.us.peel = phi i32 [ %i.er, %bb.aa ], [ %.sroa.44.6.us.peel, %bb.z ] ; 2 uses
  %.sroa.0.7.us.peel = phi ptr [ %i.et, %bb.aa ], [ %.sroa.0.6.us.peel, %bb.z ] ; 3 uses
  %indvars.iv.next208.peel = add nsw i64 %i.cp, 6 ; 2 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %.sroa.0.7.us.peel, i64 %i.em
  store i32 %i.cv, ptr %i.eu, align 4, !tbaa !18
  %exitcond214.not = icmp eq i32 %i.ak, %0
  br i1 %exitcond214.not, label %._crit_edge.loopexit, label %.lr.ph.us, !llvm.loop !140

._crit_edge.loopexit:                             ; preds = %..loopexit_crit_edge.us.peel.next
  %5 = trunc nsw i64 %indvars.iv.next to i32
  %6 = sext i32 %.sroa.14.2.us to i64
  %7 = mul nsw i64 %6, 12
  %i.ev = trunc nsw i64 %indvars.iv.next208.peel to i32
  %i.ew = sdiv i32 %i.ev, 3
  %i.ex = sext i32 %.sroa.44.7.us.peel to i64
  %i.ey = shl nsw i64 %i.ex, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader168.lr.ph, %bb.a, %._crit_edge.loopexit
  %.sroa.0124.0.lcssa249 = phi ptr [ null, %bb.a ], [ %.sroa.0124.2.us, %._crit_edge.loopexit ], [ null, %.preheader168.lr.ph ] ; 2 uses
  %.sroa.9.0.lcssa247 = phi i32 [ 0, %bb.a ], [ %5, %._crit_edge.loopexit ], [ 0, %.preheader168.lr.ph ]
  %.sroa.14.0.lcssa245 = phi i64 [ 0, %bb.a ], [ %7, %._crit_edge.loopexit ], [ 0, %.preheader168.lr.ph ]
  %.sroa.44.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ey, %._crit_edge.loopexit ], [ 0, %.preheader168.lr.ph ]
  %.sroa.24.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ew, %._crit_edge.loopexit ], [ 0, %.preheader168.lr.ph ]
  %.sroa.0.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0.7.us.peel, %._crit_edge.loopexit ], [ null, %.preheader168.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ez, i8 0, i64 40, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %.sroa.9.0.lcssa247, ptr %i.fa, align 4, !tbaa !26
  store ptr %.sroa.0124.0.lcssa249, ptr %4, align 8, !tbaa !27
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %.sroa.24.0.lcssa, ptr %i.fb, align 8, !tbaa !28
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.sroa.0.0.lcssa, ptr %i.fc, align 8, !tbaa !29
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 46
  store i8 1, ptr %i.fd, align 2, !tbaa !32
  %i.fe = call ptr @b3CreateMesh(ptr noundef nonnull %4, ptr noundef null, i32 noundef 0)
  tail call void @b3Free(ptr noundef %.sroa.0124.0.lcssa249, i64 noundef %.sroa.14.0.lcssa245) #17
  tail call void @b3Free(ptr noundef %.sroa.0.0.lcssa, i64 noundef %.sroa.44.0.lcssa) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret ptr %i.fe
}

; Function Attrs: nounwind uwtable
define noundef ptr @b3CreateBoxMesh(<2 x float> %0, float %1, <2 x float> %2, float %3, i1 noundef zeroext %4) local_unnamed_addr #7 {
bb.a:
  %5 = alloca [8 x %struct.b3Vec3], align 16      ; 29 uses
  %i.a = alloca [36 x i32], align 16              ; 4 uses
  %6 = alloca %struct.b3MeshDef, align 8          ; 9 uses
  %.sroa.035.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 5 uses
  %.sroa.035.4.vec.extract = extractelement <2 x float> %2, i64 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store float %.sroa.035.0.vec.extract, ptr %5, align 16, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %.sroa.035.4.vec.extract, ptr %i.b, align 4, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.e = fneg float %.sroa.035.0.vec.extract      ; 4 uses
  store float %i.e, ptr %i.d, align 4, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  store float %.sroa.035.4.vec.extract, ptr %i.f, align 16, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store float %i.e, ptr %i.g, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.i = fneg float %.sroa.035.4.vec.extract      ; 4 uses
  store float %i.i, ptr %i.h, align 4, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 3 uses
  store float %.sroa.035.0.vec.extract, ptr %i.j, align 4, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 40
  store float %i.i, ptr %i.k, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  store float %.sroa.035.0.vec.extract, ptr %i.l, align 16, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 52
  store float %.sroa.035.4.vec.extract, ptr %i.m, align 4, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 3 uses
  store float %i.e, ptr %i.n, align 4, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  store float %.sroa.035.4.vec.extract, ptr %i.o, align 16, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  store float %i.e, ptr %i.p, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 76
  store float %i.i, ptr %i.q, align 4, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 3 uses
  store float %.sroa.035.0.vec.extract, ptr %i.r, align 4, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 88
  store float %i.i, ptr %i.s, align 8, !tbaa !58
  %.sroa.03.0.copyload = load <2 x float>, ptr %5, align 16
  %i.t = fadd <2 x float> %0, %.sroa.03.0.copyload
  %i.u = fadd float %1, %3                        ; 4 uses
  store <2 x float> %i.t, ptr %5, align 16
  store float %i.u, ptr %i.c, align 8, !tbaa !16
  %.sroa.03.0.copyload.1 = load <2 x float>, ptr %i.d, align 4
  %.sroa.24.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.v = fadd <2 x float> %0, %.sroa.03.0.copyload.1
  store <2 x float> %i.v, ptr %i.d, align 4
  store float %i.u, ptr %.sroa.24.0..sroa_idx.1, align 4, !tbaa !16
  %.sroa.03.0.copyload.2 = load <2 x float>, ptr %i.g, align 8
  %.sroa.24.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.w = fadd <2 x float> %0, %.sroa.03.0.copyload.2
  store <2 x float> %i.w, ptr %i.g, align 8
  store float %i.u, ptr %.sroa.24.0..sroa_idx.2, align 16, !tbaa !16
  %.sroa.03.0.copyload.3 = load <2 x float>, ptr %i.j, align 4
  %.sroa.24.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.x = fadd <2 x float> %0, %.sroa.03.0.copyload.3
  store <2 x float> %i.x, ptr %i.j, align 4
  store float %i.u, ptr %.sroa.24.0..sroa_idx.3, align 4, !tbaa !16
  %.sroa.03.0.copyload.4 = load <2 x float>, ptr %i.l, align 16
  %.sroa.24.0..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.y = fadd <2 x float> %0, %.sroa.03.0.copyload.4
  %i.z = fsub float %1, %3                        ; 4 uses
  store <2 x float> %i.y, ptr %i.l, align 16
  store float %i.z, ptr %.sroa.24.0..sroa_idx.4, align 8, !tbaa !16
  %.sroa.03.0.copyload.5 = load <2 x float>, ptr %i.n, align 4
  %.sroa.24.0..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.aa = fadd <2 x float> %0, %.sroa.03.0.copyload.5
  store <2 x float> %i.aa, ptr %i.n, align 4
  store float %i.z, ptr %.sroa.24.0..sroa_idx.5, align 4, !tbaa !16
  %.sroa.03.0.copyload.6 = load <2 x float>, ptr %i.p, align 8
  %.sroa.24.0..sroa_idx.6 = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ab = fadd <2 x float> %0, %.sroa.03.0.copyload.6
  store <2 x float> %i.ab, ptr %i.p, align 8
  store float %i.z, ptr %.sroa.24.0..sroa_idx.6, align 16, !tbaa !16
  %.sroa.03.0.copyload.7 = load <2 x float>, ptr %i.r, align 4
  %.sroa.24.0..sroa_idx.7 = getelementptr inbounds nuw i8, ptr %5, i64 92
  %i.ac = fadd <2 x float> %0, %.sroa.03.0.copyload.7
  store <2 x float> %i.ac, ptr %i.r, align 4
  store float %i.z, ptr %.sroa.24.0..sroa_idx.7, align 4, !tbaa !16
  %i.ad = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 16 dereferenceable(144) @__const.b3CreatePlatformMesh.indices, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i8 0, i64 40, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i32 8, ptr %i.af, align 4, !tbaa !26
  store ptr %5, ptr %6, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 12, ptr %i.ag, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.a, ptr %i.ah, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 46
  store i8 %i.ad, ptr %i.ai, align 2, !tbaa !32
  %i.aj = call ptr @b3CreateMesh(ptr noundef nonnull %6, ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret ptr %i.aj
}

; Function Attrs: nounwind uwtable
define noundef ptr @b3CreateHollowBoxMesh(<2 x float> %0, float %1, <2 x float> %2, float %3) local_unnamed_addr #7 {
bb.a:
  %4 = alloca [8 x %struct.b3Vec3], align 16      ; 29 uses
  %i.a = alloca [36 x i32], align 16              ; 4 uses
  %5 = alloca %struct.b3MeshDef, align 8          ; 9 uses
  %.sroa.034.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 5 uses
  %.sroa.034.4.vec.extract = extractelement <2 x float> %2, i64 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store float %.sroa.034.0.vec.extract, ptr %4, align 16, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %.sroa.034.4.vec.extract, ptr %i.b, align 4, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.e = fneg float %.sroa.034.0.vec.extract      ; 4 uses
  store float %i.e, ptr %i.d, align 4, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %.sroa.034.4.vec.extract, ptr %i.f, align 16, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store float %i.e, ptr %i.g, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.i = fneg float %.sroa.034.4.vec.extract      ; 4 uses
  store float %i.i, ptr %i.h, align 4, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 3 uses
  store float %.sroa.034.0.vec.extract, ptr %i.j, align 4, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.i, ptr %i.k, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store float %.sroa.034.0.vec.extract, ptr %i.l, align 16, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 52
  store float %.sroa.034.4.vec.extract, ptr %i.m, align 4, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 3 uses
  store float %i.e, ptr %i.n, align 4, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  store float %.sroa.034.4.vec.extract, ptr %i.o, align 16, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  store float %i.e, ptr %i.p, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 76
  store float %i.i, ptr %i.q, align 4, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 84 ; 3 uses
  store float %.sroa.034.0.vec.extract, ptr %i.r, align 4, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 88
  store float %i.i, ptr %i.s, align 8, !tbaa !58
  %.sroa.03.0.copyload = load <2 x float>, ptr %4, align 16
  %i.t = fadd <2 x float> %0, %.sroa.03.0.copyload
  %i.u = fadd float %1, %3                        ; 4 uses
  store <2 x float> %i.t, ptr %4, align 16
  store float %i.u, ptr %i.c, align 8, !tbaa !16
  %.sroa.03.0.copyload.1 = load <2 x float>, ptr %i.d, align 4
  %.sroa.24.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.v = fadd <2 x float> %0, %.sroa.03.0.copyload.1
  store <2 x float> %i.v, ptr %i.d, align 4
  store float %i.u, ptr %.sroa.24.0..sroa_idx.1, align 4, !tbaa !16
  %.sroa.03.0.copyload.2 = load <2 x float>, ptr %i.g, align 8
  %.sroa.24.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.w = fadd <2 x float> %0, %.sroa.03.0.copyload.2
  store <2 x float> %i.w, ptr %i.g, align 8
  store float %i.u, ptr %.sroa.24.0..sroa_idx.2, align 16, !tbaa !16
  %.sroa.03.0.copyload.3 = load <2 x float>, ptr %i.j, align 4
  %.sroa.24.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.x = fadd <2 x float> %0, %.sroa.03.0.copyload.3
  store <2 x float> %i.x, ptr %i.j, align 4
end_hunk_1
begin_hunk_2_@b3CreateHollowBoxMesh:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i8 0, i64 40, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 8, ptr %i.ae, align 4, !tbaa !26
  store ptr %4, ptr %5, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 12, ptr %i.af, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.ag, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 46
  store i8 1, ptr %i.ah, align 2, !tbaa !32
  %i.ai = call ptr @b3CreateMesh(ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret ptr %i.ai
}

; Function Attrs: nounwind uwtable
define noundef ptr @b3CreatePlatformMesh(<2 x float> %0, float %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #7 {
bb.a:
  %5 = alloca [8 x %struct.b3Vec3], align 16      ; 29 uses
  %i.a = alloca [36 x i32], align 16              ; 4 uses
  %6 = alloca %struct.b3MeshDef, align 8          ; 10 uses
  %i.b = fmul float %4, 5.000000e-01              ; 5 uses
  %i.c = fmul float %3, 5.000000e-01              ; 5 uses
  %i.d = fmul float %2, 5.000000e-01              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store float %i.c, ptr %5, align 16, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.d, ptr %i.e, align 4, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.h = fneg float %i.c                          ; 2 uses
  store float %i.h, ptr %i.g, align 4, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store float %i.d, ptr %i.i, align 16, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.k = fneg float %i.b                          ; 2 uses
  store float %i.k, ptr %i.j, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.m = fneg float %i.d                          ; 4 uses
  store float %i.m, ptr %i.l, align 4, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 3 uses
  store float %i.b, ptr %i.n, align 4, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 40
  store float %i.m, ptr %i.o, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  store float %i.c, ptr %i.p, align 16, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 52
  store float %i.d, ptr %i.q, align 4, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 3 uses
  store float %i.h, ptr %i.r, align 4, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  store float %i.d, ptr %i.s, align 16, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  store float %i.k, ptr %i.t, align 8, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 76
  store float %i.m, ptr %i.u, align 4, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 84 ; 3 uses
  store float %i.b, ptr %i.v, align 4, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 88
  store float %i.m, ptr %i.w, align 8, !tbaa !58
  %.sroa.03.0.copyload = load <2 x float>, ptr %5, align 16
  %i.x = fadd <2 x float> %0, %.sroa.03.0.copyload
  %i.y = fadd float %1, %i.c                      ; 2 uses
  store <2 x float> %i.x, ptr %5, align 16
  store float %i.y, ptr %i.f, align 8, !tbaa !16
  %.sroa.03.0.copyload.1 = load <2 x float>, ptr %i.g, align 4
  %.sroa.24.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.z = fadd <2 x float> %0, %.sroa.03.0.copyload.1
  store <2 x float> %i.z, ptr %i.g, align 4
  store float %i.y, ptr %.sroa.24.0..sroa_idx.1, align 4, !tbaa !16
  %.sroa.03.0.copyload.2 = load <2 x float>, ptr %i.j, align 8
  %.sroa.24.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aa = fadd <2 x float> %0, %.sroa.03.0.copyload.2
  %i.ab = fadd float %1, %i.b                     ; 2 uses
  store <2 x float> %i.aa, ptr %i.j, align 8
  store float %i.ab, ptr %.sroa.24.0..sroa_idx.2, align 16, !tbaa !16
  %.sroa.03.0.copyload.3 = load <2 x float>, ptr %i.n, align 4
  %.sroa.24.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ac = fadd <2 x float> %0, %.sroa.03.0.copyload.3
  store <2 x float> %i.ac, ptr %i.n, align 4
  store float %i.ab, ptr %.sroa.24.0..sroa_idx.3, align 4, !tbaa !16
  %.sroa.03.0.copyload.4 = load <2 x float>, ptr %i.p, align 16
  %.sroa.24.0..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ad = fadd <2 x float> %0, %.sroa.03.0.copyload.4
  %i.ae = fsub float %1, %i.c                     ; 2 uses
  store <2 x float> %i.ad, ptr %i.p, align 16
  store float %i.ae, ptr %.sroa.24.0..sroa_idx.4, align 8, !tbaa !16
  %.sroa.03.0.copyload.5 = load <2 x float>, ptr %i.r, align 4
  %.sroa.24.0..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.af = fadd <2 x float> %0, %.sroa.03.0.copyload.5
  store <2 x float> %i.af, ptr %i.r, align 4
  store float %i.ae, ptr %.sroa.24.0..sroa_idx.5, align 4, !tbaa !16
  %.sroa.03.0.copyload.6 = load <2 x float>, ptr %i.t, align 8
  %.sroa.24.0..sroa_idx.6 = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ag = fadd <2 x float> %0, %.sroa.03.0.copyload.6
  %i.ah = fsub float %1, %i.b                     ; 2 uses
  store <2 x float> %i.ag, ptr %i.t, align 8
  store float %i.ah, ptr %.sroa.24.0..sroa_idx.6, align 16, !tbaa !16
  %.sroa.03.0.copyload.7 = load <2 x float>, ptr %i.v, align 4
  %.sroa.24.0..sroa_idx.7 = getelementptr inbounds nuw i8, ptr %5, i64 92
  %i.ai = fadd <2 x float> %0, %.sroa.03.0.copyload.7
  store <2 x float> %i.ai, ptr %i.v, align 4
  store float %i.ah, ptr %.sroa.24.0..sroa_idx.7, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 16 dereferenceable(144) @__const.b3CreatePlatformMesh.indices, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i8 0, i64 40, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i32 8, ptr %i.ak, align 4, !tbaa !26
  store ptr %5, ptr %6, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 12, ptr %i.al, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.a, ptr %i.am, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 45
  store i8 1, ptr %i.an, align 1, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 46
  store i8 1, ptr %i.ao, align 2, !tbaa !32
  %i.ap = call ptr @b3CreateMesh(ptr noundef nonnull %6, ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret ptr %i.ap
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @b3WeldVertices(ptr nofree noundef nonnull readonly captures(none) %0, float noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.b3VertexMap_itr, align 8    ; 5 uses
  %3 = alloca %struct.b3SpatialHash, align 8      ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !40   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !158
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.c, ptr %i.h, align 8, !tbaa !159
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i64 %i.e, ptr %i.i, align 8, !tbaa !160
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 76 ; 2 uses
  store float %1, ptr %i.j, align 4, !tbaa !161
  %i.k = fmul float %1, 2.000000e+00
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  store float %i.k, ptr %i.l, align 8, !tbaa !162
  %i.m = icmp sgt i32 %i.c, 0                     ; 2 uses
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = shl i32 %i.c, 3
  %i.o = tail call ptr @b3GrowAlloc(ptr noundef null, i32 noundef 0, i32 noundef %i.n) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ]
  store ptr %i.p, ptr %3, align 8, !tbaa !163
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.q, align 8, !tbaa !164
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  store i32 %i.c, ptr %i.r, align 4, !tbaa !165
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  store ptr @vt_empty_placeholder_metadatum, ptr %i.t, align 8, !tbaa !61
  %i.u = icmp eq i32 %i.c, 0
  br i1 %i.u, label %._crit_edge, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.v = sext i32 %i.c to i64
  %i.w = uitofp i64 %i.v to double
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.i.i
  %.0.i.i.i = phi i64 [ %i.aa, %bb.d ], [ 8, %.preheader.i.i.i ] ; 4 uses
  %i.x = uitofp i64 %.0.i.i.i to double
  %i.y = fmul nnan double %i.x, 9.000000e-01
  %i.z = fcmp olt double %i.y, %i.w
  %i.aa = shl i64 %.0.i.i.i, 1
  br i1 %i.z, label %bb.d, label %b3VertexMap_min_bucket_count_for_size.exit.i.i, !llvm.loop !142

b3VertexMap_min_bucket_count_for_size.exit.i.i:   ; preds = %bb.d
  %.not.i.not.i = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i.not.i, label %b3CreateSpatialHash.exit, label %bb.e

bb.e:                                             ; preds = %b3VertexMap_min_bucket_count_for_size.exit.i.i
  %i.ab = call fastcc zeroext i1 @b3VertexMap_rehash(ptr noundef nonnull %i.s, i64 noundef %.0.i.i.i) ; 0 uses
  br label %b3CreateSpatialHash.exit

b3CreateSpatialHash.exit:                         ; preds = %b3VertexMap_min_bucket_count_for_size.exit.i.i, %bb.e
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %b3CreateSpatialHash.exit
  %i.ac = shl i32 %i.c, 2
  %i.ad = tail call ptr @b3GrowAlloc(ptr noundef null, i32 noundef 0, i32 noundef %i.ac) #17 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext nneg i32 %i.c to i64
  %.pre = load ptr, ptr %3, align 8               ; 2 uses
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %bb.ar
  %4 = zext nneg i32 %i.c to i64
  %5 = shl nuw nsw i64 %4, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %b3CreateSpatialHash.exit, %bb.c
  %.sroa.017.0120 = phi ptr [ null, %b3CreateSpatialHash.exit ], [ null, %bb.c ], [ %i.ad, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.13.0119 = phi i64 [ 0, %b3CreateSpatialHash.exit ], [ 0, %bb.c ], [ %5, %._crit_edge.loopexit ]
  %.045.lcssa = phi i32 [ 0, %b3CreateSpatialHash.exit ], [ 0, %bb.c ], [ %.1, %._crit_edge.loopexit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !41 ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph72, label %._crit_edge73

.lr.ph72:                                         ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !39 ; 5 uses
  %wide.trip.count93 = zext nneg i32 %i.ak to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count93, 3       ; 3 uses
  %i.aq = icmp ult i32 %i.ak, 4
  br i1 %i.aq, label %.epil.preheader, label %.lr.ph72.new

.lr.ph72.new:                                     ; preds = %.lr.ph72
  %unroll_iter = and i64 %wide.trip.count93, 2147483644
  br label %bb.au

bb.f:                                             ; preds = %.lr.ph, %bb.ar
  %.pre.i = phi ptr [ %.pre, %.lr.ph ], [ %.pre.i95, %bb.ar ] ; 4 uses
  %i.ar = phi ptr [ %.pre, %.lr.ph ], [ %i.js, %bb.ar ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ar ] ; 6 uses
  %.04569 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.ar ] ; 4 uses
  %i.as = load i64, ptr %i.i, align 8, !tbaa !160 ; 4 uses
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !158 ; 4 uses
  %i.au = mul i64 %i.as, %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au ; 2 uses
  %.sroa.02.0.copyload.i.i = load <2 x float>, ptr %i.av, align 4 ; 7 uses
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.23.0.copyload.i.i = load float, ptr %.sroa.23.0..sroa_idx.i.i, align 4, !tbaa !16 ; 4 uses
  %i.aw = load float, ptr %i.l, align 8, !tbaa !162 ; 2 uses
  %i.ax = load float, ptr %i.j, align 4, !tbaa !161 ; 9 uses
  %i.ay = fdiv float %.sroa.23.0.copyload.i.i, %i.aw
  %i.az = tail call float @llvm.floor.f32(float %i.ay)
  %i.ba = fptosi float %i.az to i32
  %i.bb = load i64, ptr %i.ae, align 8, !tbaa !62, !noalias !166 ; 9 uses
  %i.bc = load ptr, ptr %i.t, align 8, !tbaa !61, !noalias !166 ; 8 uses
  %i.bd = add nuw nsw i64 %i.bb, 1                ; 4 uses
  %i.be = sext i32 %i.ba to i64                   ; 4 uses
  %i.bf = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fdiv <2 x float> %.sroa.02.0.copyload.i.i, %i.bg
  %i.bi = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bh)
  %i.bj = fptosi <2 x float> %i.bi to <2 x i32>   ; 2 uses
  %i.bk = extractelement <2 x i32> %i.bj, i64 0
  %i.bl = sext i32 %i.bk to i64
  %invariant.op236.i = add nsw i64 %i.bl, 2654435769 ; 4 uses
  %i.bm = add nsw i64 %i.be, -1
  %i.bn = add nsw i64 %i.be, 1
  %i.bo = extractelement <2 x i32> %i.bj, i64 1
  %i.bp = sext i32 %i.bo to i64
  %i.bq = add nsw i64 %i.bp, 2654435769           ; 2 uses
  %i.br = load ptr, ptr %i.af, align 8            ; 4 uses
  br label %.preheader183.i

.preheader183.i:                                  ; preds = %.thread172.i, %bb.f
  %indvars.iv203.i = phi i64 [ -1, %bb.f ], [ %indvars.iv.next204.i, %.thread172.i ] ; 2 uses
  %.reass237.i = add nsw i64 %indvars.iv203.i, %invariant.op236.i ; 3 uses
  %i.bs = shl nuw nsw i64 %.reass237.i, 6
  %i.bt = lshr i64 %.reass237.i, 2
  %i.bu = add nuw nsw i64 %i.bq, %i.bs
  %invariant.op.i = add nuw nsw i64 %i.bu, %i.bt
  br label %.preheader.i

.preheader.i:                                     ; preds = %b3VertexMap_get.exit.thread.2.i, %.preheader183.i
  %indvars.iv.i = phi i64 [ -1, %.preheader183.i ], [ %indvars.iv.next.i, %b3VertexMap_get.exit.thread.2.i ] ; 2 uses
  %.reass.i = add nsw i64 %invariant.op.i, %indvars.iv.i
  %i.bv = xor i64 %.reass.i, %.reass237.i         ; 5 uses
  %i.bw = shl nuw nsw i64 %i.bv, 6
  %i.bx = lshr i64 %i.bv, 2
  %i.by = add nuw nsw i64 %i.bw, 2654435769
  %i.bz = add nuw nsw i64 %i.by, %i.bx            ; 3 uses
  %i.ca = add nsw i64 %i.bm, %i.bz
  %i.cb = xor i64 %i.ca, %i.bv                    ; 3 uses
  %i.cc = lshr i64 %i.cb, 23
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = mul i64 %i.cd, 2388976653695081527      ; 3 uses
  %i.cf = lshr i64 %i.ce, 47
  %i.cg = xor i64 %i.cf, %i.ce
  %i.ch = and i64 %i.cg, %i.bb                    ; 3 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !64, !noalias !166 ; 2 uses
  %i.ck = and i16 %i.cj, 2048
  %.not.i.i = icmp eq i16 %i.ck, 0
  br i1 %.not.i.i, label %b3VertexMap_get.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.cl = lshr i64 %i.ce, 48
  %i.cm = trunc nuw i64 %i.cl to i16
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  %i.cn = phi i16 [ %i.cj, %bb.g ], [ %.pre.i.i, %bb.k ] ; 2 uses
  %.0.i.i = phi i64 [ %i.ch, %bb.g ], [ %i.cz, %bb.k ] ; 2 uses
  %i.co = xor i16 %i.cn, %i.cm
  %i.cp = icmp ult i16 %i.co, 4096
  br i1 %i.cp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %.0.i.i ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !66, !noalias !166
  %i.cs = icmp eq i64 %i.cr, %i.cb
  br i1 %i.cs, label %b3VertexMap_get.exit.i, label %bb.j, !prof !67

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ct = and i16 %i.cn, 2047                     ; 2 uses
  %.not27.i.i = icmp eq i16 %i.ct, 2047
  br i1 %.not27.i.i, label %b3VertexMap_get.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cu = zext nneg i16 %i.ct to i64              ; 2 uses
  %i.cv = add nuw nsw i64 %i.cu, 1
  %i.cw = mul nuw nsw i64 %i.cv, %i.cu
  %i.cx = lshr i64 %i.cw, 1
  %i.cy = add i64 %i.cx, %i.ch
  %i.cz = and i64 %i.cy, %i.bb                    ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.cz
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2, !tbaa !64, !noalias !166
  br label %bb.h

b3VertexMap_get.exit.i:                           ; preds = %bb.i
  %i.da = icmp eq i64 %.0.i.i, %i.bd
  br i1 %i.da, label %b3VertexMap_get.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %b3VertexMap_get.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !68 ; 2 uses
  %.not187.i = icmp eq i32 %i.dc, -1
  br i1 %.not187.i, label %b3VertexMap_get.exit.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.o
  %.0121188.i = phi i32 [ %.sroa.432.0.copyload.i, %bb.o ], [ %i.dc, %bb.l ]
  %i.dd = sext i32 %.0121188.i to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.dd ; 2 uses
  %.sroa.031.0.copyload.i = load i32, ptr %i.de, align 4, !tbaa !18 ; 2 uses
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %.sroa.432.0.copyload.i = load i32, ptr %.sroa.432.0..sroa_idx.i, align 4, !tbaa !18 ; 2 uses
  %i.df = sext i32 %.sroa.031.0.copyload.i to i64
  %i.dg = mul i64 %i.as, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.dg ; 2 uses
  %.sroa.02.0.copyload.i142.i = load <2 x float>, ptr %i.dh, align 4 ; 2 uses
  %.sroa.23.0..sroa_idx.i143.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.23.0.copyload.i144.i = load float, ptr %.sroa.23.0..sroa_idx.i143.i, align 4, !tbaa !16
  %foldExtExtBinop = fsub <2 x float> %.sroa.02.0.copyload.i.i, %.sroa.02.0.copyload.i142.i
  %i.di = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dj = tail call float @llvm.fabs.f32(float %i.di)
  %i.dk = fcmp ugt float %i.dj, %i.ax
  br i1 %i.dk, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %foldExtExtBinop158 = fsub <2 x float> %.sroa.02.0.copyload.i.i, %.sroa.02.0.copyload.i142.i
  %i.dl = extractelement <2 x float> %foldExtExtBinop158, i64 1
  %i.dm = tail call float @llvm.fabs.f32(float %i.dl)
  %i.dn = fcmp ugt float %i.dm, %i.ax
  br i1 %i.dn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = fsub float %.sroa.23.0.copyload.i.i, %.sroa.23.0.copyload.i144.i
  %i.dp = tail call float @llvm.fabs.f32(float %i.do)
  %i.dq = fcmp ugt float %i.dp, %i.ax
  br i1 %i.dq, label %bb.o, label %b3SpatialHash_FindDuplicate.exit

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph.i
  %.not.i = icmp eq i32 %.sroa.432.0.copyload.i, -1
  br i1 %.not.i, label %b3VertexMap_get.exit.thread.i, label %.lr.ph.i, !llvm.loop !145

b3VertexMap_get.exit.thread.i:                    ; preds = %bb.j, %bb.o, %bb.l, %b3VertexMap_get.exit.i, %.preheader.i
  %i.dr = add nsw i64 %i.bz, %i.be
  %i.ds = xor i64 %i.dr, %i.bv                    ; 3 uses
  %i.dt = lshr i64 %i.ds, 23
  %i.du = xor i64 %i.dt, %i.ds
  %i.dv = mul i64 %i.du, 2388976653695081527      ; 3 uses
  %i.dw = lshr i64 %i.dv, 47
  %i.dx = xor i64 %i.dw, %i.dv
  %i.dy = and i64 %i.dx, %i.bb                    ; 3 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !64, !noalias !166 ; 2 uses
  %i.eb = and i16 %i.ea, 2048
  %.not.i.1.i = icmp eq i16 %i.eb, 0
  br i1 %.not.i.1.i, label %b3VertexMap_get.exit.thread.1.i, label %bb.p

bb.p:                                             ; preds = %b3VertexMap_get.exit.thread.i
  %i.ec = lshr i64 %i.dv, 48
  %i.ed = trunc nuw i64 %i.ec to i16
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.p
  %i.ee = phi i16 [ %i.ea, %bb.p ], [ %.pre.i.1.i, %bb.t ] ; 2 uses
  %.0.i.1.i = phi i64 [ %i.dy, %bb.p ], [ %i.eq, %bb.t ] ; 2 uses
  %i.ef = xor i16 %i.ee, %i.ed
  %i.eg = icmp ult i16 %i.ef, 4096
  br i1 %i.eg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %.0.i.1.i ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !66, !noalias !166
  %i.ej = icmp eq i64 %i.ei, %i.ds
  br i1 %i.ej, label %b3VertexMap_get.exit.1.i, label %bb.s, !prof !67

end_hunk_2
begin_hunk_3_@b3WeldVertices:bb.a

bb.ae:                                            ; preds = %.lr.ph.2.i
  %foldExtExtBinop166 = fsub <2 x float> %.sroa.02.0.copyload.i.i, %.sroa.02.0.copyload.i142.2.i
  %i.gt = extractelement <2 x float> %foldExtExtBinop166, i64 1
  %i.gu = tail call float @llvm.fabs.f32(float %i.gt)
  %i.gv = fcmp ugt float %i.gu, %i.ax
  br i1 %i.gv, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gw = fsub float %.sroa.23.0.copyload.i.i, %.sroa.23.0.copyload.i144.2.i
  %i.gx = tail call float @llvm.fabs.f32(float %i.gw)
  %i.gy = fcmp ugt float %i.gx, %i.ax
  br i1 %i.gy, label %bb.ag, label %b3SpatialHash_FindDuplicate.exit

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.lr.ph.2.i
  %.not.2.i = icmp eq i32 %.sroa.432.0.copyload.2.i, -1
  br i1 %.not.2.i, label %b3VertexMap_get.exit.thread.2.i, label %.lr.ph.2.i, !llvm.loop !145

b3VertexMap_get.exit.thread.2.i:                  ; preds = %bb.ab, %bb.ag, %bb.ad, %b3VertexMap_get.exit.2.i, %b3VertexMap_get.exit.thread.1.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 2
  br i1 %exitcond.i, label %.thread172.i, label %.preheader.i, !llvm.loop !146

.thread172.i:                                     ; preds = %b3VertexMap_get.exit.thread.2.i
  %indvars.iv.next204.i = add nsw i64 %indvars.iv203.i, 1 ; 2 uses
  %exitcond206.i = icmp eq i64 %indvars.iv.next204.i, 2
  br i1 %exitcond206.i, label %.thread175.i, label %.preheader183.i, !llvm.loop !147

.thread175.i:                                     ; preds = %.thread172.i
  %i.gz = shl nuw nsw i64 %invariant.op236.i, 6
  %i.ha = add nuw nsw i64 %i.bq, %i.gz
  %i.hb = lshr i64 %invariant.op236.i, 2
  %i.hc = add nuw nsw i64 %i.ha, %i.hb
  %i.hd = xor i64 %i.hc, %invariant.op236.i       ; 3 uses
  %i.he = add nsw i64 %i.be, 2654435769
  %i.hf = shl nuw nsw i64 %i.hd, 6
  %i.hg = add nuw nsw i64 %i.he, %i.hf
  %i.hh = lshr i64 %i.hd, 2
  %i.hi = add nuw nsw i64 %i.hg, %i.hh
  %i.hj = xor i64 %i.hi, %i.hd                    ; 4 uses
  %i.hk = lshr i64 %i.hj, 23
  %i.hl = xor i64 %i.hk, %i.hj
  %i.hm = mul i64 %i.hl, 2388976653695081527      ; 3 uses
  %i.hn = lshr i64 %i.hm, 47
  %i.ho = xor i64 %i.hn, %i.hm
  %i.hp = and i64 %i.ho, %i.bb                    ; 3 uses
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.hp
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !64, !noalias !167 ; 2 uses
  %i.hs = and i16 %i.hr, 2048
  %.not.i147.i = icmp eq i16 %i.hs, 0
  br i1 %.not.i147.i, label %b3VertexMap_get.exit153.thread.i, label %bb.ah

bb.ah:                                            ; preds = %.thread175.i
  %i.ht = lshr i64 %i.hm, 48
  %i.hu = trunc nuw i64 %i.ht to i16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.al, %bb.ah
  %i.hv = phi i16 [ %i.hr, %bb.ah ], [ %.pre.i151.i, %bb.al ] ; 2 uses
  %.0.i148.i = phi i64 [ %i.hp, %bb.ah ], [ %i.ih, %bb.al ] ; 2 uses
  %i.hw = xor i16 %i.hv, %i.hu
  %i.hx = icmp ult i16 %i.hw, 4096
  br i1 %i.hx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %.0.i148.i ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !66, !noalias !167
  %i.ia = icmp eq i64 %i.hz, %i.hj
  br i1 %i.ia, label %b3VertexMap_get.exit153.i, label %bb.ak, !prof !67

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ib = and i16 %i.hv, 2047                     ; 2 uses
  %.not27.i149.i = icmp eq i16 %i.ib, 2047
  br i1 %.not27.i149.i, label %b3VertexMap_get.exit153.thread.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ic = zext nneg i16 %i.ib to i64              ; 2 uses
  %i.id = add nuw nsw i64 %i.ic, 1
  %i.ie = mul nuw nsw i64 %i.id, %i.ic
  %i.if = lshr i64 %i.ie, 1
  %i.ig = add i64 %i.if, %i.hp
  %i.ih = and i64 %i.ig, %i.bb                    ; 2 uses
  %.phi.trans.insert.i150.i = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.ih
  %.pre.i151.i = load i16, ptr %.phi.trans.insert.i150.i, align 2, !tbaa !64, !noalias !167
  br label %bb.ai

b3VertexMap_get.exit153.i:                        ; preds = %bb.aj
  %i.ii = icmp eq i64 %.0.i148.i, %i.bd
  br i1 %i.ii, label %b3VertexMap_get.exit153.thread.i, label %bb.am

bb.am:                                            ; preds = %b3VertexMap_get.exit153.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !68 ; 2 uses
  %i.il = load i32, ptr %i.q, align 8, !tbaa !164 ; 4 uses
  store i32 %i.il, ptr %i.ij, align 8, !tbaa !68
  %i.im = load i32, ptr %i.r, align 4, !tbaa !165 ; 2 uses
  %.not136.i = icmp slt i32 %i.il, %i.im
  br i1 %.not136.i, label %b3SpatialHash_FindDuplicate.exit.thread, label %b3SpatialHash_FindDuplicate.exit.thread.sink.split

b3VertexMap_get.exit153.thread.i:                 ; preds = %bb.ak, %b3VertexMap_get.exit153.i, %.thread175.i
  %i.in = load i32, ptr %i.q, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.in, ptr %i.a, align 4, !tbaa !18, !noalias !168
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %b3VertexMap_get.exit153.thread.i
  call fastcc void @b3VertexMap_insert_raw(ptr dead_on_unwind noalias nonnull writable align 8 %2, ptr noundef nonnull %i.s, i64 noundef range(i64 0, 70368744177664) %i.hj, ptr noundef nonnull %i.a, i1 noundef zeroext false, i1 noundef zeroext true)
  %.val4.i.i = load ptr, ptr %i.ag, align 8, !tbaa !70, !alias.scope !168
  %.val5.i.i = load ptr, ptr %i.ah, align 8, !tbaa !71, !alias.scope !168
  %i.io = icmp eq ptr %.val4.i.i, %.val5.i.i
  br i1 %i.io, label %bb.ao, label %b3VertexMap_insert.exit.i, !prof !72

bb.ao:                                            ; preds = %bb.an
  %i.ip = load i64, ptr %i.ae, align 8, !tbaa !62, !noalias !168 ; 2 uses
  %.not.i154.i = icmp eq i64 %i.ip, 0
  %i.iq = shl i64 %i.ip, 1
  %i.ir = add i64 %i.iq, 2
  %i.is = select i1 %.not.i154.i, i64 8, i64 %i.ir
  %i.it = call fastcc zeroext i1 @b3VertexMap_rehash(ptr noundef nonnull %i.s, i64 noundef %i.is), !noalias !168
  br i1 %i.it, label %bb.an, label %b3VertexMap_insert.exit.i, !prof !67

b3VertexMap_insert.exit.i:                        ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.iu = load i32, ptr %i.q, align 8, !tbaa !164 ; 3 uses
  %i.iv = load i32, ptr %i.r, align 4, !tbaa !165 ; 2 uses
  %.not135.i = icmp slt i32 %i.iu, %i.iv
  %.pre208.i = load ptr, ptr %3, align 8, !tbaa !163 ; 2 uses
  br i1 %.not135.i, label %b3SpatialHash_FindDuplicate.exit.thread, label %b3SpatialHash_FindDuplicate.exit.thread.sink.split

b3SpatialHash_FindDuplicate.exit.thread.sink.split: ; preds = %b3VertexMap_insert.exit.i, %bb.am
  %.sink = phi i32 [ %i.im, %bb.am ], [ %i.iv, %b3VertexMap_insert.exit.i ] ; 3 uses
  %.pre208.i.sink = phi ptr [ %.pre.i, %bb.am ], [ %.pre208.i, %b3VertexMap_insert.exit.i ]
  %.sink242.i.ph = phi i32 [ %i.il, %bb.am ], [ %i.iu, %b3VertexMap_insert.exit.i ]
  %.sink.i.ph = phi i32 [ %i.ik, %bb.am ], [ -1, %b3VertexMap_insert.exit.i ]
  %i.iw = shl i32 %.sink, 3
  %i.ix = icmp eq i32 %.sink, 0
  %i.iy = shl nsw i32 %.sink, 1
  %spec.select137.i = select i1 %i.ix, i32 8, i32 %i.iy ; 2 uses
  %i.iz = shl i32 %spec.select137.i, 3
  %i.ja = tail call ptr @b3GrowAlloc(ptr noundef %.pre208.i.sink, i32 noundef %i.iw, i32 noundef %i.iz) #17 ; 2 uses
  store ptr %i.ja, ptr %3, align 8, !tbaa !163
  store i32 %spec.select137.i, ptr %i.r, align 4, !tbaa !165
  br label %b3SpatialHash_FindDuplicate.exit.thread

b3SpatialHash_FindDuplicate.exit.thread:          ; preds = %b3SpatialHash_FindDuplicate.exit.thread.sink.split, %b3VertexMap_insert.exit.i, %bb.am
  %.pre.i97 = phi ptr [ %.pre.i, %bb.am ], [ %.pre208.i, %b3VertexMap_insert.exit.i ], [ %i.ja, %b3SpatialHash_FindDuplicate.exit.thread.sink.split ] ; 3 uses
  %.sink242.i = phi i32 [ %i.il, %bb.am ], [ %i.iu, %b3VertexMap_insert.exit.i ], [ %.sink242.i.ph, %b3SpatialHash_FindDuplicate.exit.thread.sink.split ] ; 2 uses
  %.sink.i = phi i32 [ %i.ik, %bb.am ], [ -1, %b3VertexMap_insert.exit.i ], [ %.sink.i.ph, %b3SpatialHash_FindDuplicate.exit.thread.sink.split ]
  %storemerge = add nsw i32 %.sink242.i, 1
  store i32 %storemerge, ptr %i.q, align 8, !tbaa !164
  %i.jb = sext i32 %.sink242.i to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %.pre.i97, i64 %i.jb ; 2 uses
  %i.jd = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.jd, ptr %i.jc, align 4, !tbaa !18
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  store i32 %.sink.i, ptr %.sroa.414.0..sroa_idx.i, align 4, !tbaa !18
  br label %bb.ap

b3SpatialHash_FindDuplicate.exit:                 ; preds = %bb.n, %bb.w, %bb.af
  %.11.i = phi i32 [ %.sroa.031.0.copyload.1.i, %bb.w ], [ %.sroa.031.0.copyload.2.i, %bb.af ], [ %.sroa.031.0.copyload.i, %bb.n ] ; 2 uses
  %i.je = icmp eq i32 %.11.i, -1
  br i1 %i.je, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %b3SpatialHash_FindDuplicate.exit.thread, %b3SpatialHash_FindDuplicate.exit
  %.pre.i96 = phi ptr [ %.pre.i97, %b3SpatialHash_FindDuplicate.exit.thread ], [ %.pre.i, %b3SpatialHash_FindDuplicate.exit ]
  %i.jf = phi ptr [ %.pre.i97, %b3SpatialHash_FindDuplicate.exit.thread ], [ %i.ar, %b3SpatialHash_FindDuplicate.exit ]
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  store i32 %.04569, ptr %i.jg, align 4, !tbaa !18
  %i.jh = load ptr, ptr %i.ai, align 8, !tbaa !38
  %i.ji = sext i32 %.04569 to i64
  %i.jj = getelementptr inbounds [12 x i8], ptr %i.jh, i64 %i.ji ; 2 uses
  %i.jk = load ptr, ptr %0, align 8, !tbaa !36
  %i.jl = mul i64 %i.e, %indvars.iv
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jl ; 2 uses
  %.sroa.02.0.copyload.i = load <2 x float>, ptr %i.jm, align 4
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %.sroa.23.0.copyload.i = load float, ptr %.sroa.23.0..sroa_idx.i, align 4, !tbaa !16
  store <2 x float> %.sroa.02.0.copyload.i, ptr %i.jj, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store float %.sroa.23.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !16
  %i.jn = add nsw i32 %.04569, 1
  br label %bb.ar

bb.aq:                                            ; preds = %b3SpatialHash_FindDuplicate.exit
  %i.jo = sext i32 %.11.i to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !18
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  store i32 %i.jq, ptr %i.jr, align 4, !tbaa !18
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pre.i95 = phi ptr [ %.pre.i96, %bb.ap ], [ %.pre.i, %bb.aq ]
  %i.js = phi ptr [ %i.jf, %bb.ap ], [ %i.ar, %bb.aq ]
  %.1 = phi i32 [ %i.jn, %bb.ap ], [ %.04569, %bb.aq ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !152

._crit_edge73.loopexit.unr-lcssa:                 ; preds = %bb.au
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge73, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge73.loopexit.unr-lcssa, %.lr.ph72
  %indvars.iv90.epil.init = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next91.3, %._crit_edge73.loopexit.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.epil.preheader
  %indvars.iv90.epil = phi i64 [ %indvars.iv90.epil.init, %.epil.preheader ], [ %indvars.iv.next91.epil, %bb.as ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.as ]
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv90.epil
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !18
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %.sroa.017.0120, i64 %i.jv
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !18
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv90.epil
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !18
  %indvars.iv.next91.epil = add nuw nsw i64 %indvars.iv90.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge73, label %bb.as, !llvm.loop !153

._crit_edge73:                                    ; preds = %._crit_edge73.loopexit.unr-lcssa, %bb.as, %._crit_edge
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !62 ; 2 uses
  %.not.i.i49 = icmp eq i64 %i.ka, 0
  br i1 %.not.i.i49, label %b3DestroySpatialHash.exit, label %bb.at

bb.at:                                            ; preds = %._crit_edge73
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !73
  %i.kd = mul i64 %i.ka, 18
  %i.ke = add i64 %i.kd, 26
  tail call void @b3Free(ptr noundef %i.kc, i64 noundef %i.ke) #17
  br label %b3DestroySpatialHash.exit

b3DestroySpatialHash.exit:                        ; preds = %._crit_edge73, %bb.at
  %i.kf = load ptr, ptr %3, align 8, !tbaa !163
  %i.kg = load i32, ptr %i.r, align 4, !tbaa !165
  %i.kh = sext i32 %i.kg to i64
  %i.ki = shl nsw i64 %i.kh, 3
  tail call void @b3Free(ptr noundef %i.kf, i64 noundef %i.ki) #17
  tail call void @b3Free(ptr noundef %.sroa.017.0120, i64 noundef %.sroa.13.0119) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.045.lcssa

bb.au:                                            ; preds = %bb.au, %.lr.ph72.new
  %indvars.iv90 = phi i64 [ 0, %.lr.ph72.new ], [ %indvars.iv.next91.3, %bb.au ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph72.new ], [ %niter.next.3, %bb.au ]
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv90
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !18
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [4 x i8], ptr %.sroa.017.0120, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !18
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv90
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !18
  %indvars.iv.next91 = or disjoint i64 %indvars.iv90, 1 ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next91
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !18
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [4 x i8], ptr %.sroa.017.0120, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !18
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next91
  store i32 %i.kt, ptr %i.ku, align 4, !tbaa !18
  %indvars.iv.next91.1 = or disjoint i64 %indvars.iv90, 2 ; 2 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next91.1
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !18
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [4 x i8], ptr %.sroa.017.0120, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !18
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next91.1
  store i32 %i.kz, ptr %i.la, align 4, !tbaa !18
  %indvars.iv.next91.2 = or disjoint i64 %indvars.iv90, 3 ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next91.2
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !18
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [4 x i8], ptr %.sroa.017.0120, i64 %i.ld
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !18
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next91.2
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !18
  %indvars.iv.next91.3 = add nuw nsw i64 %indvars.iv90, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge73.loopexit.unr-lcssa, label %bb.au, !llvm.loop !154
}

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #6

declare zeroext i1 @b3IsSaneAABB(ptr noundef byval(%struct.b3AABB) align 8) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @b3BuildRecursive(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #7 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  %i.b = alloca [3 x float], align 8              ; 5 uses
  %i.c = alloca [3 x float], align 4              ; 6 uses
  %i.d = alloca [3 x float], align 4              ; 6 uses
  %i.e = alloca [3 x float], align 4              ; 6 uses
  %i.f = alloca [3 x float], align 8              ; 5 uses
  %i.g = alloca [3 x float], align 4              ; 6 uses
  %i.h = alloca [3 x float], align 4              ; 6 uses
  %i.i = alloca [3 x float], align 8              ; 5 uses
  %6 = alloca [8 x %struct.b3Bucket], align 16    ; 61 uses
  %7 = alloca %struct.b3Primitive, align 4        ; 4 uses
  %8 = alloca %struct.b3Primitive, align 4        ; 4 uses
  %9 = alloca %struct.b3Primitive, align 4        ; 4 uses
  %10 = alloca %struct.b3Primitive, align 4       ; 4 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = icmp sgt i32 %1, 4
  br i1 %i.l, label %bb.b, label %.preheader278

.preheader278:                                    ; preds = %bb.a
  %i.m = icmp sgt i32 %1, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0134.0.copyload.i = load <2 x float>, ptr %i.n, align 4, !noalias !34 ; 4 uses
  %.sroa.7137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7137.0.copyload.i = load float, ptr %.sroa.7137.0..sroa_idx.i, align 4, !tbaa !16, !noalias !34 ; 4 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 7 uses
  br i1 %4, label %.preheader, label %.preheader487

bb.c:                                             ; preds = %.preheader
  %i.o = fsub <2 x float> %i.ah, %i.af            ; 2 uses
  %i.p = fsub float %i.aj, %i.ad                  ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %i.ah, %i.af
  %i.q = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop548 = fadd <2 x float> %i.ah, %i.af
  %i.r = extractelement <2 x float> %foldExtExtBinop548, i64 1
  %i.s = fadd float %i.aj, %i.ad
  %i.t = fmul float %i.q, 5.000000e-01            ; 2 uses
  %i.u = fmul float %i.r, 5.000000e-01            ; 2 uses
  %i.v = fmul float %i.s, 5.000000e-01            ; 2 uses
  %i.w = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %i.x = extractelement <2 x float> %i.o, i64 1   ; 2 uses
  %i.y = fcmp ult float %i.w, %i.x
  %i.z = fcmp ult float %i.w, %i.p
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i, label %bb.g, label %.preheader296.i

.preheader:                                       ; preds = %bb.b, %.preheader
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader ], [ 1, %bb.b ] ; 2 uses
  %.sroa.7137.0310.i = phi float [ %i.ad, %.preheader ], [ %.sroa.7137.0.copyload.i, %bb.b ] ; 2 uses
  %.sroa.0134.0309.i = phi <2 x float> [ %i.af, %.preheader ], [ %.sroa.0134.0.copyload.i, %bb.b ] ; 2 uses
  %.sroa.7133.0308.i = phi float [ %i.aj, %.preheader ], [ %.sroa.7137.0.copyload.i, %bb.b ] ; 2 uses
  %.sroa.0130.0307.i = phi <2 x float> [ %i.ah, %.preheader ], [ %.sroa.0134.0.copyload.i, %bb.b ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.0120.0.copyload.i = load <2 x float>, ptr %i.ab, align 4, !noalias !196 ; 4 uses
  %.sroa.2121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.2121.0.copyload.i = load float, ptr %.sroa.2121.0..sroa_idx.i, align 4, !noalias !196 ; 4 uses
  %i.ac = fcmp olt float %.sroa.7137.0310.i, %.sroa.2121.0.copyload.i
  %i.ad = select i1 %i.ac, float %.sroa.7137.0310.i, float %.sroa.2121.0.copyload.i ; 3 uses
  %i.ae = fcmp olt <2 x float> %.sroa.0134.0309.i, %.sroa.0120.0.copyload.i
  %i.af = select <2 x i1> %i.ae, <2 x float> %.sroa.0134.0309.i, <2 x float> %.sroa.0120.0.copyload.i ; 4 uses
  %i.ag = fcmp ogt <2 x float> %.sroa.0130.0307.i, %.sroa.0120.0.copyload.i
  %i.ah = select <2 x i1> %i.ag, <2 x float> %.sroa.0130.0307.i, <2 x float> %.sroa.0120.0.copyload.i ; 4 uses
  %i.ai = fcmp ogt float %.sroa.7133.0308.i, %.sroa.2121.0.copyload.i
  %i.aj = select i1 %i.ai, float %.sroa.7133.0308.i, float %.sroa.2121.0.copyload.i ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.c, label %.preheader, !llvm.loop !172

.preheader296.i:                                  ; preds = %bb.c, %.critedge180.i
  %.0168313.i = phi i32 [ %.2.i, %.critedge180.i ], [ %1, %bb.c ] ; 3 uses
  %.0169312.i = phi i32 [ %.2171.i, %.critedge180.i ], [ 0, %bb.c ] ; 2 uses
  %i.ak = sext i32 %.0169312.i to i64
  %i.al = sext i32 %.0168313.i to i64             ; 3 uses
  %i.am = add nsw i32 %.0169312.i, 1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.0168313.i, i32 %i.am)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader296.i
  %indvars.iv359.i = phi i64 [ %i.ak, %.preheader296.i ], [ %indvars.iv.next360.i, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds [40 x i8], ptr %2, i64 %indvars.iv359.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !198, !noalias !196
  %i.aq = fcmp olt float %i.ap, %i.t
  br i1 %i.aq, label %bb.e, label %.critedge.split.loop.exit409.i

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next360.i = add nsw i64 %indvars.iv359.i, 1 ; 2 uses
  %i.ar = icmp slt i64 %indvars.iv.next360.i, %i.al
  br i1 %i.ar, label %bb.d, label %.critedge.i, !llvm.loop !173

.critedge.split.loop.exit409.i:                   ; preds = %bb.d
  %i.as = trunc nsw i64 %indvars.iv359.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %.critedge.split.loop.exit409.i
  %.1170.lcssa.i = phi i32 [ %i.as, %.critedge.split.loop.exit409.i ], [ %smax.i, %bb.e ] ; 5 uses
  %i.at = sext i32 %.1170.lcssa.i to i64          ; 3 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.al, i64 %i.at) ; 2 uses
  %i.au = icmp sgt i32 %.0168313.i, %.1170.lcssa.i
end_hunk_3
begin_hunk_4_@b3SortMeshTriangles:bb.a
  %.pr = load i32, ptr %i.o, align 4, !tbaa !48   ; 5 uses
  %i.t = icmp sgt i32 %.pr, 0
  br i1 %i.t, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.u = tail call ptr @b3GrowAlloc(ptr noundef null, i32 noundef 0, i32 noundef %.pr) #17
  %.pre = load i32, ptr %i.o, align 4, !tbaa !48
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %i.v = phi i32 [ %.pre, %bb.c ], [ %.pr, %bb.b ], [ %i.p, %bb.a ]
  %i.w = phi ptr [ %i.s, %bb.c ], [ %i.s, %bb.b ], [ null, %bb.a ]
  %i.x = phi i32 [ %.pr, %bb.c ], [ %.pr, %bb.b ], [ %i.p, %bb.a ]
  %i.y = phi ptr [ %i.u, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !13  ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = sext i32 %i.aa to i64
  %i.ad = add nsw i64 %i.ac, %i.e
  %i.ae = inttoptr i64 %i.ad to ptr
  %.0.i.i = select i1 %i.ab, ptr null, ptr %i.ae
  store ptr %.0.i.i, ptr %i.a, align 16, !tbaa !77
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.l
  %.065103 = phi i32 [ 0, %.thread ], [ %.267, %bb.l ] ; 3 uses
  %.sroa.1442.0102 = phi i32 [ %i.x, %.thread ], [ %.sroa.1442.4, %bb.l ] ; 3 uses
  %.sroa.940.0101 = phi i32 [ 0, %.thread ], [ %.sroa.940.3, %bb.l ] ; 3 uses
  %.070100 = phi i32 [ 1, %.thread ], [ %.272, %bb.l ] ; 4 uses
  %.sroa.0.099 = phi ptr [ %i.y, %.thread ], [ %.sroa.0.4, %bb.l ] ; 3 uses
  %.sroa.9.098 = phi i32 [ 0, %.thread ], [ %.sroa.9.3, %bb.l ] ; 3 uses
  %.sroa.14.097 = phi i32 [ %i.v, %.thread ], [ %.sroa.14.4, %bb.l ] ; 3 uses
  %.sroa.036.096 = phi ptr [ %i.w, %.thread ], [ %.sroa.036.4, %bb.l ] ; 3 uses
  %i.af = add nsw i32 %.070100, -1                ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !77 ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 12
  %.val = load i32, ptr %i.aj, align 4            ; 3 uses
  %i.ak = and i32 %.val, 3
  %i.al = icmp eq i32 %i.ak, 3
  br i1 %i.al, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = icmp samesign ugt i32 %.070100, 254
  br i1 %i.am, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = lshr i32 %.val, 2
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.ao
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !77
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ar = add nuw nsw i32 %.070100, 1
  %i.as = zext nneg i32 %.070100 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !77
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.au = lshr i32 %.val, 2                       ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 28 ; 2 uses
  %.not104 = icmp eq i32 %i.au, 0
  br i1 %.not104, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !76
  %i.ax = sext i32 %.sroa.940.0101 to i64
  %i.ay = sext i32 %i.aw to i64
  %i.az = sext i32 %.sroa.9.098 to i64
  %wide.trip.count = zext nneg i32 %i.au to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.ba = trunc nsw i64 %indvars.iv.next109 to i32
  %i.bb = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.sroa.036.1.lcssa = phi ptr [ %.sroa.036.096, %bb.g ], [ %.sroa.036.2, %._crit_edge.loopexit ]
  %.sroa.14.1.lcssa = phi i32 [ %.sroa.14.097, %bb.g ], [ %.sroa.14.2, %._crit_edge.loopexit ]
  %.sroa.9.1.lcssa = phi i32 [ %.sroa.9.098, %bb.g ], [ %i.ba, %._crit_edge.loopexit ]
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.099, %bb.g ], [ %.sroa.0.2, %._crit_edge.loopexit ]
  %.sroa.940.1.lcssa = phi i32 [ %.sroa.940.0101, %bb.g ], [ %i.bb, %._crit_edge.loopexit ]
  %.sroa.1442.1.lcssa = phi i32 [ %.sroa.1442.0102, %bb.g ], [ %.sroa.1442.2, %._crit_edge.loopexit ]
  store i32 %.065103, ptr %i.av, align 4, !tbaa !76
  %i.bc = add nsw i32 %i.au, %.065103
  br label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv108 = phi i64 [ %i.az, %.lr.ph.preheader ], [ %indvars.iv.next109, %bb.k ] ; 3 uses
  %indvars.iv106 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next107, %bb.k ] ; 2 uses
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.sroa.1442.190 = phi i32 [ %.sroa.1442.0102, %.lr.ph.preheader ], [ %.sroa.1442.2, %bb.k ] ; 5 uses
  %.sroa.0.187 = phi ptr [ %.sroa.0.099, %.lr.ph.preheader ], [ %.sroa.0.2, %bb.k ] ; 2 uses
  %.sroa.14.185 = phi i32 [ %.sroa.14.097, %.lr.ph.preheader ], [ %.sroa.14.2, %bb.k ] ; 5 uses
  %.sroa.036.184 = phi ptr [ %.sroa.036.096, %.lr.ph.preheader ], [ %.sroa.036.2, %bb.k ] ; 2 uses
  %i.bd = add nsw i64 %indvars.iv106, %i.ay       ; 2 uses
  %i.be = sext i32 %.sroa.1442.190 to i64
  %.not = icmp slt i64 %indvars.iv, %i.be
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.bf = mul i32 %.sroa.1442.190, 12
  %i.bg = icmp eq i32 %.sroa.1442.190, 0
  %i.bh = shl nsw i32 %.sroa.1442.190, 1
  %i.bi = select i1 %i.bg, i32 8, i32 %i.bh       ; 2 uses
  %i.bj = mul i32 %i.bi, 12
  %i.bk = tail call ptr @b3GrowAlloc(ptr noundef %.sroa.036.184, i32 noundef %i.bf, i32 noundef %i.bj) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %.sroa.036.2 = phi ptr [ %i.bk, %bb.h ], [ %.sroa.036.184, %.lr.ph ] ; 3 uses
  %.sroa.1442.2 = phi i32 [ %i.bi, %bb.h ], [ %.sroa.1442.190, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bl = getelementptr inbounds [12 x i8], ptr %.sroa.036.2, i64 %indvars.iv
  %i.bm = getelementptr inbounds [12 x i8], ptr %i.h, i64 %i.bd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bl, ptr noundef nonnull align 4 dereferenceable(12) %i.bm, i64 12, i1 false), !tbaa.struct !208
  %i.bn = sext i32 %.sroa.14.185 to i64
  %.not77 = icmp slt i64 %indvars.iv108, %i.bn
  br i1 %.not77, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = icmp eq i32 %.sroa.14.185, 0
  %i.bp = shl nsw i32 %.sroa.14.185, 1
  %i.bq = select i1 %i.bo, i32 8, i32 %i.bp       ; 2 uses
  %i.br = tail call ptr @b3GrowAlloc(ptr noundef %.sroa.0.187, i32 noundef %.sroa.14.185, i32 noundef %i.bq) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.14.2 = phi i32 [ %i.bq, %bb.j ], [ %.sroa.14.185, %bb.i ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %i.br, %bb.j ], [ %.sroa.0.187, %bb.i ] ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %i.n, i64 %i.bd
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !19
  %indvars.iv.next109 = add nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %.sroa.0.2, i64 %indvars.iv108
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !19
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !206

bb.l:                                             ; preds = %bb.f, %._crit_edge
  %.sroa.036.4 = phi ptr [ %.sroa.036.1.lcssa, %._crit_edge ], [ %.sroa.036.096, %bb.f ] ; 3 uses
  %.sroa.14.4 = phi i32 [ %.sroa.14.1.lcssa, %._crit_edge ], [ %.sroa.14.097, %bb.f ] ; 2 uses
  %.sroa.9.3 = phi i32 [ %.sroa.9.1.lcssa, %._crit_edge ], [ %.sroa.9.098, %bb.f ]
  %.sroa.0.4 = phi ptr [ %.sroa.0.1.lcssa, %._crit_edge ], [ %.sroa.0.099, %bb.f ] ; 3 uses
  %.272 = phi i32 [ %i.af, %._crit_edge ], [ %i.ar, %bb.f ] ; 2 uses
  %.sroa.940.3 = phi i32 [ %.sroa.940.1.lcssa, %._crit_edge ], [ %.sroa.940.0101, %bb.f ]
  %.sroa.1442.4 = phi i32 [ %.sroa.1442.1.lcssa, %._crit_edge ], [ %.sroa.1442.0102, %bb.f ] ; 2 uses
  %.267 = phi i32 [ %i.bc, %._crit_edge ], [ %.065103, %bb.f ]
  %i.bv = icmp slt i32 %.272, 1
  br i1 %i.bv, label %bb.m, label %bb.d, !llvm.loop !207

bb.m:                                             ; preds = %bb.l
  %i.bw = load i32, ptr %i.o, align 4, !tbaa !48
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul nsw i64 %i.bx, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0.i, ptr align 4 %.sroa.036.4, i64 %i.by, i1 false)
  %i.bz = load i32, ptr %i.o, align 4, !tbaa !48
  %i.ca = sext i32 %i.bz to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i78, ptr align 1 %.sroa.0.4, i64 %i.ca, i1 false)
  %i.cb = sext i32 %.sroa.1442.4 to i64
  %i.cc = mul nsw i64 %i.cb, 12
  tail call void @b3Free(ptr noundef %.sroa.036.4, i64 noundef %i.cc) #17
  %i.cd = sext i32 %.sroa.14.4 to i64
  tail call void @b3Free(ptr noundef %.sroa.0.4, i64 noundef %i.cd) #17
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.m
  %i.ce = phi i1 [ true, %bb.m ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i1 %i.ce
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3IdentifyEdges(ptr noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %struct.b3EdgeMap, align 8          ; 12 uses
  %2 = alloca %struct.b3EdgeMap_itr, align 8      ; 5 uses
  %3 = alloca %struct.b3EdgeMap_itr, align 8      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %i.f = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.g = sext i32 %i.d to i64
  %i.h = add nsw i64 %i.g, %i.f
  %i.i = inttoptr i64 %i.h to ptr
  %.0.i = select i1 %i.e, ptr null, ptr %i.i      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  %i.m = sext i32 %i.k to i64
  %i.n = add nsw i64 %i.m, %i.f
  %i.o = inttoptr i64 %i.n to ptr
  %.0.i224 = select i1 %i.l, ptr null, ptr %i.o   ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !52   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.s = load i32, ptr %i.r, align 4, !tbaa !48   ; 5 uses
  %i.t = mul nsw i32 %i.s, 3                      ; 3 uses
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = mul nsw i64 %i.u, 20                     ; 2 uses
  %i.w = tail call ptr @b3Alloc(i64 noundef %i.v) #17 ; 7 uses
  %i.x = sext i32 %i.s to i64
  %i.y = mul nsw i64 %i.x, 12                     ; 2 uses
  %i.z = tail call ptr @b3Alloc(i64 noundef %i.y) #17 ; 4 uses
  %i.aa = icmp sgt i32 %i.s, 0                    ; 3 uses
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %b3Normalize.exit, %bb.a
  %4 = icmp eq i32 %i.q, 0
  %5 = sext i32 %i.q to i64
  %6 = add nsw i64 %5, %i.f
  %7 = inttoptr i64 %6 to ptr
  %.0.i225 = select i1 %4, ptr null, ptr %7       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store ptr @vt_empty_placeholder_metadatum, ptr %i.ab, align 8, !tbaa !61
  %i.ac = icmp eq i32 %i.s, 0
  br i1 %i.ac, label %b3EdgeMap_reserve.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge
  %i.ad = uitofp i64 %i.u to double
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i.i
  %.0.i.i = phi i64 [ %i.ah, %bb.b ], [ 8, %.preheader.i.i ] ; 4 uses
  %i.ae = uitofp i64 %.0.i.i to double
  %i.af = fmul nnan double %i.ae, 9.000000e-01
  %i.ag = fcmp olt double %i.af, %i.ad
  %i.ah = shl i64 %.0.i.i, 1
  br i1 %i.ag, label %bb.b, label %b3EdgeMap_min_bucket_count_for_size.exit.i, !llvm.loop !209

b3EdgeMap_min_bucket_count_for_size.exit.i:       ; preds = %bb.b
  %.not.i.not = icmp eq i64 %.0.i.i, 0
  br i1 %.not.i.not, label %b3EdgeMap_reserve.exit, label %bb.c

bb.c:                                             ; preds = %b3EdgeMap_min_bucket_count_for_size.exit.i
  %i.ai = call fastcc zeroext i1 @b3EdgeMap_rehash(ptr noundef nonnull %1, i64 noundef %.0.i.i) ; 0 uses
  br label %b3EdgeMap_reserve.exit

b3EdgeMap_reserve.exit:                           ; preds = %._crit_edge, %b3EdgeMap_min_bucket_count_for_size.exit.i, %bb.c
  %i.aj = load i32, ptr %i.w, align 4, !tbaa !220
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !221
  %i.ao = sext i32 %i.an to i64
  %i.ap = or i64 %i.al, %i.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4, !tbaa !18, !noalias !222
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %b3EdgeMap_reserve.exit
  call fastcc void @b3EdgeMap_insert_raw(ptr dead_on_unwind noalias nonnull writable align 8 %2, ptr noundef nonnull %1, i64 noundef %i.ap, ptr noundef nonnull %i.b, i1 noundef zeroext false, i1 noundef zeroext true)
  %.val4.i = load ptr, ptr %i.aq, align 8, !tbaa !70, !alias.scope !222
  %.val5.i = load ptr, ptr %i.ar, align 8, !tbaa !71, !alias.scope !222
  %i.at = icmp eq ptr %.val4.i, %.val5.i
  br i1 %i.at, label %bb.e, label %b3EdgeMap_insert.exit, !prof !72

bb.e:                                             ; preds = %bb.d
  %i.au = load i64, ptr %i.as, align 8, !tbaa !62, !noalias !222 ; 2 uses
  %.not.i227 = icmp eq i64 %i.au, 0
  %i.av = shl i64 %i.au, 1
  %i.aw = add i64 %i.av, 2
  %i.ax = select i1 %.not.i227, i64 8, i64 %i.aw
  %i.ay = call fastcc zeroext i1 @b3EdgeMap_rehash(ptr noundef nonnull %1, i64 noundef %i.ax), !noalias !222
  br i1 %i.ay, label %bb.d, label %b3EdgeMap_insert.exit, !prof !67

b3EdgeMap_insert.exit:                            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %i.aa, label %.lr.ph258, label %._crit_edge259

.lr.ph258:                                        ; preds = %b3EdgeMap_insert.exit
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %smax = tail call i32 @llvm.smax.i32(i32 %i.t, i32 2)
  %wide.trip.count268 = zext nneg i32 %smax to i64
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %b3Normalize.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %b3Normalize.exit ] ; 5 uses
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %.0.i, i64 %indvars.iv ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !54 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !55 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !56 ; 5 uses
  %i.bi = tail call noundef i32 @llvm.smin.i32(i32 %i.bd, i32 %i.bf)
  %.idx = mul nuw nsw i64 %indvars.iv, 60
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx ; 21 uses
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !220
  %i.bk = tail call noundef i32 @llvm.smax.i32(i32 %i.bd, i32 %i.bf)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !221
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !223
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 -1, ptr %i.bo, align 4, !tbaa !224
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 18
  store i8 0, ptr %i.bp, align 2, !tbaa !225
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 19
  store i8 -1, ptr %i.bq, align 1, !tbaa !226
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i16 1, ptr %i.br, align 4, !tbaa !227
  %i.bs = tail call noundef i32 @llvm.smin.i32(i32 %i.bf, i32 %i.bh)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !220
  %i.bu = tail call noundef i32 @llvm.smax.i32(i32 %i.bf, i32 %i.bh)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !221
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 28
  store i32 %i.bn, ptr %i.bw, align 4, !tbaa !223
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store i32 -1, ptr %i.bx, align 4, !tbaa !224
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 38
  store i8 1, ptr %i.by, align 2, !tbaa !225
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 39
  store i8 -1, ptr %i.bz, align 1, !tbaa !226
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  store i16 1, ptr %i.ca, align 4, !tbaa !227
  %i.cb = tail call noundef i32 @llvm.smin.i32(i32 %i.bh, i32 %i.bd)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !220
  %i.cd = tail call noundef i32 @llvm.smax.i32(i32 %i.bh, i32 %i.bd)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 44
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !221
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  store i32 %i.bn, ptr %i.cf, align 4, !tbaa !223
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 52
  store i32 -1, ptr %i.cg, align 4, !tbaa !224
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bj, i64 58
  store i8 2, ptr %i.ch, align 2, !tbaa !225
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 59
  store i8 -1, ptr %i.ci, align 1, !tbaa !226
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  store i16 1, ptr %i.cj, align 4, !tbaa !227
  %i.ck = sext i32 %i.bd to i64
  %i.cl = getelementptr inbounds [12 x i8], ptr %.0.i224, i64 %i.ck ; 2 uses
  %.sroa.0114.0.copyload = load <2 x float>, ptr %i.cl, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !16
  %i.cm = sext i32 %i.bf to i64
  %i.cn = getelementptr inbounds [12 x i8], ptr %.0.i224, i64 %i.cm ; 2 uses
  %.sroa.0112.0.copyload = load <2 x float>, ptr %i.cn, align 4 ; 2 uses
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.4113.0.copyload = load float, ptr %.sroa.4113.0..sroa_idx, align 4, !tbaa !16
  %i.co = sext i32 %i.bh to i64
  %i.cp = getelementptr inbounds [12 x i8], ptr %.0.i224, i64 %i.co ; 2 uses
  %.sroa.0110.0.copyload = load <2 x float>, ptr %i.cp, align 4 ; 2 uses
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.4111.0.copyload = load float, ptr %.sroa.4111.0..sroa_idx, align 4, !tbaa !16
  %i.cq = shufflevector <2 x float> %.sroa.0110.0.copyload, <2 x float> %.sroa.0112.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.cr = fsub <2 x float> %i.cq, %.sroa.0114.0.copyload ; 3 uses
  %i.cs = shufflevector <2 x float> %.sroa.0112.0.copyload, <2 x float> %.sroa.0110.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.ct = fsub <2 x float> %i.cs, %.sroa.0114.0.copyload ; 3 uses
  %i.cu = insertelement <2 x float> poison, float %.sroa.4113.0.copyload, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %.sroa.4111.0.copyload, i64 1
  %i.cw = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fsub <2 x float> %i.cv, %i.cx           ; 2 uses
  %i.cz = fmul <2 x float> %i.cy, %i.cr
  %i.da = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.db = fmul <2 x float> %i.ct, %i.da
  %i.dc = fsub <2 x float> %i.cz, %i.db           ; 3 uses
  %shift = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.ct, %shift
  %shift282 = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop283 = fmul <2 x float> %shift282, %i.cr
  %foldExtExtBinop285 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop283 ; 3 uses
  %i.dd = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.de = fmul <2 x float> %i.dc, %i.dc           ; 2 uses
  %shift287 = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop288 = fadd <2 x float> %shift287, %i.de
  %foldExtExtBinop290 = fmul <2 x float> %foldExtExtBinop285, %foldExtExtBinop285
  %foldExtExtBinop292 = fadd <2 x float> %foldExtExtBinop290, %foldExtExtBinop288
  %i.df = extractelement <2 x float> %foldExtExtBinop292, i64 0 ; 2 uses
  %i.dg = fcmp ogt float %i.df, f0x057A0000
  br i1 %i.dg, label %bb.f, label %b3Normalize.exit

bb.f:                                             ; preds = %.lr.ph
  %i.dh = extractelement <2 x float> %foldExtExtBinop285, i64 0
  %sqrt = tail call float @llvm.sqrt.f32(float %i.df)
  %i.di = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.dj = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dk = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dl = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x float> %i.dk, %i.dl
  %i.dn = fmul float %i.dh, %i.di
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %.lr.ph, %bb.f
  %.sroa.018.0.i = phi <2 x float> [ %i.dm, %bb.f ], [ zeroinitializer, %.lr.ph ]
  %.sroa.5.0.i = phi float [ %i.dn, %bb.f ], [ 0.000000e+00, %.lr.ph ]
  store <2 x float> %.sroa.018.0.i, ptr %i.dd, align 4
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store float %.sroa.5.0.i, ptr %.sroa.479.0..sroa_idx, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !212

._crit_edge259:                                   ; preds = %bb.s, %b3EdgeMap_insert.exit
  %i.do = load i64, ptr %i.as, align 8, !tbaa !62 ; 2 uses
  %.not.i244 = icmp eq i64 %i.do, 0
  br i1 %.not.i244, label %b3EdgeMap_cleanup.exit, label %bb.g

end_hunk_4
