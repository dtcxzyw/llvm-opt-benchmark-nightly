Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGExpr?download=true
inline.NumInlined: 11084
inline.NumDeleted: 4867
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5clang7CodeGen15CodeGenFunction26FlattenAccessAndTypeLValueENS0_6LValueERN4llvm15SmallVectorImplIS2_EE:_ZNSt5tupleIJN5clang7CodeGen6LValueENS0_8QualTypeEN4llvm11SmallVectorIPNS4_5ValueELj4EEEEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIRKS2_RKS3_RKS8_EEEbE4typeELb1EEESD_SF_SH_.exit

_ZNK5clang13CXXRecordDecl11getNumBasesEv.exit:    ; preds = %bb.z, %bb.ag, %bb.ah, %bb.ai
  %i.io = getelementptr inbounds nuw i8, ptr %spec.select.i.i163, i64 128
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !1291
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !1477
  %.not147 = icmp eq i32 %i.ir, 0
  br i1 %.not147, label %bb.as, label %bb.aj

bb.aj:                                            ; preds = %_ZNK5clang13CXXRecordDecl11getNumBasesEv.exit
  %i.is = call noundef ptr @_ZNK5clang13CXXRecordDecl11bases_beginEv(ptr noundef nonnull align 8 dereferenceable(144) %spec.select.i.i163)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  store ptr %i.bm, ptr %27, align 8, !tbaa !73
  store i32 0, ptr %i.bn, align 8, !tbaa !711
  store i32 4, ptr %i.bo, align 4, !tbaa !710
  %i.it = load i32, ptr %i.bc, align 8, !tbaa !711 ; 5 uses
  %.not.i.i166 = icmp eq i32 %i.it, 0
  br i1 %.not.i.i166, label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2ERKS3_.exit173, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.iu = icmp ugt i32 %i.it, 4
  br i1 %i.iu, label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i170, label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i167

_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i170: ; preds = %bb.ak
  %i.iv = zext i32 %i.it to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef nonnull %i.bm, i64 noundef %i.iv, i64 noundef 8) #24
  %.pre.i171 = load i32, ptr %i.bc, align 8, !tbaa !711 ; 2 uses
  %.not.i.i.i172 = icmp eq i32 %.pre.i171, 0
  br i1 %.not.i.i.i172, label %.sink.split.i.i169, label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i170._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i167_crit_edge

_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i170._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i167_crit_edge: ; preds = %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i170
  %.pre755 = load ptr, ptr %27, align 8, !tbaa !73
  br label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i167

_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i167: ; preds = %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i170._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i167_crit_edge, %bb.ak
  %i.iw = phi ptr [ %.pre755, %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i170._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i167_crit_edge ], [ %i.bm, %bb.ak ]
  %i.ix = phi i32 [ %.pre.i171, %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i170._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i167_crit_edge ], [ %i.it, %bb.ak ]
  %i.iy = zext i32 %i.ix to i64
  %i.iz = load ptr, ptr %23, align 8, !tbaa !73
  %gepdiff.i.i168 = shl nuw nsw i64 %i.iy, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iw, ptr align 8 %i.iz, i64 %gepdiff.i.i168, i1 false)
  br label %.sink.split.i.i169

.sink.split.i.i169:                               ; preds = %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i167, %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i170
  store i32 %i.it, ptr %i.bn, align 8, !tbaa !711
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2ERKS3_.exit173

_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2ERKS3_.exit173: ; preds = %bb.aj, %.sink.split.i.i169
  %i.ja = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.h, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  %i.jb = load i32, ptr %i.bn, align 8, !tbaa !711 ; 2 uses
  %i.jc = load i32, ptr %i.bo, align 4, !tbaa !710
  %.not.i174 = icmp ult i32 %i.jb, %i.jc
  br i1 %.not.i174, label %bb.am, label %bb.al, !prof !713

bb.al:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2ERKS3_.exit173
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef %i.ja)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit175

bb.am:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2ERKS3_.exit173
  %i.jd = zext i32 %i.jb to i64
  %i.je = load ptr, ptr %27, align 8, !tbaa !73
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.jd
  store ptr %i.ja, ptr %i.jf, align 1
  %i.jg = load i32, ptr %i.bn, align 8, !tbaa !711
  %i.jh = add i32 %i.jg, 1
  store i32 %i.jh, ptr %i.bn, align 8, !tbaa !711
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit175

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit175: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #24
  %i.ji = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !1445
  %.sroa.0.0.copyload.i.i176 = load i64, ptr %i.jj, align 8, !tbaa !712 ; 2 uses
  %i.jk = and i64 %.sroa.0.0.copyload.i.i176, -16
  %i.jl = inttoptr i64 %i.jk to ptr
  %i.jm = load ptr, ptr %i.jl, align 16, !tbaa !723 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.jn, align 8, !tbaa !712
  %i.jo = and i64 %.sroa.0.0.copyload.i.i.i, 15
  %.not.i.i177 = icmp eq i64 %i.jo, 0
  br i1 %.not.i.i177, label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit, label %bb.an

bb.an:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit175
  %i.jp = call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i.i176) #24
  %i.jq = extractvalue { ptr, i64 } %i.jp, 0
  br label %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit

_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit:      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit175, %bb.an
  %.sroa.03.0.in.in.i.i = phi ptr [ %i.jq, %bb.an ], [ %i.jm, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE9push_backES2_.exit175 ]
  %.sroa.03.0.in.i.i = ptrtoint ptr %.sroa.03.0.in.in.i.i to i64
  %.sroa.03.0.i.i = and i64 %.sroa.03.0.in.i.i, -8
  store i64 %.sroa.03.0.i.i, ptr %28, align 8
  %i.jr = load i32, ptr %i.bk, align 8, !tbaa !711 ; 2 uses
  %i.js = load i32, ptr %i.bl, align 4, !tbaa !710
  %.not.i178 = icmp ult i32 %i.jr, %i.js
  br i1 %.not.i178, label %bb.ap, label %bb.ao, !prof !713

bb.ao:                                            ; preds = %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit
  %i.jt = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS_11SmallVectorIPNS_5ValueELj4EEEEELb0EE18growAndEmplaceBackIJRS4_S5_RS9_EEERSA_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(144) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(48) %27) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS_11SmallVectorIPNS_5ValueELj4EEEEEE12emplace_backIJRS4_S5_RS9_EEERSA_DpOT_.exit191

bb.ap:                                            ; preds = %_ZNK5clang16CXXBaseSpecifier7getTypeEv.exit
  %i.ju = zext i32 %i.jr to i64
  %i.jv = load ptr, ptr %26, align 8, !tbaa !73
  %i.jw = getelementptr inbounds nuw [200 x i8], ptr %i.jv, i64 %i.ju ; 9 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16 ; 3 uses
  store ptr %i.jx, ptr %i.jw, align 8, !tbaa !73
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 2 uses
  store i32 0, ptr %i.jy, align 8, !tbaa !711
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 12
  store i32 4, ptr %i.jz, align 4, !tbaa !710
  %i.ka = load i32, ptr %i.bn, align 8, !tbaa !711 ; 5 uses
  %.not.i.i.i.i.i.i.i.i180 = icmp eq i32 %i.ka, 0
  %i.kb = icmp eq ptr %i.jw, %27
  %or.cond.i.i.i.i.i.i.i181 = or i1 %i.kb, %.not.i.i.i.i.i.i.i.i180
  br i1 %or.cond.i.i.i.i.i.i.i181, label %_ZNSt5tupleIJN5clang7CodeGen6LValueENS0_8QualTypeEN4llvm11SmallVectorIPNS4_5ValueELj4EEEEEC2IJRS2_S3_RS8_ELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i185, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kc = icmp ugt i32 %i.ka, 4
  br i1 %i.kc, label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i.i186, label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i.i.i182

_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i.i186: ; preds = %bb.aq
  %i.kd = zext i32 %i.ka to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(200) %i.jw, ptr noundef nonnull %i.jx, i64 noundef %i.kd, i64 noundef 8) #24
  %.pre.i.i.i.i.i.i.i187 = load i32, ptr %i.bn, align 8, !tbaa !711 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i188 = icmp eq i32 %.pre.i.i.i.i.i.i.i187, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i188, label %.sink.split.i.i.i.i.i.i.i.i184, label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i189

_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i189: ; preds = %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i.i186
  %.pre.i.i.i.i.i.i190 = load ptr, ptr %i.jw, align 8, !tbaa !73
  br label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i.i.i182

_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i.i.i182: ; preds = %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i189, %bb.aq
  %i.ke = phi ptr [ %.pre.i.i.i.i.i.i190, %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i189 ], [ %i.jx, %bb.aq ]
  %i.kf = phi i32 [ %.pre.i.i.i.i.i.i.i187, %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i189 ], [ %i.ka, %bb.aq ]
  %i.kg = zext i32 %i.kf to i64
  %i.kh = load ptr, ptr %27, align 8, !tbaa !73
  %gepdiff.i.i.i.i.i.i.i.i183 = shl nuw nsw i64 %i.kg, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ke, ptr align 8 %i.kh, i64 %gepdiff.i.i.i.i.i.i.i.i183, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i184

.sink.split.i.i.i.i.i.i.i.i184:                   ; preds = %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i.i.i182, %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i.i186
  store i32 %i.ka, ptr %i.jy, align 8, !tbaa !711
  br label %_ZNSt5tupleIJN5clang7CodeGen6LValueENS0_8QualTypeEN4llvm11SmallVectorIPNS4_5ValueELj4EEEEEC2IJRS2_S3_RS8_ELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i185

_ZNSt5tupleIJN5clang7CodeGen6LValueENS0_8QualTypeEN4llvm11SmallVectorIPNS4_5ValueELj4EEEEEC2IJRS2_S3_RS8_ELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i185: ; preds = %.sink.split.i.i.i.i.i.i.i.i184, %bb.ap
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jw, i64 48
  %i.kj = load i64, ptr %28, align 8, !tbaa !712
  store i64 %i.kj, ptr %i.ki, align 8, !tbaa !712
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jw, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.kk, ptr noundef nonnull align 8 dereferenceable(144) %i.bf, i64 144, i1 false), !tbaa.struct !1357
  %i.kl = load i32, ptr %i.bk, align 8, !tbaa !711
  %i.km = add i32 %i.kl, 1
  store i32 %i.km, ptr %i.bk, align 8, !tbaa !711
  br label %_ZN4llvm15SmallVectorImplISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS_11SmallVectorIPNS_5ValueELj4EEEEEE12emplace_backIJRS4_S5_RS9_EEERSA_DpOT_.exit191

_ZN4llvm15SmallVectorImplISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS_11SmallVectorIPNS_5ValueELj4EEEEEE12emplace_backIJRS4_S5_RS9_EEERSA_DpOT_.exit191: ; preds = %bb.ao, %_ZNSt5tupleIJN5clang7CodeGen6LValueENS0_8QualTypeEN4llvm11SmallVectorIPNS4_5ValueELj4EEEEEC2IJRS2_S3_RS8_ELb1ETnNSt9enable_ifIXclsr4_TCCIXT0_EEE29__is_implicitly_constructibleIDpT_EEEbE4typeELb1EEEDpOSE_.exit.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24
  %i.kn = load ptr, ptr %27, align 8, !tbaa !73   ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.bm
  br i1 %i.ko, label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit192, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm15SmallVectorImplISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS_11SmallVectorIPNS_5ValueELj4EEEEEE12emplace_backIJRS4_S5_RS9_EEERSA_DpOT_.exit191
  call void @free(ptr noundef %i.kn) #24
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit192

_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit192: ; preds = %_ZN4llvm15SmallVectorImplISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS_11SmallVectorIPNS_5ValueELj4EEEEEE12emplace_backIJRS4_S5_RS9_EEERSA_DpOT_.exit191, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  br label %bb.as

bb.as:                                            ; preds = %bb.u, %_ZNK5clang13CXXRecordDecl11getNumBasesEv.exit, %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit192, %bb.x
  %.0132706 = phi ptr [ %.0132.ph, %_ZNK5clang13CXXRecordDecl11getNumBasesEv.exit ], [ %.0132.ph, %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit192 ], [ %.0132.ph, %bb.x ], [ %spec.select.i.i163, %bb.u ] ; 2 uses
  %i.kp = load ptr, ptr %i.d, align 8, !tbaa !306, !nonnull !71, !align !307
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 400
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !1215
  %i.ks = call noundef nonnull align 8 dereferenceable(113) ptr @_ZN5clang7CodeGen12CodeGenTypes17getCGRecordLayoutEPKNS_10RecordDeclE(ptr noundef nonnull align 8 dereferenceable(232) %i.kr, ptr noundef %.0132706) #24 ; 3 uses
  %.sroa.060.0.copyload = load i64, ptr %i.be, align 8, !tbaa !712
  %i.kt = call noundef ptr @_ZN5clang7CodeGen15CodeGenFunction17ConvertTypeForMemENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(6288) %0, i64 %.sroa.060.0.copyload) #24
  %i.ku = load ptr, ptr %i.d, align 8, !tbaa !306, !nonnull !71, !align !307
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 144
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !714, !nonnull !71, !align !307
  %.sroa.058.0.copyload = load i64, ptr %i.be, align 8, !tbaa !712
  %i.kx = call i64 @_ZNK5clang10ASTContext19getTypeAlignInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.kw, i64 %.sroa.058.0.copyload) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8582)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.8582.7..sroa_idx846, i8 0, i64 16, i1 false), !alias.scope !3721
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.20.4..sroa_idx845, i8 0, i64 32, i1 false)
  %i.ky = call ptr @_ZNK5clang10RecordDecl11field_beginEv(ptr noundef nonnull align 8 dereferenceable(128) %.0132706) #24 ; 2 uses
  %.not710717 = icmp eq ptr %i.ky, null
  br i1 %.not710717, label %._crit_edge, label %.lr.ph729

.lr.ph729:                                        ; preds = %bb.as
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.la = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ks, i64 36
  br label %bb.bs

._crit_edge:                                      ; preds = %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit, %bb.as
  %i.lc = load i32, ptr %i.bk, align 8, !tbaa !711 ; 3 uses
  %switch = icmp ult i32 %i.lc, 2
  br i1 %switch, label %_ZSt7reverseIPSt5tupleIJN5clang7CodeGen6LValueENS1_8QualTypeEN4llvm11SmallVectorIPNS5_5ValueELj4EEEEEEvT_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge
  %42 = load ptr, ptr %26, align 8, !tbaa !73     ; 2 uses
  %i.ld = zext i32 %i.lc to i64
  %.idx = mul nuw nsw i64 %i.ld, 200
  %i.le = getelementptr inbounds nuw i8, ptr %42, i64 %.idx ; 2 uses
  %.012.i.i = getelementptr inbounds i8, ptr %i.le, i64 -200
  br label %bb.at

bb.at:                                            ; preds = %_ZSt9iter_swapIPSt5tupleIJN5clang7CodeGen6LValueENS1_8QualTypeEN4llvm11SmallVectorIPNS5_5ValueELj4EEEEESB_EvT_T0_.exit.i.i, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %.012.i.i, %.lr.ph.i.i ], [ %.0.i.i, %_ZSt9iter_swapIPSt5tupleIJN5clang7CodeGen6LValueENS1_8QualTypeEN4llvm11SmallVectorIPNS5_5ValueELj4EEEEESB_EvT_T0_.exit.i.i ] ; 23 uses
  %.pn14.i.i = phi ptr [ %i.le, %.lr.ph.i.i ], [ %.015.i.i, %_ZSt9iter_swapIPSt5tupleIJN5clang7CodeGen6LValueENS1_8QualTypeEN4llvm11SmallVectorIPNS5_5ValueELj4EEEEESB_EvT_T0_.exit.i.i ] ; 2 uses
  %.0913.i.i = phi ptr [ %42, %.lr.ph.i.i ], [ %i.nk, %_ZSt9iter_swapIPSt5tupleIJN5clang7CodeGen6LValueENS1_8QualTypeEN4llvm11SmallVectorIPNS5_5ValueELj4EEEEESB_EvT_T0_.exit.i.i ] ; 15 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 56 ; 2 uses
  %i.lg = getelementptr inbounds i8, ptr %.pn14.i.i, i64 -144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %19, ptr noundef nonnull align 8 dereferenceable(144) %i.lf, i64 144, i1 false), !tbaa.struct !1357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.lf, ptr noundef nonnull align 8 dereferenceable(144) %i.lg, i64 144, i1 false), !tbaa.struct !1357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.lg, ptr noundef nonnull align 8 dereferenceable(144) %19, i64 144, i1 false), !tbaa.struct !1357
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.lh = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 48 ; 2 uses
  %i.li = getelementptr inbounds i8, ptr %.pn14.i.i, i64 -152 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.lh, align 8, !tbaa !712
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !712
  store i64 %i.lj, ptr %i.lh, align 8, !tbaa !712
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %i.li, align 8, !tbaa !712
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  store ptr %i.cj, ptr %18, align 8, !tbaa !73
  store i32 0, ptr %i.ck, align 8, !tbaa !711
  store i32 4, ptr %i.cl, align 4, !tbaa !710
  %i.lk = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 8 ; 6 uses
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !711
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ll, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2EOS3_.exit.i.i.i.i.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(200) %.0913.i.i) ; 0 uses
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2EOS3_.exit.i.i.i.i.i.i.i.i.i

_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2EOS3_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.au, %bb.at
  %43 = icmp eq ptr %.0913.i.i, %.015.i.i
  br i1 %43, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_.exit375, label %bb.av

bb.av:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2EOS3_.exit.i.i.i.i.i.i.i.i.i
  %i.ln = load ptr, ptr %.015.i.i, align 8, !tbaa !73 ; 6 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16 ; 2 uses
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lq = load ptr, ptr %.0913.i.i, align 8, !tbaa !73 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 16
  %i.ls = icmp eq ptr %i.lq, %i.lr
  br i1 %i.ls, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE12assignRemoteEOS3_.exit.i362, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef %i.lq) #24
  %.pre.i361 = load ptr, ptr %.015.i.i, align 8, !tbaa !73
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE12assignRemoteEOS3_.exit.i362

_ZN4llvm15SmallVectorImplIPNS_5ValueEE12assignRemoteEOS3_.exit.i362: ; preds = %bb.ax, %bb.aw
  %i.lt = phi ptr [ %i.ln, %bb.aw ], [ %.pre.i361, %bb.ax ]
  store ptr %i.lt, ptr %.0913.i.i, align 8, !tbaa !73
  %i.lu = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 12
  %i.lw = load <2 x i32>, ptr %i.lu, align 8, !tbaa !1099
  store <2 x i32> %i.lw, ptr %i.lk, align 8, !tbaa !1099
  store ptr %i.lo, ptr %.015.i.i, align 8, !tbaa !73
  store i32 0, ptr %i.lv, align 4, !tbaa !710
  store i32 0, ptr %i.lu, align 8, !tbaa !711
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_.exit375

bb.ay:                                            ; preds = %bb.av
  %i.lx = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8 ; 4 uses
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !711 ; 6 uses
  %i.lz = zext i32 %i.ly to i64                   ; 2 uses
  %i.ma = load i32, ptr %i.lk, align 8, !tbaa !711 ; 4 uses
  %i.mb = zext i32 %i.ma to i64                   ; 2 uses
  %.not.i363 = icmp ult i32 %i.ma, %i.ly
  br i1 %.not.i363, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mc = load ptr, ptr %.0913.i.i, align 8, !tbaa !73 ; 2 uses
  switch i32 %i.ly, label %bb.ba [
    i32 0, label %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit.i364
    i32 1, label %bb.bb
  ], !prof !1478

bb.ba:                                            ; preds = %bb.az
  %.idx.i365 = shl nuw nsw i64 %i.lz, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.mc, ptr align 8 %i.ln, i64 %.idx.i365, i1 false)
  br label %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit.i364

bb.bb:                                            ; preds = %bb.az
  %i.md = load ptr, ptr %i.ln, align 8, !tbaa !1123
  store ptr %i.md, ptr %i.mc, align 8, !tbaa !1123
  br label %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit.i364

_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit.i364: ; preds = %bb.bb, %bb.ba, %bb.az
  store i32 %i.ly, ptr %i.lk, align 8, !tbaa !711
  store i32 0, ptr %i.lx, align 8, !tbaa !711
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_.exit375

bb.bc:                                            ; preds = %bb.ay
  %i.me = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 12
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !710
  %i.mg = icmp ult i32 %i.mf, %i.ly
  br i1 %i.mg, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.lk, align 8, !tbaa !711
  %i.mh = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(200) %.0913.i.i, ptr noundef nonnull %i.mh, i64 noundef %i.lz, i64 noundef 8) #24
  br label %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i369

bb.be:                                            ; preds = %bb.bc
  %.not32.i366 = icmp eq i32 %i.ma, 0
  br i1 %.not32.i366, label %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i369, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mi = load ptr, ptr %.0913.i.i, align 8, !tbaa !73 ; 2 uses
  %.not37.i367 = icmp eq i32 %i.ma, 1
  br i1 %.not37.i367, label %bb.bh, label %bb.bg, !prof !1433

bb.bg:                                            ; preds = %bb.bf
  %.idx36.i368 = shl nuw nsw i64 %i.mb, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.mi, ptr align 8 %i.ln, i64 %.idx36.i368, i1 false)
  br label %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i369

bb.bh:                                            ; preds = %bb.bf
  %i.mj = load ptr, ptr %i.ln, align 8, !tbaa !1123
  store ptr %i.mj, ptr %i.mi, align 8, !tbaa !1123
  br label %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i369

_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i369: ; preds = %bb.bh, %bb.bg, %bb.be, %bb.bd
  %.026.i370 = phi i64 [ 0, %bb.bd ], [ 0, %bb.be ], [ %i.mb, %bb.bg ], [ 1, %bb.bh ] ; 4 uses
  %i.mk = load i32, ptr %i.lx, align 8, !tbaa !711
  %i.ml = zext i32 %i.mk to i64                   ; 2 uses
  %.not.i.i.i371 = icmp samesign eq i64 %.026.i370, %i.ml
  br i1 %.not.i.i.i371, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i374, label %bb.bi

bb.bi:                                            ; preds = %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i369
  %i.mm = load ptr, ptr %.015.i.i, align 8, !tbaa !73
  %.idx39.i372 = shl nuw nsw i64 %.026.i370, 3
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 %.idx39.i372
  %i.mo = load ptr, ptr %.0913.i.i, align 8, !tbaa !73
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %.026.i370
  %i.mq = sub nsw i64 %i.ml, %.026.i370
  %gepdiff.i373 = shl nsw i64 %i.mq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mp, ptr align 8 %i.mn, i64 %gepdiff.i373, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i374

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i374: ; preds = %bb.bi, %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i369
  store i32 %i.ly, ptr %i.lk, align 8, !tbaa !711
  store i32 0, ptr %i.lx, align 8, !tbaa !711
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_.exit375

_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_.exit375: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2EOS3_.exit.i.i.i.i.i.i.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE12assignRemoteEOS3_.exit.i362, %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit.i364, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i374
  %i.mr = icmp eq ptr %.015.i.i, %18
  br i1 %i.mr, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_.exit375
  %i.ms = load ptr, ptr %18, align 8, !tbaa !73   ; 6 uses
  %i.mt = icmp eq ptr %i.ms, %i.cj
  br i1 %i.mt, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mu = load ptr, ptr %.015.i.i, align 8, !tbaa !73 ; 2 uses
  %44 = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16
  %i.mv = icmp eq ptr %i.mu, %44
  br i1 %i.mv, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE12assignRemoteEOS3_.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @free(ptr noundef %i.mu) #24
  %.pre.i357 = load ptr, ptr %18, align 8, !tbaa !73
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE12assignRemoteEOS3_.exit.i

_ZN4llvm15SmallVectorImplIPNS_5ValueEE12assignRemoteEOS3_.exit.i: ; preds = %bb.bl, %bb.bk
  %i.mw = phi ptr [ %i.ms, %bb.bk ], [ %.pre.i357, %bb.bl ]
  %i.mx = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8
  store ptr %i.mw, ptr %.015.i.i, align 8, !tbaa !73
  %i.my = load <2 x i32>, ptr %i.ck, align 8, !tbaa !1099
  store <2 x i32> %i.my, ptr %i.mx, align 8, !tbaa !1099
  store ptr %i.cj, ptr %18, align 8, !tbaa !73
  store i32 0, ptr %i.cl, align 4, !tbaa !710
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_.exit.sink.split

bb.bm:                                            ; preds = %bb.bj
  %i.mz = load i32, ptr %i.ck, align 8, !tbaa !711 ; 6 uses
  %i.na = zext i32 %i.mz to i64                   ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8 ; 4 uses
  %45 = load i32, ptr %i.nb, align 8, !tbaa !711  ; 4 uses
  %46 = zext i32 %45 to i64                       ; 2 uses
  %.not.i358 = icmp ult i32 %45, %i.mz
  br i1 %.not.i358, label %bb.bn, label %47

47:                                               ; preds = %bb.bm
  %48 = load ptr, ptr %.015.i.i, align 8, !tbaa !73 ; 2 uses
  switch i32 %i.mz, label %49 [
    i32 0, label %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit.i
    i32 1, label %50
  ], !prof !1478

49:                                               ; preds = %47
  %.idx.i359 = shl nuw nsw i64 %i.na, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %48, ptr align 8 %i.ms, i64 %.idx.i359, i1 false)
  br label %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit.i

50:                                               ; preds = %47
  %51 = load ptr, ptr %i.ms, align 8, !tbaa !1123
  store ptr %51, ptr %48, align 8, !tbaa !1123
  br label %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit.i

_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit.i:  ; preds = %50, %49, %47
  store i32 %i.mz, ptr %i.nb, align 8, !tbaa !711
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_.exit.sink.split

bb.bn:                                            ; preds = %bb.bm
  %i.nc = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 12
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !710
  %i.ne = icmp ult i32 %i.nd, %i.mz
  br i1 %i.ne, label %52, label %54

52:                                               ; preds = %bb.bn
  store i32 0, ptr %i.nb, align 8, !tbaa !711
  %53 = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(200) %.015.i.i, ptr noundef nonnull %53, i64 noundef %i.na, i64 noundef 8) #24
  br label %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i

54:                                               ; preds = %bb.bn
  %.not32.i = icmp eq i32 %45, 0
  br i1 %.not32.i, label %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i, label %55

55:                                               ; preds = %54
  %56 = load ptr, ptr %.015.i.i, align 8, !tbaa !73 ; 2 uses
  %.not37.i = icmp eq i32 %45, 1
  br i1 %.not37.i, label %58, label %57, !prof !1433

57:                                               ; preds = %55
  %.idx36.i = shl nuw nsw i64 %46, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %56, ptr align 8 %i.ms, i64 %.idx36.i, i1 false)
  br label %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i

58:                                               ; preds = %55
  %59 = load ptr, ptr %i.ms, align 8, !tbaa !1123
  store ptr %59, ptr %56, align 8, !tbaa !1123
  br label %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i

_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i: ; preds = %58, %57, %54, %52
  %.026.i = phi i64 [ 0, %52 ], [ 0, %54 ], [ %46, %57 ], [ 1, %58 ] ; 4 uses
  %i.nf = load i32, ptr %i.ck, align 8, !tbaa !711
  %i.ng = zext i32 %i.nf to i64                   ; 2 uses
  %.not.i.i.i360 = icmp samesign eq i64 %.026.i, %i.ng
  br i1 %.not.i.i.i360, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, label %bb.bo

bb.bo:                                            ; preds = %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i
  %60 = load ptr, ptr %18, align 8, !tbaa !73
  %.idx39.i = shl nuw nsw i64 %.026.i, 3
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 %.idx39.i
  %i.nh = load ptr, ptr %.015.i.i, align 8, !tbaa !73
  %62 = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %.026.i
  %63 = sub nsw i64 %i.ng, %.026.i
  %gepdiff.i = shl nsw i64 %63, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %62, ptr align 8 %61, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i: ; preds = %bb.bo, %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit34.i
  store i32 %i.mz, ptr %i.nb, align 8, !tbaa !711
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_.exit.sink.split

_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_.exit.sink.split: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, %_ZSt4moveIPPN4llvm5ValueES3_ET0_T_S5_S4_.exit.i, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE12assignRemoteEOS3_.exit.i
  store i32 0, ptr %i.ck, align 8, !tbaa !711
  br label %_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_.exit

_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_.exit: ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_.exit.sink.split, %_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_.exit375
  %i.ni = load ptr, ptr %18, align 8, !tbaa !73   ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.cj
  br i1 %i.nj, label %_ZSt9iter_swapIPSt5tupleIJN5clang7CodeGen6LValueENS1_8QualTypeEN4llvm11SmallVectorIPNS5_5ValueELj4EEEEESB_EvT_T0_.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_.exit
  call void @free(ptr noundef %i.ni) #24
  br label %_ZSt9iter_swapIPSt5tupleIJN5clang7CodeGen6LValueENS1_8QualTypeEN4llvm11SmallVectorIPNS5_5ValueELj4EEEEESB_EvT_T0_.exit.i.i

_ZSt9iter_swapIPSt5tupleIJN5clang7CodeGen6LValueENS1_8QualTypeEN4llvm11SmallVectorIPNS5_5ValueELj4EEEEESB_EvT_T0_.exit.i.i: ; preds = %bb.bp, %_ZN4llvm15SmallVectorImplIPNS_5ValueEEaSEOS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  %i.nk = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 200 ; 2 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.015.i.i, i64 -200 ; 2 uses
  %i.nl = icmp ult ptr %i.nk, %.0.i.i
  br i1 %i.nl, label %bb.at, label %_ZSt7reverseIPSt5tupleIJN5clang7CodeGen6LValueENS1_8QualTypeEN4llvm11SmallVectorIPNS5_5ValueELj4EEEEEEvT_SC_.exit.loopexit, !llvm.loop !3671

_ZSt7reverseIPSt5tupleIJN5clang7CodeGen6LValueENS1_8QualTypeEN4llvm11SmallVectorIPNS5_5ValueELj4EEEEEEvT_SC_.exit.loopexit: ; preds = %_ZSt9iter_swapIPSt5tupleIJN5clang7CodeGen6LValueENS1_8QualTypeEN4llvm11SmallVectorIPNS5_5ValueELj4EEEEESB_EvT_T0_.exit.i.i
  %.pre757 = load i32, ptr %i.bk, align 8, !tbaa !711
  br label %_ZSt7reverseIPSt5tupleIJN5clang7CodeGen6LValueENS1_8QualTypeEN4llvm11SmallVectorIPNS5_5ValueELj4EEEEEEvT_SC_.exit

_ZSt7reverseIPSt5tupleIJN5clang7CodeGen6LValueENS1_8QualTypeEN4llvm11SmallVectorIPNS5_5ValueELj4EEEEEEvT_SC_.exit: ; preds = %_ZSt7reverseIPSt5tupleIJN5clang7CodeGen6LValueENS1_8QualTypeEN4llvm11SmallVectorIPNS5_5ValueELj4EEEEEEvT_SC_.exit.loopexit, %._crit_edge
  %i.nm = phi i32 [ %.pre757, %_ZSt7reverseIPSt5tupleIJN5clang7CodeGen6LValueENS1_8QualTypeEN4llvm11SmallVectorIPNS5_5ValueELj4EEEEEEvT_SC_.exit.loopexit ], [ %i.lc, %._crit_edge ]
  %i.nn = load ptr, ptr %20, align 8, !tbaa !73
  %i.no = load i32, ptr %i.b, align 8, !tbaa !711
  %i.np = zext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw [200 x i8], ptr %i.nn, i64 %i.np
  %64 = load ptr, ptr %26, align 8, !tbaa !73     ; 2 uses
  %i.nr = zext i32 %i.nm to i64
  %i.ns = getelementptr inbounds nuw [200 x i8], ptr %64, i64 %i.nr
  %i.nt = call noundef ptr @_ZN4llvm15SmallVectorImplISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS_11SmallVectorIPNS_5ValueELj4EEEEEE6insertIPSA_vEESD_SD_T_SE_(ptr noundef nonnull align 8 dereferenceable(3216) %20, ptr noundef %i.nq, ptr noundef %64, ptr noundef %i.ns) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8582)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  %i.nu = load ptr, ptr %26, align 8, !tbaa !73   ; 3 uses
  %i.nv = load i32, ptr %i.bk, align 8, !tbaa !711 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.nv, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS_11SmallVectorIPNS_5ValueELj4EEEEELb0EE13destroy_rangeEPSA_SC_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZSt7reverseIPSt5tupleIJN5clang7CodeGen6LValueENS1_8QualTypeEN4llvm11SmallVectorIPNS5_5ValueELj4EEEEEEvT_SC_.exit
  %i.nw = zext i32 %i.nv to i64
  %.idx.i = mul nuw nsw i64 %i.nw, 200
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 %.idx.i
  br label %.lr.ph.i.i196

.lr.ph.i.i196:                                    ; preds = %_ZNSt10_Head_baseILm2EN4llvm11SmallVectorIPNS0_5ValueELj4EEELb0EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.ny, %_ZNSt10_Head_baseILm2EN4llvm11SmallVectorIPNS0_5ValueELj4EEELb0EED2Ev.exit.i.i ], [ %i.nx, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.ny = getelementptr inbounds i8, ptr %.05.i.i, i64 -200 ; 3 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !73 ; 2 uses
  %i.oa = getelementptr inbounds i8, ptr %.05.i.i, i64 -184
  %i.ob = icmp eq ptr %i.nz, %i.oa
  br i1 %i.ob, label %_ZNSt10_Head_baseILm2EN4llvm11SmallVectorIPNS0_5ValueELj4EEELb0EED2Ev.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i196
  call void @free(ptr noundef %i.nz) #24
  br label %_ZNSt10_Head_baseILm2EN4llvm11SmallVectorIPNS0_5ValueELj4EEELb0EED2Ev.exit.i.i

_ZNSt10_Head_baseILm2EN4llvm11SmallVectorIPNS0_5ValueELj4EEELb0EED2Ev.exit.i.i: ; preds = %bb.bq, %.lr.ph.i.i196
  %.not.i.i197 = icmp eq ptr %i.nu, %i.ny
  br i1 %.not.i.i197, label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS_11SmallVectorIPNS_5ValueELj4EEEEELb0EE13destroy_rangeEPSA_SC_.exit.loopexit.i, label %.lr.ph.i.i196, !llvm.loop !50

_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS_11SmallVectorIPNS_5ValueELj4EEEEELb0EE13destroy_rangeEPSA_SC_.exit.loopexit.i: ; preds = %_ZNSt10_Head_baseILm2EN4llvm11SmallVectorIPNS0_5ValueELj4EEELb0EED2Ev.exit.i.i
  %.pre.i198 = load ptr, ptr %26, align 8, !tbaa !73
  br label %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS_11SmallVectorIPNS_5ValueELj4EEEEELb0EE13destroy_rangeEPSA_SC_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS_11SmallVectorIPNS_5ValueELj4EEEEELb0EE13destroy_rangeEPSA_SC_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS_11SmallVectorIPNS_5ValueELj4EEEEELb0EE13destroy_rangeEPSA_SC_.exit.loopexit.i, %_ZSt7reverseIPSt5tupleIJN5clang7CodeGen6LValueENS1_8QualTypeEN4llvm11SmallVectorIPNS5_5ValueELj4EEEEEEvT_SC_.exit
  %i.oc = phi ptr [ %.pre.i198, %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS_11SmallVectorIPNS_5ValueELj4EEEEELb0EE13destroy_rangeEPSA_SC_.exit.loopexit.i ], [ %i.nu, %_ZSt7reverseIPSt5tupleIJN5clang7CodeGen6LValueENS1_8QualTypeEN4llvm11SmallVectorIPNS5_5ValueELj4EEEEEEvT_SC_.exit ] ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.bj
  br i1 %i.od, label %_ZN4llvm11SmallVectorISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS0_IPNS_5ValueELj4EEEEELj16EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS_11SmallVectorIPNS_5ValueELj4EEEEELb0EE13destroy_rangeEPSA_SC_.exit.i
  call void @free(ptr noundef %i.oc) #24
  br label %_ZN4llvm11SmallVectorISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS0_IPNS_5ValueELj4EEEEELj16EED2Ev.exit

_ZN4llvm11SmallVectorISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS0_IPNS_5ValueELj4EEEEELj16EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJN5clang7CodeGen6LValueENS2_8QualTypeENS_11SmallVectorIPNS_5ValueELj4EEEEELb0EE13destroy_rangeEPSA_SC_.exit.i, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  br label %_ZN4llvm15SmallVectorImplIN5clang7CodeGen6LValueEE12emplace_backIJRS3_EEES6_DpOT_.exit344

bb.bs:                                            ; preds = %.lr.ph729, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit
  %.0135728 = phi i1 [ false, %.lr.ph729 ], [ %.3, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit ] ; 3 uses
  %.sroa.0575.0727 = phi ptr [ %i.ky, %.lr.ph729 ], [ %.sroa.0575.2, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit ] ; 9 uses
  %.sroa.18.0724 = phi i32 [ 0, %.lr.ph729 ], [ %.sroa.18.2, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit ] ; 3 uses
  %.sroa.13586.0722 = phi i64 [ 0, %.lr.ph729 ], [ %.sroa.13586.2, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit ] ; 3 uses
  %.sroa.12585.0721 = phi i64 [ 0, %.lr.ph729 ], [ %.sroa.12585.2, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit ] ; 3 uses
  %.sroa.4580.sroa.7.0720 = phi i64 [ 0, %.lr.ph729 ], [ %.sroa.4580.sroa.7.2, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit ] ; 3 uses
  %.sroa.4580.sroa.6.0719 = phi ptr [ null, %.lr.ph729 ], [ %.sroa.4580.sroa.6.2, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit ] ; 3 uses
  %.sroa.4580.sroa.4.0718 = phi i64 [ 0, %.lr.ph729 ], [ %.sroa.4580.sroa.4.2, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit ] ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0575.0727, i64 68
  %i.of = load i32, ptr %i.oe, align 4
  %i.og = trunc i32 %i.of to i1
  br i1 %i.og, label %bb.bt, label %bb.cd

bb.bt:                                            ; preds = %bb.bs
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0575.0727, i64 40
  %.sroa.0.0.copyload.i.i199 = load i64, ptr %i.oh, align 8
  %.not.i200 = icmp eq i64 %.sroa.0.0.copyload.i.i199, 0
  br i1 %.not.i200, label %bb.cp, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  br i1 %.0135728, label %_ZNSt5tupleIJN5clang7CodeGen6LValueENS0_8QualTypeEN4llvm11SmallVectorIPNS4_5ValueELj4EEEEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIRKS2_RKS3_RKS8_EEEbE4typeELb1EEESD_SF_SH_.exit211, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.sroa.0598.0.copyload = load i64, ptr %i.bs, align 8, !tbaa !712
  %.sroa.2599.0.copyload = load ptr, ptr %.sroa.2599.0..sroa_idx, align 8, !tbaa !691 ; 2 uses
  %i.oi = load ptr, ptr %23, align 8, !tbaa !73   ; 2 uses
  %i.oj = load i32, ptr %i.bc, align 8, !tbaa !711
  %i.ok = zext i32 %i.oj to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  store i8 1, ptr %i.bu, align 1, !tbaa !717
  store ptr @.str.80, ptr %29, align 8, !tbaa !712
  store i8 3, ptr %i.bt, align 8, !tbaa !718
  %.sroa.09.0.copyload.fr.i = freeze i64 %.sroa.0598.0.copyload ; 2 uses
  %i.ol = and i64 %.sroa.09.0.copyload.fr.i, -8
  %i.om = inttoptr i64 %i.ol to ptr               ; 2 uses
  %i.on = load ptr, ptr %i.bv, align 8, !tbaa !1155, !noalias !3722, !nonnull !71, !align !307 ; 2 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !65, !noalias !3722
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 64
  %i.oq = load ptr, ptr %i.op, align 8, !noalias !3722
  %i.or = call noundef ptr %i.oq(ptr noundef nonnull align 8 dereferenceable(8) %i.on, ptr noundef %.sroa.2599.0.copyload, ptr noundef %i.om, ptr %i.oi, i64 %i.ok, i32 3) #24, !noalias !3722, !inline_history !3674 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.or, null
  br i1 %.not.not.i.i.i, label %bb.bw, label %_ZN5clang7CodeGen11CGBuilderTy17CreateInBoundsGEPENS0_7AddressEN4llvm8ArrayRefIPNS3_5ValueEEEPNS3_4TypeENS_9CharUnitsERKNS3_5TwineE.exit

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24, !noalias !3722
  store i16 257, ptr %i.bx, align 8, !noalias !3722
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !3722
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false), !noalias !3722
  %i.os = call noundef ptr @_ZN4llvm17GetElementPtrInst6CreateEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14InsertPositionE(ptr noundef %.sroa.2599.0.copyload, ptr noundef %i.om, ptr %i.oi, i64 %i.ok, ptr noundef nonnull align 8 dereferenceable(34) %17, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %16), !noalias !3722 ; 4 uses
  call void @_ZN4llvm17GetElementPtrInst14setNoWrapFlagsENS_14GEPNoWrapFlagsE(ptr noundef nonnull align 8 dereferenceable(88) %i.os, i32 3) #24, !noalias !3722
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !3722
  %i.ot = load ptr, ptr %i.by, align 8, !tbaa !705, !noalias !3722, !nonnull !71, !align !307 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bz, align 8, !noalias !3722
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !3722
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !65, !noalias !3722
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8, !noalias !3722
  call void %i.ow(ptr noundef nonnull align 8 dereferenceable(8) %i.ot, ptr noundef nonnull %i.os, ptr noundef nonnull align 8 dereferenceable(34) %29, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i) #24, !noalias !3722, !inline_history !3675
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(128) %i.bw, ptr noundef nonnull %i.os) #24, !noalias !3722
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24, !noalias !3722
  br label %_ZN5clang7CodeGen11CGBuilderTy17CreateInBoundsGEPENS0_7AddressEN4llvm8ArrayRefIPNS3_5ValueEEEPNS3_4TypeENS_9CharUnitsERKNS3_5TwineE.exit

_ZN5clang7CodeGen11CGBuilderTy17CreateInBoundsGEPENS0_7AddressEN4llvm8ArrayRefIPNS3_5ValueEEEPNS3_4TypeENS_9CharUnitsERKNS3_5TwineE.exit: ; preds = %bb.bv, %bb.bw
  %.1.i.i.i = phi ptr [ %i.os, %bb.bw ], [ %i.or, %bb.bv ] ; 2 uses
  %i.ox = and i64 %.sroa.09.0.copyload.fr.i, 4
  %i.oy = ptrtoint ptr %.1.i.i.i to i64
  %i.oz = and i64 %i.oy, -8
  %i.pa = or disjoint i64 %i.oz, %i.ox
  %i.pb = icmp ugt ptr %.1.i.i.i, inttoptr (i64 7 to ptr) ; 3 uses
  %.sink10.i.i = select i1 %i.pb, i64 %i.pa, i64 0
  %.sink.i.i = select i1 %i.pb, ptr %i.kt, ptr null
  %storemerge.i.i = select i1 %i.pb, i64 %i.kx, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.5572.7..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.047.0.copyload = load i64, ptr %i.be, align 8, !tbaa !712 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.pc = load ptr, ptr %i.d, align 8, !tbaa !306, !noalias !3723, !nonnull !71, !align !307
  call void @_ZN5clang7CodeGen13CodeGenModule17getTBAAAccessInfoENS_8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.clang::CodeGen::TBAAAccessInfo") align 8 %15, ptr noundef nonnull align 8 dereferenceable(4008) %i.pc, i64 %.sroa.047.0.copyload) #24, !noalias !3723
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4607)
  %.sroa.0606.0.copyload = load i32, ptr %15, align 8, !noalias !3723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4607, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4607.0..sroa_idx, i64 36, i1 false), !noalias !3723
  %i.pd = load ptr, ptr %i.d, align 8, !tbaa !306, !noalias !3724, !nonnull !71, !align !307
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 144
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !714, !noalias !3724, !nonnull !71, !align !307
  %i.pg = and i64 %.sroa.047.0.copyload, -16
  %i.ph = inttoptr i64 %i.pg to ptr
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.pi, align 8, !noalias !3725 ; 3 uses
  %i.pj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.pj, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZN5clang7CodeGen11CGBuilderTy17CreateInBoundsGEPENS0_7AddressEN4llvm8ArrayRefIPNS3_5ValueEEEPNS3_4TypeENS_9CharUnitsERKNS3_5TwineE.exit
  %i.pk = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -16
  %i.pl = inttoptr i64 %i.pk to ptr
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.pm, align 8, !tbaa !704, !noalias !3725
  %i.pn = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -49
  br label %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit

_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit: ; preds = %_ZN5clang7CodeGen11CGBuilderTy17CreateInBoundsGEPENS0_7AddressEN4llvm8ArrayRefIPNS3_5ValueEEEPNS3_4TypeENS_9CharUnitsERKNS3_5TwineE.exit, %bb.bx
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.pn, %bb.bx ], [ 0, %_ZN5clang7CodeGen11CGBuilderTy17CreateInBoundsGEPENS0_7AddressEN4llvm8ArrayRefIPNS3_5ValueEEEPNS3_4TypeENS_9CharUnitsERKNS3_5TwineE.exit ]
  %i.po = or i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, %.sroa.047.0.copyload
  %i.pp = and i64 %i.po, 7
  %i.pq = call noundef i32 @_ZNK5clang10ASTContext17getObjCGCAttrKindENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.pf, i64 %.sroa.047.0.copyload) #24, !noalias !3725
  %i.pr = or i64 %.sroa.0.0.i.i.i.i.i.i, %i.pp
  %i.ps = shl i32 %i.pq, 4
  %i.pt = sext i32 %i.ps to i64
  %i.pu = or i64 %i.pr, %i.pt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.20, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4607, i64 36, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.8582, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5572, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4607)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %_ZNSt5tupleIJN5clang7CodeGen6LValueENS0_8QualTypeEN4llvm11SmallVectorIPNS4_5ValueELj4EEEEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIRKS2_RKS3_RKS8_EEEbE4typeELb1EEESD_SF_SH_.exit211

_ZNSt5tupleIJN5clang7CodeGen6LValueENS0_8QualTypeEN4llvm11SmallVectorIPNS4_5ValueELj4EEEEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIRKS2_RKS3_RKS8_EEEbE4typeELb1EEESD_SF_SH_.exit211: ; preds = %bb.bu, %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit
  %.sroa.4580.sroa.4.1 = phi i64 [ %.sroa.4580.sroa.4.0718, %bb.bu ], [ %.sink10.i.i, %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ] ; 2 uses
  %.sroa.4580.sroa.6.1 = phi ptr [ %.sroa.4580.sroa.6.0719, %bb.bu ], [ %.sink.i.i, %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ] ; 2 uses
  %.sroa.4580.sroa.7.1 = phi i64 [ %.sroa.4580.sroa.7.0720, %bb.bu ], [ %storemerge.i.i, %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ] ; 2 uses
  %.sroa.12585.1 = phi i64 [ %.sroa.12585.0721, %bb.bu ], [ %.sroa.047.0.copyload, %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ] ; 2 uses
  %.sroa.13586.1 = phi i64 [ %.sroa.13586.0722, %bb.bu ], [ %i.pu, %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ] ; 2 uses
  %.sroa.18.1 = phi i32 [ %.sroa.18.0724, %bb.bu ], [ %.sroa.0606.0.copyload, %_ZN5clang7CodeGen15CodeGenFunction14MakeAddrLValueENS0_7AddressENS_8QualTypeENS0_15AlignmentSourceE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  store i32 0, ptr %31, align 8, !tbaa !1149
  store i64 %.sroa.4580.sroa.4.1, ptr %.sroa.4580.sroa.4.0..sroa.4580.0..sroa_idx.sroa_idx, align 8
  store ptr %.sroa.4580.sroa.6.1, ptr %.sroa.4580.sroa.6.0..sroa.4580.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.4580.sroa.7.1, ptr %.sroa.4580.sroa.7.0..sroa.4580.0..sroa_idx.sroa_idx, align 8
  store i8 0, ptr %.sroa.6581.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.8582.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.8582, i64 23, i1 false), !tbaa.struct !1369
  store i64 0, ptr %.sroa.10584.0..sroa_idx, align 8, !tbaa !1150
  store i64 %.sroa.12585.1, ptr %.sroa.12585.0..sroa_idx, align 8, !tbaa !712
  store i64 %.sroa.13586.1, ptr %.sroa.13586.0..sroa_idx, align 8, !tbaa !704
  store i8 0, ptr %.sroa.14587.0..sroa_idx, align 8, !tbaa !712
  store i32 2, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !1147
  store i32 %.sroa.18.1, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !1151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.20.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.20, i64 36, i1 false), !tbaa.struct !1370
  store ptr null, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !1106
  call void @_ZN5clang7CodeGen15CodeGenFunction18EmitLValueForFieldENS0_6LValueEPKNS_9FieldDeclEb(ptr dead_on_unwind nonnull writable sret(%"class.clang::CodeGen::LValue") align 8 %30, ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef nonnull byval(%"class.clang::CodeGen::LValue") align 8 %31, ptr noundef nonnull %.sroa.0575.0727, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.0575.0727, i64 48
  %.sroa.0.0.copyload.i201 = load i64, ptr %i.pv, align 8, !tbaa !712
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  store ptr %i.ca, ptr %33, align 8, !tbaa !73
  store i32 0, ptr %i.cb, align 8, !tbaa !711
  store i32 4, ptr %i.cc, align 4, !tbaa !710
  store ptr %i.cd, ptr %32, align 8, !tbaa !73
  store i32 0, ptr %i.ce, align 8, !tbaa !711
  store i32 4, ptr %i.cf, align 4, !tbaa !710
  store i64 %.sroa.0.0.copyload.i201, ptr %i.cg, align 8, !tbaa !712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ch, ptr noundef nonnull align 8 dereferenceable(144) %30, i64 144, i1 false), !tbaa.struct !1357
  %i.pw = load i32, ptr %i.bk, align 8, !tbaa !711 ; 2 uses
  %i.px = zext i32 %i.pw to i64                   ; 2 uses
  %i.py = add nuw nsw i64 %i.px, 1                ; 2 uses
end_hunk_0
