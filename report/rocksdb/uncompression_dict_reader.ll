Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/uncompression_dict_reader?download=true
inline.NumInlined: 110
inline.NumDeleted: 92
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.rocksdb::Status" = type { i8, i8, i8, i8, i8, i8, %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.rocksdb::CachableEntry" = type <{ ptr, ptr, ptr, i8, [7 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN7rocksdb16DecompressorDictD2Ev = comdat any

@.str = private unnamed_addr constant [82 x i8] c"[%s:72] Encountered error while reading data from compression dictionary block %s\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"/opt-bench/work/rocksdb/rocksdb/table/block_based/uncompression_dict_reader.cc\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb23UncompressionDictReader6CreateEPKNS_15BlockBasedTableERKNS_11ReadOptionsEPNS_18FilePrefetchBufferEbbbPNS_23BlockCacheLookupContextEPSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef %7, ptr nofree noundef captures(none) %8) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.rocksdb::CachableEntry", align 16 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %9, i8 0, i64 25, i1 false)
  %.not = xor i1 %5, true
  %or.cond = and i1 %4, %.not
  br i1 %or.cond, label %_ZN7rocksdb6StatusD2Ev.exit26, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7rocksdb23UncompressionDictReader27ReadUncompressionDictionaryEPKNS_15BlockBasedTableEPNS_18FilePrefetchBufferERKNS_11ReadOptionsEbPNS_10GetContextEPNS_23BlockCacheLookupContextEPNS_13CachableEntryINS_16DecompressorDictEEE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(192) %2, i1 noundef zeroext %4, ptr noundef null, ptr noundef %7, ptr noundef nonnull %9)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = load i8, ptr %0, align 8, !tbaa !22
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.e, label %.critedge22

bb.d:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit26, %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.c
  %.not2 = xor i1 %4, true
  %or.cond4 = or i1 %6, %.not2
  br i1 %or.cond4, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !27  ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.e, null
  br i1 %.not.i.i23, label %bb.h, label %bb.g, !prof !28

bb.g:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull %i.e, i1 noundef zeroext false)
          to label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE5ResetEv.exit unwind label %bb.k ; 0 uses

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !32, !range !33, !noundef !34
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.i, label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE5ResetEv.exit

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %9, align 16, !tbaa !35    ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE5ResetEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN7rocksdb16DecompressorDictD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.o) #12
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 64) #13
  br label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE5ResetEv.exit

bb.k:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #14
  unreachable

_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE5ResetEv.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %9, i8 0, i64 25, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE5ResetEv.exit, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36   ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.t, null
  br i1 %.not.i.i24, label %_ZN7rocksdb6StatusD2Ev.exit26, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i25

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i25: ; preds = %.critedge
  call void @_ZdaPv(ptr noundef nonnull %i.t) #13
  br label %_ZN7rocksdb6StatusD2Ev.exit26

_ZN7rocksdb6StatusD2Ev.exit26:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i25, %.critedge, %bb.a
  %i.u = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #15
          to label %bb.l unwind label %bb.d       ; 5 uses

bb.l:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit26
  store ptr %1, ptr %i.u, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load <2 x ptr>, ptr %9, align 16, !tbaa !172
  store <2 x ptr> %i.w, ptr %i.v, align 8, !tbaa !172
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !27
  store ptr %i.z, ptr %i.x, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !32, !range !33, !noundef !34
  store i8 %i.ac, ptr %i.aa, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %9, i8 0, i64 25, i1 false)
  %i.ad = load ptr, ptr %8, align 8, !tbaa !173   ; 6 uses
  store ptr %i.u, ptr %8, align 8, !tbaa !173
  %.not.i.i27 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i27, label %_ZNSt10unique_ptrIN7rocksdb23UncompressionDictReaderESt14default_deleteIS1_EE5resetEPS1_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n, !prof !28

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 184
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull %i.ag, i1 noundef zeroext false)
          to label %_ZNKSt14default_deleteIN7rocksdb23UncompressionDictReaderEEclEPS1_.exit.i.i unwind label %bb.r ; 0 uses

bb.o:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !32, !range !33, !noundef !34
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.p, label %_ZNKSt14default_deleteIN7rocksdb23UncompressionDictReaderEEclEPS1_.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !35 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZNKSt14default_deleteIN7rocksdb23UncompressionDictReaderEEclEPS1_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN7rocksdb16DecompressorDictD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.aq) #12
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 64) #13
  br label %_ZNKSt14default_deleteIN7rocksdb23UncompressionDictReaderEEclEPS1_.exit.i.i

bb.r:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #14
  unreachable

_ZNKSt14default_deleteIN7rocksdb23UncompressionDictReaderEEclEPS1_.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 40) #13
  br label %_ZNSt10unique_ptrIN7rocksdb23UncompressionDictReaderESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN7rocksdb23UncompressionDictReaderESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.l, %_ZNKSt14default_deleteIN7rocksdb23UncompressionDictReaderEEclEPS1_.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.au, align 8, !tbaa !41, !alias.scope !174
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !174
  br label %.critedge22

.critedge22:                                      ; preds = %_ZNSt10unique_ptrIN7rocksdb23UncompressionDictReaderESt14default_deleteIS1_EE5resetEPS1_.exit, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !27 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i28, label %bb.t, label %bb.s, !prof !28

bb.s:                                             ; preds = %.critedge22
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !29 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 184
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(80) %i.ay, ptr noundef nonnull %i.aw, i1 noundef zeroext false)
          to label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev.exit unwind label %bb.w ; 0 uses

bb.t:                                             ; preds = %.critedge22
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !32, !range !33, !noundef !34
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.u, label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.bg = load ptr, ptr %9, align 16, !tbaa !35   ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN7rocksdb16DecompressorDictD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.bg) #12
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 64) #13
  br label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev.exit

bb.w:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #14
  unreachable

_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev.exit: ; preds = %bb.s, %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb23UncompressionDictReader27ReadUncompressionDictionaryEPKNS_15BlockBasedTableEPNS_18FilePrefetchBufferERKNS_11ReadOptionsEbPNS_10GetContextEPNS_23BlockCacheLookupContextEPNS_13CachableEntryINS_16DecompressorDictEEE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(192) %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 528
  tail call void @_ZNK7rocksdb15BlockBasedTable13RetrieveBlockINS_16DecompressorDictEEENSt9enable_ifIXooeqsrT_15kCacheEntryRoleLNS_14CacheEntryRoleE13ELb1EENS_6StatusEE4typeEPNS_18FilePrefetchBufferERKNS_11ReadOptionsERKNS_11BlockHandleENS_10UnownedPtrINS_12DecompressorEEEPNS_13CachableEntryIS4_EEPNS_10GetContextEPNS_23BlockCacheLookupContextEbbbb(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(192) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr null, ptr noundef %7, ptr noundef %5, ptr noundef %6, i1 noundef zeroext false, i1 noundef zeroext %4, i1 noundef zeroext false, i1 noundef zeroext true)
  %i.d = load i8, ptr %0, align 8, !tbaa !22
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !175, !nonnull !34, !align !176
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 592
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %8, align 8, !tbaa !165
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 2, ptr noundef %i.h, ptr noundef nonnull @.str, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1, i64 32), ptr noundef %i.i)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %8, align 8, !tbaa !165    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !166
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.f:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %8, align 8, !tbaa !165    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.f
  %i.t = load i64, ptr %i.r, align 8, !tbaa !166
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.e
  %.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.p, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

bb.g:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  call void @_ZdaPv(ptr noundef nonnull %i.w) #13
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb13CachableEntryINS_16DecompressorDictEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull %i.b, i1 noundef zeroext false)
          to label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE15ReleaseResourceEb.exit unwind label %bb.f ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !32, !range !33, !noundef !34
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE15ReleaseResourceEb.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE15ReleaseResourceEb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN7rocksdb16DecompressorDictD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.l) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 64) #13
  br label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE15ReleaseResourceEb.exit

bb.f:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #14
  unreachable

_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE15ReleaseResourceEb.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

declare void @_ZNK7rocksdb15BlockBasedTable13RetrieveBlockINS_16DecompressorDictEEENSt9enable_ifIXooeqsrT_15kCacheEntryRoleLNS_14CacheEntryRoleE13ELb1EENS_6StatusEE4typeEPNS_18FilePrefetchBufferERKNS_11ReadOptionsERKNS_11BlockHandleENS_10UnownedPtrINS_12DecompressorEEEPNS_13CachableEntryIS4_EEPNS_10GetContextEPNS_23BlockCacheLookupContextEbbbb(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(16), ptr, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb23UncompressionDictReader32GetOrReadUncompressionDictionaryEPNS_18FilePrefetchBufferERKNS_11ReadOptionsEPNS_10GetContextEPNS_23BlockCacheLookupContextEPNS_13CachableEntryINS_16DecompressorDictEEE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(192) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ne ptr %i.e, null
  %or.cond.i.not13 = select i1 %i.c, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp ne ptr %i.h, null
  %or.cond5.i.not10 = select i1 %or.cond.i.not13, i1 true, i1 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i8, ptr %i.j, align 8, !range !33
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.not = select i1 %or.cond5.i.not10, i1 true, i1 %i.l
  br i1 %or.cond.not, label %_ZNK7rocksdb13CachableEntryINS_16DecompressorDictEE7IsEmptyEv.exit.thread, label %bb.f

_ZNK7rocksdb13CachableEntryINS_16DecompressorDictEE7IsEmptyEv.exit.thread: ; preds = %bb.a
  %i.m = load ptr, ptr %6, align 8, !tbaa !35     ; 4 uses
  %i.n = icmp ne ptr %i.m, %i.b
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = icmp ne ptr %i.p, null
  %or.cond.not16.i = select i1 %i.n, i1 true, i1 %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp ne ptr %i.s, null                   ; 2 uses
  %or.cond7.not.i = select i1 %or.cond.not16.i, i1 true, i1 %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = load i8, ptr %i.u, align 8, !range !33
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  %i.x = select i1 %or.cond7.not.i, i1 true, i1 %i.w, !prof !225
  br i1 %i.x, label %.critedge.i, label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE15SetUnownedValueEPS1_.exit, !prof !225

.critedge.i:                                      ; preds = %_ZNK7rocksdb13CachableEntryINS_16DecompressorDictEE7IsEmptyEv.exit.thread
  br i1 %i.t, label %bb.b, label %bb.c, !prof !226

bb.b:                                             ; preds = %.critedge.i
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull %i.s, i1 noundef zeroext false)
          to label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE5ResetEv.exit.i unwind label %bb.e ; 0 uses

bb.c:                                             ; preds = %.critedge.i
  %i.ac = icmp ne ptr %i.m, null
  %or.cond12.not.i = and i1 %i.ac, %i.w
  br i1 %or.cond12.not.i, label %bb.d, label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE5ResetEv.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7rocksdb16DecompressorDictD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.m) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 64) #13
  br label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE5ResetEv.exit.i

bb.e:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #14
  unreachable

_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE5ResetEv.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.o, i8 0, i64 17, i1 false)
  store ptr %i.b, ptr %6, align 8, !tbaa !35
  br label %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE15SetUnownedValueEPS1_.exit

_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE15SetUnownedValueEPS1_.exit: ; preds = %_ZNK7rocksdb13CachableEntryINS_16DecompressorDictEE7IsEmptyEv.exit.thread, %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE5ResetEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.af, align 8, !tbaa !41, !alias.scope !227
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !227
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !167, !range !33, !noundef !34
  %i.al = trunc nuw i8 %i.ak to i1
  tail call void @_ZN7rocksdb23UncompressionDictReader27ReadUncompressionDictionaryEPKNS_15BlockBasedTableEPNS_18FilePrefetchBufferERKNS_11ReadOptionsEbPNS_10GetContextEPNS_23BlockCacheLookupContextEPNS_13CachableEntryINS_16DecompressorDictEEE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef %i.ag, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(192) %3, i1 noundef zeroext %i.al, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN7rocksdb13CachableEntryINS_16DecompressorDictEE15SetUnownedValueEPS1_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7rocksdb23UncompressionDictReader23cache_dictionary_blocksEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !167, !range !33, !noundef !34
  %i.f = trunc nuw i8 %i.e to i1
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK7rocksdb23UncompressionDictReader22ApproximateMemoryUsageEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !32, !range !33, !noundef !34
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !243
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.i = tail call i64 @malloc_usable_size(ptr noundef nonnull %0) #12
  %i.j = add i64 %i.i, %i.h
  ret i64 %i.j
}

; Function Attrs: nounwind
declare i64 @malloc_usable_size(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb16DecompressorDictD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !246  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7rocksdb12DecompressorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb12DecompressorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb12DecompressorEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #12, !inline_history !244
  br label %_ZNSt10unique_ptrIN7rocksdb12DecompressorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb12DecompressorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN7rocksdb12DecompressorEEclEPS1_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36   ; 3 uses
  %.not.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb12DecompressorESt14default_deleteIS1_EED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !247  ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull %i.g)
          to label %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEED2Ev.exit unwind label %bb.e, !inline_history !245

bb.d:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #13
  br label %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #14
  unreachable

_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN7rocksdb12DecompressorESt14default_deleteIS1_EED2Ev.exit, %bb.c, %bb.d
  %i.o = load ptr, ptr %0, align 8, !tbaa !165    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEED2Ev.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !166
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nobuiltin nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { noinline noreturn nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 4}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTSN7rocksdb6Status4CodeE", !5, i64 0}
!10 = !{!"_ZTSN7rocksdb6Status7SubCodeE", !5, i64 0}
!11 = !{!"_ZTSN7rocksdb6Status8SeverityE", !5, i64 0}
!12 = !{!"bool", !5, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSSt10_Head_baseILm0EPKcLb0EE", !14, i64 0}
!16 = !{!"_ZTSSt11_Tuple_implILm0EJPKcSt14default_deleteIA_S0_EEE", !15, i64 0}
!17 = !{!"_ZTSSt5tupleIJPKcSt14default_deleteIA_S0_EEE", !16, i64 0}
!18 = !{!"_ZTSSt15__uniq_ptr_implIKcSt14default_deleteIA_S0_EE", !17, i64 0}
!19 = !{!"_ZTSSt15__uniq_ptr_dataIKcSt14default_deleteIA_S0_ELb1ELb1EE", !18, i64 0}
!20 = !{!"_ZTSSt10unique_ptrIA_KcSt14default_deleteIS1_EE", !19, i64 0}
!21 = !{!"_ZTSN7rocksdb6StatusE", !9, i64 0, !10, i64 1, !11, i64 2, !12, i64 3, !12, i64 4, !5, i64 5, !20, i64 8}
!22 = !{!21, !9, i64 0}
!23 = !{!"p1 _ZTSN7rocksdb16DecompressorDictE", !13, i64 0}
!24 = !{!"p1 _ZTSN7rocksdb5CacheE", !13, i64 0}
!25 = !{!"p1 _ZTSN7rocksdb5Cache6HandleE", !13, i64 0}
!26 = !{!"_ZTSN7rocksdb13CachableEntryINS_16DecompressorDictEEE", !23, i64 0, !24, i64 8, !25, i64 16, !12, i64 24}
!27 = !{!26, !25, i64 16}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = !{!26, !24, i64 8}
!30 = !{!"vtable pointer", !4, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!26, !12, i64 24}
!33 = !{i8 0, i8 2}
!34 = !{}
!35 = !{!26, !23, i64 0}
!36 = !{!14, !14, i64 0}
!37 = !{!"p1 _ZTSN7rocksdb15BlockBasedTableE", !13, i64 0}
!38 = !{!"_ZTSN7rocksdb23UncompressionDictReaderE", !37, i64 0, !26, i64 8}
!39 = !{!38, !37, i64 0}
!40 = !{!"p1 _ZTSN7rocksdb23UncompressionDictReaderE", !13, i64 0}
!41 = !{!15, !14, i64 0}
!42 = !{!"_ZTSN7rocksdb11TableReaderE"}
!43 = !{!"_ZTSN7rocksdb18SameFileBlobReaderE"}
!44 = !{!"p1 _ZTSN7rocksdb15BlockBasedTable3RepE", !13, i64 0}
!45 = !{!"p1 _ZTSN7rocksdb16BlockCacheTracerE", !13, i64 0}
end_hunk_0
