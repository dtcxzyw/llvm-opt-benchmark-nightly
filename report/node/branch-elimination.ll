Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/branch-elimination?download=true
inline.NumInlined: 782
inline.NumDeleted: 401
begin_hunk_0_@_ZN2v88internal8compiler17BranchElimination23SimplifyBranchConditionEPNS1_4NodeE:bb.a
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = lshr i32 %i.be, 24
  %i.bg = and i32 %i.bf, 15                       ; 2 uses
  %.not.i = icmp eq i32 %i.bg, 15
  %i.bh = ptrtoint ptr %i.af to i64
  %i.bi = add i64 %i.bh, 32                       ; 2 uses
  br i1 %.not.i, label %bb.h, label %_ZNK2v88internal8compiler4Node6inputsEv.exit

bb.h:                                             ; preds = %"_ZZN2v88internal8compiler17BranchElimination23SimplifyBranchConditionEPNS1_4NodeEENK3$_0clES4_.exit"
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = add i64 %i.bl, 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bo = load i32, ptr %i.bn, align 8
  br label %_ZNK2v88internal8compiler4Node6inputsEv.exit

_ZNK2v88internal8compiler4Node6inputsEv.exit:     ; preds = %"_ZZN2v88internal8compiler17BranchElimination23SimplifyBranchConditionEPNS1_4NodeEENK3$_0clES4_.exit", %bb.h
  %.sroa.3.0.i = phi i32 [ %i.bo, %bb.h ], [ %i.bg, %"_ZZN2v88internal8compiler17BranchElimination23SimplifyBranchConditionEPNS1_4NodeEENK3$_0clES4_.exit" ] ; 4 uses
  %.sroa.0.0.in.i = phi i64 [ %i.bm, %bb.h ], [ %i.bi, %"_ZZN2v88internal8compiler17BranchElimination23SimplifyBranchConditionEPNS1_4NodeEENK3$_0clES4_.exit" ]
  %.sroa.0.0.i = inttoptr i64 %.sroa.0.0.in.i to ptr
  %.not2646 = icmp eq i32 %.sroa.3.0.i, 0
  br i1 %.not2646, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2v88internal8compiler4Node6inputsEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = icmp ne i32 %i.b, 0
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %.1.i, 0
  %i.by = zext i32 %.sroa.3.0.i to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %indvars.iv
  %i.ca = load ptr, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !noalias !129
  %i.cd = and i32 %i.cc, 16777215
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.ce = zext nneg i32 %i.cd to i64              ; 2 uses
  %i.cf = load ptr, ptr %i.bp, align 8, !noalias !131
  %i.cg = load ptr, ptr %i.bq, align 8, !noalias !131 ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = sdiv exact i64 %i.cj, 48
  %i.cl = icmp ugt i64 %i.ck, %i.ce
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw [48 x i8], ptr %i.cg, i64 %i.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %i.cm, i64 48, i1 false)
  br label %_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_15BranchConditionELNS1_14NodeUniquenessE0EE8GetStateEPNS1_4NodeE.exit

bb.k:                                             ; preds = %bb.i
  %i.cn = load ptr, ptr %i.br, align 8, !noalias !131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %6, i8 0, i64 33, i1 false), !alias.scope !132
  store ptr %i.cn, ptr %i.bs, align 8, !alias.scope !132
  br label %_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_15BranchConditionELNS1_14NodeUniquenessE0EE8GetStateEPNS1_4NodeE.exit

_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_15BranchConditionELNS1_14NodeUniquenessE0EE8GetStateEPNS1_4NodeE.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !133
  store ptr %i.an, ptr %4, align 8, !noalias !133
  store i64 0, ptr %i.bu, align 8, !noalias !133
  %i.co = call noundef nonnull align 8 dereferenceable(17) ptr @_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_15BranchConditionENS_4base4hashIS6_EEE3GetERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %4), !noalias !133 ; 3 uses
  %.sroa.038.0.copyload = load ptr, ptr %i.co, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !133
  %.not45 = icmp eq ptr %.sroa.038.0.copyload, null
  br i1 %.not45, label %.critedge, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_15BranchConditionELNS1_14NodeUniquenessE0EE8GetStateEPNS1_4NodeE.exit
  %.val30 = load ptr, ptr %.sroa.5.0.copyload, align 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.cq = load i16, ptr %i.cp, align 8
  %i.cr = icmp eq i16 %i.cq, 2
  br i1 %i.cr, label %bb.m, label %.thread.i33

bb.m:                                             ; preds = %bb.l
  %i.cs = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN2v88internal8compiler18BranchParametersOfEPKNS1_8OperatorE(ptr noundef nonnull %.val30) #17
  %i.ct = load i32, ptr %i.cs, align 4            ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 2
  br i1 %i.cu, label %.thread.i33, label %"_ZZN2v88internal8compiler17BranchElimination23SimplifyBranchConditionEPNS1_4NodeEENK3$_0clES4_.exit35"

.thread.i33:                                      ; preds = %bb.m, %bb.l
  br label %"_ZZN2v88internal8compiler17BranchElimination23SimplifyBranchConditionEPNS1_4NodeEENK3$_0clES4_.exit35"

"_ZZN2v88internal8compiler17BranchElimination23SimplifyBranchConditionEPNS1_4NodeEENK3$_0clES4_.exit35": ; preds = %bb.m, %.thread.i33
  %.1.i34 = phi i32 [ %i.bw, %.thread.i33 ], [ %i.ct, %bb.m ]
  %.not27 = icmp eq i32 %.1.i34, %.1.i
  br i1 %.not27, label %bb.n, label %.critedge

bb.n:                                             ; preds = %"_ZZN2v88internal8compiler17BranchElimination23SimplifyBranchConditionEPNS1_4NodeEENK3$_0clES4_.exit35"
  %i.cv = load ptr, ptr %i.aw, align 8            ; 3 uses
  br i1 %i.bx, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.cw = trunc nuw i8 %.sroa.6.0.copyload to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !134
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !134
  br i1 %i.cw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZN2v88internal8compiler7JSGraph12TrueConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.81") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1144) %i.cv) #17, !noalias !134
  br label %_ZN2v88internal8compiler7JSGraph15BooleanConstantEb.exit

bb.q:                                             ; preds = %bb.o
  call void @_ZN2v88internal8compiler7JSGraph13FalseConstantEv(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.82") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1144) %i.cv) #17, !noalias !134
  br label %_ZN2v88internal8compiler7JSGraph15BooleanConstantEb.exit

_ZN2v88internal8compiler7JSGraph15BooleanConstantEb.exit: ; preds = %bb.p, %bb.q
  %storemerge.in.i = phi ptr [ %3, %bb.q ], [ %2, %bb.p ]
  %storemerge.i = load ptr, ptr %storemerge.in.i, align 8, !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !134
  %i.cx = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.cy = load ptr, ptr %i.bb, align 8
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %bb.r, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE12emplace_backIJNS2_5TNodeINS2_7BooleanEEEEEEvDpOT_.exit, !prof !11

bb.r:                                             ; preds = %_ZN2v88internal8compiler7JSGraph15BooleanConstantEb.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %5)
  %.pre.i = load ptr, ptr %i.ba, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE12emplace_backIJNS2_5TNodeINS2_7BooleanEEEEEEvDpOT_.exit

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE12emplace_backIJNS2_5TNodeINS2_7BooleanEEEEEEvDpOT_.exit: ; preds = %_ZN2v88internal8compiler7JSGraph15BooleanConstantEb.exit, %bb.r
  %i.da = phi ptr [ %.pre.i, %bb.r ], [ %i.cx, %_ZN2v88internal8compiler7JSGraph15BooleanConstantEb.exit ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.db, ptr %i.ba, align 8
  store ptr %storemerge.i, ptr %i.da, align 8
  br label %bb.u

bb.s:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %.mask = and i8 %.sroa.6.0.copyload, 1
  %. = zext nneg i8 %.mask to i32
  %i.de = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder13Int32ConstantEi(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i32 noundef %.) #17
  %i.df = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ay, ptr noundef %i.de, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #17
  %i.dg = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.dh = load ptr, ptr %i.bb, align 8
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %bb.t, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, !prof !11

bb.t:                                             ; preds = %bb.s
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %5)
  %.pre.i36 = load ptr, ptr %i.ba, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %bb.s, %bb.t
  %i.dj = phi ptr [ %.pre.i36, %bb.t ], [ %i.dg, %bb.s ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.dk, ptr %i.ba, align 8
  store ptr %i.df, ptr %i.dj, align 8
  br label %bb.u

bb.u:                                             ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE12emplace_backIJNS2_5TNodeINS2_7BooleanEEEEEEvDpOT_.exit, %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not26 = icmp eq i64 %indvars.iv.next, %i.by
  br i1 %.not26, label %.critedge29, label %bb.i, !llvm.loop !126

.critedge:                                        ; preds = %"_ZZN2v88internal8compiler17BranchElimination23SimplifyBranchConditionEPNS1_4NodeEENK3$_0clES4_.exit35", %_ZN2v88internal8compiler35AdvancedReducerWithControlPathStateINS1_15BranchConditionELNS1_14NodeUniquenessE0EE8GetStateEPNS1_4NodeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.w

.critedge29:                                      ; preds = %bb.u
  %.pre = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.pre49 = load ptr, ptr %i.bb, align 8
  %i.dl = icmp eq ptr %.pre, %.pre49
  br i1 %i.dl, label %bb.v, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit, !prof !135

bb.v:                                             ; preds = %.critedge29
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %5)
  %.pre.i37 = load ptr, ptr %i.ba, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit

_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit: ; preds = %_ZNK2v88internal8compiler4Node6inputsEv.exit, %.critedge29, %bb.v
  %i.dm = phi ptr [ %.pre.i37, %bb.v ], [ %.pre, %.critedge29 ], [ %i.az, %_ZNK2v88internal8compiler4Node6inputsEv.exit ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.dn, ptr %i.ba, align 8
  store ptr %i.af, ptr %i.dm, align 8
  %i.do = load ptr, ptr %i.aw, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = icmp eq i32 %.1.i, 0
  %i.ds = select i1 %i.dr, i8 9, i8 4
  %i.dt = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 noundef zeroext %i.ds, i32 noundef %.sroa.3.0.i) #17
  %i.du = add nsw i32 %.sroa.3.0.i, 1
  %i.dv = load ptr, ptr %5, align 8
  %i.dw = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ay, ptr noundef %i.dt, i32 noundef %i.du, ptr noundef nonnull %i.dv, i1 noundef zeroext false) #17
  call void @_ZN2v88internal8compiler14NodeProperties17ReplaceValueInputEPNS1_4NodeES4_i(ptr noundef nonnull %1, ptr noundef %i.dw, i32 noundef 0) #17
  br label %bb.w

bb.w:                                             ; preds = %.critedge, %_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE12emplace_backIJRS5_EEEvDpOT_.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler4NodeELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit, %bb.w
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder13Int32ConstantEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK2v88internal8compiler17BranchElimination6commonEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  ret ptr %i.d
}

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal8compiler14NodeProperties17ReplaceValueInputEPNS1_4NodeES4_i(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler17BranchElimination34TryEliminateBranchWithPhiConditionEPNS1_4NodeES4_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.v8::internal::compiler::IntMatcher", align 8 ; 5 uses
  %5 = alloca %"struct.v8::internal::compiler::IntMatcher", align 8 ; 7 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2v88internal8compiler4Node7OwnedByEPKS2_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1) #17
  br i1 %i.a, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 251658240
  switch i32 %i.d, label %bb.v [
    i32 251658240, label %_ZNK2v88internal8compiler4Node10InputCountEv.exit
    i32 50331648, label %.thread
  ]

_ZNK2v88internal8compiler4Node10InputCountEv.exit: ; preds = %bb.b
  %i.e = ptrtoint ptr %2 to i64
  %i.f = add i64 %i.e, 32                         ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %.not = icmp eq i32 %i.j, 3
  br i1 %.not, label %bb.c, label %bb.v

.thread:                                          ; preds = %bb.b
  %i.k = ptrtoint ptr %2 to i64
  %i.l = add i64 %i.k, 32                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

bb.c:                                             ; preds = %_ZNK2v88internal8compiler4Node10InputCountEv.exit
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = add i64 %i.n, 16
  %i.p = inttoptr i64 %i.o to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit

_ZNK2v88internal8compiler4Node7InputAtEi.exit:    ; preds = %.thread, %bb.c
  %i.q = phi ptr [ %i.g, %bb.c ], [ %i.m, %.thread ]
  %i.r = phi i64 [ %i.f, %bb.c ], [ %i.l, %.thread ]
  %.sink.i.i = phi ptr [ %i.p, %bb.c ], [ %i.m, %.thread ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %.not44 = icmp eq ptr %i.t, %3
  br i1 %.not44, label %bb.d, label %bb.v

bb.d:                                             ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit
  %i.u = tail call noundef i32 @_ZNK2v88internal8compiler4Node8UseCountEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  %.not45 = icmp eq i32 %i.u, 2
  br i1 %.not45, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.b, align 4
  %i.w = and i32 %i.v, 251658240
  %.not.i48 = icmp eq i32 %i.w, 251658240
  br i1 %.not.i48, label %bb.f, label %_ZNK2v88internal8compiler4Node6inputsEv.exit

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.q, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = add i64 %i.y, 16
  br label %_ZNK2v88internal8compiler4Node6inputsEv.exit

_ZNK2v88internal8compiler4Node6inputsEv.exit:     ; preds = %bb.e, %bb.f
  %.sroa.0.0.in.i = phi i64 [ %i.z, %bb.f ], [ %i.r, %bb.e ]
  %.sroa.0.0.i = inttoptr i64 %.sroa.0.0.in.i to ptr ; 2 uses
  %i.aa = load ptr, ptr %.sroa.0.0.i, align 8     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i16, ptr %i.ae, align 8
  %.not46 = icmp eq i16 %i.af, 27
  br i1 %.not46, label %bb.g, label %bb.v

bb.g:                                             ; preds = %_ZNK2v88internal8compiler4Node6inputsEv.exit
  %i.ag = load ptr, ptr %i.ac, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i16, ptr %i.ah, align 8
  %.not47 = icmp eq i16 %i.ai, 27
  br i1 %.not47, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ak, 251658240
  %.not.i49 = icmp eq i32 %i.al, 251658240
  %i.am = ptrtoint ptr %3 to i64
  %i.an = add i64 %i.am, 32                       ; 2 uses
  br i1 %.not.i49, label %bb.i, label %_ZNK2v88internal8compiler4Node6inputsEv.exit55

bb.i:                                             ; preds = %bb.h
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = add i64 %i.aq, 16
  br label %_ZNK2v88internal8compiler4Node6inputsEv.exit55

_ZNK2v88internal8compiler4Node6inputsEv.exit55:   ; preds = %bb.h, %bb.i
  %.sroa.0.0.in.i51 = phi i64 [ %i.ar, %bb.i ], [ %i.an, %bb.h ]
  %.sroa.0.0.i52 = inttoptr i64 %.sroa.0.0.in.i51 to ptr ; 2 uses
  %i.as = load ptr, ptr %.sroa.0.0.i52, align 8   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i52, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = sub i64 %i.ay, %i.ba
  %i.bc = icmp ult i64 %i.bb, 16
  br i1 %i.bc, label %bb.j, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit, !prof !11

bb.j:                                             ; preds = %_ZNK2v88internal8compiler4Node6inputsEv.exit55
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.aw, i64 noundef 16) #17
  %.pre.i.i = load i64, ptr %i.az, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit: ; preds = %_ZNK2v88internal8compiler4Node6inputsEv.exit55, %bb.j
  %i.bd = phi i64 [ %.pre.i.i, %bb.j ], [ %i.ba, %_ZNK2v88internal8compiler4Node6inputsEv.exit55 ] ; 2 uses
  %i.be = inttoptr i64 %i.bd to ptr               ; 3 uses
  %i.bf = add i64 %i.bd, 16
  store i64 %i.bf, ptr %i.az, align 8
  tail call void @_ZN2v88internal8compiler14NodeProperties25CollectControlProjectionsEPNS1_4NodeEPS4_m(ptr noundef %1, ptr noundef %i.be, i64 noundef 2) #17
  %i.bg = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN2v88internal8compiler10IntMatcherIiLNS1_8IrOpcode5ValueE27EEC2EPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.ac)
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bk = load i8, ptr %i.bj, align 4, !range !13, !noundef !14
  %i.bl = trunc nuw i8 %i.bk to i1                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bn = load i32, ptr %i.bm, align 8            ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 1
  %i.bp = select i1 %i.bl, i1 %i.bo, i1 false
  br i1 %i.bp, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.br = load i8, ptr %i.bq, align 4, !range !13, !noundef !14
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = select i1 %i.bs, i1 %i.bv, i1 false
  br i1 %i.bw, label %bb.m, label %.critedge2

.critedge:                                        ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler4NodeEA_S5_EEPT_m.exit
  %i.bx = icmp eq i32 %i.bn, 0
  %i.by = select i1 %i.bl, i1 %i.bx, i1 false
  br i1 %i.by, label %bb.l, label %.critedge2

bb.l:                                             ; preds = %.critedge
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler16ControlPathStateINS1_15BranchConditionELNS1_14NodeUniquenessE0EE8AddStateEPNS0_4ZoneEPNS1_4NodeES3_S5_:bb.a

_ZN2v88internal4Zone8AllocateINS0_8compiler14FunctionalListINS3_15BranchConditionEE4ConsEEEPvm.exit.i.i: ; preds = %bb.d, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit.thread
  %i.p = phi i64 [ %.pre.i.i.i, %bb.d ], [ %i.m, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit.thread ] ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 4 uses
  %i.r = add i64 %i.p, 40
  store i64 %i.r, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.g, ptr %i.s, align 8
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler14FunctionalListINS1_15BranchConditionEE9PushFrontES3_PNS0_4ZoneE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler14FunctionalListINS3_15BranchConditionEE4ConsEEEPvm.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.u = load i64, ptr %i.t, align 8
  %i.v = add i64 %i.u, 1
  br label %_ZN2v88internal8compiler14FunctionalListINS1_15BranchConditionEE9PushFrontES3_PNS0_4ZoneE.exit

_ZN2v88internal8compiler14FunctionalListINS1_15BranchConditionEE9PushFrontES3_PNS0_4ZoneE.exit: ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler14FunctionalListINS3_15BranchConditionEE4ConsEEEPvm.exit.i.i, %bb.e
  %i.w = phi i64 [ %i.v, %bb.e ], [ 1, %_ZN2v88internal4Zone8AllocateINS0_8compiler14FunctionalListINS3_15BranchConditionEE4ConsEEEPvm.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %i.w, ptr %i.x, align 8
  store ptr %i.q, ptr %7, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal8compiler14FunctionalListINS1_15BranchConditionEE9PushFrontES3_PNS0_4ZoneE.exit, %bb.c
  %i.y = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit.thread.i, label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit.i

_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit.i: ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8
  %.not.i5 = icmp eq i64 %i.aa, 0
  br i1 %.not.i5, label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit.thread.i, label %_ZN2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE9DropFrontEv.exit, !prof !16

_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit.thread.i: ; preds = %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit.i, %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #19
  unreachable

_ZN2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE9DropFrontEv.exit: ; preds = %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  store ptr %i.ac, ptr %0, align 8
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = sub i64 %i.ae, %i.ag
  %i.ai = icmp ult i64 %i.ah, 24
  br i1 %i.ai, label %bb.g, label %_ZN2v88internal4Zone8AllocateINS0_8compiler14FunctionalListINS4_INS3_15BranchConditionEEEE4ConsEEEPvm.exit.i.i, !prof !11

bb.g:                                             ; preds = %_ZN2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE9DropFrontEv.exit
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 24) #17
  %.pre.i.i.i7 = load i64, ptr %i.af, align 8
  br label %_ZN2v88internal4Zone8AllocateINS0_8compiler14FunctionalListINS4_INS3_15BranchConditionEEEE4ConsEEEPvm.exit.i.i

_ZN2v88internal4Zone8AllocateINS0_8compiler14FunctionalListINS4_INS3_15BranchConditionEEEE4ConsEEEPvm.exit.i.i: ; preds = %bb.g, %_ZN2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE9DropFrontEv.exit
  %i.aj = phi i64 [ %.pre.i.i.i7, %bb.g ], [ %i.ag, %_ZN2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE9DropFrontEv.exit ] ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 4 uses
  %i.al = add i64 %i.aj, 24
  store i64 %i.al, ptr %i.af, align 8
  %i.am = load ptr, ptr %0, align 8               ; 3 uses
  store ptr %.sroa.0.0.copyload, ptr %i.ak, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.am, ptr %i.an, align 8
  %.not.i.i.i6 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i6, label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit9, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler14FunctionalListINS4_INS3_15BranchConditionEEEE4ConsEEEPvm.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = add i64 %i.ap, 1
  br label %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit9

_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit9: ; preds = %_ZN2v88internal4Zone8AllocateINS0_8compiler14FunctionalListINS4_INS3_15BranchConditionEEEE4ConsEEEPvm.exit.i.i, %bb.h
  %i.ar = phi i64 [ %i.aq, %bb.h ], [ 1, %_ZN2v88internal4Zone8AllocateINS0_8compiler14FunctionalListINS4_INS3_15BranchConditionEEEE4ConsEEEPvm.exit.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %i.ar, ptr %i.as, align 8
  store ptr %i.ak, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_ZN2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_15BranchConditionENS_4base4hashIS6_EEE6ModifyIZNSB_3SetES6_S7_EUlPS7_E_EEvS6_T_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr %2, i64 0, ptr nonnull align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZNK2v88internal8compiler14FunctionalListINS2_INS1_15BranchConditionEEEE4SizeEv.exit9
  ret void
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_15BranchConditionENS_4base4hashIS6_EEE6ModifyIZNSB_3SetES6_S7_EUlPS7_E_EEvS6_T_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i64 %2, ptr %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.std::_Rb_tree<std::pair<v8::internal::compiler::Node *, unsigned long>, std::pair<const std::pair<v8::internal::compiler::Node *, unsigned long>, v8::internal::compiler::BranchCondition>, std::_Select1st<std::pair<const std::pair<v8::internal::compiler::Node *, unsigned long>, v8::internal::compiler::BranchCondition>>, std::less<std::pair<v8::internal::compiler::Node *, unsigned long>>, v8::internal::ZoneAllocator<std::pair<const std::pair<v8::internal::compiler::Node *, unsigned long>, v8::internal::compiler::BranchCondition>>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %5 = alloca %"struct.std::pair", align 8        ; 5 uses
  %6 = alloca %"struct.std::array", align 8       ; 6 uses
  %7 = alloca %"struct.v8::internal::compiler::BranchCondition", align 8 ; 9 uses
  store ptr %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = xor i64 %i.b, -1
  %i.d = shl i64 %i.b, 21
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  %i.f = lshr i64 %i.e, 24
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, 265                        ; 2 uses
  %i.i = lshr i64 %i.h, 14
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.j, 21                         ; 2 uses
  %i.l = lshr i64 %i.k, 28
  %i.m = xor i64 %i.l, %i.k
  %i.n = mul i64 %i.m, 8398540807049701781        ; 2 uses
  %i.o = lshr i64 %i.n, 47
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, 678072505
  %i.r = xor i64 %2, -1
  %i.s = shl i64 %2, 21
  %i.t = add i64 %i.s, %i.r                       ; 2 uses
  %i.u = lshr i64 %i.t, 24
  %i.v = xor i64 %i.u, %i.t
  %i.w = mul i64 %i.v, 265                        ; 2 uses
  %i.x = lshr i64 %i.w, 14
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, 21                         ; 2 uses
  %i.aa = lshr i64 %i.z, 28
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, 8398540807049701781      ; 2 uses
  %i.ad = lshr i64 %i.ac, 47
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, 1540483477
  %i.ag = xor i64 %i.af, %i.q
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = mul i32 %i.ah, 1540483477               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.aj = load ptr, ptr %0, align 8               ; 2 uses
  %.not44.i = icmp eq ptr %i.aj, null
  br i1 %.not44.i, label %.loopexit, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %bb.a, %bb.f
  %.046.i = phi ptr [ %i.bq, %bb.f ], [ %i.aj, %bb.a ] ; 14 uses
  %.03245.i = phi i32 [ %i.br, %bb.f ], [ 0, %bb.a ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.046.i, i64 44
  %.sroa.01.0.copyload.i = load i32, ptr %i.ak, align 4 ; 2 uses
  %.not36.i = icmp eq i32 %i.ai, %.sroa.01.0.copyload.i
  %i.al = getelementptr inbounds nuw i8, ptr %.046.i, i64 40 ; 2 uses
  br i1 %.not36.i, label %.critedge.preheader.i, label %bb.b

.critedge.preheader.i:                            ; preds = %.lr.ph48.i
  %i.am = load i8, ptr %i.al, align 8             ; 3 uses
  %i.an = sext i8 %i.am to i32
  %i.ao = icmp slt i32 %.03245.i, %i.an
  br i1 %i.ao, label %.lr.ph52.i, label %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_15BranchConditionENS_4base4hashIS6_EEE8FindHashENSB_9HashValueEPSt5arrayIPKNSB_11FocusedTreeELm32EEPi.exit

.lr.ph52.i:                                       ; preds = %.critedge.preheader.i
  %i.ap = sext i32 %.03245.i to i64               ; 2 uses
  %i.aq = sext i8 %i.am to i64
  %i.ar = shl nsw i64 %i.ap, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %6, i64 %i.ar
  %scevgep71 = getelementptr i8, ptr %.046.i, i64 56
  %scevgep72 = getelementptr i8, ptr %scevgep71, i64 %i.ar
  %i.as = sub nsw i64 %i.aq, %i.ap
  %i.at = shl nsw i64 %i.as, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %scevgep72, i64 %i.at, i1 false)
  %i.au = sext i8 %i.am to i32
  br label %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_15BranchConditionENS_4base4hashIS6_EEE8FindHashENSB_9HashValueEPSt5arrayIPKNSB_11FocusedTreeELm32EEPi.exit

bb.b:                                             ; preds = %.lr.ph48.i
  %i.av = xor i32 %.sroa.01.0.copyload.i, %i.ai   ; 2 uses
  %i.aw = lshr exact i32 -2147483648, %.03245.i
  %i.ax = and i32 %i.av, %i.aw
  %.not.i.not42.i = icmp eq i32 %i.ax, 0
  %.pre = load i8, ptr %i.al, align 8             ; 2 uses
  br i1 %.not.i.not42.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %.046.i, i64 56
  %i.az = sext i32 %.03245.i to i64
  %i.ba = sext i8 %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.az, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.bb = icmp slt i64 %indvars.iv.i, %i.ba
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.bd = load ptr, ptr %i.bc, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.be = phi ptr [ %i.bd, %bb.d ], [ null, %bb.c ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i
  store ptr %i.be, ptr %i.bf, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bg = trunc nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.bh = lshr exact i32 -2147483648, %i.bg
  %i.bi = and i32 %i.bh, %i.av
  %.not.i.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.not.i, label %bb.c, label %._crit_edge.i, !llvm.loop !166

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.1.lcssa.i = phi i32 [ %.03245.i, %bb.b ], [ %i.bg, %bb.e ] ; 4 uses
  %i.bj = sext i32 %.1.lcssa.i to i64             ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bj
  store ptr %.046.i, ptr %i.bk, align 8
  %i.bl = sext i8 %.pre to i32
  %i.bm = icmp slt i32 %.1.lcssa.i, %i.bl
  br i1 %i.bm, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i
  %i.bn = add nsw i32 %.1.lcssa.i, 1
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.046.i, i64 56
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bj
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = add nsw i32 %.1.lcssa.i, 1              ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph48.i, !llvm.loop !167

.loopexit:                                        ; preds = %bb.f, %bb.a, %.thread.i
  %.3.i.ph = phi i32 [ 0, %bb.a ], [ %i.bn, %.thread.i ], [ %i.br, %bb.f ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_15BranchConditionENS_4base4hashIS6_EEE15GetFocusedValueEPKNSB_11FocusedTreeERKS6_.exit

_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_15BranchConditionENS_4base4hashIS6_EEE8FindHashENSB_9HashValueEPSt5arrayIPKNSB_11FocusedTreeELm32EEPi.exit: ; preds = %.lr.ph52.i, %.critedge.preheader.i
  %.3.i = phi i32 [ %.03245.i, %.critedge.preheader.i ], [ %i.au, %.lr.ph52.i ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.046.i, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  %.not11.i = icmp eq ptr %i.bu, null
  br i1 %.not11.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_15BranchConditionENS_4base4hashIS6_EEE8FindHashENSB_9HashValueEPSt5arrayIPKNSB_11FocusedTreeELm32EEPi.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not10.i.i.i.i, label %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_15BranchConditionESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bw, %bb.g ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bx, %bb.g ]
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = icmp ult ptr %i.bz, %1
  %i.cb = icmp eq ptr %i.bz, %1
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = icmp ult i64 %i.cd, %2
  %.sroa.05.0.i.i.i.i.i.i = select i1 %i.cb, i1 %i.ce, i1 %i.ca ; 2 uses
  %.19.i.i.i.i = select i1 %.sroa.05.0.i.i.i.i.i.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %.sroa.05.0.i.i.i.i.i.i, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_15BranchConditionEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNKSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_15BranchConditionEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cf = icmp eq ptr %.19.i.i.i.i, %i.bx
  br i1 %i.cf, label %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_15BranchConditionESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i, label %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_15BranchConditionESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.i

_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_15BranchConditionESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.i: ; preds = %_ZNKSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_15BranchConditionEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = icmp ult ptr %1, %i.ch
  %i.cj = icmp eq ptr %1, %i.ch
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = icmp ult i64 %2, %i.cl
  %.sroa.05.0.i.i.i.i.i = select i1 %i.cj, i1 %i.cm, i1 %i.ci
  br i1 %.sroa.05.0.i.i.i.i.i, label %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_15BranchConditionESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i, label %bb.h

_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_15BranchConditionESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i: ; preds = %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_15BranchConditionESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.i, %_ZNKSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_15BranchConditionEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_15BranchConditionENS_4base4hashIS6_EEE15GetFocusedValueEPKNSB_11FocusedTreeERKS6_.exit

bb.h:                                             ; preds = %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_15BranchConditionESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48
  br label %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_15BranchConditionENS_4base4hashIS6_EEE15GetFocusedValueEPKNSB_11FocusedTreeERKS6_.exit

bb.i:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_15BranchConditionENS_4base4hashIS6_EEE8FindHashENSB_9HashValueEPSt5arrayIPKNSB_11FocusedTreeELm32EEPi.exit
  %i.cp = load ptr, ptr %.046.i, align 8
  %i.cq = icmp eq ptr %1, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.046.i, i64 8
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = icmp eq i64 %2, %i.cs
  %i.cu = select i1 %i.cq, i1 %i.ct, i1 false
  br i1 %i.cu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.046.i, i64 16
  br label %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_15BranchConditionENS_4base4hashIS6_EEE15GetFocusedValueEPKNSB_11FocusedTreeERKS6_.exit

bb.k:                                             ; preds = %bb.i
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_15BranchConditionENS_4base4hashIS6_EEE15GetFocusedValueEPKNSB_11FocusedTreeERKS6_.exit

_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_15BranchConditionENS_4base4hashIS6_EEE15GetFocusedValueEPKNSB_11FocusedTreeERKS6_.exit: ; preds = %.loopexit, %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_15BranchConditionESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i, %bb.h, %bb.j, %bb.k
  %.not.i3353 = phi i1 [ true, %.loopexit ], [ false, %bb.j ], [ false, %bb.k ], [ false, %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_15BranchConditionESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i ], [ false, %bb.h ]
  %.3.i51 = phi i32 [ %.3.i.ph, %.loopexit ], [ %.3.i, %bb.j ], [ %.3.i, %bb.k ], [ %.3.i, %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_15BranchConditionESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i ], [ %.3.i, %bb.h ] ; 4 uses
  %.039.i49 = phi ptr [ null, %.loopexit ], [ %.046.i, %bb.j ], [ %.046.i, %bb.k ], [ %.046.i, %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_15BranchConditionESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i ], [ %.046.i, %bb.h ] ; 6 uses
  %.1.i = phi ptr [ %i.bs, %.loopexit ], [ %i.cv, %bb.j ], [ %i.cw, %bb.k ], [ %i.cn, %_ZNKSt3mapISt4pairIPN2v88internal8compiler4NodeEmENS3_15BranchConditionESt4lessIS6_ENS2_13ZoneAllocatorIS0_IKS6_S7_EEEE4findERSB_.exit.thread.i ], [ %i.co, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %.1.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 17, i1 false)
  %i.cx = load ptr, ptr %.1.i, align 8
  %i.cy = load ptr, ptr %7, align 8
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %bb.l, label %_ZN2v88internal8compiler14may_be_unequalINS1_15BranchConditionEEclERKS3_S6_.exit.thread

bb.l:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_15BranchConditionENS_4base4hashIS6_EEE15GetFocusedValueEPKNSB_11FocusedTreeERKS6_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = icmp eq ptr %i.db, %i.dd
  br i1 %i.de, label %_ZN2v88internal8compiler14may_be_unequalINS1_15BranchConditionEEclERKS3_S6_.exit, label %_ZN2v88internal8compiler14may_be_unequalINS1_15BranchConditionEEclERKS3_S6_.exit.thread

_ZN2v88internal8compiler14may_be_unequalINS1_15BranchConditionEEclERKS3_S6_.exit: ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.dg = load i8, ptr %i.df, align 8, !range !13, !noundef !14
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.di = load i8, ptr %i.dh, align 8, !range !13, !noundef !14
  %.not = icmp eq i8 %i.dg, %i.di
  br i1 %.not, label %bb.y, label %_ZN2v88internal8compiler14may_be_unequalINS1_15BranchConditionEEclERKS3_S6_.exit.thread

_ZN2v88internal8compiler14may_be_unequalINS1_15BranchConditionEEclERKS3_S6_.exit.thread: ; preds = %_ZNK2v88internal8compiler13PersistentMapISt4pairIPNS1_4NodeEmENS1_15BranchConditionENS_4base4hashIS6_EEE15GetFocusedValueEPKNSB_11FocusedTreeERKS6_.exit, %bb.l, %_ZN2v88internal8compiler14may_be_unequalINS1_15BranchConditionEEclERKS3_S6_.exit
  br i1 %.not.i3353, label %bb.w, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal8compiler14may_be_unequalINS1_15BranchConditionEEclERKS3_S6_.exit.thread
  %i.dj = getelementptr inbounds nuw i8, ptr %.039.i49, i64 48 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dm = load ptr, ptr %.039.i49, align 8
  %i.dn = icmp eq ptr %i.dm, %1
  %i.do = getelementptr inbounds nuw i8, ptr %.039.i49, i64 8
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = icmp eq i64 %i.dp, %2
  %i.dr = select i1 %i.dn, i1 %i.dq, i1 false
  br i1 %i.dr, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8            ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 3 uses
  %i.dx = load i64, ptr %i.dw, align 8            ; 2 uses
  %i.dy = sub i64 %i.dv, %i.dx
  %i.dz = icmp ult i64 %i.dy, 56
  br i1 %i.dz, label %bb.p, label %_ZN2v88internal4Zone3NewINS0_7ZoneMapISt4pairIPNS0_8compiler4NodeEmENS5_15BranchConditionESt4lessIS8_EEEJRPS1_EEEPT_DpOT0_.exit, !prof !11

bb.p:                                             ; preds = %bb.o
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dt, i64 noundef 56) #17
  %.pre.i.i = load i64, ptr %i.dw, align 8
  br label %_ZN2v88internal4Zone3NewINS0_7ZoneMapISt4pairIPNS0_8compiler4NodeEmENS5_15BranchConditionESt4lessIS8_EEEJRPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_7ZoneMapISt4pairIPNS0_8compiler4NodeEmENS5_15BranchConditionESt4lessIS8_EEEJRPS1_EEEPT_DpOT0_.exit: ; preds = %bb.o, %bb.p
  %i.ea = phi i64 [ %.pre.i.i, %bb.p ], [ %i.dx, %bb.o ] ; 2 uses
  %i.eb = inttoptr i64 %i.ea to ptr               ; 15 uses
  %i.ec = add i64 %i.ea, 56
  store i64 %i.ec, ptr %i.dw, align 8
  %i.ed = load ptr, ptr %i.ds, align 8
  %i.ee = ptrtoint ptr %i.ed to i64
  store i64 %i.ee, ptr %i.eb, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 6 uses
  store i32 0, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 24 ; 3 uses
  store ptr null, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 32 ; 3 uses
  store ptr %i.ef, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 40 ; 3 uses
  store ptr %i.ef, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 48 ; 3 uses
  store i64 0, ptr %i.ej, align 8
  %i.ek = load ptr, ptr %i.dj, align 8            ; 4 uses
  %.not30 = icmp eq ptr %i.ek, null
  br i1 %.not30, label %bb.v, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapISt4pairIPNS0_8compiler4NodeEmENS5_15BranchConditionESt4lessIS8_EEEJRPS1_EEEPT_DpOT0_.exit
  %.not.i.i.i = icmp eq ptr %i.ek, %i.eb
  br i1 %.not.i.i.i, label %_ZN2v88internal7ZoneMapISt4pairIPNS0_8compiler4NodeEmENS3_15BranchConditionESt4lessIS6_EEaSERKSA_.exit, label %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_15BranchConditionEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i

_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_15BranchConditionEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.eb, ptr %i.em, align 8
  store ptr null, ptr %i.el, align 8
  store ptr null, ptr %i.eg, align 8
  store ptr %i.ef, ptr %i.eh, align 8
  store ptr %i.ef, ptr %i.ei, align 8
  store i64 0, ptr %i.ej, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not5.i.i.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_15BranchConditionEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE20_Reuse_or_alloc_nodeC2ERSG_.exit.i.i.i
  %i.ep = call noundef ptr @_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_15BranchConditionEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.eb, ptr noundef nonnull %i.eo, ptr noundef nonnull %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %4) ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi ptr [ %i.ep, %bb.r ], [ %i.er, %bb.s ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_15BranchConditionEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.s, !llvm.loop !168

_ZNSt8_Rb_treeISt4pairIPN2v88internal8compiler4NodeEmES0_IKS6_NS3_15BranchConditionEESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.s
  store ptr %.0.i.i.i.i.i.i, ptr %i.eh, align 8
  br label %bb.t

end_hunk_1
