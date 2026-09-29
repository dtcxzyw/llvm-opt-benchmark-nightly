Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/png?download=true
inline.NumInlined: 72
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@png_ascii_from_fp:bb.a

bb.aq:                                            ; preds = %bb.ap
  %i.gu = getelementptr inbounds nuw i8, ptr %.0134, i64 1
  store i8 48, ptr %.0134, align 1, !tbaa !28
  store i8 0, ptr %i.gu, align 1, !tbaa !28
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  store <4 x i8> <i8 105, i8 110, i8 102, i8 0>, ptr %.0134, align 1, !tbaa !28
  br label %bb.at

bb.as:                                            ; preds = %bb.ao, %bb.a
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.55) #26
  unreachable

bb.at:                                            ; preds = %.thread207, %bb.ar, %bb.aq
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #19

; Function Attrs: nounwind uwtable
define void @png_ascii_from_fixed(ptr noalias noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 14 uses
  %i.b = icmp ugt i64 %2, 12
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %3, 0
  br i1 %i.c, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !28
  %i.e = sub nsw i32 0, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.a, i8 0, i64 10, i1 false)
  br label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.a, i8 0, i64 10, i1 false)
  %.not48 = icmp eq i32 %3, 0
  br i1 %.not48, label %bb.e, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.c
  %.03884 = phi i32 [ %i.e, %.thread ], [ %3, %bb.c ]
  %.04082 = phi ptr [ %i.d, %.thread ], [ %1, %bb.c ] ; 6 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 6 uses
  %.03551 = phi i32 [ 16, %.lr.ph.preheader ], [ %spec.select, %.lr.ph ] ; 2 uses
  %.13949 = phi i32 [ %.03884, %.lr.ph.preheader ], [ %i.f, %.lr.ph ] ; 3 uses
  %i.f = udiv i32 %.13949, 10                     ; 2 uses
  %.neg = mul nsw i32 %i.f, -10
  %i.g = add nsw i32 %.neg, %.13949               ; 2 uses
  %i.h = trunc i32 %i.g to i8
  %i.i = add i8 %i.h, 48
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.i, ptr %i.j, align 1, !tbaa !28
  %i.k = icmp eq i32 %.03551, 16
  %i.l = icmp ne i32 %i.g, 0
  %or.cond = and i1 %i.k, %i.l
  %i.m = trunc nuw i64 %indvars.iv.next to i32    ; 2 uses
  %spec.select = select i1 %or.cond, i32 %i.m, i32 %.03551 ; 6 uses
  %.not = icmp samesign ult i32 %.13949, 10
  br i1 %.not, label %.preheader47, label %.lr.ph, !llvm.loop !168

.preheader47:                                     ; preds = %.lr.ph
  %i.n = icmp ugt i64 %indvars.iv, 4
  br i1 %i.n, label %iter.check, label %._crit_edge56

iter.check:                                       ; preds = %.preheader47
  %i.o = add i64 %indvars.iv, -4                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.o, 8
  br i1 %min.iters.check, label %.lr.ph55.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check94 = icmp ult i64 %i.o, 32
  br i1 %min.iters.check94, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.o, 24
  %n.vec = and i64 %i.o, -32                      ; 5 uses
  %i.q = sub i64 %indvars.iv.next, %n.vec
  %i.r = getelementptr i8, ptr %.04082, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.04082, i64 %index ; 2 uses
  %i.s = sub i64 %indvars.iv, %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -15
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -31
  %wide.load = load <16 x i8>, ptr %i.u, align 1, !tbaa !28
  %wide.load95 = load <16 x i8>, ptr %i.v, align 1, !tbaa !28
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse96 = shufflevector <16 x i8> %wide.load95, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %reverse, ptr %next.gep, align 1, !tbaa !28
  store <16 x i8> %reverse96, ptr %i.w, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge56, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph55.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec98 = and i64 %i.o, -8                     ; 4 uses
  %i.y = sub i64 %indvars.iv.next, %n.vec98
  %i.z = getelementptr i8, ptr %.04082, i64 %n.vec98 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index99 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next103, %vec.epilog.vector.body ] ; 3 uses
  %next.gep100 = getelementptr i8, ptr %.04082, i64 %index99
  %i.aa = sub i64 %indvars.iv, %index99
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -7
  %wide.load101 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !28
  %reverse102 = shufflevector <8 x i8> %wide.load101, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse102, ptr %next.gep100, align 1, !tbaa !28
  %index.next103 = add nuw i64 %index99, 8        ; 2 uses
  %i.ad = icmp eq i64 %index.next103, %n.vec98
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !170

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n104 = icmp eq i64 %i.o, %n.vec98
  br i1 %cmp.n104, label %._crit_edge56, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv75.ph = phi i64 [ %indvars.iv.next, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  %.14153.ph = phi ptr [ %.04082, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %.lr.ph55
  %indvars.iv75 = phi i64 [ %i.ae, %.lr.ph55 ], [ %indvars.iv75.ph, %.lr.ph55.preheader ]
  %.14153 = phi ptr [ %i.ah, %.lr.ph55 ], [ %.14153.ph, %.lr.ph55.preheader ] ; 2 uses
  %i.ae = add nsw i64 %indvars.iv75, -1           ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %.14153, i64 1 ; 2 uses
  store i8 %i.ag, ptr %.14153, align 1, !tbaa !28
  %.wide = icmp ugt i64 %i.ae, 5
  br i1 %.wide, label %.lr.ph55, label %._crit_edge56, !llvm.loop !171

._crit_edge56:                                    ; preds = %.lr.ph55, %middle.block, %vec.epilog.middle.block, %.preheader47
  %.141.lcssa = phi ptr [ %.04082, %.preheader47 ], [ %i.z, %vec.epilog.middle.block ], [ %i.r, %middle.block ], [ %i.ah, %.lr.ph55 ] ; 4 uses
  %.137.lcssa = phi i32 [ %i.m, %.preheader47 ], [ 5, %vec.epilog.middle.block ], [ 5, %middle.block ], [ 5, %.lr.ph55 ] ; 11 uses
  %i.ai = icmp ult i32 %spec.select, 6
  br i1 %i.ai, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %._crit_edge56
  store i8 46, ptr %.141.lcssa, align 1, !tbaa !28
  %.24259 = getelementptr i8, ptr %.141.lcssa, i64 1 ; 2 uses
  %i.aj = icmp samesign ult i32 %.137.lcssa, 5
  br i1 %i.aj, label %.lr.ph63.preheader, label %.preheader

.lr.ph63.preheader:                               ; preds = %bb.d
  %i.ak = sub nuw nsw i32 4, %.137.lcssa
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = add nuw nsw i64 %i.al, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.24259, i8 48, i64 %i.am, i1 false), !tbaa !28
  %i.an = getelementptr i8, ptr %.141.lcssa, i64 %i.al
  %scevgep = getelementptr i8, ptr %i.an, i64 2
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph63.preheader, %bb.d
  %.242.lcssa = phi ptr [ %.24259, %bb.d ], [ %scevgep, %.lr.ph63.preheader ] ; 9 uses
  %.not4665 = icmp samesign ult i32 %.137.lcssa, %spec.select
  br i1 %.not4665, label %.loopexit, label %iter.check130

iter.check130:                                    ; preds = %.preheader
  %i.ao = add i32 %.137.lcssa, -1
  %i.ap = add nsw i32 %spec.select, -1
  %i.aq = tail call i32 @llvm.usub.sat.i32(i32 %i.ao, i32 %i.ap) ; 3 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = add nuw nsw i64 %i.ar, 1                ; 5 uses
  %min.iters.check113 = icmp ult i32 %i.aq, 7
  br i1 %min.iters.check113, label %.lr.ph68.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check130
  %scevgep107 = getelementptr i8, ptr %.242.lcssa, i64 1
  %i.at = add i32 %.137.lcssa, -1                 ; 2 uses
  %i.au = add nsw i32 %spec.select, -1
  %i.av = tail call i32 @llvm.usub.sat.i32(i32 %i.at, i32 %i.au)
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %scevgep108 = getelementptr i8, ptr %scevgep107, i64 %i.aw
  %4 = zext i32 %i.at to i64                      ; 2 uses
  %scevgep109 = getelementptr i8, ptr %i.a, i64 %4
  %i.ax = sub nsw i64 0, %i.aw
  %scevgep110 = getelementptr i8, ptr %scevgep109, i64 %i.ax
  %i.ay = getelementptr i8, ptr %i.a, i64 %4
  %scevgep111 = getelementptr i8, ptr %i.ay, i64 1
  %bound0 = icmp ult ptr %.242.lcssa, %scevgep111
  %bound1 = icmp ult ptr %scevgep110, %scevgep108
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph68.preheader, label %vector.main.loop.iter.check114

vector.main.loop.iter.check114:                   ; preds = %vector.memcheck
  %min.iters.check115 = icmp ult i32 %i.aq, 31
  br i1 %min.iters.check115, label %vec.epilog.ph134, label %vector.ph116

vector.ph116:                                     ; preds = %vector.main.loop.iter.check114
  %i.az = and i64 %i.as, 24
  %n.vec117 = and i64 %i.as, 8589934560           ; 5 uses
  %i.ba = trunc i64 %n.vec117 to i32
  %i.bb = sub i32 %.137.lcssa, %i.ba
  %i.bc = getelementptr i8, ptr %.242.lcssa, i64 %n.vec117 ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.ph116, %vector.body118
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next125, %vector.body118 ] ; 3 uses
  %i.bd = trunc i64 %index119 to i32
  %next.gep120 = getelementptr i8, ptr %.242.lcssa, i64 %index119 ; 2 uses
  %i.be = xor i32 %i.bd, -1
  %i.bf = add i32 %.137.lcssa, %i.be
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -15
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -31
  %wide.load121.a = load <16 x i8>, ptr %i.bi, align 1, !tbaa !28, !alias.scope !178
  %wide.load122 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !28, !alias.scope !178
  %reverse123.a = shufflevector <16 x i8> %wide.load121.a, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse124 = shufflevector <16 x i8> %wide.load122, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bk = getelementptr i8, ptr %next.gep120, i64 16
  store <16 x i8> %reverse123.a, ptr %next.gep120, align 1, !tbaa !28, !alias.scope !179, !noalias !178
  store <16 x i8> %reverse124, ptr %i.bk, align 1, !tbaa !28, !alias.scope !179, !noalias !178
  %index.next125 = add nuw i64 %index119, 32      ; 2 uses
  %i.bl = icmp eq i64 %index.next125, %n.vec117
  br i1 %i.bl, label %middle.block126, label %vector.body118, !llvm.loop !175

middle.block126:                                  ; preds = %vector.body118
  %cmp.n127 = icmp eq i64 %i.as, %n.vec117
  br i1 %cmp.n127, label %.loopexit, label %vec.epilog.iter.check132

vec.epilog.iter.check132:                         ; preds = %middle.block126
  %min.epilog.iters.check133 = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check133, label %.lr.ph68.preheader, label %vec.epilog.ph134, !prof !57

vec.epilog.ph134:                                 ; preds = %vector.main.loop.iter.check114, %vec.epilog.iter.check132
  %vec.epilog.resume.val128 = phi i64 [ %n.vec117, %vec.epilog.iter.check132 ], [ 0, %vector.main.loop.iter.check114 ]
  %n.vec135 = and i64 %i.as, 8589934584           ; 4 uses
  %i.bm = trunc i64 %n.vec135 to i32
  %i.bn = sub i32 %.137.lcssa, %i.bm
  %i.bo = getelementptr i8, ptr %.242.lcssa, i64 %n.vec135 ; 2 uses
  br label %vec.epilog.vector.body136

vec.epilog.vector.body136:                        ; preds = %vec.epilog.vector.body136, %vec.epilog.ph134
  %index137 = phi i64 [ %vec.epilog.resume.val128, %vec.epilog.ph134 ], [ %index.next141, %vec.epilog.vector.body136 ] ; 3 uses
  %i.bp = trunc i64 %index137 to i32
  %next.gep138 = getelementptr i8, ptr %.242.lcssa, i64 %index137
  %i.bq = xor i32 %i.bp, -1
  %i.br = add i32 %.137.lcssa, %i.bq
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -7
  %wide.load139 = load <8 x i8>, ptr %i.bu, align 1, !tbaa !28, !alias.scope !178
  %reverse140 = shufflevector <8 x i8> %wide.load139, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse140, ptr %next.gep138, align 1, !tbaa !28, !alias.scope !179, !noalias !178
  %index.next141 = add nuw i64 %index137, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.bv, label %vec.epilog.middle.block142, label %vec.epilog.vector.body136, !llvm.loop !176

vec.epilog.middle.block142:                       ; preds = %vec.epilog.vector.body136
  %cmp.n143 = icmp eq i64 %i.as, %n.vec135
  br i1 %cmp.n143, label %.loopexit, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %iter.check130, %vector.memcheck, %vec.epilog.iter.check132, %vec.epilog.middle.block142
  %.267.ph = phi i32 [ %.137.lcssa, %iter.check130 ], [ %.137.lcssa, %vector.memcheck ], [ %i.bb, %vec.epilog.iter.check132 ], [ %i.bn, %vec.epilog.middle.block142 ]
  %.366.ph = phi ptr [ %.242.lcssa, %iter.check130 ], [ %.242.lcssa, %vector.memcheck ], [ %i.bc, %vec.epilog.iter.check132 ], [ %i.bo, %vec.epilog.middle.block142 ]
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.lr.ph68
  %.267 = phi i32 [ %i.bw, %.lr.ph68 ], [ %.267.ph, %.lr.ph68.preheader ]
  %.366 = phi ptr [ %i.ca, %.lr.ph68 ], [ %.366.ph, %.lr.ph68.preheader ] ; 2 uses
  %i.bw = add i32 %.267, -1                       ; 3 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !28
  %i.ca = getelementptr inbounds nuw i8, ptr %.366, i64 1 ; 2 uses
  store i8 %i.bz, ptr %.366, align 1, !tbaa !28
  %.not46 = icmp ult i32 %i.bw, %spec.select
  br i1 %.not46, label %.loopexit, label %.lr.ph68, !llvm.loop !177

bb.e:                                             ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 48, ptr %1, align 1, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph68, %middle.block126, %vec.epilog.middle.block142, %.preheader, %._crit_edge56, %bb.e
  %.4 = phi ptr [ %i.cb, %bb.e ], [ %.141.lcssa, %._crit_edge56 ], [ %.242.lcssa, %.preheader ], [ %i.bo, %vec.epilog.middle.block142 ], [ %i.bc, %middle.block126 ], [ %i.ca, %.lr.ph68 ]
  store i8 0, ptr %.4, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.f:                                             ; preds = %bb.a
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.55) #26
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @png_fixed(ptr noalias noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fmuladd.f64(double %1, double 1.000000e+05, double 5.000000e-01)
  %i.b = tail call double @llvm.floor.f64(double %i.a) ; 3 uses
  %i.c = fcmp ogt double %i.b, f0x41DFFFFFFFC00000
  %i.d = fcmp olt double %i.b, f0xC1E0000000000000
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @png_fixed_error(ptr noundef %0, ptr noundef %2) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = fptosi double %i.b to i32
  ret i32 %i.e
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: noreturn
declare void @png_fixed_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @png_fixed_ITU(ptr noalias noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.fmuladd.f64(double %1, double 1.000000e+04, double 5.000000e-01)
  %i.b = tail call double @llvm.floor.f64(double %i.a) ; 3 uses
  %i.c = fcmp ogt double %i.b, f0x41DFFFFFFFC00000
  %i.d = fcmp olt double %i.b, 0.000000e+00
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @png_fixed_error(ptr noundef %0, ptr noundef %2) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = fptoui double %i.b to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @png_gamma_significant(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = add i32 %0, -105001
  %i.b = icmp ult i32 %i.a, -10001
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @png_reciprocal2(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp ne i32 %0, 0
  %i.b = icmp ne i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sitofp i32 %0 to double
  %i.d = fdiv double 1.000000e+15, %i.c
  %i.e = sitofp i32 %1 to double
  %i.f = fdiv double %i.d, %i.e
  %i.g = fadd double %i.f, 5.000000e-01
  %i.h = tail call double @llvm.floor.f64(double %i.g) ; 3 uses
  %i.i = fcmp ugt double %i.h, f0x41DFFFFFFFC00000
  %i.j = fcmp ult double %i.h, f0xC1E0000000000000
  %or.cond3.not = or i1 %i.i, %i.j
  %i.k = fptosi double %i.h to i32
  br i1 %or.cond3.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %i.k, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define zeroext i8 @png_gamma_8bit_correct(i32 noundef %0, i32 noundef %1) local_unnamed_addr #20 {
bb.a:
  %i.a = add i32 %0, -1
  %or.cond = icmp ult i32 %i.a, 254
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = uitofp nneg i32 %0 to double
  %i.c = fdiv double %i.b, 2.550000e+02
  %i.d = sitofp i32 %1 to double
  %i.e = fmul nnan double %i.d, 1.000000e-05
  %i.f = tail call double @pow(double noundef %i.c, double noundef %i.e) #28
end_hunk_0
