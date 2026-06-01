inline.NumInlined: 3173
inline.NumDeleted: 1582
begin_hunk_0_@_ZN6hermes5regex15AlternationNode11getChildrenEv:bb.a
_ZN4llvh15SmallVectorImplIPSt6vectorIPN6hermes5regex4NodeESaIS5_EEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.f, %bb.a ], [ %.pre10, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.g, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %.not8 = icmp eq ptr %i.n, %i.m
  br i1 %.not8, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvh15SmallVectorImplIPSt6vectorIPN6hermes5regex4NodeESaIS5_EEE7reserveEm.exit
  %.pre11 = load i32, ptr %i.b, align 8, !tbaa !29
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELb1EE9push_backERKS8_.exit, %_ZN4llvh15SmallVectorImplIPSt6vectorIPN6hermes5regex4NodeESaIS5_EEE7reserveEm.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvh23SmallVectorTemplateBaseIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELb1EE9push_backERKS8_.exit
  %i.o = phi i32 [ %i.w, %_ZN4llvh23SmallVectorTemplateBaseIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELb1EE9push_backERKS8_.exit ], [ %.pre11, %.lr.ph.preheader ] ; 2 uses
  %.sroa.05.09 = phi ptr [ %i.x, %_ZN4llvh23SmallVectorTemplateBaseIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELb1EE9push_backERKS8_.exit ], [ %i.n, %.lr.ph.preheader ] ; 2 uses
  %i.p = load i32, ptr %i.c, align 4, !tbaa !30
  %.not.i = icmp ult i32 %i.o, %i.p
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELb1EE9push_backERKS8_.exit, label %bb.c, !prof !44

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 8) #15
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !29
  br label %_ZN4llvh23SmallVectorTemplateBaseIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELb1EE9push_backERKS8_.exit

_ZN4llvh23SmallVectorTemplateBaseIPSt6vectorIPN6hermes5regex4NodeESaIS5_EELb1EE9push_backERKS8_.exit: ; preds = %.lr.ph, %bb.c
  %i.q = phi i32 [ %.pre.i, %bb.c ], [ %i.o, %.lr.ph ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !27
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = ptrtoint ptr %.sroa.05.09 to i64
  store i64 %i.u, ptr %i.t, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !29
  %i.w = add i32 %i.v, 1                          ; 2 uses
  store i32 %i.w, ptr %i.b, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex15AlternationNode15reverseChildrenEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %.not7 = icmp eq ptr %i.b, %i.d
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit
  %.sroa.04.08 = phi ptr [ %i.bl, %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = load ptr, ptr %.sroa.04.08, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !195
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #15, !inline_history !213
  %i.o = load ptr, ptr %.sroa.04.08, align 8, !tbaa !22 ; 11 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 6 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !22   ; 5 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %.neg.i = sext i1 %i.n to i64                   ; 3 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %.neg.i ; 3 uses
  %i.t = icmp ne ptr %i.o, %i.s
  %.sroa.0.08.i.i.i = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 5 uses
  %i.u = icmp ult ptr %i.o, %.sroa.0.08.i.i.i
  %or.cond.i.i.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.v = add i64 %i.r, -16
  %i.w = shl nsw i64 %.neg.i, 3
  %i.x = add i64 %i.v, %i.w
  %i.y = add i64 %i.p, 8
  %umax17 = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.y)
  %i.z = add i64 %umax17, -8                      ; 2 uses
  %i.aa = sub i64 %i.z, %i.p
  %i.ab = icmp ne i64 %i.z, %i.p                  ; 2 uses
  %umin18.neg = sext i1 %i.ab to i64
  %i.ac = select i1 %i.ab, i64 2, i64 1
  %i.ad = add i64 %i.aa, %umin18.neg
  %i.ae = lshr i64 %i.ad, 4
  %i.af = add nuw nsw i64 %i.ac, %i.ae            ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 16
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.o, i64 8
  %i.ag = add i64 %i.r, -16
  %i.ah = shl nsw i64 %.neg.i, 3                  ; 2 uses
  %i.ai = add i64 %i.ag, %i.ah
  %i.aj = add i64 %i.p, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.aj)
  %i.ak = add i64 %umax, -8                       ; 2 uses
  %i.al = icmp ne i64 %i.ak, %i.p
  %umin = zext i1 %i.al to i64                    ; 2 uses
  %i.am = add i64 %i.p, %umin
  %i.an = sub i64 %i.ak, %i.am
  %i.ao = lshr i64 %i.an, 4
  %i.ap = add nuw nsw i64 %i.ao, %umin
  %i.aq = shl nuw i64 %i.ap, 3                    ; 2 uses
  %scevgep14 = getelementptr i8, ptr %scevgep, i64 %i.aq
  %scevgep15 = getelementptr i8, ptr %i.q, i64 -8
  %i.ar = sub i64 %i.ah, %i.aq
  %scevgep16 = getelementptr i8, ptr %scevgep15, i64 %i.ar
  %bound0 = icmp ult ptr %i.o, %i.s
  %bound1 = icmp ult ptr %scevgep16, %scevgep14
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 2305843009213693948     ; 4 uses
  %i.as = mul i64 %n.vec, -8
  %i.at = getelementptr i8, ptr %.sroa.0.08.i.i.i, i64 %i.as
  %i.au = shl nuw i64 %n.vec, 3
  %i.av = getelementptr i8, ptr %i.o, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %.sroa.0.08.i.i.i, i64 %i.aw ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep19 = getelementptr i8, ptr %i.o, i64 %i.ax ; 3 uses
  %i.ay = getelementptr i8, ptr %next.gep19, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep19, align 8, !tbaa !25, !alias.scope !214, !noalias !217
  %wide.load20 = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !25, !alias.scope !214, !noalias !217
  %i.az = getelementptr i8, ptr %next.gep, i64 -8 ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep, i64 -24 ; 2 uses
  %wide.load21 = load <2 x ptr>, ptr %i.az, align 8, !tbaa !25, !alias.scope !217
  %wide.load22 = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !25, !alias.scope !217
  %reverse = shufflevector <2 x ptr> %wide.load21, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse23 = shufflevector <2 x ptr> %wide.load22, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse, ptr %next.gep19, align 8, !tbaa !25, !alias.scope !214, !noalias !217
  store <2 x ptr> %reverse23, ptr %i.ay, align 8, !tbaa !25, !alias.scope !214, !noalias !217
  %reverse24 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse25 = shufflevector <2 x ptr> %wide.load20, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse24, ptr %i.az, align 8, !tbaa !25, !alias.scope !217
  store <2 x ptr> %reverse25, ptr %i.ba, align 8, !tbaa !25, !alias.scope !217
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !219

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, label %.lr.ph.i.i.i.preheader27

.lr.ph.i.i.i.preheader27:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.0.010.i.i.i.ph = phi ptr [ %.sroa.0.08.i.i.i, %vector.memcheck ], [ %.sroa.0.08.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.sroa.05.09.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader27, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.010.i.i.i.ph, %.lr.ph.i.i.i.preheader27 ] ; 3 uses
  %.sroa.05.09.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i ], [ %.sroa.05.09.i.i.i.ph, %.lr.ph.i.i.i.preheader27 ] ; 3 uses
  %i.bc = load ptr, ptr %.sroa.05.09.i.i.i, align 8, !tbaa !25
  %i.bd = load ptr, ptr %.sroa.0.010.i.i.i, align 8, !tbaa !25
  store ptr %i.bd, ptr %.sroa.05.09.i.i.i, align 8, !tbaa !25
  store ptr %i.bc, ptr %.sroa.0.010.i.i.i, align 8, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i, i64 -8 ; 2 uses
  %i.bf = icmp ult ptr %i.be, %.sroa.0.0.i.i.i
  br i1 %i.bf, label %.lr.ph.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, !llvm.loop !220

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.b
  %.not13.i = icmp eq ptr %i.o, %i.q
  br i1 %.not13.i, label %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, %.lr.ph.i
  %.sroa.09.014.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %i.o, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i ] ; 2 uses
  %i.bg = load ptr, ptr %.sroa.09.014.i, align 8, !tbaa !25 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !195
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg) #15, !inline_history !213
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bk, %i.q
  br i1 %.not.i, label %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit, label %.lr.ph.i

_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit: ; preds = %.lr.ph.i, %.lr.ph, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.bl, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex15AlternationNode8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 6 uses
  %3 = alloca %"class.std::function", align 16    ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !210
  %.not.i.i.not = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not, label %bb.e, label %_ZNKSt8functionIFbvEEclEv.exit

_ZNKSt8functionIFbvEEclEv.exit:                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !221
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #15, !inline_history !223
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNKSt8functionIFbvEEclEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !202  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !205
  %.not.i.i6 = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i6, label %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.i, ptr %i.j, align 8, !tbaa !205
  br label %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE5clearEv.exit

_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE5clearEv.exit: ; preds = %bb.b, %bb.c
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !210  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt8functionIFbvEEaSEDn.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE5clearEv.exit
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3) #15, !inline_history !224 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbvEEaSEDn.exit

bb.e:                                             ; preds = %_ZNKSt8functionIFbvEEclEv.exit, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !205
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !202
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45   ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 24
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = icmp ult i64 %i.u, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !201 ; 4 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !197   ; 4 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.al = icmp ult i64 %i.ak, -7
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.ag, i64 noundef 7, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !197 ; 2 uses
  %.pre18 = load ptr, ptr %i.af, align 8, !tbaa !201
  %.pre21 = ptrtoint ptr %.pre.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15AlternationInsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.h:                                             ; preds = %bb.f
  %i.am = getelementptr i8, ptr %i.ah, i64 %i.ak
  %i.an = getelementptr i8, ptr %i.am, i64 7      ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %i.an
  br i1 %.not.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15AlternationInsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.an, ptr %i.af, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15AlternationInsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15AlternationInsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.pre-phi = phi i64 [ %.pre21, %bb.g ], [ %i.aj, %bb.h ], [ %i.aj, %bb.i ]
  %i.ao = phi ptr [ %.pre18, %bb.g ], [ %i.ag, %bb.h ], [ %i.an, %bb.i ]
  %i.ap = phi ptr [ %.pre.i, %bb.g ], [ %i.ah, %bb.h ], [ %i.ah, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ak
  store i8 15, ptr %i.aq, align 1, !tbaa !225
  %i.ar = and i64 %i.ak, 4294967295               ; 3 uses
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.as, %.pre-phi                ; 2 uses
  %.not.i.i.i7 = icmp ugt i64 %i.at, %i.ar
  br i1 %.not.i.i.i7, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15AlternationInsnEEptEv.exit9, label %bb.j

bb.j:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15AlternationInsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.ar, i64 noundef %i.at) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15AlternationInsnEEptEv.exit9: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_15AlternationInsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.au = trunc i64 %i.ak to i32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !197
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !205
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !202
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ay, %i.ba
  %i.bc = ashr exact i64 %i.bb, 4                 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 5
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !228
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !197
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.bc
  %i.bk = getelementptr i8, ptr %i.bj, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 6
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bo, align 8
  %i.bp = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 5 uses
  store ptr %0, ptr %i.bp, align 16, !tbaa !231
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %1, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !233
  %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i32 %i.au, ptr %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx, align 16, !tbaa !3
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %1, ptr %.sroa.514.0..sroa_idx, align 8, !tbaa !235
  store ptr %i.bp, ptr %3, align 16, !tbaa !237
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !238
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.b, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.br = load <2 x ptr>, ptr %i.c, align 8, !tbaa !237
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !237 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbvEZN6hermes5regex15AlternationNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.c, align 8, !tbaa !237
  store <2 x ptr> %i.br, ptr %i.bn, align 16, !tbaa !237
  store ptr @_ZNSt17_Function_handlerIFbvEZN6hermes5regex15AlternationNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.bq, align 8, !tbaa !237
  %.not.i.i10 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i10, label %_ZNSt8functionIFbvEEaSIZN6hermes5regex15AlternationNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15AlternationInsnEEptEv.exit9
  %i.bt = call noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #15, !inline_history !239 ; 0 uses
  %.pre19 = load ptr, ptr %i.o, align 8, !tbaa !205
  %.pre20 = load ptr, ptr %i.n, align 8, !tbaa !202
  %.pre22 = ptrtoint ptr %.pre19 to i64
  %.pre24 = ptrtoint ptr %.pre20 to i64
  %.pre26 = sub i64 %.pre22, %.pre24
  %.pre28 = ashr exact i64 %.pre26, 4
  br label %_ZNSt8functionIFbvEEaSIZN6hermes5regex15AlternationNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit

_ZNSt8functionIFbvEEaSIZN6hermes5regex15AlternationNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15AlternationInsnEEptEv.exit9, %bb.k
  %.pre-phi29 = phi i64 [ %i.bc, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_15AlternationInsnEEptEv.exit9 ], [ %.pre28, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.bu = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %.pre-phi29
  br label %_ZNSt8functionIFbvEEaSEDn.exit

bb.l:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !238
  store ptr %0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.by = load <2 x ptr>, ptr %i.c, align 8, !tbaa !237
  %i.bz = load ptr, ptr %i.c, align 8, !tbaa !237 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbvEZN6hermes5regex15AlternationNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.c, align 8, !tbaa !237
  store <2 x ptr> %i.by, ptr %i.bw, align 8, !tbaa !237
  store ptr @_ZNSt17_Function_handlerIFbvEZN6hermes5regex15AlternationNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.bx, align 8, !tbaa !237
  %.not.i.i11 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i11, label %_ZNSt8functionIFbvEEaSIZN6hermes5regex15AlternationNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE0_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = call noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #15, !inline_history !240 ; 0 uses
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !109
  br label %_ZNSt8functionIFbvEEaSIZN6hermes5regex15AlternationNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE0_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit

_ZNSt8functionIFbvEEaSIZN6hermes5regex15AlternationNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE0_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit: ; preds = %bb.l, %bb.m
  %i.cb = phi ptr [ %i.x, %bb.l ], [ %.pre, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -24
  br label %_ZNSt8functionIFbvEEaSEDn.exit

_ZNSt8functionIFbvEEaSEDn.exit:                   ; preds = %bb.d, %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE5clearEv.exit, %_ZNSt8functionIFbvEEaSIZN6hermes5regex15AlternationNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE0_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit, %_ZNSt8functionIFbvEEaSIZN6hermes5regex15AlternationNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit
  %.0 = phi ptr [ %i.cc, %_ZNSt8functionIFbvEEaSIZN6hermes5regex15AlternationNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE0_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit ], [ %i.bv, %_ZNSt8functionIFbvEEaSIZN6hermes5regex15AlternationNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit ], [ null, %_ZNSt6vectorIN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS1_10Jump32InsnEEESaIS5_EE5clearEv.exit ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK6hermes5regex4Node16matchConstraintsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex4Node11getChildrenEv(ptr dead_on_unwind noalias writable sret(%"class.llvh::SmallVector.61") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex4Node15reverseChildrenEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201  ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not49 = icmp ult i64 %i.g, %2
  br i1 %.not49, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1, !tbaa !18      ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = icmp sgt i64 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !44

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.m, i64 %2, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.m, align 1, !tbaa !18
  store i8 %i.q, ptr %i.d, align 1, !tbaa !18
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !201
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.c, align 8, !tbaa !201
  %i.t = sub i64 %i.n, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !44

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.t, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1, !tbaa !18
  store i8 %i.z, ptr %i.y, align 1, !tbaa !18
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.j, %bb.i, %bb.h
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.k:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.k, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.k ], [ %i.ac, %bb.l ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !201
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !44

bb.m:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.o, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.o:                                             ; preds = %bb.n
  %i.af = load i8, ptr %1, align 1, !tbaa !18
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1, !tbaa !18
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.m, %bb.n, %bb.o
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !201
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !201
  %.not.i.i.i51 = icmp eq ptr %i.d, %1
  br i1 %.not.i.i.i51, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.q:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !197   ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.r, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

end_hunk_0
begin_hunk_1_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_14LookaroundNodeEJSt6vectorIPNS0_4NodeESaIS8_EERtSB_RbSC_EEEPT_DpOT0_:bb.a
bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.bs, align 8, !tbaa !25
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !103
  br label %_ZNSt10unique_ptrIN6hermes5regex14LookaroundNodeESt14default_deleteIS2_EED2Ev.exit

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !49 ; 4 uses
  %i.bx = ptrtoint ptr %i.bs to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 6 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775800
  br i1 %i.ca, label %bb.i, label %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.cb = ashr exact i64 %i.bz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #18 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.bz ; 2 uses
  store ptr %i.a, ptr %i.ci, align 8, !tbaa !25
  %i.cj = icmp sgt i64 %i.bz, 0
  br i1 %i.cj, label %bb.j, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr align 8 %i.bw, i64 %i.bz, i1 false)
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPN6hermes5regex4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.bz) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ch, ptr %i.bq, align 8, !tbaa !49
  store ptr %i.ck, ptr %i.br, align 8, !tbaa !103
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.cl, ptr %i.bt, align 8, !tbaa !47
  br label %_ZNSt10unique_ptrIN6hermes5regex14LookaroundNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex14LookaroundNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.g
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex8GoalNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes5regex8GoalNode6isGoalEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex8GoalNode8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !197    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %.not.i = icmp eq i64 %i.g, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.c, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !197
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_8GoalInsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_8GoalInsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_8GoalInsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %.pre.i, %bb.b ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g
  store i8 0, ptr %i.i, align 1, !tbaa !225
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex14LookaroundNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex14LookaroundNodeE, i64 16), ptr %0, align 8, !tbaa !195
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #15, !inline_history !212 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #16
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex14LookaroundNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex14LookaroundNodeE, i64 16), ptr %0, align 8, !tbaa !195
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #15, !inline_history !348 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN6hermes5regex14LookaroundNodeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #16, !inline_history !349
  br label %_ZN6hermes5regex14LookaroundNodeD2Ev.exit

_ZN6hermes5regex14LookaroundNodeD2Ev.exit:        ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK6hermes5regex14LookaroundNode16matchConstraintsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.b = load i8, ptr %i.a, align 1, !tbaa !332, !range !291, !noundef !248
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, -5
  %.0 = select i1 %i.c, i8 0, i8 %i.f
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex14LookaroundNode11getChildrenEv(ptr dead_on_unwind noalias writable sret(%"class.llvh::SmallVector.61") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !30
  store ptr %i.a, ptr %i.b, align 8
  store i32 1, ptr %i.c, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex14LookaroundNode8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::function.114", align 16 ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !210
  %.not.i.i.not = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not, label %bb.c, label %_ZNKSt8functionIFvvEEclEv.exit

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !350
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #15, !inline_history !351
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !210  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt8functionIFvvEEaSEDn.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt8functionIFvvEEclEv.exit
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3) #15, !inline_history !352 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEaSEDn.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !201  ; 4 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !197    ; 4 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.o = icmp ult i64 %i.n, -12
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.j, i64 noundef 12, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !197 ; 2 uses
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !201
  %.pre24 = ptrtoint ptr %.pre.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14LookaroundInsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.k, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 12       ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.q
  br i1 %.not.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14LookaroundInsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.q, ptr %i.i, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14LookaroundInsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14LookaroundInsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi = phi i64 [ %.pre24, %bb.d ], [ %i.m, %bb.e ], [ %i.m, %bb.f ]
  %i.r = phi ptr [ %.pre, %bb.d ], [ %i.j, %bb.e ], [ %i.q, %bb.f ]
  %i.s = phi ptr [ %.pre.i, %bb.d ], [ %i.k, %bb.e ], [ %i.k, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n
  store i8 23, ptr %i.t, align 1, !tbaa !225
  %i.u = and i64 %i.n, 4294967295                 ; 3 uses
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.v, %.pre-phi                  ; 2 uses
  %.not.i.i.i5 = icmp ugt i64 %i.w, %i.u
  br i1 %.not.i.i.i5, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14LookaroundInsnEEptEv.exit13, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14LookaroundInsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.u, i64 noundef %i.w) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14LookaroundInsnEEptEv.exit13: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14LookaroundInsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.x = trunc i64 %i.n to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.z = load i8, ptr %i.y, align 1, !tbaa !332, !range !291, !noundef !248
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !353
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !333, !range !291, !noundef !248
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !355
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !329
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !356
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ak = load <2 x i16>, ptr %i.ai, align 4, !tbaa !268
  store <2 x i16> %i.ak, ptr %i.aj, align 1, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.am, align 8
  %i.an = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 4 uses
  store ptr %1, ptr %i.an, align 16, !tbaa !233
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.x, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 16, !tbaa !235
  store ptr %i.an, ptr %2, align 16, !tbaa !237
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !238
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.b, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load <2 x ptr>, ptr %i.c, align 8, !tbaa !237
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !237 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvvEZN6hermes5regex14LookaroundNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.c, align 8, !tbaa !237
  store <2 x ptr> %i.ap, ptr %i.al, align 16, !tbaa !237
  store ptr @_ZNSt17_Function_handlerIFvvEZN6hermes5regex14LookaroundNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.ao, align 8, !tbaa !237
  %.not.i.i14 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i14, label %_ZNSt8functionIFvvEEaSIZN6hermes5regex14LookaroundNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14LookaroundInsnEEptEv.exit13
  %i.ar = call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #15, !inline_history !357 ; 0 uses
  br label %_ZNSt8functionIFvvEEaSIZN6hermes5regex14LookaroundNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit

_ZNSt8functionIFvvEEaSIZN6hermes5regex14LookaroundNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14LookaroundInsnEEptEv.exit13, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNSt8functionIFvvEEaSEDn.exit

_ZNSt8functionIFvvEEaSEDn.exit:                   ; preds = %bb.b, %_ZNKSt8functionIFvvEEclEv.exit, %_ZNSt8functionIFvvEEaSIZN6hermes5regex14LookaroundNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit
  %.0 = phi ptr [ %i.as, %_ZNSt8functionIFvvEEaSIZN6hermes5regex14LookaroundNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit ], [ null, %_ZNKSt8functionIFvvEEclEv.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvvEZN6hermes5regex14LookaroundNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !237    ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !358  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !360
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !197  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.k, %i.e
  br i1 %.not.i.i.i.i.i.i, label %_ZSt10__invoke_rIvRZN6hermes5regex14LookaroundNode8emitStepERNS1_19RegexBytecodeStreamEEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.e, i64 noundef %i.k) #17
  unreachable

_ZSt10__invoke_rIvRZN6hermes5regex14LookaroundNode8emitStepERNS1_19RegexBytecodeStreamEEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !361, !nonnull !248, !align !249 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !201
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !197
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.p, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = add i32 %i.t, -6
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.u, ptr %i.w, align 1, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN6hermes5regex14LookaroundNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex14LookaroundNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !237
  store ptr %i.a, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex14LookaroundNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !241
  br label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex14LookaroundNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !237
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !364
  store ptr %i.c, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex14LookaroundNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !237    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex14LookaroundNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #16
  br label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex14LookaroundNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN6hermes5regex14LookaroundNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeQuantifierPrefixEPNS7_10QuantifierE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 7 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr %i.b, align 2, !tbaa !31
  switch i16 %i.f, label %bb.j [
    i16 42, label %bb.c
    i16 43, label %bb.d
    i16 63, label %bb.e
    i16 123, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.g, ptr %i.a, align 8, !tbaa !15
  store i32 0, ptr %1, align 8, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 -1, ptr %i.h, align 4, !tbaa !116
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.i, ptr %i.a, align 8, !tbaa !15
  store i32 1, ptr %1, align 8, !tbaa !115
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 -1, ptr %i.j, align 4, !tbaa !116
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.k, ptr %i.a, align 8, !tbaa !15
  store i32 0, ptr %1, align 8, !tbaa !115
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 1, ptr %i.l, align 4, !tbaa !116
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 3 uses
  %.not.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i16, ptr %i.m, align 2, !tbaa !31
  %i.o = add i16 %i.n, -48
  %or.cond.i = icmp ult i16 %i.o, 10
  br i1 %or.cond.i, label %.lr.ph.i.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.g, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i
  %.0415.i.i = phi i64 [ %spec.store.select.i.i, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.p = phi ptr [ %i.t, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i ], [ %i.m, %bb.g ] ; 3 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !31   ; 2 uses
  %i.r = add i16 %i.q, -48
  %i.s = icmp ult i16 %i.r, 10
  br i1 %i.s, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 3 uses
  %i.u = mul nuw nsw i64 %.0415.i.i, 10
  %i.v = zext nneg i16 %i.q to i64
  %i.w = add nsw i64 %i.u, -48
  %i.x = add nsw i64 %i.w, %i.v
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 4294967295) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.d
  br i1 %.not.i.i.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit, label %.lr.ph.i.i

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit: ; preds = %.lr.ph.i.i, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i
  %i.y = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.t, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i ] ; 5 uses
  %.04.lcssa.ph.i.i = phi i64 [ %.0415.i.i, %.lr.ph.i.i ], [ %spec.store.select.i.i, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i ]
  %.sroa.028.0.extract.trunc = trunc nuw i64 %.04.lcssa.ph.i.i to i32 ; 3 uses
  store i32 %.sroa.028.0.extract.trunc, ptr %1, align 8, !tbaa !115
  %.not.i.i = icmp eq ptr %i.y, %i.d
  br i1 %.not.i.i, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24.thread, label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i

_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i: ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit
  %i.z = load i16, ptr %i.y, align 2, !tbaa !31
  %i.aa = icmp eq i16 %i.z, 44
  br i1 %i.aa, label %bb.h, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24.thread

bb.h:                                             ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 5 uses
  %.not.i14 = icmp eq ptr %i.ab, %i.d
  br i1 %.not.i14, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !31
  %i.ad = add i16 %i.ac, -48
  %or.cond.i15 = icmp ult i16 %i.ad, 10
  br i1 %or.cond.i15, label %.lr.ph.i.i17, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24.thread

.lr.ph.i.i17:                                     ; preds = %bb.i, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i21
  %.0415.i.i18 = phi i64 [ %spec.store.select.i.i22, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i21 ], [ 0, %bb.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ai, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i21 ], [ %i.ab, %bb.i ] ; 3 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !31 ; 2 uses
  %i.ag = add i16 %i.af, -48
  %i.ah = icmp ult i16 %i.ag, 10
  br i1 %i.ah, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i21, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE31tryConsumeDecimalIntegerLiteralEv.exit24

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE13consumeCharIfIZNS7_28consumeDecimalIntegerLiteralEvEUlDsE_EEN4llvh8OptionalIDsEERKT_.exit.i.i21: ; preds = %.lr.ph.i.i17
end_hunk_1
begin_hunk_2_@_ZN6hermes5regex8LoopNodeD0Ev:bb.a
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #15, !inline_history !389 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN6hermes5regex8LoopNodeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #16
  br label %_ZN6hermes5regex8LoopNodeD2Ev.exit

_ZN6hermes5regex8LoopNodeD2Ev.exit:               ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK6hermes5regex8LoopNode16matchConstraintsEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !368
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i8, ptr %i.c, align 8
  %.0 = select i1 %.not, i8 0, i8 %i.d
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex8LoopNode11getChildrenEv(ptr dead_on_unwind noalias writable sret(%"class.llvh::SmallVector.61") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !30
  store ptr %i.a, ptr %i.b, align 8
  store i32 1, ptr %i.c, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes5regex8LoopNode15reverseChildrenEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !195
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #15, !inline_history !213
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !22   ; 11 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 6 uses
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !22   ; 5 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %.neg.i = sext i1 %i.k to i64                   ; 3 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.neg.i ; 3 uses
  %i.q = icmp ne ptr %i.l, %i.p
  %.sroa.0.08.i.i.i = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 5 uses
  %i.r = icmp ult ptr %i.l, %.sroa.0.08.i.i.i
  %or.cond.i.i.i = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.s = shl nsw i64 %.neg.i, 3
  %i.t = add i64 %i.s, %i.o
  %i.u = add i64 %i.t, -16
  %i.v = add i64 %i.m, 8
  %umax4 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.v)
  %i.w = add i64 %umax4, -8                       ; 2 uses
  %i.x = icmp ne i64 %i.w, %i.m
  %umin5 = zext i1 %i.x to i64                    ; 2 uses
  %i.y = add i64 %i.m, %umin5
  %i.z = sub i64 %i.w, %i.y
  %i.aa = lshr i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.aa, %umin5           ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ab, 35
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader14, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ad = shl nsw i64 %.neg.i, 3                  ; 2 uses
  %i.ae = add i64 %i.ad, %i.o
  %i.af = add i64 %i.ae, -16
  %i.ag = add i64 %i.m, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.ag)
  %i.ah = add i64 %umax, -8                       ; 2 uses
  %i.ai = icmp ne i64 %i.ah, %i.m
  %umin = zext i1 %i.ai to i64                    ; 2 uses
  %i.aj = add i64 %i.m, %umin
  %i.ak = sub i64 %i.ah, %i.aj
  %i.al = lshr i64 %i.ak, 4
  %i.am = add nuw nsw i64 %i.al, %umin
  %i.an = shl nuw i64 %i.am, 3                    ; 2 uses
  %i.ao = getelementptr i8, ptr %i.l, i64 %i.an
  %scevgep = getelementptr i8, ptr %i.ao, i64 8
  %i.ap = add nsw i64 %i.ad, -8
  %i.aq = sub i64 %i.ap, %i.an
  %scevgep3 = getelementptr i8, ptr %i.n, i64 %i.aq
  %bound0 = icmp ult ptr %i.l, %i.p
  %bound1 = icmp ult ptr %scevgep3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 4 uses
  %i.ar = mul i64 %n.vec, -8
  %i.as = getelementptr i8, ptr %.sroa.0.08.i.i.i, i64 %i.ar
  %i.at = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.l, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %.sroa.0.08.i.i.i, i64 %i.av ; 2 uses
  %i.aw = shl i64 %index, 3
  %next.gep6 = getelementptr i8, ptr %i.l, i64 %i.aw ; 3 uses
  %i.ax = getelementptr i8, ptr %next.gep6, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep6, align 8, !tbaa !25, !alias.scope !390, !noalias !393
  %wide.load7 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !25, !alias.scope !390, !noalias !393
  %i.ay = getelementptr i8, ptr %next.gep, i64 -8 ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 -24 ; 2 uses
  %wide.load8 = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !25, !alias.scope !393
  %wide.load9 = load <2 x ptr>, ptr %i.az, align 8, !tbaa !25, !alias.scope !393
  %reverse = shufflevector <2 x ptr> %wide.load8, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse10 = shufflevector <2 x ptr> %wide.load9, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse, ptr %next.gep6, align 8, !tbaa !25, !alias.scope !390, !noalias !393
  store <2 x ptr> %reverse10, ptr %i.ax, align 8, !tbaa !25, !alias.scope !390, !noalias !393
  %reverse11 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse12 = shufflevector <2 x ptr> %wide.load7, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse11, ptr %i.ay, align 8, !tbaa !25, !alias.scope !393
  store <2 x ptr> %reverse12, ptr %i.az, align 8, !tbaa !25, !alias.scope !393
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !395

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, label %.lr.ph.i.i.i.preheader14

.lr.ph.i.i.i.preheader14:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.0.010.i.i.i.ph = phi ptr [ %.sroa.0.08.i.i.i, %vector.memcheck ], [ %.sroa.0.08.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.sroa.05.09.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader14, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.010.i.i.i.ph, %.lr.ph.i.i.i.preheader14 ] ; 3 uses
  %.sroa.05.09.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i ], [ %.sroa.05.09.i.i.i.ph, %.lr.ph.i.i.i.preheader14 ] ; 3 uses
  %i.bb = load ptr, ptr %.sroa.05.09.i.i.i, align 8, !tbaa !25
  %i.bc = load ptr, ptr %.sroa.0.010.i.i.i, align 8, !tbaa !25
  store ptr %i.bc, ptr %.sroa.05.09.i.i.i, align 8, !tbaa !25
  store ptr %i.bb, ptr %.sroa.0.010.i.i.i, align 8, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i, i64 -8 ; 2 uses
  %i.be = icmp ult ptr %i.bd, %.sroa.0.0.i.i.i
  br i1 %i.be, label %.lr.ph.i.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, !llvm.loop !396

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.b
  %.not13.i = icmp eq ptr %i.l, %i.n
  br i1 %.not13.i, label %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i, %.lr.ph.i
  %.sroa.09.014.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %i.l, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i ] ; 2 uses
  %i.bf = load ptr, ptr %.sroa.09.014.i, align 8, !tbaa !25 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !195
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) #15, !inline_history !213
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bj, %i.n
  br i1 %.not.i, label %_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit, label %.lr.ph.i

_ZN6hermes5regex4Node15reverseNodeListERSt6vectorIPS1_SaIS3_EE.exit: ; preds = %.lr.ph.i, %bb.a, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN6hermes5regex4NodeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex8LoopNode8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::function.114", align 16 ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::function.114", align 16 ; 9 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::function.114", align 16 ; 9 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 12 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !210
  %.not.i.i.not = icmp eq ptr %i.f, null
  br i1 %.not.i.i.not, label %bb.b, label %_ZNKSt8functionIFvvEEclEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !201
  %i.i = load ptr, ptr %1, align 8, !tbaa !197
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.m, -6                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !103
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !49   ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %.not.i = icmp eq i64 %i.u, 8
  br i1 %.not.i, label %_ZNK6hermes5regex8LoopNode12isWidth1LoopEv.exit, label %_ZNK6hermes5regex8LoopNode12isWidth1LoopEv.exit.thread

_ZNK6hermes5regex8LoopNode12isWidth1LoopEv.exit:  ; preds = %bb.b
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !25   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !195
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #15, !inline_history !397
  br i1 %i.z, label %bb.c, label %_ZNK6hermes5regex8LoopNode12isWidth1LoopEv.exit.thread

bb.c:                                             ; preds = %_ZNK6hermes5regex8LoopNode12isWidth1LoopEv.exit
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !201 ; 4 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !197   ; 4 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i8 0, ptr %i.c, align 1, !tbaa !18
  %i.af = icmp ult i64 %i.ae, -18
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.aa, i64 noundef 18, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !197 ; 2 uses
  %.pre89 = load ptr, ptr %i.g, align 8, !tbaa !201
  %.pre90 = ptrtoint ptr %.pre.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14Width1LoopInsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = getelementptr i8, ptr %i.ab, i64 %i.ae
  %i.ah = getelementptr i8, ptr %i.ag, i64 18     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %i.ah
  br i1 %.not.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14Width1LoopInsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.ah, ptr %i.g, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14Width1LoopInsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14Width1LoopInsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.pre-phi = phi i64 [ %.pre90, %bb.d ], [ %i.ad, %bb.e ], [ %i.ad, %bb.f ]
  %i.ai = phi ptr [ %.pre89, %bb.d ], [ %i.aa, %bb.e ], [ %i.ah, %bb.f ]
  %i.aj = phi ptr [ %.pre.i, %bb.d ], [ %i.ab, %bb.e ], [ %i.ab, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae
  store i8 28, ptr %i.ak, align 1, !tbaa !225
  %i.al = and i64 %i.ae, 4294967295               ; 3 uses
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.am, %.pre-phi                ; 2 uses
  %.not.i.i.i18 = icmp ugt i64 %i.an, %i.al
  br i1 %.not.i.i.i18, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14Width1LoopInsnEEptEv.exit24, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14Width1LoopInsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.al, i64 noundef %i.an) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14Width1LoopInsnEEptEv.exit24: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14Width1LoopInsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.ao = trunc i64 %i.ae to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !371
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store i32 %i.aq, ptr %i.as, align 1, !tbaa !398
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 5
  %i.av = load <2 x i32>, ptr %i.at, align 8, !tbaa !3
  store <2 x i32> %i.av, ptr %i.au, align 1, !tbaa !3
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !374, !range !291, !noundef !248
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 13
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !400
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ba, align 8
  %i.bb = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 4 uses
  store ptr %1, ptr %i.bb, align 16, !tbaa !233
  %.sroa.0.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 %i.ao, ptr %.sroa.0.sroa.485.0..sroa_idx, align 8, !tbaa !3
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %1, ptr %.sroa.476.0..sroa_idx, align 16, !tbaa !235
  store ptr %i.bb, ptr %4, align 16, !tbaa !237
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 16, i1 false), !tbaa.struct !238
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bd = load <2 x ptr>, ptr %i.e, align 8, !tbaa !237
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !237 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvvEZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.e, align 8, !tbaa !237
  store <2 x ptr> %i.bd, ptr %i.az, align 16, !tbaa !237
  store ptr @_ZNSt17_Function_handlerIFvvEZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.bc, align 8, !tbaa !237
  %.not.i.i25 = icmp eq ptr %i.be, null
  br i1 %.not.i.i25, label %_ZNSt8functionIFvvEEaSIZN6hermes5regex8LoopNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14Width1LoopInsnEEptEv.exit24
  %i.bf = call noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #15, !inline_history !401 ; 0 uses
  br label %_ZNSt8functionIFvvEEaSIZN6hermes5regex8LoopNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit

_ZNSt8functionIFvvEEaSIZN6hermes5regex8LoopNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14Width1LoopInsnEEptEv.exit24, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZNSt8functionIFvvEEaSEDn.exit

_ZNK6hermes5regex8LoopNode12isWidth1LoopEv.exit.thread: ; preds = %bb.b, %_ZNK6hermes5regex8LoopNode12isWidth1LoopEv.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !368
  %i.bi = icmp eq i32 %i.bh, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = icmp eq i32 %i.bk, -1
  %or.cond5.i = select i1 %i.bi, i1 %i.bl, i1 false
  br i1 %or.cond5.i, label %bb.i, label %_ZNK6hermes5regex8LoopNode12isSimpleLoopEv.exit.thread

bb.i:                                             ; preds = %_ZNK6hermes5regex8LoopNode12isWidth1LoopEv.exit.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !372
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !373
  %i.bq = icmp eq i16 %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = load i8, ptr %i.br, align 8, !range !291
  %i.bt = trunc nuw i8 %i.bs to i1
  %or.cond.i = select i1 %i.bq, i1 %i.bt, i1 false
  br i1 %or.cond.i, label %_ZNK6hermes5regex8LoopNode12isSimpleLoopEv.exit, label %_ZNK6hermes5regex8LoopNode12isSimpleLoopEv.exit.thread

_ZNK6hermes5regex8LoopNode12isSimpleLoopEv.exit:  ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !376
  %i.bw = and i8 %i.bv, 4
  %.not = icmp eq i8 %i.bw, 0
  br i1 %.not, label %_ZNK6hermes5regex8LoopNode12isSimpleLoopEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK6hermes5regex8LoopNode12isSimpleLoopEv.exit
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !201 ; 4 uses
  %i.by = load ptr, ptr %1, align 8, !tbaa !197   ; 4 uses
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64               ; 3 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i8 0, ptr %i.b, align 1, !tbaa !18
  %i.cc = icmp ult i64 %i.cb, -6
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.bx, i64 noundef 6, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %.pre.i29 = load ptr, ptr %1, align 8, !tbaa !197 ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !201
  %.pre93 = ptrtoint ptr %.pre.i29 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19BeginSimpleLoopInsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.l:                                             ; preds = %bb.j
  %i.cd = getelementptr i8, ptr %i.by, i64 %i.cb
  %i.ce = getelementptr i8, ptr %i.cd, i64 6      ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.bx, %i.ce
  br i1 %.not.i.i.i26, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19BeginSimpleLoopInsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.ce, ptr %i.g, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19BeginSimpleLoopInsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19BeginSimpleLoopInsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.k, %bb.l, %bb.m
  %.pre-phi94 = phi i64 [ %.pre93, %bb.k ], [ %i.ca, %bb.l ], [ %i.ca, %bb.m ]
  %i.cf = phi ptr [ %.pre, %bb.k ], [ %i.bx, %bb.l ], [ %i.ce, %bb.m ]
  %i.cg = phi ptr [ %.pre.i29, %bb.k ], [ %i.by, %bb.l ], [ %i.by, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cb
  store i8 26, ptr %i.ch, align 1, !tbaa !225
  %i.ci = and i64 %i.cb, 4294967295               ; 3 uses
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.cj, %.pre-phi94              ; 2 uses
  %.not.i.i.i30 = icmp ugt i64 %i.ck, %i.ci
  br i1 %.not.i.i.i30, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19BeginSimpleLoopInsnEEptEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19BeginSimpleLoopInsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.ci, i64 noundef %i.ck) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19BeginSimpleLoopInsnEEptEv.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_19BeginSimpleLoopInsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.cl = trunc i64 %i.cb to i32
  %i.cm = load i8, ptr %i.bu, align 8, !tbaa !376
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !402
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.cq, align 8
  %i.cr = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 5 uses
  store ptr %1, ptr %i.cr, align 16, !tbaa !233
  %.sroa.0.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %i.cl, ptr %.sroa.0.sroa.474.0..sroa_idx, align 8, !tbaa !3
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i32 %i.n, ptr %.sroa.468.0..sroa_idx, align 16, !tbaa !3
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store ptr %1, ptr %.sroa.570.0..sroa_idx, align 8, !tbaa !235
  store ptr %i.cr, ptr %3, align 16, !tbaa !237
  %.sroa.0.i.i.i31.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 16, i1 false), !tbaa.struct !238
  store <2 x i64> %.sroa.0.i.i.i31.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ct = load <2 x ptr>, ptr %i.e, align 8, !tbaa !237
  %i.cu = load ptr, ptr %i.e, align 8, !tbaa !237 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvvEZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.e, align 8, !tbaa !237
  store <2 x ptr> %i.ct, ptr %i.cp, align 16, !tbaa !237
  store ptr @_ZNSt17_Function_handlerIFvvEZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.cs, align 8, !tbaa !237
  %.not.i.i32 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i32, label %_ZNSt8functionIFvvEEaSIZN6hermes5regex8LoopNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE0_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19BeginSimpleLoopInsnEEptEv.exit
  %i.cv = call noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #15, !inline_history !404 ; 0 uses
  br label %_ZNSt8functionIFvvEEaSIZN6hermes5regex8LoopNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE0_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit

_ZNSt8functionIFvvEEaSIZN6hermes5regex8LoopNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE0_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_19BeginSimpleLoopInsnEEptEv.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZNSt8functionIFvvEEaSEDn.exit

_ZNK6hermes5regex8LoopNode12isSimpleLoopEv.exit.thread: ; preds = %_ZNK6hermes5regex8LoopNode12isWidth1LoopEv.exit.thread, %bb.i, %_ZNK6hermes5regex8LoopNode12isSimpleLoopEv.exit
  %i.cw = load ptr, ptr %i.g, align 8, !tbaa !201 ; 4 uses
  %i.cx = load ptr, ptr %1, align 8, !tbaa !197   ; 4 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64               ; 3 uses
  %i.da = sub i64 %i.cy, %i.cz                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.db = icmp ult i64 %i.da, -23
  br i1 %i.db, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK6hermes5regex8LoopNode12isSimpleLoopEv.exit.thread
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.cw, i64 noundef 23, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i36 = load ptr, ptr %1, align 8, !tbaa !197 ; 2 uses
  %.pre88 = load ptr, ptr %i.g, align 8, !tbaa !201
  %.pre91 = ptrtoint ptr %.pre.i36 to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_13BeginLoopInsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.q:                                             ; preds = %_ZNK6hermes5regex8LoopNode12isSimpleLoopEv.exit.thread
  %i.dc = getelementptr i8, ptr %i.cx, i64 %i.da
  %i.dd = getelementptr i8, ptr %i.dc, i64 23     ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.cw, %i.dd
  br i1 %.not.i.i.i33, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_13BeginLoopInsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.dd, ptr %i.g, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_13BeginLoopInsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_13BeginLoopInsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.p, %bb.q, %bb.r
  %.pre-phi92 = phi i64 [ %.pre91, %bb.p ], [ %i.cz, %bb.q ], [ %i.cz, %bb.r ]
  %i.de = phi ptr [ %.pre88, %bb.p ], [ %i.cw, %bb.q ], [ %i.dd, %bb.r ]
  %i.df = phi ptr [ %.pre.i36, %bb.p ], [ %i.cx, %bb.q ], [ %i.cx, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.da
  store i8 24, ptr %i.dg, align 1, !tbaa !225
  %i.dh = and i64 %i.da, 4294967295               ; 3 uses
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.di, %.pre-phi92              ; 2 uses
  %.not.i.i.i37 = icmp ugt i64 %i.dj, %i.dh
  br i1 %.not.i.i.i37, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_13BeginLoopInsnEEptEv.exit49, label %bb.s

bb.s:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_13BeginLoopInsnEEENS1_18InstructionWrapperIT_EEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.dh, i64 noundef %i.dj) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_13BeginLoopInsnEEptEv.exit49: ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_13BeginLoopInsnEEENS1_18InstructionWrapperIT_EEv.exit
  %i.dk = trunc i64 %i.da to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !371
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dh ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  store i32 %i.dm, ptr %i.do, align 1, !tbaa !405
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 5
  %i.dq = load <2 x i32>, ptr %i.bg, align 8, !tbaa !3
  store <2 x i32> %i.dq, ptr %i.dp, align 1, !tbaa !3
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 13
  %i.dt = load <2 x i16>, ptr %i.dr, align 4, !tbaa !268
  store <2 x i16> %i.dt, ptr %i.ds, align 1, !tbaa !268
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dv = load i8, ptr %i.du, align 8, !tbaa !374, !range !291, !noundef !248
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 17
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !407
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !376
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 18
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.eb, align 8
  %i.ec = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 5 uses
  store ptr %1, ptr %i.ec, align 16, !tbaa !233
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i32 %i.dk, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i32 %i.n, ptr %.sroa.4.0..sroa_idx, align 16, !tbaa !3
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store ptr %1, ptr %.sroa.554.0..sroa_idx, align 8, !tbaa !235
  store ptr %i.ec, ptr %2, align 16, !tbaa !237
  %.sroa.0.i.i.i50.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 16, i1 false), !tbaa.struct !238
  store <2 x i64> %.sroa.0.i.i.i50.sroa.0.0.copyload, ptr %i.d, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ee = load <2 x ptr>, ptr %i.e, align 8, !tbaa !237
  %i.ef = load ptr, ptr %i.e, align 8, !tbaa !237 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvvEZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE1_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.e, align 8, !tbaa !237
  store <2 x ptr> %i.ee, ptr %i.ea, align 16, !tbaa !237
  store ptr @_ZNSt17_Function_handlerIFvvEZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE1_E9_M_invokeERKSt9_Any_data, ptr %i.ed, align 8, !tbaa !237
  %.not.i.i51 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i51, label %_ZNSt8functionIFvvEEaSIZN6hermes5regex8LoopNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE1_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_13BeginLoopInsnEEptEv.exit49
  %i.eg = call noundef zeroext i1 %i.ef(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #15, !inline_history !409 ; 0 uses
  br label %_ZNSt8functionIFvvEEaSIZN6hermes5regex8LoopNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE1_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit

_ZNSt8functionIFvvEEaSIZN6hermes5regex8LoopNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE1_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit: ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_13BeginLoopInsnEEptEv.exit49, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZNSt8functionIFvvEEaSEDn.exit

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !350
  tail call void %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %i.d) #15, !inline_history !351
  %i.ej = load ptr, ptr %i.e, align 8, !tbaa !210 ; 2 uses
  %.not.i53 = icmp eq ptr %i.ej, null
  br i1 %.not.i53, label %_ZNSt8functionIFvvEEaSEDn.exit, label %bb.u

bb.u:                                             ; preds = %_ZNKSt8functionIFvvEEclEv.exit
  %i.ek = tail call noundef zeroext i1 %i.ej(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3) #15, !inline_history !352 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEaSEDn.exit

_ZNSt8functionIFvvEEaSEDn.exit:                   ; preds = %bb.u, %_ZNKSt8functionIFvvEEclEv.exit, %_ZNSt8functionIFvvEEaSIZN6hermes5regex8LoopNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit, %_ZNSt8functionIFvvEEaSIZN6hermes5regex8LoopNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE1_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit, %_ZNSt8functionIFvvEEaSIZN6hermes5regex8LoopNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE0_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit
  %.0 = phi ptr [ %i.o, %_ZNSt8functionIFvvEEaSIZN6hermes5regex8LoopNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit ], [ %i.o, %_ZNSt8functionIFvvEEaSIZN6hermes5regex8LoopNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE0_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit ], [ %i.o, %_ZNSt8functionIFvvEEaSIZN6hermes5regex8LoopNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE1_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit ], [ null, %_ZNKSt8functionIFvvEEclEv.exit ], [ null, %bb.u ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvvEZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !237    ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !410  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !412
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !197  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.k, %i.e
  br i1 %.not.i.i.i.i.i.i, label %_ZSt10__invoke_rIvRZN6hermes5regex8LoopNode8emitStepERNS1_19RegexBytecodeStreamEEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.e, i64 noundef %i.k) #17
  unreachable

_ZSt10__invoke_rIvRZN6hermes5regex8LoopNode8emitStepERNS1_19RegexBytecodeStreamEEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !413, !nonnull !248, !align !249 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !201
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !197
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.p, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = add i32 %i.t, -6
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  store i32 %i.u, ptr %i.w, align 1, !tbaa !415
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !237
  store ptr %i.a, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !241
  br label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !237
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !364
  store ptr %i.c, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !237    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #16
  br label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvvEZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !237
  tail call void @_ZSt13__invoke_implIvRZN6hermes5regex8LoopNode8emitStepERNS1_19RegexBytecodeStreamEEUlvE0_JEET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !237
  store ptr %i.a, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !241
  br label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !237
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !tbaa.struct !416
  store ptr %i.c, ptr %0, align 8, !tbaa !237
  br label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !237    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 32) #16
  br label %_ZNSt14_Function_base13_Base_managerIZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt13__invoke_implIvRZN6hermes5regex8LoopNode8emitStepERNS1_19RegexBytecodeStreamEEUlvE0_JEET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !417
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !420, !nonnull !248, !align !249 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201  ; 4 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !197  ; 4 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.l = icmp ult i64 %i.k, -5
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %i.e, ptr %i.g, i64 noundef 5, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !197 ; 2 uses
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !201
  %.pre3.i = ptrtoint ptr %.pre.i.i to i64
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_17EndSimpleLoopInsnEEENS1_18InstructionWrapperIT_EEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.h, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 5        ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.n
  br i1 %.not.i.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_17EndSimpleLoopInsnEEENS1_18InstructionWrapperIT_EEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.f, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_17EndSimpleLoopInsnEEENS1_18InstructionWrapperIT_EEv.exit.i

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_17EndSimpleLoopInsnEEENS1_18InstructionWrapperIT_EEv.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.pre-phi.i = phi i64 [ %.pre3.i, %bb.b ], [ %i.j, %bb.c ], [ %i.j, %bb.d ]
  %i.o = phi ptr [ %.pre.i, %bb.b ], [ %i.g, %bb.c ], [ %i.n, %bb.d ]
  %i.p = phi ptr [ %.pre.i.i, %bb.b ], [ %i.h, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.k
  store i8 27, ptr %i.q, align 1, !tbaa !225
  %i.r = and i64 %i.k, 4294967295                 ; 3 uses
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.s, %.pre-phi.i                ; 2 uses
end_hunk_2
