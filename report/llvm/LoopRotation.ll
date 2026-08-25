Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopRotation?download=true
inline.NumInlined: 523
inline.NumDeleted: 335
begin_hunk_0_@_ZN4llvm15SmallVectorImplINS_11AssertingVHINS_9MemoryPhiEEEEaSEOS4_:bb.a

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck, %bb.g, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.p, %vector.memcheck ], [ %i.p, %bb.g ], [ %i.v, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %bb.g ], [ %i.x, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %bb.g ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.ad = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !147
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !147
  store ptr %i.ad, ptr %.0811.i.i.i.i.i, align 8, !tbaa !153
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ag = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ah = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN4llvm11AssertingVHINS0_9MemoryPhiEEES4_ET0_T_S6_S5_.exit, !llvm.loop !158

_ZSt4moveIPN4llvm11AssertingVHINS0_9MemoryPhiEEES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.f
  store i32 %i.o, ptr %i.q, align 8, !tbaa !104
  store i32 0, ptr %i.n, align 8, !tbaa !104
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !105
  %i.ak = icmp ult i32 %i.aj, %i.o
  br i1 %i.ak, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.q, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.al, i64 noundef %i.p, i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #10 ; 8 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !21    ; 8 uses
  %i.ao = load i32, ptr %i.q, align 8, !tbaa !104 ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %.idx.i.i = shl nuw nsw i64 %i.ap, 3            ; 3 uses
  %i.aq = getelementptr i8, ptr %i.an, i64 %.idx.i.i ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE19moveElementsForGrowEPS3_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.i
  %i.ar = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.as = lshr exact i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check85 = icmp ult i64 %i.ar, 56
  br i1 %min.iters.check85, label %.lr.ph.i.i.i.i.i.i.i.preheader120, label %vector.memcheck79

vector.memcheck79:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep80 = getelementptr i8, ptr %i.am, i64 %.idx.i.i
  %bound081 = icmp ult ptr %i.an, %scevgep80
  %bound182 = icmp ult ptr %i.am, %i.aq
  %found.conflict83 = and i1 %bound081, %bound182
  br i1 %found.conflict83, label %.lr.ph.i.i.i.i.i.i.i.preheader120, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck79
  %n.vec87 = and i64 %i.at, 4611686018427387900   ; 3 uses
  %i.au = shl i64 %n.vec87, 3                     ; 2 uses
  %i.av = getelementptr i8, ptr %i.am, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.an, i64 %i.au
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next94, %vector.body88 ] ; 2 uses
  %i.ax = shl i64 %index89, 3                     ; 2 uses
  %next.gep90 = getelementptr i8, ptr %i.am, i64 %i.ax ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.an, i64 %i.ax ; 3 uses
  %i.ay = getelementptr i8, ptr %next.gep91, i64 16 ; 2 uses
  %wide.load92 = load <2 x ptr>, ptr %next.gep91, align 8, !tbaa !147, !alias.scope !159, !noalias !162
  %wide.load93 = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !147, !alias.scope !159, !noalias !162
  store <2 x ptr> splat (ptr null), ptr %next.gep91, align 8, !tbaa !147, !alias.scope !159, !noalias !162
  store <2 x ptr> splat (ptr null), ptr %i.ay, align 8, !tbaa !147, !alias.scope !159, !noalias !162
  %i.az = getelementptr i8, ptr %next.gep90, i64 16
  store <2 x ptr> %wide.load92, ptr %next.gep90, align 8, !tbaa !153, !alias.scope !162
  store <2 x ptr> %wide.load93, ptr %i.az, align 8, !tbaa !153, !alias.scope !162
  %index.next94 = add nuw i64 %index89, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next94, %n.vec87
  br i1 %i.ba, label %middle.block95, label %vector.body88, !llvm.loop !164

middle.block95:                                   ; preds = %vector.body88
  %cmp.n96 = icmp eq i64 %i.at, %n.vec87
  br i1 %cmp.n96, label %_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE19moveElementsForGrowEPS3_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader120

.lr.ph.i.i.i.i.i.i.i.preheader120:                ; preds = %vector.memcheck79, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block95
  %.09.i.i.i.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck79 ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block95 ]
  %.sroa.04.08.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck79 ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aw, %middle.block95 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader120, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader120 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader120 ] ; 3 uses
  %i.bb = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 8, !tbaa !147
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 8, !tbaa !147
  store ptr %i.bb, ptr %.09.i.i.i.i.i.i.i, align 8, !tbaa !153
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.aq
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE19moveElementsForGrowEPS3_.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !165

_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE19moveElementsForGrowEPS3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block95, %bb.i
  %i.be = load i64, ptr %i.a, align 8, !tbaa !146
  %i.bf = icmp eq ptr %i.an, %i.al
  br i1 %i.bf, label %_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE4growEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE19moveElementsForGrowEPS3_.exit.i
  call void @free(ptr noundef %i.an) #10
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE4growEm.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE4growEm.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE19moveElementsForGrowEPS3_.exit.i, %bb.j
  store ptr %i.am, ptr %0, align 8, !tbaa !21
  %i.bg = trunc i64 %i.be to i32
  store i32 %i.bg, ptr %i.ai, align 4, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.pre41 = load ptr, ptr %1, align 8, !tbaa !21
  %.pre42 = load i32, ptr %i.n, align 8, !tbaa !104
  %.pre44 = zext i32 %.pre42 to i64
  br label %_ZSt4moveIPN4llvm11AssertingVHINS0_9MemoryPhiEEES4_ET0_T_S6_S5_.exit39

bb.k:                                             ; preds = %bb.h
  %.not32 = icmp eq i32 %i.r, 0
  %.pre43 = load ptr, ptr %0, align 8, !tbaa !21  ; 9 uses
  br i1 %.not32, label %_ZSt4moveIPN4llvm11AssertingVHINS0_9MemoryPhiEEES4_ET0_T_S6_S5_.exit39, label %.lr.ph.i.i.i.i.i35.preheader

.lr.ph.i.i.i.i.i35.preheader:                     ; preds = %bb.k
  %min.iters.check64 = icmp ult i32 %i.r, 8
  br i1 %min.iters.check64, label %.lr.ph.i.i.i.i.i35.preheader121, label %vector.memcheck57

vector.memcheck57:                                ; preds = %.lr.ph.i.i.i.i.i35.preheader
  %i.bh = shl nuw nsw i64 %i.s, 3                 ; 2 uses
  %scevgep58 = getelementptr i8, ptr %i.c, i64 %i.bh
  %scevgep59 = getelementptr i8, ptr %.pre43, i64 %i.bh
  %bound060 = icmp ult ptr %i.c, %scevgep59
  %bound161 = icmp ult ptr %.pre43, %scevgep58
  %found.conflict62 = and i1 %bound060, %bound161
  br i1 %found.conflict62, label %.lr.ph.i.i.i.i.i35.preheader121, label %vector.ph65

vector.ph65:                                      ; preds = %vector.memcheck57
  %n.vec66 = and i64 %i.s, 4294967292             ; 3 uses
  %i.bi = and i64 %i.s, 3
  %i.bj = shl nuw nsw i64 %n.vec66, 3             ; 2 uses
  %i.bk = getelementptr i8, ptr %.pre43, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.c, i64 %i.bj
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body67 ] ; 2 uses
  %i.bm = shl i64 %index68, 3                     ; 2 uses
  %next.gep69 = getelementptr i8, ptr %.pre43, i64 %i.bm ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.c, i64 %i.bm ; 3 uses
  %i.bn = getelementptr i8, ptr %next.gep70, i64 16 ; 2 uses
  %wide.load71 = load <2 x ptr>, ptr %next.gep70, align 8, !tbaa !147, !alias.scope !166, !noalias !169
  %wide.load72 = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !147, !alias.scope !166, !noalias !169
  store <2 x ptr> splat (ptr null), ptr %next.gep70, align 8, !tbaa !147, !alias.scope !166, !noalias !169
  store <2 x ptr> splat (ptr null), ptr %i.bn, align 8, !tbaa !147, !alias.scope !166, !noalias !169
  %i.bo = getelementptr i8, ptr %next.gep69, i64 16
  store <2 x ptr> %wide.load71, ptr %next.gep69, align 8, !tbaa !153, !alias.scope !169
  store <2 x ptr> %wide.load72, ptr %i.bo, align 8, !tbaa !153, !alias.scope !169
  %index.next73 = add nuw i64 %index68, 4         ; 2 uses
  %i.bp = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.bp, label %middle.block74, label %vector.body67, !llvm.loop !171

middle.block74:                                   ; preds = %vector.body67
  %cmp.n75 = icmp eq i64 %n.vec66, %i.s
  br i1 %cmp.n75, label %_ZSt4moveIPN4llvm11AssertingVHINS0_9MemoryPhiEEES4_ET0_T_S6_S5_.exit39, label %.lr.ph.i.i.i.i.i35.preheader121

.lr.ph.i.i.i.i.i35.preheader121:                  ; preds = %vector.memcheck57, %.lr.ph.i.i.i.i.i35.preheader, %middle.block74
  %.012.i.i.i.i.i36.ph = phi i64 [ %i.s, %vector.memcheck57 ], [ %i.s, %.lr.ph.i.i.i.i.i35.preheader ], [ %i.bi, %middle.block74 ]
  %.0811.i.i.i.i.i37.ph = phi ptr [ %.pre43, %vector.memcheck57 ], [ %.pre43, %.lr.ph.i.i.i.i.i35.preheader ], [ %i.bk, %middle.block74 ]
  %.0910.i.i.i.i.i38.ph = phi ptr [ %i.c, %vector.memcheck57 ], [ %i.c, %.lr.ph.i.i.i.i.i35.preheader ], [ %i.bl, %middle.block74 ]
  br label %.lr.ph.i.i.i.i.i35

.lr.ph.i.i.i.i.i35:                               ; preds = %.lr.ph.i.i.i.i.i35.preheader121, %.lr.ph.i.i.i.i.i35
  %.012.i.i.i.i.i36 = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i35 ], [ %.012.i.i.i.i.i36.ph, %.lr.ph.i.i.i.i.i35.preheader121 ] ; 2 uses
  %.0811.i.i.i.i.i37 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i35 ], [ %.0811.i.i.i.i.i37.ph, %.lr.ph.i.i.i.i.i35.preheader121 ] ; 2 uses
  %.0910.i.i.i.i.i38 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i35 ], [ %.0910.i.i.i.i.i38.ph, %.lr.ph.i.i.i.i.i35.preheader121 ] ; 3 uses
  %i.bq = load ptr, ptr %.0910.i.i.i.i.i38, align 8, !tbaa !147
  store ptr null, ptr %.0910.i.i.i.i.i38, align 8, !tbaa !147
  store ptr %i.bq, ptr %.0811.i.i.i.i.i37, align 8, !tbaa !153
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i38, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i37, i64 8
  %i.bt = add nsw i64 %.012.i.i.i.i.i36, -1
  %i.bu = icmp samesign ugt i64 %.012.i.i.i.i.i36, 1
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i35, label %_ZSt4moveIPN4llvm11AssertingVHINS0_9MemoryPhiEEES4_ET0_T_S6_S5_.exit39, !llvm.loop !172

_ZSt4moveIPN4llvm11AssertingVHINS0_9MemoryPhiEEES4_ET0_T_S6_S5_.exit39: ; preds = %.lr.ph.i.i.i.i.i35, %middle.block74, %bb.k, %_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE4growEm.exit
  %.pre-phi = phi i64 [ %.pre44, %_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE4growEm.exit ], [ %i.p, %bb.k ], [ %i.p, %middle.block74 ], [ %i.p, %.lr.ph.i.i.i.i.i35 ] ; 4 uses
  %i.bv = phi ptr [ %i.am, %_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE4growEm.exit ], [ %.pre43, %bb.k ], [ %.pre43, %middle.block74 ], [ %.pre43, %.lr.ph.i.i.i.i.i35 ] ; 2 uses
  %i.bw = phi ptr [ %.pre41, %_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE4growEm.exit ], [ %i.c, %bb.k ], [ %i.c, %middle.block74 ], [ %i.c, %.lr.ph.i.i.i.i.i35 ] ; 2 uses
  %.026 = phi i64 [ 0, %_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE4growEm.exit ], [ 0, %bb.k ], [ %i.s, %middle.block74 ], [ %i.s, %.lr.ph.i.i.i.i.i35 ] ; 4 uses
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %.pre-phi ; 2 uses
  %.not7.i.i.i.i.i = icmp samesign eq i64 %.026, %.pre-phi
  br i1 %.not7.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, label %.lr.ph.i.i.i.i.i40.preheader

.lr.ph.i.i.i.i.i40.preheader:                     ; preds = %_ZSt4moveIPN4llvm11AssertingVHINS0_9MemoryPhiEEES4_ET0_T_S6_S5_.exit39
  %i.by = getelementptr [8 x i8], ptr %i.bv, i64 %.026 ; 5 uses
  %i.bz = getelementptr [8 x i8], ptr %i.bw, i64 %.026 ; 5 uses
  %i.ca = shl nuw nsw i64 %.pre-phi, 3
  %2 = shl nuw nsw i64 %.026, 3
  %3 = add nsw i64 %i.ca, -8
  %i.cb = sub nsw i64 %3, %2                      ; 2 uses
  %i.cc = lshr exact i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check105 = icmp ult i64 %i.cb, 72
  br i1 %min.iters.check105, label %.lr.ph.i.i.i.i.i40.preheader119, label %vector.memcheck99

vector.memcheck99:                                ; preds = %.lr.ph.i.i.i.i.i40.preheader
  %i.ce = shl nuw nsw i64 %.pre-phi, 3
  %scevgep100 = getelementptr i8, ptr %i.bv, i64 %i.ce
  %bound0101 = icmp ult ptr %i.bz, %scevgep100
  %bound1102 = icmp ult ptr %i.by, %i.bx
  %found.conflict103 = and i1 %bound0101, %bound1102
  br i1 %found.conflict103, label %.lr.ph.i.i.i.i.i40.preheader119, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck99
  %n.vec107 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cf = shl i64 %n.vec107, 3                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.by, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.bz, i64 %i.cf
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next114, %vector.body108 ] ; 2 uses
  %i.ci = shl i64 %index109, 3                    ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.by, i64 %i.ci ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bz, i64 %i.ci ; 3 uses
  %i.cj = getelementptr i8, ptr %next.gep111, i64 16 ; 2 uses
  %wide.load112 = load <2 x ptr>, ptr %next.gep111, align 8, !tbaa !147, !alias.scope !173, !noalias !176
  %wide.load113 = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !147, !alias.scope !173, !noalias !176
  store <2 x ptr> splat (ptr null), ptr %next.gep111, align 8, !tbaa !147, !alias.scope !173, !noalias !176
  store <2 x ptr> splat (ptr null), ptr %i.cj, align 8, !tbaa !147, !alias.scope !173, !noalias !176
  %i.ck = getelementptr i8, ptr %next.gep110, i64 16
  store <2 x ptr> %wide.load112, ptr %next.gep110, align 8, !tbaa !153, !alias.scope !176
  store <2 x ptr> %wide.load113, ptr %i.ck, align 8, !tbaa !153, !alias.scope !176
  %index.next114 = add nuw i64 %index109, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next114, %n.vec107
  br i1 %i.cl, label %middle.block115, label %vector.body108, !llvm.loop !178

middle.block115:                                  ; preds = %vector.body108
  %cmp.n116 = icmp eq i64 %i.cd, %n.vec107
  br i1 %cmp.n116, label %_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, label %.lr.ph.i.i.i.i.i40.preheader119

.lr.ph.i.i.i.i.i40.preheader119:                  ; preds = %vector.memcheck99, %.lr.ph.i.i.i.i.i40.preheader, %middle.block115
  %.09.i.i.i.i.i.ph = phi ptr [ %i.by, %vector.memcheck99 ], [ %i.by, %.lr.ph.i.i.i.i.i40.preheader ], [ %i.cg, %middle.block115 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.bz, %vector.memcheck99 ], [ %i.bz, %.lr.ph.i.i.i.i.i40.preheader ], [ %i.ch, %middle.block115 ]
  br label %.lr.ph.i.i.i.i.i40

.lr.ph.i.i.i.i.i40:                               ; preds = %.lr.ph.i.i.i.i.i40.preheader119, %.lr.ph.i.i.i.i.i40
  %.09.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i40 ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i40.preheader119 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i40 ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i40.preheader119 ] ; 3 uses
  %i.cm = load ptr, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !147
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !147
  store ptr %i.cm, ptr %.09.i.i.i.i.i, align 8, !tbaa !153
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.cn, %i.bx
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, label %.lr.ph.i.i.i.i.i40, !llvm.loop !179

_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit: ; preds = %.lr.ph.i.i.i.i.i40, %middle.block115, %_ZSt4moveIPN4llvm11AssertingVHINS0_9MemoryPhiEEES4_ET0_T_S6_S5_.exit39
  store i32 %i.o, ptr %i.q, align 8, !tbaa !104
  store i32 0, ptr %i.n, align 8, !tbaa !104
  br label %bb.l

bb.l:                                             ; preds = %_ZSt4moveIPN4llvm11AssertingVHINS0_9MemoryPhiEEES4_ET0_T_S6_S5_.exit, %_ZN4llvm23SmallVectorTemplateBaseINS_11AssertingVHINS_9MemoryPhiEEELb0EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplINS_11AssertingVHINS_9MemoryPhiEEEE12assignRemoteEOS4_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt22_Optional_payload_baseIN4llvm16MemorySSAUpdaterEE12_M_constructIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(625) %0, ptr noundef nonnull align 8 dereferenceable(624) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !79
  store ptr %i.a, ptr %0, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 16, ptr %i.e, align 4, !tbaa !105
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !104
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11SmallVectorINS_6WeakVHELj16EEC2EOS2_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_6WeakVHEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(400) %i.b, ptr noundef nonnull align 8 dereferenceable(400) %i.h) ; 0 uses
  br label %_ZN4llvm11SmallVectorINS_6WeakVHELj16EEC2EOS2_.exit.i.i

_ZN4llvm11SmallVectorINS_6WeakVHELj16EEC2EOS2_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 432
  tail call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull %i.l, i32 noundef 8, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(88) %i.k) #10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.o, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 0, ptr %i.p, align 8, !tbaa !104
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 508
  store i32 8, ptr %i.q, align 4, !tbaa !105
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.s = load i32, ptr %i.r, align 8, !tbaa !104
  %.not.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm11SmallVectorINS_11AssertingVHINS_9MemoryPhiEEELj8EEC2EOS4_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_6WeakVHELj16EEC2EOS2_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.u = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_11AssertingVHINS_9MemoryPhiEEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(128) %i.n, ptr noundef nonnull align 8 dereferenceable(128) %i.t) ; 0 uses
  br label %_ZN4llvm11SmallVectorINS_11AssertingVHINS_9MemoryPhiEEELj8EEC2EOS4_.exit.i.i.i

_ZN4llvm11SmallVectorINS_11AssertingVHINS_9MemoryPhiEEELj8EEC2EOS4_.exit.i.i.i: ; preds = %bb.c, %_ZN4llvm11SmallVectorINS_6WeakVHELj16EEC2EOS2_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !109  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_11AssertingVHINS_9MemoryPhiEEELj8EEC2EOS4_.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !108
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !109
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.ae = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !134
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !134
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.v, ptr %i.af, align 8, !tbaa !135
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !112
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !112
  store ptr null, ptr %i.w, align 8, !tbaa !109
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !110
  store ptr %i.y, ptr %i.ad, align 8, !tbaa !111
  store i64 0, ptr %i.ag, align 8, !tbaa !112
  br label %_ZSt10_ConstructIN4llvm16MemorySSAUpdaterEJS1_EEvPT_DpOT0_.exit

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_11AssertingVHINS_9MemoryPhiEEELj8EEC2EOS4_.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr null, ptr %i.aj, align 8, !tbaa !109
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr %i.v, ptr %i.ak, align 8, !tbaa !110
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr %i.v, ptr %i.al, align 8, !tbaa !111
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 0, ptr %i.am, align 8, !tbaa !112
  br label %_ZSt10_ConstructIN4llvm16MemorySSAUpdaterEJS1_EEvPT_DpOT0_.exit

_ZSt10_ConstructIN4llvm16MemorySSAUpdaterEJS1_EEvPT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %i.z, %bb.d ]
  store i32 %.sink.i.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !108
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i8 1, ptr %i.an, align 8, !tbaa !67
  ret void
}

declare void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(17)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(80) ptr @_ZN4llvm17PreservedAnalyses8preserveEPNS_11AnalysisKeyE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i8, ptr %i.b, align 8, !tbaa !14, !range !18, !noundef !19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !107  ; 3 uses
  %i.h = zext i32 %i.g to i64
  %.idx.i.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i
  %.not1923.i.i = icmp eq i32 %i.g, 0
  br i1 %.not1923.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.critedge.i.i
  %.01524.i.i = phi ptr [ %i.k, %.critedge.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.01524.i.i, align 8, !tbaa !133
  %.not20.i.i = icmp eq ptr %i.j, %1
  br i1 %.not20.i.i, label %bb.c, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.01524.i.i, i64 8 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not19.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.l = add i32 %i.g, -1                         ; 3 uses
  store i32 %i.l, ptr %i.f, align 4, !tbaa !107
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133
  store ptr %i.o, ptr %.01524.i.i, align 8, !tbaa !133
  br label %_ZN4llvm15SmallPtrSetImplIPNS_11AnalysisKeyEE5eraseES2_.exit

end_hunk_0
