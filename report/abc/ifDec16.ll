inline.NumInlined: 202
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 82
begin_hunk_0_@If_CluCountCofs:bb.a
.lr.ph.i122:                                      ; preds = %.lr.ph.i122, %.lr.ph.i122.preheader.new
  %indvars.iv.i123 = phi i64 [ 0, %.lr.ph.i122.preheader.new ], [ %indvars.iv.next.i124.3, %.lr.ph.i122 ] ; 6 uses
  %niter271 = phi i64 [ 0, %.lr.ph.i122.preheader.new ], [ %niter271.next.3, %.lr.ph.i122 ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.i123
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i123
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !18
  %indvars.iv.next.i124 = or disjoint i64 %indvars.iv.i123, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i124
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next.i124
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !18
  %indvars.iv.next.i124.1 = or disjoint i64 %indvars.iv.i123, 2 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i124.1
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next.i124.1
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !18
  %indvars.iv.next.i124.2 = or disjoint i64 %indvars.iv.i123, 3 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next.i124.2
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !18
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next.i124.2
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !18
  %indvars.iv.next.i124.3 = add nuw nsw i64 %indvars.iv.i123, 4 ; 2 uses
  %niter271.next.3 = add i64 %niter271, 4         ; 2 uses
  %niter271.ncmp.3 = icmp eq i64 %niter271.next.3, %unroll_iter270
  br i1 %niter271.ncmp.3, label %.thread.sink.split.loopexit.unr-lcssa, label %.lr.ph.i122, !llvm.loop !246

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
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !18
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i123.epil
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !18
  %indvars.iv.next.i124.epil = add nuw nsw i64 %indvars.iv.i123.epil, 1
  %epil.iter267.next = add i64 %epil.iter267, 1   ; 2 uses
  %epil.iter267.cmp.not = icmp eq i64 %epil.iter267.next, %xtraiter266
  br i1 %epil.iter267.cmp.not, label %.thread.sink.split, label %.lr.ph.i122.epil, !llvm.loop !247

.thread.sink.split:                               ; preds = %vector.body248, %.thread.sink.split.loopexit.unr-lcssa, %.lr.ph.i122.epil, %bb.p, %bb.e
  %.3107.lcssa.sink = phi i64 [ %.0104.lcssa, %bb.e ], [ %.3107.lcssa, %bb.p ], [ %.3107.lcssa, %.thread.sink.split.loopexit.unr-lcssa ], [ %.3107.lcssa, %.lr.ph.i122.epil ], [ %.3107.lcssa, %vector.body248 ]
  %.6.ph = phi i32 [ %.0.lcssa, %bb.e ], [ %.3.lcssa, %bb.p ], [ %.3.lcssa, %.thread.sink.split.loopexit.unr-lcssa ], [ %.3.lcssa, %.lr.ph.i122.epil ], [ %.3.lcssa, %vector.body248 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 4096
  store i64 %.3107.lcssa.sink, ptr %i.ek, align 8, !tbaa !18
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
  store i64 0, ptr %3, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 2048
  store i64 0, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4096
  store i64 0, ptr %i.i, align 8, !tbaa !18
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
  %i.k = shl nsw i32 %i.j, %i.c                   ; 2 uses
  %i.l = lshr i32 %i.k, 6
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18
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
  %i.v = load i64, ptr %i.u, align 8, !tbaa !18
  %i.w = icmp eq i64 %i.s, %i.v
  br i1 %i.w, label %._crit_edge.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !248

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
  store i64 %i.s, ptr %i.ab, align 8, !tbaa !18
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
  br i1 %exitcond69.not, label %._crit_edge60, label %.lr.ph59, !llvm.loop !249

._crit_edge60:                                    ; preds = %bb.d
  %.pre = load i64, ptr %i.a, align 16, !tbaa !18
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre70 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  %.phi.trans.insert71 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre72 = load i64, ptr %.phi.trans.insert71, align 16, !tbaa !18 ; 2 uses
  %.phi.trans.insert73 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre74 = load i64, ptr %.phi.trans.insert73, align 8
  store i64 %.pre, ptr %3, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 2048
  store i64 %.pre70, ptr %i.ah, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4096
  store i64 %.pre72, ptr %i.ai, align 8, !tbaa !18
  %i.aj = icmp eq i32 %.1, 4
  %spec.select = select i1 %i.aj, i64 %.pre74, i64 %.pre72
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge60, %._crit_edge60.thread
  %.0.lcssa84 = phi i32 [ 0, %._crit_edge60.thread ], [ %.1, %._crit_edge60 ]
  %.046.lcssa83 = phi i64 [ 0, %._crit_edge60.thread ], [ %.147, %._crit_edge60 ]
  %.048.lcssa82 = phi i64 [ 0, %._crit_edge60.thread ], [ %.149, %._crit_edge60 ]
  %i.ak = phi i64 [ 0, %._crit_edge60.thread ], [ %spec.select, %._crit_edge60 ]
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 6144
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8192
  store i64 %.048.lcssa82, ptr %i.am, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 10240
  store i64 %.046.lcssa83, ptr %i.an, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.2 = phi i32 [ %.0.lcssa84, %bb.e ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @If_CluCofactors(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 3 uses
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
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18   ; 5 uses
  %i.n = xor i64 %i.m, -1                         ; 4 uses
  %i.o = zext nneg i32 %i.j to i64                ; 7 uses
  %wide.trip.count73 = zext nneg i32 %i.g to i64  ; 4 uses
  %min.iters.check114 = icmp ult i32 %i.g, 10
  br i1 %min.iters.check114, label %scalar.ph113.preheader, label %vector.memcheck102

scalar.ph113.preheader:                           ; preds = %vector.memcheck102, %.lr.ph
  %xtraiter134 = and i64 %wide.trip.count73, 1
  %i.p = icmp eq i32 %i.g, 1
  br i1 %i.p, label %scalar.ph113.epil.preheader, label %scalar.ph113.preheader.new

scalar.ph113.preheader.new:                       ; preds = %scalar.ph113.preheader
  %unroll_iter137 = and i64 %wide.trip.count73, 2147483646
  br label %scalar.ph113

vector.memcheck102:                               ; preds = %.lr.ph
  %i.q = shl nuw nsw i64 %wide.trip.count73, 3    ; 3 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.q   ; 2 uses
  %scevgep103 = getelementptr i8, ptr %4, i64 %i.q ; 2 uses
  %scevgep104 = getelementptr i8, ptr %0, i64 %i.q ; 2 uses
  %bound0 = icmp ult ptr %3, %scevgep103
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0105 = icmp ult ptr %3, %scevgep104
  %bound1106 = icmp ult ptr %0, %scevgep
  %found.conflict107 = and i1 %bound0105, %bound1106
  %conflict.rdx108 = or i1 %found.conflict, %found.conflict107
  %bound0109 = icmp ult ptr %4, %scevgep104
  %bound1110 = icmp ult ptr %0, %scevgep103
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %conflict.rdx108, %found.conflict111
  br i1 %conflict.rdx112, label %scalar.ph113.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck102
  %n.vec116 = and i64 %wide.trip.count73, 2147483646
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert117 = insertelement <2 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat118 = shufflevector <2 x i64> %broadcast.splatinsert117, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert119 = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat120 = shufflevector <2 x i64> %broadcast.splatinsert119, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph115
  %index122 = phi i64 [ 0, %vector.ph115 ], [ %index.next125, %vector.body121 ] ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index122
  %wide.load123 = load <2 x i64>, ptr %i.r, align 8, !tbaa !18, !alias.scope !250 ; 2 uses
  %i.s = and <2 x i64> %wide.load123, %broadcast.splat118 ; 2 uses
  %i.t = shl <2 x i64> %i.s, %broadcast.splat120
  %i.u = or <2 x i64> %i.t, %i.s
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index122
  store <2 x i64> %i.u, ptr %i.v, align 8, !tbaa !18, !alias.scope !253, !noalias !255
  %i.w = and <2 x i64> %wide.load123, %broadcast.splat ; 2 uses
  %i.x = lshr <2 x i64> %i.w, %broadcast.splat120
  %i.y = or <2 x i64> %i.x, %i.w
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index122
  store <2 x i64> %i.y, ptr %i.z, align 8, !tbaa !18, !alias.scope !257, !noalias !250
  %index.next125 = add nuw i64 %index122, 2       ; 2 uses
  %i.aa = icmp eq i64 %index.next125, %n.vec116
  br i1 %i.aa, label %.loopexit, label %vector.body121, !llvm.loop !258

scalar.ph113:                                     ; preds = %scalar.ph113, %scalar.ph113.preheader.new
  %indvars.iv70 = phi i64 [ 0, %scalar.ph113.preheader.new ], [ %indvars.iv.next71.1, %scalar.ph113 ] ; 5 uses
  %niter138 = phi i64 [ 0, %scalar.ph113.preheader.new ], [ %niter138.next.1, %scalar.ph113 ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18
  %i.ad = and i64 %i.ac, %i.n                     ; 2 uses
  %i.ae = shl i64 %i.ad, %i.o
  %i.af = or i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv70
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !18
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !18
  %i.ai = and i64 %i.ah, %i.m                     ; 2 uses
  %i.aj = lshr i64 %i.ai, %i.o
  %i.ak = or i64 %i.aj, %i.ai
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv70
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !18
  %indvars.iv.next71 = or disjoint i64 %indvars.iv70, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next71 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !18
  %i.ao = and i64 %i.an, %i.n                     ; 2 uses
  %i.ap = shl i64 %i.ao, %i.o
  %i.aq = or i64 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next71
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !18
  %i.as = load i64, ptr %i.am, align 8, !tbaa !18
  %i.at = and i64 %i.as, %i.m                     ; 2 uses
  %i.au = lshr i64 %i.at, %i.o
  %i.av = or i64 %i.au, %i.at
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next71
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !18
  %indvars.iv.next71.1 = add nuw nsw i64 %indvars.iv70, 2 ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %scalar.ph113, !llvm.loop !259

bb.c:                                             ; preds = %bb.a
  %i.ax = add nsw i32 %2, -6                      ; 3 uses
  %i.ay = shl nuw i32 1, %i.ax                    ; 4 uses
  %i.az = icmp sgt i32 %i.g, 0
  br i1 %i.az, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.c
  %.not = icmp eq i32 %i.ax, 31
  %i.ba = shl i32 2, %i.ax                        ; 2 uses
  %i.bb = sext i32 %i.ba to i64                   ; 3 uses
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bc = sext i32 %i.ay to i64                   ; 5 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %i.bd = sub i64 %i.c, %i.b                      ; 2 uses
  %i.be = shl nsw i64 %i.bc, 3                    ; 4 uses
  %5 = add i64 %i.be, %i.b
  %i.bf = insertelement <2 x i64> poison, i64 %i.be, i64 0
  %i.bg = shufflevector <2 x i64> %i.bf, <2 x i64> poison, <2 x i32> zeroinitializer
  %6 = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %7 = insertelement <2 x i64> %6, i64 %i.a, i64 1
  %8 = add <2 x i64> %i.bg, %7
  %9 = sub i64 %i.c, %i.a                         ; 2 uses
  %10 = insertelement <8 x i64> poison, i64 %i.b, i64 0
  %11 = insertelement <8 x i64> %10, i64 %i.a, i64 1 ; 2 uses
  %12 = insertelement <8 x i64> %11, i64 %i.be, i64 2
  %13 = insertelement <8 x i64> %12, i64 %i.bd, i64 3
  %14 = shufflevector <8 x i64> %13, <8 x i64> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 2, i32 3>
  %15 = shufflevector <8 x i64> %11, <8 x i64> <i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 1>, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 15>
  %16 = insertelement <8 x i64> %15, i64 %5, i64 1
  %17 = shufflevector <2 x i64> %8, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <8 x i64> %16, <8 x i64> %17, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 poison, i32 poison, i32 7>
  %min.iters.check = icmp slt i32 %i.ay, 18
  %19 = sub i64 %i.be, %i.bd
  %diff.check81 = icmp ugt i64 %19, -32
  %20 = add i64 %9, -1
  %diff.check93 = icmp ult i64 %20, 31
  %i.bh = insertelement <8 x i64> %18, i64 %9, i64 6
  %i.bi = shufflevector <8 x i64> %i.bh, <8 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 2, i32 6, i32 7>
  %i.bj = sub <8 x i64> %14, %i.bi                ; 2 uses
  %i.bk = icmp ugt <8 x i64> %i.bj, <i64 -32, i64 -32, i64 -32, i64 -32, i64 -32, i64 -32, i64 -32, i64 31>
  %i.bl = icmp ult <8 x i64> %i.bj, <i64 -32, i64 -32, i64 -32, i64 -32, i64 -32, i64 -32, i64 -32, i64 31>
  %i.bm = shufflevector <8 x i1> %i.bk, <8 x i1> %i.bl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 15>
  %i.bn = bitcast <8 x i1> %i.bm to i8
  %i.bo = icmp ne i8 %i.bn, 0
  %op.rdx = or i1 %i.bo, %diff.check81
  %op.rdx129 = or i1 %op.rdx, %diff.check93
  %n.vec = and i64 %wide.trip.count, 2147483644
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bp = icmp slt i32 %i.ay, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod133 = trunc i32 %smax to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.065 = phi i32 [ %i.di, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.05464 = phi ptr [ %i.dh, %._crit_edge ], [ %4, %.preheader.preheader ] ; 9 uses
  %.05563 = phi ptr [ %i.dg, %._crit_edge ], [ %3, %.preheader.preheader ] ; 9 uses
  %.05662 = phi ptr [ %i.df, %._crit_edge ], [ %0, %.preheader.preheader ] ; 9 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx129
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader
  br i1 %i.bp, label %scalar.ph.epil.preheader, label %scalar.ph

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 5 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.05662, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load = load <2 x i64>, ptr %i.bq, align 8, !tbaa !18 ; 2 uses
  %wide.load99 = load <2 x i64>, ptr %i.br, align 8, !tbaa !18 ; 2 uses
  %i.bs = add nuw nsw i64 %index, %i.bc           ; 3 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %.05563, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <2 x i64> %wide.load, ptr %i.bt, align 8, !tbaa !18
  store <2 x i64> %wide.load99, ptr %i.bu, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.05563, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x i64> %wide.load, ptr %i.bv, align 8, !tbaa !18
  store <2 x i64> %wide.load99, ptr %i.bw, align 8, !tbaa !18
  %i.bx = getelementptr inbounds [8 x i8], ptr %.05662, i64 %i.bs ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load100 = load <2 x i64>, ptr %i.bx, align 8, !tbaa !18 ; 2 uses
  %wide.load101 = load <2 x i64>, ptr %i.by, align 8, !tbaa !18 ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %.05464, i64 %i.bs ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <2 x i64> %wide.load100, ptr %i.bz, align 8, !tbaa !18
  store <2 x i64> %wide.load101, ptr %i.ca, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.05464, i64 %index ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store <2 x i64> %wide.load100, ptr %i.cb, align 8, !tbaa !18
  store <2 x i64> %wide.load101, ptr %i.cc, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %._crit_edge, label %vector.body, !llvm.loop !260

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.05662, i64 %indvars.iv
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !18 ; 2 uses
  %i.cg = add nuw nsw i64 %indvars.iv, %i.bc      ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.05563, i64 %i.cg
  store i64 %i.cf, ptr %i.ch, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.05563, i64 %indvars.iv
  store i64 %i.cf, ptr %i.ci, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.05662, i64 %i.cg
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !18 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.05464, i64 %i.cg
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.05464, i64 %indvars.iv
  store i64 %i.ck, ptr %i.cm, align 8, !tbaa !18
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.05662, i64 %indvars.iv.next
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !18 ; 2 uses
  %i.cp = add nuw nsw i64 %indvars.iv.next, %i.bc ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.05563, i64 %i.cp
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.05563, i64 %indvars.iv.next
  store i64 %i.co, ptr %i.cr, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.05662, i64 %i.cp
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !18 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.05464, i64 %i.cp
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.05464, i64 %indvars.iv.next
  store i64 %i.ct, ptr %i.cv, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !261

._crit_edge.loopexit.unr-lcssa:                   ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.05662, i64 %indvars.iv.epil.init
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !18 ; 2 uses
  %i.cy = add nuw nsw i64 %indvars.iv.epil.init, %i.bc ; 3 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %.05563, i64 %i.cy
  store i64 %i.cx, ptr %i.cz, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.05563, i64 %indvars.iv.epil.init
  store i64 %i.cx, ptr %i.da, align 8, !tbaa !18
  %i.db = getelementptr inbounds [8 x i8], ptr %.05662, i64 %i.cy
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !18 ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %.05464, i64 %i.cy
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.05464, i64 %indvars.iv.epil.init
  store i64 %i.dc, ptr %i.de, align 8, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa
  %i.df = getelementptr inbounds [8 x i8], ptr %.05662, i64 %i.bb
  %i.dg = getelementptr inbounds [8 x i8], ptr %.05563, i64 %i.bb
  %i.dh = getelementptr inbounds [8 x i8], ptr %.05464, i64 %i.bb
  %i.di = add nsw i32 %.065, %i.ba                ; 2 uses
  %i.dj = icmp slt i32 %i.di, %i.g
  br i1 %i.dj, label %.preheader, label %.loopexit, !llvm.loop !262

.loopexit.loopexit.unr-lcssa:                     ; preds = %scalar.ph113
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %.loopexit, label %scalar.ph113.epil.preheader

scalar.ph113.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %scalar.ph113.preheader
  %indvars.iv70.epil.init = phi i64 [ 0, %scalar.ph113.preheader ], [ %indvars.iv.next71.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod136 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.epil.init ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !18
  %i.dm = and i64 %i.dl, %i.n                     ; 2 uses
  %i.dn = shl i64 %i.dm, %i.o
  %i.do = or i64 %i.dn, %i.dm
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv70.epil.init
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !18
  %i.dq = load i64, ptr %i.dk, align 8, !tbaa !18
  %i.dr = and i64 %i.dq, %i.m                     ; 2 uses
  %i.ds = lshr i64 %i.dr, %i.o
  %i.dt = or i64 %i.ds, %i.dr
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv70.epil.init
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %vector.body121, %scalar.ph113.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c, %.preheader.lr.ph, %bb.b
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
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18   ; 2 uses
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
  %i.s = load i64, ptr %i.r, align 8, !tbaa !18   ; 2 uses
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
end_hunk_0
