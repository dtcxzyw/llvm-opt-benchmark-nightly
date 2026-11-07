Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.ci-verify-versions?download=true
inline.NumInlined: 1612
inline.NumDeleted: 773
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN12_GLOBAL__N_140verify_dependency_and_version_constraintERKN5vcpkg10DependencyEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11MessageSinkERKNS0_28SourceControlFileAndLocationERNS0_23FullGitVersionsDatabaseE:bb.a
bb.d:                                             ; preds = %bb.c
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg15LocalizedString10append_rawENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr nonnull @.str.9, i64 2)
          to label %bb.e unwind label %bb.k       ; 7 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK5vcpkg10StringView9to_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN5vcpkg11ErrorPrefixE, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_ZNO5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEEOS0_RKT_.exit unwind label %bb.k

_ZNO5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEEOS0_RKT_.exit: ; preds = %bb.e
  %.sroa.019.0.copyload = load i64, ptr @_ZN5vcpkg33msgDependencyNotInVersionDatabaseE, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(32) %0) #21
  %.fca.0.load.i = load ptr, ptr %14, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %.fca.0.load.i, ptr %13, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %.fca.1.load.i, ptr %i.o, align 8
  %i.p = load ptr, ptr @_ZN5vcpkg3msg14package_name_t4nameE, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr %i.q, ptr %12, align 16, !tbaa !79
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.r, align 8, !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %13, ptr %i.s, align 16, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5vcpkg10StringViewEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.t, align 8, !tbaa !54
  store ptr %i.p, ptr %i.q, align 16, !tbaa !33
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !81
  invoke void @_ZN5vcpkg3msg6detail26format_message_by_index_toERNS_15LocalizedStringEmN3fmt3v1217basic_format_argsINS5_7contextEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %.sroa.019.0.copyload, i64 4611686018427387919, ptr nonnull %i.s)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZNO5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEEOS0_RKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %i.u, ptr %17, align 8, !tbaa !50
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !52   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !53   ; 2 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZN5vcpkg15LocalizedStringC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.v, ptr %17, align 8, !tbaa !52
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !54
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !54
  br label %_ZN5vcpkg15LocalizedStringC2EOS0_.exit

_ZN5vcpkg15LocalizedStringC2EOS0_.exit:           ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !53
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !53
  store ptr %i.w, ptr %i.n, align 8, !tbaa !52
  store i64 0, ptr %i.ad, align 8, !tbaa !53
  store i8 0, ptr %i.w, align 8, !tbaa !54
  %i.ag = load ptr, ptr %18, align 8, !tbaa !52   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5vcpkg15LocalizedStringC2EOS0_.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !54
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %_ZN5vcpkg15LocalizedStringC2EOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %.not58 = icmp eq ptr %1, null
  br i1 %.not58, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNR5vcpkg15LocalizedString10append_rawEc(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 noundef signext 10)
          to label %bb.i unwind label %bb.l       ; 2 uses

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK5vcpkg10StringView9to_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN5vcpkg10NotePrefixE, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %_ZNR5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEERS0_RKT_.exit unwind label %bb.l

_ZNR5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEERS0_RKT_.exit: ; preds = %bb.i
  %.sroa.016.0.copyload = load i64, ptr @_ZN5vcpkg22msgDependencyInFeatureE, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(32) %1) #21
  %.fca.0.load.i71 = load ptr, ptr %11, align 8
  %.fca.1.gep.i73 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.fca.1.load.i74 = load i64, ptr %.fca.1.gep.i73, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %.fca.0.load.i71, ptr %10, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %.fca.1.load.i74, ptr %i.am, align 8
  %i.an = load ptr, ptr @_ZN5vcpkg3msg9feature_t4nameE, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store ptr %i.ao, ptr %9, align 16, !tbaa !79
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1, ptr %i.ap, align 8, !tbaa !80
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %10, ptr %i.aq, align 16, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5vcpkg10StringViewEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.ar, align 8, !tbaa !54
  store ptr %i.an, ptr %i.ao, align 16, !tbaa !33
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !81
  invoke void @_ZN5vcpkg3msg6detail26format_message_by_index_toERNS_15LocalizedStringEmN3fmt3v1217basic_format_argsINS5_7contextEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 noundef %.sroa.016.0.copyload, i64 4611686018427387919, ptr nonnull %i.aq)
          to label %_ZNR5vcpkg15LocalizedString6appendIJNS_3msg9feature_tEEJNS_10StringViewEEEERS0_NS2_8MessageTIJDpT_EEEDpNS2_6TagArgINS_8identityIS7_E4typeET0_EE.exit unwind label %bb.l

_ZNR5vcpkg15LocalizedString6appendIJNS_3msg9feature_tEEJNS_10StringViewEEEERS0_NS2_8MessageTIJDpT_EEEDpNS2_6TagArgINS_8identityIS7_E4typeET0_EE.exit: ; preds = %_ZNR5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEERS0_RKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit78

bb.k:                                             ; preds = %_ZNO5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEEOS0_RKT_.exit, %bb.e, %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %18, align 8, !tbaa !52   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN5vcpkg15LocalizedStringD2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76: ; preds = %bb.k
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !54
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit78

_ZN5vcpkg15LocalizedStringD2Ev.exit78:            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76, %bb.j
  %.pn = phi { ptr, i32 } [ %i.as, %bb.j ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76 ], [ %i.at, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit81

bb.l:                                             ; preds = %_ZNR5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEERS0_RKT_.exit, %bb.i, %bb.m, %bb.h
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %17, align 8, !tbaa !52   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.u
  br i1 %i.bb, label %_ZN5vcpkg15LocalizedStringD2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79: ; preds = %bb.l
  %i.bc = load i64, ptr %i.u, align 8, !tbaa !54
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit81

bb.m:                                             ; preds = %_ZNR5vcpkg15LocalizedString6appendIJNS_3msg9feature_tEEJNS_10StringViewEEEERS0_NS2_8MessageTIJDpT_EEEDpNS2_6TagArgINS_8identityIS7_E4typeET0_EE.exit, %_ZN5vcpkg15LocalizedStringD2Ev.exit
  %i.be = load ptr, ptr %2, align 8, !tbaa !83
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 49, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.bh = load ptr, ptr %17, align 8, !tbaa !52   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.u
  br i1 %i.bi, label %_ZN5vcpkg15LocalizedStringD2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82: ; preds = %bb.n
  %i.bj = load i64, ptr %i.u, align 8, !tbaa !54
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit84

_ZN5vcpkg15LocalizedStringD2Ev.exit84:            ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.as

_ZN5vcpkg15LocalizedStringD2Ev.exit81:            ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79, %_ZN5vcpkg15LocalizedStringD2Ev.exit78
  %.pn59 = phi { ptr, i32 } [ %.pn, %_ZN5vcpkg15LocalizedStringD2Ev.exit78 ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79 ], [ %i.az, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.ar

bb.o:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZNK5vcpkg20DependencyConstraint23try_get_minimum_versionEv(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Optional.213") align 8 %19, ptr noundef nonnull align 8 dereferenceable(48) %i.bl)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o
  %i.bm = load i8, ptr %19, align 8, !tbaa !382, !range !43, !noundef !36
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 10 uses
  br i1 %i.bn, label %bb.q, label %bb.ao

bb.q:                                             ; preds = %bb.p
  %.val = load ptr, ptr %.sroa.gep, align 8, !tbaa !99 ; 3 uses
  %spec.select.i.sroa.sel.sroa.gep = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.val70 = load ptr, ptr %spec.select.i.sroa.sel.sroa.gep, align 8, !tbaa !99 ; 3 uses
  %i.bp = ptrtoint ptr %.val70 to i64             ; 2 uses
  %i.bq = ptrtoint ptr %.val to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = sdiv exact i64 %i.br, 80
  %i.bt = ashr i64 %i.bs, 2                       ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.q, %bb.u
  %.052.i.i.i.i.i = phi i64 [ %i.ce, %bb.u ], [ %i.bt, %bb.q ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i = phi ptr [ %i.cd, %bb.u ], [ %.val, %bb.q ] ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 8
  %i.bw = call noundef zeroext i1 @_ZN5vcpkgeqERKNS_7VersionES2_(ptr noundef nonnull align 8 dereferenceable(36) %i.bv, ptr noundef nonnull align 8 dereferenceable(36) %i.bo) #21
  br i1 %i.bw, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 88
  %i.by = call noundef zeroext i1 @_ZN5vcpkgeqERKNS_7VersionES2_(ptr noundef nonnull align 8 dereferenceable(36) %i.bx, ptr noundef nonnull align 8 dereferenceable(36) %i.bo) #21
  br i1 %i.by, label %.loopexit.split.loop.exit42.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 168
  %i.ca = call noundef zeroext i1 @_ZN5vcpkgeqERKNS_7VersionES2_(ptr noundef nonnull align 8 dereferenceable(36) %i.bz, ptr noundef nonnull align 8 dereferenceable(36) %i.bo) #21
  br i1 %i.ca, label %.loopexit.split.loop.exit44.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 248
  %i.cc = call noundef zeroext i1 @_ZN5vcpkgeqERKNS_7VersionES2_(ptr noundef nonnull align 8 dereferenceable(36) %i.cb, ptr noundef nonnull align 8 dereferenceable(36) %i.bo) #21
  br i1 %i.cc, label %.loopexit.split.loop.exit46.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 320 ; 3 uses
  %i.ce = add nsw i64 %.052.i.i.i.i.i, -1
  %i.cf = icmp sgt i64 %.052.i.i.i.i.i, 1
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !380

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.u
  %.pre.i.i.i.i.i = ptrtoint ptr %i.cd to i64
  %.pre57.i.i.i.i.i = sub i64 %i.bp, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.q
  %.pre-phi58.i.i.i.i.i = phi i64 [ %.pre57.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.br, %bb.q ]
  %.sroa.032.0.lcssa.i.i.i.i.i = phi ptr [ %i.cd, %._crit_edge.loopexit.i.i.i.i.i ], [ %.val, %bb.q ] ; 5 uses
  %i.cg = sdiv exact i64 %.pre-phi58.i.i.i.i.i, 80
  switch i64 %i.cg, label %.thread [
    i64 3, label %bb.v
    i64 2, label %bb.x
    i64 1, label %bb.z
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i, i64 8
  %i.ci = call noundef zeroext i1 @_ZN5vcpkgeqERKNS_7VersionES2_(ptr noundef nonnull align 8 dereferenceable(36) %i.ch, ptr noundef nonnull align 8 dereferenceable(36) %i.bo) #21
  br i1 %i.ci, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i, i64 80
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i = phi ptr [ %i.cj, %bb.w ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i, i64 8
  %i.cl = call noundef zeroext i1 @_ZN5vcpkgeqERKNS_7VersionES2_(ptr noundef nonnull align 8 dereferenceable(36) %i.ck, ptr noundef nonnull align 8 dereferenceable(36) %i.bo) #21
  br i1 %i.cl, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i, i64 80
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i = phi ptr [ %i.cm, %bb.y ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.032.2.i.i.i.i.i, i64 8
  %i.co = call noundef zeroext i1 @_ZN5vcpkgeqERKNS_7VersionES2_(ptr noundef nonnull align 8 dereferenceable(36) %i.cn, ptr noundef nonnull align 8 dereferenceable(36) %i.bo) #21
  %spec.select.i.i.i.i.i = select i1 %i.co, ptr %.sroa.032.2.i.i.i.i.i, ptr %.val70
  br label %.loopexit

.loopexit.split.loop.exit42.i.i.i.i.i:            ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 80
  br label %.loopexit

.loopexit.split.loop.exit44.i.i.i.i.i:            ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 160
  br label %.loopexit

.loopexit.split.loop.exit46.i.i.i.i.i:            ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 240
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.loopexit.split.loop.exit46.i.i.i.i.i, %.loopexit.split.loop.exit44.i.i.i.i.i, %.loopexit.split.loop.exit42.i.i.i.i.i, %bb.z, %bb.x, %bb.v
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i, %bb.x ], [ %spec.select.i.i.i.i.i, %bb.z ], [ %i.cr, %.loopexit.split.loop.exit46.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %bb.v ], [ %i.cq, %.loopexit.split.loop.exit44.i.i.i.i.i ], [ %i.cp, %.loopexit.split.loop.exit42.i.i.i.i.i ], [ %.sroa.032.051.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.cs = icmp eq ptr %.val70, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i
  br i1 %i.cs, label %.thread, label %bb.ao

.thread:                                          ; preds = %._crit_edge.i.i.i.i.i, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cu = call { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ct) #21 ; 2 uses
  %i.cv = extractvalue { ptr, i64 } %i.cu, 0
  %i.cw = extractvalue { ptr, i64 } %i.cu, 1
  invoke void @_ZN5vcpkg15LocalizedString8from_rawENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %21, ptr %i.cv, i64 %i.cw)
          to label %bb.aa unwind label %bb.aj

bb.aa:                                            ; preds = %.thread
  %i.cx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg15LocalizedString10append_rawENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr nonnull @.str.9, i64 2)
          to label %bb.ab unwind label %bb.ak     ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZNK5vcpkg10StringView9to_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN5vcpkg11ErrorPrefixE, ptr noundef nonnull align 8 dereferenceable(32) %i.cx)
          to label %_ZNO5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEEOS0_RKT_.exit85 unwind label %bb.ak

_ZNO5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEEOS0_RKT_.exit85: ; preds = %bb.ab
  %.sroa.08.0.copyload = load i64, ptr @_ZN5vcpkg34msgVersionConstraintNotInDatabase1E, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(32) %0) #21
  %.fca.0.load.i86 = load ptr, ptr %8, align 8
  %.fca.1.gep.i88 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.fca.1.load.i89 = load i64, ptr %.fca.1.gep.i88, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  invoke void @_ZN5vcpkg3msg9format_toIJNS0_14package_name_tENS0_9version_tEEJNS_10StringViewENS_7VersionEEEEvRNS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS9_E4typeET0_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, i64 %.sroa.08.0.copyload, ptr %.fca.0.load.i86, i64 %.fca.1.load.i89, ptr nonnull %i.bo)
          to label %_ZNO5vcpkg15LocalizedString6appendIJNS_3msg14package_name_tENS2_9version_tEEJNS_10StringViewENS_7VersionEEEEOS0_NS2_8MessageTIJDpT_EEEDpNS2_6TagArgINS_8identityIS9_E4typeET0_EE.exit unwind label %bb.ak

_ZNO5vcpkg15LocalizedString6appendIJNS_3msg14package_name_tENS2_9version_tEEJNS_10StringViewENS_7VersionEEEEOS0_NS2_8MessageTIJDpT_EEEDpNS2_6TagArgINS_8identityIS9_E4typeET0_EE.exit: ; preds = %_ZNO5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEEOS0_RKT_.exit85
  %i.cy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg15LocalizedString10append_rawEc(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, i8 noundef signext 10)
          to label %bb.ac unwind label %bb.ak

bb.ac:                                            ; preds = %_ZNO5vcpkg15LocalizedString6appendIJNS_3msg14package_name_tENS2_9version_tEEJNS_10StringViewENS_7VersionEEEEOS0_NS2_8MessageTIJDpT_EEEDpNS2_6TagArgINS_8identityIS9_E4typeET0_EE.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.da = call { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cz) #21 ; 2 uses
  %i.db = extractvalue { ptr, i64 } %i.da, 0
  %i.dc = extractvalue { ptr, i64 } %i.da, 1
  %i.dd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg15LocalizedString10append_rawENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr %i.db, i64 %i.dc)
          to label %bb.ad unwind label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.de = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg15LocalizedString10append_rawENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, ptr nonnull @.str.9, i64 2)
          to label %bb.ae unwind label %bb.ak     ; 7 uses

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZNK5vcpkg10StringView9to_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN5vcpkg10NotePrefixE, ptr noundef nonnull align 8 dereferenceable(32) %i.de)
          to label %_ZNO5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEEOS0_RKT_.exit91 unwind label %bb.ak

_ZNO5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEEOS0_RKT_.exit91: ; preds = %bb.ae
  %.sroa.02.0.copyload = load i64, ptr @_ZN5vcpkg34msgVersionConstraintNotInDatabase2E, align 8, !tbaa !34
  invoke void @_ZN5vcpkg3msg9format_toIJEJEEEvRNS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS5_E4typeET0_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.de, i64 %.sroa.02.0.copyload)
          to label %_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit unwind label %bb.ak

_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit: ; preds = %_ZNO5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEEOS0_RKT_.exit91
  %i.df = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.df, ptr %20, align 8, !tbaa !50
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !52 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 5 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

bb.af:                                            ; preds = %_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !53 ; 2 uses
  %i.dl = icmp ult i64 %i.dk, 16
  call void @llvm.assume(i1 %i.dl)
  %i.dm = add nuw nsw i64 %i.dk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.df, ptr noundef nonnull align 8 dereferenceable(1) %i.dh, i64 %i.dm, i1 false)
  br label %_ZN5vcpkg15LocalizedStringC2EOS0_.exit93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit
  store ptr %i.dg, ptr %20, align 8, !tbaa !52
  %i.dn = load i64, ptr %i.dh, align 8, !tbaa !54
  store i64 %i.dn, ptr %i.df, align 8, !tbaa !54
  br label %_ZN5vcpkg15LocalizedStringC2EOS0_.exit93

_ZN5vcpkg15LocalizedStringC2EOS0_.exit93:         ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !53
  %i.dq = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !53
  store ptr %i.dh, ptr %i.de, align 8, !tbaa !52
  store i64 0, ptr %i.do, align 8, !tbaa !53
  store i8 0, ptr %i.dh, align 8, !tbaa !54
  %i.dr = load ptr, ptr %21, align 8, !tbaa !52   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZN5vcpkg15LocalizedStringD2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94: ; preds = %_ZN5vcpkg15LocalizedStringC2EOS0_.exit93
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !54
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit96

_ZN5vcpkg15LocalizedStringD2Ev.exit96:            ; preds = %_ZN5vcpkg15LocalizedStringC2EOS0_.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %.not64 = icmp eq ptr %1, null
  br i1 %.not64, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit96
  %i.dw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNR5vcpkg15LocalizedString10append_rawEc(ptr noundef nonnull align 8 dereferenceable(32) %20, i8 noundef signext 10)
          to label %bb.ah unwind label %bb.al     ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZNK5vcpkg10StringView9to_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN5vcpkg10NotePrefixE, ptr noundef nonnull align 8 dereferenceable(32) %i.dw)
          to label %_ZNR5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEERS0_RKT_.exit97 unwind label %bb.al

_ZNR5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEERS0_RKT_.exit97: ; preds = %bb.ah
  %.sroa.01.0.copyload = load i64, ptr @_ZN5vcpkg22msgDependencyInFeatureE, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) %1) #21
  %.fca.0.load.i98 = load ptr, ptr %7, align 8
  %.fca.1.gep.i100 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.fca.1.load.i101 = load i64, ptr %.fca.1.gep.i100, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.fca.0.load.i98, ptr %6, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.fca.1.load.i101, ptr %i.dx, align 8
  %i.dy = load ptr, ptr @_ZN5vcpkg3msg9feature_t4nameE, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.dz, ptr %5, align 16, !tbaa !79
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.ea, align 8, !tbaa !80
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %6, ptr %i.eb, align 16, !tbaa !54
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5vcpkg10StringViewEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.ec, align 8, !tbaa !54
  store ptr %i.dy, ptr %i.dz, align 16, !tbaa !33
  %.sroa.4.0..sroa_idx.i.i.i.i103 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i103, align 8, !tbaa !81
  invoke void @_ZN5vcpkg3msg6detail26format_message_by_index_toERNS_15LocalizedStringEmN3fmt3v1217basic_format_argsINS5_7contextEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, i64 noundef %.sroa.01.0.copyload, i64 4611686018427387919, ptr nonnull %i.eb)
          to label %_ZNR5vcpkg15LocalizedString6appendIJNS_3msg9feature_tEEJNS_10StringViewEEEERS0_NS2_8MessageTIJDpT_EEEDpNS2_6TagArgINS_8identityIS7_E4typeET0_EE.exit104 unwind label %bb.al

_ZNR5vcpkg15LocalizedString6appendIJNS_3msg9feature_tEEJNS_10StringViewEEEERS0_NS2_8MessageTIJDpT_EEEDpNS2_6TagArgINS_8identityIS7_E4typeET0_EE.exit104: ; preds = %_ZNR5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEERS0_RKT_.exit97
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.am

bb.ai:                                            ; preds = %bb.o
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg7details19OptionalStorageDtorINS_7VersionELb0EED2Ev.exit116

bb.aj:                                            ; preds = %.thread
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit107

bb.ak:                                            ; preds = %_ZNO5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEEOS0_RKT_.exit91, %bb.ae, %_ZNO5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEEOS0_RKT_.exit85, %bb.ab, %bb.ad, %bb.ac, %_ZNO5vcpkg15LocalizedString6appendIJNS_3msg14package_name_tENS2_9version_tEEJNS_10StringViewENS_7VersionEEEEOS0_NS2_8MessageTIJDpT_EEEDpNS2_6TagArgINS_8identityIS9_E4typeET0_EE.exit, %bb.aa
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = load ptr, ptr %21, align 8, !tbaa !52   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZN5vcpkg15LocalizedStringD2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105: ; preds = %bb.ak
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !54
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit107

_ZN5vcpkg15LocalizedStringD2Ev.exit107:           ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105, %bb.aj
  %.pn62 = phi { ptr, i32 } [ %i.ee, %bb.aj ], [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105 ], [ %i.ef, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit110

bb.al:                                            ; preds = %_ZNR5vcpkg15LocalizedString10append_rawINS_13StringLiteralEvEERS0_RKT_.exit97, %bb.ah, %bb.am, %bb.ag
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = load ptr, ptr %20, align 8, !tbaa !52   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.df
  br i1 %i.en, label %_ZN5vcpkg15LocalizedStringD2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108: ; preds = %bb.al
  %i.eo = load i64, ptr %i.df, align 8, !tbaa !54
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit110

bb.am:                                            ; preds = %_ZNR5vcpkg15LocalizedString6appendIJNS_3msg9feature_tEEJNS_10StringViewEEEERS0_NS2_8MessageTIJDpT_EEEDpNS2_6TagArgINS_8identityIS7_E4typeET0_EE.exit104, %_ZN5vcpkg15LocalizedStringD2Ev.exit96
  %i.eq = load ptr, ptr %2, align 8, !tbaa !83
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.es = load ptr, ptr %i.er, align 8
  invoke void %i.es(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 49, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.an unwind label %bb.al

bb.an:                                            ; preds = %bb.am
  %i.et = load ptr, ptr %20, align 8, !tbaa !52   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.df
  br i1 %i.eu, label %_ZN5vcpkg15LocalizedStringD2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111: ; preds = %bb.an
  %i.ev = load i64, ptr %i.df, align 8, !tbaa !54
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #24
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit113

_ZN5vcpkg15LocalizedStringD2Ev.exit113:           ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.ao

_ZN5vcpkg15LocalizedStringD2Ev.exit110:           ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108, %_ZN5vcpkg15LocalizedStringD2Ev.exit107
  %.pn65 = phi { ptr, i32 } [ %.pn62, %_ZN5vcpkg15LocalizedStringD2Ev.exit107 ], [ %i.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i108 ], [ %i.el, %bb.al ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  %i.ex = load i8, ptr %19, align 8, !tbaa !382, !range !43, !noundef !36
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.aq, label %_ZN5vcpkg7details19OptionalStorageDtorINS_7VersionELb0EED2Ev.exit116

bb.ao:                                            ; preds = %bb.p, %.loopexit, %_ZN5vcpkg15LocalizedStringD2Ev.exit113
  %.0 = phi i1 [ false, %_ZN5vcpkg15LocalizedStringD2Ev.exit113 ], [ true, %.loopexit ], [ true, %bb.p ]
  %i.ez = load i8, ptr %19, align 8, !tbaa !382, !range !43, !noundef !36
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.ap, label %_ZN5vcpkg7details19OptionalStorageDtorINS_7VersionELb0EED2Ev.exit

bb.ap:                                            ; preds = %bb.ao
  %i.fb = load ptr, ptr %i.bo, align 8, !tbaa !52 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZN5vcpkg7details19OptionalStorageDtorINS_7VersionELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ap
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !54
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #24
  br label %_ZN5vcpkg7details19OptionalStorageDtorINS_7VersionELb0EED2Ev.exit

_ZN5vcpkg7details19OptionalStorageDtorINS_7VersionELb0EED2Ev.exit: ; preds = %bb.ap, %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.as

bb.aq:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit110
  %i.fg = load ptr, ptr %i.bo, align 8, !tbaa !52 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZN5vcpkg7details19OptionalStorageDtorINS_7VersionELb0EED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i114: ; preds = %bb.aq
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !54
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #24
  br label %_ZN5vcpkg7details19OptionalStorageDtorINS_7VersionELb0EED2Ev.exit116

_ZN5vcpkg7details19OptionalStorageDtorINS_7VersionELb0EED2Ev.exit116: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i114, %_ZN5vcpkg15LocalizedStringD2Ev.exit110, %bb.ai
  %.pn65.pn.pn = phi { ptr, i32 } [ %i.ed, %bb.ai ], [ %.pn65, %_ZN5vcpkg15LocalizedStringD2Ev.exit110 ], [ %.pn65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i114 ], [ %.pn65, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN5vcpkg7details19OptionalStorageDtorINS_7VersionELb0EED2Ev.exit116, %_ZN5vcpkg15LocalizedStringD2Ev.exit81
  %.pn65.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn, %_ZN5vcpkg7details19OptionalStorageDtorINS_7VersionELb0EED2Ev.exit116 ], [ %.pn59, %_ZN5vcpkg15LocalizedStringD2Ev.exit81 ]
  call void @_ZN5vcpkg21GitVersionsLoadResultD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  resume { ptr, i32 } %.pn65.pn.pn.pn

bb.as:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit84, %_ZN5vcpkg7details19OptionalStorageDtorINS_7VersionELb0EED2Ev.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ %.0, %_ZN5vcpkg7details19OptionalStorageDtorINS_7VersionELb0EED2Ev.exit ], [ false, %_ZN5vcpkg15LocalizedStringD2Ev.exit84 ]
  %i.fl = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !52 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZN5vcpkg21GitVersionsLoadResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i117: ; preds = %bb.as
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !54
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #24
  br label %_ZN5vcpkg21GitVersionsLoadResultD2Ev.exit

_ZN5vcpkg21GitVersionsLoadResultD2Ev.exit:        ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i117
  %i.fr = load i8, ptr %i.e, align 8, !tbaa !72, !range !43, !noundef !36
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN5vcpkg21GitVersionsLoadResultD2Ev.exit
  %i.ft = load ptr, ptr %15, align 8, !tbaa !52   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZN5vcpkg9ExpectedTINS_8OptionalISt6vectorINS_17GitVersionDbEntryESaIS3_EEEENS_15LocalizedStringEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i119: ; preds = %bb.at
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !54
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #24
  br label %_ZN5vcpkg9ExpectedTINS_8OptionalISt6vectorINS_17GitVersionDbEntryESaIS3_EEEENS_15LocalizedStringEED2Ev.exit

bb.au:                                            ; preds = %_ZN5vcpkg21GitVersionsLoadResultD2Ev.exit
  %i.fy = load i8, ptr %15, align 8, !tbaa !74, !range !43, !noundef !36
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.av, label %_ZN5vcpkg9ExpectedTINS_8OptionalISt6vectorINS_17GitVersionDbEntryESaIS3_EEEENS_15LocalizedStringEED2Ev.exit

bb.av:                                            ; preds = %bb.au
  %i.ga = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !105 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !106 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.gb, %i.gd
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5vcpkg17GitVersionDbEntryES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.av, %_ZSt8_DestroyIN5vcpkg17GitVersionDbEntryEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.gq, %_ZSt8_DestroyIN5vcpkg17GitVersionDbEntryEEvPT_.exit.i.i.i.i.i.i ], [ %i.gb, %bb.av ] ; 5 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !52 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !54
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !52 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZSt8_DestroyIN5vcpkg17GitVersionDbEntryEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !54
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #24
  br label %_ZSt8_DestroyIN5vcpkg17GitVersionDbEntryEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN5vcpkg17GitVersionDbEntryEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gq, %i.gd
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5vcpkg17GitVersionDbEntryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN5vcpkg17GitVersionDbEntryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN5vcpkg17GitVersionDbEntryEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.ga, align 8, !tbaa !105
  br label %_ZSt8_DestroyIPN5vcpkg17GitVersionDbEntryES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5vcpkg17GitVersionDbEntryES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5vcpkg17GitVersionDbEntryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.av
  %i.gr = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN5vcpkg17GitVersionDbEntryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.gb, %bb.av ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN5vcpkg9ExpectedTINS_8OptionalISt6vectorINS_17GitVersionDbEntryESaIS3_EEEENS_15LocalizedStringEED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg17GitVersionDbEntryES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !107
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gr to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.gw) #24
  br label %_ZN5vcpkg9ExpectedTINS_8OptionalISt6vectorINS_17GitVersionDbEntryESaIS3_EEEENS_15LocalizedStringEED2Ev.exit

_ZN5vcpkg9ExpectedTINS_8OptionalISt6vectorINS_17GitVersionDbEntryESaIS3_EEEENS_15LocalizedStringEED2Ev.exit: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i119, %bb.au, %_ZSt8_DestroyIPN5vcpkg17GitVersionDbEntryES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5vcpkg21GitVersionsLoadResultC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !72, !range !43, !noundef !36 ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  store i8 %i.e, ptr %i.c, align 8, !tbaa !72
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !50
  %i.h = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !53   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.j, ptr %i.b, align 8, !tbaa !34
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !52
  %i.m = load i64, ptr %i.b, align 8, !tbaa !34
  store i64 %i.m, ptr %i.g, align 8, !tbaa !54
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.n = phi ptr [ %i.l, %.noexc.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %i.j, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN5vcpkg15LocalizedStringC2ERKS0_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !54
  store i8 %i.o, ptr %i.n, align 1, !tbaa !54
  br label %_ZN5vcpkg15LocalizedStringC2ERKS0_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZN5vcpkg15LocalizedStringC2ERKS0_.exit.i

_ZN5vcpkg15LocalizedStringC2ERKS0_.exit.i:        ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.p = load i64, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !53
  %i.r = load ptr, ptr %0, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %_ZN5vcpkg9ExpectedTINS_8OptionalISt6vectorINS_17GitVersionDbEntryESaIS3_EEEENS_15LocalizedStringEEC2ERKS8_.exit

bb.e:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.t, align 8, !tbaa !54
  %i.u = load i8, ptr %1, align 8, !tbaa !74, !range !43, !noundef !36
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %_ZN5vcpkg9ExpectedTINS_8OptionalISt6vectorINS_17GitVersionDbEntryESaIS3_EEEENS_15LocalizedStringEEC2ERKS8_.exit

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %0, align 8, !tbaa !74
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt6vectorIN5vcpkg17GitVersionDbEntryESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_ZN5vcpkg9ExpectedTINS_8OptionalISt6vectorINS_17GitVersionDbEntryESaIS3_EEEENS_15LocalizedStringEEC2ERKS8_.exit unwind label %bb.g

common.resume:                                    ; preds = %bb.k, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.an, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5vcpkg7details19OptionalStorageDtorISt6vectorINS_17GitVersionDbEntryESaIS3_EELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(33) %0) #21
  br label %common.resume

_ZN5vcpkg9ExpectedTINS_8OptionalISt6vectorINS_17GitVersionDbEntryESaIS3_EEEENS_15LocalizedStringEEC2ERKS8_.exit: ; preds = %_ZN5vcpkg15LocalizedStringC2ERKS0_.exit.i, %bb.e, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !50
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !52  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !34
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZN5vcpkg9ExpectedTINS_8OptionalISt6vectorINS_17GitVersionDbEntryESaIS3_EEEENS_15LocalizedStringEEC2ERKS8_.exit
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.af, ptr %i.y, align 8, !tbaa !52
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !34
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !54
  br label %._crit_edge.i.i.i

end_hunk_0
