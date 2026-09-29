Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/paramdict?download=true
inline.NumInlined: 2392
inline.NumDeleted: 900
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE6insertISt16reverse_iteratorIPKS2_EEEPS2_SB_T_SE_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %2, align 8, !tbaa !63     ; 2 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !63     ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = add i64 %i.n, %i.f                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i, i64 8, i64 %i.q
  %.not.i = icmp ult i64 %i.r, %i.o
  br i1 %.not.i, label %bb.c, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = shl i64 %i.o, 3                          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %0, align 8, !tbaa !59     ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef %i.s, i64 noundef 8), !inline_history !157
  %.pre.pre.i = load ptr, ptr %i.a, align 8, !tbaa !26
  %.pre = load i64, ptr %i.e, align 8, !tbaa !27
  br label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i

_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i: ; preds = %bb.d, %bb.c
  %i.z = phi i64 [ %.pre, %bb.d ], [ %i.f, %bb.c ] ; 12 uses
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.d ], [ %i.b, %bb.c ] ; 4 uses
  %.0.i.i.i.i = phi ptr [ %i.y, %bb.d ], [ null, %bb.c ] ; 14 uses
  %.not15.i = icmp eq i64 %i.z, 0
  br i1 %.not15.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i
  %.0.i.i.i.i21 = ptrtoaddr ptr %.0.i.i.i.i to i64
  %.not.i12.i = icmp eq ptr %.pre.i, null
  %i.aa = select i1 %.not.i12.i, ptr %i.c, ptr %.pre.i ; 12 uses
  %min.iters.check = icmp ult i64 %i.z, 4
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %.0.i.i.i.i21
  %diff.check = icmp ugt i64 %i.ac, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check22 = icmp ult i64 %i.z, 16
  br i1 %min.iters.check22, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.z, 12
  %n.vec = and i64 %i.z, -16                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %index ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %wide.load = load <4 x ptr>, ptr %i.af, align 8, !tbaa !35
  %wide.load23 = load <4 x ptr>, ptr %i.ag, align 8, !tbaa !35
  %wide.load24 = load <4 x ptr>, ptr %i.ah, align 8, !tbaa !35
  %wide.load25 = load <4 x ptr>, ptr %i.ai, align 8, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  store <4 x ptr> %wide.load, ptr %i.ae, align 8, !tbaa !35
  store <4 x ptr> %wide.load23, ptr %i.aj, align 8, !tbaa !35
  store <4 x ptr> %wide.load24, ptr %i.ak, align 8, !tbaa !35
  store <4 x ptr> %wide.load25, ptr %i.al, align 8, !tbaa !35
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !169

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %i.z, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %index27
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index27
  %wide.load28 = load <4 x ptr>, ptr %i.ao, align 8, !tbaa !35
  store <4 x ptr> %wide.load28, ptr %i.an, align 8, !tbaa !35
  %index.next29 = add nuw i64 %index27, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next29, %n.vec26
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %i.z, %n.vec26
  br i1 %cmp.n30, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec26, %vec.epilog.middle.block ] ; 4 uses
  %i.aq = sub i64 %i.z, %indvars.iv.i.ph
  %xtraiter = and i64 %i.aq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.prol
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i.prol
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !35
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !35
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !160

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.au = sub i64 %indvars.iv.i.ph, %i.z
  %i.av = icmp ugt i64 %i.au, -8
  br i1 %i.av, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i
  %.not.i.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.aw = load i64, ptr %i.p, align 8, !tbaa !29
  %i.ax = shl i64 %i.aw, 3
  %i.ay = load ptr, ptr %0, align 8, !tbaa !59    ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !61
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %.pre.i, i64 noundef %i.ax, i64 noundef 8), !inline_history !161
  %.pre13.pre = load i64, ptr %i.e, align 8, !tbaa !27
  br label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i

_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i: ; preds = %bb.e, %._crit_edge.i
  %.pre13 = phi i64 [ %.pre13.pre, %bb.e ], [ %i.z, %._crit_edge.i ]
  store i64 %i.o, ptr %i.p, align 8, !tbaa !29
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !26
  %.pre14 = load ptr, ptr %2, align 8, !tbaa !63
  %.pre15 = load ptr, ptr %3, align 8, !tbaa !63
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %vec.epilog.scalar.ph ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !35
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !35
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !35
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !35
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.1
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.1
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !35
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !35
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.2
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.2
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !35
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !35
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.3
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.3
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !35
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !35
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.4
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.4
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !35
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !35
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.5
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.5
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !35
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !35
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.6
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.i.6
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !35
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !35
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %i.z
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !162

_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit: ; preds = %bb.b, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i
  %i.ca = phi ptr [ %i.j, %bb.b ], [ %.pre15, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i ] ; 5 uses
  %i.cb = phi ptr [ %i.i, %bb.b ], [ %.pre14, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i ] ; 12 uses
  %i.cc = phi i64 [ %i.f, %bb.b ], [ %.pre13, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i ] ; 3 uses
  %i.cd = phi ptr [ %i.b, %bb.b ], [ %.0.i.i.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i ] ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.cd, null
  %i.ce = select i1 %.not.i.i6, ptr %i.c, ptr %i.cd ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %i.cc ; 8 uses
  %.not9 = icmp eq ptr %i.cb, %i.ca
  br i1 %.not9, label %._crit_edge, label %iter.check54

iter.check54:                                     ; preds = %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit
  %4 = ptrtoaddr ptr %i.ca to i64
  %5 = ptrtoaddr ptr %i.cb to i64
  %i.cg = add i64 %5, -8
  %i.ch = sub i64 %i.cg, %4                       ; 3 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 5 uses
  %min.iters.check33 = icmp ult i64 %i.ch, 24
  br i1 %min.iters.check33, label %.lr.ph.preheader, label %vector.memcheck31

vector.memcheck31:                                ; preds = %iter.check54
  %i.ck = shl i64 %i.cc, 3
  %6 = ptrtoaddr ptr %i.cb to i64
  %7 = ptrtoaddr ptr %i.ca to i64
  %i.cl = add i64 %6, -8
  %i.cm = sub i64 %i.cl, %7
  %i.cn = and i64 %i.cm, -8                       ; 2 uses
  %i.co = getelementptr i8, ptr %i.ce, i64 %i.ck
  %i.cp = getelementptr i8, ptr %i.co, i64 %i.cn
  %scevgep = getelementptr i8, ptr %i.cp, i64 8
  %i.cq = sub nuw nsw i64 -8, %i.cn
  %scevgep32 = getelementptr i8, ptr %i.cb, i64 %i.cq
  %bound0 = icmp ult ptr %i.cf, %i.cb
  %bound1 = icmp ult ptr %scevgep32, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check34

vector.main.loop.iter.check34:                    ; preds = %vector.memcheck31
  %min.iters.check35 = icmp ult i64 %i.ch, 120
  br i1 %min.iters.check35, label %vec.epilog.ph58, label %vector.ph36

vector.ph36:                                      ; preds = %vector.main.loop.iter.check34
  %i.cr = and i64 %i.cj, 12
  %n.vec37 = and i64 %i.cj, 4611686018427387888   ; 5 uses
  %i.cs = shl i64 %n.vec37, 3
  %i.ct = getelementptr i8, ptr %i.cf, i64 %i.cs  ; 2 uses
  %i.cu = mul i64 %n.vec37, -8
  %i.cv = getelementptr i8, ptr %i.cb, i64 %i.cu
  br label %vector.body38

vector.body38:                                    ; preds = %vector.ph36, %vector.body38
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next48, %vector.body38 ] ; 3 uses
  %i.cw = shl i64 %index39, 3
  %next.gep = getelementptr i8, ptr %i.cf, i64 %i.cw ; 4 uses
  %i.cx = mul i64 %index39, -8
  %next.gep40 = getelementptr i8, ptr %i.cb, i64 %i.cx ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %next.gep40, i64 -32
  %i.cz = getelementptr inbounds i8, ptr %next.gep40, i64 -64
  %i.da = getelementptr inbounds i8, ptr %next.gep40, i64 -96
  %i.db = getelementptr inbounds i8, ptr %next.gep40, i64 -128
  %wide.load41 = load <4 x ptr>, ptr %i.cy, align 8, !tbaa !35, !alias.scope !170
  %wide.load42 = load <4 x ptr>, ptr %i.cz, align 8, !tbaa !35, !alias.scope !170
  %wide.load43 = load <4 x ptr>, ptr %i.da, align 8, !tbaa !35, !alias.scope !170
  %wide.load44 = load <4 x ptr>, ptr %i.db, align 8, !tbaa !35, !alias.scope !170
  %reverse = shufflevector <4 x ptr> %wide.load41, <4 x ptr> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse45 = shufflevector <4 x ptr> %wide.load42, <4 x ptr> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse46 = shufflevector <4 x ptr> %wide.load43, <4 x ptr> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse47 = shufflevector <4 x ptr> %wide.load44, <4 x ptr> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.dc = getelementptr i8, ptr %next.gep, i64 32
  %i.dd = getelementptr i8, ptr %next.gep, i64 64
  %i.de = getelementptr i8, ptr %next.gep, i64 96
  store <4 x ptr> %reverse, ptr %next.gep, align 8, !tbaa !35, !alias.scope !171, !noalias !170
  store <4 x ptr> %reverse45, ptr %i.dc, align 8, !tbaa !35, !alias.scope !171, !noalias !170
  store <4 x ptr> %reverse46, ptr %i.dd, align 8, !tbaa !35, !alias.scope !171, !noalias !170
  store <4 x ptr> %reverse47, ptr %i.de, align 8, !tbaa !35, !alias.scope !171, !noalias !170
  %index.next48 = add nuw i64 %index39, 16        ; 2 uses
  %i.df = icmp eq i64 %index.next48, %n.vec37
  br i1 %i.df, label %middle.block49, label %vector.body38, !llvm.loop !166

middle.block49:                                   ; preds = %vector.body38
  %cmp.n50 = icmp eq i64 %i.cj, %n.vec37
  br i1 %cmp.n50, label %._crit_edge, label %vec.epilog.iter.check56

vec.epilog.iter.check56:                          ; preds = %middle.block49
  %min.epilog.iters.check57 = icmp eq i64 %i.cr, 0
  br i1 %min.epilog.iters.check57, label %.lr.ph.preheader, label %vec.epilog.ph58, !prof !169

vec.epilog.ph58:                                  ; preds = %vector.main.loop.iter.check34, %vec.epilog.iter.check56
  %vec.epilog.resume.val51 = phi i64 [ %n.vec37, %vec.epilog.iter.check56 ], [ 0, %vector.main.loop.iter.check34 ]
  %n.vec59 = and i64 %i.cj, 4611686018427387900   ; 4 uses
  %i.dg = shl i64 %n.vec59, 3
  %i.dh = getelementptr i8, ptr %i.cf, i64 %i.dg  ; 2 uses
  %i.di = mul i64 %n.vec59, -8
  %i.dj = getelementptr i8, ptr %i.cb, i64 %i.di
  br label %vec.epilog.vector.body60

vec.epilog.vector.body60:                         ; preds = %vec.epilog.vector.body60, %vec.epilog.ph58
  %index61 = phi i64 [ %vec.epilog.resume.val51, %vec.epilog.ph58 ], [ %index.next66, %vec.epilog.vector.body60 ] ; 3 uses
  %i.dk = shl i64 %index61, 3
  %next.gep62 = getelementptr i8, ptr %i.cf, i64 %i.dk
  %i.dl = mul i64 %index61, -8
  %next.gep63 = getelementptr i8, ptr %i.cb, i64 %i.dl
  %i.dm = getelementptr inbounds i8, ptr %next.gep63, i64 -32
  %wide.load64 = load <4 x ptr>, ptr %i.dm, align 8, !tbaa !35, !alias.scope !170
  %reverse65 = shufflevector <4 x ptr> %wide.load64, <4 x ptr> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x ptr> %reverse65, ptr %next.gep62, align 8, !tbaa !35, !alias.scope !171, !noalias !170
  %index.next66 = add nuw i64 %index61, 4         ; 2 uses
  %i.dn = icmp eq i64 %index.next66, %n.vec59
  br i1 %i.dn, label %vec.epilog.middle.block67, label %vec.epilog.vector.body60, !llvm.loop !167

vec.epilog.middle.block67:                        ; preds = %vec.epilog.vector.body60
  %cmp.n68 = icmp eq i64 %i.cj, %n.vec59
  br i1 %cmp.n68, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check54, %vector.memcheck31, %vec.epilog.iter.check56, %vec.epilog.middle.block67
  %.011.ph = phi ptr [ %i.cf, %iter.check54 ], [ %i.cf, %vector.memcheck31 ], [ %i.ct, %vec.epilog.iter.check56 ], [ %i.dh, %vec.epilog.middle.block67 ]
  %.sroa.0.010.ph = phi ptr [ %i.cb, %iter.check54 ], [ %i.cb, %vector.memcheck31 ], [ %i.cv, %vec.epilog.iter.check56 ], [ %i.dj, %vec.epilog.middle.block67 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block49, %vec.epilog.middle.block67, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit
  %.0.lcssa = phi ptr [ %i.cf, %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEE7reserveEm.exit ], [ %i.dh, %vec.epilog.middle.block67 ], [ %i.ct, %middle.block49 ], [ %i.dv, %.lr.ph ]
  %i.do = ptrtoint ptr %i.cb to i64
  %i.dp = ptrtoint ptr %i.ca to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = ashr exact i64 %i.dq, 3
  %i.ds = add i64 %i.dr, %i.cc
  store i64 %i.ds, ptr %i.e, align 8, !tbaa !27
  ret ptr %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.011 = phi ptr [ %i.dv, %.lr.ph ], [ %.011.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.010 = phi ptr [ %i.dt, %.lr.ph ], [ %.sroa.0.010.ph, %.lr.ph.preheader ]
  %i.dt = getelementptr inbounds i8, ptr %.sroa.0.010, i64 -8 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !35
  store ptr %i.du, ptr %.011, align 8, !tbaa !35
  %i.dv = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dt, %i.ca
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !168

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.58, i32 noundef 537, ptr noundef nonnull @.str.59) #27
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !43
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !39, !alias.scope !174
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !41, !alias.scope !174
  store i8 0, ptr %i.a, align 8, !tbaa !42, !alias.scope !174
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !43, !alias.scope !174 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !42, !alias.scope !174
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #29
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !43
  invoke void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef %0, ptr noundef %i.h) #27
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !42
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}
end_hunk_0
