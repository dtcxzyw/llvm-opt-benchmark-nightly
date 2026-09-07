Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExportTrie?download=true
inline.NumInlined: 529
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3lld5macho11TrieBuilder5buildEv:bb.a
  %.0.i = phi i64 [ %i.an, %_ZNK3lld5macho8TrieNode15getTerminalSizeEv.exit.i ], [ 2, %.lr.ph ] ; 2 uses
  %.val13.i = load ptr, ptr %i.t, align 8, !tbaa !21 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val14.i = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %.not19.i = icmp eq ptr %.val13.i, %.val14.i
  br i1 %.not19.i, label %_ZN3lld5macho8TrieNode12updateOffsetERm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.121.i = phi i64 [ %i.az, %.lr.ph.i ], [ %.0.i, %bb.f ]
  %.sroa.018.020.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.val13.i, %bb.f ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.018.020.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.018.020.i, i64 16
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
  %10 = sub i64 0, %i.h
  %scevgep.i = getelementptr i8, ptr %1, i64 %10
  %i.n = icmp eq ptr %1, null
  br i1 %i.n, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread, label %.lr.ph108, !prof !181

bb.d:                                             ; preds = %bb.f
  %i.o = add i32 %.028.i106, 7
  br label %.lr.ph108, !llvm.loop !155

.lr.ph108:                                        ; preds = %bb.c, %bb.d
  %.028.i106 = phi i32 [ %i.o, %bb.d ], [ 0, %bb.c ] ; 5 uses
  %.029.i105 = phi i64 [ %.130.i, %bb.d ], [ 0, %bb.c ]
  %.031.i104 = phi ptr [ %i.y, %bb.d ], [ %1, %bb.c ] ; 3 uses
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
  %i.v = zext nneg i32 %.028.i106 to i64
  %i.w = shl i64 %i.r, %i.v
  %i.x = select i1 %i.u, i64 %i.w, i64 0, !prof !67
  %.130.i = add i64 %i.x, %.029.i105              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.031.i104, i64 1 ; 2 uses
  %i.z = icmp slt i8 %i.p, 0
  br i1 %i.z, label %bb.d, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, !llvm.loop !155

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread: ; preds = %bb.e, %bb.c
  %.132.i.ph = phi ptr [ %scevgep.i, %bb.c ], [ %.031.i104, %bb.e ]
  %11 = ptrtoint ptr %.132.i.ph to i64
  %i.aa = sub i64 %11, %i.h
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  br label %bb.i

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit:        ; preds = %bb.f
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = sub i64 %i.ad, %i.h
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af ; 3 uses
  %.not29 = icmp eq i64 %.130.i, 0
  br i1 %.not29, label %bb.i, label %.preheader.preheader

.preheader:                                       ; preds = %bb.h
  %i.ah = add i32 %.028.i33113, 7
  %i.ai = getelementptr inbounds nuw i8, ptr %.031.i31111, i64 1
  br label %.preheader.preheader, !llvm.loop !155

.preheader.preheader:                             ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, %.preheader
  %.028.i33113 = phi i32 [ %i.ah, %.preheader ], [ 0, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ] ; 5 uses
  %.029.i32112 = phi i64 [ %.130.i34, %.preheader ], [ 0, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ]
  %.031.i31111 = phi ptr [ %i.ai, %.preheader ], [ %i.ag, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ] ; 2 uses
  %i.aj = load i8, ptr %.031.i31111, align 1, !tbaa !38 ; 2 uses
  %i.ak = and i8 %i.aj, 127                       ; 3 uses
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = icmp ugt i32 %.028.i33113, 62
  br i1 %i.am, label %bb.g, label %bb.h, !prof !182

bb.g:                                             ; preds = %.preheader.preheader
  %.not44.i37 = icmp eq i32 %.028.i33113, 63
  %.not.i38 = icmp samesign ugt i8 %i.ak, 1
  %i.an = icmp ne i8 %i.ak, 0
  %or.cond43.i39 = select i1 %.not44.i37, i1 %.not.i38, i1 %i.an
  br i1 %or.cond43.i39, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit40, label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader.preheader
  %i.ao = icmp ult i32 %.028.i33113, 64
  %i.ap = zext nneg i32 %.028.i33113 to i64
  %i.aq = shl i64 %i.al, %i.ap
  %i.ar = select i1 %i.ao, i64 %i.aq, i64 0, !prof !67
  %.130.i34 = add i64 %i.ar, %.029.i32112         ; 2 uses
  %i.as = icmp slt i8 %i.aj, 0
  br i1 %i.as, label %.preheader, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit40, !llvm.loop !155

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit40:      ; preds = %bb.g, %bb.h
  %.3.i36 = phi i64 [ %.130.i34, %bb.h ], [ 0, %bb.g ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !183, !nonnull !18, !align !184 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !186
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !187
  call void %i.av(i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(34) %2, i64 noundef %.3.i36) #14, !inline_history !156
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit40, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit
  %i.ay = phi ptr [ %i.ac, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread ], [ %i.ag, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit40 ], [ %i.ag, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ]
  %.3.i73 = phi i64 [ 0, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread ], [ %.130.i, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit40 ], [ 0, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.3.i73 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !38  ; 2 uses
  %.not83 = icmp eq i8 %i.ba, 0
  br i1 %.not83, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 33
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 33
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.i
  %i.bh = load ptr, ptr %3, align 8, !tbaa !66, !noalias !188 ; 2 uses
  %i.bi = load ptr, ptr %i.l, align 8, !tbaa !68, !noalias !188 ; 2 uses
  %i.bj = load i32, ptr %i.m, align 4, !tbaa !65, !noalias !188 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5eraseERKm.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bl = add i32 %i.bj, -1                       ; 2 uses
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.bn = mul i64 %i.bm, -4658895280553007687     ; 2 uses
  %i.bo = lshr i64 %i.bn, 31
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = trunc i64 %i.bp to i32
  %i.br = and i32 %i.bl, %i.bq                    ; 3 uses
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 5
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !69
  %i.bw = and i32 %i.br, 31
  %i.bx = lshr i32 %i.bv, %i.bw
  %i.by = trunc i32 %i.bx to i1
  br i1 %i.by, label %.lr.ph.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5eraseERKm.exit, !prof !70

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %bb.k
  %i.bz = phi i64 [ %i.cf, %bb.k ], [ %i.bs, %bb.j ] ; 2 uses
  %.019.i.i.i.i = phi i32 [ %i.ce, %bb.k ], [ %i.br, %bb.j ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !31
  %i.cc = icmp eq i64 %i.bm, %i.cb
  br i1 %i.cc, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E6doFindImEEPS7_RKT_.exit.i.i, label %bb.k, !prof !67

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cd = add nuw i32 %.019.i.i.i.i, 1
  %i.ce = and i32 %i.cd, %i.bl                    ; 3 uses
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = lshr i64 %i.cf, 5
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !69
  %i.cj = and i32 %i.ce, 31
  %i.ck = lshr i32 %i.ci, %i.cj
  %i.cl = trunc i32 %i.ck to i1
  br i1 %i.cl, label %.lr.ph.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5eraseERKm.exit, !prof !71

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E6doFindImEEPS7_RKT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E21eraseFromFilledBucketIZNS9_21eraseFromFilledBucketEPS7_EUlRS7_E_EEvSB_OT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.cm, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5eraseERKm.exit

_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5eraseERKm.exit: ; preds = %bb.k, %._crit_edge, %bb.j, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E6doFindImEEPS7_RKT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

bb.l:                                             ; preds = %.lr.ph, %_ZN4llvmplERKNS_5TwineES2_.exit
  %.081 = phi ptr [ %i.bb, %.lr.ph ], [ %i.eu, %_ZN4llvmplERKNS_5TwineES2_.exit ] ; 5 uses
  %.02780 = phi i8 [ 0, %.lr.ph ], [ %i.fa, %_ZN4llvmplERKNS_5TwineES2_.exit ]
  %i.cn = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %.081 to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = call i64 @strnlen(ptr noundef %.081, i64 noundef %i.cq) #18 ; 3 uses
  %i.cs = getelementptr i8, ptr %.081, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 1      ; 6 uses
  %i.cu = ptrtoaddr ptr %i.ct to i64
  %i.cv = sub i64 0, %i.cu
  %scevgep.i41 = getelementptr i8, ptr %i.ct, i64 %i.cv
  %i.cw = icmp eq ptr %i.ct, null
  br i1 %i.cw, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51, label %.lr.ph118, !prof !181

bb.m:                                             ; preds = %bb.o
  %i.cx = add i32 %.028.i44116, 7
  br label %.lr.ph118, !llvm.loop !155

.lr.ph118:                                        ; preds = %bb.l, %bb.m
  %.028.i44116 = phi i32 [ %i.cx, %bb.m ], [ 0, %bb.l ] ; 5 uses
  %.029.i43115 = phi i64 [ %.130.i45, %bb.m ], [ 0, %bb.l ]
  %.031.i42114 = phi ptr [ %i.dh, %bb.m ], [ %i.ct, %bb.l ] ; 3 uses
  %i.cy = load i8, ptr %.031.i42114, align 1, !tbaa !38 ; 2 uses
  %i.cz = and i8 %i.cy, 127                       ; 3 uses
  %i.da = zext nneg i8 %i.cz to i64
  %i.db = icmp ugt i32 %.028.i44116, 62
  br i1 %i.db, label %bb.n, label %bb.o, !prof !182

bb.n:                                             ; preds = %.lr.ph118
  %.not44.i48 = icmp eq i32 %.028.i44116, 63
  %.not.i49 = icmp samesign ugt i8 %i.cz, 1
  %i.dc = icmp ne i8 %i.cz, 0
  %or.cond43.i50 = select i1 %.not44.i48, i1 %.not.i49, i1 %i.dc
  br i1 %or.cond43.i50, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51, label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph118
  %i.dd = icmp ult i32 %.028.i44116, 64
  %i.de = zext nneg i32 %.028.i44116 to i64
  %i.df = shl i64 %i.da, %i.de
  %i.dg = select i1 %i.dd, i64 %i.df, i64 0, !prof !67
  %.130.i45 = add i64 %i.dg, %.029.i43115         ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.031.i42114, i64 1 ; 2 uses
  %i.di = icmp slt i8 %i.cy, 0
  br i1 %i.di, label %bb.m, label %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51_crit_edge124, !llvm.loop !155

._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51_crit_edge124: ; preds = %bb.o
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51, !llvm.loop !155

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51:      ; preds = %bb.n, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51_crit_edge124, %bb.l
  %.132.i46 = phi ptr [ %i.dh, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51_crit_edge124 ], [ %scevgep.i41, %bb.l ], [ %.031.i42114, %bb.n ]
  %.3.i47 = phi i64 [ %.130.i45, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51_crit_edge124 ], [ 0, %bb.l ], [ 0, %bb.n ] ; 3 uses
  %i.dj = ptrtoint ptr %.132.i46 to i64
  %i.dk = ptrtoint ptr %i.ct to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = load ptr, ptr %3, align 8, !tbaa !66, !noalias !189
  %i.dn = load ptr, ptr %i.l, align 8, !tbaa !68, !noalias !189 ; 2 uses
  %i.do = load i32, ptr %i.m, align 4, !tbaa !65, !noalias !189 ; 3 uses
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51
  %i.dq = add i32 %i.do, -1                       ; 2 uses
  %i.dr = mul i64 %.3.i47, -4658895280553007687   ; 2 uses
  %i.ds = lshr i64 %i.dr, 31
  %i.dt = xor i64 %i.ds, %i.dr
  %i.du = trunc i64 %i.dt to i32
  %i.dv = and i32 %i.dq, %i.du                    ; 3 uses
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %i.dx = lshr i64 %i.dw, 5
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dx
end_hunk_0
