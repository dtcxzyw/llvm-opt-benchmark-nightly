Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/dot?download=true
inline.NumInlined: 383
inline.NumDeleted: 164
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK6casadi3Dot10sp_forwardEPPKyPPyPxS4_:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef 0, i64 noundef 0) #17
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 6 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !35     ; 6 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.j = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 8 uses
  store i64 0, ptr %i.a, align 8, !tbaa !37
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %min.iters.check = icmp ult i64 %i.j, 12
  br i1 %min.iters.check, label %.lr.ph.preheader31, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.l = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.m = shl i64 %i.j, 3                          ; 2 uses
  %i.n = getelementptr i8, ptr %i.h, i64 %i.m
  %i.o = getelementptr i8, ptr %i.g, i64 %i.m
  %bound0 = icmp ult ptr %i.a, %i.n
  %bound1 = icmp ult ptr %i.h, %i.l
  %found.conflict = and i1 %bound0, %bound1
  %bound021 = icmp ult ptr %i.a, %i.o
  %bound122 = icmp ult ptr %i.g, %i.l
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx = or i1 %found.conflict, %found.conflict23
  br i1 %conflict.rdx, label %.lr.ph.preheader31, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 9223372036854775804      ; 4 uses
  %i.p = shl i64 %n.vec, 3                        ; 2 uses
  %i.q = getelementptr i8, ptr %i.g, i64 %i.p
  %i.r = getelementptr i8, ptr %i.h, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi24 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %i.s = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.s ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.h, i64 %i.s ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep25, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep25, align 8, !tbaa !37, !alias.scope !87
  %wide.load26 = load <2 x i64>, ptr %i.t, align 8, !tbaa !37, !alias.scope !87
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  %wide.load27 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !37, !alias.scope !88
  %wide.load28 = load <2 x i64>, ptr %i.u, align 8, !tbaa !37, !alias.scope !88
  %i.v = or <2 x i64> %wide.load27, %wide.load
  %i.w = or <2 x i64> %wide.load28, %wide.load26
  %i.x = or <2 x i64> %i.v, %vec.phi              ; 2 uses
  %i.y = or <2 x i64> %i.w, %vec.phi24            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.y, %i.x
  %i.aa = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !37, !alias.scope !89, !noalias !90
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader31

.lr.ph.preheader31:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.aa, %middle.block ] ; 2 uses
  %.014.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.01013.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.preheader ], [ %i.q, %middle.block ] ; 2 uses
  %.01112.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.preheader ], [ %i.r, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader31, %.lr.ph.prol
  %i.ab = phi i64 [ %i.ah, %.lr.ph.prol ], [ %.ph, %.lr.ph.preheader31 ]
  %.014.prol = phi i64 [ %i.ai, %.lr.ph.prol ], [ %.014.ph, %.lr.ph.preheader31 ]
  %.01013.prol = phi ptr [ %i.ae, %.lr.ph.prol ], [ %.01013.ph, %.lr.ph.preheader31 ] ; 2 uses
  %.01112.prol = phi ptr [ %i.ac, %.lr.ph.prol ], [ %.01112.ph, %.lr.ph.preheader31 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader31 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.01112.prol, i64 8 ; 2 uses
  %i.ad = load i64, ptr %.01112.prol, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %.01013.prol, i64 8 ; 2 uses
  %i.af = load i64, ptr %.01013.prol, align 8, !tbaa !37
  %i.ag = or i64 %i.af, %i.ad
  %i.ah = or i64 %i.ag, %i.ab                     ; 3 uses
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !37
  %i.ai = add nuw nsw i64 %.014.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !85

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader31
  %.unr = phi i64 [ %.ph, %.lr.ph.preheader31 ], [ %i.ah, %.lr.ph.prol ]
  %.014.unr = phi i64 [ %.014.ph, %.lr.ph.preheader31 ], [ %i.ai, %.lr.ph.prol ]
  %.01013.unr = phi ptr [ %.01013.ph, %.lr.ph.preheader31 ], [ %i.ae, %.lr.ph.prol ]
  %.01112.unr = phi ptr [ %.01112.ph, %.lr.ph.preheader31 ], [ %i.ac, %.lr.ph.prol ]
  %i.aj = sub nsw i64 %.014.ph, %i.j
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %_ZNK6casadi6MXNode3depEx.exit
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.al = phi i64 [ %i.bj, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.014 = phi i64 [ %i.bk, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ]
  %.01013 = phi ptr [ %i.bg, %.lr.ph ], [ %.01013.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.01112 = phi ptr [ %i.be, %.lr.ph ], [ %.01112.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01112, i64 8
  %i.an = load i64, ptr %.01112, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %.01013, i64 8
  %i.ap = load i64, ptr %.01013, align 8, !tbaa !37
  %i.aq = or i64 %i.ap, %i.an
  %i.ar = or i64 %i.aq, %i.al                     ; 2 uses
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %.01112, i64 16
  %i.at = load i64, ptr %i.am, align 8, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %.01013, i64 16
  %i.av = load i64, ptr %i.ao, align 8, !tbaa !37
  %i.aw = or i64 %i.av, %i.at
  %i.ax = or i64 %i.aw, %i.ar                     ; 2 uses
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %.01112, i64 24
  %i.az = load i64, ptr %i.as, align 8, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %.01013, i64 24
  %i.bb = load i64, ptr %i.au, align 8, !tbaa !37
  %i.bc = or i64 %i.bb, %i.az
  %i.bd = or i64 %i.bc, %i.ax                     ; 2 uses
  store i64 %i.bd, ptr %i.a, align 8, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %.01112, i64 32
  %i.bf = load i64, ptr %i.ay, align 8, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %.01013, i64 32
  %i.bh = load i64, ptr %i.ba, align 8, !tbaa !37
  %i.bi = or i64 %i.bh, %i.bf
  %i.bj = or i64 %i.bi, %i.bd                     ; 2 uses
  store i64 %i.bj, ptr %i.a, align 8, !tbaa !37
  %i.bk = add nuw nsw i64 %.014, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bk, %i.j
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !86
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi3Dot10sp_reverseEPPyS2_PxS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !35     ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef 0, i64 noundef 0) #17
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 7 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !35     ; 7 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.j = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %min.iters.check = icmp ult i64 %i.j, 12
  br i1 %min.iters.check, label %.lr.ph.preheader41, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.l = shl i64 %i.j, 3                          ; 2 uses
  %i.m = getelementptr i8, ptr %i.h, i64 %i.l     ; 2 uses
  %i.n = getelementptr i8, ptr %i.g, i64 %i.l     ; 2 uses
  %i.o = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %bound0 = icmp ult ptr %i.h, %i.n
  %bound1 = icmp ult ptr %i.g, %i.m
  %found.conflict = and i1 %bound0, %bound1
  %bound026 = icmp ult ptr %i.h, %i.o
  %bound127 = icmp ult ptr %i.a, %i.m
  %found.conflict28 = and i1 %bound026, %bound127
  %conflict.rdx = or i1 %found.conflict, %found.conflict28
  %bound029 = icmp ult ptr %i.g, %i.o
  %bound130 = icmp ult ptr %i.a, %i.n
  %found.conflict31 = and i1 %bound029, %bound130
  %conflict.rdx32 = or i1 %conflict.rdx, %found.conflict31
  br i1 %conflict.rdx32, label %.lr.ph.preheader41, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 9223372036854775804      ; 4 uses
  %i.p = shl i64 %n.vec, 3                        ; 2 uses
  %i.q = getelementptr i8, ptr %i.g, i64 %i.p
  %i.r = getelementptr i8, ptr %i.h, i64 %i.p
  %i.s = load i64, ptr %i.a, align 8, !tbaa !37, !alias.scope !97 ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert37 = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat38 = shufflevector <2 x i64> %broadcast.splatinsert37, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.t ; 3 uses
  %next.gep33 = getelementptr i8, ptr %i.h, i64 %i.t ; 3 uses
  %i.u = getelementptr i8, ptr %next.gep33, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep33, align 8, !tbaa !37, !alias.scope !98, !noalias !99
  %wide.load34 = load <2 x i64>, ptr %i.u, align 8, !tbaa !37, !alias.scope !98, !noalias !99
  %i.v = or <2 x i64> %wide.load, %broadcast.splat
  %i.w = or <2 x i64> %wide.load34, %broadcast.splat
  store <2 x i64> %i.v, ptr %next.gep33, align 8, !tbaa !37, !alias.scope !98, !noalias !99
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !37, !alias.scope !98, !noalias !99
  %i.x = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load35 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !37, !alias.scope !100, !noalias !97
  %wide.load36 = load <2 x i64>, ptr %i.x, align 8, !tbaa !37, !alias.scope !100, !noalias !97
  %i.y = or <2 x i64> %wide.load35, %broadcast.splat38
  %i.z = or <2 x i64> %wide.load36, %broadcast.splat38
  store <2 x i64> %i.y, ptr %next.gep, align 8, !tbaa !37, !alias.scope !100, !noalias !97
  store <2 x i64> %i.z, ptr %i.x, align 8, !tbaa !37, !alias.scope !100, !noalias !97
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader41

.lr.ph.preheader41:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.015.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.01114.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.preheader ], [ %i.q, %middle.block ] ; 4 uses
  %.01213.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.preheader ], [ %i.r, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.015.ph, 1
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader41
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %.01213.ph, i64 8
  %i.ad = load i64, ptr %.01213.ph, align 8, !tbaa !37
  %i.ae = or i64 %i.ad, %i.ab
  store i64 %i.ae, ptr %.01213.ph, align 8, !tbaa !37
  %i.af = load i64, ptr %i.a, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %.01114.ph, i64 8
  %i.ah = load i64, ptr %.01114.ph, align 8, !tbaa !37
  %i.ai = or i64 %i.ah, %i.af
  store i64 %i.ai, ptr %.01114.ph, align 8, !tbaa !37
  %i.aj = or disjoint i64 %.015.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader41
  %.015.unr = phi i64 [ %.015.ph, %.lr.ph.preheader41 ], [ %i.aj, %.lr.ph.prol ]
  %.01114.unr = phi ptr [ %.01114.ph, %.lr.ph.preheader41 ], [ %i.ag, %.lr.ph.prol ]
  %.01213.unr = phi ptr [ %.01213.ph, %.lr.ph.preheader41 ], [ %i.ac, %.lr.ph.prol ]
  %i.ak = icmp eq i64 %i.j, %.neg
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %_ZNK6casadi6MXNode3depEx.exit
  store i64 0, ptr %i.a, align 8, !tbaa !37
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.015 = phi i64 [ %i.bb, %.lr.ph ], [ %.015.unr, %.lr.ph.prol.loopexit ]
  %.01114 = phi ptr [ %i.ay, %.lr.ph ], [ %.01114.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.01213 = phi ptr [ %i.au, %.lr.ph ], [ %.01213.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.al = load i64, ptr %i.a, align 8, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %.01213, i64 8 ; 2 uses
  %i.an = load i64, ptr %.01213, align 8, !tbaa !37
  %i.ao = or i64 %i.an, %i.al
  store i64 %i.ao, ptr %.01213, align 8, !tbaa !37
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %.01114, i64 8 ; 2 uses
  %i.ar = load i64, ptr %.01114, align 8, !tbaa !37
  %i.as = or i64 %i.ar, %i.ap
  store i64 %i.as, ptr %.01114, align 8, !tbaa !37
  %i.at = load i64, ptr %i.a, align 8, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %.01213, i64 16
  %i.av = load i64, ptr %i.am, align 8, !tbaa !37
  %i.aw = or i64 %i.av, %i.at
  store i64 %i.aw, ptr %i.am, align 8, !tbaa !37
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %.01114, i64 16
  %i.az = load i64, ptr %i.aq, align 8, !tbaa !37
  %i.ba = or i64 %i.az, %i.ax
  store i64 %i.ba, ptr %i.aq, align 8, !tbaa !37
  %i.bb = add nuw nsw i64 %.015, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bb, %i.j
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !96
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi3Dot8generateERNS_13CodeGeneratorERKSt6vectorIxSaIxEES7_RKS3_IbSaIbEERS9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %4, ptr nofree nonnull readnone align 8 captures(none) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.a = load ptr, ptr %3, align 8, !tbaa !102
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37
  call void @_ZNK6casadi13CodeGenerator6workelB5cxx11Ex(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %1, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsIPKcEERS0_T_(ptr noundef nonnull align 8 dereferenceable(3289) %i.c, ptr noundef nonnull @.str.7)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.not, label %bb.d, label %_ZNK6casadi6MXNode3depEx.exit

bb.d:                                             ; preds = %bb.c
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef 0, i64 noundef 0) #17
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.c
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc22 unwind label %bb.p

.noexc22:                                         ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.j = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE3nnzEv.exit unwind label %bb.p

_ZNK6casadi13GenericMatrixINS_2MXEE3nnzEv.exit:   ; preds = %.noexc22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.k = load ptr, ptr %2, align 8, !tbaa !102
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %.not.i.i.i24.not = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i24.not, label %bb.e, label %_ZNK6casadi6MXNode3depEx.exit26

bb.e:                                             ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE3nnzEv.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef 0, i64 noundef 0) #17
          to label %.noexc25 unwind label %bb.q

.noexc25:                                         ; preds = %bb.e
  unreachable

_ZNK6casadi6MXNode3depEx.exit26:                  ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE3nnzEv.exit
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc27 unwind label %bb.q

.noexc27:                                         ; preds = %_ZNK6casadi6MXNode3depEx.exit26
  %i.p = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %.noexc27
  %i.q = load ptr, ptr %4, align 8, !tbaa !105
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19
  %i.s = trunc i64 %i.r to i1
  invoke void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.l, i64 noundef %i.p, i1 noundef zeroext %i.s)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.t = load ptr, ptr %2, align 8, !tbaa !102
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !37
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3                 ; 2 uses
  %.not.i.i.i30 = icmp ugt i64 %i.ab, 1
  br i1 %.not.i.i.i30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef 1, i64 noundef %i.ab) #17
          to label %.noexc31 unwind label %bb.r

.noexc31:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %.noexc33 unwind label %bb.r

.noexc33:                                         ; preds = %bb.i
  %i.ae = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %.noexc33
  %i.af = load ptr, ptr %4, align 8, !tbaa !105
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !19
  %i.ah = and i64 %i.ag, 2
  %i.ai = icmp ne i64 %i.ah, 0
  invoke void @_ZNK6casadi13CodeGenerator4workB5cxx11Exxb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.v, i64 noundef %i.ae, i1 noundef zeroext %i.ai)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6casadi13CodeGenerator3dotExRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(3289) %1, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.aj = invoke noundef nonnull align 8 dereferenceable(3289) ptr @_ZN6casadi13CodeGeneratorlsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3289) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.l
end_hunk_0
