Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StreamChecker?download=true
inline.NumInlined: 5649
inline.NumDeleted: 2729
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK12_GLOBAL__N_113StreamChecker14evalFeofFerrorEPKNS_13FnDescriptionERKN5clang4ento9CallEventERNS5_14CheckerContextERKNS_16StreamErrorStateE:bb.a
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23: ; preds = %bb.d, %bb.e
  %i.ar = load i8, ptr %i.m, align 8, !tbaa !368, !range !35, !noundef !36
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !379
  %.sroa.0.0.copyload = load ptr, ptr %i.at, align 8, !tbaa !185
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 48
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %.val.i = load ptr, ptr %3, align 8, !tbaa !186, !noalias !1389 ; 3 uses
  %.val14.i = load ptr, ptr %i.a, align 8, !tbaa !181, !noalias !1389
  %i.aw = getelementptr i8, ptr %.val14.i, i64 24
  %.val14.val.i = load i64, ptr %i.aw, align 8, !tbaa !123, !noalias !1389
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i, i64 584
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !320, !noalias !1389, !nonnull !36, !align !54
  %i.az = and i64 %.val14.val.i, -8
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i, i64 600
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !321, !noalias !1389, !nonnull !36, !noundef !36 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !325, !noalias !1389
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !326, !noalias !1389
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22, !noalias !1389
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i, i64 168
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !327, !noalias !1389
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !98, !noalias !1389
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %10, align 8, !noalias !1389
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !339, !noalias !1389
  %i.bm = call noundef i32 @_ZNK5clang4ento12BlockCounter13getNumVisitedEPKNS_10StackFrameEj(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %i.be, i32 noundef %i.bl) #22, !noalias !1389
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !1389
  %i.bn = call { ptr, i8 } @_ZN5clang4ento11SValBuilder16conjureSymbolValEPKvNS_8CFGBlock14ElementRefImplILb1EEEPKNS_10StackFrameEj(ptr noundef nonnull align 8 dereferenceable(412) %i.ay, ptr noundef null, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef %i.ba, i32 noundef %i.bm) #22, !noalias !1389 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.bn, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.bn, 1 ; 3 uses
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !181, !noalias !1389
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !123, !noalias !1389
  %i.bp = and i64 %.sroa.3.0.copyload.i.i.i, -8
  %i.bq = inttoptr i64 %i.bp to ptr
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr.1155") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef %i.av, ptr noundef %i.bq, ptr %.fca.0.extract.i, i8 %.fca.1.extract.i, i1 noundef zeroext true) #22, !noalias !1389
  %i.br = load ptr, ptr %11, align 8, !tbaa !184, !noalias !1389 ; 7 uses
  store ptr %i.d, ptr %11, align 8, !tbaa !184, !noalias !1389
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #22, !noalias !1389
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !1389
  %i.bs = icmp eq i8 %.fca.1.extract.i, 1
  br i1 %i.bs, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i
  store ptr %i.br, ptr %12, align 8, !tbaa !184, !alias.scope !1390, !noalias !1389
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull align 8 dereferenceable(48) %i.br) #22, !noalias !1391
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit25

bb.h:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !409, !noalias !1391
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !342, !noalias !1391
  store ptr %i.br, ptr %9, align 8, !tbaa !184, !noalias !1391
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull align 8 dereferenceable(48) %i.br) #22, !noalias !1391
  call void @_ZN5clang4ento17ConstraintManager6assumeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_11DefinedSValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr.1155") align 8 %12, ptr noundef nonnull align 8 dereferenceable(56) %i.bw, ptr nofree noundef nonnull align 8 dereferenceable(8) %9, ptr %.fca.0.extract.i, i8 %.fca.1.extract.i, i1 noundef zeroext true) #22, !noalias !1389
  %i.bx = load ptr, ptr %9, align 8, !tbaa !184, !noalias !1391 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit25, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bx) #22, !noalias !1389
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit25

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit25: ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !1389
  %i.by = load ptr, ptr %12, align 8, !tbaa !184, !noalias !1389 ; 5 uses
  store ptr %i.br, ptr %12, align 8, !tbaa !184, !noalias !1389
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.br) #22, !noalias !1389
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not.i.i26 = icmp eq ptr %i.by, null
  br i1 %.not.i.i26, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit25
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.by) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit25, %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 15
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !834, !range !35, !noundef !36
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.k, label %.thread

bb.k:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27
  %i.cc = load i8, ptr %4, align 1, !tbaa !369, !range !35, !noundef !36
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = load i8, ptr %i.ad, align 1, !range !35
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = load i8, ptr %i.ai, align 1, !range !35
  %i.ch = trunc nuw i8 %i.cg to i1
  %.not = xor i1 %i.cf, true
  %not.or.cond.i28 = select i1 %i.cd, i1 true, i1 %.not
  %i.ci = select i1 %not.or.cond.i28, i1 true, i1 %i.ch
  %cond.fr = freeze i1 %i.ci
  %spec.select = select i1 %cond.fr, i64 72057594037927936, i64 0
  br label %.thread

.thread:                                          ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27, %bb.k
  %i.cj = phi i64 [ %spec.select, %bb.k ], [ 0, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27 ]
  %.sroa.4.sroa.0.0.copyload.i123 = load i24, ptr %4, align 1
  %.sroa.4.8.insert.ext.i = zext i24 %.sroa.4.sroa.0.0.copyload.i123 to i64
  %.sroa.4.8.insert.shift.i = shl nuw nsw i64 %.sroa.4.8.insert.ext.i, 32
  %.sroa.4.8.insert.insert.i = or disjoint i64 %.sroa.4.8.insert.shift.i, %i.cj
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !378, !noalias !1392
  call fastcc void @_ZNK5clang4ento12ProgramState3setIN12_GLOBAL__N_19StreamMapEEEN4llvm18IntrusiveRefCntPtrIKS1_EENS0_17ProgramStateTraitIT_E8key_typeENSB_10value_typeE(ptr dead_on_unwind noalias nonnull writable align 8 %15, ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef %i.ck, ptr nonnull %1, i64 %.sroa.4.8.insert.insert.i)
  %i.cl = load ptr, ptr %15, align 8, !tbaa !184  ; 2 uses
  %.not.i29 = icmp eq ptr %i.cl, null
  br i1 %.not.i29, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %.thread
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  %.pr.i = load ptr, ptr %i.cn, align 8, !tbaa !184 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i31, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit37, label %.thread.i

.thread.i:                                        ; preds = %bb.l, %.thread
  %i.co = phi ptr [ %.pr.i, %bb.l ], [ %i.cl, %.thread ] ; 5 uses
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.co) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !181 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !184
  %.not129 = icmp eq ptr %i.co, %i.cq
  br i1 %.not129, label %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit, label %bb.m

bb.m:                                             ; preds = %.thread.i
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.cr, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %i.cs, i64 48, i1 false), !tbaa.struct !348
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !349, !nonnull !36, !align !54
  store ptr %i.co, ptr %8, align 8, !tbaa !184
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.co) #22
  %i.cv = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr nofree noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %.pre.i.i, i1 noundef zeroext false) #22 ; 0 uses
  %i.cw = load ptr, ptr %8, align 8, !tbaa !184   ; 2 uses
  %.not.i.i23.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i23.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i: ; preds = %bb.m
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.cw) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit

_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit: ; preds = %.thread.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.co) #22
  %.pre = load ptr, ptr %15, align 8, !tbaa !184  ; 2 uses
  %.not.i.i32 = icmp eq ptr %.pre, null
  br i1 %.not.i.i32, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit37, label %bb.n

bb.n:                                             ; preds = %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.pre) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit37

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit37: ; preds = %bb.l, %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit, %bb.n
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.by) #22
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.by) #22
  %.pre133 = load i8, ptr %4, align 1, !tbaa !369, !range !35
  %.pre134 = load i8, ptr %i.ad, align 1, !tbaa !370, !range !35
  %.pre135 = load i8, ptr %i.ai, align 1, !tbaa !371, !range !35
  %.pre136 = load i8, ptr %i.w, align 1, !tbaa !369, !range !35
  %.pre137 = load i8, ptr %i.aa, align 1, !tbaa !370, !range !35
  %.pre138 = load i8, ptr %i.af, align 1, !tbaa !371, !range !35
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit37, %bb.c
  %i.cx = phi i8 [ %.pre138, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit37 ], [ %i.ag, %bb.c ]
  %i.cy = phi i8 [ %.pre137, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit37 ], [ %i.ab, %bb.c ]
  %i.cz = phi i8 [ %.pre136, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit37 ], [ %i.x, %bb.c ]
  %i.da = phi i8 [ %.pre135, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit37 ], [ %i.aj, %bb.c ]
  %i.db = phi i8 [ %.pre134, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit37 ], [ %i.ae, %bb.c ]
  %i.dc = phi i8 [ %.pre133, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit37 ], [ %i.z, %bb.c ]
  %i.dd = xor i8 %i.dc, 1
  %i.de = xor i8 %i.db, 1
  %i.df = xor i8 %i.da, 1
  %spec.select.i45 = and i8 %i.cz, %i.dd          ; 3 uses
  %i.dg = and i8 %i.cy, %i.de                     ; 3 uses
  %i.dh = and i8 %i.cx, %i.df                     ; 3 uses
  %i.di = trunc nuw i8 %i.dg to i1
  %i.dj = or i8 %i.dg, %spec.select.i45
  %or.cond.i53 = icmp ne i8 %i.dj, 0
  %18 = trunc nuw i8 %i.dh to i1
  %19 = or i1 %or.cond.i53, %18
  br i1 %19, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit55, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit55

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit55: ; preds = %bb.p, %bb.q
  %.val18 = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.dk = getelementptr i8, ptr %.val18, i64 24
  %.val18.val = load i64, ptr %i.dk, align 8, !tbaa !123
  %i.dl = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !379, !noalias !1393 ; 2 uses
  %i.dn = load ptr, ptr %13, align 8, !tbaa !380, !noalias !1393, !nonnull !36, !align !54
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !381, !noalias !1393, !nonnull !36, !align !54
  %i.dp = call i64 @_ZNK5clang8CallExpr17getCallReturnTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(23904) %i.do) #22, !noalias !1393 ; 2 uses
  %i.dq = and i64 %i.dp, -16
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = load ptr, ptr %i.dr, align 16, !tbaa !384, !noalias !1393
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.dt, align 8, !tbaa !123, !noalias !1393
  %i.du = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, -16
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load ptr, ptr %i.dv, align 16, !tbaa !384, !noalias !1393
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 16, !noalias !1393 ; 3 uses
  switch i8 %i.dy, label %bb.r [
    i8 40, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit57
    i8 31, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit57
    i8 11, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit57
  ]

bb.r:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit55
  %i.dz = and i8 %i.dy, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.dz, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit57, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ea = icmp eq i8 %i.dy, 13
  br i1 %i.ea, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i.i, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i.i

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i.i: ; preds = %bb.s
  %i.eb = load i32, ptr %i.dx, align 16, !noalias !1393
  %i.ec = and i32 %i.eb, 536346624
  %i.ed = icmp eq i32 %i.ec, 264765440
  br i1 %i.ed, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit57, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i.i

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i.i: ; preds = %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i.i, %bb.s
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit57

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit57: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit55, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit55, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit55, %bb.r, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i.i, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i.i
  %.sroa.3.0.i.i = phi i8 [ 6, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i.i ], [ 2, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit55 ], [ 2, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit55 ], [ 2, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit55 ], [ 2, %bb.r ], [ 2, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i.i ]
  %i.ee = and i64 %.val18.val, -8
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.eh = call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.eg, i64 noundef 0, i64 %i.dp) #22, !noalias !1393
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr.1155") align 8 %16, ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull %i.dm, ptr noundef %i.ef, ptr %i.eh, i8 %.sroa.3.0.i.i, i1 noundef zeroext true) #22
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #22
  %i.ei = load ptr, ptr %16, align 8, !tbaa !184  ; 4 uses
  %.not.i.i58 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i58, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit59, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit57
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ei) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit59

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit59: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit57, %bb.t
  %i.ej = getelementptr inbounds nuw i8, ptr %i.v, i64 15
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !834, !range !35, !noundef !36
  %i.el = trunc nuw i8 %i.ek to i1
  %20 = or i8 %i.dh, %spec.select.i45
  %.not130.a = icmp eq i8 %20, 0
  %i.em = and i1 %.not130.a, %i.di
  %i.en = xor i1 %i.em, true
  %i.eo = select i1 %i.el, i1 %i.en, i1 false
  %cond.fr125 = select i1 %i.eo, i64 72057594037927936, i64 0
  %.sroa.8.0.insert.ext = zext nneg i8 %i.dh to i64
  %.sroa.8.0.insert.shift = shl nuw nsw i64 %.sroa.8.0.insert.ext, 16
  %.sroa.6.0.insert.ext = zext nneg i8 %i.dg to i64
  %.sroa.6.0.insert.shift = shl nuw nsw i64 %.sroa.6.0.insert.ext, 8
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift, %.sroa.6.0.insert.shift
  %.sroa.098.0.insert.ext = zext nneg i8 %spec.select.i45 to i64
  %.sroa.098.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.098.0.insert.ext
  %.sroa.4.8.insert.shift.i66 = shl nuw nsw i64 %.sroa.098.0.insert.insert, 32
  %.sroa.4.8.insert.insert.i67 = or disjoint i64 %cond.fr125, %.sroa.4.8.insert.shift.i66
  %i.ep = load ptr, ptr %i.l, align 8, !tbaa !378, !noalias !1394
  call fastcc void @_ZNK5clang4ento12ProgramState3setIN12_GLOBAL__N_19StreamMapEEEN4llvm18IntrusiveRefCntPtrIKS1_EENS0_17ProgramStateTraitIT_E8key_typeENSB_10value_typeE(ptr dead_on_unwind noalias nonnull writable align 8 %17, ptr noundef nonnull align 8 dereferenceable(48) %i.ei, ptr noundef %i.ep, ptr nonnull %1, i64 %.sroa.4.8.insert.insert.i67)
  %i.eq = load ptr, ptr %17, align 8, !tbaa !184  ; 2 uses
  %.not.i72 = icmp eq ptr %i.eq, null
  br i1 %.not.i72, label %bb.u, label %.thread.i73

bb.u:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit59
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  %.pr.i82 = load ptr, ptr %i.es, align 8, !tbaa !184 ; 2 uses
  %.not.i.i.i83 = icmp eq ptr %.pr.i82, null
  br i1 %.not.i.i.i83, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit88, label %.thread.i73

.thread.i73:                                      ; preds = %bb.u, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit59
  %i.et = phi ptr [ %.pr.i82, %bb.u ], [ %i.eq, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit59 ] ; 5 uses
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.et) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.pre.i.i75 = load ptr, ptr %i.a, align 8, !tbaa !181 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.pre.i.i75, i64 56
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !184
  %.not132 = icmp eq ptr %i.et, %i.ev
  br i1 %.not132, label %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit84, label %bb.v

bb.v:                                             ; preds = %.thread.i73
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.ew, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.ex, i64 48, i1 false), !tbaa.struct !348
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !349, !nonnull !36, !align !54
  store ptr %i.et, ptr %6, align 8, !tbaa !184
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.et) #22
  %i.fa = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %.pre.i.i75, i1 noundef zeroext false) #22 ; 0 uses
  %i.fb = load ptr, ptr %6, align 8, !tbaa !184   ; 2 uses
  %.not.i.i23.i.i79 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i23.i.i79, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i81, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i80

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i80: ; preds = %bb.v
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fb) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i81

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i81: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i80, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit84

_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit84: ; preds = %.thread.i73, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.et) #22
  %.pre139 = load ptr, ptr %17, align 8, !tbaa !184 ; 2 uses
  %.not.i.i85 = icmp eq ptr %.pre139, null
  br i1 %.not.i.i85, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit88, label %bb.w

bb.w:                                             ; preds = %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit84
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.pre139) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit88

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit88: ; preds = %bb.u, %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit84, %bb.w
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ei) #22
  %i.fc = load ptr, ptr %16, align 8, !tbaa !184  ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i89, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit90, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit88
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fc) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit90

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit90: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit88, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.thread126

.thread126:                                       ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit90, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.z

bb.y:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit92, label %bb.z

bb.z:                                             ; preds = %.thread126, %bb.y
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit92

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit92: ; preds = %.thread127, %bb.y, %bb.z
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_113StreamChecker10evalFilenoEPKNS_13FnDescriptionERKN5clang4ento9CallEventERNS5_14CheckerContextE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(81) %3) #2 align 2 {
bb.a:
  %4 = alloca %"class.clang::ProgramPoint", align 8 ; 4 uses
  %5 = alloca %"class.llvm::IntrusiveRefCntPtr.1155", align 8 ; 5 uses
  %6 = alloca %"class.clang::ento::BlockCounter", align 8 ; 4 uses
  %7 = alloca %"struct.(anonymous namespace)::StreamOperationEvaluator", align 8 ; 17 uses
  %8 = alloca %"class.llvm::IntrusiveRefCntPtr.1155", align 8 ; 3 uses
  %9 = alloca %"class.llvm::IntrusiveRefCntPtr.1155", align 8 ; 3 uses
  %10 = alloca %"class.llvm::IntrusiveRefCntPtr.1155", align 8 ; 3 uses
  %11 = alloca %"class.llvm::IntrusiveRefCntPtr.1155", align 8 ; 2 uses
  %12 = alloca %"class.clang::ento::NonLoc", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184  ; 9 uses
  %.not.i.i = icmp eq ptr %i.d, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %.val = load ptr, ptr %3, align 8, !tbaa !186   ; 2 uses
  %i.e = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.e, align 8, !tbaa !364 ; 2 uses
  %i.f = getelementptr i8, ptr %.val, i64 584
  %.val.val26 = load ptr, ptr %i.f, align 8, !tbaa !320
  store ptr %.val.val26, ptr %7, align 8, !tbaa !365
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.h = load ptr, ptr %.val.val, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef nonnull align 8 dereferenceable(23904) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(272) %.val.val) #22, !inline_history !5
  store ptr %i.k, ptr %i.g, align 8, !tbaa !366
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store i8 0, ptr %i.m, align 8, !tbaa !368
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.n, align 8, !tbaa !369
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 65
  store i8 0, ptr %i.o, align 1, !tbaa !370
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 66
  store i8 0, ptr %i.p, align 2, !tbaa !371
  store ptr %i.d, ptr %8, align 8, !tbaa !184
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit32.thread, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit32.thread: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  %i.q = getelementptr i8, ptr %1, i64 64
  %.val2758 = load i32, ptr %i.q, align 8, !tbaa !144
  %i.r = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_124StreamOperationEvaluator4InitEPKNS_13FnDescriptionERKN5clang4ento9CallEventERNS5_14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS5_12ProgramStateEEE(ptr noundef nonnull align 8 dereferenceable(67) %7, i32 %.val2758, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef align 8 dereferenceable(8) %8)
  br i1 %i.r, label %bb.c, label %.thread

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #22
  %i.s = getelementptr i8, ptr %1, i64 64
  %.val27 = load i32, ptr %i.s, align 8, !tbaa !144
  %i.t = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_124StreamOperationEvaluator4InitEPKNS_13FnDescriptionERKN5clang4ento9CallEventERNS5_14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS5_12ProgramStateEEE(ptr noundef nonnull align 8 dereferenceable(67) %7, i32 %.val27, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef align 8 dereferenceable(8) %8)
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #22
  br i1 %i.t, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit32.thread, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  %i.u = load i8, ptr %i.m, align 8, !tbaa !368, !range !35, !noundef !36
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit35, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #26
  unreachable

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit35: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 40
  %.sroa.014.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !185
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.215.0.copyload = load i64, ptr %.sroa.215.0..sroa_idx, align 8, !tbaa !31
  %.val28 = load ptr, ptr %3, align 8, !tbaa !186 ; 3 uses
  %.val29 = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.x = getelementptr i8, ptr %.val29, i64 24
  %.val29.val = load i64, ptr %i.x, align 8, !tbaa !123
  %i.y = getelementptr inbounds nuw i8, ptr %.val28, i64 584
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !320, !nonnull !36, !align !54
  %i.aa = and i64 %.val29.val, -8
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %.val28, i64 600
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !321, !nonnull !36, !noundef !36 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !325
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !326
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %.val28, i64 168
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !327
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !98
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %6, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !339
end_hunk_0
