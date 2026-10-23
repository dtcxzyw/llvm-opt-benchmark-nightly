Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_expression?download=true
inline.NumInlined: 4529
inline.NumDeleted: 1763
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6duckdb18FunctionExpression5EqualERKS0_S2_:bb.a
  br i1 %.not37, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit29.thread33, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit29.thread33: ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit29
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = load i64, ptr %i.w, align 8, !tbaa !35   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.z = load i64, ptr %i.y, align 8, !tbaa !35
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit29.thread33
  %i.ab = icmp eq i64 %i.x, 0
  br i1 %i.ab, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit31.thread34, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit31

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit31: ; preds = %bb.d
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !42
  %bcmp.i.i30 = tail call i32 @bcmp(ptr %i.ad, ptr %i.ac, i64 %i.x)
  %.not38 = icmp eq i32 %bcmp.i.i30, 0
  br i1 %.not38, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit31.thread34, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit31.thread34: ; preds = %bb.d, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit31
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !129, !range !78, !noundef !79
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !129, !range !78, !noundef !79
  %.not = icmp eq i8 %i.af, %i.ah
  br i1 %.not, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.e:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit31.thread34
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !92
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !94
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !92 ; 2 uses
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !94 ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %.not26 = icmp eq i64 %i.ao, %i.av
  br i1 %.not26, label %.preheader, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

.preheader:                                       ; preds = %bb.e
  %.not40 = icmp eq ptr %i.ar, %i.as
  br i1 %.not40, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.aw = add nuw i64 %.02439, 1                  ; 2 uses
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !92
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !94
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = icmp ult i64 %i.aw, %i.bc
  br i1 %i.bd, label %.lr.ph, label %._crit_edge, !llvm.loop !477

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.02439 = phi i64 [ %i.aw, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 noundef %.02439)
  %i.bf = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be) ; 2 uses
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %.02439)
  %i.bh = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(56) %i.bf, ptr noundef nonnull align 8 dereferenceable(56) %i.bh)
  br i1 %i.bl, label %bb.f, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bo = tail call noundef zeroext i1 @_ZN6duckdb16ParsedExpression6EqualsERKNS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.bn)
  br i1 %i.bo, label %bb.g, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.g:                                             ; preds = %._crit_edge
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.br = tail call noundef zeroext i1 @_ZN6duckdb13OrderModifier6EqualsERKNS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %i.bq)
  br i1 %i.br, label %bb.h, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !131, !range !78, !noundef !79
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !131, !range !78, !noundef !79
  %.not27 = icmp eq i8 %i.bt, %i.bv
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %.lr.ph, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit29.thread33, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread32, %bb.a, %bb.h, %bb.g, %._crit_edge, %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit29, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit31, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit31.thread34
  %.1 = phi i1 [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread32 ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %.not27, %bb.h ], [ false, %bb.g ], [ false, %._crit_edge ], [ false, %bb.e ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit31.thread34 ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit31 ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit29 ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit29.thread33 ], [ false, %bb.a ], [ false, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.e = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !46
  store i64 %i.i, ptr %i.b, align 8, !tbaa !46
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERKS5_m.exit, label %bb.b, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERKS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

declare noundef zeroext i1 @_ZN6duckdb16ParsedExpression6EqualsERKNS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN6duckdb13OrderModifier6EqualsERKNS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6duckdb18FunctionExpression4HashEv(ptr noundef nonnull align 8 dereferenceable(209) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK6duckdb16ParsedExpression4HashEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = tail call noundef i64 @_ZN6duckdb4HashIPKcEEmT_(ptr noundef %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = tail call noundef i64 @_ZN6duckdb4HashIPKcEEmT_(ptr noundef %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load i8, ptr %i.h, align 8, !tbaa !129, !range !78, !noundef !79
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = select i1 %i.j, i64 -2960836687051489901, i64 0 ; 2 uses
  %1 = lshr i64 %i.k, 32
  %2 = xor i64 %1, %i.k
  %3 = mul i64 %2, -2960836687051489901           ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = load i8, ptr %i.l, align 8, !tbaa !131, !range !78, !noundef !79
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.n, i64 -2960836687051489901, i64 0 ; 2 uses
  %4 = lshr i64 %i.o, 32
  %5 = xor i64 %4, %i.o
  %6 = mul i64 %5, -2960836687051489901           ; 2 uses
  %i.p = xor i64 %6, %3
  %i.q = lshr i64 %i.p, 32
  %i.r = xor i64 %i.a, %i.d
  %i.s = xor i64 %i.r, %i.g
  %i.t = xor i64 %i.s, %i.q
  %i.u = xor i64 %i.t, %3
  %i.v = xor i64 %i.u, %6
  ret i64 %i.v
}

declare noundef i64 @_ZN6duckdb4HashIPKcEEmT_(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb18FunctionExpression4CopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(209) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::vector.41", align 8 ; 16 uses
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 8 uses
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %5 = alloca %"class.duckdb::unique_ptr", align 8 ; 5 uses
  %6 = alloca %"class.duckdb::unique_ptr.105", align 8 ; 7 uses
  %7 = alloca %"class.duckdb::unique_ptr.114", align 8 ; 3 uses
  %8 = alloca %"class.duckdb::unique_ptr.129", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr null, ptr %3, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92   ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #27
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.not78 = icmp eq ptr %i.c, %i.d
  br i1 %.not78, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #29
          to label %.noexc16 unwind label %bb.e   ; 9 uses

.noexc16:                                         ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %i.l = load ptr, ptr %2, align 8, !tbaa !94     ; 10 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !92   ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc16
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = ptrtoaddr ptr %i.l to i64
  %i.p = add i64 %i.n, -8
  %i.q = sub i64 %i.p, %i.o                       ; 3 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader110, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.t = and i64 %i.q, -8
  %i.u = add i64 %i.t, 8                          ; 2 uses
  %i.v = getelementptr i8, ptr %i.k, i64 %i.u
  %i.w = getelementptr i8, ptr %i.l, i64 %i.u
  %bound0 = icmp ult ptr %i.k, %i.w
  %bound1 = icmp ult ptr %i.l, %i.v
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader110, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.k, i64 %i.x
  %i.z = getelementptr i8, ptr %i.l, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.aa ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.l, i64 %i.aa ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.ab = getelementptr i8, ptr %next.gep83, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep83, align 8, !tbaa !41, !alias.scope !498
  %wide.load84 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !41, !alias.scope !498
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !41, !alias.scope !499, !noalias !500
  store <2 x i64> %wide.load84, ptr %i.ac, align 8, !tbaa !41, !alias.scope !499, !noalias !500
  %i.ad = getelementptr i8, ptr %next.gep83, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep83, align 8, !tbaa !41, !alias.scope !498
  store <2 x ptr> splat (ptr null), ptr %i.ad, align 8, !tbaa !41, !alias.scope !498
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !484

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader110

.lr.ph.i.i.i.i.i.preheader110:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader110, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader110 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader110 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.af = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !41, !alias.scope !497
  store i64 %i.af, ptr %.012.i.i.i.i.i, align 8, !tbaa !41, !alias.scope !496
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !41, !alias.scope !497
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !485

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc16
  %.not.i8.i = icmp eq ptr %i.l, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #28
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.k, ptr %2, align 8, !tbaa !94
  store ptr %i.k, ptr %i.j, align 8, !tbaa !92
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !93
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !90
  %.pre55 = load ptr, ptr %i.b, align 8, !tbaa !90
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.c
  %i.aj = phi ptr [ %.pre55, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.ak = phi ptr [ %.pre, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.d, %bb.c ] ; 2 uses
  %.not52 = icmp eq ptr %i.ak, %i.aj
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !41
  %.not50 = icmp eq ptr %i.an, null
  br i1 %.not50, label %bb.p, label %bb.m

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit43

bb.f:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.044.053 = phi ptr [ %i.ak, %.lr.ph ], [ %i.ci, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ap = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.044.053)
          to label %bb.g unwind label %bb.l       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.ap)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !92 ; 6 uses
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !93
  %.not.i.i = icmp eq ptr %i.at, %i.au
  br i1 %.not.i.i, label %bb.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.h
  %i.av = load i64, ptr %4, align 8, !tbaa !41
  store i64 %i.av, ptr %i.at, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.aw, ptr %i.al, align 8, !tbaa !92
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %2, align 8, !tbaa !94    ; 10 uses
  %i.ay = ptrtoint ptr %i.at to i64               ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bb, label %bb.j, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #27
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.j
  unreachable

end_hunk_0
