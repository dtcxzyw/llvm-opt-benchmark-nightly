Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/sqlite3_utils?download=true
inline.NumInlined: 156
inline.NumDeleted: 99
begin_hunk_0
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$__clang_call_terminate = comdat any

$_ZNSt10unique_ptrIN5osgeo4proj10SQLite3VFSESt14default_deleteIS2_EED2Ev = comdat any

@_ZTVN5osgeo4proj14pj_sqlite3_vfsE = hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5osgeo4proj14pj_sqlite3_vfsE, ptr @_ZN5osgeo4proj14pj_sqlite3_vfsD2Ev, ptr @_ZN5osgeo4proj14pj_sqlite3_vfsD0Ev] }, align 8
@_ZTIN5osgeo4proj14pj_sqlite3_vfsE = hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5osgeo4proj14pj_sqlite3_vfsE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5osgeo4proj14pj_sqlite3_vfsE = hidden constant [30 x i8] c"N5osgeo4proj14pj_sqlite3_vfsE\00", align 1
@_ZGVZN5osgeo4proj12_GLOBAL__N_119InstallSqliteLogger12GetSingletonEvE19installSqliteLogger = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"PROJ_LOG_SQLITE3\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"SQLite3 message: (code %d) %s\0A\00", align 1
@_ZTVN5osgeo4proj12_GLOBAL__N_120pj_sqlite3_customvfsE = internal constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5osgeo4proj12_GLOBAL__N_120pj_sqlite3_customvfsE, ptr @_ZN5osgeo4proj12_GLOBAL__N_120pj_sqlite3_customvfsD2Ev, ptr @_ZN5osgeo4proj12_GLOBAL__N_120pj_sqlite3_customvfsD0Ev] }, align 8
@_ZTIN5osgeo4proj12_GLOBAL__N_120pj_sqlite3_customvfsE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5osgeo4proj12_GLOBAL__N_120pj_sqlite3_customvfsE, ptr @_ZTIN5osgeo4proj14pj_sqlite3_vfsE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5osgeo4proj12_GLOBAL__N_120pj_sqlite3_customvfsE = internal constant [50 x i8] c"N5osgeo4proj12_GLOBAL__N_120pj_sqlite3_customvfsE\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"-journal\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"-wal\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8

@_ZN5osgeo4proj14pj_sqlite3_vfsD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN5osgeo4proj14pj_sqlite3_vfsD2Ev
@_ZN5osgeo4proj10SQLite3VFSC1EPNS0_14pj_sqlite3_vfsE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN5osgeo4proj10SQLite3VFSC2EPNS0_14pj_sqlite3_vfsE
@_ZN5osgeo4proj10SQLite3VFSD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN5osgeo4proj10SQLite3VFSD2Ev
@_ZN5osgeo4proj15SQLiteStatementC1EP12sqlite3_stmt = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN5osgeo4proj15SQLiteStatementC2EP12sqlite3_stmt

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5osgeo4proj14pj_sqlite3_vfsD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(208) dereferenceable(208) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5osgeo4proj14pj_sqlite3_vfsE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !16
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5osgeo4proj14pj_sqlite3_vfsD0Ev(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5osgeo4proj14pj_sqlite3_vfsE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN5osgeo4proj14pj_sqlite3_vfsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !16
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22, !inline_history !17
  br label %_ZN5osgeo4proj14pj_sqlite3_vfsD2Ev.exit

_ZN5osgeo4proj14pj_sqlite3_vfsD2Ev.exit:          ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #22
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5osgeo4proj10SQLite3VFSC2EPNS0_14pj_sqlite3_vfsE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5osgeo4proj10SQLite3VFSD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = invoke i32 @sqlite3_vfs_unregister(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(208) %i.d) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void

bb.f:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #24
  unreachable
}

declare i32 @sqlite3_vfs_unregister(ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK5osgeo4proj10SQLite3VFS4nameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj10SQLite3VFS6createEbbb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = zext i1 %1 to i8
  %i.b = zext i1 %2 to i8
  %i.c = load atomic i8, ptr @_ZGVZN5osgeo4proj12_GLOBAL__N_119InstallSqliteLogger12GetSingletonEvE19installSqliteLogger acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5osgeo4proj12_GLOBAL__N_119InstallSqliteLogger12GetSingletonEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5osgeo4proj12_GLOBAL__N_119InstallSqliteLogger12GetSingletonEvE19installSqliteLogger) #23
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5osgeo4proj12_GLOBAL__N_119InstallSqliteLogger12GetSingletonEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZN5osgeo4proj12_GLOBAL__N_119InstallSqliteLoggerC2Ev()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5osgeo4proj12_GLOBAL__N_119InstallSqliteLogger12GetSingletonEvE19installSqliteLogger) #23
  br label %_ZN5osgeo4proj12_GLOBAL__N_119InstallSqliteLogger12GetSingletonEv.exit

common.resume:                                    ; preds = %bb.af, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %.pn.pn, %bb.af ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5osgeo4proj12_GLOBAL__N_119InstallSqliteLogger12GetSingletonEvE19installSqliteLogger) #23
  br label %common.resume

_ZN5osgeo4proj12_GLOBAL__N_119InstallSqliteLogger12GetSingletonEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.g = tail call i32 @sqlite3_initialize()      ; 0 uses
  %i.h = tail call ptr @sqlite3_vfs_find(ptr noundef null) ; 9 uses
  %i.i = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #25 ; 19 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 176 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.i, i8 0, i64 208, i1 false)
  store ptr %i.m, ptr %i.l, align 16, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 184 ; 3 uses
  store i8 0, ptr %i.m, align 16, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5osgeo4proj12_GLOBAL__N_120pj_sqlite3_customvfsE, i64 16), ptr %i.i, align 16, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.o = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25 ; 6 uses
  store ptr %i.i, ptr %i.o, align 8, !tbaa !18
  store ptr %i.o, ptr %4, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %_ZN5osgeo4proj12_GLOBAL__N_119InstallSqliteLogger12GetSingletonEv.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.i)
          to label %_ZNSolsEPKv.exit unwind label %bb.t ; 0 uses

_ZNSolsEPKv.exit:                                 ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.q, ptr %6, align 8, !tbaa !22, !alias.scope !31
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !32, !alias.scope !31
  store i8 0, ptr %i.q, align 8, !tbaa !16, !alias.scope !31
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33, !noalias !31 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !31 ; 2 uses
  %i.w = icmp ugt ptr %i.t, %i.v
  %.08.i.i.i = select i1 %i.w, ptr %i.t, ptr %i.v ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNSolsEPKv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !37, !noalias !31 ; 2 uses
  %i.z = ptrtoint ptr %.08.i.i.i to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.y, i64 noundef %i.ab)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %6, align 8, !tbaa !10, !alias.scope !31 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.q
  br i1 %i.af, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !16, !alias.scope !31
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #22
  br label %.body

bb.i:                                             ; preds = %_ZNSolsEPKv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.aj = load ptr, ptr %i.l, align 16, !tbaa !10 ; 6 uses
  %i.ak = icmp eq ptr %i.aj, %i.m
  %i.al = load ptr, ptr %6, align 8, !tbaa !10    ; 5 uses
  %i.am = icmp eq ptr %i.al, %i.q                 ; 2 uses
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.am, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.am, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.an = load i64, ptr %i.r, align 8, !tbaa !32  ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  switch i64 %i.an, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ap = load i8, ptr %i.al, align 1, !tbaa !16
  store i8 %i.ap, ptr %i.aj, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.al, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !32  ; 2 uses
  store i64 %i.aq, ptr %i.n, align 8, !tbaa !32
  %i.ar = load ptr, ptr %i.l, align 16, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  store i8 0, ptr %i.as, align 1, !tbaa !16
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.al, ptr %i.l, align 16, !tbaa !10
  %i.at = load <2 x i64>, ptr %i.r, align 8, !tbaa !16
  store <2 x i64> %i.at, ptr %i.n, align 8, !tbaa !16
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.au = load i64, ptr %i.m, align 16, !tbaa !16
  store ptr %i.al, ptr %i.l, align 16, !tbaa !10
  %i.av = load <2 x i64>, ptr %i.r, align 8, !tbaa !16
  store <2 x i64> %i.av, ptr %i.n, align 8, !tbaa !16
  %.not.i52 = icmp eq ptr %i.aj, null
  br i1 %.not.i52, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.aj, ptr %6, align 8, !tbaa !10
  store i64 %i.au, ptr %i.q, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.q, ptr %6, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.aw = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.aj, %bb.m ], [ %i.q, %bb.n ]
  store i64 0, ptr %i.r, align 8, !tbaa !32
  store i8 0, ptr %i.aw, align 1, !tbaa !16
  %i.ax = load ptr, ptr %6, align 8, !tbaa !10    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.q
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.az = load i64, ptr %i.q, align 8, !tbaa !16
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  store i32 1, ptr %i.j, align 8, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.bc = load <2 x i32>, ptr %i.bb, align 4, !tbaa !42
  %i.bd = add <2 x i32> %i.bc, <i32 8, i32 0>
  store <2 x i32> %i.bd, ptr %i.k, align 4, !tbaa !42
  %i.be = load ptr, ptr %i.l, align 16, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.be, ptr %i.bf, align 16, !tbaa !43
  %i.bg = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %bb.o unwind label %bb.u       ; 4 uses

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 9
  store i8 %i.a, ptr %i.bh, align 8, !tbaa !44
  store i8 %i.b, ptr %i.bi, align 1, !tbaa !47
  store ptr %i.h, ptr %i.bg, align 8, !tbaa !48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !49
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr @_ZN5osgeo4projL13VFSCustomOpenEP11sqlite3_vfsPKcP12sqlite3_fileiPi, ptr %i.bk, align 16, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !51
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !52
  br i1 %3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !53
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bq = phi ptr [ %i.bp, %bb.p ], [ @_ZN5osgeo4projL15VFSCustomAccessEP11sqlite3_vfsPKciPi, %bb.o ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr %i.bq, ptr %i.br, align 16, !tbaa !54
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.bu = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !55
  store <2 x ptr> %i.bu, ptr %i.bt, align 8, !tbaa !55
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.bx = load <2 x ptr>, ptr %i.bv, align 8, !tbaa !55
  store <2 x ptr> %i.bx, ptr %i.bw, align 8, !tbaa !55
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.ca = load <2 x ptr>, ptr %i.by, align 8, !tbaa !55
  store <2 x ptr> %i.ca, ptr %i.bz, align 8, !tbaa !55
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.cd = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !55
  store <2 x ptr> %i.cd, ptr %i.cc, align 8, !tbaa !55
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.cg = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !55
  store <2 x ptr> %i.cg, ptr %i.cf, align 8, !tbaa !55
  %i.ch = invoke i32 @sqlite3_vfs_register(ptr noundef nonnull %i.j, i32 noundef 0)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.y, label %bb.v

bb.s:                                             ; preds = %_ZN5osgeo4proj12_GLOBAL__N_119InstallSqliteLogger12GetSingletonEv.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.t:                                             ; preds = %bb.f
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ae

bb.u:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.v:                                             ; preds = %bb.r
  %i.cm = load ptr, ptr %i.o, align 8, !tbaa !18  ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(208) %i.cm) #23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store ptr null, ptr %i.o, align 8, !tbaa !18
  br label %bb.y

bb.y:                                             ; preds = %bb.r, %bb.x
  %storemerge = phi ptr [ null, %bb.x ], [ %i.o, %bb.r ]
  %i.cr = phi ptr [ %i.o, %bb.x ], [ null, %bb.r ] ; 4 uses
  store ptr %storemerge, ptr %0, align 8, !tbaa !23
  %i.cs = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cs, ptr %5, align 8, !tbaa !8
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cu = getelementptr i8, ptr %i.cs, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds i8, ptr %5, i64 %i.cv
  store ptr %i.ct, ptr %i.cw, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cx, align 8, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !10 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.y
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !16
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #22
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cx, align 8, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.de) #23
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.df) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i53 = icmp eq ptr %i.cr, null
  br i1 %.not.i53, label %_ZNSt10unique_ptrIN5osgeo4proj10SQLite3VFSESt14default_deleteIS2_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.dg = load ptr, ptr %i.cr, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i, label %_ZNKSt14default_deleteIN5osgeo4proj10SQLite3VFSEEclEPS2_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = invoke i32 @sqlite3_vfs_unregister(ptr noundef nonnull %i.dh)
          to label %bb.ab unwind label %bb.ad     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.dj = load ptr, ptr %i.cr, align 8, !tbaa !18 ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %_ZNKSt14default_deleteIN5osgeo4proj10SQLite3VFSEEclEPS2_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(208) %i.dj) #23, !inline_history !56
  br label %_ZNKSt14default_deleteIN5osgeo4proj10SQLite3VFSEEclEPS2_.exit.i

bb.ad:                                            ; preds = %bb.aa
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #24
  unreachable

_ZNKSt14default_deleteIN5osgeo4proj10SQLite3VFSEEclEPS2_.exit.i: ; preds = %bb.ac, %bb.ab, %bb.z
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 8) #22
  br label %_ZNSt10unique_ptrIN5osgeo4proj10SQLite3VFSESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj10SQLite3VFSESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt14default_deleteIN5osgeo4proj10SQLite3VFSEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.ae:                                            ; preds = %bb.u, %.body, %bb.t
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.u ], [ %i.ad, %.body ], [ %i.ck, %bb.t ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #23
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ae ], [ %i.cj, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZNSt10unique_ptrIN5osgeo4proj10SQLite3VFSESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume
}

declare i32 @sqlite3_initialize() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

declare ptr @sqlite3_vfs_find(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #7 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN5osgeo4projL13VFSCustomOpenEP11sqlite3_vfsPKcP12sqlite3_fileiPi(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.f = tail call noundef i32 %i.e(ptr noundef %i.c, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 2 uses
  %i.k = tail call noalias dereferenceable_or_null(152) ptr @malloc(i64 noundef 152) #26 ; 7 uses
  %.not.not = icmp eq ptr %i.k, null
  br i1 %.not.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.l = tail call noundef i32 %i.j(ptr noundef nonnull %2) ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.k, ptr noundef nonnull align 8 dereferenceable(152) %i.h, i64 152, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_ZN5osgeo4projL8VFSCloseEP12sqlite3_file, ptr %i.m, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !44, !range !64, !noundef !65
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_0
