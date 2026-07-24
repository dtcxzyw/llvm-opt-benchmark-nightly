inline.NumInlined: 11767
inline.NumDeleted: 5033
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6duckdb22WindowDistinctSortTree10TryNextRunERmS1_:bb.a
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !827
  %i.be = shl i64 %i.bd, 5                        ; 3 uses
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !827
  %i.bf = add i64 %i.be, -1
  %i.bg = add i64 %i.bf, %i.bb
  %i.bh = udiv i64 %i.bg, %i.be                   ; 2 uses
  store i64 %i.bh, ptr %i.n, align 8, !tbaa !828
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.bi, align 8, !tbaa !817
  store atomic i64 0, ptr %i.l seq_cst, align 8
  br label %bb.n

_ZN6duckdb6vectorISt4pairINS0_ISt5tupleIJmmEELb1ESaIS3_EEENS0_ImLb1ESaImEEEELb1ESaIS8_EE5clearEv.exit: ; preds = %_ZSt8_DestroyISt4pairIN6duckdb6vectorISt5tupleIJmmEELb1ESaIS4_EEENS2_ImLb1ESaImEEEEEvPT_.exit.i.i.i.i.i
  store ptr %i.am, ptr %i.an, align 8, !tbaa !842
  br label %_ZN6duckdb6vectorISt4pairINS0_ISt5tupleIJmmEELb1ESaIS3_EEENS0_ImLb1ESaImEEEELb1ESaIS8_EE5clearEv.exit.thread17

bb.l:                                             ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.l ], [ %i.at, %bb.j ]
  %i.bk = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %._crit_edge, %_ZN6duckdb6vectorISt4pairINS0_ISt5tupleIJmmEELb1ESaIS3_EEENS0_ImLb1ESaImEEEELb1ESaIS8_EE5clearEv.exit.thread
  %i.bl = phi i64 [ %i.o, %._crit_edge ], [ %i.bh, %_ZN6duckdb6vectorISt4pairINS0_ISt5tupleIJmmEELb1ESaIS3_EEENS0_ImLb1ESaImEEEELb1ESaIS8_EE5clearEv.exit.thread ]
  %i.bm = phi i64 [ %.pre, %._crit_edge ], [ 0, %_ZN6duckdb6vectorISt4pairINS0_ISt5tupleIJmmEELb1ESaIS3_EEENS0_ImLb1ESaImEEEELb1ESaIS8_EE5clearEv.exit.thread ]
  %.not15 = icmp ult i64 %i.bm, %i.bl
  br i1 %.not15, label %bb.o, label %_ZN6duckdb6vectorISt4pairINS0_ISt5tupleIJmmEELb1ESaIS3_EEENS0_ImLb1ESaImEEEELb1ESaIS8_EE5clearEv.exit.thread17

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bo = load atomic i64, ptr %i.c seq_cst, align 8
  store i64 %i.bo, ptr %1, align 8, !tbaa !252
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !817 ; 2 uses
  %i.bq = add i64 %i.bp, 1
  store i64 %i.bq, ptr %i.bn, align 8, !tbaa !817
  store i64 %i.bp, ptr %2, align 8, !tbaa !252
  br label %_ZN6duckdb6vectorISt4pairINS0_ISt5tupleIJmmEELb1ESaIS3_EEENS0_ImLb1ESaImEEEELb1ESaIS8_EE5clearEv.exit.thread17

_ZN6duckdb6vectorISt4pairINS0_ISt5tupleIJmmEELb1ESaIS3_EEENS0_ImLb1ESaImEEEELb1ESaIS8_EE5clearEv.exit.thread17: ; preds = %_ZN6duckdb6vectorISt4pairINS0_ISt5tupleIJmmEELb1ESaIS3_EEENS0_ImLb1ESaImEEEELb1ESaIS8_EE5clearEv.exit, %bb.g, %bb.n, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.o
  %.1 = phi i1 [ false, %_ZN6duckdb6vectorISt4pairINS0_ISt5tupleIJmmEELb1ESaIS3_EEENS0_ImLb1ESaImEEEELb1ESaIS8_EE5clearEv.exit ], [ false, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ true, %bb.o ], [ false, %bb.n ], [ false, %bb.g ]
  %i.br = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !854
  %i.e = load ptr, ptr %0, align 8, !tbaa !853    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 48                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !252
  store i64 %i.i, ptr %i.b, align 8, !tbaa !252
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EE3getILb1EEERS4_m.exit, label %bb.b, !prof !257

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !156    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EE3getILb1EEERS4_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22WindowDistinctSortTree8BuildRunEmmRNS_34WindowDistinctAggregatorLocalStateE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(1416) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.duckdb::AggregateInputData", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !971, !nonnull !42, !align !232 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 4 uses
  %i.d = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_12WindowCursorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !971, !nonnull !42, !align !232 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 464 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 536 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 544 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !335
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !336
  br label %_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit

_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit: ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.m, ptr %4, align 8, !tbaa !336
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !337
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.p, align 8, !tbaa !339
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !316
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !316
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 360 ; 4 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 392
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !316
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !971, !nonnull !42, !align !232
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 864
  %i.ab = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt4pairINS0_ISt5tupleIJmmEELb1ESaIS3_EEENS0_ImLb1ESaImEEEELb1ESaIS8_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef %1) ; 4 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt4pairINS0_ImLb1ESaImEEES3_ELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !827 ; 2 uses
  %i.af = mul i64 %i.ae, %2                       ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !847
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !850
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 4                 ; 2 uses
  %i.an = add i64 %i.af, %i.ae
  %i.ao = tail call noundef i64 @llvm.umin.i64(i64 %i.am, i64 %i.an) ; 2 uses
  %i.ap = icmp ult i64 %i.af, %i.ao
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit
  %i.aq = mul i64 %i.am, %1
  %i.ar = add i64 %i.aq, %i.af
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 1600
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 1520
  %5 = add i64 %i.af, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 432 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 472 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 440 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.k, %_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit
  %.0103.lcssa = phi i64 [ 0, %_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit ], [ %.4, %bb.k ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit ], [ %.3, %bb.k ] ; 3 uses
  %i.ax = icmp ne i64 %.0103.lcssa, 0
  %i.ay = icmp ne i64 %.0.lcssa, 0
  %or.cond = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond, label %bb.l, label %bb.m

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %.0114 = phi i64 [ 0, %.lr.ph ], [ %.3, %bb.k ] ; 4 uses
  %.0103113 = phi i64 [ 0, %.lr.ph ], [ %.4, %bb.k ] ; 3 uses
  %.0107112 = phi ptr [ null, %.lr.ph ], [ %i.bd, %bb.k ] ; 2 uses
  %.0108111 = phi i64 [ %i.af, %.lr.ph ], [ %i.dj, %bb.k ] ; 4 uses
  %.0109110 = phi i64 [ %i.ar, %.lr.ph ], [ %i.az, %bb.k ] ; 2 uses
  %i.az = add i64 %.0109110, 1
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !311
  %i.bb = load i64, ptr %i.at, align 8, !tbaa !265
  %i.bc = mul i64 %i.bb, %.0109110
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc ; 3 uses
  %i.be = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorISt5tupleIJmmEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %.0108111)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !252 ; 2 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %.0108111)
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !252
  %6 = icmp ult i64 %i.bg, %5
  br i1 %6, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.bi = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorISt5tupleIJmmEELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %.0108111)
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !252 ; 6 uses
  %i.bk = call noundef ptr @_ZNK6duckdb10unique_ptrINS_12WindowCursorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !499
  %i.bn = icmp ult i64 %i.bj, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 104
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = icmp ule i64 %i.bp, %i.bj
  %i.br = select i1 %i.bn, i1 %i.bq, i1 false
  br i1 %i.br, label %_ZN6duckdb12WindowCursor4SeekEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb9DataChunk9ReferenceERS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.e)
  call void @_ZN6duckdb9DataChunk5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.0114)
  %i.bs = load ptr, ptr %i.au, align 8, !tbaa !154
  %i.bt = load ptr, ptr %i.g, align 8, !tbaa !569 ; 2 uses
  %i.bu = load ptr, ptr %i.av, align 8, !tbaa !568
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = sdiv exact i64 %i.bx, 104
  call void %i.bs(ptr noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(17) %4, i64 noundef %i.by, ptr noundef nonnull align 8 dereferenceable(104) %i.q, i64 noundef %.0114)
  %i.bz = load ptr, ptr %i.aw, align 8, !tbaa !343
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(104) %i.t, ptr noundef nonnull align 8 dereferenceable(104) %i.w, ptr noundef nonnull align 8 dereferenceable(17) %4, i64 noundef %.0103113)
  %i.ca = call noundef ptr @_ZNK6duckdb10unique_ptrINS_12WindowCursorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 112
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !499
  %i.cd = icmp ult i64 %i.bj, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 104
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = icmp ule i64 %i.cf, %i.bj
  %i.ch = select i1 %i.cd, i1 %i.cg, i1 false
  br i1 %i.ch, label %_ZN6duckdb12WindowCursor4SeekEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ci = load ptr, ptr %i.ca, align 8, !tbaa !510, !nonnull !42, !align !232
  %i.cj = call noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 152
  %i.cm = call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.cj, i64 noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(144) %i.ck, ptr noundef nonnull align 8 dereferenceable(72) %i.cl) ; 0 uses
  br label %_ZN6duckdb12WindowCursor4SeekEm.exit

_ZN6duckdb12WindowCursor4SeekEm.exit:             ; preds = %bb.f, %bb.e, %bb.d
  %.1104 = phi i64 [ %.0103113, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ]
  %.1 = phi i64 [ %.0114, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.1
  store ptr %i.bd, ptr %i.cn, align 8, !tbaa !330
  %i.co = call noundef ptr @_ZNK6duckdb10unique_ptrINS_12WindowCursorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !511
  %i.cr = sub i64 %i.bj, %i.cq
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = load ptr, ptr %i.h, align 8, !tbaa !389
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.1
  store i32 %i.cs, ptr %i.cu, align 4, !tbaa !3
  %i.cv = add i64 %.1, 1
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb12WindowCursor4SeekEm.exit, %bb.c
  %.2105 = phi i64 [ %.1104, %_ZN6duckdb12WindowCursor4SeekEm.exit ], [ %.0103113, %bb.c ] ; 4 uses
  %.2 = phi i64 [ %i.cv, %_ZN6duckdb12WindowCursor4SeekEm.exit ], [ %.0114, %bb.c ] ; 4 uses
  %.not = icmp eq ptr %.0107112, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.2105
  store ptr %.0107112, ptr %i.cw, align 8, !tbaa !330
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.2105
  store ptr %i.bd, ptr %i.cx, align 8, !tbaa !330
  %i.cy = add i64 %.2105, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3106 = phi i64 [ %i.cy, %bb.h ], [ %.2105, %bb.g ] ; 3 uses
  %i.cz = call noundef i64 @llvm.umax.i64(i64 %.3106, i64 %.2)
  %i.da = icmp ugt i64 %i.cz, 2047
  br i1 %i.da, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZN6duckdb9DataChunk9ReferenceERS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.e)
  call void @_ZN6duckdb9DataChunk5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.2)
  %i.db = load ptr, ptr %i.au, align 8, !tbaa !154
  %i.dc = load ptr, ptr %i.g, align 8, !tbaa !569 ; 2 uses
  %i.dd = load ptr, ptr %i.av, align 8, !tbaa !568
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = sdiv exact i64 %i.dg, 104
  call void %i.db(ptr noundef %i.dc, ptr noundef nonnull align 8 dereferenceable(17) %4, i64 noundef %i.dh, ptr noundef nonnull align 8 dereferenceable(104) %i.q, i64 noundef %.2)
  %i.di = load ptr, ptr %i.aw, align 8, !tbaa !343
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(104) %i.t, ptr noundef nonnull align 8 dereferenceable(104) %i.w, ptr noundef nonnull align 8 dereferenceable(17) %4, i64 noundef %.3106)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.4 = phi i64 [ 0, %bb.j ], [ %.3106, %bb.i ]   ; 2 uses
  %.3 = phi i64 [ 0, %bb.j ], [ %.2, %bb.i ]      ; 2 uses
  %i.dj = add nuw i64 %.0108111, 1                ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.ao
  br i1 %i.dk, label %bb.c, label %._crit_edge, !llvm.loop !972

bb.l:                                             ; preds = %._crit_edge
  call void @_ZN6duckdb9DataChunk9ReferenceERS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.e)
  call void @_ZN6duckdb9DataChunk5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.0.lcssa)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !154
  %i.dn = load ptr, ptr %i.g, align 8, !tbaa !569 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 472
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !568
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = sdiv exact i64 %i.ds, 104
  call void %i.dm(ptr noundef %i.dn, ptr noundef nonnull align 8 dereferenceable(17) %4, i64 noundef %i.dt, ptr noundef nonnull align 8 dereferenceable(104) %i.q, i64 noundef %.0.lcssa)
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !343
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(104) %i.t, ptr noundef nonnull align 8 dereferenceable(104) %i.w, ptr noundef nonnull align 8 dereferenceable(17) %4, i64 noundef %.0103.lcssa)
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dx = atomicrmw add ptr %i.dw, i64 1 seq_cst, align 8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb34WindowDistinctAggregatorLocalState11FlushStatesEv(ptr noundef nonnull align 8 dereferenceable(1416) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.duckdb::AggregateInputData", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !973  ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !936, !nonnull !42, !align !232 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 544 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !335
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_19FunctionDataWrapperELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !336
  %.pre = load i64, ptr %i.a, align 8, !tbaa !973
  br label %_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit

_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit: ; preds = %bb.b, %bb.c
  %i.i = phi i64 [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  %i.j = phi ptr [ %i.h, %bb.c ], [ null, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.j, ptr %1, align 8, !tbaa !336
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !337
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.m, align 8, !tbaa !339
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  tail call void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %i.n, i64 noundef %i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !343
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.r = load i64, ptr %i.a, align 8, !tbaa !973
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(104) %i.n, ptr noundef nonnull align 8 dereferenceable(104) %i.q, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %i.r)
  store i64 0, ptr %i.a, align 8, !tbaa !973
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK6duckdb15AggregateObject15GetFunctionDataEv.exit
  ret void
}

declare void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb34WindowDistinctAggregatorLocalState8EvaluateERNS_16ExecutionContextERKNS_35WindowDistinctAggregatorGlobalStateERKNS_9DataChunkERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(1416) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(1656) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.duckdb::AggregateInputData", align 8 ; 6 uses
  %8 = alloca %"struct.duckdb::AggregateInputData", align 8 ; 6 uses
  %9 = alloca %"struct.duckdb::AggregateInputData", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 3 uses
  %i.l = alloca i64, align 8                      ; 3 uses
  %i.m = alloca i64, align 8                      ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
end_hunk_0
