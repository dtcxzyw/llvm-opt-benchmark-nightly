inline.NumInlined: 1026
inline.NumDeleted: 528
begin_hunk_0_@_ZN6hermes5irgen11ESTreeIRGen20genGeneratorFunctionENS_10IdentifierEPNS_8VariableEPNS_6ESTree16FunctionLikeNodeE:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !234, !nonnull !144, !align !147
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !71
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.l, align 1, !tbaa !235
  store ptr @.str.4, ptr %4, align 8, !tbaa !238
  store i8 3, ptr %i.k, align 8, !tbaa !239
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.i, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %4, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !123  ; 5 uses
  %i.o = call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #16 ; 20 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i16 1023, ptr %i.p, align 2, !tbaa !240
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i16 7, ptr %i.q, align 2, !tbaa !241
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.s, ptr %i.r, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 0, ptr %i.t, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  store i32 2, ptr %i.u, align 4, !tbaa !74
  store i8 120, ptr %i.o, align 8, !tbaa !242
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr %i.n, ptr %i.v, align 8, !tbaa !243
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store ptr %i.x, ptr %i.w, align 8, !tbaa !72
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i32 0, ptr %i.y, align 8, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  store i32 8, ptr %i.z, align 4, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !72
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  store i32 0, ptr %i.ad, align 8, !tbaa !73
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 164
  store i32 8, ptr %i.ae, align 4, !tbaa !74
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  store i8 0, ptr %i.af, align 8, !tbaa !255
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !73 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !74
  %.not.i.i.i = icmp ult i32 %i.ai, %i.ak
  br i1 %.not.i.i.i, label %_ZN6hermes5irgen11ESTreeIRGen12newScopeDescEv.exit, label %bb.d, !prof !256

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull %i.al, i64 noundef 0, i64 noundef 8) #15
  %.pre.i.i.i = load i32, ptr %i.ah, align 8, !tbaa !73
  br label %_ZN6hermes5irgen11ESTreeIRGen12newScopeDescEv.exit

_ZN6hermes5irgen11ESTreeIRGen12newScopeDescEv.exit: ; preds = %bb.c, %bb.d
  %i.am = phi i32 [ %.pre.i.i.i, %bb.d ], [ %i.ai, %bb.c ] ; 2 uses
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !72
  %i.ao = zext i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  store ptr %i.o, ptr %i.ap, align 8, !tbaa !257
  %i.aq = add i32 %i.am, 1
  store i32 %i.aq, ptr %i.ah, align 8, !tbaa !73
  %i.ar = call ptr @_ZN6hermes5irgen11ESTreeIRGen32genAnonymousFunctionNameIfNeededENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %1)
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.au = load i32, ptr %i.at, align 8, !tbaa !258
  %i.av = icmp eq i32 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !259
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.az = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !71
  store <2 x ptr> %i.az, ptr %5, align 16
  %i.ba = call noundef ptr @_ZN6hermes9IRBuilder23createGeneratorFunctionEPNS_9ScopeDescENS_10IdentifierENS_8Function14DefinitionKindEbNS_16SourceVisibilityEN4llvh7SMRangeEPS4_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull %i.o, ptr %i.ar, i32 noundef 0, i1 noundef zeroext %i.av, i32 noundef %i.ax, ptr noundef nonnull byval(%"class.llvh::SMRange") align 8 %5, ptr noundef null) #15 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 296
  store ptr %2, ptr %i.bb, align 8, !tbaa !260
  %i.bc = call noundef ptr @_ZN6hermes6ESTree17getBlockStatementEPNS0_16FunctionLikeNodeE(ptr noundef nonnull %3) #15 ; 3 uses
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes5irgen11ESTreeIRGen12newScopeDescEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 52
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !261, !range !143, !noundef !144
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.e
  call void @_ZN6hermes5irgen11ESTreeIRGen14setupLazyScopeEPNS_6ESTree16FunctionLikeNodeEPNS_8FunctionEPNS2_18BlockStatementNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %3, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bc)
  br label %bb.n

bb.f:                                             ; preds = %bb.e, %_ZN6hermes5irgen11ESTreeIRGen12newScopeDescEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.bg = load ptr, ptr %i.as, align 8, !tbaa !263
  call void @_ZN6hermes5irgen15FunctionContextC2EPNS0_11ESTreeIRGenEPNS_8FunctionEPNS_3sem12FunctionInfoE(ptr noundef nonnull align 8 dereferenceable(480) %6, ptr noundef nonnull %0, ptr noundef nonnull %i.ba, ptr noundef %i.bg)
  %.not44 = icmp eq ptr %1, null
  br i1 %.not44, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.040.0.copyload = load ptr, ptr %1, align 8, !tbaa !71
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.341.0.copyload = load i64, ptr %.sroa.341.0..sroa_idx, align 8, !tbaa !264
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.040.0 = phi ptr [ %.sroa.040.0.copyload, %bb.g ], [ @.str.5, %bb.f ]
  %.sroa.341.0 = phi i64 [ %.sroa.341.0.copyload, %bb.g ], [ 0, %bb.f ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 152
  %i.bk = call ptr @_ZN6hermes23InternalIdentifierMaker4nextEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr %.sroa.040.0, i64 %.sroa.341.0) #15
  %i.bl = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen14genES5FunctionENS_10IdentifierEPNS_8VariableEPNS_6ESTree16FunctionLikeNodeEb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %i.bk, ptr noundef null, ptr noundef nonnull %3, i1 noundef zeroext true)
  %i.bm = call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull %i.ba) #15
  call void @_ZN6hermes5irgen11ESTreeIRGen20emitFunctionPreambleEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.bm)
  call void @_ZN6hermes5irgen11ESTreeIRGen29initCaptureStateInES5FunctionEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  %i.bn = call noundef ptr @_ZN6hermes6ESTree17getBlockStatementEPNS0_16FunctionLikeNodeE(ptr noundef nonnull %3) #15
  call void @_ZN6hermes5irgen11ESTreeIRGen24emitTopLevelDeclarationsEPNS_6ESTree16FunctionLikeNodeEPNS2_4NodeENS1_16DoEmitParametersE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %3, ptr noundef %i.bn, i32 noundef 0)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !124
  %i.bq = call noundef ptr @_ZN6hermes9IRBuilder25createCreateGeneratorInstEPNS_8FunctionEPNS_17ScopeCreationInstE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.bl, ptr noundef %i.bp) #15 ; 4 uses
  %i.br = call noundef zeroext i1 @_ZN6hermes6ESTree15hasSimpleParamsEPNS0_16FunctionLikeNodeE(ptr noundef nonnull %3) #15
  br i1 %i.br, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = icmp eq ptr %i.bq, null
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %spec.select = select i1 %i.bs, ptr null, ptr %i.bt ; 2 uses
  %i.bu = call noundef ptr @_ZN6hermes9IRBuilder22createLoadPropertyInstEPNS_5ValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %spec.select, ptr nonnull @.str.6, i64 4) #15 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bx = select i1 %i.bv, ptr null, ptr %i.bw
  %i.by = call noundef ptr @_ZN6hermes9IRBuilder14createCallInstEPNS_13LiteralStringEPNS_5ValueES4_N4llvh8ArrayRefIS4_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef null, ptr noundef %i.bx, ptr noundef %spec.select, ptr null, i64 0) #15 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bz = icmp eq ptr %i.bq, null
  br i1 %i.bz, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !268
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !269 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 192
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cf, align 8, !tbaa !71
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 200
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !71
  %i.cg = call ptr @_ZN6hermes18SourceErrorManager20convertEndToLocationEN4llvh7SMRangeE(ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i) #15
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !71
  %i.ci = call noundef ptr @_ZN6hermes9IRBuilder16createReturnInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull %i.ca) #15 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cj = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 168
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !266
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = call noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cm) #15
  br i1 %i.cn, label %_ZN6hermes5irgen11ESTreeIRGen20emitFunctionEpilogueEPNS_5ValueE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 168
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !266
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.cq) #15
  br label %_ZN6hermes5irgen11ESTreeIRGen20emitFunctionEpilogueEPNS_5ValueE.exit

_ZN6hermes5irgen11ESTreeIRGen20emitFunctionEpilogueEPNS_5ValueE.exit: ; preds = %bb.l, %bb.m
  %i.cr = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 112
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !75 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 236
  store i32 0, ptr %i.cu, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 240
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !278
  call void @_ZN6hermes5irgen15FunctionContextD2Ev(ptr noundef nonnull align 8 dead_on_return(480) dereferenceable(480) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %_ZN6hermes5irgen11ESTreeIRGen20emitFunctionEpilogueEPNS_5ValueE.exit
  ret ptr %i.ba
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes5irgen11ESTreeIRGen14genES5FunctionENS_10IdentifierEPNS_8VariableEPNS_6ESTree16FunctionLikeNodeEb(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvh::SMRange", align 16    ; 2 uses
  %6 = alloca %"class.llvh::SMRange", align 16    ; 2 uses
  %7 = alloca %"class.hermes::irgen::FunctionContext", align 8 ; 4 uses
  %i.a = tail call noundef ptr @_ZN6hermes6ESTree17getBlockStatementEPNS0_16FunctionLikeNodeE(ptr noundef %3) #15 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123  ; 6 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #16 ; 22 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 1023, ptr %i.f, align 2, !tbaa !240
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i16 7, ptr %i.g, align 2, !tbaa !241
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.i, ptr %i.h, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !73
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 2, ptr %i.k, align 4, !tbaa !74
  store i8 120, ptr %i.e, align 8, !tbaa !242
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.d, ptr %i.l, align 8, !tbaa !243
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.n, ptr %i.m, align 8, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i32 0, ptr %i.o, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 8, ptr %i.p, align 4, !tbaa !74
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  store ptr %i.s, ptr %i.r, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store i32 0, ptr %i.t, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 164
  store i32 8, ptr %i.u, align 4, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  store i8 0, ptr %i.v, align 8, !tbaa !255
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 5 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !73   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !74
  %.not.i.i.i = icmp ult i32 %i.y, %i.aa          ; 2 uses
  br i1 %4, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %_ZN6hermes5irgen11ESTreeIRGen12newScopeDescEv.exit, label %bb.c, !prof !256

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.ab, i64 noundef 0, i64 noundef 8) #15
  %.pre.i.i.i = load i32, ptr %i.x, align 8, !tbaa !73
  br label %_ZN6hermes5irgen11ESTreeIRGen12newScopeDescEv.exit

_ZN6hermes5irgen11ESTreeIRGen12newScopeDescEv.exit: ; preds = %bb.b, %bb.c
  %i.ac = phi i32 [ %.pre.i.i.i, %bb.c ], [ %i.y, %bb.b ] ; 2 uses
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.ae = zext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae
  store ptr %i.e, ptr %i.af, align 8, !tbaa !257
  %i.ag = add i32 %i.ac, 1
  store i32 %i.ag, ptr %i.x, align 8, !tbaa !73
  %i.ah = tail call ptr @_ZN6hermes5irgen11ESTreeIRGen32genAnonymousFunctionNameIfNeededENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %1)
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !258
  %i.ak = icmp eq i32 %i.aj, 2
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !71
  store <2 x ptr> %i.am, ptr %5, align 16
  %i.an = tail call noundef ptr @_ZN6hermes9IRBuilder28createGeneratorInnerFunctionEPNS_9ScopeDescENS_10IdentifierENS_8Function14DefinitionKindEbN4llvh7SMRangeEPS4_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %i.e, ptr %i.ah, i32 noundef 0, i1 noundef zeroext %i.ak, ptr noundef nonnull byval(%"class.llvh::SMRange") align 8 %5, ptr noundef null) #15
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %_ZN6hermes5irgen11ESTreeIRGen12newScopeDescEv.exit53, label %bb.e, !prof !256

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.ao, i64 noundef 0, i64 noundef 8) #15
  %.pre.i.i.i52 = load i32, ptr %i.x, align 8, !tbaa !73
  br label %_ZN6hermes5irgen11ESTreeIRGen12newScopeDescEv.exit53

_ZN6hermes5irgen11ESTreeIRGen12newScopeDescEv.exit53: ; preds = %bb.d, %bb.e
  %i.ap = phi i32 [ %.pre.i.i.i52, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  store ptr %i.e, ptr %i.as, align 8, !tbaa !257
  %i.at = add i32 %i.ap, 1
  store i32 %i.at, ptr %i.x, align 8, !tbaa !73
  %i.au = tail call ptr @_ZN6hermes5irgen11ESTreeIRGen32genAnonymousFunctionNameIfNeededENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr %1)
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !258
  %i.ax = icmp eq i32 %i.aw, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !259
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bb = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !71
  store <2 x ptr> %i.bb, ptr %6, align 16
  %i.bc = tail call noundef ptr @_ZN6hermes9IRBuilder14createFunctionEPNS_9ScopeDescENS_10IdentifierENS_8Function14DefinitionKindEbNS_16SourceVisibilityEN4llvh7SMRangeEbPS4_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %i.e, ptr %i.au, i32 noundef 0, i1 noundef zeroext %i.ax, i32 noundef %i.az, ptr noundef nonnull byval(%"class.llvh::SMRange") align 8 %6, i1 noundef zeroext false, ptr noundef null) #15
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes5irgen11ESTreeIRGen12newScopeDescEv.exit53, %_ZN6hermes5irgen11ESTreeIRGen12newScopeDescEv.exit
  %i.bd = phi ptr [ %i.an, %_ZN6hermes5irgen11ESTreeIRGen12newScopeDescEv.exit ], [ %i.bc, %_ZN6hermes5irgen11ESTreeIRGen12newScopeDescEv.exit53 ] ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 296
  store ptr %2, ptr %i.be, align 8, !tbaa !260
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !261, !range !143, !noundef !144
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.g
  tail call void @_ZN6hermes5irgen11ESTreeIRGen14setupLazyScopeEPNS_6ESTree16FunctionLikeNodeEPNS_8FunctionEPNS2_18BlockStatementNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %3, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.a)
  br label %bb.q

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !263
  call void @_ZN6hermes5irgen15FunctionContextC2EPNS0_11ESTreeIRGenEPNS_8FunctionEPNS_3sem12FunctionInfoE(ptr noundef nonnull align 8 dereferenceable(480) %7, ptr noundef nonnull %0, ptr noundef nonnull %i.bd, ptr noundef %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.bl = call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull %i.bd) #15 ; 2 uses
  br i1 %4, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef %i.bl) #15
  %i.bm = call noundef ptr @_ZN6hermes9IRBuilder24createStartGeneratorInstEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bk) #15 ; 0 uses
  %i.bn = call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull %i.bd) #15 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !47
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 152
  %i.br = call ptr @_ZN6hermes23InternalIdentifierMaker4nextEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr nonnull @.str.2, i64 17) #15
  %i.bs = call noundef ptr @_ZN6hermes9IRBuilder20createAllocStackInstENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr %i.br) #15
  %i.bt = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen18genResumeGeneratorENS1_10GenFinallyEPNS_14AllocStackInstEPNS_10BasicBlockES4_(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 0, ptr noundef %i.bs, ptr noundef %i.bn, ptr noundef null) #15 ; 0 uses
  %i.bu = call noundef zeroext i1 @_ZN6hermes6ESTree15hasSimpleParamsEPNS0_16FunctionLikeNodeE(ptr noundef nonnull %3) #15
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef %i.bn) #15
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bv = call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull %i.bd) #15 ; 2 uses
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !47
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 152
  %i.by = call ptr @_ZN6hermes23InternalIdentifierMaker4nextEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr nonnull @.str.3, i64 14) #15
  %i.bz = call noundef ptr @_ZN6hermes9IRBuilder20createAllocStackInstENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr %i.by) #15
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef %i.bn) #15
  call void @_ZN6hermes5irgen11ESTreeIRGen20emitFunctionPreambleEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.bn)
  call void @_ZN6hermes5irgen11ESTreeIRGen29initCaptureStateInES5FunctionEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  call void @_ZN6hermes5irgen11ESTreeIRGen24emitTopLevelDeclarationsEPNS_6ESTree16FunctionLikeNodeEPNS2_4NodeENS1_16DoEmitParametersE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %3, ptr noundef %i.a, i32 noundef 2)
  %i.ca = call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bk) #15
  %i.cb = call noundef ptr @_ZN6hermes9IRBuilder22createSaveAndYieldInstEPNS_5ValueEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef %i.ca, ptr noundef %i.bv) #15 ; 0 uses
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef %i.bv) #15
  %i.cc = call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull %i.bd) #15
  %i.cd = call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen18genResumeGeneratorENS1_10GenFinallyEPNS_14AllocStackInstEPNS_10BasicBlockES4_(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 0, ptr noundef %i.bz, ptr noundef %i.cc, ptr noundef null) #15 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.j
  %.sink = phi ptr [ %i.bn, %bb.j ], [ %i.bl, %bb.h ]
  call void @_ZN6hermes5irgen11ESTreeIRGen20emitFunctionPreambleEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %.sink)
  call void @_ZN6hermes5irgen11ESTreeIRGen29initCaptureStateInES5FunctionEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  call void @_ZN6hermes5irgen11ESTreeIRGen24emitTopLevelDeclarationsEPNS_6ESTree16FunctionLikeNodeEPNS2_4NodeENS1_16DoEmitParametersE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %3, ptr noundef %i.a, i32 noundef 2)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @_ZN6hermes5irgen11ESTreeIRGen15genFunctionBodyEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.a) #15
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cf = call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ce) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.cf, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !268
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !269 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 192
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ck, align 8, !tbaa !71
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 200
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !71
  %i.cl = call ptr @_ZN6hermes18SourceErrorManager20convertEndToLocationEN4llvh7SMRangeE(ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i) #15
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !71
  %i.cn = call noundef ptr @_ZN6hermes9IRBuilder16createReturnInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %i.ce, ptr noundef nonnull %i.cf) #15 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !47
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 168
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !266
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = call noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cs) #15
  br i1 %i.ct, label %_ZN6hermes5irgen11ESTreeIRGen20emitFunctionEpilogueEPNS_5ValueE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !47
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 168
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !266
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.cw) #15
  br label %_ZN6hermes5irgen11ESTreeIRGen20emitFunctionEpilogueEPNS_5ValueE.exit

_ZN6hermes5irgen11ESTreeIRGen20emitFunctionEpilogueEPNS_5ValueE.exit: ; preds = %bb.o, %bb.p
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !47
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 112
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !75 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 236
  store i32 0, ptr %i.da, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 240
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !278
  call void @_ZN6hermes5irgen15FunctionContextD2Ev(ptr noundef nonnull align 8 dead_on_return(480) dereferenceable(480) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %_ZN6hermes5irgen11ESTreeIRGen20emitFunctionEpilogueEPNS_5ValueE.exit
  %.1 = phi ptr [ %i.cz, %_ZN6hermes5irgen11ESTreeIRGen20emitFunctionEpilogueEPNS_5ValueE.exit ], [ %i.bd, %.critedge ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes5irgen11ESTreeIRGen18emitCreateFunctionEPNS_6ESTree23FunctionDeclarationNodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !279  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = load i32, ptr %i.g, align 8, !tbaa !280  ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes6ESTree23FunctionDeclarationNodeESt4pairIPNS2_8FunctionENS2_5irgen11ESTreeIRGen14AlreadyEmittedEENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SC_EEEES5_SC_SE_SH_E15LookupBucketForIPKS4_EEbRKT_RPSH_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %1 to i64
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = lshr i32 %i.k, 4
  %i.m = lshr i32 %i.k, 9
  %i.n = xor i32 %i.l, %i.m
  %i.o = add i32 %i.h, -1                         ; 2 uses
  %.02944.i.i.i = and i32 %i.o, %i.n              ; 2 uses
  %i.p = zext nneg i32 %.02944.i.i.i to i64
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !149  ; 2 uses
  %i.s = icmp eq ptr %1, %i.r
  br i1 %i.s, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes6ESTree23FunctionDeclarationNodeESt4pairIPNS2_8FunctionENS2_5irgen11ESTreeIRGen14AlreadyEmittedEENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SC_EEEES5_SC_SE_SH_E4findEPKS4_.exit, label %.lr.ph.i.i.i, !prof !281

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.t = phi ptr [ %i.z, %bb.c ], [ %i.r, %bb.b ]
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.c ], [ %.02944.i.i.i, %bb.b ]
  %.02746.i.i.i = phi i32 [ %i.v, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.u = icmp eq ptr %i.t, inttoptr (i64 -8 to ptr)
  br i1 %i.u, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes6ESTree23FunctionDeclarationNodeESt4pairIPNS2_8FunctionENS2_5irgen11ESTreeIRGen14AlreadyEmittedEENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SC_EEEES5_SC_SE_SH_E15LookupBucketForIPKS4_EEbRKT_RPSH_.exit.i, label %bb.c, !prof !256

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = add i32 %.02746.i.i.i, 1
  %i.w = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.w, %i.o                ; 2 uses
  %i.x = zext i32 %.029.i.i.i to i64
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !149  ; 2 uses
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes6ESTree23FunctionDeclarationNodeESt4pairIPNS2_8FunctionENS2_5irgen11ESTreeIRGen14AlreadyEmittedEENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SC_EEEES5_SC_SE_SH_E4findEPKS4_.exit, label %.lr.ph.i.i.i, !prof !282, !llvm.loop !283

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes6ESTree23FunctionDeclarationNodeESt4pairIPNS2_8FunctionENS2_5irgen11ESTreeIRGen14AlreadyEmittedEENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SC_EEEES5_SC_SE_SH_E15LookupBucketForIPKS4_EEbRKT_RPSH_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.ab = zext i32 %i.h to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.ab
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes6ESTree23FunctionDeclarationNodeESt4pairIPNS2_8FunctionENS2_5irgen11ESTreeIRGen14AlreadyEmittedEENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SC_EEEES5_SC_SE_SH_E4findEPKS4_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes6ESTree23FunctionDeclarationNodeESt4pairIPNS2_8FunctionENS2_5irgen11ESTreeIRGen14AlreadyEmittedEENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SC_EEEES5_SC_SE_SH_E4findEPKS4_.exit: ; preds = %bb.c, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes6ESTree23FunctionDeclarationNodeESt4pairIPNS2_8FunctionENS2_5irgen11ESTreeIRGen14AlreadyEmittedEENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SC_EEEES5_SC_SE_SH_E15LookupBucketForIPKS4_EEbRKT_RPSH_.exit.i
  %.sink.i.i.ph.pn.i = phi ptr [ %i.ac, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes6ESTree23FunctionDeclarationNodeESt4pairIPNS2_8FunctionENS2_5irgen11ESTreeIRGen14AlreadyEmittedEENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SC_EEEES5_SC_SE_SH_E15LookupBucketForIPKS4_EEbRKT_RPSH_.exit.i ], [ %i.q, %bb.b ], [ %i.y, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i, i64 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !285
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes6ESTree23FunctionDeclarationNodeESt4pairIPNS2_8FunctionENS2_5irgen11ESTreeIRGen14AlreadyEmittedEENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SC_EEEES5_SC_SE_SH_E4findEPKS4_.exit
  store i32 1, ptr %i.ad, align 8, !tbaa !285
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !287 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !288 ; 4 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPKSD_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = ptrtoint ptr %i.d to i64
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  %i.an = lshr i32 %i.am, 4
  %i.ao = lshr i32 %i.am, 9
  %i.ap = xor i32 %i.an, %i.ao
  %i.aq = add i32 %i.aj, -1                       ; 2 uses
  %.03649.i.i.i = and i32 %i.aq, %i.ap            ; 2 uses
  %i.ar = zext nneg i32 %.03649.i.i.i to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ar ; 2 uses
  %.sroa.05.0.copyload50.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !289 ; 2 uses
  %i.at = icmp eq ptr %i.d, %.sroa.05.0.copyload50.i.i.i
  br i1 %i.at, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i, label %.lr.ph.i.i.i5, !prof !281

.lr.ph.i.i.i5:                                    ; preds = %bb.e, %bb.f
  %.sroa.05.0.copyload54.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i, %bb.f ], [ %.sroa.05.0.copyload50.i.i.i, %bb.e ]
  %.03653.i.i.i = phi i32 [ %.036.i.i.i, %bb.f ], [ %.03649.i.i.i, %bb.e ]
  %.03851.i.i.i = phi i32 [ %i.av, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.au = icmp eq ptr %.sroa.05.0.copyload54.i.i.i, inttoptr (i64 -8 to ptr)
  br i1 %i.au, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPKSD_.exit.i.i, label %bb.f, !prof !256

bb.f:                                             ; preds = %.lr.ph.i.i.i5
  %i.av = add i32 %.03851.i.i.i, 1
  %i.aw = add i32 %.03851.i.i.i, %.03653.i.i.i
  %.036.i.i.i = and i32 %i.aw, %i.aq              ; 2 uses
  %i.ax = zext i32 %.036.i.i.i to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ax ; 2 uses
  %.sroa.05.0.copyload.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !289 ; 2 uses
  %i.az = icmp eq ptr %i.d, %.sroa.05.0.copyload.i.i.i
  br i1 %i.az, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i, label %.lr.ph.i.i.i5, !prof !282, !llvm.loop !290

_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPKSD_.exit.i.i: ; preds = %.lr.ph.i.i.i5, %bb.d
  %i.ba = zext i32 %i.aj to i64
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ba
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i: ; preds = %bb.f, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPKSD_.exit.i.i, %bb.e
  %.sink.i.ph.pn.i.i = phi ptr [ %i.bb, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPKSD_.exit.i.i ], [ %i.as, %bb.e ], [ %i.ay, %bb.f ] ; 2 uses
  %i.bc = zext i32 %i.aj to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.bc
  %i.be = icmp eq ptr %.sink.i.ph.pn.i.i, %i.bd
  br i1 %i.be, label %_ZNK6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEE6lookupERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !291
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !293
  br label %_ZNK6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEE6lookupERKS1_.exit

_ZNK6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEE6lookupERKS1_.exit: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i, %bb.g
  %.0.i = phi ptr [ %i.bi, %bb.g ], [ null, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes10IdentifierEPNS2_19ScopedHashTableNodeIS3_PNS2_5ValueEEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4findERKS3_.exit.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !295
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !124
  %i.bo = tail call noundef ptr @_ZN6hermes9IRBuilder24createCreateFunctionInstEPNS_8FunctionEPNS_17ScopeCreationInstE(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef %i.bl, ptr noundef %i.bn) #15 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %spec.select = select i1 %i.bp, ptr null, ptr %i.bq
  %i.br = tail call noundef ptr @_ZN6hermes5irgen11ESTreeIRGen9emitStoreEPNS_5ValueES3_b(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %spec.select, ptr noundef %.0.i, i1 noundef zeroext true) #15 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes6ESTree23FunctionDeclarationNodeESt4pairIPNS2_8FunctionENS2_5irgen11ESTreeIRGen14AlreadyEmittedEENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SC_EEEES5_SC_SE_SH_E4findEPKS4_.exit, %_ZNK6hermes15ScopedHashTableINS_10IdentifierEPNS_5ValueEE6lookupERKS1_.exit
  ret void
}

declare noundef ptr @_ZN6hermes9IRBuilder24createCreateFunctionInstEPNS_8FunctionEPNS_17ScopeCreationInstE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6hermes5irgen11ESTreeIRGen9emitStoreEPNS_5ValueES3_b(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes5irgen11ESTreeIRGen20hoistCreateFunctionsEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 248
end_hunk_0
