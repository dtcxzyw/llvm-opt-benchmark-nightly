Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/detect_ssl?download=true
inline.NumInlined: 2001
inline.NumDeleted: 889
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5boost5beast9unit_test6runner4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 0 uses
  br label %.body

bb.f:                                             ; preds = %bb.d, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i
  store i8 0, ptr %i.c, align 8, !tbaa !95
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 0, ptr %i.p, align 2, !tbaa !96
  %i.q = load ptr, ptr %0, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.t = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 0 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.f
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.w = load i64, ptr %i.f, align 8, !tbaa !35
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.n, %bb.e ]
  %i.z = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.f
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %.body
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !35
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.l

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 1, ptr %i.ag, align 1, !tbaa !326
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 1, ptr %i.ah, align 2, !tbaa !96
  %i.ai = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 0 uses
  ret void

bb.k:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %.pn6 = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ]
  %i.ak = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #31 ; 0 uses
  resume { ptr, i32 } %.pn6
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectINS_5logic7triboolEA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::beast::unit_test::suite::abort_exception", align 8 ; 5 uses
  %6 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !146
  %i.b = icmp eq i32 %i.a, 1                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !87, !range !64, !noundef !65
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.g = load i8, ptr %i.f, align 1, !range !64
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond.i.i, label %bb.c, label %_ZN5boost5beast9unit_test5suite4passIvEEvv.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %5, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store ptr @.str.26, ptr %6, align 8, !tbaa !120
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.27, ptr %i.i, align 8, !tbaa !121
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 592, ptr %i.j, align 8, !tbaa !122
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 48, ptr %i.k, align 4, !tbaa !123
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #33
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %common.resume

_ZN5boost5beast9unit_test5suite4passIvEEvv.exit:  ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !89
  tail call void @_ZN5boost5beast9unit_test6runner4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(88) %i.n)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @_ZN5boost5beast9unit_test6detail11make_reasonIA1_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i32 noundef %4)
  invoke void @_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(808) %0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %7, align 8, !tbaa !34     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.r = load i64, ptr %i.p, align 8, !tbaa !35
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %7, align 8, !tbaa !34     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !35
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %common.resume

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5boost5beast9unit_test5suite4passIvEEvv.exit
  ret i1 %i.b
}

declare void @_ZN5boost4asio10io_contextC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost5beast10detect_sslINS0_4test12basic_streamINS_4asio15any_io_executorEEENS0_17basic_flat_bufferISaIcEEEEEbRT_RT0_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 9 uses
  %3 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !117
  %.4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.5..5..5..5..5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread16

_ZNK5boost6system10error_codecvbEv.exit.thread16: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread16.backedge, %bb.a
  %i.i = phi ptr [ %.pre, %bb.a ], [ %i.as, %_ZNK5boost6system10error_codecvbEv.exit.thread16.backedge ] ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !147  ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread16
  %i.n = call i64 @llvm.umin.i64(i64 %i.m, i64 9)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %i.j, i64 %i.n, i1 false)
  %.0..0..0..0..0..i = load i8, ptr %i.a, align 1, !tbaa !35
  %.not.i = icmp eq i8 %.0..0..0..0..0..i, 22
  br i1 %.not.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult i64 %i.m, 5
  br i1 %i.o, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.3..3..3..3..3..i = load i16, ptr %.4..4..4..4..4..sroa_idx, align 1
  %4 = call i16 @llvm.bswap.i16(i16 %.3..3..3..3..3..i) ; 2 uses
  %i.p = icmp ult i16 %4, 34
  br i1 %i.p, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp eq i64 %i.m, 5
  br i1 %i.q, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.5..5..5..5..5..i = load i8, ptr %.5..5..5..5..5..sroa_idx, align 1, !tbaa !35
  %.not8.i = icmp eq i8 %.5..5..5..5..5..i, 1
  br i1 %.not8.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.r = icmp ult i64 %i.m, 9
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = zext i16 %4 to i32
  %.6..6..6..6..6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %.6..6..6..6..6..i = load i16, ptr %.6..6..6..6..6..sroa_idx, align 1
  %5 = call i16 @llvm.bswap.i16(i16 %.6..6..6..6..6..i)
  %i.t = zext i16 %5 to i32
  %i.u = shl nuw nsw i32 %i.t, 8
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.8..8..8..8..8..i = load i8, ptr %.8..8..8..8..8..sroa_idx, align 1, !tbaa !35
  %i.v = zext i8 %.8..8..8..8..8..i to i32
  %6 = add nuw nsw i32 %i.v, 4
  %i.w = add nuw nsw i32 %6, %i.u
  %i.x = icmp samesign ule i32 %i.w, %i.s
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.d, %bb.f, %bb.h
  %.sroa.09.0.i = phi i1 [ %i.x, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread

bb.i:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread16, %bb.c, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.y = load i64, ptr %i.d, align 8, !tbaa !99
  %i.z = sub i64 %i.y, %i.m
  %i.aa = load ptr, ptr %1, align 8, !tbaa !127
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !128
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = add i64 %i.m, %i.ad
  %i.af = sub i64 %i.ac, %i.ae
  %i.ag = call i64 @llvm.umax.i64(i64 %i.af, i64 512)
  %i.ah = call i64 @llvm.umin.i64(i64 %i.z, i64 %i.ag)
  %i.ai = call i64 @llvm.umin.i64(i64 %i.ah, i64 1536)
  %i.aj = call { ptr, i64 } @_ZN5boost5beast17basic_flat_bufferISaIcEE7prepareEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.ai) ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  store ptr %i.ak, ptr %3, align 8
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  store i64 %i.al, ptr %i.f, align 8
  %i.am = call noundef i64 @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE9read_someINS3_14mutable_bufferEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !117 ; 2 uses
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !118
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.am)
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sroa.speculated.i ; 2 uses
  store ptr %i.as, ptr %i.c, align 8, !tbaa !117
  %i.at = load i64, ptr %i.h, align 8, !tbaa !45  ; 2 uses
  %i.au = and i64 %i.at, 1
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread16.backedge, label %bb.j

_ZNK5boost6system10error_codecvbEv.exit.thread16.backedge: ; preds = %bb.i, %_ZNK5boost6system10error_codecvbEv.exit
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread16

bb.j:                                             ; preds = %bb.i
  %i.av = icmp eq i64 %i.at, 1
  br i1 %i.av, label %_ZNK5boost6system10error_codecvbEv.exit, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.j
  %i.aw = load i32, ptr %2, align 8, !tbaa !148
  %.fr = freeze i32 %i.aw
  %.not = icmp eq i32 %.fr, 0
  br i1 %.not, label %_ZNK5boost6system10error_codecvbEv.exit.thread16.backedge, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.j, %_ZNK5boost6system10error_codecvbEv.exit, %.thread
  %.2 = phi i1 [ %.sroa.09.0.i, %.thread ], [ false, %_ZNK5boost6system10error_codecvbEv.exit ], [ false, %bb.j ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6system10error_code7messageB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  switch i64 %i.d, label %_ZNK5boost6system10error_code8categoryEv.exit.thread [
    i64 1, label %bb.b
    i64 0, label %_ZNK5boost6system10error_code5valueEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48, !noalias !334 ; 2 uses
  %i.g = load i32, ptr %1, align 8, !tbaa !148, !noalias !334
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !26, !noalias !334
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !334
  tail call void %i.j(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.g), !inline_history !329
  br label %bb.f

_ZNK5boost6system10error_code5valueEv.exit:       ; preds = %bb.a
  %i.k = load i32, ptr %1, align 8, !tbaa !35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31, !noalias !337
  %i.l = call ptr @strerror_r(i32 noundef %i.k, ptr noundef nonnull %i.b, i64 noundef 128) #31, !noalias !337 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !30, !alias.scope !337
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %_ZNK5boost6system10error_code5valueEv.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #33
  unreachable

bb.c:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !337
  store i64 %i.o, ptr %i.a, align 8, !tbaa !32, !noalias !337
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !34, !alias.scope !337
  %i.r = load i64, ptr %i.a, align 8, !tbaa !32, !noalias !337
  store i64 %i.r, ptr %i.m, align 8, !tbaa !35, !alias.scope !337
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.c
  %i.s = phi ptr [ %i.q, %.noexc.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  switch i64 %i.o, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.t = load i8, ptr %i.l, align 1, !tbaa !35
  store i8 %i.t, ptr %i.s, align 1, !tbaa !35
  br label %_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.l, i64 %i.o, i1 false)
  br label %_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit

_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit: ; preds = %._crit_edge.i.i.i.i, %bb.d, %bb.e
  %i.u = load i64, ptr %i.a, align 8, !tbaa !32, !noalias !337 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !36, !alias.scope !337
  %i.w = load ptr, ptr %0, align 8, !tbaa !34, !alias.scope !337
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31, !noalias !337
  br label %bb.f

_ZNK5boost6system10error_code8categoryEv.exit.thread: ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = load i32, ptr %1, align 8, !tbaa !35
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(52) %i.z, i32 noundef %i.aa)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.thread, %_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE5closeEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !116
  tail call void @_ZN5boost5beast4test6detail12stream_state6removeEv(ptr noundef nonnull align 8 dereferenceable(280) %i.a) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125  ; 4 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = atomicrmw sub ptr %i.d, i32 1 acq_rel, align 4
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #31, !inline_history !338
  br label %_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit

_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !126  ; 7 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZN5boost10shared_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost8weak_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = atomicrmw sub ptr %i.l, i32 1 acq_rel, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.f, label %_ZN5boost10shared_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #31, !inline_history !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.s = atomicrmw sub ptr %i.r, i32 1 acq_rel, align 4
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.g, label %_ZN5boost10shared_ptrINS_5beast4test6detail12stream_stateEED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN5boost5beast9unit_test5suite6expectINS_6system10error_codeEA1_cEEbRKT_RKT0_PKci:bb.a
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %common.resume

_ZN5boost5beast9unit_test5suite4passIvEEvv.exit:  ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !89
  tail call void @_ZN5boost5beast9unit_test6runner4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(88) %i.r)
  br label %bb.h

_ZNK5boost6system10error_codecvbEv.exit.thread13: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @_ZN5boost5beast9unit_test6detail11make_reasonIA1_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i32 noundef %4)
  invoke void @_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(808) %0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread13
  %i.s = load ptr, ptr %7, align 8, !tbaa !34     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.v = load i64, ptr %i.t, align 8, !tbaa !35
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.h

bb.g:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread13
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %7, align 8, !tbaa !34     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.g
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !35
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %common.resume

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5boost5beast9unit_test5suite4passIvEEvv.exit
  %.0.i.i11 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %_ZN5boost5beast9unit_test5suite4passIvEEvv.exit ]
  ret i1 %.0.i.i11
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast4test7handlerD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !122
  %i.g = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) @.str.16, ptr noundef %i.d, i32 noundef %i.f)
          to label %_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit unwind label %bb.b ; 0 uses

_ZN5boost5beast9unit_test5suite6expectIbEEbRKT_PKci.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail13detect_ssl_opINS0_4test7handlerENS3_12basic_streamINS_4asio15any_io_executorEEENS0_17basic_flat_bufferISaIcEEEEC2IS4_EEOT_RS8_RSB_(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::asio::any_io_executor", align 8 ; 5 uses
  %5 = alloca %"class.boost::system::error_code", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 0, ptr %i.a, align 4, !tbaa !547
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.b = load ptr, ptr %2, align 8, !tbaa !116, !noalias !548
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.b) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS0_4test7handlerENS_4asio15any_io_executorESaIvEEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  %i.d = load i8, ptr %1, align 8, !tbaa !220, !range !64, !noalias !549, !noundef !65
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !tbaa.struct !221
  br label %_ZN5boost5beast4test7handlerC2EOS2_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.h, align 8, !tbaa !35, !alias.scope !549
  br label %_ZN5boost5beast4test7handlerC2EOS2_.exit.i

_ZN5boost5beast4test7handlerC2EOS2_.exit.i:       ; preds = %bb.c, %bb.b
  %.sink.i.i.i.i = phi i8 [ 1, %bb.b ], [ 0, %bb.c ]
  store i8 %.sink.i.i.i.i, ptr %i.c, align 8, !tbaa !130, !alias.scope !549
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !97, !range !64, !noundef !65
  store i8 1, ptr %i.j, align 8, !tbaa !97
  store i8 %i.k, ptr %i.i, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !222
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  call void @_ZN5boost4asio15any_io_executorC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(113) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %4) #31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 1, ptr %i.o, align 8, !tbaa !137
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_ZNK5boost4asio15any_io_executor6preferINS0_9execution6detail16outstanding_work9tracked_tILi0EEEEES1_RKT_NS0_10constraintIXsr6traits13prefer_memberIRKNS3_12any_executorIJNS3_12context_as_tIRNS0_17execution_contextEEENS4_8blocking7never_tILi0EEENS3_11prefer_onlyINSH_10possibly_tILi0EEEEENSK_IS7_EENSK_INS5_11untracked_tILi0EEEEENSK_INS4_12relationship6fork_tILi0EEEEENSK_INSS_14continuation_tILi0EEEEEEEESA_EE8is_validEiE4typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::asio::any_io_executor") align 8 %i.p, ptr noundef nonnull align 8 dereferenceable(113) %i.n, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost4asio9execution6detail18outstanding_work_tILi0EE7trackedE, i32 noundef 0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_ZN5boost5beast4test7handlerC2EOS2_.exit.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #32
  unreachable

bb.e:                                             ; preds = %_ZN5boost5beast4test7handlerC2EOS2_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 1, ptr %i.s, align 8, !tbaa !225
  call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast6detail13detect_ssl_opINS0_4test7handlerENS3_12basic_streamINS_4asio15any_io_executorEEENS0_17basic_flat_bufferISaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %2, ptr %i.t, align 8, !tbaa !550
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %3, ptr %i.u, align 8, !tbaa !551
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.v, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost5beast6detail13detect_ssl_opINS0_4test7handlerENS3_12basic_streamINS_4asio15any_io_executorEEENS0_17basic_flat_bufferISaIcEEEEclENS_6system10error_codeEmb(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %5, i64 noundef 0, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost5beast10async_baseINS0_4test7handlerENS_4asio15any_io_executorESaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(196) %0) #31
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast10async_baseINS0_4test7handlerENS_4asio15any_io_executorESaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(196) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS0_4test7handlerENS_4asio15any_io_executorESaIvEEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load i8, ptr %i.b, align 8, !tbaa !137, !range !64, !noundef !65
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #31
  br label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit

_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.a) #31
  %i.f = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !122
  %i.l = invoke noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 1 dereferenceable(1) @.str.16, ptr noundef %i.i, i32 noundef %i.k)
          to label %_ZN5boost5beast4test7handlerD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #32
  unreachable

_ZN5boost5beast4test7handlerD2Ev.exit:            ; preds = %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail13detect_ssl_opINS0_4test7handlerENS3_12basic_streamINS_4asio15any_io_executorEEENS0_17basic_flat_bufferISaIcEEEEclENS_6system10error_codeEmb(ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef byval(%"class.boost::system::error_code") align 8 %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::beast::test::basic_stream<>::run_read_op", align 8 ; 4 uses
  %5 = alloca %"struct.boost::beast::test::basic_stream<>::run_read_op", align 8 ; 4 uses
  %i.a = alloca [9 x i8], align 1                 ; 9 uses
  %6 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 5 uses
  %7 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 7 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !140
  switch i32 %i.d, label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit.sink.split [
    i32 76, label %bb.o
    i32 0, label %._ZNK5boost6system10error_codecvbEv.exit_crit_edge
    i32 30, label %bb.k
  ]

._ZNK5boost6system10error_codecvbEv.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !556 ; 2 uses
  %.phi.trans.insert43 = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre44 = load ptr, ptr %.phi.trans.insert43, align 8, !tbaa !117
  br label %_ZNK5boost6system10error_codecvbEv.exit

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %._ZNK5boost6system10error_codecvbEv.exit_crit_edge, %bb.k, %bb.l
  %i.e = phi ptr [ %.pre44, %._ZNK5boost6system10error_codecvbEv.exit_crit_edge ], [ %i.bk, %bb.k ], [ %i.bk, %bb.l ] ; 2 uses
  %i.f = phi ptr [ %.pre, %._ZNK5boost6system10error_codecvbEv.exit_crit_edge ], [ %i.bc, %bb.k ], [ %i.bc, %bb.l ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !147  ; 3 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.i
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.l, i64 9)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %i.i, i64 %i.m, i1 false)
  %.0..0..0..0..0..i = load i8, ptr %i.a, align 1, !tbaa !35
  %.not.i = icmp eq i8 %.0..0..0..0..0..i, 22
  br i1 %.not.i, label %bb.c, label %_ZN5boost5beast6detail19is_tls_client_helloINS_4asio14mutable_bufferEEENS_5logic7triboolERKT_.exit

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i64 %i.l, 5
  br i1 %i.n, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.3..3..3..3..3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.3..3..3..3..3..i = load i16, ptr %.3..3..3..3..3..sroa_idx, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %.3..3..3..3..3..i) ; 2 uses
  %i.o = zext i16 %8 to i32
  %i.p = icmp ult i16 %8, 34
  br i1 %i.p, label %_ZN5boost5beast6detail19is_tls_client_helloINS_4asio14mutable_bufferEEENS_5logic7triboolERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp eq i64 %i.l, 5
  br i1 %i.q, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.5..5..5..5..5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %.5..5..5..5..5..i = load i8, ptr %.5..5..5..5..5..sroa_idx, align 1, !tbaa !35
  %.not8.i = icmp eq i8 %.5..5..5..5..5..i, 1
  br i1 %.not8.i, label %bb.g, label %_ZN5boost5beast6detail19is_tls_client_helloINS_4asio14mutable_bufferEEENS_5logic7triboolERKT_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = icmp ult i64 %i.l, 9
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.6..6..6..6..6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %.6..6..6..6..6..i = load i16, ptr %.6..6..6..6..6..sroa_idx, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %.6..6..6..6..6..i)
  %i.s = zext i16 %9 to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.8..8..8..8..8..i = load i8, ptr %.8..8..8..8..8..sroa_idx, align 1, !tbaa !35
  %i.u = zext i8 %.8..8..8..8..8..i to i32
  %10 = add nuw nsw i32 %i.u, 4
  %i.v = add nuw nsw i32 %10, %i.t
  %i.w = icmp samesign ule i32 %i.v, %i.o
  %spec.select.i = zext i1 %i.w to i32
  br label %_ZN5boost5beast6detail19is_tls_client_helloINS_4asio14mutable_bufferEEENS_5logic7triboolERKT_.exit

_ZN5boost5beast6detail19is_tls_client_helloINS_4asio14mutable_bufferEEENS_5logic7triboolERKT_.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.h
  %.sroa.09.0.i = phi i32 [ 0, %bb.f ], [ 0, %bb.b ], [ %spec.select.i, %bb.h ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 %.sroa.09.0.i, ptr %i.x, align 8, !tbaa !557
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.c, %_ZNK5boost6system10error_codecvbEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 2, ptr %i.y, align 8, !tbaa !557
  store i32 30, ptr %i.c, align 4, !tbaa !140
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !558, !nonnull !65, !align !67
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !556, !nonnull !65, !align !67 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !147
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !117
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !99
  %i.am = sub i64 %i.al, %i.aj
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !127
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !128
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = add i64 %i.aj, %i.ar
  %i.at = sub i64 %i.aq, %i.as
  %i.au = call i64 @llvm.umax.i64(i64 %i.at, i64 512)
  %i.av = call i64 @llvm.umin.i64(i64 %i.am, i64 %i.au)
  %i.aw = call i64 @llvm.umin.i64(i64 %i.av, i64 1536)
  %i.ax = call { ptr, i64 } @_ZN5boost5beast17basic_flat_bufferISaIcEE7prepareEm(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 noundef %i.aw) ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0
  store ptr %i.ay, ptr %6, align 8
  %i.az = extractvalue { ptr, i64 } %i.ax, 1
  store i64 %i.az, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %i.ab, ptr %5, align 8, !tbaa !559
  call void @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE11run_read_opclINS0_6detail13detect_ssl_opINS1_7handlerES5_NS0_17basic_flat_bufferISaIcEEEEENS3_14mutable_bufferEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull align 8 dereferenceable(16) %6), !inline_history !552
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.ba = load i32, ptr %i.c, align 4, !tbaa !140
  %.not7 = icmp eq i32 %i.ba, 0
  br i1 %.not7, label %bb.j, label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit

bb.k:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !556, !nonnull !65, !align !67 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !117 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !118
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %2)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.speculated.i ; 3 uses
  store ptr %i.bk, ptr %i.bd, align 8, !tbaa !117
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !45 ; 2 uses
  %i.bn = and i64 %i.bm, 1
  %.not.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit, label %bb.l, !llvm.loop !553

bb.l:                                             ; preds = %bb.k
  %i.bo = icmp ne i64 %i.bm, 1
  %i.bp = load i32, ptr %1, align 8
  %i.bq = icmp ne i32 %i.bp, 0
  %or.cond = select i1 %i.bo, i1 true, i1 %i.bq
  br i1 %or.cond, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit, !llvm.loop !553

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.l, %_ZN5boost5beast6detail19is_tls_client_helloINS_4asio14mutable_bufferEEENS_5logic7triboolERKT_.exit
  br i1 %3, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !221
  store i32 76, ptr %i.c, align 4, !tbaa !140
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.n
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !558, !nonnull !65, !align !67
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !556, !nonnull !65, !align !67
  %i.bx = call { ptr, i64 } @_ZN5boost5beast17basic_flat_bufferISaIcEE7prepareEm(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, i64 noundef 0) ; 2 uses
  %i.by = extractvalue { ptr, i64 } %i.bx, 0
  store ptr %i.by, ptr %7, align 8
  %i.bz = extractvalue { ptr, i64 } %i.bx, 1
  store i64 %i.bz, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.bv, ptr %4, align 8, !tbaa !559
  call void @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE11run_read_opclINS0_6detail13detect_ssl_opINS1_7handlerES5_NS0_17basic_flat_bufferISaIcEEEEENS3_14mutable_bufferEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(244) %0, ptr noundef nonnull align 8 dereferenceable(16) %7), !inline_history !552
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.ca = load i32, ptr %i.c, align 4, !tbaa !140
  %.not9 = icmp eq i32 %i.ca, 0
  br i1 %.not9, label %bb.n, label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit

bb.o:                                             ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.5.0.copyload4.i = load i64, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !32 ; 3 uses
  %switch.i.i = icmp ult i64 %.sroa.5.0.copyload4.i, 2
  %i.cc = and i64 %.sroa.5.0.copyload4.i, 1
  %i.cd = or disjoint i64 %i.cc, ptrtoint (ptr @_ZZN5boost5beast6detail13detect_ssl_opINS0_4test7handlerENS3_12basic_streamINS_4asio15any_io_executorEEENS0_17basic_flat_bufferISaIcEEEEclENS_6system10error_codeEmbE7loc_bb_ to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.5.0.copyload4.i, i64 %i.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK5boost6system10error_codecvbEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !146
  %i.cg = icmp eq i32 %i.cf, 1
  %i.ch = zext i1 %i.cg to i8
  store i8 %i.ch, ptr %i.b, align 1, !tbaa !97
  %i.ci = load ptr, ptr %0, align 8, !tbaa !26
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(196) %0)
          to label %.noexc unwind label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit13, !inline_history !554

.noexc:                                           ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !137, !range !64, !noundef !65
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.q, label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit.i

bb.q:                                             ; preds = %.noexc
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.cn) #31
  store i8 0, ptr %i.ck, align 8, !tbaa !137
  br label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit.i

_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit.i: ; preds = %bb.q, %.noexc
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN5boost5beast4test7handlerclIJbEEEvNS_6system10error_codeEDpOT_(ptr noundef nonnull align 8 dereferenceable(64) %i.co, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %1, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZN5boost5beast10async_baseINS0_4test7handlerENS_4asio15any_io_executorESaIvEE12complete_nowIJRNS_6system10error_codeEbEEEvDpOT_.exit unwind label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit13

_ZN5boost5beast10async_baseINS0_4test7handlerENS_4asio15any_io_executorESaIvEE12complete_nowIJRNS_6system10error_codeEbEEEvDpOT_.exit: ; preds = %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit.sink.split

_ZN5boost4asio6detail13coroutine_refD2Ev.exit.sink.split: ; preds = %bb.a, %_ZN5boost5beast10async_baseINS0_4test7handlerENS_4asio15any_io_executorESaIvEE12complete_nowIJRNS_6system10error_codeEbEEEvDpOT_.exit
  store i32 -1, ptr %i.c, align 4, !tbaa !140
  br label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit

_ZN5boost4asio6detail13coroutine_refD2Ev.exit:    ; preds = %bb.n, %bb.j, %_ZN5boost4asio6detail13coroutine_refD2Ev.exit.sink.split
  ret void

_ZN5boost4asio6detail13coroutine_refD2Ev.exit13:  ; preds = %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvE5resetEv.exit.i, %bb.p
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  store i32 -1, ptr %i.c, align 4, !tbaa !140
  resume { ptr, i32 } %i.cp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast10async_baseINS0_4test7handlerENS_4asio15any_io_executorESaIvEE18before_invoke_hookEv(ptr noundef nonnull align 8 dereferenceable(196) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost5beast6detail13detect_ssl_opINS0_4test7handlerENS3_12basic_streamINS_4asio15any_io_executorEEENS0_17basic_flat_bufferISaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(244) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast10async_baseINS0_4test7handlerENS_4asio15any_io_executorESaIvEEE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load i8, ptr %i.b, align 8, !tbaa !137, !range !64, !noundef !65
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #31, !inline_history !138
  br label %_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i

_ZN5boost4asio19executor_work_guardINS0_15any_io_executorEvvED2Ev.exit.i: ; preds = %bb.b, %bb.a
  tail call void @_ZN5boost4asio15any_io_executorD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(113) %i.a) #31, !inline_history !138
  %i.f = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_1
begin_hunk_2_@_ZN5boost5beast9unit_test5suite3runIvEEvRNS1_6runnerE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @__cxa_end_catch()
  br label %bb.d

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5boost5beast9unit_test6runner4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %2, align 8, !tbaa !34    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.l
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !35
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @__cxa_end_catch()
  br label %bb.d

bb.m:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.n:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %2, align 8, !tbaa !34    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.n
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !35
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.ai, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

bb.o:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.p:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.q:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.q
  %i.au = load i64, ptr %i.as, align 8, !tbaa !35
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.p
  %.pn14 = phi { ptr, i32 } [ %i.ap, %bb.p ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.aq, %bb.q ] ; 2 uses
  %i.aw = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !35
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.o
  %.pn14.pn = phi { ptr, i32 } [ %i.ao, %bb.o ], [ %.pn14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %.pn14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %.pn14.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  resume { ptr, i32 } %.pn14.pn.pn

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #32
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #27

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !30
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !36   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !34
  %i.k = load i64, ptr %i.e, align 8, !tbaa !35
  store i64 %i.k, ptr %i.c, align 8, !tbaa !35
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !36
  store ptr %i.e, ptr %i.b, align 8, !tbaa !34
  store i64 0, ptr %i.m, align 8, !tbaa !36
  store i8 0, ptr %i.e, align 8, !tbaa !35
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_detect_ssl.cpp() #8 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost5beast9unit_test6detail13global_suitesEvE1s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %__cxx_global_var_init.4.exit, !prof !665

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost5beast9unit_test6detail13global_suitesEvE1s) #31
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %__cxx_global_var_init.4.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast9unit_test6detail13global_suitesEvE1s, i64 8), align 8, !tbaa !666
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast9unit_test6detail13global_suitesEvE1s, i64 16), align 8, !tbaa !60
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast9unit_test6detail13global_suitesEvE1s, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast9unit_test6detail13global_suitesEvE1s, i64 24), align 8, !tbaa !62
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast9unit_test6detail13global_suitesEvE1s, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast9unit_test6detail13global_suitesEvE1s, i64 32), align 8, !tbaa !667
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast9unit_test6detail13global_suitesEvE1s, i64 40), align 8, !tbaa !63
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost5beast9unit_test6detail15const_containerISt3setINS1_10suite_infoESt4lessIS5_ESaIS5_EEED2Ev, ptr nonnull @_ZZN5boost5beast9unit_test6detail13global_suitesEvE1s, ptr nonnull @__dso_handle) #31 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost5beast9unit_test6detail13global_suitesEvE1s) #31
  br label %__cxx_global_var_init.4.exit

__cxx_global_var_init.4.exit:                     ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN5boost5beast9unit_test10suite_list6insertINS0_15detect_ssl_testEEEvPKcS6_S6_b(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN5boost5beast9unit_test6detail13global_suitesEvE1s, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #29

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold noreturn }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind memory(none) }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { noreturn }
attributes #34 = { builtin nounwind }
attributes #35 = { nounwind willreturn memory(read) }
attributes #36 = { builtin allocsize(0) }
attributes #37 = { nounwind allocsize(1) }

!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}
!llvm.errno.tbaa = !{!24}

!0 = distinct !{ptr @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEED2Ev, null, null, null}
!1 = distinct !{ptr @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEED2Ev, ptr @_ZN5boost10shared_ptrINS_5beast4test6detail12stream_stateEED2Ev, null, null}
!2 = distinct !{ptr @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEED2Ev, ptr @_ZN5boost10shared_ptrINS_5beast4test6detail12stream_stateEED2Ev, null, null, null}
!3 = distinct !{null, null, null, null}
!4 = distinct !{!4, !61}
!5 = distinct !{!5, !61}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{ptr @_ZN5boost10shared_ptrINS_5beast4test6detail12stream_stateEED2Ev, null, null}
!9 = distinct !{ptr @_ZN5boost10shared_ptrINS_5beast4test6detail12stream_stateEED2Ev, null, null, null}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{null, null, null, null}
!14 = distinct !{ptr @_ZN5boost4asio6detail14append_handlerINS_5beast4test12basic_streamINS0_15any_io_executorEE7read_opINS3_6detail13detect_ssl_opINS4_7handlerES7_NS3_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEE6lambdaEJNS_6system10error_codeEEED2Ev, null, null, null, null}
!15 = distinct !{ptr @_ZN5boost4asio6detail7binder0INS1_14append_handlerINS_5beast4test12basic_streamINS0_15any_io_executorEE7read_opINS4_6detail13detect_ssl_opINS5_7handlerES8_NS4_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEE6lambdaEJNS_6system10error_codeEEEEED2Ev, ptr @_ZN5boost4asio6detail14append_handlerINS_5beast4test12basic_streamINS0_15any_io_executorEE7read_opINS3_6detail13detect_ssl_opINS4_7handlerES7_NS3_17basic_flat_bufferISaIcEEEEENS0_14mutable_bufferEE6lambdaEJNS_6system10error_codeEEED2Ev, null, null, null, null}
!16 = !{i32 8, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!20 = !{!"Simple C++ TBAA"}
!21 = !{!"omnipotent char", !20, i64 0}
!22 = !{!"int", !21, i64 0}
!23 = !{!"__libc_errno", !22, i64 0}
!24 = !{!23, !22, i64 0}
!25 = !{!"vtable pointer", !20, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"any pointer", !21, i64 0}
!28 = !{!"p1 omnipotent char", !27, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!30 = !{!29, !28, i64 0}
!31 = !{!"long", !21, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !31, i64 8, !21, i64 16}
!34 = !{!33, !28, i64 0}
!35 = !{!21, !21, i64 0}
!36 = !{!33, !31, i64 8}
!37 = !{!"p1 _ZTSN5boost6system14error_categoryE", !27, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"long long", !21, i64 0}
!40 = !{!"_ZTSSt13__atomic_baseIjE", !22, i64 0}
!41 = !{!"_ZTSSt6atomicIjE", !40, i64 0}
!42 = !{!"_ZTSN5boost6system14error_categoryE", !39, i64 8, !21, i64 16, !41, i64 48}
!43 = !{!42, !39, i64 8}
!44 = !{!"_ZTSN5boost6system10error_codeE", !21, i64 0, !31, i64 16}
!45 = !{!44, !31, i64 16}
!46 = !{!"p1 _ZTSNSt3_V214error_categoryE", !27, i64 0}
!47 = !{!"_ZTSSt10error_code", !22, i64 0, !46, i64 8}
!48 = !{!47, !46, i64 8}
!49 = !{!"bool", !21, i64 0}
!50 = !{!"_ZTSSt14_Function_base", !21, i64 0, !27, i64 16}
!51 = !{!"_ZTSSt8functionIFvRN5boost5beast9unit_test6runnerEEE", !50, i64 0, !27, i64 24}
!52 = !{!"_ZTSN5boost5beast9unit_test10suite_infoE", !33, i64 0, !33, i64 32, !33, i64 64, !49, i64 96, !51, i64 104}
!53 = !{!52, !49, i64 96}
!54 = !{!51, !27, i64 24}
!55 = !{!50, !27, i64 16}
!56 = !{!"_ZTSSt14_Rb_tree_color", !21, i64 0}
!57 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !27, i64 0}
!58 = !{!"_ZTSSt18_Rb_tree_node_base", !56, i64 0, !57, i64 8, !57, i64 16, !57, i64 24}
!59 = !{!"_ZTSSt15_Rb_tree_header", !58, i64 0, !31, i64 32}
!60 = !{!59, !57, i64 8}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!59, !57, i64 16}
!63 = !{!59, !31, i64 32}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0}
!67 = !{i64 8}
!68 = !{!27, !27, i64 0}
!69 = !{!"p1 _ZTSN5boost5beast9unit_test5suiteE", !27, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"_ZTSSi", !31, i64 8}
!72 = !{ptr @_ZN5boost5beast9unit_test5suite6log_osIcSt11char_traitsIcESaIcEED1Ev, ptr @_ZN5boost5beast9unit_test5suite7log_bufIcSt11char_traitsIcESaIcEED2Ev}
!73 = !{ptr @_ZN5boost5beast9unit_test5suite6log_osIcSt11char_traitsIcESaIcEED1Ev}
!74 = !{!"p1 _ZTSN5boost5beast9unit_test6runnerE", !27, i64 0}
!75 = !{!"_ZTSSo"}
!76 = !{!"p1 _ZTSNSt6locale5_ImplE", !27, i64 0}
!77 = !{!"_ZTSSt6locale", !76, i64 0}
!78 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !77, i64 56}
!79 = !{!"_ZTSSt13_Ios_Openmode", !21, i64 0}
!80 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !78, i64 0, !79, i64 64, !33, i64 72}
!81 = !{!"_ZTSN5boost5beast9unit_test5suite7log_bufIcSt11char_traitsIcESaIcEEE", !80, i64 0, !69, i64 104}
!82 = !{!"_ZTSN5boost5beast9unit_test5suite6log_osIcSt11char_traitsIcESaIcEEE", !75, i64 0, !81, i64 8}
!83 = !{!"_ZTSSd", !71, i64 0, !75, i64 16}
!84 = !{!"_ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !83, i64 0, !80, i64 24}
!85 = !{!"_ZTSN5boost5beast9unit_test5suite10testcase_tE", !69, i64 0, !84, i64 8}
!86 = !{!"_ZTSN5boost5beast9unit_test5suiteE", !49, i64 8, !49, i64 9, !74, i64 16, !82, i64 24, !85, i64 408}
!87 = !{!86, !49, i64 8}
!88 = !{!86, !49, i64 9}
!89 = !{!86, !74, i64 16}
!90 = !{!80, !79, i64 64}
!91 = !{ptr @_ZN5boost5beast9unit_test5suite7log_bufIcSt11char_traitsIcESaIcEED2Ev}
!92 = !{!"_ZTSSt22__recursive_mutex_base", !21, i64 0}
!93 = !{!"_ZTSSt15recursive_mutex", !92, i64 0}
!94 = !{!"_ZTSN5boost5beast9unit_test6runnerE", !33, i64 8, !49, i64 40, !49, i64 41, !49, i64 42, !93, i64 48}
!95 = !{!94, !49, i64 40}
!96 = !{!94, !49, i64 42}
!97 = !{!49, !49, i64 0}
!98 = !{!"_ZTSN5boost5beast17basic_flat_bufferISaIcEEE", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !31, i64 40}
!99 = !{!98, !31, i64 40}
!100 = !{!"_ZTSN5boost4asio15aligned_storageILm24ELm8EE4typeE", !21, i64 0}
!101 = !{!"p1 _ZTSN5boost4asio9execution6detail17any_executor_base10object_fnsE", !27, i64 0}
!102 = !{!"p1 _ZTSN5boost4asio9execution6detail17any_executor_base10target_fnsE", !27, i64 0}
!103 = !{!"_ZTSN5boost4asio9execution6detail17any_executor_baseE", !100, i64 0, !101, i64 24, !27, i64 32, !102, i64 40}
!104 = !{!103, !102, i64 40}
!105 = !{!103, !101, i64 24}
!106 = !{!"_ZTSN5boost4asio10io_context19basic_executor_typeISaIvELm0EEE", !31, i64 0}
!107 = !{!106, !31, i64 0}
!108 = !{!103, !27, i64 32}
!109 = !{!"p1 _ZTSN5boost4asio9execution6detail17any_executor_base8prop_fnsINS1_12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS2_8blocking7never_tILi0EEENS1_11prefer_onlyINSA_10possibly_tILi0EEEEENSD_INS2_16outstanding_work9tracked_tILi0EEEEENSD_INSH_11untracked_tILi0EEEEENSD_INS2_12relationship6fork_tILi0EEEEENSD_INSO_14continuation_tILi0EEEEEEEEEE", !27, i64 0}
!110 = !{!"_ZTSN5boost4asio9execution12any_executorIJNS1_12context_as_tIRNS0_17execution_contextEEENS1_6detail8blocking7never_tILi0EEENS1_11prefer_onlyINS8_10possibly_tILi0EEEEENSB_INS7_16outstanding_work9tracked_tILi0EEEEENSB_INSF_11untracked_tILi0EEEEENSB_INS7_12relationship6fork_tILi0EEEEENSB_INSM_14continuation_tILi0EEEEEEEE", !103, i64 0, !109, i64 48}
!111 = !{!110, !109, i64 48}
!112 = !{!"p1 _ZTSN5boost5beast4test6detail12stream_stateE", !27, i64 0}
!113 = !{!"p1 _ZTSN5boost6detail15sp_counted_baseE", !27, i64 0}
!114 = !{!"_ZTSN5boost6detail12shared_countE", !113, i64 0}
!115 = !{!"_ZTSN5boost10shared_ptrINS_5beast4test6detail12stream_stateEEE", !112, i64 0, !114, i64 8}
!116 = !{!115, !112, i64 0}
!117 = !{!98, !28, i64 16}
!118 = !{!98, !28, i64 24}
!119 = !{!"_ZTSN5boost15source_locationE", !28, i64 0, !28, i64 8, !22, i64 16, !22, i64 20}
!120 = !{!119, !28, i64 0}
!121 = !{!119, !28, i64 8}
!122 = !{!119, !22, i64 16}
!123 = !{!119, !22, i64 20}
!124 = !{!"_ZTSN5boost6detail10weak_countE", !113, i64 0}
!125 = !{!124, !113, i64 0}
!126 = !{!114, !113, i64 0}
!127 = !{!98, !28, i64 0}
!128 = !{!98, !28, i64 32}
!129 = !{!"_ZTSN5boost15optional_detail25constexpr_guarded_storageINS_6system10error_codeEEE", !49, i64 0, !21, i64 8}
!130 = !{!129, !49, i64 0}
!131 = !{!"_ZTSN5boost8optionalINS_6system10error_codeEEE", !129, i64 0}
!132 = !{!"_ZTSN5boost5beast4test7handlerE", !131, i64 0, !49, i64 32, !119, i64 40}
!133 = !{!132, !49, i64 32}
!134 = !{!"_ZTSN5boost4asio15any_io_executorE", !110, i64 0}
!135 = !{!"_ZTSN5boost4asio15aligned_storageILm56ELm8EE4typeE", !21, i64 0}
!136 = !{!"_ZTSN5boost4asio19executor_work_guardINS0_15any_io_executorEvvEE", !134, i64 0, !135, i64 56, !49, i64 112}
!137 = !{!136, !49, i64 112}
!138 = !{ptr @_ZN5boost5beast10async_baseINS0_4test7handlerENS_4asio15any_io_executorESaIvEED2Ev}
!139 = !{!28, !28, i64 0}
!140 = !{!22, !22, i64 0}
!141 = !{!"p1 _ZTSN5boost16exception_detail20error_info_containerE", !27, i64 0}
!142 = !{!"_ZTSN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEE", !141, i64 0}
!143 = !{!142, !141, i64 0}
!144 = !{!"_ZTSN5boost5logic7tribool7value_tE", !21, i64 0}
!145 = !{!"_ZTSN5boost5logic7triboolE", !144, i64 0}
!146 = !{!145, !144, i64 0}
!147 = !{!98, !28, i64 8}
!148 = !{!47, !22, i64 0}
!149 = !{!"_ZTSN5boost8weak_ptrINS_5beast4test6detail12stream_stateEEE", !112, i64 0, !124, i64 8}
!150 = !{!149, !112, i64 0}
!151 = !{!"p1 _ZTSN5boost5beast4test6detail19stream_service_implE", !27, i64 0}
end_hunk_2
