Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 95
begin_hunk_0_@dt_segmentize_plane:bb.a

iter.check:                                       ; preds = %._crit_edge569.i.us, %.preheader.preheader.i.us
  %indvars.iv579.i.us = phi i64 [ %i.hk, %.preheader.preheader.i.us ], [ %indvars.iv.next580.i.us, %._crit_edge569.i.us ] ; 2 uses
  %i.hs = mul nsw i64 %indvars.iv579.i.us, %i.e
  %i.ht = getelementptr [4 x i8], ptr %i.ag, i64 %i.hs ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check133, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %invariant.gep = getelementptr [4 x i8], ptr %i.ht, i64 %i.hi
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 5 uses
  %i.hu = getelementptr i8, ptr %gep, i64 32      ; 2 uses
  %i.hv = getelementptr i8, ptr %gep, i64 64      ; 2 uses
  %i.hw = getelementptr i8, ptr %gep, i64 96      ; 2 uses
  %wide.load = load <8 x i32>, ptr %gep, align 4, !tbaa !15 ; 2 uses
  %wide.load136 = load <8 x i32>, ptr %i.hu, align 4, !tbaa !15 ; 2 uses
  %wide.load137 = load <8 x i32>, ptr %i.hv, align 4, !tbaa !15 ; 2 uses
  %wide.load138 = load <8 x i32>, ptr %i.hw, align 4, !tbaa !15 ; 2 uses
  %i.hx = icmp eq <8 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.hy = icmp eq <8 x i32> %wide.load136, %broadcast.splat ; 2 uses
  %i.hz = icmp eq <8 x i32> %wide.load137, %broadcast.splat ; 2 uses
  %i.ia = icmp eq <8 x i32> %wide.load138, %broadcast.splat ; 2 uses
  %i.ib = icmp eq <8 x i32> %wide.load, %broadcast.splat135
  %i.ic = icmp eq <8 x i32> %wide.load136, %broadcast.splat135
  %i.id = icmp eq <8 x i32> %wide.load137, %broadcast.splat135
  %i.ie = icmp eq <8 x i32> %wide.load138, %broadcast.splat135
  %i.if = or <8 x i1> %i.ib, %i.hx
  %i.ig = or <8 x i1> %i.ic, %i.hy
  %i.ih = or <8 x i1> %i.id, %i.hz
  %i.ii = or <8 x i1> %i.ie, %i.ia
  %predphi = zext <8 x i1> %i.hx to <8 x i32>
  %predphi139 = zext <8 x i1> %i.hy to <8 x i32>
  %predphi140 = zext <8 x i1> %i.hz to <8 x i32>
  %predphi141 = zext <8 x i1> %i.ia to <8 x i32>
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> %predphi, ptr align 4 %gep, <8 x i1> %i.if), !tbaa !15
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> %predphi139, ptr align 4 %i.hu, <8 x i1> %i.ig), !tbaa !15
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> %predphi140, ptr align 4 %i.hv, <8 x i1> %i.ih), !tbaa !15
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> %predphi141, ptr align 4 %i.hw, <8 x i1> %i.ii), !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ij = icmp eq i64 %index.next, %n.vec
  br i1 %i.ij, label %middle.block, label %vector.body, !llvm.loop !172

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge569.i.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %invariant.gep170 = getelementptr [4 x i8], ptr %i.ht, i64 %i.hi
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index147 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next150, %vec.epilog.vector.body ] ; 2 uses
  %gep171 = getelementptr [4 x i8], ptr %invariant.gep170, i64 %index147 ; 2 uses
  %wide.load148 = load <8 x i32>, ptr %gep171, align 4, !tbaa !15 ; 2 uses
  %i.ik = icmp eq <8 x i32> %wide.load148, %broadcast.splat144 ; 2 uses
  %i.il = icmp eq <8 x i32> %wide.load148, %broadcast.splat146
  %i.im = or <8 x i1> %i.il, %i.ik
  %predphi149 = zext <8 x i1> %i.ik to <8 x i32>
  tail call void @llvm.masked.store.v8i32.p0(<8 x i32> %predphi149, ptr align 4 %gep171, <8 x i1> %i.im), !tbaa !15
  %index.next150 = add nuw i64 %index147, 8       ; 2 uses
  %i.in = icmp eq i64 %index.next150, %n.vec142
  br i1 %i.in, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !173

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n151, label %._crit_edge569.i.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv576.i.us.ph = phi i64 [ %i.hi, %iter.check ], [ %i.hq, %vec.epilog.iter.check ], [ %i.hr, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %bb.bp
  %indvars.iv576.i.us = phi i64 [ %indvars.iv.next577.i.us, %bb.bp ], [ %indvars.iv576.i.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.io = getelementptr [4 x i8], ptr %i.ht, i64 %indvars.iv576.i.us ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !15 ; 2 uses
  %i.iq = icmp eq i32 %i.ip, %.178.us
  br i1 %i.iq, label %.sink.split.i.us, label %bb.bo

bb.bo:                                            ; preds = %vec.epilog.scalar.ph
  %i.ir = icmp eq i32 %i.ip, %.pre-phi
  br i1 %i.ir, label %.sink.split.i.us, label %bb.bp

.sink.split.i.us:                                 ; preds = %bb.bo, %vec.epilog.scalar.ph
  %.sink.i.us = phi i32 [ 1, %vec.epilog.scalar.ph ], [ 0, %bb.bo ]
  store i32 %.sink.i.us, ptr %i.io, align 4, !tbaa !15
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split.i.us, %bb.bo
  %indvars.iv.next577.i.us = add nsw i64 %indvars.iv576.i.us, 1 ; 2 uses
  %lftr.wideiv.i.us = trunc i64 %indvars.iv.next577.i.us to i32
  %exitcond.not.i.us = icmp eq i32 %i.hj, %lftr.wideiv.i.us
  br i1 %exitcond.not.i.us, label %._crit_edge569.i.us, label %vec.epilog.scalar.ph, !llvm.loop !174

._crit_edge569.i.us:                              ; preds = %bb.bp, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next580.i.us = add nsw i64 %indvars.iv579.i.us, 1 ; 2 uses
  %lftr.wideiv582.i.us = trunc i64 %indvars.iv.next580.i.us to i32
  %exitcond583.not.i.us = icmp eq i32 %i.hl, %lftr.wideiv582.i.us
  br i1 %exitcond583.not.i.us, label %.loopexit.us, label %iter.check

bb.bq:                                            ; preds = %._crit_edge.i.us
  %i.is = load ptr, ptr %i.v, align 8, !tbaa !28  ; 2 uses
  %i.it = sext i32 %.178.us to i64                ; 5 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.it
  store i32 %.3413.i.us, ptr %i.iu, align 4, !tbaa !15
  %i.iv = load ptr, ptr %i.u, align 8, !tbaa !27  ; 2 uses
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.it
  store i32 %.15466.i.us, ptr %i.iw, align 4, !tbaa !15
  %i.ix = load ptr, ptr %i.t, align 8, !tbaa !26  ; 2 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.it
  store i32 %.15450.i.us, ptr %i.iy, align 4, !tbaa !15
  %i.iz = load ptr, ptr %i.s, align 8, !tbaa !25  ; 2 uses
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.iz, i64 %i.it
  store i32 %.15434.i.us, ptr %i.ja, align 4, !tbaa !15
  %i.jb = load ptr, ptr %i.r, align 8, !tbaa !24  ; 2 uses
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.jb, i64 %i.it
  store i32 %.15.i.us, ptr %i.jc, align 4, !tbaa !15
  %i.jd = load i32, ptr %i.aa, align 8, !tbaa !34
  %i.je = add nsw i32 %i.jd, 1
  store i32 %i.je, ptr %i.aa, align 8, !tbaa !34
  %i.jf = add nsw i32 %.178.us, 1                 ; 4 uses
  %i.jg = load i32, ptr %i.q, align 8, !tbaa !22
  %i.jh = add nsw i32 %i.jg, -1
  %i.ji = icmp ugt i32 %i.jf, %i.jh
  br i1 %i.ji, label %.loopexit.us, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jj = zext i32 %i.jf to i64                   ; 7 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.jj
  store i32 0, ptr %i.jk, align 4, !tbaa !15
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.jj
  store i32 0, ptr %i.jl, align 4, !tbaa !15
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.jj
  store i32 0, ptr %i.jm, align 4, !tbaa !15
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.jj
  store i32 0, ptr %i.jn, align 4, !tbaa !15
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.jj
  store i32 0, ptr %i.jo, align 4, !tbaa !15
  %i.jp = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %i.jj
  store float 0.000000e+00, ptr %i.jq, align 4, !tbaa !12
  %i.jr = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jj
  store float 0.000000e+00, ptr %i.js, align 4, !tbaa !12
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %._crit_edge569.i.us, %bb.bq, %bb.br, %.preheader505.i.us, %bb.e
  %.2.us = phi i32 [ %.178.us, %bb.e ], [ %i.jf, %bb.bq ], [ %.178.us, %.preheader505.i.us ], [ %i.jf, %bb.br ], [ %.178.us, %._crit_edge569.i.us ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond96.not = icmp eq i32 %i.p, %lftr.wideiv
  br i1 %exitcond96.not, label %..critedge_crit_edge.us, label %bb.d

..critedge_crit_edge.us:                          ; preds = %.loopexit.us
  %indvars.iv.next98 = add nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count
  br i1 %exitcond100.not, label %.loopexit66, label %.preheader.us

.loopexit66:                                      ; preds = %..critedge_crit_edge.us, %bb.d, %.preheader.lr.ph, %bb.c
  %.3 = phi i32 [ %.178.us, %bb.d ], [ 2, %bb.c ], [ 2, %.preheader.lr.ph ], [ %.2.us, %..critedge_crit_edge.us ]
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !22 ; 2 uses
  %i.jv = add nsw i32 %i.ju, -2
  %.not39 = icmp slt i32 %.3, %i.jv
  br i1 %.not39, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.loopexit66
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.6, i32 noundef %i.b, i32 noundef %i.d, i32 noundef %i.ju) #33
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.loopexit66
  tail call void @free(ptr noundef %i.k) #33
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.b
  ret void
}

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @dt_segments_combine(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 35 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.c = load i32, ptr %i.b, align 4, !tbaa !19   ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21   ; 17 uses
  %i.h = sub i32 %i.e, %i.g                       ; 4 uses
  %i.i = add i32 %i.h, -1
  %i.j = mul i32 %i.i, %i.c
  %i.k = sext i32 %i.j to i64                     ; 14 uses
  %i.l = mul nsw i32 %i.g, %i.c                   ; 6 uses
  %i.m = sext i32 %i.l to i64                     ; 9 uses
  %.not.i = icmp eq i32 %i.l, 0                   ; 3 uses
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.n = shl nsw i64 %i.k, 2
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.n
  %i.o = shl nuw nsw i64 %i.m, 2                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.o, i1 false), !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.a, i8 0, i64 %i.o, i1 false), !tbaa !15
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.preheader, %bb.a
  %i.p = sext i32 %i.g to i64                     ; 41 uses
  %i.q = sext i32 %i.h to i64                     ; 12 uses
  %i.r = icmp ult i32 %i.g, %i.h                  ; 3 uses
  br i1 %i.r, label %.lr.ph41.i, label %_intimage_borderfill.exit

.lr.ph41.i:                                       ; preds = %._crit_edge.i
  %i.s = sext i32 %i.c to i64                     ; 3 uses
  %.not43.i = icmp eq i32 %i.g, 0
  br i1 %.not43.i, label %_intimage_borderfill.exit, label %.lr.ph37.i.preheader

.lr.ph37.i.preheader:                             ; preds = %.lr.ph41.i
  %i.t = shl nsw i64 %i.p, 2                      ; 4 uses
  %i.u = add nsw i64 %i.t, 4
  %i.v = mul i64 %i.u, %i.s
  %i.w = sub i64 %i.v, %i.t
  %i.x = shl nsw i64 %i.s, 2
  %i.y = getelementptr i8, ptr %i.a, i64 %i.w
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.lr.ph37.i.preheader, %.lr.ph37.i
  %indvar = phi i64 [ 0, %.lr.ph37.i.preheader ], [ %indvar.next, %.lr.ph37.i ] ; 2 uses
  %.03239.i = phi i64 [ %i.p, %.lr.ph37.i.preheader ], [ %i.ac, %.lr.ph37.i ] ; 2 uses
  %i.z = mul i64 %i.x, %indvar
  %scevgep78 = getelementptr i8, ptr %i.y, i64 %i.z
  %i.aa = mul i64 %.03239.i, %i.s
  %i.ab = getelementptr [4 x i8], ptr %i.a, i64 %i.aa
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep78, i8 0, i64 %i.t, i1 false), !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %i.t, i1 false), !tbaa !15
  %i.ac = add i64 %.03239.i, 1                    ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.q
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ad, label %.lr.ph37.i, label %_intimage_borderfill.exit

_intimage_borderfill.exit:                        ; preds = %.lr.ph37.i, %._crit_edge.i, %.lr.ph41.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !35 ; 214 uses
  %i.ag = icmp slt i32 %i.g, %i.h                 ; 2 uses
  br i1 %i.ag, label %.preheader.lr.ph.i, label %_dilating.exit

.preheader.lr.ph.i:                               ; preds = %_intimage_borderfill.exit
  %i.ah = sub nsw i32 %i.c, %i.g                  ; 2 uses
  %i.ai = icmp slt i32 %i.g, %i.ah
  %i.aj = sext i32 %i.c to i64                    ; 20 uses
  %i.ak = shl nsw i64 %i.aj, 1                    ; 2 uses
  %i.al = icmp samesign ult i32 %1, 3
  %i.am = mul nsw i64 %i.aj, 3                    ; 2 uses
  %i.an = icmp samesign ult i32 %1, 4
  %i.ao = shl nsw i64 %i.aj, 2                    ; 5 uses
  %i.ap = icmp samesign ult i32 %1, 5
  %i.aq = mul nsw i64 %i.aj, 5                    ; 2 uses
  %i.ar = icmp samesign ult i32 %1, 6
  %i.as = mul nsw i64 %i.aj, 6                    ; 2 uses
  %i.at = icmp samesign ult i32 %1, 7
  %i.au = mul nsw i64 %i.aj, 7                    ; 2 uses
  %i.av = icmp samesign ult i32 %1, 8
  %i.aw = shl nsw i64 %i.aj, 3                    ; 2 uses
  br i1 %i.ai, label %.preheader.lr.ph.split.i, label %_dilating.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.ax = icmp slt i32 %1, 2
  %wide.trip.count35.i = sext i32 %i.ah to i64    ; 2 uses
  br i1 %i.ax, label %.preheader.us.i.preheader, label %.preheader.i

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.split.i
  %i.ay = add nsw i64 %i.aj, 1
  %i.az = mul i64 %i.ay, %i.p
  %i.ba = shl i64 %i.az, 2                        ; 3 uses
  %scevgep92 = getelementptr i8, ptr %i.af, i64 %i.ba ; 3 uses
  %i.bb = shl nsw i64 %i.q, 2                     ; 2 uses
  %i.bc = shl nsw i64 %i.p, 2                     ; 2 uses
  %i.bd = sub nsw i64 %i.bb, %i.bc
  %i.be = mul i64 %i.bd, %i.aj                    ; 2 uses
  %i.bf = add nsw i64 %i.ao, -4
  %i.bg = mul i64 %i.bf, %i.p                     ; 4 uses
  %i.bh = getelementptr i8, ptr %i.af, i64 %i.be
  %scevgep93 = getelementptr i8, ptr %i.bh, i64 %i.bg ; 3 uses
  %i.bi = getelementptr i8, ptr %i.a, i64 %i.ba
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.ao
  %scevgep94 = getelementptr i8, ptr %i.bj, i64 -4
  %i.bk = add nsw i64 %i.bb, 4
  %i.bl = sub nsw i64 %i.bk, %i.bc
  %i.bm = mul i64 %i.bl, %i.aj
  %i.bn = getelementptr i8, ptr %i.a, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.bg
  %scevgep95 = getelementptr i8, ptr %i.bo, i64 4
  %i.bp = add i64 %i.ba, -4                       ; 2 uses
  %scevgep96 = getelementptr i8, ptr %i.a, i64 %i.bp
  %i.bq = getelementptr i8, ptr %i.a, i64 %i.be
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bg
  %scevgep97 = getelementptr i8, ptr %i.br, i64 4
  %i.bs = sub i64 %i.bp, %i.ao
  %scevgep98 = getelementptr i8, ptr %i.a, i64 %i.bs
  %i.bt = xor i64 %i.p, -1
  %i.bu = add nsw i64 %i.bt, %i.q
  %i.bv = mul i64 %i.bu, %i.aj
  %i.bw = shl i64 %i.bv, 2
  %i.bx = getelementptr i8, ptr %i.a, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bg
  %scevgep99 = getelementptr i8, ptr %i.by, i64 4
  %i.bz = shl nsw i64 %i.p, 1
  %i.ca = sub nsw i64 %i.aj, %i.bz                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ca, 8
  %bound0 = icmp ult ptr %scevgep92, %scevgep95
  %bound1 = icmp ult ptr %scevgep94, %scevgep93
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.c, 0
  %2 = or i1 %found.conflict, %stride.check
  %bound0100 = icmp ult ptr %scevgep92, %scevgep97
  %bound1101 = icmp ult ptr %scevgep96, %scevgep93
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx = or i1 %2, %found.conflict102
  %bound0106 = icmp ult ptr %scevgep92, %scevgep99
  %bound1107 = icmp ult ptr %scevgep98, %scevgep93
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx111 = or i1 %conflict.rdx, %found.conflict108
  %n.vec = and i64 %i.ca, -8                      ; 3 uses
  %i.cb = add nsw i64 %n.vec, %i.p
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.split.us.us.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %._crit_edge.split.us.us.i ], [ %i.p, %.preheader.us.i.preheader ] ; 2 uses
  %i.cc = mul nsw i64 %indvars.iv37.i, %i.aj      ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx111
  br i1 %brmerge, label %_test_dilate.exit.us.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i
  %invariant.op = add i64 %i.p, %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add i64 %index, %invariant.op         ; 3 uses
  %i.cd = sub nsw i64 %.reass, %i.aj
  %i.ce = getelementptr [4 x i8], ptr %i.a, i64 %i.cd ; 3 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 -4
  %wide.load = load <8 x i32>, ptr %i.cf, align 4, !tbaa !15, !alias.scope !291
  %wide.load112.a = load <8 x i32>, ptr %i.ce, align 4, !tbaa !15, !alias.scope !291
  %i.cg = or <8 x i32> %wide.load112.a, %wide.load
  %i.ch = getelementptr i8, ptr %i.ce, i64 4
  %wide.load113.a = load <8 x i32>, ptr %i.ch, align 4, !tbaa !15, !alias.scope !291
  %i.ci = or <8 x i32> %i.cg, %wide.load113.a
  %i.cj = getelementptr [4 x i8], ptr %i.a, i64 %.reass ; 4 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -4
  %wide.load114.a = load <8 x i32>, ptr %i.ck, align 4, !tbaa !15, !alias.scope !292
  %i.cl = or <8 x i32> %i.ci, %wide.load114.a
  %wide.load115 = load <8 x i32>, ptr %i.cj, align 4, !tbaa !15, !alias.scope !292
  %i.cm = or <8 x i32> %i.cl, %wide.load115
  %i.cn = getelementptr i8, ptr %i.cj, i64 4
  %wide.load116 = load <8 x i32>, ptr %i.cn, align 4, !tbaa !15, !alias.scope !292
  %i.co = or <8 x i32> %i.cm, %wide.load116
  %i.cp = getelementptr [4 x i8], ptr %i.cj, i64 %i.aj ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 -4
  %wide.load117 = load <8 x i32>, ptr %i.cq, align 4, !tbaa !15, !alias.scope !293
  %i.cr = or <8 x i32> %i.co, %wide.load117
  %wide.load118 = load <8 x i32>, ptr %i.cp, align 4, !tbaa !15, !alias.scope !293
  %i.cs = or <8 x i32> %i.cr, %wide.load118
  %i.ct = getelementptr i8, ptr %i.cp, i64 4
  %wide.load119 = load <8 x i32>, ptr %i.ct, align 4, !tbaa !15, !alias.scope !293
  %i.cu = or <8 x i32> %i.cs, %wide.load119
  %i.cv = icmp ne <8 x i32> %i.cu, zeroinitializer
  %i.cw = zext <8 x i1> %i.cv to <8 x i32>
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.reass
  store <8 x i32> %i.cw, ptr %i.cx, align 4, !tbaa !15, !alias.scope !294, !noalias !295
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us.us.i, label %_test_dilate.exit.us.us.i.preheader

_test_dilate.exit.us.us.i.preheader:              ; preds = %.preheader.us.i, %middle.block
  %indvars.iv32.i.ph = phi i64 [ %i.cb, %middle.block ], [ %i.p, %.preheader.us.i ]
  br label %_test_dilate.exit.us.us.i

_test_dilate.exit.us.us.i:                        ; preds = %_test_dilate.exit.us.us.i.preheader, %_test_dilate.exit.us.us.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %_test_dilate.exit.us.us.i ], [ %indvars.iv32.i.ph, %_test_dilate.exit.us.us.i.preheader ] ; 2 uses
  %i.cz = add nsw i64 %indvars.iv32.i, %i.cc      ; 3 uses
  %i.da = sub nsw i64 %i.cz, %i.aj
  %i.db = getelementptr [4 x i8], ptr %i.a, i64 %i.da ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 -4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !15
  %i.de = getelementptr [4 x i8], ptr %i.a, i64 %i.cz ; 3 uses
  %i.df = getelementptr i8, ptr %i.de, i64 -4
  %i.dg = getelementptr i8, ptr %i.de, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !15
  %i.di = getelementptr [4 x i8], ptr %i.de, i64 %i.aj ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !15
  %i.dl = load <2 x i32>, ptr %i.db, align 4, !tbaa !15
  %i.dm = load <2 x i32>, ptr %i.df, align 4, !tbaa !15
  %i.dn = load <2 x i32>, ptr %i.di, align 4, !tbaa !15
  %i.do = insertelement <8 x i32> poison, i32 %i.dh, i64 4
  %i.dp = insertelement <8 x i32> %i.do, i32 %i.dk, i64 5
  %i.dq = shufflevector <2 x i32> %i.dl, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dr = shufflevector <8 x i32> %i.dq, <8 x i32> %i.dp, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 12, i32 13, i32 poison, i32 poison>
  %i.ds = shufflevector <2 x i32> %i.dm, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dt = shufflevector <8 x i32> %i.dr, <8 x i32> %i.ds, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.du = shufflevector <2 x i32> %i.dn, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dv = shufflevector <8 x i32> %i.dt, <8 x i32> %i.du, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.dw = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %i.dv)
  %op.rdx1042 = or i32 %i.dw, %i.dd
  %.not.us.us.i = icmp ne i32 %op.rdx1042, 0
  %i.dx = zext i1 %.not.us.us.i to i32
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.cz
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !15
  %indvars.iv.next33.i = add nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count35.i
  br i1 %exitcond36.not.i, label %._crit_edge.split.us.us.i, label %_test_dilate.exit.us.us.i, !llvm.loop !184

._crit_edge.split.us.us.i:                        ; preds = %_test_dilate.exit.us.us.i, %middle.block
  %indvars.iv.next38.i = add nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %i.q
  br i1 %exitcond41.not.i, label %_dilating.exit, label %.preheader.us.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.split.i, %._crit_edge.split.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %._crit_edge.split.i ], [ %i.p, %.preheader.lr.ph.split.i ] ; 2 uses
  %i.dz = mul nsw i64 %indvars.iv27.i, %i.aj
  br label %bb.b

._crit_edge.split.i:                              ; preds = %_test_dilate.exit.i
  %indvars.iv.next28.i = add nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %i.q
  br i1 %exitcond31.not.i, label %_dilating.exit, label %.preheader.i

bb.b:                                             ; preds = %_test_dilate.exit.i, %.preheader.i
  %indvars.iv.i = phi i64 [ %i.p, %.preheader.i ], [ %indvars.iv.next.i, %_test_dilate.exit.i ] ; 2 uses
  %i.ea = add nsw i64 %indvars.iv.i, %i.dz        ; 10 uses
  %i.eb = sub nsw i64 %i.ea, %i.aj
  %i.ec = getelementptr [4 x i8], ptr %i.a, i64 %i.eb ; 14 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 -4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !15
  %i.ef = getelementptr [4 x i8], ptr %i.a, i64 %i.ea ; 19 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 -4
  %i.eh = getelementptr i8, ptr %i.ef, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !15
  %i.ej = getelementptr [4 x i8], ptr %i.ef, i64 %i.aj ; 9 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 -4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !15
  %i.em = load <2 x i32>, ptr %i.ec, align 4, !tbaa !15
  %i.en = load <2 x i32>, ptr %i.eg, align 4, !tbaa !15
  %i.eo = load <2 x i32>, ptr %i.ej, align 4, !tbaa !15
  %i.ep = insertelement <8 x i32> poison, i32 %i.ei, i64 4
  %i.eq = insertelement <8 x i32> %i.ep, i32 %i.el, i64 5
  %i.er = shufflevector <2 x i32> %i.em, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.es = shufflevector <8 x i32> %i.er, <8 x i32> %i.eq, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 12, i32 13, i32 poison, i32 poison>
  %i.et = shufflevector <2 x i32> %i.en, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eu = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.ev = shufflevector <2 x i32> %i.eo, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ew = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ev, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ex = tail call i32 @llvm.vector.reduce.or.v8i32(<8 x i32> %i.ew)
  %op.rdx1043 = or i32 %i.ex, %i.ee               ; 2 uses
  %.not24.i = icmp eq i32 %op.rdx1043, 0
  br i1 %.not24.i, label %bb.c, label %_test_dilate.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ey = sub nsw i64 %i.ea, %i.ak
  %i.ez = getelementptr [4 x i8], ptr %i.a, i64 %i.ey ; 11 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 -4
  %i.fb = load <2 x i32>, ptr %i.fa, align 4, !tbaa !15
  %i.fc = getelementptr i8, ptr %i.ez, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !15
  %i.fe = getelementptr i8, ptr %i.ec, i64 -8
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !15
  %i.fg = getelementptr i8, ptr %i.ec, i64 8
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !15
  %i.fi = getelementptr i8, ptr %i.ef, i64 -8
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !15
  %i.fk = getelementptr i8, ptr %i.ef, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !15
  %i.fm = getelementptr i8, ptr %i.ej, i64 -8
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !15
  %i.fo = getelementptr i8, ptr %i.ej, i64 8
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !15
  %i.fq = getelementptr [4 x i8], ptr %i.ef, i64 %i.ak ; 11 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 -4
  %i.fs = load <2 x i32>, ptr %i.fr, align 4, !tbaa !15
  %i.ft = getelementptr i8, ptr %i.fq, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !15
  %i.fv = insertelement <4 x i32> poison, i32 %i.fn, i64 0
  %i.fw = insertelement <4 x i32> %i.fv, i32 %i.fp, i64 1
  %i.fx = shufflevector <2 x i32> %i.fs, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fy = shufflevector <4 x i32> %i.fw, <4 x i32> %i.fx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fz = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fy)
  %i.ga = insertelement <4 x i32> poison, i32 %i.fd, i64 2
  %i.gb = insertelement <4 x i32> %i.ga, i32 %i.fu, i64 3
  %i.gc = shufflevector <2 x i32> %i.fb, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gd = shufflevector <4 x i32> %i.gc, <4 x i32> %i.gb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ge = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.gd)
  %op.rdx1052 = or i32 %i.ge, %i.ff
  %op.rdx1053 = or i32 %i.fh, %i.fj
  %op.rdx1054 = or i32 %i.fl, %i.fz
  %op.rdx1055 = or i32 %op.rdx1052, %op.rdx1053
  %op.rdx1056 = or i32 %op.rdx1055, %op.rdx1054   ; 2 uses
  %i.gf = icmp ne i32 %op.rdx1056, 0
  %or.cond3.i.i = or i1 %i.al, %i.gf
  br i1 %or.cond3.i.i, label %_test_dilate.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.gg = sub nsw i64 %i.ea, %i.am
  %i.gh = getelementptr [4 x i8], ptr %i.a, i64 %i.gg ; 11 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 -8
  %i.gj = load i32, ptr %i.gh, align 4, !tbaa !15
  %i.gk = getelementptr [4 x i8], ptr %i.ef, i64 %i.am ; 9 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 -8
  %i.gm = load <2 x i32>, ptr %i.gi, align 4, !tbaa !15
  %i.gn = getelementptr i8, ptr %i.gh, i64 4
  %i.go = load <2 x i32>, ptr %i.gn, align 4, !tbaa !15
  %i.gp = getelementptr i8, ptr %i.ez, i64 -12
  %i.gq = tail call <7 x i32> @llvm.masked.load.v7i32.p0(ptr align 4 %i.gp, <7 x i1> <i1 true, i1 true, i1 false, i1 false, i1 false, i1 true, i1 true>, <7 x i32> poison), !tbaa !15
  %i.gr = getelementptr i8, ptr %i.ec, i64 -12
  %i.gs = tail call <7 x i32> @llvm.masked.load.v7i32.p0(ptr align 4 %i.gr, <7 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true>, <7 x i32> poison), !tbaa !15
  %i.gt = getelementptr i8, ptr %i.ef, i64 -12
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !15
  %i.gv = getelementptr i8, ptr %i.ef, i64 12
end_hunk_0
begin_hunk_1_@dt_segments_combine:bb.a
  %n.vec156 = and i64 %i.p, -8                    ; 3 uses
  %cmp.n161 = icmp eq i64 %n.vec156, %i.p
  %xtraiter1095 = and i64 %i.p, 7
  %i.aaf = and i32 %i.g, 7
  %lcmp.mod1096.not = icmp eq i32 %i.aaf, 0
  br label %iter.check151

.lr.ph.i35:                                       ; preds = %.lr.ph.i35.prol.loopexit, %.lr.ph.i35
  %.03334.i36 = phi i64 [ %i.abd, %.lr.ph.i35 ], [ %.03334.i36.unr, %.lr.ph.i35.prol.loopexit ] ; 9 uses
  %i.aag = getelementptr [4 x i8], ptr %i.af, i64 %.03334.i36 ; 2 uses
  %i.aah = getelementptr [4 x i8], ptr %i.aag, i64 %i.k
  store i32 1, ptr %i.aah, align 4, !tbaa !15
  store i32 1, ptr %i.aag, align 4, !tbaa !15
  %i.aai = getelementptr [4 x i8], ptr %i.af, i64 %.03334.i36
  %i.aaj = getelementptr i8, ptr %i.aai, i64 4    ; 2 uses
  %i.aak = getelementptr [4 x i8], ptr %i.aaj, i64 %i.k
  store i32 1, ptr %i.aak, align 4, !tbaa !15
  store i32 1, ptr %i.aaj, align 4, !tbaa !15
  %i.aal = getelementptr [4 x i8], ptr %i.af, i64 %.03334.i36
  %i.aam = getelementptr i8, ptr %i.aal, i64 8    ; 2 uses
  %i.aan = getelementptr [4 x i8], ptr %i.aam, i64 %i.k
  store i32 1, ptr %i.aan, align 4, !tbaa !15
  store i32 1, ptr %i.aam, align 4, !tbaa !15
  %i.aao = getelementptr [4 x i8], ptr %i.af, i64 %.03334.i36
  %i.aap = getelementptr i8, ptr %i.aao, i64 12   ; 2 uses
  %i.aaq = getelementptr [4 x i8], ptr %i.aap, i64 %i.k
  store i32 1, ptr %i.aaq, align 4, !tbaa !15
  store i32 1, ptr %i.aap, align 4, !tbaa !15
  %i.aar = getelementptr [4 x i8], ptr %i.af, i64 %.03334.i36
  %i.aas = getelementptr i8, ptr %i.aar, i64 16   ; 2 uses
  %i.aat = getelementptr [4 x i8], ptr %i.aas, i64 %i.k
  store i32 1, ptr %i.aat, align 4, !tbaa !15
  store i32 1, ptr %i.aas, align 4, !tbaa !15
  %i.aau = getelementptr [4 x i8], ptr %i.af, i64 %.03334.i36
  %i.aav = getelementptr i8, ptr %i.aau, i64 20   ; 2 uses
  %i.aaw = getelementptr [4 x i8], ptr %i.aav, i64 %i.k
  store i32 1, ptr %i.aaw, align 4, !tbaa !15
  store i32 1, ptr %i.aav, align 4, !tbaa !15
  %i.aax = getelementptr [4 x i8], ptr %i.af, i64 %.03334.i36
  %i.aay = getelementptr i8, ptr %i.aax, i64 24   ; 2 uses
  %i.aaz = getelementptr [4 x i8], ptr %i.aay, i64 %i.k
  store i32 1, ptr %i.aaz, align 4, !tbaa !15
  store i32 1, ptr %i.aay, align 4, !tbaa !15
  %i.aba = getelementptr [4 x i8], ptr %i.af, i64 %.03334.i36
  %i.abb = getelementptr i8, ptr %i.aba, i64 28   ; 2 uses
  %i.abc = getelementptr [4 x i8], ptr %i.abb, i64 %i.k
  store i32 1, ptr %i.abc, align 4, !tbaa !15
  store i32 1, ptr %i.abb, align 4, !tbaa !15
  %i.abd = add nuw i64 %.03334.i36, 8             ; 2 uses
  %exitcond.not.i37.7 = icmp eq i64 %i.abd, %i.m
  br i1 %exitcond.not.i37.7, label %._crit_edge.i38, label %.lr.ph.i35, !llvm.loop !188

iter.check151:                                    ; preds = %.lr.ph37.i41.preheader, %._crit_edge38.i45
  %.03239.i42 = phi i64 [ %i.abx, %._crit_edge38.i45 ], [ %i.p, %.lr.ph37.i41.preheader ] ; 2 uses
  %i.abe = mul i64 %.03239.i42, %i.zx
  %i.abf = getelementptr [4 x i8], ptr %i.af, i64 %i.abe ; 11 uses
  br i1 %or.cond1025, label %vec.epilog.scalar.ph152.preheader, label %vector.main.loop.iter.check141

vector.main.loop.iter.check141:                   ; preds = %iter.check151
  br i1 %min.iters.check142, label %vec.epilog.ph155, label %vector.body145

vector.body145:                                   ; preds = %vector.main.loop.iter.check141, %vector.body145
  %index146 = phi i64 [ %index.next147, %vector.body145 ], [ 0, %vector.main.loop.iter.check141 ] ; 2 uses
  %i.abg = getelementptr [4 x i8], ptr %i.abf, i64 %index146 ; 5 uses
  %i.abh = getelementptr [4 x i8], ptr %i.abg, i64 %i.zz ; 4 uses
  %i.abi = getelementptr i8, ptr %i.abh, i64 32
  %i.abj = getelementptr i8, ptr %i.abh, i64 64
  %i.abk = getelementptr i8, ptr %i.abh, i64 96
  store <8 x i32> splat (i32 1), ptr %i.abh, align 4, !tbaa !15
  store <8 x i32> splat (i32 1), ptr %i.abi, align 4, !tbaa !15
  store <8 x i32> splat (i32 1), ptr %i.abj, align 4, !tbaa !15
  store <8 x i32> splat (i32 1), ptr %i.abk, align 4, !tbaa !15
  %i.abl = getelementptr i8, ptr %i.abg, i64 32
  %i.abm = getelementptr i8, ptr %i.abg, i64 64
  %i.abn = getelementptr i8, ptr %i.abg, i64 96
  store <8 x i32> splat (i32 1), ptr %i.abg, align 4, !tbaa !15
  store <8 x i32> splat (i32 1), ptr %i.abl, align 4, !tbaa !15
  store <8 x i32> splat (i32 1), ptr %i.abm, align 4, !tbaa !15
  store <8 x i32> splat (i32 1), ptr %i.abn, align 4, !tbaa !15
  %index.next147 = add nuw i64 %index146, 32      ; 2 uses
  %i.abo = icmp eq i64 %index.next147, %n.vec144
  br i1 %i.abo, label %middle.block148, label %vector.body145, !llvm.loop !189

middle.block148:                                  ; preds = %vector.body145
  br i1 %cmp.n149, label %._crit_edge38.i45, label %vec.epilog.iter.check153

vec.epilog.iter.check153:                         ; preds = %middle.block148
  br i1 %min.epilog.iters.check154, label %vec.epilog.scalar.ph152.preheader, label %vec.epilog.ph155, !prof !33

vec.epilog.ph155:                                 ; preds = %vector.main.loop.iter.check141, %vec.epilog.iter.check153
  %vec.epilog.resume.val150 = phi i64 [ %n.vec144, %vec.epilog.iter.check153 ], [ 0, %vector.main.loop.iter.check141 ]
  br label %vec.epilog.vector.body157

vec.epilog.vector.body157:                        ; preds = %vec.epilog.vector.body157, %vec.epilog.ph155
  %index158 = phi i64 [ %vec.epilog.resume.val150, %vec.epilog.ph155 ], [ %index.next159, %vec.epilog.vector.body157 ] ; 2 uses
  %i.abp = getelementptr [4 x i8], ptr %i.abf, i64 %index158 ; 2 uses
  %i.abq = getelementptr [4 x i8], ptr %i.abp, i64 %i.zz
  store <8 x i32> splat (i32 1), ptr %i.abq, align 4, !tbaa !15
  store <8 x i32> splat (i32 1), ptr %i.abp, align 4, !tbaa !15
  %index.next159 = add nuw i64 %index158, 8       ; 2 uses
  %i.abr = icmp eq i64 %index.next159, %n.vec156
  br i1 %i.abr, label %vec.epilog.middle.block160, label %vec.epilog.vector.body157, !llvm.loop !190

vec.epilog.middle.block160:                       ; preds = %vec.epilog.vector.body157
  br i1 %cmp.n161, label %._crit_edge38.i45, label %vec.epilog.scalar.ph152.preheader

vec.epilog.scalar.ph152.preheader:                ; preds = %iter.check151, %vec.epilog.iter.check153, %vec.epilog.middle.block160
  %.035.i43.ph = phi i64 [ 0, %iter.check151 ], [ %n.vec144, %vec.epilog.iter.check153 ], [ %n.vec156, %vec.epilog.middle.block160 ] ; 3 uses
  br i1 %lcmp.mod1096.not, label %vec.epilog.scalar.ph152.prol.loopexit, label %vec.epilog.scalar.ph152.prol

vec.epilog.scalar.ph152.prol:                     ; preds = %vec.epilog.scalar.ph152.preheader, %vec.epilog.scalar.ph152.prol
  %.035.i43.prol = phi i64 [ %i.abu, %vec.epilog.scalar.ph152.prol ], [ %.035.i43.ph, %vec.epilog.scalar.ph152.preheader ] ; 2 uses
  %prol.iter1097 = phi i64 [ %prol.iter1097.next, %vec.epilog.scalar.ph152.prol ], [ 0, %vec.epilog.scalar.ph152.preheader ]
  %i.abs = getelementptr [4 x i8], ptr %i.abf, i64 %.035.i43.prol ; 2 uses
  %i.abt = getelementptr [4 x i8], ptr %i.abs, i64 %i.zz
  store i32 1, ptr %i.abt, align 4, !tbaa !15
  store i32 1, ptr %i.abs, align 4, !tbaa !15
  %i.abu = add nuw i64 %.035.i43.prol, 1          ; 2 uses
  %prol.iter1097.next = add i64 %prol.iter1097, 1 ; 2 uses
  %prol.iter1097.cmp.not = icmp eq i64 %prol.iter1097.next, %xtraiter1095
  br i1 %prol.iter1097.cmp.not, label %vec.epilog.scalar.ph152.prol.loopexit, label %vec.epilog.scalar.ph152.prol, !llvm.loop !191

vec.epilog.scalar.ph152.prol.loopexit:            ; preds = %vec.epilog.scalar.ph152.prol, %vec.epilog.scalar.ph152.preheader
  %.035.i43.unr = phi i64 [ %.035.i43.ph, %vec.epilog.scalar.ph152.preheader ], [ %i.abu, %vec.epilog.scalar.ph152.prol ]
  %i.abv = sub nsw i64 %.035.i43.ph, %i.p
  %i.abw = icmp ugt i64 %i.abv, -8
  br i1 %i.abw, label %._crit_edge38.i45, label %vec.epilog.scalar.ph152

._crit_edge38.i45:                                ; preds = %vec.epilog.scalar.ph152.prol.loopexit, %vec.epilog.scalar.ph152, %vec.epilog.middle.block160, %middle.block148
  %i.abx = add i64 %.03239.i42, 1                 ; 2 uses
  %i.aby = icmp ult i64 %i.abx, %i.q
  br i1 %i.aby, label %iter.check151, label %_intimage_borderfill.exit46

vec.epilog.scalar.ph152:                          ; preds = %vec.epilog.scalar.ph152.prol.loopexit, %vec.epilog.scalar.ph152
  %.035.i43 = phi i64 [ %i.acw, %vec.epilog.scalar.ph152 ], [ %.035.i43.unr, %vec.epilog.scalar.ph152.prol.loopexit ] ; 9 uses
  %i.abz = getelementptr [4 x i8], ptr %i.abf, i64 %.035.i43 ; 2 uses
  %i.aca = getelementptr [4 x i8], ptr %i.abz, i64 %i.zz
  store i32 1, ptr %i.aca, align 4, !tbaa !15
  store i32 1, ptr %i.abz, align 4, !tbaa !15
  %i.acb = getelementptr [4 x i8], ptr %i.abf, i64 %.035.i43
  %i.acc = getelementptr i8, ptr %i.acb, i64 4    ; 2 uses
  %i.acd = getelementptr [4 x i8], ptr %i.acc, i64 %i.zz
  store i32 1, ptr %i.acd, align 4, !tbaa !15
  store i32 1, ptr %i.acc, align 4, !tbaa !15
  %i.ace = getelementptr [4 x i8], ptr %i.abf, i64 %.035.i43
  %i.acf = getelementptr i8, ptr %i.ace, i64 8    ; 2 uses
  %i.acg = getelementptr [4 x i8], ptr %i.acf, i64 %i.zz
  store i32 1, ptr %i.acg, align 4, !tbaa !15
  store i32 1, ptr %i.acf, align 4, !tbaa !15
  %i.ach = getelementptr [4 x i8], ptr %i.abf, i64 %.035.i43
  %i.aci = getelementptr i8, ptr %i.ach, i64 12   ; 2 uses
  %i.acj = getelementptr [4 x i8], ptr %i.aci, i64 %i.zz
  store i32 1, ptr %i.acj, align 4, !tbaa !15
  store i32 1, ptr %i.aci, align 4, !tbaa !15
  %i.ack = getelementptr [4 x i8], ptr %i.abf, i64 %.035.i43
  %i.acl = getelementptr i8, ptr %i.ack, i64 16   ; 2 uses
  %i.acm = getelementptr [4 x i8], ptr %i.acl, i64 %i.zz
  store i32 1, ptr %i.acm, align 4, !tbaa !15
  store i32 1, ptr %i.acl, align 4, !tbaa !15
  %i.acn = getelementptr [4 x i8], ptr %i.abf, i64 %.035.i43
  %i.aco = getelementptr i8, ptr %i.acn, i64 20   ; 2 uses
  %i.acp = getelementptr [4 x i8], ptr %i.aco, i64 %i.zz
  store i32 1, ptr %i.acp, align 4, !tbaa !15
  store i32 1, ptr %i.aco, align 4, !tbaa !15
  %i.acq = getelementptr [4 x i8], ptr %i.abf, i64 %.035.i43
  %i.acr = getelementptr i8, ptr %i.acq, i64 24   ; 2 uses
  %i.acs = getelementptr [4 x i8], ptr %i.acr, i64 %i.zz
  store i32 1, ptr %i.acs, align 4, !tbaa !15
  store i32 1, ptr %i.acr, align 4, !tbaa !15
  %i.act = getelementptr [4 x i8], ptr %i.abf, i64 %.035.i43
  %i.acu = getelementptr i8, ptr %i.act, i64 28   ; 2 uses
  %i.acv = getelementptr [4 x i8], ptr %i.acu, i64 %i.zz
  store i32 1, ptr %i.acv, align 4, !tbaa !15
  store i32 1, ptr %i.acu, align 4, !tbaa !15
  %i.acw = add nuw i64 %.035.i43, 8               ; 2 uses
  %exitcond44.not.i44.7 = icmp eq i64 %i.acw, %i.p
  br i1 %exitcond44.not.i44.7, label %._crit_edge38.i45, label %vec.epilog.scalar.ph152, !llvm.loop !192

_intimage_borderfill.exit46:                      ; preds = %._crit_edge38.i45, %._crit_edge.i38, %.lr.ph41.i39
  br i1 %i.ag, label %.preheader.lr.ph.i47, label %_eroding.exit

.preheader.lr.ph.i47:                             ; preds = %_intimage_borderfill.exit46
  %i.acx = sub nsw i32 %i.c, %i.g                 ; 2 uses
  %i.acy = icmp slt i32 %i.g, %i.acx
  %i.acz = sext i32 %i.c to i64                   ; 34 uses
  %i.ada = shl nsw i64 %i.acz, 1                  ; 4 uses
  %i.adb = icmp slt i32 %1, 6                     ; 2 uses
  %i.adc = mul nsw i64 %i.acz, 3                  ; 4 uses
  %i.add = icmp samesign ult i32 %1, 7            ; 2 uses
  %i.ade = shl nsw i64 %i.acz, 2                  ; 23 uses
  %i.adf = icmp samesign ult i32 %1, 8            ; 2 uses
  %i.adg = mul nsw i64 %i.acz, 5                  ; 4 uses
  br i1 %i.acy, label %.preheader.lr.ph.split.i48, label %_eroding.exit

.preheader.lr.ph.split.i48:                       ; preds = %.preheader.lr.ph.i47
  %i.adh = icmp eq i32 %1, 4
  %wide.trip.count34.i = sext i32 %i.acx to i64   ; 2 uses
  %i.adi = add nsw i64 %i.acz, 1
  %i.adj = mul i64 %i.adi, %i.p
  %i.adk = shl i64 %i.adj, 2                      ; 83 uses
  %scevgep979 = getelementptr i8, ptr %i.a, i64 %i.adk ; 8 uses
  %i.adl = shl nsw i64 %i.q, 2                    ; 10 uses
  %i.adm = shl nsw i64 %i.p, 2                    ; 10 uses
  %i.adn = sub nsw i64 %i.adl, %i.adm
  %i.ado = mul i64 %i.adn, %i.acz                 ; 9 uses
  %i.adp = add nsw i64 %i.ade, -4
  %i.adq = mul i64 %i.adp, %i.p                   ; 53 uses
  br i1 %i.adh, label %.preheader.us.i58.preheader, label %.preheader.i49.preheader

.preheader.i49.preheader:                         ; preds = %.preheader.lr.ph.split.i48
  %i.adr = add i64 %i.ado, %i.adq                 ; 2 uses
  %scevgep165 = getelementptr i8, ptr %i.a, i64 %i.adr ; 4 uses
  %i.ads = mul nsw i64 %i.acz, 20                 ; 6 uses
  %i.adt = getelementptr i8, ptr %i.af, i64 %i.adk
  %i.adu = getelementptr i8, ptr %i.adt, i64 %i.ads
  %i.adv = add nsw i64 %i.adl, 20
  %i.adw = sub nsw i64 %i.adv, %i.adm
  %i.adx = mul i64 %i.adw, %i.acz
  %i.ady = getelementptr i8, ptr %i.af, i64 %i.adx
  %i.adz = getelementptr i8, ptr %i.ady, i64 %i.adq
  %i.aea = shl nsw i64 %i.acz, 4                  ; 13 uses
  %i.aeb = getelementptr i8, ptr %i.af, i64 %i.adk
  %i.aec = getelementptr i8, ptr %i.aeb, i64 %i.aea
  %i.aed = add nsw i64 %i.adl, 16
  %i.aee = sub nsw i64 %i.aed, %i.adm
  %i.aef = mul i64 %i.aee, %i.acz                 ; 4 uses
  %i.aeg = getelementptr i8, ptr %i.af, i64 %i.aef
  %i.aeh = getelementptr i8, ptr %i.aeg, i64 %i.adq
  %i.aei = mul nsw i64 %i.acz, 12                 ; 13 uses
  %i.aej = getelementptr i8, ptr %i.af, i64 %i.adk
  %i.aek = getelementptr i8, ptr %i.aej, i64 %i.aei
  %i.ael = add nsw i64 %i.adl, 12
  %i.aem = sub nsw i64 %i.ael, %i.adm
  %i.aen = mul i64 %i.aem, %i.acz                 ; 5 uses
  %i.aeo = getelementptr i8, ptr %i.af, i64 %i.aen
  %i.aep = getelementptr i8, ptr %i.aeo, i64 %i.adq
  %i.aeq = shl nsw i64 %i.acz, 3                  ; 16 uses
  %i.aer = getelementptr i8, ptr %i.af, i64 %i.adk
  %i.aes = getelementptr i8, ptr %i.aer, i64 %i.aeq
  %i.aet = insertelement <4 x ptr> poison, ptr %i.adu, i64 0
  %i.aeu = insertelement <4 x ptr> %i.aet, ptr %i.aec, i64 1
  %i.aev = insertelement <4 x ptr> %i.aeu, ptr %i.aek, i64 2
  %i.aew = insertelement <4 x ptr> %i.aev, ptr %i.aes, i64 3
  %i.aex = getelementptr i8, <4 x ptr> %i.aew, <4 x i64> <i64 -8, i64 -16, i64 -16, i64 -20>
  %i.aey = add nsw i64 %i.adl, 8
  %i.aez = sub nsw i64 %i.aey, %i.adm
  %i.afa = mul i64 %i.aez, %i.acz                 ; 6 uses
  %i.afb = getelementptr i8, ptr %i.af, i64 %i.afa
  %i.afc = getelementptr i8, ptr %i.afb, i64 %i.adq
  %i.afd = getelementptr i8, ptr %i.af, i64 %i.adk
  %i.afe = getelementptr i8, ptr %i.afd, i64 %i.ade
  %scevgep174 = getelementptr i8, ptr %i.afe, i64 -20
  %i.aff = add nsw i64 %i.adl, 4
  %i.afg = sub nsw i64 %i.aff, %i.adm
  %i.afh = mul i64 %i.afg, %i.acz                 ; 6 uses
  %i.afi = getelementptr i8, ptr %i.af, i64 %i.afh
  %i.afj = getelementptr i8, ptr %i.afi, i64 %i.adq
  %i.afk = add i64 %i.adk, -20                    ; 2 uses
  %scevgep176 = getelementptr i8, ptr %i.af, i64 %i.afk
  %i.afl = getelementptr i8, ptr %i.af, i64 %i.ado
  %i.afm = getelementptr i8, ptr %i.afl, i64 %i.adq
  %i.afn = sub i64 %i.afk, %i.ade
  %scevgep178.a = getelementptr i8, ptr %i.af, i64 %i.afn
  %i.afo = xor i64 %i.p, -1
  %i.afp = add nsw i64 %i.afo, %i.q
  %i.afq = mul i64 %i.afp, %i.acz
  %i.afr = shl i64 %i.afq, 2                      ; 13 uses
  %i.afs = getelementptr i8, ptr %i.af, i64 %i.afr
  %i.aft = getelementptr i8, ptr %i.afs, i64 %i.adq
  %i.afu = add i64 %i.adk, -20
  %i.afv = sub i64 %i.afu, %i.aeq
  %scevgep180 = getelementptr i8, ptr %i.af, i64 %i.afv
  %i.afw = add nsw i64 %i.adl, -8
  %i.afx = sub nsw i64 %i.afw, %i.adm
  %i.afy = mul i64 %i.afx, %i.acz                 ; 6 uses
  %i.afz = getelementptr i8, ptr %i.af, i64 %i.afy
  %i.aga = getelementptr i8, ptr %i.afz, i64 %i.adq
  %i.agb = insertelement <8 x ptr> poison, ptr %i.adz, i64 0
  %i.agc = insertelement <8 x ptr> %i.agb, ptr %i.aeh, i64 1
  %i.agd = insertelement <8 x ptr> %i.agc, ptr %i.aep, i64 2
  %i.age = insertelement <8 x ptr> %i.agd, ptr %i.afc, i64 3
  %i.agf = insertelement <8 x ptr> %i.age, ptr %i.afj, i64 4
  %i.agg = insertelement <8 x ptr> %i.agf, ptr %i.afm, i64 5
  %i.agh = insertelement <8 x ptr> %i.agg, ptr %i.aft, i64 6
  %i.agi = insertelement <8 x ptr> %i.agh, ptr %i.aga, i64 7
  %i.agj = getelementptr i8, <8 x ptr> %i.agi, <8 x i64> <i64 8, i64 16, i64 16, i64 20, i64 20, i64 20, i64 20, i64 20>
  %i.agk = add i64 %i.adk, -16
  %i.agl = sub i64 %i.agk, %i.aei
  %scevgep182 = getelementptr i8, ptr %i.af, i64 %i.agl
  %i.agm = add i64 %i.afr, %i.adk
  %i.agn = add i64 %i.agm, 16
  %i.ago = add nsw i64 %i.acz, %i.p
  %i.agp = shl nsw i64 %i.ago, 3                  ; 8 uses
  %i.agq = sub i64 %i.agn, %i.agp
  %scevgep183.a = getelementptr i8, ptr %i.af, i64 %i.agq
  %i.agr = add i64 %i.adk, 16
  %i.ags = sub i64 %i.agr, %i.aea
  %scevgep184.a = getelementptr i8, ptr %i.af, i64 %i.ags
  %i.agt = add nsw i64 %i.adl, -16
  %i.agu = sub nsw i64 %i.agt, %i.adm
  %i.agv = mul i64 %i.agu, %i.acz                 ; 5 uses
  %i.agw = add i64 %i.agv, %i.adq                 ; 2 uses
  %i.agx = getelementptr i8, ptr %i.af, i64 %i.agw
  %i.agy = add i64 %i.adk, 12
  %i.agz = sub i64 %i.agy, %i.aea
  %scevgep186.a = getelementptr i8, ptr %i.af, i64 %i.agz
  %i.aha = getelementptr i8, ptr %i.af, i64 %i.agw
  %i.ahb = insertelement <2 x ptr> poison, ptr %i.agx, i64 0
  %i.ahc = insertelement <2 x ptr> %i.ahb, ptr %i.aha, i64 1
  %i.ahd = getelementptr i8, <2 x ptr> %i.ahc, <2 x i64> <i64 16, i64 12>
  %i.ahe = add i64 %i.adk, -12
  %i.ahf = sub i64 %i.ahe, %i.aea
  %scevgep188 = getelementptr i8, ptr %i.af, i64 %i.ahf
  %i.ahg = add i64 %i.agv, %i.adq                 ; 2 uses
  %i.ahh = getelementptr i8, ptr %i.af, i64 %i.ahg
  %scevgep189.a = getelementptr i8, ptr %i.ahh, i64 -12
  %i.ahi = add i64 %i.adk, -16
  %i.ahj = sub i64 %i.ahi, %i.aea
  %scevgep190 = getelementptr i8, ptr %i.af, i64 %i.ahj
  %i.ahk = getelementptr i8, ptr %i.af, i64 %i.ahg
  %scevgep191.a = getelementptr i8, ptr %i.ahk, i64 -16
  %i.ahl = add i64 %i.adk, 8
  %i.ahm = sub i64 %i.ahl, %i.ads
  %scevgep192.a = getelementptr i8, ptr %i.af, i64 %i.ahm
  %i.ahn = add nsw i64 %i.adl, -20
  %i.aho = sub nsw i64 %i.ahn, %i.adm
  %i.ahp = mul i64 %i.aho, %i.acz                 ; 3 uses
  %i.ahq = add i64 %i.ahp, %i.adq                 ; 2 uses
  %i.ahr = getelementptr i8, ptr %i.af, i64 %i.ahq
  %i.ahs = add i64 %i.adk, 4
  %i.aht = sub i64 %i.ahs, %i.ads
  %scevgep194 = getelementptr i8, ptr %i.af, i64 %i.aht
  %i.ahu = getelementptr i8, ptr %i.af, i64 %i.ahq
  %i.ahv = insertelement <2 x ptr> poison, ptr %i.ahr, i64 0
  %i.ahw = insertelement <2 x ptr> %i.ahv, ptr %i.ahu, i64 1
  %i.ahx = getelementptr i8, <2 x ptr> %i.ahw, <2 x i64> <i64 8, i64 4>
  %i.ahy = sub i64 %i.adk, %i.ads
  %scevgep196 = getelementptr i8, ptr %i.af, i64 %i.ahy
  %i.ahz = add i64 %i.ahp, %i.adq                 ; 2 uses
  %scevgep197 = getelementptr i8, ptr %i.af, i64 %i.ahz
  %i.aia = add i64 %i.adk, -4
  %i.aib = sub i64 %i.aia, %i.ads
  %scevgep198 = getelementptr i8, ptr %i.af, i64 %i.aib
  %i.aic = getelementptr i8, ptr %i.af, i64 %i.ahz
  %i.aid = add i64 %i.adk, -8
  %i.aie = sub i64 %i.aid, %i.ads
  %scevgep200 = getelementptr i8, ptr %i.af, i64 %i.aie
  %i.aif = getelementptr i8, ptr %i.af, i64 %i.ahp
  %i.aig = getelementptr i8, ptr %i.aif, i64 %i.adq
  %i.aih = add i64 %i.adk, %i.aea                 ; 2 uses
  %i.aii = getelementptr i8, ptr %i.af, i64 %i.aih
  %i.aij = add i64 %i.aef, %i.adq                 ; 2 uses
  %i.aik = getelementptr i8, ptr %i.af, i64 %i.aij
  %i.ail = getelementptr i8, ptr %i.af, i64 %i.aih
  %i.aim = insertelement <2 x ptr> poison, ptr %i.aii, i64 0
  %i.ain = insertelement <2 x ptr> %i.aim, ptr %i.ail, i64 1
  %i.aio = getelementptr i8, <2 x ptr> %i.ain, <2 x i64> <i64 8, i64 4>
  %i.aip = getelementptr i8, ptr %i.af, i64 %i.aij
  %i.aiq = insertelement <4 x ptr> poison, ptr %i.aic, i64 0
  %i.air = insertelement <4 x ptr> %i.aiq, ptr %i.aig, i64 1
  %i.ais = insertelement <4 x ptr> %i.air, ptr %i.aik, i64 2
  %i.ait = insertelement <4 x ptr> %i.ais, ptr %i.aip, i64 3
  %i.aiu = getelementptr i8, <4 x ptr> %i.ait, <4 x i64> <i64 -4, i64 -8, i64 8, i64 4>
  %i.aiv = add i64 %i.adk, %i.aea                 ; 2 uses
  %scevgep206 = getelementptr i8, ptr %i.af, i64 %i.aiv
  %i.aiw = add i64 %i.aef, %i.adq                 ; 2 uses
  %scevgep207.a = getelementptr i8, ptr %i.af, i64 %i.aiw
  %i.aix = getelementptr i8, ptr %i.af, i64 %i.aiv
  %i.aiy = getelementptr i8, ptr %i.af, i64 %i.aiw
  %i.aiz = getelementptr i8, ptr %i.af, i64 %i.adk
  %i.aja = getelementptr i8, ptr %i.aiz, i64 %i.aea
  %i.ajb = insertelement <2 x ptr> poison, ptr %i.aix, i64 0
  %i.ajc = insertelement <2 x ptr> %i.ajb, ptr %i.aja, i64 1
  %i.ajd = getelementptr i8, <2 x ptr> %i.ajc, <2 x i64> <i64 -4, i64 -8>
  %i.aje = getelementptr i8, ptr %i.af, i64 %i.aef
  %i.ajf = getelementptr i8, ptr %i.aje, i64 %i.adq
  %i.ajg = insertelement <2 x ptr> poison, ptr %i.aiy, i64 0
  %i.ajh = insertelement <2 x ptr> %i.ajg, ptr %i.ajf, i64 1
  %i.aji = getelementptr i8, <2 x ptr> %i.ajh, <2 x i64> <i64 -4, i64 -8>
  %i.ajj = add i64 %i.adk, %i.aei                 ; 2 uses
  %i.ajk = getelementptr i8, ptr %i.af, i64 %i.ajj
  %scevgep212 = getelementptr i8, ptr %i.ajk, i64 12
  %i.ajl = add i64 %i.aen, %i.adq                 ; 2 uses
  %i.ajm = getelementptr i8, ptr %i.af, i64 %i.ajl
  %scevgep213 = getelementptr i8, ptr %i.ajm, i64 12
  %i.ajn = getelementptr i8, ptr %i.af, i64 %i.ajj
  %i.ajo = getelementptr i8, ptr %i.af, i64 %i.ajl
  %i.ajp = add i64 %i.adk, %i.aeq                 ; 2 uses
  %i.ajq = getelementptr i8, ptr %i.af, i64 %i.ajp
  %i.ajr = add i64 %i.afa, %i.adq                 ; 2 uses
  %i.ajs = getelementptr i8, ptr %i.af, i64 %i.ajr
  %i.ajt = getelementptr i8, ptr %i.af, i64 %i.ajp
  %i.aju = getelementptr i8, ptr %i.af, i64 %i.ajr
  %i.ajv = add i64 %i.adk, %i.ade                 ; 2 uses
  %i.ajw = getelementptr i8, ptr %i.af, i64 %i.ajv
  %i.ajx = insertelement <4 x ptr> poison, ptr %i.ajn, i64 0
  %i.ajy = insertelement <4 x ptr> %i.ajx, ptr %i.ajq, i64 1
  %i.ajz = insertelement <4 x ptr> %i.ajy, ptr %i.ajt, i64 2
  %i.aka = insertelement <4 x ptr> %i.ajz, ptr %i.ajw, i64 3
  %i.akb = getelementptr i8, <4 x ptr> %i.aka, <4 x i64> <i64 -12, i64 16, i64 -16, i64 16>
  %i.akc = add i64 %i.afh, %i.adq                 ; 2 uses
  %i.akd = getelementptr i8, ptr %i.af, i64 %i.akc
  %i.ake = getelementptr i8, ptr %i.af, i64 %i.ajv
  %scevgep222 = getelementptr i8, ptr %i.ake, i64 -16
  %i.akf = getelementptr i8, ptr %i.af, i64 %i.akc
  %i.akg = getelementptr i8, ptr %i.af, i64 %i.adk
  %i.akh = add i64 %i.ado, %i.adq                 ; 2 uses
  %i.aki = getelementptr i8, ptr %i.af, i64 %i.akh
  %i.akj = getelementptr i8, ptr %i.af, i64 %i.adk
  %i.akk = insertelement <2 x ptr> poison, ptr %i.akg, i64 0
  %i.akl = insertelement <2 x ptr> %i.akk, ptr %i.akj, i64 1
  %i.akm = getelementptr i8, <2 x ptr> %i.akl, <2 x i64> <i64 16, i64 -16>
  %i.akn = getelementptr i8, ptr %i.af, i64 %i.akh
  %i.ako = add i64 %i.adk, 16
  %i.akp = sub i64 %i.ako, %i.ade
  %scevgep228 = getelementptr i8, ptr %i.af, i64 %i.akp
  %i.akq = add i64 %i.afr, %i.adq                 ; 2 uses
  %i.akr = getelementptr i8, ptr %i.af, i64 %i.akq
  %i.aks = insertelement <8 x ptr> poison, ptr %i.ajo, i64 0
  %i.akt = insertelement <8 x ptr> %i.aks, ptr %i.ajs, i64 1
  %i.aku = insertelement <8 x ptr> %i.akt, ptr %i.aju, i64 2
  %i.akv = insertelement <8 x ptr> %i.aku, ptr %i.akd, i64 3
  %i.akw = insertelement <8 x ptr> %i.akv, ptr %i.akf, i64 4
  %i.akx = insertelement <8 x ptr> %i.akw, ptr %i.aki, i64 5
  %i.aky = insertelement <8 x ptr> %i.akx, ptr %i.akn, i64 6
  %i.akz = insertelement <8 x ptr> %i.aky, ptr %i.akr, i64 7
  %i.ala = getelementptr i8, <8 x ptr> %i.akz, <8 x i64> <i64 -12, i64 16, i64 -16, i64 16, i64 -16, i64 16, i64 -16, i64 16>
  %i.alb = add i64 %i.adk, -16
  %i.alc = sub i64 %i.alb, %i.ade
  %scevgep230 = getelementptr i8, ptr %i.af, i64 %i.alc
  %i.ald = getelementptr i8, ptr %i.af, i64 %i.akq
  %scevgep231.a = getelementptr i8, ptr %i.ald, i64 -16
  %i.ale = add i64 %i.adk, 16
  %i.alf = sub i64 %i.ale, %i.aeq
  %scevgep232.a = getelementptr i8, ptr %i.af, i64 %i.alf
  %i.alg = add i64 %i.afy, %i.adq                 ; 2 uses
  %i.alh = getelementptr i8, ptr %i.af, i64 %i.alg
  %i.ali = add i64 %i.adk, -16
  %i.alj = sub i64 %i.ali, %i.aeq
  %scevgep234.a = getelementptr i8, ptr %i.af, i64 %i.alj
  %i.alk = getelementptr i8, ptr %i.af, i64 %i.alg
  %i.all = insertelement <2 x ptr> poison, ptr %i.alh, i64 0
  %i.alm = insertelement <2 x ptr> %i.all, ptr %i.alk, i64 1
  %i.aln = getelementptr i8, <2 x ptr> %i.alm, <2 x i64> <i64 16, i64 -16>
  %i.alo = add i64 %i.adk, 12
  %i.alp = sub i64 %i.alo, %i.aei
  %scevgep236 = getelementptr i8, ptr %i.af, i64 %i.alp
  %i.alq = add i64 %i.afr, %i.adk
  %i.alr = add i64 %i.alq, 12
  %i.als = sub i64 %i.alr, %i.agp
  %scevgep237.a = getelementptr i8, ptr %i.af, i64 %i.als
  %i.alt = add i64 %i.adk, -12
  %i.alu = sub i64 %i.alt, %i.aei
  %scevgep238 = getelementptr i8, ptr %i.af, i64 %i.alu
  %i.alv = add i64 %i.afr, %i.adk
  %i.alw = add i64 %i.alv, -12
  %i.alx = sub i64 %i.alw, %i.agp
  %scevgep239.a = getelementptr i8, ptr %i.af, i64 %i.alx
  %i.aly = add i64 %i.adk, 8
  %i.alz = sub i64 %i.aly, %i.aea
  %scevgep240.a = getelementptr i8, ptr %i.af, i64 %i.alz
  %i.ama = add i64 %i.agv, %i.adq                 ; 2 uses
  %i.amb = getelementptr i8, ptr %i.af, i64 %i.ama
  %i.amc = add i64 %i.adk, 4
  %i.amd = sub i64 %i.amc, %i.aea
  %scevgep242 = getelementptr i8, ptr %i.af, i64 %i.amd
  %i.ame = getelementptr i8, ptr %i.af, i64 %i.ama
  %i.amf = insertelement <2 x ptr> poison, ptr %i.amb, i64 0
  %i.amg = insertelement <2 x ptr> %i.amf, ptr %i.ame, i64 1
  %i.amh = getelementptr i8, <2 x ptr> %i.amg, <2 x i64> <i64 8, i64 4>
  %i.ami = sub i64 %i.adk, %i.aea
  %scevgep244 = getelementptr i8, ptr %i.af, i64 %i.ami
  %i.amj = add i64 %i.agv, %i.adq                 ; 2 uses
  %scevgep245 = getelementptr i8, ptr %i.af, i64 %i.amj
  %i.amk = add i64 %i.adk, -4
  %i.aml = sub i64 %i.amk, %i.aea
  %scevgep246 = getelementptr i8, ptr %i.af, i64 %i.aml
  %i.amm = getelementptr i8, ptr %i.af, i64 %i.amj
  %i.amn = add i64 %i.adk, -8
  %i.amo = sub i64 %i.amn, %i.aea
  %scevgep248 = getelementptr i8, ptr %i.af, i64 %i.amo
  %i.amp = getelementptr i8, ptr %i.af, i64 %i.agv
  %i.amq = getelementptr i8, ptr %i.amp, i64 %i.adq
  %i.amr = add i64 %i.adk, %i.aei                 ; 2 uses
  %i.ams = getelementptr i8, ptr %i.af, i64 %i.amr
  %i.amt = add i64 %i.aen, %i.adq                 ; 2 uses
end_hunk_1
begin_hunk_2_@dt_segments_combine:bb.a
  %i.aoi = insertelement <4 x ptr> %i.aoh, ptr %i.aoa, i64 1
  %i.aoj = insertelement <4 x ptr> %i.aoi, ptr %i.aod, i64 2
  %i.aok = insertelement <4 x ptr> %i.aoj, ptr %i.aog, i64 3
  %i.aol = getelementptr i8, <4 x ptr> %i.aok, <4 x i64> <i64 8, i64 -8, i64 -12, i64 12>
  %i.aom = add i64 %i.afh, %i.adq                 ; 2 uses
  %i.aon = getelementptr i8, ptr %i.af, i64 %i.aom
  %i.aoo = getelementptr i8, ptr %i.af, i64 %i.aof
  %scevgep270 = getelementptr i8, ptr %i.aoo, i64 -12
  %i.aop = getelementptr i8, ptr %i.af, i64 %i.aom
  %i.aoq = getelementptr i8, ptr %i.af, i64 %i.adk
  %i.aor = add i64 %i.ado, %i.adq                 ; 2 uses
  %i.aos = getelementptr i8, ptr %i.af, i64 %i.aor
  %i.aot = getelementptr i8, ptr %i.af, i64 %i.adk
  %i.aou = insertelement <2 x ptr> poison, ptr %i.aoq, i64 0
  %i.aov = insertelement <2 x ptr> %i.aou, ptr %i.aot, i64 1
  %i.aow = getelementptr i8, <2 x ptr> %i.aov, <2 x i64> <i64 12, i64 -12>
  %i.aox = getelementptr i8, ptr %i.af, i64 %i.aor
  %i.aoy = add i64 %i.adk, 12
  %i.aoz = sub i64 %i.aoy, %i.ade
  %scevgep276 = getelementptr i8, ptr %i.af, i64 %i.aoz
  %i.apa = add i64 %i.afr, %i.adq                 ; 2 uses
  %i.apb = getelementptr i8, ptr %i.af, i64 %i.apa
  %i.apc = insertelement <8 x ptr> poison, ptr %i.any, i64 0
  %i.apd = insertelement <8 x ptr> %i.apc, ptr %i.aoc, i64 1
  %i.ape = insertelement <8 x ptr> %i.apd, ptr %i.aoe, i64 2
  %i.apf = insertelement <8 x ptr> %i.ape, ptr %i.aon, i64 3
  %i.apg = insertelement <8 x ptr> %i.apf, ptr %i.aop, i64 4
  %i.aph = insertelement <8 x ptr> %i.apg, ptr %i.aos, i64 5
  %i.api = insertelement <8 x ptr> %i.aph, ptr %i.aox, i64 6
  %i.apj = insertelement <8 x ptr> %i.api, ptr %i.apb, i64 7
  %i.apk = getelementptr i8, <8 x ptr> %i.apj, <8 x i64> <i64 8, i64 -8, i64 -12, i64 12, i64 -12, i64 12, i64 -12, i64 12>
  %i.apl = add i64 %i.adk, -12
  %i.apm = sub i64 %i.apl, %i.ade
  %scevgep278 = getelementptr i8, ptr %i.af, i64 %i.apm
  %i.apn = getelementptr i8, ptr %i.af, i64 %i.apa
  %i.apo = add i64 %i.adk, 12
  %i.app = sub i64 %i.apo, %i.aeq
  %scevgep280 = getelementptr i8, ptr %i.af, i64 %i.app
  %i.apq = add i64 %i.afy, %i.adq                 ; 2 uses
  %i.apr = getelementptr i8, ptr %i.af, i64 %i.apq
  %i.aps = add i64 %i.adk, 8
  %i.apt = sub i64 %i.aps, %i.aeq
  %scevgep282.a = getelementptr i8, ptr %i.af, i64 %i.apt
  %i.apu = getelementptr i8, ptr %i.af, i64 %i.apq
  %i.apv = add i64 %i.adk, -8
  %i.apw = sub i64 %i.apv, %i.aeq
  %scevgep284.a = getelementptr i8, ptr %i.af, i64 %i.apw
  %i.apx = add i64 %i.afy, %i.adq                 ; 2 uses
  %i.apy = getelementptr i8, ptr %i.af, i64 %i.apx
  %i.apz = insertelement <4 x ptr> poison, ptr %i.apn, i64 0
  %i.aqa = insertelement <4 x ptr> %i.apz, ptr %i.apr, i64 1
  %i.aqb = insertelement <4 x ptr> %i.aqa, ptr %i.apu, i64 2
  %i.aqc = insertelement <4 x ptr> %i.aqb, ptr %i.apy, i64 3
  %i.aqd = getelementptr i8, <4 x ptr> %i.aqc, <4 x i64> <i64 -12, i64 12, i64 8, i64 -8>
  %i.aqe = add i64 %i.adk, -12
  %i.aqf = sub i64 %i.aqe, %i.aeq
  %scevgep286.a = getelementptr i8, ptr %i.af, i64 %i.aqf
  %i.aqg = getelementptr i8, ptr %i.af, i64 %i.apx
  %scevgep287.a = getelementptr i8, ptr %i.aqg, i64 -12
  %i.aqh = add i64 %i.adk, 8
  %i.aqi = sub i64 %i.aqh, %i.aei
  %scevgep288.a = getelementptr i8, ptr %i.af, i64 %i.aqi
  %i.aqj = add i64 %i.afr, %i.adk
  %i.aqk = add i64 %i.aqj, 8
  %i.aql = sub i64 %i.aqk, %i.agp
  %scevgep289.a = getelementptr i8, ptr %i.af, i64 %i.aql
  %i.aqm = add i64 %i.adk, 4
  %i.aqn = sub i64 %i.aqm, %i.aei
  %scevgep290.a = getelementptr i8, ptr %i.af, i64 %i.aqn
  %i.aqo = add i64 %i.afr, %i.adk                 ; 2 uses
  %i.aqp = add i64 %i.aqo, 4
  %i.aqq = sub i64 %i.aqp, %i.agp
  %scevgep291.a = getelementptr i8, ptr %i.af, i64 %i.aqq
  %i.aqr = sub i64 %i.adk, %i.aei
  %scevgep292.a = getelementptr i8, ptr %i.af, i64 %i.aqr
  %i.aqs = sub i64 %i.aqo, %i.agp
  %scevgep293.a = getelementptr i8, ptr %i.af, i64 %i.aqs
  %i.aqt = add i64 %i.adk, -4
  %i.aqu = sub i64 %i.aqt, %i.aei
  %scevgep294.a = getelementptr i8, ptr %i.af, i64 %i.aqu
  %i.aqv = add i64 %i.afr, %i.adk
  %i.aqw = add i64 %i.aqv, -4
  %i.aqx = sub i64 %i.aqw, %i.agp
  %scevgep295.a = getelementptr i8, ptr %i.af, i64 %i.aqx
  %i.aqy = add i64 %i.adk, -8
  %i.aqz = sub i64 %i.aqy, %i.aei
  %scevgep296.a = getelementptr i8, ptr %i.af, i64 %i.aqz
  %i.ara = add i64 %i.afr, %i.adk
  %i.arb = add i64 %i.ara, -8
  %i.arc = sub i64 %i.arb, %i.agp
  %scevgep297 = getelementptr i8, ptr %i.af, i64 %i.arc
  %i.ard = add i64 %i.adk, %i.aeq                 ; 2 uses
  %i.are = getelementptr i8, ptr %i.af, i64 %i.ard
  %scevgep298 = getelementptr i8, ptr %i.are, i64 4
  %i.arf = add i64 %i.afa, %i.adq                 ; 2 uses
  %i.arg = getelementptr i8, ptr %i.af, i64 %i.arf
  %scevgep299 = getelementptr i8, ptr %i.arg, i64 4
  %scevgep300 = getelementptr i8, ptr %i.af, i64 %i.ard
  %scevgep301 = getelementptr i8, ptr %i.af, i64 %i.arf
  %i.arh = getelementptr i8, ptr %i.af, i64 %i.adk
  %i.ari = getelementptr i8, ptr %i.arh, i64 %i.aeq
  %i.arj = getelementptr i8, ptr %i.af, i64 %i.afa
  %i.ark = getelementptr i8, ptr %i.arj, i64 %i.adq
  %i.arl = add i64 %i.adk, %i.ade                 ; 2 uses
  %i.arm = getelementptr i8, ptr %i.af, i64 %i.arl
  %i.arn = add i64 %i.afh, %i.adq                 ; 2 uses
  %i.aro = getelementptr i8, ptr %i.af, i64 %i.arn
  %i.arp = getelementptr i8, ptr %i.af, i64 %i.arl
  %i.arq = getelementptr i8, ptr %i.af, i64 %i.arn
  %i.arr = getelementptr i8, ptr %i.af, i64 %i.adk
  %i.ars = insertelement <4 x ptr> poison, ptr %i.ari, i64 0
  %i.art = insertelement <4 x ptr> %i.ars, ptr %i.arm, i64 1
  %i.aru = insertelement <4 x ptr> %i.art, ptr %i.arp, i64 2
  %i.arv = insertelement <4 x ptr> %i.aru, ptr %i.arr, i64 3
  %i.arw = getelementptr i8, <4 x ptr> %i.arv, <4 x i64> <i64 -4, i64 8, i64 -8, i64 8>
  %i.arx = add i64 %i.ado, %i.adq                 ; 2 uses
  %i.ary = getelementptr i8, ptr %i.af, i64 %i.arx
  %i.arz = getelementptr i8, ptr %i.af, i64 %i.adk
  %scevgep310 = getelementptr i8, ptr %i.arz, i64 -8
  %i.asa = getelementptr i8, ptr %i.af, i64 %i.arx
  %i.asb = add i64 %i.adk, 8
  %i.asc = sub i64 %i.asb, %i.ade
  %scevgep312 = getelementptr i8, ptr %i.af, i64 %i.asc
  %i.asd = add i64 %i.afr, %i.adq                 ; 2 uses
  %i.ase = getelementptr i8, ptr %i.af, i64 %i.asd
  %i.asf = add i64 %i.adk, -8
  %i.asg = sub i64 %i.asf, %i.ade
  %scevgep314.a = getelementptr i8, ptr %i.af, i64 %i.asg
  %i.ash = getelementptr i8, ptr %i.af, i64 %i.asd
  %i.asi = add i64 %i.adk, 4
  %i.asj = sub i64 %i.asi, %i.aeq
  %scevgep316 = getelementptr i8, ptr %i.af, i64 %i.asj
  %i.ask = add i64 %i.afy, %i.adq                 ; 2 uses
  %i.asl = getelementptr i8, ptr %i.af, i64 %i.ask
  %i.asm = insertelement <8 x ptr> poison, ptr %i.ark, i64 0
  %i.asn = insertelement <8 x ptr> %i.asm, ptr %i.aro, i64 1
  %i.aso = insertelement <8 x ptr> %i.asn, ptr %i.arq, i64 2
  %i.asp = insertelement <8 x ptr> %i.aso, ptr %i.ary, i64 3
  %i.asq = insertelement <8 x ptr> %i.asp, ptr %i.asa, i64 4
  %i.asr = insertelement <8 x ptr> %i.asq, ptr %i.ase, i64 5
  %i.ass = insertelement <8 x ptr> %i.asr, ptr %i.ash, i64 6
  %i.ast = insertelement <8 x ptr> %i.ass, ptr %i.asl, i64 7
  %i.asu = getelementptr i8, <8 x ptr> %i.ast, <8 x i64> <i64 -4, i64 8, i64 -8, i64 8, i64 -8, i64 8, i64 -8, i64 4>
  %i.asv = sub i64 %i.adk, %i.aeq
  %scevgep318 = getelementptr i8, ptr %i.af, i64 %i.asv
  %scevgep319.a = getelementptr i8, ptr %i.af, i64 %i.ask
  %i.asw = add i64 %i.adk, -4
  %i.asx = sub i64 %i.asw, %i.aeq
  %scevgep320.a = getelementptr i8, ptr %i.af, i64 %i.asx
  %i.asy = getelementptr i8, ptr %i.af, i64 %i.afy
  %i.asz = getelementptr i8, ptr %i.asy, i64 %i.adq
  %i.ata = add i64 %i.adk, %i.ade                 ; 2 uses
  %i.atb = getelementptr i8, ptr %i.af, i64 %i.ata
  %scevgep322 = getelementptr i8, ptr %i.atb, i64 4
  %i.atc = add i64 %i.afh, %i.adq                 ; 2 uses
  %i.atd = getelementptr i8, ptr %i.af, i64 %i.atc
  %i.ate = insertelement <2 x ptr> poison, ptr %i.asz, i64 0
  %i.atf = insertelement <2 x ptr> %i.ate, ptr %i.atd, i64 1
  %i.atg = getelementptr i8, <2 x ptr> %i.atf, <2 x i64> <i64 -4, i64 4>
  %scevgep324 = getelementptr i8, ptr %i.af, i64 %i.ata
  %scevgep325.a = getelementptr i8, ptr %i.af, i64 %i.atc
  %i.ath = getelementptr i8, ptr %i.af, i64 %i.adk
  %i.ati = getelementptr i8, ptr %i.ath, i64 %i.ade
  %i.atj = getelementptr i8, ptr %i.af, i64 %i.afh
  %i.atk = getelementptr i8, ptr %i.atj, i64 %i.adq
  %i.atl = getelementptr i8, ptr %i.af, i64 %i.adk
  %i.atm = insertelement <2 x ptr> poison, ptr %i.ati, i64 0
  %i.atn = insertelement <2 x ptr> %i.atm, ptr %i.atl, i64 1
  %i.ato = getelementptr i8, <2 x ptr> %i.atn, <2 x i64> <i64 -4, i64 4>
  %i.atp = getelementptr i8, ptr %i.af, i64 %i.ado
  %i.atq = getelementptr i8, ptr %i.atp, i64 %i.adq
  %i.atr = insertelement <2 x ptr> poison, ptr %i.atk, i64 0
  %i.ats = insertelement <2 x ptr> %i.atr, ptr %i.atq, i64 1
  %i.att = getelementptr i8, <2 x ptr> %i.ats, <2 x i64> <i64 -4, i64 4>
  %scevgep330.a = getelementptr i8, ptr %i.af, i64 %i.adk
  %scevgep331.a = getelementptr i8, ptr %i.af, i64 %i.adr
  %i.atu = getelementptr i8, ptr %i.af, i64 %i.adk
  %scevgep332.a = getelementptr i8, ptr %i.atu, i64 -4
  %i.atv = getelementptr i8, ptr %i.af, i64 %i.ado
  %i.atw = getelementptr i8, ptr %i.atv, i64 %i.adq
  %scevgep333.a = getelementptr i8, ptr %i.atw, i64 -4
  %i.atx = add i64 %i.adk, 4
  %i.aty = sub i64 %i.atx, %i.ade
  %scevgep334.a = getelementptr i8, ptr %i.af, i64 %i.aty
  %i.atz = add i64 %i.afr, %i.adq                 ; 2 uses
  %i.aua = getelementptr i8, ptr %i.af, i64 %i.atz
  %scevgep335 = getelementptr i8, ptr %i.aua, i64 4
  %i.aub = sub i64 %i.adk, %i.ade
  %scevgep336 = getelementptr i8, ptr %i.af, i64 %i.aub
  %scevgep337 = getelementptr i8, ptr %i.af, i64 %i.atz
  %i.auc = add i64 %i.adk, -4
  %i.aud = sub i64 %i.auc, %i.ade
  %scevgep338 = getelementptr i8, ptr %i.af, i64 %i.aud
  %i.aue = getelementptr i8, ptr %i.af, i64 %i.afr
  %i.auf = getelementptr i8, ptr %i.aue, i64 %i.adq
  %scevgep339 = getelementptr i8, ptr %i.auf, i64 -4
  %i.aug = insertelement <64 x ptr> poison, ptr %scevgep979, i64 0
  %i.auh = shufflevector <64 x ptr> %i.aug, <64 x ptr> poison, <64 x i32> zeroinitializer
  %i.aui = insertelement <64 x ptr> poison, ptr %scevgep165, i64 0
  %i.auj = shufflevector <64 x ptr> %i.aui, <64 x ptr> poison, <64 x i32> zeroinitializer
  %i.auk = insertelement <16 x ptr> poison, ptr %scevgep979, i64 0
  %i.aul = shufflevector <16 x ptr> %i.auk, <16 x ptr> poison, <16 x i32> zeroinitializer
  %i.aum = insertelement <16 x ptr> poison, ptr %scevgep295.a, i64 0
  %i.aun = insertelement <16 x ptr> %i.aum, ptr %scevgep297, i64 1
  %i.auo = insertelement <16 x ptr> %i.aun, ptr %scevgep299, i64 2
  %i.aup = insertelement <16 x ptr> %i.auo, ptr %scevgep301, i64 3
  %3 = insertelement <16 x ptr> poison, ptr %scevgep294.a, i64 0
  %4 = insertelement <16 x ptr> %3, ptr %scevgep296.a, i64 1
  %i.auq = insertelement <16 x ptr> %4, ptr %scevgep298, i64 2
  %i.aur = insertelement <16 x ptr> %i.auq, ptr %scevgep300, i64 3
  %i.aus = insertelement <16 x ptr> poison, ptr %scevgep165, i64 0
  %5 = shufflevector <16 x ptr> %i.aus, <16 x ptr> poison, <16 x i32> zeroinitializer
  %6 = insertelement <4 x ptr> poison, ptr %scevgep979, i64 0
  %7 = shufflevector <4 x ptr> %6, <4 x ptr> poison, <4 x i32> zeroinitializer
  %8 = insertelement <4 x ptr> poison, ptr %scevgep165, i64 0 ; 2 uses
  %i.aut = shufflevector <4 x ptr> %8, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.auu = insertelement <2 x ptr> poison, ptr %scevgep334.a, i64 0
  %i.auv = insertelement <2 x ptr> %i.auu, ptr %scevgep336, i64 1
  %i.auw = shufflevector <4 x ptr> %8, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.aux = insertelement <2 x ptr> poison, ptr %scevgep979, i64 0
  %i.auy = shufflevector <2 x ptr> %i.aux, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.auz = insertelement <2 x ptr> poison, ptr %scevgep335, i64 0
  %i.ava = insertelement <2 x ptr> %i.auz, ptr %scevgep337, i64 1
  %i.avb = shufflevector <2 x ptr> %i.ato, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.avc = shufflevector <2 x ptr> %i.att, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.avd = shufflevector <4 x ptr> %i.arw, <4 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ave = shufflevector <16 x ptr> %i.aur, <16 x ptr> %i.avd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avf = shufflevector <8 x ptr> %i.asu, <8 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avg = shufflevector <16 x ptr> %i.aup, <16 x ptr> %i.avf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avh = shufflevector <2 x ptr> %i.atg, <2 x ptr> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avi = shufflevector <4 x ptr> %i.aex, <4 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avj = shufflevector <4 x ptr> %i.akb, <4 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avk = shufflevector <4 x ptr> %i.aol, <4 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avl = shufflevector <2 x ptr> %i.aow, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avm = shufflevector <2 x ptr> %i.akm, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avn = shufflevector <2 x ptr> %i.amy, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avo = shufflevector <2 x ptr> %i.ann, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avp = shufflevector <2 x ptr> %i.aio, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avq = shufflevector <2 x ptr> %i.ajd, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avr = shufflevector <8 x ptr> %i.agj, <8 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avs = shufflevector <8 x ptr> %i.ala, <8 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avt = shufflevector <8 x ptr> %i.apk, <8 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avu = shufflevector <4 x ptr> %i.aqd, <4 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avv = shufflevector <4 x ptr> %i.ane, <4 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avw = shufflevector <2 x ptr> %i.ans, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avx = shufflevector <2 x ptr> %i.aln, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avy = shufflevector <2 x ptr> %i.amh, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avz = shufflevector <4 x ptr> %i.aiu, <4 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awa = shufflevector <2 x ptr> %i.aji, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awb = shufflevector <2 x ptr> %i.ahd, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awc = shufflevector <2 x ptr> %i.ahx, <2 x ptr> poison, <64 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awd = shl nsw i64 %i.p, 1
  %i.awe = sub nsw i64 %i.acz, %i.awd             ; 3 uses
  %min.iters.check862 = icmp ult i64 %i.awe, 32
  %i.awf = insertelement <64 x ptr> %i.avr, ptr %scevgep183.a, i64 8
  %i.awg = shufflevector <64 x ptr> %i.awf, <64 x ptr> %i.awb, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awh = insertelement <64 x ptr> %i.awg, ptr %scevgep189.a, i64 11
  %i.awi = insertelement <64 x ptr> %i.awh, ptr %scevgep191.a, i64 12
  %i.awj = shufflevector <64 x ptr> %i.awi, <64 x ptr> %i.awc, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awk = insertelement <64 x ptr> %i.awj, ptr %scevgep197, i64 15
  %i.awl = shufflevector <64 x ptr> %i.awk, <64 x ptr> %i.avz, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awm = insertelement <64 x ptr> %i.awl, ptr %scevgep207.a, i64 20
  %i.awn = shufflevector <64 x ptr> %i.awm, <64 x ptr> %i.awa, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awo = insertelement <64 x ptr> %i.awn, ptr %scevgep213, i64 23
  %i.awp = shufflevector <64 x ptr> %i.awo, <64 x ptr> %i.avs, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awq = insertelement <64 x ptr> %i.awp, ptr %scevgep231.a, i64 32
  %i.awr = shufflevector <64 x ptr> %i.awq, <64 x ptr> %i.avx, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aws = insertelement <64 x ptr> %i.awr, ptr %scevgep237.a, i64 35
  %i.awt = insertelement <64 x ptr> %i.aws, ptr %scevgep239.a, i64 36
  %i.awu = shufflevector <64 x ptr> %i.awt, <64 x ptr> %i.avy, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awv = insertelement <64 x ptr> %i.awu, ptr %scevgep245, i64 39
  %i.aww = shufflevector <64 x ptr> %i.awv, <64 x ptr> %i.avv, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 64, i32 65, i32 66, i32 67, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awx = insertelement <64 x ptr> %i.aww, ptr %scevgep255.a, i64 44
  %i.awy = shufflevector <64 x ptr> %i.awx, <64 x ptr> %i.avw, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.awz = insertelement <64 x ptr> %i.awy, ptr %scevgep261, i64 47
  %i.axa = shufflevector <64 x ptr> %i.awz, <64 x ptr> %i.avt, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axb = shufflevector <64 x ptr> %i.axa, <64 x ptr> %i.avu, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 64, i32 65, i32 66, i32 67, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axc = insertelement <64 x ptr> %i.axb, ptr %scevgep287.a, i64 60
  %i.axd = insertelement <64 x ptr> %i.axc, ptr %scevgep289.a, i64 61
  %i.axe = insertelement <64 x ptr> %i.axd, ptr %scevgep291.a, i64 62
  %i.axf = insertelement <64 x ptr> %i.axe, ptr %scevgep293.a, i64 63
  %i.axg = icmp ult <64 x ptr> %i.auh, %i.axf
  %i.axh = insertelement <64 x ptr> %i.avi, ptr %scevgep174, i64 4
  %i.axi = insertelement <64 x ptr> %i.axh, ptr %scevgep176, i64 5
  %i.axj = insertelement <64 x ptr> %i.axi, ptr %scevgep178.a, i64 6
  %i.axk = insertelement <64 x ptr> %i.axj, ptr %scevgep180, i64 7
  %i.axl = insertelement <64 x ptr> %i.axk, ptr %scevgep182, i64 8
  %i.axm = insertelement <64 x ptr> %i.axl, ptr %scevgep184.a, i64 9
  %i.axn = insertelement <64 x ptr> %i.axm, ptr %scevgep186.a, i64 10
  %i.axo = insertelement <64 x ptr> %i.axn, ptr %scevgep188, i64 11
  %i.axp = insertelement <64 x ptr> %i.axo, ptr %scevgep190, i64 12
  %i.axq = insertelement <64 x ptr> %i.axp, ptr %scevgep192.a, i64 13
  %i.axr = insertelement <64 x ptr> %i.axq, ptr %scevgep194, i64 14
  %i.axs = insertelement <64 x ptr> %i.axr, ptr %scevgep196, i64 15
  %i.axt = insertelement <64 x ptr> %i.axs, ptr %scevgep198, i64 16
  %i.axu = insertelement <64 x ptr> %i.axt, ptr %scevgep200, i64 17
  %i.axv = shufflevector <64 x ptr> %i.axu, <64 x ptr> %i.avp, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.axw = insertelement <64 x ptr> %i.axv, ptr %scevgep206, i64 20
  %i.axx = shufflevector <64 x ptr> %i.axw, <64 x ptr> %i.avq, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.axy = insertelement <64 x ptr> %i.axx, ptr %scevgep212, i64 23
  %i.axz = shufflevector <64 x ptr> %i.axy, <64 x ptr> %i.avj, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 64, i32 65, i32 66, i32 67, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aya = insertelement <64 x ptr> %i.axz, ptr %scevgep222, i64 28
  %i.ayb = shufflevector <64 x ptr> %i.aya, <64 x ptr> %i.avm, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ayc = insertelement <64 x ptr> %i.ayb, ptr %scevgep228, i64 31
  %i.ayd = insertelement <64 x ptr> %i.ayc, ptr %scevgep230, i64 32
  %i.aye = insertelement <64 x ptr> %i.ayd, ptr %scevgep232.a, i64 33
  %i.ayf = insertelement <64 x ptr> %i.aye, ptr %scevgep234.a, i64 34
  %i.ayg = insertelement <64 x ptr> %i.ayf, ptr %scevgep236, i64 35
  %i.ayh = insertelement <64 x ptr> %i.ayg, ptr %scevgep238, i64 36
  %i.ayi = insertelement <64 x ptr> %i.ayh, ptr %scevgep240.a, i64 37
  %i.ayj = insertelement <64 x ptr> %i.ayi, ptr %scevgep242, i64 38
  %i.ayk = insertelement <64 x ptr> %i.ayj, ptr %scevgep244, i64 39
  %i.ayl = insertelement <64 x ptr> %i.ayk, ptr %scevgep246, i64 40
  %i.aym = insertelement <64 x ptr> %i.ayl, ptr %scevgep248, i64 41
  %i.ayn = shufflevector <64 x ptr> %i.aym, <64 x ptr> %i.avn, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ayo = insertelement <64 x ptr> %i.ayn, ptr %scevgep254, i64 44
  %i.ayp = shufflevector <64 x ptr> %i.ayo, <64 x ptr> %i.avo, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ayq = insertelement <64 x ptr> %i.ayp, ptr %scevgep260, i64 47
  %i.ayr = shufflevector <64 x ptr> %i.ayq, <64 x ptr> %i.avk, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 64, i32 65, i32 66, i32 67, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ays = insertelement <64 x ptr> %i.ayr, ptr %scevgep270, i64 52
  %i.ayt = shufflevector <64 x ptr> %i.ays, <64 x ptr> %i.avl, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 64, i32 65, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ayu = insertelement <64 x ptr> %i.ayt, ptr %scevgep276, i64 55
  %i.ayv = insertelement <64 x ptr> %i.ayu, ptr %scevgep278, i64 56
  %i.ayw = insertelement <64 x ptr> %i.ayv, ptr %scevgep280, i64 57
  %i.ayx = insertelement <64 x ptr> %i.ayw, ptr %scevgep282.a, i64 58
  %i.ayy = insertelement <64 x ptr> %i.ayx, ptr %scevgep284.a, i64 59
  %i.ayz = insertelement <64 x ptr> %i.ayy, ptr %scevgep286.a, i64 60
  %i.aza = insertelement <64 x ptr> %i.ayz, ptr %scevgep288.a, i64 61
  %i.azb = insertelement <64 x ptr> %i.aza, ptr %scevgep290.a, i64 62
  %i.azc = insertelement <64 x ptr> %i.azb, ptr %scevgep292.a, i64 63
  %i.azd = icmp ult <64 x ptr> %i.azc, %i.auj
  %i.aze = and <64 x i1> %i.axg, %i.azd           ; 2 uses
  %i.azf = insertelement <16 x ptr> %i.avg, ptr %scevgep319.a, i64 12
  %i.azg = shufflevector <16 x ptr> %i.azf, <16 x ptr> %i.avh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.azh = insertelement <16 x ptr> %i.azg, ptr %scevgep325.a, i64 15
  %i.azi = icmp ult <16 x ptr> %i.aul, %i.azh
  %i.azj = insertelement <16 x ptr> %i.ave, ptr %scevgep310, i64 8
  %i.azk = insertelement <16 x ptr> %i.azj, ptr %scevgep312, i64 9
  %i.azl = insertelement <16 x ptr> %i.azk, ptr %scevgep314.a, i64 10
  %i.azm = insertelement <16 x ptr> %i.azl, ptr %scevgep316, i64 11
  %i.azn = insertelement <16 x ptr> %i.azm, ptr %scevgep318, i64 12
  %i.azo = insertelement <16 x ptr> %i.azn, ptr %scevgep320.a, i64 13
  %i.azp = insertelement <16 x ptr> %i.azo, ptr %scevgep322, i64 14
  %i.azq = insertelement <16 x ptr> %i.azp, ptr %scevgep324, i64 15
  %i.azr = icmp ult <16 x ptr> %i.azq, %5
  %9 = and <16 x i1> %i.azi, %i.azr
  %i.azs = insertelement <4 x ptr> %i.avc, ptr %scevgep331.a, i64 2
  %i.azt = insertelement <4 x ptr> %i.azs, ptr %scevgep333.a, i64 3
  %i.azu = icmp ult <4 x ptr> %7, %i.azt
  %i.azv = insertelement <4 x ptr> %i.avb, ptr %scevgep330.a, i64 2
  %i.azw = insertelement <4 x ptr> %i.azv, ptr %scevgep332.a, i64 3
  %i.azx = icmp ult <4 x ptr> %i.azw, %i.aut
  %i.azy = icmp ult <2 x ptr> %i.auy, %i.ava
  %i.azz = icmp ult <2 x ptr> %i.auv, %i.auw
  %bound0855 = icmp ult ptr %scevgep979, %scevgep339
  %bound1856 = icmp ult ptr %scevgep338, %scevgep165
  %stride.check348 = icmp slt i32 %i.c, 0
  %10 = shufflevector <2 x i1> %i.azy, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %11 = insertelement <8 x i1> %10, i1 %bound0855, i64 6
  %12 = insertelement <8 x i1> %11, i1 %stride.check348, i64 7
  %13 = shufflevector <4 x i1> %i.azu, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %14 = shufflevector <8 x i1> %13, <8 x i1> %12, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %15 = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1856, i64 6
  %16 = shufflevector <4 x i1> %i.azx, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %17 = shufflevector <8 x i1> %16, <8 x i1> %15, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %18 = shufflevector <2 x i1> %i.azz, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %19 = shufflevector <8 x i1> %17, <8 x i1> %18, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %20 = and <8 x i1> %14, %19
  %21 = shufflevector <16 x i1> %9, <16 x i1> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %22 = or <64 x i1> %i.aze, %21                  ; 2 uses
  %23 = shufflevector <64 x i1> %22, <64 x i1> %i.aze, <64 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %24 = shufflevector <8 x i1> %20, <8 x i1> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.baa = or <64 x i1> %22, %24
  %25 = shufflevector <64 x i1> %i.baa, <64 x i1> %23, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %i.bab = bitcast <64 x i1> %25 to i64
  %.not = icmp eq i64 %i.bab, 0
  %n.vec864 = and i64 %i.awe, -8                  ; 3 uses
  %i.bac = add nsw i64 %n.vec864, %i.p
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %i.adb, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert865 = insertelement <8 x i1> poison, i1 %i.add, i64 0
  %broadcast.splat866 = shufflevector <8 x i1> %broadcast.splatinsert865, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert867 = insertelement <8 x i1> poison, i1 %i.adf, i64 0
  %broadcast.splat868 = shufflevector <8 x i1> %broadcast.splatinsert867, <8 x i1> poison, <8 x i32> zeroinitializer
  %cmp.n976 = icmp eq i64 %i.awe, %n.vec864
  br label %.preheader.i49

.preheader.us.i58.preheader:                      ; preds = %.preheader.lr.ph.split.i48
  %i.bad = getelementptr i8, ptr %i.a, i64 %i.ado
  %scevgep980 = getelementptr i8, ptr %i.bad, i64 %i.adq ; 3 uses
  %i.bae = getelementptr i8, ptr %i.af, i64 %i.adk
  %i.baf = getelementptr i8, ptr %i.bae, i64 %i.ade
  %scevgep981 = getelementptr i8, ptr %i.baf, i64 -4
  %i.bag = add nsw i64 %i.adl, 4
  %i.bah = sub nsw i64 %i.bag, %i.adm
  %i.bai = mul i64 %i.bah, %i.acz
  %i.baj = getelementptr i8, ptr %i.af, i64 %i.bai
  %i.bak = getelementptr i8, ptr %i.baj, i64 %i.adq
  %scevgep982 = getelementptr i8, ptr %i.bak, i64 4
  %i.bal = add i64 %i.adk, -4                     ; 2 uses
  %scevgep983 = getelementptr i8, ptr %i.af, i64 %i.bal
  %i.bam = getelementptr i8, ptr %i.af, i64 %i.ado
  %i.ban = getelementptr i8, ptr %i.bam, i64 %i.adq
  %scevgep984 = getelementptr i8, ptr %i.ban, i64 4
  %i.bao = sub i64 %i.bal, %i.ade
  %scevgep985 = getelementptr i8, ptr %i.af, i64 %i.bao
  %i.bap = xor i64 %i.p, -1
  %i.baq = add nsw i64 %i.bap, %i.q
  %i.bar = mul i64 %i.baq, %i.acz
  %i.bas = shl i64 %i.bar, 2
  %i.bat = getelementptr i8, ptr %i.af, i64 %i.bas
  %i.bau = getelementptr i8, ptr %i.bat, i64 %i.adq
  %scevgep986 = getelementptr i8, ptr %i.bau, i64 4
  %i.bav = shl nsw i64 %i.p, 1
  %i.baw = sub nsw i64 %i.acz, %i.bav             ; 3 uses
  %min.iters.check1005 = icmp ult i64 %i.baw, 8
  %bound0987 = icmp ult ptr %scevgep979, %scevgep982
  %bound1988 = icmp ult ptr %scevgep981, %scevgep980
  %found.conflict989 = and i1 %bound0987, %bound1988
  %stride.check812 = icmp slt i32 %i.c, 0
  %26 = or i1 %found.conflict989, %stride.check812
  %bound0813 = icmp ult ptr %scevgep979, %scevgep984
  %bound1814 = icmp ult ptr %scevgep983, %scevgep980
  %found.conflict815 = and i1 %bound0813, %bound1814
  %conflict.rdx997 = or i1 %26, %found.conflict815
  %bound0998 = icmp ult ptr %scevgep979, %scevgep986
  %bound1999 = icmp ult ptr %scevgep985, %scevgep980
  %found.conflict1000 = and i1 %bound0998, %bound1999
  %conflict.rdx1003 = or i1 %conflict.rdx997, %found.conflict1000
  %n.vec1007 = and i64 %i.baw, -8                 ; 3 uses
  %i.bax = add nsw i64 %n.vec1007, %i.p
  %cmp.n1021 = icmp eq i64 %i.baw, %n.vec1007
  br label %.preheader.us.i58

.preheader.us.i58:                                ; preds = %.preheader.us.i58.preheader, %._crit_edge.split.us.us.i60
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %._crit_edge.split.us.us.i60 ], [ %i.p, %.preheader.us.i58.preheader ] ; 2 uses
  %i.bay = mul nsw i64 %indvars.iv36.i, %i.acz    ; 2 uses
  %brmerge1103 = select i1 %min.iters.check1005, i1 true, i1 %conflict.rdx1003
  br i1 %brmerge1103, label %_test_erode.exit.us.us.i.preheader, label %vector.ph1006

vector.ph1006:                                    ; preds = %.preheader.us.i58
  %invariant.op1101 = add i64 %i.p, %i.bay
  br label %vector.body1008

vector.body1008:                                  ; preds = %vector.body1008, %vector.ph1006
  %index1009 = phi i64 [ 0, %vector.ph1006 ], [ %index.next1019, %vector.body1008 ] ; 2 uses
  %.reass1102 = add i64 %index1009, %invariant.op1101 ; 3 uses
  %i.baz = sub nsw i64 %.reass1102, %i.acz
  %i.bba = getelementptr [4 x i8], ptr %i.af, i64 %i.baz ; 3 uses
  %i.bbb = getelementptr i8, ptr %i.bba, i64 -4
  %wide.load1010 = load <8 x i32>, ptr %i.bbb, align 4, !tbaa !15, !alias.scope !296
  %wide.load1011 = load <8 x i32>, ptr %i.bba, align 4, !tbaa !15, !alias.scope !296
  %i.bbc = and <8 x i32> %wide.load1011, %wide.load1010
  %i.bbd = getelementptr i8, ptr %i.bba, i64 4
  %wide.load1012 = load <8 x i32>, ptr %i.bbd, align 4, !tbaa !15, !alias.scope !296
  %i.bbe = and <8 x i32> %i.bbc, %wide.load1012
  %i.bbf = getelementptr [4 x i8], ptr %i.af, i64 %.reass1102 ; 4 uses
  %i.bbg = getelementptr i8, ptr %i.bbf, i64 -4
  %wide.load1013 = load <8 x i32>, ptr %i.bbg, align 4, !tbaa !15, !alias.scope !297
  %i.bbh = and <8 x i32> %i.bbe, %wide.load1013
  %wide.load1014 = load <8 x i32>, ptr %i.bbf, align 4, !tbaa !15, !alias.scope !297
  %i.bbi = and <8 x i32> %i.bbh, %wide.load1014
  %i.bbj = getelementptr i8, ptr %i.bbf, i64 4
  %wide.load1015 = load <8 x i32>, ptr %i.bbj, align 4, !tbaa !15, !alias.scope !297
  %i.bbk = and <8 x i32> %i.bbi, %wide.load1015
  %i.bbl = getelementptr [4 x i8], ptr %i.bbf, i64 %i.acz ; 3 uses
  %i.bbm = getelementptr i8, ptr %i.bbl, i64 -4
  %wide.load1016 = load <8 x i32>, ptr %i.bbm, align 4, !tbaa !15, !alias.scope !298
  %i.bbn = and <8 x i32> %i.bbk, %wide.load1016
  %wide.load1017 = load <8 x i32>, ptr %i.bbl, align 4, !tbaa !15, !alias.scope !298
  %i.bbo = and <8 x i32> %i.bbn, %wide.load1017
  %i.bbp = getelementptr i8, ptr %i.bbl, i64 4
  %wide.load1018 = load <8 x i32>, ptr %i.bbp, align 4, !tbaa !15, !alias.scope !298
  %i.bbq = and <8 x i32> %i.bbo, %wide.load1018
  %i.bbr = icmp ne <8 x i32> %i.bbq, zeroinitializer
  %i.bbs = zext <8 x i1> %i.bbr to <8 x i32>
  %i.bbt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.reass1102
  store <8 x i32> %i.bbs, ptr %i.bbt, align 4, !tbaa !15, !alias.scope !299, !noalias !300
  %index.next1019 = add nuw i64 %index1009, 8     ; 2 uses
  %i.bbu = icmp eq i64 %index.next1019, %n.vec1007
  br i1 %i.bbu, label %middle.block1020, label %vector.body1008, !llvm.loop !198

middle.block1020:                                 ; preds = %vector.body1008
  br i1 %cmp.n1021, label %._crit_edge.split.us.us.i60, label %_test_erode.exit.us.us.i.preheader

_test_erode.exit.us.us.i.preheader:               ; preds = %.preheader.us.i58, %middle.block1020
  %indvars.iv31.i.ph = phi i64 [ %i.bax, %middle.block1020 ], [ %i.p, %.preheader.us.i58 ]
  br label %_test_erode.exit.us.us.i

_test_erode.exit.us.us.i:                         ; preds = %_test_erode.exit.us.us.i.preheader, %_test_erode.exit.us.us.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %_test_erode.exit.us.us.i ], [ %indvars.iv31.i.ph, %_test_erode.exit.us.us.i.preheader ] ; 2 uses
  %i.bbv = add nsw i64 %indvars.iv31.i, %i.bay    ; 3 uses
  %i.bbw = sub nsw i64 %i.bbv, %i.acz
  %i.bbx = getelementptr [4 x i8], ptr %i.af, i64 %i.bbw ; 2 uses
  %i.bby = getelementptr i8, ptr %i.bbx, i64 -4
  %i.bbz = load i32, ptr %i.bby, align 4, !tbaa !15
  %i.bca = getelementptr [4 x i8], ptr %i.af, i64 %i.bbv ; 3 uses
  %i.bcb = getelementptr i8, ptr %i.bca, i64 -4
  %i.bcc = getelementptr i8, ptr %i.bca, i64 4
  %i.bcd = load i32, ptr %i.bcc, align 4, !tbaa !15
  %i.bce = getelementptr [4 x i8], ptr %i.bca, i64 %i.acz ; 2 uses
  %i.bcf = getelementptr i8, ptr %i.bce, i64 -4
  %i.bcg = load i32, ptr %i.bcf, align 4, !tbaa !15
  %i.bch = load <2 x i32>, ptr %i.bbx, align 4, !tbaa !15
  %i.bci = load <2 x i32>, ptr %i.bcb, align 4, !tbaa !15
  %i.bcj = load <2 x i32>, ptr %i.bce, align 4, !tbaa !15
  %i.bck = insertelement <8 x i32> poison, i32 %i.bcd, i64 4
  %i.bcl = insertelement <8 x i32> %i.bck, i32 %i.bcg, i64 5
  %i.bcm = shufflevector <2 x i32> %i.bch, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bcn = shufflevector <8 x i32> %i.bcm, <8 x i32> %i.bcl, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 12, i32 13, i32 poison, i32 poison>
  %i.bco = shufflevector <2 x i32> %i.bci, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bcp = shufflevector <8 x i32> %i.bcn, <8 x i32> %i.bco, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 poison, i32 poison>
  %i.bcq = shufflevector <2 x i32> %i.bcj, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bcr = shufflevector <8 x i32> %i.bcp, <8 x i32> %i.bcq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.bcs = tail call i32 @llvm.vector.reduce.and.v8i32(<8 x i32> %i.bcr)
  %op.rdx = and i32 %i.bcs, %i.bbz
  %.not.us.us.i59 = icmp ne i32 %op.rdx, 0
  %i.bct = zext i1 %.not.us.us.i59 to i32
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bbv
  store i32 %i.bct, ptr %i.bcu, align 4, !tbaa !15
  %indvars.iv.next32.i = add nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count34.i
  br i1 %exitcond35.not.i, label %._crit_edge.split.us.us.i60, label %_test_erode.exit.us.us.i, !llvm.loop !199

._crit_edge.split.us.us.i60:                      ; preds = %_test_erode.exit.us.us.i, %middle.block1020
  %indvars.iv.next37.i = add nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %i.q
  br i1 %exitcond40.not.i, label %_eroding.exit, label %.preheader.us.i58

.preheader.i49:                                   ; preds = %.preheader.i49.preheader, %._crit_edge.split.i57
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %._crit_edge.split.i57 ], [ %i.p, %.preheader.i49.preheader ] ; 2 uses
  %i.bcv = mul nsw i64 %indvars.iv26.i, %i.acz    ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge1104 = select i1 %min.iters.check862, i1 true, i1 %.not.not
  br i1 %brmerge1104, label %scalar.ph861.preheader, label %vector.ph863

vector.ph863:                                     ; preds = %.preheader.i49
  %invariant.op1099 = add i64 %i.p, %i.bcv
  br label %vector.body869

vector.body869:                                   ; preds = %vector.body869, %vector.ph863
  %index870 = phi i64 [ 0, %vector.ph863 ], [ %index.next974, %vector.body869 ] ; 2 uses
  %.reass1100 = add i64 %index870, %invariant.op1099 ; 7 uses
  %i.bcw = sub i64 %.reass1100, %i.acz
  %i.bcx = getelementptr [4 x i8], ptr %i.af, i64 %i.bcw ; 11 uses
  %i.bcy = getelementptr i8, ptr %i.bcx, i64 -4
  %wide.load871 = load <8 x i32>, ptr %i.bcy, align 4, !tbaa !15, !alias.scope !301
  %wide.load872 = load <8 x i32>, ptr %i.bcx, align 4, !tbaa !15, !alias.scope !302
  %i.bcz = and <8 x i32> %wide.load872, %wide.load871
  %i.bda = getelementptr i8, ptr %i.bcx, i64 4
  %wide.load873 = load <8 x i32>, ptr %i.bda, align 4, !tbaa !15, !alias.scope !303
  %i.bdb = and <8 x i32> %i.bcz, %wide.load873
  %i.bdc = getelementptr [4 x i8], ptr %i.af, i64 %.reass1100 ; 16 uses
  %i.bdd = getelementptr i8, ptr %i.bdc, i64 -4
  %wide.load874 = load <8 x i32>, ptr %i.bdd, align 4, !tbaa !15, !alias.scope !304
  %i.bde = and <8 x i32> %i.bdb, %wide.load874
  %wide.load875 = load <8 x i32>, ptr %i.bdc, align 4, !tbaa !15, !alias.scope !305
  %i.bdf = and <8 x i32> %i.bde, %wide.load875
  %i.bdg = getelementptr i8, ptr %i.bdc, i64 4
  %wide.load876 = load <8 x i32>, ptr %i.bdg, align 4, !tbaa !15, !alias.scope !306
  %i.bdh = and <8 x i32> %i.bdf, %wide.load876
  %i.bdi = getelementptr [4 x i8], ptr %i.bdc, i64 %i.acz ; 11 uses
  %i.bdj = getelementptr i8, ptr %i.bdi, i64 -4
  %wide.load877 = load <8 x i32>, ptr %i.bdj, align 4, !tbaa !15, !alias.scope !307
  %i.bdk = and <8 x i32> %i.bdh, %wide.load877
  %wide.load878 = load <8 x i32>, ptr %i.bdi, align 4, !tbaa !15, !alias.scope !308
  %i.bdl = and <8 x i32> %i.bdk, %wide.load878
  %i.bdm = getelementptr i8, ptr %i.bdi, i64 4
  %wide.load879 = load <8 x i32>, ptr %i.bdm, align 4, !tbaa !15, !alias.scope !309
  %i.bdn = and <8 x i32> %i.bdl, %wide.load879
  %i.bdo = icmp ne <8 x i32> %i.bdn, zeroinitializer ; 14 uses
  %i.bdp = sub i64 %.reass1100, %i.ada
  %i.bdq = getelementptr [4 x i8], ptr %i.af, i64 %i.bdp ; 11 uses
  %i.bdr = getelementptr i8, ptr %i.bdq, i64 -4
  %wide.masked.load = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bdr, <8 x i1> %i.bdo, <8 x i32> poison), !tbaa !15, !alias.scope !310
  %wide.masked.load880 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bdq, <8 x i1> %i.bdo, <8 x i32> poison), !tbaa !15, !alias.scope !311
  %i.bds = and <8 x i32> %wide.masked.load880, %wide.masked.load
  %i.bdt = getelementptr i8, ptr %i.bdq, i64 4
  %wide.masked.load881 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bdt, <8 x i1> %i.bdo, <8 x i32> poison), !tbaa !15, !alias.scope !312
  %i.bdu = and <8 x i32> %i.bds, %wide.masked.load881
  %i.bdv = getelementptr i8, ptr %i.bcx, i64 -8
  %wide.masked.load882 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bdv, <8 x i1> %i.bdo, <8 x i32> poison), !tbaa !15, !alias.scope !313
  %i.bdw = and <8 x i32> %i.bdu, %wide.masked.load882
  %i.bdx = getelementptr i8, ptr %i.bcx, i64 8
  %wide.masked.load883 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bdx, <8 x i1> %i.bdo, <8 x i32> poison), !tbaa !15, !alias.scope !314
  %i.bdy = and <8 x i32> %i.bdw, %wide.masked.load883
  %i.bdz = getelementptr i8, ptr %i.bdc, i64 -8
  %wide.masked.load884 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bdz, <8 x i1> %i.bdo, <8 x i32> poison), !tbaa !15, !alias.scope !315
  %i.bea = and <8 x i32> %i.bdy, %wide.masked.load884
  %i.beb = getelementptr i8, ptr %i.bdc, i64 8
  %wide.masked.load885 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.beb, <8 x i1> %i.bdo, <8 x i32> poison), !tbaa !15, !alias.scope !316
  %i.bec = and <8 x i32> %i.bea, %wide.masked.load885
  %i.bed = getelementptr i8, ptr %i.bdi, i64 -8
  %wide.masked.load886 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bed, <8 x i1> %i.bdo, <8 x i32> poison), !tbaa !15, !alias.scope !317
  %i.bee = and <8 x i32> %i.bec, %wide.masked.load886
  %i.bef = getelementptr i8, ptr %i.bdi, i64 8
  %wide.masked.load887 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bef, <8 x i1> %i.bdo, <8 x i32> poison), !tbaa !15, !alias.scope !318
  %i.beg = and <8 x i32> %i.bee, %wide.masked.load887
  %i.beh = getelementptr [4 x i8], ptr %i.bdc, i64 %i.ada ; 11 uses
  %i.bei = getelementptr i8, ptr %i.beh, i64 -4
  %wide.masked.load888 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bei, <8 x i1> %i.bdo, <8 x i32> poison), !tbaa !15, !alias.scope !319
  %i.bej = and <8 x i32> %i.beg, %wide.masked.load888
  %wide.masked.load889 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.beh, <8 x i1> %i.bdo, <8 x i32> poison), !tbaa !15, !alias.scope !320
  %i.bek = and <8 x i32> %i.bej, %wide.masked.load889
  %i.bel = getelementptr i8, ptr %i.beh, i64 4
  %wide.masked.load890 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bel, <8 x i1> %i.bdo, <8 x i32> poison), !tbaa !15, !alias.scope !321
  %i.bem = and <8 x i32> %i.bek, %wide.masked.load890 ; 2 uses
  %i.ben = icmp eq <8 x i32> %i.bem, zeroinitializer
  %i.beo = or <8 x i1> %broadcast.splat, %i.ben   ; 2 uses
  %i.bep = xor <8 x i1> %i.beo, splat (i1 true)
  %i.beq = select <8 x i1> %i.bdo, <8 x i1> %i.bep, <8 x i1> zeroinitializer ; 26 uses
  %i.ber = sub i64 %.reass1100, %i.adc
  %i.bes = getelementptr [4 x i8], ptr %i.af, i64 %i.ber ; 9 uses
  %i.bet = getelementptr i8, ptr %i.bes, i64 -8
  %wide.masked.load891 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bet, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !322
  %i.beu = getelementptr i8, ptr %i.bes, i64 -4
  %wide.masked.load892 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.beu, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !323
  %i.bev = and <8 x i32> %wide.masked.load892, %wide.masked.load891
  %wide.masked.load893 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bes, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !324
  %i.bew = and <8 x i32> %i.bev, %wide.masked.load893
  %i.bex = getelementptr i8, ptr %i.bes, i64 4
  %wide.masked.load894 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bex, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !325
  %i.bey = and <8 x i32> %i.bew, %wide.masked.load894
  %i.bez = getelementptr i8, ptr %i.bes, i64 8
  %wide.masked.load895 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bez, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !326
  %i.bfa = and <8 x i32> %i.bey, %wide.masked.load895
  %i.bfb = getelementptr i8, ptr %i.bdq, i64 -12
  %wide.masked.load896 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bfb, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !327
  %i.bfc = and <8 x i32> %i.bfa, %wide.masked.load896
  %i.bfd = getelementptr i8, ptr %i.bdq, i64 -8
  %wide.masked.load897 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bfd, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !328
  %i.bfe = and <8 x i32> %i.bfc, %wide.masked.load897
  %i.bff = getelementptr i8, ptr %i.bdq, i64 8
  %wide.masked.load898 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bff, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !329
  %i.bfg = and <8 x i32> %i.bfe, %wide.masked.load898
  %i.bfh = getelementptr i8, ptr %i.bdq, i64 12
  %wide.masked.load899 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bfh, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !330
  %i.bfi = and <8 x i32> %i.bfg, %wide.masked.load899
  %i.bfj = getelementptr i8, ptr %i.bcx, i64 -12
  %wide.masked.load900 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bfj, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !331
  %i.bfk = and <8 x i32> %i.bfi, %wide.masked.load900
  %i.bfl = getelementptr i8, ptr %i.bcx, i64 12
  %wide.masked.load901 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bfl, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !332
  %i.bfm = and <8 x i32> %i.bfk, %wide.masked.load901
  %i.bfn = getelementptr i8, ptr %i.bdc, i64 -12
  %wide.masked.load902 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bfn, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !333
  %i.bfo = and <8 x i32> %i.bfm, %wide.masked.load902
  %i.bfp = getelementptr i8, ptr %i.bdc, i64 12
  %wide.masked.load903 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bfp, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !334
  %i.bfq = and <8 x i32> %i.bfo, %wide.masked.load903
  %i.bfr = getelementptr i8, ptr %i.bdi, i64 -12
  %wide.masked.load904 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bfr, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !335
  %i.bfs = and <8 x i32> %i.bfq, %wide.masked.load904
  %i.bft = getelementptr i8, ptr %i.bdi, i64 12
  %wide.masked.load905 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bft, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !336
  %i.bfu = and <8 x i32> %i.bfs, %wide.masked.load905
  %i.bfv = getelementptr i8, ptr %i.beh, i64 -12
  %wide.masked.load906 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bfv, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !337
  %i.bfw = and <8 x i32> %i.bfu, %wide.masked.load906
  %i.bfx = getelementptr i8, ptr %i.beh, i64 -8
  %wide.masked.load907 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bfx, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !338
  %i.bfy = and <8 x i32> %i.bfw, %wide.masked.load907
  %i.bfz = getelementptr i8, ptr %i.beh, i64 8
  %wide.masked.load908 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bfz, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !339
  %i.bga = and <8 x i32> %i.bfy, %wide.masked.load908
  %i.bgb = getelementptr i8, ptr %i.beh, i64 12
  %wide.masked.load909 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bgb, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !340
  %i.bgc = and <8 x i32> %i.bga, %wide.masked.load909
  %i.bgd = getelementptr [4 x i8], ptr %i.bdc, i64 %i.adc ; 9 uses
  %i.bge = getelementptr i8, ptr %i.bgd, i64 -8
  %wide.masked.load910 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bge, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !341
  %i.bgf = and <8 x i32> %i.bgc, %wide.masked.load910
  %i.bgg = getelementptr i8, ptr %i.bgd, i64 -4
  %wide.masked.load911 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bgg, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !342
  %i.bgh = and <8 x i32> %i.bgf, %wide.masked.load911
  %wide.masked.load912 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bgd, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !343
  %i.bgi = and <8 x i32> %i.bgh, %wide.masked.load912
  %i.bgj = getelementptr i8, ptr %i.bgd, i64 4
  %wide.masked.load913 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bgj, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !344
  %i.bgk = and <8 x i32> %i.bgi, %wide.masked.load913
  %i.bgl = getelementptr i8, ptr %i.bgd, i64 8
  %wide.masked.load914 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bgl, <8 x i1> %i.beq, <8 x i32> poison), !tbaa !15, !alias.scope !345
  %i.bgm = and <8 x i32> %i.bgk, %wide.masked.load914 ; 2 uses
  %i.bgn = icmp eq <8 x i32> %i.bgm, zeroinitializer
  %i.bgo = or <8 x i1> %broadcast.splat866, %i.bgn ; 2 uses
  %i.bgp = xor <8 x i1> %i.bgo, splat (i1 true)
  %i.bgq = select <8 x i1> %i.beq, <8 x i1> %i.bgp, <8 x i1> zeroinitializer ; 25 uses
  %i.bgr = sub i64 %.reass1100, %i.ade
  %i.bgs = getelementptr [4 x i8], ptr %i.af, i64 %i.bgr ; 9 uses
  %i.bgt = getelementptr i8, ptr %i.bgs, i64 -8
  %wide.masked.load915 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bgt, <8 x i1> %i.bgq, <8 x i32> poison), !tbaa !15, !alias.scope !346
  %i.bgu = getelementptr i8, ptr %i.bgs, i64 -4
  %wide.masked.load916 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bgu, <8 x i1> %i.bgq, <8 x i32> poison), !tbaa !15, !alias.scope !347
  %i.bgv = and <8 x i32> %wide.masked.load916, %wide.masked.load915
  %wide.masked.load917 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bgs, <8 x i1> %i.bgq, <8 x i32> poison), !tbaa !15, !alias.scope !348
  %i.bgw = and <8 x i32> %i.bgv, %wide.masked.load917
  %i.bgx = getelementptr i8, ptr %i.bgs, i64 4
  %wide.masked.load918 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bgx, <8 x i1> %i.bgq, <8 x i32> poison), !tbaa !15, !alias.scope !349
  %i.bgy = and <8 x i32> %i.bgw, %wide.masked.load918
  %i.bgz = getelementptr i8, ptr %i.bgs, i64 8
  %wide.masked.load919 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bgz, <8 x i1> %i.bgq, <8 x i32> poison), !tbaa !15, !alias.scope !350
  %i.bha = and <8 x i32> %i.bgy, %wide.masked.load919
  %i.bhb = getelementptr i8, ptr %i.bes, i64 -12
  %wide.masked.load920 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bhb, <8 x i1> %i.bgq, <8 x i32> poison), !tbaa !15, !alias.scope !351
  %i.bhc = and <8 x i32> %i.bha, %wide.masked.load920
  %i.bhd = getelementptr i8, ptr %i.bes, i64 12
  %wide.masked.load921 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bhd, <8 x i1> %i.bgq, <8 x i32> poison), !tbaa !15, !alias.scope !352
  %i.bhe = and <8 x i32> %i.bhc, %wide.masked.load921
  %i.bhf = getelementptr i8, ptr %i.bdq, i64 -16
  %wide.masked.load922 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bhf, <8 x i1> %i.bgq, <8 x i32> poison), !tbaa !15, !alias.scope !353
  %i.bhg = and <8 x i32> %i.bhe, %wide.masked.load922
  %i.bhh = getelementptr i8, ptr %i.bdq, i64 16
  %wide.masked.load923 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bhh, <8 x i1> %i.bgq, <8 x i32> poison), !tbaa !15, !alias.scope !354
  %i.bhi = and <8 x i32> %i.bhg, %wide.masked.load923
  %i.bhj = getelementptr i8, ptr %i.bcx, i64 -16
  %wide.masked.load924 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bhj, <8 x i1> %i.bgq, <8 x i32> poison), !tbaa !15, !alias.scope !355
  %i.bhk = and <8 x i32> %i.bhi, %wide.masked.load924
  %i.bhl = getelementptr i8, ptr %i.bcx, i64 16
  %wide.masked.load925 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bhl, <8 x i1> %i.bgq, <8 x i32> poison), !tbaa !15, !alias.scope !356
  %i.bhm = and <8 x i32> %i.bhk, %wide.masked.load925
  %i.bhn = getelementptr i8, ptr %i.bdc, i64 -16
  %wide.masked.load926 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bhn, <8 x i1> %i.bgq, <8 x i32> poison), !tbaa !15, !alias.scope !357
  %i.bho = and <8 x i32> %i.bhm, %wide.masked.load926
  %i.bhp = getelementptr i8, ptr %i.bdc, i64 16
  %wide.masked.load927 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bhp, <8 x i1> %i.bgq, <8 x i32> poison), !tbaa !15, !alias.scope !358
  %i.bhq = and <8 x i32> %i.bho, %wide.masked.load927
  %i.bhr = getelementptr i8, ptr %i.bdi, i64 -16
  %wide.masked.load928 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bhr, <8 x i1> %i.bgq, <8 x i32> poison), !tbaa !15, !alias.scope !359
  %i.bhs = and <8 x i32> %i.bhq, %wide.masked.load928
  %i.bht = getelementptr i8, ptr %i.bdi, i64 16
  %wide.masked.load929 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bht, <8 x i1> %i.bgq, <8 x i32> poison), !tbaa !15, !alias.scope !360
  %i.bhu = and <8 x i32> %i.bhs, %wide.masked.load929
  %i.bhv = getelementptr i8, ptr %i.beh, i64 -16
  %wide.masked.load930 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %i.bhv, <8 x i1> %i.bgq, <8 x i32> poison), !tbaa !15, !alias.scope !361
end_hunk_2
begin_hunk_3_@_process_segmentation:bb.a
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.249.1.4.i.us.us.i = phi nsz float [ %i.bpd, %bb.df ], [ %.249.480.i.us.us.i, %bb.de ] ; 2 uses
  %.2.1.4.i.us.us.i = phi nsz float [ %i.bpa, %bb.df ], [ %.2.481.i.us.us.i, %bb.de ] ; 2 uses
  %i.bpe = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.bol
  %i.bpf = load float, ptr %i.bpe, align 4, !tbaa !12 ; 2 uses
  %i.bpg = fcmp reassoc nsz arcp contract afn oge float %i.bpf, %i.bhg
  %i.bph = fcmp reassoc nsz arcp contract afn olt float %i.bpf, %.0127140.us.us.i
  %or.cond56.2.4.i.us.us.i = and i1 %i.bpg, %i.bph
  br i1 %or.cond56.2.4.i.us.us.i, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.bpi = fadd reassoc nsz arcp contract afn float %.2.1.4.i.us.us.i, 1.000000e+00
  %i.bpj = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %i.bol
  %i.bpk = load float, ptr %i.bpj, align 4, !tbaa !12
  %i.bpl = fadd reassoc nsz arcp contract afn float %i.bpk, %.249.1.4.i.us.us.i
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.249.2.4.i.us.us.i = phi nsz float [ %i.bpl, %bb.dh ], [ %.249.1.4.i.us.us.i, %bb.dg ] ; 2 uses
  %.2.2.4.i.us.us.i = phi nsz float [ %i.bpi, %bb.dh ], [ %.2.1.4.i.us.us.i, %bb.dg ] ; 2 uses
  %i.bpm = add i64 %i.bol, 1                      ; 2 uses
  %i.bpn = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.bpm
  %i.bpo = load float, ptr %i.bpn, align 4, !tbaa !12 ; 2 uses
  %i.bpp = fcmp reassoc nsz arcp contract afn oge float %i.bpo, %i.bhg
  %i.bpq = fcmp reassoc nsz arcp contract afn olt float %i.bpo, %.0127140.us.us.i
  %or.cond56.3.4.i.us.us.i = and i1 %i.bpp, %i.bpq
  br i1 %or.cond56.3.4.i.us.us.i, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.bpr = fadd reassoc nsz arcp contract afn float %.2.2.4.i.us.us.i, 1.000000e+00
  %i.bps = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %i.bpm
  %i.bpt = load float, ptr %i.bps, align 4, !tbaa !12
  %i.bpu = fadd reassoc nsz arcp contract afn float %i.bpt, %.249.2.4.i.us.us.i
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.249.3.4.i.us.us.i = phi nsz float [ %i.bpu, %bb.dj ], [ %.249.2.4.i.us.us.i, %bb.di ] ; 2 uses
  %.2.3.4.i.us.us.i = phi nsz float [ %i.bpr, %bb.dj ], [ %.2.2.4.i.us.us.i, %bb.di ] ; 2 uses
  %i.bpv = add i64 %i.bol, 2                      ; 2 uses
  %i.bpw = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.bpv
  %i.bpx = load float, ptr %i.bpw, align 4, !tbaa !12 ; 2 uses
  %i.bpy = fcmp reassoc nsz arcp contract afn oge float %i.bpx, %i.bhg
  %i.bpz = fcmp reassoc nsz arcp contract afn olt float %i.bpx, %.0127140.us.us.i
  %or.cond56.4.4.i.us.us.i = and i1 %i.bpy, %i.bpz
  br i1 %or.cond56.4.4.i.us.us.i, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.bqa = fadd reassoc nsz arcp contract afn float %.2.3.4.i.us.us.i, 1.000000e+00
  %i.bqb = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %i.bpv
  %i.bqc = load float, ptr %i.bqb, align 4, !tbaa !12
  %i.bqd = fadd reassoc nsz arcp contract afn float %i.bqc, %.249.3.4.i.us.us.i
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.249.4.4.i.us.us.i = phi nsz float [ %i.bqd, %bb.dl ], [ %.249.3.4.i.us.us.i, %bb.dk ]
  %.2.4.4.i.us.us.i = phi nsz float [ %i.bqa, %bb.dl ], [ %.2.3.4.i.us.us.i, %bb.dk ] ; 2 uses
  %i.bqe = fcmp reassoc nsz arcp contract afn ogt float %.2.4.4.i.us.us.i, 0.000000e+00
  br i1 %i.bqe, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.bqf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bhl, float %i.bhb)
  %i.bqg = fadd reassoc nsz arcp contract afn float %i.bqf, 1.000000e+00
  %i.bqh = fmul reassoc nsz arcp contract afn float %.249.4.4.i.us.us.i, %i.bqg
  %i.bqi = fdiv reassoc nsz arcp contract afn float %i.bqh, %.2.4.4.i.us.us.i
  %i.bqj = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bqi, float 1.500000e+00)
  %i.bqk = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %i.bhj
  store float %i.bqj, ptr %i.bqk, align 4, !tbaa !12
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %bb.bs, %bb.br
  %indvars.iv.next.i.us.us.i = add nsw i64 %indvars.iv.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i64 %indvars.iv.next.i.us.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.us.i, label %._crit_edge.i.us.us.i, label %bb.br

._crit_edge.i.us.us.i:                            ; preds = %bb.do
  %indvars.iv.next84.i.us.us.i = add nsw i64 %indvars.iv83.i.us.us.i, 1 ; 2 uses
  %exitcond87.not.i.us.us.i = icmp eq i64 %indvars.iv.next84.i.us.us.i, %wide.trip.count86.i.i
  br i1 %exitcond87.not.i.us.us.i, label %_calc_distance_ring.exit.loopexit.us.us.i, label %.preheader58.i.us.us.i

_calc_distance_ring.exit.loopexit.us.us.i:        ; preds = %._crit_edge.i.us.us.i
  %i.bql = load float, ptr %i.bgk, align 4, !tbaa !12
  %i.bqm = fcmp reassoc nsz arcp contract afn olt float %i.bhf, %i.bql
  br i1 %i.bqm, label %.preheader58.lr.ph.i.us.us.i, label %._crit_edge.i524

.preheader58.lr.ph.i.us.i:                        ; preds = %.lr.ph.split.us.i, %.preheader58.lr.ph.i.us.i
  %.0127140.us.i = phi float [ %i.bqn, %.preheader58.lr.ph.i.us.i ], [ 1.500000e+00, %.lr.ph.split.us.i ]
  %i.bqn = fadd reassoc nsz arcp contract afn float %.0127140.us.i, 1.500000e+00 ; 3 uses
  %i.bqo = fcmp reassoc nsz arcp contract afn olt float %i.bqn, %.pre178.i.lcssa
  br i1 %i.bqo, label %.preheader58.lr.ph.i.us.i, label %._crit_edge.i524

_calc_distance_ring.exit.i:                       ; preds = %.lr.ph.i523, %_calc_distance_ring.exit.i
  %.0127140.i = phi float [ %i.bqp, %_calc_distance_ring.exit.i ], [ 1.500000e+00, %.lr.ph.i523 ]
  %i.bqp = fadd reassoc nsz arcp contract afn float %.0127140.i, 1.500000e+00 ; 3 uses
  %i.bqq = fcmp reassoc nsz arcp contract afn olt float %i.bqp, %.pre178.i.lcssa
  br i1 %i.bqq, label %_calc_distance_ring.exit.i, label %._crit_edge.i524

._crit_edge.i524:                                 ; preds = %_calc_distance_ring.exit.i, %.preheader58.lr.ph.i.us.i, %_calc_distance_ring.exit.loopexit.us.us.i
  %.0127.lcssa.i = phi float [ %i.bhf, %_calc_distance_ring.exit.loopexit.us.us.i ], [ %i.bqn, %.preheader58.lr.ph.i.us.i ], [ %i.bqp, %_calc_distance_ring.exit.i ] ; 2 uses
  %i.bqr = fcmp reassoc nsz arcp contract afn ogt float %.0127.lcssa.i, 4.000000e+00
  br i1 %i.bqr, label %bb.dp, label %.loopexit.i

bb.dp:                                            ; preds = %._crit_edge.i524
  %i.bqs = icmp ult i32 %i.bgq, %i.bgs            ; 2 uses
  %i.bqt = sub nsw i32 %i.bgo, %..i515
  %i.bqu = sext i32 %i.bqt to i64                 ; 3 uses
  %i.bqv = icmp ult i32 %..i515, %i.bgo
  %or.cond867 = select i1 %i.bqs, i1 %i.bqv, i1 false
  br i1 %or.cond867, label %.lr.ph146.i.preheader, label %._crit_edge151.split.i

.lr.ph146.i.preheader:                            ; preds = %bb.dp
  %i.bqw = add nsw i64 %i.bhd, 1
  %umax1061 = tail call i64 @llvm.umax.i64(i64 %wide.trip.count86.i.i, i64 %i.bqw)
  %i.bqx = xor i64 %i.bhd, -1
  %i.bqy = add i64 %umax1061, %i.bqx              ; 2 uses
  %i.bqz = shl nsw i64 %i.bhc, 2
  %i.bra = sub nsw i64 %wide.trip.count.i.i, %i.bhc ; 2 uses
  %i.brb = shl nsw i64 %i.bra, 2
  %i.brc = mul i64 %i.bqy, %i.brb
  %i.brd = add nsw i64 %i.bhc, 1
  %umax1062 = tail call i64 @llvm.umax.i64(i64 %wide.trip.count.i.i, i64 %i.brd) ; 2 uses
  %i.bre = shl nsw i64 %umax1062, 2
  %i.brf = add i64 %i.brc, %i.bre
  %i.brg = sub i64 %i.brf, %i.bqz
  %scevgep1063 = getelementptr i8, ptr %scevgep1060.a, i64 %i.brg
  %i.brh = mul nsw i64 %i.bco, %i.bhd             ; 2 uses
  %i.bri = add i64 %i.brh, %i.bhc
  %i.brj = shl i64 %i.bri, 2
  %scevgep1064 = getelementptr i8, ptr %i.aoa, i64 %i.brj
  %i.brk = mul i64 %i.bda, %i.bqy
  %i.brl = add i64 %umax1062, %i.brh
  %i.brm = shl i64 %i.brl, 2
  %i.brn = getelementptr i8, ptr %i.aoa, i64 %i.brk
  %scevgep1065 = getelementptr i8, ptr %i.brn, i64 %i.brm
  %i.bro = add nsw i64 %i.bhc, 1
  %umax1071 = tail call i64 @llvm.umax.i64(i64 %wide.trip.count.i.i, i64 %i.bro)
  %i.brp = sub i64 %umax1071, %i.bhc              ; 7 uses
  %min.iters.check1073 = icmp ult i64 %i.brp, 4
  %bound01066 = icmp ult ptr %i.di, %scevgep1065
  %bound11067 = icmp ult ptr %scevgep1064, %scevgep1063
  %found.conflict1068 = and i1 %bound01066, %bound11067
  %stride.check1069 = icmp slt i64 %i.bra, 0
  %i.brq = or i1 %found.conflict1068, %stride.check1069
  %i.brr = or i1 %i.brq, %stride.check1070
  %min.iters.check1075 = icmp ult i64 %i.brp, 32
  %i.brs = and i64 %i.brp, 28
  %n.vec1077 = and i64 %i.brp, -32                ; 6 uses
  %i.brt = add i64 %n.vec1077, %i.bhc
  %cmp.n1086 = icmp eq i64 %i.brp, %n.vec1077
  %min.epilog.iters.check1094 = icmp eq i64 %i.brs, 0
  %n.vec1096 = and i64 %i.brp, -4                 ; 5 uses
  %i.bru = add i64 %n.vec1096, %i.bhc
  %cmp.n1102 = icmp eq i64 %i.brp, %n.vec1096
  br label %iter.check1091

._crit_edge151.split.i:                           ; preds = %._crit_edge147.i, %bb.dp
  %i.brv = sub nsw i32 %i.bgs, %i.bgq
  %i.brw = sext i32 %i.brv to i64
  %i.brx = fptosi float %.0127.lcssa.i to i32
  %i.bry = tail call i32 @llvm.smin.i32(i32 %i.brx, i32 15)
  %i.brz = zext nneg i32 %i.bry to i64
  tail call void @dt_box_mean(ptr noundef nonnull %i.di, i64 noundef %i.brw, i64 noundef %i.bqu, i32 noundef 1, i64 noundef %i.brz, i32 noundef 2) #33
  %i.bsa = icmp ult i32 %..i515, %i.bgo
  %or.cond655 = select i1 %i.bqs, i1 %i.bsa, i1 false
  br i1 %or.cond655, label %.lr.ph157.i.preheader, label %.loopexit.i

.lr.ph157.i.preheader:                            ; preds = %._crit_edge151.split.i
  %i.bsb = mul nsw i64 %i.bco, %i.bhd             ; 2 uses
  %i.bsc = add i64 %i.bsb, %i.bhc
  %i.bsd = shl i64 %i.bsc, 2                      ; 2 uses
  %scevgep1001 = getelementptr i8, ptr %i.aoa, i64 %i.bsd ; 2 uses
  %i.bse = add nsw i64 %i.bhd, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %wide.trip.count86.i.i, i64 %i.bse)
  %i.bsf = xor i64 %i.bhd, -1
  %i.bsg = add i64 %umax, %i.bsf                  ; 2 uses
  %i.bsh = mul i64 %i.bcz, %i.bsg
  %i.bsi = add nsw i64 %i.bhc, 1
  %umax1002 = tail call i64 @llvm.umax.i64(i64 %wide.trip.count.i.i, i64 %i.bsi) ; 2 uses
  %i.bsj = add i64 %umax1002, %i.bsb
  %i.bsk = shl i64 %i.bsj, 2
  %i.bsl = add i64 %i.bsh, %i.bsk                 ; 2 uses
  %scevgep1003.a = getelementptr i8, ptr %i.aoa, i64 %i.bsl ; 2 uses
  %scevgep1004.a = getelementptr i8, ptr %i.bcr, i64 %i.bsd
  %scevgep1005 = getelementptr i8, ptr %i.bcr, i64 %i.bsl
  %i.bsm = shl nsw i64 %i.bhc, 2
  %i.bsn = sub nsw i64 %wide.trip.count.i.i, %i.bhc ; 2 uses
  %i.bso = shl nsw i64 %i.bsn, 2
  %i.bsp = mul i64 %i.bsg, %i.bso
  %i.bsq = shl nsw i64 %umax1002, 2
  %i.bsr = add i64 %i.bsp, %i.bsq
  %i.bss = sub i64 %i.bsr, %i.bsm
  %scevgep1007 = getelementptr i8, ptr %scevgep1006.a, i64 %i.bss
  %i.bst = add nsw i64 %i.bhc, 1
  %umax1019 = tail call i64 @llvm.umax.i64(i64 %wide.trip.count.i.i, i64 %i.bst)
  %i.bsu = sub i64 %umax1019, %i.bhc              ; 7 uses
  %min.iters.check1021 = icmp ult i64 %i.bsu, 4
  %bound01008 = icmp ult ptr %scevgep1001, %scevgep1005
  %bound11009 = icmp ult ptr %scevgep1004.a, %scevgep1003.a
  %found.conflict1010 = and i1 %bound01008, %bound11009
  %9 = or i1 %found.conflict1010, %stride.check1016
  %bound11014 = icmp ult ptr %scevgep1001, %scevgep1007
  %bound11012 = icmp ult ptr %i.di, %scevgep1003.a
  %found.conflict1013 = and i1 %bound11014, %bound11012
  %stride.check1017 = icmp slt i64 %i.bsn, 0
  %i.bsv = or i1 %found.conflict1013, %stride.check1017
  %conflict.rdx1018 = or i1 %9, %i.bsv
  %min.iters.check1023 = icmp ult i64 %i.bsu, 16
  %i.bsw = and i64 %i.bsu, 12
  %n.vec1025 = and i64 %i.bsu, -16                ; 6 uses
  %i.bsx = add i64 %n.vec1025, %i.bhc
  %broadcast.splatinsert1026 = insertelement <8 x i64> poison, i64 %indvars.iv729, i64 0
  %broadcast.splat1027 = shufflevector <8 x i64> %broadcast.splatinsert1026, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n1036 = icmp eq i64 %i.bsu, %n.vec1025
  %min.epilog.iters.check1044 = icmp eq i64 %i.bsw, 0
  %n.vec1046 = and i64 %i.bsu, -4                 ; 5 uses
  %i.bsy = add i64 %n.vec1046, %i.bhc
  %broadcast.splatinsert1047 = insertelement <4 x i64> poison, i64 %indvars.iv729, i64 0
  %broadcast.splat1048 = shufflevector <4 x i64> %broadcast.splatinsert1047, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n1055 = icmp eq i64 %i.bsu, %n.vec1046
  br label %iter.check1041

iter.check1091:                                   ; preds = %.lr.ph146.i.preheader, %._crit_edge147.i
  %.0126148.i = phi i64 [ %i.btx, %._crit_edge147.i ], [ %i.bhd, %.lr.ph146.i.preheader ] ; 3 uses
  %i.bsz = mul i64 %.0126148.i, %i.bco
  %i.bta = add i64 %i.bsz, %i.bhc                 ; 5 uses
  %i.btb = sub i64 %.0126148.i, %i.bhd
  %i.btc = mul i64 %i.btb, %i.bqu                 ; 5 uses
  %brmerge1186 = select i1 %min.iters.check1073, i1 true, i1 %i.brr
  br i1 %brmerge1186, label %vec.epilog.scalar.ph1092.preheader, label %vector.main.loop.iter.check1074

vector.main.loop.iter.check1074:                  ; preds = %iter.check1091
  br i1 %min.iters.check1075, label %vec.epilog.ph1095, label %vector.ph1076

vector.ph1076:                                    ; preds = %vector.main.loop.iter.check1074
  %i.btd = add i64 %i.btc, %n.vec1077
  %i.bte = add i64 %i.bta, %n.vec1077
  %i.btf = getelementptr [4 x i8], ptr %i.aoa, i64 %i.bta
  %i.btg = getelementptr [4 x i8], ptr %i.di, i64 %i.btc
  br label %vector.body1078

vector.body1078:                                  ; preds = %vector.ph1076, %vector.body1078
  %index1079 = phi i64 [ 0, %vector.ph1076 ], [ %index.next1084, %vector.body1078 ] ; 3 uses
  %i.bth = getelementptr [4 x i8], ptr %i.btf, i64 %index1079 ; 4 uses
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bth, i64 32
  %i.btj = getelementptr inbounds nuw i8, ptr %i.bth, i64 64
  %i.btk = getelementptr inbounds nuw i8, ptr %i.bth, i64 96
  %wide.load1080.a = load <8 x float>, ptr %i.bth, align 4, !tbaa !12, !alias.scope !550
  %wide.load1081 = load <8 x float>, ptr %i.bti, align 4, !tbaa !12, !alias.scope !550
  %wide.load1082 = load <8 x float>, ptr %i.btj, align 4, !tbaa !12, !alias.scope !550
  %wide.load1083 = load <8 x float>, ptr %i.btk, align 4, !tbaa !12, !alias.scope !550
  %i.btl = getelementptr [4 x i8], ptr %i.btg, i64 %index1079 ; 4 uses
  %i.btm = getelementptr inbounds nuw i8, ptr %i.btl, i64 32
  %i.btn = getelementptr inbounds nuw i8, ptr %i.btl, i64 64
  %i.bto = getelementptr inbounds nuw i8, ptr %i.btl, i64 96
  store <8 x float> %wide.load1080.a, ptr %i.btl, align 4, !tbaa !12, !alias.scope !551, !noalias !550
  store <8 x float> %wide.load1081, ptr %i.btm, align 4, !tbaa !12, !alias.scope !551, !noalias !550
  store <8 x float> %wide.load1082, ptr %i.btn, align 4, !tbaa !12, !alias.scope !551, !noalias !550
  store <8 x float> %wide.load1083, ptr %i.bto, align 4, !tbaa !12, !alias.scope !551, !noalias !550
  %index.next1084 = add nuw i64 %index1079, 32    ; 2 uses
  %i.btp = icmp eq i64 %index.next1084, %n.vec1077
  br i1 %i.btp, label %middle.block1085, label %vector.body1078, !llvm.loop !527

middle.block1085:                                 ; preds = %vector.body1078
  br i1 %cmp.n1086, label %._crit_edge147.i, label %vec.epilog.iter.check1093

vec.epilog.iter.check1093:                        ; preds = %middle.block1085
  br i1 %min.epilog.iters.check1094, label %vec.epilog.scalar.ph1092.preheader, label %vec.epilog.ph1095, !prof !142

vec.epilog.ph1095:                                ; preds = %vector.main.loop.iter.check1074, %vec.epilog.iter.check1093
  %vec.epilog.resume.val1087 = phi i64 [ %n.vec1077, %vec.epilog.iter.check1093 ], [ 0, %vector.main.loop.iter.check1074 ]
  %i.btq = add i64 %i.btc, %n.vec1096
  %i.btr = add i64 %i.bta, %n.vec1096
  %i.bts = getelementptr [4 x i8], ptr %i.aoa, i64 %i.bta
  %i.btt = getelementptr [4 x i8], ptr %i.di, i64 %i.btc
  br label %vec.epilog.vector.body1097

vec.epilog.vector.body1097:                       ; preds = %vec.epilog.vector.body1097, %vec.epilog.ph1095
  %index1098 = phi i64 [ %vec.epilog.resume.val1087, %vec.epilog.ph1095 ], [ %index.next1100, %vec.epilog.vector.body1097 ] ; 3 uses
  %i.btu = getelementptr [4 x i8], ptr %i.bts, i64 %index1098
  %wide.load1099 = load <4 x float>, ptr %i.btu, align 4, !tbaa !12, !alias.scope !550
  %i.btv = getelementptr [4 x i8], ptr %i.btt, i64 %index1098
  store <4 x float> %wide.load1099, ptr %i.btv, align 4, !tbaa !12, !alias.scope !551, !noalias !550
  %index.next1100 = add nuw i64 %index1098, 4     ; 2 uses
  %i.btw = icmp eq i64 %index.next1100, %n.vec1096
  br i1 %i.btw, label %vec.epilog.middle.block1101, label %vec.epilog.vector.body1097, !llvm.loop !528

vec.epilog.middle.block1101:                      ; preds = %vec.epilog.vector.body1097
  br i1 %cmp.n1102, label %._crit_edge147.i, label %vec.epilog.scalar.ph1092.preheader

vec.epilog.scalar.ph1092.preheader:               ; preds = %iter.check1091, %vec.epilog.iter.check1093, %vec.epilog.middle.block1101
  %.0123144.i.ph = phi i64 [ %i.btc, %iter.check1091 ], [ %i.btq, %vec.epilog.middle.block1101 ], [ %i.btd, %vec.epilog.iter.check1093 ]
  %.0124143.i.ph = phi i64 [ %i.bta, %iter.check1091 ], [ %i.btr, %vec.epilog.middle.block1101 ], [ %i.bte, %vec.epilog.iter.check1093 ]
  %.0125142.i.ph = phi i64 [ %i.bhc, %iter.check1091 ], [ %i.bru, %vec.epilog.middle.block1101 ], [ %i.brt, %vec.epilog.iter.check1093 ]
  br label %vec.epilog.scalar.ph1092

._crit_edge147.i:                                 ; preds = %vec.epilog.scalar.ph1092, %vec.epilog.middle.block1101, %middle.block1085
  %i.btx = add i64 %.0126148.i, 1                 ; 2 uses
  %i.bty = icmp ult i64 %i.btx, %wide.trip.count86.i.i
  br i1 %i.bty, label %iter.check1091, label %._crit_edge151.split.i

vec.epilog.scalar.ph1092:                         ; preds = %vec.epilog.scalar.ph1092.preheader, %vec.epilog.scalar.ph1092
  %.0123144.i = phi i64 [ %i.bue, %vec.epilog.scalar.ph1092 ], [ %.0123144.i.ph, %vec.epilog.scalar.ph1092.preheader ] ; 2 uses
  %.0124143.i = phi i64 [ %i.bud, %vec.epilog.scalar.ph1092 ], [ %.0124143.i.ph, %vec.epilog.scalar.ph1092.preheader ] ; 2 uses
  %.0125142.i = phi i64 [ %i.buc, %vec.epilog.scalar.ph1092 ], [ %.0125142.i.ph, %vec.epilog.scalar.ph1092.preheader ]
  %i.btz = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %.0124143.i
  %i.bua = load float, ptr %i.btz, align 4, !tbaa !12
  %i.bub = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.0123144.i
  store float %i.bua, ptr %i.bub, align 4, !tbaa !12
  %i.buc = add nuw i64 %.0125142.i, 1             ; 2 uses
  %i.bud = add i64 %.0124143.i, 1
  %i.bue = add i64 %.0123144.i, 1
  %i.buf = icmp ult i64 %i.buc, %wide.trip.count.i.i
  br i1 %i.buf, label %vec.epilog.scalar.ph1092, label %._crit_edge147.i, !llvm.loop !529

iter.check1041:                                   ; preds = %.lr.ph157.i.preheader, %._crit_edge158.i
  %.0122159.i = phi i64 [ %i.bvj, %._crit_edge158.i ], [ %i.bhd, %.lr.ph157.i.preheader ] ; 3 uses
  %i.bug = mul i64 %.0122159.i, %i.bco
  %i.buh = add i64 %i.bug, %i.bhc                 ; 5 uses
  %i.bui = sub i64 %.0122159.i, %i.bhd
  %i.buj = mul i64 %i.bui, %i.bqu                 ; 5 uses
  %brmerge1187 = select i1 %min.iters.check1021, i1 true, i1 %conflict.rdx1018
  br i1 %brmerge1187, label %vec.epilog.scalar.ph1042.preheader, label %vector.main.loop.iter.check1022

vector.main.loop.iter.check1022:                  ; preds = %iter.check1041
  br i1 %min.iters.check1023, label %vec.epilog.ph1045, label %vector.ph1024

vector.ph1024:                                    ; preds = %vector.main.loop.iter.check1022
  %i.buk = add i64 %i.buj, %n.vec1025
  %i.bul = add i64 %i.buh, %n.vec1025
  %i.bum = getelementptr [4 x i8], ptr %i.di, i64 %i.buj
  br label %vector.body1028

vector.body1028:                                  ; preds = %vector.ph1024, %vector.body1028
  %index1029 = phi i64 [ 0, %vector.ph1024 ], [ %index.next1034, %vector.body1028 ] ; 3 uses
  %i.bun = add i64 %i.buh, %index1029             ; 2 uses
  %i.buo = getelementptr inbounds nuw [4 x i8], ptr %i.bcr, i64 %i.bun ; 2 uses
  %i.bup = getelementptr inbounds nuw i8, ptr %i.buo, i64 32
  %wide.load1030 = load <8 x i32>, ptr %i.buo, align 4, !tbaa !15, !alias.scope !552
  %wide.load1031 = load <8 x i32>, ptr %i.bup, align 4, !tbaa !15, !alias.scope !552
  %i.buq = zext <8 x i32> %wide.load1030 to <8 x i64>
  %i.bur = zext <8 x i32> %wide.load1031 to <8 x i64>
  %i.bus = icmp eq <8 x i64> %broadcast.splat1027, %i.buq ; 2 uses
  %i.but = icmp eq <8 x i64> %broadcast.splat1027, %i.bur ; 2 uses
  %i.buu = getelementptr [4 x i8], ptr %i.bum, i64 %index1029 ; 2 uses
  %i.buv = getelementptr i8, ptr %i.buu, i64 32
  %wide.masked.load1032 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.buu, <8 x i1> %i.bus, <8 x float> poison), !tbaa !12, !alias.scope !553
  %wide.masked.load1033 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.buv, <8 x i1> %i.but, <8 x float> poison), !tbaa !12, !alias.scope !553
  %i.buw = getelementptr [4 x i8], ptr %i.aoa, i64 %i.bun ; 2 uses
  %i.bux = getelementptr i8, ptr %i.buw, i64 32
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %wide.masked.load1032, ptr align 4 %i.buw, <8 x i1> %i.bus), !tbaa !12, !alias.scope !554, !noalias !555
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %wide.masked.load1033, ptr align 4 %i.bux, <8 x i1> %i.but), !tbaa !12, !alias.scope !554, !noalias !555
  %index.next1034 = add nuw i64 %index1029, 16    ; 2 uses
  %i.buy = icmp eq i64 %index.next1034, %n.vec1025
  br i1 %i.buy, label %middle.block1035, label %vector.body1028, !llvm.loop !534

middle.block1035:                                 ; preds = %vector.body1028
  br i1 %cmp.n1036, label %._crit_edge158.i, label %vec.epilog.iter.check1043

vec.epilog.iter.check1043:                        ; preds = %middle.block1035
  br i1 %min.epilog.iters.check1044, label %vec.epilog.scalar.ph1042.preheader, label %vec.epilog.ph1045, !prof !556

vec.epilog.ph1045:                                ; preds = %vector.main.loop.iter.check1022, %vec.epilog.iter.check1043
  %vec.epilog.resume.val1037 = phi i64 [ %n.vec1025, %vec.epilog.iter.check1043 ], [ 0, %vector.main.loop.iter.check1022 ]
  %i.buz = add i64 %i.buj, %n.vec1046
  %i.bva = add i64 %i.buh, %n.vec1046
  %i.bvb = getelementptr [4 x i8], ptr %i.di, i64 %i.buj
  br label %vec.epilog.vector.body1049

vec.epilog.vector.body1049:                       ; preds = %vec.epilog.vector.body1049, %vec.epilog.ph1045
  %index1050 = phi i64 [ %vec.epilog.resume.val1037, %vec.epilog.ph1045 ], [ %index.next1053, %vec.epilog.vector.body1049 ] ; 3 uses
  %i.bvc = add i64 %i.buh, %index1050             ; 2 uses
  %i.bvd = getelementptr inbounds nuw [4 x i8], ptr %i.bcr, i64 %i.bvc
  %wide.load1051 = load <4 x i32>, ptr %i.bvd, align 4, !tbaa !15, !alias.scope !552
  %i.bve = zext <4 x i32> %wide.load1051 to <4 x i64>
  %i.bvf = icmp eq <4 x i64> %broadcast.splat1048, %i.bve ; 2 uses
  %i.bvg = getelementptr [4 x i8], ptr %i.bvb, i64 %index1050
  %wide.masked.load1052 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.bvg, <4 x i1> %i.bvf, <4 x float> poison), !tbaa !12, !alias.scope !553
  %i.bvh = getelementptr [4 x i8], ptr %i.aoa, i64 %i.bvc
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %wide.masked.load1052, ptr align 4 %i.bvh, <4 x i1> %i.bvf), !tbaa !12, !alias.scope !554, !noalias !555
  %index.next1053 = add nuw i64 %index1050, 4     ; 2 uses
  %i.bvi = icmp eq i64 %index.next1053, %n.vec1046
  br i1 %i.bvi, label %vec.epilog.middle.block1054, label %vec.epilog.vector.body1049, !llvm.loop !535

vec.epilog.middle.block1054:                      ; preds = %vec.epilog.vector.body1049
  br i1 %cmp.n1055, label %._crit_edge158.i, label %vec.epilog.scalar.ph1042.preheader

vec.epilog.scalar.ph1042.preheader:               ; preds = %iter.check1041, %vec.epilog.iter.check1043, %vec.epilog.middle.block1054
  %.0119155.i.ph = phi i64 [ %i.buj, %iter.check1041 ], [ %i.buz, %vec.epilog.middle.block1054 ], [ %i.buk, %vec.epilog.iter.check1043 ]
  %.0120154.i.ph = phi i64 [ %i.buh, %iter.check1041 ], [ %i.bva, %vec.epilog.middle.block1054 ], [ %i.bul, %vec.epilog.iter.check1043 ]
  %.0121153.i.ph = phi i64 [ %i.bhc, %iter.check1041 ], [ %i.bsy, %vec.epilog.middle.block1054 ], [ %i.bsx, %vec.epilog.iter.check1043 ]
  br label %vec.epilog.scalar.ph1042

._crit_edge158.i:                                 ; preds = %bb.dr, %vec.epilog.middle.block1054, %middle.block1035
  %i.bvj = add i64 %.0122159.i, 1                 ; 2 uses
  %i.bvk = icmp ult i64 %i.bvj, %wide.trip.count86.i.i
  br i1 %i.bvk, label %iter.check1041, label %.loopexit.i

vec.epilog.scalar.ph1042:                         ; preds = %vec.epilog.scalar.ph1042.preheader, %bb.dr
  %.0119155.i = phi i64 [ %i.bvu, %bb.dr ], [ %.0119155.i.ph, %vec.epilog.scalar.ph1042.preheader ] ; 2 uses
  %.0120154.i = phi i64 [ %i.bvt, %bb.dr ], [ %.0120154.i.ph, %vec.epilog.scalar.ph1042.preheader ] ; 3 uses
  %.0121153.i = phi i64 [ %i.bvs, %bb.dr ], [ %.0121153.i.ph, %vec.epilog.scalar.ph1042.preheader ]
  %i.bvl = getelementptr inbounds nuw [4 x i8], ptr %i.bcr, i64 %.0120154.i
  %i.bvm = load i32, ptr %i.bvl, align 4, !tbaa !15
  %i.bvn = zext i32 %i.bvm to i64
  %i.bvo = icmp eq i64 %indvars.iv729, %i.bvn
  br i1 %i.bvo, label %bb.dq, label %bb.dr
end_hunk_3
