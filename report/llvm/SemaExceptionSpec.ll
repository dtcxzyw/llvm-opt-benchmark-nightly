Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaExceptionSpec?download=true
inline.NumInlined: 2924
inline.NumDeleted: 1790
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5clang4Sema28CheckEquivalentExceptionSpecEPNS_12FunctionDeclES2_:bb.a
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !711, !nonnull !700, !align !701
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 2592
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !1076, !nonnull !700, !align !701
  %i.hh = call noundef i32 @_ZNK5clang13SourceManager21getFileCharacteristicENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(776) %i.hg, i32 %.sroa.0.0.copyload.i123) #17
  switch i32 %i.hh, label %bb.aq [
    i32 3, label %bb.ap
    i32 0, label %bb.ap
  ]

bb.ap:                                            ; preds = %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit, %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit
  %i.hi = call noundef i32 @_ZNK5clang12FunctionDecl12getBuiltinIDEb(ptr noundef nonnull align 8 dereferenceable(168) %1, i1 noundef zeroext false) #17
  %.not60 = icmp eq i32 %i.hi, 0
  br i1 %.not60, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit, %bb.ap, %bb.ao
  %i.hj = call noundef zeroext i1 @_ZNK5clang12FunctionDecl9isExternCEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #17
  br i1 %i.hj, label %bb.ar, label %.critedge

bb.ar:                                            ; preds = %bb.aq
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !711, !nonnull !700, !align !701
  %i.hm = getelementptr inbounds nuw i8, ptr %.1.i122, i64 24
  %.sroa.0.0.copyload.i126 = load i64, ptr %i.hm, align 8, !tbaa !1079
  %i.hn = getelementptr inbounds nuw i8, ptr %.1.i122, i64 48
  %i.ho = getelementptr inbounds nuw i8, ptr %.1.i122, i64 16
  %i.hp = load i64, ptr %i.ho, align 16
  %i.hq = lshr i64 %i.hp, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @_ZNK5clang17FunctionProtoType15getExtProtoInfoEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::FunctionProtoType::ExtProtoInfo") align 8 %8, ptr noundef nonnull align 16 dereferenceable(48) %.1.i122)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %7, ptr noundef nonnull align 8 dereferenceable(144) %8, i64 144, i1 false), !tbaa.struct !1261
  %i.hr = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.hr, align 8, !tbaa !1078
  %i.hs = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hs, i8 0, i64 40, i1 false)
  %i.ht = call i64 @_ZNK5clang10ASTContext23getFunctionTypeInternalENS_8QualTypeEN4llvm8ArrayRefIS1_EERKNS_17FunctionProtoType12ExtProtoInfoEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.hl, i64 %.sroa.0.0.copyload.i126, ptr nonnull %i.hn, i64 %i.hq, ptr noundef nonnull align 8 dereferenceable(138) %7, i1 noundef zeroext false) #17
  store i64 %i.ht, ptr %i.aw, align 8, !tbaa !1079
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang12FunctionDeclES4_ELb1EE9push_backES5_.exit

.critedge:                                        ; preds = %bb.ap, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit, %bb.aq
  %.sroa.0.0.copyload.i127 = load i64, ptr %i.v, align 8, !tbaa !1079
  %i.hu = and i64 %.sroa.0.0.copyload.i127, -16
  %i.hv = inttoptr i64 %i.hu to ptr
  %i.hw = load ptr, ptr %i.hv, align 16, !tbaa !1084 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load i8, ptr %i.hx, align 16
  %.not.i129 = icmp eq i8 %i.hy, 24
  br i1 %.not.i129, label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit131, label %bb.as

bb.as:                                            ; preds = %.critedge
  %i.hz = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.hw) #17
  br label %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit131

_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit131: ; preds = %.critedge, %bb.as
  %.1.i130 = phi ptr [ %i.hz, %bb.as ], [ %i.hw, %.critedge ] ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.1.i130, i64 16 ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 16
  %i.ic = trunc i64 %i.ib to i32
  %i.id = lshr i32 %i.ic, 25
  %i.ie = and i32 %i.id, 15                       ; 2 uses
  switch i32 %i.ie, label %.thread221.fold.split238 [
    i32 2, label %.thread
    i32 7, label %.thread221
    i32 8, label %.thread221.fold.split
    i32 6, label %bb.at
  ]

.thread:                                          ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit131
  %i.if = call { ptr, i64 } @_ZNK5clang17FunctionProtoType10exceptionsEv(ptr noundef nonnull align 16 dereferenceable(48) %.1.i130) ; 2 uses
  %i.ig = extractvalue { ptr, i64 } %i.if, 0
  %i.ih = extractvalue { ptr, i64 } %i.if, 1
  br label %.thread221

bb.at:                                            ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit131
  call void @_ZN5clang4Decl14setInvalidDeclEb(ptr noundef nonnull align 8 dereferenceable(33) %2, i1 noundef zeroext true) #17
  br label %bb.au

.thread221.fold.split:                            ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit131
  br label %.thread221

.thread221.fold.split238:                         ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit131
  br label %.thread221

.thread221:                                       ; preds = %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit131, %.thread221.fold.split238, %.thread221.fold.split, %.thread
  %.sroa.0172.1228 = phi i32 [ 5, %.thread221.fold.split ], [ 0, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit131 ], [ 2, %.thread ], [ %i.ie, %.thread221.fold.split238 ] ; 2 uses
  %.sroa.14.0213218226 = phi i64 [ 0, %.thread221.fold.split ], [ 0, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit131 ], [ %i.ih, %.thread ], [ 0, %.thread221.fold.split238 ]
  %.sroa.12178.0212219225 = phi ptr [ null, %.thread221.fold.split ], [ null, %_ZNK5clang4Type6castAsINS_17FunctionProtoTypeEEEPKT_v.exit131 ], [ %i.ig, %.thread ], [ null, %.thread221.fold.split238 ]
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !711, !nonnull !700, !align !701
  %i.ik = getelementptr inbounds nuw i8, ptr %.1.i122, i64 24
  %.sroa.0.0.copyload.i132 = load i64, ptr %i.ik, align 8, !tbaa !1079
  %i.il = getelementptr inbounds nuw i8, ptr %.1.i122, i64 48
  %i.im = getelementptr inbounds nuw i8, ptr %.1.i122, i64 16
  %i.in = load i64, ptr %i.im, align 16
  %i.io = lshr i64 %i.in, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @_ZNK5clang17FunctionProtoType15getExtProtoInfoEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::FunctionProtoType::ExtProtoInfo") align 8 %10, ptr noundef nonnull align 16 dereferenceable(48) %.1.i122)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(144) %10, i64 144, i1 false), !tbaa.struct !1261
  %i.ip = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %.sroa.0172.1228, ptr %i.ip, align 8, !tbaa !1078
  %.sroa.12178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %.sroa.12178.0212219225, ptr %.sroa.12178.0..sroa_idx, align 8, !tbaa !1178
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %.sroa.14.0213218226, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !1142
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx, i8 0, i64 24, i1 false)
  %i.iq = call i64 @_ZNK5clang10ASTContext23getFunctionTypeInternalENS_8QualTypeEN4llvm8ArrayRefIS1_EERKNS_17FunctionProtoType12ExtProtoInfoEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.ij, i64 %.sroa.0.0.copyload.i132, ptr nonnull %i.il, i64 %i.io, ptr noundef nonnull align 8 dereferenceable(138) %9, i1 noundef zeroext false) #17
  store i64 %i.iq, ptr %i.aw, align 8, !tbaa !1079
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.au

bb.au:                                            ; preds = %.thread221, %bb.at
  %.sroa.0172.1227 = phi i32 [ %.sroa.0172.1228, %.thread221 ], [ 6, %bb.at ] ; 3 uses
  %i.ir = load ptr, ptr %i.e, align 8, !tbaa !1086, !nonnull !700, !align !701
  %i.is = load i64, ptr %i.ir, align 8
  %i.it = and i64 %i.is, 32
  %.not61 = icmp ne i64 %i.it, 0
  %i.iu = add nsw i32 %.sroa.0172.1227, -1
  %i.iv = icmp ult i32 %i.iu, 3
  %or.cond240 = select i1 %.not61, i1 %i.iv, i1 false
  br i1 %or.cond240, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iw = call noundef zeroext i1 @_ZNK5clang12FunctionDecl30isTypeAwareOperatorNewOrDeleteEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #17
  br i1 %i.iw, label %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread, label %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit

_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit: ; preds = %bb.av
  %i.ix = call noundef zeroext i1 @_ZNK5clang12FunctionDecl54isUsableAsGlobalAllocationFunctionInConstantEvaluationEPNS_16OptionalUnsignedIjEEPb(ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef null, ptr noundef null) #17
  %i.iy = icmp ne i32 %.sroa.0172.1227, 6
  %or.cond = and i1 %i.iy, %i.ix
  br i1 %or.cond, label %bb.ax, label %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread

_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread: ; preds = %bb.av, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit
  %i.iz = icmp eq i32 %.sroa.0172.1227, 4
  br i1 %i.iz, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread
  %i.ja = load ptr, ptr %i.e, align 8, !tbaa !1086, !nonnull !700, !align !701
  %i.jb = load i64, ptr %i.ja, align 8
  %i.jc = and i64 %i.jb, 32
  %.not62 = icmp eq i64 %i.jc, 0
  br i1 %.not62, label %bb.ax, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang12FunctionDeclES4_ELb1EE9push_backES5_.exit

bb.ax:                                            ; preds = %bb.au, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread, %bb.aw, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit
  %.153 = phi i1 [ false, %bb.aw ], [ false, %bb.au ], [ false, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit ], [ true, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread ]
  %.151 = phi i32 [ 5744, %bb.aw ], [ 5744, %bb.au ], [ 5744, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit ], [ 4275, %_ZNK5clang12FunctionDecl37isReplaceableGlobalAllocationFunctionEPNS_16OptionalUnsignedIjEEPb.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.jd = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.jd, ptr %11, align 8, !tbaa !1263
  %i.je = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.je, align 8, !tbaa !1264
  %i.jf = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 128, ptr %i.jf, align 8, !tbaa !1265
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.jg = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 2, ptr %i.jg, align 8, !tbaa !1266
  %i.jh = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i8 0, ptr %i.jh, align 8, !tbaa !1267
  %i.ji = getelementptr inbounds nuw i8, ptr %12, i64 44
  store i32 1, ptr %i.ji, align 4, !tbaa !1268
  %i.jj = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jj, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %12, align 8, !tbaa !1093
  %i.jk = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 4 uses
  store ptr %11, ptr %i.jk, align 8, !tbaa !1270
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef null, i64 noundef 0, i32 noundef 0) #17
  %i.jl = load i64, ptr %i.ia, align 16
  %i.jm = trunc i64 %i.jl to i32
  %i.jn = lshr i32 %i.jm, 25
  %i.jo = and i32 %i.jn, 15
  switch i32 %i.jo, label %bb.bf [
    i32 1, label %.sink.split
    i32 2, label %bb.ay
    i32 5, label %bb.bc
    i32 6, label %bb.bd
    i32 7, label %bb.bd
    i32 8, label %bb.bd
    i32 4, label %bb.be
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.jp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.9) ; 0 uses
  %i.jq = call { ptr, i64 } @_ZNK5clang17FunctionProtoType10exceptionsEv(ptr noundef nonnull align 16 dereferenceable(48) %.1.i130) ; 2 uses
  %i.jr = extractvalue { ptr, i64 } %i.jq, 0      ; 3 uses
  %i.js = extractvalue { ptr, i64 } %i.jq, 1      ; 3 uses
  %.idx = shl nuw nsw i64 %i.js, 3
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 %.idx
  %.not63246 = icmp eq i64 %i.js, 0
  br i1 %.not63246, label %.sink.split, label %_ZN4llvm11raw_ostreamlsEPKc.exit.peel

_ZN4llvm11raw_ostreamlsEPKc.exit.peel:            ; preds = %bb.ay
  %i.ju = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.jv = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %.pre251 = load ptr, ptr %i.jx, align 8, !tbaa !699
  %.pre = load ptr, ptr %i.jw, align 8, !tbaa !711
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.kb = call { i64, ptr } @_ZN5clang4Sema17getPrintingPolicyERKNS_10ASTContextERKNS_12PreprocessorE(ptr noundef nonnull align 8 dereferenceable(23904) %.pre, ptr noundef nonnull align 8 dereferenceable(3344) %.pre251) #17 ; 2 uses
  %i.kc = extractvalue { i64, ptr } %i.kb, 0
  store i64 %i.kc, ptr %14, align 8
  %i.kd = extractvalue { i64, ptr } %i.kb, 1
  store ptr %i.kd, ptr %i.jy, align 8
  call void @_ZNK5clang8QualType11getAsStringB5cxx11ERKNS_14PrintingPolicyE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef nonnull align 8 dereferenceable(16) %14) #17
  %i.ke = load ptr, ptr %13, align 8, !tbaa !1189
  %i.kf = load i64, ptr %i.jz, align 8, !tbaa !1190
  %i.kg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.ke, i64 noundef %i.kf) #17 ; 0 uses
  %i.kh = load ptr, ptr %13, align 8, !tbaa !1189 ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.ka
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.peel
  %i.kj = load i64, ptr %i.ka, align 8, !tbaa !1079
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %.not63.peel = icmp eq i64 %i.js, 1
  br i1 %.not63.peel, label %.sink.split, label %.peel.next

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.peel.next
  %.054248 = phi ptr [ %i.kl, %.peel.next ], [ %i.lh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.km = load ptr, ptr %i.ju, align 8, !tbaa !1191
  %i.kn = load ptr, ptr %i.jv, align 8, !tbaa !1192 ; 2 uses
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %i.kr = icmp ult i64 %i.kq, 2
  br i1 %i.kr, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ks = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.10, i64 noundef 2) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.bb:                                            ; preds = %bb.az
  store i16 8236, ptr %i.kn, align 1
  %i.kt = load ptr, ptr %i.jv, align 8, !tbaa !1192
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 2
  store ptr %i.ku, ptr %i.jv, align 8, !tbaa !1192
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.kv = load ptr, ptr %i.jw, align 8, !tbaa !711, !nonnull !700, !align !701
  %i.kw = load ptr, ptr %i.jx, align 8, !tbaa !699, !nonnull !700, !align !701
  %i.kx = call { i64, ptr } @_ZN5clang4Sema17getPrintingPolicyERKNS_10ASTContextERKNS_12PreprocessorE(ptr noundef nonnull align 8 dereferenceable(23904) %i.kv, ptr noundef nonnull align 8 dereferenceable(3344) %i.kw) #17 ; 2 uses
  %i.ky = extractvalue { i64, ptr } %i.kx, 0
  store i64 %i.ky, ptr %14, align 8
  %i.kz = extractvalue { i64, ptr } %i.kx, 1
  store ptr %i.kz, ptr %i.jy, align 8
  call void @_ZNK5clang8QualType11getAsStringB5cxx11ERKNS_14PrintingPolicyE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %.054248, ptr noundef nonnull align 8 dereferenceable(16) %14) #17
  %i.la = load ptr, ptr %13, align 8, !tbaa !1189
  %i.lb = load i64, ptr %i.jz, align 8, !tbaa !1190
  %i.lc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.la, i64 noundef %i.lb) #17 ; 0 uses
  %i.ld = load ptr, ptr %13, align 8, !tbaa !1189 ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.ka
  br i1 %i.le, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.lf = load i64, ptr %i.ka, align 8, !tbaa !1079
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.lh = getelementptr inbounds nuw i8, ptr %.054248, i64 8 ; 2 uses
  %.not63 = icmp eq ptr %i.lh, %i.jt
  br i1 %.not63, label %.sink.split, label %bb.az, !llvm.loop !1258

bb.bc:                                            ; preds = %bb.ax
  br label %.sink.split

bb.bd:                                            ; preds = %bb.ax, %bb.ax, %bb.ax
  %i.li = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.13) ; 0 uses
  %i.lj = call noundef ptr @_ZNK5clang17FunctionProtoType15getNoexceptExprEv(ptr noundef nonnull align 16 dereferenceable(48) %.1.i130)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !711, !nonnull !700, !align !701
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !699, !nonnull !700, !align !701
  %i.lo = call { i64, ptr } @_ZN5clang4Sema17getPrintingPolicyERKNS_10ASTContextERKNS_12PreprocessorE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ll, ptr noundef nonnull align 8 dereferenceable(3344) %i.ln) #17 ; 2 uses
  %i.lp = extractvalue { i64, ptr } %i.lo, 0
  store i64 %i.lp, ptr %15, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.lr = extractvalue { i64, ptr } %i.lo, 1
  store ptr %i.lr, ptr %i.lq, align 8
  store ptr @.str.14, ptr %16, align 8, !tbaa !1194
  %i.ls = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 1, ptr %i.ls, align 8, !tbaa !1195
  call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.lj, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %16, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %.sink.split

bb.be:                                            ; preds = %bb.ax
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.ax, %bb.bc, %bb.bd, %bb.be
  %.str.15.sink = phi ptr [ @.str.15, %bb.be ], [ @.str.11, %bb.bd ], [ @.str.12, %bb.bc ], [ @.str.8, %bb.ax ], [ @.str.11, %bb.ay ], [ @.str.11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ], [ @.str.11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.lt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull %.str.15.sink) ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %.sink.split, %bb.ax
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.lu, align 8 ; 3 uses
  %i.lv = and i64 %.0.copyload.i.i.i.i.i.i.i, 4
  %.not.i136 = icmp eq i64 %i.lv, 0
  br i1 %.not.i136, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lw = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.lx = inttoptr i64 %i.lw to ptr
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !1174
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit

bb.bh:                                            ; preds = %bb.bf
  %i.ma = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit

_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit: ; preds = %bb.bg, %bb.bh
  %i.mb = phi ptr [ %i.lz, %bb.bg ], [ %i.ma, %bb.bh ] ; 3 uses
  %.not64 = icmp eq ptr %i.mb, null
  br i1 %.not64, label %.thread236, label %bb.bi

bb.bi:                                            ; preds = %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit
  %.sroa.0.0.copyload.i137 = load i64, ptr %i.mb, align 8, !tbaa !1079 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8 ; 2 uses
  %i.md = inttoptr i64 %.sroa.0.0.copyload.i137 to ptr ; 3 uses
  %.fca.0.insert.i138 = insertvalue { ptr, ptr } poison, ptr %i.md, 0
  %.fca.1.insert.i139 = insertvalue { ptr, ptr } %.fca.0.insert.i138, ptr %i.mc, 1 ; 2 uses
  %i.me = and i64 %.sroa.0.0.copyload.i137, 15
  %.not.i.i140 = icmp eq i64 %i.me, 0
  br i1 %.not.i.i140, label %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ParenTypeLocENS_9ParenTypeENS_12ParenLocInfoEE6isKindERKNS_7TypeLocE.exit.i, label %_ZNK5clang7TypeLoc12IgnoreParensEv.exit

_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ParenTypeLocENS_9ParenTypeENS_12ParenLocInfoEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %bb.bi
  %i.mf = load ptr, ptr %i.md, align 16, !tbaa !1084
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load i8, ptr %i.mg, align 16
  %i.mi = icmp eq i8 %i.mh, 38
  br i1 %i.mi, label %bb.bj, label %_ZNK5clang7TypeLoc12IgnoreParensEv.exit

bb.bj:                                            ; preds = %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ParenTypeLocENS_9ParenTypeENS_12ParenLocInfoEE6isKindERKNS_7TypeLocE.exit.i
  %i.mj = call { ptr, ptr } @_ZN5clang7TypeLoc16IgnoreParensImplES0_(ptr nonnull %i.md, ptr nonnull %i.mc) #17
  br label %_ZNK5clang7TypeLoc12IgnoreParensEv.exit

_ZNK5clang7TypeLoc12IgnoreParensEv.exit:          ; preds = %bb.bi, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ParenTypeLocENS_9ParenTypeENS_12ParenLocInfoEE6isKindERKNS_7TypeLocE.exit.i, %bb.bj
  %.fca.1.insert.merged.i = phi { ptr, ptr } [ %i.mj, %bb.bj ], [ %.fca.1.insert.i139, %_ZN5clang15ConcreteTypeLocINS_13UnqualTypeLocENS_12ParenTypeLocENS_9ParenTypeENS_12ParenLocInfoEE6isKindERKNS_7TypeLocE.exit.i ], [ %.fca.1.insert.i139, %bb.bi ] ; 2 uses
  %i.mk = extractvalue { ptr, ptr } %.fca.1.insert.merged.i, 0 ; 3 uses
  %i.ml = extractvalue { ptr, ptr } %.fca.1.insert.merged.i, 1
  %i.mm = ptrtoint ptr %i.mk to i64
  %i.mn = and i64 %i.mm, 15
  %.not.i.i141 = icmp eq i64 %i.mn, 0
  br i1 %.not.i.i141, label %_ZN5clang25InheritingConcreteTypeLocINS_15FunctionTypeLocENS_20FunctionProtoTypeLocENS_17FunctionProtoTypeEE6isKindERKNS_7TypeLocE.exit.i, label %.thread236

_ZN5clang25InheritingConcreteTypeLocINS_15FunctionTypeLocENS_20FunctionProtoTypeLocENS_17FunctionProtoTypeEE6isKindERKNS_7TypeLocE.exit.i: ; preds = %_ZNK5clang7TypeLoc12IgnoreParensEv.exit
  %i.mo = load ptr, ptr %i.mk, align 16, !tbaa !1084
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = load i8, ptr %i.mp, align 16
  %i.mr = icmp eq i8 %i.mq, 24
  br i1 %i.mr, label %bb.bk, label %.thread236

bb.bk:                                            ; preds = %_ZN5clang25InheritingConcreteTypeLocINS_15FunctionTypeLocENS_20FunctionProtoTypeLocENS_17FunctionProtoTypeEE6isKindERKNS_7TypeLocE.exit.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mt = load i64, ptr %i.ms, align 16
  %i.mu = and i64 %i.mt, 4294967296
  %.not244 = icmp eq i64 %i.mu, 0
  br i1 %.not244, label %bb.bl, label %.thread236

bb.bl:                                            ; preds = %bb.bk
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ml, i64 12
  %.sroa.0.0.copyload.i144 = load i32, ptr %i.mv, align 4, !tbaa !710
  %i.mw = call i32 @_ZN5clang4Sema19getLocForEndOfTokenENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.0.0.copyload.i144, i32 noundef 0) #17 ; 2 uses
  %i.mx = icmp eq i32 %i.mw, 0
  br i1 %i.mx, label %.thread236, label %bb.bm

.thread236:                                       ; preds = %_ZNK5clang7TypeLoc12IgnoreParensEv.exit, %_ZN5clang25InheritingConcreteTypeLocINS_15FunctionTypeLocENS_20FunctionProtoTypeLocENS_17FunctionProtoTypeEE6isKindERKNS_7TypeLocE.exit.i, %bb.bk, %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.my = load ptr, ptr %i.a, align 8, !tbaa !1143
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %.sroa.0.0.copyload.i145 = load i32, ptr %i.mz, align 8, !tbaa !710
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, i32 %.sroa.0.0.copyload.i145, i32 noundef %.151) #17
  %i.na = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_12FunctionDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.nb = load ptr, ptr %i.jk, align 8, !tbaa !1274, !nonnull !700, !align !701 ; 2 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !1263
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !1264
  store ptr %i.nc, ptr %18, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.ne, ptr %i.nf, align 8
  %i.ng = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIN4llvm9StringRefEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.na, ptr noundef nonnull align 8 dereferenceable(16) %18) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %i.nh = load ptr, ptr %i.a, align 8, !tbaa !1143
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %.sroa.0.0.copyload.i148 = load i32, ptr %i.ni, align 8, !tbaa !710
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, i32 %.sroa.0.0.copyload.i148, i32 noundef %.151) #17
  %i.nj = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_12FunctionDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.nk = load ptr, ptr %i.jk, align 8, !tbaa !1274, !nonnull !700, !align !701 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !1263
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !1264
end_hunk_0
