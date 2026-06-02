inline.NumInlined: 13629
inline.NumDeleted: 7416
begin_hunk_0_@_ZNK6duckdb10unique_ptrINS_14CopyToFileInfoESt14default_deleteIS1_ELb1EEptEv:bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.66, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_14CopyToFileInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18PhysicalCopyToFile16ReturnStatisticsERNS_9DataChunkEmRNS_14CopyToFileInfoE(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(104) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::map.2497", align 8     ; 11 uses
  %5 = alloca %"class.std::map.2497", align 8     ; 10 uses
  %6 = alloca %"class.duckdb::vector.613", align 16 ; 14 uses
  %7 = alloca %"class.duckdb::vector.613", align 8 ; 14 uses
  %8 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %10 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %11 = alloca %"class.duckdb::vector.613", align 16 ; 9 uses
  %12 = alloca %"class.duckdb::vector.613", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %16 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %17 = alloca %"struct.duckdb::(anonymous namespace)::ColumnStatsMapData", align 16 ; 19 uses
  %18 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %19 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %20 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %21 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %22 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %23 = alloca %"class.duckdb::vector.613", align 16 ; 7 uses
  %24 = alloca %"class.duckdb::vector.613", align 16 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_26CopyFunctionFileStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.f, ptr %14, align 8, !tbaa !7
  %i.g = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 %i.i, ptr %i.c, align 8, !tbaa !98
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %14, align 8, !tbaa !15
  %i.l = load i64, ptr %i.c, align 8, !tbaa !98
  store i64 %i.l, ptr %i.f, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !14
  store i8 %i.n, ptr %i.m, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !11
  %i.q = load ptr, ptr %14, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull %14)
          to label %bb.d unwind label %bb.bl

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZN6duckdb9DataChunk8SetValueEmmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %13)
          to label %bb.e unwind label %bb.bm

bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #30
  %i.s = load ptr, ptr %14, align 8, !tbaa !15    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.f
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.s) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.u = load i64, ptr %i.e, align 8, !tbaa !656
  call void @_ZN6duckdb5Value7UBIGINTEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %15, i64 noundef %i.u)
  invoke void @_ZN6duckdb9DataChunk8SetValueEmmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 1, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %15)
          to label %bb.f unwind label %bb.bo

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !659
  call void @_ZN6duckdb5Value7UBIGINTEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %16, i64 noundef %i.w)
  invoke void @_ZN6duckdb9DataChunk8SetValueEmmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 2, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %16)
          to label %bb.g unwind label %bb.bp

bb.g:                                             ; preds = %bb.f
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @_ZN6duckdb9DataChunk8SetValueEmmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef 3, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.val = load ptr, ptr %i.y, align 8, !tbaa !422 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %17, i8 0, i64 48, i1 false), !alias.scope !660
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !660
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.z, align 8, !tbaa !639, !noalias !660
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !579, !noalias !660
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !371, !noalias !660
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !640, !noalias !660
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.ad, align 8, !tbaa !366, !noalias !660
  %.not29.i = icmp eq ptr %.val, null
  br i1 %.not29.i, label %._crit_edge38.i, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.h

._crit_edge33.i:                                  ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i
  %.pre42.i = load ptr, ptr %i.ab, align 8, !tbaa !371, !noalias !660 ; 2 uses
  %.not1634.i = icmp eq ptr %.pre42.i, %i.z
  br i1 %.not1634.i, label %._crit_edge38.i, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %._crit_edge33.i
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %17, i64 24
  br label %bb.au

bb.h:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i, %.lr.ph32.i
  %.sroa.013.030.i = phi ptr [ %.val, %.lr.ph32.i ], [ %i.fz, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.030.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !660
  store i32 0, ptr %i.ae, align 8, !tbaa !639, !noalias !660
  store ptr null, ptr %i.af, align 8, !tbaa !579, !noalias !660
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !371, !noalias !660
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !640, !noalias !660
  store i64 0, ptr %i.ai, align 8, !tbaa !366, !noalias !660
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.030.i, i64 56
  %.sroa.09.021.i = load ptr, ptr %i.ax, align 8, !tbaa !179, !noalias !660 ; 2 uses
  %.not1722.i = icmp eq ptr %.sroa.09.021.i, null
  br i1 %.not1722.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false), !noalias !660
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30, !noalias !660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !660
  br label %._crit_edge28.i

._crit_edge.i:                                    ; preds = %bb.u
  %.pre.i = load ptr, ptr %i.ag, align 8, !tbaa !371, !noalias !660 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false), !noalias !660
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30, !noalias !660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !660
  %.not1824.i = icmp eq ptr %.pre.i, %i.ae
  br i1 %.not1824.i, label %._crit_edge28.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.u
  %.sroa.09.023.i = phi ptr [ %.sroa.09.0.i, %bb.u ], [ %.sroa.09.021.i, %bb.h ] ; 4 uses
  %i.ay = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #33
          to label %.noexc73.i unwind label %bb.v, !noalias !660 ; 7 uses

.noexc73.i:                                       ; preds = %.lr.ph.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.09.023.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.09.023.i, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 9 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 5 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !7, !noalias !660
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !15, !noalias !660 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.09.023.i, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11, !noalias !660 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !660
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !98, !noalias !660
  %i.bg = icmp ugt i64 %i.bf, 15
  br i1 %i.bg, label %.noexc.i.i.i70, label %._crit_edge.i.i.i.i65

.noexc.i.i.i70:                                   ; preds = %.noexc73.i
  %i.bh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(96) %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i71 unwind label %bb.l, !noalias !660 ; 2 uses

.noexc.i71:                                       ; preds = %.noexc.i.i.i70
  store ptr %i.bh, ptr %i.bb, align 8, !tbaa !15, !noalias !660
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !98, !noalias !660
  store i64 %i.bi, ptr %i.bc, align 8, !tbaa !14, !noalias !660
  br label %._crit_edge.i.i.i.i65

._crit_edge.i.i.i.i65:                            ; preds = %.noexc.i71, %.noexc73.i
  %i.bj = phi ptr [ %i.bh, %.noexc.i71 ], [ %i.bc, %.noexc73.i ] ; 2 uses
  switch i64 %i.bf, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i66
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i65
  %i.bk = load i8, ptr %i.bd, align 1, !tbaa !14, !noalias !660
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !14, !noalias !660
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i66

bb.j:                                             ; preds = %._crit_edge.i.i.i.i65
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bd, i64 %i.bf, i1 false), !noalias !660
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i66: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i65
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !98, !noalias !660 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 4 uses
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !11, !noalias !660
  %i.bn = load ptr, ptr %i.bb, align 8, !tbaa !15, !noalias !660
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !14, !noalias !660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !660
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 64 ; 2 uses
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, ptr noundef nonnull align 8 dereferenceable(64) %i.ba)
          to label %.noexc74.i unwind label %bb.k, !noalias !660

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i66
  %i.bq = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.br = load ptr, ptr %i.bb, align 8, !tbaa !15, !noalias !660 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bc
  br i1 %i.bs, label %.body.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.br) #31, !noalias !660
  br label %.body.i68

bb.l:                                             ; preds = %.noexc.i.i.i70
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i68

.body.i68:                                        ; preds = %bb.k, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bt, %bb.l ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67 ], [ %i.bq, %bb.k ]
  %i.bu = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  %i.bv = call ptr @__cxa_begin_catch(ptr %i.bu) #30, !noalias !660 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.ay) #31, !noalias !660
  invoke void @__cxa_rethrow() #32
          to label %bb.o unwind label %bb.m, !noalias !660

bb.m:                                             ; preds = %.body.i68
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body75.i unwind label %bb.n, !noalias !660

bb.n:                                             ; preds = %bb.m
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #34, !noalias !660
  unreachable

bb.o:                                             ; preds = %.body.i68
  unreachable

.noexc74.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i66
  %.02931.i = load ptr, ptr %i.af, align 8, !tbaa !580, !noalias !660 ; 2 uses
  %.not32.i = icmp eq ptr %.02931.i, null
  br i1 %.not32.i, label %._crit_edge.thread.i64, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.noexc74.i
  %i.bz = load i64, ptr %i.bm, align 8, !tbaa !11, !noalias !660 ; 3 uses
  %i.ca = load ptr, ptr %i.bb, align 8, !noalias !660
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i60
  %.02933.i = phi ptr [ %.02931.i, %.lr.ph.i60 ], [ %.029.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02933.i, i64 40
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !11, !noalias !660 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.bz) ; 3 uses
  %i.cd = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.cd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %.02933.i, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !15, !noalias !660
  %i.cg = call i32 @memcmp(ptr noundef %i.ca, ptr noundef %i.cf, i64 noundef %.sroa.speculated.i.i.i.i) #30, !noalias !660 ; 2 uses
  %.not.i.i.i.i61 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i.i61, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.p
  %i.ch = sub i64 %i.bz, %i.cc
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ch, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.cg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.ci = icmp slt i32 %.0.i.i.i.i, 0             ; 2 uses
  %.in.v.i = select i1 %i.ci, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02933.i, i64 %.in.v.i
  %.029.i = load ptr, ptr %.in.i, align 8, !tbaa !580, !noalias !660 ; 2 uses
  %.not.i62 = icmp eq ptr %.029.i, null
  br i1 %.not.i62, label %._crit_edge.i63, label %bb.p, !llvm.loop !663

._crit_edge.i63:                                  ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  br i1 %i.ci, label %._crit_edge.thread.i64, label %bb.r

._crit_edge.thread.i64:                           ; preds = %._crit_edge.i63, %.noexc74.i
  %.028.lcssa39.i = phi ptr [ %.02933.i, %._crit_edge.i63 ], [ %i.ae, %.noexc74.i ] ; 4 uses
  %i.cj = load ptr, ptr %i.ag, align 8, !tbaa !371, !noalias !660
  %i.ck = icmp eq ptr %.028.lcssa39.i, %i.cj
  br i1 %i.ck, label %select.unfold, label %bb.q

bb.q:                                             ; preds = %._crit_edge.thread.i64
  %i.cl = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39.i) #35, !noalias !660 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !11, !noalias !660 ; 2 uses
  %.pre111 = load i64, ptr %i.bm, align 8, !tbaa !11, !noalias !660 ; 2 uses
  %.pre112 = call i64 @llvm.umin.i64(i64 %.pre111, i64 %.pre)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i63
  %.sroa.speculated.i.i.i5.i.pre-phi = phi i64 [ %.pre112, %bb.q ], [ %.sroa.speculated.i.i.i.i, %._crit_edge.i63 ] ; 2 uses
  %i.cm = phi i64 [ %.pre111, %bb.q ], [ %i.bz, %._crit_edge.i63 ]
  %i.cn = phi i64 [ %.pre, %bb.q ], [ %i.cc, %._crit_edge.i63 ]
  %.028.lcssa38.i = phi ptr [ %.028.lcssa39.i, %bb.q ], [ %.02933.i, %._crit_edge.i63 ]
  %.sroa.014.0.i = phi ptr [ %i.cl, %bb.q ], [ %.02933.i, %._crit_edge.i63 ]
  %i.co = icmp eq i64 %.sroa.speculated.i.i.i5.i.pre-phi, 0
  br i1 %i.co, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i: ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i, i64 32
  %i.cq = load ptr, ptr %i.bb, align 8, !tbaa !15, !noalias !660
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !15, !noalias !660
  %i.cs = call i32 @memcmp(ptr noundef %i.cr, ptr noundef %i.cq, i64 noundef %.sroa.speculated.i.i.i5.i.pre-phi) #30, !noalias !660 ; 2 uses
  %.not.i.i.i7.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i7.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i, %bb.r
  %i.ct = sub i64 %i.cn, %i.cm
  %spec.select7.i.i.i.i10.i = call i64 @llvm.smax.i64(i64 %i.ct, i64 -2147483648)
  %.08.i.i.i.i11.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10.i, i64 2147483647)
  %.0.i6.i.i.i12.i = trunc nsw i64 %.08.i.i.i.i11.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i
  %.0.i.i.i8.i = phi i32 [ %i.cs, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i ], [ %.0.i6.i.i.i12.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i ]
  %i.cu = icmp slt i32 %.0.i.i.i8.i, 0
  br i1 %i.cu, label %select.unfold, label %bb.t

select.unfold:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i, %._crit_edge.thread.i64
  %.sroa.4.0.i.ph = phi ptr [ %.028.lcssa39.i, %._crit_edge.thread.i64 ], [ %.028.lcssa38.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i ] ; 4 uses
  %i.cv = icmp eq ptr %.sroa.4.0.i.ph, %i.ae
  br i1 %i.cv, label %.thread.i.i, label %bb.s

bb.s:                                             ; preds = %select.unfold
  %i.cw = load i64, ptr %i.bm, align 8, !tbaa !11, !noalias !660 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 40
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !11, !noalias !660 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cy, i64 %i.cw) ; 2 uses
  %i.cz = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.cz, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.s
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !15, !noalias !660
  %i.dc = load ptr, ptr %i.bb, align 8, !tbaa !15, !noalias !660
  %i.dd = call i32 @memcmp(ptr noundef %i.dc, ptr noundef %i.db, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #30, !noalias !660 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.s
  %i.de = sub i64 %i.cw, %i.cy
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.de, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.df = icmp slt i32 %.0.i.i.i.i.i.i.i, 0
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %select.unfold
  %i.dg = phi i1 [ %i.df, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ true, %select.unfold ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dg, ptr noundef nonnull %i.ay, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #30, !noalias !660
  %i.dh = load i64, ptr %i.ai, align 8, !tbaa !366, !noalias !660
  %i.di = add i64 %i.dh, 1
  store i64 %i.di, ptr %i.ai, align 8, !tbaa !366, !noalias !660
  br label %bb.u

bb.t:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.bp) #30, !noalias !660
  %i.dj = load ptr, ptr %i.bb, align 8, !tbaa !15, !noalias !660 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bc
  br i1 %i.dk, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.dj) #31, !noalias !660
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ay) #31, !noalias !660
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i.i, %.thread.i.i
  %.sroa.09.0.i = load ptr, ptr %.sroa.09.023.i, align 8, !tbaa !179, !noalias !660 ; 2 uses
  %.not17.i = icmp eq ptr %.sroa.09.0.i, null
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i

bb.v:                                             ; preds = %.lr.ph.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body75.i

._crit_edge28.i:                                  ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJS1_EEEvDpOT_.exit.i, %._crit_edge.i, %._crit_edge.thread.i
  %i.dm = phi ptr [ null, %._crit_edge.thread.i ], [ null, %._crit_edge.i ], [ %i.fd, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJS1_EEEvDpOT_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !660
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !660
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef zeroext 25)
          to label %bb.af unwind label %bb.am, !noalias !660

.lr.ph27.i:                                       ; preds = %._crit_edge.i, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJS1_EEEvDpOT_.exit.i
  %.pre39.i.a = phi ptr [ %i.fd, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJS1_EEEvDpOT_.exit.i ], [ null, %._crit_edge.i ] ; 5 uses
  %.sroa.05.025.i = phi ptr [ %i.fe, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJS1_EEEvDpOT_.exit.i ], [ %.pre.i, %._crit_edge.i ] ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.05.025.i, i64 32 ; 2 uses
  %i.do = load ptr, ptr %i.aj, align 8, !tbaa !651, !noalias !660 ; 3 uses
  %i.dp = load ptr, ptr %i.ak, align 16, !tbaa !648, !noalias !660
  %.not.i.i = icmp eq ptr %i.do, %i.dp
  br i1 %.not.i.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.lr.ph27.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !660
  store ptr %i.al, ptr %3, align 8, !tbaa !7, !noalias !660
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !15, !noalias !660 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.05.025.i, i64 40
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !11, !noalias !660 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !660
  store i64 %i.ds, ptr %i.b, align 8, !tbaa !98, !noalias !660
  %i.dt = icmp ugt i64 %i.ds, 15
  br i1 %i.dt, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.w
  %i.du = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i37 unwind label %.loopexit.i, !noalias !660 ; 2 uses

.noexc.i37:                                       ; preds = %.noexc.i.i.i
  store ptr %i.du, ptr %3, align 8, !tbaa !15, !noalias !660
  %i.dv = load i64, ptr %i.b, align 8, !tbaa !98, !noalias !660
  store i64 %i.dv, ptr %i.al, align 8, !tbaa !14, !noalias !660
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i37, %bb.w
  %i.dw = phi ptr [ %i.du, %.noexc.i37 ], [ %i.al, %bb.w ] ; 2 uses
  switch i64 %i.ds, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dx = load i8, ptr %i.dq, align 1, !tbaa !14, !noalias !660
  store i8 %i.dx, ptr %i.dw, align 1, !tbaa !14, !noalias !660
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.y:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dw, ptr align 1 %i.dq, i64 %i.ds, i1 false), !noalias !660
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.y, %bb.x, %._crit_edge.i.i.i.i
  %i.dy = load i64, ptr %i.b, align 8, !tbaa !98, !noalias !660 ; 2 uses
  store i64 %i.dy, ptr %i.am, align 8, !tbaa !11, !noalias !660
  %i.dz = load ptr, ptr %3, align 8, !tbaa !15, !noalias !660
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dy
  store i8 0, ptr %i.ea, align 1, !tbaa !14, !noalias !660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30, !noalias !660
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.do, ptr noundef nonnull %3)
          to label %_ZNSt15__new_allocatorIN6duckdb5ValueEE9constructIS1_JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_.exit.i.i unwind label %bb.z, !noalias !660

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load ptr, ptr %3, align 8, !tbaa !15, !noalias !660 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.al
  br i1 %i.ed, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.ec) #31, !noalias !660
  br label %.body.i

_ZNSt15__new_allocatorIN6duckdb5ValueEE9constructIS1_JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.ee = load ptr, ptr %3, align 8, !tbaa !15, !noalias !660 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.al
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %_ZNSt15__new_allocatorIN6duckdb5ValueEE9constructIS1_JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ee) #31, !noalias !660
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %_ZNSt15__new_allocatorIN6duckdb5ValueEE9constructIS1_JRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !660
  %i.eg = load ptr, ptr %i.aj, align 8, !tbaa !651, !noalias !660
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  store ptr %i.eh, ptr %i.aj, align 8, !tbaa !651, !noalias !660
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit.i

bb.aa:                                            ; preds = %.lr.ph27.i
  invoke void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.do, ptr noundef nonnull align 8 dereferenceable(32) %i.dn)
          to label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit.i unwind label %.loopexit.i, !noalias !660

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit.i: ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.05.025.i, i64 64 ; 2 uses
  %i.ej = load ptr, ptr %i.ao, align 8, !tbaa !648, !noalias !660
  %.not.i37.i = icmp eq ptr %.pre39.i.a, %i.ej
  br i1 %.not.i37.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit.i
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.pre39.i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.ei) #30, !noalias !660
  %i.ek = load ptr, ptr %i.an, align 8, !tbaa !651, !noalias !660
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 64 ; 2 uses
  store ptr %i.el, ptr %i.an, align 8, !tbaa !651, !noalias !660
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJS1_EEEvDpOT_.exit.i

bb.ac:                                            ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit.i
  %i.em = load ptr, ptr %7, align 8, !tbaa !650, !noalias !660 ; 5 uses
  %i.en = ptrtoint ptr %.pre39.i.a to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 3 uses
  %i.eq = icmp eq i64 %i.ep, 9223372036854775744
  br i1 %i.eq, label %bb.ad, label %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
          to label %.noexc77.i unwind label %.loopexit.split-lp.i, !noalias !660

.noexc77.i:                                       ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ac
  %i.er = ashr exact i64 %i.ep, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.er, i64 1)
  %i.es = add nsw i64 %.sroa.speculated.i.i.i, %i.er ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.er
  %i.eu = call i64 @llvm.umin.i64(i64 %i.es, i64 144115188075855871)
  %i.ev = select i1 %i.et, i64 144115188075855871, i64 %i.eu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ev, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ew = shl nuw nsw i64 %i.ev, 6
  %i.ex = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ew) #33
          to label %.noexc78.i unwind label %.loopexit.i, !noalias !660 ; 5 uses

.noexc78.i:                                       ; preds = %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ep
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ey, ptr noundef nonnull align 8 dereferenceable(64) %i.ei) #30, !noalias !660
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.em, %.pre39.i.a
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc78.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i ], [ %i.ex, %.noexc78.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i.i ], [ %i.em, %.noexc78.i ] ; 3 uses
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i.i.i) #30, !noalias !660
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.0911.i.i.i.i.i.i) #30, !noalias !660
  %i.ez = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ez, %.pre39.i.a
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !664

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc78.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ex, %.noexc78.i ], [ %i.fa, %.lr.ph.i.i.i.i.i.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i23.i.i, label %.noexc38.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.em) #31, !noalias !660
  br label %.noexc38.i

.noexc38.i:                                       ; preds = %bb.ae, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ex, ptr %7, align 8, !tbaa !650, !noalias !660
  store ptr %i.fb, ptr %i.an, align 8, !tbaa !651, !noalias !660
  %i.fc = getelementptr inbounds nuw [64 x i8], ptr %i.ex, i64 %i.ev
  store ptr %i.fc, ptr %i.ao, align 8, !tbaa !648, !noalias !660
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJS1_EEEvDpOT_.exit.i

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJS1_EEEvDpOT_.exit.i: ; preds = %.noexc38.i, %bb.ab
  %i.fd = phi ptr [ %i.fb, %.noexc38.i ], [ %i.el, %bb.ab ] ; 2 uses
  %i.fe = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.05.025.i) #35, !noalias !660 ; 2 uses
  %.not18.i = icmp eq ptr %i.fe, %i.ae
  br i1 %.not18.i, label %._crit_edge28.i, label %.lr.ph27.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.aa, %.noexc.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.ad
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.af:                                            ; preds = %._crit_edge28.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30, !noalias !660
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 noundef zeroext 25)
          to label %bb.ag unwind label %bb.an, !noalias !660

bb.ag:                                            ; preds = %bb.af
  %i.ff = load <2 x ptr>, ptr %6, align 16, !tbaa !646, !noalias !660
  store <2 x ptr> %i.ff, ptr %11, align 16, !tbaa !646, !noalias !660
  %i.fg = load ptr, ptr %i.ak, align 16, !tbaa !648, !noalias !660
  store ptr %i.fg, ptr %i.aq, align 16, !tbaa !648, !noalias !660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false), !noalias !660
  %i.fh = load ptr, ptr %7, align 8, !tbaa !650, !noalias !660
  store ptr %i.fh, ptr %12, align 8, !tbaa !650, !noalias !660
  store ptr %i.dm, ptr %i.ar, align 8, !tbaa !651, !noalias !660
  %i.fi = load ptr, ptr %i.ao, align 8, !tbaa !648, !noalias !660
  store ptr %i.fi, ptr %i.as, align 8, !tbaa !648, !noalias !660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !660
  invoke void @_ZN6duckdb5Value3MAPERKNS_11LogicalTypeES3_NS_6vectorIS0_Lb1ESaIS0_EEES6_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull %11, ptr noundef nonnull %12)
          to label %bb.ah unwind label %bb.ao, !noalias !660

bb.ah:                                            ; preds = %bb.ag
  %i.fj = load ptr, ptr %12, align 8, !tbaa !650, !noalias !660 ; 3 uses
  %i.fk = load ptr, ptr %i.ar, align 8, !tbaa !651, !noalias !660 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.fj, %i.fk
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ah, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.fl, %.lr.ph.i.i.i.i ], [ %i.fj, %bb.ah ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i.i) #30, !noalias !660
  %i.fl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fl, %i.fk
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !652

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %12, align 8, !tbaa !650, !noalias !660
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.ah
  %i.fm = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.fj, %bb.ah ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fm) #31, !noalias !660
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i:  ; preds = %bb.ai, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.fn = load ptr, ptr %11, align 16, !tbaa !650, !noalias !660 ; 3 uses
  %i.fo = load ptr, ptr %i.ap, align 8, !tbaa !651, !noalias !660 ; 2 uses
  %.not4.i.i.i39.i = icmp eq ptr %i.fn, %i.fo
  br i1 %.not4.i.i.i39.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i45.i, label %.lr.ph.i.i.i40.i

.lr.ph.i.i.i40.i:                                 ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i, %.lr.ph.i.i.i40.i
  %.05.i.i.i41.i = phi ptr [ %i.fp, %.lr.ph.i.i.i40.i ], [ %i.fn, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i41.i) #30, !noalias !660
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i41.i, i64 64 ; 2 uses
  %.not.i.i.i42.i = icmp eq ptr %i.fp, %i.fo
  br i1 %.not.i.i.i42.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i43.i, label %.lr.ph.i.i.i40.i, !llvm.loop !652

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i43.i: ; preds = %.lr.ph.i.i.i40.i
  %.pr.i44.i = load ptr, ptr %11, align 16, !tbaa !650, !noalias !660
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i45.i

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i45.i: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i43.i, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i
  %i.fq = phi ptr [ %.pr.i44.i, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i43.i ], [ %i.fn, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i46.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i1.i46.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit47.i, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i45.i
  call void @_ZdlPv(ptr noundef nonnull %i.fq) #31, !noalias !660
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit47.i

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit47.i: ; preds = %bb.aj, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i45.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #30, !noalias !660
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !660
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #30, !noalias !660
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !660
  %i.fr = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_emplace_uniqueIJRS7_S9_EEES6_ISt17_Rb_tree_iteratorISA_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEE7emplaceIJRSB_S7_EEESA_ISt17_Rb_tree_iteratorISC_EbEDpOT_.exit.i unwind label %bb.ar, !noalias !660 ; 0 uses

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEE7emplaceIJRSB_S7_EEESA_ISt17_Rb_tree_iteratorISC_EbEDpOT_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit47.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #30, !noalias !660
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !660
  %i.fs = load ptr, ptr %7, align 8, !tbaa !650, !noalias !660 ; 2 uses
  %.not4.i.i.i49.i = icmp eq ptr %i.fs, null
  br i1 %.not4.i.i.i49.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit57.i, label %.lr.ph.i.i.i50.i

.lr.ph.i.i.i50.i:                                 ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEE7emplaceIJRSB_S7_EEESA_ISt17_Rb_tree_iteratorISC_EbEDpOT_.exit.i, %.lr.ph.i.i.i50.i
  %.05.i.i.i51.i = phi ptr [ %i.ft, %.lr.ph.i.i.i50.i ], [ %i.fs, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEE7emplaceIJRSB_S7_EEESA_ISt17_Rb_tree_iteratorISC_EbEDpOT_.exit.i ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i51.i) #30, !noalias !660
  %i.ft = getelementptr inbounds nuw i8, ptr %.05.i.i.i51.i, i64 64
  br label %.lr.ph.i.i.i50.i

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit57.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEE7emplaceIJRSB_S7_EEESA_ISt17_Rb_tree_iteratorISC_EbEDpOT_.exit.i
  %.pre40.i = load ptr, ptr %6, align 16, !tbaa !650, !noalias !660 ; 3 uses
  %.pre41.i = load ptr, ptr %i.aj, align 8, !tbaa !651, !noalias !660 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !660
  %.not4.i.i.i58.i = icmp eq ptr %.pre40.i, %.pre41.i
  br i1 %.not4.i.i.i58.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i64.i, label %.lr.ph.i.i.i59.i

.lr.ph.i.i.i59.i:                                 ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit57.i, %.lr.ph.i.i.i59.i
  %.05.i.i.i60.i = phi ptr [ %i.fu, %.lr.ph.i.i.i59.i ], [ %.pre40.i, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit57.i ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i60.i) #30, !noalias !660
  %i.fu = getelementptr inbounds nuw i8, ptr %.05.i.i.i60.i, i64 64 ; 2 uses
  %.not.i.i.i61.i = icmp eq ptr %i.fu, %.pre41.i
  br i1 %.not.i.i.i61.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i62.i, label %.lr.ph.i.i.i59.i, !llvm.loop !652

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i62.i: ; preds = %.lr.ph.i.i.i59.i
  %.pr.i63.i = load ptr, ptr %6, align 16, !tbaa !650, !noalias !660
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i64.i

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i64.i: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i62.i, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit57.i
  %i.fv = phi ptr [ %.pr.i63.i, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i62.i ], [ %.pre40.i, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit57.i ] ; 2 uses
  %.not.i.i1.i65.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i1.i65.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit66.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i64.i
  call void @_ZdlPv(ptr noundef nonnull %i.fv) #31, !noalias !660
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit66.i

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit66.i: ; preds = %bb.ak, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i64.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !660
  %i.fw = load ptr, ptr %i.af, align 8, !tbaa !579, !noalias !660
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.fw)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i unwind label %bb.al, !noalias !660

bb.al:                                            ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit66.i
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #34, !noalias !660
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit66.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !660
  %i.fz = load ptr, ptr %.sroa.013.030.i, align 8, !tbaa !179, !noalias !660 ; 2 uses
  %.not.i = icmp eq ptr %i.fz, null
  br i1 %.not.i, label %._crit_edge33.i, label %bb.h

bb.am:                                            ; preds = %._crit_edge28.i
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.an:                                            ; preds = %bb.af
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ag
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #30, !noalias !660
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #30, !noalias !660
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #30, !noalias !660
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn.i = phi { ptr, i32 } [ %i.gc, %bb.ao ], [ %i.gb, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !660
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #30, !noalias !660
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.ap ], [ %i.ga, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !660
  br label %bb.as

bb.ar:                                            ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit47.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #30, !noalias !660
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn29.i = phi { ptr, i32 } [ %i.gd, %bb.ar ], [ %.pn.pn.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !660
  br label %.body.i

.body.i:                                          ; preds = %bb.z, %bb.as, %.loopexit.split-lp.i, %.loopexit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn31.i = phi { ptr, i32 } [ %.pn29.i, %bb.as ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %i.eb, %bb.z ]
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #30, !noalias !660
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !660
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #30, !noalias !660
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !660
  br label %.body75.i

end_hunk_0
