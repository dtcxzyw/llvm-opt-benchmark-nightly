Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_main?download=true
inline.NumInlined: 40819
inline.NumDeleted: 11673
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6duckdb8DBConfig16ParseLogicalTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  %i.y = phi ptr [ %i.w, %.noexc10.i.i ], [ %i.t, %bb.b ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i8, ptr %i.u, align 1, !tbaa !287
  store i8 %i.z, ptr %i.y, align 1, !tbaa !287
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.u, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.aa = load i64, ptr %i.j, align 8, !tbaa !261, !noalias !2813 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !289, !alias.scope !2813
  %i.ac = load ptr, ptr %4, align 8, !tbaa !259, !alias.scope !2813
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28, !noalias !2813
  invoke void @_ZN6duckdb8DBConfig16ParseLogicalTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.ae = load ptr, ptr %4, align 8, !tbaa !259   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.t
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.ae) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  invoke void @_ZN6duckdb11LogicalType4LISTERKS0_(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.gz

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %2, align 8, !tbaa !259   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.k
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ah) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %4, align 8, !tbaa !259   ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.t
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.ak) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  %.pn232 = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

._crit_edge.i.i254:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.an, ptr %5, align 8, !tbaa !288
  store i8 93, ptr %i.an, align 8, !tbaa !287
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.ao, align 8, !tbaa !289
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.ap, align 1, !tbaa !287
  %i.aq = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %._crit_edge.i.i254
  %i.ar = load ptr, ptr %5, align 8, !tbaa !259   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.an
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.ar) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.aq, label %bb.l, label %bb.am

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  %i.at = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 91, i64 noundef -1) #28 ; 2 uses
  %i.au = add i64 %i.at, 1                        ; 3 uses
  %or.cond = icmp ult i64 %i.au, 2
  br i1 %or.cond, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !289 ; 2 uses
  %i.ax = add i64 %i.aw, -1                       ; 2 uses
  %i.ay = icmp ult i64 %i.au, %i.ax
  br i1 %i.ay, label %.lr.ph627, label %._crit_edge628.thread

.lr.ph627:                                        ; preds = %.preheader
  %i.az = load ptr, ptr %1, align 8, !tbaa !259
  br label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ba = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.390, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.n unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266.thread

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6duckdb17InternalExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #43
          to label %bb.ha unwind label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i254
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %5, align 8, !tbaa !259   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.an
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.bc) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266.thread: ; preds = %bb.m
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  %.0117 = phi i1 [ false, %bb.o ], [ true, %bb.n ] ; 2 uses
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bg = load ptr, ptr %6, align 8, !tbaa !259   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.bg) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.0117, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %.0117, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266
  %.pn229562 = phi { ptr, i32 } [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266.thread ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264 ]
  call void @__cxa_free_exception(ptr %i.ba) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

._crit_edge628:                                   ; preds = %bb.y
  %i.bj = add i64 %i.bu, -100001
  %or.cond3 = icmp ult i64 %i.bj, -100000
  br i1 %or.cond3, label %._crit_edge628.thread, label %bb.ad

bb.s:                                             ; preds = %.lr.ph627, %bb.y
  %.0115626 = phi i64 [ %i.au, %.lr.ph627 ], [ %.0115, %bb.y ] ; 2 uses
  %.0116625 = phi i64 [ 0, %.lr.ph627 ], [ %i.bu, %bb.y ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0115626
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !287 ; 2 uses
  %55 = add i8 %i.bl, -48
  %isdigit = icmp ult i8 %55, 10
  br i1 %isdigit, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.391, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.u unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269.thread

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb17InternalExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #43
          to label %bb.ha unwind label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269.thread: ; preds = %bb.t
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0113 = phi i1 [ false, %bb.v ], [ true, %bb.u ] ; 2 uses
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bp = load ptr, ptr %8, align 8, !tbaa !259   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.bp) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %.0113, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %.0113, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
  %.pn226565 = phi { ptr, i32 } [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269.thread ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269 ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267 ]
  call void @__cxa_free_exception(ptr %i.bm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

bb.y:                                             ; preds = %bb.s
  %i.bs = mul i64 %.0116625, 10
  %56 = zext nneg i8 %i.bl to i64
  %i.bt = add i64 %i.bs, -48
  %i.bu = add i64 %i.bt, %56                      ; 3 uses
  %.0115 = add i64 %.0115626, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %.0115, %i.ax
  br i1 %exitcond.not, label %._crit_edge628, label %bb.s, !llvm.loop !2798

._crit_edge628.thread:                            ; preds = %.preheader, %._crit_edge628
  %i.bv = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.392, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.z unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.thread

bb.z:                                             ; preds = %._crit_edge628.thread
  invoke void @_ZN6duckdb17InternalExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_throw(ptr nonnull %i.bv, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #43
          to label %bb.ha unwind label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.thread: ; preds = %._crit_edge628.thread
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0111 = phi i1 [ false, %bb.aa ], [ true, %bb.z ] ; 2 uses
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.by = load ptr, ptr %10, align 8, !tbaa !259  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.by) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %.0111, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %.0111, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272
  %.pn224568 = phi { ptr, i32 } [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.thread ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272 ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270 ]
  call void @__cxa_free_exception(ptr %i.bv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

bb.ad:                                            ; preds = %._crit_edge628
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !2814)
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.cb, ptr %13, align 8, !tbaa !288, !alias.scope !2814
  %i.cc = load ptr, ptr %1, align 8, !tbaa !259, !noalias !2814 ; 2 uses
  %spec.select.i.i.i273 = call noundef i64 @llvm.umin.i64(i64 %i.at, i64 %i.aw) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28, !noalias !2814
  store i64 %spec.select.i.i.i273, ptr %i.i, align 8, !tbaa !261, !noalias !2814
  %i.cd = icmp ugt i64 %spec.select.i.i.i273, 15
  br i1 %i.cd, label %.noexc10.i.i275, label %._crit_edge.i.i.i274

.noexc10.i.i275:                                  ; preds = %bb.ad
  %i.ce = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0) ; 2 uses
  store ptr %i.ce, ptr %13, align 8, !tbaa !259, !alias.scope !2814
  %i.cf = load i64, ptr %i.i, align 8, !tbaa !261, !noalias !2814
  store i64 %i.cf, ptr %i.cb, align 8, !tbaa !287, !alias.scope !2814
  br label %._crit_edge.i.i.i274

._crit_edge.i.i.i274:                             ; preds = %.noexc10.i.i275, %bb.ad
  %i.cg = phi ptr [ %i.ce, %.noexc10.i.i275 ], [ %i.cb, %bb.ad ] ; 2 uses
  switch i64 %spec.select.i.i.i273, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit276
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i274
  %i.ch = load i8, ptr %i.cc, align 1, !tbaa !287
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !287
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit276

bb.af:                                            ; preds = %._crit_edge.i.i.i274
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %i.cc, i64 %spec.select.i.i.i273, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit276: ; preds = %._crit_edge.i.i.i274, %bb.ae, %bb.af
  %i.ci = load i64, ptr %i.i, align 8, !tbaa !261, !noalias !2814 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !289, !alias.scope !2814
  %i.ck = load ptr, ptr %13, align 8, !tbaa !259, !alias.scope !2814
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci
  store i8 0, ptr %i.cl, align 1, !tbaa !287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28, !noalias !2814
  invoke void @_ZN6duckdb8DBConfig16ParseLogicalTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit276
  %i.cm = load ptr, ptr %13, align 8, !tbaa !259  ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.cb
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277: ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef %i.cm) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %i.bu)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279
  %i.co = load i64, ptr %14, align 8
  invoke void @_ZN6duckdb11LogicalType5ARRAYERKS0_NS_12optional_idxE(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 %i.co)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.gz

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit276
  %i.cp = landingpad { ptr, i32 }
          cleanup
  %i.cq = load ptr, ptr %13, align 8, !tbaa !259  ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cb
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.cq) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #28
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282
  %.pn222 = phi { ptr, i32 } [ %i.cs, %bb.ak ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.ct, ptr %15, align 8, !tbaa !288
  %i.cu = load ptr, ptr %1, align 8, !tbaa !259   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !289 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  store i64 %i.cw, ptr %i.h, align 8, !tbaa !261
  %i.cx = icmp ugt i64 %i.cw, 15
  br i1 %i.cx, label %.noexc.i284, label %._crit_edge.i.i283

.noexc.i284:                                      ; preds = %bb.am
  %i.cy = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0) ; 2 uses
  store ptr %i.cy, ptr %15, align 8, !tbaa !259
  %i.cz = load i64, ptr %i.h, align 8, !tbaa !261
  store i64 %i.cz, ptr %i.ct, align 8, !tbaa !287
  br label %._crit_edge.i.i283

._crit_edge.i.i283:                               ; preds = %.noexc.i284, %bb.am
  %i.da = phi ptr [ %i.cy, %.noexc.i284 ], [ %i.ct, %bb.am ] ; 2 uses
  switch i64 %i.cw, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.an:                                            ; preds = %._crit_edge.i.i283
  %i.db = load i8, ptr %i.cu, align 1, !tbaa !287
  store i8 %i.db, ptr %i.da, align 1, !tbaa !287
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.ao:                                            ; preds = %._crit_edge.i.i283
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr align 1 %i.cu, i64 %i.cw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i283, %bb.an, %bb.ao
  %i.dc = load i64, ptr %i.h, align 8, !tbaa !261 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !289
  %i.de = load ptr, ptr %15, align 8, !tbaa !259
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dc
  store i8 0, ptr %i.df, align 1, !tbaa !287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.dg, ptr %16, align 8, !tbaa !288
  store i32 676348237, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 4, ptr %i.dh, align 8, !tbaa !289
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i8 0, ptr %i.di, align 4, !tbaa !287
  %i.dj = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil10StartsWithENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull %15, ptr noundef nonnull %16)
end_hunk_0
