Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sparsity_internal?download=true
inline.NumInlined: 4371
inline.NumDeleted: 628
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZN6casadi16SparsityInternal7qr_initEPKxS2_PxS3_S3_S3_S3_S3_S3_:bb.a
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13945.i.prol ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  %.not.i.prol = icmp eq i64 %i.i, -1
  br i1 %.not.i.prol, label %.lr.ph46.i.prol.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph46.i.prol
  %i.j = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.13945.i.prol
  store i64 %i.k, ptr %i.l, align 8, !tbaa !8
  %i.m = load i64, ptr %i.h, align 8, !tbaa !8
  %i.n = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.m
  store i64 %.13945.i.prol, ptr %i.n, align 8, !tbaa !8
  br label %.lr.ph46.i.prol.loopexit

.lr.ph46.i.prol.loopexit:                         ; preds = %.lr.ph46.i.prol, %bb.b, %.lr.ph46.preheader.i
  %.13945.in.i.unr = phi i64 [ %i.b, %.lr.ph46.preheader.i ], [ %.13945.i.prol, %bb.b ], [ %.13945.i.prol, %.lr.ph46.i.prol ]
  %i.o = icmp eq i64 %i.b, 1
  br i1 %i.o, label %.lr.ph49.i.preheader, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.prol.loopexit, %bb.e
  %.13945.in.i = phi i64 [ %.13945.i.1, %bb.e ], [ %.13945.in.i.unr, %.lr.ph46.i.prol.loopexit ] ; 3 uses
  %.13945.i = add nsw i64 %.13945.in.i, -1        ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13945.i ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !8    ; 2 uses
  %.not.i = icmp eq i64 %i.q, -1
  br i1 %.not.i, label %.lr.ph46.i.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph46.i
  %i.r = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.13945.i
  store i64 %i.s, ptr %i.t, align 8, !tbaa !8
  %i.u = load i64, ptr %i.p, align 8, !tbaa !8
  %i.v = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.u
  store i64 %.13945.i, ptr %i.v, align 8, !tbaa !8
  br label %.lr.ph46.i.1

.lr.ph46.i.1:                                     ; preds = %bb.c, %.lr.ph46.i
  %.13945.i.1 = add nsw i64 %.13945.in.i, -2      ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.13945.i.1 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !8    ; 2 uses
  %.not.i.1 = icmp eq i64 %i.x, -1
  br i1 %.not.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph46.i.1
  %i.y = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.13945.i.1
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !8
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !8
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ab
  store i64 %.13945.i.1, ptr %i.ac, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph46.i.1
  %i.ad = icmp sgt i64 %.13945.in.i, 2
  br i1 %i.ad, label %.lr.ph46.i, label %.lr.ph49.i.preheader, !llvm.loop !15

.lr.ph49.i.preheader:                             ; preds = %bb.e, %.lr.ph46.i.prol.loopexit
  br label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.preheader, %_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit.i
  %.048.i = phi i64 [ %.1.i, %_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit.i ], [ 0, %.lr.ph49.i.preheader ] ; 2 uses
  %.247.i = phi i64 [ %i.au, %_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit.i ], [ 0, %.lr.ph49.i.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.247.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !8
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %bb.f, label %_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit.i

bb.f:                                             ; preds = %.lr.ph49.i
  store i64 %.247.i, ptr %i.e, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.023.i.i = phi i64 [ 0, %bb.f ], [ %.1.i.i, %bb.j ] ; 3 uses
  %.01922.i.i = phi i64 [ %.048.i, %bb.f ], [ %.120.i.i, %bb.j ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.023.i.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !8  ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !8  ; 3 uses
  %i.al = icmp eq i64 %i.ak, -1
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = add nsw i64 %.023.i.i, -1
  %i.an = add nsw i64 %.01922.i.i, 1
  %i.ao = getelementptr inbounds [8 x i8], ptr %8, i64 %.01922.i.i
  store i64 %i.ai, ptr %i.ao, align 8, !tbaa !8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ak
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !8
  store i64 %i.aq, ptr %i.aj, align 8, !tbaa !8
  %i.ar = add nuw nsw i64 %.023.i.i, 1            ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ar
  store i64 %i.ak, ptr %i.as, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.120.i.i = phi i64 [ %i.an, %bb.h ], [ %.01922.i.i, %bb.i ] ; 2 uses
  %.1.i.i = phi i64 [ %i.am, %bb.h ], [ %i.ar, %bb.i ] ; 2 uses
  %i.at = icmp sgt i64 %.1.i.i, -1
  br i1 %i.at, label %bb.g, label %_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit.i, !llvm.loop !14

_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit.i: ; preds = %bb.j, %.lr.ph49.i
  %.1.i = phi i64 [ %.048.i, %.lr.ph49.i ], [ %.120.i.i, %bb.j ]
  %i.au = add nuw nsw i64 %.247.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.au, %i.b
  br i1 %exitcond.not.i, label %_ZN6casadi16SparsityInternal9postorderEPKxxPxS3_.exit, label %.lr.ph49.i, !llvm.loop !16

_ZN6casadi16SparsityInternal9postorderEPKxxPxS3_.exit: ; preds = %_ZN6casadi16SparsityInternal13postorder_dfsExxPxPKxS1_S1_.exit.i, %bb.a
  %i.av = tail call noundef i64 @_ZN6casadi16SparsityInternal9qr_countsEPKxS2_S2_PxS3_(ptr noundef %1, ptr noundef %3, ptr noundef %8, ptr noundef %i.c, ptr noundef %i.d)
  store i64 %i.av, ptr %7, align 8, !tbaa !8
  %i.aw = tail call noundef i64 @_ZN6casadi16SparsityInternal6qr_nnzEPKxPxS3_S2_S3_S3_(ptr noundef %0, ptr noundef %4, ptr noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef %i.c)
  store i64 %i.aw, ptr %6, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6casadi16SparsityInternal13qr_sparsitiesEPKxxPxS3_S2_S2_S2_S3_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) initializes((0, 16)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8    ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.b ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.b ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i64 %1, ptr %3, align 8, !tbaa !8
  store i64 %1, ptr %2, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.b, ptr %i.l, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.b, ptr %i.m, align 8, !tbaa !8
  %i.n = getelementptr [8 x i8], ptr %7, i64 %i.b ; 6 uses
  %i.o = icmp sgt i64 %1, 0
  br i1 %i.o, label %.lr.ph.preheader, label %.preheader131

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.p = shl nuw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 -1, i64 %i.p, i1 false), !tbaa !8
  br label %.preheader131

.preheader131:                                    ; preds = %.lr.ph.preheader, %bb.a
  %i.q = icmp sgt i64 %i.b, 0
  br i1 %i.q, label %.lr.ph165, label %._crit_edge166

.lr.ph165:                                        ; preds = %.preheader131, %._crit_edge159
  %.0164 = phi i64 [ %.3.lcssa, %._crit_edge159 ], [ 0, %.preheader131 ] ; 3 uses
  %.0116163 = phi i64 [ %i.cs, %._crit_edge159 ], [ 0, %.preheader131 ] ; 5 uses
  %.0125162 = phi i64 [ %i.y, %._crit_edge159 ], [ 0, %.preheader131 ] ; 17 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0125162
  store i64 %.0116163, ptr %i.r, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0125162
  store i64 %.0164, ptr %i.s, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0125162
  store i64 %.0125162, ptr %i.t, align 8, !tbaa !8
  %i.u = add nsw i64 %.0164, 1                    ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.0164
  store i64 %.0125162, ptr %i.v, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0125162
  %i.x = load i64, ptr %i.w, align 8, !tbaa !8    ; 2 uses
  %i.y = add nuw nsw i64 %.0125162, 1             ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !8
  %i.ab = icmp slt i64 %i.x, %i.aa
  br i1 %i.ab, label %.lr.ph146, label %._crit_edge159

.preheader130:                                    ; preds = %bb.d
  %i.ac = icmp slt i64 %.1122.lcssa, %i.b
  br i1 %i.ac, label %.lr.ph158.preheader, label %._crit_edge159

.lr.ph158.preheader:                              ; preds = %.preheader130
  %i.ad = add i64 %i.b, %.0116163
  %i.ae = sub i64 %i.ad, %.1122.lcssa             ; 2 uses
  br label %.lr.ph158

.lr.ph146:                                        ; preds = %.lr.ph165, %bb.d
  %.1144 = phi i64 [ %.2, %bb.d ], [ %i.u, %.lr.ph165 ] ; 4 uses
  %.0121143 = phi i64 [ %.1122.lcssa, %bb.d ], [ %i.b, %.lr.ph165 ] ; 6 uses
  %.0123142 = phi i64 [ %i.br, %bb.d ], [ %i.x, %.lr.ph165 ] ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.0123142 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !8
  %i.ah = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ag
  %.1127133 = load i64, ptr %i.ah, align 8, !tbaa !8 ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.1127133 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !8
  %.not134 = icmp eq i64 %i.aj, %.0125162
  br i1 %.not134, label %._crit_edge, label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph146, %.lr.ph137
  %i.ak = phi ptr [ %i.ao, %.lr.ph137 ], [ %i.ai, %.lr.ph146 ]
  %.1127136 = phi i64 [ %.1127, %.lr.ph137 ], [ %.1127133, %.lr.ph146 ] ; 2 uses
  %.0119135 = phi i64 [ %i.al, %.lr.ph137 ], [ 0, %.lr.ph146 ] ; 5 uses
  %i.al = add nuw i64 %.0119135, 1                ; 5 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0119135
  store i64 %.1127136, ptr %i.am, align 8, !tbaa !8
  store i64 %.0125162, ptr %i.ak, align 8, !tbaa !8
  %i.an = getelementptr inbounds [8 x i8], ptr %5, i64 %.1127136
  %.1127 = load i64, ptr %i.an, align 8, !tbaa !8 ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.1127 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !8
  %.not = icmp eq i64 %i.ap, %.0125162
  br i1 %.not, label %.lr.ph140.preheader, label %.lr.ph137, !llvm.loop !42

.lr.ph140.preheader:                              ; preds = %.lr.ph137
  %8 = add i64 %.0119135, 2
  %smin = tail call i64 @llvm.smin.i64(i64 %i.al, i64 1)
  %9 = sub i64 %8, %smin                          ; 3 uses
  %min.iters.check = icmp ult i64 %9, 6
  br i1 %min.iters.check, label %.lr.ph140.preheader195, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph140.preheader
  %i.aq = sub i64 %.0119135, %.0121143
  %reass.sub = shl i64 %i.aq, 3
  %diff.check = icmp ult i64 %reass.sub, 24
  br i1 %diff.check, label %.lr.ph140.preheader195, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %9, -4                         ; 4 uses
  %10 = sub i64 %i.al, %n.vec
  %i.ar = sub i64 %.0121143, %n.vec               ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %7, i64 %.0121143
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = sub i64 %.0119135, %index
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -24
  %wide.load = load <2 x i64>, ptr %i.av, align 8, !tbaa !8
  %wide.load193 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !8
  %i.ax = xor i64 %index, -1
  %i.ay = getelementptr [8 x i8], ptr %i.as, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -24
  store <2 x i64> %wide.load, ptr %i.az, align 8, !tbaa !8
  store <2 x i64> %wide.load193, ptr %i.ba, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %9, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph140.preheader195

.lr.ph140.preheader195:                           ; preds = %vector.memcheck, %.lr.ph140.preheader, %middle.block
  %.1120139.ph = phi i64 [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph140.preheader ], [ %10, %middle.block ]
  %.1122138.ph = phi i64 [ %.0121143, %vector.memcheck ], [ %.0121143, %.lr.ph140.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph140.preheader195, %.lr.ph140
  %.1120139 = phi i64 [ %i.bc, %.lr.ph140 ], [ %.1120139.ph, %.lr.ph140.preheader195 ] ; 2 uses
  %.1122138 = phi i64 [ %i.bf, %.lr.ph140 ], [ %.1122138.ph, %.lr.ph140.preheader195 ]
  %i.bc = add nsw i64 %.1120139, -1               ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !8
  %i.bf = add nsw i64 %.1122138, -1               ; 3 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bf
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !8
  %i.bh = icmp sgt i64 %.1120139, 1
  br i1 %i.bh, label %.lr.ph140, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph140, %middle.block, %.lr.ph146
  %.1122.lcssa = phi i64 [ %.0121143, %.lr.ph146 ], [ %i.ar, %middle.block ], [ %i.bf, %.lr.ph140 ] ; 4 uses
  %i.bi = load i64, ptr %i.af, align 8, !tbaa !8
  %i.bj = getelementptr inbounds [8 x i8], ptr %6, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !8  ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, %.0125162
  br i1 %i.bl, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.bk ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !8
  %i.bo = icmp slt i64 %i.bn, %.0125162
  br i1 %i.bo, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bp = add nsw i64 %.1144, 1
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.1144
  store i64 %i.bk, ptr %i.bq, align 8, !tbaa !8
  store i64 %.0125162, ptr %i.bm, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b, %bb.c
  %.2 = phi i64 [ %i.bp, %bb.c ], [ %.1144, %bb.b ], [ %.1144, %._crit_edge ] ; 3 uses
  %i.br = add nsw i64 %.0123142, 1                ; 2 uses
  %i.bs = load i64, ptr %i.z, align 8, !tbaa !8
  %i.bt = icmp slt i64 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph146, label %.preheader130, !llvm.loop !45

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %.loopexit
  %.3157 = phi i64 [ %.6, %.loopexit ], [ %.2, %.lr.ph158.preheader ] ; 3 uses
  %.1117156 = phi i64 [ %i.bw, %.loopexit ], [ %.0116163, %.lr.ph158.preheader ] ; 2 uses
  %.1124155 = phi i64 [ %i.cr, %.loopexit ], [ %.1122.lcssa, %.lr.ph158.preheader ] ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %7, i64 %.1124155
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !8  ; 3 uses
  %i.bw = add i64 %.1117156, 1                    ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.1117156
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !8
  %i.by = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bv
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !8
  %i.ca = icmp eq i64 %i.bz, %.0125162
  br i1 %i.ca, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph158
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bv ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !8  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 8      ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !8  ; 2 uses
  %i.cf = icmp slt i64 %i.cc, %i.ce
  br i1 %i.cf, label %.lr.ph153, label %.loopexit

.lr.ph153:                                        ; preds = %bb.e, %bb.g
  %i.cg = phi i64 [ %i.co, %bb.g ], [ %i.ce, %bb.e ]
  %.4151 = phi i64 [ %.5, %bb.g ], [ %.3157, %bb.e ] ; 3 uses
  %.0118150 = phi i64 [ %i.cp, %bb.g ], [ %i.cc, %bb.e ] ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.0118150
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !8  ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ci ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !8
  %i.cl = icmp slt i64 %i.ck, %.0125162
  br i1 %i.cl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph153
  store i64 %.0125162, ptr %i.cj, align 8, !tbaa !8
  %i.cm = add nsw i64 %.4151, 1
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.4151
  store i64 %i.ci, ptr %i.cn, align 8, !tbaa !8
  %.pre = load i64, ptr %i.cd, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph153, %bb.f
  %i.co = phi i64 [ %.pre, %bb.f ], [ %i.cg, %.lr.ph153 ] ; 2 uses
  %.5 = phi i64 [ %i.cm, %bb.f ], [ %.4151, %.lr.ph153 ] ; 2 uses
  %i.cp = add nsw i64 %.0118150, 1                ; 2 uses
  %i.cq = icmp slt i64 %i.cp, %i.co
  br i1 %i.cq, label %.lr.ph153, label %.loopexit, !llvm.loop !46

.loopexit:                                        ; preds = %bb.g, %bb.e, %.lr.ph158
  %.6 = phi i64 [ %.3157, %.lr.ph158 ], [ %.3157, %bb.e ], [ %.5, %bb.g ] ; 2 uses
  %i.cr = add nsw i64 %.1124155, 1
  %exitcond.not = icmp eq i64 %i.bw, %i.ae
  br i1 %exitcond.not, label %._crit_edge159, label %.lr.ph158, !llvm.loop !47

._crit_edge159:                                   ; preds = %.loopexit, %.lr.ph165, %.preheader130
  %.1117.lcssa = phi i64 [ %.0116163, %.preheader130 ], [ %.0116163, %.lr.ph165 ], [ %i.ae, %.loopexit ] ; 2 uses
  %.3.lcssa = phi i64 [ %.2, %.preheader130 ], [ %i.u, %.lr.ph165 ], [ %.6, %.loopexit ] ; 2 uses
  %i.cs = add nsw i64 %.1117.lcssa, 1             ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.1117.lcssa
  store i64 %.0125162, ptr %i.ct, align 8, !tbaa !8
  %exitcond173.not = icmp eq i64 %i.y, %i.b
  br i1 %exitcond173.not, label %._crit_edge166, label %.lr.ph165, !llvm.loop !48

._crit_edge166:                                   ; preds = %._crit_edge159, %.preheader131
  %.0116.lcssa = phi i64 [ 0, %.preheader131 ], [ %i.cs, %._crit_edge159 ]
  %.0.lcssa = phi i64 [ 0, %.preheader131 ], [ %.3.lcssa, %._crit_edge159 ]
  store i64 %.0116.lcssa, ptr %i.j, align 8, !tbaa !8
  store i64 %.0.lcssa, ptr %i.g, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6casadi16SparsityInternal10ldl_colindEPKxPxS3_S3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !8      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = icmp sgt i64 %i.a, 0
  br i1 %i.e, label %.lr.ph60, label %._crit_edge61.thread

._crit_edge61.thread:                             ; preds = %bb.a
  store i64 0, ptr %2, align 8, !tbaa !8
  br label %._crit_edge65

.lr.ph60:                                         ; preds = %bb.a, %.critedge
  %.04858 = phi i64 [ %i.h, %.critedge ], [ 0, %bb.a ] ; 10 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04858
  store i64 -1, ptr %i.f, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04858
  store i64 %.04858, ptr %i.g, align 8, !tbaa !8
  %i.h = add nuw nsw i64 %.04858, 1               ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.h
  store i64 0, ptr %i.i, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.04858
  %i.k = load i64, ptr %i.j, align 8, !tbaa !8    ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !8    ; 2 uses
  %i.n = icmp slt i64 %i.k, %i.m
  br i1 %i.n, label %.lr.ph56, label %.critedge

.lr.ph56:                                         ; preds = %.lr.ph60, %._crit_edge
  %i.o = phi i64 [ %i.af, %._crit_edge ], [ %i.m, %.lr.ph60 ]
  %.054 = phi i64 [ %i.ag, %._crit_edge ], [ %i.k, %.lr.ph60 ] ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.054
  %i.q = load i64, ptr %i.p, align 8, !tbaa !8    ; 3 uses
  %i.r = icmp slt i64 %i.q, %.04858
  br i1 %i.r, label %.preheader, label %.critedge

.preheader:                                       ; preds = %.lr.ph56
  %i.s = getelementptr inbounds [8 x i8], ptr %3, i64 %i.q ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !8
  %.not52 = icmp eq i64 %i.t, %.04858
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.u = phi ptr [ %i.ad, %bb.c ], [ %i.s, %.preheader ]
  %.04953 = phi i64 [ %i.ac, %bb.c ], [ %i.q, %.preheader ] ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %.04953 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !8
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store i64 %.04858, ptr %i.v, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.y = getelementptr [8 x i8], ptr %2, i64 %.04953
  %i.z = getelementptr i8, ptr %i.y, i64 8        ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !8
  %i.ab = add nsw i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !8
  store i64 %.04858, ptr %i.u, align 8, !tbaa !8
  %i.ac = load i64, ptr %i.v, align 8, !tbaa !8   ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !8
  %.not = icmp eq i64 %i.ae, %.04858
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !49

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load i64, ptr %i.l, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.af = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.o, %.preheader ] ; 2 uses
  %i.ag = add nsw i64 %.054, 1                    ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %i.af
  br i1 %i.ah, label %.lr.ph56, label %.critedge, !llvm.loop !50

.critedge:                                        ; preds = %._crit_edge, %.lr.ph56, %.lr.ph60
  %exitcond.not = icmp eq i64 %i.h, %i.a
  br i1 %exitcond.not, label %._crit_edge61, label %.lr.ph60, !llvm.loop !51

._crit_edge61:                                    ; preds = %.critedge
  store i64 0, ptr %2, align 8, !tbaa !8
  %xtraiter = and i64 %i.a, 3                     ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK6casadi16SparsityInternal3amdEv:bb.a

._crit_edge1495.thread:                           ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit639
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.bb
  store i64 0, ptr %i.ea, align 8, !tbaa !8
  %i.eb = ptrtoint ptr %.sroa.39.0 to i64
  %i.ec = ptrtoint ptr %.sroa.0930.0 to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 2 uses
  %i.ee = ashr exact i64 %i.ed, 3
  br label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread

.lr.ph1494.preheader:                             ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit639
  %.pre = load i64, ptr %.sroa.0963.0, align 8, !tbaa !8 ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 4
  br i1 %min.iters.check, label %.lr.ph1494.preheader2069, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph1494.preheader
  %n.vec = and i64 %i.bb, 9223372036854775804     ; 3 uses
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load2029, %vector.body ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %index ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %wide.load = load <2 x i64>, ptr %i.eg, align 8, !tbaa !8 ; 3 uses
  %wide.load2029 = load <2 x i64>, ptr %i.eh, align 8, !tbaa !8 ; 4 uses
  %i.ei = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.ej = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load2029, <2 x i32> <i32 1, i32 2>
  %i.ek = sub nsw <2 x i64> %wide.load, %i.ei
  %i.el = sub nsw <2 x i64> %wide.load2029, %i.ej
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store <2 x i64> %i.ek, ptr %i.em, align 8, !tbaa !8
  store <2 x i64> %i.el, ptr %i.en, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load2029, i64 1
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %.lr.ph1499, label %.lr.ph1494.preheader2069

.lr.ph1494.preheader2069:                         ; preds = %.lr.ph1494.preheader, %middle.block
  %.ph = phi i64 [ %.pre, %.lr.ph1494.preheader ], [ %vector.recur.extract, %middle.block ]
  %.04301493.ph = phi i64 [ 0, %.lr.ph1494.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph1494

.lr.ph1499:                                       ; preds = %.lr.ph1494, %middle.block, %.noexc638
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.bb
  store i64 0, ptr %i.ep, align 8, !tbaa !8
  %i.eq = ptrtoint ptr %.sroa.39.0 to i64
  %i.er = ptrtoint ptr %.sroa.0930.0 to i64
  %i.es = sub i64 %i.eq, %i.er                    ; 4 uses
  %i.et = ashr exact i64 %i.es, 3                 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dm, i8 -1, i64 %i.bd, i1 false), !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dk, i8 -1, i64 %i.bd, i1 false), !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dy, i8 -1, i64 %i.bd, i1 false), !tbaa !8
  %min.iters.check2031 = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check2031, label %scalar.ph2030.preheader, label %vector.ph2032

vector.ph2032:                                    ; preds = %.lr.ph1499
  %n.vec2033 = and i64 %i.cb, -4                  ; 3 uses
  br label %vector.body2034

vector.body2034:                                  ; preds = %vector.body2034, %vector.ph2032
  %index2035 = phi i64 [ 0, %vector.ph2032 ], [ %index.next2038, %vector.body2034 ] ; 7 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index2035 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.eu, align 8, !tbaa !8
  store <2 x i64> splat (i64 -1), ptr %i.ev, align 8, !tbaa !8
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %index2035 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store <2 x i64> splat (i64 1), ptr %i.ew, align 8, !tbaa !8
  store <2 x i64> splat (i64 1), ptr %i.ex, align 8, !tbaa !8
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index2035 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <2 x i64> splat (i64 1), ptr %i.ey, align 8, !tbaa !8
  store <2 x i64> splat (i64 1), ptr %i.ez, align 8, !tbaa !8
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %index2035 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store <2 x i64> zeroinitializer, ptr %i.fa, align 8, !tbaa !8
  store <2 x i64> zeroinitializer, ptr %i.fb, align 8, !tbaa !8
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %index2035 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load2036 = load <2 x i64>, ptr %i.fc, align 8, !tbaa !8
  %wide.load2037 = load <2 x i64>, ptr %i.fd, align 8, !tbaa !8
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index2035 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <2 x i64> %wide.load2036, ptr %i.fe, align 8, !tbaa !8
  store <2 x i64> %wide.load2037, ptr %i.ff, align 8, !tbaa !8
  %index.next2038 = add nuw i64 %index2035, 4     ; 2 uses
  %i.fg = icmp eq i64 %index.next2038, %n.vec2033
  br i1 %i.fg, label %middle.block2039, label %vector.body2034, !llvm.loop !174

middle.block2039:                                 ; preds = %vector.body2034
  %cmp.n2040 = icmp eq i64 %i.cb, %n.vec2033
  br i1 %cmp.n2040, label %._crit_edge1500, label %scalar.ph2030.preheader

scalar.ph2030.preheader:                          ; preds = %.lr.ph1499, %middle.block2039
  %.04291497.ph = phi i64 [ 0, %.lr.ph1499 ], [ %n.vec2033, %middle.block2039 ]
  br label %scalar.ph2030

bb.aj:                                            ; preds = %._crit_edge1491
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit699

bb.ak:                                            ; preds = %bb.ab
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit697

_ZNSt6vectorIxSaIxEED2Ev.exit695.thread:          ; preds = %bb.ac
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

_ZNSt6vectorIxSaIxEED2Ev.exit693.thread:          ; preds = %bb.ad
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit695

_ZNSt6vectorIxSaIxEED2Ev.exit691.thread:          ; preds = %bb.ae
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit693

_ZNSt6vectorIxSaIxEED2Ev.exit689.thread:          ; preds = %bb.af
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit691

_ZNSt6vectorIxSaIxEED2Ev.exit687.thread:          ; preds = %bb.ag
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit689

_ZNSt6vectorIxSaIxEED2Ev.exit685.thread:          ; preds = %bb.ah
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit687

_ZNSt6vectorIxSaIxEED2Ev.exit.thread:             ; preds = %bb.ai
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit685

.lr.ph1494:                                       ; preds = %.lr.ph1494.preheader2069, %.lr.ph1494
  %i.fq = phi i64 [ %i.ft, %.lr.ph1494 ], [ %.ph, %.lr.ph1494.preheader2069 ]
  %.04301493 = phi i64 [ %i.fr, %.lr.ph1494 ], [ %.04301493.ph, %.lr.ph1494.preheader2069 ] ; 2 uses
  %i.fr = add nuw nsw i64 %.04301493, 1           ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !8  ; 2 uses
  %i.fu = sub nsw i64 %i.ft, %i.fq
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.04301493
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !8
  %exitcond1634.not = icmp eq i64 %i.fr, %i.bb
  br i1 %exitcond1634.not, label %.lr.ph1499, label %.lr.ph1494, !llvm.loop !175

._crit_edge1500:                                  ; preds = %scalar.ph2030, %middle.block2039
  %i.fw = icmp eq i64 %i.bb, 0
  br i1 %i.fw, label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge1500
  %xtraiter2070 = and i64 %i.bb, 1
  %i.fx = icmp eq i64 %i.bb, 1
  br i1 %i.fx, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.bb, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.an, %.lr.ph.i.preheader.new
  %.013.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.gd, %bb.an ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.an ]
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i626.ph, i64 %.013.i ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !8
  %.not.i = icmp eq i64 %i.fz, 0
  br i1 %.not.i, label %.lr.ph.i.1, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i
  store i64 1, ptr %i.fy, align 8, !tbaa !8
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.al, %.lr.ph.i
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i626.ph, i64 %.013.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !8
  %.not.i.1 = icmp eq i64 %i.gc, 0
  br i1 %.not.i.1, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.1
  store i64 1, ptr %i.gb, align 8, !tbaa !8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i.1
  %i.gd = add nuw nsw i64 %.013.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !176

_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread: ; preds = %._crit_edge1500, %._crit_edge1495.thread
  %.ph1918 = phi i64 [ %i.es, %._crit_edge1500 ], [ %i.ed, %._crit_edge1495.thread ]
  %.ph1919 = phi i64 [ %i.et, %._crit_edge1500 ], [ %i.ee, %._crit_edge1495.thread ]
  %.not149618091897.ph = phi i1 [ false, %._crit_edge1500 ], [ true, %._crit_edge1495.thread ]
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.bb
  store i64 -2, ptr %i.ge, align 8, !tbaa !8
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %i.bb
  store i64 -1, ptr %i.gf, align 8, !tbaa !8
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.bb
  store i64 0, ptr %i.gg, align 8, !tbaa !8
  br label %.preheader1484

_ZN6casadi16SparsityInternal6wclearExxPxx.exit.unr-lcssa: ; preds = %bb.an
  %lcmp.mod2071.not = icmp eq i64 %xtraiter2070, 0
  br i1 %lcmp.mod2071.not, label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.unr-lcssa, %.lr.ph.i.preheader
  %.013.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.gd, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.unr-lcssa ]
  %lcmp.mod2072 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod2072)
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i626.ph, i64 %.013.i.epil.init ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !8
  %.not.i.epil = icmp eq i64 %i.gi, 0
  br i1 %.not.i.epil, label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.epil.preheader
  store i64 1, ptr %i.gh, align 8, !tbaa !8
  br label %_ZN6casadi16SparsityInternal6wclearExxPxx.exit

_ZN6casadi16SparsityInternal6wclearExxPxx.exit:   ; preds = %.lr.ph.i.epil.preheader, %bb.ao, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.unr-lcssa
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.bb
  store i64 -2, ptr %i.gj, align 8, !tbaa !8
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %i.bb
  store i64 -1, ptr %i.gk, align 8, !tbaa !8
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.bb
  store i64 0, ptr %i.gl, align 8, !tbaa !8
  br i1 %i.bv, label %.lr.ph1503, label %.preheader1484

.lr.ph1503:                                       ; preds = %_ZN6casadi16SparsityInternal6wclearExxPxx.exit
  %i.gm = sub nuw i64 -2, %i.bb
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.bb ; 2 uses
  br label %bb.ap

scalar.ph2030:                                    ; preds = %scalar.ph2030.preheader, %scalar.ph2030
  %.04291497 = phi i64 [ %i.gv, %scalar.ph2030 ], [ %.04291497.ph, %scalar.ph2030.preheader ] ; 8 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.04291497
  store i64 -1, ptr %i.go, align 8, !tbaa !8
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.04291497
  store i64 1, ptr %i.gp, align 8, !tbaa !8
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.04291497
  store i64 1, ptr %i.gq, align 8, !tbaa !8
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.04291497
  store i64 0, ptr %i.gr, align 8, !tbaa !8
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.04291497
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !8
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.04291497
  store i64 %i.gt, ptr %i.gu, align 8, !tbaa !8
  %i.gv = add nuw i64 %.04291497, 1
  %exitcond1635.not = icmp eq i64 %.04291497, %i.bb
  br i1 %exitcond1635.not, label %._crit_edge1500, label %scalar.ph2030, !llvm.loop !177

.preheader1484:                                   ; preds = %bb.aw, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit
  %.not1496180918971955 = phi i1 [ false, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit ], [ %.not149618091897.ph, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread ], [ false, %bb.aw ] ; 2 uses
  %i.gw = phi i64 [ %i.et, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit ], [ %.ph1919, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread ], [ %i.et, %bb.aw ]
  %i.gx = phi i64 [ %i.es, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit ], [ %.ph1918, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread ], [ %i.es, %bb.aw ]
  %.0436.lcssa = phi i64 [ 0, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit ], [ 0, %_ZN6casadi16SparsityInternal6wclearExxPxx.exit.thread ], [ %.1437, %bb.aw ] ; 2 uses
  %i.gy = icmp slt i64 %.0436.lcssa, %i.bb
  br i1 %i.gy, label %.preheader1483.preheader, label %.preheader1475

.preheader1483.preheader:                         ; preds = %.preheader1484
  %xtraiter2073 = and i64 %i.bb, 1
  %i.gz = icmp eq i64 %i.bb, 1
  %unroll_iter2076 = and i64 %i.bb, 9223372036854775806
  %lcmp.mod2074.not = icmp eq i64 %xtraiter2073, 0
  %lcmp.mod2075 = trunc i64 %i.bb to i1
  br label %.preheader1483

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.dc
  %i.ha = landingpad { ptr, i32 }
          cleanup
  %.idx = shl nuw nsw i64 %i.cb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %.idx) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit685

bb.ap:                                            ; preds = %.lr.ph1503, %bb.aw
  %.04241502 = phi i64 [ 0, %.lr.ph1503 ], [ %i.hu, %bb.aw ] ; 11 uses
  %.04361501 = phi i64 [ 0, %.lr.ph1503 ], [ %.1437, %bb.aw ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.04241502
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !8  ; 3 uses
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.04241502
  store i64 -2, ptr %i.he, align 8, !tbaa !8
  %i.hf = add nsw i64 %.04361501, 1
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.04241502
  store i64 -1, ptr %i.hg, align 8, !tbaa !8
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.04241502
  store i64 0, ptr %i.hh, align 8, !tbaa !8
  br label %bb.aw

bb.ar:                                            ; preds = %bb.ap
  %i.hi = icmp sgt i64 %i.hc, %.sroa.speculated918
  br i1 %i.hi, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.04241502
  store i64 0, ptr %i.hj, align 8, !tbaa !8
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.04241502
  store i64 -1, ptr %i.hk, align 8, !tbaa !8
  %i.hl = add nsw i64 %.04361501, 1
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %.04241502
  store i64 %i.gm, ptr %i.hm, align 8, !tbaa !8
  %i.hn = load i64, ptr %i.gn, align 8, !tbaa !8
  %i.ho = add nsw i64 %i.hn, 1
  store i64 %i.ho, ptr %i.gn, align 8, !tbaa !8
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.hc ; 3 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !8  ; 2 uses
  %.not534 = icmp eq i64 %i.hq, -1
  br i1 %.not534, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.hq
  store i64 %.04241502, ptr %i.hr, align 8, !tbaa !8
  %.pre1653 = load i64, ptr %i.hp, align 8, !tbaa !8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.hs = phi i64 [ %.pre1653, %bb.au ], [ -1, %bb.at ]
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.04241502
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !8
  store i64 %.04241502, ptr %i.hp, align 8, !tbaa !8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aq, %bb.av, %bb.as
  %.1437 = phi i64 [ %i.hf, %bb.aq ], [ %i.hl, %bb.as ], [ %.04361501, %bb.av ] ; 2 uses
  %i.hu = add nuw nsw i64 %.04241502, 1           ; 2 uses
  %exitcond1636.not = icmp eq i64 %i.hu, %i.bb
  br i1 %exitcond1636.not, label %.preheader1484, label %bb.ap, !llvm.loop !178

.preheader1483:                                   ; preds = %.preheader1483.preheader, %bb.cu
  %.04251617 = phi i64 [ %.1426.lcssa19901999, %bb.cu ], [ 2, %.preheader1483.preheader ] ; 5 uses
  %.24381616 = phi i64 [ %.3439.lcssa197619892001, %bb.cu ], [ %.0436.lcssa, %.preheader1483.preheader ]
  %.34471615 = phi i64 [ %spec.select538, %bb.cu ], [ %.0444.lcssa, %.preheader1483.preheader ] ; 4 uses
  %.010061614 = phi i64 [ %.sroa.speculated711197819872003, %bb.cu ], [ 0, %.preheader1483.preheader ] ; 2 uses
  %.010071613 = phi i64 [ %.21009.lcssa2005, %bb.cu ], [ 0, %.preheader1483.preheader ] ; 3 uses
  %i.hv = icmp slt i64 %.010071613, %i.bb
  br i1 %i.hv, label %.lr.ph1506, label %.critedge

.preheader1475:                                   ; preds = %bb.cu, %.preheader1484
  br i1 %i.bv, label %.lr.ph1619.preheader, label %.preheader1474

.lr.ph1619.preheader:                             ; preds = %.preheader1475
  %min.iters.check2056 = icmp ult i64 %i.bb, 4
  br i1 %min.iters.check2056, label %.lr.ph1619.preheader2067, label %vector.ph2057

vector.ph2057:                                    ; preds = %.lr.ph1619.preheader
  %n.vec2058 = and i64 %i.bb, 9223372036854775804 ; 3 uses
  br label %vector.body2059

vector.body2059:                                  ; preds = %vector.body2059, %vector.ph2057
  %index2060 = phi i64 [ 0, %vector.ph2057 ], [ %index.next2063, %vector.body2059 ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0963.0, i64 %index2060 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
  %wide.load2061 = load <2 x i64>, ptr %i.hw, align 8, !tbaa !8
  %wide.load2062 = load <2 x i64>, ptr %i.hx, align 8, !tbaa !8
  %i.hy = sub <2 x i64> splat (i64 -2), %wide.load2061
  %i.hz = sub <2 x i64> splat (i64 -2), %wide.load2062
  store <2 x i64> %i.hy, ptr %i.hw, align 8, !tbaa !8
  store <2 x i64> %i.hz, ptr %i.hx, align 8, !tbaa !8
  %index.next2063 = add nuw i64 %index2060, 4     ; 2 uses
  %i.ia = icmp eq i64 %index.next2063, %n.vec2058
  br i1 %i.ia, label %middle.block2064, label %vector.body2059, !llvm.loop !179

middle.block2064:                                 ; preds = %vector.body2059
  %cmp.n2065 = icmp eq i64 %i.bb, %n.vec2058
  br i1 %cmp.n2065, label %.preheader1474, label %.lr.ph1619.preheader2067

.lr.ph1619.preheader2067:                         ; preds = %.lr.ph1619.preheader, %middle.block2064
  %.03751618.ph = phi i64 [ 0, %.lr.ph1619.preheader ], [ %n.vec2058, %middle.block2064 ]
  br label %.lr.ph1619

.lr.ph1506:                                       ; preds = %.preheader1483, %bb.ax
  %.110081505 = phi i64 [ %i.ie, %bb.ax ], [ %.010071613, %.preheader1483 ] ; 3 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.110081505
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !8  ; 2 uses
  %i.id = icmp eq i64 %i.ic, -1
  br i1 %i.id, label %bb.ax, label %.critedge

bb.ax:                                            ; preds = %.lr.ph1506
  %i.ie = add i64 %.110081505, 1                  ; 2 uses
  %exitcond1637.not = icmp eq i64 %i.ie, %i.bb
  br i1 %exitcond1637.not, label %.critedge, label %.lr.ph1506, !llvm.loop !180
end_hunk_1
begin_hunk_2_@_ZNK6casadi16SparsityInternal6_eraseERKSt6vectorIxSaIxEEbRS3_:bb.a
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.thread: ; preds = %bb.e
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gj = load ptr, ptr %9, align 8, !tbaa !84    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.thread
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !90
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gn) #30
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %i.go = load i64, ptr %i.gg, align 8, !tbaa !90
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gp) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br i1 %.1695, label %bb.ao, label %bb.ci

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br i1 %.1695, label %bb.ao, label %bb.ci

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.thread
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn250.ph = phi { ptr, i32 } [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182.thread ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184.thread ], [ %i.gi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn250 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn250.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.az) #29
  br label %bb.ci

bb.ap:                                            ; preds = %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EExx.exit
  %.pre302 = ptrtoint ptr %i.e to i64             ; 2 uses
  %.pre303 = ptrtoint ptr %i.c to i64             ; 2 uses
  %.pre305 = sub i64 %.pre302, %.pre303           ; 18 uses
  br i1 %3, label %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ap
  %i.gq = ashr exact i64 %.pre305, 3              ; 3 uses
  br label %.lr.ph.i

bb.aq:                                            ; preds = %.lr.ph.i
  %i.gr = add nuw i64 %.069.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gr, %i.gq
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !368

.lr.ph.i:                                         ; preds = %bb.aq, %.lr.ph.preheader.i
  %.069.i = phi i64 [ %i.gr, %bb.aq ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.069.i
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !8
  %i.gu = icmp slt i64 %i.gt, 0
  br i1 %i.gu, label %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit.thread, label %bb.aq

_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit.thread: ; preds = %.lr.ph.i, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #29
  %i.gv = icmp ugt i64 %.pre305, 9223372036854775800
  br i1 %i.gv, label %.noexc.i.i, label %bb.ar, !prof !272

.noexc.i.i:                                       ; preds = %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit.thread
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.ar:                                            ; preds = %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit.thread
  %i.gw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre305) #28 ; 10 uses
  store ptr %i.gw, ptr %26, align 8, !tbaa !61
  %i.gx = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.pre305 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %26, i64 16
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !65
  %i.ha = icmp samesign ugt i64 %.pre305, 8
  br i1 %i.ha, label %bb.as, label %bb.at, !prof !76

bb.as:                                            ; preds = %bb.ar
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gw, ptr nonnull align 8 %i.c, i64 %.pre305, i1 false)
  br label %.lr.ph294

bb.at:                                            ; preds = %bb.ar
  %i.hb = icmp eq i64 %.pre305, 8
  br i1 %i.hb, label %bb.au, label %.lr.ph294

bb.au:                                            ; preds = %bb.at
  store i64 %i.ak, ptr %i.gw, align 8, !tbaa !8
  br label %.lr.ph294

.lr.ph294:                                        ; preds = %bb.au, %bb.at, %bb.as
  store ptr %i.gy, ptr %i.gx, align 8, !tbaa !66
  br i1 %3, label %.lr.ph294.split.us.preheader, label %thread-pre-split

.lr.ph294.split.us.preheader:                     ; preds = %.lr.ph294
  %i.hc = add i64 %.pre302, -8
  %i.hd = sub i64 %i.hc, %.pre303                 ; 2 uses
  %i.he = lshr i64 %i.hd, 3
  %i.hf = add nuw nsw i64 %i.he, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hd, 24
  br i1 %min.iters.check, label %.lr.ph294.split.us.preheader409, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph294.split.us.preheader
  %n.vec = and i64 %i.hf, 4611686018427387900     ; 3 uses
  %i.hg = shl i64 %n.vec, 3
  %i.hh = getelementptr i8, ptr %i.gw, i64 %i.hg
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hi = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.gw, i64 %i.hi ; 3 uses
  %i.hj = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !8 ; 2 uses
  %wide.load408 = load <2 x i64>, ptr %i.hj, align 8, !tbaa !8 ; 2 uses
  %i.hk = add nsw <2 x i64> %wide.load, splat (i64 -1)
  %i.hl = add nsw <2 x i64> %wide.load408, splat (i64 -1)
  %i.hm = icmp sgt <2 x i64> %wide.load, zeroinitializer
  %i.hn = icmp sgt <2 x i64> %wide.load408, zeroinitializer
  %i.ho = select <2 x i1> %i.hm, <2 x i64> zeroinitializer, <2 x i64> %broadcast.splat
  %i.hp = select <2 x i1> %i.hn, <2 x i64> zeroinitializer, <2 x i64> %broadcast.splat
  %i.hq = add nsw <2 x i64> %i.hk, %i.ho
  %i.hr = add nsw <2 x i64> %i.hl, %i.hp
  store <2 x i64> %i.hq, ptr %next.gep, align 8, !tbaa !8
  store <2 x i64> %i.hr, ptr %i.hj, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hs = icmp eq i64 %index.next, %n.vec
  br i1 %i.hs, label %middle.block, label %vector.body, !llvm.loop !369

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hf, %n.vec
  br i1 %cmp.n, label %._crit_edge295, label %.lr.ph294.split.us.preheader409

.lr.ph294.split.us.preheader409:                  ; preds = %.lr.ph294.split.us.preheader, %middle.block
  %.sroa.0240.0293.us.ph = phi ptr [ %i.gw, %.lr.ph294.split.us.preheader ], [ %i.hh, %middle.block ]
  br label %.lr.ph294.split.us

.lr.ph294.split.us:                               ; preds = %.lr.ph294.split.us.preheader409, %.lr.ph294.split.us
  %.sroa.0240.0293.us = phi ptr [ %i.hw, %.lr.ph294.split.us ], [ %.sroa.0240.0293.us.ph, %.lr.ph294.split.us.preheader409 ] ; 3 uses
  %i.ht = load i64, ptr %.sroa.0240.0293.us, align 8, !tbaa !8 ; 2 uses
  %i.hu = add nsw i64 %i.ht, -1
  %.inv = icmp sgt i64 %i.ht, 0
  %i.hv = select i1 %.inv, i64 0, i64 %i.af
  %spec.select = add nsw i64 %i.hu, %i.hv
  store i64 %spec.select, ptr %.sroa.0240.0293.us, align 8, !tbaa !8
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0240.0293.us, i64 8 ; 2 uses
  %.not266.us = icmp eq ptr %i.hw, %i.gy
  br i1 %.not266.us, label %._crit_edge295, label %.lr.ph294.split.us, !llvm.loop !370

._crit_edge295:                                   ; preds = %bb.aw, %.lr.ph294.split.us, %middle.block
  invoke void @_ZNK6casadi16SparsityInternal6_eraseERKSt6vectorIxSaIxEEbRS3_(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(24) %26, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIxSaIxEED2Ev.exit187 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit189

thread-pre-split:                                 ; preds = %.lr.ph294, %bb.aw
  %.sroa.0240.0293 = phi ptr [ %i.hz, %bb.aw ], [ %i.gw, %.lr.ph294 ] ; 3 uses
  %.pr261 = load i64, ptr %.sroa.0240.0293, align 8, !tbaa !8 ; 2 uses
  %i.hx = icmp slt i64 %.pr261, 0
  br i1 %i.hx, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %thread-pre-split
  %i.hy = add nsw i64 %i.af, %.pr261
  store i64 %i.hy, ptr %.sroa.0240.0293, align 8, !tbaa !8
  br label %bb.aw

bb.aw:                                            ; preds = %thread-pre-split, %bb.av
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0240.0293, i64 8 ; 2 uses
  %.not266 = icmp eq ptr %i.hz, %i.gy
  br i1 %.not266, label %._crit_edge295, label %thread-pre-split, !llvm.loop !371

_ZNSt6vectorIxSaIxEED2Ev.exit187:                 ; preds = %._crit_edge295
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %.pre305) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  br label %bb.ch

_ZNSt6vectorIxSaIxEED2Ev.exit189:                 ; preds = %._crit_edge295
  %i.ia = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %.pre305) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  br label %bb.ci

.preheader.i:                                     ; preds = %bb.aq
  %.not16.not17.i = icmp ugt i64 %i.gq, 1
  br i1 %.not16.not17.i, label %.lr.ph.i191, label %.loopexit267

bb.ax:                                            ; preds = %.lr.ph.i191
  %i.ib = add nuw i64 %.01319.i, 1                ; 2 uses
  %exitcond.not.i192 = icmp eq i64 %i.ib, %i.gq
  br i1 %exitcond.not.i192, label %.loopexit267, label %.lr.ph.i191, !llvm.loop !372

.lr.ph.i191:                                      ; preds = %.preheader.i, %bb.ax
  %.014.i = phi i64 [ %i.id, %bb.ax ], [ %i.ak, %.preheader.i ]
  %.01319.i = phi i64 [ %i.ib, %bb.ax ], [ 1, %.preheader.i ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.01319.i
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !8  ; 2 uses
  %.not.not.i = icmp slt i64 %i.id, %.014.i
  br i1 %.not.not.i, label %bb.ay, label %bb.ax

bb.ay:                                            ; preds = %.lr.ph.i191
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  %i.ie = icmp ugt i64 %.pre305, 9223372036854775800
  br i1 %i.ie, label %.noexc.i.i195, label %bb.az, !prof !272

.noexc.i.i195:                                    ; preds = %bb.ay
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.az:                                            ; preds = %bb.ay
  %i.if = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre305) #28 ; 8 uses
  store ptr %i.if, ptr %27, align 8, !tbaa !61
  %i.ig = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 %.pre305 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !65
  %i.ij = icmp samesign ugt i64 %.pre305, 8
  br i1 %i.ij, label %bb.ba, label %bb.bb, !prof !76

bb.ba:                                            ; preds = %bb.az
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.if, ptr nonnull align 8 %i.c, i64 %.pre305, i1 false)
  br label %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit196

bb.bb:                                            ; preds = %bb.az
  %i.ik = icmp eq i64 %.pre305, 8
  br i1 %i.ik, label %bb.bc, label %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit196

bb.bc:                                            ; preds = %bb.bb
  store i64 %i.ak, ptr %i.if, align 8, !tbaa !8
  br label %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit196

_ZNSt6vectorIxSaIxEEC2ERKS1_.exit196:             ; preds = %bb.ba, %bb.bb, %bb.bc
  store ptr %i.ih, ptr %i.ig, align 8, !tbaa !66
  %i.il = lshr exact i64 %.pre305, 3
  %i.im = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.il, i1 true)
  %i.in = shl nuw nsw i64 %i.im, 1
  %i.io = xor i64 %i.in, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %i.if, ptr nonnull %i.ih, i64 noundef %i.io)
          to label %.noexc unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit202

.noexc:                                           ; preds = %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit196
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr nonnull %i.if, ptr nonnull %i.ih)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit202

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit: ; preds = %.noexc
  invoke void @_ZNK6casadi16SparsityInternal6_eraseERKSt6vectorIxSaIxEEbRS3_(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(24) %27, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIxSaIxEED2Ev.exit200 unwind label %_ZNSt6vectorIxSaIxEED2Ev.exit202

_ZNSt6vectorIxSaIxEED2Ev.exit200:                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %.pre305) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br label %bb.ch

_ZNSt6vectorIxSaIxEED2Ev.exit202:                 ; preds = %.noexc, %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit196, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit
  %i.ip = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %.pre305) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br label %bb.ci

.loopexit267:                                     ; preds = %bb.ax, %.preheader.i
  %i.iq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !66 ; 2 uses
  %i.is = load ptr, ptr %4, align 8, !tbaa !61    ; 8 uses
  %i.it = ptrtoint ptr %i.is to i64               ; 2 uses
  %.not.i.i203 = icmp eq ptr %i.ir, %i.is
  br i1 %.not.i.i203, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit, label %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %.loopexit267
  store ptr %i.is, ptr %i.iq, align 8, !tbaa !66
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %.loopexit267, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i
  %i.iu = phi ptr [ %i.ir, %.loopexit267 ], [ %i.is, %_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.iv = icmp eq i64 %i.af, 0
  br i1 %i.iv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  tail call void @_ZNK6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEE16shared_from_thisINS_8SparsityEEEKT_v(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.ch

bb.be:                                            ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %i.iw = load ptr, ptr %i.aa, align 8, !tbaa !83 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !8  ; 2 uses
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.iz
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !8  ; 4 uses
  %i.jc = icmp ugt i64 %i.jb, 1152921504606846975
  br i1 %i.jc, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.147) #27
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !65 ; 2 uses
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = sub i64 %i.jf, %i.it                    ; 2 uses
  %i.jh = ashr exact i64 %i.jg, 3
  %i.ji = icmp ult i64 %i.jh, %i.jb
  br i1 %i.ji, label %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIxSaIxEE7reserveEm.exit

_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i: ; preds = %bb.bg
  %i.jj = ptrtoint ptr %i.iu to i64
  %i.jk = sub i64 %i.jj, %i.it                    ; 3 uses
  %i.jl = shl nuw nsw i64 %i.jb, 3
  %i.jm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jl) #28 ; 5 uses
  %i.jn = icmp sgt i64 %i.jk, 0
  br i1 %i.jn, label %bb.bh, label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i

bb.bh:                                            ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jm, ptr align 8 %i.is, i64 %i.jk, i1 false)
  br label %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i

_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i: ; preds = %bb.bh, %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.is, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.is, i64 noundef %i.jg) #30
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit.i

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit.i: ; preds = %bb.bi, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i
  store ptr %i.jm, ptr %4, align 8, !tbaa !61
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jk ; 2 uses
  store ptr %i.jo, ptr %i.iq, align 8, !tbaa !66
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jb ; 2 uses
  store ptr %i.jp, ptr %i.jd, align 8, !tbaa !65
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !83, !noalias !373 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre298 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !8, !noalias !373
  br label %_ZNSt6vectorIxSaIxEE7reserveEm.exit

_ZNSt6vectorIxSaIxEE7reserveEm.exit:              ; preds = %bb.bg, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit.i
  %i.jq = phi ptr [ %i.is, %bb.bg ], [ %i.jm, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit.i ]
  %i.jr = phi ptr [ %i.je, %bb.bg ], [ %i.jp, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit.i ]
  %i.js = phi ptr [ %i.iu, %bb.bg ], [ %i.jo, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit.i ]
  %i.jt = phi i64 [ %i.iz, %bb.bg ], [ %.pre298, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit.i ] ; 3 uses
  %i.ju = phi ptr [ %i.iw, %bb.bg ], [ %.pre, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit.i ] ; 5 uses
  %i.jv = load ptr, ptr %2, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 16 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false), !alias.scope !373
  %.idx.i = shl nsw i64 %i.jt, 3
  %i.jy = add nsw i64 %.idx.i, 8                  ; 5 uses
  %i.jz = icmp ugt i64 %i.jy, 9223372036854775800
  br i1 %i.jz, label %.noexc.i.i205, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i205:                                    ; preds = %_ZNSt6vectorIxSaIxEE7reserveEm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27, !noalias !373
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %_ZNSt6vectorIxSaIxEE7reserveEm.exit
  %.not.i.i.i.i204 = icmp eq i64 %i.jt, -1
  br i1 %.not.i.i.i.i204, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr null, i64 %i.jy ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr %i.ka, ptr %i.kb, align 8, !tbaa !65, !alias.scope !373
  br label %_ZNK6casadi16SparsityInternal10get_colindEv.exit

_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.kc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jy) #28, !noalias !373 ; 6 uses
  store ptr %i.kc, ptr %28, align 8, !tbaa !61, !alias.scope !373
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.jy ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !65, !alias.scope !373
  %i.kf = icmp sgt i64 %i.jt, 0
  br i1 %i.kf, label %bb.bj, label %bb.bk, !prof !117

bb.bj:                                            ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.kc, ptr nonnull align 8 %i.jw, i64 %i.jy, i1 false), !noalias !373
  br label %_ZNK6casadi16SparsityInternal10get_colindEv.exit

bb.bk:                                            ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i.i
  %i.kg = load i64, ptr %i.jw, align 8, !tbaa !8, !noalias !373
  store i64 %i.kg, ptr %i.kc, align 8, !tbaa !8, !noalias !373
  br label %_ZNK6casadi16SparsityInternal10get_colindEv.exit

_ZNK6casadi16SparsityInternal10get_colindEv.exit: ; preds = %.thread.i.i.i, %bb.bj, %bb.bk
  %i.kh = phi ptr [ %i.kc, %bb.bj ], [ null, %.thread.i.i.i ], [ %i.kc, %bb.bk ]
  %i.ki = phi ptr [ %i.kd, %bb.bj ], [ %i.ka, %.thread.i.i.i ], [ %i.kd, %bb.bk ]
  %i.kj = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %i.ki, ptr %i.kj, align 8, !tbaa !66, !alias.scope !373
end_hunk_2
begin_hunk_3_@_ZNK6casadi16SparsityInternal6_eraseERKSt6vectorIxSaIxEES5_bRS3_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343, %bb.bl
  %.12155 = phi i1 [ true, %bb.bl ], [ %.11154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343 ], [ %.11154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342 ] ; 2 uses
  %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hv, %bb.bl ], [ %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343 ], [ %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #29
  %i.kq = load ptr, ptr %39, align 8, !tbaa !84   ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.ks = icmp eq ptr %i.kq, %i.kr
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345
  %i.kt = load i64, ptr %i.kr, align 8, !tbaa !90
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.ku) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346, %bb.bk
  %.13156 = phi i1 [ true, %bb.bk ], [ %.12155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346 ], [ %.12155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345 ] ; 2 uses
  %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hu, %bb.bk ], [ %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346 ], [ %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345 ] ; 2 uses
  %i.kv = load ptr, ptr %40, align 8, !tbaa !84   ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348
  %i.ky = load i64, ptr %i.kw, align 8, !tbaa !90
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.kz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349, %bb.bj
  %.14157 = phi i1 [ true, %bb.bj ], [ %.13156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349 ], [ %.13156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348 ] ; 2 uses
  %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ht, %bb.bj ], [ %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349 ], [ %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348 ] ; 2 uses
  %i.la = load ptr, ptr %41, align 8, !tbaa !84   ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.lc = icmp eq ptr %i.la, %i.lb
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351
  %i.ld = load i64, ptr %i.lb, align 8, !tbaa !90
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.le) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352, %bb.bi
  %.15158 = phi i1 [ true, %bb.bi ], [ %.14157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352 ], [ %.14157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351 ] ; 2 uses
  %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hs, %bb.bi ], [ %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352 ], [ %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  %i.lf = load ptr, ptr %27, align 8, !tbaa !84   ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !90
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355, %bb.bh
  %.16159 = phi i1 [ true, %bb.bh ], [ %.15158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355 ], [ %.15158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354 ] ; 2 uses
  %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hr, %bb.bh ], [ %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355 ], [ %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354 ] ; 4 uses
  %i.lk = load ptr, ptr %28, align 8, !tbaa !84   ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.lm = icmp eq ptr %i.lk, %i.ll
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357
  %i.ln = load i64, ptr %i.ll, align 8, !tbaa !90
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.lo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358
  %i.lp = load ptr, ptr %29, align 8, !tbaa !84   ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360.thread: ; preds = %bb.ao
  %i.ls = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lt = load ptr, ptr %29, align 8, !tbaa !84   ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.lv = icmp eq ptr %i.lt, %i.lu
  br i1 %i.lv, label %.sink.split732, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360.thread
  %i.lw = load i64, ptr %i.lu, align 8, !tbaa !90
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lx) #30
  br label %.sink.split732

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360
  %i.ly = load i64, ptr %i.lq, align 8, !tbaa !90
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.lz) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  br i1 %.16159, label %bb.by, label %bb.eh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  br i1 %.16159, label %bb.by, label %bb.eh

.sink.split732:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361.thread
  %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn480.ph = phi { ptr, i32 } [ %i.ls, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361.thread ], [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363.thread ], [ %i.ls, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  br label %bb.by

bb.by:                                            ; preds = %.sink.split732, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn480 = phi { ptr, i32 } [ %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361 ], [ %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363 ], [ %.pn182.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn480.ph, %.sink.split732 ]
  call void @__cxa_free_exception(ptr %i.gn) #29
  br label %bb.eh

_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EExx.exit289.thread476: ; preds = %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EExx.exit.thread461, %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EExx.exit289
  br i1 %4, label %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EExx.exit289.thread476
  br i1 %i.n, label %.loopexit520, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bz
  %i.ma = ptrtoint ptr %i.m to i64
  %i.mb = ptrtoint ptr %i.k to i64
  %i.mc = sub i64 %i.ma, %i.mb
  %i.md = ashr exact i64 %i.mc, 3
  br label %.lr.ph.i

bb.ca:                                            ; preds = %.lr.ph.i
  %i.me = add nuw i64 %.069.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.me, %i.md
  br i1 %exitcond.not.i, label %.loopexit520, label %.lr.ph.i, !llvm.loop !368

.lr.ph.i:                                         ; preds = %bb.ca, %.lr.ph.preheader.i
  %.069.i = phi i64 [ %i.me, %bb.ca ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.069.i
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !8
  %i.mh = icmp slt i64 %i.mg, 0
  br i1 %i.mh, label %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit, label %bb.ca

.loopexit520:                                     ; preds = %bb.ca, %bb.bz
  br i1 %i.fw, label %.loopexit518, label %.lr.ph.preheader.i366

.lr.ph.preheader.i366:                            ; preds = %.loopexit520
  %i.mi = ptrtoint ptr %i.fv to i64
  %i.mj = ptrtoint ptr %i.ft to i64
  %i.mk = sub i64 %i.mi, %i.mj
  %i.ml = ashr exact i64 %i.mk, 3
  br label %.lr.ph.i367

bb.cb:                                            ; preds = %.lr.ph.i367
  %i.mm = add nuw i64 %.069.i368, 1               ; 2 uses
  %exitcond.not.i369 = icmp eq i64 %i.mm, %i.ml
  br i1 %exitcond.not.i369, label %.loopexit518, label %.lr.ph.i367, !llvm.loop !368

.lr.ph.i367:                                      ; preds = %bb.cb, %.lr.ph.preheader.i366
  %.069.i368 = phi i64 [ %i.mm, %bb.cb ], [ 0, %.lr.ph.preheader.i366 ] ; 2 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.069.i368
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !8
  %i.mp = icmp slt i64 %i.mo, 0
  br i1 %i.mp, label %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit, label %bb.cb

.loopexit518:                                     ; preds = %bb.cb, %.loopexit520
  br i1 %i.n, label %.loopexit516, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit518
  %i.mq = ptrtoint ptr %i.m to i64
  %i.mr = ptrtoint ptr %i.k to i64
  %i.ms = sub i64 %i.mq, %i.mr
  %i.mt = ashr exact i64 %i.ms, 3                 ; 2 uses
  %.not16.not17.i = icmp ugt i64 %i.mt, 1
  br i1 %.not16.not17.i, label %.lr.ph.preheader.i372, label %.loopexit516

.lr.ph.preheader.i372:                            ; preds = %.preheader.i
  %.014.pre.i = load i64, ptr %i.k, align 8, !tbaa !8
  br label %.lr.ph.i373

bb.cc:                                            ; preds = %.lr.ph.i373
  %i.mu = add nuw i64 %.01319.i, 1                ; 2 uses
  %exitcond.not.i374 = icmp eq i64 %i.mu, %i.mt
  br i1 %exitcond.not.i374, label %.loopexit516, label %.lr.ph.i373, !llvm.loop !372

.lr.ph.i373:                                      ; preds = %bb.cc, %.lr.ph.preheader.i372
  %.014.i = phi i64 [ %i.mw, %bb.cc ], [ %.014.pre.i, %.lr.ph.preheader.i372 ]
  %.01319.i = phi i64 [ %i.mu, %bb.cc ], [ 1, %.lr.ph.preheader.i372 ] ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01319.i
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !8  ; 2 uses
  %.not.not.i = icmp slt i64 %i.mw, %.014.i
  br i1 %.not.not.i, label %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit, label %bb.cc

.loopexit516:                                     ; preds = %bb.cc, %.loopexit518, %.preheader.i
  br i1 %i.fw, label %.loopexit514, label %.preheader.i375

.preheader.i375:                                  ; preds = %.loopexit516
  %i.mx = ptrtoint ptr %i.fv to i64
  %i.my = ptrtoint ptr %i.ft to i64
  %i.mz = sub i64 %i.mx, %i.my
  %i.na = ashr exact i64 %i.mz, 3                 ; 2 uses
  %.not16.not17.i376 = icmp ugt i64 %i.na, 1
  br i1 %.not16.not17.i376, label %.lr.ph.preheader.i378, label %.loopexit514

.lr.ph.preheader.i378:                            ; preds = %.preheader.i375
  %.014.pre.i379 = load i64, ptr %i.ft, align 8, !tbaa !8
  br label %.lr.ph.i380

bb.cd:                                            ; preds = %.lr.ph.i380
  %i.nb = add nuw i64 %.01319.i382, 1             ; 2 uses
  %exitcond.not.i384 = icmp eq i64 %i.nb, %i.na
  br i1 %exitcond.not.i384, label %.loopexit514, label %.lr.ph.i380, !llvm.loop !372

.lr.ph.i380:                                      ; preds = %bb.cd, %.lr.ph.preheader.i378
  %.014.i381 = phi i64 [ %i.nd, %bb.cd ], [ %.014.pre.i379, %.lr.ph.preheader.i378 ]
  %.01319.i382 = phi i64 [ %i.nb, %bb.cd ], [ 1, %.lr.ph.preheader.i378 ] ; 2 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.01319.i382
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !8  ; 2 uses
  %.not.not.i383 = icmp slt i64 %i.nd, %.014.i381
  br i1 %.not.not.i383, label %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit, label %bb.cd

_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit: ; preds = %.lr.ph.i, %.lr.ph.i367, %.lr.ph.i373, %.lr.ph.i380, %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EExx.exit289.thread476
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #29
  %i.ne = ptrtoint ptr %i.m to i64
  %i.nf = ptrtoint ptr %i.k to i64
  %i.ng = sub i64 %i.ne, %i.nf                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, i8 0, i64 24, i1 false)
  br i1 %i.n, label %.thread494, label %bb.ce

.thread494:                                       ; preds = %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit
  %i.nh = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.ni = getelementptr inbounds i8, ptr null, i64 %i.ng ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %46, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 16, i1 false)
  store ptr %i.ni, ptr %i.nj, align 8, !tbaa !65
  br label %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit

bb.ce:                                            ; preds = %_ZN6casadi12has_negativeIxEEbRKSt6vectorIT_SaIS2_EE.exit
  %i.nk = icmp ugt i64 %i.ng, 9223372036854775800
  br i1 %i.nk, label %.noexc.i.i, label %bb.cf, !prof !272

.noexc.i.i:                                       ; preds = %bb.ce
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.cf:                                            ; preds = %bb.ce
  %i.nl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ng) #28 ; 8 uses
  store ptr %i.nl, ptr %46, align 8, !tbaa !61
  %i.nm = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 4 uses
  store ptr %i.nl, ptr %i.nm, align 8, !tbaa !66
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.ng ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %46, i64 16
  store ptr %i.nn, ptr %i.no, align 8, !tbaa !65
  %i.np = icmp samesign ugt i64 %i.ng, 8
  br i1 %i.np, label %bb.cg, label %bb.ch, !prof !117

bb.cg:                                            ; preds = %bb.cf
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nl, ptr align 8 %i.k, i64 %i.ng, i1 false)
  br label %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit

bb.ch:                                            ; preds = %bb.cf
  %i.nq = icmp eq i64 %i.ng, 8
  br i1 %i.nq, label %bb.ci, label %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit

bb.ci:                                            ; preds = %bb.ch
  %i.nr = load i64, ptr %i.k, align 8, !tbaa !8
  store i64 %i.nr, ptr %i.nl, align 8, !tbaa !8
  br label %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit

_ZNSt6vectorIxSaIxEEC2ERKS1_.exit:                ; preds = %.thread494, %bb.cg, %bb.ch, %bb.ci
  %i.ns = phi ptr [ %i.nn, %bb.cg ], [ %i.nn, %bb.ch ], [ %i.nn, %bb.ci ], [ %i.ni, %.thread494 ] ; 8 uses
  %i.nt = phi ptr [ %i.nm, %bb.cg ], [ %i.nm, %bb.ch ], [ %i.nm, %bb.ci ], [ %i.nh, %.thread494 ]
  %i.nu = phi ptr [ %i.nl, %bb.cg ], [ %i.nl, %bb.ch ], [ %i.nl, %bb.ci ], [ null, %.thread494 ] ; 11 uses
  store ptr %i.ns, ptr %i.nt, align 8, !tbaa !66
  %.not505549 = icmp eq ptr %i.nu, %i.ns
  br i1 %.not505549, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit, label %.lr.ph551.preheader

.lr.ph551.preheader:                              ; preds = %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit
  %i.nv = sext i1 %4 to i64
  br label %.lr.ph551

._crit_edge552:                                   ; preds = %bb.ck
  %i.nw = ptrtoint ptr %i.ns to i64
  %i.nx = ptrtoint ptr %i.nu to i64
  %i.ny = sub i64 %i.nw, %i.nx
  %i.nz = ashr exact i64 %i.ny, 3
  %i.oa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.nz, i1 true)
  %i.ob = shl nuw nsw i64 %i.oa, 1
  %i.oc = xor i64 %i.ob, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.nu, ptr %i.ns, i64 noundef %i.oc)
          to label %.noexc unwind label %bb.cq

.noexc:                                           ; preds = %._crit_edge552
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.nu, ptr %i.ns)
          to label %.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit_crit_edge unwind label %bb.cq

.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit_crit_edge: ; preds = %.noexc
  %.pre567 = load ptr, ptr %i.fu, align 8, !tbaa !66
  %.pre568 = load ptr, ptr %3, align 8, !tbaa !61
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit

.lr.ph551:                                        ; preds = %.lr.ph551.preheader, %bb.ck
  %.sroa.0451.0550 = phi ptr [ %i.oi, %bb.ck ], [ %i.nu, %.lr.ph551.preheader ] ; 3 uses
  %i.od = load i64, ptr %.sroa.0451.0550, align 8, !tbaa !8
  %i.oe = add nsw i64 %i.od, %i.nv                ; 2 uses
  %i.of = icmp slt i64 %i.oe, 0                   ; 2 uses
  %i.og = or i1 %4, %i.of
  br i1 %i.og, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.lr.ph551
  %i.oh = select i1 %i.of, i64 %i.g, i64 0
  %simplifycfg.merge = add nsw i64 %i.oe, %i.oh
  store i64 %simplifycfg.merge, ptr %.sroa.0451.0550, align 8, !tbaa !8
  br label %bb.ck

bb.ck:                                            ; preds = %.lr.ph551, %bb.cj
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.0451.0550, i64 8 ; 2 uses
  %.not505 = icmp eq ptr %i.oi, %i.ns
  br i1 %.not505, label %._crit_edge552, label %.lr.ph551, !llvm.loop !388

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit: ; preds = %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit, %.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit_crit_edge
  %i.oj = phi ptr [ %.pre568, %.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit_crit_edge ], [ %i.ft, %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit ] ; 4 uses
  %i.ok = phi ptr [ %.pre567, %.noexc._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit_crit_edge ], [ %i.fv, %_ZNSt6vectorIxSaIxEEC2ERKS1_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #29
  %i.ol = ptrtoint ptr %i.ok to i64
  %i.om = ptrtoint ptr %i.oj to i64
  %i.on = sub i64 %i.ol, %i.om                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %47, i8 0, i64 24, i1 false)
  %.not.i.i.i.i388 = icmp eq ptr %i.ok, %i.oj
  br i1 %.not.i.i.i.i388, label %.thread495, label %bb.cl

.thread495:                                       ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit
  %i.oo = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.op = getelementptr inbounds i8, ptr null, i64 %i.on ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %47, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, i8 0, i64 16, i1 false)
  store ptr %i.op, ptr %i.oq, align 8, !tbaa !65
  br label %bb.cp

bb.cl:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit
  %i.or = icmp ugt i64 %i.on, 9223372036854775800
  br i1 %i.or, label %.noexc.i.i390, label %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i389, !prof !272

.noexc.i.i390:                                    ; preds = %bb.cl
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc391 unwind label %bb.cr

.noexc391:                                        ; preds = %.noexc.i.i390
  unreachable

_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i389: ; preds = %bb.cl
  %i.os = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.on) #28
          to label %.noexc392 unwind label %bb.cr ; 8 uses

.noexc392:                                        ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i389
  store ptr %i.os, ptr %47, align 8, !tbaa !61
  %i.ot = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 4 uses
  store ptr %i.os, ptr %i.ot, align 8, !tbaa !66
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.on ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %i.ou, ptr %i.ov, align 8, !tbaa !65
  %i.ow = icmp samesign ugt i64 %i.on, 8
  br i1 %i.ow, label %bb.cm, label %bb.cn, !prof !117

bb.cm:                                            ; preds = %.noexc392
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.os, ptr align 8 %i.oj, i64 %i.on, i1 false)
  br label %bb.cp

bb.cn:                                            ; preds = %.noexc392
  %i.ox = icmp eq i64 %i.on, 8
  br i1 %i.ox, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.oy = load i64, ptr %i.oj, align 8, !tbaa !8
  store i64 %i.oy, ptr %i.os, align 8, !tbaa !8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm, %.thread495
  %i.oz = phi ptr [ %i.ou, %bb.cm ], [ %i.ou, %bb.cn ], [ %i.ou, %bb.co ], [ %i.op, %.thread495 ] ; 8 uses
  %i.pa = phi ptr [ %i.ot, %bb.cm ], [ %i.ot, %bb.cn ], [ %i.ot, %bb.co ], [ %i.oo, %.thread495 ]
  %i.pb = phi ptr [ %i.os, %bb.cm ], [ %i.os, %bb.cn ], [ %i.os, %bb.co ], [ null, %.thread495 ] ; 11 uses
  store ptr %i.oz, ptr %i.pa, align 8, !tbaa !66
  %.not506553 = icmp eq ptr %i.pb, %i.oz
  br i1 %.not506553, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit397, label %.lr.ph556

._crit_edge557:                                   ; preds = %bb.cu
  %i.pc = ptrtoint ptr %i.oz to i64
  %i.pd = ptrtoint ptr %i.pb to i64
  %i.pe = sub i64 %i.pc, %i.pd
  %i.pf = ashr exact i64 %i.pe, 3
  %i.pg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.pf, i1 true)
  %i.ph = shl nuw nsw i64 %i.pg, 1
  %i.pi = xor i64 %i.ph, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.pb, ptr %i.oz, i64 noundef %i.pi)
          to label %.noexc395 unwind label %bb.cy

.noexc395:                                        ; preds = %._crit_edge557
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.pb, ptr %i.oz)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_.exit397 unwind label %bb.cy

bb.cq:                                            ; preds = %.noexc, %._crit_edge552
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cr:                                            ; preds = %_ZNSt15__new_allocatorIxE8allocateEmPKv.exit.i.i.i.i389, %.noexc.i.i390
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit402

end_hunk_3
begin_hunk_4_@_ZNK6casadi16SparsityInternal12uni_coloringERKNS_8SparsityEx:bb.a

.loopexit:                                        ; preds = %.noexc101, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i99
  %i.cm = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i99 ], [ %i.ci, %.noexc101 ] ; 18 uses
  %i.cn = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i99 ], [ %i.cl, %.noexc101 ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.cp = ptrtoint ptr %.sroa.0126.0 to i64       ; 4 uses
  %i.cq = sub i64 %.0.i.i.i.i.i.i.i, %i.cp        ; 6 uses
  %i.cr = ashr exact i64 %i.cq, 3                 ; 5 uses
  %.not238 = icmp eq i64 %.0.i.i.i.i.i.i.i, %i.cp
  br i1 %.not238, label %.preheader, label %.lr.ph224.preheader

.lr.ph224.preheader:                              ; preds = %.loopexit
  %xtraiter = and i64 %i.cr, 3                    ; 3 uses
  %i.cs = icmp ult i64 %i.cr, 4
  br i1 %i.cs, label %.lr.ph224.epil.preheader, label %.lr.ph224.preheader.new

.lr.ph224.preheader.new:                          ; preds = %.lr.ph224.preheader
  %unroll_iter = and i64 %i.cr, -4
  br label %.lr.ph224

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph224
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph224.epil.preheader

.lr.ph224.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph224.preheader
  %.057222.epil.init = phi i64 [ 0, %.lr.ph224.preheader ], [ %i.ed, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod314 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod314)
  br label %.lr.ph224.epil

.lr.ph224.epil:                                   ; preds = %.lr.ph224.epil, %.lr.ph224.epil.preheader
  %.057222.epil = phi i64 [ %i.cz, %.lr.ph224.epil ], [ %.057222.epil.init, %.lr.ph224.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph224.epil ], [ 0, %.lr.ph224.epil.preheader ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0126.0, i64 %.057222.epil
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !8
  %i.cv = getelementptr [8 x i8], ptr %i.cm, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 8      ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !8
  %i.cy = add nsw i64 %i.cx, 1
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !8
  %i.cz = add nuw nsw i64 %.057222.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph224.epil, !llvm.loop !573

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph224.epil, %.loopexit
  %.not239 = icmp eq ptr %.sroa.18.0.lcssa, %.sroa.0136.0.lcssa
  br i1 %.not239, label %._crit_edge229, label %.lr.ph228

.lr.ph228:                                        ; preds = %.preheader
  %.pre253 = load i64, ptr %i.cm, align 8, !tbaa !8 ; 2 uses
  %xtraiter315 = and i64 %i.ce, 3                 ; 3 uses
  %i.da = icmp ult i64 %i.ce, 4
  br i1 %i.da, label %.epil.preheader, label %.lr.ph228.new

.lr.ph228.new:                                    ; preds = %.lr.ph228
  %unroll_iter319 = and i64 %i.ce, -4
  br label %bb.y

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit106

.lr.ph224:                                        ; preds = %.lr.ph224, %.lr.ph224.preheader.new
  %.057222 = phi i64 [ 0, %.lr.ph224.preheader.new ], [ %i.ed, %.lr.ph224 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph224.preheader.new ], [ %niter.next.3, %.lr.ph224 ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0126.0, i64 %.057222
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !8
  %i.de = getelementptr [8 x i8], ptr %i.cm, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 8      ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !8
  %i.dh = add nsw i64 %i.dg, 1
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !8
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0126.0, i64 %.057222
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !8
  %i.dl = getelementptr [8 x i8], ptr %i.cm, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 8      ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !8
  %i.do = add nsw i64 %i.dn, 1
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !8
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0126.0, i64 %.057222
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !8
  %i.ds = getelementptr [8 x i8], ptr %i.cm, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 8      ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !8
  %i.dv = add nsw i64 %i.du, 1
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !8
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0126.0, i64 %.057222
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !8
  %i.dz = getelementptr [8 x i8], ptr %i.cm, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 8      ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !8
  %i.ec = add nsw i64 %i.eb, 1
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !8
  %i.ed = add nuw nsw i64 %.057222, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph224, !llvm.loop !574

._crit_edge229.loopexit.unr-lcssa:                ; preds = %bb.y
  %lcmp.mod317.not = icmp eq i64 %xtraiter315, 0
  br i1 %lcmp.mod317.not, label %._crit_edge229, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge229.loopexit.unr-lcssa, %.lr.ph228
  %.epil.init = phi i64 [ %.pre253, %.lr.ph228 ], [ %i.fj, %._crit_edge229.loopexit.unr-lcssa ]
  %.056227.epil.init = phi i64 [ 0, %.lr.ph228 ], [ %i.fg, %._crit_edge229.loopexit.unr-lcssa ]
  %lcmp.mod318 = icmp ne i64 %xtraiter315, 0
  tail call void @llvm.assume(i1 %lcmp.mod318)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %i.ee = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.ei, %bb.v ]
  %.056227.epil = phi i64 [ %.056227.epil.init, %.epil.preheader ], [ %i.ef, %bb.v ]
  %epil.iter316 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter316.next, %bb.v ]
  %i.ef = add nuw nsw i64 %.056227.epil, 1        ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ef ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !8
  %i.ei = add nsw i64 %i.eh, %i.ee                ; 2 uses
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !8
  %epil.iter316.next = add i64 %epil.iter316, 1   ; 2 uses
  %epil.iter316.cmp.not = icmp eq i64 %epil.iter316.next, %xtraiter315
  br i1 %epil.iter316.cmp.not, label %._crit_edge229, label %bb.v, !llvm.loop !575

._crit_edge229:                                   ; preds = %._crit_edge229.loopexit.unr-lcssa, %bb.v, %.preheader
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.not278 = icmp eq i64 %.0.i.i.i.i.i.i.i, %i.cp
  br i1 %.not278, label %._crit_edge232, label %bb.w

bb.w:                                             ; preds = %._crit_edge229
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.el = icmp ugt i64 %i.cr, 1152921504606846975
  br i1 %i.el, label %bb.x, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.145) #27
          to label %.noexc120 unwind label %bb.z

.noexc120:                                        ; preds = %bb.x
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.w
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #28
          to label %.noexc121 unwind label %bb.z  ; 7 uses

.noexc121:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.em, align 8, !tbaa !8
  %i.en = add nsw i64 %i.cr, -1                   ; 2 uses
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc121
  %i.ep = getelementptr i8, ptr %i.em, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.en, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ep, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !8
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %.noexc121, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i
  store ptr %i.em, ptr %5, align 8, !tbaa !61
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.cq ; 2 uses
  store ptr %i.eq, ptr %i.ej, align 8, !tbaa !66
  store ptr %i.eq, ptr %i.ek, align 8, !tbaa !65
  %i.er = ashr exact i64 %i.cq, 3                 ; 2 uses
  %i.es = icmp eq i64 %i.cq, 8
  br i1 %i.es, label %.epil.preheader321, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit.new

_ZNSt6vectorIxSaIxEE6resizeEm.exit.new:           ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %unroll_iter326 = and i64 %i.er, -2
  br label %bb.ac

bb.y:                                             ; preds = %bb.y, %.lr.ph228.new
  %i.et = phi i64 [ %.pre253, %.lr.ph228.new ], [ %i.fj, %bb.y ]
  %.056227 = phi i64 [ 0, %.lr.ph228.new ], [ %i.fg, %bb.y ] ; 4 uses
  %niter320 = phi i64 [ 0, %.lr.ph228.new ], [ %niter320.next.3, %bb.y ]
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.056227
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !8
  %i.ex = add nsw i64 %i.ew, %i.et                ; 2 uses
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !8
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.056227
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !8
  %i.fb = add nsw i64 %i.fa, %i.ex                ; 2 uses
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !8
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.056227
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !8
  %i.ff = add nsw i64 %i.fe, %i.fb                ; 2 uses
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !8
  %i.fg = add nuw nsw i64 %.056227, 4             ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.fg ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !8
  %i.fj = add nsw i64 %i.fi, %i.ff                ; 3 uses
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !8
  %niter320.next.3 = add nuw i64 %niter320, 4     ; 2 uses
  %niter320.ncmp.3 = icmp eq i64 %niter320.next.3, %unroll_iter319
  br i1 %niter320.ncmp.3, label %._crit_edge229.loopexit.unr-lcssa, label %bb.y, !llvm.loop !576

._crit_edge232.loopexit.unr-lcssa:                ; preds = %bb.ac
  %i.fk = and i64 %i.cq, 8
  %lcmp.mod324.not = icmp eq i64 %i.fk, 0
  br i1 %lcmp.mod324.not, label %._crit_edge232, label %.epil.preheader321

.epil.preheader321:                               ; preds = %._crit_edge232.loopexit.unr-lcssa, %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %.055230.epil.init = phi i64 [ 0, %_ZNSt6vectorIxSaIxEE6resizeEm.exit ], [ %i.gw, %._crit_edge232.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod325 = trunc i64 %i.er to i1
  tail call void @llvm.assume(i1 %lcmp.mod325)
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0126.0, i64 %.055230.epil.init
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !8
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.fm ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !8  ; 2 uses
  %i.fp = add nsw i64 %i.fo, 1
  store i64 %i.fp, ptr %i.fn, align 8, !tbaa !8
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.fo
  store i64 %.055230.epil.init, ptr %i.fq, align 8, !tbaa !8
  br label %._crit_edge232

._crit_edge232:                                   ; preds = %.epil.preheader321, %._crit_edge232.loopexit.unr-lcssa, %._crit_edge229
  %i.fr = ptrtoint ptr %i.cn to i64
  %i.fs = ptrtoint ptr %i.cm to i64
  %i.ft = sub i64 %i.fr, %i.fs                    ; 2 uses
  %i.fu = icmp sgt i64 %i.ft, 8
  br i1 %i.fu, label %.lr.ph235.preheader, label %._crit_edge236

.lr.ph235.preheader:                              ; preds = %._crit_edge232
  %scevgep = getelementptr i8, ptr %i.cm, i64 8
  %i.fv = add nsw i64 %i.ft, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %i.cm, i64 %i.fv, i1 false), !tbaa !8
  br label %._crit_edge236

bb.z:                                             ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i, %bb.x, %._crit_edge236
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = load ptr, ptr %5, align 8, !tbaa !61    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !65
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.gd = load ptr, ptr %4, align 8, !tbaa !61    ; 3 uses
  %.not.i.i.i105 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorIxSaIxEED2Ev.exit106, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !65
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit106

bb.ac:                                            ; preds = %bb.ac, %_ZNSt6vectorIxSaIxEE6resizeEm.exit.new
  %.055230 = phi i64 [ 0, %_ZNSt6vectorIxSaIxEE6resizeEm.exit.new ], [ %i.gw, %bb.ac ] ; 4 uses
  %niter327 = phi i64 [ 0, %_ZNSt6vectorIxSaIxEE6resizeEm.exit.new ], [ %niter327.next.1, %bb.ac ]
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0126.0, i64 %.055230
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !8
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.gk ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !8  ; 2 uses
  %i.gn = add nsw i64 %i.gm, 1
  store i64 %i.gn, ptr %i.gl, align 8, !tbaa !8
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.gm
  store i64 %.055230, ptr %i.go, align 8, !tbaa !8
  %i.gp = or disjoint i64 %.055230, 1             ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0126.0, i64 %i.gp
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !8
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.gr ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !8  ; 2 uses
  %i.gu = add nsw i64 %i.gt, 1
  store i64 %i.gu, ptr %i.gs, align 8, !tbaa !8
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.gt
  store i64 %i.gp, ptr %i.gv, align 8, !tbaa !8
  %i.gw = add nuw nsw i64 %.055230, 2             ; 2 uses
  %niter327.next.1 = add i64 %niter327, 2         ; 2 uses
  %niter327.ncmp.1 = icmp eq i64 %niter327.next.1, %unroll_iter326
  br i1 %niter327.ncmp.1, label %._crit_edge232.loopexit.unr-lcssa, label %bb.ac, !llvm.loop !577

._crit_edge236:                                   ; preds = %.lr.ph235.preheader, %._crit_edge232
  store i64 0, ptr %i.cm, align 8, !tbaa !8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !8
  invoke void @_ZN6casadi8SparsityC1ExxRKSt6vectorIxSaIxEES5_b(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.gy, i64 noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext false)
          to label %bb.ad unwind label %bb.z

bb.ad:                                            ; preds = %._crit_edge236
  %i.gz = load ptr, ptr %5, align 8, !tbaa !61    ; 3 uses
  %.not.i.i.i107 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i107, label %_ZNSt6vectorIxSaIxEED2Ev.exit108, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !65
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.gz to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.he) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit108

_ZNSt6vectorIxSaIxEED2Ev.exit108:                 ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.hf = load ptr, ptr %4, align 8, !tbaa !61    ; 3 uses
  %.not.i.i.i109 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i109, label %.critedge85, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit108
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !65
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #30
  br label %.critedge85

_ZNSt6vectorIxSaIxEED2Ev.exit106:                 ; preds = %bb.ab, %_ZNSt6vectorIxSaIxEED2Ev.exit, %bb.u
  %.pn76 = phi { ptr, i32 } [ %i.db, %bb.u ], [ %i.fw, %_ZNSt6vectorIxSaIxEED2Ev.exit ], [ %i.fw, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.ah

.critedge85:                                      ; preds = %bb.af, %_ZNSt6vectorIxSaIxEED2Ev.exit108
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %.not.i.i.i111 = icmp eq ptr %.sroa.0126.0, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIxSaIxEED2Ev.exit112, label %.critedge85.thread

.critedge85.thread:                               ; preds = %..critedge85.thread_crit_edge, %.critedge85
  %.pre-phi256 = phi i64 [ %.pre255, %..critedge85.thread_crit_edge ], [ %i.cp, %.critedge85 ]
  %.sroa.0136.3163 = phi ptr [ %.sroa.0136.8, %..critedge85.thread_crit_edge ], [ %.sroa.0136.0.lcssa, %.critedge85 ]
  %.sroa.29.3161 = phi ptr [ %.sroa.29.8, %..critedge85.thread_crit_edge ], [ %.sroa.29.0.lcssa, %.critedge85 ]
  %i.hl = sub i64 %.sroa.17.0, %.pre-phi256
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0126.0, i64 noundef %i.hl) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit112

_ZNSt6vectorIxSaIxEED2Ev.exit112:                 ; preds = %.critedge85, %.critedge85.thread
  %.sroa.0136.3164 = phi ptr [ %.sroa.0136.0.lcssa, %.critedge85 ], [ %.sroa.0136.3163, %.critedge85.thread ] ; 3 uses
  %.sroa.29.3162 = phi ptr [ %.sroa.29.0.lcssa, %.critedge85 ], [ %.sroa.29.3161, %.critedge85.thread ]
  %.not.i.i.i113 = icmp eq ptr %.sroa.0136.3164, null
  br i1 %.not.i.i.i113, label %_ZNSt6vectorIxSaIxEED2Ev.exit114, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit112
  %i.hm = ptrtoint ptr %.sroa.29.3162 to i64
  %i.hn = ptrtoint ptr %.sroa.0136.3164 to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.3164, i64 noundef %i.ho) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit114

_ZNSt6vectorIxSaIxEED2Ev.exit114:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit112, %bb.ag
  ret void

bb.ah:                                            ; preds = %bb.g, %_ZNSt6vectorIxSaIxEED2Ev.exit106, %bb.f
  %.sroa.29.4 = phi ptr [ %.sroa.29.7281, %bb.g ], [ %.sroa.29.0.lcssa, %_ZNSt6vectorIxSaIxEED2Ev.exit106 ], [ %.sroa.29.7281, %bb.f ] ; 2 uses
  %.sroa.0136.4 = phi ptr [ %.sroa.18.3282, %bb.g ], [ %.sroa.0136.0.lcssa, %_ZNSt6vectorIxSaIxEED2Ev.exit106 ], [ %.sroa.18.3282, %bb.f ] ; 2 uses
  %.pn76.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.g ], [ %.pn76, %_ZNSt6vectorIxSaIxEED2Ev.exit106 ], [ %i.x, %bb.f ] ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %.sroa.0126.0, null
  br i1 %.not.i.i.i115, label %_ZNSt6vectorIxSaIxEED2Ev.exit116, label %.thread

.thread:                                          ; preds = %.loopexit182, %.loopexit.split-lp, %bb.q, %bb.ah
  %.pn76.pn.pn.pn173 = phi { ptr, i32 } [ %.pn76.pn.pn.pn, %bb.ah ], [ %i.bw, %bb.q ], [ %lpad.loopexit, %.loopexit182 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.sroa.0136.4171 = phi ptr [ %.sroa.0136.4, %bb.ah ], [ %.sroa.0136.8, %bb.q ], [ %.sroa.0136.0216, %.loopexit182 ], [ %.sroa.0136.0216, %.loopexit.split-lp ]
  %.sroa.29.4169 = phi ptr [ %.sroa.29.4, %bb.ah ], [ %.sroa.29.8, %bb.q ], [ %.sroa.18.0215, %.loopexit182 ], [ %.sroa.18.0215, %.loopexit.split-lp ]
  %i.hp = ptrtoint ptr %.sroa.0126.0 to i64
  %i.hq = sub i64 %.sroa.17.0, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0126.0, i64 noundef %i.hq) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit116

_ZNSt6vectorIxSaIxEED2Ev.exit116:                 ; preds = %bb.ah, %.thread
  %.sroa.29.6 = phi ptr [ %.sroa.29.4169, %.thread ], [ %.sroa.29.4, %bb.ah ]
  %.sroa.0136.6 = phi ptr [ %.sroa.0136.4171, %.thread ], [ %.sroa.0136.4, %bb.ah ] ; 2 uses
  %.pn76.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn.pn173, %.thread ], [ %.pn76.pn.pn.pn, %bb.ah ] ; 2 uses
  %.not.i.i.i117 = icmp eq ptr %.sroa.0136.6, null
  br i1 %.not.i.i.i117, label %_ZNSt6vectorIxSaIxEED2Ev.exit118, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit116.thread, %_ZNSt6vectorIxSaIxEED2Ev.exit116
  %.pn76.pn.pn.pn.pn.pn291 = phi { ptr, i32 } [ %i.w, %_ZNSt6vectorIxSaIxEED2Ev.exit116.thread ], [ %.pn76.pn.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit116 ]
  %.sroa.0136.6290 = phi ptr [ %i.g, %_ZNSt6vectorIxSaIxEED2Ev.exit116.thread ], [ %.sroa.0136.6, %_ZNSt6vectorIxSaIxEED2Ev.exit116 ] ; 2 uses
  %.sroa.29.6289 = phi ptr [ %i.h, %_ZNSt6vectorIxSaIxEED2Ev.exit116.thread ], [ %.sroa.29.6, %_ZNSt6vectorIxSaIxEED2Ev.exit116 ]
  %i.hr = ptrtoint ptr %.sroa.29.6289 to i64
  %i.hs = ptrtoint ptr %.sroa.0136.6290 to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0136.6290, i64 noundef %i.ht) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit118

_ZNSt6vectorIxSaIxEED2Ev.exit118:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit116, %bb.ai
  %.pn76.pn.pn.pn.pn.pn292 = phi { ptr, i32 } [ %.pn76.pn.pn.pn.pn.pn, %_ZNSt6vectorIxSaIxEED2Ev.exit116 ], [ %.pn76.pn.pn.pn.pn.pn291, %bb.ai ]
  resume { ptr, i32 } %.pn76.pn.pn.pn.pn.pn292
}

; Function Attrs: mustprogress uwtable
end_hunk_4
begin_hunk_5_@_ZNK6casadi16SparsityInternal14star_coloring2Exx:bb.a
.loopexit:                                        ; preds = %.noexc421, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i419
  %i.qf = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i419 ], [ %i.qb, %.noexc421 ] ; 18 uses
  %i.qg = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i419 ], [ %i.qe, %.noexc421 ] ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.qg, ptr %i.qh, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %i.qi = ptrtoint ptr %.0.i.i.i.i.i.i.i61261776879310771133 to i64
  %i.qj = ptrtoint ptr %.sroa.0538.061161976379510691134 to i64
  %i.qk = sub i64 %i.qi, %i.qj                    ; 6 uses
  %i.ql = ashr exact i64 %i.qk, 3                 ; 5 uses
  %.not887 = icmp eq ptr %.0.i.i.i.i.i.i.i61261776879310771133, %.sroa.0538.061161976379510691134
  br i1 %.not887, label %.preheader, label %.lr.ph874.preheader

.lr.ph874.preheader:                              ; preds = %.loopexit
  %xtraiter1239 = and i64 %i.ql, 3                ; 3 uses
  %i.qm = icmp ult i64 %i.ql, 4
  br i1 %i.qm, label %.lr.ph874.epil.preheader, label %.lr.ph874.preheader.new

.lr.ph874.preheader.new:                          ; preds = %.lr.ph874.preheader
  %unroll_iter = and i64 %i.ql, -4
  br label %.lr.ph874

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph874
  %lcmp.mod1240.not = icmp eq i64 %xtraiter1239, 0
  br i1 %lcmp.mod1240.not, label %.preheader, label %.lr.ph874.epil.preheader

.lr.ph874.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph874.preheader
  %.0169872.epil.init = phi i64 [ 0, %.lr.ph874.preheader ], [ %i.rx, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod1241 = icmp ne i64 %xtraiter1239, 0
  call void @llvm.assume(i1 %lcmp.mod1241)
  br label %.lr.ph874.epil

.lr.ph874.epil:                                   ; preds = %.lr.ph874.epil, %.lr.ph874.epil.preheader
  %.0169872.epil = phi i64 [ %i.qt, %.lr.ph874.epil ], [ %.0169872.epil.init, %.lr.ph874.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph874.epil ], [ 0, %.lr.ph874.epil.preheader ]
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0538.061161976379510691134, i64 %.0169872.epil
  %i.qo = load i64, ptr %i.qn, align 8, !tbaa !8
  %i.qp = getelementptr [8 x i8], ptr %i.qf, i64 %i.qo
  %i.qq = getelementptr i8, ptr %i.qp, i64 8      ; 2 uses
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !8
  %i.qs = add nsw i64 %i.qr, 1
  store i64 %i.qs, ptr %i.qq, align 8, !tbaa !8
  %i.qt = add nuw nsw i64 %.0169872.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1239
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph874.epil, !llvm.loop !598

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph874.epil, %.loopexit
  %.not888 = icmp eq ptr %.sroa.21.0.lcssa, %.sroa.0557.0.lcssa
  br i1 %.not888, label %._crit_edge879, label %.lr.ph878

.lr.ph878:                                        ; preds = %.preheader
  %.pre916 = load i64, ptr %i.qf, align 8, !tbaa !8 ; 2 uses
  %xtraiter1242 = and i64 %i.px, 3                ; 3 uses
  %i.qu = icmp ult i64 %i.px, 4
  br i1 %i.qu, label %.epil.preheader, label %.lr.ph878.new

.lr.ph878.new:                                    ; preds = %.lr.ph878
  %unroll_iter1246 = and i64 %i.px, -4
  br label %bb.da

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit428

.lr.ph874:                                        ; preds = %.lr.ph874, %.lr.ph874.preheader.new
  %.0169872 = phi i64 [ 0, %.lr.ph874.preheader.new ], [ %i.rx, %.lr.ph874 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph874.preheader.new ], [ %niter.next.3, %.lr.ph874 ]
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0538.061161976379510691134, i64 %.0169872
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !8
  %i.qy = getelementptr [8 x i8], ptr %i.qf, i64 %i.qx
  %i.qz = getelementptr i8, ptr %i.qy, i64 8      ; 2 uses
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !8
  %i.rb = add nsw i64 %i.ra, 1
  store i64 %i.rb, ptr %i.qz, align 8, !tbaa !8
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0538.061161976379510691134, i64 %.0169872
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !8
  %i.rf = getelementptr [8 x i8], ptr %i.qf, i64 %i.re
  %i.rg = getelementptr i8, ptr %i.rf, i64 8      ; 2 uses
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !8
  %i.ri = add nsw i64 %i.rh, 1
  store i64 %i.ri, ptr %i.rg, align 8, !tbaa !8
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0538.061161976379510691134, i64 %.0169872
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !8
  %i.rm = getelementptr [8 x i8], ptr %i.qf, i64 %i.rl
  %i.rn = getelementptr i8, ptr %i.rm, i64 8      ; 2 uses
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !8
  %i.rp = add nsw i64 %i.ro, 1
  store i64 %i.rp, ptr %i.rn, align 8, !tbaa !8
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0538.061161976379510691134, i64 %.0169872
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !8
  %i.rt = getelementptr [8 x i8], ptr %i.qf, i64 %i.rs
  %i.ru = getelementptr i8, ptr %i.rt, i64 8      ; 2 uses
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !8
  %i.rw = add nsw i64 %i.rv, 1
  store i64 %i.rw, ptr %i.ru, align 8, !tbaa !8
  %i.rx = add nuw nsw i64 %.0169872, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph874, !llvm.loop !599

._crit_edge879.loopexit.unr-lcssa:                ; preds = %bb.da
  %lcmp.mod1244.not = icmp eq i64 %xtraiter1242, 0
  br i1 %lcmp.mod1244.not, label %._crit_edge879, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge879.loopexit.unr-lcssa, %.lr.ph878
  %.epil.init = phi i64 [ %.pre916, %.lr.ph878 ], [ %i.td, %._crit_edge879.loopexit.unr-lcssa ]
  %.0168877.epil.init = phi i64 [ 0, %.lr.ph878 ], [ %i.ta, %._crit_edge879.loopexit.unr-lcssa ]
  %lcmp.mod1245 = icmp ne i64 %xtraiter1242, 0
  call void @llvm.assume(i1 %lcmp.mod1245)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %.epil.preheader
  %i.ry = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.sc, %bb.cx ]
  %.0168877.epil = phi i64 [ %.0168877.epil.init, %.epil.preheader ], [ %i.rz, %bb.cx ]
  %epil.iter1243 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter1243.next, %bb.cx ]
  %i.rz = add nuw nsw i64 %.0168877.epil, 1       ; 2 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %i.rz ; 2 uses
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !8
  %i.sc = add nsw i64 %i.sb, %i.ry                ; 2 uses
  store i64 %i.sc, ptr %i.sa, align 8, !tbaa !8
  %epil.iter1243.next = add i64 %epil.iter1243, 1 ; 2 uses
  %epil.iter1243.cmp.not = icmp eq i64 %epil.iter1243.next, %xtraiter1242
  br i1 %epil.iter1243.cmp.not, label %._crit_edge879, label %bb.cx, !llvm.loop !600

._crit_edge879:                                   ; preds = %._crit_edge879.loopexit.unr-lcssa, %bb.cx, %.preheader
  %i.sd = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.not1023 = icmp eq ptr %.0.i.i.i.i.i.i.i61261776879310771133, %.sroa.0538.061161976379510691134
  br i1 %.not1023, label %._crit_edge882, label %bb.cy

bb.cy:                                            ; preds = %._crit_edge879
  %i.se = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.sf = icmp ugt i64 %i.ql, 1152921504606846975
  br i1 %i.sf, label %bb.cz, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.145) #27
          to label %.noexc471 unwind label %bb.db

.noexc471:                                        ; preds = %bb.cz
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.cy
  %i.sg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qk) #28
          to label %.noexc472 unwind label %bb.db ; 7 uses

.noexc472:                                        ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.sg, align 8, !tbaa !8
  %i.sh = add nsw i64 %i.ql, -1                   ; 2 uses
  %i.si = icmp eq i64 %i.sh, 0
  br i1 %i.si, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc472
  %i.sj = getelementptr i8, ptr %i.sg, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.sh, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.sj, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !8
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %.noexc472, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i
  store ptr %i.sg, ptr %25, align 8, !tbaa !61
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.qk ; 2 uses
  store ptr %i.sk, ptr %i.sd, align 8, !tbaa !66
  store ptr %i.sk, ptr %i.se, align 8, !tbaa !65
  %i.sl = ashr exact i64 %i.qk, 3                 ; 2 uses
  %i.sm = icmp eq i64 %i.qk, 8
  br i1 %i.sm, label %.epil.preheader1248, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit.new

_ZNSt6vectorIxSaIxEE6resizeEm.exit.new:           ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %unroll_iter1253 = and i64 %i.sl, -2
  br label %bb.de

bb.da:                                            ; preds = %bb.da, %.lr.ph878.new
  %i.sn = phi i64 [ %.pre916, %.lr.ph878.new ], [ %i.td, %bb.da ]
  %.0168877 = phi i64 [ 0, %.lr.ph878.new ], [ %i.ta, %bb.da ] ; 4 uses
  %niter1247 = phi i64 [ 0, %.lr.ph878.new ], [ %niter1247.next.3, %bb.da ]
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %.0168877
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8 ; 2 uses
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !8
  %i.sr = add nsw i64 %i.sq, %i.sn                ; 2 uses
  store i64 %i.sr, ptr %i.sp, align 8, !tbaa !8
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %.0168877
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16 ; 2 uses
  %i.su = load i64, ptr %i.st, align 8, !tbaa !8
  %i.sv = add nsw i64 %i.su, %i.sr                ; 2 uses
  store i64 %i.sv, ptr %i.st, align 8, !tbaa !8
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %.0168877
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 24 ; 2 uses
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !8
  %i.sz = add nsw i64 %i.sy, %i.sv                ; 2 uses
  store i64 %i.sz, ptr %i.sx, align 8, !tbaa !8
  %i.ta = add nuw nsw i64 %.0168877, 4            ; 3 uses
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %i.ta ; 2 uses
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !8
  %i.td = add nsw i64 %i.tc, %i.sz                ; 3 uses
  store i64 %i.td, ptr %i.tb, align 8, !tbaa !8
  %niter1247.next.3 = add nuw i64 %niter1247, 4   ; 2 uses
  %niter1247.ncmp.3 = icmp eq i64 %niter1247.next.3, %unroll_iter1246
  br i1 %niter1247.ncmp.3, label %._crit_edge879.loopexit.unr-lcssa, label %bb.da, !llvm.loop !601

._crit_edge882.loopexit.unr-lcssa:                ; preds = %bb.de
  %i.te = and i64 %i.qk, 8
  %lcmp.mod1251.not = icmp eq i64 %i.te, 0
  br i1 %lcmp.mod1251.not, label %._crit_edge882, label %.epil.preheader1248

.epil.preheader1248:                              ; preds = %._crit_edge882.loopexit.unr-lcssa, %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %.0167880.epil.init = phi i64 [ 0, %_ZNSt6vectorIxSaIxEE6resizeEm.exit ], [ %i.uq, %._crit_edge882.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1252 = trunc i64 %i.sl to i1
  call void @llvm.assume(i1 %lcmp.mod1252)
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0538.061161976379510691134, i64 %.0167880.epil.init
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !8
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %i.tg ; 2 uses
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !8  ; 2 uses
  %i.tj = add nsw i64 %i.ti, 1
  store i64 %i.tj, ptr %i.th, align 8, !tbaa !8
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %i.ti
  store i64 %.0167880.epil.init, ptr %i.tk, align 8, !tbaa !8
  br label %._crit_edge882

._crit_edge882:                                   ; preds = %.epil.preheader1248, %._crit_edge882.loopexit.unr-lcssa, %._crit_edge879
  %i.tl = ptrtoint ptr %i.qg to i64
  %i.tm = ptrtoint ptr %i.qf to i64
  %i.tn = sub i64 %i.tl, %i.tm                    ; 2 uses
  %i.to = icmp sgt i64 %i.tn, 8
  br i1 %i.to, label %.lr.ph885.preheader, label %._crit_edge886

.lr.ph885.preheader:                              ; preds = %._crit_edge882
  %scevgep = getelementptr i8, ptr %i.qf, i64 8
  %i.tp = add nsw i64 %i.tn, -8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %i.qf, i64 %i.tp, i1 false), !tbaa !8
  br label %._crit_edge886

bb.db:                                            ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i, %bb.cz, %._crit_edge886
  %i.tq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tr = load ptr, ptr %25, align 8, !tbaa !61   ; 3 uses
  %.not.i.i.i425 = icmp eq ptr %i.tr, null
  br i1 %.not.i.i.i425, label %_ZNSt6vectorIxSaIxEED2Ev.exit426, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ts = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !65
  %i.tu = ptrtoint ptr %i.tt to i64
  %i.tv = ptrtoint ptr %i.tr to i64
  %i.tw = sub i64 %i.tu, %i.tv
  call void @_ZdlPvm(ptr noundef nonnull %i.tr, i64 noundef %i.tw) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit426

_ZNSt6vectorIxSaIxEED2Ev.exit426:                 ; preds = %bb.db, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  %i.tx = load ptr, ptr %24, align 8, !tbaa !61   ; 3 uses
  %.not.i.i.i427 = icmp eq ptr %i.tx, null
  br i1 %.not.i.i.i427, label %_ZNSt6vectorIxSaIxEED2Ev.exit428, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit426
  %i.ty = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !65
  %i.ua = ptrtoint ptr %i.tz to i64
  %i.ub = ptrtoint ptr %i.tx to i64
  %i.uc = sub i64 %i.ua, %i.ub
  call void @_ZdlPvm(ptr noundef nonnull %i.tx, i64 noundef %i.uc) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit428

bb.de:                                            ; preds = %bb.de, %_ZNSt6vectorIxSaIxEE6resizeEm.exit.new
  %.0167880 = phi i64 [ 0, %_ZNSt6vectorIxSaIxEE6resizeEm.exit.new ], [ %i.uq, %bb.de ] ; 4 uses
  %niter1254 = phi i64 [ 0, %_ZNSt6vectorIxSaIxEE6resizeEm.exit.new ], [ %niter1254.next.1, %bb.de ]
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0538.061161976379510691134, i64 %.0167880
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !8
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %i.ue ; 2 uses
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !8  ; 2 uses
  %i.uh = add nsw i64 %i.ug, 1
  store i64 %i.uh, ptr %i.uf, align 8, !tbaa !8
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %i.ug
  store i64 %.0167880, ptr %i.ui, align 8, !tbaa !8
  %i.uj = or disjoint i64 %.0167880, 1            ; 2 uses
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0538.061161976379510691134, i64 %i.uj
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !8
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %i.ul ; 2 uses
  %i.un = load i64, ptr %i.um, align 8, !tbaa !8  ; 2 uses
  %i.uo = add nsw i64 %i.un, 1
  store i64 %i.uo, ptr %i.um, align 8, !tbaa !8
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %i.un
  store i64 %i.uj, ptr %i.up, align 8, !tbaa !8
  %i.uq = add nuw nsw i64 %.0167880, 2            ; 2 uses
  %niter1254.next.1 = add i64 %niter1254, 2       ; 2 uses
  %niter1254.ncmp.1 = icmp eq i64 %niter1254.next.1, %unroll_iter1253
  br i1 %niter1254.ncmp.1, label %._crit_edge882.loopexit.unr-lcssa, label %bb.de, !llvm.loop !602

._crit_edge886:                                   ; preds = %.lr.ph885.preheader, %._crit_edge882
  store i64 0, ptr %i.qf, align 8, !tbaa !8
  %i.ur = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.us = load i64, ptr %i.ur, align 8, !tbaa !8
  invoke void @_ZN6casadi8SparsityC1ExxRKSt6vectorIxSaIxEES5_b(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.us, i64 noundef %i.px, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %25, i1 noundef zeroext false)
          to label %bb.df unwind label %bb.db

bb.df:                                            ; preds = %._crit_edge886
  %i.ut = load ptr, ptr %25, align 8, !tbaa !61   ; 3 uses
  %.not.i.i.i429 = icmp eq ptr %i.ut, null
  br i1 %.not.i.i.i429, label %_ZNSt6vectorIxSaIxEED2Ev.exit430, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.uu = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !65
  %i.uw = ptrtoint ptr %i.uv to i64
  %i.ux = ptrtoint ptr %i.ut to i64
  %i.uy = sub i64 %i.uw, %i.ux
  call void @_ZdlPvm(ptr noundef nonnull %i.ut, i64 noundef %i.uy) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit430

_ZNSt6vectorIxSaIxEED2Ev.exit430:                 ; preds = %bb.df, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  %i.uz = load ptr, ptr %24, align 8, !tbaa !61   ; 3 uses
  %.not.i.i.i431 = icmp eq ptr %i.uz, null
  br i1 %.not.i.i.i431, label %_ZNSt6vectorIxSaIxEED2Ev.exit432, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit430
  %i.va = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !65
  %i.vc = ptrtoint ptr %i.vb to i64
  %i.vd = ptrtoint ptr %i.uz to i64
  %i.ve = sub i64 %i.vc, %i.vd
  call void @_ZdlPvm(ptr noundef nonnull %i.uz, i64 noundef %i.ve) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit432

_ZNSt6vectorIxSaIxEED2Ev.exit432:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit430, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  br label %bb.di

_ZNSt6vectorIxSaIxEED2Ev.exit428:                 ; preds = %bb.dd, %_ZNSt6vectorIxSaIxEED2Ev.exit426, %bb.cw
  %.pn249 = phi { ptr, i32 } [ %i.qv, %bb.cw ], [ %i.tq, %_ZNSt6vectorIxSaIxEED2Ev.exit426 ], [ %i.tq, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  br label %bb.ds

bb.di:                                            ; preds = %bb.cj, %_ZNSt6vectorIxSaIxEED2Ev.exit432
  %.sroa.32.4 = phi ptr [ %.sroa.32.0.lcssa, %_ZNSt6vectorIxSaIxEED2Ev.exit432 ], [ %.sroa.32.16, %bb.cj ]
  %.sroa.0557.4 = phi ptr [ %.sroa.0557.0.lcssa, %_ZNSt6vectorIxSaIxEED2Ev.exit432 ], [ %.sroa.0557.16, %bb.cj ] ; 3 uses
  %.not.i.i.i433 = icmp eq ptr %.sroa.0476.0, null
  br i1 %.not.i.i.i433, label %_ZNSt6vectorIxSaIxEED2Ev.exit434, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.vf = ptrtoint ptr %.sroa.20.0 to i64
  %i.vg = ptrtoint ptr %.sroa.0476.0 to i64
  %i.vh = sub i64 %i.vf, %i.vg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0476.0, i64 noundef %i.vh) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit434

_ZNSt6vectorIxSaIxEED2Ev.exit434:                 ; preds = %bb.di, %bb.dj
  %i.vi = load ptr, ptr %22, align 8, !tbaa !61   ; 3 uses
  %.not.i.i.i435 = icmp eq ptr %i.vi, null
  br i1 %.not.i.i.i435, label %_ZNSt6vectorIxSaIxEED2Ev.exit436, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit434
  %i.vj = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !65
  %i.vl = ptrtoint ptr %i.vk to i64
  %i.vm = ptrtoint ptr %i.vi to i64
  %i.vn = sub i64 %i.vl, %i.vm
  call void @_ZdlPvm(ptr noundef nonnull %i.vi, i64 noundef %i.vn) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit436

_ZNSt6vectorIxSaIxEED2Ev.exit436:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit434, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  %.not.i.i.i437 = icmp eq ptr %.sroa.0492.0, null
  br i1 %.not.i.i.i437, label %_ZNSt6vectorIxSaIxEED2Ev.exit438, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit436
  %i.vo = ptrtoint ptr %.sroa.0492.0 to i64
  %i.vp = sub i64 %.sroa.12.0, %i.vo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0492.0, i64 noundef %i.vp) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit438

_ZNSt6vectorIxSaIxEED2Ev.exit438:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit436, %bb.dl
  %.not.i.i.i439 = icmp eq ptr %.sroa.0500.0647656662, null
  br i1 %.not.i.i.i439, label %_ZNSt6vectorIxSaIxEED2Ev.exit440, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit438
  %i.vq = ptrtoint ptr %.sroa.12506.0649654664 to i64
  %i.vr = ptrtoint ptr %.sroa.0500.0647656662 to i64
  %i.vs = sub i64 %i.vq, %i.vr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0500.0647656662, i64 noundef %i.vs) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit440

_ZNSt6vectorIxSaIxEED2Ev.exit440:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit438, %bb.dm
  %.not.i.i.i441 = icmp eq ptr %.sroa.0510.011091127, null
  br i1 %.not.i.i.i441, label %_ZNSt6vectorIxSaIxEED2Ev.exit442, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit440
  %i.vt = ptrtoint ptr %.sroa.0510.011091127 to i64
  %i.vu = sub i64 %.sroa.11514.011121125, %i.vt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0510.011091127, i64 noundef %i.vu) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit442

_ZNSt6vectorIxSaIxEED2Ev.exit442:                 ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit440, %bb.dn
  %.not.i.i.i443 = icmp eq ptr %.sroa.0518.063064110921130, null
  br i1 %.not.i.i.i443, label %_ZNSt6vectorIxSaIxEED2Ev.exit444, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit442
end_hunk_5
begin_hunk_6_@_ZNK6casadi16SparsityInternal13largest_firstEv:bb.a

bb.f:                                             ; preds = %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.1182, i64 noundef %i.ad) #30
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i: ; preds = %bb.f, %_ZNSt6vectorIxSaIxEE11_S_relocateEPxS2_S2_RS0_.exit.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ag
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.g:                                             ; preds = %._crit_edge
  %i.av = icmp ult i64 %i.e, %i.ae
  br i1 %i.av, label %bb.h, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0119.1182, i64 %i.e ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.23.1181, %i.aw
  %spec.select = select i1 %.not.i.i, ptr %.sroa.23.1181, ptr %i.aw
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader194, %.lr.ph
  %i.ax = phi i64 [ %i.ba, %.lr.ph ], [ %.ph, %.lr.ph.preheader194 ]
  %.0138 = phi i64 [ %i.ay, %.lr.ph ], [ %.0138.ph, %.lr.ph.preheader194 ] ; 2 uses
  %.0133137 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %.0133137.ph, %.lr.ph.preheader194 ]
  %i.ay = add nuw nsw i64 %.0138, 1               ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !8  ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.0138
  %i.bc = sub nsw i64 %i.ba, %i.ax                ; 2 uses
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !8
  %i.bd = add nsw i64 %i.bc, 1
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %.0133137, i64 %i.bd) ; 2 uses
  %i.be = icmp slt i64 %i.ay, %i.e
  br i1 %i.be, label %.lr.ph, label %._crit_edge, !llvm.loop !613

_ZNSt6vectorIxSaIxEE6resizeEm.exit:               ; preds = %bb.h, %bb.g, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i
  %.sroa.23.2 = phi ptr [ %.sroa.23.1181, %bb.g ], [ %.sroa.23.1181, %bb.h ], [ %i.au, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ] ; 3 uses
  %.sroa.16.0 = phi ptr [ %.sroa.23.1181, %bb.g ], [ %spec.select, %bb.h ], [ %i.at, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ] ; 2 uses
  %.sroa.0119.2 = phi ptr [ %.sroa.0119.1182, %bb.g ], [ %.sroa.0119.1182, %bb.h ], [ %i.an, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i ] ; 10 uses
  %i.bf = add nuw nsw i64 %.0133.lcssa, 1         ; 8 uses
  %i.bg = icmp ugt i64 %.0133.lcssa, 1152921504606846974
  br i1 %i.bg, label %bb.i, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

bb.i:                                             ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27
          to label %.noexc35 unwind label %bb.k

.noexc35:                                         ; preds = %bb.i
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit
  %i.bh = shl nuw nsw i64 %i.bf, 3                ; 6 uses
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #28
          to label %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit unwind label %bb.k ; 22 uses

_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit:            ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bi, i8 0, i64 %i.bh, i1 false), !tbaa !8
  %.idx = shl nuw nsw i64 %i.bf, 3                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh ; 2 uses
  %.not140 = icmp eq ptr %.sroa.0119.2, %.sroa.16.0
  br i1 %.not140, label %.preheader, label %.lr.ph142

.preheader:                                       ; preds = %bb.m, %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit
  %.not177 = icmp eq i64 %.0133.lcssa, 0
  br i1 %.not177, label %._crit_edge145, label %.lr.ph144.preheader

.lr.ph144.preheader:                              ; preds = %.preheader
  %.pre151 = load i64, ptr %i.bi, align 8, !tbaa !8 ; 2 uses
  %xtraiter = and i64 %.0133.lcssa, 3             ; 3 uses
  %i.bl = icmp ult i64 %.0133.lcssa, 4
  br i1 %i.bl, label %.lr.ph144.epil.preheader, label %.lr.ph144.preheader.new

.lr.ph144.preheader.new:                          ; preds = %.lr.ph144.preheader
  %unroll_iter = and i64 %.0133.lcssa, 1152921504606846972
  br label %.lr.ph144

bb.j:                                             ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i, %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit59

bb.k:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i, %bb.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit59

.lr.ph142:                                        ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit, %bb.m
  %.sroa.092.0141 = phi ptr [ %i.bt, %bb.m ], [ %.sroa.0119.2, %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit ] ; 2 uses
  %i.bo = load i64, ptr %.sroa.092.0141, align 8, !tbaa !8
  %i.bp = add nsw i64 %i.bo, 1                    ; 3 uses
  %.not.i.i37.not = icmp ugt i64 %i.bp, %.0133.lcssa
  br i1 %.not.i.i37.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph142
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.156, i64 noundef %i.bp, i64 noundef %i.bf) #27
          to label %.noexc38 unwind label %bb.n

.noexc38:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.lr.ph142
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bp ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !8
  %i.bs = add nsw i64 %i.br, 1
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.092.0141, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bt, %.sroa.16.0
  br i1 %.not, label %.preheader, label %.lr.ph142, !llvm.loop !614

bb.n:                                             ; preds = %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit57

._crit_edge145.loopexit.unr-lcssa:                ; preds = %.lr.ph144
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge145, label %.lr.ph144.epil.preheader

.lr.ph144.epil.preheader:                         ; preds = %._crit_edge145.loopexit.unr-lcssa, %.lr.ph144.preheader
  %.epil.init = phi i64 [ %.pre151, %.lr.ph144.preheader ], [ %i.db, %._crit_edge145.loopexit.unr-lcssa ]
  %.022143.epil.init = phi i64 [ 0, %.lr.ph144.preheader ], [ %i.cy, %._crit_edge145.loopexit.unr-lcssa ]
  %lcmp.mod197 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod197)
  br label %.lr.ph144.epil

.lr.ph144.epil:                                   ; preds = %.lr.ph144.epil, %.lr.ph144.epil.preheader
  %i.bv = phi i64 [ %i.bz, %.lr.ph144.epil ], [ %.epil.init, %.lr.ph144.epil.preheader ]
  %.022143.epil = phi i64 [ %i.bw, %.lr.ph144.epil ], [ %.022143.epil.init, %.lr.ph144.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph144.epil ], [ 0, %.lr.ph144.epil.preheader ]
  %i.bw = add nuw nsw i64 %.022143.epil, 1        ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bw ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !8
  %i.bz = add nsw i64 %i.by, %i.bv                ; 2 uses
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge145, label %.lr.ph144.epil, !llvm.loop !615

._crit_edge145:                                   ; preds = %._crit_edge145.loopexit.unr-lcssa, %.lr.ph144.epil, %.preheader
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !8  ; 5 uses
  %i.cd = icmp ugt i64 %i.cc, 1152921504606846975
  br i1 %i.cd, label %bb.o, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39

bb.o:                                             ; preds = %._crit_edge145
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #27
          to label %.noexc42 unwind label %bb.u

.noexc42:                                         ; preds = %bb.o
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39: ; preds = %._crit_edge145
  %.not.i.i.i.i40 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i.i40, label %._crit_edge148, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39
  %i.ce = shl nuw nsw i64 %i.cc, 3
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #28
          to label %.noexc43 unwind label %bb.u   ; 9 uses

.noexc43:                                         ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cc ; 3 uses
  store i64 0, ptr %i.cf, align 8, !tbaa !8
  %i.ch = getelementptr i8, ptr %i.cf, i64 8      ; 3 uses
  %i.ci = add nsw i64 %i.cc, -1                   ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc43
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ci, 3  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ch, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit

.lr.ph144:                                        ; preds = %.lr.ph144, %.lr.ph144.preheader.new
  %i.cl = phi i64 [ %.pre151, %.lr.ph144.preheader.new ], [ %i.db, %.lr.ph144 ]
  %.022143 = phi i64 [ 0, %.lr.ph144.preheader.new ], [ %i.cy, %.lr.ph144 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph144.preheader.new ], [ %niter.next.3, %.lr.ph144 ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.022143
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !8
  %i.cp = add nsw i64 %i.co, %i.cl                ; 2 uses
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.022143
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !8
  %i.ct = add nsw i64 %i.cs, %i.cp                ; 2 uses
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !8
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.022143
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !8
  %i.cx = add nsw i64 %i.cw, %i.ct                ; 2 uses
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !8
  %i.cy = add nuw nsw i64 %.022143, 4             ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.cy ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !8
  %i.db = add nsw i64 %i.da, %i.cx                ; 3 uses
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !8
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge145.loopexit.unr-lcssa, label %.lr.ph144, !llvm.loop !616

_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc43
  %.0.i.i.i.i.i.ph = phi ptr [ %i.ch, %.noexc43 ], [ %i.ck, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 3 uses
  %.pr = load i64, ptr %i.cb, align 8, !tbaa !8   ; 5 uses
  %i.dc = icmp sgt i64 %.pr, 0
  br i1 %i.dc, label %.lr.ph147.preheader, label %._crit_edge148

.lr.ph147.preheader:                              ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  %xtraiter198 = and i64 %.pr, 1
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %.lr.ph147.prol.loopexit, label %.lr.ph147.prol

.lr.ph147.prol:                                   ; preds = %.lr.ph147.preheader
  %.021.prol = add nsw i64 %.pr, -1               ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0119.2, i64 %.021.prol
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !8
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.de ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !8  ; 2 uses
  %i.dh = add nsw i64 %i.dg, 1
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !8
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.dg
  store i64 %.021.prol, ptr %i.di, align 8, !tbaa !8
  br label %.lr.ph147.prol.loopexit

.lr.ph147.prol.loopexit:                          ; preds = %.lr.ph147.prol, %.lr.ph147.preheader
  %.021.in146.unr = phi i64 [ %.pr, %.lr.ph147.preheader ], [ %.021.prol, %.lr.ph147.prol ]
  %i.dj = icmp eq i64 %.pr, 1
  br i1 %i.dj, label %._crit_edge148, label %.lr.ph147

._crit_edge148:                                   ; preds = %.lr.ph147.prol.loopexit, %.lr.ph147, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit
  %.0.i.i.i.i.i188 = phi ptr [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39 ], [ %.0.i.i.i.i.i.ph, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit ], [ %.0.i.i.i.i.i.ph, %.lr.ph147 ], [ %.0.i.i.i.i.i.ph, %.lr.ph147.prol.loopexit ]
  %.sroa.14.0187 = phi ptr [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39 ], [ %i.cg, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit ], [ %i.cg, %.lr.ph147 ], [ %i.cg, %.lr.ph147.prol.loopexit ] ; 2 uses
  %.sroa.083.0186 = phi ptr [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i39 ], [ %i.cf, %_ZNSt6vectorIxSaIxEEC2EmRKS0_.exit ], [ %i.cf, %.lr.ph147 ], [ %i.cf, %.lr.ph147.prol.loopexit ] ; 7 uses
  %i.dk = ptrtoint ptr %.0.i.i.i.i.i188 to i64
  %i.dl = ptrtoint ptr %.sroa.083.0186 to i64     ; 3 uses
  %i.dm = sub i64 %i.dk, %i.dl                    ; 3 uses
  %i.dn = ashr exact i64 %i.dm, 3                 ; 8 uses
  %i.do = icmp ugt i64 %i.dn, %i.bf
  br i1 %i.do, label %bb.q, label %bb.s

bb.q:                                             ; preds = %._crit_edge148
  %i.dp = sub nuw nsw i64 %i.dn, %i.bf            ; 4 uses
  %i.dq = xor i64 %i.bf, 1152921504606846975
  %i.dr = icmp ult i64 %i.dq, %i.dp
  br i1 %i.dr, label %bb.r, label %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i70

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.145) #27
          to label %.noexc78 unwind label %bb.ac

.noexc78:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i70: ; preds = %bb.q
  %.sroa.speculated.i.i71 = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 %i.dp)
  %i.ds = add nuw nsw i64 %.sroa.speculated.i.i71, %i.bf
  %i.dt = tail call i64 @llvm.umin.i64(i64 %i.ds, i64 1152921504606846975) ; 2 uses
  %i.du = shl nuw nsw i64 %i.dt, 3
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #28
          to label %.noexc79 unwind label %bb.ac  ; 4 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc.exit.i70
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.bh ; 3 uses
  store i64 0, ptr %i.dw, align 8, !tbaa !8
  %i.dx = add nsw i64 %i.dp, -1                   ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i72

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i72: ; preds = %.noexc79
  %i.dz = getelementptr i8, ptr %i.dw, i64 8
  %.idx.i.i.i.i.i31.i73 = shl nuw nsw i64 %i.dx, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dz, i8 0, i64 %.idx.i.i.i.i.i31.i73, i1 false), !tbaa !8
  br label %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77

_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77: ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i72, %.noexc79
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dv, ptr noundef nonnull align 8 dereferenceable(1) %i.bi, i64 %i.bh, i1 false)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %.idx) #30
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dp
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dt
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit47

bb.s:                                             ; preds = %._crit_edge148
  %.not178 = icmp ugt i64 %i.dn, %.0133.lcssa
  br i1 %.not178, label %_ZNSt6vectorIxSaIxEE6resizeEm.exit47, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.dm
  %.not.i.i44 = icmp samesign eq i64 %i.bh, %i.dm
  %spec.select134 = select i1 %.not.i.i44, ptr %i.bk, ptr %i.ec
  br label %_ZNSt6vectorIxSaIxEE6resizeEm.exit47

bb.u:                                             ; preds = %bb.p, %bb.o
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit57

.lr.ph147:                                        ; preds = %.lr.ph147.prol.loopexit, %.lr.ph147
  %.021.in146 = phi i64 [ %.021.1, %.lr.ph147 ], [ %.021.in146.unr, %.lr.ph147.prol.loopexit ] ; 3 uses
  %.021 = add nsw i64 %.021.in146, -1             ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0119.2, i64 %.021
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !8
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ef ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !8  ; 2 uses
  %i.ei = add nsw i64 %i.eh, 1
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !8
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.eh
  store i64 %.021, ptr %i.ej, align 8, !tbaa !8
  %.021.1 = add nsw i64 %.021.in146, -2           ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0119.2, i64 %.021.1
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !8
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.el ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !8  ; 2 uses
  %i.eo = add nsw i64 %i.en, 1
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !8
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.en
  store i64 %.021.1, ptr %i.ep, align 8, !tbaa !8
  %i.eq = icmp sgt i64 %.021.in146, 2
  br i1 %i.eq, label %.lr.ph147, label %._crit_edge148, !llvm.loop !617

_ZNSt6vectorIxSaIxEE6resizeEm.exit47:             ; preds = %bb.t, %bb.s, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77
  %.sroa.17.0 = phi ptr [ %i.bk, %bb.s ], [ %spec.select134, %bb.t ], [ %i.ea, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77 ] ; 4 uses
  %.sroa.27.4 = phi ptr [ %i.bj, %bb.s ], [ %i.bj, %bb.t ], [ %i.eb, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77 ] ; 3 uses
  %.sroa.096.4 = phi ptr [ %i.bi, %bb.s ], [ %i.bi, %bb.t ], [ %i.dv, %_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm.exit36.i77 ] ; 7 uses
  %i.er = ptrtoint ptr %.sroa.17.0 to i64
  %i.es = icmp sgt i64 %i.dn, 0
  br i1 %i.es, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt14__copy_move_a1ILb0EPxSt16reverse_iteratorIS0_EET1_T0_S4_S3_.exit.loopexit.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt6vectorIxSaIxEE6resizeEm.exit47
  %xtraiter200 = and i64 %i.dn, 7                 ; 2 uses
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod201.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.et = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.17.0, %.lr.ph.i.i.i.i.i.preheader ]
  %.07.i.i.i.i.i.prol = phi i64 [ %i.ex, %.lr.ph.i.i.i.i.i.prol ], [ %i.dn, %.lr.ph.i.i.i.i.i.preheader ]
  %.056.i.i.i.i.i.prol = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.083.0186, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.eu = load i64, ptr %.056.i.i.i.i.i.prol, align 8, !tbaa !8, !noalias !618
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 -8 ; 3 uses
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !8, !noalias !618
  %i.ew = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ex = add nsw i64 %.07.i.i.i.i.i.prol, -1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter200
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !629

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr202 = phi ptr [ %.sroa.17.0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ev, %.lr.ph.i.i.i.i.i.prol ]
  %.07.i.i.i.i.i.unr = phi i64 [ %i.dn, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ex, %.lr.ph.i.i.i.i.i.prol ]
  %.056.i.i.i.i.i.unr = phi ptr [ %.sroa.083.0186, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ew, %.lr.ph.i.i.i.i.i.prol ]
  %i.ey = icmp ult i64 %i.dn, 8
  br i1 %i.ey, label %_ZSt14__copy_move_a1ILb0EPxSt16reverse_iteratorIS0_EET1_T0_S4_S3_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.ez = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i ], [ %.unr202, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.07.i.i.i.i.i = phi i64 [ %i.fy, %.lr.ph.i.i.i.i.i ], [ %.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i ], [ %.056.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.fa = load i64, ptr %.056.i.i.i.i.i, align 8, !tbaa !8, !noalias !618
  %i.fb = getelementptr inbounds i8, ptr %i.ez, i64 -8
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !8, !noalias !618
  %i.fc = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !8, !noalias !618
  %i.fe = getelementptr inbounds i8, ptr %i.ez, i64 -16
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !8, !noalias !618
  %i.ff = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !8, !noalias !618
  %i.fh = getelementptr inbounds i8, ptr %i.ez, i64 -24
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !8, !noalias !618
  %i.fi = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 24
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !8, !noalias !618
  %i.fk = getelementptr inbounds i8, ptr %i.ez, i64 -32
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !8, !noalias !618
  %i.fl = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 32
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !8, !noalias !618
  %i.fn = getelementptr inbounds i8, ptr %i.ez, i64 -40
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !8, !noalias !618
  %i.fo = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 40
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !8, !noalias !618
  %i.fq = getelementptr inbounds i8, ptr %i.ez, i64 -48
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !8, !noalias !618
  %i.fr = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 48
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !8, !noalias !618
  %i.ft = getelementptr inbounds i8, ptr %i.ez, i64 -56
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !8, !noalias !618
  %i.fu = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 56
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !8, !noalias !618
  %i.fw = getelementptr inbounds i8, ptr %i.ez, i64 -64 ; 2 uses
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !8, !noalias !618
  %i.fx = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 64
  %i.fy = add nsw i64 %.07.i.i.i.i.i, -8
  %i.fz = icmp sgt i64 %.07.i.i.i.i.i, 8
  br i1 %i.fz, label %.lr.ph.i.i.i.i.i, label %_ZSt14__copy_move_a1ILb0EPxSt16reverse_iteratorIS0_EET1_T0_S4_S3_.exit.loopexit.i.i, !llvm.loop !630

_ZSt14__copy_move_a1ILb0EPxSt16reverse_iteratorIS0_EET1_T0_S4_S3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt6vectorIxSaIxEE6resizeEm.exit47
  %i.ga = ptrtoint ptr %.sroa.096.4 to i64        ; 2 uses
  %i.gb = sub i64 %i.er, %i.ga                    ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i48 = icmp eq ptr %.sroa.17.0, %.sroa.096.4
end_hunk_6
