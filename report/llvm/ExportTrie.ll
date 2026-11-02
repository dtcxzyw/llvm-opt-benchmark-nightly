Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExportTrie?download=true
inline.NumInlined: 529
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3lld5macho11TrieBuilder5buildEv:bb.a
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load i64, ptr %i.at, align 8, !tbaa !30
  %i.av = tail call noundef i32 @_ZN4llvm14getULEB128SizeEm(i64 noundef %i.au) #14
  %i.aw = zext i32 %i.av to i64
  %i.ax = add i64 %.121.i, 1
  %i.ay = add i64 %i.ax, %i.aq
  %i.az = add i64 %i.ay, %i.aw                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.018.020.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.ba, %.val14.i
  br i1 %.not.i, label %_ZN3lld5macho8TrieNode12updateOffsetERm.exit, label %.lr.ph.i

_ZN3lld5macho8TrieNode12updateOffsetERm.exit:     ; preds = %.lr.ph.i, %bb.f
  %.1.lcssa.i = phi i64 [ %.0.i, %bb.f ], [ %i.az, %.lr.ph.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !30
  %i.bd = icmp ne i64 %i.bc, %.01315
  store i64 %.01315, ptr %i.bb, align 8, !tbaa !30
  %i.be = add i64 %.1.lcssa.i, %.01315            ; 2 uses
  %i.bf = or i1 %.0717, %i.bd                     ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.08.016, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bg, %i.s
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.split, %._crit_edge, %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.split ], [ %i.be, %._crit_edge ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK3lld5macho11TrieBuilder7writeToEPh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %.not8 = icmp eq ptr %i.b, %i.d
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.05.09 = phi ptr [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.05.09, align 8, !tbaa !51
  tail call void @_ZNK3lld5macho8TrieNode7writeToEPh(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef %1)
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.f, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3lld5macho9parseTrieERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKhmRKN4llvm12function_refIFvRKNSB_5TwineEmEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::DenseSet.34", align 8 ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.(anonymous namespace)::TrieParser", align 8 ; 13 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !56
  %i.d = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.f, ptr %i.a, align 8, !tbaa !31
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #14 ; 2 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !57
  %i.i = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.i, ptr %i.c, align 8, !tbaa !38
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.j = phi ptr [ %i.h, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN12_GLOBAL__N_110TrieParserC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKhmRKN4llvm12function_refIFvRKNSB_5TwineEmEEE.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !38
  store i8 %i.k, ptr %i.j, align 1, !tbaa !38
  br label %_ZN12_GLOBAL__N_110TrieParserC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKhmRKN4llvm12function_refIFvRKNSB_5TwineEmEEE.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN12_GLOBAL__N_110TrieParserC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKhmRKN4llvm12function_refIFvRKNSB_5TwineEmEEE.exit

_ZN12_GLOBAL__N_110TrieParserC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKhmRKN4llvm12function_refIFvRKNSB_5TwineEmEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.l = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !58
  %i.n = load ptr, ptr %6, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %1, ptr %i.p, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %i.r, ptr %i.q, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %3, ptr %i.s, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 257, ptr %i.t, align 8
  call fastcc void @_ZN12_GLOBAL__N_110TrieParser5parseEPKhRKN4llvm5TwineERNS3_8DenseSetImNS3_12DenseMapInfoImvEEEE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !65   ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN12_GLOBAL__N_110TrieParser5parseEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_110TrieParserC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKhmRKN4llvm12function_refIFvRKNSB_5TwineEmEEE.exit
  %i.x = load ptr, ptr %4, align 8, !tbaa !66
  %i.y = zext i32 %i.v to i64                     ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.y, 31
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = and i64 %i.ab, 1073741820
  %i.ad = add nuw nsw i64 %i.ac, %i.z
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.x, i64 noundef %i.ad, i64 noundef 8) #14
  br label %_ZN12_GLOBAL__N_110TrieParser5parseEv.exit

_ZN12_GLOBAL__N_110TrieParser5parseEv.exit:       ; preds = %_ZN12_GLOBAL__N_110TrieParserC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKhmRKN4llvm12function_refIFvRKNSB_5TwineEmEEE.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.ae = load ptr, ptr %6, align 8, !tbaa !57    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.c
  br i1 %i.af, label %_ZN12_GLOBAL__N_110TrieParserD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN12_GLOBAL__N_110TrieParser5parseEv.exit
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !38
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #15
  br label %_ZN12_GLOBAL__N_110TrieParserD2Ev.exit

_ZN12_GLOBAL__N_110TrieParserD2Ev.exit:           ; preds = %_ZN12_GLOBAL__N_110TrieParser5parseEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN12_GLOBAL__N_110TrieParserD2Ev.exit
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_110TrieParser5parseEPKhRKN4llvm5TwineERNS3_8DenseSetImNS3_12DenseMapInfoImvEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(34) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.anon.44, align 1             ; 3 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  %.not = icmp ult ptr %1, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.1)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.d, align 8, !tbaa !178
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !179
  store ptr %6, ptr %5, align 8, !tbaa !38
  call void @_ZN3lld5fatalERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %5) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.h = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  store i64 %i.j, ptr %i.a, align 8, !tbaa !31
  %i.k = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !180 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.n = sub i64 0, %i.h
  %scevgep.i = getelementptr i8, ptr %1, i64 %i.n
  %i.o = icmp eq ptr %1, null
  br i1 %i.o, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread, label %.lr.ph108, !prof !181

bb.d:                                             ; preds = %bb.f
  %10 = add i32 %.028.i106, 7
  br label %.lr.ph108, !llvm.loop !155

.lr.ph108:                                        ; preds = %bb.c, %bb.d
  %.028.i106 = phi i32 [ %10, %bb.d ], [ 0, %bb.c ] ; 5 uses
  %.029.i105 = phi i64 [ %.130.i, %bb.d ], [ 0, %bb.c ]
  %.031.i104 = phi ptr [ %i.x, %bb.d ], [ %1, %bb.c ] ; 3 uses
  %i.p = load i8, ptr %.031.i104, align 1, !tbaa !38 ; 2 uses
  %i.q = and i8 %i.p, 127                         ; 3 uses
  %i.r = zext nneg i8 %i.q to i64
  %i.s = icmp ugt i32 %.028.i106, 62
  br i1 %i.s, label %bb.e, label %bb.f, !prof !182

bb.e:                                             ; preds = %.lr.ph108
  %.not44.i = icmp eq i32 %.028.i106, 63
  %.not.i = icmp samesign ugt i8 %i.q, 1
  %i.t = icmp ne i8 %i.q, 0
  %or.cond43.i = select i1 %.not44.i, i1 %.not.i, i1 %i.t
  br i1 %or.cond43.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph108
  %i.u = icmp ult i32 %.028.i106, 64
  %11 = zext nneg i32 %.028.i106 to i64
  %i.v = shl i64 %i.r, %11
  %i.w = select i1 %i.u, i64 %i.v, i64 0, !prof !67
  %.130.i = add i64 %i.w, %.029.i105              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.031.i104, i64 1 ; 2 uses
  %i.y = icmp slt i8 %i.p, 0
  br i1 %i.y, label %bb.d, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, !llvm.loop !155

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread: ; preds = %bb.e, %bb.c
  %.132.i.ph = phi ptr [ %scevgep.i, %bb.c ], [ %.031.i104, %bb.e ]
  %i.z = ptrtoint ptr %.132.i.ph to i64
  %i.aa = sub i64 %i.z, %i.h
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  br label %bb.i

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit:        ; preds = %bb.f
  %i.ad = ptrtoint ptr %i.x to i64
  %i.ae = sub i64 %i.ad, %i.h
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af ; 3 uses
  %.not29 = icmp eq i64 %.130.i, 0
  br i1 %.not29, label %bb.i, label %.preheader.preheader

.preheader:                                       ; preds = %bb.h
  %12 = add i32 %.028.i33113, 7
  %13 = getelementptr inbounds nuw i8, ptr %.031.i31111, i64 1
  br label %.preheader.preheader, !llvm.loop !155

.preheader.preheader:                             ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, %.preheader
  %.028.i33113 = phi i32 [ %12, %.preheader ], [ 0, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ] ; 5 uses
  %.029.i32112 = phi i64 [ %.130.i34, %.preheader ], [ 0, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ]
  %.031.i31111 = phi ptr [ %13, %.preheader ], [ %i.ag, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ] ; 2 uses
  %i.ah = load i8, ptr %.031.i31111, align 1, !tbaa !38 ; 2 uses
  %i.ai = and i8 %i.ah, 127                       ; 3 uses
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = icmp ugt i32 %.028.i33113, 62
  br i1 %i.ak, label %bb.g, label %bb.h, !prof !182

bb.g:                                             ; preds = %.preheader.preheader
  %.not44.i37 = icmp eq i32 %.028.i33113, 63
  %.not.i38 = icmp samesign ugt i8 %i.ai, 1
  %i.al = icmp ne i8 %i.ai, 0
  %or.cond43.i39 = select i1 %.not44.i37, i1 %.not.i38, i1 %i.al
  br i1 %or.cond43.i39, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit40, label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader.preheader
  %i.am = icmp ult i32 %.028.i33113, 64
  %14 = zext nneg i32 %.028.i33113 to i64
  %i.an = shl i64 %i.aj, %14
  %i.ao = select i1 %i.am, i64 %i.an, i64 0, !prof !67
  %.130.i34 = add i64 %i.ao, %.029.i32112         ; 2 uses
  %i.ap = icmp slt i8 %i.ah, 0
  br i1 %i.ap, label %.preheader, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit40, !llvm.loop !155

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit40:      ; preds = %bb.g, %bb.h
  %.3.i36 = phi i64 [ %.130.i34, %bb.h ], [ 0, %bb.g ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !183, !nonnull !18, !align !184 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !186
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !187
  call void %i.as(i64 noundef %i.au, ptr noundef nonnull align 8 dereferenceable(34) %2, i64 noundef %.3.i36) #14, !inline_history !156
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit40, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit
  %i.av = phi ptr [ %i.ac, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread ], [ %i.ag, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit40 ], [ %i.ag, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ]
  %.3.i73 = phi i64 [ 0, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread ], [ %.130.i, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit40 ], [ 0, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.3.i73 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !38  ; 2 uses
  %.not83 = icmp eq i8 %i.ax, 0
  br i1 %.not83, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 33
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 33
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.i
  %i.be = load ptr, ptr %3, align 8, !tbaa !66, !noalias !188 ; 2 uses
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !68, !noalias !188 ; 2 uses
  %i.bg = load i32, ptr %i.m, align 4, !tbaa !65, !noalias !188 ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5eraseERKm.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bi = add i32 %i.bg, -1                       ; 2 uses
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.bk = mul i64 %i.bj, -4658895280553007687     ; 2 uses
  %i.bl = lshr i64 %i.bk, 31
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = and i32 %i.bi, %i.bn                    ; 3 uses
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = lshr i64 %i.bp, 5
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !69
  %i.bt = and i32 %i.bo, 31
  %i.bu = lshr i32 %i.bs, %i.bt
  %i.bv = trunc i32 %i.bu to i1
  br i1 %i.bv, label %.lr.ph.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5eraseERKm.exit, !prof !70

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %bb.k
  %i.bw = phi i64 [ %i.cc, %bb.k ], [ %i.bp, %bb.j ] ; 2 uses
  %.019.i.i.i.i = phi i32 [ %i.cb, %bb.k ], [ %i.bo, %bb.j ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !31
  %i.bz = icmp eq i64 %i.bj, %i.by
  br i1 %i.bz, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E6doFindImEEPS7_RKT_.exit.i.i, label %bb.k, !prof !67

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ca = add nuw i32 %.019.i.i.i.i, 1
  %i.cb = and i32 %i.ca, %i.bi                    ; 3 uses
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = lshr i64 %i.cc, 5
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !69
  %i.cg = and i32 %i.cb, 31
  %i.ch = lshr i32 %i.cf, %i.cg
  %i.ci = trunc i32 %i.ch to i1
  br i1 %i.ci, label %.lr.ph.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5eraseERKm.exit, !prof !71

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E6doFindImEEPS7_RKT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E21eraseFromFilledBucketIZNS9_21eraseFromFilledBucketEPS7_EUlRS7_E_EEvSB_OT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.cj, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5eraseERKm.exit

_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5eraseERKm.exit: ; preds = %bb.k, %._crit_edge, %bb.j, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E6doFindImEEPS7_RKT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

bb.l:                                             ; preds = %.lr.ph, %_ZN4llvmplERKNS_5TwineES2_.exit
  %.081 = phi ptr [ %i.ay, %.lr.ph ], [ %i.ep, %_ZN4llvmplERKNS_5TwineES2_.exit ] ; 5 uses
  %.02780 = phi i8 [ 0, %.lr.ph ], [ %i.ev, %_ZN4llvmplERKNS_5TwineES2_.exit ]
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %.081 to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = call i64 @strnlen(ptr noundef %.081, i64 noundef %i.cn) #18 ; 3 uses
  %i.cp = getelementptr i8, ptr %.081, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 1      ; 6 uses
  %i.cr = ptrtoaddr ptr %i.cq to i64
  %i.cs = sub i64 0, %i.cr
  %scevgep.i41 = getelementptr i8, ptr %i.cq, i64 %i.cs
  %i.ct = icmp eq ptr %i.cq, null
  br i1 %i.ct, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51, label %.lr.ph118, !prof !181

bb.m:                                             ; preds = %bb.o
  %15 = add i32 %.028.i44116, 7
  br label %.lr.ph118, !llvm.loop !155

.lr.ph118:                                        ; preds = %bb.l, %bb.m
  %.028.i44116 = phi i32 [ %15, %bb.m ], [ 0, %bb.l ] ; 5 uses
  %.029.i43115 = phi i64 [ %.130.i45, %bb.m ], [ 0, %bb.l ]
  %.031.i42114 = phi ptr [ %i.dc, %bb.m ], [ %i.cq, %bb.l ] ; 3 uses
  %i.cu = load i8, ptr %.031.i42114, align 1, !tbaa !38 ; 2 uses
  %i.cv = and i8 %i.cu, 127                       ; 3 uses
  %i.cw = zext nneg i8 %i.cv to i64
  %i.cx = icmp ugt i32 %.028.i44116, 62
  br i1 %i.cx, label %bb.n, label %bb.o, !prof !182

bb.n:                                             ; preds = %.lr.ph118
  %.not44.i48 = icmp eq i32 %.028.i44116, 63
  %.not.i49 = icmp samesign ugt i8 %i.cv, 1
  %i.cy = icmp ne i8 %i.cv, 0
  %or.cond43.i50 = select i1 %.not44.i48, i1 %.not.i49, i1 %i.cy
  br i1 %or.cond43.i50, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51, label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph118
  %i.cz = icmp ult i32 %.028.i44116, 64
  %16 = zext nneg i32 %.028.i44116 to i64
  %i.da = shl i64 %i.cw, %16
  %i.db = select i1 %i.cz, i64 %i.da, i64 0, !prof !67
  %.130.i45 = add i64 %i.db, %.029.i43115         ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.031.i42114, i64 1 ; 2 uses
  %i.dd = icmp slt i8 %i.cu, 0
  br i1 %i.dd, label %bb.m, label %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51_crit_edge124, !llvm.loop !155

._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51_crit_edge124: ; preds = %bb.o
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51, !llvm.loop !155

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51:      ; preds = %bb.n, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51_crit_edge124, %bb.l
  %.132.i46 = phi ptr [ %i.dc, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51_crit_edge124 ], [ %scevgep.i41, %bb.l ], [ %.031.i42114, %bb.n ]
  %.3.i47 = phi i64 [ %.130.i45, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51_crit_edge124 ], [ 0, %bb.l ], [ 0, %bb.n ] ; 3 uses
  %i.de = ptrtoint ptr %.132.i46 to i64
  %i.df = ptrtoint ptr %i.cq to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = load ptr, ptr %3, align 8, !tbaa !66, !noalias !189
  %i.di = load ptr, ptr %i.l, align 8, !tbaa !68, !noalias !189 ; 2 uses
  %i.dj = load i32, ptr %i.m, align 4, !tbaa !65, !noalias !189 ; 3 uses
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51
  %i.dl = add i32 %i.dj, -1                       ; 2 uses
  %i.dm = mul i64 %.3.i47, -4658895280553007687   ; 2 uses
  %i.dn = lshr i64 %i.dm, 31
  %i.do = xor i64 %i.dn, %i.dm
  %i.dp = trunc i64 %i.do to i32
  %i.dq = and i32 %i.dl, %i.dp                    ; 3 uses
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = lshr i64 %i.dr, 5
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !69, !noalias !190
  %i.dv = and i32 %i.dq, 31
  %i.dw = lshr i32 %i.du, %i.dv
  %i.dx = trunc i32 %i.dw to i1
  br i1 %i.dx, label %.lr.ph.i.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread, !prof !70

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %bb.q
  %i.dy = phi i64 [ %i.ee, %bb.q ], [ %i.dr, %bb.p ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.ed, %bb.q ], [ %i.dq, %bb.p ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !31, !noalias !190
  %i.eb = icmp eq i64 %.3.i47, %i.ea
  br i1 %i.eb, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit, label %bb.q, !prof !67

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ec = add nuw i32 %.019.i.i.i.i.i, 1
  %i.ed = and i32 %i.ec, %i.dl                    ; 3 uses
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = lshr i64 %i.ee, 5
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !69, !noalias !190
  %i.ei = and i32 %i.ed, 31
  %i.ej = lshr i32 %i.eh, %i.ei
  %i.ek = trunc i32 %i.ej to i1
  br i1 %i.ek, label %.lr.ph.i.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread, !prof !71

_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = zext i32 %i.dj to i64
  %i.el = icmp samesign eq i64 %i.dy, %.pre
  br i1 %i.el, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.2)
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 4, ptr %i.em, align 8, !tbaa !178
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.en, align 1, !tbaa !179
  store ptr %8, ptr %7, align 8, !tbaa !38
  call void @_ZN3lld5fatalERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %7) #17
  unreachable

_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread: ; preds = %bb.q, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51, %bb.p, %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit
  %i.eo = and i64 %i.dg, 4294967295
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.eo
  %i.eq = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.3.i47
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.es = load i8, ptr %i.az, align 8, !tbaa !178, !noalias !193 ; 3 uses
  switch i8 %i.es, label %bb.t [
    i8 0, label %_ZN4llvmplERKNS_5TwineES2_.exit
    i8 1, label %bb.s
  ]

bb.s:                                             ; preds = %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread
  store ptr %.081, ptr %9, align 8
  store i64 %i.co, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !38
  br label %_ZN4llvmplERKNS_5TwineES2_.exit

bb.t:                                             ; preds = %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread
  %i.et = load i8, ptr %i.bc, align 1, !tbaa !179, !noalias !193
  %i.eu = icmp eq i8 %i.et, 1                     ; 3 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %2, align 8, !noalias !193
  %.sroa.56.0.copyload.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !193
  %.014.i.i = select i1 %i.eu, i8 %i.es, i8 2
  %.sroa.05.0.i.i = select i1 %i.eu, ptr %.sroa.05.0.copyload.i.i, ptr %2
  %.sroa.56.0.i.i = select i1 %i.eu, i64 %.sroa.56.0.copyload.i.i, i64 undef
  store ptr %.sroa.05.0.i.i, ptr %9, align 8, !alias.scope !193
  store i64 %.sroa.56.0.i.i, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !38, !alias.scope !193
  store ptr %.081, ptr %i.bd, align 8, !alias.scope !193
  store i64 %i.co, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !38, !alias.scope !193
  br label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread, %bb.s, %bb.t
  %.sink99 = phi i8 [ %.014.i.i, %bb.t ], [ 5, %bb.s ], [ %i.es, %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread ]
  %.sink = phi i8 [ 5, %bb.t ], [ 1, %bb.s ], [ 1, %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread ]
  store i8 %.sink99, ptr %i.ba, align 8, !tbaa !194
  store i8 %.sink, ptr %i.bb, align 1, !tbaa !194
  call fastcc void @_ZN12_GLOBAL__N_110TrieParser5parseEPKhRKN4llvm5TwineERNS3_8DenseSetImNS3_12DenseMapInfoImvEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.er, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.ev = add nuw i8 %.02780, 1                   ; 2 uses
  %exitcond.not = icmp eq i8 %i.ev, %i.ax
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !175
}

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN3lld5fatalERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !58   ; 3 uses
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #14 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !56, !alias.scope !197
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !58, !alias.scope !197
  store i8 0, ptr %i.e, align 8, !tbaa !38, !alias.scope !197
  %i.g = add i64 %i.d, %i.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g) #14
  %i.h = load i64, ptr %i.f, align 8, !tbaa !58, !alias.scope !197
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.c
  br i1 %i.j, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.a, i64 noundef %i.c) #14 ; 0 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !58, !alias.scope !197
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %bb.c, label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #17
  unreachable

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %2, i64 noundef %i.d) #14 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !66, !noalias !202 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68, !noalias !202 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !65, !noalias !202 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i64, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !69
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !70

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load i64, ptr %i.w, align 8, !tbaa !31
  %i.y = icmp eq i64 %i.i, %i.x
end_hunk_0
