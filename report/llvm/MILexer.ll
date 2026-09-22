Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MILexer?download=true
inline.NumInlined: 830
inline.NumDeleted: 147
begin_hunk_0_@_ZL19maybeLexGlobalValueN12_GLOBAL__N_16CursorERN4llvm7MITokenENS1_12function_refIFvPKcRKNS1_5TwineEEEE:bb.a
  %.not.i25 = icmp sgt i64 %i.s, 0
  br i1 %.not.i25, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit26, label %._ZNK12_GLOBAL__N_16Cursor4peekEi.exit26.thread.loopexit_crit_edge, !llvm.loop !51

._ZNK12_GLOBAL__N_16Cursor4peekEi.exit26.thread.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit26.thread, !llvm.loop !51

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit26.thread:   ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit26, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit26.preheader, %._ZNK12_GLOBAL__N_16Cursor4peekEi.exit26.thread.loopexit_crit_edge, %bb.c
  %.sroa.033.0.lcssa = phi ptr [ %i.e, %bb.c ], [ %i.e, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit26.preheader ], [ %scevgep, %._ZNK12_GLOBAL__N_16Cursor4peekEi.exit26.thread.loopexit_crit_edge ], [ %i.q, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit26 ]
  %.lcssa = phi i64 [ %i.k, %bb.c ], [ %i.k, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit26.preheader ], [ %i.r, %._ZNK12_GLOBAL__N_16Cursor4peekEi.exit26.thread.loopexit_crit_edge ], [ %i.r, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit26 ] ; 2 uses
  %i.t = sub i64 %.lcssa, %i.b
  store i32 139, ptr %2, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.u, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.t, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !24
  %i.v = sub i64 %.lcssa, %i.k
  call void @_ZN4llvm6APSIntC1ENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(13) %5, ptr nonnull %i.e, i64 %i.v) #16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !28
  %i.z = icmp ult i32 %i.y, 65
  br i1 %i.z, label %_ZN4llvm5APIntD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit26.thread
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !27  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN4llvm5APIntD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.aa) #14
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.e, %bb.d, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit26.thread
  %i.ac = load i64, ptr %5, align 8
  store i64 %i.ac, ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !28
  store i32 %i.ae, ptr %i.x, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !29, !range !30, !noundef !31
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 84
  store i8 %i.ag, ptr %i.ah, align 4, !tbaa !29
  br label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread:     ; preds = %bb.a, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, %_ZN4llvm5APIntD2Ev.exit, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit24.thread
  %.sroa.436.0 = phi ptr [ %1, %_ZN4llvm5APIntD2Ev.exit ], [ %i.j, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit24.thread ], [ null, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit ], [ null, %bb.a ]
  %.sroa.035.0 = phi ptr [ %.sroa.033.0.lcssa, %_ZN4llvm5APIntD2Ev.exit ], [ %i.i, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit24.thread ], [ null, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.035.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.436.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, ptr } @_ZL22maybeLexExternalSymbolN12_GLOBAL__N_16CursorERN4llvm7MITokenENS1_12function_refIFvPKcRKNS1_5TwineEEEE(ptr %0, ptr %1, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(88) %2, ptr nofree readonly captures(none) %3, i64 %4) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.not.i = icmp sgt i64 %i.c, 0
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit:            ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !27
  %.not = icmp eq i8 %i.d, 38
  br i1 %.not, label %bb.b, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread

bb.b:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  %i.e = tail call fastcc { ptr, ptr } @_ZL7lexNameN12_GLOBAL__N_16CursorERN4llvm7MITokenENS2_9TokenKindEjNS1_12function_refIFvPKcRKNS1_5TwineEEEE(ptr nonnull %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef 140, i32 noundef 1, ptr %3, i64 %4) ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0
  %i.g = extractvalue { ptr, ptr } %i.e, 1
  br label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread:     ; preds = %bb.a, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, %bb.b
  %.sroa.38.0 = phi ptr [ %i.g, %bb.b ], [ null, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit ], [ null, %bb.a ]
  %.sroa.07.0 = phi ptr [ %i.f, %bb.b ], [ null, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.38.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, ptr } @_ZL16maybeLexMCSymbolN12_GLOBAL__N_16CursorERN4llvm7MITokenENS1_12function_refIFvPKcRKNS1_5TwineEEEE(ptr %0, ptr %1, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(88) %2, ptr nofree readonly captures(none) %3, i64 %4) unnamed_addr #3 {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %.not.i = icmp ult i64 %i.c, 10
  br i1 %.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.a
  %i.d = load i64, ptr %0, align 1
  %i.e = xor i64 %i.d, 8026097854322011452
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load i16, ptr %i.f, align 1
  %i.h = zext i16 %i.g to i64
  %i.i = xor i64 %i.h, 8300
  %i.j = or i64 %i.e, %i.i
  %i.k = icmp ne i64 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.a, %i.o
  %.not.i59 = icmp sgt i64 %i.p, 0
  br i1 %.not.i59, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, label %.critedge.preheader

.critedge.preheader:                              ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  br label %.critedge

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit:            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %i.q = load i8, ptr %i.n, align 1, !tbaa !27
  %i.r = icmp eq i8 %i.q, 34
  br i1 %i.r, label %.preheader, label %.critedge.preheader

.critedge:                                        ; preds = %.critedge.preheader, %bb.c
  %.sroa.0121.0 = phi ptr [ %i.y, %bb.c ], [ %i.n, %.critedge.preheader ] ; 6 uses
  %i.s = ptrtoint ptr %.sroa.0121.0 to i64        ; 2 uses
  %i.t = sub i64 %i.a, %i.s
  %.not.i60 = icmp sgt i64 %i.t, 0                ; 2 uses
  br i1 %.not.i60, label %bb.b, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit61

bb.b:                                             ; preds = %.critedge
  %i.u = load i8, ptr %.sroa.0121.0, align 1, !tbaa !27
  br label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit61

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit61:          ; preds = %.critedge, %bb.b
  %i.v = phi i8 [ %i.u, %bb.b ], [ 0, %.critedge ] ; 2 uses
  %i.w = sext i8 %i.v to i32                      ; 2 uses
  %i.x = tail call i32 @isalpha(i32 noundef %i.w) #15
  %.not.i62 = icmp ne i32 %i.x, 0
  %isdigittmp.i = add nsw i32 %i.w, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  %or.cond.i = select i1 %.not.i62, i1 true, i1 %isdigit.i
  br i1 %or.cond.i, label %bb.c, label %switch.early.test.i

switch.early.test.i:                              ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit61
  switch i8 %i.v, label %_ZL16isIdentifierCharc.exit [
    i8 95, label %bb.c
    i8 46, label %bb.c
    i8 45, label %bb.c
    i8 36, label %bb.c
  ]

bb.c:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit61
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0121.0, i64 1
  br label %.critedge, !llvm.loop !52

_ZL16isIdentifierCharc.exit:                      ; preds = %switch.early.test.i
  %i.z = sub i64 %i.s, %i.b                       ; 2 uses
  %.sroa.speculated4.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 10) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.speculated4.i.i
  %i.ab = sub nuw i64 %i.z, %.sroa.speculated4.i.i
  br i1 %.not.i60, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit66, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit66.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit66:          ; preds = %_ZL16isIdentifierCharc.exit
  %i.ac = load i8, ptr %.sroa.0121.0, align 1, !tbaa !27
  %.not35 = icmp eq i8 %i.ac, 62
  br i1 %.not35, label %bb.d, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit66.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit66.thread:   ; preds = %_ZL16isIdentifierCharc.exit, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.ae, align 1, !tbaa !35
  store ptr @.str.121, ptr %6, align 8, !tbaa !27
  store i8 3, ptr %i.ad, align 8, !tbaa !36
  call void %3(i64 noundef %4, ptr noundef nonnull %.sroa.0121.0, ptr noundef nonnull align 8 dereferenceable(34) %6) #16, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  store i32 1, ptr %2, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.af, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.c, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.d:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit66
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0121.0, i64 1 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.b
  store i32 141, ptr %2, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.aj, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.ai, ptr %.sroa.2.0..sroa_idx.i71, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.aa, ptr %i.ak, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.ab, ptr %.sroa.2.0..sroa_idx.i72, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.preheader:                                       ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit8.i
  %.pn.i = phi ptr [ %.sroa.09.0.i, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit8.i ], [ %i.n, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit ] ; 3 uses
  %.sroa.09.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 6 uses
  %i.al = ptrtoint ptr %.sroa.09.0.i to i64
  %i.am = sub i64 %i.a, %i.al
  %.not.i.i = icmp sgt i64 %i.am, 0
  br i1 %.not.i.i, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.i, label %.thread.i

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.i:          ; preds = %.preheader
  %i.an = load i8, ptr %.sroa.09.0.i, align 1, !tbaa !27 ; 2 uses
  %.not.i75 = icmp eq i8 %i.an, 34
  br i1 %.not.i75, label %bb.f, label %10

10:                                               ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.i
  %11 = icmp eq ptr %.sroa.09.0.i, %1
  br i1 %11, label %bb.e, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit8.i

.thread.i:                                        ; preds = %.preheader
  %i.ao = icmp eq ptr %.sroa.09.0.i, %1
  br i1 %i.ao, label %bb.e, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit8.i

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit8.i:         ; preds = %.thread.i, %10
  %i.ap = phi i8 [ 0, %.thread.i ], [ %i.an, %10 ]
  switch i8 %i.ap, label %.preheader [
    i8 13, label %bb.e
    i8 10, label %bb.e
  ], !llvm.loop !1

bb.e:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit8.i, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit8.i, %.thread.i, %10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ar, align 1, !tbaa !35
  store ptr @.str.117, ptr %5, align 8, !tbaa !27
  store i8 3, ptr %i.aq, align 8, !tbaa !36
  call void %3(i64 noundef %4, ptr noundef nonnull %.sroa.09.0.i, ptr noundef nonnull align 8 dereferenceable(34) %5) #16, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.at, align 1, !tbaa !35
  store ptr @.str.122, ptr %7, align 8, !tbaa !27
  store i8 3, ptr %i.as, align 8, !tbaa !36
  call void %3(i64 noundef %4, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(34) %7) #16, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  store i32 1, ptr %2, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.au, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.c, ptr %.sroa.2.0..sroa_idx.i78, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %.pn.i, i64 2 ; 3 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ax = sub i64 %i.aw, %i.b                     ; 2 uses
  %.sroa.speculated4.i.i81 = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 10) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.speculated4.i.i81
  %i.az = sub nuw i64 %i.ax, %.sroa.speculated4.i.i81
  %i.ba = sub i64 %i.a, %i.aw
  %.not.i84 = icmp sgt i64 %i.ba, 0
  br i1 %.not.i84, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit85, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit85.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit85:          ; preds = %bb.f
  %i.bb = load i8, ptr %i.av, align 1, !tbaa !27
  %.not34 = icmp eq i8 %i.bb, 62
  br i1 %.not34, label %bb.g, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit85.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit85.thread:   ; preds = %bb.f, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit85
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.bd, align 1, !tbaa !35
  store ptr @.str.121, ptr %8, align 8, !tbaa !27
  store i8 3, ptr %i.bc, align 8, !tbaa !36
  call void %3(i64 noundef %4, ptr noundef nonnull %i.av, ptr noundef nonnull align 8 dereferenceable(34) %8) #16, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  store i32 1, ptr %2, align 8, !tbaa !22
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.be, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.c, ptr %.sroa.2.0..sroa_idx.i88, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit85
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn.i, i64 3 ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.b
  store i32 141, ptr %2, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.bi, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bh, ptr %.sroa.2.0..sroa_idx.i91, align 8, !tbaa !24
  call fastcc void @_ZL20unescapeQuotedStringB5cxx11N4llvm9StringRefE(ptr dead_on_unwind noalias writable align 8 %9, ptr nonnull %i.ay, i64 %i.az)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !25 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  %i.bn = load ptr, ptr %9, align 8, !tbaa !25    ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo                ; 2 uses
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  br i1 %i.bp, label %bb.h, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.g
  br i1 %i.bp, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !26 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 16
  call void @llvm.assume(i1 %i.bs)
  switch i64 %i.br, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bt = load i8, ptr %i.bn, align 1, !tbaa !27
  store i8 %i.bt, ptr %i.bk, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr align 1 %i.bn, i64 %i.br, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bu = load i64, ptr %i.bq, align 8, !tbaa !26 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !26
  %i.bw = load ptr, ptr %i.bj, align 8, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bu
  store i8 0, ptr %i.bx, align 1, !tbaa !27
  %.pre.i.i = load ptr, ptr %9, align 8, !tbaa !25
  br label %_ZN4llvm7MIToken19setOwnedStringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !25
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ca = load <2 x i64>, ptr %i.bz, align 8, !tbaa !27
  store <2 x i64> %i.ca, ptr %i.by, align 8, !tbaa !27
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.cb = load i64, ptr %i.bl, align 8, !tbaa !27
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !25
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ce = load <2 x i64>, ptr %i.cc, align 8, !tbaa !27
  store <2 x i64> %i.ce, ptr %i.cd, align 8, !tbaa !27
  %.not.i.i92 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i92, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.bk, ptr %9, align 8, !tbaa !25
  store i64 %i.cb, ptr %i.bo, align 8, !tbaa !27
  br label %_ZN4llvm7MIToken19setOwnedStringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.bo, ptr %9, align 8, !tbaa !25
  br label %_ZN4llvm7MIToken19setOwnedStringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN4llvm7MIToken19setOwnedStringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.k, %bb.l
  %i.cf = phi ptr [ %i.bk, %bb.k ], [ %i.bo, %bb.l ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.cg, align 8, !tbaa !26
  store i8 0, ptr %i.cf, align 1, !tbaa !27
  %i.ch = load ptr, ptr %i.bj, align 8, !tbaa !25
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !26
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ch, ptr %i.ck, align 8, !tbaa !23
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.cj, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !24
  %i.cl = load ptr, ptr %9, align 8, !tbaa !25    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZN4llvm7MIToken19setOwnedStringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !27
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm7MIToken19setOwnedStringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.a, %bb.d, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit66.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit85.thread, %bb.e, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %.sroa.7.2 = phi ptr [ null, %_ZNK4llvm9StringRef11starts_withES0_.exit ], [ %1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %1, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit66.thread ], [ %1, %bb.d ], [ %1, %bb.e ], [ %1, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit85.thread ], [ null, %bb.a ], [ %1, %_ZN4llvm7MIToken19setOwnedStringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %.sroa.0124.2 = phi ptr [ null, %_ZNK4llvm9StringRef11starts_withES0_.exit ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %0, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit66.thread ], [ %i.ag, %bb.d ], [ %0, %bb.e ], [ %0, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit85.thread ], [ null, %bb.a ], [ %i.bf, %_ZN4llvm7MIToken19setOwnedStringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0124.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.7.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define internal fastcc { ptr, ptr } @_ZL26maybeLexHexadecimalLiteralN12_GLOBAL__N_16CursorERN4llvm7MITokenE(ptr %0, ptr %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) %2) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %.not.i = icmp sgt i64 %i.c, 0
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit:            ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !27
  %.not = icmp eq i8 %i.d, 48
  %.not.i28 = icmp ne i64 %i.c, 1
  %or.cond = and i1 %.not.i28, %.not
  br i1 %or.cond, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit29, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit29:          ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !27
  switch i8 %i.f, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread [
    i8 120, label %bb.b
    i8 88, label %bb.b
  ]

bb.b:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit29, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %.not.i32 = icmp sgt i64 %i.i, 0
  br i1 %.not.i32, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit33, label %_ZL29isValidHexFloatingPointPrefixc.exit

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit33:          ; preds = %bb.b
  %i.j = load i8, ptr %i.g, align 1, !tbaa !27
end_hunk_0
begin_hunk_1_@_ZL15maybeLexExclaimN12_GLOBAL__N_16CursorERN4llvm7MITokenENS1_12function_refIFvPKcRKNS1_5TwineEEEE:bb.a
bb.i:                                             ; preds = %_ZL16isIdentifierCharc.exit38
  %i.az = load i64, ptr %0, align 1
  %i.ba = xor i64 %i.az, 7310028807036552225
  %i.bb = getelementptr i8, ptr %0, i64 5
  %i.bc = load i64, ptr %i.bb, align 1
  %i.bd = xor i64 %i.bc, 7957695011165139568
  %i.be = or i64 %i.ba, %i.bd
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %.not.i.i32.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i32.i, label %_ZL22getMetadataKeywordKindN4llvm9StringRefE.exit, label %.thread157.i

.thread157.i:                                     ; preds = %bb.i, %bb.h, %bb.g
  br label %_ZL22getMetadataKeywordKindN4llvm9StringRefE.exit

bb.j:                                             ; preds = %_ZL16isIdentifierCharc.exit38
  %i.bh = load i64, ptr %0, align 1
  %i.bi = xor i64 %i.bh, 8386093310812963873
  %i.bj = getelementptr i8, ptr %0, i64 3
  %i.bk = load i64, ptr %i.bj, align 1
  %i.bl = xor i64 %i.bk, 7957695015157985100
  %i.bm = or i64 %i.bi, %i.bl
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %.not.i.i40.i = icmp eq i32 %i.bo, 0
  %spec.select.i = select i1 %.not.i.i40.i, i64 4294967426, i64 0
  br label %_ZL22getMetadataKeywordKindN4llvm9StringRefE.exit

_ZN4llvm12StringSwitchINS_7MIToken9TokenKindES2_E4CaseENS_13StringLiteralES2_.exit42.thread.i: ; preds = %bb.f, %bb.e
  %.sroa.18.5.ph.i = phi i64 [ 4294967420, %bb.e ], [ 4294967421, %bb.f ]
  br label %_ZL22getMetadataKeywordKindN4llvm9StringRefE.exit

bb.k:                                             ; preds = %_ZL16isIdentifierCharc.exit38
  %i.bp = load i128, ptr %0, align 1
  %i.bq = xor i128 %i.bp, 129518994379477539424807017871462854177
  %i.br = getelementptr i8, ptr %0, i64 16
  %i.bs = load i16, ptr %i.br, align 1
  %i.bt = zext i16 %i.bs to i128
  %i.bu = xor i128 %i.bt, 25955
  %i.bv = or i128 %i.bq, %i.bu
  %i.bw = icmp ne i128 %i.bv, 0
  %i.bx = zext i1 %i.bw to i32
  %.not.i.i48.i = icmp eq i32 %i.bx, 0
  %spec.select176.i = select i1 %.not.i.i48.i, i64 4294967423, i64 0
  br label %_ZL22getMetadataKeywordKindN4llvm9StringRefE.exit

_ZL22getMetadataKeywordKindN4llvm9StringRefE.exit: ; preds = %_ZL16isIdentifierCharc.exit38, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %.thread157.i, %bb.j, %_ZN4llvm12StringSwitchINS_7MIToken9TokenKindES2_E4CaseENS_13StringLiteralES2_.exit42.thread.i, %bb.k
  %.sroa.18.6.i = phi i64 [ 0, %_ZL16isIdentifierCharc.exit38 ], [ 0, %bb.e ], [ 0, %bb.f ], [ %spec.select176.i, %bb.k ], [ %spec.select.i, %bb.j ], [ 4294967424, %bb.h ], [ 4294967425, %bb.i ], [ 4294967422, %bb.g ], [ 0, %.thread157.i ], [ %.sroa.18.5.ph.i, %_ZN4llvm12StringSwitchINS_7MIToken9TokenKindES2_E4CaseENS_13StringLiteralES2_.exit42.thread.i ] ; 2 uses
  %i.by = and i64 %.sroa.18.6.i, 4294967296
  %.not.i41 = icmp eq i64 %i.by, 0
  %.sroa.18.16.extract.trunc.i = trunc i64 %.sroa.18.6.i to i32
  %spec.select.i.i = select i1 %.not.i41, i32 1, i32 %.sroa.18.16.extract.trunc.i ; 2 uses
  store i32 %spec.select.i.i, ptr %2, align 8, !tbaa !22
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.bz, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.u, ptr %.sroa.2.0..sroa_idx.i42, align 8, !tbaa !24
  %i.ca = icmp eq i32 %spec.select.i.i, 1
  br i1 %i.ca, label %_ZN4llvmplERKNS_5TwineES2_.exit, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %_ZL22getMetadataKeywordKindN4llvm9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 3, ptr %i.cb, align 8, !tbaa !36, !alias.scope !64
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 5, ptr %i.cc, align 1, !tbaa !35, !alias.scope !64
  store ptr @.str.123, ptr %6, align 8, !tbaa !27, !alias.scope !64
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %0, ptr %i.cd, align 8, !tbaa !27, !alias.scope !64
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.u, ptr %i.ce, align 8, !tbaa !27, !alias.scope !64
  store ptr %6, ptr %5, align 8, !alias.scope !65
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.1, ptr %i.cf, align 8, !alias.scope !65
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 2, ptr %i.cg, align 8, !tbaa !36, !alias.scope !65
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 3, ptr %i.ch, align 1, !tbaa !35, !alias.scope !65
  call void %3(i64 noundef %4, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(34) %5) #16, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread:     ; preds = %bb.a, %_ZL16isIdentifierCharc.exit.thread, %_ZN4llvmplERKNS_5TwineES2_.exit, %_ZL22getMetadataKeywordKindN4llvm9StringRefE.exit, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  %.sroa.4.1 = phi ptr [ null, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit ], [ %1, %_ZL16isIdentifierCharc.exit.thread ], [ %1, %_ZL22getMetadataKeywordKindN4llvm9StringRefE.exit ], [ %1, %_ZN4llvmplERKNS_5TwineES2_.exit ], [ null, %bb.a ]
  %.sroa.049.1 = phi ptr [ null, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit ], [ %i.e, %_ZL16isIdentifierCharc.exit.thread ], [ %.sroa.044.0, %_ZL22getMetadataKeywordKindN4llvm9StringRefE.exit ], [ %.sroa.044.0, %_ZN4llvmplERKNS_5TwineES2_.exit ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.049.1, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.1, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc { ptr, ptr } @_ZL14maybeLexSymbolN12_GLOBAL__N_16CursorERN4llvm7MITokenE(ptr %0, ptr %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) %2) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %.not.i = icmp sgt i64 %i.c, 0
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, label %_ZL11symbolTokenc.exit

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit:            ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !27
  switch i8 %i.d, label %_ZL11symbolTokenc.exit [
    i8 58, label %bb.b
    i8 44, label %bb.m
    i8 46, label %bb.c
    i8 61, label %bb.d
    i8 62, label %bb.l
    i8 40, label %bb.e
    i8 41, label %bb.f
    i8 123, label %bb.g
    i8 125, label %bb.h
    i8 43, label %bb.i
    i8 45, label %bb.j
    i8 60, label %bb.k
  ]

bb.b:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  %.not.i12.not = icmp eq i64 %i.c, 1
  br i1 %.not.i12.not, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit15.thread19, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit13

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit13:          ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !27
  %i.g = icmp eq i8 %i.f, 58
  br i1 %i.g, label %bb.m, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit15.thread19

bb.c:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  br label %bb.m

bb.d:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  br label %bb.m

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit15.thread19: ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit13, %bb.b
  br label %bb.m

bb.e:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  br label %bb.m

bb.f:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  br label %bb.m

bb.g:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  br label %bb.m

bb.h:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  br label %bb.m

bb.i:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  br label %bb.m

bb.j:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  br label %bb.m

bb.k:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  br label %bb.m

bb.l:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  br label %bb.m

bb.m:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit13, %bb.l, %bb.c, %bb.d, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit15.thread19, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.05.ph = phi i64 [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit15.thread19 ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit ], [ 2, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit13 ] ; 2 uses
  %.0.ph = phi i32 [ 17, %bb.l ], [ 16, %bb.k ], [ 15, %bb.j ], [ 14, %bb.i ], [ 13, %bb.h ], [ 12, %bb.g ], [ 11, %bb.f ], [ 10, %bb.e ], [ 6, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit15.thread19 ], [ 4, %bb.d ], [ 8, %bb.c ], [ 3, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit ], [ 7, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit13 ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.05.ph
  store i32 %.0.ph, ptr %2, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.i, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.05.ph, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !24
  br label %_ZL11symbolTokenc.exit

_ZL11symbolTokenc.exit:                           ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, %bb.a, %bb.m
  %.sroa.3.0 = phi ptr [ %1, %bb.m ], [ null, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit ], [ null, %bb.a ]
  %.sroa.018.0 = phi ptr [ %i.h, %bb.m ], [ null, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.018.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, ptr } @_ZL22maybeLexEscapedIRValueN12_GLOBAL__N_16CursorERN4llvm7MITokenENS1_12function_refIFvPKcRKNS1_5TwineEEEE(ptr %0, ptr %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) %2, ptr nofree readonly captures(none) %3, i64 %4) unnamed_addr #3 {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %.not.i = icmp sgt i64 %i.c, 0
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit:            ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !27
  %.not = icmp eq i8 %i.d, 96
  br i1 %.not, label %bb.b, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread

bb.b:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit27.thread, %bb.b
  %.sroa.036.0 = phi ptr [ %i.e, %bb.b ], [ %i.l, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit27.thread ] ; 8 uses
  %i.f = ptrtoint ptr %.sroa.036.0 to i64         ; 2 uses
  %i.g = sub i64 %i.a, %i.f
  %.not.i24 = icmp sgt i64 %i.g, 0
  br i1 %.not.i24, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit25, label %.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit25:          ; preds = %bb.c
  %i.h = load i8, ptr %.sroa.036.0, align 1, !tbaa !27 ; 2 uses
  %.not11 = icmp eq i8 %i.h, 96
  br i1 %.not11, label %bb.e, label %6

6:                                                ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit25
  %7 = icmp eq ptr %.sroa.036.0, %1
  br i1 %7, label %bb.d, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit27

.thread:                                          ; preds = %bb.c
  %i.i = icmp eq ptr %.sroa.036.0, %1
  br i1 %i.i, label %bb.d, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit27.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit27:          ; preds = %6
  switch i8 %i.h, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit27.thread [
    i8 13, label %bb.d
    i8 10, label %bb.d
  ]

bb.d:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit27, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit27, %.thread, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.k, align 1, !tbaa !35
  store ptr @.str.131, ptr %5, align 8, !tbaa !27
  store i8 3, ptr %i.j, align 8, !tbaa !36
  call void %3(i64 noundef %4, ptr noundef nonnull %.sroa.036.0, ptr noundef nonnull align 8 dereferenceable(34) %5) #16, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  store i32 1, ptr %2, align 8, !tbaa !22
  br label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread.sink.split

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit27.thread:   ; preds = %.thread, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit27
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.036.0, i64 1
  br label %bb.c, !llvm.loop !66

bb.e:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit25
  %i.m = ptrtoint ptr %i.e to i64
  %i.n = sub i64 %i.f, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.036.0, i64 1 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.b
  store i32 153, ptr %2, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.r, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.q, ptr %.sroa.2.0..sroa_idx.i32, align 8, !tbaa !24
  br label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread.sink.split

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread.sink.split: ; preds = %bb.e, %bb.d
  %.sink57 = phi i64 [ 8, %bb.d ], [ 24, %bb.e ]
  %.sink55 = phi ptr [ %0, %bb.d ], [ %i.e, %bb.e ]
  %.sink54 = phi i64 [ 16, %bb.d ], [ 32, %bb.e ]
  %.sink = phi i64 [ %i.c, %bb.d ], [ %i.n, %bb.e ]
  %.sroa.042.1.ph = phi ptr [ %.sroa.036.0, %bb.d ], [ %i.o, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %.sink57
  store ptr %.sink55, ptr %i.s, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 %.sink54
  store i64 %.sink, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !24
  br label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread:     ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread.sink.split, %bb.a, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  %.sroa.443.1 = phi ptr [ null, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit ], [ null, %bb.a ], [ %1, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread.sink.split ]
  %.sroa.042.1 = phi ptr [ null, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit ], [ null, %bb.a ], [ %.sroa.042.1.ph, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread.sink.split ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.042.1, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.443.1, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, ptr } @_ZL22maybeLexStringConstantN12_GLOBAL__N_16CursorERN4llvm7MITokenENS1_12function_refIFvPKcRKNS1_5TwineEEEE(ptr %0, ptr %1, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(88) %2, ptr nofree readonly captures(none) %3, i64 %4) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.not.i = icmp sgt i64 %i.c, 0
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit:            ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !27
  %.not = icmp eq i8 %i.d, 34
  br i1 %.not, label %bb.b, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread

bb.b:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  %i.e = tail call fastcc { ptr, ptr } @_ZL7lexNameN12_GLOBAL__N_16CursorERN4llvm7MITokenENS2_9TokenKindEjNS1_12function_refIFvPKcRKNS1_5TwineEEEE(ptr nonnull %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef 155, i32 noundef 0, ptr %3, i64 %4) ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0
  %i.g = extractvalue { ptr, ptr } %i.e, 1
  br label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread:     ; preds = %bb.a, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, %bb.b
  %.sroa.38.0 = phi ptr [ %i.g, %bb.b ], [ null, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit ], [ null, %bb.a ]
  %.sroa.07.0 = phi ptr [ %i.f, %bb.b ], [ null, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.38.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Twine") align 8 %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(34) %2) local_unnamed_addr #6 comdat {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !36, !noalias !69 ; 3 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !36, !noalias !69 ; 3 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.g, align 8, !tbaa !36, !alias.scope !69
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !35, !alias.scope !69
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %i.b, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !71
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i8 %i.e, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !71
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.l = load i8, ptr %i.k, align 1, !tbaa !35, !noalias !69
  %i.m = icmp eq i8 %i.l, 1                       ; 3 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %1, align 8, !noalias !69
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !69
  %.014.i = select i1 %i.m, i8 %i.b, i8 2
  %.sroa.05.0.i = select i1 %i.m, ptr %.sroa.05.0.copyload.i, ptr %1
  %.sroa.56.0.i = select i1 %i.m, i64 %.sroa.56.0.copyload.i, i64 undef
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35, !noalias !69
  %i.p = icmp eq i8 %i.o, 1                       ; 3 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %2, align 8, !noalias !69
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !69
  %.0.i = select i1 %i.p, i8 %i.e, i8 2
  %.sroa.04.0.i = select i1 %i.p, ptr %.sroa.04.0.copyload.i, ptr %2
  %.sroa.5.0.i = select i1 %i.p, i64 %.sroa.5.0.copyload.i, i64 undef
  store ptr %.sroa.05.0.i, ptr %0, align 8, !alias.scope !69
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.56.0.i, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !27, !alias.scope !69
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.04.0.i, ptr %i.q, align 8, !alias.scope !69
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !27, !alias.scope !69
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.014.i, ptr %i.r, align 8, !tbaa !36, !alias.scope !69
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.0.i, ptr %i.s, align 1, !tbaa !35, !alias.scope !69
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

_ZNK4llvm5Twine6concatERKS0_.exit:                ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isblank(i32 noundef) local_unnamed_addr #8

declare void @_ZN4llvm6APSIntC1ENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(13), ptr, i64) unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isxdigit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, ptr } @_ZL13maybeLexIndexN12_GLOBAL__N_16CursorERN4llvm7MITokenENS1_9StringRefENS2_9TokenKindE(ptr %0, ptr %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %2, ptr nofree readonly captures(none) %3, i64 %4, i32 noundef range(i32 137, 153) %5) unnamed_addr #3 {
bb.a:
  %6 = alloca %"class.llvm::APSInt", align 8      ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %.not.i = icmp ult i64 %i.c, %4
  br i1 %.not.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %4, 0
  br i1 %i.d, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr %0, ptr %3, i64 %4)
  %i.e = icmp eq i32 %bcmp.i, 0
  br i1 %i.e, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %.critedge

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %bb.b, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %sext = shl i64 %4, 32
  %i.f = ashr exact i64 %sext, 32                 ; 2 uses
  %.not.i17 = icmp sgt i64 %i.c, %i.f
  br i1 %.not.i17, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, label %.critedge

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit:            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !27
  %i.i = sext i8 %i.h to i32
  %i.j = add nsw i32 %i.i, -58
  %isdigit = icmp ult i32 %i.j, -10
  br i1 %isdigit, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  %i.k = and i64 %4, 4294967295
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k ; 6 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 4 uses
  %i.n = sub i64 %i.a, %i.m
  %.not.i1838 = icmp sgt i64 %i.n, 0
  br i1 %.not.i1838, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.preheader, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.preheader: ; preds = %bb.c
  %i.o = load i8, ptr %i.l, align 1, !tbaa !27
  %i.p = sext i8 %i.o to i32
  %isdigittmp46 = add nsw i32 %i.p, -48
  %isdigit947 = icmp ult i32 %isdigittmp46, 10
  br i1 %isdigit947, label %.lr.ph, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19:          ; preds = %.lr.ph
  %i.q = load i8, ptr %i.s, align 1, !tbaa !27
  %i.r = sext i8 %i.q to i32
  %isdigittmp = add nsw i32 %i.r, -48
  %isdigit9 = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit9, label %.lr.ph, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.thread, !llvm.loop !72

.lr.ph:                                           ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.preheader, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19
  %.sroa.031.03948 = phi ptr [ %i.s, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19 ], [ %i.l, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.031.03948, i64 1 ; 5 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.u = sub i64 %i.a, %i.t
  %.not.i18 = icmp sgt i64 %i.u, 0
  br i1 %.not.i18, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19, label %._ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.thread.loopexit_crit_edge, !llvm.loop !72

._ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.thread.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.thread, !llvm.loop !72

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.thread:   ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.preheader, %._ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.thread.loopexit_crit_edge, %bb.c
  %.sroa.031.0.lcssa = phi ptr [ %i.l, %bb.c ], [ %i.l, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.preheader ], [ %i.s, %._ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.thread.loopexit_crit_edge ], [ %i.s, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19 ]
  %.lcssa = phi i64 [ %i.m, %bb.c ], [ %i.m, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.preheader ], [ %i.t, %._ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.thread.loopexit_crit_edge ], [ %i.t, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19 ] ; 2 uses
  %i.v = sub i64 %.lcssa, %i.b
  store i32 %5, ptr %2, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.w, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.v, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !24
  %i.x = sub i64 %.lcssa, %i.m
  call void @_ZN4llvm6APSIntC1ENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(13) %6, ptr %i.l, i64 %i.x) #16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !28
  %i.ab = icmp ult i32 %i.aa, 65
  br i1 %i.ab, label %_ZN4llvm5APIntD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.thread
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !27  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN4llvm5APIntD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #14
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.e, %bb.d, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit19.thread
  %i.ae = load i64, ptr %6, align 8
  store i64 %i.ae, ptr %i.y, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !28
  store i32 %i.ag, ptr %i.z, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !29, !range !30, !noundef !31
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 84
  store i8 %i.ai, ptr %i.aj, align 4, !tbaa !29
  br label %.critedge

.critedge:                                        ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, %bb.a, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, %_ZNK4llvm9StringRef11starts_withES0_.exit, %_ZN4llvm5APIntD2Ev.exit
  %.sroa.3.0 = phi ptr [ %1, %_ZN4llvm5APIntD2Ev.exit ], [ null, %_ZNK4llvm9StringRef11starts_withES0_.exit ], [ null, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit ], [ null, %bb.a ], [ null, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread ]
  %.sroa.033.0 = phi ptr [ %.sroa.031.0.lcssa, %_ZN4llvm5APIntD2Ev.exit ], [ null, %_ZNK4llvm9StringRef11starts_withES0_.exit ], [ null, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit ], [ null, %bb.a ], [ null, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.033.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, ptr } @_ZL7lexNameN12_GLOBAL__N_16CursorERN4llvm7MITokenENS2_9TokenKindEjNS1_12function_refIFvPKcRKNS1_5TwineEEEE(ptr %0, ptr %1, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(88) %2, i32 noundef range(i32 138, 156) %3, i32 noundef %4, ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #3 {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = zext i32 %4 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 4 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %.not.i = icmp sgt i64 %i.e, 0
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, label %.critedge.preheader

.critedge.preheader:                              ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, %bb.a
  br label %.critedge

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit:            ; preds = %bb.a
  %i.f = load i8, ptr %i.b, align 1, !tbaa !27
  %i.g = icmp eq i8 %i.f, 34
  br i1 %i.g, label %.preheader, label %.critedge.preheader

.preheader:                                       ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit8.i
  %.pn.i = phi ptr [ %.sroa.09.0.i, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit8.i ], [ %i.b, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit ] ; 2 uses
  %.sroa.09.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 6 uses
  %i.h = ptrtoint ptr %.sroa.09.0.i to i64
  %i.i = sub i64 %i.c, %i.h
  %.not.i.i = icmp sgt i64 %i.i, 0
  br i1 %.not.i.i, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.i, label %.thread.i

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.i:          ; preds = %.preheader
  %i.j = load i8, ptr %.sroa.09.0.i, align 1, !tbaa !27 ; 2 uses
  %.not.i34 = icmp eq i8 %i.j, 34
  br i1 %.not.i34, label %bb.b, label %7

7:                                                ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.i
  %8 = icmp eq ptr %.sroa.09.0.i, %1
  br i1 %8, label %bb.h, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit8.i

.thread.i:                                        ; preds = %.preheader
  %i.k = icmp eq ptr %.sroa.09.0.i, %1
  br i1 %i.k, label %bb.h, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit8.i

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit8.i:         ; preds = %.thread.i, %7
  %i.l = phi i8 [ 0, %.thread.i ], [ %i.j, %7 ]
  switch i8 %i.l, label %.preheader [
    i8 13, label %bb.h
    i8 10, label %bb.h
  ], !llvm.loop !1

bb.b:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pn.i, i64 2 ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %0 to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  store i32 %3, ptr %2, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.q, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.p, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !24
  %.sroa.speculated4.i.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.a) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.speculated4.i.i
  %i.s = sub i64 %i.p, %.sroa.speculated4.i.i
  call fastcc void @_ZL20unescapeQuotedStringB5cxx11N4llvm9StringRefE(ptr dead_on_unwind noalias writable align 8 %6, ptr %i.r, i64 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %i.x = load ptr, ptr %6, align 8, !tbaa !25     ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.z = icmp eq ptr %i.x, %i.y                   ; 2 uses
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  br i1 %i.z, label %bb.c, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b
  br i1 %i.z, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  switch i64 %i.ab, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !27
  store i8 %i.ad, ptr %i.u, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.x, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !26
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !27
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !25
  br label %_ZN4llvm7MIToken19setOwnedStringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.x, ptr %i.t, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = load <2 x i64>, ptr %i.aj, align 8, !tbaa !27
  store <2 x i64> %i.ak, ptr %i.ai, align 8, !tbaa !27
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.al = load i64, ptr %i.v, align 8, !tbaa !27
  store ptr %i.x, ptr %i.t, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !tbaa !27
  store <2 x i64> %i.ao, ptr %i.an, align 8, !tbaa !27
  %.not.i.i37 = icmp eq ptr %i.u, null
  br i1 %.not.i.i37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.u, ptr %6, align 8, !tbaa !25
  store i64 %i.al, ptr %i.y, align 8, !tbaa !27
  br label %_ZN4llvm7MIToken19setOwnedStringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.y, ptr %6, align 8, !tbaa !25
  br label %_ZN4llvm7MIToken19setOwnedStringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN4llvm7MIToken19setOwnedStringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f, %bb.g
  %i.ap = phi ptr [ %i.u, %bb.f ], [ %i.y, %bb.g ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !26
  store i8 0, ptr %i.ap, align 1, !tbaa !27
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.at = load i64, ptr %i.as, align 8, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ar, ptr %i.au, align 8, !tbaa !23
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.at, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !24
  %i.av = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZN4llvm7MIToken19setOwnedStringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !27
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit8.i, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit8.i, %.thread.i, %7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.bb, align 1, !tbaa !35
  store ptr @.str.117, ptr %5, align 8, !tbaa !27
  store i8 3, ptr %i.ba, align 8, !tbaa !36
  call void %.0.val(i64 noundef %.8.val, ptr noundef nonnull %.sroa.09.0.i, ptr noundef nonnull align 8 dereferenceable(34) %5) #16, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.bc = ptrtoint ptr %0 to i64
  %i.bd = sub i64 %i.c, %i.bc
  store i32 1, ptr %2, align 8, !tbaa !22
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.be, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bd, ptr %.sroa.2.0..sroa_idx.i42, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.critedge:                                        ; preds = %.critedge.preheader, %bb.j
  %.sroa.08.0 = phi ptr [ %i.bl, %bb.j ], [ %i.b, %.critedge.preheader ] ; 4 uses
  %i.bf = ptrtoint ptr %.sroa.08.0 to i64         ; 2 uses
  %i.bg = sub i64 %i.c, %i.bf
  %.not.i43 = icmp sgt i64 %i.bg, 0
  br i1 %.not.i43, label %bb.i, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit44

bb.i:                                             ; preds = %.critedge
  %i.bh = load i8, ptr %.sroa.08.0, align 1, !tbaa !27
  br label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit44

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit44:          ; preds = %.critedge, %bb.i
  %i.bi = phi i8 [ %i.bh, %bb.i ], [ 0, %.critedge ] ; 2 uses
  %i.bj = sext i8 %i.bi to i32                    ; 2 uses
  %i.bk = tail call i32 @isalpha(i32 noundef %i.bj) #15
  %.not.i45 = icmp ne i32 %i.bk, 0
  %isdigittmp.i = add nsw i32 %i.bj, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  %or.cond.i = select i1 %.not.i45, i1 true, i1 %isdigit.i
  br i1 %or.cond.i, label %bb.j, label %switch.early.test.i

switch.early.test.i:                              ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit44
  switch i8 %i.bi, label %_ZL16isIdentifierCharc.exit [
    i8 95, label %bb.j
    i8 46, label %bb.j
    i8 45, label %bb.j
    i8 36, label %bb.j
  ]

bb.j:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit44
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 1
  br label %.critedge, !llvm.loop !73

_ZL16isIdentifierCharc.exit:                      ; preds = %switch.early.test.i
  %i.bm = ptrtoint ptr %0 to i64
  %i.bn = sub i64 %i.bf, %i.bm                    ; 3 uses
  store i32 %3, ptr %2, align 8, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.bo, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bn, ptr %.sroa.2.0..sroa_idx.i48, align 8, !tbaa !24
  %.sroa.speculated4.i.i51 = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.a) ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.speculated4.i.i51
  %i.bq = sub nuw i64 %i.bn, %.sroa.speculated4.i.i51
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !23
  %.sroa.2.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.bq, ptr %.sroa.2.0..sroa_idx.i54, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm7MIToken19setOwnedStringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %_ZL16isIdentifierCharc.exit, %bb.h
  %.sroa.010.0 = phi ptr [ %.sroa.08.0, %_ZL16isIdentifierCharc.exit ], [ %0, %bb.h ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.m, %_ZN4llvm7MIToken19setOwnedStringValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.010.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %1, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL20unescapeQuotedStringB5cxx11N4llvm9StringRefE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %1, i64 %2) unnamed_addr #3 {
bb.a:
  %i.a = add i64 %2, -2
  %i.b = icmp ne i64 %2, 0
  %.sroa.speculated4.i = zext i1 %i.b to i64      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.speculated4.i ; 2 uses
  %i.d = sub i64 %2, %.sroa.speculated4.i
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.a) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.speculated.i ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.g, align 8, !tbaa !26
  store i8 0, ptr %i.f, align 8, !tbaa !27
  %i.h = ptrtoint ptr %i.e to i64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.speculated.i) #16
  %i.i = icmp samesign eq i64 %.sroa.speculated.i, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %.sroa.040.045 = phi ptr [ %i.bw, %bb.j ], [ %i.c, %bb.a ] ; 7 uses
  %i.j = ptrtoint ptr %.sroa.040.045 to i64
  %i.k = sub i64 %i.h, %i.j                       ; 3 uses
  %.not.i = icmp sgt i64 %i.k, 0
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit:            ; preds = %.lr.ph
  %i.l = load i8, ptr %.sroa.040.045, align 1, !tbaa !27 ; 2 uses
  %i.m = icmp eq i8 %i.l, 92
  br i1 %i.m, label %bb.b, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread

bb.b:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit
  %.not.i20.not = icmp eq i64 %i.k, 1
  br i1 %.not.i20.not, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit23.thread, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit21

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit21:          ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.040.045, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !27    ; 2 uses
  %i.p = icmp eq i8 %i.o, 92
  br i1 %i.p, label %bb.c, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit23

bb.c:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit21
  %i.q = load i64, ptr %i.g, align 8, !tbaa !26   ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.f
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.c
  %i.u = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.u)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.v = load i64, ptr %i.f, align 8, !tbaa !27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.w = phi i64 [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.q, i64 noundef 0, ptr noundef null, i64 noundef 1) #16
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.d
  %i.y = phi ptr [ %.pre.i.i, %bb.d ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store i8 92, ptr %i.z, align 1, !tbaa !27
  br label %bb.j, !llvm.loop !74

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit23:          ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit21
  %i.aa = sext i8 %i.o to i32
  %i.ab = tail call i32 @isxdigit(i32 noundef %i.aa) #15
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread, label %bb.e

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit23.thread:   ; preds = %bb.b
  %i.ac = tail call i32 @isxdigit(i32 noundef 0) #15
  %.not49 = icmp eq i32 %i.ac, 0
  br i1 %.not49, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit25.thread

bb.e:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit23
  %.not.i24 = icmp samesign ugt i64 %i.k, 2       ; 2 uses
  br i1 %.not.i24, label %bb.f, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit25

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.040.045, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !27
  %i.af = sext i8 %i.ae to i32
  br label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit25

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit25:          ; preds = %bb.e, %bb.f
  %i.ag = phi i32 [ %i.af, %bb.f ], [ 0, %bb.e ]
  %i.ah = tail call i32 @isxdigit(i32 noundef %i.ag) #15
  %.not2 = icmp eq i32 %i.ah, 0
  br i1 %.not2, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit27

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit25.thread:   ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit23.thread
  %i.ai = tail call i32 @isxdigit(i32 noundef 0) #15
  %.not253 = icmp eq i32 %i.ai, 0
  br i1 %.not253, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit.thread, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit29

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit27:          ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit25
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.040.045, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !27
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !77
  %i.ao = trunc i16 %i.an to i8
  %i.ap = shl i8 %i.ao, 4                         ; 2 uses
  br i1 %.not.i24, label %bb.g, label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit29

bb.g:                                             ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit27
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.040.045, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !27
  %i.as = zext i8 %i.ar to i64
  br label %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit29

_ZNK12_GLOBAL__N_16Cursor4peekEi.exit29:          ; preds = %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit25.thread, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit27, %bb.g
  %i.at = phi i8 [ %i.ap, %bb.g ], [ %i.ap, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit27 ], [ -16, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit25.thread ]
  %i.au = phi i64 [ %i.as, %bb.g ], [ 0, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit27 ], [ 0, %_ZNK12_GLOBAL__N_16Cursor4peekEi.exit25.thread ]
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.au
end_hunk_1
