Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/kernel_common?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gmx12clear_fshiftEPf(ptr nofree noundef writeonly captures(none) initializes((0, 540)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(540) %0, i8 0, i64 540, i1 false), !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx26reduce_energies_over_listsEPKNS_16nbnxn_atomdata_tEiPfS3_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51   ; 4 uses
  %i.c = icmp sgt i32 %1, 0
  %i.d = icmp sgt i32 %i.b, 0
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge52.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = zext nneg i32 %i.b to i64                ; 13 uses
  %i.h = zext nneg i32 %i.b to i64
  %wide.trip.count64 = zext nneg i32 %1 to i64
  %i.i = shl nuw nsw i64 %i.g, 2                  ; 4 uses
  %i.j = add nuw nsw i64 %i.i, 4
  %i.k = shl nuw nsw i64 %i.g, 2
  %i.l = add nsw i64 %i.i, -4
  %i.m = mul i64 %i.l, %i.g
  %4 = add i64 %i.m, 4
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.n = add nsw i64 %i.g, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv61 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next62, %._crit_edge ] ; 2 uses
  %i.o = getelementptr inbounds nuw [144 x i8], ptr %i.f, i64 %indvars.iv61 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !55   ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55   ; 13 uses
  br label %bb.b

._crit_edge52.split:                              ; preds = %._crit_edge, %bb.a
  ret void

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %i.g
  br i1 %exitcond60.not, label %._crit_edge, label %bb.b, !llvm.loop !11

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %._crit_edge52.split, label %.preheader, !llvm.loop !12

bb.b:                                             ; preds = %.preheader, %.loopexit
  %indvars.iv56 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next57, %.loopexit ] ; 12 uses
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %i.t = xor i64 %indvars.iv56, -1
  %i.u = add nsw i64 %i.t, %i.g                   ; 3 uses
  %i.v = mul i64 %i.j, %indvars.iv56              ; 2 uses
  %i.w = add i64 %i.v, 4                          ; 4 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.w   ; 5 uses
  %i.x = mul i64 %i.k, %indvars.iv56
  %i.y = add i64 %i.i, %i.x                       ; 4 uses
  %scevgep68.a = getelementptr i8, ptr %2, i64 %i.y ; 5 uses
  %scevgep69.a = getelementptr i8, ptr %3, i64 %i.w ; 5 uses
  %scevgep70.a = getelementptr i8, ptr %3, i64 %i.y ; 5 uses
  %i.z = add i64 %i.i, %i.v                       ; 2 uses
  %scevgep71.a = getelementptr i8, ptr %i.q, i64 %i.z ; 2 uses
  %5 = shl nuw nsw i64 %indvars.iv56, 2
  %6 = add i64 %4, %5                             ; 2 uses
  %scevgep73.a = getelementptr i8, ptr %i.q, i64 %6 ; 2 uses
  %scevgep74.a = getelementptr i8, ptr %i.q, i64 %i.w ; 2 uses
  %scevgep75.a = getelementptr i8, ptr %i.q, i64 %i.y ; 2 uses
  %scevgep76.a = getelementptr i8, ptr %i.s, i64 %i.z ; 2 uses
  %scevgep79 = getelementptr i8, ptr %i.s, i64 %6 ; 2 uses
  %scevgep80 = getelementptr i8, ptr %i.s, i64 %i.w ; 2 uses
  %scevgep81 = getelementptr i8, ptr %i.s, i64 %i.y ; 2 uses
  %indvars58 = trunc i64 %indvars.iv56 to i32
  %i.aa = mul nuw nsw i64 %indvars.iv56, %i.g     ; 4 uses
  %i.ab = mul nuw nsw i32 %i.b, %indvars58
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nuw nsw i64 %indvars.iv56, %i.ac    ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !10
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ad ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !10
  %i.ai = fadd float %i.af, %i.ah
  store float %i.ai, ptr %i.ag, align 4, !tbaa !10
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ad
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !10
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ad ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !10
  %i.an = fadd float %i.ak, %i.am
  store float %i.an, ptr %i.al, align 4, !tbaa !10
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 3 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next57, %i.h
  br i1 %i.ao, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.u, 16
  br i1 %min.iters.check, label %.lr.ph.preheader122, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %bound0 = icmp ult ptr %scevgep, %scevgep70.a
  %bound1 = icmp ult ptr %scevgep69.a, %scevgep68.a
  %found.conflict = and i1 %bound0, %bound1
  %bound082 = icmp ult ptr %scevgep, %scevgep73.a
  %bound183 = icmp ult ptr %scevgep71.a, %scevgep68.a
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx = or i1 %found.conflict, %found.conflict84
  %bound085.a = icmp ult ptr %scevgep, %scevgep75.a
  %bound186.a = icmp ult ptr %scevgep74.a, %scevgep68.a
  %found.conflict87.a = and i1 %bound085.a, %bound186.a
  %conflict.rdx88.a = or i1 %conflict.rdx, %found.conflict87.a
  %bound089.a = icmp ult ptr %scevgep, %scevgep79
  %bound190.a = icmp ult ptr %scevgep76.a, %scevgep68.a
  %found.conflict91.a = and i1 %bound089.a, %bound190.a
  %conflict.rdx92.a = or i1 %conflict.rdx88.a, %found.conflict91.a
  %bound093.a = icmp ult ptr %scevgep, %scevgep81
  %bound194.a = icmp ult ptr %scevgep80, %scevgep68.a
  %found.conflict95.a = and i1 %bound093.a, %bound194.a
  %conflict.rdx96.a = or i1 %conflict.rdx92.a, %found.conflict95.a
  %bound097.a = icmp ult ptr %scevgep69.a, %scevgep73.a
  %bound198.a = icmp ult ptr %scevgep71.a, %scevgep70.a
  %found.conflict99.a = and i1 %bound097.a, %bound198.a
  %conflict.rdx100.a = or i1 %conflict.rdx96.a, %found.conflict99.a
  %bound0101.a = icmp ult ptr %scevgep69.a, %scevgep75.a
  %bound1102.a = icmp ult ptr %scevgep74.a, %scevgep70.a
  %found.conflict103.a = and i1 %bound0101.a, %bound1102.a
  %conflict.rdx104.a = or i1 %conflict.rdx100.a, %found.conflict103.a
  %bound0105.a = icmp ult ptr %scevgep69.a, %scevgep79
  %bound1106.a = icmp ult ptr %scevgep76.a, %scevgep70.a
  %found.conflict107.a = and i1 %bound0105.a, %bound1106.a
  %conflict.rdx108.a = or i1 %conflict.rdx104.a, %found.conflict107.a
  %bound0109 = icmp ult ptr %scevgep69.a, %scevgep81
  %bound1110 = icmp ult ptr %scevgep80, %scevgep70.a
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %conflict.rdx108.a, %found.conflict111
  br i1 %conflict.rdx112, label %.lr.ph.preheader122, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, -8                       ; 3 uses
  %i.ap = add i64 %indvars.iv, %n.vec
  %broadcast.splatinsert113 = insertelement <8 x i64> poison, i64 %indvars.iv56, i64 0
  %broadcast.splat114 = shufflevector <8 x i64> %broadcast.splatinsert113, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert115 = insertelement <8 x i64> poison, i64 %indvars.iv, i64 0
  %broadcast.splat116 = shufflevector <8 x i64> %broadcast.splatinsert115, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat116, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %invariant.op = add nuw i64 %indvars.iv, %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %.reass = add nuw i64 %index, %invariant.op     ; 4 uses
  %i.aq = mul nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %i.ar = add nuw nsw <8 x i64> %i.aq, %broadcast.splat114 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.reass
  %wide.load = load <8 x float>, ptr %i.as, align 4, !tbaa !10, !alias.scope !57
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.q, <8 x i64> %i.ar
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !10, !alias.scope !58
  %i.at = fadd <8 x float> %wide.load, %wide.masked.gather
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass ; 2 uses
  %wide.load117.a = load <8 x float>, ptr %i.au, align 4, !tbaa !10, !alias.scope !59, !noalias !60
  %i.av = fadd <8 x float> %wide.load117.a, %i.at
  store <8 x float> %i.av, ptr %i.au, align 4, !tbaa !10, !alias.scope !59, !noalias !60
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.reass
  %wide.load118 = load <8 x float>, ptr %i.aw, align 4, !tbaa !10, !alias.scope !61
  %wide.gep119 = getelementptr inbounds nuw [4 x i8], ptr %i.s, <8 x i64> %i.ar
  %wide.masked.gather120 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep119, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !10, !alias.scope !62
  %i.ax = fadd <8 x float> %wide.load118, %wide.masked.gather120
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.reass ; 2 uses
  %wide.load121 = load <8 x float>, ptr %i.ay, align 4, !tbaa !10, !alias.scope !63, !noalias !64
  %i.az = fadd <8 x float> %wide.load121, %i.ax
  store <8 x float> %i.az, ptr %i.ay, align 4, !tbaa !10, !alias.scope !63, !noalias !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader122

.lr.ph.preheader122:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv53.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.lr.ph.preheader ], [ %i.ap, %middle.block ] ; 6 uses
  %i.bb = sub i64 %i.g, %indvars.iv53.ph
  %xtraiter = and i64 %i.bb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader122
  %i.bc = add nuw nsw i64 %indvars.iv53.ph, %i.aa ; 4 uses
  %i.bd = mul nuw nsw i64 %indvars.iv53.ph, %i.g
  %i.be = add nuw nsw i64 %i.bd, %indvars.iv56    ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bc
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !10
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.be
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !10
  %i.bj = fadd float %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bc ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !10
  %i.bm = fadd float %i.bl, %i.bj
  store float %i.bm, ptr %i.bk, align 4, !tbaa !10
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bc
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !10
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.be
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !10
  %i.br = fadd float %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bc ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !10
  %i.bu = fadd float %i.bt, %i.br
  store float %i.bu, ptr %i.bs, align 4, !tbaa !10
  %indvars.iv.next54.prol = add nuw nsw i64 %indvars.iv53.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader122
  %indvars.iv53.unr = phi i64 [ %indvars.iv53.ph, %.lr.ph.preheader122 ], [ %indvars.iv.next54.prol, %.lr.ph.prol ]
  %i.bv = icmp eq i64 %indvars.iv53.ph, %i.n
  br i1 %i.bv, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv53 = phi i64 [ %indvars.iv.next54.1, %.lr.ph ], [ %indvars.iv53.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bw = add nuw nsw i64 %indvars.iv53, %i.aa    ; 4 uses
  %i.bx = mul nuw nsw i64 %indvars.iv53, %i.g
  %i.by = add nuw nsw i64 %i.bx, %indvars.iv56    ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bw
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !10
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.by
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !10
  %i.cd = fadd float %i.ca, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bw ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !10
  %i.cg = fadd float %i.cf, %i.cd
  store float %i.cg, ptr %i.ce, align 4, !tbaa !10
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bw
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !10
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.by
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !10
  %i.cl = fadd float %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bw ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !10
  %i.co = fadd float %i.cn, %i.cl
  store float %i.co, ptr %i.cm, align 4, !tbaa !10
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.cp = add nuw nsw i64 %indvars.iv.next54, %i.aa ; 4 uses
  %i.cq = mul nuw nsw i64 %indvars.iv.next54, %i.g
  %i.cr = add nuw nsw i64 %i.cq, %indvars.iv56    ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cp
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !10
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cr
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !10
  %i.cw = fadd float %i.ct, %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cp ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !10
  %i.cz = fadd float %i.cy, %i.cw
  store float %i.cz, ptr %i.cx, align 4, !tbaa !10
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cp
  %i.db = load float, ptr %i.da, align 4, !tbaa !10
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cr
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !10
  %i.de = fadd float %i.db, %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cp ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !10
  %i.dh = fadd float %i.dg, %i.de
  store float %i.dh, ptr %i.df, align 4, !tbaa !10
  %indvars.iv.next54.1 = add nuw nsw i64 %indvars.iv53, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next54.1, %i.g
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !21
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = distinct !{!11, !56}
!12 = distinct !{!12, !56}
!13 = distinct !{!13, !"LVerDomain"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !56, !65, !66}
!21 = distinct !{!21, !56, !65}
!22 = !{!"_ZTSN3gmx13PinningPolicyE", !5, i64 0}
!23 = !{!"bool", !5, i64 0}
!24 = !{!"_ZTSN3gmx20HostAllocationPolicyE", !22, i64 0, !23, i64 4}
!25 = !{!"_ZTSN3gmx9AllocatorIfNS_20HostAllocationPolicyEEE", !24, i64 0}
!26 = !{!"any pointer", !5, i64 0}
!27 = !{!"p1 float", !26, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE12_Vector_implE", !25, i64 0, !28, i64 8}
!30 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE", !29, i64 0}
!31 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE", !30, i64 0}
!32 = !{!"_ZTSN3gmx17LJCombinationRuleE", !5, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !33, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE", !35, i64 0}
!37 = !{!"_ZTSN3gmx9AllocatorIiNS_20HostAllocationPolicyEEE", !24, i64 0}
!38 = !{!"p1 int", !26, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!40 = !{!"_ZTSNSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE12_Vector_implE", !37, i64 0, !39, i64 8}
!41 = !{!"_ZTSSt12_Vector_baseIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE", !40, i64 0}
!42 = !{!"_ZTSSt6vectorIiN3gmx9AllocatorIiNS0_20HostAllocationPolicyEEEE", !41, i64 0}
!43 = !{!"p1 _ZTSN3gmx22EnergyGroupsPerClusterE", !26, i64 0}
!44 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx22EnergyGroupsPerClusterELb0EE", !43, i64 0}
!45 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EEE", !44, i64 0}
!46 = !{!"_ZTSSt5tupleIJPN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EEE", !45, i64 0}
!47 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EE", !46, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_ELb1ELb1EE", !47, i64 0}
!49 = !{!"_ZTSSt10unique_ptrIN3gmx22EnergyGroupsPerClusterESt14default_deleteIS1_EE", !48, i64 0}
end_hunk_0
