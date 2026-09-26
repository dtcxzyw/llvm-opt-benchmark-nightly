Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprEngineCXX?download=true
inline.NumInlined: 2904
inline.NumDeleted: 1635
begin_hunk_0_@_ZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetE:bb.a
  %i.dn = load atomic i8, ptr @_ZGVZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE1T acquire, align 8
  %i.do = icmp eq i8 %i.dn, 0
  br i1 %i.do, label %bb.w, label %bb.y, !prof !489

bb.w:                                             ; preds = %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit220
  %i.dp = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE1T) #15
  %.not177 = icmp eq i32 %i.dp, 0
  br i1 %.not177, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN5clang21SimpleProgramPointTagC1EN4llvm9StringRefES2_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE1T, ptr nonnull @.str, i64 10, ptr nonnull @.str.1, i64 34) #15
  %i.dq = call i32 @__cxa_atexit(ptr nonnull @_ZN5clang21SimpleProgramPointTagD2Ev, ptr nonnull @_ZZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE1T, ptr nonnull @__dso_handle) #15 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE1T) #15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit220
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i226.critedge, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit222

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit222: ; preds = %bb.y
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.m) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %.sroa.3.0.copyload.i.i224 = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !182
  %i.dr = and i64 %.sroa.3.0.copyload.i.i224, -8
  %i.ds = inttoptr i64 %i.dr to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %14, ptr noundef nonnull %1, i32 noundef 6, ptr noundef %i.ds, ptr noundef nonnull @_ZZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE1T) #15
  store ptr %i.m, ptr %15, align 8, !tbaa !181
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.m) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i226

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i226.critedge: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %.sroa.3.0.copyload.i.i224.c = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !182
  %i.dt = and i64 %.sroa.3.0.copyload.i.i224.c, -8
  %i.du = inttoptr i64 %i.dt to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %14, ptr noundef nonnull %1, i32 noundef 6, ptr noundef %i.du, ptr noundef nonnull @_ZZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE1T) #15
  store ptr null, ptr %15, align 8, !tbaa !181
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i226

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i226: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i226.critedge, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit222
  %i.dv = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(48) %14, ptr nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %2, i1 noundef zeroext false) #15 ; 0 uses
  %i.dw = load ptr, ptr %15, align 8, !tbaa !181  ; 2 uses
  %.not.i.i6.i227 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i6.i227, label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit228, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i226
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.dw) #15
  br label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit228

_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit228: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i226, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br i1 %.not.i.i, label %bb.as, label %bb.aa

bb.aa:                                            ; preds = %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit228
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.m) #15
  br label %bb.as

"_ZZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEENK3$_0clEv.exit.thread": ; preds = %bb.s, %"_ZZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEENK3$_0clEv.exit"
  store ptr %i.m, ptr %29, align 8, !tbaa !181
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit232, label %bb.ab

bb.ab:                                            ; preds = %"_ZZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEENK3$_0clEv.exit.thread"
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.m) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit232

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit232: ; preds = %"_ZZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEENK3$_0clEv.exit.thread", %bb.ab
  %i.dx = call i64 @_ZN5clang4ento10ExprEngine28getIndexOfElementToConstructEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_16CXXConstructExprEPKNS_10StackFrameE(ptr nofree noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %1, ptr noundef %i.k) #15 ; 2 uses
  %.sroa.0419.0.extract.trunc = trunc i64 %i.dx to i32
  %i.dy = and i64 %i.dx, 4294967296
  %.not546 = icmp eq i64 %i.dy, 0
  %.0.i233 = select i1 %.not546, i32 0, i32 %.sroa.0419.0.extract.trunc ; 4 uses
  %i.dz = load ptr, ptr %29, align 8, !tbaa !181  ; 2 uses
  %.not.i.i234 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i234, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit235, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit232
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.dz) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit235

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit235: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit232, %bb.ac
  store ptr %i.m, ptr %31, align 8, !tbaa !181
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit237, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit235
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.m) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit237

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit237: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit235, %bb.ad
  %i.ea = add i32 %.0.i233, 1
  call void @_ZN5clang4ento10ExprEngine28setIndexOfElementToConstructEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_16CXXConstructExprEPKNS_10StackFrameEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %30, ptr nofree noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %1, ptr noundef %i.k, i32 noundef %i.ea) #15
  %i.eb = load ptr, ptr %30, align 8, !tbaa !181  ; 9 uses
  store ptr %i.m, ptr %30, align 8, !tbaa !181
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit239, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit237
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.m) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit239

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit239: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit237, %bb.ae
  %i.ec = load ptr, ptr %31, align 8, !tbaa !181  ; 2 uses
  %.not.i.i240 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i240, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit239
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ec) #15
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit239, %bb.af
  %.not178 = icmp eq ptr %i.ca, null
  br i1 %.not178, label %.critedge191, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.eb, ptr %32, align 8, !tbaa !181
  %.not.i.i242 = icmp eq ptr %i.eb, null          ; 3 uses
  br i1 %.not.i.i242, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit243, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.eb) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit243

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit243: ; preds = %bb.ah, %bb.ai
  %i.ed = call i64 @_ZN5clang4ento10ExprEngine18getPendingInitLoopEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_16CXXConstructExprEPKNS_10StackFrameE(ptr nofree noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull %1, ptr noundef %i.k) #15
  %i.ee = and i64 %i.ed, 4294967296
  %.not547 = icmp eq i64 %i.ee, 0
  %i.ef = load ptr, ptr %32, align 8, !tbaa !181  ; 2 uses
  %.not.i.i244 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i244, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit245, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit243
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ef) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit245

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit245: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit243, %bb.aj
  br i1 %.not547, label %bb.ak, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit251

bb.ak:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit245
  store ptr %i.eb, ptr %34, align 8, !tbaa !181
  br i1 %.not.i.i242, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit247, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.eb) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit247

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit247: ; preds = %bb.ak, %bb.al
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !378, !nonnull !241, !align !317 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !184
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = call noundef nonnull align 8 dereferenceable(23904) ptr %i.ek(ptr noundef nonnull align 8 dereferenceable(272) %i.eh) #15, !inline_history !3
  %i.em = call noundef i64 @_ZNK5clang10ASTContext32getArrayInitLoopExprElementCountEPKNS_17ArrayInitLoopExprE(ptr noundef nonnull align 8 dereferenceable(23904) %i.el, ptr noundef nonnull %i.ca) #15
  %i.en = trunc i64 %i.em to i32
  call void @_ZN5clang4ento10ExprEngine18setPendingInitLoopEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_16CXXConstructExprEPKNS_10StackFrameEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %33, ptr nofree noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull %1, ptr noundef %i.k, i32 noundef %i.en) #15
  %i.eo = load ptr, ptr %33, align 8, !tbaa !181  ; 2 uses
  store ptr %i.eb, ptr %33, align 8, !tbaa !181
  br i1 %.not.i.i242, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit249, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit247
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.eb) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit249

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit249: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit247, %bb.am
  %i.ep = load ptr, ptr %34, align 8, !tbaa !181  ; 2 uses
  %.not.i.i250 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i250, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit251, label %bb.an

bb.an:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit249
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ep) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit251

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit251: ; preds = %bb.an, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit249, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit245
  %.sroa.0.4 = phi ptr [ %i.eb, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit245 ], [ %i.eo, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit249 ], [ %i.eo, %bb.an ] ; 8 uses
  %.not.i.i252 = icmp eq ptr %.sroa.0.4, null
  br i1 %.not.i.i252, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit260, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit251
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.4) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit260

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit260: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit251, %bb.ao
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !323, !nonnull !241, !align !317 ; 2 uses
  %i.es = zext i32 %.0.i233 to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 400
  %.sroa.0.0.copyload.i254 = load i64, ptr %i.eu, align 8, !tbaa !182
  %i.ev = call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.et, i64 noundef %i.es, i64 %.sroa.0.0.copyload.i254) #15
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 8 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !272, !noalias !969
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 240
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !273, !noalias !969 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 232
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !316, !noalias !969, !nonnull !241, !align !317
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !490, !noalias !969
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !971, !noalias !969
  %i.fh = call noundef ptr @_ZN5clang39extractElementInitializerFromNestedAILEEPKNS_17ArrayInitLoopExprE(ptr noundef nonnull %i.ca) #15, !noalias !969 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15, !noalias !969
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15, !noalias !969
  call void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %i.fg, ptr noundef %i.k) #15, !noalias !969
  %i.fj = load ptr, ptr %i.ew, align 8, !tbaa !272, !noalias !969
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 240
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !273, !noalias !969
  %i.fm = call { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(412) %i.fl) #15, !noalias !969 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !969
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.fm, 0
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.fm, 1
  store ptr %.fca.0.extract.i, ptr %13, align 8, !noalias !969
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 %.fca.1.extract.i, ptr %.sroa.26.0..sroa_idx.i, align 8, !noalias !969
  %i.fn = call noundef ptr @_ZNK5clang4ento4SVal11getAsRegionEv(ptr noundef nonnull align 8 dereferenceable(9) %13) #15, !noalias !969
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !969
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.sroa.0.0.copyload.i.i255 = load i64, ptr %i.fo, align 8, !tbaa !182, !noalias !969
  %i.fp = call noundef ptr @_ZN5clang4ento16MemRegionManager16getElementRegionENS_8QualTypeENS0_6NonLocEPKNS0_9SubRegionERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(152) %i.fa, i64 %.sroa.0.0.copyload.i.i255, ptr %i.ev, i8 6, ptr noundef %i.fn, ptr noundef nonnull align 8 dereferenceable(23904) %i.fc) #15, !noalias !969
  %i.fq = load i16, ptr %i.fh, align 8, !noalias !969
  %i.fr = and i16 %i.fq, 511
  %.not.i.i.i.i.i = icmp eq i16 %i.fr, 118        ; 2 uses
  %spec.select.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.fh, ptr null
  %53 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i.i, i64 48
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %spec.select.i.i.i.i.i256 = select i1 %.not.i.i.i.i.i, ptr %53, ptr %i.fs
  %i.ft = load ptr, ptr %spec.select.i.i.i.i.i256, align 8, !tbaa !453, !noalias !969
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %35, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.4, ptr noundef %i.ft, ptr noundef %i.k, ptr %i.fp, i8 4, i1 noundef zeroext true) #15
  %i.fu = load ptr, ptr %35, align 8, !tbaa !181
  store ptr %.sroa.0.4, ptr %35, align 8, !tbaa !181
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.4) #15
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.4) #15
  br label %.critedge191

.critedge191:                                     ; preds = %bb.p, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit260, %bb.ag
  %.1167522 = phi i32 [ %.0.i233, %bb.ag ], [ %.0.i233, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit260 ], [ 0, %bb.p ]
  %.sroa.0.5 = phi ptr [ %i.eb, %bb.ag ], [ %i.fu, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit260 ], [ %i.m, %bb.p ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #15
  store ptr %.sroa.0.5, ptr %37, align 8, !tbaa !181
  %.not.i.i261 = icmp eq ptr %.sroa.0.5, null     ; 2 uses
  br i1 %.not.i.i261, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit262, label %bb.ap

bb.ap:                                            ; preds = %.critedge191
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.5) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit262

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit262: ; preds = %.critedge191, %bb.ap
  %i.fv = load ptr, ptr %i.ap, align 8, !tbaa !157
  call void @_ZN5clang4ento10ExprEngine25handleConstructionContextEPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_18NodeBuilderContextEPKNS_10StackFrameEPKNS_19ConstructionContextERNS0_15EvalCallOptionsEj(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %36, ptr noundef nonnull align 8 dereferenceable(812) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %37, ptr noundef %i.fv, ptr noundef %i.k, ptr noundef %i.bq, ptr noundef nonnull align 1 dereferenceable(5) %27, i32 noundef %.1167522)
  %i.fw = load ptr, ptr %36, align 8, !tbaa !181
  store ptr null, ptr %36, align 8, !tbaa !181
  br i1 %.not.i.i261, label %_ZNSt5tupleIJRN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERNS3_4SValEEEaSIS6_S8_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSA_E4typeEOSt4pairISD_SE_E.exit.thread, label %_ZNSt5tupleIJRN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERNS3_4SValEEEaSIS6_S8_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSA_E4typeEOSt4pairISD_SE_E.exit

_ZNSt5tupleIJRN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERNS3_4SValEEEaSIS6_S8_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSA_E4typeEOSt4pairISD_SE_E.exit.thread: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit262
  %i.fx = getelementptr inbounds nuw i8, ptr %36, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %18, ptr noundef nonnull align 8 dereferenceable(9) %i.fx, i64 9, i1 false), !tbaa.struct !406
  br label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_4SValEED2Ev.exit

_ZNSt5tupleIJRN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERNS3_4SValEEEaSIS6_S8_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSA_E4typeEOSt4pairISD_SE_E.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit262
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.5) #15
  %.pr = load ptr, ptr %36, align 8, !tbaa !181   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %36, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %18, ptr noundef nonnull align 8 dereferenceable(9) %i.fy, i64 9, i1 false), !tbaa.struct !406
  %.not.i.i.i264 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i264, label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_4SValEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt5tupleIJRN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERNS3_4SValEEEaSIS6_S8_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSA_E4typeEOSt4pairISD_SE_E.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.pr) #15
  br label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_4SValEED2Ev.exit

_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_4SValEED2Ev.exit: ; preds = %_ZNSt5tupleIJRN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERNS3_4SValEEEaSIS6_S8_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSA_E4typeEOSt4pairISD_SE_E.exit.thread, %_ZNSt5tupleIJRN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEERNS3_4SValEEEaSIS6_S8_EENSt9enable_ifIXcl12__assignableIT_T0_EEERSA_E4typeEOSt4pairISD_SE_E.exit, %bb.aq
  %i.fz = load ptr, ptr %37, align 8, !tbaa !181  ; 2 uses
  %.not.i.i265 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i265, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit266, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_4SValEED2Ev.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fz) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit266

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit266: ; preds = %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEENS3_4SValEED2Ev.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15
  br label %bb.aw

bb.as:                                            ; preds = %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit228, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento9CallEventEED2Ev.exit

.thread513:                                       ; preds = %bb.l, %bb.m
  br label %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit

_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit: ; preds = %.thread513, %bb.l, %bb.m
  %i.ga = phi i32 [ 1, %bb.l ], [ %i.bw, %bb.m ], [ 2, %.thread513 ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !337
  %i.gd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang19AnalysisDeclContext12getParentMapEv(ptr noundef nonnull align 8 dereferenceable(280) %i.gc) #15
  %i.ge = call noundef ptr @_ZNK5clang9ParentMap9getParentEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef nonnull %1) #15 ; 2 uses
  %.not.i.i268 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i268, label %_ZN4llvm15isa_and_nonnullIJN5clang12InitListExprENS1_20CXXParenListInitExprEEPKNS1_4StmtEEEbRKT0_.exit.thread, label %_ZN4llvm15isa_and_nonnullIJN5clang12InitListExprENS1_20CXXParenListInitExprEEPKNS1_4StmtEEEbRKT0_.exit

_ZN4llvm15isa_and_nonnullIJN5clang12InitListExprENS1_20CXXParenListInitExprEEPKNS1_4StmtEEEbRKT0_.exit: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit
  %i.gf = load i16, ptr %i.ge, align 8
  %i.gg = and i16 %i.gf, 511
  switch i16 %i.gg, label %_ZN4llvm15isa_and_nonnullIJN5clang12InitListExprENS1_20CXXParenListInitExprEEPKNS1_4StmtEEEbRKT0_.exit.thread [
    i16 106, label %bb.at
    i16 55, label %bb.at
  ]

bb.at:                                            ; preds = %_ZN4llvm15isa_and_nonnullIJN5clang12InitListExprENS1_20CXXParenListInitExprEEPKNS1_4StmtEEEbRKT0_.exit, %_ZN4llvm15isa_and_nonnullIJN5clang12InitListExprENS1_20CXXParenListInitExprEEPKNS1_4StmtEEEbRKT0_.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !323, !nonnull !241, !align !317
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 232
  %i.gk = call noundef ptr @_ZN5clang4ento16MemRegionManager22getCXXTempObjectRegionEPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(152) %i.gj, ptr noundef nonnull %1, ptr noundef nonnull %i.k) #15
  store ptr %i.gk, ptr %18, align 8, !tbaa !192
  store i8 4, ptr %.sroa.4444.0..sroa_idx500, align 8, !tbaa !194
  store i8 1, ptr %27, align 1, !tbaa !446
  br label %bb.aw

_ZN4llvm15isa_and_nonnullIJN5clang12InitListExprENS1_20CXXParenListInitExprEEPKNS1_4StmtEEEbRKT0_.exit.thread: ; preds = %_ZN4llvm15isa_and_nonnullIJN5clang12InitListExprENS1_20CXXParenListInitExprEEPKNS1_4StmtEEEbRKT0_.exit, %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit, %bb.m
  %i.gl = phi i32 [ %i.ga, %_ZN4llvm15isa_and_nonnullIJN5clang12InitListExprENS1_20CXXParenListInitExprEEPKNS1_4StmtEEEbRKT0_.exit ], [ %i.bw, %bb.m ], [ %i.ga, %_ZN4llvm16dyn_cast_or_nullIN5clang16CXXConstructExprEKNS1_4ExprEEEDaPT0_.exit ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !337
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !372
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !323, !nonnull !241, !align !317
  %i.gs = call { ptr, i8 } @_ZN5clang4ento11SValBuilder10getCXXThisEPKNS_13CXXMethodDeclEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(412) %i.gr, ptr noundef %i.gp, ptr noundef nonnull %i.k) #15 ; 2 uses
  %.fca.0.extract69 = extractvalue { ptr, i8 } %i.gs, 0
  %.fca.1.extract70 = extractvalue { ptr, i8 } %i.gs, 1
  %i.gt = call { ptr, i8 } @_ZNK5clang4ento12ProgramState7getSValENS0_3LocENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr %.fca.0.extract69, i8 %.fca.1.extract70, i64 0) #15 ; 2 uses
  %.fca.0.extract60 = extractvalue { ptr, i8 } %i.gt, 0 ; 2 uses
  %.fca.1.extract61 = extractvalue { ptr, i8 } %i.gt, 1 ; 2 uses
  %i.gu = icmp eq i32 %i.gl, 3
  br i1 %i.gu, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN4llvm15isa_and_nonnullIJN5clang12InitListExprENS1_20CXXParenListInitExprEEPKNS1_4StmtEEEbRKT0_.exit.thread
  store ptr %.fca.0.extract60, ptr %18, align 8, !tbaa !192
  store i8 %.fca.1.extract61, ptr %.sroa.4444.0..sroa_idx500, align 8, !tbaa !194
  br label %bb.aw

bb.av:                                            ; preds = %_ZN4llvm15isa_and_nonnullIJN5clang12InitListExprENS1_20CXXParenListInitExprEEPKNS1_4StmtEEEbRKT0_.exit.thread
  %i.gv = icmp eq i32 %i.gl, 2
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !320
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i271 = load i64, ptr %i.gy, align 8, !tbaa !182
  %i.gz = call { ptr, i8 } @_ZN5clang4ento12StoreManager17evalDerivedToBaseENS0_4SValENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(40) %i.gx, ptr %.fca.0.extract60, i8 %.fca.1.extract61, i64 %.sroa.0.0.copyload.i271, i1 noundef zeroext %i.gv) #15 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.gz, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.gz, 1
  store ptr %.fca.0.extract, ptr %18, align 8, !tbaa !192
  store i8 %.fca.1.extract, ptr %.sroa.4444.0..sroa_idx500, align 8, !tbaa !194
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit266, %bb.at, %bb.m
  %.sroa.0.6 = phi ptr [ %i.m, %bb.m ], [ %i.fw, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit266 ], [ %i.m, %bb.at ], [ %i.m, %bb.au ], [ %i.m, %bb.av ] ; 17 uses
  %i.ha = load ptr, ptr %i.l, align 8, !tbaa !181
  %.not548 = icmp eq ptr %.sroa.0.6, %i.ha
  br i1 %.not548, label %bb.bg, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hb = load atomic i8, ptr @_ZGVZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE1T_0 acquire, align 8
  %i.hc = icmp eq i8 %i.hb, 0
  br i1 %i.hc, label %bb.ay, label %bb.ba, !prof !489

bb.ay:                                            ; preds = %bb.ax
  %i.hd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE1T_0) #15
  %.not179 = icmp eq i32 %i.hd, 0
  br i1 %.not179, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZN5clang21SimpleProgramPointTagC1EN4llvm9StringRefES2_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE1T_0, ptr nonnull @.str, i64 10, ptr nonnull @.str.2, i64 31) #15
  %i.he = call i32 @__cxa_atexit(ptr nonnull @_ZN5clang21SimpleProgramPointTagD2Ev, ptr nonnull @_ZZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE1T_0, ptr nonnull @__dso_handle) #15 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE1T_0) #15
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ax, %bb.ay, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %38, i8 0, i64 24, i1 false)
  %i.hf = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %38, i64 40 ; 2 uses
  store ptr %i.hg, ptr %i.hf, align 8, !tbaa !189
  %i.hh = getelementptr inbounds nuw i8, ptr %38, i64 32
  store i32 0, ptr %i.hh, align 8, !tbaa !190
  %i.hi = getelementptr inbounds nuw i8, ptr %38, i64 36
  store i32 4, ptr %i.hi, align 4, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #15
  %i.hj = load ptr, ptr %i.ap, align 8, !tbaa !157
  store ptr %i.hj, ptr %39, align 8, !tbaa !158
  %i.hk = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i8 0, ptr %i.hk, align 8, !tbaa !161
  %i.hl = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr %38, ptr %i.hl, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %2, ptr %i.d, align 8, !tbaa !163
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !165
  %i.ho = trunc i64 %i.hn to i1
  br i1 %i.ho, label %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit273, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hp = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE6insertERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %38, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  br label %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit273

_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit273: ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i274 = icmp eq ptr %.sroa.0.6, null     ; 2 uses
  br i1 %.not.i.i274, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i279.critedge, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit275

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit275: ; preds = %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit273
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %.sroa.3.0.copyload.i.i277 = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !182
  %i.hq = and i64 %.sroa.3.0.copyload.i.i277, -8
  %i.hr = inttoptr i64 %i.hq to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %10, ptr noundef nonnull %1, i32 noundef 3, ptr noundef %i.hr, ptr noundef nonnull @_ZZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE1T_0) #15
  store ptr %.sroa.0.6, ptr %11, align 8, !tbaa !181
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0.6) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i279

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i279.critedge: ; preds = %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit273
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %.sroa.3.0.copyload.i.i277.c = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !182
  %i.hs = and i64 %.sroa.3.0.copyload.i.i277.c, -8
  %i.ht = inttoptr i64 %i.hs to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %10, ptr noundef nonnull %1, i32 noundef 3, ptr noundef %i.ht, ptr noundef nonnull @_ZZN5clang4ento10ExprEngine17handleConstructorEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEE1T_0) #15
  store ptr null, ptr %11, align 8, !tbaa !181
end_hunk_0
begin_hunk_1_@_ZN5clang4ento16CallEventManager6createINS0_18CXXConstructorCallEPKNS_16CXXConstructExprEPKNS0_9MemRegionEEEPT_T0_T1_N4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE:bb.a
  br label %_ZN5clang4ento16CallEventManager8allocateEv.exit

_ZN5clang4ento16CallEventManager8allocateEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.q, %bb.e ], [ %i.d, %bb.c ], [ %i.k, %bb.d ] ; 15 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !181    ; 9 uses
  %.not.i.i4 = icmp eq ptr %i.s, null             ; 2 uses
  br i1 %.not.i.i4, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i, label %bb.f

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i: ; preds = %_ZN5clang4ento16CallEventManager8allocateEv.exit
  %.sroa.09.0.copyload10 = load ptr, ptr %5, align 8, !tbaa !479
  %.sroa.2.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload12 = load i64, ptr %.sroa.2.0..sroa_idx11, align 8, !tbaa !480
  br label %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i

bb.f:                                             ; preds = %_ZN5clang4ento16CallEventManager8allocateEv.exit
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #15
  %.sroa.09.0.copyload = load ptr, ptr %5, align 8, !tbaa !479
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !480
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #15
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #15
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #15
  br label %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i

_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i: ; preds = %bb.f, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i
  %.sroa.2.0.copyload15 = phi i64 [ %.sroa.2.0.copyload, %bb.f ], [ %.sroa.2.0.copyload12, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i ]
  %.sroa.09.0.copyload13 = phi ptr [ %.sroa.09.0.copyload, %bb.f ], [ %.sroa.09.0.copyload10, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !181
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %4, ptr %i.u, align 8, !tbaa !485
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.w = ptrtoint ptr %1 to i64
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store ptr %.sroa.09.0.copyload13, ptr %i.x, align 8, !tbaa !479
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store i64 %.sroa.2.0.copyload15, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !480
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 49
  store i8 0, ptr %i.y, align 1, !tbaa !486
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  store i32 0, ptr %i.z, align 8, !tbaa !487
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 68
  store i32 0, ptr %i.aa, align 4, !tbaa !470
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento15AnyFunctionCallE, i64 16), ptr %.0.i, align 8, !tbaa !184
  br i1 %.not.i.i4, label %_ZN5clang4ento18CXXConstructorCallC2EPKNS_16CXXConstructExprEPKNS0_9MemRegionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.thread, label %bb.g

_ZN5clang4ento18CXXConstructorCallC2EPKNS_16CXXConstructExprEPKNS0_9MemRegionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.thread: ; preds = %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  store ptr %2, ptr %i.ab, align 8, !tbaa !488
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento18CXXConstructorCallE, i64 16), ptr %.0.i, align 8, !tbaa !184
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

bb.g:                                             ; preds = %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #15
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento21AnyCXXConstructorCallE, i64 16), ptr %.0.i, align 8, !tbaa !184
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  store ptr %2, ptr %i.ac, align 8, !tbaa !488
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #15
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento18CXXConstructorCallE, i64 16), ptr %.0.i, align 8, !tbaa !184
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN5clang4ento18CXXConstructorCallC2EPKNS_16CXXConstructExprEPKNS0_9MemRegionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.thread, %bb.g
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang4ento18CXXConstructorCall7cloneToEPv(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento9CallEventE, i64 16), ptr %1, align 8, !tbaa !184
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !181  ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !181
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5clang4ento18CXXConstructorCallC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.c) #15, !inline_history !1081
  br label %_ZN5clang4ento18CXXConstructorCallC2ERKS1_.exit

_ZN5clang4ento18CXXConstructorCallC2ERKS1_.exit:  ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !485
  store ptr %i.f, ptr %i.d, align 8, !tbaa !485
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8
  store i64 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !911
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 0, ptr %i.l, align 1, !tbaa !486
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !488
  store ptr %i.o, ptr %i.m, align 8, !tbaa !488
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !322
  store i32 %i.r, ptr %i.p, align 8, !tbaa !322
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 0, ptr %i.s, align 4, !tbaa !470
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento18CXXConstructorCallE, i64 16), ptr %1, align 8, !tbaa !184
  ret void
}

declare void @_ZNK5clang4ento21AnyCXXConstructorCall25getExtraInvalidatedValuesERN4llvm15SmallVectorImplINS0_4SValEEEPNS0_33RegionAndSymbolInvalidationTraitsE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4ento18CXXConstructorCallD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento9CallEventE, i64 16), ptr %0, align 8, !tbaa !184
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5clang4ento9CallEventD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.b) #15
  br label %_ZN5clang4ento9CallEventD2Ev.exit

_ZN5clang4ento9CallEventD2Ev.exit:                ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5clang4ento18CXXConstructorCall7getKindEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK5clang4ento18CXXConstructorCall15getKindAsStringEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.6, i64 18 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang4ento18CXXConstructorCall7getDeclEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !184
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0) #15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !523
  ret ptr %i.f
}

declare void @_ZNK5clang4ento15AnyFunctionCall20getRuntimeDefinitionEv(ptr dead_on_unwind writable sret(%"class.clang::ento::RuntimeDefinition") align 8, ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang4ento18CXXConstructorCall13getOriginExprEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.c = icmp eq i64 %i.b, 0
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3
  %i.e = inttoptr i64 %i.d to ptr
  %.0.i.i.i.i.i = select i1 %i.c, ptr %i.e, ptr null
  ret ptr %.0.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5clang4ento18CXXConstructorCall10getNumArgsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !184
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0) #15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !912
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK5clang4ento9CallEvent14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !184
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0) #15
  %i.e = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #16
  ret i64 %i.e
}

declare { ptr, i8 } @_ZNK5clang4ento9CallEvent10getArgSValEj(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang4ento18CXXConstructorCall10getArgExprEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !184
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0) #15 ; 3 uses
  %i.e = load i16, ptr %i.d, align 8
  %i.f = and i16 %i.e, 511
  %.not.i.i.i.i = icmp eq i16 %i.f, 118           ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.d, ptr null
  %2 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %2, ptr %i.g
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.i.i, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !453
  ret ptr %i.j
}

declare i64 @_ZNK5clang4ento9CallEvent17getArgSourceRangeEj(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef) unnamed_addr #3

declare noundef zeroext i1 @_ZNK5clang4ento15AnyFunctionCall18argumentsMayEscapeEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

declare void @_ZNK5clang4ento21AnyCXXConstructorCall28getInitialStackFrameContentsEPKNS_10StackFrameERN4llvm15SmallVectorImplISt4pairINS0_4SValES8_EEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 1) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK5clang4ento9CallEvent25getAdjustedParameterIndexEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.insert.ext = zext i32 %1 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, 4294967296
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5clang4ento9CallEvent19getASTArgumentIndexEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 %1
}

declare { ptr, i64 } @_ZNK5clang4ento15AnyFunctionCall10parametersEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5clang15ProgramPointTagD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

declare noundef ptr @_ZN5clang39extractElementInitializerFromNestedAILEEPKNS_17ArrayInitLoopExprE(ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang19AnalysisDeclContext12getParentMapEv(ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #3

declare noundef ptr @_ZNK5clang9ParentMap9getParentEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5clang4ento16CallEventManager6createINS0_27CXXInheritedConstructorCallEPKNS_24CXXInheritedCtorInitExprEPKNS0_9MemRegionEEEPT_T0_T1_N4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef align 8 dereferenceable(8) %3, ptr noundef %4, ptr noundef byval(%"class.clang::CFGBlock::ElementRefImpl") align 8 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !190  ; 3 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !484, !nonnull !241, !align !317 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !231  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = add i64 %i.e, 72                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !232
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %bb.d, !prof !233

bb.c:                                             ; preds = %bb.b
  %i.j = inttoptr i64 %i.f to ptr
  store ptr %i.j, ptr %i.c, align 8, !tbaa !231
  br label %_ZN5clang4ento16CallEventManager8allocateEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 noundef 72, i64 noundef 72, i8 3)
  br label %_ZN5clang4ento16CallEventManager8allocateEv.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !189
  %i.n = zext i32 %i.b to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !192
  %i.r = add i32 %i.b, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !190
  br label %_ZN5clang4ento16CallEventManager8allocateEv.exit

_ZN5clang4ento16CallEventManager8allocateEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.q, %bb.e ], [ %i.d, %bb.c ], [ %i.k, %bb.d ] ; 15 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !181    ; 9 uses
  %.not.i.i4 = icmp eq ptr %i.s, null             ; 2 uses
  br i1 %.not.i.i4, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i, label %bb.f

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i: ; preds = %_ZN5clang4ento16CallEventManager8allocateEv.exit
  %.sroa.09.0.copyload10 = load ptr, ptr %5, align 8, !tbaa !479
  %.sroa.2.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload12 = load i64, ptr %.sroa.2.0..sroa_idx11, align 8, !tbaa !480
  br label %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i

bb.f:                                             ; preds = %_ZN5clang4ento16CallEventManager8allocateEv.exit
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #15
  %.sroa.09.0.copyload = load ptr, ptr %5, align 8, !tbaa !479
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !480
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #15
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #15
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #15
  br label %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i

_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i: ; preds = %bb.f, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i
  %.sroa.2.0.copyload15 = phi i64 [ %.sroa.2.0.copyload, %bb.f ], [ %.sroa.2.0.copyload12, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i ]
  %.sroa.09.0.copyload13 = phi ptr [ %.sroa.09.0.copyload, %bb.f ], [ %.sroa.09.0.copyload10, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !181
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %4, ptr %i.u, align 8, !tbaa !485
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.w = ptrtoint ptr %1 to i64
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store ptr %.sroa.09.0.copyload13, ptr %i.x, align 8, !tbaa !479
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store i64 %.sroa.2.0.copyload15, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !480
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 49
  store i8 0, ptr %i.y, align 1, !tbaa !486
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  store i32 0, ptr %i.z, align 8, !tbaa !487
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 68
  store i32 0, ptr %i.aa, align 4, !tbaa !470
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento15AnyFunctionCallE, i64 16), ptr %.0.i, align 8, !tbaa !184
  br i1 %.not.i.i4, label %_ZN5clang4ento27CXXInheritedConstructorCallC2EPKNS_24CXXInheritedCtorInitExprEPKNS0_9MemRegionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.thread, label %bb.g

_ZN5clang4ento27CXXInheritedConstructorCallC2EPKNS_24CXXInheritedCtorInitExprEPKNS0_9MemRegionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.thread: ; preds = %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  store ptr %2, ptr %i.ab, align 8, !tbaa !488
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento27CXXInheritedConstructorCallE, i64 16), ptr %.0.i, align 8, !tbaa !184
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

bb.g:                                             ; preds = %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #15
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento21AnyCXXConstructorCallE, i64 16), ptr %.0.i, align 8, !tbaa !184
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  store ptr %2, ptr %i.ac, align 8, !tbaa !488
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #15
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento27CXXInheritedConstructorCallE, i64 16), ptr %.0.i, align 8, !tbaa !184
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #15
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN5clang4ento27CXXInheritedConstructorCallC2EPKNS_24CXXInheritedCtorInitExprEPKNS0_9MemRegionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.thread, %bb.g
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang4ento27CXXInheritedConstructorCall7cloneToEPv(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento9CallEventE, i64 16), ptr %1, align 8, !tbaa !184
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !181  ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !181
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5clang4ento27CXXInheritedConstructorCallC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.c) #15, !inline_history !1082
  br label %_ZN5clang4ento27CXXInheritedConstructorCallC2ERKS1_.exit

_ZN5clang4ento27CXXInheritedConstructorCallC2ERKS1_.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !485
  store ptr %i.f, ptr %i.d, align 8, !tbaa !485
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8
  store i64 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !911
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 0, ptr %i.l, align 1, !tbaa !486
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !488
  store ptr %i.o, ptr %i.m, align 8, !tbaa !488
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !322
  store i32 %i.r, ptr %i.p, align 8, !tbaa !322
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 0, ptr %i.s, align 4, !tbaa !470
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento27CXXInheritedConstructorCallE, i64 16), ptr %1, align 8, !tbaa !184
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4ento27CXXInheritedConstructorCallD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento9CallEventE, i64 16), ptr %0, align 8, !tbaa !184
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5clang4ento9CallEventD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.b) #15
  br label %_ZN5clang4ento9CallEventD2Ev.exit

_ZN5clang4ento9CallEventD2Ev.exit:                ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5clang4ento27CXXInheritedConstructorCall7getKindEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK5clang4ento27CXXInheritedConstructorCall15getKindAsStringEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.7, i64 27 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang4ento27CXXInheritedConstructorCall7getDeclEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !184
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0) #15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1084
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang4ento27CXXInheritedConstructorCall13getOriginExprEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.c = icmp eq i64 %i.b, 0
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3
  %i.e = inttoptr i64 %i.d to ptr
  %.0.i.i.i.i.i = select i1 %i.c, ptr %i.e, ptr null
  ret ptr %.0.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5clang4ento27CXXInheritedConstructorCall10getNumArgsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK5clang4ento27CXXInheritedConstructorCall23getInheritingStackFrameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !431
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !912
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNK5clang4ento27CXXInheritedConstructorCall10getArgSValEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::ento::EnvironmentEntry", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181, !noalias !1087 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.b) #15, !noalias !1087
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) #15
  %i.g = tail call noundef ptr @_ZNK5clang4ento27CXXInheritedConstructorCall23getInheritingStackFrameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !415
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.f, ptr noundef %i.i) #15
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !272
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !273
  %i.o = call { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(412) %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.b) #15
  ret { ptr, i8 } %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang4ento27CXXInheritedConstructorCall10getArgExprEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK5clang4ento27CXXInheritedConstructorCall23getInheritingStackFrameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !431  ; 3 uses
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 511
  %.not.i.i.i.i = icmp eq i16 %i.e, 118           ; 2 uses
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.c, ptr null
  %2 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr %2, ptr %i.f
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.i.i, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !453
  ret ptr %i.i
}

declare noundef ptr @_ZNK5clang4ento27CXXInheritedConstructorCall23getInheritingStackFrameEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare void @_ZN5clang4ento14CheckerManager18runCheckersForStmtEbRNS0_15ExplodedNodeSetERKS2_PKNS_4StmtERNS0_10ExprEngineEb(ptr noundef nonnull align 8 dereferenceable(1864), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(812), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4ento15ExplodedNodeSet6insertERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE12insert_rangeIRKNS2_15ExplodedNodeSetEEEvOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !190
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ento12ExplodedNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8copyFromERKSC_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !190  ; 6 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = load i32, ptr %i.b, align 8, !tbaa !190  ; 4 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %.not.i.i.i.i = icmp ult i32 %i.i, %i.g
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not29.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not29.i.i.i.i, label %_ZN4llvm14SmallSetVectorIPN5clang4ento12ExplodedNodeELj4EEaSERKS5_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !189  ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !189  ; 2 uses
  %.not31.i.i.i.i = icmp eq i32 %i.g, 1
  br i1 %.not31.i.i.i.i, label %bb.g, label %bb.f, !prof !520

bb.f:                                             ; preds = %bb.e
  %.idx.i.i.i.i = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %i.k, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN4llvm14SmallSetVectorIPN5clang4ento12ExplodedNodeELj4EEaSERKS5_.exit

bb.g:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !163
  store ptr %i.m, ptr %i.l, align 8, !tbaa !163
  br label %_ZN4llvm14SmallSetVectorIPN5clang4ento12ExplodedNodeELj4EEaSERKS5_.exit

bb.h:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !191
  %i.p = icmp ult i32 %i.o, %i.g
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.b, align 8, !tbaa !190
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull %i.q, i64 noundef %i.h, i64 noundef 8) #15
  br label %_ZSt4copyIPKPN5clang4ento12ExplodedNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %.not28.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not28.i.i.i.i, label %_ZSt4copyIPKPN5clang4ento12ExplodedNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !189  ; 2 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !189  ; 2 uses
  %.not33.i.i.i.i = icmp eq i32 %i.i, 1
  br i1 %.not33.i.i.i.i, label %bb.m, label %bb.l, !prof !520

bb.l:                                             ; preds = %bb.k
  %.idx32.i.i.i.i = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.r, i64 %.idx32.i.i.i.i, i1 false)
  br label %_ZSt4copyIPKPN5clang4ento12ExplodedNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !163
  store ptr %i.t, ptr %i.s, align 8, !tbaa !163
  br label %_ZSt4copyIPKPN5clang4ento12ExplodedNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i

_ZSt4copyIPKPN5clang4ento12ExplodedNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.j, %bb.i
  %.022.i.i.i.i = phi i64 [ 0, %bb.i ], [ 0, %bb.j ], [ %i.j, %bb.l ], [ 1, %bb.m ] ; 4 uses
  %i.u = load i32, ptr %i.f, align 8, !tbaa !190
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %.not.i.i.i3.i.i = icmp samesign eq i64 %.022.i.i.i.i, %i.v
  br i1 %.not.i.i.i3.i.i, label %_ZN4llvm14SmallSetVectorIPN5clang4ento12ExplodedNodeELj4EEaSERKS5_.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt4copyIPKPN5clang4ento12ExplodedNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !189
  %.idx35.i.i.i.i = shl nuw nsw i64 %.022.i.i.i.i, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx35.i.i.i.i
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !189
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.022.i.i.i.i
  %i.aa = sub nsw i64 %i.v, %.022.i.i.i.i
  %gepdiff.i.i.i.i = shl nsw i64 %i.aa, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 8 %i.x, i64 %gepdiff.i.i.i.i, i1 false)
  br label %_ZN4llvm14SmallSetVectorIPN5clang4ento12ExplodedNodeELj4EEaSERKS5_.exit

_ZN4llvm14SmallSetVectorIPN5clang4ento12ExplodedNodeELj4EEaSERKS5_.exit: ; preds = %bb.d, %bb.f, %bb.g, %_ZSt4copyIPKPN5clang4ento12ExplodedNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i, %bb.n
  store i32 %i.g, ptr %i.b, align 8, !tbaa !190
  br label %_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE12insert_rangeIRKNS2_15ExplodedNodeSetEEEvOT_.exit

bb.o:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !189 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !190 ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %.idx.i = shl nuw nsw i64 %i.af, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i
  %.not5.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not5.i.i, label %_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE12insert_rangeIRKNS2_15ExplodedNodeSetEEEvOT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ah = tail call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE6insertERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %.06.i.i) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.ag
  br i1 %.not.i.i, label %_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE12insert_rangeIRKNS2_15ExplodedNodeSetEEEvOT_.exit, label %.lr.ph.i.i, !llvm.loop !1088

_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE12insert_rangeIRKNS2_15ExplodedNodeSetEEEvOT_.exit: ; preds = %.lr.ph.i.i, %bb.o, %bb.a, %_ZN4llvm14SmallSetVectorIPN5clang4ento12ExplodedNodeELj4EEaSERKS5_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ento12ExplodedNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8copyFromERKSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !197  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPN5clang4ento12ExplodedNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17deallocateBucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !198
  %i.e = zext i32 %i.b to i64                     ; 2 uses
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.e, 31
  %i.h = lshr i64 %i.g, 3
  %i.i = and i64 %i.h, 1073741820
  %i.j = add nuw nsw i64 %i.i, %i.f
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.d, i64 noundef %i.j, i64 noundef 8) #15
  store i32 0, ptr %i.a, align 4, !tbaa !197
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN5clang4ento12ExplodedNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPN5clang4ento12ExplodedNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !907
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !197  ; 3 uses
  store i32 %i.m, ptr %i.a, align 4, !tbaa !197
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZN4llvm8DenseMapIPN5clang4ento12ExplodedNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit, label %bb.c

_ZN4llvm8DenseMapIPN5clang4ento12ExplodedNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit: ; preds = %_ZN4llvm8DenseMapIPN5clang4ento12ExplodedNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %_ZN4llvm8DenseMapIPN5clang4ento12ExplodedNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE17deallocateBucketsEv.exit
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.n, 31
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 1073741820
  %i.s = add nuw nsw i64 %i.r, %i.o
  %i.t = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.s, i64 noundef 8) #15 ; 3 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !197
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !198
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !908
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !907
  store i32 %i.aa, ptr %i.k, align 8, !tbaa !907
  %i.ab = load ptr, ptr %1, align 8, !tbaa !198
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !908
  %i.ae = add nuw nsw i64 %i.v, 31
  %i.af = lshr i64 %i.ae, 3
  %i.ag = and i64 %i.af, 1073741820
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.ad, i64 %i.ag, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 8 %i.ab, i64 %i.w, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIPN5clang4ento12ExplodedNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEE15allocateBucketsEj.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare void @_ZN5clang4ento14CheckerManager23runCheckersForCallEventEbRNS0_15ExplodedNodeSetERKS2_RKNS0_9CallEventERNS0_10ExprEngineEb(ptr noundef nonnull align 8 dereferenceable(1864), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(812), i1 noundef zeroext) local_unnamed_addr #3
end_hunk_1
