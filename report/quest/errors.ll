Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/errors?download=true
begin_hunk_0_@_Z28assert_quregIsGpuAccelerated5Qureg:bb.a
  store i8 0, ptr %i.h, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %.unreachable.i unwind label %bb.c

.unreachable.i:                                   ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.d, align 8, !tbaa !16
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  resume { ptr, i32 } %i.i

bb.d:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z22assert_gpuIsAccessiblev() local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = tail call noundef zeroext i1 @_Z17gpu_isGpuCompiledv()
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_Z18gpu_isGpuAvailablev()
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 168, ptr %i.a, align 8, !tbaa !72
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !20
  %i.f = load i64, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(168) %i.e, ptr noundef nonnull align 1 dereferenceable(168) @.str.104, i64 168, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.unreachable.i unwind label %bb.d

.unreachable.i:                                   ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.d, align 8, !tbaa !16
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.b
  ret void
}

declare noundef zeroext i1 @_Z17gpu_isGpuCompiledv() local_unnamed_addr #4

declare noundef zeroext i1 @_Z18gpu_isGpuAvailablev() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z22assert_gpuHasBeenBoundb(i1 noundef zeroext %0) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  br i1 %0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 111, ptr %i.a, align 8, !tbaa !72
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !20
  %i.d = load i64, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(111) %i.c, ptr noundef nonnull align 1 dereferenceable(111) @.str.108, i64 111, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_Z18raiseInternalErrorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %.unreachable unwind label %bb.b

.unreachable:                                     ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.j = load i64, ptr %i.b, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  resume { ptr, i32 } %i.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define void @_Z20error_cudaCallFailedPKcS0_S0_S0_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  store i64 0, ptr %i.c, align 8, !tbaa !13
  store i8 0, ptr %i.b, align 8, !tbaa !16
  %i.d = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.109, i64 noundef 37)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !tbaa !13
  %i.g = sub i64 4611686018427387903, %i.f
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %1, i64 noundef %i.e)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit15 unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i12
  %i.j = load i64, ptr %i.c, align 8, !tbaa !13
  %i.k = add i64 %i.j, -4611686018427387890
  %i.l = icmp ult i64 %i.k, 14
  br i1 %i.l, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit15
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.110, i64 noundef 14)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit19 unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i16
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #18 ; 2 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !13
  %i.p = sub i64 4611686018427387903, %i.o
  %i.q = icmp ult i64 %i.p, %i.n
  br i1 %i.q, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit19
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %2, i64 noundef %i.n)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit23 unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20
  %i.s = load i64, ptr %i.c, align 8, !tbaa !13
  %i.t = add i64 %i.s, -4611686018427387892
  %i.u = icmp ult i64 %i.t, 12
  br i1 %i.u, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit23
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.111, i64 noundef 12)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit27 unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.w = call i32 @llvm.abs.i32(i32 %4, i1 false) ; 5 uses
  %i.x = icmp ult i32 %i.w, 10
  br i1 %i.x, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit27, %bb.f
  %.02230.i.i = phi i32 [ %i.ae, %bb.f ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit27 ] ; 5 uses
  %.02329.i.i = phi i32 [ %i.af, %bb.f ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit27 ] ; 4 uses
  %i.y = icmp ult i32 %.02230.i.i, 100
  br i1 %i.y, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i.i
  %i.z = add i32 %.02329.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.aa = icmp ult i32 %.02230.i.i, 1000
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = add i32 %.02329.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ac = icmp ult i32 %.02230.i.i, 10000
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = add i32 %.02329.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = udiv i32 %.02230.i.i, 10000
  %i.af = add i32 %.02329.i.i, 4                  ; 2 uses
  %i.ag = icmp ult i32 %.02230.i.i, 100000
  br i1 %i.ag, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !121

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.f, %bb.e, %bb.c, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit27
  %.0.i.i = phi i32 [ %i.ad, %bb.e ], [ %i.z, %bb.a ], [ %i.ab, %bb.c ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit27 ], [ %i.af, %bb.f ] ; 2 uses
  %.lobit.i = lshr i32 %4, 31                     ; 2 uses
  %i.ah = add i32 %.0.i.i, %.lobit.i
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.aj, ptr %6, align 8, !tbaa !9, !alias.scope !118
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ai, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.ak = zext nneg i32 %.lobit.i to i64
  %i.al = load ptr, ptr %6, align 8, !tbaa !20, !alias.scope !118
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak ; 4 uses
  %i.an = icmp ugt i32 %i.w, 99
  br i1 %i.an, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i28

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.ao = add i32 %.0.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.ar, %.lr.ph.i11.i ], [ %i.w, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bc, %.lr.ph.i11.i ], [ %i.ao, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ap = urem i32 %.020.i.i, 100
  %i.aq = shl nuw nsw i32 %i.ap, 1
  %i.ar = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16, !noalias !118
  %i.aw = zext i32 %.01819.i.i to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aw
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !16
  %i.ay = load i8, ptr %i.at, align 2, !tbaa !16, !noalias !118
  %i.az = add i32 %.01819.i.i, -1
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ba
  store i8 %i.ay, ptr %i.bb, align 1, !tbaa !16
  %i.bc = add i32 %.01819.i.i, -2
  %i.bd = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.bd, label %.lr.ph.i11.i, label %._crit_edge.i.i28, !llvm.loop !122

._crit_edge.i.i28:                                ; preds = %.lr.ph.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.ar, %.lr.ph.i11.i ] ; 3 uses
  %i.be = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i28
  %i.bf = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !16, !noalias !118
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !16
  %i.bl = load i8, ptr %i.bh, align 2, !tbaa !16, !noalias !118
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.h:                                             ; preds = %._crit_edge.i.i28
  %i.bm = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.bn = or disjoint i8 %i.bm, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #19
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.g, %bb.h
  %storemerge.i.i = phi i8 [ %i.bn, %bb.h ], [ %i.bl, %bb.g ]
  store i8 %storemerge.i.i, ptr %i.am, align 1, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  %i.bs = load i64, ptr %i.c, align 8, !tbaa !13
  %i.bt = sub i64 4611686018427387903, %i.bs
  %i.bu = icmp ult i64 %i.bt, %i.br
  br i1 %i.bu, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.j:                                             ; preds = %_ZNSt7__cxx119to_stringEi.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc29 unwind label %bb.o

.noexc29:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.bv = load ptr, ptr %6, align 8, !tbaa !20
  %i.bw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.bv, i64 noundef %i.br)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.o ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bx = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.aj
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bz = load i64, ptr %i.aj, align 8, !tbaa !16
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.cb = load i64, ptr %i.c, align 8, !tbaa !13
  %i.cc = add i64 %i.cb, -4611686018427387895
  %i.cd = icmp ult i64 %i.cc, 9
  br i1 %i.cd, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.112, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34 unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31
  %i.cf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #18 ; 2 uses
  %i.cg = load i64, ptr %i.c, align 8, !tbaa !13
  %i.ch = sub i64 4611686018427387903, %i.cg
  %i.ci = icmp ult i64 %i.ch, %i.cf
  br i1 %i.ci, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34
  %i.cj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %3, i64 noundef %i.cf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38 unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35
  %i.ck = load i64, ptr %i.c, align 8, !tbaa !13
  %i.cl = add i64 %i.ck, -4611686018427387861
  %i.cm = icmp ult i64 %i.cl, 43
  br i1 %i.cm, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38
  %i.cn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.113, i64 noundef 43)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42 unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39
  %i.co = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18 ; 2 uses
  %i.cp = load i64, ptr %i.c, align 8, !tbaa !13
  %i.cq = sub i64 4611686018427387903, %i.cp
  %i.cr = icmp ult i64 %i.cq, %i.co
  br i1 %i.cr, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42
  %i.cs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %0, i64 noundef %i.co)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit46 unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43
  %i.ct = load i64, ptr %i.c, align 8, !tbaa !13
  %i.cu = add i64 %i.ct, -4611686018427387901
  %i.cv = icmp ult i64 %i.cu, 3
  br i1 %i.cv, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit46
  %i.cw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.114, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit50 unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.cx, ptr %7, align 8, !tbaa !9
  %i.cy = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.cz = load i64, ptr %i.c, align 8, !tbaa !13  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.cz, ptr %i.a, align 8, !tbaa !72
  %i.da = icmp ugt i64 %i.cz, 15
  br i1 %i.da, label %.noexc.i52, label %._crit_edge.i.i51

.noexc.i52:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit50
  %i.db = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc53 unwind label %bb.n   ; 2 uses

.noexc53:                                         ; preds = %.noexc.i52
  store ptr %i.db, ptr %7, align 8, !tbaa !20
  %i.dc = load i64, ptr %i.a, align 8, !tbaa !72
  store i64 %i.dc, ptr %i.cx, align 8, !tbaa !16
  br label %._crit_edge.i.i51

._crit_edge.i.i51:                                ; preds = %.noexc53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit50
  %i.dd = phi ptr [ %i.db, %.noexc53 ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit50 ] ; 2 uses
  switch i64 %i.cz, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i51
  %i.de = load i8, ptr %i.cy, align 1, !tbaa !16
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !16
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i51
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr align 1 %i.cy, i64 %i.cz, i1 false)
end_hunk_0
