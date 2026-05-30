inline.NumInlined: 1525
inline.NumDeleted: 715
begin_hunk_0_@_ZN6hermes17PostOrderAnalysis14visitPostOrderEPNS_10BasicBlockERSt6vectorIS2_SaIS2_EE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store i32 0, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 32, ptr %i.h, align 4, !tbaa !18
  store ptr %0, ptr %i.f, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #11
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %.sroa.24.0..sroa_idx.i.i, align 8
  %i.k = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #11 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %i.k) #11
  br label %_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit

_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit: ; preds = %bb.a, %bb.b
  %.sink.i.i.i.i = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.k, ptr %i.m, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %.sink.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.n = load i32, ptr %i.g, align 8, !tbaa !17
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %i.g, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE9push_backERKS2_.exit, %_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit
  %.val925 = phi i32 [ %i.ck, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE9push_backERKS2_.exit ], [ %i.o, %_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit ] ; 2 uses
  %.val824 = load ptr, ptr %3, align 8, !tbaa !15
  %i.r = zext i32 %.val925 to i64
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %.val824, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -24 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !24   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !24
  %.not26 = icmp eq i32 %i.u, %i.w
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.m
  %i.x = phi i32 [ %i.bj, %bb.m ], [ %i.u, %bb.c ] ; 2 uses
  %i.y = phi ptr [ %i.bi, %bb.m ], [ %i.t, %bb.c ]
  %i.z = phi ptr [ %i.bh, %bb.m ], [ %i.s, %bb.c ]
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aa, align 8
  %i.ab = add nsw i32 %i.x, 1
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !24
  %i.ac = call noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %.sroa.0.0.copyload.i, i32 noundef %i.x) #11 ; 7 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !11, !noalias !25
  %i.ae = load ptr, ptr %2, align 8, !tbaa !7, !noalias !25 ; 3 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !13, !noalias !25 ; 4 uses
  %i.ah = zext i32 %i.ag to i64
  %.idx.i.i = shl nuw nsw i64 %i.ah, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i.i ; 2 uses
  %.not63.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not63.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.065.i.i = phi ptr [ %spec.select.i.i, %bb.e ], [ null, %bb.d ]
  %.04964.i.i = phi ptr [ %i.al, %bb.e ], [ %i.ae, %bb.d ] ; 3 uses
  %i.aj = load ptr, ptr %.04964.i.i, align 8, !tbaa !28, !noalias !25 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.aj, %i.ac
  br i1 %.not27.i.i, label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ak = icmp eq ptr %i.aj, inttoptr (i64 -2 to ptr)
  %spec.select.i.i = select i1 %i.ak, ptr %.04964.i.i, ptr %.065.i.i ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.04964.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %i.ai
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !29

.critedge.i.i:                                    ; preds = %bb.e
  %.not28.i.i = icmp eq ptr %spec.select.i.i, null
  br i1 %.not28.i.i, label %.critedge.thread.i.i, label %bb.f

bb.f:                                             ; preds = %.critedge.i.i
  store ptr %i.ac, ptr %spec.select.i.i, align 8, !tbaa !28, !noalias !25
  %i.am = load i32, ptr %i.e, align 8, !tbaa !14, !noalias !25
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr %i.e, align 8, !tbaa !14, !noalias !25
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit

.critedge.thread.i.i:                             ; preds = %.critedge.i.i, %bb.d
  %i.ao = load i32, ptr %i.c, align 8, !tbaa !12, !noalias !25
  %i.ap = icmp ult i32 %i.ag, %i.ao
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge.thread.i.i
  %i.aq = add nuw i32 %i.ag, 1
  store i32 %i.aq, ptr %i.d, align 4, !tbaa !13, !noalias !25
  store ptr %i.ac, ptr %i.ai, align 8, !tbaa !28, !noalias !25
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit

bb.h:                                             ; preds = %.critedge.thread.i.i, %.lr.ph
  %i.ar = call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef %i.ac) #11, !noalias !25
  %i.as = extractvalue { ptr, i8 } %i.ar, 1
  %i.at = trunc nuw i8 %i.as to i1
  br label %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit

_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.g, %bb.h
  %.fca.1.insert.merged.i.i = phi i1 [ %i.at, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ false, %.lr.ph.i.i ]
  %.val9.pre = load i32, ptr %i.g, align 8, !tbaa !17 ; 3 uses
  br i1 %.fca.1.insert.merged.i.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit
  %i.au = load i32, ptr %i.h, align 4, !tbaa !18
  %.not.i10 = icmp ult i32 %.val9.pre, %i.au
  br i1 %.not.i10, label %bb.k, label %bb.j, !prof !31

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.f, i64 noundef 0, i64 noundef 40) #11
  %.pre.i11 = load i32, ptr %i.g, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.av = phi i32 [ %.pre.i11, %bb.j ], [ %.val9.pre, %bb.i ]
  %i.aw = load ptr, ptr %3, align 8, !tbaa !15
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %i.ax ; 5 uses
  store ptr %i.ac, ptr %i.ay, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ac) #11
  store ptr %i.ba, ptr %i.az, align 8
  %.sroa.24.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i32 0, ptr %.sroa.24.0..sroa_idx.i.i12, align 8
  %i.bb = call noundef ptr @_ZN6hermes10BasicBlock13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ac) #11 ; 3 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i13, label %_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit16, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = call noundef i32 @_ZNK6hermes14TerminatorInst16getNumSuccessorsEv(ptr noundef nonnull align 8 dereferenceable(132) %i.bb) #11
  br label %_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit16

_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit16: ; preds = %bb.k, %bb.l
  %.sink.i.i.i.i14 = phi i32 [ %i.bc, %bb.l ], [ 0, %bb.k ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.bb, ptr %i.bd, align 8
  %.sroa.2.0..sroa_idx.i.i15 = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i32 %.sink.i.i.i.i14, ptr %.sroa.2.0..sroa_idx.i.i15, align 8
  %i.be = load i32, ptr %i.g, align 8, !tbaa !17
  %i.bf = add i32 %i.be, 1                        ; 2 uses
  store i32 %i.bf, ptr %i.g, align 8, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit16, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit
  %.val9 = phi i32 [ %i.bf, %_ZN4llvh15SmallVectorImplIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateE12emplace_backIJRS4_EEEvDpOT_.exit16 ], [ %.val9.pre, %_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_.exit ] ; 2 uses
  %.val8 = load ptr, ptr %3, align 8, !tbaa !15
  %i.bg = zext i32 %.val9 to i64
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %.val8, i64 %i.bg ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -24 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !24 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 -8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !24
  %.not = icmp eq i32 %i.bj, %i.bl
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.m, %bb.c
  %i.bm = phi i32 [ %.val925, %bb.c ], [ %.val9, %bb.m ] ; 2 uses
  %.lcssa23 = phi ptr [ %i.s, %bb.c ], [ %i.bh, %bb.m ]
  %i.bn = getelementptr inbounds i8, ptr %.lcssa23, i64 -40 ; 2 uses
  %i.bo = load ptr, ptr %i.p, align 8, !tbaa !33  ; 4 uses
  %i.bp = load ptr, ptr %i.q, align 8, !tbaa !36
  %.not.i17 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i17, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !37
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.br, ptr %i.p, align 8, !tbaa !33
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE9push_backERKS2_.exit

bb.o:                                             ; preds = %._crit_edge
  %i.bs = load ptr, ptr %1, align 8, !tbaa !38    ; 4 uses
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 6 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %bb.p, label %_ZNKSt6vectorIPN6hermes10BasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
  unreachable

_ZNKSt6vectorIPN6hermes10BasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.bx = ashr exact i64 %i.bv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = call i64 @llvm.umin.i64(i64 %i.by, i64 1152921504606846975)
  %i.cb = select i1 %i.bz, i64 1152921504606846975, i64 %i.ca ; 2 uses
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #13 ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.bv ; 2 uses
  %i.cf = load ptr, ptr %i.bn, align 8, !tbaa !37
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !37
  %i.cg = icmp sgt i64 %i.bv, 0
  br i1 %i.cg, label %bb.q, label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIPN6hermes10BasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr align 8 %i.bs, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.q, %_ZNKSt6vectorIPN6hermes10BasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #14
  %.pre.pre = load i32, ptr %i.g, align 8, !tbaa !17
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %.pre = phi i32 [ %.pre.pre, %bb.r ], [ %i.bm, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i ]
  store ptr %i.cd, ptr %1, align 8, !tbaa !38
  store ptr %i.ch, ptr %i.p, align 8, !tbaa !33
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.ci, ptr %i.q, align 8, !tbaa !36
  br label %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.n, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.cj = phi i32 [ %i.bm, %bb.n ], [ %.pre, %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.ck = add i32 %i.cj, -1                       ; 3 uses
  store i32 %i.ck, ptr %i.g, align 8, !tbaa !17
  %.not.i18 = icmp eq i32 %i.ck, 0
  br i1 %.not.i18, label %bb.s, label %bb.c, !llvm.loop !39

bb.s:                                             ; preds = %_ZNSt6vectorIPN6hermes10BasicBlockESaIS2_EE9push_backERKS2_.exit
  %i.cl = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.f
  br i1 %i.cm, label %_ZN4llvh11SmallVectorIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateLj32EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef %i.cl) #11
  br label %_ZN4llvh11SmallVectorIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateLj32EED2Ev.exit

_ZN4llvh11SmallVectorIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateLj32EED2Ev.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.cn = load ptr, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.co = load ptr, ptr %2, align 8, !tbaa !7
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvh11SmallVectorIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateLj32EED2Ev.exit
  call void @free(ptr noundef %i.cn) #11
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvh11SmallVectorIZN6hermes17PostOrderAnalysis14visitPostOrderEPNS1_10BasicBlockERSt6vectorIS4_SaIS4_EEE5StateLj32EED2Ev.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes17PostOrderAnalysisC2EPNS_8FunctionE(ptr noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304) %1) #11
  store ptr %i.a, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  tail call void @_ZN6hermes17PostOrderAnalysis14visitPostOrderEPNS_10BasicBlockERSt6vectorIS2_SaIS2_EE(ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  ret void
}

declare noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes17PostOrderAnalysis4dumpEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.hermes::IRPrinter", align 8 ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.a = load ptr, ptr %0, align 8, !tbaa !45, !nonnull !50, !align !51
  %i.b = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #11
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6hermes9IRPrinterE, i64 16), ptr %1, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70, !nonnull !50, !align !51
  store ptr %i.f, ptr %i.d, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.b, ptr %i.g, align 8, !tbaa !129
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 0, ptr %i.h, align 8, !tbaa !130
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !131
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !132
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.i, ptr %i.k, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.i, ptr %i.l, align 8, !tbaa !134
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 0, ptr %i.m, align 8, !tbaa !135
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 0, ptr %i.n, align 8, !tbaa !136
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  store i32 0, ptr %i.o, align 8, !tbaa !131
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !132
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.o, ptr %i.q, align 8, !tbaa !133
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.o, ptr %i.r, align 8, !tbaa !134
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 0, ptr %i.s, align 8, !tbaa !135
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 0, ptr %i.t, align 8, !tbaa !136
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  store i32 0, ptr %i.u, align 8, !tbaa !131
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !132
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr %i.u, ptr %i.w, align 8, !tbaa !133
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %i.u, ptr %i.x, align 8, !tbaa !134
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.y, align 8, !tbaa !135
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i32 0, ptr %i.z, align 8, !tbaa !136
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !137
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  call void @_ZN6hermes9IRVisitorINS_9IRPrinterEvE5visitERKNS_5ValueE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.af)
  %i.ag = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #11 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !157
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !161 ; 2 uses
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.an, 8
  br i1 %i.ao, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ap = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ag, ptr noundef nonnull @.str, i64 noundef 8) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i64 2322295462929853506, ptr %i.ak, align 1
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !161
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !161
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.as = load ptr, ptr %i.aa, align 8, !tbaa !162 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !162 ; 2 uses
  %.not16 = icmp eq ptr %i.as, %i.au
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit12, %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.aw = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #11 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !157
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !161 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.bc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.aw, ptr noundef nonnull @.str.3, i64 noundef 1) #11 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit6

bb.e:                                             ; preds = %._crit_edge
  store i8 10, ptr %i.ba, align 1
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !161
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store ptr %i.be, ptr %i.az, align 8, !tbaa !161
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit6

_ZN4llvh11raw_ostreamlsEPKc.exit6:                ; preds = %bb.d, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6hermes9IRPrinterE, i64 16), ptr %1, align 8, !tbaa !52
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 152
end_hunk_0
begin_hunk_1_@_ZN4llvh8DenseMapIPKN6hermes9ScopeDescENS1_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE4growEj:_ZN4llvh8DenseMapIPKN6hermes9ScopeDescENS1_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE15allocateBucketsEj.exit
  store i32 0, ptr %i.u, align 8, !tbaa !294
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !295
  %i.w = load i32, ptr %i.a, align 8, !tbaa !225  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 4               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.aa = lshr exact i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter31 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !220
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !299

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 112
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !220
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ae, align 8, !tbaa !220
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8, !tbaa !220
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8, !tbaa !220
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8, !tbaa !220
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !220
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !220
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !220
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !300

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIPKN6hermes9ScopeDescENS1_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S6_EEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !294
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !295
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !225 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 4            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not6.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.at = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.au = lshr exact i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !220
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !301

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 112
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !220
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ay, align 8, !tbaa !220
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.az, align 8, !tbaa !220
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ba, align 8, !tbaa !220
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bb, align 8, !tbaa !220
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bc, align 8, !tbaa !220
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bd, align 8, !tbaa !220
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8, !tbaa !220
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !300

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not19.i = icmp eq i32 %i.b, 0
  br i1 %.not19.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E18moveFromOldBucketsEPSC_SF_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit.i, %bb.f
  %.020.i = phi ptr [ %i.ck, %bb.f ], [ %i.c, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit.i ] ; 3 uses
  %i.bg = load ptr, ptr %.020.i, align 8, !tbaa !220 ; 4 uses
  %magicptr.i = ptrtoint ptr %i.bg to i64         ; 2 uses
  switch i64 %magicptr.i, label %bb.c [
    i64 -8, label %bb.f
    i64 -16, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph.i6
  %i.bh = load ptr, ptr %0, align 8, !tbaa !222   ; 2 uses
  %i.bi = load i32, ptr %i.a, align 8, !tbaa !225 ; 2 uses
  %i.bj = icmp ne i32 %i.bi, 0
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = trunc i64 %magicptr.i to i32            ; 2 uses
  %i.bl = lshr i32 %i.bk, 4
  %i.bm = lshr i32 %i.bk, 9
  %i.bn = xor i32 %i.bl, %i.bm
  %i.bo = add i32 %i.bi, -1                       ; 2 uses
  %.02944.i.i.i = and i32 %i.bo, %i.bn            ; 2 uses
  %i.bp = zext nneg i32 %.02944.i.i.i to i64
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bp ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !220 ; 2 uses
  %i.bs = icmp eq ptr %i.bg, %i.br
  br i1 %i.bs, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit.i, label %.lr.ph.i.i.i, !prof !181

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.bt = phi ptr [ %i.cd, %bb.e ], [ %i.br, %bb.c ] ; 2 uses
  %i.bu = phi ptr [ %i.cc, %bb.e ], [ %i.bq, %bb.c ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.e ], [ %.02944.i.i.i, %bb.c ]
  %.02746.i.i.i = phi i32 [ %i.bz, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.03245.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.bv = icmp eq ptr %i.bt, inttoptr (i64 -8 to ptr)
  br i1 %i.bv, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.03245.i.i.i, null
  %i.bw = select i1 %.not.i.i.i, ptr %i.bu, ptr %.03245.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bx = icmp eq ptr %i.bt, inttoptr (i64 -16 to ptr)
  %i.by = icmp eq ptr %.03245.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bx, i1 %i.by, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.bu, ptr %.03245.i.i.i
  %i.bz = add i32 %.02746.i.i.i, 1
  %i.ca = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.ca, %i.bo              ; 2 uses
  %i.cb = zext i32 %.029.i.i.i to i64
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.cb ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !220 ; 2 uses
  %i.ce = icmp eq ptr %i.bg, %i.cd
  br i1 %i.ce, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit.i, label %.lr.ph.i.i.i, !prof !182, !llvm.loop !226

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.bw, %bb.d ], [ %i.bq, %bb.c ], [ %i.cc, %bb.e ] ; 2 uses
  store ptr %i.bg, ptr %.sink.i.i.i, align 8, !tbaa !220
  %i.cf = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.ch = load i64, ptr %i.cg, align 8
  store i64 %i.ch, ptr %i.cf, align 8
  %i.ci = load i32, ptr %i.ao, align 8, !tbaa !294
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ao, align 8, !tbaa !294
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit.i, %.lr.ph.i6, %.lr.ph.i6
  %i.ck = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ck, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E18moveFromOldBucketsEPSC_SF_.exit, label %.lr.ph.i6, !llvm.loop !302

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E18moveFromOldBucketsEPSC_SF_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #11
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes9ScopeDescENS2_21FunctionScopeAnalysis9ScopeDataENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E18moveFromOldBucketsEPSC_SF_.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN4llvh19SmallPtrSetImplBaseE", !9, i64 0, !9, i64 8, !4, i64 16, !4, i64 20, !4, i64 24}
!9 = !{!"any p2 pointer", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!8, !9, i64 8}
!12 = !{!8, !4, i64 16}
!13 = !{!8, !4, i64 20}
!14 = !{!8, !4, i64 24}
!15 = !{!16, !10, i64 0}
!16 = !{!"_ZTSN4llvh15SmallVectorBaseE", !10, i64 0, !4, i64 8, !4, i64 12}
!17 = !{!16, !4, i64 8}
!18 = !{!16, !4, i64 12}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSZN6hermes17PostOrderAnalysis14visitPostOrderEPNS_10BasicBlockERSt6vectorIS2_SaIS2_EEE5State", !21, i64 0, !22, i64 8, !22, i64 24}
!21 = !{!"p1 _ZTSN6hermes10BasicBlockE", !10, i64 0}
!22 = !{!"_ZTSN4llvh12SuccIteratorIN6hermes14TerminatorInstENS1_10BasicBlockEEE", !23, i64 0, !4, i64 8}
!23 = !{!"p1 _ZTSN6hermes14TerminatorInstE", !10, i64 0}
!24 = !{!22, !4, i64 8}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_: argument 0"}
!27 = distinct !{!27, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_"}
!28 = !{!10, !10, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!32 = distinct !{!32, !30}
!33 = !{!34, !35, i64 8}
!34 = !{!"_ZTSNSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p2 _ZTSN6hermes10BasicBlockE", !9, i64 0}
!36 = !{!34, !35, i64 16}
!37 = !{!21, !21, i64 0}
!38 = !{!34, !35, i64 0}
!39 = distinct !{!39, !30}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTSN6hermes7ContextE", !10, i64 0}
!42 = !{!43, !44, i64 8}
!43 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !44, i64 0, !44, i64 8}
!44 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !10, i64 0}
!45 = !{!46, !41, i64 0}
!46 = !{!"_ZTSN6hermes17PostOrderAnalysisE", !41, i64 0, !47, i64 8}
!47 = !{!"_ZTSSt6vectorIPN6hermes10BasicBlockESaIS2_EE", !48, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIPN6hermes10BasicBlockESaIS2_EE12_Vector_implE", !34, i64 0}
!50 = !{}
!51 = !{i64 8}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !6, i64 0}
!54 = !{!55, !4, i64 8}
!55 = !{!"_ZTSN6hermes9IRPrinterE", !4, i64 8, !56, i64 16, !57, i64 24, !58, i64 32, !59, i64 40, !59, i64 96, !59, i64 152}
!56 = !{!"p1 _ZTSN6hermes18SourceErrorManagerE", !10, i64 0}
!57 = !{!"p1 _ZTSN4llvh11raw_ostreamE", !10, i64 0}
!58 = !{!"bool", !5, i64 0}
!59 = !{!"_ZTSN6hermes16InstructionNamerE", !60, i64 0, !4, i64 48}
!60 = !{!"_ZTSSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE", !61, i64 0}
!61 = !{!"_ZTSSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE", !62, i64 0}
!62 = !{!"_ZTSNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !63, i64 0, !65, i64 8}
!63 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPN6hermes5ValueEEE", !64, i64 0}
!64 = !{!"_ZTSSt4lessIPN6hermes5ValueEE"}
!65 = !{!"_ZTSSt15_Rb_tree_header", !66, i64 0, !69, i64 32}
!66 = !{!"_ZTSSt18_Rb_tree_node_base", !67, i64 0, !68, i64 8, !68, i64 16, !68, i64 24}
!67 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!68 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !10, i64 0}
!69 = !{!"long", !5, i64 0}
!70 = !{!71, !56, i64 160}
!71 = !{!"_ZTSN6hermes7ContextE", !72, i64 0, !72, i64 32, !79, i64 64, !86, i64 72, !90, i64 104, !95, i64 152, !56, i64 160, !58, i64 168, !58, i64 169, !58, i64 170, !4, i64 172, !4, i64 176, !58, i64 180, !58, i64 181, !58, i64 182, !58, i64 183, !58, i64 184, !58, i64 185, !101, i64 188, !58, i64 192, !58, i64 193, !102, i64 200, !109, i64 208, !114, i64 232, !58, i64 236, !115, i64 240, !122, i64 632, !123, i64 640}
!72 = !{!"_ZTSN6hermes28BacktrackingBumpPtrAllocatorE", !73, i64 0, !78, i64 24}
!73 = !{!"_ZTSSt6vectorISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE", !74, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE", !75, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !76, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !77, i64 0, !77, i64 8, !77, i64 16}
!77 = !{!"p1 _ZTSSt10unique_ptrIN6hermes28BacktrackingBumpPtrAllocator4SlabESt14default_deleteIS2_EE", !10, i64 0}
!78 = !{!"p1 _ZTSN6hermes28BacktrackingBumpPtrAllocator5StateE", !10, i64 0}
!79 = !{!"_ZTSSt10unique_ptrIN6hermes6parser13PreParsedDataESt14default_deleteIS2_EE", !80, i64 0}
!80 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes6parser13PreParsedDataESt14default_deleteIS2_ELb1ELb1EE", !81, i64 0}
!81 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes6parser13PreParsedDataESt14default_deleteIS2_EE", !82, i64 0}
!82 = !{!"_ZTSSt5tupleIJPN6hermes6parser13PreParsedDataESt14default_deleteIS2_EEE", !83, i64 0}
!83 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes6parser13PreParsedDataESt14default_deleteIS2_EEE", !84, i64 0}
!84 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes6parser13PreParsedDataELb0EE", !85, i64 0}
!85 = !{!"p1 _ZTSN6hermes6parser13PreParsedDataE", !10, i64 0}
!86 = !{!"_ZTSN6hermes11StringTableE", !87, i64 0, !88, i64 8}
!87 = !{!"p1 _ZTSN6hermes28BacktrackingBumpPtrAllocatorE", !10, i64 0}
!88 = !{!"_ZTSN4llvh8DenseMapINS_9StringRefEPN6hermes12UniqueStringENS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S4_EEEE", !89, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!89 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairINS_9StringRefEPN6hermes12UniqueStringEEE", !10, i64 0}
!90 = !{!"_ZTSSt3mapISt4pairIPN6hermes12UniqueStringES3_ENS1_14CompiledRegExpESt4lessIS4_ESaIS0_IKS4_S5_EEE", !91, i64 0}
!91 = !{!"_ZTSSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE", !92, i64 0}
!92 = !{!"_ZTSNSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !93, i64 0, !65, i64 8}
!93 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairIPN6hermes12UniqueStringES4_EEE", !94, i64 0}
!94 = !{!"_ZTSSt4lessISt4pairIPN6hermes12UniqueStringES3_EE"}
!95 = !{!"_ZTSSt10unique_ptrIN6hermes18SourceErrorManagerESt14default_deleteIS1_EE", !96, i64 0}
!96 = !{!"_ZTSSt15__uniq_ptr_dataIN6hermes18SourceErrorManagerESt14default_deleteIS1_ELb1ELb1EE", !97, i64 0}
!97 = !{!"_ZTSSt15__uniq_ptr_implIN6hermes18SourceErrorManagerESt14default_deleteIS1_EE", !98, i64 0}
!98 = !{!"_ZTSSt5tupleIJPN6hermes18SourceErrorManagerESt14default_deleteIS1_EEE", !99, i64 0}
!99 = !{!"_ZTSSt11_Tuple_implILm0EJPN6hermes18SourceErrorManagerESt14default_deleteIS1_EEE", !100, i64 0}
!100 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes18SourceErrorManagerELb0EE", !56, i64 0}
!101 = !{!"_ZTSN6hermes16ParseFlowSettingE", !5, i64 0}
!102 = !{!"_ZTSSt10unique_ptrIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EE", !103, i64 0}
!103 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_ELb1ELb1EE", !104, i64 0}
!104 = !{!"_ZTSSt15__uniq_ptr_implIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EE", !105, i64 0}
!105 = !{!"_ZTSSt5tupleIJPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EEE", !106, i64 0}
!106 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EEE", !107, i64 0}
!107 = !{!"_ZTSSt10_Head_baseILm0EPN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEELb0EE", !108, i64 0}
!108 = !{!"p1 _ZTSN4llvh8DenseMapINS_9StringRefENS0_IS1_S1_NS_12DenseMapInfoIS1_EENS_6detail12DenseMapPairIS1_S1_EEEES3_NS5_IS1_S7_EEEE", !10, i64 0}
!109 = !{!"_ZTSSt6vectorIjSaIjEE", !110, i64 0}
!110 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !111, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !112, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!113 = !{!"p1 int", !10, i64 0}
!114 = !{!"_ZTSN6hermes16DebugInfoSettingE", !5, i64 0}
!115 = !{!"_ZTSN6hermes22CodeGenerationSettingsE", !58, i64 0, !58, i64 1, !58, i64 2, !58, i64 3, !58, i64 4, !58, i64 5, !58, i64 6, !58, i64 7, !58, i64 8, !58, i64 9, !116, i64 16, !116, i64 168, !117, i64 320}
!116 = !{!"_ZTSN6hermes35CodeGenerationSettings_DumpSettingsE", !58, i64 0, !117, i64 8, !117, i64 80}
!117 = !{!"_ZTSN4llvh13SmallDenseSetINS_9StringRefELj4ENS_12DenseMapInfoIS1_EEEE", !118, i64 0}
!118 = !{!"_ZTSN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_EE", !119, i64 0}
!119 = !{!"_ZTSN4llvh13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEEE", !4, i64 0, !4, i64 0, !4, i64 4, !120, i64 8}
!120 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIA4_NS_6detail12DenseSetPairINS_9StringRefEEENS_13SmallDenseMapIS3_NS1_13DenseSetEmptyELj4ENS_12DenseMapInfoIS3_EES4_E8LargeRepEccccccccEE", !121, i64 0}
!121 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm64EEE", !5, i64 0}
!122 = !{!"_ZTSN6hermes20OptimizationSettingsE", !58, i64 0, !58, i64 1, !58, i64 2, !58, i64 3, !58, i64 4, !58, i64 5}
!123 = !{!"_ZTSSt10shared_ptrIN6hermes3hbc14BackendContextEE", !124, i64 0}
!124 = !{!"_ZTSSt12__shared_ptrIN6hermes3hbc14BackendContextELN9__gnu_cxx12_Lock_policyE2EE", !125, i64 0, !126, i64 8}
!125 = !{!"p1 _ZTSN6hermes3hbc14BackendContextE", !10, i64 0}
!126 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !127, i64 0}
!127 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!128 = !{!56, !56, i64 0}
!129 = !{!57, !57, i64 0}
!130 = !{!55, !58, i64 32}
!131 = !{!65, !67, i64 0}
!132 = !{!65, !68, i64 8}
!133 = !{!65, !68, i64 16}
!134 = !{!65, !68, i64 24}
!135 = !{!65, !69, i64 32}
!136 = !{!59, !4, i64 48}
!137 = !{!138, !156, i64 72}
!138 = !{!"_ZTSN6hermes10BasicBlockE", !139, i64 0, !142, i64 16, !151, i64 56, !156, i64 72}
!139 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes10BasicBlockENS1_8FunctionEJEEE", !140, i64 0}
!140 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes10BasicBlockEJEEE", !141, i64 0}
!141 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !43, i64 0}
!142 = !{!"_ZTSN6hermes5ValueE", !143, i64 0, !144, i64 2, !146, i64 8}
!143 = !{!"_ZTSN6hermes9ValueKindE", !5, i64 0}
!144 = !{!"_ZTSN6hermes4TypeE", !145, i64 0, !145, i64 2}
!145 = !{!"short", !5, i64 0}
!146 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj2EEE", !147, i64 0, !150, i64 16}
!147 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes11InstructionEEE", !148, i64 0}
!148 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes11InstructionELb1EEE", !149, i64 0}
!149 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes11InstructionEvEE", !16, i64 0}
!150 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj2EEE", !5, i64 0}
!151 = !{!"_ZTSN4llvh6iplistIN6hermes11InstructionEJEEE", !152, i64 0}
!152 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes11InstructionEJEEENS_12ilist_traitsIS3_EEEE", !153, i64 0}
!153 = !{!"_ZTSN4llvh12simple_ilistIN6hermes11InstructionEJEEE", !154, i64 0}
!154 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !155, i64 0}
!155 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !43, i64 0}
!156 = !{!"p1 _ZTSN6hermes8FunctionE", !10, i64 0}
!157 = !{!158, !159, i64 16}
!158 = !{!"_ZTSN4llvh11raw_ostreamE", !159, i64 8, !159, i64 16, !159, i64 24, !160, i64 32}
!159 = !{!"p1 omnipotent char", !10, i64 0}
!160 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !5, i64 0}
!161 = !{!158, !159, i64 24}
!162 = !{!35, !35, i64 0}
!163 = !{!142, !143, i64 0}
!164 = !{!165, !4, i64 4}
!165 = !{!"_ZTSN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEPS2_Lj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S5_EEEE", !4, i64 0, !4, i64 0, !4, i64 4, !166, i64 8}
!166 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIA16_NS_6detail12DenseMapPairIPKN6hermes10BasicBlockEPS4_EENS_13SmallDenseMapIS6_S7_Lj16ENS_12DenseMapInfoIS6_EES8_E8LargeRepEccccccccEE", !167, i64 0}
!167 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm256EEE", !5, i64 0}
!168 = !{!169, !4, i64 4}
!169 = !{!"_ZTSN4llvh13SmallDenseMapIPKN6hermes10BasicBlockEiLj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_iEEEE", !4, i64 0, !4, i64 0, !4, i64 4, !170, i64 8}
!170 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIA16_NS_6detail12DenseMapPairIPKN6hermes10BasicBlockEiEENS_13SmallDenseMapIS6_iLj16ENS_12DenseMapInfoIS6_EES7_E8LargeRepEccccccccEE", !167, i64 0}
!171 = !{!172, !4, i64 4}
!172 = !{!"_ZTSN4llvh13SmallDenseMapIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS2_Lj2EEELj16ENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEE", !4, i64 0, !4, i64 0, !4, i64 4, !173, i64 8}
!173 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIA16_NS_6detail12DenseMapPairIPKN6hermes10BasicBlockENS_11SmallPtrSetIPS4_Lj2EEEEENS_13SmallDenseMapIS6_S9_Lj16ENS_12DenseMapInfoIS6_EESA_E8LargeRepEccccccccEE", !174, i64 0}
!174 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm896EEE", !5, i64 0}
!175 = !{!176, !58, i64 16}
!176 = !{!"_ZTSSt4pairIN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockEiNS0_12DenseMapInfoIS5_EENS0_6detail12DenseMapPairIS5_iEELb0EEEbE", !177, i64 0, !58, i64 16}
!177 = !{!"_ZTSN4llvh16DenseMapIteratorIPKN6hermes10BasicBlockEiNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_iEELb0EEE", !178, i64 0, !178, i64 8}
!178 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPKN6hermes10BasicBlockEiEE", !10, i64 0}
!179 = !{i8 0, i8 2}
!180 = distinct !{!180, !30}
!181 = !{!"branch_weights", i32 1999, i32 1}
!182 = !{!"branch_weights", i32 1, i32 0}
!183 = distinct !{!183, !30}
!184 = distinct !{!184, !30}
!185 = distinct !{!185, !30}
!186 = distinct !{!186, !30}
!187 = distinct !{!187, !30}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZN4llvh15SmallPtrSetImplIPN6hermes10BasicBlockEE6insertES3_: argument 0"}
end_hunk_1
