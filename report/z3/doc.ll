inline.NumInlined: 756
inline.NumDeleted: 241
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN10union_bvecI11tbv_manager3tbvE6insertERS0_PS1_:bb.a
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !29
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !29
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.2
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !29
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !29
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %scalar.ph, !llvm.loop !64

_ZN6bufferIP3tbvLb0ELj8EE6expandEv.exit.i.i:      ; preds = %bb.j, %._crit_edge.i.i.i
  %.pre2.i.i = phi i32 [ %i.ae, %._crit_edge.i.i.i ], [ %.pre2.pre.i.i, %bb.j ]
  store ptr %i.ad, ptr %0, align 8, !tbaa !26
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !28
  br label %_ZN6bufferIP3tbvLb0ELj8EE9push_backERKS1_.exit.i

_ZN6bufferIP3tbvLb0ELj8EE9push_backERKS1_.exit.i: ; preds = %_ZN6bufferIP3tbvLb0ELj8EE6expandEv.exit.i.i, %._crit_edge.i.i
  %i.be = phi i32 [ %i.y, %._crit_edge.i.i ], [ %i.aa, %_ZN6bufferIP3tbvLb0ELj8EE6expandEv.exit.i.i ]
  %i.bf = phi i32 [ %i.z, %._crit_edge.i.i ], [ %.pre2.i.i, %_ZN6bufferIP3tbvLb0ELj8EE6expandEv.exit.i.i ] ; 2 uses
  %i.bg = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ad, %_ZN6bufferIP3tbvLb0ELj8EE6expandEv.exit.i.i ]
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh
  store ptr null, ptr %i.bi, align 8, !tbaa !29
  %i.bj = add i32 %i.bf, 1                        ; 2 uses
  store i32 %i.bj, ptr %i.a, align 8, !tbaa !27
  %i.bk = add i32 %.01320.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bk, %.022.lcssa
  br i1 %exitcond.not.i, label %_ZN6bufferIP3tbvLb0ELj8EE6resizeEjRKS1_.exit, label %bb.h, !llvm.loop !60

bb.k:                                             ; preds = %bb.g
  %i.bl = icmp ult i32 %.022.lcssa, %i.u
  br i1 %i.bl, label %.preheader17.i, label %_ZN6bufferIP3tbvLb0ELj8EE6resizeEjRKS1_.exit

.preheader17.i:                                   ; preds = %bb.k
  store i32 %.022.lcssa, ptr %i.a, align 8, !tbaa !27
  br label %_ZN6bufferIP3tbvLb0ELj8EE6resizeEjRKS1_.exit

_ZN6bufferIP3tbvLb0ELj8EE6resizeEjRKS1_.exit:     ; preds = %_ZN6bufferIP3tbvLb0ELj8EE9push_backERKS1_.exit.i, %.preheader17.i, %bb.k, %._crit_edge
  br i1 %.021.lcssa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6bufferIP3tbvLb0ELj8EE6resizeEjRKS1_.exit
  tail call void @_ZN11tbv_manager10deallocateEP3tbv(ptr noundef nonnull align 8 dereferenceable(552) %1, ptr noundef %2)
  br label %bb.p

bb.m:                                             ; preds = %_ZN6bufferIP3tbvLb0ELj8EE6resizeEjRKS1_.exit
  %i.bm = load i32, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !28 ; 2 uses
  %.not.i = icmp ult i32 %i.bm, %i.bo
  br i1 %.not.i, label %._crit_edge.i, label %bb.n

._crit_edge.i:                                    ; preds = %bb.m
  %.pre.i30 = load ptr, ptr %0, align 8, !tbaa !26
  br label %_ZN6bufferIP3tbvLb0ELj8EE9push_backERKS1_.exit

bb.n:                                             ; preds = %bb.m
  %i.bp = shl i32 %i.bo, 1                        ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.br) ; 9 uses
  %i.bt = load i32, ptr %i.a, align 8, !tbaa !27  ; 4 uses
  %.not.i.i26 = icmp eq i32 %i.bt, 0
  %.pre.i.i27 = load ptr, ptr %0, align 8, !tbaa !26 ; 10 uses
  br i1 %.not.i.i26, label %._crit_edge.i.i28, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n
  %.pre.i.i2754 = ptrtoaddr ptr %.pre.i.i27 to i64
  %i.bu = ptrtoaddr ptr %i.bs to i64
  %wide.trip.count.i.i = zext i32 %i.bt to i64    ; 5 uses
  %min.iters.check57 = icmp ult i32 %i.bt, 8
  %i.bv = sub i64 %.pre.i.i2754, %i.bu
  %diff.check55 = icmp ugt i64 %i.bv, -32
  %or.cond68 = select i1 %min.iters.check57, i1 true, i1 %diff.check55
  br i1 %or.cond68, label %scalar.ph56.preheader, label %vector.ph58

vector.ph58:                                      ; preds = %.lr.ph.i.i
  %n.vec59 = and i64 %wide.trip.count.i.i, 4294967292 ; 3 uses
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph58
  %index61 = phi i64 [ 0, %vector.ph58 ], [ %index.next64, %vector.body60 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index61 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i27, i64 %index61 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load62 = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !29
  %wide.load63 = load <2 x ptr>, ptr %i.by, align 8, !tbaa !29
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <2 x ptr> %wide.load62, ptr %i.bw, align 8, !tbaa !29
  store <2 x ptr> %wide.load63, ptr %i.bz, align 8, !tbaa !29
  %index.next64 = add nuw i64 %index61, 4         ; 2 uses
  %i.ca = icmp eq i64 %index.next64, %n.vec59
  br i1 %i.ca, label %middle.block65, label %vector.body60, !llvm.loop !65

middle.block65:                                   ; preds = %vector.body60
  %cmp.n66 = icmp eq i64 %n.vec59, %wide.trip.count.i.i
  br i1 %cmp.n66, label %._crit_edge.i.i28, label %scalar.ph56.preheader

scalar.ph56.preheader:                            ; preds = %.lr.ph.i.i, %middle.block65
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec59, %middle.block65 ] ; 3 uses
  %xtraiter69 = and i64 %wide.trip.count.i.i, 3   ; 2 uses
  %lcmp.mod70.not = icmp eq i64 %xtraiter69, 0
  br i1 %lcmp.mod70.not, label %scalar.ph56.prol.loopexit, label %scalar.ph56.prol

scalar.ph56.prol:                                 ; preds = %scalar.ph56.preheader, %scalar.ph56.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph56.prol ], [ %indvars.iv.i.i.ph, %scalar.ph56.preheader ] ; 3 uses
  %prol.iter71 = phi i64 [ %prol.iter71.next, %scalar.ph56.prol ], [ 0, %scalar.ph56.preheader ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i.i.prol
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i27, i64 %indvars.iv.i.i.prol
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !29
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !29
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter71.next = add i64 %prol.iter71, 1     ; 2 uses
  %prol.iter71.cmp.not = icmp eq i64 %prol.iter71.next, %xtraiter69
  br i1 %prol.iter71.cmp.not, label %scalar.ph56.prol.loopexit, label %scalar.ph56.prol, !llvm.loop !66

scalar.ph56.prol.loopexit:                        ; preds = %scalar.ph56.prol, %scalar.ph56.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph56.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph56.prol ]
  %i.ce = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.cf = icmp ugt i64 %i.ce, -4
  br i1 %i.cf, label %._crit_edge.i.i28, label %scalar.ph56

._crit_edge.i.i28:                                ; preds = %scalar.ph56.prol.loopexit, %scalar.ph56, %middle.block65, %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i.i29 = icmp eq ptr %.pre.i.i27, %i.cg
  %i.ch = icmp eq ptr %.pre.i.i27, null
  %or.cond.i.i.i = or i1 %.not.i.i.i29, %i.ch
  br i1 %or.cond.i.i.i, label %_ZN6bufferIP3tbvLb0ELj8EE6expandEv.exit.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i28
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i27)
  %.pre2.pre.i = load i32, ptr %i.a, align 8, !tbaa !27
  br label %_ZN6bufferIP3tbvLb0ELj8EE6expandEv.exit.i

scalar.ph56:                                      ; preds = %scalar.ph56.prol.loopexit, %scalar.ph56
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph56 ], [ %indvars.iv.i.i.unr, %scalar.ph56.prol.loopexit ] ; 6 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.i.i
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i27, i64 %indvars.iv.i.i
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !29
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !29
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i27, i64 %indvars.iv.next.i.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !29
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !29
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.1
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i27, i64 %indvars.iv.next.i.i.1
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !29
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !29
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.2
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i27, i64 %indvars.iv.next.i.i.2
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !29
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !29
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i28, label %scalar.ph56, !llvm.loop !67

_ZN6bufferIP3tbvLb0ELj8EE6expandEv.exit.i:        ; preds = %bb.o, %._crit_edge.i.i28
  %.pre2.i = phi i32 [ %i.bt, %._crit_edge.i.i28 ], [ %.pre2.pre.i, %bb.o ]
  store ptr %i.bs, ptr %0, align 8, !tbaa !26
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !28
  br label %_ZN6bufferIP3tbvLb0ELj8EE9push_backERKS1_.exit

_ZN6bufferIP3tbvLb0ELj8EE9push_backERKS1_.exit:   ; preds = %._crit_edge.i, %_ZN6bufferIP3tbvLb0ELj8EE6expandEv.exit.i
  %i.cu = phi i32 [ %i.bm, %._crit_edge.i ], [ %.pre2.i, %_ZN6bufferIP3tbvLb0ELj8EE6expandEv.exit.i ] ; 2 uses
  %i.cv = phi ptr [ %.pre.i30, %._crit_edge.i ], [ %i.bs, %_ZN6bufferIP3tbvLb0ELj8EE6expandEv.exit.i ]
  %i.cw = zext i32 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  store ptr %2, ptr %i.cx, align 8, !tbaa !29
  %i.cy = add i32 %i.cu, 1
  store i32 %i.cy, ptr %i.a, align 8, !tbaa !27
  br label %bb.p

bb.p:                                             ; preds = %_ZN6bufferIP3tbvLb0ELj8EE9push_backERKS1_.exit, %bb.l
  %i.cz = xor i1 %.021.lcssa, true
  ret i1 %i.cz
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11doc_manager8fold_negER3doc(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !27
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.thread49, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 520
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.lr.ph
  %.02565 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.02565.be, %.lr.ph.backedge ] ; 4 uses
  %.164 = phi i32 [ undef, %.lr.ph.lr.ph ], [ %.164.be, %.lr.ph.backedge ]
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.g = zext i32 %.02565 to i64                  ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = load ptr, ptr %1, align 8, !tbaa !22
  %i.k = tail call noundef zeroext i1 @_ZNK11tbv_manager8containsERK3tbvS2_(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  br i1 %i.k, label %.thread49, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %1, align 8, !tbaa !22     ; 3 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.g
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 3 uses
  %i.p = load i32, ptr %i.e, align 8, !tbaa !68
  %i.q = lshr i32 %i.p, 1                         ; 4 uses
  %.not2942.not.i = icmp eq i32 %i.q, 0
  br i1 %.not2942.not.i, label %.thread49, label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %bb.b, %.thread.i
  %.3.ph = phi i32 [ %.430, %.thread.i ], [ %.164, %bb.b ] ; 3 uses
  %.01944.i.ph = phi i32 [ %.22136.i, %.thread.i ], [ 0, %bb.b ] ; 2 uses
  %.02543.i.ph = phi i32 [ %i.bn, %.thread.i ], [ 0, %bb.b ] ; 6 uses
  %i.r = shl nuw i32 %.02543.i.ph, 1
  %i.s = lshr i32 %.02543.i.ph, 4
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !69   ; 2 uses
  %i.w = and i32 %i.r, 30                         ; 2 uses
  %i.x = shl nuw nsw i32 1, %i.w                  ; 2 uses
  %i.y = and i32 %i.x, %i.v
  %.not.i.i.i.peel = icmp eq i32 %i.y, 0
  %i.z = select i1 %.not.i.i.i.peel, i32 0, i32 2
  %i.aa = shl nuw i32 2, %i.w                     ; 2 uses
  %i.ab = and i32 %i.aa, %i.v
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = or disjoint i32 %i.z, %i.ad             ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.t
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !69 ; 2 uses
  %i.ah = and i32 %i.x, %i.ag
  %.not.i.i32.i.peel = icmp eq i32 %i.ah, 0
  %i.ai = select i1 %.not.i.i32.i.peel, i32 0, i32 2
  %i.aj = and i32 %i.aa, %i.ag
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = or disjoint i32 %i.ai, %i.al            ; 2 uses
  %.not.i.peel = icmp eq i32 %i.ae, %i.am
  br i1 %.not.i.peel, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.outer
  %i.an = icmp eq i32 %.01944.i.ph, 1
  br i1 %i.an, label %_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit.thread.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = icmp eq i32 %i.ae, 3
  br i1 %i.ao, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not28.i.peel = icmp eq i32 %i.am, 3
  br i1 %.not28.i.peel, label %.thread.i.thread.peel, label %_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit.thread38

.thread.i.thread.peel:                            ; preds = %bb.e
  %i.ap = add nuw nsw i32 %.02543.i.ph, 1         ; 2 uses
  %exitcond.not.i86.peel = icmp eq i32 %i.ap, %i.q
  br i1 %exitcond.not.i86.peel, label %.thread49, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread.i.thread.peel, %.thread.i.thread
  %.02543.i = phi i32 [ %i.bo, %.thread.i.thread ], [ %i.ap, %.thread.i.thread.peel ] ; 6 uses
  %i.aq = shl nuw i32 %.02543.i, 1
  %i.ar = lshr i32 %.02543.i, 4
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !69 ; 2 uses
  %i.av = and i32 %i.aq, 30                       ; 2 uses
  %i.aw = shl nuw nsw i32 1, %i.av                ; 2 uses
  %i.ax = and i32 %i.aw, %i.au
  %.not.i.i.i = icmp eq i32 %i.ax, 0
  %i.ay = select i1 %.not.i.i.i, i32 0, i32 2
  %i.az = shl nuw i32 2, %i.av                    ; 2 uses
  %i.ba = and i32 %i.az, %i.au
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %i.bd = or disjoint i32 %i.ay, %i.bc            ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.as
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !69 ; 2 uses
  %i.bg = and i32 %i.aw, %i.bf
  %.not.i.i32.i = icmp eq i32 %i.bg, 0
  %i.bh = select i1 %.not.i.i32.i, i32 0, i32 2
  %i.bi = and i32 %i.az, %i.bf
  %i.bj = icmp ne i32 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = or disjoint i32 %i.bh, %i.bk            ; 2 uses
  %.not.i = icmp eq i32 %i.bd, %i.bl
  br i1 %.not.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.bm = icmp eq i32 %i.bd, 3
  br i1 %i.bm, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not28.i = icmp eq i32 %i.bl, 3
  br i1 %.not28.i, label %.thread.i.thread, label %_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit.thread38

.thread.i:                                        ; preds = %bb.f, %.lr.ph.i, %bb.d, %.lr.ph.i.outer
  %.02543.i.lcssa = phi i32 [ %.02543.i.ph, %.lr.ph.i.outer ], [ %.02543.i.ph, %bb.d ], [ %.02543.i, %.lr.ph.i ], [ %.02543.i, %bb.f ]
  %.430 = phi i32 [ %.3.ph, %.lr.ph.i.outer ], [ %.02543.i.ph, %bb.d ], [ %.02543.i, %bb.f ], [ %.3.ph, %.lr.ph.i ] ; 4 uses
  %.22136.i = phi i32 [ %.01944.i.ph, %.lr.ph.i.outer ], [ 1, %bb.d ], [ 1, %bb.f ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bn = add nuw nsw i32 %.02543.i.lcssa, 1      ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bn, %i.q
  br i1 %exitcond.not.i, label %_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit, label %.lr.ph.i.outer, !llvm.loop !70

.thread.i.thread:                                 ; preds = %bb.g
  %i.bo = add nuw nsw i32 %.02543.i, 1            ; 2 uses
  %exitcond.not.i86 = icmp eq i32 %i.bo, %i.q
  br i1 %exitcond.not.i86, label %.thread49, label %.lr.ph.i, !llvm.loop !71

_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit:   ; preds = %.thread.i
  %cond.not.not = icmp eq i32 %.22136.i, 0
  br i1 %cond.not.not, label %.thread49, label %bb.h

_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit.thread38: ; preds = %bb.e, %bb.g
  tail call void @_ZN10union_bvecI11tbv_manager3tbvE5eraseERS0_j(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(552) %0, i32 noundef %.02565)
  br label %_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit.thread

_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit.thread.loopexit: ; preds = %bb.c
  %i.bp = add i32 %.02565, 1
  br label %_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit.thread

_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit.thread: ; preds = %_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit.thread.loopexit, %_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit.thread38
  %.227.ph = phi i32 [ %.02565, %_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit.thread38 ], [ %i.bp, %_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit.thread.loopexit ] ; 2 uses
  %i.bq = load i32, ptr %i.b, align 8, !tbaa !27
  %.not = icmp ult i32 %.227.ph, %i.bq
  br i1 %.not, label %.lr.ph.backedge, label %.thread49

.lr.ph.backedge:                                  ; preds = %_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit.thread, %bb.h
  %.02565.be = phi i32 [ %.227.ph, %_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit.thread ], [ 0, %bb.h ]
  %.164.be = phi i32 [ %.3.ph, %_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit.thread ], [ %.430, %bb.h ]
  br label %.lr.ph, !llvm.loop !73

bb.h:                                             ; preds = %_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit
  %i.br = shl i32 %.430, 1                        ; 2 uses
  %i.bs = lshr i32 %i.br, 5
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !69 ; 2 uses
  %i.bw = and i32 %i.br, 30                       ; 2 uses
  %i.bx = shl nuw nsw i32 1, %i.bw
  %i.by = and i32 %i.bv, %i.bx
  %.not.i.i = icmp eq i32 %i.by, 0
  %i.bz = select i1 %.not.i.i, i32 0, i32 2
  %i.ca = shl nuw i32 2, %i.bw
  %i.cb = and i32 %i.bv, %i.ca
  %i.cc = icmp ne i32 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %i.ce = or disjoint i32 %i.bz, %i.cd
  %i.cf = xor i32 %i.ce, 3
  tail call void @_ZN11tbv_manager3setER3tbvj4tbit(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.l, i32 noundef %.430, i32 noundef %i.cf)
  %i.cg = load ptr, ptr %1, align 8, !tbaa !22
  tail call void @_ZN10union_bvecI11tbv_manager3tbvE9intersectERS0_RKS1_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.cg)
  %i.ch = load i32, ptr %i.b, align 8, !tbaa !27
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.thread49, label %.lr.ph.backedge

.thread49:                                        ; preds = %_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit, %bb.h, %_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit.thread, %.lr.ph, %bb.b, %.thread.i.thread, %.thread.i.thread.peel, %bb.a
  %i.cj = phi i1 [ true, %bb.a ], [ false, %.thread.i.thread ], [ false, %.thread.i.thread.peel ], [ true, %bb.h ], [ true, %_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit.thread ], [ false, %.lr.ph ], [ false, %_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj.exit ], [ false, %bb.b ]
  ret i1 %i.cj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7tbv_refD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !52, !nonnull !53, !align !54
  invoke void @_ZN11tbv_manager10deallocateEP3tbv(ptr noundef nonnull align 8 dereferenceable(552) %i.c, ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11doc_manager7set_andER3docRK3tbv(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  %i.b = tail call noundef zeroext i1 @_ZNK11tbv_manager7set_andER3tbvRKS0_(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN10union_bvecI11tbv_manager3tbvE9intersectERS0_RKS1_(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.d = tail call noundef zeroext i1 @_ZN11doc_manager8fold_negER3doc(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(88) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK11doc_manager11well_formedERK3doc(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  %i.b = tail call noundef zeroext i1 @_ZNK11tbv_manager14is_well_formedERK3tbv(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.b, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr %i.d, align 8, !tbaa !27
  %i.h = zext i32 %i.g to i64
  %.not = icmp samesign ult i64 %indvars.iv.next, %i.h
  br i1 %.not, label %.lr.ph, label %.loopexit, !llvm.loop !74

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = tail call noundef zeroext i1 @_ZNK11tbv_manager14is_well_formedERK3tbv(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
  br i1 %i.l, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.m = load ptr, ptr %1, align 8, !tbaa !22
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.q = tail call noundef zeroext i1 @_ZNK11tbv_manager8containsERK3tbvS2_(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.p)
  br i1 %i.q, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.lr.ph, %bb.b, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ false, %.lr.ph ], [ false, %bb.c ], [ true, %bb.b ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK11tbv_manager14is_well_formedERK3tbv(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11tbv_manager8containsERK3tbvS2_(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i32 0, 4) i32 @_ZN11doc_manager11diff_by_012ERK3tbvS2_Rj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1080) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  %i.c = lshr i32 %i.b, 1                         ; 2 uses
  %.not2942.not = icmp eq i32 %i.c, 0
  br i1 %.not2942.not, label %.thread38, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.thread
  %.01944 = phi i32 [ %.22136, %.thread ], [ 0, %bb.a ] ; 2 uses
  %.02543 = phi i32 [ %i.ab, %.thread ], [ 0, %bb.a ] ; 4 uses
  %i.d = shl nuw i32 %.02543, 1
  %i.e = lshr i32 %.02543, 4
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !69   ; 2 uses
  %i.i = and i32 %i.d, 30                         ; 2 uses
  %i.j = shl nuw nsw i32 1, %i.i                  ; 2 uses
  %i.k = and i32 %i.h, %i.j
  %.not.i.i = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not.i.i, i32 0, i32 2
  %i.m = shl nuw i32 2, %i.i                      ; 2 uses
  %i.n = and i32 %i.h, %i.m
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = or disjoint i32 %i.l, %i.p               ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.f
  %i.s = load i32, ptr %i.r, align 4, !tbaa !69   ; 2 uses
  %i.t = and i32 %i.s, %i.j
  %.not.i.i32 = icmp eq i32 %i.t, 0
  %i.u = select i1 %.not.i.i32, i32 0, i32 2
  %i.v = and i32 %i.s, %i.m
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = or disjoint i32 %i.u, %i.x               ; 2 uses
  %.not = icmp eq i32 %i.q, %i.y
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.z = icmp eq i32 %.01944, 1
  br i1 %i.z, label %.thread38, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp eq i32 %i.q, 3
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %.02543, ptr %3, align 4, !tbaa !69
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %.not28 = icmp eq i32 %i.y, 3
  br i1 %.not28, label %.thread, label %.thread38

.thread:                                          ; preds = %.lr.ph, %bb.d, %bb.e
  %.22136 = phi i32 [ 0, %bb.e ], [ %.01944, %.lr.ph ], [ 1, %bb.d ] ; 2 uses
  %i.ab = add nuw nsw i32 %.02543, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.c
  br i1 %exitcond.not, label %.thread38, label %.lr.ph, !llvm.loop !70

.thread38:                                        ; preds = %bb.e, %.thread, %bb.b, %bb.a
  %spec.select = phi i32 [ 0, %bb.a ], [ %.22136, %.thread ], [ 2, %bb.b ], [ 3, %bb.e ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10union_bvecI11tbv_manager3tbvE5eraseERS0_j(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(552) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  tail call void @_ZN11tbv_manager10deallocateEP3tbv(ptr noundef nonnull align 8 dereferenceable(552) %1, ptr noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !27   ; 7 uses
  %.010 = add i32 %2, 1                           ; 2 uses
  %i.g = icmp ult i32 %.010, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !26     ; 10 uses
  %i.i = zext i32 %.010 to i64                    ; 2 uses
  %i.j = zext i32 %2 to i64                       ; 2 uses
  %i.k = xor i32 %2, -1
  %i.l = add i32 %i.f, %i.k
  %i.m = add i32 %i.f, -2
  %i.n = sub i32 %i.m, %2
  %xtraiter20 = and i32 %i.l, 3                   ; 2 uses
  %lcmp.mod21.not = icmp eq i32 %xtraiter20, 0
  br i1 %lcmp.mod21.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.i, %.lr.ph ] ; 4 uses
  %.0.in11.prol = phi i64 [ %indvars.iv.prol, %.prol.preheader ], [ %i.j, %.lr.ph ]
  %prol.iter22 = phi i32 [ %prol.iter22.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.prol
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0.in11.prol
  store ptr %i.p, ptr %i.q, align 8, !tbaa !29
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter22.next = add i32 %prol.iter22, 1     ; 2 uses
  %prol.iter22.cmp.not = icmp eq i32 %prol.iter22.next, %xtraiter20
  br i1 %prol.iter22.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !75

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %.0.in11.unr = phi i64 [ %i.j, %.lr.ph ], [ %indvars.iv.prol, %.prol.preheader ]
  %i.r = icmp ult i32 %i.n, 3
  br i1 %i.r, label %._crit_edge.thread, label %.lr.ph.new

._crit_edge:                                      ; preds = %bb.a
  %i.s = add i32 %i.f, -1                         ; 2 uses
  %i.t = icmp eq i32 %i.f, 0
  br i1 %i.t, label %.preheader.i, label %.preheader17.i

.preheader.i:                                     ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load i32, ptr %i.u, align 4, !tbaa !28
  br label %bb.b

bb.b:                                             ; preds = %_ZN6bufferIP3tbvLb0ELj8EE9push_backERKS1_.exit.i, %.preheader.i
  %i.w = phi i32 [ %.pre.i, %.preheader.i ], [ %i.bc, %_ZN6bufferIP3tbvLb0ELj8EE9push_backERKS1_.exit.i ] ; 3 uses
  %i.x = phi i32 [ 0, %.preheader.i ], [ %i.bh, %_ZN6bufferIP3tbvLb0ELj8EE9push_backERKS1_.exit.i ] ; 2 uses
  %.01320.i = phi i32 [ 0, %.preheader.i ], [ %i.bi, %_ZN6bufferIP3tbvLb0ELj8EE9push_backERKS1_.exit.i ]
  %.not.i.i = icmp ult i32 %i.x, %i.w
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !26
  br label %_ZN6bufferIP3tbvLb0ELj8EE9push_backERKS1_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.y = shl i32 %i.w, 1                          ; 3 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.aa) ; 9 uses
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !27  ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !26 ; 10 uses
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %.pre.i.i.i18 = ptrtoaddr ptr %.pre.i.i.i to i64
  %i.ad = ptrtoaddr ptr %i.ab to i64
  %wide.trip.count.i.i.i = zext i32 %i.ac to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %i.ac, 4
  %i.ae = sub i64 %.pre.i.i.i18, %i.ad
  %diff.check = icmp ugt i64 %i.ae, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !29
  %wide.load19 = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <2 x ptr> %wide.load, ptr %i.af, align 8, !tbaa !29
  store <2 x ptr> %wide.load19, ptr %i.ai, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i.prol
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !29
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !77

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.an = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge.i.i.i, label %scalar.ph

._crit_edge.i.i.i:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i.i, %i.v
  %i.ap = icmp eq ptr %.pre.i.i.i, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i, %i.ap
  br i1 %or.cond.i.i.i.i, label %_ZN6bufferIP3tbvLb0ELj8EE6expandEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i)
  %.pre2.pre.i.i = load i32, ptr %i.e, align 8, !tbaa !27
  br label %_ZN6bufferIP3tbvLb0ELj8EE6expandEv.exit.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !29
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !29
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !29
  store ptr %i.av, ptr %i.at, align 8, !tbaa !29
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.1
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !29
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !29
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.2
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !29
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !29
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %scalar.ph, !llvm.loop !78

_ZN6bufferIP3tbvLb0ELj8EE6expandEv.exit.i.i:      ; preds = %bb.d, %._crit_edge.i.i.i
  %.pre2.i.i = phi i32 [ %i.ac, %._crit_edge.i.i.i ], [ %.pre2.pre.i.i, %bb.d ]
  store ptr %i.ab, ptr %0, align 8, !tbaa !26
  store i32 %i.y, ptr %i.u, align 4, !tbaa !28
  br label %_ZN6bufferIP3tbvLb0ELj8EE9push_backERKS1_.exit.i

_ZN6bufferIP3tbvLb0ELj8EE9push_backERKS1_.exit.i: ; preds = %_ZN6bufferIP3tbvLb0ELj8EE6expandEv.exit.i.i, %._crit_edge.i.i
  %i.bc = phi i32 [ %i.w, %._crit_edge.i.i ], [ %i.y, %_ZN6bufferIP3tbvLb0ELj8EE6expandEv.exit.i.i ]
  %i.bd = phi i32 [ %i.x, %._crit_edge.i.i ], [ %.pre2.i.i, %_ZN6bufferIP3tbvLb0ELj8EE6expandEv.exit.i.i ] ; 2 uses
  %i.be = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ab, %_ZN6bufferIP3tbvLb0ELj8EE6expandEv.exit.i.i ]
  %i.bf = zext i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  store ptr null, ptr %i.bg, align 8, !tbaa !29
  %i.bh = add i32 %i.bd, 1                        ; 2 uses
  store i32 %i.bh, ptr %i.e, align 8, !tbaa !27
  %i.bi = add i32 %.01320.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bi, %i.s
  br i1 %exitcond.not.i, label %_ZN6bufferIP3tbvLb0ELj8EE6resizeEjRKS1_.exit, label %bb.b, !llvm.loop !60

.preheader17.i:                                   ; preds = %._crit_edge.thread, %._crit_edge
  %i.bj = phi i32 [ %i.bw, %._crit_edge.thread ], [ %i.s, %._crit_edge ]
  store i32 %i.bj, ptr %i.e, align 8, !tbaa !27
  br label %_ZN6bufferIP3tbvLb0ELj8EE6resizeEjRKS1_.exit
end_hunk_0
