Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec16?download=true
inline.NumInlined: 202
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 76
begin_hunk_0_@If_CluCountCofs:bb.a

.lr.ph.i122:                                      ; preds = %.lr.ph.i122, %.lr.ph.i122.preheader.new
  %indvars.iv.i123 = phi i64 [ 0, %.lr.ph.i122.preheader.new ], [ %indvars.iv.next.i124.3, %.lr.ph.i122 ] ; 6 uses
  %niter271 = phi i64 [ 0, %.lr.ph.i122.preheader.new ], [ %niter271.next.3, %.lr.ph.i122 ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i123
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !44
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i123
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !44
  %indvars.iv.next.i124 = or disjoint i64 %indvars.iv.i123, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i124
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !44
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next.i124
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !44
  %indvars.iv.next.i124.1 = or disjoint i64 %indvars.iv.i123, 2 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i124.1
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !44
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next.i124.1
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !44
  %indvars.iv.next.i124.2 = or disjoint i64 %indvars.iv.i123, 3 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i124.2
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !44
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next.i124.2
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !44
  %indvars.iv.next.i124.3 = add nuw nsw i64 %indvars.iv.i123, 4 ; 2 uses
  %niter271.next.3 = add i64 %niter271, 4         ; 2 uses
  %niter271.ncmp.3 = icmp eq i64 %niter271.next.3, %unroll_iter270
  br i1 %niter271.ncmp.3, label %.thread.sink.split.loopexit.unr-lcssa, label %.lr.ph.i122, !llvm.loop !242

.thread.sink.split.loopexit.unr-lcssa:            ; preds = %.lr.ph.i122
  %lcmp.mod268.not = icmp eq i64 %xtraiter266, 0
  br i1 %lcmp.mod268.not, label %.thread.sink.split, label %.lr.ph.i122.epil.preheader

.lr.ph.i122.epil.preheader:                       ; preds = %.thread.sink.split.loopexit.unr-lcssa, %.lr.ph.i122.preheader
  %indvars.iv.i123.epil.init = phi i64 [ 0, %.lr.ph.i122.preheader ], [ %indvars.iv.next.i124.3, %.thread.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod269 = icmp ne i64 %xtraiter266, 0
  tail call void @llvm.assume(i1 %lcmp.mod269)
  br label %.lr.ph.i122.epil

.lr.ph.i122.epil:                                 ; preds = %.lr.ph.i122.epil, %.lr.ph.i122.epil.preheader
  %indvars.iv.i123.epil = phi i64 [ %indvars.iv.next.i124.epil, %.lr.ph.i122.epil ], [ %indvars.iv.i123.epil.init, %.lr.ph.i122.epil.preheader ] ; 3 uses
  %epil.iter267 = phi i64 [ %epil.iter267.next, %.lr.ph.i122.epil ], [ 0, %.lr.ph.i122.epil.preheader ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i123.epil
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !44
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i123.epil
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !44
  %indvars.iv.next.i124.epil = add nuw nsw i64 %indvars.iv.i123.epil, 1
  %epil.iter267.next = add i64 %epil.iter267, 1   ; 2 uses
  %epil.iter267.cmp.not = icmp eq i64 %epil.iter267.next, %xtraiter266
  br i1 %epil.iter267.cmp.not, label %.thread.sink.split, label %.lr.ph.i122.epil, !llvm.loop !243

.thread.sink.split:                               ; preds = %vector.body248, %.thread.sink.split.loopexit.unr-lcssa, %.lr.ph.i122.epil, %bb.p, %bb.e
  %.3107.lcssa.sink = phi i64 [ %.0104.lcssa, %bb.e ], [ %.3107.lcssa, %bb.p ], [ %.3107.lcssa, %.thread.sink.split.loopexit.unr-lcssa ], [ %.3107.lcssa, %.lr.ph.i122.epil ], [ %.3107.lcssa, %vector.body248 ]
  %.6.ph = phi i32 [ %.0.lcssa, %bb.e ], [ %.3.lcssa, %bb.p ], [ %.3.lcssa, %.thread.sink.split.loopexit.unr-lcssa ], [ %.3.lcssa, %.lr.ph.i122.epil ], [ %.3.lcssa, %vector.body248 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 4096
  store i64 %.3107.lcssa.sink, ptr %i.ek, align 8, !tbaa !44
  br label %.thread

.thread:                                          ; preds = %bb.o, %._crit_edge166.thread, %.thread.sink.split, %._crit_edge160, %._crit_edge175
  %.6 = phi i32 [ %.0.lcssa, %._crit_edge175 ], [ %.6.ph, %.thread.sink.split ], [ 5, %._crit_edge166.thread ], [ %.3.lcssa, %._crit_edge160 ], [ 5, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  ret i32 %.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @If_CluCountCofs4(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca [128 x i64], align 16             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.b = shl nuw nsw i32 1, %2
  %i.c = sub nsw i32 %1, %2                       ; 3 uses
  %i.d = icmp slt i32 %i.c, 6
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i32 1, %i.c
  %i.f = zext nneg i32 %i.e to i64
  %notmask = shl nsw i64 -1, %i.f
  %i.g = xor i64 %notmask, -1
  %.not = icmp eq i32 %2, 31
  br i1 %.not, label %._crit_edge60.thread, label %.lr.ph59.preheader

._crit_edge60.thread:                             ; preds = %bb.b
  store i64 0, ptr %3, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 2048
  store i64 0, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4096
  store i64 0, ptr %i.i, align 8, !tbaa !44
  br label %bb.e

.lr.ph59.preheader:                               ; preds = %bb.b
  %wide.trip.count68 = zext nneg i32 %i.b to i64
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %bb.d
  %indvars.iv65 = phi i64 [ 0, %.lr.ph59.preheader ], [ %indvars.iv.next66, %bb.d ] ; 3 uses
  %.057 = phi i32 [ 0, %.lr.ph59.preheader ], [ %.1, %bb.d ] ; 7 uses
  %.04655 = phi i64 [ 0, %.lr.ph59.preheader ], [ %.147, %bb.d ]
  %.04854 = phi i64 [ 0, %.lr.ph59.preheader ], [ %.149, %bb.d ]
  %i.j = trunc nuw nsw i64 %indvars.iv65 to i32
  %i.k = shl nuw nsw i32 %i.j, %i.c               ; 2 uses
  %i.l = lshr i32 %i.k, 6
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !44
  %i.p = and i32 %i.k, 63
  %i.q = zext nneg i32 %i.p to i64
  %i.r = lshr i64 %i.o, %i.q
  %i.s = and i64 %i.r, %i.g                       ; 2 uses
  %i.t = icmp sgt i32 %.057, 0
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph59
  %wide.trip.count = zext nneg i32 %.057 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44
  %i.w = icmp eq i64 %i.s, %i.v
  br i1 %i.w, label %._crit_edge.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !19

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph59
  %.044.lcssa = phi i32 [ 0, %.lr.ph59 ], [ %i.x, %._crit_edge.loopexit ] ; 3 uses
  %i.y = icmp eq i32 %.044.lcssa, %.057
  br i1 %i.y, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %.044.lcssa77 = phi i32 [ %.044.lcssa, %._crit_edge ], [ %.057, %bb.c ]
  %i.z = add i32 %.057, 1
  %i.aa = sext i32 %.057 to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aa
  store i64 %i.s, ptr %i.ab, align 8, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.044.lcssa76 = phi i32 [ %.044.lcssa77, %._crit_edge.thread ], [ %.044.lcssa, %._crit_edge ] ; 2 uses
  %.1 = phi i32 [ %i.z, %._crit_edge.thread ], [ %.057, %._crit_edge ] ; 3 uses
  %i.ac = and i32 %.044.lcssa76, 2147483645
  %or.cond = icmp eq i32 %i.ac, 1
  %i.ad = shl nuw i64 1, %indvars.iv65            ; 2 uses
  %i.ae = select i1 %or.cond, i64 %i.ad, i64 0
  %.149 = or i64 %i.ae, %.04854                   ; 2 uses
  %i.af = and i32 %.044.lcssa76, 2147483646
  %or.cond3 = icmp eq i32 %i.af, 2
  %i.ag = select i1 %or.cond3, i64 %i.ad, i64 0
  %.147 = or i64 %i.ag, %.04655                   ; 2 uses
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %._crit_edge60, label %.lr.ph59, !llvm.loop !20

._crit_edge60:                                    ; preds = %bb.d
  %.pre = load i64, ptr %i.a, align 16, !tbaa !44
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre70 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !44
  %.phi.trans.insert71 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre72 = load i64, ptr %.phi.trans.insert71, align 16, !tbaa !44 ; 2 uses
  %.phi.trans.insert73 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre74 = load i64, ptr %.phi.trans.insert73, align 8
  store i64 %.pre, ptr %3, align 8, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 2048
  store i64 %.pre70, ptr %i.ah, align 8, !tbaa !44
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4096
  store i64 %.pre72, ptr %i.ai, align 8, !tbaa !44
  %i.aj = icmp eq i32 %.1, 4
  %spec.select = select i1 %i.aj, i64 %.pre74, i64 %.pre72
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge60, %._crit_edge60.thread
  %.0.lcssa84 = phi i32 [ 0, %._crit_edge60.thread ], [ %.1, %._crit_edge60 ]
  %.046.lcssa83 = phi i64 [ 0, %._crit_edge60.thread ], [ %.147, %._crit_edge60 ]
  %.048.lcssa82 = phi i64 [ 0, %._crit_edge60.thread ], [ %.149, %._crit_edge60 ]
  %i.ak = phi i64 [ 0, %._crit_edge60.thread ], [ %spec.select, %._crit_edge60 ]
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 6144
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8192
  store i64 %.048.lcssa82, ptr %i.am, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 10240
  store i64 %.046.lcssa83, ptr %i.an, align 8, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.2 = phi i32 [ %.0.lcssa84, %bb.e ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @If_CluCofactors(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 4 uses
  %i.c = ptrtoaddr ptr %4 to i64                  ; 3 uses
  %i.d = icmp slt i32 %1, 7
  %i.e = add nsw i32 %1, -6
  %i.f = shl nuw i32 1, %i.e
  %i.g = select i1 %i.d, i32 1, i32 %i.f          ; 7 uses
  %i.h = icmp slt i32 %2, 6
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %i.g, 0
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.j = shl nuw nsw i32 1, %2
  %i.k = sext i32 %2 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !44   ; 5 uses
  %i.n = xor i64 %i.m, -1                         ; 4 uses
  %i.o = zext nneg i32 %i.j to i64                ; 7 uses
  %wide.trip.count73 = zext nneg i32 %i.g to i64  ; 4 uses
  %min.iters.check114 = icmp ult i32 %i.g, 10
  br i1 %min.iters.check114, label %scalar.ph113.preheader, label %vector.memcheck115

scalar.ph113.preheader:                           ; preds = %vector.memcheck115, %.lr.ph
  %xtraiter143 = and i64 %wide.trip.count73, 1
  %i.p = icmp eq i32 %i.g, 1
  br i1 %i.p, label %scalar.ph113.epil.preheader, label %scalar.ph113.preheader.new

scalar.ph113.preheader.new:                       ; preds = %scalar.ph113.preheader
  %unroll_iter146 = and i64 %wide.trip.count73, 2147483646
  br label %scalar.ph113

vector.memcheck115:                               ; preds = %.lr.ph
  %i.q = shl nuw nsw i64 %wide.trip.count73, 3    ; 3 uses
  %i.r = getelementptr i8, ptr %3, i64 %i.q       ; 2 uses
  %i.s = getelementptr i8, ptr %4, i64 %i.q       ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 %i.q       ; 2 uses
  %bound0 = icmp ult ptr %3, %i.s
  %bound1 = icmp ult ptr %4, %i.r
  %found.conflict = and i1 %bound0, %bound1
  %bound0116 = icmp ult ptr %3, %i.t
  %bound1117 = icmp ult ptr %0, %i.r
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %found.conflict, %found.conflict118
  %bound0120 = icmp ult ptr %4, %i.t
  %bound1121 = icmp ult ptr %0, %i.s
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %conflict.rdx119, %found.conflict122
  br i1 %conflict.rdx123, label %scalar.ph113.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %vector.memcheck115
  %n.vec125 = and i64 %wide.trip.count73, 2147483646
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert126 = insertelement <2 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat127 = shufflevector <2 x i64> %broadcast.splatinsert126, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert128 = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat129 = shufflevector <2 x i64> %broadcast.splatinsert128, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph124
  %index131 = phi i64 [ 0, %vector.ph124 ], [ %index.next134, %vector.body130 ] ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index131
  %wide.load132 = load <2 x i64>, ptr %i.u, align 8, !tbaa !44, !alias.scope !252 ; 2 uses
  %i.v = and <2 x i64> %wide.load132, %broadcast.splat127 ; 2 uses
  %i.w = shl <2 x i64> %i.v, %broadcast.splat129
  %i.x = or <2 x i64> %i.w, %i.v
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index131
  store <2 x i64> %i.x, ptr %i.y, align 8, !tbaa !44, !alias.scope !253, !noalias !254
  %i.z = and <2 x i64> %wide.load132, %broadcast.splat ; 2 uses
  %i.aa = lshr <2 x i64> %i.z, %broadcast.splat129
  %i.ab = or <2 x i64> %i.aa, %i.z
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index131
  store <2 x i64> %i.ab, ptr %i.ac, align 8, !tbaa !44, !alias.scope !255, !noalias !252
  %index.next134 = add nuw i64 %index131, 2       ; 2 uses
  %i.ad = icmp eq i64 %index.next134, %n.vec125
  br i1 %i.ad, label %.loopexit, label %vector.body130, !llvm.loop !248

scalar.ph113:                                     ; preds = %scalar.ph113, %scalar.ph113.preheader.new
  %indvars.iv70 = phi i64 [ 0, %scalar.ph113.preheader.new ], [ %indvars.iv.next71.1, %scalar.ph113 ] ; 5 uses
  %niter147 = phi i64 [ 0, %scalar.ph113.preheader.new ], [ %niter147.next.1, %scalar.ph113 ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !44
  %i.ag = and i64 %i.af, %i.n                     ; 2 uses
  %i.ah = shl i64 %i.ag, %i.o
  %i.ai = or i64 %i.ah, %i.ag
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv70
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !44
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !44
  %i.al = and i64 %i.ak, %i.m                     ; 2 uses
  %i.am = lshr i64 %i.al, %i.o
  %i.an = or i64 %i.am, %i.al
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv70
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !44
  %indvars.iv.next71 = or disjoint i64 %indvars.iv70, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next71 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !44
  %i.ar = and i64 %i.aq, %i.n                     ; 2 uses
  %i.as = shl i64 %i.ar, %i.o
  %i.at = or i64 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next71
  store i64 %i.at, ptr %i.au, align 8, !tbaa !44
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !44
  %i.aw = and i64 %i.av, %i.m                     ; 2 uses
  %i.ax = lshr i64 %i.aw, %i.o
  %i.ay = or i64 %i.ax, %i.aw
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next71
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !44
  %indvars.iv.next71.1 = add nuw nsw i64 %indvars.iv70, 2 ; 2 uses
  %niter147.next.1 = add i64 %niter147, 2         ; 2 uses
  %niter147.ncmp.1 = icmp eq i64 %niter147.next.1, %unroll_iter146
  br i1 %niter147.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %scalar.ph113, !llvm.loop !249

bb.c:                                             ; preds = %bb.a
  %i.ba = add nsw i32 %2, -6                      ; 3 uses
  %i.bb = shl nuw i32 1, %i.ba                    ; 4 uses
  %i.bc = icmp sgt i32 %i.g, 0
  br i1 %i.bc, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.c
  %.not = icmp eq i32 %i.ba, 31
  %i.bd = shl i32 2, %i.ba                        ; 2 uses
  %i.be = sext i32 %i.bd to i64                   ; 3 uses
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bf = sext i32 %i.bb to i64                   ; 5 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %i.bg = sub i64 %i.c, %i.b                      ; 2 uses
  %i.bh = shl nsw i64 %i.bf, 3                    ; 5 uses
  %5 = add i64 %i.bh, %i.c                        ; 2 uses
  %6 = sub i64 %i.c, %i.a                         ; 2 uses
  %min.iters.check = icmp slt i32 %i.bb, 18
  %i.bi = add i64 %i.bg, -1
  %diff.check80 = icmp ult i64 %i.bi, 31
  %7 = sub i64 %i.bh, %i.bg
  %diff.check81 = icmp ugt i64 %7, -32
  %conflict.rdx82 = or i1 %diff.check80, %diff.check81
  %i.bj = sub i64 %i.b, %i.a                      ; 2 uses
  %diff.check81.a = icmp ugt i64 %i.bj, -32
  %conflict.rdx84 = or i1 %conflict.rdx82, %diff.check81.a
  %8 = sub i64 %i.b, %5
  %diff.check87 = icmp ugt i64 %8, -32
  %invariant.op = or i1 %conflict.rdx84, %diff.check87
  %9 = sub i64 %i.bj, %i.bh
  %diff.check89 = icmp ugt i64 %9, -32
  %invariant.op147 = or i1 %invariant.op, %diff.check89
  %10 = sub i64 %i.a, %i.b                        ; 2 uses
  %diff.check91 = icmp ugt i64 %10, -32
  %invariant.op148 = or i1 %invariant.op147, %diff.check91
  %11 = add i64 %6, -1
  %diff.check93 = icmp ult i64 %11, 31
  %invariant.op149 = or i1 %invariant.op148, %diff.check93
  %12 = sub i64 %i.a, %5
  %diff.check95 = icmp ugt i64 %12, -32
  %invariant.op150 = or i1 %invariant.op149, %diff.check95
  %13 = sub i64 %i.bh, %6
  %diff.check97 = icmp ugt i64 %13, -32
  %op.rdx138 = or i1 %invariant.op150, %diff.check97
  %n.vec = and i64 %wide.trip.count, 2147483644
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bk = icmp slt i32 %i.bb, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod142 = trunc i32 %smax to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.065 = phi i32 [ %i.dd, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.05464 = phi ptr [ %i.dc, %._crit_edge ], [ %4, %.preheader.preheader ] ; 9 uses
  %.05563 = phi ptr [ %i.db, %._crit_edge ], [ %3, %.preheader.preheader ] ; 9 uses
  %.05662 = phi ptr [ %i.da, %._crit_edge ], [ %0, %.preheader.preheader ] ; 9 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %scalar.ph.preheader.a

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.a, %.preheader
  br i1 %i.bk, label %scalar.ph.epil.preheader, label %scalar.ph

scalar.ph.preheader.a:                            ; preds = %.preheader
  %14 = sub i64 %10, %i.bh
  %diff.check85 = icmp ugt i64 %14, -32
  %conflict.rdx98.reass = or i1 %diff.check85, %op.rdx138
  br i1 %conflict.rdx98.reass, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %scalar.ph.preheader.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %scalar.ph.preheader.a ] ; 5 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.05662, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load = load <2 x i64>, ptr %i.bl, align 8, !tbaa !44 ; 2 uses
  %wide.load99 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !44 ; 2 uses
  %i.bn = add nuw nsw i64 %index, %i.bf           ; 3 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %.05563, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <2 x i64> %wide.load, ptr %i.bo, align 8, !tbaa !44
  store <2 x i64> %wide.load99, ptr %i.bp, align 8, !tbaa !44
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.05563, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <2 x i64> %wide.load, ptr %i.bq, align 8, !tbaa !44
  store <2 x i64> %wide.load99, ptr %i.br, align 8, !tbaa !44
  %i.bs = getelementptr inbounds [8 x i8], ptr %.05662, i64 %i.bn ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load100 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !44 ; 2 uses
  %wide.load101 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !44 ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %.05464, i64 %i.bn ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <2 x i64> %wide.load100, ptr %i.bu, align 8, !tbaa !44
  store <2 x i64> %wide.load101, ptr %i.bv, align 8, !tbaa !44
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.05464, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <2 x i64> %wide.load100, ptr %i.bw, align 8, !tbaa !44
  store <2 x i64> %wide.load101, ptr %i.bx, align 8, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %._crit_edge, label %vector.body, !llvm.loop !250

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.05662, i64 %indvars.iv
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !44 ; 2 uses
  %i.cb = add nuw nsw i64 %indvars.iv, %i.bf      ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.05563, i64 %i.cb
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !44
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.05563, i64 %indvars.iv
  store i64 %i.ca, ptr %i.cd, align 8, !tbaa !44
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.05662, i64 %i.cb
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !44 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.05464, i64 %i.cb
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !44
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.05464, i64 %indvars.iv
  store i64 %i.cf, ptr %i.ch, align 8, !tbaa !44
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.05662, i64 %indvars.iv.next
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !44 ; 2 uses
  %i.ck = add nuw nsw i64 %indvars.iv.next, %i.bf ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.05563, i64 %i.ck
  store i64 %i.cj, ptr %i.cl, align 8, !tbaa !44
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.05563, i64 %indvars.iv.next
  store i64 %i.cj, ptr %i.cm, align 8, !tbaa !44
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.05662, i64 %i.ck
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !44 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.05464, i64 %i.ck
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !44
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.05464, i64 %indvars.iv.next
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !44
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !251

._crit_edge.loopexit.unr-lcssa:                   ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.05662, i64 %indvars.iv.epil.init
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !44 ; 2 uses
  %i.ct = add nuw nsw i64 %indvars.iv.epil.init, %i.bf ; 3 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %.05563, i64 %i.ct
  store i64 %i.cs, ptr %i.cu, align 8, !tbaa !44
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.05563, i64 %indvars.iv.epil.init
  store i64 %i.cs, ptr %i.cv, align 8, !tbaa !44
  %i.cw = getelementptr inbounds [8 x i8], ptr %.05662, i64 %i.ct
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !44 ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %.05464, i64 %i.ct
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !44
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.05464, i64 %indvars.iv.epil.init
  store i64 %i.cx, ptr %i.cz, align 8, !tbaa !44
  br label %._crit_edge

._crit_edge:                                      ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa
  %i.da = getelementptr inbounds [8 x i8], ptr %.05662, i64 %i.be
  %i.db = getelementptr inbounds [8 x i8], ptr %.05563, i64 %i.be
  %i.dc = getelementptr inbounds [8 x i8], ptr %.05464, i64 %i.be
  %i.dd = add nsw i32 %.065, %i.bd                ; 2 uses
  %i.de = icmp slt i32 %i.dd, %i.g
  br i1 %i.de, label %.preheader, label %.loopexit, !llvm.loop !21

.loopexit.loopexit.unr-lcssa:                     ; preds = %scalar.ph113
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %.loopexit, label %scalar.ph113.epil.preheader

scalar.ph113.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %scalar.ph113.preheader
  %indvars.iv70.epil.init = phi i64 [ 0, %scalar.ph113.preheader ], [ %indvars.iv.next71.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod145 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod145)
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.epil.init ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !44
  %i.dh = and i64 %i.dg, %i.n                     ; 2 uses
  %i.di = shl i64 %i.dh, %i.o
  %i.dj = or i64 %i.di, %i.dh
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv70.epil.init
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !44
  %i.dl = load i64, ptr %i.df, align 8, !tbaa !44
  %i.dm = and i64 %i.dl, %i.m                     ; 2 uses
  %i.dn = lshr i64 %i.dm, %i.o
  %i.do = or i64 %i.dn, %i.dm
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv70.epil.init
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !44
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %vector.body130, %scalar.ph113.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c, %.preheader.lr.ph, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 -1, 5) i32 @If_CluDetectSpecialCaseCofs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %1, 7
  %i.b = add nsw i32 %1, -6
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 6 uses
  %i.e = icmp slt i32 %2, 6
  br i1 %i.e, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %i.d, 0
  br i1 %i.f, label %.lr.ph, label %.thread192

.lr.ph:                                           ; preds = %bb.b
  %i.g = shl nuw nsw i32 1, %2
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !44   ; 2 uses
  %i.k = xor i64 %i.j, -1                         ; 3 uses
  %i.l = zext nneg i32 %i.g to i64
  %wide.trip.count135 = zext nneg i32 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv132 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next133, %bb.l ] ; 2 uses
  %i.m = phi i32 [ 0, %.lr.ph ], [ %i.ah, %bb.l ] ; 5 uses
  %i.n = phi i32 [ 0, %.lr.ph ], [ %i.ai, %bb.l ] ; 5 uses
  %i.o = phi i32 [ 0, %.lr.ph ], [ %i.aj, %bb.l ] ; 5 uses
  %i.p = phi i32 [ 0, %.lr.ph ], [ %i.ak, %bb.l ] ; 5 uses
  %i.q = phi i32 [ 0, %.lr.ph ], [ %i.al, %bb.l ] ; 5 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv132
  %i.s = load i64, ptr %i.r, align 8, !tbaa !44   ; 2 uses
  %i.t = and i64 %i.s, %i.k                       ; 3 uses
  %i.u = and i64 %i.j, %i.s
  %i.v = lshr i64 %i.u, %i.l                      ; 3 uses
  %i.w = icmp eq i64 %i.t, 0
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = add nsw i32 %i.q, 1
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.y = icmp eq i64 %i.t, %i.k
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.m, 1
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp eq i64 %i.v, 0
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = add nsw i32 %i.n, 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.v, %i.k
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = add nsw i32 %i.o, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ae = xor i64 %i.v, %i.t
  %i.af = icmp eq i64 %i.ae, -1
  %i.ag = zext i1 %i.af to i32
  %spec.select = add nsw i32 %i.p, %i.ag
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d, %bb.h, %bb.j, %bb.f
  %i.ah = phi i32 [ %i.m, %bb.d ], [ %i.m, %bb.h ], [ %i.m, %bb.k ], [ %i.z, %bb.f ], [ %i.m, %bb.j ] ; 2 uses
  %i.ai = phi i32 [ %i.n, %bb.d ], [ %i.ab, %bb.h ], [ %i.n, %bb.k ], [ %i.n, %bb.f ], [ %i.n, %bb.j ] ; 2 uses
  %i.aj = phi i32 [ %i.o, %bb.d ], [ %i.o, %bb.h ], [ %i.o, %bb.k ], [ %i.o, %bb.f ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ak = phi i32 [ %i.p, %bb.d ], [ %i.p, %bb.h ], [ %spec.select, %bb.k ], [ %i.p, %bb.f ], [ %i.p, %bb.j ] ; 2 uses
  %i.al = phi i32 [ %i.x, %bb.d ], [ %i.q, %bb.h ], [ %i.q, %bb.k ], [ %i.q, %bb.f ], [ %i.q, %bb.j ] ; 2 uses
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %.loopexit, label %bb.c, !llvm.loop !22

bb.m:                                             ; preds = %bb.a
  %i.am = add nsw i32 %2, -6                      ; 3 uses
  %i.an = shl nuw i32 1, %i.am                    ; 2 uses
  %i.ao = icmp sgt i32 %i.d, 0
  br i1 %i.ao, label %.preheader.lr.ph, label %._crit_edge83

.preheader.lr.ph:                                 ; preds = %bb.m
  %.not = icmp eq i32 %i.am, 31
  %i.ap = shl i32 2, %i.am                        ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  br i1 %.not, label %._crit_edge83, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.ar = sext i32 %i.an to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.an, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.lcssa7798.us = phi i32 [ %i.bh, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %.lcssa7392.us = phi i32 [ %i.bi, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %.lcssa7189.us = phi i32 [ %i.bj, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %.lcssa6986.us = phi i32 [ %i.bk, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %.082.us = phi i32 [ %i.bn, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %.05581.us = phi ptr [ %i.bm, %._crit_edge.us ], [ %0, %.preheader.us.preheader ] ; 3 uses
  %.lcssa7980.us = phi i32 [ %i.bl, %._crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %invariant.gep = getelementptr [8 x i8], ptr %.05581.us, i64 %i.ar
  br label %bb.n

bb.n:                                             ; preds = %.preheader.us, %bb.u
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.as = phi i32 [ %.lcssa7798.us, %.preheader.us ], [ %i.bh, %bb.u ] ; 5 uses
  %i.at = phi i32 [ %.lcssa7392.us, %.preheader.us ], [ %i.bi, %bb.u ] ; 5 uses
  %i.au = phi i32 [ %.lcssa7189.us, %.preheader.us ], [ %i.bj, %bb.u ] ; 5 uses
  %i.av = phi i32 [ %.lcssa6986.us, %.preheader.us ], [ %i.bk, %bb.u ] ; 5 uses
  %i.aw = phi i32 [ %.lcssa7980.us, %.preheader.us ], [ %i.bl, %bb.u ] ; 5 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.05581.us, i64 %indvars.iv
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !44 ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.az = load i64, ptr %gep, align 8, !tbaa !44  ; 2 uses
  switch i64 %i.ay, label %bb.q [
    i64 0, label %bb.p
    i64 -1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ba = add nsw i32 %i.av, 1
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.bb = add nsw i32 %i.aw, 1
  br label %bb.u

bb.q:                                             ; preds = %bb.n
  switch i64 %i.az, label %bb.t [
    i64 0, label %bb.s
    i64 -1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bc = add nsw i32 %i.au, 1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bd = add nsw i32 %i.at, 1
end_hunk_0
