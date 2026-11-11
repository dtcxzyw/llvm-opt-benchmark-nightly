Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/parquet_writer?download=true
inline.NumInlined: 5299
inline.NumDeleted: 2879
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb11MyTransportEE16readMessageBeginERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_12TMessageTypeERi:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN13duckdb_apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1580 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13duckdb_apache6thrift10TExceptionE, i64 16), ptr %0, align 8, !tbaa !347
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !404
  %i.d = load ptr, ptr %2, align 8, !tbaa !294    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !405  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.f, ptr %i.a, align 8, !tbaa !402
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.d   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !294
  %i.i = load i64, ptr %i.a, align 8, !tbaa !402
  store i64 %i.i, ptr %i.c, align 8, !tbaa !354
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN13duckdb_apache6thrift10TExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !354
  store i8 %i.k, ptr %i.j, align 1, !tbaa !354
  br label %_ZN13duckdb_apache6thrift10TExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZN13duckdb_apache6thrift10TExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #22
  resume { ptr, i32 } %i.l

_ZN13duckdb_apache6thrift10TExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !402  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !405
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !294
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13duckdb_apache6thrift8protocol18TProtocolExceptionE, i64 16), ptr %0, align 8, !tbaa !347
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.q, align 8, !tbaa !825
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb11MyTransportEE12readBignum64ERl(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1582 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 10, ptr %i.b, align 4, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !783  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b), !inline_history !34 ; 11 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.preheader, label %.preheader67.preheader

.preheader67.preheader:                           ; preds = %bb.a
  %i.j = load i8, ptr %i.i, align 1, !tbaa !354   ; 2 uses
  %i.k = and i8 %i.j, 127
  %i.l = zext nneg i8 %i.k to i64                 ; 2 uses
  %.not50 = icmp slt i8 %i.j, 0
  br i1 %.not50, label %.preheader67.1, label %.thread

.preheader:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !783  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !347
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !35 ; 2 uses
  %i.r = load i8, ptr %i.c, align 1, !tbaa !354   ; 2 uses
  %i.s = and i8 %i.r, 127
  %i.t = zext nneg i8 %i.s to i64                 ; 2 uses
  %.not4875 = icmp slt i8 %i.r, 0
  br i1 %.not4875, label %.lr.ph, label %.thread65

.thread:                                          ; preds = %.preheader67.9, %.preheader67.8, %.preheader67.7, %.preheader67.6, %.preheader67.5, %.preheader67.4, %.preheader67.3, %.preheader67.2, %.preheader67.1, %.preheader67.preheader
  %.lcssa81.wide = phi i32 [ 1, %.preheader67.preheader ], [ 2, %.preheader67.1 ], [ 3, %.preheader67.2 ], [ 4, %.preheader67.3 ], [ 5, %.preheader67.4 ], [ 6, %.preheader67.5 ], [ 7, %.preheader67.6 ], [ 8, %.preheader67.7 ], [ 9, %.preheader67.8 ], [ 10, %.preheader67.9 ] ; 2 uses
  %.lcssa79 = phi i64 [ %i.l, %.preheader67.preheader ], [ %i.ad, %.preheader67.1 ], [ %i.aj, %.preheader67.2 ], [ %i.ap, %.preheader67.3 ], [ %i.av, %.preheader67.4 ], [ %i.bb, %.preheader67.5 ], [ %i.bh, %.preheader67.6 ], [ %i.bn, %.preheader67.7 ], [ %i.bt, %.preheader67.8 ], [ %i.by, %.preheader67.9 ]
  store i64 %.lcssa79, ptr %1, align 8, !tbaa !402
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !783  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !347
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i32 noundef %.lcssa81.wide), !inline_history !36
  br label %bb.n

.preheader67.1:                                   ; preds = %.preheader67.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !354   ; 2 uses
  %i.aa = and i8 %i.z, 127
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 7
  %i.ad = or disjoint i64 %i.ac, %i.l             ; 2 uses
  %.not50.1 = icmp slt i8 %i.z, 0
  br i1 %.not50.1, label %.preheader67.2, label %.thread

.preheader67.2:                                   ; preds = %.preheader67.1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !354 ; 2 uses
  %i.ag = and i8 %i.af, 127
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 14
  %i.aj = or disjoint i64 %i.ai, %i.ad            ; 2 uses
  %.not50.2 = icmp slt i8 %i.af, 0
  br i1 %.not50.2, label %.preheader67.3, label %.thread

.preheader67.3:                                   ; preds = %.preheader67.2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !354 ; 2 uses
  %i.am = and i8 %i.al, 127
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 21
  %i.ap = or disjoint i64 %i.ao, %i.aj            ; 2 uses
  %.not50.3 = icmp slt i8 %i.al, 0
  br i1 %.not50.3, label %.preheader67.4, label %.thread

.preheader67.4:                                   ; preds = %.preheader67.3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !354 ; 2 uses
  %i.as = and i8 %i.ar, 127
  %i.at = zext nneg i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 28
  %i.av = or disjoint i64 %i.au, %i.ap            ; 2 uses
  %.not50.4 = icmp slt i8 %i.ar, 0
  br i1 %.not50.4, label %.preheader67.5, label %.thread

.preheader67.5:                                   ; preds = %.preheader67.4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !354 ; 2 uses
  %i.ay = and i8 %i.ax, 127
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 35
  %i.bb = or i64 %i.ba, %i.av                     ; 2 uses
  %.not50.5 = icmp slt i8 %i.ax, 0
  br i1 %.not50.5, label %.preheader67.6, label %.thread

.preheader67.6:                                   ; preds = %.preheader67.5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !354 ; 2 uses
  %i.be = and i8 %i.bd, 127
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 42
  %i.bh = or i64 %i.bg, %i.bb                     ; 2 uses
  %.not50.6 = icmp slt i8 %i.bd, 0
  br i1 %.not50.6, label %.preheader67.7, label %.thread

.preheader67.7:                                   ; preds = %.preheader67.6
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 7
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !354 ; 2 uses
  %i.bk = and i8 %i.bj, 127
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 49
  %i.bn = or i64 %i.bm, %i.bh                     ; 2 uses
  %.not50.7 = icmp slt i8 %i.bj, 0
  br i1 %.not50.7, label %.preheader67.8, label %.thread

.preheader67.8:                                   ; preds = %.preheader67.7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !354 ; 2 uses
  %i.bq = and i8 %i.bp, 127
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 56
  %i.bt = or i64 %i.bs, %i.bn                     ; 2 uses
  %.not50.8 = icmp slt i8 %i.bp, 0
  br i1 %.not50.8, label %.preheader67.9, label %.thread

.preheader67.9:                                   ; preds = %.preheader67.8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !354 ; 2 uses
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl i64 %i.bw, 63
  %i.by = or i64 %i.bx, %i.bt
  %.not50.9 = icmp slt i8 %i.bv, 0
  br i1 %.not50.9, label %bb.b, label %.thread

bb.b:                                             ; preds = %.preheader67.9
  %i.bz = call ptr @__cxa_allocate_exception(i64 48) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN13duckdb_apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.bz, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.bz, ptr nonnull @_ZTIN13duckdb_apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN13duckdb_apache6thrift10TExceptionD2Ev) #23
          to label %bb.p unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.030 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cc = load ptr, ptr %2, align 8, !tbaa !294   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.cc) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.030, label %bb.f, label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.030, label %bb.f, label %bb.o

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn5159 = phi { ptr, i32 } [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bz) #22
  br label %bb.o

.thread65:                                        ; preds = %bb.m, %.preheader
  %.lcssa69 = phi i32 [ %i.q, %.preheader ], [ %i.ct, %bb.m ]
  %.lcssa = phi i64 [ %i.t, %.preheader ], [ %i.cy, %bb.m ]
  store i64 %.lcssa, ptr %1, align 8, !tbaa !402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.n

.lr.ph:                                           ; preds = %.preheader, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 7, %.preheader ] ; 2 uses
  %i.cf = phi i64 [ %i.cy, %bb.m ], [ %i.t, %.preheader ]
  %i.cg = phi i32 [ %i.ct, %bb.m ], [ %i.q, %.preheader ] ; 2 uses
  %i.ch = icmp ugt i32 %i.cg, 9
  br i1 %i.ch, label %bb.g, label %bb.m, !prof !339

bb.g:                                             ; preds = %.lr.ph
  %i.ci = call ptr @__cxa_allocate_exception(i64 48) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN13duckdb_apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.ci, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.ci, ptr nonnull @_ZTIN13duckdb_apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN13duckdb_apache6thrift10TExceptionD2Ev) #23
          to label %bb.p unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread: ; preds = %bb.g
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ]  ; 2 uses
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cl = load ptr, ptr %4, align 8, !tbaa !294   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.cl) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0, label %bb.k, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn64 = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  call void @__cxa_free_exception(ptr %i.ci) #22
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn63 = phi { ptr, i32 } [ %.pn64, %bb.k ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !783 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !347
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call noundef i32 %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !35
  %i.ct = add i32 %i.cs, %i.cg                    ; 2 uses
  %i.cu = load i8, ptr %i.c, align 1, !tbaa !354  ; 2 uses
  %i.cv = and i8 %i.cu, 127
  %i.cw = zext nneg i8 %i.cv to i64
  %i.cx = shl i64 %i.cw, %indvars.iv
  %i.cy = or i64 %i.cx, %i.cf                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 7
  %.not48 = icmp slt i8 %i.cu, 0
  br i1 %.not48, label %.lr.ph, label %.thread65, !llvm.loop !1581

bb.n:                                             ; preds = %.thread65, %.thread
  %.4 = phi i32 [ %.lcssa81.wide, %.thread ], [ %.lcssa69, %.thread65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.4

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.l
  %.pn51.pn = phi { ptr, i32 } [ %.pn63, %bb.l ], [ %.pn5159, %bb.f ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %.pn51.pn

bb.p:                                             ; preds = %bb.i, %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb11MyTransportEE10readBinaryERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1583 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = call noundef i32 @_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTIN6duckdb11MyTransportEE12readBignum64ERl(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !402  ; 3 uses
  %i.d = trunc i64 %i.c to i32                    ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !405
  %i.h = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.g, ptr noundef nonnull @.str.66, i64 noundef 0) ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %i.d, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @__cxa_allocate_exception(i64 48) #22 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !404
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.m, align 8, !tbaa !405
  store i8 0, ptr %i.l, align 8, !tbaa !354
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13duckdb_apache6thrift8protocol18TProtocolExceptionE, i64 16), ptr %i.j, align 8, !tbaa !347
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i32 2, ptr %i.n, align 8, !tbaa !825
  call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN13duckdb_apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN13duckdb_apache6thrift10TExceptionD2Ev) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.p = load i32, ptr %i.o, align 4, !tbaa !785  ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = icmp slt i32 %i.p, %i.d
  %or.cond = and i1 %i.q, %i.r
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = call ptr @__cxa_allocate_exception(i64 48) #22 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTINS0_9transport10TTransportEE16readMessageBeginERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_12TMessageTypeERi:bb.a
bb.h:                                             ; preds = %bb.g
  invoke void @_ZN13duckdb_apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.x, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTIN13duckdb_apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN13duckdb_apache6thrift10TExceptionD2Ev) #23
          to label %bb.m unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread: ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.sink.split

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ]  ; 2 uses
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aa = load ptr, ptr %6, align 8, !tbaa !294   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.aa) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0, label %.sink.split, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0, label %.sink.split, label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.ad = lshr i8 %i.v, 5
  %i.ae = zext nneg i8 %i.ad to i32
  store i32 %i.ae, ptr %2, align 4, !tbaa !828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.af = call noundef i32 @_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTINS0_9transport10TTransportEE12readBignum64ERl(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !402
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr %3, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ai = add i32 %i.af, 2
  %i.aj = call noundef i32 @_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTINS0_9transport10TTransportEE10readBinaryERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.ak = add i32 %i.ai, %i.aj
  ret i32 %i.ak

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  %.pn22.pn.ph = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.thread ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  call void @__cxa_free_exception(ptr %.sink) #22
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn22.pn = phi { ptr, i32 } [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn22.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn22.pn

bb.m:                                             ; preds = %bb.i, %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTINS0_9transport10TTransportEE12readBignum64ERl(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1681 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 10, ptr %i.b, align 4, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !795  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b), !inline_history !34 ; 11 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.preheader, label %.preheader67.preheader

.preheader67.preheader:                           ; preds = %bb.a
  %i.j = load i8, ptr %i.i, align 1, !tbaa !354   ; 2 uses
  %i.k = and i8 %i.j, 127
  %i.l = zext nneg i8 %i.k to i64                 ; 2 uses
  %.not50 = icmp slt i8 %i.j, 0
  br i1 %.not50, label %.preheader67.1, label %.thread

.preheader:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !795  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !347
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !35 ; 2 uses
  %i.r = load i8, ptr %i.c, align 1, !tbaa !354   ; 2 uses
  %i.s = and i8 %i.r, 127
  %i.t = zext nneg i8 %i.s to i64                 ; 2 uses
  %.not4875 = icmp slt i8 %i.r, 0
  br i1 %.not4875, label %.lr.ph, label %.thread65

.thread:                                          ; preds = %.preheader67.9, %.preheader67.8, %.preheader67.7, %.preheader67.6, %.preheader67.5, %.preheader67.4, %.preheader67.3, %.preheader67.2, %.preheader67.1, %.preheader67.preheader
  %.lcssa81.wide = phi i32 [ 1, %.preheader67.preheader ], [ 2, %.preheader67.1 ], [ 3, %.preheader67.2 ], [ 4, %.preheader67.3 ], [ 5, %.preheader67.4 ], [ 6, %.preheader67.5 ], [ 7, %.preheader67.6 ], [ 8, %.preheader67.7 ], [ 9, %.preheader67.8 ], [ 10, %.preheader67.9 ] ; 2 uses
  %.lcssa79 = phi i64 [ %i.l, %.preheader67.preheader ], [ %i.ad, %.preheader67.1 ], [ %i.aj, %.preheader67.2 ], [ %i.ap, %.preheader67.3 ], [ %i.av, %.preheader67.4 ], [ %i.bb, %.preheader67.5 ], [ %i.bh, %.preheader67.6 ], [ %i.bn, %.preheader67.7 ], [ %i.bt, %.preheader67.8 ], [ %i.by, %.preheader67.9 ]
  store i64 %.lcssa79, ptr %1, align 8, !tbaa !402
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !795  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !347
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i32 noundef %.lcssa81.wide), !inline_history !36
  br label %bb.n

.preheader67.1:                                   ; preds = %.preheader67.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !354   ; 2 uses
  %i.aa = and i8 %i.z, 127
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 7
  %i.ad = or disjoint i64 %i.ac, %i.l             ; 2 uses
  %.not50.1 = icmp slt i8 %i.z, 0
  br i1 %.not50.1, label %.preheader67.2, label %.thread

.preheader67.2:                                   ; preds = %.preheader67.1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !354 ; 2 uses
  %i.ag = and i8 %i.af, 127
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 14
  %i.aj = or disjoint i64 %i.ai, %i.ad            ; 2 uses
  %.not50.2 = icmp slt i8 %i.af, 0
  br i1 %.not50.2, label %.preheader67.3, label %.thread

.preheader67.3:                                   ; preds = %.preheader67.2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !354 ; 2 uses
  %i.am = and i8 %i.al, 127
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 21
  %i.ap = or disjoint i64 %i.ao, %i.aj            ; 2 uses
  %.not50.3 = icmp slt i8 %i.al, 0
  br i1 %.not50.3, label %.preheader67.4, label %.thread

.preheader67.4:                                   ; preds = %.preheader67.3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !354 ; 2 uses
  %i.as = and i8 %i.ar, 127
  %i.at = zext nneg i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 28
  %i.av = or disjoint i64 %i.au, %i.ap            ; 2 uses
  %.not50.4 = icmp slt i8 %i.ar, 0
  br i1 %.not50.4, label %.preheader67.5, label %.thread

.preheader67.5:                                   ; preds = %.preheader67.4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !354 ; 2 uses
  %i.ay = and i8 %i.ax, 127
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 35
  %i.bb = or i64 %i.ba, %i.av                     ; 2 uses
  %.not50.5 = icmp slt i8 %i.ax, 0
  br i1 %.not50.5, label %.preheader67.6, label %.thread

.preheader67.6:                                   ; preds = %.preheader67.5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !354 ; 2 uses
  %i.be = and i8 %i.bd, 127
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 42
  %i.bh = or i64 %i.bg, %i.bb                     ; 2 uses
  %.not50.6 = icmp slt i8 %i.bd, 0
  br i1 %.not50.6, label %.preheader67.7, label %.thread

.preheader67.7:                                   ; preds = %.preheader67.6
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 7
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !354 ; 2 uses
  %i.bk = and i8 %i.bj, 127
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 49
  %i.bn = or i64 %i.bm, %i.bh                     ; 2 uses
  %.not50.7 = icmp slt i8 %i.bj, 0
  br i1 %.not50.7, label %.preheader67.8, label %.thread

.preheader67.8:                                   ; preds = %.preheader67.7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !354 ; 2 uses
  %i.bq = and i8 %i.bp, 127
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 56
  %i.bt = or i64 %i.bs, %i.bn                     ; 2 uses
  %.not50.8 = icmp slt i8 %i.bp, 0
  br i1 %.not50.8, label %.preheader67.9, label %.thread

.preheader67.9:                                   ; preds = %.preheader67.8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !354 ; 2 uses
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl i64 %i.bw, 63
  %i.by = or i64 %i.bx, %i.bt
  %.not50.9 = icmp slt i8 %i.bv, 0
  br i1 %.not50.9, label %bb.b, label %.thread

bb.b:                                             ; preds = %.preheader67.9
  %i.bz = call ptr @__cxa_allocate_exception(i64 48) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN13duckdb_apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.bz, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.bz, ptr nonnull @_ZTIN13duckdb_apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN13duckdb_apache6thrift10TExceptionD2Ev) #23
          to label %bb.p unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.030 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cc = load ptr, ptr %2, align 8, !tbaa !294   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.cc) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.030, label %bb.f, label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.030, label %bb.f, label %bb.o

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn5159 = phi { ptr, i32 } [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bz) #22
  br label %bb.o

.thread65:                                        ; preds = %bb.m, %.preheader
  %.lcssa69 = phi i32 [ %i.q, %.preheader ], [ %i.ct, %bb.m ]
  %.lcssa = phi i64 [ %i.t, %.preheader ], [ %i.cy, %bb.m ]
  store i64 %.lcssa, ptr %1, align 8, !tbaa !402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.n

.lr.ph:                                           ; preds = %.preheader, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 7, %.preheader ] ; 2 uses
  %i.cf = phi i64 [ %i.cy, %bb.m ], [ %i.t, %.preheader ]
  %i.cg = phi i32 [ %i.ct, %bb.m ], [ %i.q, %.preheader ] ; 2 uses
  %i.ch = icmp ugt i32 %i.cg, 9
  br i1 %i.ch, label %bb.g, label %bb.m, !prof !339

bb.g:                                             ; preds = %.lr.ph
  %i.ci = call ptr @__cxa_allocate_exception(i64 48) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN13duckdb_apache6thrift8protocol18TProtocolExceptionC2ENS2_22TProtocolExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(44) %i.ci, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.ci, ptr nonnull @_ZTIN13duckdb_apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN13duckdb_apache6thrift10TExceptionD2Ev) #23
          to label %bb.p unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread: ; preds = %bb.g
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ]  ; 2 uses
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cl = load ptr, ptr %4, align 8, !tbaa !294   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.cl) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0, label %bb.k, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn64 = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  call void @__cxa_free_exception(ptr %i.ci) #22
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn63 = phi { ptr, i32 } [ %.pn64, %bb.k ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !795 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !347
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call noundef i32 %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !35
  %i.ct = add i32 %i.cs, %i.cg                    ; 2 uses
  %i.cu = load i8, ptr %i.c, align 1, !tbaa !354  ; 2 uses
  %i.cv = and i8 %i.cu, 127
  %i.cw = zext nneg i8 %i.cv to i64
  %i.cx = shl i64 %i.cw, %indvars.iv
  %i.cy = or i64 %i.cx, %i.cf                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 7
  %.not48 = icmp slt i8 %i.cu, 0
  br i1 %.not48, label %.lr.ph, label %.thread65, !llvm.loop !1680

bb.n:                                             ; preds = %.thread65, %.thread
  %.4 = phi i32 [ %.lcssa81.wide, %.thread ], [ %.lcssa69, %.thread65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.4

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %bb.l
  %.pn51.pn = phi { ptr, i32 } [ %.pn63, %bb.l ], [ %.pn5159, %bb.f ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %.pn51.pn

bb.p:                                             ; preds = %bb.i, %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTINS0_9transport10TTransportEE10readBinaryERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1682 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = call noundef i32 @_ZN13duckdb_apache6thrift8protocol17TCompactProtocolTINS0_9transport10TTransportEE12readBignum64ERl(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !402  ; 3 uses
  %i.d = trunc i64 %i.c to i32                    ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !405
  %i.h = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.g, ptr noundef nonnull @.str.66, i64 noundef 0) ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %i.d, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @__cxa_allocate_exception(i64 48) #22 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !404
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.m, align 8, !tbaa !405
  store i8 0, ptr %i.l, align 8, !tbaa !354
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN13duckdb_apache6thrift8protocol18TProtocolExceptionE, i64 16), ptr %i.j, align 8, !tbaa !347
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i32 2, ptr %i.n, align 8, !tbaa !825
  call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN13duckdb_apache6thrift8protocol18TProtocolExceptionE, ptr nonnull @_ZN13duckdb_apache6thrift10TExceptionD2Ev) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.p = load i32, ptr %i.o, align 4, !tbaa !797  ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = icmp slt i32 %i.p, %i.d
  %or.cond = and i1 %i.q, %i.r
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = call ptr @__cxa_allocate_exception(i64 48) #22 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
end_hunk_1
