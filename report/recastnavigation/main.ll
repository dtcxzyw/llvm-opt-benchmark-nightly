Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/main?download=true
inline.NumInlined: 783
inline.NumDeleted: 460
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@main:bb.a
  br i1 %.not.i.i195.1, label %bb.dz, label %_ZNKSt8functionIFSt10unique_ptrI6SampleSt14default_deleteIS1_EEvEEclEv.exit196.1

_ZNKSt8functionIFSt10unique_ptrI6SampleSt14default_deleteIS1_EEvEEclEv.exit196.1: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.thread.1
  %i.abh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19g_samplesE, i64 120), align 8, !tbaa !90, !noalias !4743
  call void %i.abh(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.9") align 8 %34, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19g_samplesE, i64 96)) #19, !inline_history !106
  %i.abi = load ptr, ptr %34, align 8, !tbaa !32
  store ptr null, ptr %34, align 8, !tbaa !32
  %i.abj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 672), align 8, !tbaa !32 ; 3 uses
  store ptr %i.abi, ptr getelementptr inbounds nuw (i8, ptr @app, i64 672), align 8, !tbaa !32
  %.not.i.i.i.i197.1 = icmp eq ptr %i.abj, null
  br i1 %.not.i.i.i.i197.1, label %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EED2Ev.exit202.1, label %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EEaSEOS3_.exit199.1

_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EEaSEOS3_.exit199.1: ; preds = %_ZNKSt8functionIFSt10unique_ptrI6SampleSt14default_deleteIS1_EEvEEclEv.exit196.1
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !34
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  %i.abm = load ptr, ptr %i.abl, align 8
  call void %i.abm(ptr noundef nonnull align 8 dereferenceable(200) %i.abj) #19, !call_target !39, !inline_history !107
  %.pr262.1 = load ptr, ptr %34, align 8, !tbaa !32 ; 3 uses
  %.not.i200.1 = icmp eq ptr %.pr262.1, null
  br i1 %.not.i200.1, label %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EED2Ev.exit202.1, label %_ZNKSt14default_deleteI6SampleEclEPS0_.exit.i201.1

_ZNKSt14default_deleteI6SampleEclEPS0_.exit.i201.1: ; preds = %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EEaSEOS3_.exit199.1
  %i.abn = load ptr, ptr %.pr262.1, align 8, !tbaa !34
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  %i.abp = load ptr, ptr %i.abo, align 8
  call void %i.abp(ptr noundef nonnull align 8 dereferenceable(200) %.pr262.1) #19, !call_target !39, !inline_history !2
  br label %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EED2Ev.exit202.1

_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EED2Ev.exit202.1: ; preds = %_ZNKSt14default_deleteI6SampleEclEPS0_.exit.i201.1, %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EEaSEOS3_.exit199.1, %_ZNKSt8functionIFSt10unique_ptrI6SampleSt14default_deleteIS1_EEvEEclEv.exit196.1
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @app, i64 800), align 8, !tbaa !87
  %.pre330 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 680), align 8, !tbaa !30 ; 2 uses
  %.phi.trans.insert331 = getelementptr inbounds nuw i8, ptr %.pre330, i64 32
  %.pre332 = load i64, ptr %.phi.trans.insert331, align 8, !tbaa !73
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.thread261.1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.thread261.1: ; preds = %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EED2Ev.exit202.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.thread261
  %i.abq = phi i64 [ %.pre332, %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EED2Ev.exit202.1 ], [ %i.aax, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.1 ], [ %i.aax, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.thread261 ] ; 3 uses
  %i.abr = phi ptr [ %.pre330, %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EED2Ev.exit202.1 ], [ %i.aay, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.1 ], [ %i.aay, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.thread261 ]
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 24
  %i.abt = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19g_samplesE, i64 136), align 8, !tbaa !73
  %i.abu = icmp eq i64 %i.abt, %i.abq
  br i1 %i.abu, label %bb.eb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.thread261.2

bb.eb:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.thread261.1
  %i.abv = icmp eq i64 %i.abq, 0
  br i1 %i.abv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.thread.2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.2

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.2: ; preds = %bb.eb
  %i.abw = load ptr, ptr %i.abs, align 8, !tbaa !22
  %i.abx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19g_samplesE, i64 128), align 16, !tbaa !22
  %bcmp.i193.2 = call i32 @bcmp(ptr %i.abx, ptr %i.abw, i64 %i.abq)
  %i.aby = icmp eq i32 %bcmp.i193.2, 0
  br i1 %i.aby, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.thread.2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.thread261.2

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.thread.2: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.2, %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  %i.abz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19g_samplesE, i64 176), align 16, !tbaa !17, !noalias !4743
  %.not.i.i195.2 = icmp eq ptr %i.abz, null
  br i1 %.not.i.i195.2, label %bb.dz, label %_ZNKSt8functionIFSt10unique_ptrI6SampleSt14default_deleteIS1_EEvEEclEv.exit196.2

_ZNKSt8functionIFSt10unique_ptrI6SampleSt14default_deleteIS1_EEvEEclEv.exit196.2: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.thread.2
  %i.aca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19g_samplesE, i64 184), align 8, !tbaa !90, !noalias !4743
  call void %i.aca(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.9") align 8 %34, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19g_samplesE, i64 160)) #19, !inline_history !106
  %i.acb = load ptr, ptr %34, align 8, !tbaa !32
  store ptr null, ptr %34, align 8, !tbaa !32
  %i.acc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 672), align 8, !tbaa !32 ; 3 uses
  store ptr %i.acb, ptr getelementptr inbounds nuw (i8, ptr @app, i64 672), align 8, !tbaa !32
  %.not.i.i.i.i197.2 = icmp eq ptr %i.acc, null
  br i1 %.not.i.i.i.i197.2, label %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EED2Ev.exit202.2, label %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EEaSEOS3_.exit199.2

_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EEaSEOS3_.exit199.2: ; preds = %_ZNKSt8functionIFSt10unique_ptrI6SampleSt14default_deleteIS1_EEvEEclEv.exit196.2
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !34
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  %i.acf = load ptr, ptr %i.ace, align 8
  call void %i.acf(ptr noundef nonnull align 8 dereferenceable(200) %i.acc) #19, !call_target !39, !inline_history !107
  %.pr262.2 = load ptr, ptr %34, align 8, !tbaa !32 ; 3 uses
  %.not.i200.2 = icmp eq ptr %.pr262.2, null
  br i1 %.not.i200.2, label %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EED2Ev.exit202.2, label %_ZNKSt14default_deleteI6SampleEclEPS0_.exit.i201.2

_ZNKSt14default_deleteI6SampleEclEPS0_.exit.i201.2: ; preds = %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EEaSEOS3_.exit199.2
  %i.acg = load ptr, ptr %.pr262.2, align 8, !tbaa !34
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  %i.aci = load ptr, ptr %i.ach, align 8
  call void %i.aci(ptr noundef nonnull align 8 dereferenceable(200) %.pr262.2) #19, !call_target !39, !inline_history !2
  br label %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EED2Ev.exit202.2

_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EED2Ev.exit202.2: ; preds = %_ZNKSt14default_deleteI6SampleEclEPS0_.exit.i201.2, %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EEaSEOS3_.exit199.2, %_ZNKSt8functionIFSt10unique_ptrI6SampleSt14default_deleteIS1_EEvEEclEv.exit196.2
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @app, i64 800), align 8, !tbaa !87
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.thread261.2

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.thread261.2: ; preds = %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EED2Ev.exit202.2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.thread261.1
  %i.acj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 672), align 8, !tbaa !32 ; 2 uses
  %.not286 = icmp eq ptr %i.acj, null
  br i1 %.not286, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.thread261.2
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 192
  store ptr getelementptr inbounds nuw (i8, ptr @app, i64 176), ptr %i.ack, align 8, !tbaa !421
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit194.thread261.2
  %i.acl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 680), align 8, !tbaa !30
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 56
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @app, i64 808), ptr noundef nonnull align 8 dereferenceable(32) %i.acm)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  %i.acn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 872), align 8, !tbaa !22, !noalias !4744
  %i.aco = load i64, ptr getelementptr inbounds nuw (i8, ptr @app, i64 880), align 8, !tbaa !73, !noalias !4744
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !4744
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef %i.acn, i64 noundef %i.aco, ptr noundef nonnull @.str.30, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !4744
  call void @llvm.experimental.noalias.scope.decl(metadata !4745)
  %i.acp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 808), align 8, !tbaa !22, !noalias !4745 ; 3 uses
  %i.acq = load i64, ptr getelementptr inbounds nuw (i8, ptr @app, i64 816), align 8, !tbaa !73, !noalias !4745 ; 6 uses
  %i.acr = load i64, ptr %i.cv, align 8, !tbaa !73, !noalias !4745 ; 5 uses
  %i.acs = sub i64 9223372036854775807, %i.acr
  %i.act = icmp ult i64 %i.acs, %i.acq
  br i1 %i.act, label %bb.ee, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i203

bb.ee:                                            ; preds = %bb.ed
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #21, !noalias !4745
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i203: ; preds = %bb.ed
  %i.acu = add i64 %i.acr, %i.acq                 ; 3 uses
  %i.acv = load ptr, ptr %36, align 8, !tbaa !22, !noalias !4745 ; 2 uses
  %i.acw = icmp eq ptr %i.acv, %i.cw
  br i1 %i.acw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i212: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i203
  %i.acx = icmp ult i64 %i.acr, 16
  call void @llvm.assume(i1 %i.acx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i204: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i203
  %i.acy = load i64, ptr %i.cw, align 8, !tbaa !23, !noalias !4745
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i205: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i204, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i212
  %i.acz = phi i64 [ %i.acy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i204 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i212 ]
  %.not.i.i.i.i206 = icmp ugt i64 %i.acu, %i.acz
  br i1 %.not.i.i.i.i206, label %bb.ej, label %bb.ef

bb.ef:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i205
  %.not8.i.i.i.i207 = icmp eq i64 %i.acq, 0
  br i1 %.not8.i.i.i.i207, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i209, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acv, i64 %i.acr ; 2 uses
  %cond.i.i.i.i208 = icmp eq i64 %i.acq, 1
  br i1 %cond.i.i.i.i208, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.adb = load i8, ptr %i.acp, align 1, !tbaa !23, !noalias !4745
  store i8 %i.adb, ptr %i.ada, align 1, !tbaa !23, !noalias !4745
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i209

bb.ei:                                            ; preds = %bb.eg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ada, ptr align 1 %i.acp, i64 %i.acq, i1 false), !noalias !4745
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i209

bb.ej:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i205
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, i64 noundef %i.acr, i64 noundef 0, ptr noundef %i.acp, i64 noundef %i.acq), !noalias !4745
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i209: ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.ef
  store i64 %i.acu, ptr %i.cv, align 8, !tbaa !73, !noalias !4745
  %i.adc = load ptr, ptr %36, align 8, !tbaa !22, !noalias !4745
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.acu
  store i8 0, ptr %i.add, align 1, !tbaa !23, !noalias !4745
  store ptr %i.cx, ptr %35, align 8, !tbaa !72, !alias.scope !4745
  %i.ade = load ptr, ptr %36, align 8, !tbaa !22, !noalias !4745 ; 3 uses
  %i.adf = icmp eq ptr %i.ade, %i.cw
  br i1 %i.adf, label %bb.ek, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

bb.ek:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i209
  %i.adg = load i64, ptr %i.cv, align 8, !tbaa !73, !noalias !4745 ; 3 uses
  %i.adh = icmp ult i64 %i.adg, 16
  call void @llvm.assume(i1 %i.adh)
  %i.adi = add nuw nsw i64 %i.adg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cx, ptr noundef nonnull align 8 dereferenceable(1) %i.cw, i64 %i.adi, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i209
  store ptr %i.ade, ptr %35, align 8, !tbaa !22, !alias.scope !4745
  %i.adj = load i64, ptr %i.cw, align 8, !tbaa !23, !noalias !4745
  store i64 %i.adj, ptr %i.cx, align 8, !tbaa !23, !alias.scope !4745
  %.pre.i211 = load i64, ptr %i.cv, align 8, !tbaa !73, !noalias !4745
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit213

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit213: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210
  %i.adk = phi ptr [ %i.cx, %bb.ek ], [ %i.ade, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210 ] ; 5 uses
  %i.adl = phi i64 [ %i.adg, %bb.ek ], [ %.pre.i211, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210 ] ; 6 uses
  store i64 %i.adl, ptr %i.cy, align 8, !tbaa !73, !alias.scope !4745
  store ptr %i.cw, ptr %36, align 8, !tbaa !22, !noalias !4745
  store i64 0, ptr %i.cv, align 8, !tbaa !73, !noalias !4745
  store i8 0, ptr %i.cw, align 8, !tbaa !23, !noalias !4745
  %i.adm = load ptr, ptr %31, align 8, !tbaa !22  ; 6 uses
  %37 = icmp eq ptr %i.adm, %i.ct
  %i.adn = icmp eq ptr %i.adk, %i.cx              ; 2 uses
  br i1 %37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit213
  br i1 %i.adn, label %bb.el, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit213
  br i1 %i.adn, label %bb.el, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.el:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ado = icmp ult i64 %i.adl, 16
  call void @llvm.assume(i1 %i.ado)
  switch i64 %i.adl, label %bb.en [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.em
  ]

bb.em:                                            ; preds = %bb.el
  %i.adp = load i8, ptr %i.adk, align 1, !tbaa !23
  store i8 %i.adp, ptr %i.adm, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.en:                                            ; preds = %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adm, ptr align 1 %i.adk, i64 %i.adl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.en, %bb.em, %bb.el
  %i.adq = load i64, ptr %i.cy, align 8, !tbaa !73 ; 2 uses
  store i64 %i.adq, ptr %i.cu, align 8, !tbaa !73
  %i.adr = load ptr, ptr %31, align 8, !tbaa !22
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 %i.adq
  store i8 0, ptr %i.ads, align 1, !tbaa !23
  %.pre.i215 = load ptr, ptr %35, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.adk, ptr %31, align 8, !tbaa !22
  store i64 %i.adl, ptr %i.cu, align 8, !tbaa !73
  %i.adt = load i64, ptr %i.cx, align 8, !tbaa !23
  store i64 %i.adt, ptr %i.ct, align 8, !tbaa !23
  br label %bb.ep

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.adu = load i64, ptr %i.ct, align 8, !tbaa !23
  store ptr %i.adk, ptr %31, align 8, !tbaa !22
  store i64 %i.adl, ptr %i.cu, align 8, !tbaa !73
  %i.adv = load i64, ptr %i.cx, align 8, !tbaa !23
  store i64 %i.adv, ptr %i.ct, align 8, !tbaa !23
  %.not.i214 = icmp eq ptr %i.adm, null
  br i1 %.not.i214, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.adm, ptr %35, align 8, !tbaa !22
  store i64 %i.adu, ptr %i.cx, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ep:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cx, ptr %35, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.eo, %bb.ep
  %i.adw = phi ptr [ %i.adm, %bb.eo ], [ %i.cx, %bb.ep ], [ %.pre.i215, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.cy, align 8, !tbaa !73
  store i8 0, ptr %i.adw, align 1, !tbaa !23
  %i.adx = load ptr, ptr %35, align 8, !tbaa !22  ; 2 uses
  %i.ady = icmp eq ptr %i.adx, %i.cx
  br i1 %i.ady, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.adz = load i64, ptr %i.cx, align 8, !tbaa !23
  %i.aea = add i64 %i.adz, 1
  call void @_ZdlPvm(ptr noundef %i.adx, i64 noundef %i.aea) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216
  %i.aeb = load ptr, ptr %36, align 8, !tbaa !22  ; 2 uses
  %i.aec = icmp eq ptr %i.aeb, %i.cw
  br i1 %i.aec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218
  %i.aed = load i64, ptr %i.cw, align 8, !tbaa !23
  %i.aee = add i64 %i.aed, 1
  call void @_ZdlPvm(ptr noundef %i.aeb, i64 noundef %i.aee) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  %i.aef = call noalias noundef nonnull dereferenceable(448) ptr @_Znwm(i64 noundef 448) #22, !noalias !4746 ; 8 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 88
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aef, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.aef, i8 0, i64 280, i1 false), !noalias !4746
  store ptr %i.aeh, ptr %i.aeg, align 8, !tbaa !72, !noalias !4746
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aef, i64 120
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aef, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aej, i8 0, i64 28, i1 false), !noalias !4746
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aef, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %i.aei, i8 0, i64 124, i1 false), !noalias !4746
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.aek, i8 0, i64 168, i1 false), !noalias !4746
  %i.ael = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 664), align 8, !tbaa !41 ; 3 uses
  store ptr %i.aef, ptr getelementptr inbounds nuw (i8, ptr @app, i64 664), align 8, !tbaa !41
  %.not.i.i.i.i222 = icmp eq ptr %i.ael, null
  br i1 %.not.i.i.i.i222, label %_ZNSt10unique_ptrI9InputGeomSt14default_deleteIS0_EED2Ev.exit227, label %_ZNKSt14default_deleteI9InputGeomEclEPS0_.exit.i.i.i.i223

_ZNKSt14default_deleteI9InputGeomEclEPS0_.exit.i.i.i.i223: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  call void @_ZN9InputGeomD2Ev(ptr noundef nonnull align 8 dead_on_return(448) dereferenceable(448) %i.ael) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.ael, i64 noundef 448) #20
  %.pre333 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 664), align 8, !tbaa !41
  br label %_ZNSt10unique_ptrI9InputGeomSt14default_deleteIS0_EED2Ev.exit227

_ZNSt10unique_ptrI9InputGeomSt14default_deleteIS0_EED2Ev.exit227: ; preds = %_ZNKSt14default_deleteI9InputGeomEclEPS0_.exit.i.i.i.i223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %i.aem = phi ptr [ %.pre333, %_ZNKSt14default_deleteI9InputGeomEclEPS0_.exit.i.i.i.i223 ], [ %i.aef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ]
  %i.aen = call noundef zeroext i1 @_ZN9InputGeom4loadEP9rcContextRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(448) %i.aem, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @app, i64 176), ptr noundef nonnull align 8 dereferenceable(32) %31) #19
  br i1 %i.aen, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt10unique_ptrI9InputGeomSt14default_deleteIS0_EED2Ev.exit227
  %i.aeo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 664), align 8, !tbaa !41 ; 3 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @app, i64 664), align 8, !tbaa !41
  %.not.i.i228 = icmp eq ptr %i.aeo, null
  br i1 %.not.i.i228, label %_ZNSt10unique_ptrI9InputGeomSt14default_deleteIS0_EE5resetEPS0_.exit230, label %_ZNKSt14default_deleteI9InputGeomEclEPS0_.exit.i.i229

_ZNKSt14default_deleteI9InputGeomEclEPS0_.exit.i.i229: ; preds = %bb.eq
  call void @_ZN9InputGeomD2Ev(ptr noundef nonnull align 8 dead_on_return(448) dereferenceable(448) %i.aeo) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.aeo, i64 noundef 448) #20
  br label %_ZNSt10unique_ptrI9InputGeomSt14default_deleteIS0_EE5resetEPS0_.exit230

_ZNSt10unique_ptrI9InputGeomSt14default_deleteIS0_EE5resetEPS0_.exit230: ; preds = %bb.eq, %_ZNKSt14default_deleteI9InputGeomEclEPS0_.exit.i.i229
  %i.aep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 672), align 8, !tbaa !32 ; 3 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @app, i64 672), align 8, !tbaa !32
  %.not.i.i231 = icmp eq ptr %i.aep, null
  br i1 %.not.i.i231, label %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EE5resetEPS0_.exit233, label %_ZNKSt14default_deleteI6SampleEclEPS0_.exit.i.i232

_ZNKSt14default_deleteI6SampleEclEPS0_.exit.i.i232: ; preds = %_ZNSt10unique_ptrI9InputGeomSt14default_deleteIS0_EE5resetEPS0_.exit230
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !34
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 8
  %i.aes = load ptr, ptr %i.aer, align 8
  call void %i.aes(ptr noundef nonnull align 8 dereferenceable(200) %i.aep) #19, !call_target !39, !inline_history !260
  br label %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EE5resetEPS0_.exit233

_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EE5resetEPS0_.exit233: ; preds = %_ZNSt10unique_ptrI9InputGeomSt14default_deleteIS0_EE5resetEPS0_.exit230, %_ZNKSt14default_deleteI6SampleEclEPS0_.exit.i.i232
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @app, i64 841), align 1, !tbaa !88
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @app, i64 844), align 4, !tbaa !407
  %i.aet = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 808), align 8, !tbaa !22
  call void (ptr, ptr, ...) @_ZN12BuildContext7dumpLogEPKcz(ptr noundef nonnull align 8 dereferenceable(488) getelementptr inbounds nuw (i8, ptr @app, i64 176), ptr noundef nonnull @.str.31, ptr noundef %i.aet) #19
  br label %bb.er

bb.er:                                            ; preds = %_ZNSt10unique_ptrI6SampleSt14default_deleteIS0_EE5resetEPS0_.exit233, %_ZNSt10unique_ptrI9InputGeomSt14default_deleteIS0_EED2Ev.exit227
  %i.aeu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 672), align 8, !tbaa !32 ; 4 uses
  %.not287 = icmp eq ptr %i.aeu, null
  br i1 %.not287, label %bb.ex, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 664), align 8, !tbaa !41 ; 2 uses
  %.not288 = icmp eq ptr %i.aev, null
  br i1 %.not288, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.aew = load ptr, ptr %i.aeu, align 8, !tbaa !34
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 80
  %i.aey = load ptr, ptr %i.aex, align 8
  call void %i.aey(ptr noundef nonnull align 8 dereferenceable(200) %i.aeu, ptr noundef nonnull %i.aev) #19, !call_target !425
  %.pre334 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 672), align 8, !tbaa !32
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.aez = phi ptr [ %.pre334, %bb.et ], [ %i.aeu, %bb.es ] ; 2 uses
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !34
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 16
  %i.afc = load ptr, ptr %i.afb, align 8
  call void %i.afc(ptr noundef nonnull align 8 dereferenceable(200) %i.aez) #19, !call_target !397
  %i.afd = load i8, ptr getelementptr inbounds nuw (i8, ptr @app, i64 184), align 8, !tbaa !398, !range !307, !noundef !308
  %i.afe = trunc nuw i8 %i.afd to i1
  br i1 %i.afe, label %bb.ev, label %_ZN9rcContext8resetLogEv.exit234

bb.ev:                                            ; preds = %bb.eu
  %i.aff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 176), align 8, !tbaa !34
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 16
  %i.afh = load ptr, ptr %i.afg, align 8
  call void %i.afh(ptr noundef nonnull align 8 dereferenceable(10) getelementptr inbounds nuw (i8, ptr @app, i64 176)) #19, !call_target !403, !inline_history !102
  br label %_ZN9rcContext8resetLogEv.exit234

_ZN9rcContext8resetLogEv.exit234:                 ; preds = %bb.eu, %bb.ev
  %i.afi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 672), align 8, !tbaa !32 ; 2 uses
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !34
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 88
  %i.afl = load ptr, ptr %i.afk, align 8
  %i.afm = call noundef zeroext i1 %i.afl(ptr noundef nonnull align 8 dereferenceable(200) %i.afi) #19, !call_target !406
  br i1 %i.afm, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %_ZN9rcContext8resetLogEv.exit234
  %i.afn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 808), align 8, !tbaa !22
  call void (ptr, ptr, ...) @_ZN12BuildContext7dumpLogEPKcz(ptr noundef nonnull align 8 dereferenceable(488) getelementptr inbounds nuw (i8, ptr @app, i64 176), ptr noundef nonnull @.str.26, ptr noundef %i.afn) #19
  br label %bb.ex

bb.ex:                                            ; preds = %_ZN9rcContext8resetLogEv.exit234, %bb.ew, %bb.er
  %i.afo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 664), align 8, !tbaa !41
  %i.afp = icmp ne ptr %i.afo, null
  %i.afq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 672), align 8
  %i.afr = icmp ne ptr %i.afq, null
  %or.cond267 = select i1 %i.afp, i1 true, i1 %i.afr
  br i1 %or.cond267, label %bb.ey, label %.thread265

bb.ey:                                            ; preds = %bb.ex
  call void @_ZN8AppState11resetCameraEv(ptr noundef nonnull align 8 dereferenceable(936) @app) #19
  %.pr264 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 672), align 8, !tbaa !32 ; 3 uses
  %.not289 = icmp eq ptr %.pr264, null
  br i1 %.not289, label %.thread265, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.afs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @app, i64 680), align 8, !tbaa !30
  %i.aft = getelementptr inbounds nuw i8, ptr %.pr264, i64 16
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !4747
  %i.afv = getelementptr inbounds nuw i8, ptr %.pr264, i64 24
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !4748
  call void @_ZN8TestCase7doTestsEP9dtNavMeshP14dtNavMeshQuery(ptr noundef nonnull align 8 dereferenceable(88) %i.afs, ptr noundef %i.afu, ptr noundef %i.afw) #19
  br label %.thread265

.thread265:                                       ; preds = %bb.ex, %bb.ez, %bb.ey
  %i.afx = load ptr, ptr %31, align 8, !tbaa !22  ; 2 uses
  %i.afy = icmp eq ptr %i.afx, %i.ct
  br i1 %i.afy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %.thread265
  %i.afz = load i64, ptr %i.ct, align 8, !tbaa !23
  %i.aga = add i64 %i.afz, 1
  call void @_ZdlPvm(ptr noundef %i.afx, i64 noundef %i.aga) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237: ; preds = %.thread265, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  br label %bb.fa

bb.fa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %bb.dm
  call void @_ZN5ImGui3EndEv() #19
  br label %bb.fb

end_hunk_0
