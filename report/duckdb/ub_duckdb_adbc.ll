Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_adbc?download=true
inline.NumInlined: 2407
inline.NumDeleted: 632
begin_hunk_0_@_ZN11duckdb_adbc20StatementSetSqlQueryEP13AdbcStatementPKcP9AdbcError:bb.a
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !183
  br label %bb.ay

bb.ax:                                            ; preds = %._crit_edge.i.i142
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dz, ptr nonnull align 1 %i.ds, i64 %i.dv, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %._crit_edge.i.i142
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !180 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !184
  %i.ed = load ptr, ptr %8, align 8, !tbaa !182
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eb
  store i8 0, ptr %i.ee, align 1, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke void @_Z8SetErrorP9AdbcErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.ef = load ptr, ptr %8, align 8, !tbaa !182   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.dt
  br i1 %i.eg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.az
  call void @_ZdlPv(ptr noundef %i.ef) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i148

bb.ba:                                            ; preds = %.noexc.i143, %bb.au
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

bb.bb:                                            ; preds = %bb.ay
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %8, align 8, !tbaa !182   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.dt
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.bb
  call void @_ZdlPv(ptr noundef %i.ej) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %bb.ba
  %.pn87 = phi { ptr, i32 } [ %i.eh, %bb.ba ], [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %i.ei, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  br label %bb.bd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i148: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @duckdb_destroy_arrow(ptr noundef nonnull %i.i)
  call void @duckdb_destroy_prepare(ptr noundef nonnull %i.g)
  call void @duckdb_destroy_extracted(ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  br label %.thread170

bb.bc:                                            ; preds = %bb.as
  call void @duckdb_destroy_arrow(ptr noundef nonnull %i.i)
  call void @duckdb_destroy_prepare(ptr noundef nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #31
  %i.el = add nuw i64 %.048186, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.el, %i.di
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !516

._crit_edge:                                      ; preds = %bb.bc, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  %i.em = load ptr, ptr %i.w, align 8, !tbaa !241
  %i.en = load ptr, ptr %i.f, align 8, !tbaa !519
  %i.eo = call i32 @duckdb_prepare_extracted_statement(ptr noundef %i.em, ptr noundef %i.en, i64 noundef %i.di, ptr noundef nonnull %i.ck)
  store i32 %i.eo, ptr %i.j, align 4, !tbaa !205
  %i.ep = load ptr, ptr %i.ck, align 8, !tbaa !246
  %i.eq = call ptr @duckdb_prepare_error(ptr noundef %i.ep)
  call void @duckdb_destroy_extracted(ptr noundef nonnull %i.f)
  %i.er = call noundef zeroext i8 @_ZN11duckdb_adbc11CheckResultERK12duckdb_stateP9AdbcErrorPKc(ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef %2, ptr noundef %i.eq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  br label %.thread170

.thread170:                                       ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i148, %._crit_edge, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %.4 = phi i8 [ 9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ 0, %bb.ar ], [ %i.er, %._crit_edge ], [ %i.do, %.thread ], [ 5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i148 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  br label %bb.be

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %.pn90.pn = phi { ptr, i32 } [ %.pn90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %.pn87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  br label %bb.bf

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %.thread170, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.6 = phi i8 [ 5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ 5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ 5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %.4, %.thread170 ]
  ret i8 %.6

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %.pn93.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %.pn76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %.pn93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ], [ %.pn90.pn, %bb.bd ]
  resume { ptr, i32 } %.pn93.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZN11duckdb_adbc20ConnectionGetObjectsEP14AdbcConnectioniPKcS3_S3_PS3_S3_P16ArrowArrayStreamP9AdbcError(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr noundef %8) #2 personality ptr @__gxx_personality_v0 !guid !544 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::vector.260", align 8   ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::vector.260", align 8  ; 9 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::vector.260", align 8  ; 9 uses
  %i.n = alloca i64, align 8                      ; 6 uses
  %i.o = alloca i64, align 8                      ; 6 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.std::vector.260", align 8  ; 9 uses
  %i.q = alloca i64, align 8                      ; 6 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %18 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 25 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  call void @_ZN11duckdb_adbc12createFilterB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  invoke void @_ZN11duckdb_adbc12createFilterB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef %3)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  invoke void @_ZN11duckdb_adbc12createFilterB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef %4)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  invoke void @_ZN11duckdb_adbc12createFilterB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef %6)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.s, ptr %17, align 8, !tbaa !178
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 7 uses
  store i64 0, ptr %i.t, align 8, !tbaa !184
  store i8 0, ptr %i.s, align 8, !tbaa !183
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit131, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %5, align 8, !tbaa !207
  %.not65 = icmp eq ptr %i.u, null
  br i1 %.not65, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit131, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.108, i64 noundef 20)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader: ; preds = %bb.f
  %i.w = load ptr, ptr %5, align 8, !tbaa !207    ; 5 uses
  %.not66443 = icmp eq ptr %i.w, null
  br i1 %.not66443, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.z = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(12) @.str.109) #34
  %.not67.peel = icmp eq i32 %i.z, 0
  br i1 %.not67.peel, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.aa = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(11) @.str.110) #34
  %.not68.peel = icmp eq i32 %i.aa, 0
  br i1 %.not68.peel, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(5) @.str.111) #34
  %.not69.peel = icmp eq i32 %i.ab, 0
  br i1 %.not69.peel, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel, label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel: ; preds = %.lr.ph, %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  invoke void @_ZN11duckdb_adbc12createFilterB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull %i.w)
          to label %bb.i unwind label %.loopexit.split-lp458.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  %i.ac = load i64, ptr %i.x, align 8, !tbaa !184 ; 2 uses
  %i.ad = load i64, ptr %i.t, align 8, !tbaa !184
  %i.ae = sub i64 4611686018427387903, %i.ad
  %i.af = icmp ult i64 %i.ae, %i.ac
  br i1 %i.af, label %.loopexit461, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.i
  %i.ag = load ptr, ptr %20, align 8, !tbaa !182
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef %i.ag, i64 noundef %i.ac)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp431.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.ai = load ptr, ptr %20, align 8, !tbaa !182  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.y
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i123.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  call void @_ZdlPv(ptr noundef %i.ai) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i123.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %44 = load i64, ptr %i.x, align 8, !tbaa !184
  %45 = icmp ult i64 %44, 16
  call void @llvm.assume(i1 %45)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i123.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !207 ; 2 uses
  %.not66.peel = icmp eq ptr %i.al, null
  br i1 %.not66.peel, label %.critedge, label %.peel.next

bb.j:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421

bb.k:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418

bb.l:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel ]
  %i.ap = phi ptr [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel ] ; 3 uses
  %i.aq = phi ptr [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel ] ; 2 uses
  %i.ar = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(12) @.str.109) #34
  %.not67 = icmp eq i32 %i.ar, 0
  br i1 %.not67, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %.peel.next
  %i.as = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(11) @.str.110) #34
  %.not68 = icmp eq i32 %i.as, 0
  br i1 %.not68, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(5) @.str.111) #34
  %.not69 = icmp eq i32 %i.at, 0
  br i1 %.not69, label %bb.aa, label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.h
  %.lcssa = phi ptr [ %5, %bb.h ], [ %i.aq, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  invoke void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %18, i32 noundef 24)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %.loopexit
  %i.au = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.112, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.o
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.113, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = load ptr, ptr %.lcssa, align 8, !tbaa !207 ; 3 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !343
  %i.az = getelementptr i8, ptr %i.ay, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %i.au, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !545
  %i.be = or i32 %i.bd, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bb, i32 noundef %i.be)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112 unwind label %bb.w

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109
  %i.bf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ax) #31
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.ax, i64 noundef %i.bf)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112: ; preds = %bb.p, %bb.q
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.114, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.bi = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  store ptr %i.bi, ptr %19, align 8, !tbaa !178, !alias.scope !548
  %i.bj = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.bj, align 8, !tbaa !184, !alias.scope !548
  store i8 0, ptr %i.bi, align 8, !tbaa !183, !alias.scope !548
  %i.bk = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !340, !noalias !548 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bl, null
  %i.bm = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !548 ; 2 uses
  %i.bo = icmp ugt ptr %i.bl, %i.bn
  %.08.i.i.i = select i1 %i.bo, ptr %i.bl, ptr %i.bn ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114
  %i.bp = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !341, !noalias !548 ; 2 uses
  %i.br = ptrtoint ptr %.08.i.i.i to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef 0, ptr noundef %i.bq, i64 noundef %i.bt)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %19, align 8, !tbaa !182, !alias.scope !548 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bi
  br i1 %i.bx, label %.body, label %.body.sink.split

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit114
  %i.by = getelementptr inbounds nuw i8, ptr %18, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.s

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.t, %bb.r
  invoke void @_Z8SetErrorP9AdbcErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bz = load ptr, ptr %19, align 8, !tbaa !182  ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bi
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.bz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %18, align 8, !tbaa !343
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.cb, align 8, !tbaa !343
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.au, align 8, !tbaa !343
  %i.cc = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cc, align 8, !tbaa !343
  %i.cd = getelementptr inbounds nuw i8, ptr %18, i64 96
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !182 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %18, i64 112
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ce) #32, !inline_history !344
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cc, align 8, !tbaa !343
  %i.ch = getelementptr inbounds nuw i8, ptr %18, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ch) #31, !inline_history !344
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %18, align 8, !tbaa !343
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.cb, align 8, !tbaa !343
  %i.ci = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.ci, align 8, !tbaa !346
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cb) #31, !inline_history !344
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %bb.dy

bb.v:                                             ; preds = %.loopexit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112, %bb.q, %bb.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.o
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %19, align 8, !tbaa !182  ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bi
  br i1 %i.cn, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.x, %bb.s
  %.sink = phi ptr [ %i.bw, %bb.s ], [ %i.cm, %bb.x ]
  %.pn72.ph = phi { ptr, i32 } [ %i.bv, %bb.s ], [ %i.cl, %bb.x ]
  call void @_ZdlPv(ptr noundef %.sink) #32
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.x, %bb.s
  %.pn72 = phi { ptr, i32 } [ %i.bv, %bb.s ], [ %i.cl, %bb.x ], [ %.pn72.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.w
  %.pn72.pn = phi { ptr, i32 } [ %.pn72, %.body ], [ %i.ck, %bb.w ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %18) #31
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.pn72.pn.pn = phi { ptr, i32 } [ %.pn72.pn, %bb.y ], [ %i.cj, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %.loopexit.split-lp
end_hunk_0
begin_hunk_1_@_ZN11duckdb_adbcL8get_nextEP16ArrowArrayStreamP10ArrowArray:bb.a
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !336  ; 10 uses
  %i.f = icmp ne ptr %i.e, null
  %i.g = icmp ne ptr %1, null
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.h, align 8, !tbaa !379
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !255  ; 5 uses
  %.not37 = icmp eq ptr %i.j, null
  br i1 %.not37, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !390  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !391
  %.not43 = icmp ult i64 %i.l, %i.n
  br i1 %.not43, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !392
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.p, i64 80, i1 false), !tbaa.struct !335
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !392
  %i.r = load i64, ptr %i.k, align 8, !tbaa !390  ; 2 uses
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr null, ptr %i.t, align 8, !tbaa !379
  %i.u = add i64 %i.r, 1
  store i64 %i.u, ptr %i.k, align 8, !tbaa !390
  br label %bb.o

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.v = tail call ptr @duckdb_fetch_chunk(ptr noundef nonnull byval(%struct.duckdb_result) align 8 %i.e) ; 3 uses
  store ptr %i.v, ptr %i.a, align 8, !tbaa !385
  %.not38 = icmp eq ptr %i.v, null
  br i1 %.not38, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.w = tail call ptr @duckdb_result_error(ptr noundef nonnull %i.e) ; 4 uses
  %.not39 = icmp eq ptr %i.w, null
  br i1 %.not39, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i8, ptr %i.w, align 1, !tbaa !183
  %.not40 = icmp eq i8 %i.x, 0
  br i1 %.not40, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !253  ; 2 uses
  %.not41 = icmp eq ptr %i.z, null
  br i1 %.not41, label %_ZN11duckdb_adbcL16IsInterruptErrorEPKc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.z) #31
  br label %_ZN11duckdb_adbcL16IsInterruptErrorEPKc.exit

_ZN11duckdb_adbcL16IsInterruptErrorEPKc.exit:     ; preds = %bb.j, %bb.i
  %i.aa = tail call noalias ptr @strdup(ptr noundef nonnull %i.w) #31 ; 2 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !253
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(13) @.str.142) #34
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = select i1 %i.ac, i8 11, i8 9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i8 %i.ad, ptr %i.ae, align 8, !tbaa !254
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.aa, ptr %i.af, align 8, !tbaa !757
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 0, ptr %i.ag, align 8, !tbaa !758
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr null, ptr %i.ah, align 8, !tbaa !759
  br label %bb.n

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ai = tail call ptr @duckdb_result_get_arrow_options(ptr noundef nonnull %i.e) ; 2 uses
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.aj = tail call ptr @duckdb_data_chunk_to_arrow(ptr noundef %i.ai, ptr noundef nonnull %i.v, ptr noundef nonnull %1) ; 2 uses
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !307
  call void @duckdb_destroy_arrow_options(ptr noundef nonnull %i.b)
  call void @duckdb_destroy_data_chunk(ptr noundef nonnull %i.a)
  %.not42 = icmp eq ptr %i.aj, null
  br i1 %.not42, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @duckdb_destroy_error_data(ptr noundef nonnull %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.2 = phi i32 [ 1, %bb.l ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.n

bb.n:                                             ; preds = %_ZN11duckdb_adbcL16IsInterruptErrorEPKc.exit, %bb.h, %bb.g, %bb.m
  %.3 = phi i32 [ %.2, %bb.m ], [ 1, %_ZN11duckdb_adbcL16IsInterruptErrorEPKc.exit ], [ 0, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.d, %bb.e, %bb.a, %bb.b
  %.5 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ %.3, %bb.n ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIPN11duckdb_adbc23DuckDBAdbcStreamWrapperESaIS2_EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !guid !760 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !761
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !228
  store ptr %i.e, ptr %i.b, align 8, !tbaa !228
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !225
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !226    ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPN11duckdb_adbc23DuckDBAdbcStreamWrapperESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #35
  unreachable

_ZNKSt6vectorIPN11duckdb_adbc23DuckDBAdbcStreamWrapperESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.l  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #36 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !228
  store ptr %i.t, ptr %i.s, align 8, !tbaa !228
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPN11duckdb_adbc23DuckDBAdbcStreamWrapperESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN11duckdb_adbc23DuckDBAdbcStreamWrapperESaIS2_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPN11duckdb_adbc23DuckDBAdbcStreamWrapperESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i

_ZNSt6vectorIPN11duckdb_adbc23DuckDBAdbcStreamWrapperESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i: ; preds = %_ZNKSt6vectorIPN11duckdb_adbc23DuckDBAdbcStreamWrapperESaIS2_EE12_M_check_lenEmPKc.exit.i, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i, label %_ZNSt6vectorIPN11duckdb_adbc23DuckDBAdbcStreamWrapperESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN11duckdb_adbc23DuckDBAdbcStreamWrapperESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #32
  br label %_ZNSt6vectorIPN11duckdb_adbc23DuckDBAdbcStreamWrapperESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIPN11duckdb_adbc23DuckDBAdbcStreamWrapperESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZNSt6vectorIPN11duckdb_adbc23DuckDBAdbcStreamWrapperESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i, %bb.f
  store ptr %i.r, ptr %0, align 8, !tbaa !226
  store ptr %i.v, ptr %i.a, align 8, !tbaa !225
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.c, align 8, !tbaa !761
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN11duckdb_adbc23DuckDBAdbcStreamWrapperESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, %bb.b
  ret void
}

declare i64 @duckdb_extract_statements(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @duckdb_extract_statements_error(ptr noundef) local_unnamed_addr #7

declare void @duckdb_destroy_extracted(ptr noundef) local_unnamed_addr #7

declare i32 @duckdb_prepare_extracted_statement(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @duckdb_execute_prepared_arrow(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @duckdb_query_arrow_error(ptr noundef) local_unnamed_addr #7

declare void @duckdb_destroy_arrow(ptr noundef) local_unnamed_addr #7

declare noundef zeroext i8 @_ZN11duckdb_adbc18BatchToArrayStreamEP10ArrowArrayP11ArrowSchemaP16ArrowArrayStreamP9AdbcError(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !762 {
bb.a:
  %2 = alloca %"class.std::locale", align 8       ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #31
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8, !tbaa !343
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr null, ptr %i.b, align 8, !tbaa !769
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 0, ptr %i.c, align 8, !tbaa !770
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %i.d, align 1, !tbaa !771
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC2ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), i32 noundef %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %0, align 8, !tbaa !343
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.a, align 8, !tbaa !343
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.f, align 8, !tbaa !343
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %2, ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #31
  ret void

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8)) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 !guid !772 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %0, align 8, !tbaa !343
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.a, align 8, !tbaa !343
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.b, align 8, !tbaa !343
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.c, align 8, !tbaa !343
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !182  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.e) #32
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.c, align 8, !tbaa !343
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #31
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %0, align 8, !tbaa !343
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.a, align 8, !tbaa !343
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !346
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11duckdb_adbc12createFilterB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 !guid !773 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !178
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.c, ptr %i.a, align 8, !tbaa !180
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !182
  %i.f = load i64, ptr %i.a, align 8, !tbaa !180
  store i64 %i.f, ptr %i.b, align 8, !tbaa !183
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.g = phi ptr [ %i.e, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.c, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !183
  store i8 %i.h, ptr %i.g, align 1, !tbaa !183
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !180  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !184
  %i.k = load ptr, ptr %2, align 8, !tbaa !182
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke void @_ZN6duckdb13KeywordHelper11WriteQuotedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 39)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %2, align 8, !tbaa !182    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.m) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %2, align 8, !tbaa !182    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.p) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i11

bb.h:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.r, ptr noundef nonnull align 1 dereferenceable(3) @.str.107, i64 3, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.s, align 8, !tbaa !184
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 0, ptr %i.t, align 1, !tbaa !183
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i11: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.o
}

declare void @_ZN6duckdb13KeywordHelper11WriteQuotedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #7

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #13

declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4copyEPcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #18 comdat !guid !774 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #31 ; 0 uses
  tail call void @_ZSt9terminatev() #38
  unreachable
}

; Function Attrs: cold nofree noreturn
end_hunk_1
begin_hunk_2_@_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_S9_S9_S9_S9_EEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_:bb.a
  store ptr %i.g, ptr %i.e, align 8, !tbaa !178
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !182  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !184  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !182
  %i.o = load i64, ptr %i.i, align 8, !tbaa !183
  store i64 %i.o, ptr %i.g, align 8, !tbaa !183
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !184
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !184
  store ptr %i.i, ptr %i.f, align 8, !tbaa !182
  store i64 0, ptr %i.q, align 8, !tbaa !184
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !356
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !356
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %9)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert13 = getelementptr inbounds nuw i8, ptr %9, i64 32
  %.pre14 = load ptr, ptr %.phi.trans.insert13, align 8, !tbaa !182 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.v = icmp eq ptr %.pre14, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre14) #32
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_S9_S9_S9_EEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !182  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #32
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit12

_ZN6duckdb20ExceptionFormatValueD2Ev.exit12:      ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_S9_S9_S9_EEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !873 {
bb.a:
  %8 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !356  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !402
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %8, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !178
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !182  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !184  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !182
  %i.o = load i64, ptr %i.i, align 8, !tbaa !183
  store i64 %i.o, ptr %i.g, align 8, !tbaa !183
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !184
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !184
  store ptr %i.i, ptr %i.f, align 8, !tbaa !182
  store i64 0, ptr %i.q, align 8, !tbaa !184
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !356
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !356
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert12 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.pre13 = load ptr, ptr %.phi.trans.insert12, align 8, !tbaa !182 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.v = icmp eq ptr %.pre13, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre13) #32
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_S9_S9_EEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !182  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #32
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit11

_ZN6duckdb20ExceptionFormatValueD2Ev.exit11:      ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  resume { ptr, i32 } %i.w
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold nofree noreturn }
attributes #20 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn }
attributes #22 = { cold noreturn }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nounwind }
attributes #32 = { builtin nounwind }
attributes #33 = { builtin nounwind allocsize(0) }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { noreturn }
attributes #36 = { builtin allocsize(0) }
attributes #37 = { nounwind allocsize(0) }
attributes #38 = { noreturn nounwind }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !212}
!1 = distinct !{!1, !212}
!2 = distinct !{!2, !212}
!3 = distinct !{!3, !212}
!4 = distinct !{!4, !212}
!5 = distinct !{!5, !212}
!6 = distinct !{!6, !212}
!7 = distinct !{!7, !212}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{i64 6991670754031890852}
!16 = !{i64 -8288039071600297525}
!17 = !{i64 6874744770629781160}
!18 = !{i64 -5973977366358451718}
!19 = !{i64 3037670146765113734}
!20 = !{i64 1069469288216701590}
!21 = !{i64 -620860508802836395}
!22 = !{i64 -8928651833626116594}
!23 = !{i64 5448005762919941317}
!24 = !{i64 -5946285022729256604}
!25 = !{i64 -1187118450851645079}
!26 = !{i64 3590135511434969385}
!27 = !{i64 4984510432991216227}
!28 = !{i64 2251977255799094731}
!29 = !{i64 -5397706022007268963}
!30 = !{i64 5590369454149992280}
!31 = !{i64 1385687512613555690}
!32 = !{i64 6098657222047678376}
!33 = !{i64 -9128401754484140401}
!34 = !{i64 -4321870581946225599}
!35 = !{i64 8703732872401031036}
!36 = !{i64 8160858829318864034}
!37 = !{i64 6139103170183898390}
!38 = !{i64 5365397145645096413}
!39 = !{i64 -7798614381419989772}
!40 = !{i64 -3643418212548358738}
!41 = !{i64 -9222181170491955091}
!42 = !{i64 7869055310208973156}
!43 = !{i64 3557496422038922047}
!44 = !{i64 -7124483670409603107}
!45 = !{i64 1770047717724780680}
!46 = !{i64 7316276632907804319}
!47 = !{i64 -4689974719852471565}
!48 = !{i64 8205077025649616372}
!49 = !{i64 -2426225102414392695}
!50 = !{i64 -6977481428083763505}
!51 = !{i64 -5801400730252460511}
!52 = !{i64 -4973831640581423485}
!53 = !{i64 5099077589082863304}
!54 = !{i64 1390303811333308174}
!55 = !{i64 1684172428307059778}
!56 = !{i64 -6663593875366102232}
!57 = !{i64 -778290059988606263}
!58 = !{i64 -7135774205303609209}
!59 = !{i64 1085590061022479984}
!60 = !{i64 3211736261228084674}
!61 = !{i64 7598892246393243260}
!62 = !{i64 4715092262165890233}
!63 = !{i64 3127849002298129604}
!64 = !{i64 5329430312298698251}
!65 = !{i64 7321242286901492538}
!66 = !{i64 -1527436482756124827}
!67 = !{i64 2843416006495623639}
!68 = !{i64 1095263495224854339}
!69 = !{i64 -450130579717889919}
!70 = !{i64 693763562346664150}
!71 = !{i64 3601516461459144049}
!72 = !{i64 3134065195628615192}
!73 = !{i64 -4203812832702089416}
!74 = !{i64 -6928995210769701755}
!75 = !{i64 -6569604601207638427}
!76 = !{i64 2283761710835743228}
!77 = !{i64 -9100180374208764804}
!78 = !{i64 -294762072264649973}
!79 = !{i64 6690864503977377922}
!80 = !{i64 5505347971322174775}
!81 = !{i64 5052089466561459745}
!82 = !{i64 -8289387886507218920}
!83 = !{i64 1290232714556100868}
!84 = !{i64 -8358690434097749793}
!85 = !{i64 -1464562059229527592}
!86 = !{i64 -794402115253979056}
!87 = !{i64 -4208244470188503321}
!88 = !{i64 -3062020913766281728}
!89 = !{i64 -3242424331891853668}
!90 = !{i64 -2977475427561114135}
!91 = !{i64 -8366749218875006884}
!92 = !{i64 -975051902239457845}
!93 = !{i64 587938616705401780}
!94 = !{i64 598285855678781920}
!95 = !{i64 9102011028776533940}
!96 = !{i64 -3241970229502824417}
!97 = !{i64 7523649475088323173}
!98 = !{i64 3438288102150894467}
!99 = !{i64 7791952477155499213}
!100 = !{i64 1098534053392850862}
!101 = !{i64 2326568240690043386}
!102 = !{i64 2901796581993646687}
!103 = !{i64 4735045475998024125}
!104 = !{i64 329194496105505959}
!105 = !{i64 -4401088372477386840}
!106 = !{i64 7091848704875451673}
!107 = !{i64 -3110322121851711289}
!108 = !{i64 54574812190302814}
!109 = !{i64 515400785383903258}
!110 = !{i64 3634121488712801438}
!111 = !{i64 -176900149612602671}
!112 = !{i64 482465283532421767}
!113 = !{i64 -7562879225661643083}
!114 = !{i64 2470697957729813273}
!115 = !{i64 6370319606013150019}
!116 = !{i64 -5801020277674054508}
!117 = !{i64 774704071463931109}
!118 = !{i64 -8458119988956128699}
!119 = !{i64 7260376295684694238}
!120 = !{i64 106892891721120254}
!121 = !{i64 -2707536638382657634}
!122 = !{i64 -783100446353705355}
!123 = !{i64 7972408638434528976}
!124 = !{i64 -5564885326030878189}
!125 = !{i64 -8989322217662449920}
!126 = !{i64 -652386512517225067}
!127 = !{i64 6308415549410381123}
!128 = !{i64 8692648331478241581}
!129 = !{i64 -1315070377171310923}
!130 = !{i64 5952962932075825344}
!131 = !{i64 -6419873963217148616}
!132 = !{i64 544489343134330511}
!133 = !{i64 -1744323610813481484}
!134 = !{i64 655387128002235434}
!135 = !{i64 -9071967118465117747}
!136 = !{i64 -8469521920693661556}
!137 = !{i64 -4521592107960544127}
!138 = !{i64 3493329013190359312}
!139 = !{i64 8369862339164067633}
!140 = !{i64 5015415764266559178}
!141 = !{i64 5063980168442076131}
!142 = !{i64 -3881317069701796165}
!143 = !{i64 -3426890690790376274}
!144 = !{i64 3709643776923302613}
!145 = !{i64 -6702302219894290139}
!146 = !{i64 -2590400344204598230}
!147 = !{i64 4035208577833401866}
!148 = !{i64 8169342058678157036}
!149 = !{i64 -5138312258011771523}
!150 = !{i64 -7581029134673631731}
!151 = !{i64 -5707978376502130165}
!152 = !{i64 3838357562659564919}
!153 = !{i64 -5429400527993965849}
!154 = !{i64 8359466476585780136}
!155 = !{i64 -7461900623625036781}
!156 = !{i64 3039712121139817968}
!157 = !{i64 -1879079431351048028}
!158 = !{i64 -4918455093907349072}
!159 = !{i64 -4200826427417801822}
!160 = !{i64 919433942350176387}
!161 = !{i64 493705889587863372}
!162 = !{i64 -8551665738740168660}
!163 = !{i64 -3800688592330630422}
!164 = !{i64 -7215474482933647595}
!165 = !{i64 -1114054144157184178}
!166 = !{i64 1354462130739437981}
!167 = !{i64 4644130766020307810}
!168 = !{i64 -5627594631844435136}
!169 = !{i64 5872072299911681230}
!170 = !{i64 1738585699370305000}
!171 = !{i64 8135569354578789875}
!172 = !{i64 3662719309392831656}
end_hunk_2
