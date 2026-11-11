Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MatchTable?download=true
inline.NumInlined: 441
inline.NumDeleted: 198
begin_hunk_0_@_ZNK4llvm2gi16MatchTableRecord4emitERNS_11raw_ostreamEbRKNS0_10MatchTableE:bb.a
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !15 ; 2 uses
  %i.hc = icmp eq ptr %i.gz, %i.hb
  br i1 %i.hc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.25, i64 noundef 1) #12 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit53

bb.aa:                                            ; preds = %bb.y
  store i8 44, ptr %i.hb, align 1
  %i.he = load ptr, ptr %i.ha, align 8, !tbaa !15
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 1
  store ptr %i.hf, ptr %i.ha, align 8, !tbaa !15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit53

_ZN4llvm11raw_ostreamlsEPKc.exit53:               ; preds = %bb.z, %bb.aa
  br i1 %2, label %_ZN4llvm11raw_ostreamlsEPKc.exit56, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit53
  %i.hg = load i32, ptr %i.a, align 4, !tbaa !31
  %i.hh = and i32 %i.hg, 4
  %.not23 = icmp eq i32 %i.hh, 0
  br i1 %.not23, label %bb.ac, label %_ZN4llvm11raw_ostreamlsEPKc.exit56

bb.ac:                                            ; preds = %bb.ab
  %i.hi = load ptr, ptr %i.gy, align 8, !tbaa !14
  %i.hj = load ptr, ptr %i.ha, align 8, !tbaa !15 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.24, i64 noundef 1) #12 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit56

bb.ae:                                            ; preds = %bb.ac
  store i8 32, ptr %i.hj, align 1
  %i.hm = load ptr, ptr %i.ha, align 8, !tbaa !15
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  store ptr %i.hn, ptr %i.ha, align 8, !tbaa !15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit56

_ZN4llvm11raw_ostreamlsEPKc.exit56:               ; preds = %bb.ae, %bb.ad, %_ZN4llvm11raw_ostreamlsEPKc.exit53, %bb.ab, %bb.x
  %i.ho = load i32, ptr %i.a, align 4, !tbaa !31
  %i.hp = and i32 %i.ho, 4
  %.not24 = icmp eq i32 %i.hp, 0
  br i1 %.not24, label %_ZN4llvm11raw_ostreamlsEPKc.exit59, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit56
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !14
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !15 ; 2 uses
  %i.hu = icmp eq ptr %i.hr, %i.ht
  br i1 %i.hu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.26, i64 noundef 1) #12 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit59

bb.ah:                                            ; preds = %bb.af
  store i8 10, ptr %i.ht, align 1
  %i.hw = load ptr, ptr %i.hs, align 8, !tbaa !15
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  store ptr %i.hx, ptr %i.hs, align 8, !tbaa !15
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit59

_ZN4llvm11raw_ostreamlsEPKc.exit59:               ; preds = %bb.ah, %bb.ag, %_ZN4llvm11raw_ostreamlsEPKc.exit56
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2gi16MatchTableRecordD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !21
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm2gi10MatchTable7CommentENS_9StringRefE(ptr dead_on_unwind noalias writable sret(%"struct.llvm::gi::MatchTableRecord") align 8 initializes((0, 4)) %0, ptr nofree readonly captures(address_is_null) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store i32 -1, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !17
  %i.d = icmp eq ptr %1, null
  %i.e = icmp ne i64 %2, 0
  %or.cond.i.i.i.i = and i1 %i.d, %i.e
  br i1 %or.cond.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.42) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %2, ptr %i.a, align 8, !tbaa !22
  %i.f = icmp ugt i64 %2, 15
  br i1 %i.f, label %bb.d, label %._crit_edge.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #12 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !27
  %i.h = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.h, ptr %i.c, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %i.g, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  switch i64 %2, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN4llvm2gi16MatchTableRecordC2ESt8optionalIjENS_9StringRefEjj.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !21
  store i8 %i.j, ptr %i.i, align 1, !tbaa !21
  br label %_ZN4llvm2gi16MatchTableRecordC2ESt8optionalIjENS_9StringRefEjj.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN4llvm2gi16MatchTableRecordC2ESt8optionalIjENS_9StringRefEjj.exit

_ZN4llvm2gi16MatchTableRecordC2ESt8optionalIjENS_9StringRefEjj.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.e, %bb.f
  %i.k = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.l, align 8, !tbaa !20
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.o, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1, ptr %i.p, align 4, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm2gi10MatchTable6OpcodeENS_9StringRefEi(ptr dead_on_unwind noalias writable sret(%"struct.llvm::gi::MatchTableRecord") align 8 initializes((0, 4)) %0, ptr nofree readonly captures(address_is_null) %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store i32 -1, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !17
  %i.d = icmp eq ptr %1, null
  %i.e = icmp ne i64 %2, 0
  %or.cond.i.i.i.i = and i1 %i.d, %i.e
  br i1 %or.cond.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.42) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %2, ptr %i.a, align 8, !tbaa !22
  %i.f = icmp ugt i64 %2, 15
  br i1 %i.f, label %bb.d, label %._crit_edge.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #12 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !27
  %i.h = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.h, ptr %i.c, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %i.g, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  switch i64 %2, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN4llvm2gi16MatchTableRecordC2ESt8optionalIjENS_9StringRefEjj.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.j = load i8, ptr %1, align 1, !tbaa !21
  store i8 %i.j, ptr %i.i, align 1, !tbaa !21
  br label %_ZN4llvm2gi16MatchTableRecordC2ESt8optionalIjENS_9StringRefEjj.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN4llvm2gi16MatchTableRecordC2ESt8optionalIjENS_9StringRefEjj.exit

_ZN4llvm2gi16MatchTableRecordC2ESt8optionalIjENS_9StringRefEjj.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.e, %bb.f
  %4 = icmp slt i32 %3, 0
  %.not = icmp eq i32 %3, 0
  %5 = select i1 %.not, i32 2, i32 34
  %6 = select i1 %4, i32 66, i32 %5
  %i.k = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.l, align 8, !tbaa !20
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.o, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %6, ptr %i.p, align 4, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm2gi10MatchTable10NamedValueEjNS_9StringRefE(ptr dead_on_unwind noalias writable sret(%"struct.llvm::gi::MatchTableRecord") align 8 initializes((0, 4)) %0, i32 noundef %1, ptr nofree readonly captures(address_is_null) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store i32 -1, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !17
  %i.d = icmp eq ptr %2, null
  %i.e = icmp ne i64 %3, 0
  %or.cond.i.i.i.i = and i1 %i.d, %i.e
  br i1 %or.cond.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.42) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %3, ptr %i.a, align 8, !tbaa !22
  %i.f = icmp ugt i64 %3, 15
  br i1 %i.f, label %bb.d, label %._crit_edge.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #12 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !27
  %i.h = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.h, ptr %i.c, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %i.g, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  switch i64 %3, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN4llvm2gi16MatchTableRecordC2ESt8optionalIjENS_9StringRefEjj.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.j = load i8, ptr %2, align 1, !tbaa !21
  store i8 %i.j, ptr %i.i, align 1, !tbaa !21
  br label %_ZN4llvm2gi16MatchTableRecordC2ESt8optionalIjENS_9StringRefEjj.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %2, i64 %3, i1 false)
  br label %_ZN4llvm2gi16MatchTableRecordC2ESt8optionalIjENS_9StringRefEjj.exit

_ZN4llvm2gi16MatchTableRecordC2ESt8optionalIjENS_9StringRefEjj.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.e, %bb.f
  %i.k = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.l, align 8, !tbaa !20
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.o, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 2, ptr %i.p, align 4, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm2gi10MatchTable10NamedValueEjNS_9StringRefES2_(ptr dead_on_unwind noalias writable sret(%"struct.llvm::gi::MatchTableRecord") align 8 initializes((0, 4)) %0, i32 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
_ZN4llvmplERKNS_5TwineES2_.exit:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 5, ptr %i.b, align 8, !tbaa !25, !alias.scope !186
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 3, ptr %i.c, align 1, !tbaa !26, !alias.scope !186
  store ptr %2, ptr %8, align 8, !tbaa !21, !alias.scope !186
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %3, ptr %i.d, align 8, !tbaa !21, !alias.scope !186
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.28, ptr %i.e, align 8, !tbaa !21, !alias.scope !186
  store ptr %8, ptr %7, align 8, !alias.scope !187
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %i.f, align 8, !alias.scope !187
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %5, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !21, !alias.scope !187
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 2, ptr %i.g, align 8, !tbaa !25, !alias.scope !187
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 5, ptr %i.h, align 1, !tbaa !26, !alias.scope !187
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(34) %7) #12
  %i.i = load ptr, ptr %6, align 8, !tbaa !27     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20   ; 5 uses
  store i32 -1, ptr %0, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !17
  %i.n = icmp eq ptr %i.i, null
  %i.o = icmp ne i64 %i.k, 0
  %or.cond.i.i.i.i = and i1 %i.n, %i.o
  br i1 %or.cond.i.i.i.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.42) #13
  unreachable

bb.b:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.k, ptr %i.a, align 8, !tbaa !22
  %i.p = icmp ugt i64 %i.k, 15
  br i1 %i.p, label %bb.c, label %._crit_edge.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #12 ; 2 uses
  store ptr %i.q, ptr %i.l, align 8, !tbaa !27
  %i.r = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.r, ptr %i.m, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c, %bb.b
  %i.s = phi ptr [ %i.q, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  switch i64 %i.k, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN4llvm2gi16MatchTableRecordC2ESt8optionalIjENS_9StringRefEjj.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.t = load i8, ptr %i.i, align 1, !tbaa !21
  store i8 %i.t, ptr %i.s, align 1, !tbaa !21
  br label %_ZN4llvm2gi16MatchTableRecordC2ESt8optionalIjENS_9StringRefEjj.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZN4llvm2gi16MatchTableRecordC2ESt8optionalIjENS_9StringRefEjj.exit

_ZN4llvm2gi16MatchTableRecordC2ESt8optionalIjENS_9StringRefEjj.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.d, %bb.e
  %i.u = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %i.v, align 8, !tbaa !20
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.y, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 2, ptr %i.z, align 4, !tbaa !31
  %i.aa = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm2gi16MatchTableRecordC2ESt8optionalIjENS_9StringRefEjj.exit
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !21
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm2gi16MatchTableRecordC2ESt8optionalIjENS_9StringRefEjj.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm2gi10MatchTable8IntValueEjl(ptr dead_on_unwind noalias writable sret(%"struct.llvm::gi::MatchTableRecord") align 8 initializes((0, 4)) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = icmp ult i32 %1, 8
  %i.c = shl nuw nsw i32 %1, 3
  %i.d = zext nneg i32 %i.c to i64
  %notmask = shl nsw i64 -1, %i.d
  %i.e = xor i64 %notmask, -1
  %i.f = select i1 %i.b, i64 %i.e, i64 -1
  %storemerge = and i64 %i.f, %2                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !17, !alias.scope !190
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.h, align 8, !tbaa !20, !alias.scope !190
  store i8 0, ptr %i.g, align 8, !tbaa !21, !alias.scope !190
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12, !noalias !190
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !37, !noalias !190
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.j, align 8, !tbaa !38, !noalias !190
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.k, align 4, !tbaa !39, !noalias !190
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false), !noalias !190
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %3, align 8, !tbaa !41, !noalias !190
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %4, ptr %i.m, align 8, !tbaa !43, !noalias !190
end_hunk_0
