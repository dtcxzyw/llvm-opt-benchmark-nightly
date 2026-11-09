Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/mesh?download=true
inline.NumInlined: 455
inline.NumDeleted: 107
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 18
begin_hunk_0_@b3GetHeight:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 -2147483646, -2147483648) i32 @b3GetNodeHeight(ptr noundef %0) unnamed_addr #2 {
bb.a:
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
  %i.at = zext nneg i32 %1 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %1, 16
  %i.au = zext i32 %i.ap to i64
  %mul = mul nuw nsw i64 %i.au, 24                ; 5 uses
  %i.av = zext i32 %i.ap to i64
  %mul190 = shl nuw nsw i64 %i.av, 1
  %i.aw = getelementptr i8, ptr %.sroa.030.0119, i64 %i.as
  %n.vec = and i64 %i.at, 2147483644              ; 5 uses
  %i.ax = mul nuw nsw i64 %n.vec, 6
  %i.ay = trunc nuw nsw i64 %n.vec to i32
  %broadcast.splatinsert199 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splatinsert201 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat202 = shufflevector <4 x i32> %broadcast.splatinsert201, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert203 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat204 = shufflevector <4 x i32> %broadcast.splatinsert203, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.az = shufflevector <4 x i32> %broadcast.splatinsert199, <4 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.at
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge138.split.us.us
  %.0103144.us = phi i32 [ %i.dk, %._crit_edge138.split.us.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.0104143.us = phi i64 [ %indvars.iv.next161.lcssa, %._crit_edge138.split.us.us ], [ 0, %.preheader.us.preheader ] ; 9 uses
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
  %6 = getelementptr i8, ptr %.sroa.030.0119, i64 %i.bu
  %i.bv = getelementptr i8, ptr %i.aw, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 24
  %i.bx = shl i64 %.0104143.us, 1
  %7 = getelementptr i8, ptr %.sroa.0.0, i64 %i.bx
  %8 = add i64 %.0104143.us, %i.ar
  %9 = shl i64 %8, 1
  %i.by = getelementptr i8, ptr %.sroa.0.0, i64 %9
  %i.bz = getelementptr i8, ptr %i.by, i64 2
  %bound0 = icmp ult ptr %6, %i.bz
  %bound1 = icmp ult ptr %7, %i.bw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ca = add i64 %.2142.us, %i.ax                ; 2 uses
  %i.cb = add i64 %.0104143.us, %n.vec            ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cc = trunc i64 %.0104143.us to i32
  %broadcast.splatinsert205 = insertelement <4 x i32> poison, i32 %i.cc, i64 0
  %broadcast.splat206 = shufflevector <4 x i32> %broadcast.splatinsert205, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat206, <i32 0, i32 1, i32 2, i32 3>
  %i.cd = getelementptr [4 x i8], ptr %.sroa.030.0119, i64 %.2142.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind207 = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next209, %vector.body ] ; 2 uses
  %i.ce = add i64 %.0104143.us, %index
  %i.cf = add nuw nsw <4 x i32> %vec.ind, %broadcast.splat ; 3 uses
  %i.cg = add nuw nsw <4 x i32> %i.cf, splat (i32 1) ; 3 uses
  %i.ch = add nuw <4 x i32> %i.cg, %broadcast.splat202
  %.idx = mul i64 %index, 24
  %i.ci = getelementptr i8, ptr %i.cd, i64 %.idx
  %i.cj = shufflevector <4 x i32> %i.cf, <4 x i32> %i.cg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ck = shufflevector <4 x i32> %i.cg, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cl = add nuw nsw <8 x i32> %i.ck, %i.az
  %i.cm = shufflevector <8 x i32> %i.cj, <8 x i32> %i.cl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cn = shufflevector <4 x i32> %i.ch, <4 x i32> %i.cf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i32> %i.cm, <16 x i32> %i.cn, <24 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23>
  store <24 x i32> %interleaved.vec, ptr %i.ci, align 4, !tbaa !18, !alias.scope !113, !noalias !114
  %i.co = srem <4 x i32> %vec.ind207, %broadcast.splat204
  %i.cp = trunc <4 x i32> %i.co to <4 x i8>
  %i.cq = shl nsw i64 %i.ce, 1
  %i.cr = getelementptr inbounds i8, ptr %.sroa.0.0, i64 %i.cq
  %interleaved.vec208 = shufflevector <4 x i8> %i.cp, <4 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x i8> %interleaved.vec208, ptr %i.cr, align 1, !tbaa !19, !alias.scope !114
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %vec.ind.next209 = add <4 x i32> %vec.ind207, splat (i32 4)
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge138.split.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.us, %middle.block
  %indvars.iv162.ph = phi i64 [ %.2142.us, %vector.memcheck ], [ %.2142.us, %vector.scevcheck ], [ %.2142.us, %.preheader.us ], [ %i.ca, %middle.block ]
  %indvars.iv160.ph = phi i64 [ %.0104143.us, %vector.memcheck ], [ %.0104143.us, %vector.scevcheck ], [ %.0104143.us, %.preheader.us ], [ %i.cb, %middle.block ]
  %.0136.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.us ], [ %i.ay, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %scalar.ph ], [ %indvars.iv162.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %scalar.ph ], [ %indvars.iv160.ph, %scalar.ph.preheader ] ; 3 uses
  %.0136.us.us = phi i32 [ %i.dj, %scalar.ph ], [ %.0136.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ct = add nuw nsw i32 %.0136.us.us, %i.ba     ; 3 uses
  %i.cu = add nuw nsw i32 %i.ct, 1                ; 3 uses
  %i.cv = add nuw nsw i32 %i.cu, %i.b             ; 2 uses
  %i.cw = add nuw i32 %i.cu, %1
  %i.cx = getelementptr inbounds [4 x i8], ptr %.sroa.030.0119, i64 %indvars.iv162 ; 6 uses
  store i32 %i.ct, ptr %i.cx, align 4, !tbaa !18
  %i.cy = getelementptr i8, ptr %i.cx, i64 4
  store i32 %i.cu, ptr %i.cy, align 4, !tbaa !18
  %i.cz = getelementptr i8, ptr %i.cx, i64 8
  store i32 %i.cv, ptr %i.cz, align 4, !tbaa !18
  %i.da = getelementptr i8, ptr %i.cx, i64 12
  store i32 %i.cv, ptr %i.da, align 4, !tbaa !18
  %i.db = getelementptr i8, ptr %i.cx, i64 16
  store i32 %i.cw, ptr %i.db, align 4, !tbaa !18
  %i.dc = getelementptr i8, ptr %i.cx, i64 20
  store i32 %i.ct, ptr %i.dc, align 4, !tbaa !18
  %i.dd = trunc nsw i64 %indvars.iv160 to i32
  %i.de = srem i32 %i.dd, %3
  %i.df = trunc i32 %i.de to i8                   ; 2 uses
  %i.dg = shl nsw i64 %indvars.iv160, 1
  %i.dh = getelementptr inbounds i8, ptr %.sroa.0.0, i64 %i.dg ; 2 uses
  store i8 %i.df, ptr %i.dh, align 1, !tbaa !19
  %i.di = getelementptr i8, ptr %i.dh, i64 1
  store i8 %i.df, ptr %i.di, align 1, !tbaa !19
  %indvars.iv.next161 = add nsw i64 %indvars.iv160, 1 ; 2 uses
  %indvars.iv.next163 = add nsw i64 %indvars.iv162, 6 ; 2 uses
  %i.dj = add nuw nsw i32 %.0136.us.us, 1         ; 2 uses
  %exitcond167.not = icmp eq i32 %i.dj, %1
  br i1 %exitcond167.not, label %._crit_edge138.split.us.us, label %scalar.ph, !llvm.loop !110

._crit_edge138.split.us.us:                       ; preds = %scalar.ph, %middle.block
  %indvars.iv.next161.lcssa = phi i64 [ %i.cb, %middle.block ], [ %indvars.iv.next161, %scalar.ph ]
  %indvars.iv.next163.lcssa = phi i64 [ %i.ca, %middle.block ], [ %indvars.iv.next163, %scalar.ph ]
  %i.dk = add nuw nsw i32 %.0103144.us, 1         ; 2 uses
  %exitcond168.not = icmp eq i32 %i.dk, %0
  br i1 %exitcond168.not, label %._crit_edge145.split, label %.preheader.us, !llvm.loop !111

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge138.split
  %.0103144 = phi i32 [ %i.eh, %._crit_edge138.split ], [ 0, %.preheader.preheader ] ; 2 uses
  %.2142 = phi i64 [ %indvars.iv.next156.lcssa, %._crit_edge138.split ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.dl = mul nuw nsw i32 %.0103144, %i.b         ; 3 uses
  br i1 %i.ao, label %.epil.preheader, label %.preheader.new

._crit_edge145.split:                             ; preds = %._crit_edge138.split, %._crit_edge138.split.us.us, %bb.e
  %i.dm = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dn, i8 0, i64 40, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 %i.c, ptr %i.do, align 4, !tbaa !26
  store ptr %.sroa.071.0, ptr %5, align 8, !tbaa !27
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %i.s, ptr %i.dp, align 8, !tbaa !28
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.030.0119, ptr %i.dq, align 8, !tbaa !29
  %i.dr = icmp sgt i32 %3, 0
  %i.ds = select i1 %i.dr, ptr %.sroa.0.0, ptr null
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !30
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 45
  store i8 1, ptr %i.du, align 1, !tbaa !31
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 46
  store i8 %i.dm, ptr %i.dv, align 2, !tbaa !32
  %i.dw = call ptr @b3CreateMesh(ptr noundef nonnull %5, ptr noundef null, i32 noundef 0)
  tail call void @b3Free(ptr noundef %.sroa.030.0119, i64 noundef %.sroa.17.0121) #17
  tail call void @b3Free(ptr noundef %.sroa.071.0, i64 noundef %.sroa.1275.0) #17
  tail call void @b3Free(ptr noundef %.sroa.0.0, i64 noundef %.sroa.12.0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret ptr %i.dw

._crit_edge138.split.unr-lcssa:                   ; preds = %.preheader.new
  br i1 %lcmp.mod216.not, label %._crit_edge138.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge138.split.unr-lcssa, %.preheader
  %indvars.iv155.epil.init = phi i64 [ %.2142, %.preheader ], [ %indvars.iv.next156.1, %._crit_edge138.split.unr-lcssa ] ; 2 uses
  %.0136.epil.init = phi i32 [ 0, %.preheader ], [ %i.fe, %._crit_edge138.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod218)
  %i.dx = add nuw nsw i32 %.0136.epil.init, %i.dl ; 3 uses
  %i.dy = add nuw nsw i32 %i.dx, 1                ; 3 uses
  %i.dz = add nuw nsw i32 %i.dy, %i.b             ; 2 uses
  %i.ea = add nuw i32 %i.dy, %1
  %i.eb = getelementptr inbounds [4 x i8], ptr %.sroa.030.0119, i64 %indvars.iv155.epil.init ; 6 uses
  store i32 %i.dx, ptr %i.eb, align 4, !tbaa !18
  %i.ec = getelementptr i8, ptr %i.eb, i64 4
  store i32 %i.dy, ptr %i.ec, align 4, !tbaa !18
  %i.ed = getelementptr i8, ptr %i.eb, i64 8
  store i32 %i.dz, ptr %i.ed, align 4, !tbaa !18
  %i.ee = getelementptr i8, ptr %i.eb, i64 12
  store i32 %i.dz, ptr %i.ee, align 4, !tbaa !18
  %i.ef = getelementptr i8, ptr %i.eb, i64 16
  store i32 %i.ea, ptr %i.ef, align 4, !tbaa !18
  %i.eg = getelementptr i8, ptr %i.eb, i64 20
  store i32 %i.dx, ptr %i.eg, align 4, !tbaa !18
  %indvars.iv.next156.epil = add nsw i64 %indvars.iv155.epil.init, 6
  br label %._crit_edge138.split

._crit_edge138.split:                             ; preds = %._crit_edge138.split.unr-lcssa, %.epil.preheader
  %indvars.iv.next156.lcssa = phi i64 [ %indvars.iv.next156.1, %._crit_edge138.split.unr-lcssa ], [ %indvars.iv.next156.epil, %.epil.preheader ]
  %i.eh = add nuw nsw i32 %.0103144, 1            ; 2 uses
  %exitcond159.not = icmp eq i32 %i.eh, %0
  br i1 %exitcond159.not, label %._crit_edge145.split, label %.preheader, !llvm.loop !111

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv155 = phi i64 [ %indvars.iv.next156.1, %.preheader.new ], [ %.2142, %.preheader ] ; 3 uses
  %.0136 = phi i32 [ %i.fe, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.ei = add nuw nsw i32 %.0136, %i.dl           ; 3 uses
  %i.ej = add nuw nsw i32 %i.ei, 1                ; 3 uses
  %i.ek = add nuw nsw i32 %i.ej, %i.b             ; 2 uses
  %i.el = add nuw i32 %i.ej, %1
  %i.em = getelementptr inbounds [4 x i8], ptr %.sroa.030.0119, i64 %indvars.iv155 ; 6 uses
  store i32 %i.ei, ptr %i.em, align 4, !tbaa !18
  %i.en = getelementptr i8, ptr %i.em, i64 4
  store i32 %i.ej, ptr %i.en, align 4, !tbaa !18
  %i.eo = getelementptr i8, ptr %i.em, i64 8
  store i32 %i.ek, ptr %i.eo, align 4, !tbaa !18
  %i.ep = getelementptr i8, ptr %i.em, i64 12
  store i32 %i.ek, ptr %i.ep, align 4, !tbaa !18
  %i.eq = getelementptr i8, ptr %i.em, i64 16
  store i32 %i.el, ptr %i.eq, align 4, !tbaa !18
  %i.er = getelementptr i8, ptr %i.em, i64 20
  store i32 %i.ei, ptr %i.er, align 4, !tbaa !18
  %i.es = or disjoint i32 %.0136, 1
  %i.et = add nuw nsw i32 %i.es, %i.dl            ; 3 uses
  %i.eu = add nuw nsw i32 %i.et, 1                ; 3 uses
  %i.ev = add nuw nsw i32 %i.eu, %i.b             ; 2 uses
  %i.ew = add nuw i32 %i.eu, %1
  %i.ex = getelementptr [4 x i8], ptr %.sroa.030.0119, i64 %indvars.iv155 ; 6 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 24
  store i32 %i.et, ptr %i.ey, align 4, !tbaa !18
  %i.ez = getelementptr i8, ptr %i.ex, i64 28
  store i32 %i.eu, ptr %i.ez, align 4, !tbaa !18
  %i.fa = getelementptr i8, ptr %i.ex, i64 32
  store i32 %i.ev, ptr %i.fa, align 4, !tbaa !18
  %i.fb = getelementptr i8, ptr %i.ex, i64 36
  store i32 %i.ev, ptr %i.fb, align 4, !tbaa !18
  %i.fc = getelementptr i8, ptr %i.ex, i64 40
  store i32 %i.ew, ptr %i.fc, align 4, !tbaa !18
  %i.fd = getelementptr i8, ptr %i.ex, i64 44
  store i32 %i.et, ptr %i.fd, align 4, !tbaa !18
  %indvars.iv.next156.1 = add nsw i64 %indvars.iv155, 12 ; 3 uses
  %i.fe = add nuw nsw i32 %.0136, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
end_hunk_0
