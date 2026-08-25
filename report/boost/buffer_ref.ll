Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/buffer_ref?download=true
inline.NumInlined: 4775
inline.NumDeleted: 1323
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init() #5 section ".text.startup" comdat($_ZN5boost4asio5error15system_categoryE) personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN5boost4asio5error15system_categoryE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN5boost4asio5error15system_categoryE) #31
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr @_ZN5boost4asio5error15system_categoryE, align 8, !tbaa !19
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN5boost4asio5error15system_categoryE) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

; Function Attrs: uwtable
define internal void @__cxx_global_var_init.1() #7 section ".text.startup" comdat($_ZN5boost4asio5error14netdb_categoryE) personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN5boost4asio5error14netdb_categoryE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN5boost4asio5error14netdb_categoryE) #31
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error18get_netdb_categoryEv()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZN5boost4asio5error14netdb_categoryE, align 8, !tbaa !19
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN5boost4asio5error14netdb_categoryE) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret void

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVN5boost4asio5error14netdb_categoryE) #31
  resume { ptr, i32 } %i.e
}

declare noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error18get_netdb_categoryEv() local_unnamed_addr #8

; Function Attrs: uwtable
define internal void @__cxx_global_var_init.2() #7 section ".text.startup" comdat($_ZN5boost4asio5error17addrinfo_categoryE) personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN5boost4asio5error17addrinfo_categoryE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN5boost4asio5error17addrinfo_categoryE) #31
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error21get_addrinfo_categoryEv()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZN5boost4asio5error17addrinfo_categoryE, align 8, !tbaa !19
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN5boost4asio5error17addrinfo_categoryE) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret void

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVN5boost4asio5error17addrinfo_categoryE) #31
  resume { ptr, i32 } %i.e
}

declare noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error21get_addrinfo_categoryEv() local_unnamed_addr #8

; Function Attrs: uwtable
define internal void @__cxx_global_var_init.3() #7 section ".text.startup" comdat($_ZN5boost4asio5error13misc_categoryE) personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN5boost4asio5error13misc_categoryE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN5boost4asio5error13misc_categoryE) #31
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZN5boost4asio5error13misc_categoryE, align 8, !tbaa !19
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN5boost4asio5error13misc_categoryE) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret void

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVN5boost4asio5error13misc_categoryE) #31
  resume { ptr, i32 } %i.e
}

declare noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv() local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost5beast10buffer_refINS0_17basic_flat_bufferISaIcEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21, !nonnull !24, !align !25 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  ret i64 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost5beast10buffer_refINS0_17basic_flat_bufferISaIcEEEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21, !nonnull !24, !align !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29
  ret i64 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost5beast10buffer_refINS0_17basic_flat_bufferISaIcEEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21, !nonnull !24, !align !25 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  ret i64 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden { ptr, i64 } @_ZNK5boost5beast10buffer_refINS0_17basic_flat_bufferISaIcEEEE4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21, !nonnull !24, !align !25 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.h, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden { ptr, i64 } @_ZN5boost5beast10buffer_refINS0_17basic_flat_bufferISaIcEEEE7prepareEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21, !nonnull !24, !align !25
  %i.b = tail call { ptr, i64 } @_ZN5boost5beast17basic_flat_bufferISaIcEE7prepareEm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %1)
  ret { ptr, i64 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN5boost5beast17basic_flat_bufferISaIcEE7prepareEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::length_error", align 8 ; 5 uses
  %3 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %4 = alloca %"class.std::length_error", align 8 ; 5 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %6 = alloca i64, align 8                        ; 4 uses
  %7 = alloca i64, align 8                        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !29   ; 3 uses
  %i.j = icmp ugt i64 %i.g, %i.i
  %i.k = sub nuw i64 %i.i, %i.g
  %i.l = icmp ugt i64 %1, %i.k
  %or.cond = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr @.str.18, ptr %5, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.19, ptr %i.m, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 325, ptr %i.n, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 42, ptr %i.o, align 4, !tbaa !36
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #33
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.al, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.t = sub i64 %i.s, %i.e
  %.not = icmp ugt i64 %1, %i.t
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !37
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = add i64 %i.g, %i.x
  %i.z = sub i64 %i.s, %i.y
  %.not28 = icmp ugt i64 %1, %i.z
  br i1 %.not28, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not30 = icmp eq ptr %i.d, %i.b
  br i1 %.not30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %0, align 8, !tbaa !30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aa = phi ptr [ %.pre, %bb.i ], [ %i.w, %bb.h ] ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.g ; 3 uses
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !37
  br label %bb.q

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ae = shl i64 %i.g, 1                         ; 3 uses
  store i64 %i.ae, ptr %6, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.af = add i64 %i.g, %1                        ; 3 uses
  store i64 %i.af, ptr %7, align 8, !tbaa !13
  %8 = icmp ult i64 %i.ae, %i.af
  %..i = select i1 %8, ptr %7, ptr %6
  %i.ag = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.af)
  %9 = icmp ult i64 %i.ag, %i.i
  %..i32 = select i1 %9, ptr %..i, ptr %i.h
  %10 = load i64, ptr %..i32, align 8, !tbaa !13  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ah = icmp slt i64 %10, 0
  br i1 %i.ah, label %bb.l, label %_ZN5boost5beast17basic_flat_bufferISaIcEE5allocEm.exit

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.20)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr @.str.18, ptr %3, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.21, ptr %i.ai, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 549, ptr %i.aj, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 73, ptr %i.ak, align 4, !tbaa !36
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #33
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %common.resume

_ZN5boost5beast17basic_flat_bufferISaIcEE5allocEm.exit: ; preds = %bb.k
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #34 ; 5 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !30    ; 3 uses
  %.not29 = icmp eq ptr %i.an, null
  br i1 %.not29, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN5boost5beast17basic_flat_bufferISaIcEE5allocEm.exit
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.ao, i64 %i.g, i1 false)
  %i.ap = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #35
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN5boost5beast17basic_flat_bufferISaIcEE5allocEm.exit
  store ptr %i.am, ptr %0, align 8, !tbaa !30
  store ptr %i.am, ptr %i.a, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.g ; 3 uses
  store ptr %i.at, ptr %i.c, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.au, ptr %i.av, align 8, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 %10
  store ptr %i.aw, ptr %i.q, align 8, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j, %bb.f
  %.sroa.0.0 = phi ptr [ %i.at, %bb.p ], [ %i.ab, %bb.j ], [ %i.d, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %1, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost5beast10buffer_refINS0_17basic_flat_bufferISaIcEEEE6commitEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21, !nonnull !24, !align !25 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.speculated.i
  store ptr %i.i, ptr %i.b, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost5beast10buffer_refINS0_17basic_flat_bufferISaIcEEEE7consumeEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21, !nonnull !24, !align !25 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %.not.i = icmp ult i64 %1, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !28
  br label %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %1
  br label %_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit

_ZN5boost5beast17basic_flat_bufferISaIcEE7consumeEm.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  store ptr %.sink.i, ptr %i.b, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost5beast10buffer_refINS0_17basic_flat_bufferISaIcEEEEC2ERS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #9 comdat($_ZN5boost5beast10buffer_refINS0_17basic_flat_bufferISaIcEEEEC5ERS4_) align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost5beast10buffer_refINS0_18flat_static_bufferILm2EEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39, !nonnull !24, !align !25 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  ret i64 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost5beast10buffer_refINS0_18flat_static_bufferILm2EEEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret i64 2
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost5beast10buffer_refINS0_18flat_static_bufferILm2EEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret i64 2
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden { ptr, i64 } @_ZNK5boost5beast10buffer_refINS0_18flat_static_bufferILm2EEEE4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39, !nonnull !24, !align !25 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.c, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.h, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden { ptr, i64 } @_ZN5boost5beast10buffer_refINS0_18flat_static_bufferILm2EEEE7prepareEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39, !nonnull !24, !align !25
  %i.b = tail call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef %1)
  ret { ptr, i64 } %i.b
}

declare { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost5beast10buffer_refINS0_18flat_static_bufferILm2EEEE6commitEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39, !nonnull !24, !align !25 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.speculated.i
  store ptr %i.i, ptr %i.d, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost5beast10buffer_refINS0_18flat_static_bufferILm2EEEE7consumeEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39, !nonnull !24, !align !25
  tail call void @_ZN5boost5beast23flat_static_buffer_base7consumeEm(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef %1) #31
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5boost5beast23flat_static_buffer_base7consumeEm(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost5beast10buffer_refINS0_18flat_static_bufferILm2EEEEC2ERS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(42) %1) unnamed_addr #9 comdat($_ZN5boost5beast10buffer_refINS0_18flat_static_bufferILm2EEEEC5ERS3_) align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47, !nonnull !24, !align !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !50
  ret i64 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47, !nonnull !24, !align !25
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47, !nonnull !24, !align !25 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8capacityEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !67
  %i.l = sub i64 %i.i, %i.k                       ; 2 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  %.not12.i = icmp eq ptr %i.m, %i.d
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.n = phi ptr [ %i.r, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %.013.i = phi i64 [ %i.q, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !62
  %i.q = add i64 %i.p, %.013.i                    ; 2 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !68   ; 2 uses
  %.not.i = icmp eq ptr %i.r, %i.d
end_hunk_0
