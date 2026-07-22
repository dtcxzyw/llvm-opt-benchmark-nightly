inline.NumInlined: 41205
inline.NumDeleted: 6297
loop-unroll.NumCompletelyUnrolled: 157
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 231
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_123TryExtractIDFromWKTNodeB5cxx11ERKNS0_10WKTKeywordE:bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.cp)
          to label %bb.z unwind label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.cq = load i64, ptr %i.h, align 8, !tbaa !152, !alias.scope !3170
  %i.cr = sub i64 4611686018427387903, %i.cq
  %i.cs = icmp ult i64 %i.cr, %i.co
  br i1 %i.cs, label %.invoke.i.i92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i89: ; preds = %bb.z
  %i.ct = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.cn, i64 noundef %i.co)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i90 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i90: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i89
  %i.cu = load i64, ptr %i.h, align 8, !tbaa !152, !alias.scope !3170
  %i.cv = icmp eq i64 %i.cu, 4611686018427387903
  br i1 %i.cv, label %.invoke.i.i92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i91

.invoke.i.i92:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i90, %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.432) #49
          to label %.cont.i.i93 unwind label %.loopexit.split-lp

.cont.i.i93:                                      ; preds = %.invoke.i.i92
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i90
  %i.cw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.265, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit96 unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i91
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %.invoke.i.i92
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cx = load ptr, ptr %6, align 8, !tbaa !89, !alias.scope !3170 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.g
  br i1 %i.cy, label %.body94, label %.body94.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit96: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i91
  %.val45 = load ptr, ptr %i.ab, align 8, !tbaa !3140 ; 3 uses
  %i.cz = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_18WKTValueESt14default_deleteIS2_ELb1EEptEv(ptr %.val45)
          to label %bb.ab unwind label %.loopexit8 ; 0 uses

bb.ab:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit96
  call void @llvm.experimental.noalias.scope.decl(metadata !3173)
  %i.da = getelementptr inbounds nuw i8, ptr %.val45, i64 24
  %i.db = load i64, ptr %i.da, align 8, !tbaa !152, !noalias !3173 ; 2 uses
  %i.dc = load i64, ptr %i.h, align 8, !tbaa !152, !noalias !3173
  %i.dd = sub i64 4611686018427387903, %i.dc
  %i.de = icmp ult i64 %i.dd, %i.db
  br i1 %i.de, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.432) #49
          to label %.noexc98 unwind label %.loopexit.split-lp9

.noexc98:                                         ; preds = %bb.ac
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.ab
  %i.df = getelementptr inbounds nuw i8, ptr %.val45, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !89, !noalias !3173
  %i.dh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.dg, i64 noundef %i.db)
          to label %.noexc99 unwind label %.loopexit8 ; 6 uses

.noexc99:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.e, ptr %0, align 8, !tbaa !151, !alias.scope !3173
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !89 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 5 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

bb.ad:                                            ; preds = %.noexc99
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !152 ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 16
  call void @llvm.assume(i1 %i.dn)
  %i.do = add nuw nsw i64 %i.dm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.dj, i64 %i.do, i1 false)
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %.noexc99
  store ptr %i.di, ptr %0, align 8, !tbaa !89, !alias.scope !3173
  %i.dp = load i64, ptr %i.dj, align 8, !tbaa !153
  store i64 %i.dp, ptr %i.e, align 8, !tbaa !153, !alias.scope !3173
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !152
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.ad
  %i.dq = phi i64 [ %i.dm, %bb.ad ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %i.dq, ptr %i.f, align 8, !tbaa !152, !alias.scope !3173
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !89
  store i64 0, ptr %i.dr, align 8, !tbaa !152
  store i8 0, ptr %i.dj, align 8, !tbaa !153
  %i.ds = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.g
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.ds) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %bb.ah

.loopexit8:                                       ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit10 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp9:                              ; preds = %bb.ac
  %lpad.loopexit.split-lp11 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp9, %.loopexit8
  %lpad.phi12 = phi { ptr, i32 } [ %lpad.loopexit10, %.loopexit8 ], [ %lpad.loopexit.split-lp11, %.loopexit.split-lp9 ] ; 2 uses
  %i.du = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.g
  br i1 %i.dv, label %.body94, label %.body94.sink.split

.body94.sink.split:                               ; preds = %bb.af, %bb.aa
  %.sink85 = phi ptr [ %i.cx, %bb.aa ], [ %i.du, %bb.af ]
  %.pn.ph = phi { ptr, i32 } [ %lpad.phi, %bb.aa ], [ %lpad.phi12, %bb.af ]
  call void @_ZdlPv(ptr noundef %.sink85) #47
  br label %.body94

.body94:                                          ; preds = %.body94.sink.split, %bb.af, %bb.aa
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.aa ], [ %lpad.phi12, %bb.af ], [ %.pn.ph, %.body94.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %bb.ai

bb.ag:                                            ; preds = %bb.x
  store ptr %i.e, ptr %0, align 8, !tbaa !151
  store i64 0, ptr %i.f, align 8, !tbaa !152
  store i8 0, ptr %i.e, align 8, !tbaa !153
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %bb.k, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %cond1 = phi i1 [ false, %bb.ag ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ true, %bb.k ]
  %i.dw = load ptr, ptr %2, align 8, !tbaa !89    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.c
  br i1 %i.dx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef %i.dw) #47
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i107

bb.ai:                                            ; preds = %bb.m, %.body, %.body94, %bb.l
  %.pn38.pn.pn.pn.pn = phi { ptr, i32 } [ %i.az, %bb.l ], [ %.pn, %.body94 ], [ %.pn38.pn.pn, %.body ], [ %i.ba, %bb.m ]
  %i.dy = load ptr, ptr %2, align 8, !tbaa !89    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.c
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.dy) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  resume { ptr, i32 } %.pn38.pn.pn.pn.pn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i107: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br i1 %cond1, label %.thread, label %.loopexit18

.thread:                                          ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i107
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.02.061, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ea, %.56.val
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.thread, %bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.eb, ptr %0, align 8, !tbaa !151
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ec, align 8, !tbaa !152
  store i8 0, ptr %i.eb, align 8, !tbaa !153
  br label %.loopexit18

.loopexit18:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i107, %._crit_edge
  ret void
}

declare void @_ZN6duckdb10StringUtil4TrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb25CoordinateReferenceSystem16TryParsePROJJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::allocator.20", align 1 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::allocator.20", align 1 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.20", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::allocator.20", align 1 ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %17 = alloca %"class.std::allocator.20", align 1 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !152
  %i.g = tail call noundef ptr @_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE(ptr noundef %i.d, i64 noundef %i.f, i32 noundef 0, ptr noundef null, ptr noundef null) ; 13 uses
  %.not328 = icmp eq ptr %i.g, null
  br i1 %.not328, label %_ZNSt10unique_ptrIN13duckdb_yyjson10yyjson_docEPFvPS1_EED2Ev.exit280, label %_ZN13duckdb_yyjsonL19yyjson_doc_get_rootEPNS_10yyjson_docE.exit

_ZN13duckdb_yyjsonL19yyjson_doc_get_rootEPNS_10yyjson_docE.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3176 ; 5 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread320, label %bb.b

bb.b:                                             ; preds = %_ZN13duckdb_yyjsonL19yyjson_doc_get_rootEPNS_10yyjson_docE.exit
  %i.i = load i64, ptr %i.h, align 8, !tbaa !3180 ; 2 uses
  %i.j = and i64 %i.i, 7
  %i.k = icmp eq i64 %i.j, 7
  br i1 %i.k, label %bb.c, label %.thread320

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 %i.i, 8                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.not.i156.not349 = icmp eq i64 %i.l, 0
  br i1 %.not.i156.not349, label %.thread320, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.noexc
  %.in = phi i64 [ %i.n, %.noexc ], [ %i.l, %bb.c ]
  %.011.i350 = phi ptr [ %i.ad, %.noexc ], [ %i.m, %bb.c ] ; 6 uses
  %i.n = add nsw i64 %.in, -1                     ; 2 uses
  %i.o = load i64, ptr %.011.i350, align 8, !tbaa !3180
  %.mask = and i64 %i.o, -256
  %i.p = icmp eq i64 %.mask, 1024
  br i1 %i.p, label %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit201, label %.noexc

_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit201: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.011.i350, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !153
  %i.s = load i32, ptr %i.r, align 1
  %i.t = icmp ne i32 %i.s, 1701869940
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.d, label %.noexc

.noexc:                                           ; preds = %.lr.ph, %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit201
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i350, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !3180
  %i.y = and i64 %i.x, 6
  %i.z = icmp eq i64 %i.y, 6
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.i350, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !153
  %i.ac = select i1 %i.z, i64 %i.ab, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ac
  %.not.i156.not = icmp eq i64 %i.n, 0
  br i1 %.not.i156.not, label %.thread320, label %.lr.ph, !llvm.loop !3182

bb.d:                                             ; preds = %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit201
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i350, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !3180
  %i.ag = and i64 %i.af, 7
  %i.ah = icmp eq i64 %i.ag, 5
  br i1 %i.ah, label %18, label %.thread320

18:                                               ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %19 = load i64, ptr %i.ae, align 8, !tbaa !3180
  %20 = and i64 %19, 7
  %21 = icmp eq i64 %20, 5
  br i1 %21, label %_ZN13duckdb_yyjsonL14yyjson_get_strEPNS_10yyjson_valE.exit155, label %_ZN13duckdb_yyjsonL14yyjson_get_strEPNS_10yyjson_valE.exit155.thread

_ZN13duckdb_yyjsonL14yyjson_get_strEPNS_10yyjson_valE.exit155.thread: ; preds = %18
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %22, ptr %2, align 8, !tbaa !151
  br label %bb.e

_ZN13duckdb_yyjsonL14yyjson_get_strEPNS_10yyjson_valE.exit155: ; preds = %18
  %i.ai = getelementptr inbounds nuw i8, ptr %.011.i350, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !153 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.ak, ptr %2, align 8, !tbaa !151
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN13duckdb_yyjsonL14yyjson_get_strEPNS_10yyjson_valE.exit155.thread, %_ZN13duckdb_yyjsonL14yyjson_get_strEPNS_10yyjson_valE.exit155
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.436) #49
          to label %.noexc213 unwind label %bb.k

.noexc213:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZN13duckdb_yyjsonL14yyjson_get_strEPNS_10yyjson_valE.exit155
  %i.am = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #46 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i64 %i.am, ptr %i.b, align 8, !tbaa !108
  %i.an = icmp ugt i64 %i.am, 15
  br i1 %i.an, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.ao = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc214 unwind label %bb.k  ; 2 uses

.noexc214:                                        ; preds = %.noexc.i
  store ptr %i.ao, ptr %2, align 8, !tbaa !89
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !108
  store i64 %i.ap, ptr %i.ak, align 8, !tbaa !153
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc214, %bb.f
  %i.aq = phi ptr [ %i.ao, %.noexc214 ], [ %i.ak, %bb.f ] ; 2 uses
  switch i64 %i.am, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !153
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !153
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr nonnull align 1 %i.aj, i64 %i.am, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.as = load i64, ptr %i.b, align 8, !tbaa !108 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !152
  %i.au = load ptr, ptr %2, align 8, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 0, ptr %i.av, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.l

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.093.add = add nuw nsw i64 %.093.idx351, 8     ; 2 uses
  %.not108.not = icmp eq i64 %.093.add, 72
  br i1 %.not108.not, label %.critedge, label %bb.l

bb.k:                                             ; preds = %.noexc.i, %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i276

bb.l:                                             ; preds = %bb.i, %bb.j
  %.093.idx351 = phi i64 [ 0, %bb.i ], [ %.093.add, %bb.j ] ; 2 uses
  %.093.ptr = getelementptr inbounds nuw i8, ptr @constinit.259, i64 %.093.idx351
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.az = load ptr, ptr %.093.ptr, align 8, !tbaa !945 ; 4 uses
  store ptr %i.aw, ptr %3, align 8, !tbaa !151
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.436) #49
          to label %.noexc217 unwind label %.loopexit.split-lp

.noexc217:                                        ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #46 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !108
  %i.bc = icmp ugt i64 %i.bb, 15
  br i1 %i.bc, label %.noexc.i216, label %._crit_edge.i.i215

.noexc.i216:                                      ; preds = %bb.n
  %i.bd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc218 unwind label %.loopexit ; 2 uses

.noexc218:                                        ; preds = %.noexc.i216
  store ptr %i.bd, ptr %3, align 8, !tbaa !89
  %i.be = load i64, ptr %i.a, align 8, !tbaa !108
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !153
  br label %._crit_edge.i.i215

._crit_edge.i.i215:                               ; preds = %.noexc218, %bb.n
  %i.bf = phi ptr [ %i.bd, %.noexc218 ], [ %i.aw, %bb.n ] ; 2 uses
  switch i64 %i.bb, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i215
  %i.bg = load i8, ptr %i.az, align 1, !tbaa !153
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !153
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i215
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr nonnull align 1 %i.az, i64 %i.bb, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i215
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  store i64 %i.bh, ptr %i.ax, align 8, !tbaa !152
  %i.bi = load ptr, ptr %3, align 8, !tbaa !89
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store i8 0, ptr %i.bj, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.bk = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.aw
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.bl) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br i1 %i.bk, label %._crit_edge.i.i223, label %bb.j

.loopexit:                                        ; preds = %.noexc.i216
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

bb.s:                                             ; preds = %bb.q
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.aw
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.bo) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %bb.s, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
  %.pn = phi { ptr, i32 } [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.bn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %bb.bk

._crit_edge.i.i223:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.bq, ptr %4, align 8, !tbaa !151
  store i64 6003935351867273026, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 8, ptr %i.br, align 8, !tbaa !152
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.bs, align 8, !tbaa !153
  %i.bt = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %._crit_edge.i.i223
  %i.bu = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bq
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.bu) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !3180 ; 3 uses
  br i1 %i.bt, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229._crit_edge

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  %i.bx = and i64 %i.bw, 7
  %i.by = icmp ne i64 %i.bx, 7
  %i.bz = lshr i64 %i.bw, 8                       ; 2 uses
  %.not.i160.not352 = icmp eq i64 %i.bz, 0
  %or.cond = or i1 %i.by, %.not.i160.not352
  br i1 %or.cond, label %.critedge, label %.lr.ph354, !prof !3183

.lr.ph354:                                        ; preds = %bb.u, %.noexc162
  %.in367 = phi i64 [ %i.ca, %.noexc162 ], [ %i.bz, %bb.u ]
  %.011.i159353 = phi ptr [ %i.cv, %.noexc162 ], [ %i.m, %bb.u ] ; 5 uses
  %i.ca = add nsw i64 %.in367, -1                 ; 2 uses
  %i.cb = load i64, ptr %.011.i159353, align 8, !tbaa !3180
  %.mask329 = and i64 %i.cb, -256
  %i.cc = icmp eq i64 %.mask329, 3584
end_hunk_0
