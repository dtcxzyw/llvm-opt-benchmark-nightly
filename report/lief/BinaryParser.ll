Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/BinaryParser?download=true
inline.NumInlined: 15251
inline.NumDeleted: 5384
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN6spdlog6logger4log_IJRKtEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_:bb.a
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %3, ptr %7, align 8, !tbaa !260
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !118
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.bf, align 8, !tbaa !434
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %8, ptr %i.bg, align 8, !tbaa !431
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 2, ptr %i.bh, align 8, !tbaa !577
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %9, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !253
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr null, ptr %i.bi, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(56) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %bb.g, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !252
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !343
  %i.bn = load ptr, ptr %8, align 8, !tbaa !428
  %i.bo = load i64, ptr %i.j, align 8, !tbaa !429
  %i.bp = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #26
  store ptr %i.bk, ptr %10, align 8, !tbaa !260
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.bm, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !118
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %2, ptr %i.bq, align 8, !tbaa !583
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !118
  %i.bs = load i8, ptr @_ZGVZN6spdlog7details2os9thread_idEvE3tid, align 8
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.i, label %._crit_edge.i.i.i, !prof !584

._crit_edge.i.i.i:                                ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %.pre.i.i.i = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN6spdlog7details2os9thread_idEvE3tid)
  %.pre.i.i = load i64, ptr %.pre.i.i.i, align 8, !tbaa !118
  br label %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit

bb.i:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %i.bu = call noundef i64 (i64, ...) @syscall(i64 noundef 186) #26 ; 2 uses
  %i.bv = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN6spdlog7details2os9thread_idEvE3tid)
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !118
  %i.bw = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN6spdlog7details2os9thread_idEvE3tid) ; 0 uses
  store i8 1, ptr @_ZGVZN6spdlog7details2os9thread_idEvE3tid, align 8
  br label %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit

_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit: ; preds = %._crit_edge.i.i.i, %bb.i
  %i.bx = phi i64 [ %.pre.i.i, %._crit_edge.i.i.i ], [ %i.bu, %bb.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !585
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 80
  store ptr %i.bn, ptr %i.cb, align 8, !tbaa !260
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 88
  store i64 %i.bo, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !118
  br i1 %i.c, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit
  %i.cc = load ptr, ptr %0, align 8, !tbaa !117
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(96) %10) #26, !inline_history !46
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit
  br i1 %i.g, label %bb.l, label %_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit

bb.l:                                             ; preds = %bb.k
  call void @_ZN6spdlog7details10backtracer9push_backERKNS0_7log_msgE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %10)
  br label %_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit

_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.cf = load ptr, ptr %8, align 8, !tbaa !428   ; 2 uses
  %.not.i.i = icmp eq ptr %i.cf, %i.k
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit
  call void @free(ptr noundef %i.cf) #26
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser18parse_data_in_codeINS0_7details7MachO64EEENS_10ok_error_tERNS0_10DataInCodeERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.LIEF::MachO::details::data_in_code_entry", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.LIEF::result.3065", align 8 ; 6 uses
  %6 = alloca %"class.LIEF::MachO::DataCodeEntry", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.c = load i32, ptr %i.b, align 4, !tbaa !779
  %i.d = lshr i32 %i.c, 3                         ; 2 uses
  %i.e = zext nneg i32 %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !118
  %.not10.not = icmp eq i32 %i.d, 0
  br i1 %.not10.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.l = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.m = load i64, ptr %i.f, align 8, !tbaa !331  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 0, ptr %4, align 8
  %i.n = load ptr, ptr %2, align 8, !tbaa !117
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call i64 %i.p(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %4, i64 noundef %i.m, i64 noundef 8, i64 noundef 0) #26, !inline_history !99
  %i.r = and i64 %i.q, 4294967296
  %.not.i.i = icmp eq i64 %i.r, 0
  store i64 %i.m, ptr %i.f, align 8, !tbaa !331
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4peekINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load i8, ptr %i.g, align 8, !tbaa !332, !range !256, !noundef !257
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN4LIEF11swap_endianINS_5MachO7details18data_in_code_entryEEEvPT_(ptr noundef nonnull %4) #26
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !331
  br label %bb.e

_ZNK4LIEF12BinaryStream4peekINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNK4LIEF12BinaryStream4readINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = phi i64 [ %i.m, %bb.c ], [ %.pre.i, %bb.d ]
  %i.v = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.fca.0.insert.i6.i = insertvalue { i64, i8 } poison, i64 %i.v, 0
  %.fca.1.insert.i7.i = insertvalue { i64, i8 } %.fca.0.insert.i6.i, i8 1, 1
  %i.w = add i64 %i.u, 8
  store i64 %i.w, ptr %i.f, align 8, !tbaa !331
  br label %_ZNK4LIEF12BinaryStream4readINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit: ; preds = %_ZNK4LIEF12BinaryStream4peekINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit.i, %bb.e
  %.fca.1.insert.i8.i = phi { i64, i8 } [ { i64 1, i8 0 }, %_ZNK4LIEF12BinaryStream4peekINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit.i ], [ %.fca.1.insert.i7.i, %bb.e ] ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %.fca.1.insert.i8.i, 0
  %.fca.1.extract = extractvalue { i64, i8 } %.fca.1.insert.i8.i, 1 ; 2 uses
  store i64 %.fca.0.extract, ptr %5, align 8
  store i8 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.x = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.x, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNK4LIEF12BinaryStream4readINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit
  call void @_ZN4LIEF5MachO13DataCodeEntryC1ERKNS0_7details18data_in_code_entryE(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(8) %5) #26
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !929  ; 5 uses
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !930
  %.not.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(20) %i.y, ptr noundef nonnull align 8 dereferenceable(20) %6) #26
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF5MachO13DataCodeEntryE, i64 16), ptr %i.y, align 8, !tbaa !117
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aa, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i64 12, i1 false)
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !929
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !929
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @_ZNSt6vectorIN4LIEF5MachO13DataCodeEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr %i.y, ptr noundef nonnull align 8 dereferenceable(20) %6)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ad = add nuw nsw i64 %i.l, 1                 ; 3 uses
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !118
  %.not = icmp samesign ult i64 %i.ad, %i.e
  br i1 %.not, label %bb.b, label %._crit_edge, !llvm.loop !2233

bb.j:                                             ; preds = %_ZNK4LIEF12BinaryStream4readINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit
  %i.ae = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.af, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.386, i64 33, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.a, %bb.j
  %.sroa.2.2 = phi i64 [ 1, %bb.j ], [ 4294967297, %bb.a ], [ 4294967297, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.sroa.2.2
}

declare void @_ZN4LIEF5MachO13DataCodeEntryC1ERKNS0_7details18data_in_code_entryE(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #3

declare void @_ZN4LIEF11swap_endianINS_5MachO7details18data_in_code_entryEEEvPT_(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4LIEF5MachO13DataCodeEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !929  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2237   ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4LIEF5MachO13DataCodeEntryESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorIN4LIEF5MachO13DataCodeEntryESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  tail call void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(20) %i.q, ptr noundef nonnull align 8 dereferenceable(20) %2) #26
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF5MachO13DataCodeEntryE, i64 16), ptr %i.q, align 8, !tbaa !117
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr noundef nonnull align 8 dereferenceable(12) %i.s, i64 12, i1 false)
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO13DataCodeEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4LIEF5MachO13DataCodeEntryESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4LIEF5MachO13DataCodeEntryESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4LIEF5MachO13DataCodeEntryESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(20) %.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.0810.i.i.i.i.i) #26
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF5MachO13DataCodeEntryE, i64 16), ptr %.011.i.i.i.i.i, align 8, !tbaa !117
  %i.t = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull align 8 dereferenceable(12) %i.u, i64 12, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO13DataCodeEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2234

_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO13DataCodeEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4LIEF5MachO13DataCodeEntryESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4LIEF5MachO13DataCodeEntryESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO13DataCodeEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO13DataCodeEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i19
  %.011.i.i.i.i.i20 = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i19 ], [ %i.x, %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO13DataCodeEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 4 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i19 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO13DataCodeEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  tail call void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(20) %.011.i.i.i.i.i20, ptr noundef nonnull align 8 dereferenceable(20) %.0810.i.i.i.i.i21) #26
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF5MachO13DataCodeEntryE, i64 16), ptr %.011.i.i.i.i.i20, align 8, !tbaa !117
  %i.y = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull align 8 dereferenceable(12) %i.z, i64 12, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 24 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i.i22, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO13DataCodeEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19, !llvm.loop !2234

_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO13DataCodeEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit24: ; preds = %.lr.ph.i.i.i.i.i19, %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO13DataCodeEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i23 = phi ptr [ %i.x, %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO13DataCodeEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ab, %.lr.ph.i.i.i.i.i19 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4LIEF5MachO13DataCodeEntryEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO13DataCodeEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO13DataCodeEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit24 ] ; 3 uses
  %i.ac = load ptr, ptr %.05.i.i, align 8, !tbaa !117
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %.05.i.i) #26, !inline_history !2235
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4LIEF5MachO13DataCodeEntryEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !2236

_ZSt8_DestroyIPN4LIEF5MachO13DataCodeEntryEEvT_S4_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4LIEF5MachO13DataCodeEntryES3_SaIS2_EET0_T_S6_S5_RT1_.exit24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseIN4LIEF5MachO13DataCodeEntryESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4LIEF5MachO13DataCodeEntryEEvT_S4_.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !930
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aj) #29
  br label %_ZNSt12_Vector_baseIN4LIEF5MachO13DataCodeEntryESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4LIEF5MachO13DataCodeEntryESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN4LIEF5MachO13DataCodeEntryEEvT_S4_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !2237
  store ptr %.0.lcssa.i.i.i.i.i23, ptr %i.a, align 8, !tbaa !929
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !930
  ret void
}

declare noundef ptr @_ZNK4LIEF5MachO6Binary15two_level_hintsEv(ptr noundef nonnull align 8 dereferenceable(552)) local_unnamed_addr #3

declare noundef ptr @_ZNK4LIEF5MachO6Binary14code_signatureEv(ptr noundef nonnull align 8 dereferenceable(552)) local_unnamed_addr #3

declare noundef ptr @_ZNK4LIEF5MachO6Binary18code_signature_dirEv(ptr noundef nonnull align 8 dereferenceable(552)) local_unnamed_addr #3

declare noundef ptr @_ZNK4LIEF5MachO6Binary15linker_opt_hintEv(ptr noundef nonnull align 8 dereferenceable(552)) local_unnamed_addr #3

declare noundef ptr @_ZNK4LIEF5MachO6Binary9atom_infoEv(ptr noundef nonnull align 8 dereferenceable(552)) local_unnamed_addr #3

declare noundef ptr @_ZNK4LIEF5MachO6Binary17function_variantsEv(ptr noundef nonnull align 8 dereferenceable(552)) local_unnamed_addr #3

declare hidden void @_ZN4LIEF5MachO16FunctionVariants13parse_payloadERNS_10SpanStreamE(ptr dead_on_unwind writable sret(%"class.std::vector.1500") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef ptr @_ZNK4LIEF5MachO6Binary23function_variant_fixupsEv(ptr noundef nonnull align 8 dereferenceable(552)) local_unnamed_addr #3

declare hidden void @_ZN4LIEF5MachO21FunctionVariantFixups13parse_payloadERNS_10SpanStreamE(ptr dead_on_unwind writable sret(%"class.std::vector.1505") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare hidden i64 @_ZN4LIEF5MachO17LazyLoadDylibInfo13parse_payloadERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare hidden i64 @_ZN4LIEF5MachO17LazyLoadDylibInfo11walk_fixupsEmRNS0_14SegmentCommandE(ptr noundef nonnull align 8 dereferenceable(176), i64 noundef, ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #3

declare noundef ptr @_ZNK4LIEF5MachO6Binary28segment_from_virtual_addressEm(ptr noundef nonnull align 8 dereferenceable(552), i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF5MachO19IndirectBindingInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #29
  ret void
}

declare void @_ZNK4LIEF5MachO11BindingInfo6acceptERNS_7VisitorE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 1) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4LIEF5MachO11BindingInfo7addressEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !201
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF5MachO11BindingInfo7addressEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %1, ptr %i.a, align 8, !tbaa !201
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4LIEF5MachO19IndirectBindingInfo4typeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i32 4
}

declare void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser12parse_headerINS0_7details7MachO32EEENS_10ok_error_tEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.LIEF::MachO::details::mach_header", align 4 ; 7 uses
  %5 = alloca %"class.LIEF::result.3114", align 4 ; 5 uses
  %6 = alloca %"class.LIEF::MachO::Header", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO12BinaryParser10next_chainINS0_7details7MachO32EEENS_6resultImEERmmRKNS3_30dyld_chained_starts_in_segmentE:bb.a
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call i64 %i.dy(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull %8, i64 noundef %2, i64 noundef 4, i64 noundef 0) #26, !inline_history !97
  %i.ea = and i64 %i.dz, 4294967296
  %.not.i.i103 = icmp eq i64 %i.ea, 0
  %i.eb = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !331
  br i1 %.not.i.i103, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ec = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ed, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.373, i64 34, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.ee = lshr i32 %i.eb, 26                      ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eg = zext nneg i32 %i.ee to i64
  %i.eh = mul nuw nsw i64 %.0.i, %i.eg            ; 2 uses
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !118
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = shl i64 %i.ej, 32
  %i.el = ashr exact i64 %i.ek, 32
  %i.em = load i64, ptr %1, align 8, !tbaa !118
  %i.en = add i64 %i.el, %i.em
  store i64 %i.en, ptr %1, align 8, !tbaa !118
  br label %.loopexit

bb.aa:                                            ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !254 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 3 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !331
  store i64 %2, ptr %i.eq, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i64 0, ptr %6, align 8
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !117
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 96
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = call i64 %i.eu(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull %6, i64 noundef %2, i64 noundef 8, i64 noundef 0) #26, !inline_history !98
  %i.ew = and i64 %i.ev, 4294967296
  %.not.not.i.i105 = icmp eq i64 %i.ew, 0
  %i.ex = load i64, ptr %6, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  store i64 %i.er, ptr %i.eq, align 8, !tbaa !331
  br i1 %.not.not.i.i105, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ey = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ez, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.373, i64 34, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  %i.fa = and i64 %i.ex, 9221120237041090560
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fc = lshr i64 %i.ex, 51
  %i.fd = and i64 %i.fc, 4095
  %i.fe = mul nuw nsw i64 %i.fd, %.0.i            ; 2 uses
  %i.ff = load i64, ptr %i.a, align 8, !tbaa !118
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = shl i64 %i.fg, 32
  %i.fi = ashr exact i64 %i.fh, 32
  %i.fj = load i64, ptr %1, align 8, !tbaa !118
  %i.fk = add i64 %i.fi, %i.fj
  store i64 %i.fk, ptr %1, align 8, !tbaa !118
  br label %.loopexit

bb.ae:                                            ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  %i.fl = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRKtEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.fm, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.376, i64 31, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.ac, %bb.ab, %bb.y, %bb.x, %bb.u, %bb.t, %.thread198, %.thread194, %bb.n, %bb.m, %bb.j, %bb.i, %bb.f, %bb.e, %bb.ad, %bb.z, %bb.v, %.critedge, %bb.k, %bb.g, %bb.ae
  %.sroa.0145.9 = phi i64 [ 4, %bb.ae ], [ 1, %bb.ab ], [ %i.w, %bb.g ], [ 1, %bb.e ], [ 0, %bb.f ], [ %i.aq, %bb.k ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.n ], [ 0, %.thread198 ], [ %i.cv, %.critedge ], [ 0, %.thread194 ], [ 1, %bb.m ], [ 0, %bb.ac ], [ %i.dl, %bb.v ], [ 1, %bb.t ], [ 0, %bb.u ], [ %i.eh, %bb.z ], [ 1, %bb.x ], [ 0, %bb.y ], [ %i.fe, %bb.ad ], [ 0, %bb.r ]
  %.sroa.23.sroa.0.3 = phi i64 [ 0, %bb.ae ], [ 0, %bb.ab ], [ %.sroa.23.0.extract.shift, %bb.g ], [ 0, %bb.e ], [ 0, %bb.f ], [ %.sroa.23.0.extract.shift151, %bb.k ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.n ], [ 0, %.thread198 ], [ %.sroa.23.0.extract.shift153, %.critedge ], [ 0, %.thread194 ], [ 0, %bb.m ], [ 0, %bb.ac ], [ 0, %bb.v ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.z ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.ad ], [ 0, %bb.r ]
  %.sroa.23.sroa.16.9 = phi i8 [ 0, %bb.ae ], [ 0, %bb.ab ], [ 1, %bb.g ], [ 0, %bb.e ], [ 1, %bb.f ], [ 1, %bb.k ], [ 0, %bb.i ], [ 1, %bb.j ], [ 1, %bb.n ], [ 1, %.thread198 ], [ 1, %.critedge ], [ 1, %.thread194 ], [ 0, %bb.m ], [ 1, %bb.ac ], [ 1, %bb.v ], [ 0, %bb.t ], [ 1, %bb.u ], [ 1, %bb.z ], [ 0, %bb.x ], [ 1, %bb.y ], [ 1, %bb.ad ], [ 1, %bb.r ]
  %.sroa.0145.0.insert.ext = and i64 %.sroa.0145.9, 4294967295
  %.sroa.0145.0.insert.insert = or disjoint i64 %.sroa.23.sroa.0.3, %.sroa.0145.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0145.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.23.sroa.16.9, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser18parse_data_in_codeINS0_7details7MachO32EEENS_10ok_error_tERNS0_10DataInCodeERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.LIEF::MachO::details::data_in_code_entry", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.LIEF::result.3065", align 8 ; 6 uses
  %6 = alloca %"class.LIEF::MachO::DataCodeEntry", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.c = load i32, ptr %i.b, align 4, !tbaa !779
  %i.d = lshr i32 %i.c, 3                         ; 2 uses
  %i.e = zext nneg i32 %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !118
  %.not10.not = icmp eq i32 %i.d, 0
  br i1 %.not10.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.l = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.m = load i64, ptr %i.f, align 8, !tbaa !331  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 0, ptr %4, align 8
  %i.n = load ptr, ptr %2, align 8, !tbaa !117
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call i64 %i.p(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %4, i64 noundef %i.m, i64 noundef 8, i64 noundef 0) #26, !inline_history !99
  %i.r = and i64 %i.q, 4294967296
  %.not.i.i = icmp eq i64 %i.r, 0
  store i64 %i.m, ptr %i.f, align 8, !tbaa !331
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4peekINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load i8, ptr %i.g, align 8, !tbaa !332, !range !256, !noundef !257
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN4LIEF11swap_endianINS_5MachO7details18data_in_code_entryEEEvPT_(ptr noundef nonnull %4) #26
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !331
  br label %bb.e

_ZNK4LIEF12BinaryStream4peekINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNK4LIEF12BinaryStream4readINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = phi i64 [ %i.m, %bb.c ], [ %.pre.i, %bb.d ]
  %i.v = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.fca.0.insert.i6.i = insertvalue { i64, i8 } poison, i64 %i.v, 0
  %.fca.1.insert.i7.i = insertvalue { i64, i8 } %.fca.0.insert.i6.i, i8 1, 1
  %i.w = add i64 %i.u, 8
  store i64 %i.w, ptr %i.f, align 8, !tbaa !331
  br label %_ZNK4LIEF12BinaryStream4readINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit: ; preds = %_ZNK4LIEF12BinaryStream4peekINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit.i, %bb.e
  %.fca.1.insert.i8.i = phi { i64, i8 } [ { i64 1, i8 0 }, %_ZNK4LIEF12BinaryStream4peekINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit.i ], [ %.fca.1.insert.i7.i, %bb.e ] ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %.fca.1.insert.i8.i, 0
  %.fca.1.extract = extractvalue { i64, i8 } %.fca.1.insert.i8.i, 1 ; 2 uses
  store i64 %.fca.0.extract, ptr %5, align 8
  store i8 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %i.x = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.x, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNK4LIEF12BinaryStream4readINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit
  call void @_ZN4LIEF5MachO13DataCodeEntryC1ERKNS0_7details18data_in_code_entryE(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(8) %5) #26
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !929  ; 5 uses
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !930
  %.not.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(20) %i.y, ptr noundef nonnull align 8 dereferenceable(20) %6) #26
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF5MachO13DataCodeEntryE, i64 16), ptr %i.y, align 8, !tbaa !117
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aa, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i64 12, i1 false)
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !929
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !929
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @_ZNSt6vectorIN4LIEF5MachO13DataCodeEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr %i.y, ptr noundef nonnull align 8 dereferenceable(20) %6)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ad = add nuw nsw i64 %i.l, 1                 ; 3 uses
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !118
  %.not = icmp samesign ult i64 %i.ad, %i.e
  br i1 %.not, label %bb.b, label %._crit_edge, !llvm.loop !2789

bb.j:                                             ; preds = %_ZNK4LIEF12BinaryStream4readINS_5MachO7details18data_in_code_entryEEENS_6resultIT_EEv.exit
  %i.ae = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.af, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull @.str.386, i64 33, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.a, %bb.j
  %.sroa.2.2 = phi i64 [ 1, %bb.j ], [ 4294967297, %bb.a ], [ 4294967297, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.sroa.2.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEESaISD_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !252
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !343
  %i.e = tail call noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.b, i64 noundef %i.d, i64 noundef 3339675911) #26 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !243  ; 3 uses
  %i.h = urem i64 %i.e, %i.g                      ; 4 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !242
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !928  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %.loopexit30, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !248  ; 3 uses
  %i.m = load i64, ptr %i.c, align 8
  %.fr22.i.i = freeze i64 %i.m                    ; 3 uses
  %i.n = icmp eq i64 %.fr22.i.i, 0
  %i.o = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !932 ; 2 uses
  br i1 %i.n, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.b, %bb.d
  %i.p = phi i64 [ %i.w, %bb.d ], [ %.pre26.i.i, %bb.b ]
  %.0.us.i.i = phi ptr [ %i.u, %bb.d ], [ %i.l, %bb.b ] ; 3 uses
  %i.q = icmp eq i64 %i.e, %i.p
  br i1 %i.q, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i

bb.c:                                             ; preds = %.split.us.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !343
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.c, %.split.us.i.i
  %i.u = load ptr, ptr %.0.us.i.i, align 8, !tbaa !248 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.us.i.i, label %.loopexit30, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !932  ; 2 uses
  %i.x = urem i64 %i.w, %i.g
  %.not19.us.i.i = icmp eq i64 %i.x, %i.h
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.loopexit30, !llvm.loop !100

.split.i.i:                                       ; preds = %bb.b, %bb.f
  %i.y = phi i64 [ %i.ai, %bb.f ], [ %.pre26.i.i, %bb.b ]
  %.0.i.i = phi ptr [ %i.ag, %bb.f ], [ %i.l, %bb.b ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.aa = icmp eq i64 %i.e, %i.y
  br i1 %i.aa, label %bb.e, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

bb.e:                                             ; preds = %.split.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !343
  %i.ad = icmp eq i64 %.fr22.i.i, %i.ac
  br i1 %i.ad, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i: ; preds = %bb.e
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !252
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.o, ptr %i.ae, i64 %.fr22.i.i)
  %i.af = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.af, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, %bb.e, %.split.i.i
  %i.ag = load ptr, ptr %.0.i.i, align 8, !tbaa !248 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ag, null
  br i1 %.not18.i.i, label %.loopexit30, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !932 ; 2 uses
  %i.aj = urem i64 %i.ai, %i.g
  %.not19.i.i = icmp eq i64 %i.aj, %i.h
  br i1 %.not19.i.i, label %.split.i.i, label %.loopexit30, !llvm.loop !100

.loopexit30:                                      ; preds = %bb.f, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i, %bb.d, %bb.a
  %i.ak = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27 ; 12 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !248
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 3 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !342
  %i.an = load ptr, ptr %1, align 8, !tbaa !252   ; 2 uses
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !343 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !118
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %bb.g, label %._crit_edge.i.i.i.i.i.i

bb.g:                                             ; preds = %.loopexit30
  %i.aq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !252
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !118
  store i64 %i.ar, ptr %i.am, align 8, !tbaa !253
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.g, %.loopexit30
  %i.as = phi ptr [ %i.aq, %bb.g ], [ %i.am, %.loopexit30 ] ; 2 uses
  switch i64 %i.ao, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESV_IJEEEEEPNSE_16_Hashtable_allocISaINSE_10_Hash_nodeISC_Lb1EEEEEEDpOT_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.at = load i8, ptr %i.an, align 1, !tbaa !253
  store i8 %i.at, ptr %i.as, align 1, !tbaa !253
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESV_IJEEEEEPNSE_16_Hashtable_allocISaINSE_10_Hash_nodeISC_Lb1EEEEEEDpOT_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.an, i64 %i.ao, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESV_IJEEEEEPNSE_16_Hashtable_allocISaINSE_10_Hash_nodeISC_Lb1EEEEEEDpOT_.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESV_IJEEEEEPNSE_16_Hashtable_allocISaINSE_10_Hash_nodeISC_Lb1EEEEEEDpOT_.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.h, %bb.i
  %i.au = load i64, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %i.au, ptr %i.av, align 8, !tbaa !343
  %i.aw = load ptr, ptr %i.al, align 8, !tbaa !252
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr null, ptr %i.ay, align 8, !tbaa !389
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load i64, ptr %i.f, align 8, !tbaa !243
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !383
  %i.bd = call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 noundef %i.ba, i64 noundef %i.bc, i64 noundef 1) #26 ; 2 uses
  %i.be = extractvalue { i8, i64 } %i.bd, 0
  %i.bf = trunc i8 %i.be to i1
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESV_IJEEEEEPNSE_16_Hashtable_allocISaINSE_10_Hash_nodeISC_Lb1EEEEEEDpOT_.exit
  %i.bg = extractvalue { i8, i64 } %i.bd, 1
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.bg)
  %i.bh = load i64, ptr %i.f, align 8, !tbaa !243
  %i.bi = urem i64 %i.e, %i.bh
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESV_IJEEEEEPNSE_16_Hashtable_allocISaINSE_10_Hash_nodeISC_Lb1EEEEEEDpOT_.exit
  %.0.i19 = phi i64 [ %i.bi, %bb.j ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESV_IJEEEEEPNSE_16_Hashtable_allocISaINSE_10_Hash_nodeISC_Lb1EEEEEEDpOT_.exit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i64 %i.e, ptr %i.bj, align 8, !tbaa !932
  %i.bk = load ptr, ptr %0, align 8, !tbaa !242   ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.0.i19 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !928 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i20, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !248
  store ptr %i.bn, ptr %i.ak, align 8, !tbaa !248
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !928
  store ptr %i.ak, ptr %i.bo, align 8, !tbaa !248
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !247 ; 3 uses
  store ptr %i.bq, ptr %i.ak, align 8, !tbaa !248
  store ptr %i.ak, ptr %i.bp, align 8, !tbaa !247
  %.not11.i.i = icmp eq ptr %i.bq, null
  br i1 %.not11.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = load i64, ptr %i.f, align 8, !tbaa !243
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !932
  %i.bu = urem i64 %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bu
  store ptr %i.ak, ptr %i.bv, align 8, !tbaa !928
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !928
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

end_hunk_1
