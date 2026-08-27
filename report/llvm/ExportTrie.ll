Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExportTrie?download=true
inline.NumInlined: 529
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3lld5macho11TrieBuilder5buildEv:bb.a
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.018.020.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load i64, ptr %i.at, align 8, !tbaa !21
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
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !21
  %i.bd = icmp ne i64 %i.bc, %.01315
  store i64 %.01315, ptr %i.bb, align 8, !tbaa !21
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %.not8 = icmp eq ptr %i.b, %i.d
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.05.09 = phi ptr [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.05.09, align 8, !tbaa !53
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
  store ptr %i.c, ptr %6, align 8, !tbaa !129
  %i.d = load ptr, ptr %0, align 8, !tbaa !130    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !131  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.f, ptr %i.a, align 8, !tbaa !30
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #14 ; 2 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !130
  %i.i = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.i, ptr %i.c, align 8, !tbaa !37
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.j = phi ptr [ %i.h, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN12_GLOBAL__N_110TrieParserC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKhmRKN4llvm12function_refIFvRKNSB_5TwineEmEEE.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !37
  store i8 %i.k, ptr %i.j, align 1, !tbaa !37
  br label %_ZN12_GLOBAL__N_110TrieParserC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKhmRKN4llvm12function_refIFvRKNSB_5TwineEmEEE.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN12_GLOBAL__N_110TrieParserC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKhmRKN4llvm12function_refIFvRKNSB_5TwineEmEEE.exit

_ZN12_GLOBAL__N_110TrieParserC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKhmRKN4llvm12function_refIFvRKNSB_5TwineEmEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.l = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !131
  %i.n = load ptr, ptr %6, align 8, !tbaa !130
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %1, ptr %i.p, align 8, !tbaa !132
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %i.r, ptr %i.q, align 8, !tbaa !135
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %3, ptr %i.s, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 257, ptr %i.t, align 8
  call fastcc void @_ZN12_GLOBAL__N_110TrieParser5parseEPKhRKN4llvm5TwineERNS3_8DenseSetImNS3_12DenseMapInfoImvEEEE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !137  ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN12_GLOBAL__N_110TrieParser5parseEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_110TrieParserC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKhmRKN4llvm12function_refIFvRKNSB_5TwineEmEEE.exit
  %i.x = load ptr, ptr %4, align 8, !tbaa !140
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
  %i.ae = load ptr, ptr %6, align 8, !tbaa !130   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.c
  br i1 %i.af, label %_ZN12_GLOBAL__N_110TrieParserD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN12_GLOBAL__N_110TrieParser5parseEv.exit
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !37
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135
  %.not = icmp ult ptr %1, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.1)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 4, ptr %i.d, align 8, !tbaa !141
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !144
  store ptr %6, ptr %5, align 8, !tbaa !37
  call void @_ZN3lld5fatalERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %5) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132
  %i.h = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  store i64 %i.j, ptr %i.a, align 8, !tbaa !30
  %i.k = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !145 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.n = icmp eq ptr %1, null
  br i1 %i.n, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread, label %.lr.ph108, !prof !152

bb.d:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv111, 7
  br label %.lr.ph108, !llvm.loop !153

.lr.ph108:                                        ; preds = %bb.c, %bb.d
  %.029.i113 = phi i64 [ %.130.i, %bb.d ], [ 0, %bb.c ]
  %.031.i112 = phi ptr [ %i.w, %bb.d ], [ %1, %bb.c ] ; 3 uses
  %indvars.iv111 = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.c ] ; 5 uses
  %i.o = load i8, ptr %.031.i112, align 1, !tbaa !37 ; 2 uses
  %i.p = and i8 %i.o, 127                         ; 3 uses
  %i.q = zext nneg i8 %i.p to i64
  %i.r = icmp samesign ugt i64 %indvars.iv111, 62
  br i1 %i.r, label %bb.e, label %bb.f, !prof !154

bb.e:                                             ; preds = %.lr.ph108
  %.not44.i = icmp eq i64 %indvars.iv111, 63
  %.not.i = icmp samesign ugt i8 %i.p, 1
  %i.s = icmp ne i8 %i.p, 0
  %or.cond43.i = select i1 %.not44.i, i1 %.not.i, i1 %i.s
  br i1 %or.cond43.i, label %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread_crit_edge109, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph108
  %i.t = icmp samesign ult i64 %indvars.iv111, 64
  %i.u = shl i64 %i.q, %indvars.iv111
  %i.v = select i1 %i.t, i64 %i.u, i64 0, !prof !155
  %.130.i = add i64 %i.v, %.029.i113              ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.031.i112, i64 1 ; 2 uses
  %i.x = icmp slt i8 %i.o, 0
  br i1 %i.x, label %bb.d, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, !llvm.loop !153

._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread_crit_edge109: ; preds = %bb.e
  %i.y = ptrtoint ptr %.031.i112 to i64
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread: ; preds = %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread_crit_edge109, %bb.c
  %.132.i.ph = phi i64 [ %i.y, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread_crit_edge109 ], [ 0, %bb.c ]
  %i.z = sub i64 %.132.i.ph, %i.h
  %i.aa = and i64 %i.z, 4294967295
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  br label %bb.i

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit:        ; preds = %bb.f
  %i.ac = ptrtoint ptr %i.w to i64
  %i.ad = sub i64 %i.ac, %i.h
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae ; 3 uses
  %.not29 = icmp eq i64 %.130.i, 0
  br i1 %.not29, label %bb.i, label %.preheader.preheader

.preheader:                                       ; preds = %bb.h
  %10 = getelementptr inbounds nuw i8, ptr %.031.i31119, i64 1
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89118, 7
  br label %.preheader.preheader, !llvm.loop !153

.preheader.preheader:                             ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, %.preheader
  %.029.i32120 = phi i64 [ %.130.i34, %.preheader ], [ 0, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ]
  %.031.i31119 = phi ptr [ %10, %.preheader ], [ %i.af, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ] ; 2 uses
  %indvars.iv89118 = phi i64 [ %indvars.iv.next90, %.preheader ], [ 0, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ] ; 5 uses
  %i.ag = load i8, ptr %.031.i31119, align 1, !tbaa !37 ; 2 uses
  %i.ah = and i8 %i.ag, 127                       ; 3 uses
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = icmp samesign ugt i64 %indvars.iv89118, 62
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !154

bb.g:                                             ; preds = %.preheader.preheader
  %.not44.i37 = icmp eq i64 %indvars.iv89118, 63
  %.not.i38 = icmp samesign ugt i8 %i.ah, 1
  %i.ak = icmp ne i8 %i.ah, 0
  %or.cond43.i39 = select i1 %.not44.i37, i1 %.not.i38, i1 %i.ak
  br i1 %or.cond43.i39, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit40, label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader.preheader
  %i.al = icmp samesign ult i64 %indvars.iv89118, 64
  %i.am = shl i64 %i.ai, %indvars.iv89118
  %i.an = select i1 %i.al, i64 %i.am, i64 0, !prof !155
  %.130.i34 = add i64 %i.an, %.029.i32120         ; 2 uses
  %i.ao = icmp slt i8 %i.ag, 0
  br i1 %i.ao, label %.preheader, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit40, !llvm.loop !153

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit40:      ; preds = %bb.g, %bb.h
  %.3.i36 = phi i64 [ %.130.i34, %bb.h ], [ 0, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !156, !nonnull !17, !align !157 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !158
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !160
  call void %i.ar(i64 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(34) %2, i64 noundef %.3.i36) #14, !inline_history !161
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit40, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit
  %i.au = phi ptr [ %i.ab, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread ], [ %i.af, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit40 ], [ %i.af, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ]
  %.3.i73 = phi i64 [ 0, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.thread ], [ %.130.i, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit40 ], [ 0, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.3.i73 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !37  ; 2 uses
  %.not83 = icmp eq i8 %i.aw, 0
  br i1 %.not83, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 33
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 33
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.i
  %i.bd = load ptr, ptr %3, align 8, !tbaa !140, !noalias !162 ; 2 uses
  %i.be = load ptr, ptr %i.l, align 8, !tbaa !167, !noalias !162 ; 2 uses
  %i.bf = load i32, ptr %i.m, align 4, !tbaa !137, !noalias !162 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5eraseERKm.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bh = add i32 %i.bf, -1                       ; 2 uses
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.bj = mul i64 %i.bi, -4658895280553007687     ; 2 uses
  %i.bk = lshr i64 %i.bj, 31
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = and i32 %i.bh, %i.bm                    ; 3 uses
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = lshr i64 %i.bo, 5
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !168
  %i.bs = and i32 %i.bn, 31
  %i.bt = lshr i32 %i.br, %i.bs
  %i.bu = trunc i32 %i.bt to i1
  br i1 %i.bu, label %.lr.ph.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5eraseERKm.exit, !prof !169

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %bb.k
  %i.bv = phi i64 [ %i.cb, %bb.k ], [ %i.bo, %bb.j ] ; 2 uses
  %.019.i.i.i.i = phi i32 [ %i.ca, %bb.k ], [ %i.bn, %bb.j ]
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !30
  %i.by = icmp eq i64 %i.bi, %i.bx
  br i1 %i.by, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E6doFindImEEPS7_RKT_.exit.i.i, label %bb.k, !prof !155

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bz = add nuw i32 %.019.i.i.i.i, 1
  %i.ca = and i32 %i.bz, %i.bh                    ; 3 uses
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = lshr i64 %i.cb, 5
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !168
  %i.cf = and i32 %i.ca, 31
  %i.cg = lshr i32 %i.ce, %i.cf
  %i.ch = trunc i32 %i.cg to i1
  br i1 %i.ch, label %.lr.ph.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5eraseERKm.exit, !prof !170

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E6doFindImEEPS7_RKT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E21eraseFromFilledBucketIZNS9_21eraseFromFilledBucketEPS7_EUlRS7_E_EEvSB_OT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.ci, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5eraseERKm.exit

_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE5eraseERKm.exit: ; preds = %bb.k, %._crit_edge, %bb.j, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E6doFindImEEPS7_RKT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

bb.l:                                             ; preds = %.lr.ph, %_ZN4llvmplERKNS_5TwineES2_.exit
  %.081 = phi ptr [ %i.ax, %.lr.ph ], [ %i.eo, %_ZN4llvmplERKNS_5TwineES2_.exit ] ; 5 uses
  %.02780 = phi i8 [ 0, %.lr.ph ], [ %i.eu, %_ZN4llvmplERKNS_5TwineES2_.exit ]
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !135
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %.081 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = call i64 @strnlen(ptr noundef %.081, i64 noundef %i.cm) #18 ; 3 uses
  %i.co = getelementptr i8, ptr %.081, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 1      ; 6 uses
  %i.cq = ptrtoaddr ptr %i.cp to i64
  %i.cr = sub i64 0, %i.cq
  %scevgep.i41 = getelementptr i8, ptr %i.cp, i64 %i.cr
  %i.cs = icmp eq ptr %i.cp, null
  br i1 %i.cs, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51, label %.lr.ph118, !prof !152

bb.m:                                             ; preds = %bb.o
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92121, 7
  br label %.lr.ph118, !llvm.loop !153

.lr.ph118:                                        ; preds = %bb.l, %bb.m
  %.029.i43123 = phi i64 [ %.130.i45, %bb.m ], [ 0, %bb.l ]
  %.031.i42122 = phi ptr [ %i.db, %bb.m ], [ %i.cp, %bb.l ] ; 3 uses
  %indvars.iv92121 = phi i64 [ %indvars.iv.next93, %bb.m ], [ 0, %bb.l ] ; 5 uses
  %i.ct = load i8, ptr %.031.i42122, align 1, !tbaa !37 ; 2 uses
  %i.cu = and i8 %i.ct, 127                       ; 3 uses
  %i.cv = zext nneg i8 %i.cu to i64
  %i.cw = icmp samesign ugt i64 %indvars.iv92121, 62
  br i1 %i.cw, label %bb.n, label %bb.o, !prof !154

bb.n:                                             ; preds = %.lr.ph118
  %.not44.i48 = icmp eq i64 %indvars.iv92121, 63
  %.not.i49 = icmp samesign ugt i8 %i.cu, 1
  %i.cx = icmp ne i8 %i.cu, 0
  %or.cond43.i50 = select i1 %.not44.i48, i1 %.not.i49, i1 %i.cx
  br i1 %or.cond43.i50, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51, label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph118
  %i.cy = icmp samesign ult i64 %indvars.iv92121, 64
  %i.cz = shl i64 %i.cv, %indvars.iv92121
  %i.da = select i1 %i.cy, i64 %i.cz, i64 0, !prof !155
  %.130.i45 = add i64 %i.da, %.029.i43123         ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.031.i42122, i64 1 ; 2 uses
  %i.dc = icmp slt i8 %i.ct, 0
  br i1 %i.dc, label %bb.m, label %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51_crit_edge124, !llvm.loop !153

._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51_crit_edge124: ; preds = %bb.o
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51, !llvm.loop !153

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51:      ; preds = %bb.n, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51_crit_edge124, %bb.l
  %.132.i46 = phi ptr [ %i.db, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51_crit_edge124 ], [ %scevgep.i41, %bb.l ], [ %.031.i42122, %bb.n ]
  %.3.i47 = phi i64 [ %.130.i45, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51_crit_edge124 ], [ 0, %bb.l ], [ 0, %bb.n ] ; 3 uses
  %i.dd = ptrtoint ptr %.132.i46 to i64
  %i.de = ptrtoint ptr %i.cp to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = load ptr, ptr %3, align 8, !tbaa !140, !noalias !171
  %i.dh = load ptr, ptr %i.l, align 8, !tbaa !167, !noalias !171 ; 2 uses
  %i.di = load i32, ptr %i.m, align 4, !tbaa !137, !noalias !171 ; 3 uses
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51
  %i.dk = add i32 %i.di, -1                       ; 2 uses
  %i.dl = mul i64 %.3.i47, -4658895280553007687   ; 2 uses
  %i.dm = lshr i64 %i.dl, 31
  %i.dn = xor i64 %i.dm, %i.dl
  %i.do = trunc i64 %i.dn to i32
  %i.dp = and i32 %i.dk, %i.do                    ; 3 uses
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %i.dr = lshr i64 %i.dq, 5
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !168, !noalias !182
  %i.du = and i32 %i.dp, 31
  %i.dv = lshr i32 %i.dt, %i.du
  %i.dw = trunc i32 %i.dv to i1
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread, !prof !169

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %bb.q
  %i.dx = phi i64 [ %i.ed, %bb.q ], [ %i.dq, %bb.p ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.ec, %bb.q ], [ %i.dp, %bb.p ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !30, !noalias !182
  %i.ea = icmp eq i64 %.3.i47, %i.dz
  br i1 %i.ea, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit, label %bb.q, !prof !155

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.eb = add nuw i32 %.019.i.i.i.i.i, 1
  %i.ec = and i32 %i.eb, %i.dk                    ; 3 uses
  %i.ed = zext i32 %i.ec to i64                   ; 2 uses
  %i.ee = lshr i64 %i.ed, 5
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !168, !noalias !182
  %i.eh = and i32 %i.ec, 31
  %i.ei = lshr i32 %i.eg, %i.eh
  %i.ej = trunc i32 %i.ei to i1
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread, !prof !170

_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = zext i32 %i.di to i64
  %i.ek = icmp samesign eq i64 %i.dx, %.pre
  br i1 %i.ek, label %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.2)
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 4, ptr %i.el, align 8, !tbaa !141
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.em, align 1, !tbaa !144
  store ptr %8, ptr %7, align 8, !tbaa !37
  call void @_ZN3lld5fatalERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %7) #17
  unreachable

_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread: ; preds = %bb.q, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit51, %bb.p, %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit
  %i.en = and i64 %i.df, 4294967295
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.en
  %i.ep = load ptr, ptr %i.f, align 8, !tbaa !132
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.3.i47
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.er = load i8, ptr %i.ay, align 8, !tbaa !141, !noalias !189 ; 3 uses
  switch i8 %i.er, label %bb.t [
    i8 0, label %_ZN4llvmplERKNS_5TwineES2_.exit
    i8 1, label %bb.s
  ]

bb.s:                                             ; preds = %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread
  store ptr %.081, ptr %9, align 8
  store i64 %i.cn, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !37
  br label %_ZN4llvmplERKNS_5TwineES2_.exit

bb.t:                                             ; preds = %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread
  %i.es = load i8, ptr %i.bb, align 1, !tbaa !144, !noalias !189
  %i.et = icmp eq i8 %i.es, 1                     ; 3 uses
  %.sroa.05.0.copyload.i.i = load ptr, ptr %2, align 8, !noalias !189
  %.sroa.56.0.copyload.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !189
  %.014.i.i = select i1 %i.et, i8 %i.er, i8 2
  %.sroa.05.0.i.i = select i1 %i.et, ptr %.sroa.05.0.copyload.i.i, ptr %2
  %.sroa.56.0.i.i = select i1 %i.et, i64 %.sroa.56.0.copyload.i.i, i64 undef
  store ptr %.sroa.05.0.i.i, ptr %9, align 8, !alias.scope !189
  store i64 %.sroa.56.0.i.i, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !37, !alias.scope !189
  store ptr %.081, ptr %i.bc, align 8, !alias.scope !189
  store i64 %i.cn, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !37, !alias.scope !189
  br label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread, %bb.s, %bb.t
  %.sink99 = phi i8 [ %.014.i.i, %bb.t ], [ 5, %bb.s ], [ %i.er, %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread ]
  %.sink = phi i8 [ 5, %bb.t ], [ 1, %bb.s ], [ 1, %_ZN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEE4findERKm.exit.thread ]
  store i8 %.sink99, ptr %i.az, align 8, !tbaa !190
  store i8 %.sink, ptr %i.ba, align 1, !tbaa !190
  call fastcc void @_ZN12_GLOBAL__N_110TrieParser5parseEPKhRKN4llvm5TwineERNS3_8DenseSetImNS3_12DenseMapInfoImvEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.eq, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.eu = add nuw i8 %.02780, 1                   ; 2 uses
  %exitcond.not = icmp eq i8 %i.eu, %i.aw
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !191
}

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN3lld5fatalERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !130
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !131  ; 3 uses
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #14 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !129, !alias.scope !192
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !131, !alias.scope !192
  store i8 0, ptr %i.e, align 8, !tbaa !37, !alias.scope !192
  %i.g = add i64 %i.d, %i.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g) #14
  %i.h = load i64, ptr %i.f, align 8, !tbaa !131, !alias.scope !192
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.c
  br i1 %i.j, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.a, i64 noundef %i.c) #14 ; 0 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !131, !alias.scope !192
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
  %i.b = load ptr, ptr %0, align 8, !tbaa !140, !noalias !195 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167, !noalias !195 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !137, !noalias !195 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i64, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !168
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !169

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load i64, ptr %i.w, align 8, !tbaa !30
  %i.y = icmp eq i64 %i.i, %i.x
end_hunk_0
