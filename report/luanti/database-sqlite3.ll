Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/database-sqlite3?download=true
inline.NumInlined: 1402
inline.NumDeleted: 419
begin_hunk_0_@_ZN16Database_SQLite311checkColumnEPKcS1_:.noexc.i
  store ptr %i.f, ptr %4, align 8, !tbaa !65
  %i.g = load i64, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.f, ptr noundef nonnull align 1 dereferenceable(18) @.str.23, i64 18, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.h, align 8, !tbaa !66
  %i.i = load ptr, ptr %4, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i8 0, ptr %i.j, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28 ; 2 uses
  %i.l = load i64, ptr %i.h, align 8, !tbaa !66
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %.noexc
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %1, i64 noundef %i.k)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.j ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !66
  %i.r = and i64 %i.q, -2
  %i.s = icmp eq i64 %i.r, 4611686018427387902
  br i1 %i.s, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i23

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %.noexc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #29
          to label %.cont unwind label %bb.j

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull @.str.24, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit26 unwind label %bb.j ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i23
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !64
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !65   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !66   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.x, ptr %i.b, align 8, !tbaa !13
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i28, label %._crit_edge.i.i27

.noexc.i28:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit26
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc29 unwind label %bb.j   ; 2 uses

.noexc29:                                         ; preds = %.noexc.i28
  store ptr %i.z, ptr %3, align 8, !tbaa !65
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !13
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !55
  br label %._crit_edge.i.i27

._crit_edge.i.i27:                                ; preds = %.noexc29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit26
  %i.ab = phi ptr [ %i.z, %.noexc29 ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit26 ] ; 2 uses
  switch i64 %i.x, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i27
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !55
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !55
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i27
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i27
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !66
  %i.af = load ptr, ptr %3, align 8, !tbaa !65
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.ah = load ptr, ptr %4, align 8, !tbaa !65    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.e
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !55
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62
  %i.an = load ptr, ptr %3, align 8, !tbaa !65
  %i.ao = invoke i32 @sqlite3_prepare_v2(ptr noundef %i.am, ptr noundef %i.an, i32 noundef -1, ptr noundef nonnull %i.d, ptr noundef null)
          to label %.noexc.i31 unwind label %bb.k

.noexc.i31:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ap, ptr %5, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 25, ptr %i.a, align 8, !tbaa !13
  %i.aq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %bb.l   ; 2 uses

.noexc32:                                         ; preds = %.noexc.i31
  store ptr %i.aq, ptr %5, align 8, !tbaa !65
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !13  ; 3 uses
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.aq, ptr noundef nonnull align 1 dereferenceable(25) @.str.20, i64 25, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !66
  %i.at = load ptr, ptr %5, align 8, !tbaa !65
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.av = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.aw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.av) #28 ; 2 uses
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !66
  %i.ay = sub i64 4611686018427387903, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.aw
  br i1 %i.az, label %.invoke79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i34: ; preds = %.noexc32
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.av, i64 noundef %i.aw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit37 unwind label %bb.m ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i34
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !66
  %i.bd = icmp eq i64 %i.bc, 4611686018427387903
  br i1 %i.bd, label %.invoke79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i38

.invoke79:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit37, %.noexc32
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #29
          to label %.cont80 unwind label %bb.m

.cont80:                                          ; preds = %.invoke79
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit37
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit41 unwind label %bb.m ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit41: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i38
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !65
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !66
  invoke void @_ZNK16Database_SQLite312sqlite3_vrfyEiSt17basic_string_viewIcSt11char_traitsIcEEi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.ao, i64 %i.bh, ptr %i.bf, i32 noundef 0)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit41
  %i.bi = load ptr, ptr %5, align 8, !tbaa !65    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ap
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.d
  %i.bk = load i64, ptr %i.ap, align 8, !tbaa !55
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.backedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.bn = invoke i32 @sqlite3_step(ptr noundef %i.bm)
          to label %bb.e unwind label %.loopexit

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.bo = icmp eq i32 %i.bn, 100                  ; 2 uses
  br i1 %i.bo, label %bb.f, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.bq = invoke ptr @sqlite3_column_text(ptr noundef %i.bp, i32 noundef 1)
          to label %.noexc47 unwind label %.loopexit ; 3 uses

.noexc47:                                         ; preds = %bb.f
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %.thread, label %bb.g

bb.g:                                             ; preds = %.noexc47
  %i.br = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bq) #28 ; 3 uses
  %i.bs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28
  %i.bt = icmp eq i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.h, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.backedge

.thread:                                          ; preds = %.noexc47
  %char0 = load i8, ptr %2, align 1
  %i.bu = icmp eq i8 %char0, 0
  br i1 %i.bu, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.backedge

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.backedge: ; preds = %.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.g
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, !llvm.loop !264

bb.h:                                             ; preds = %bb.g
  %i.bv = icmp eq i64 %i.br, 0
  br i1 %i.bv, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, !llvm.loop !264

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.h
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.bq, ptr nonnull %2, i64 %i.br)
  %i.bw = icmp eq i32 %bcmp.i, 0
  br i1 %i.bw, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.backedge

bb.i:                                             ; preds = %.noexc.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.j:                                             ; preds = %.invoke, %.noexc.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %4, align 8, !tbaa !65    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.e
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.j
  %i.cb = load i64, ptr %i.e, align 8, !tbaa !55
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.i ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %i.by, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %.noexc.i31
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.m:                                             ; preds = %.invoke79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit41
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %5, align 8, !tbaa !65    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.ap
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.m
  %i.ci = load i64, ptr %i.ap, align 8, !tbaa !55
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.l
  %.pn16 = phi { ptr, i32 } [ %i.ce, %bb.l ], [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.cf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.o

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread: ; preds = %.thread, %bb.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.e
  %i.ck = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.cl = invoke i32 @sqlite3_finalize(ptr noundef %i.ck)
          to label %bb.n unwind label %.loopexit.split-lp ; 0 uses

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread
  store ptr null, ptr %i.d, align 8, !tbaa !71
  %i.cm = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.u
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.n
  %i.co = load i64, ptr %i.u, align 8, !tbaa !55
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  ret i1 %i.bo

bb.o:                                             ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %bb.k
  %.pn18 = phi { ptr, i32 } [ %i.cd, %bb.k ], [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cq = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.u
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.o
  %i.cs = load i64, ptr %i.u, align 8, !tbaa !55
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %.pn18.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %.pn18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %.pn18, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  resume { ptr, i32 } %.pn18.pn
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZN16Database_SQLite3D2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(120) dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV16Database_SQLite3, i64 16), ptr %0, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.f = invoke i32 @sqlite3_finalize(ptr noundef %i.e)
          to label %bb.b unwind label %bb.q       ; 0 uses

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.d, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = invoke i32 @sqlite3_finalize(ptr noundef %i.h)
          to label %bb.c unwind label %bb.q       ; 0 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.g, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = invoke i32 @sqlite3_close(ptr noundef %i.k)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i, label %_ZTW11errorstream.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZTH11errorstream() #28
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.e, %bb.f
  %i.m = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28, !nonnull !29, !align !30 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc unwind label %bb.q, !inline_history !265

.noexc:                                           ; preds = %_ZTW11errorstream.exit
  %.v.i = select i1 %i.q, i64 976, i64 984
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.25, ptr %i.c, align 8, !tbaa !33
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.g unwind label %bb.q       ; 0 uses

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.26, ptr %i.b, align 8, !tbaa !33
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.v = invoke ptr @sqlite3_errmsg(ptr noundef %i.u)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.v, ptr %i.a, align 8, !tbaa !33
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.j unwind label %bb.q       ; 2 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !34   ; 5 uses
  %.not.i5 = icmp eq ptr %i.x, null
  br i1 %.not.i5, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !41
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.noexc6 unwind label %bb.q

.noexc6:                                          ; preds = %bb.l
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !34 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !32
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre16 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.m

bb.m:                                             ; preds = %.noexc6, %bb.k
  %i.af = phi i64 [ %.pre16, %.noexc6 ], [ %i.aa, %bb.k ]
  %i.ag = phi ptr [ %.pre.i, %.noexc6 ], [ %i.x, %bb.k ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !48 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc11 unwind label %bb.q

.noexc11:                                         ; preds = %bb.n
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !54
  %.not.i1.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i1.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 67
  %i.an = load i8, ptr %i.am, align 1, !tbaa !55
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aj)
          to label %.noexc12 unwind label %bb.q

.noexc12:                                         ; preds = %bb.p
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef signext i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(570) %i.aj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.q, !inline_history !266

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc12, %bb.o
  %.0.i.i.i = phi i8 [ %i.an, %bb.o ], [ %i.ar, %.noexc12 ]
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i8 noundef signext %.0.i.i.i)
          to label %.noexc14 unwind label %bb.q

.noexc14:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.q ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.j, %.noexc14, %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !65 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !55
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_0
