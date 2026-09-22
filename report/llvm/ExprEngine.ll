Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprEngine?download=true
inline.NumInlined: 9448
inline.NumDeleted: 4592
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5clang4ento10ExprEngine17ProcessMemberDtorENS_13CFGMemberDtorEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetE:bb.a
  br i1 %.not.i.i76, label %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !771
  br label %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit

_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit: ; preds = %bb.g, %bb.h
  %i.bc = phi ptr [ %i.bb, %bb.h ], [ null, %bb.g ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !243
  %i.bf = zext i32 %i.be to i64
  %i.bg = zext i32 %.sroa.0.0.copyload.i75 to i64
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.bc, ptr %i.bi, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 %i.bf, ptr %.sroa.4.0..sroa_idx.i, align 8
  store ptr %i.bh, ptr %11, align 8, !tbaa !903
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bk = ptrtoint ptr %i.h to i64
  %i.bl = and i64 %i.bk, -4
  store i64 %i.bl, ptr %i.bj, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bn = or disjoint i64 %i.n, 2
  store i64 %i.bn, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bp = or disjoint i64 ptrtoint (ptr @_ZZN5clang4ento10ExprEngine17ProcessMemberDtorENS_13CFGMemberDtorEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE2PT to i64), 2
  store i64 %i.bp, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = load ptr, ptr %i.l, align 8, !tbaa !323 ; 3 uses
  store ptr %i.br, ptr %12, align 8, !tbaa !323
  %.not.i.i77 = icmp eq ptr %i.br, null
  br i1 %.not.i.i77, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit78, label %bb.i

bb.i:                                             ; preds = %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.br) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit78

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit78: ; preds = %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit, %bb.i
  %i.bs = call noundef ptr @_ZNK5clang4ento10CoreEngine8makeNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(232) %i.bq, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr nofree noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %3, i1 noundef zeroext true) #22 ; 0 uses
  %i.bt = load ptr, ptr %12, align 8, !tbaa !323  ; 2 uses
  %.not.i.i79 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit78
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bt) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit78
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.v

_ZNK4llvm5APInt15getLimitedValueEm.exit.thread:   ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, %_ZNK4llvm5APInt15getLimitedValueEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %13, i8 0, i64 5, i1 false)
  store ptr %i.ag, ptr %14, align 8, !tbaa !323
  %.not.i.i81 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i81, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit82, label %bb.l

bb.l:                                             ; preds = %.thread, %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread
  %.sroa.0.0119 = phi ptr [ %i.m, %.thread ], [ %i.ag, %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread ] ; 2 uses
  %.0117 = phi i32 [ 0, %.thread ], [ %i.aj, %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread ]
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.0119) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit82

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit82: ; preds = %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread, %bb.l
  %.not.i.i81122 = phi i1 [ true, %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread ], [ false, %bb.l ]
  %.sroa.0.0120 = phi ptr [ null, %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread ], [ %.sroa.0.0119, %bb.l ] ; 3 uses
  %.0118 = phi i32 [ %i.aj, %_ZNK4llvm5APInt15getLimitedValueEm.exit.thread ], [ %.0117, %bb.l ]
  %.sroa.06.0.copyload = load ptr, ptr %7, align 8, !tbaa !762
  %.sroa.27.0.copyload = load i8, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !764
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 1
  %i.bv = call { ptr, i8 } @_ZN5clang4ento10ExprEngine17makeElementRegionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_4SValERNS_8QualTypeERbj(ptr nofree noundef nonnull align 8 dereferenceable(8) %14, ptr %.sroa.06.0.copyload, i8 %.sroa.27.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.bu, i32 noundef %.0118) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.bv, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.bv, 1
  store ptr %.fca.0.extract, ptr %7, align 8, !tbaa !762
  store i8 %.fca.1.extract, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !764
  %i.bw = load ptr, ptr %14, align 8, !tbaa !323  ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i83, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit84, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit82
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bw) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit84

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit84: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit82, %bb.m
  %i.bx = load atomic i8, ptr @_ZGVZN5clang4ento10ExprEngine17ProcessMemberDtorENS_13CFGMemberDtorEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE2PT_0 acquire, align 8
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.n, label %bb.p, !prof !924

bb.n:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit84
  %i.bz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5clang4ento10ExprEngine17ProcessMemberDtorENS_13CFGMemberDtorEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE2PT_0) #22
  %.not = icmp eq i32 %i.bz, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5clang21SimpleProgramPointTagC1EN4llvm9StringRefES2_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN5clang4ento10ExprEngine17ProcessMemberDtorENS_13CFGMemberDtorEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE2PT_0, ptr nonnull @.str, i64 10, ptr nonnull @.str.24, i64 30) #22
  %i.ca = call i32 @__cxa_atexit(ptr nonnull @_ZN5clang21SimpleProgramPointTagD2Ev, ptr nonnull @_ZZN5clang4ento10ExprEngine17ProcessMemberDtorENS_13CFGMemberDtorEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE2PT_0, ptr nonnull @__dso_handle) #22 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5clang4ento10ExprEngine17ProcessMemberDtorENS_13CFGMemberDtorEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE2PT_0) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit84
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.0.0.copyload.i85 = load i32, ptr %i.cb, align 8, !tbaa !788
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !244 ; 2 uses
  %.not.i.i86 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i86, label %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit89, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !771
  br label %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit89

_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit89: ; preds = %bb.p, %bb.q
  %i.cg = phi ptr [ %i.cf, %bb.q ], [ null, %bb.p ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !243
  %i.cj = zext i32 %i.ci to i64
  %i.ck = zext i32 %.sroa.0.0.copyload.i85 to i64
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %i.cg, ptr %i.cm, align 8
  %.sroa.4.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 %i.cj, ptr %.sroa.4.0..sroa_idx.i90, align 8
  store ptr %i.cl, ptr %15, align 8, !tbaa !903
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.co = ptrtoint ptr %i.h to i64
  %i.cp = or i64 %i.co, 3
  store i64 %i.cp, ptr %i.cn, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 %i.n, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.cs = or disjoint i64 ptrtoint (ptr @_ZZN5clang4ento10ExprEngine17ProcessMemberDtorENS_13CFGMemberDtorEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE2PT_0 to i64), 2
  store i64 %i.cs, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.0.0120, ptr %16, align 8, !tbaa !323
  br i1 %.not.i.i81122, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit92, label %bb.r

bb.r:                                             ; preds = %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit89
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.0120) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit92

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit92: ; preds = %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit89, %bb.r
  %i.cu = call noundef ptr @_ZNK5clang4ento10CoreEngine8makeNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(232) %i.ct, ptr noundef nonnull align 8 dereferenceable(48) %15, ptr nofree noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %3, i1 noundef zeroext false) #22 ; 2 uses
  %i.cv = load ptr, ptr %16, align 8, !tbaa !323  ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i93, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit94, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit92
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.cv) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit94

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit94: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit92, %bb.s
  %.not67 = icmp eq ptr %i.cu, null
  br i1 %.not67, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit94
  %.sroa.0.0.copyload = load i64, ptr %6, align 8, !tbaa !317
  %i.cw = call noundef ptr @_ZNK5clang4ento4SVal11getAsRegionEv(ptr noundef nonnull align 8 dereferenceable(9) %7) #22
  %i.cx = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef ptr %i.cz(ptr noundef nonnull align 8 dereferenceable(168) %i.s) #22
  call void @_ZN5clang4ento10ExprEngine18VisitCXXDestructorENS_8QualTypeEPKNS0_9MemRegionEPKNS_4StmtEbPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERNS0_15EvalCallOptionsE(ptr noundef nonnull align 8 dereferenceable(812) %0, i64 %.sroa.0.0.copyload, ptr noundef %i.cw, ptr noundef %i.da, i1 noundef zeroext false, ptr noundef nonnull %i.cu, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 1 dereferenceable(5) %13) #22
  br label %bb.u

bb.u:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit94, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.k, %bb.u
  %.sroa.0.1 = phi ptr [ %i.ag, %bb.k ], [ %.sroa.0.0120, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.not.i.i95 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i95, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit96, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.1) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit96

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit96: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento10ExprEngine20ProcessTemporaryDtorENS_16CFGTemporaryDtorEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetE(ptr noundef nonnull align 8 dereferenceable(812) %0, i64 %1, i64 %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(72) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.clang::PostStmt", align 8   ; 7 uses
  %6 = alloca %"class.llvm::IntrusiveRefCntPtr.508", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.(anonymous namespace)::ConstructedObjectKey", align 8 ; 7 uses
  %8 = alloca %"class.(anonymous namespace)::ConstructedObjectKey", align 8 ; 7 uses
  %9 = alloca %"class.clang::CFGTemporaryDtor", align 8 ; 3 uses
  %10 = alloca %"class.std::optional.576", align 8 ; 7 uses
  %11 = alloca %"class.llvm::IntrusiveRefCntPtr.508", align 8 ; 2 uses
  %12 = alloca %"class.clang::ConstructionContextItem", align 8 ; 6 uses
  %13 = alloca %"class.llvm::IntrusiveRefCntPtr.508", align 8 ; 3 uses
  %14 = alloca %"class.llvm::IntrusiveRefCntPtr.508", align 8 ; 3 uses
  %15 = alloca %"class.clang::PostImplicitCall", align 8 ; 9 uses
  %16 = alloca %"class.llvm::IntrusiveRefCntPtr.508", align 8 ; 3 uses
  %17 = alloca %"struct.clang::ento::EvalCallOptions", align 1 ; 5 uses
  store i64 %1, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = and i64 %1, -4
  %i.d = inttoptr i64 %i.c to ptr                 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !323  ; 11 uses
  %.not.i.i = icmp eq ptr %i.f, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread, label %bb.b

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread: ; preds = %bb.a
  %.sroa.3.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.sroa.3.0.copyload.i91 = load i64, ptr %.sroa.3.0..sroa_idx.i90, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit41

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.f) #22
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !317
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.f) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit41

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit41: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread, %bb.b
  %.in = phi i64 [ %.sroa.3.0.copyload.i91, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread ], [ %.sroa.3.0.copyload.i, %bb.b ]
  %.sroa.3.0..sroa_idx.i92 = phi ptr [ %.sroa.3.0..sroa_idx.i90, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread ], [ %.sroa.3.0..sroa_idx.i, %bb.b ]
  store ptr %i.f, ptr %11, align 8, !tbaa !323
  %i.g = and i64 %.in, -8                         ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %i.d, ptr %12, align 8, !tbaa !757
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 4, ptr %i.i, align 8, !tbaa !758
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !759
  call void @_ZN5clang4ento10ExprEngine26getObjectUnderConstructionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEERKNS_23ConstructionContextItemEPKNS_10StackFrameE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.576") align 8 %10, ptr nofree noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit41
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.l = load i8, ptr %i.k, align 8, !tbaa !761, !range !70, !noundef !71
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit48, label %bb.d

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit41
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.f) #22
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.o = load i8, ptr %i.n, align 8, !tbaa !761, !range !70, !noundef !71
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit50

bb.c:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.f) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit48

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit48: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.d, ptr %8, align 8, !noalias !1767
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 4, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1767
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4, !noalias !1767
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1767
  call fastcc void @_ZNK5clang4ento12ProgramState6removeIN12_GLOBAL__N_124ObjectsUnderConstructionEEEN4llvm18IntrusiveRefCntPtrIKS1_EENS0_17ProgramStateTraitIT_E8key_typeE(ptr dead_on_unwind noalias nonnull writable align 8 %13, ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull byval(%"class.(anonymous namespace)::ConstructedObjectKey") align 8 %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.q = load ptr, ptr %13, align 8, !tbaa !323
  store ptr %i.f, ptr %13, align 8, !tbaa !323
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.f) #22
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.f) #22
  %i.r = call noundef ptr @_ZNK5clang4ento4SVal11getAsRegionEv(ptr noundef nonnull align 8 dereferenceable(9) %10) #22
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit48, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  %.sroa.081.0 = phi ptr [ %i.q, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit48 ], [ null, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit ] ; 2 uses
  %.0 = phi ptr [ %i.r, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit48 ], [ null, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.081.0) ]
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit50

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit50: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread, %bb.d
  %.099 = phi ptr [ %.0, %bb.d ], [ null, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread ] ; 2 uses
  %.sroa.081.097 = phi ptr [ %.sroa.081.0, %bb.d ], [ %i.f, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread ] ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.081.097) #22
  %i.s = call noundef ptr @_ZNK5clang4ento12ProgramState7FindGDMEPKv(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.081.097, ptr noundef nonnull @_ZZN5clang4ento17ProgramStateTraitIN12_GLOBAL__N_124ObjectsUnderConstructionEE8GDMIndexEvE5Index) #22 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit50
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !762, !noalias !1768 ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 92 ; 4 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !796, !noalias !1768 ; 5 uses
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !796, !noalias !1768
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.thread.i.i.i.i.i.i, %bb.f
  %.01120.i.i.i.i.i.i = phi ptr [ %i.t, %bb.f ], [ %.2.i.i.i.i.i.i, %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.thread.i.i.i.i.i.i ] ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01120.i.i.i.i.i.i, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !762, !noalias !1769 ; 3 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNK5clang23ConstructionContextItemeqERKS0_.exit.i.i.i.i.i.i.i.i.i.i.i, label %._ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE7isEqualERKS2_S8_.exit.thread_crit_edge.i.i.i.i.i.i

._ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE7isEqualERKS2_S8_.exit.thread_crit_edge.i.i.i.i.i.i: ; preds = %bb.g
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01120.i.i.i.i.i.i, i64 60
  %.pre.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !788, !noalias !1770
  %.phi.trans.insert21.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01120.i.i.i.i.i.i, i64 56
  %.pre22.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert21.i.i.i.i.i.i, align 8, !tbaa !787, !noalias !1770
  br label %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE7isEqualERKS2_S8_.exit.thread.i.i.i.i.i.i

_ZNK5clang23ConstructionContextItemeqERKS0_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.01120.i.i.i.i.i.i, i64 56
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !787, !noalias !1769 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01120.i.i.i.i.i.i, i64 60
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !788, !noalias !1769 ; 2 uses
  %i.ae = icmp eq i32 %i.ab, 5
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %i.ag, label %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE7isEqualERKS2_S8_.exit.i.i.i.i.i.i, label %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE7isEqualERKS2_S8_.exit.thread.i.i.i.i.i.i

_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE7isEqualERKS2_S8_.exit.i.i.i.i.i.i: ; preds = %_ZNK5clang23ConstructionContextItemeqERKS0_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.01120.i.i.i.i.i.i, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !797
  %i.aj = icmp eq ptr %i.ai, %i.h
  br i1 %i.aj, label %bb.j, label %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE7isEqualERKS2_S8_.exit.thread.i.i.i.i.i.i

_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE7isEqualERKS2_S8_.exit.thread.i.i.i.i.i.i: ; preds = %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE7isEqualERKS2_S8_.exit.i.i.i.i.i.i, %_ZNK5clang23ConstructionContextItemeqERKS0_.exit.i.i.i.i.i.i.i.i.i.i.i, %._ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE7isEqualERKS2_S8_.exit.thread_crit_edge.i.i.i.i.i.i
  %i.ak = phi i32 [ %.pre22.i.i.i.i.i.i, %._ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE7isEqualERKS2_S8_.exit.thread_crit_edge.i.i.i.i.i.i ], [ %i.ab, %_ZNK5clang23ConstructionContextItemeqERKS0_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 5, %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE7isEqualERKS2_S8_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.al = phi i32 [ %.pre.i.i.i.i.i.i, %._ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE7isEqualERKS2_S8_.exit.thread_crit_edge.i.i.i.i.i.i ], [ %i.ad, %_ZNK5clang23ConstructionContextItemeqERKS0_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE7isEqualERKS2_S8_.exit.i.i.i.i.i.i ]
  %i.am = icmp ugt ptr %i.y, %i.d
  br i1 %i.am, label %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.thread.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE7isEqualERKS2_S8_.exit.thread.i.i.i.i.i.i
  %i.an = icmp ult ptr %i.y, %i.d
  br i1 %i.an, label %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.thread17.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp sgt i32 %i.ak, 5
  br i1 %i.ao, label %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.thread.i.i.i.i.i.i, label %_ZNK5clang23ConstructionContextItemltERKS0_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNK5clang23ConstructionContextItemltERKS0_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.ap = icmp eq i32 %i.ak, 5                    ; 2 uses
  %i.aq = icmp ne i32 %i.al, 0
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.thread.i.i.i.i.i.i, label %_ZNK5clang23ConstructionContextItemltERKS0_.exit.thread8.i.i.i.i.i.i.i.i.i.i.i

_ZNK5clang23ConstructionContextItemltERKS0_.exit.thread8.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK5clang23ConstructionContextItemltERKS0_.exit.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ap, label %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.i.i.i.i.i.i, label %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.thread17.i.i.i.i.i.i

_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.i.i.i.i.i.i: ; preds = %_ZNK5clang23ConstructionContextItemltERKS0_.exit.thread8.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.01120.i.i.i.i.i.i, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !797
  %i.at = icmp ugt ptr %i.as, %i.h
  br i1 %i.at, label %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.thread.i.i.i.i.i.i, label %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.thread17.i.i.i.i.i.i

_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.thread17.i.i.i.i.i.i: ; preds = %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.i.i.i.i.i.i, %_ZNK5clang23ConstructionContextItemltERKS0_.exit.thread8.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  br label %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.thread.i.i.i.i.i.i

_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.thread.i.i.i.i.i.i: ; preds = %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.thread17.i.i.i.i.i.i, %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.i.i.i.i.i.i, %_ZNK5clang23ConstructionContextItemltERKS0_.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.i, %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE7isEqualERKS2_S8_.exit.thread.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i = phi i64 [ 16, %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.thread17.i.i.i.i.i.i ], [ 8, %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE7isEqualERKS2_S8_.exit.thread.i.i.i.i.i.i ], [ 8, %bb.i ], [ 8, %_ZNK5clang23ConstructionContextItemltERKS0_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 8, %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.i.i.i.i.i.i ]
  %i.au = getelementptr i8, ptr %.01120.i.i.i.i.i.i, i64 %.sink.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !798 ; 2 uses
  %.not.i.i.i.i3.i.i = icmp eq ptr %.2.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i3.i.i, label %.thread, label %bb.g

bb.j:                                             ; preds = %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE7isEqualERKS2_S8_.exit.i.i.i.i.i.i
  store i32 %i.v, ptr %i.u, align 4, !tbaa !796
  %i.av = icmp eq i32 %i.v, 0
  br i1 %i.av, label %.split, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit58

.thread:                                          ; preds = %_ZN4llvm16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEE6isLessERKS2_S8_.exit.thread.i.i.i.i.i.i
  store i32 %i.v, ptr %i.u, align 4, !tbaa !796
  %i.aw = icmp eq i32 %i.v, 0
  br i1 %i.aw, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.critedge, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i

.split:                                           ; preds = %bb.j
  call fastcc void @_ZN4llvm11ImutAVLTreeINS_16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEEEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %i.t), !inline_history !1
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit58

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit58: ; preds = %bb.j, %.split
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.081.097) #22
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.081.097) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.d, ptr %7, align 8, !noalias !1771
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 5, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1771
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 0, ptr %.sroa.54.0..sroa_idx.i, align 4, !noalias !1771
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.h, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1771
  call fastcc void @_ZNK5clang4ento12ProgramState6removeIN12_GLOBAL__N_124ObjectsUnderConstructionEEEN4llvm18IntrusiveRefCntPtrIKS1_EENS0_17ProgramStateTraitIT_E8key_typeE(ptr dead_on_unwind noalias nonnull writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.081.097, ptr noundef nonnull byval(%"class.(anonymous namespace)::ConstructedObjectKey") align 8 %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ax = load ptr, ptr %14, align 8, !tbaa !323  ; 5 uses
  store ptr %.sroa.081.097, ptr %14, align 8, !tbaa !323
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.081.097) #22
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.081.097) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !206, !nonnull !71, !align !207 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef nonnull align 8 dereferenceable(23904) ptr %i.bc(ptr noundef nonnull align 8 dereferenceable(272) %i.az) #22, !inline_history !0
  %i.be = call noundef ptr @_ZNK5clang15CFGImplicitDtor17getDestructorDeclERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(23904) %i.bd) #22
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1774
  %i.bh = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg) #24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !244 ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i59, label %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit58
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !771
  br label %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit

_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit58, %bb.k
  %i.bm = phi ptr [ %i.bl, %bb.k ], [ null, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit58 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !243
  %i.bp = zext i32 %i.bo to i64
  %i.bq = zext i32 %i.bh to i64
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %i.bm, ptr %i.bs, align 8
  %.sroa.4.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 %i.bp, ptr %.sroa.4.0..sroa_idx.i60, align 8
  store ptr %i.br, ptr %15, align 8, !tbaa !903
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bu = ptrtoint ptr %i.be to i64
  %i.bv = and i64 %i.bu, -4
  store i64 %i.bv, ptr %i.bt, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bx = or disjoint i64 %i.g, 2
  store i64 %i.bx, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i64 2, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ax, ptr %16, align 8, !tbaa !323
  %.not.i.i61 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i61, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit62, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ax) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit62

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit62: ; preds = %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit, %bb.l
  %i.ca = call noundef ptr @_ZNK5clang4ento10CoreEngine8makeNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(232) %i.bz, ptr noundef nonnull align 8 dereferenceable(48) %15, ptr nofree noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %3, i1 noundef zeroext false) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ca, ptr %i.a, align 8, !tbaa !886
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit62
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !888
  %i.cd = trunc i64 %i.cc to i1
  br i1 %i.cd, label %_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE6insertERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit

_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit62, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cf = load ptr, ptr %16, align 8, !tbaa !323  ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i63, label %bb.t, label %bb.o

bb.o:                                             ; preds = %_ZN5clang4ento15ExplodedNodeSet6insertEPNS0_12ExplodedNodeE.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.cf) #22
  br label %bb.t

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.critedge: ; preds = %.thread
  call fastcc void @_ZN4llvm11ImutAVLTreeINS_16ImutKeyValueInfoIN12_GLOBAL__N_120ConstructedObjectKeyEN5clang4ento4SValEEEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %i.t), !inline_history !1
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit50, %bb.e, %.thread, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.critedge
end_hunk_0
