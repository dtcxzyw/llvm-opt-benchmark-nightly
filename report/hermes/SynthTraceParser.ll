inline.NumInlined: 2500
inline.NumDeleted: 1013
begin_hunk_0_@_ZN8facebook6hermes7tracing15parseSynthTraceESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS4_EE:bb.a
  store i64 %i.l, ptr %i.k, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.k, ptr %7, align 8, !tbaa !31
  store ptr %i.m, ptr %i.i, align 8, !tbaa !32
  store ptr %i.m, ptr %i.j, align 8, !tbaa !33
  %i.n = load i64, ptr %1, align 8, !tbaa !34
  store ptr null, ptr %1, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN6hermes6parser11JSONFactoryC1ERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableE(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef null) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN6hermes18SourceErrorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(464) %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i64 %i.n, ptr %6, align 8, !tbaa !34
  call void @_ZN6hermes6parser10JSONParserC1ERNS0_11JSONFactoryESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS6_EERNS_18SourceErrorManagerEb(ptr noundef nonnull align 8 dereferenceable(1176) %5, ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(464) %4, i1 noundef zeroext false) #16
  %i.o = load ptr, ptr %6, align 8, !tbaa !34     ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.o) #16, !inline_history !38
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i, %bb.a
  %i.s = call { i64, i8 } @_ZN6hermes6parser10JSONParser5parseEv(ptr noundef nonnull align 8 dereferenceable(1176) %5) #16 ; 2 uses
  %i.t = extractvalue { i64, i8 } %i.s, 1
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.8) #18
  unreachable

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 1144
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 1160
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #19
  br label %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i.i

_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 1120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 1136
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #19
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i.i

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 448
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 464
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i.i
  call void @free(ptr noundef %i.ak) #16
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i.i

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i.i:    ; preds = %bb.f, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i.i
  call void @free(ptr noundef %i.ao) #16
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i.i

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i.i:   ; preds = %bb.g, %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZN6hermes6parser10JSONParserD2Ev.exit.i, label %_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i.i.i: ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !49
  call void @_ZdlPv(ptr noundef %i.au) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 32) #19
  br label %_ZN6hermes6parser10JSONParserD2Ev.exit.i

_ZN6hermes6parser10JSONParserD2Ev.exit.i:         ; preds = %_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i.i.i, %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN6hermes18SourceErrorManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeISt4pairImPKPN6hermes6parser10JSONStringEES0_IKS7_PNS2_15JSONHiddenClassEESt10_Select1stISB_ENS2_11JSONFactory18LessHiddenClassKeyESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @_ZN4llvh14FoldingSetBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ay) #16
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN4llvh14FoldingSetBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.az) #16
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i.i: ; preds = %_ZN6hermes6parser10JSONParserD2Ev.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !49
  call void @_ZdlPv(ptr noundef %i.bd) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 32) #19
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i.i, %_ZN6hermes6parser10JSONParserD2Ev.exit.i
  %i.be = extractvalue { i64, i8 } %i.s, 0
  %i.bf = inttoptr i64 %i.be to ptr               ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !57
  %i.bi = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr nonnull @.str, i64 7) ; 2 uses
  %i.bj = extractvalue { i64, i8 } %i.bi, 1
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit: ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.bl = extractvalue { i64, i8 } %i.bi, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !62 ; 3 uses
  %.not = icmp eq ptr %i.bo, null
  br i1 %.not, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !64 ; 2 uses
  %.not58 = icmp eq i32 %i.bp, 3
  br i1 %.not58, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !65
  %i.bs = fptoui double %i.br to i32
  %.not17 = icmp eq i32 %i.bs, 5
  br i1 %.not17, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @_ZNSt7__cxx119to_stringEj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i32 noundef 5) #16
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(32) %11)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.2)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.bt = load double, ptr %i.bq, align 8, !tbaa !65
  %i.bu = fptoui double %i.bt to i32
  call void @_ZNSt7__cxx119to_stringEj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i32 noundef %i.bu) #16
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %12)
  call void @_ZN6hermes12hermes_fatalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %8) #18
  unreachable

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.bv = call noundef ptr @_ZN6hermes6parser16JSONKindToStringENS0_8JSONKindE(i32 noundef %i.bp) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.bv, ptr noundef nonnull align 1 dereferenceable(1) %15)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull @.str.3, ptr noundef nonnull align 8 dereferenceable(32) %14)
  call void @_ZN6hermes12hermes_fatalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %13) #18
  unreachable

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread: ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, %bb.i, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit
  %i.bw = load ptr, ptr %i.bg, align 8, !tbaa !57
  %i.bx = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr nonnull @.str.4, i64 11) ; 2 uses
  %i.by = extractvalue { i64, i8 } %i.bx, 1
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit20, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit20.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit20: ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread
  %i.ca = extractvalue { i64, i8 } %i.bx, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !62 ; 3 uses
  %.not.i21 = icmp eq ptr %i.cd, null
  br i1 %.not.i21, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit20.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !64
  %.fr = freeze i32 %i.ce
  %i.cf = icmp eq i32 %.fr, 3
  br i1 %i.cf, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_111getNumberAsImEET_PKN6hermes6parser9JSONValueE.exit, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit20.thread

_ZN8facebook6hermes7tracing12_GLOBAL__N_111getNumberAsImEET_PKN6hermes6parser9JSONValueE.exit: ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !65
  %i.ci = fptoui double %i.ch to i64
  br label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit20.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit20.thread: ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread, %bb.l, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit20, %_ZN8facebook6hermes7tracing12_GLOBAL__N_111getNumberAsImEET_PKN6hermes6parser9JSONValueE.exit
  %.sroa.046.0 = phi i64 [ %i.ci, %_ZN8facebook6hermes7tracing12_GLOBAL__N_111getNumberAsImEET_PKN6hermes6parser9JSONValueE.exit ], [ undef, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit20 ], [ undef, %bb.l ], [ undef, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread ]
  %.sroa.4.0 = phi i8 [ 1, %_ZN8facebook6hermes7tracing12_GLOBAL__N_111getNumberAsImEET_PKN6hermes6parser9JSONValueE.exit ], [ 0, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit20 ], [ 0, %bb.l ], [ 0, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread ]
  %i.cj = load ptr, ptr %i.bg, align 8, !tbaa !57
  %i.ck = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr nonnull @.str.5, i64 13) ; 2 uses
  %i.cl = extractvalue { i64, i8 } %i.ck, 1
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.m, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit25

bb.m:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit20.thread
  %i.cn = extractvalue { i64, i8 } %i.ck, 0
  %i.co = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cn
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !62
  br label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit25

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit25: ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit20.thread, %bb.m
  %.0.i24 = phi ptr [ %i.cq, %bb.m ], [ null, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit20.thread ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %i.cr = load ptr, ptr %i.bg, align 8, !tbaa !57
  %i.cs = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr nonnull @.str.6, i64 5) ; 2 uses
  %i.ct = extractvalue { i64, i8 } %i.cs, 1
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.n, label %_ZNK6hermes6parser10JSONObject2atEN4llvh9StringRefE.exit

bb.n:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit25
  %i.cv = extractvalue { i64, i8 } %i.cs, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !62
  br label %_ZNK6hermes6parser10JSONObject2atEN4llvh9StringRefE.exit

_ZNK6hermes6parser10JSONObject2atEN4llvh9StringRefE.exit: ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit25, %bb.n
  %spec.select.i26 = phi ptr [ %i.cy, %bb.n ], [ null, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit25 ]
  call fastcc void @_ZN8facebook6hermes7tracing12_GLOBAL__N_18getTraceEPN6hermes6parser9JSONArrayESt8optionalImE(ptr dead_on_unwind noalias writable align 8 %16, ptr noundef %spec.select.i26, i64 %.sroa.046.0, i8 %.sroa.4.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(299) %17, i8 0, i64 136, i1 false), !alias.scope !70
  store i32 33554432, ptr %i.cz, align 4, !tbaa !73, !alias.scope !70
  %i.da = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 -1073741824, ptr %i.da, align 8, !tbaa !86, !alias.scope !70
  %i.db = getelementptr inbounds nuw i8, ptr %17, i64 16
  store double 5.000000e-01, ptr %i.db, align 8, !tbaa !87, !alias.scope !70
  %i.dc = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i32 -1, ptr %i.dc, align 8, !tbaa !88, !alias.scope !70
  %i.dd = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i64 -1, ptr %i.dd, align 8, !tbaa !89, !alias.scope !70
  %i.de = getelementptr inbounds nuw i8, ptr %17, i64 52
  store i32 1, ptr %i.de, align 4, !tbaa !90, !alias.scope !70
  %i.df = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %17, i64 72 ; 6 uses
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !91, !alias.scope !70
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 88 ; 2 uses
  store i64 4294967295, ptr %i.dh, align 8, !alias.scope !70
  %i.di = getelementptr inbounds nuw i8, ptr %17, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.di, i8 0, i64 32, i1 false), !alias.scope !70
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 128 ; 2 uses
  store i8 1, ptr %i.dj, align 8, !tbaa !92, !alias.scope !70
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 136 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %17, i64 208 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dk, i8 0, i64 72, i1 false), !alias.scope !70
  store i32 131072, ptr %i.dl, align 8, !tbaa !93, !alias.scope !70
  %i.dm = getelementptr inbounds nuw i8, ptr %17, i64 212
  store i32 65536, ptr %i.dm, align 4, !tbaa !103, !alias.scope !70
  %i.dn = getelementptr inbounds nuw i8, ptr %17, i64 216
  %i.do = getelementptr inbounds nuw i8, ptr %17, i64 220
  %i.dp = getelementptr inbounds nuw i8, ptr %17, i64 221
  %i.dq = getelementptr inbounds nuw i8, ptr %17, i64 223
  store <8 x i8> <i8 1, i8 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 1>, ptr %i.dn, align 8, !tbaa !104, !alias.scope !70
  %i.dr = getelementptr inbounds nuw i8, ptr %17, i64 224
  store i8 1, ptr %i.dr, align 8, !tbaa !105, !alias.scope !70
  %i.ds = getelementptr inbounds nuw i8, ptr %17, i64 225 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %17, i64 232
  store i32 0, ptr %i.dt, align 8, !tbaa !106, !alias.scope !70
  %i.du = getelementptr inbounds nuw i8, ptr %17, i64 236
  store i8 0, ptr %i.du, align 4, !tbaa !107, !alias.scope !70
  %i.dv = getelementptr inbounds nuw i8, ptr %17, i64 237
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ds, i8 0, i64 5, i1 false), !alias.scope !70
  store i8 1, ptr %i.dv, align 1, !tbaa !108, !alias.scope !70
  %i.dw = getelementptr inbounds nuw i8, ptr %17, i64 238
  store i8 0, ptr %i.dw, align 2, !tbaa !109, !alias.scope !70
  %i.dx = getelementptr inbounds nuw i8, ptr %17, i64 240
  store i32 0, ptr %i.dx, align 8, !tbaa !110, !alias.scope !70
  %i.dy = getelementptr inbounds nuw i8, ptr %17, i64 244
  store i8 1, ptr %i.dy, align 4, !tbaa !111, !alias.scope !70
  %i.dz = getelementptr inbounds nuw i8, ptr %17, i64 248 ; 3 uses
  %i.ea = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6hermes2vm15NopCrashManagerE, i64 16), ptr %i.ea, align 8, !tbaa !36
  store ptr %i.ea, ptr %i.dz, align 8, !tbaa !112, !alias.scope !70
  %i.eb = getelementptr inbounds nuw i8, ptr %17, i64 256 ; 2 uses
  %i.ec = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i32 1, ptr %i.ed, align 8, !tbaa !113
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  store i32 1, ptr %i.ee, align 4, !tbaa !115
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ec, align 8, !tbaa !36
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.ea, ptr %i.ef, align 8, !tbaa !116
  store ptr %i.ec, ptr %i.eb, align 8, !tbaa !119, !alias.scope !70
  %i.eg = getelementptr inbounds nuw i8, ptr %17, i64 264 ; 3 uses
  store i32 0, ptr %i.eg, align 8, !tbaa !120, !alias.scope !70
  %i.eh = getelementptr inbounds nuw i8, ptr %17, i64 268
  store i8 0, ptr %i.eh, align 4, !tbaa !121, !alias.scope !70
  %i.ei = getelementptr inbounds nuw i8, ptr %17, i64 272 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(27) %i.ei, i8 0, i64 27, i1 false), !alias.scope !70
  %.not.i27 = icmp eq ptr %.0.i24, null           ; 2 uses
  br i1 %.not.i27, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_116getRuntimeConfigEPN6hermes6parser10JSONObjectE.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK6hermes6parser10JSONObject2atEN4llvh9StringRefE.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i24, i64 8 ; 7 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !57, !noalias !70
  %i.el = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr nonnull @.str.101, i64 15) ; 2 uses
  %i.em = extractvalue { i64, i8 } %i.el, 1
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i: ; preds = %bb.o
  %i.eo = extractvalue { i64, i8 } %i.el, 0
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i24, i64 16
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eo
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !62, !noalias !70 ; 3 uses
  %.not30.i = icmp eq ptr %i.er, null
  br i1 %.not30.i, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i
  %i.es = load i32, ptr %i.er, align 4, !tbaa !64
  %.not.i.i28 = icmp eq i32 %i.es, 3
  br i1 %.not.i.i28, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_111getNumberAsIjEET_PKN6hermes6parser9JSONValueE.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.89) #18
  unreachable

_ZN8facebook6hermes7tracing12_GLOBAL__N_111getNumberAsIjEET_PKN6hermes6parser9JSONValueE.exit.i: ; preds = %bb.p
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.eu = load double, ptr %i.et, align 8, !tbaa !65
  %i.ev = fptoui double %i.eu to i32
  store i32 %i.ev, ptr %i.dl, align 8, !tbaa !122, !alias.scope !70
  %i.ew = getelementptr inbounds nuw i8, ptr %17, i64 274
  store i8 1, ptr %i.ew, align 2, !tbaa !124, !alias.scope !70
  br label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i: ; preds = %_ZN8facebook6hermes7tracing12_GLOBAL__N_111getNumberAsIjEET_PKN6hermes6parser9JSONValueE.exit.i, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i, %bb.o
  %i.ex = load ptr, ptr %i.ej, align 8, !tbaa !57, !noalias !70
  %i.ey = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr nonnull @.str.102, i64 10) ; 2 uses
  %i.ez = extractvalue { i64, i8 } %i.ey, 1
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit38.i, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit38.thread.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit38.i: ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i
  %i.fb = extractvalue { i64, i8 } %i.ey, 0
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i24, i64 16
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fb
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !62, !noalias !70 ; 2 uses
  %.not31.i = icmp eq ptr %i.fe, null
  br i1 %.not31.i, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit38.thread.i, label %bb.r

bb.r:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit38.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fg = load i8, ptr %i.ff, align 4, !tbaa !125, !range !127, !noundef !128
  store i8 %i.fg, ptr %i.do, align 4, !tbaa !129, !alias.scope !70
  %i.fh = getelementptr inbounds nuw i8, ptr %17, i64 280
  store i8 1, ptr %i.fh, align 8, !tbaa !130, !alias.scope !70
  br label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit38.thread.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit38.thread.i: ; preds = %bb.r, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit38.i, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i
  %i.fi = load ptr, ptr %i.ej, align 8, !tbaa !57, !noalias !70
  %i.fj = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr nonnull @.str.103, i64 8) ; 2 uses
  %i.fk = extractvalue { i64, i8 } %i.fj, 1
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit40.i, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit40.thread.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit40.i: ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit38.thread.i
  %i.fm = extractvalue { i64, i8 } %i.fj, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i24, i64 16
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fm
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !62, !noalias !70 ; 2 uses
  %.not32.i = icmp eq ptr %i.fp, null
  br i1 %.not32.i, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit40.thread.i, label %bb.s

bb.s:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit40.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fr = load i8, ptr %i.fq, align 4, !tbaa !125, !range !127, !noundef !128
  store i8 %i.fr, ptr %i.dp, align 1, !tbaa !131, !alias.scope !70
  %i.fs = getelementptr inbounds nuw i8, ptr %17, i64 281
  store i8 1, ptr %i.fs, align 1, !tbaa !132, !alias.scope !70
  br label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit40.thread.i

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit40.thread.i: ; preds = %bb.s, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit40.i, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit38.thread.i
  %i.ft = load ptr, ptr %i.ej, align 8, !tbaa !57, !noalias !70
  %i.fu = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, ptr nonnull @.str.104, i64 4) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook6hermes7tracing12_GLOBAL__N_18getTraceEPN6hermes6parser9JSONArrayESt8optionalImE:bb.a
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !64
  %i.zf = icmp eq i32 %i.ze, 3
  %spec.select.i189 = select i1 %i.zf, ptr %i.zd, ptr null
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit190

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit190: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit187, %bb.r
  %i.zg = phi ptr [ null, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit187 ], [ %spec.select.i189, %bb.r ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit ] ; 3 uses
  %i.zh = load ptr, ptr %i.il, align 8, !tbaa !57
  %i.zi = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.zh, ptr nonnull @.str.16, i64 8) ; 2 uses
  %i.zj = extractvalue { i64, i8 } %i.zi, 1
  %i.zk = trunc nuw i8 %i.zj to i1
  br i1 %i.zk, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit192, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit195

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit192: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit190
  %i.zl = extractvalue { i64, i8 } %i.zi, 0
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.zl
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !62 ; 3 uses
  %.not.i193 = icmp eq ptr %i.zn, null
  br i1 %.not.i193, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit195, label %bb.s

bb.s:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit192
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !64
  %i.zp = icmp eq i32 %i.zo, 2
  %spec.select.i194 = select i1 %i.zp, ptr %i.zn, ptr null
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit195

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit195: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit190, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit192, %bb.s
  %i.zq = phi ptr [ null, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit192 ], [ %spec.select.i194, %bb.s ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit190 ] ; 2 uses
  %i.zr = load ptr, ptr %i.il, align 8, !tbaa !57
  %i.zs = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.zr, ptr nonnull @.str.17, i64 5) ; 2 uses
  %i.zt = extractvalue { i64, i8 } %i.zs, 1
  %i.zu = trunc nuw i8 %i.zt to i1
  br i1 %i.zu, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit197, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit200

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit197: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit195
  %i.zv = extractvalue { i64, i8 } %i.zs, 0
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.zv
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !62 ; 3 uses
  %.not.i198 = icmp eq ptr %i.zx, null
  br i1 %.not.i198, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit200, label %bb.t

bb.t:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit197
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !64
  %i.zz = icmp eq i32 %i.zy, 2
  %spec.select.i199 = select i1 %i.zz, ptr %i.zx, ptr null
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit200

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit200: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit195, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit197, %bb.t
  %i.aaa = phi ptr [ null, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit197 ], [ %spec.select.i199, %bb.t ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit195 ] ; 5 uses
  %i.aab = load ptr, ptr %i.il, align 8, !tbaa !57
  %i.aac = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.aab, ptr nonnull @.str.18, i64 5) ; 2 uses
  %i.aad = extractvalue { i64, i8 } %i.aac, 1
  %i.aae = trunc nuw i8 %i.aad to i1
  br i1 %i.aae, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit202, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit205

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit202: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit200
  %i.aaf = extractvalue { i64, i8 } %i.aac, 0
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.aaf
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !62 ; 3 uses
  %.not.i203 = icmp eq ptr %i.aah, null
  br i1 %.not.i203, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit205, label %bb.u

bb.u:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit202
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !64
  %i.aaj = icmp eq i32 %i.aai, 3
  %spec.select.i204 = select i1 %i.aaj, ptr %i.aah, ptr null
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit205

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit205: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit200, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit202, %bb.u
  %i.aak = phi ptr [ null, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit202 ], [ %spec.select.i204, %bb.u ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit200 ] ; 2 uses
  %i.aal = load ptr, ptr %i.il, align 8, !tbaa !57
  %i.aam = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.aal, ptr nonnull @.str.19, i64 4) ; 2 uses
  %i.aan = extractvalue { i64, i8 } %i.aam, 1
  %i.aao = trunc nuw i8 %i.aan to i1
  br i1 %i.aao, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit207, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit207: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit205
  %i.aap = extractvalue { i64, i8 } %i.aam, 0
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.aap
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !62 ; 3 uses
  %.not.i208 = icmp eq ptr %i.aar, null
  br i1 %.not.i208, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit207
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !64
  %i.aat = icmp eq i32 %i.aas, 1
  %spec.select.i209 = select i1 %i.aat, ptr %i.aar, ptr null
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit205, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit207, %bb.v
  %i.aau = phi ptr [ null, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit207 ], [ %spec.select.i209, %bb.v ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit205 ] ; 3 uses
  %i.aav = load ptr, ptr %i.il, align 8, !tbaa !57
  %i.aaw = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.aav, ptr nonnull @.str.20, i64 7) ; 2 uses
  %i.aax = extractvalue { i64, i8 } %i.aaw, 1
  %i.aay = trunc nuw i8 %i.aax to i1
  br i1 %i.aay, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit211, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit214

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit211: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit
  %i.aaz = extractvalue { i64, i8 } %i.aaw, 0
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.aaz
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !62 ; 3 uses
  %.not.i212 = icmp eq ptr %i.abb, null
  br i1 %.not.i212, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit214, label %bb.w

bb.w:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit211
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !64
  %i.abd = icmp eq i32 %i.abc, 2
  %spec.select.i213 = select i1 %i.abd, ptr %i.abb, ptr null
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit214

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit214: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit211, %bb.w
  %i.abe = phi ptr [ null, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit211 ], [ %spec.select.i213, %bb.w ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit ] ; 3 uses
  %i.abf = load ptr, ptr %i.il, align 8, !tbaa !57
  %i.abg = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.abf, ptr nonnull @.str.21, i64 6) ; 2 uses
  %i.abh = extractvalue { i64, i8 } %i.abg, 1
  %i.abi = trunc nuw i8 %i.abh to i1
  br i1 %i.abi, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit216, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit219

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit216: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit214
  %i.abj = extractvalue { i64, i8 } %i.abg, 0
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.abj
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !62 ; 3 uses
  %.not.i217 = icmp eq ptr %i.abl, null
  br i1 %.not.i217, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit219, label %bb.x

bb.x:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit216
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !64
  %i.abn = icmp eq i32 %i.abm, 2
  %spec.select.i218 = select i1 %i.abn, ptr %i.abl, ptr null
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit219

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit219: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit214, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit216, %bb.x
  %i.abo = phi ptr [ null, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit216 ], [ %spec.select.i218, %bb.x ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit214 ] ; 6 uses
  switch i32 %.0.i168, label %default.unreachable865 [
    i32 0, label %bb.y
    i32 1, label %bb.an
    i32 2, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit243
    i32 3, label %bb.at
    i32 4, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit245
    i32 10, label %bb.az
    i32 11, label %bb.bc
    i32 30, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit262
    i32 31, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit268
    i32 5, label %bb.bj
    i32 6, label %bb.bs
    i32 7, label %bb.cc
    i32 8, label %bb.ci
    i32 9, label %bb.cj
    i32 12, label %bb.cw
    i32 13, label %bb.dc
    i32 14, label %bb.dn
    i32 38, label %bb.dt
    i32 15, label %bb.dz
    i32 16, label %bb.ea
    i32 17, label %bb.ed
    i32 18, label %bb.ee
    i32 19, label %bb.ek
    i32 20, label %bb.er
    i32 21, label %bb.ey
    i32 22, label %bb.fe
    i32 23, label %bb.fk
    i32 24, label %bb.fr
    i32 25, label %bb.fs
    i32 26, label %bb.fy
    i32 27, label %bb.ge
    i32 28, label %bb.gf
    i32 29, label %bb.gg
    i32 32, label %bb.gj
    i32 33, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit469
    i32 34, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit484
    i32 35, label %bb.gw
    i32 37, label %bb.hc
    i32 36, label %bb.hi
    i32 39, label %bb.hj
  ]

bb.y:                                             ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit219
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr %i.ig, ptr %7, align 8, !tbaa !91
  store i64 0, ptr %i.ih, align 8, !tbaa !146
  store i8 0, ptr %i.ig, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %8, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #16
  store i8 0, ptr %i.y, align 1, !tbaa !104
  %i.abp = load ptr, ptr %i.il, align 8, !tbaa !57
  %i.abq = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.abp, ptr nonnull @.str.22, i64 9) ; 2 uses
  %i.abr = extractvalue { i64, i8 } %i.abq, 1
  %i.abs = trunc nuw i8 %i.abr to i1
  br i1 %i.abs, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit221, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit224.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit221: ; preds = %bb.y
  %i.abt = extractvalue { i64, i8 } %i.abq, 0
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.abt
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !62 ; 3 uses
  %.not.i222 = icmp eq ptr %i.abv, null
  br i1 %.not.i222, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit224.thread, label %bb.z

bb.z:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit221
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !64
  %.fr708 = freeze i32 %i.abw
  %i.abx = icmp eq i32 %.fr708, 2
  br i1 %i.abx, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit224, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit224.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit224: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !159 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !162, !noalias !223 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aca, null
  br i1 %.not.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit224
  store ptr %i.ii, ptr %9, align 8, !tbaa !91, !alias.scope !223
  store i64 0, ptr %i.ij, align 8, !tbaa !146, !alias.scope !223
  store i8 0, ptr %i.ii, align 8, !tbaa !147, !alias.scope !223
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.ab:                                            ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit224
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.acc = load i64, ptr %i.acb, align 8, !tbaa !173, !noalias !223 ; 4 uses
  store ptr %i.ii, ptr %9, align 8, !tbaa !91, !alias.scope !223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #16, !noalias !223
  store i64 %i.acc, ptr %i.x, align 8, !tbaa !175, !noalias !223
  %i.acd = icmp ugt i64 %i.acc, 15
  br i1 %i.acd, label %bb.ac, label %._crit_edge.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ace = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef 0) #16 ; 2 uses
  store ptr %i.ace, ptr %9, align 8, !tbaa !176, !alias.scope !223
  %i.acf = load i64, ptr %i.x, align 8, !tbaa !175, !noalias !223
  store i64 %i.acf, ptr %i.ii, align 8, !tbaa !147, !alias.scope !223
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.ac, %bb.ab
  %i.acg = phi ptr [ %i.ace, %bb.ac ], [ %i.ii, %bb.ab ] ; 2 uses
  switch i64 %i.acc, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ach = load i8, ptr %i.aca, align 1, !tbaa !147
  store i8 %i.ach, ptr %i.acg, align 1, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acg, ptr nonnull align 1 %i.aca, i64 %i.acc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i.i
  %i.aci = load i64, ptr %i.x, align 8, !tbaa !175, !noalias !223 ; 2 uses
  store i64 %i.aci, ptr %i.ij, align 8, !tbaa !146, !alias.scope !223
  %i.acj = load ptr, ptr %9, align 8, !tbaa !176, !alias.scope !223
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 %i.aci
  store i8 0, ptr %i.ack, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #16, !noalias !223
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  %i.acl = load ptr, ptr %7, align 8, !tbaa !176  ; 6 uses
  %i.acm = icmp eq ptr %i.acl, %i.ig
  %i.acn = load ptr, ptr %9, align 8, !tbaa !176  ; 5 uses
  %i.aco = icmp eq ptr %i.acn, %i.ii              ; 2 uses
  %.pre722 = load i64, ptr %i.ij, align 8, !tbaa !146 ; 5 uses
  br i1 %i.acm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  br i1 %i.aco, label %bb.af, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  br i1 %i.aco, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.acp = icmp ult i64 %.pre722, 16
  call void @llvm.assume(i1 %i.acp)
  switch i64 %.pre722, label %bb.ah [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.acq = load i8, ptr %i.acn, align 1, !tbaa !147
  store i8 %i.acq, ptr %i.acl, align 1, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acl, ptr align 1 %i.acn, i64 %.pre722, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ah, %bb.ag, %bb.af
  %i.acr = load i64, ptr %i.ij, align 8, !tbaa !146 ; 2 uses
  store i64 %i.acr, ptr %i.ih, align 8, !tbaa !146
  %i.acs = load ptr, ptr %7, align 8, !tbaa !176
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 %i.acr
  store i8 0, ptr %i.act, align 1, !tbaa !147
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !176
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.acn, ptr %7, align 8, !tbaa !176
  store i64 %.pre722, ptr %i.ih, align 8, !tbaa !146
  %i.acu = load i64, ptr %i.ii, align 8, !tbaa !147
  store i64 %i.acu, ptr %i.ig, align 8, !tbaa !147
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.acv = load i64, ptr %i.ig, align 8, !tbaa !147
  store ptr %i.acn, ptr %7, align 8, !tbaa !176
  store i64 %.pre722, ptr %i.ih, align 8, !tbaa !146
  %i.acw = load i64, ptr %i.ii, align 8, !tbaa !147
  store i64 %i.acw, ptr %i.ig, align 8, !tbaa !147
  %.not.i225 = icmp eq ptr %i.acl, null
  br i1 %.not.i225, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.acl, ptr %9, align 8, !tbaa !176
  store i64 %i.acv, ptr %i.ii, align 8, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ii, ptr %9, align 8, !tbaa !176
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ai, %bb.aj
  %i.acx = phi ptr [ %i.acl, %bb.ai ], [ %i.ii, %bb.aj ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.ij, align 8, !tbaa !146
  store i8 0, ptr %i.acx, align 1, !tbaa !147
  %i.acy = load ptr, ptr %9, align 8, !tbaa !176  ; 2 uses
  %i.acz = icmp eq ptr %i.acy, %i.ii
  br i1 %i.acz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ada = load i64, ptr %i.ii, align 8, !tbaa !147
  %i.adb = add i64 %i.ada, 1
  call void @_ZdlPvm(ptr noundef %i.acy, i64 noundef %i.adb) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit224.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit224.thread: ; preds = %bb.y, %bb.z, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.adc = load ptr, ptr %i.il, align 8, !tbaa !57
  %i.add = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.adc, ptr nonnull @.str.23, i64 10) ; 2 uses
  %i.ade = extractvalue { i64, i8 } %i.add, 1
  %i.adf = trunc nuw i8 %i.ade to i1
  br i1 %i.adf, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit227, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit230.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit227: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit224.thread
  %i.adg = extractvalue { i64, i8 } %i.add, 0
  %i.adh = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.adg
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !62 ; 3 uses
  %.not.i228 = icmp eq ptr %i.adi, null
  br i1 %.not.i228, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit230.thread, label %bb.ak

bb.ak:                                            ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit227
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !64
  %.fr709 = freeze i32 %i.adj
  %i.adk = icmp eq i32 %.fr709, 2
  br i1 %i.adk, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit230, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit230.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit230: ; preds = %bb.ak
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adi, i64 16
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !159 ; 2 uses
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adm, i64 8
  %.sroa.229.0.copyload = load i64, ptr %.sroa.229.0..sroa_idx, align 8, !tbaa !175
  %.not.i231 = icmp eq i64 %.sroa.229.0.copyload, 40
  br i1 %.not.i231, label %_ZN8facebook6hermes7tracing12_GLOBAL__N_120parseHashStrAsNumberEN4llvh9StringRefE.exit, label %bb.al

bb.al:                                            ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit230
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.86) #18, !noalias !224
  unreachable

_ZN8facebook6hermes7tracing12_GLOBAL__N_120parseHashStrAsNumberEN4llvh9StringRefE.exit: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit230
  %.sroa.028.0.copyload = load ptr, ptr %i.adm, align 8, !tbaa !216 ; 20 uses
  %i.adn = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr %.sroa.028.0.copyload, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.i = extractvalue { double, i8 } %i.adn, 0
  %i.ado = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 2
  %i.adp = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.ado, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.1.i = extractvalue { double, i8 } %i.adp, 0
  %i.adq = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 4
  %i.adr = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.adq, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.2.i = extractvalue { double, i8 } %i.adr, 0
  %i.ads = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 6
  %i.adt = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.ads, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.3.i = extractvalue { double, i8 } %i.adt, 0
  %i.adu = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 8
  %i.adv = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.adu, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.4.i = extractvalue { double, i8 } %i.adv, 0
  %i.adw = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 10
  %i.adx = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.adw, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.5.i = extractvalue { double, i8 } %i.adx, 0
  %i.ady = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 12
  %i.adz = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.ady, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.6.i = extractvalue { double, i8 } %i.adz, 0
  %i.aea = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 14
  %i.aeb = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.aea, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.7.i = extractvalue { double, i8 } %i.aeb, 0
  %i.aec = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 16
  %i.aed = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.aec, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.8.i = extractvalue { double, i8 } %i.aed, 0
  %i.aee = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 18
  %i.aef = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.aee, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.9.i = extractvalue { double, i8 } %i.aef, 0
  %i.aeg = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 20
  %i.aeh = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.aeg, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.10.i = extractvalue { double, i8 } %i.aeh, 0
  %i.aei = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 22
  %i.aej = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.aei, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.11.i = extractvalue { double, i8 } %i.aej, 0
  %i.aek = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 24
  %i.ael = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.aek, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.12.i = extractvalue { double, i8 } %i.ael, 0
  %i.aem = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 26
  %i.aen = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.aem, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.13.i = extractvalue { double, i8 } %i.aen, 0
  %i.aeo = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 28
  %i.aep = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.aeo, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.14.i = extractvalue { double, i8 } %i.aep, 0
  %i.aeq = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 30
  %i.aer = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.aeq, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.15.i = extractvalue { double, i8 } %i.aer, 0
  %i.aes = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 32
  %i.aet = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.aes, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.16.i = extractvalue { double, i8 } %i.aet, 0
  %i.aeu = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 34
  %i.aev = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.aeu, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.17.i = extractvalue { double, i8 } %i.aev, 0
  %i.aew = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 36
  %i.aex = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.aew, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.18.i = extractvalue { double, i8 } %i.aex, 0
  %i.aey = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 38
  %i.aez = call { double, i8 } @_ZN6hermes17parseIntWithRadixILb0EN4llvh9StringRefEEENS_8OptValueIdEET0_i(ptr nonnull %i.aey, i64 2, i32 noundef 16), !noalias !224
  %.fca.0.extract.19.i = extractvalue { double, i8 } %i.aez, 0
  %i.afa = insertelement <16 x double> poison, double %.fca.0.extract.i, i64 0
  %i.afb = insertelement <16 x double> %i.afa, double %.fca.0.extract.1.i, i64 1
  %i.afc = insertelement <16 x double> %i.afb, double %.fca.0.extract.2.i, i64 2
  %i.afd = insertelement <16 x double> %i.afc, double %.fca.0.extract.3.i, i64 3
  %i.afe = insertelement <16 x double> %i.afd, double %.fca.0.extract.4.i, i64 4
  %i.aff = insertelement <16 x double> %i.afe, double %.fca.0.extract.5.i, i64 5
  %i.afg = insertelement <16 x double> %i.aff, double %.fca.0.extract.6.i, i64 6
  %i.afh = insertelement <16 x double> %i.afg, double %.fca.0.extract.7.i, i64 7
  %i.afi = insertelement <16 x double> %i.afh, double %.fca.0.extract.8.i, i64 8
  %i.afj = insertelement <16 x double> %i.afi, double %.fca.0.extract.9.i, i64 9
  %i.afk = insertelement <16 x double> %i.afj, double %.fca.0.extract.10.i, i64 10
  %i.afl = insertelement <16 x double> %i.afk, double %.fca.0.extract.11.i, i64 11
  %i.afm = insertelement <16 x double> %i.afl, double %.fca.0.extract.12.i, i64 12
  %i.afn = insertelement <16 x double> %i.afm, double %.fca.0.extract.13.i, i64 13
  %i.afo = insertelement <16 x double> %i.afn, double %.fca.0.extract.14.i, i64 14
  %i.afp = insertelement <16 x double> %i.afo, double %.fca.0.extract.15.i, i64 15
  %i.afq = fptoui <16 x double> %i.afp to <16 x i8>
  store <16 x i8> %i.afq, ptr %8, align 16
  %i.afr = insertelement <4 x double> poison, double %.fca.0.extract.16.i, i64 0
  %i.afs = insertelement <4 x double> %i.afr, double %.fca.0.extract.17.i, i64 1
  %i.aft = insertelement <4 x double> %i.afs, double %.fca.0.extract.18.i, i64 2
  %i.afu = insertelement <4 x double> %i.aft, double %.fca.0.extract.19.i, i64 3
  %i.afv = fptoui <4 x double> %i.afu to <4 x i8>
  store <4 x i8> %i.afv, ptr %.sroa.19.0..sroa_idx, align 16
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit230.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit230.thread: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit224.thread, %bb.ak, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit227, %_ZN8facebook6hermes7tracing12_GLOBAL__N_120parseHashStrAsNumberEN4llvh9StringRefE.exit
  %i.afw = load ptr, ptr %i.il, align 8, !tbaa !57
  %i.afx = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.afw, ptr nonnull @.str.24, i64 16) ; 2 uses
  %i.afy = extractvalue { i64, i8 } %i.afx, 1
  %i.afz = trunc nuw i8 %i.afy to i1
  br i1 %i.afz, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit233, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser11JSONBooleanENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit233: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit230.thread
  %i.aga = extractvalue { i64, i8 } %i.afx, 0
  %i.agb = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.aga
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !62 ; 3 uses
  %.not.i234 = icmp eq ptr %i.agc, null
  br i1 %.not.i234, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser11JSONBooleanENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread, label %bb.am

bb.am:                                            ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit233
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !64
  %.fr710 = freeze i32 %i.agd
  %i.age = icmp eq i32 %.fr710, 4
  br i1 %i.age, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser11JSONBooleanENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser11JSONBooleanENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser11JSONBooleanENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit: ; preds = %bb.am
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agc, i64 4
  %i.agg = load i8, ptr %i.agf, align 4, !tbaa !125, !range !127, !noundef !128
  store i8 %i.agg, ptr %i.y, align 1, !tbaa !104
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser11JSONBooleanENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser11JSONBooleanENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit230.thread, %bb.am, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit233, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser11JSONBooleanENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_17BeginExecJSRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5arrayIhLm20EERbEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(20) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.agh = load ptr, ptr %7, align 8, !tbaa !176  ; 2 uses
  %i.agi = icmp eq ptr %i.agh, %i.ig
  br i1 %i.agi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser11JSONBooleanENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread
  %i.agj = load i64, ptr %i.ig, align 8, !tbaa !147
  %i.agk = add i64 %i.agj, 1
  call void @_ZdlPvm(ptr noundef %i.agh, i64 noundef %i.agk) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser11JSONBooleanENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.hk

bb.an:                                            ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit219
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.agl = getelementptr inbounds nuw i8, ptr %i.abo, i64 16
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !159
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !162 ; 4 uses
  store ptr %i.id, ptr %11, align 8, !tbaa !91
  %i.ago = icmp eq ptr %i.agn, null
  br i1 %i.ago, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.agp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.agn) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #16
  store i64 %i.agp, ptr %i.w, align 8, !tbaa !175
  %i.agq = icmp ugt i64 %i.agp, 15
  br i1 %i.agq, label %bb.aq, label %._crit_edge.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.agr = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef 0) #16 ; 2 uses
  store ptr %i.agr, ptr %11, align 8, !tbaa !176
  %i.ags = load i64, ptr %i.w, align 8, !tbaa !175
  store i64 %i.ags, ptr %i.id, align 8, !tbaa !147
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.aq, %bb.ap
  %i.agt = phi ptr [ %i.agr, %bb.aq ], [ %i.id, %bb.ap ] ; 2 uses
  switch i64 %i.agp, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i
  %i.agu = load i8, ptr %i.agn, align 1, !tbaa !147
  store i8 %i.agu, ptr %i.agt, align 1, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.as:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agt, ptr nonnull align 1 %i.agn, i64 %i.agp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.ar, %bb.as
  %i.agv = load i64, ptr %i.w, align 8, !tbaa !175 ; 2 uses
  store i64 %i.agv, ptr %i.ie, align 8, !tbaa !146
  %i.agw = load ptr, ptr %11, align 8, !tbaa !176
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 %i.agv
  store i8 0, ptr %i.agx, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #16
  %i.agy = call { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace6decodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %11) #16 ; 2 uses
  %i.agz = extractvalue { i32, i64 } %i.agy, 0
  store i32 %i.agz, ptr %10, align 8
  %i.aha = extractvalue { i32, i64 } %i.agy, 1
  store i64 %i.aha, ptr %i.if, align 8
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_15EndExecJSRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %10)
  %i.ahb = load ptr, ptr %11, align 8, !tbaa !176 ; 2 uses
  %i.ahc = icmp eq ptr %i.ahb, %i.id
  br i1 %i.ahc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.ahd = load i64, ptr %i.id, align 8, !tbaa !147
  %i.ahe = add i64 %i.ahd, 1
  call void @_ZdlPvm(ptr noundef %i.ahb, i64 noundef %i.ahe) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.hk

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit243: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #16
  %i.ahf = load ptr, ptr %i.il, align 8, !tbaa !57
  %i.ahg = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ahf, ptr nonnull @.str.25, i64 3)
  %i.ahh = extractvalue { i64, i8 } %i.ahg, 0
  %i.ahi = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.ahh
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !62
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 16
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !159
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !162
  store ptr %i.ahm, ptr %i.z, align 8, !tbaa !216
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_12MarkerRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEPKcEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #16
  br label %bb.hk

bb.at:                                            ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #16
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %i.aho = load double, ptr %i.ahn, align 8, !tbaa !65
  store double %i.aho, ptr %i.aa, align 8, !tbaa !227
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_18CreateObjectRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #16
  br label %bb.hk

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit245: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit219
  %i.ahp = load ptr, ptr %i.il, align 8, !tbaa !57
  %i.ahq = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ahp, ptr nonnull @.str.26, i64 9)
  %i.ahr = extractvalue { i64, i8 } %i.ahq, 0
  %i.ahs = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.ahr
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !62, !nonnull !128, !noundef !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #16
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %i.ahv = load double, ptr %i.ahu, align 8, !tbaa !65
  store double %i.ahv, ptr %i.ab, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.aht, i64 16
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !159
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !162 ; 4 uses
  store ptr %i.ia, ptr %13, align 8, !tbaa !91
  %i.ahz = icmp eq ptr %i.ahy, null
  br i1 %i.ahz, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit245
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

bb.av:                                            ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit245
  %i.aia = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ahy) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #16
  store i64 %i.aia, ptr %i.v, align 8, !tbaa !175
  %i.aib = icmp ugt i64 %i.aia, 15
  br i1 %i.aib, label %bb.aw, label %._crit_edge.i.i249

bb.aw:                                            ; preds = %bb.av
  %i.aic = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef 0) #16 ; 2 uses
  store ptr %i.aic, ptr %13, align 8, !tbaa !176
  %i.aid = load i64, ptr %i.v, align 8, !tbaa !175
  store i64 %i.aid, ptr %i.ia, align 8, !tbaa !147
  br label %._crit_edge.i.i249

._crit_edge.i.i249:                               ; preds = %bb.aw, %bb.av
  %i.aie = phi ptr [ %i.aic, %bb.aw ], [ %i.ia, %bb.av ] ; 2 uses
  switch i64 %i.aia, label %bb.ay [
    i64 1, label %bb.ax
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit250
  ]

bb.ax:                                            ; preds = %._crit_edge.i.i249
  %i.aif = load i8, ptr %i.ahy, align 1, !tbaa !147
  store i8 %i.aif, ptr %i.aie, align 1, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit250

bb.ay:                                            ; preds = %._crit_edge.i.i249
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aie, ptr nonnull align 1 %i.ahy, i64 %i.aia, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit250: ; preds = %._crit_edge.i.i249, %bb.ax, %bb.ay
  %i.aig = load i64, ptr %i.v, align 8, !tbaa !175 ; 2 uses
  store i64 %i.aig, ptr %i.ib, align 8, !tbaa !146
  %i.aih = load ptr, ptr %13, align 8, !tbaa !176
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 %i.aig
  store i8 0, ptr %i.aii, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #16
  %i.aij = call { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace6decodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %13) #16 ; 2 uses
  %i.aik = extractvalue { i32, i64 } %i.aij, 0
  store i32 %i.aik, ptr %12, align 8
  %i.ail = extractvalue { i32, i64 } %i.aij, 1
  store i64 %i.ail, ptr %i.ic, align 8
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_31CreateObjectWithPrototypeRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %12)
  %i.aim = load ptr, ptr %13, align 8, !tbaa !176 ; 2 uses
  %i.ain = icmp eq ptr %i.aim, %i.ia
  br i1 %i.ain, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit250
  %i.aio = load i64, ptr %i.ia, align 8, !tbaa !147
  %i.aip = add i64 %i.aio, 1
  call void @_ZdlPvm(ptr noundef %i.aim, i64 noundef %i.aip) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
end_hunk_1
begin_hunk_2_@_ZN8facebook6hermes7tracing12_GLOBAL__N_18getTraceEPN6hermes6parser9JSONArrayESt8optionalImE:bb.a

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #16
  %i.arh = getelementptr inbounds nuw i8, ptr %i.ape, i64 16
  %i.ari = load double, ptr %i.arh, align 8, !tbaa !65
  store double %i.ari, ptr %i.at, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #16
  %i.arj = getelementptr inbounds nuw i8, ptr %i.apw, i64 16
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !159 ; 2 uses
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !162
  store ptr %i.arl, ptr %i.au, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #16
  %i.arm = getelementptr inbounds nuw i8, ptr %i.ark, i64 8
  %i.arn = load i64, ptr %i.arm, align 8, !tbaa !173
  store i64 %i.arn, ptr %i.av, align 8, !tbaa !175
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreatePropNameIDRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdPKcmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #16
  br label %bb.hk

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.aro = getelementptr i8, ptr %i.apw, i64 16
  %.val157 = load ptr, ptr %i.aro, align 8, !tbaa !159
  call fastcc void @_ZN8facebook6hermes7tracing12_GLOBAL__N_120jsonStringToU8StringB5cxx11ERKN6hermes6parser10JSONStringE(ptr dead_on_unwind noalias writable align 8 %18, ptr %.val157)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #16
  %i.arp = getelementptr inbounds nuw i8, ptr %i.ape, i64 16
  %i.arq = load double, ptr %i.arp, align 8, !tbaa !65
  store double %i.arq, ptr %i.aw, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #16
  %i.arr = load ptr, ptr %18, align 8, !tbaa !176
  store ptr %i.arr, ptr %i.ax, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #16
  %i.ars = load i64, ptr %i.hs, align 8, !tbaa !146
  store i64 %i.ars, ptr %i.ay, align 8, !tbaa !175
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreatePropNameIDRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdPKhmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #16
  %i.art = load ptr, ptr %18, align 8, !tbaa !176 ; 2 uses
  %i.aru = icmp eq ptr %i.art, %i.ht
  br i1 %i.aru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %bb.ca
  %i.arv = load i64, ptr %i.ht, align 8, !tbaa !147
  %i.arw = add i64 %i.arv, 1
  call void @_ZdlPvm(ptr noundef %i.art, i64 noundef %i.arw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.hk

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  %i.arx = getelementptr i8, ptr %i.apw, i64 16
  %.val161 = load ptr, ptr %i.arx, align 8, !tbaa !159 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %.sroa.0.0.copyload.i334 = load ptr, ptr %.val161, align 8, !tbaa !216, !noalias !256 ; 2 uses
  %.sroa.5.0..16.val.sroa_idx.i335 = getelementptr inbounds nuw i8, ptr %.val161, i64 8
  %.sroa.5.0.copyload.i336 = load i64, ptr %.sroa.5.0..16.val.sroa_idx.i335, align 8, !tbaa !175, !noalias !256
  store ptr %i.hq, ptr %19, align 8, !tbaa !240, !alias.scope !256
  store i64 0, ptr %i.hr, align 8, !tbaa !243, !alias.scope !256
  store i16 0, ptr %i.hq, align 8, !tbaa !245, !alias.scope !256
  %i.ary = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i334, i64 %.sroa.5.0.copyload.i336
  %i.arz = call ptr @_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEET_S9_PKcSB_(ptr nonnull align 8 %19, ptr noundef %.sroa.0.0.copyload.i334, ptr noundef %i.ary) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az) #16
  %i.asa = getelementptr inbounds nuw i8, ptr %i.ape, i64 16
  %i.asb = load double, ptr %i.asa, align 8, !tbaa !65
  store double %i.asb, ptr %i.az, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba) #16
  %i.asc = load ptr, ptr %19, align 8, !tbaa !247
  store ptr %i.asc, ptr %i.ba, align 8, !tbaa !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb) #16
  %i.asd = load i64, ptr %i.hr, align 8, !tbaa !243
  store i64 %i.asd, ptr %i.bb, align 8, !tbaa !175
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreatePropNameIDRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdPDsmEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az) #16
  %i.ase = load ptr, ptr %19, align 8, !tbaa !247 ; 2 uses
  %i.asf = icmp eq ptr %i.ase, %i.hq
  br i1 %i.asf, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit339, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i337

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i337: ; preds = %bb.cb
  %i.asg = load i64, ptr %i.hq, align 8, !tbaa !147
  %i.ash = shl i64 %i.asg, 1
  %i.asi = add i64 %i.ash, 2
  call void @_ZdlPvm(ptr noundef %i.ase, i64 noundef %i.asi) #19
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit339

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit339: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i337
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %bb.hk

bb.cc:                                            ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #16
  %i.asj = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %i.ask = load double, ptr %i.asj, align 8, !tbaa !65
  store double %i.ask, ptr %i.bc, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  %i.asl = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  %i.asm = load ptr, ptr %i.asl, align 8, !tbaa !159
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !162 ; 4 uses
  store ptr %i.hl, ptr %21, align 8, !tbaa !91
  %i.aso = icmp eq ptr %i.asn, null
  br i1 %i.aso, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #18
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.asp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.asn) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #16
  store i64 %i.asp, ptr %i.s, align 8, !tbaa !175
  %i.asq = icmp ugt i64 %i.asp, 15
  br i1 %i.asq, label %bb.cf, label %._crit_edge.i.i340

bb.cf:                                            ; preds = %bb.ce
  %i.asr = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef 0) #16 ; 2 uses
  store ptr %i.asr, ptr %21, align 8, !tbaa !176
  %i.ass = load i64, ptr %i.s, align 8, !tbaa !175
  store i64 %i.ass, ptr %i.hl, align 8, !tbaa !147
  br label %._crit_edge.i.i340

._crit_edge.i.i340:                               ; preds = %bb.cf, %bb.ce
  %i.ast = phi ptr [ %i.asr, %bb.cf ], [ %i.hl, %bb.ce ] ; 2 uses
  switch i64 %i.asp, label %bb.ch [
    i64 1, label %bb.cg
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit341
  ]

bb.cg:                                            ; preds = %._crit_edge.i.i340
  %i.asu = load i8, ptr %i.asn, align 1, !tbaa !147
  store i8 %i.asu, ptr %i.ast, align 1, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit341

bb.ch:                                            ; preds = %._crit_edge.i.i340
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ast, ptr nonnull align 1 %i.asn, i64 %i.asp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit341

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit341: ; preds = %._crit_edge.i.i340, %bb.cg, %bb.ch
  %i.asv = load i64, ptr %i.s, align 8, !tbaa !175 ; 2 uses
  store i64 %i.asv, ptr %i.hm, align 8, !tbaa !146
  %i.asw = load ptr, ptr %21, align 8, !tbaa !176
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 %i.asv
  store i8 0, ptr %i.asx, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #16
  %i.asy = call { i32, i64 } @_ZN8facebook6hermes7tracing10SynthTrace6decodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %21) #16 ; 2 uses
  %i.asz = extractvalue { i32, i64 } %i.asy, 0
  store i32 %i.asz, ptr %20, align 8
  %i.ata = extractvalue { i32, i64 } %i.asy, 1
  store i64 %i.ata, ptr %i.hn, align 8
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_31CreatePropNameIDWithValueRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdNS2_10TraceValueEEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %20)
  %i.atb = load ptr, ptr %21, align 8, !tbaa !176 ; 2 uses
  %i.atc = icmp eq ptr %i.atb, %i.hl
  br i1 %i.atc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit341
  %i.atd = load i64, ptr %i.hl, align 8, !tbaa !147
  %i.ate = add i64 %i.atd, 1
  call void @_ZdlPvm(ptr noundef %i.atb, i64 noundef %i.ate) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit341, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc) #16
  br label %bb.hk

bb.ci:                                            ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd) #16
  %i.atf = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %i.atg = load double, ptr %i.atf, align 8, !tbaa !65
  store double %i.atg, ptr %i.bd, align 8, !tbaa !227
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_22CreateHostObjectRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEdEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #16
  br label %bb.hk

bb.cj:                                            ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be) #16
  store i32 0, ptr %i.be, align 4, !tbaa !3
  %i.ath = load ptr, ptr %i.il, align 8, !tbaa !57
  %i.ati = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ath, ptr nonnull @.str.37, i64 14) ; 2 uses
  %i.atj = extractvalue { i64, i8 } %i.ati, 1
  %i.atk = trunc nuw i8 %i.atj to i1
  br i1 %i.atk, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit346, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit349.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit346: ; preds = %bb.cj
  %i.atl = extractvalue { i64, i8 } %i.ati, 0
  %i.atm = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.atl
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !62 ; 3 uses
  %.not.i347 = icmp eq ptr %i.atn, null
  br i1 %.not.i347, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit349.thread, label %bb.ck

bb.ck:                                            ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit346
  %i.ato = load i32, ptr %i.atn, align 4, !tbaa !64
  %.fr = freeze i32 %i.ato
  %i.atp = icmp eq i32 %.fr, 3
  br i1 %i.atp, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit349, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit349.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit349: ; preds = %bb.ck
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atn, i64 16
  %i.atr = load double, ptr %i.atq, align 8, !tbaa !65
  %i.ats = fptoui double %i.atr to i32
  store i32 %i.ats, ptr %i.be, align 4, !tbaa !3
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit349.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit349.thread: ; preds = %bb.cj, %bb.ck, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit346, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit349
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  store ptr %i.hh, ptr %22, align 8, !tbaa !91
  store i64 0, ptr %i.hi, align 8, !tbaa !146
  store i8 0, ptr %i.hh, align 8, !tbaa !147
  %i.att = load ptr, ptr %i.il, align 8, !tbaa !57
  %i.atu = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.att, ptr nonnull @.str.38, i64 12) ; 2 uses
  %i.atv = extractvalue { i64, i8 } %i.atu, 1
  %i.atw = trunc nuw i8 %i.atv to i1
  br i1 %i.atw, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit351, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit354.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit351: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit349.thread
  %i.atx = extractvalue { i64, i8 } %i.atu, 0
  %i.aty = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.atx
  %i.atz = load ptr, ptr %i.aty, align 8, !tbaa !62 ; 3 uses
  %.not.i352 = icmp eq ptr %i.atz, null
  br i1 %.not.i352, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit354.thread, label %bb.cl

bb.cl:                                            ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit351
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !64
  %.fr707 = freeze i32 %i.aua
  %i.aub = icmp eq i32 %.fr707, 2
  br i1 %i.aub, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit354, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit354.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit354: ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  %i.auc = getelementptr inbounds nuw i8, ptr %i.atz, i64 16
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !159 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.aue = load ptr, ptr %i.aud, align 8, !tbaa !162, !noalias !265 ; 3 uses
  %.not.i.i355 = icmp eq ptr %i.aue, null
  br i1 %.not.i.i355, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit354
  store ptr %i.hj, ptr %23, align 8, !tbaa !91, !alias.scope !265
  store i64 0, ptr %i.hk, align 8, !tbaa !146, !alias.scope !265
  store i8 0, ptr %i.hj, align 8, !tbaa !147, !alias.scope !265
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit358

bb.cn:                                            ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit354
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aud, i64 8
  %i.aug = load i64, ptr %i.auf, align 8, !tbaa !173, !noalias !265 ; 4 uses
  store ptr %i.hj, ptr %23, align 8, !tbaa !91, !alias.scope !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #16, !noalias !265
  store i64 %i.aug, ptr %i.r, align 8, !tbaa !175, !noalias !265
  %i.auh = icmp ugt i64 %i.aug, 15
  br i1 %i.auh, label %bb.co, label %._crit_edge.i.i.i.i356

bb.co:                                            ; preds = %bb.cn
  %i.aui = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef 0) #16 ; 2 uses
  store ptr %i.aui, ptr %23, align 8, !tbaa !176, !alias.scope !265
  %i.auj = load i64, ptr %i.r, align 8, !tbaa !175, !noalias !265
  store i64 %i.auj, ptr %i.hj, align 8, !tbaa !147, !alias.scope !265
  br label %._crit_edge.i.i.i.i356

._crit_edge.i.i.i.i356:                           ; preds = %bb.co, %bb.cn
  %i.auk = phi ptr [ %i.aui, %bb.co ], [ %i.hj, %bb.cn ] ; 2 uses
  switch i64 %i.aug, label %bb.cq [
    i64 1, label %bb.cp
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i357
  ]

bb.cp:                                            ; preds = %._crit_edge.i.i.i.i356
  %i.aul = load i8, ptr %i.aue, align 1, !tbaa !147
  store i8 %i.aul, ptr %i.auk, align 1, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i357

bb.cq:                                            ; preds = %._crit_edge.i.i.i.i356
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.auk, ptr nonnull align 1 %i.aue, i64 %i.aug, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i357

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i357: ; preds = %bb.cq, %bb.cp, %._crit_edge.i.i.i.i356
  %i.aum = load i64, ptr %i.r, align 8, !tbaa !175, !noalias !265 ; 2 uses
  store i64 %i.aum, ptr %i.hk, align 8, !tbaa !146, !alias.scope !265
  %i.aun = load ptr, ptr %23, align 8, !tbaa !176, !alias.scope !265
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aun, i64 %i.aum
  store i8 0, ptr %i.auo, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #16, !noalias !265
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit358

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit358: ; preds = %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i357
  %i.aup = load ptr, ptr %22, align 8, !tbaa !176 ; 6 uses
  %i.auq = icmp eq ptr %i.aup, %i.hh
  %i.aur = load ptr, ptr %23, align 8, !tbaa !176 ; 5 uses
  %i.aus = icmp eq ptr %i.aur, %i.hj              ; 2 uses
  %.pre716 = load i64, ptr %i.hk, align 8, !tbaa !146 ; 5 uses
  br i1 %i.auq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i359

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i364: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit358
  br i1 %i.aus, label %bb.cr, label %.thread.i365

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i359: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit358
  br i1 %i.aus, label %bb.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i360

bb.cr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i359, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i364
  %i.aut = icmp ult i64 %.pre716, 16
  call void @llvm.assume(i1 %i.aut)
  switch i64 %.pre716, label %bb.ct [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i362
    i64 1, label %bb.cs
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.auu = load i8, ptr %i.aur, align 1, !tbaa !147
  store i8 %i.auu, ptr %i.aup, align 1, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i362

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aup, ptr align 1 %i.aur, i64 %.pre716, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i362

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i362: ; preds = %bb.ct, %bb.cs, %bb.cr
  %i.auv = load i64, ptr %i.hk, align 8, !tbaa !146 ; 2 uses
  store i64 %i.auv, ptr %i.hi, align 8, !tbaa !146
  %i.auw = load ptr, ptr %22, align 8, !tbaa !176
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 %i.auv
  store i8 0, ptr %i.aux, align 1, !tbaa !147
  %.pre.i363 = load ptr, ptr %23, align 8, !tbaa !176
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit366

.thread.i365:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i364
  store ptr %i.aur, ptr %22, align 8, !tbaa !176
  store i64 %.pre716, ptr %i.hi, align 8, !tbaa !146
  %i.auy = load i64, ptr %i.hj, align 8, !tbaa !147
  store i64 %i.auy, ptr %i.hh, align 8, !tbaa !147
  br label %bb.cv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i360: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i359
  %i.auz = load i64, ptr %i.hh, align 8, !tbaa !147
  store ptr %i.aur, ptr %22, align 8, !tbaa !176
  store i64 %.pre716, ptr %i.hi, align 8, !tbaa !146
  %i.ava = load i64, ptr %i.hj, align 8, !tbaa !147
  store i64 %i.ava, ptr %i.hh, align 8, !tbaa !147
  %.not.i361 = icmp eq ptr %i.aup, null
  br i1 %.not.i361, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i360
  store ptr %i.aup, ptr %23, align 8, !tbaa !176
  store i64 %i.auz, ptr %i.hj, align 8, !tbaa !147
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit366

bb.cv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i360, %.thread.i365
  store ptr %i.hj, ptr %23, align 8, !tbaa !176
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit366: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i362, %bb.cu, %bb.cv
  %i.avb = phi ptr [ %i.aup, %bb.cu ], [ %i.hj, %bb.cv ], [ %.pre.i363, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i362 ]
  store i64 0, ptr %i.hk, align 8, !tbaa !146
  store i8 0, ptr %i.avb, align 1, !tbaa !147
  %i.avc = load ptr, ptr %23, align 8, !tbaa !176 ; 2 uses
  %i.avd = icmp eq ptr %i.avc, %i.hj
  br i1 %i.avd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit366
  %i.ave = load i64, ptr %i.hj, align 8, !tbaa !147
  %i.avf = add i64 %i.ave, 1
  call void @_ZdlPvm(ptr noundef %i.avc, i64 noundef %i.avf) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit366, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit354.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit354.thread: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit349.thread, %bb.cl, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit351, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf) #16
  %i.avg = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %i.avh = load double, ptr %i.avg, align 8, !tbaa !65
  store double %i.avh, ptr %i.bf, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg) #16
  %i.avi = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.avj = load double, ptr %i.avi, align 8, !tbaa !65
  store double %i.avj, ptr %i.bg, align 8, !tbaa !227
  call void @_ZN8facebook6hermes7tracing10SynthTrace12emplace_backINS2_24CreateHostFunctionRecordEJRNSt6chrono8durationIlSt5ratioILl1ELl1000EEEEddRjEEEvDpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf) #16
  %i.avk = load ptr, ptr %22, align 8, !tbaa !176 ; 2 uses
  %i.avl = icmp eq ptr %i.avk, %i.hh
  br i1 %i.avl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit354.thread
  %i.avm = load i64, ptr %i.hh, align 8, !tbaa !147
  %i.avn = add i64 %i.avm, 1
  call void @_ZdlPvm(ptr noundef %i.avk, i64 noundef %i.avn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit354.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #16
  br label %bb.hk

bb.cw:                                            ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh) #16
  %i.avo = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %i.avp = load double, ptr %i.avo, align 8, !tbaa !65
  store double %i.avp, ptr %i.bh, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16
  %i.avq = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  %i.avr = load ptr, ptr %i.avq, align 8, !tbaa !159 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.avs = load ptr, ptr %i.avr, align 8, !tbaa !162, !noalias !272 ; 3 uses
  %.not.i.i373 = icmp eq ptr %i.avs, null
  br i1 %.not.i.i373, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store ptr %i.he, ptr %25, align 8, !tbaa !91, !alias.scope !272
  store i64 0, ptr %i.hf, align 8, !tbaa !146, !alias.scope !272
  store i8 0, ptr %i.he, align 8, !tbaa !147, !alias.scope !272
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit376

bb.cy:                                            ; preds = %bb.cw
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avr, i64 8
  %i.avu = load i64, ptr %i.avt, align 8, !tbaa !173, !noalias !272 ; 4 uses
  store ptr %i.he, ptr %25, align 8, !tbaa !91, !alias.scope !272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #16, !noalias !272
  store i64 %i.avu, ptr %i.q, align 8, !tbaa !175, !noalias !272
  %i.avv = icmp ugt i64 %i.avu, 15
  br i1 %i.avv, label %bb.cz, label %._crit_edge.i.i.i.i374

bb.cz:                                            ; preds = %bb.cy
end_hunk_2
