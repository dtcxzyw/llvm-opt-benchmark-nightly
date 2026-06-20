inline.NumInlined: 4673
inline.NumDeleted: 1879
begin_hunk_0_@_ZN5folly11AsyncSocket9failWriteEPKcPNS_11AsyncWriter13WriteCallbackEmRKNS_20AsyncSocketExceptionE:bb.a
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !15234, !range !13961, !noundef !149
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.k, label %bb.p

bb.k:                                             ; preds = %.critedge31
  call void @_ZN5folly11AsyncSocket9startFailEv(ptr noundef nonnull align 8 dereferenceable(1169) %0)
  br label %bb.p

bb.l:                                             ; preds = %_ZN5follylsERSoRKNS_11AsyncSocket9StateEnumE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36, %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit, %.noexc33, %.noexc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32, %_ZNSolsEPKv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.n:                                             ; preds = %bb.j, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45, %bb.h, %bb.g, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %6, align 8, !tbaa !14228 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.n
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !14155
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.m ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.bh, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %i.bf, %bb.l ]
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  resume { ptr, i32 } %.pn.pn

bb.p:                                             ; preds = %bb.k, %.critedge31
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %2, align 8, !tbaa !11
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #41, !call_target !14165
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bq = load i8, ptr %i.bc, align 8, !tbaa !15234, !range !13961, !noundef !149
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.s, label %_ZN5folly11AsyncSocket10finishFailERKNS_20AsyncSocketExceptionE.exit

bb.s:                                             ; preds = %bb.r
  %i.bs = load ptr, ptr %0, align 8, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 832
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(1169) %0, ptr noundef nonnull align 8 dereferenceable(24) %4), !call_target !13879, !inline_history !15453
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !14132 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not10.i.i.i, label %_ZN5folly11AsyncSocket13failAllWritesERKNS_20AsyncSocketExceptionE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s, %bb.u
  %i.bx = phi ptr [ %i.cl, %bb.u ], [ %i.bw, %bb.s ] ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !14158
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !14132
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !14163 ; 3 uses
  %.not9.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not9.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !14164
  %i.ce = zext i32 %i.cd to i64
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i64 noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %4) #41, !call_target !14165, !inline_history !15434
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i.i.i
  %i.ci = load ptr, ptr %i.bx, align 8, !tbaa !11
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(52) %i.bx), !call_target !5739, !inline_history !15434
  %i.cl = load ptr, ptr %i.bv, align 8, !tbaa !14132 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i, label %_ZN5folly11AsyncSocket13failAllWritesERKNS_20AsyncSocketExceptionE.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !14170

_ZN5folly11AsyncSocket13failAllWritesERKNS_20AsyncSocketExceptionE.exit.i.i: ; preds = %bb.u, %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !14172
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 880
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !14173
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !14137 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i, label %_ZN5folly11AsyncSocket10finishFailERKNS_20AsyncSocketExceptionE.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5folly11AsyncSocket13failAllWritesERKNS_20AsyncSocketExceptionE.exit.i.i
  store ptr null, ptr %i.cp, align 8, !tbaa !14137
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(9) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %4) #41, !call_target !15454, !inline_history !15453
  br label %_ZN5folly11AsyncSocket10finishFailERKNS_20AsyncSocketExceptionE.exit

_ZN5folly11AsyncSocket10finishFailERKNS_20AsyncSocketExceptionE.exit: ; preds = %bb.v, %_ZN5folly11AsyncSocket13failAllWritesERKNS_20AsyncSocketExceptionE.exit.i.i, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly11AsyncSocket17BytesWriteRequest10newRequestEPS0_NS0_22WriteCallbackWithStateEPK5iovecjjjOSt10unique_ptrINS_5IOBufESt14default_deleteIS8_EENS_10WriteFlagsE(ptr noundef %0, ptr %1, i8 %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %8) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i32 %4, 268435455
  br i1 %i.a, label %_ZN5folly14checked_muladdIjvEEbPT_S1_S1_S1_.exit.thread, label %_ZN5folly14checked_muladdIjvEEbPT_S1_S1_S1_.exit, !prof !14156

_ZN5folly14checked_muladdIjvEEbPT_S1_S1_S1_.exit: ; preds = %bb.a
  %i.b = shl nuw i32 %4, 4                        ; 2 uses
  %i.c = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.b, i32 96) ; 2 uses
  %i.d = extractvalue { i32, i1 } %i.c, 1
  br i1 %i.d, label %_ZN5folly14checked_muladdIjvEEbPT_S1_S1_S1_.exit.thread, label %bb.b

_ZN5folly14checked_muladdIjvEEbPT_S1_S1_S1_.exit.thread: ; preds = %bb.a, %_ZN5folly14checked_muladdIjvEEbPT_S1_S1_S1_.exit
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #41 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !11
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

bb.b:                                             ; preds = %_ZN5folly14checked_muladdIjvEEbPT_S1_S1_S1_.exit
  %i.f = extractvalue { i32, i1 } %i.c, 0
  %i.g = zext i32 %i.f to i64
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #48 ; 18 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #41 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !11
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #45
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.k, align 8, !tbaa !15658
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr null, ptr %i.l, align 8, !tbaa !14158
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %1, ptr %i.m, align 8, !tbaa !15659
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i8 %2, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !15230
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_ZN5folly11AsyncSocket17BytesWriteRequestC2EPS0_NS0_22WriteCallbackWithStateEPK5iovecjjjOSt10unique_ptrINS_5IOBufESt14default_deleteIS8_EENS_10WriteFlagsE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %1, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1) #41, !call_target !15647, !inline_history !15660
  br label %_ZN5folly11AsyncSocket17BytesWriteRequestC2EPS0_NS0_22WriteCallbackWithStateEPK5iovecjjjOSt10unique_ptrINS_5IOBufESt14default_deleteIS8_EENS_10WriteFlagsE.exit

_ZN5folly11AsyncSocket17BytesWriteRequestC2EPS0_NS0_22WriteCallbackWithStateEPK5iovecjjjOSt10unique_ptrINS_5IOBufESt14default_deleteIS8_EENS_10WriteFlagsE.exit: ; preds = %bb.d, %bb.e
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.r, ptr %i.s, align 8, !tbaa !15661
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 0, ptr %i.t, align 8, !tbaa !14164
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5folly11AsyncSocket17BytesWriteRequestE, i64 16), ptr %i.h, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store i32 %4, ptr %i.u, align 4, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i32 0, ptr %i.v, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  store i32 %8, ptr %i.w, align 4, !tbaa !15217
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.z = load i64, ptr %7, align 8, !tbaa !14183
  store i64 %i.z, ptr %i.y, align 8, !tbaa !14183
  store ptr null, ptr %7, align 8, !tbaa !14183
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i32 0, ptr %i.aa, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  store i32 %5, ptr %i.ab, align 4, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.ad = zext i32 %6 to i64
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !13958
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.af = zext i32 %i.b to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 8 %3, i64 %i.af, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !14324, !range !13961, !noundef !149
  %9 = trunc i32 %8 to i8
  %10 = lshr i8 %9, 3
  %11 = and i8 %i.ah, %10
  store i8 %11, ptr %i.x, align 8, !tbaa !15230
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly11AsyncSocket23updateEventRegistrationEtt(ptr noundef nonnull align 8 dereferenceable(1169) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 234 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !14138 ; 2 uses
  %i.c = or i16 %i.b, %1
  %i.d = xor i16 %2, -1
  %i.e = and i16 %i.c, %i.d                       ; 2 uses
  store i16 %i.e, ptr %i.a, align 2, !tbaa !14138
  %i.f = icmp eq i16 %i.e, %i.b
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN5folly11AsyncSocket23updateEventRegistrationEv(ptr noundef nonnull align 8 dereferenceable(1169) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN5folly6detail14ScopeGuardImplIZNS_11AsyncSocket9writeImplEPNS_11AsyncWriter13WriteCallbackEPK5iovecmOSt10unique_ptrINS_5IOBufESt14default_deleteISA_EEmNS_10WriteFlagsEE3$_0Lb1EED2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !15651, !range !13961, !noundef !149
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15662 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15664, !nonnull !149, !align !15325 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14183
  store i64 %i.g, ptr %1, align 8, !tbaa !14183
  store ptr null, ptr %i.f, align 8, !tbaa !14183
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15665, !nonnull !149, !align !15325
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15650
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 856
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(1169) %i.d, ptr noundef nonnull %1, ptr noundef %i.j)
          to label %bb.c unwind label %bb.d, !call_target !13924

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %1, align 8, !tbaa !14183  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %"_ZN5folly6detail14ScopeGuardImplIZNS_11AsyncSocket9writeImplEPNS_11AsyncWriter13WriteCallbackEPK5iovecmOSt10unique_ptrINS_5IOBufESt14default_deleteISA_EEmNS_10WriteFlagsEE3$_0Lb1EE7executeEv.exit", label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i: ; preds = %bb.c
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.n) #41
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.n) #41
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_11AsyncSocket9writeImplEPNS_11AsyncWriter13WriteCallbackEPK5iovecmOSt10unique_ptrINS_5IOBufESt14default_deleteISA_EEmNS_10WriteFlagsEE3$_0Lb1EE7executeEv.exit"

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #43
  unreachable

"_ZN5folly6detail14ScopeGuardImplIZNS_11AsyncSocket9writeImplEPNS_11AsyncWriter13WriteCallbackEPK5iovecmOSt10unique_ptrINS_5IOBufESt14default_deleteISA_EEmNS_10WriteFlagsEE3$_0Lb1EE7executeEv.exit": ; preds = %bb.c, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %"_ZN5folly6detail14ScopeGuardImplIZNS_11AsyncSocket9writeImplEPNS_11AsyncWriter13WriteCallbackEPK5iovecmOSt10unique_ptrINS_5IOBufESt14default_deleteISA_EEmNS_10WriteFlagsEE3$_0Lb1EE7executeEv.exit", %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #25

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly11AsyncSocket12WriteRequest5startEv(ptr noundef nonnull align 8 dereferenceable(52) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11AsyncSocket17BytesWriteRequest7destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15658 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14183
  store i64 %i.d, ptr %1, align 8, !tbaa !14183
  store ptr null, ptr %i.c, align 8, !tbaa !14183
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15661
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 856
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(1169) %i.b, ptr noundef nonnull %1, ptr noundef %i.f)
          to label %bb.b unwind label %bb.c, !call_target !13924

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !14183  ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i: ; preds = %bb.b
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.j) #41
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.j) #41
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(96) %0) #41, !call_target !15666
  call void @free(ptr noundef nonnull %0) #41
  ret void

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #41
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11AsyncSocket17BytesWriteRequest12performWriteEv(ptr dead_on_unwind noalias writable sret(%"struct.folly::AsyncSocket::WriteResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15217
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14158
  %.not = icmp ne ptr %i.d, null
  %i.e = zext i1 %.not to i32
  %spec.select = or i32 %i.b, %i.e                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15658 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1008 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !14324, !range !13961, !noundef !149
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5folly11AsyncSocket19adjustZeroCopyFlagsERNS_10WriteFlagsE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1024 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !14339 ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !tbaa !14339
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.h, align 8, !tbaa !14324
  br label %_ZN5folly11AsyncSocket19adjustZeroCopyFlagsERNS_10WriteFlagsE.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.o = and i32 %spec.select, -9
  br label %_ZN5folly11AsyncSocket19adjustZeroCopyFlagsERNS_10WriteFlagsE.exit

_ZN5folly11AsyncSocket19adjustZeroCopyFlagsERNS_10WriteFlagsE.exit: ; preds = %bb.a, %bb.d, %bb.e
  %.1 = phi i32 [ %spec.select, %bb.a ], [ %i.o, %bb.e ], [ %spec.select, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !7    ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7
  %i.w = sub i32 %i.v, %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !14183
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 784
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr dead_on_unwind writable sret(%"struct.folly::AsyncSocket::WriteResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1169) %i.g, ptr noundef nonnull %i.t, i32 noundef %i.w, i32 noundef %.1, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, i64 %i.ab), !call_target !13779
  %i.af = load i64, ptr %0, align 8, !tbaa !14431 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 0
  %i.ah = tail call i64 @llvm.smax.i64(i64 %i.af, i64 0)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !13958
  br i1 %i.ag, label %bb.f, label %.thread

bb.f:                                             ; preds = %_ZN5folly11AsyncSocket19adjustZeroCopyFlagsERNS_10WriteFlagsE.exit
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !15658
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1008
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !14324, !range !13961, !noundef !149
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = and i32 %.1, 8
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = and i1 %i.ao, %i.am
  %i.aq = load ptr, ptr %1, align 8, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
end_hunk_0
