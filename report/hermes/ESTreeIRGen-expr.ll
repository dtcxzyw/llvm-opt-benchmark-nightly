Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ESTreeIRGen-expr?download=true
inline.NumInlined: 1773
inline.NumDeleted: 898
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes5irgen11ESTreeIRGen18genConditionalExprEPNS_6ESTree25ConditionalExpressionNodeE:bb.a
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.av = ptrtoint ptr %i.ao to i64
  store i64 %i.av, ptr %i.au, align 1
  %i.aw = load i32, ptr %i.f, align 8, !tbaa !231
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.f, align 8, !tbaa !231
  %i.ay = call noundef ptr @_ZN6hermes9IRBuilder17getInsertionBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #16
  %i.az = load i32, ptr %i.i, align 8, !tbaa !231 ; 2 uses
  %i.ba = load i32, ptr %i.j, align 4, !tbaa !232
  %.not.i19 = icmp ult i32 %i.az, %i.ba
  br i1 %.not.i19, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21, label %bb.e, !prof !224

bb.e:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit18
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.h, i64 noundef 0, i64 noundef 8) #16
  %.pre.i20 = load i32, ptr %i.i, align 8, !tbaa !231
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit18, %bb.e
  %i.bb = phi i32 [ %.pre.i20, %bb.e ], [ %i.az, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit18 ]
  %i.bc = load ptr, ptr %3, align 8, !tbaa !230
  %i.bd = zext i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = ptrtoint ptr %i.ay to i64
  store i64 %i.bf, ptr %i.be, align 1
  %i.bg = load i32, ptr %i.i, align 8, !tbaa !231
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.i, align 8, !tbaa !231
  %i.bi = call noundef ptr @_ZN6hermes9IRBuilder16createBranchInstEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.m) #16 ; 0 uses
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.m) #16
  %i.bj = call noundef ptr @_ZN6hermes9IRBuilder13createPhiInstERKN4llvh11SmallVectorIPNS_5ValueELj8EEERKNS2_IPNS_10BasicBlockELj8EEE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %3) #16 ; 2 uses
  %i.bk = load ptr, ptr %3, align 8, !tbaa !230   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.h
  br i1 %i.bl, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21
  call void @free(ptr noundef %i.bk) #16
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit21, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.bm = load ptr, ptr %2, align 8, !tbaa !230   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.e
  br i1 %i.bn, label %_ZN4llvh11SmallVectorIPN6hermes5ValueELj8EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit
  call void @free(ptr noundef %i.bm) #16
  br label %_ZN4llvh11SmallVectorIPN6hermes5ValueELj8EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes5ValueELj8EED2Ev.exit: ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EED2Ev.exit, %bb.g
  %i.bo = icmp eq ptr %i.bj, null
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %spec.select = select i1 %i.bo, ptr null, ptr %i.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret ptr %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes5irgen11ESTreeIRGen15genSequenceExprEPNS_6ESTree22SequenceExpressionNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 !guid !453 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.07.010 = load ptr, ptr %i.d, align 8, !tbaa !271 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.07.010, %i.c
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.e, %.lr.ph ]
  ret ptr %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.07.012 = phi ptr [ %.sroa.07.0, %.lr.ph ], [ %.sroa.07.010, %bb.a ] ; 2 uses
  %i.e = tail call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %.sroa.07.012, ptr null)
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.07.012, i64 8
  %.sroa.07.0 = load ptr, ptr %i.f, align 8, !tbaa !271 ; 2 uses
  %.not = icmp eq ptr %.sroa.07.0, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes5irgen11ESTreeIRGen22genTemplateLiteralExprEPNS_6ESTree19TemplateLiteralNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 !guid !455 {
bb.a:
  %2 = alloca %"class.llvh::SmallVector.196", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !288  ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !41
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !55
  %i.g = tail call noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload) #16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !271  ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !230
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  store i32 0, ptr %i.l, align 8, !tbaa !231
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  store i32 2, ptr %i.m, align 4, !tbaa !232
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.g
  %.sroa.022.033.in = phi ptr [ %i.n, %bb.b ], [ %i.ao, %bb.g ]
  %.sroa.025.032 = phi ptr [ %i.i, %bb.b ], [ %i.an, %bb.g ] ; 2 uses
  %.sroa.022.033 = load ptr, ptr %.sroa.022.033.in, align 8, !tbaa !271 ; 2 uses
  %i.o = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %.sroa.022.033, ptr null)
  %i.p = load i32, ptr %i.l, align 8, !tbaa !231  ; 2 uses
  %i.q = load i32, ptr %i.m, align 4, !tbaa !232
  %.not.i = icmp ult i32 %i.p, %i.q
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit, label %bb.d, !prof !224

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.k, i64 noundef 0, i64 noundef 8) #16
  %.pre.i = load i32, ptr %i.l, align 8, !tbaa !231
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit: ; preds = %bb.c, %bb.d
  %i.r = phi i32 [ %.pre.i, %bb.d ], [ %i.p, %bb.c ]
  %i.s = load ptr, ptr %2, align 8, !tbaa !230
  %i.t = zext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = ptrtoint ptr %i.o to i64
  store i64 %i.v, ptr %i.u, align 1
  %i.w = load i32, ptr %i.l, align 8, !tbaa !231
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr %i.l, align 8, !tbaa !231
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.025.032, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !288  ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !55 ; 2 uses
  %i.aa = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit
  %.sroa.017.0.copyload = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.ab = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr %.sroa.017.0.copyload, i64 %.sroa.4.0.copyload) #16
  %i.ac = load i32, ptr %i.l, align 8, !tbaa !231 ; 2 uses
  %i.ad = load i32, ptr %i.m, align 4, !tbaa !232
  %.not.i12 = icmp ult i32 %i.ac, %i.ad
  br i1 %.not.i12, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit14, label %bb.f, !prof !224

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.k, i64 noundef 0, i64 noundef 8) #16
  %.pre.i13 = load i32, ptr %i.l, align 8, !tbaa !231
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit14

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit14: ; preds = %bb.e, %bb.f
  %i.ae = phi i32 [ %.pre.i13, %bb.f ], [ %i.ac, %bb.e ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !230
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = ptrtoint ptr %i.ab to i64
  store i64 %i.ai, ptr %i.ah, align 1
  %i.aj = load i32, ptr %i.l, align 8, !tbaa !231
  %i.ak = add i32 %i.aj, 1                        ; 2 uses
  store i32 %i.ak, ptr %i.l, align 8, !tbaa !231
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit14, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit
  %i.al = phi i32 [ %i.ak, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit14 ], [ %i.x, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.025.032, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !271 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.022.033, i64 8
  %.not = icmp eq ptr %i.an, %i.a
  br i1 %.not, label %bb.h, label %bb.c, !llvm.loop !454

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %2, align 8, !tbaa !230
  %i.aq = zext i32 %i.al to i64
  %i.ar = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen21genHermesInternalCallEN4llvh9StringRefEPNS_5ValueENS2_8ArrayRefIS5_EE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nonnull @.str.33, i64 6, ptr noundef %i.g, ptr %i.ap, i64 %i.aq) #16
  %i.as = load ptr, ptr %2, align 8, !tbaa !230   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.k
  br i1 %i.at, label %_ZN4llvh11SmallVectorIPN6hermes5ValueELj2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.as) #16
  br label %_ZN4llvh11SmallVectorIPN6hermes5ValueELj2EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes5ValueELj2EED2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZN4llvh11SmallVectorIPN6hermes5ValueELj2EED2Ev.exit
  %.0 = phi ptr [ %i.ar, %_ZN4llvh11SmallVectorIPN6hermes5ValueELj2EED2Ev.exit ], [ %i.g, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes5irgen11ESTreeIRGen21genTaggedTemplateExprEPNS_6ESTree28TaggedTemplateExpressionNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 !guid !456 {
bb.a:
  %2 = alloca %"class.llvh::SmallVector.196", align 8 ; 18 uses
  %3 = alloca %"class.std::vector.280", align 8   ; 10 uses
  %4 = alloca %"class.llvh::SmallVector.196", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !458  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !230
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 19 uses
  store i32 0, ptr %i.d, align 8, !tbaa !231
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  store i32 2, ptr %i.e, align 4, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %.sroa.092.0100 = load ptr, ptr %i.g, align 8, !tbaa !271 ; 2 uses
  %.not95101 = icmp eq ptr %.sroa.092.0100, %i.f
  br i1 %.not95101, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN6hermes13LiteralStringESaIS2_EE9push_backEOS2_.exit, %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !289
  %i.l = call noundef i32 @_ZN6hermes6Module19getTemplateObjectIDEOSt6vectorIPNS_13LiteralStringESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(1033) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.n = uitofp i32 %i.l to double
  %i.o = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralNumberEd(ptr noundef nonnull align 8 dereferenceable(40) %i.m, double noundef %i.n) #16
  %i.p = load i32, ptr %i.d, align 8, !tbaa !231  ; 2 uses
  %i.q = load i32, ptr %i.e, align 4, !tbaa !232
  %.not.i = icmp ult i32 %i.p, %i.q
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit, label %bb.b, !prof !224

bb.b:                                             ; preds = %._crit_edge
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.c, i64 noundef 0, i64 noundef 8) #16
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !231
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit: ; preds = %._crit_edge, %bb.b
  %i.r = phi i32 [ %.pre.i, %bb.b ], [ %i.p, %._crit_edge ]
  %i.s = load ptr, ptr %2, align 8, !tbaa !230
  %i.t = zext i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = ptrtoint ptr %i.o to i64
  store i64 %i.v, ptr %i.u, align 1
  %i.w = load i32, ptr %i.d, align 8, !tbaa !231
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.d, align 8, !tbaa !231
  %i.y = call noundef ptr @_ZN6hermes9IRBuilder14getLiteralBoolEb(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i1 noundef zeroext true) #16
  %i.z = load i32, ptr %i.d, align 8, !tbaa !231  ; 2 uses
  %i.aa = load i32, ptr %i.e, align 4, !tbaa !232
  %.not.i48 = icmp ult i32 %i.z, %i.aa
  br i1 %.not.i48, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit50, label %bb.c, !prof !224

bb.c:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.c, i64 noundef 0, i64 noundef 8) #16
  %.pre.i49 = load i32, ptr %i.d, align 8, !tbaa !231
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit50

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit50: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit, %bb.c
  %i.ab = phi i32 [ %.pre.i49, %bb.c ], [ %i.z, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit ]
  %i.ac = load ptr, ptr %2, align 8, !tbaa !230
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = ptrtoint ptr %i.y to i64
  store i64 %i.af, ptr %i.ae, align 1
  %i.ag = load i32, ptr %i.d, align 8, !tbaa !231
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.d, align 8, !tbaa !231
  %.sroa.085.0103 = load ptr, ptr %i.g, align 8, !tbaa !271 ; 2 uses
  %.not96104 = icmp eq ptr %.sroa.085.0103, %i.f
  br i1 %.not96104, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit62.critedge, label %.lr.ph107

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN6hermes13LiteralStringESaIS2_EE9push_backEOS2_.exit
  %.sroa.092.0102.a = phi ptr [ %.sroa.092.0100, %.lr.ph ], [ %.sroa.092.0, %_ZNSt6vectorIPN6hermes13LiteralStringESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.092.0102.a, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !459 ; 2 uses
  %.sroa.028.0.copyload = load ptr, ptr %i.aj, align 8, !tbaa !41
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.229.0.copyload = load i64, ptr %.sroa.229.0..sroa_idx, align 8, !tbaa !55
  %i.ak = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr %.sroa.028.0.copyload, i64 %.sroa.229.0.copyload) #16 ; 2 uses
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !462 ; 4 uses
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !463
  %.not.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !464
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.an, ptr %i.i, align 8, !tbaa !462
  br label %_ZNSt6vectorIPN6hermes13LiteralStringESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %bb.d
  %5 = load ptr, ptr %3, align 8, !tbaa !465      ; 4 uses
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %5 to i64                  ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 5 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.g, label %_ZNKSt6vectorIPN6hermes13LiteralStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #18
  unreachable

_ZNKSt6vectorIPN6hermes13LiteralStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #19 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store ptr %i.ak, ptr %i.az, align 8, !tbaa !464
  %i.ba = icmp sgt i64 %i.aq, 0
  br i1 %i.ba, label %bb.h, label %_ZNSt6vectorIPN6hermes13LiteralStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN6hermes13LiteralStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %5, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIPN6hermes13LiteralStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN6hermes13LiteralStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN6hermes13LiteralStringESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.not.i17.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN6hermes13LiteralStringESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN6hermes13LiteralStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !463
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %i.be) #17
  br label %_ZNSt6vectorIPN6hermes13LiteralStringESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes13LiteralStringESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN6hermes13LiteralStringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ay, ptr %3, align 8, !tbaa !465
  store ptr %i.bb, ptr %i.i, align 8, !tbaa !462
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bf, ptr %i.j, align 8, !tbaa !463
  br label %_ZNSt6vectorIPN6hermes13LiteralStringESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN6hermes13LiteralStringESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.e, %_ZNSt6vectorIPN6hermes13LiteralStringESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.092.0102.a, i64 8
  %.sroa.092.0 = load ptr, ptr %i.bg, align 8, !tbaa !271 ; 2 uses
  %.not95 = icmp eq ptr %.sroa.092.0, %i.f
  br i1 %.not95, label %._crit_edge, label %bb.d

._crit_edge108:                                   ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit53
  %i.bh = call noundef ptr @_ZN6hermes9IRBuilder14getLiteralBoolEb(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i1 noundef zeroext %spec.select47) #16
  %i.bi = load ptr, ptr %2, align 8, !tbaa !230   ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !234
  br i1 %spec.select47, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit62, label %.preheader

.preheader:                                       ; preds = %._crit_edge108
  %.sroa.080.0109 = load ptr, ptr %i.g, align 8, !tbaa !271 ; 2 uses
  %.not97110 = icmp eq ptr %.sroa.080.0109, %i.f
  br i1 %.not97110, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit62, label %.lr.ph112

.lr.ph107:                                        ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit50, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit53
  %.sroa.085.0106 = phi ptr [ %.sroa.085.0, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit53 ], [ %.sroa.085.0103, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit50 ] ; 3 uses
  %.043105 = phi i1 [ %spec.select47, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit53 ], [ true, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit50 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.085.0106, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !288
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.085.0106, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !459 ; 3 uses
  %.not46 = icmp eq ptr %i.bl, %i.bn
  %spec.select47 = select i1 %.not46, i1 %.043105, i1 false ; 3 uses
  %.sroa.017.0.copyload = load ptr, ptr %i.bn, align 8, !tbaa !41
  %.sroa.218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.218.0.copyload = load i64, ptr %.sroa.218.0..sroa_idx, align 8, !tbaa !55
  %i.bo = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr %.sroa.017.0.copyload, i64 %.sroa.218.0.copyload) #16
  %i.bp = load i32, ptr %i.d, align 8, !tbaa !231 ; 2 uses
  %i.bq = load i32, ptr %i.e, align 4, !tbaa !232
  %.not.i51 = icmp ult i32 %i.bp, %i.bq
  br i1 %.not.i51, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit53, label %bb.j, !prof !224

bb.j:                                             ; preds = %.lr.ph107
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.c, i64 noundef 0, i64 noundef 8) #16
  %.pre.i52 = load i32, ptr %i.d, align 8, !tbaa !231
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit53

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit53: ; preds = %.lr.ph107, %bb.j
  %i.br = phi i32 [ %.pre.i52, %bb.j ], [ %i.bp, %.lr.ph107 ]
  %i.bs = load ptr, ptr %2, align 8, !tbaa !230
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = ptrtoint ptr %i.bo to i64
  store i64 %i.bv, ptr %i.bu, align 1
  %i.bw = load i32, ptr %i.d, align 8, !tbaa !231
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.d, align 8, !tbaa !231
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.085.0106, i64 8
  %.sroa.085.0 = load ptr, ptr %i.by, align 8, !tbaa !271 ; 2 uses
  %.not96 = icmp eq ptr %.sroa.085.0, %i.f
  br i1 %.not96, label %._crit_edge108, label %.lr.ph107

.lr.ph112:                                        ; preds = %.preheader, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit56
  %.sroa.080.0111 = phi ptr [ %.sroa.080.0, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit56 ], [ %.sroa.080.0109, %.preheader ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.080.0111, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !288 ; 3 uses
  %.not = icmp eq ptr %i.ca, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph112
  %.sroa.0.0.copyload = load ptr, ptr %i.ca, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !55
  %i.cb = call noundef ptr @_ZN6hermes9IRBuilder16getLiteralStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #16 ; 2 uses
  %i.cc = load i32, ptr %i.d, align 8, !tbaa !231 ; 2 uses
  %i.cd = load i32, ptr %i.e, align 4, !tbaa !232
  %.not.i54 = icmp ult i32 %i.cc, %i.cd
  br i1 %.not.i54, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit56, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit56.sink.split, !prof !224

bb.l:                                             ; preds = %.lr.ph112
  %i.ce = call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #16 ; 2 uses
  %i.cf = load i32, ptr %i.d, align 8, !tbaa !231 ; 2 uses
  %i.cg = load i32, ptr %i.e, align 4, !tbaa !232
  %.not.i57 = icmp ult i32 %i.cf, %i.cg
  br i1 %.not.i57, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit56, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit56.sink.split, !prof !224

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit56.sink.split: ; preds = %bb.l, %bb.k
  %.sink135.ph = phi ptr [ %i.cb, %bb.k ], [ %i.ce, %bb.l ]
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.c, i64 noundef 0, i64 noundef 8) #16
  %.pre.i58 = load i32, ptr %i.d, align 8, !tbaa !231
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit56

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit56: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit56.sink.split, %bb.l, %bb.k
  %.sink137 = phi i32 [ %i.cc, %bb.k ], [ %i.cf, %bb.l ], [ %.pre.i58, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit56.sink.split ]
  %.sink135 = phi ptr [ %i.cb, %bb.k ], [ %i.ce, %bb.l ], [ %.sink135.ph, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit56.sink.split ]
  %i.ch = load ptr, ptr %2, align 8, !tbaa !230
  %i.ci = zext i32 %.sink137 to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = ptrtoint ptr %.sink135 to i64
  store i64 %i.ck, ptr %i.cj, align 1
  %i.cl = load i32, ptr %i.d, align 8, !tbaa !231
  %storemerge = add i32 %i.cl, 1
  store i32 %storemerge, ptr %i.d, align 8, !tbaa !231
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.080.0111, i64 8
  %.sroa.080.0 = load ptr, ptr %i.cm, align 8, !tbaa !271 ; 2 uses
  %.not97 = icmp eq ptr %.sroa.080.0, %i.f
  br i1 %.not97, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit62.loopexit, label %.lr.ph112

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit62.critedge: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit50
  %i.cn = call noundef ptr @_ZN6hermes9IRBuilder14getLiteralBoolEb(ptr noundef nonnull align 8 dereferenceable(40) %i.m, i1 noundef zeroext true) #16
  %i.co = load ptr, ptr %2, align 8, !tbaa !230   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !234
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit62

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit62.loopexit: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit56
  %.pre = load ptr, ptr %2, align 8, !tbaa !230
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit62

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit62: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit62.loopexit, %.preheader, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit62.critedge, %._crit_edge108
  %i.cq = phi ptr [ %.pre, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit62.loopexit ], [ %i.bi, %.preheader ], [ %i.co, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit62.critedge ], [ %i.bi, %._crit_edge108 ]
  %i.cr = load i32, ptr %i.d, align 8, !tbaa !231
  %i.cs = zext i32 %i.cr to i64
  %i.ct = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen14genBuiltinCallENS_13BuiltinMethod4EnumEN4llvh8ArrayRefIPNS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 noundef zeroext 39, ptr %i.cq, i64 %i.cs) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.cu, ptr %4, align 8, !tbaa !230
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 2, ptr %i.cw, align 4, !tbaa !232
  %i.cx = ptrtoint ptr %i.ct to i64
  store i64 %i.cx, ptr %i.cu, align 8
  store i32 1, ptr %i.cv, align 8, !tbaa !231
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.071.0113 = load ptr, ptr %i.cz, align 8, !tbaa !271 ; 2 uses
  %.not98114 = icmp eq ptr %.sroa.071.0113, %i.cy
  br i1 %.not98114, label %._crit_edge117, label %.lr.ph116

._crit_edge117:                                   ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit65, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit62
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !466 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !50
  %i.de = icmp ne i32 %i.dd, 58
  %.not4599 = icmp eq ptr %i.db, null
  %.not45 = or i1 %.not4599, %i.de
  br i1 %.not45, label %bb.o, label %bb.n

.lr.ph116:                                        ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit62, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit65
  %.sroa.071.0115 = phi ptr [ %.sroa.071.0, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit65 ], [ %.sroa.071.0113, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit62 ] ; 2 uses
  %i.df = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %.sroa.071.0115, ptr null)
  %i.dg = load i32, ptr %i.cv, align 8, !tbaa !231 ; 2 uses
  %i.dh = load i32, ptr %i.cw, align 4, !tbaa !232
  %.not.i63 = icmp ult i32 %i.dg, %i.dh
  br i1 %.not.i63, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit65, label %bb.m, !prof !224

bb.m:                                             ; preds = %.lr.ph116
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.cu, i64 noundef 0, i64 noundef 8) #16
  %.pre.i64 = load i32, ptr %i.cv, align 8, !tbaa !231
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit65

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes5ValueELb1EE9push_backERKS3_.exit65: ; preds = %.lr.ph116, %bb.m
  %i.di = phi i32 [ %.pre.i64, %bb.m ], [ %i.dg, %.lr.ph116 ]
  %i.dj = load ptr, ptr %4, align 8, !tbaa !230
  %i.dk = zext i32 %i.di to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = ptrtoint ptr %i.df to i64
  store i64 %i.dm, ptr %i.dl, align 1
  %i.dn = load i32, ptr %i.cv, align 8, !tbaa !231
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %i.cv, align 8, !tbaa !231
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.071.0115, i64 8
  %.sroa.071.0 = load ptr, ptr %i.dp, align 8, !tbaa !271 ; 2 uses
  %.not98 = icmp eq ptr %.sroa.071.0, %i.cy
  br i1 %.not98, label %._crit_edge117, label %.lr.ph116

bb.n:                                             ; preds = %._crit_edge117
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !259
  %i.ds = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.dr, ptr null) ; 2 uses
  %i.dt = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen27genMemberExpressionPropertyEPNS_6ESTree24MemberExpressionLikeNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.db) #16
  %i.du = call noundef ptr @_ZN6hermes9IRBuilder22createLoadPropertyInstEPNS_5ValueES2_(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef %i.ds, ptr noundef %i.dt) #16 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %spec.select = select i1 %i.dv, ptr null, ptr %i.dw
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge117
  %i.dx = call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #16
  %i.dy = load ptr, ptr %i.da, align 8, !tbaa !466
  %i.dz = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen13genExpressionEPNS_6ESTree4NodeENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.dy, ptr null)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.042 = phi ptr [ %spec.select, %bb.n ], [ %i.dz, %bb.o ]
  %.0 = phi ptr [ %i.ds, %bb.n ], [ %i.dx, %bb.o ]
  %i.ea = load ptr, ptr %4, align 8, !tbaa !230
  %i.eb = load i32, ptr %i.cv, align 8, !tbaa !231
  %i.ec = zext i32 %i.eb to i64
  %i.ed = call noundef ptr @_ZN6hermes9IRBuilder14createCallInstEPNS_13LiteralStringEPNS_5ValueES4_N4llvh8ArrayRefIS4_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef null, ptr noundef %.042, ptr noundef %.0, ptr %i.ea, i64 %i.ec) #16 ; 2 uses
  %i.ee = load ptr, ptr %4, align 8, !tbaa !230   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.cu
  br i1 %i.ef, label %_ZN4llvh11SmallVectorIPN6hermes5ValueELj2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.ee) #16
  br label %_ZN4llvh11SmallVectorIPN6hermes5ValueELj2EED2Ev.exit
end_hunk_0
