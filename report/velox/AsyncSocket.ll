inline.NumInlined: 4673
inline.NumDeleted: 1879
begin_hunk_0_@_ZN5folly11AsyncSocket9setReadCBEPNS_11AsyncReader12ReadCallbackE:bb.a
          to label %._crit_edge unwind label %bb.v ; 0 uses

._crit_edge:                                      ; preds = %bb.u
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !14137
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.w:                                             ; preds = %._crit_edge, %bb.t
  %i.bq = phi ptr [ %.pre, %._crit_edge ], [ %1, %bb.t ]
  %.not27 = icmp eq ptr %i.bq, null
  br i1 %.not27, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = load ptr, ptr %0, align 8, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 712
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(1169) %0) #41, !call_target !13268
  br label %bb.z

bb.y:                                             ; preds = %.invoke
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.invoke:                                          ; preds = %bb.r
  invoke void @_ZN5folly11AsyncSocket12invalidStateEPNS_11AsyncReader12ReadCallbackE(ptr noundef nonnull align 8 dereferenceable(1169) %0, ptr noundef %1)
          to label %bb.z unwind label %bb.y

bb.z:                                             ; preds = %.invoke, %bb.s, %bb.x, %bb.w
  %i.bv = load i32, ptr %i.bf, align 8, !tbaa !14116
  %i.bw = add i32 %i.bv, -1                       ; 2 uses
  store i32 %i.bw, ptr %i.bf, align 8, !tbaa !14116
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.aa, label %_ZN5folly22DelayedDestructionBase15DestructorGuardD2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.by = load ptr, ptr %0, align 8, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(12) %0, i1 noundef zeroext true)
          to label %_ZN5folly22DelayedDestructionBase15DestructorGuardD2Ev.exit unwind label %bb.ab, !call_target !7704

bb.ab:                                            ; preds = %bb.aa
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #43
  unreachable

_ZN5folly22DelayedDestructionBase15DestructorGuardD2Ev.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.y ], [ %i.bp, %bb.v ]
  call void @_ZN5folly22DelayedDestructionBase15DestructorGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.ae

bb.ad:                                            ; preds = %.critedge31, %_ZN5folly22DelayedDestructionBase15DestructorGuardD2Ev.exit, %bb.q, %.thread
  ret void

bb.ae:                                            ; preds = %bb.ac, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %i.y, %bb.f ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK5folly11AsyncSocket15getReadCallbackEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(1169) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14137
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11AsyncSocket16setEventCallbackEPNS_20EventRecvmsgCallbackE(ptr noundef nonnull align 8 dereferenceable(1169) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  store ptr %1, ptr %i.a, align 8, !tbaa !14155
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ 2, %bb.b ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i32 %.sink, ptr %i.b, align 8, !tbaa !14323
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly11AsyncSocket11setZeroCopyEb(ptr noundef nonnull align 8 captures(none) dereferenceable(1169) initializes((1009, 1010)) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = zext i1 %1 to i8                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1009
  store i8 %i.c, ptr %i.d, align 1, !tbaa !14280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !14114 ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !14324, !range !13961, !noundef !149
  %i.j = icmp eq i8 %i.i, %i.c
  br i1 %i.j, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.k = zext i1 %1 to i32
  store i32 %i.k, ptr %i.a, align 4, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14174 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.d, label %_ZNK5folly6netops19DispatcherContainerptEv.exit

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noundef ptr @_ZN5folly6netops10Dispatcher18getDefaultInstanceEv()
  %.sroa.01.0.copyload.pre = load i32, ptr %i.e, align 4, !tbaa !7
  br label %_ZNK5folly6netops19DispatcherContainerptEv.exit

_ZNK5folly6netops19DispatcherContainerptEv.exit:  ; preds = %bb.c, %bb.d
  %.sroa.01.0.copyload = phi i32 [ %.sroa.01.0.copyload.pre, %bb.d ], [ %i.f, %bb.c ]
  %i.o = phi ptr [ %i.n, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 %.sroa.01.0.copyload, i32 noundef 1, i32 noundef 60, ptr noundef nonnull %i.a, i32 noundef 4), !call_target !14175
  br i1 %1, label %bb.e, label %.thread23

bb.e:                                             ; preds = %_ZNK5folly6netops19DispatcherContainerptEv.exit
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i32 4, ptr %i.b, align 4, !tbaa !7
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !14174 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.t, null
  br i1 %.not.i.i18, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = call noundef ptr @_ZN5folly6netops10Dispatcher18getDefaultInstanceEv()
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = phi ptr [ %i.u, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.e, align 4, !tbaa !7
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i32 %.sroa.0.0.copyload, i32 noundef 1, i32 noundef 60, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b), !call_target !14325
  %.not16 = icmp eq i32 %i.z, 0
  %i.aa = load i32, ptr %i.a, align 4
  %i.ab = icmp ne i32 %i.aa, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br i1 %.not16, label %.thread, label %.sink.split

.thread:                                          ; preds = %bb.e, %bb.h
  %.11422 = phi i1 [ %i.ab, %bb.h ], [ true, %bb.e ]
  %i.ac = zext i1 %.11422 to i8
  br label %.thread23

.thread23:                                        ; preds = %_ZNK5folly6netops19DispatcherContainerptEv.exit, %.thread
  %storemerge = phi i8 [ %i.ac, %.thread ], [ 0, %_ZNK5folly6netops19DispatcherContainerptEv.exit ]
  store i8 %storemerge, ptr %i.h, align 8, !tbaa !14324
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %.thread23
  %.1.ph = phi i1 [ true, %.thread23 ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ %.1.ph, %.sink.split ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5folly11AsyncSocket11getZeroCopyEv(ptr noundef nonnull align 8 dereferenceable(1169) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14324, !range !13961, !noundef !149
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11AsyncSocket21setZeroCopyEnableFuncESt8functionIFbRKSt10unique_ptrINS_5IOBufESt14default_deleteIS3_EEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(1169) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 16    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14328 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEEEC2ERKS9_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !14313
  br label %_ZNSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEEEC2ERKS9_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 16, !tbaa !14328 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #43
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.g

_ZNSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEEEC2ERKS9_.exit.i: ; preds = %bb.c, %bb.a
  %i.l = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.f, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !14155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !14329
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !14155
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !14313
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !14313 ; 2 uses
  store <2 x ptr> %i.n, ptr %i.b, align 16, !tbaa !14313
  store <2 x ptr> %i.l, ptr %i.m, align 8, !tbaa !14313
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEEEaSERKS9_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEEEC2ERKS9_.exit.i
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEEEaSERKS9_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #43
  unreachable

_ZNSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEEEaSERKS9_.exit: ; preds = %_ZNSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEEEC2ERKS9_.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11AsyncSocket5writeEPNS_11AsyncWriter13WriteCallbackEPKvmNS_10WriteFlagsE(ptr noundef nonnull align 8 dereferenceable(1169) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.iovec, align 8              ; 6 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store ptr %2, ptr %5, align 8, !tbaa !14330
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %3, ptr %i.a, align 8, !tbaa !14332
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr null, ptr %6, align 8, !tbaa !14249
  invoke void @_ZN5folly11AsyncSocket9writeImplEPNS_11AsyncWriter13WriteCallbackEPK5iovecmOSt10unique_ptrINS_5IOBufESt14default_deleteIS8_EEmNS_10WriteFlagsE(ptr noundef nonnull align 8 dereferenceable(1169) %0, ptr noundef %1, ptr noundef nonnull %5, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %3, i32 noundef %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %6, align 8, !tbaa !14183  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i: ; preds = %bb.b
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.b) #41
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.b) #41
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11AsyncSocket6writevEPNS_11AsyncWriter13WriteCallbackEPK5iovecmNS_10WriteFlagsE(ptr noundef nonnull align 8 dereferenceable(1169) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 5
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check18 = icmp ult i64 %3, 17
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %3, 15                      ; 2 uses
  %i.a = icmp eq i64 %n.mod.vf, 0
  %i.b = select i1 %i.a, i64 16, i64 %n.mod.vf    ; 2 uses
  %n.vec = sub i64 %3, %i.b                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi19 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi20 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi21 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %wide.vec = load <8 x i64>, ptr %i.g, align 8, !tbaa !14332
  %strided.vec = shufflevector <8 x i64> %wide.vec, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec22 = load <8 x i64>, ptr %i.h, align 8, !tbaa !14332
  %strided.vec23 = shufflevector <8 x i64> %wide.vec22, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec24 = load <8 x i64>, ptr %i.i, align 8, !tbaa !14332
  %strided.vec25 = shufflevector <8 x i64> %wide.vec24, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec26 = load <8 x i64>, ptr %i.j, align 8, !tbaa !14332
  %strided.vec27 = shufflevector <8 x i64> %wide.vec26, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.k = add <4 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.l = add <4 x i64> %strided.vec23, %vec.phi19 ; 2 uses
  %i.m = add <4 x i64> %strided.vec25, %vec.phi20 ; 2 uses
  %i.n = add <4 x i64> %strided.vec27, %vec.phi21 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !14333

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.l, %i.k
  %bin.rdx28 = add <4 x i64> %i.m, %bin.rdx
  %bin.rdx29 = add <4 x i64> %i.n, %bin.rdx28
  %i.p = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx29) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.b, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !14336

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.p, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf30 = and i64 %3, 3                     ; 2 uses
  %i.q = icmp eq i64 %n.mod.vf30, 0
  %i.r = select i1 %i.q, i64 4, i64 %n.mod.vf30
  %n.vec31 = sub i64 %3, %i.r                     ; 2 uses
  %i.s = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi33 = phi <4 x i64> [ %i.s, %vec.epilog.ph ], [ %i.v, %vec.epilog.vector.body ]
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index32
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %wide.vec34 = load <8 x i64>, ptr %i.u, align 8, !tbaa !14332
  %strided.vec35 = shufflevector <8 x i64> %wide.vec34, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.v = add <4 x i64> %strided.vec35, %vec.phi33 ; 2 uses
  %index.next36 = add nuw i64 %index32, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next36, %n.vec31
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14337

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.x = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.v)
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.ph = phi i64 [ 0, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  %.01315.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ab, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store ptr null, ptr %5, align 8, !tbaa !14249
  invoke void @_ZN5folly11AsyncSocket9writeImplEPNS_11AsyncWriter13WriteCallbackEPK5iovecmOSt10unique_ptrINS_5IOBufESt14default_deleteIS8_EEmNS_10WriteFlagsE(ptr noundef nonnull align 8 dereferenceable(1169) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %.0.lcssa, i32 noundef %4)
          to label %bb.b unwind label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.016 = phi i64 [ %i.ab, %.lr.ph ], [ %.016.ph, %.lr.ph.preheader ]
  %.01315 = phi i64 [ %i.ac, %.lr.ph ], [ %.01315.ph, %.lr.ph.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.01315
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !14332
  %i.ab = add i64 %i.aa, %.016                    ; 2 uses
  %i.ac = add nuw i64 %.01315, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14338

bb.b:                                             ; preds = %._crit_edge
  %i.ad = load ptr, ptr %5, align 8, !tbaa !14183 ; 3 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i: ; preds = %bb.b
  tail call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ad) #41
  tail call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.ad) #41
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  ret void

bb.c:                                             ; preds = %._crit_edge
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11AsyncSocket10writeChainEPNS_11AsyncWriter13WriteCallbackEOSt10unique_ptrINS_5IOBufESt14default_deleteIS5_EENS_10WriteFlagsE(ptr noundef nonnull align 8 dereferenceable(1169) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14324, !range !13961, !noundef !149
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN5folly11AsyncSocket19adjustZeroCopyFlagsERNS_10WriteFlagsE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14339 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZThn32_N5folly11AsyncSocket5writeEPNS_11AsyncWriter13WriteCallbackEPKvmNS_10WriteFlagsE:bb.a
  store ptr null, ptr %6, align 8, !tbaa !14249
  invoke void @_ZN5folly11AsyncSocket9writeImplEPNS_11AsyncWriter13WriteCallbackEPK5iovecmOSt10unique_ptrINS_5IOBufESt14default_deleteIS8_EEmNS_10WriteFlagsE(ptr noundef nonnull align 8 dereferenceable(1169) %i.a, ptr noundef %1, ptr noundef nonnull %5, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %3, i32 noundef %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %6, align 8, !tbaa !14183  ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN5folly11AsyncSocket5writeEPNS_11AsyncWriter13WriteCallbackEPKvmNS_10WriteFlagsE.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i: ; preds = %bb.b
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.c) #41
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.c) #41
  br label %_ZN5folly11AsyncSocket5writeEPNS_11AsyncWriter13WriteCallbackEPKvmNS_10WriteFlagsE.exit

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  resume { ptr, i32 } %i.d

_ZN5folly11AsyncSocket5writeEPNS_11AsyncWriter13WriteCallbackEPKvmNS_10WriteFlagsE.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  ret void
}

; Function Attrs: uwtable
define void @_ZThn32_N5folly11AsyncSocket6writevEPNS_11AsyncWriter13WriteCallbackEPK5iovecmNS_10WriteFlagsE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check5 = icmp ult i64 %3, 17
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %3, 15                      ; 2 uses
  %i.b = icmp eq i64 %n.mod.vf, 0
  %i.c = select i1 %i.b, i64 16, i64 %n.mod.vf    ; 2 uses
  %n.vec = sub i64 %3, %i.c                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi6 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi7 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi8 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %wide.vec = load <8 x i64>, ptr %i.h, align 8, !tbaa !14332
  %strided.vec = shufflevector <8 x i64> %wide.vec, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec9 = load <8 x i64>, ptr %i.i, align 8, !tbaa !14332
  %strided.vec10 = shufflevector <8 x i64> %wide.vec9, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec11 = load <8 x i64>, ptr %i.j, align 8, !tbaa !14332
  %strided.vec12 = shufflevector <8 x i64> %wide.vec11, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec13 = load <8 x i64>, ptr %i.k, align 8, !tbaa !14332
  %strided.vec14 = shufflevector <8 x i64> %wide.vec13, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.l = add <4 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.m = add <4 x i64> %strided.vec10, %vec.phi6  ; 2 uses
  %i.n = add <4 x i64> %strided.vec12, %vec.phi7  ; 2 uses
  %i.o = add <4 x i64> %strided.vec14, %vec.phi8  ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !15130

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.m, %i.l
  %bin.rdx15 = add <4 x i64> %i.n, %bin.rdx
  %bin.rdx16 = add <4 x i64> %i.o, %bin.rdx15
  %i.q = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx16) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.c, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !14336

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.q, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf17 = and i64 %3, 3                     ; 2 uses
  %i.r = icmp eq i64 %n.mod.vf17, 0
  %i.s = select i1 %i.r, i64 4, i64 %n.mod.vf17
  %n.vec18 = sub i64 %3, %i.s                     ; 2 uses
  %i.t = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi20 = phi <4 x i64> [ %i.t, %vec.epilog.ph ], [ %i.w, %vec.epilog.vector.body ]
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index19
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %wide.vec21 = load <8 x i64>, ptr %i.v, align 8, !tbaa !14332
  %strided.vec22 = shufflevector <8 x i64> %wide.vec21, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.w = add <4 x i64> %strided.vec22, %vec.phi20 ; 2 uses
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15131

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.y = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.w)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.i.ph = phi i64 [ 0, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  %.01315.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec18, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.ac, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store ptr null, ptr %5, align 8, !tbaa !14249
  invoke void @_ZN5folly11AsyncSocket9writeImplEPNS_11AsyncWriter13WriteCallbackEPK5iovecmOSt10unique_ptrINS_5IOBufESt14default_deleteIS8_EEmNS_10WriteFlagsE(ptr noundef nonnull align 8 dereferenceable(1169) %i.a, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %.0.lcssa.i, i32 noundef %4)
          to label %bb.b unwind label %bb.c

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.016.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.016.i.ph, %.lr.ph.i.preheader ]
  %.01315.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %.01315.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.01315.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !14332
  %i.ac = add i64 %i.ab, %.016.i                  ; 2 uses
  %i.ad = add nuw i64 %.01315.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !15132

bb.b:                                             ; preds = %._crit_edge.i
  %i.ae = load ptr, ptr %5, align 8, !tbaa !14183 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZN5folly11AsyncSocket6writevEPNS_11AsyncWriter13WriteCallbackEPK5iovecmNS_10WriteFlagsE.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i: ; preds = %bb.b
  tail call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ae) #41
  tail call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.ae) #41
  br label %_ZN5folly11AsyncSocket6writevEPNS_11AsyncWriter13WriteCallbackEPK5iovecmNS_10WriteFlagsE.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  resume { ptr, i32 } %i.af

_ZN5folly11AsyncSocket6writevEPNS_11AsyncWriter13WriteCallbackEPK5iovecmNS_10WriteFlagsE.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  ret void
}

; Function Attrs: uwtable
define void @_ZThn32_N5folly11AsyncSocket10writeChainEPNS_11AsyncWriter13WriteCallbackEOSt10unique_ptrINS_5IOBufESt14default_deleteIS5_EENS_10WriteFlagsE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN5folly11AsyncSocket10writeChainEPNS_11AsyncWriter13WriteCallbackEOSt10unique_ptrINS_5IOBufESt14default_deleteIS5_EENS_10WriteFlagsE(ptr noundef nonnull align 8 dereferenceable(1169) %i.a, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3)
  ret void
}

; Function Attrs: uwtable
define noundef zeroext i1 @_ZThn32_N5folly11AsyncSocket11setZeroCopyEb(ptr noundef captures(none) initializes((977, 978)) %0, i1 noundef zeroext %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  %i.b = tail call noundef zeroext i1 @_ZN5folly11AsyncSocket11setZeroCopyEb(ptr noundef nonnull align 8 dereferenceable(1169) %i.a, i1 noundef zeroext %1)
  ret i1 %i.b
}

; Function Attrs: uwtable
define linkonce_odr noundef zeroext i1 @_ZThn32_NK5folly11AsyncSocket11getZeroCopyEv(ptr noundef %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14324, !range !13961, !noundef !149
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly11AsyncWriter13setRXZeroCopyENS0_16RXZerocopyParamsE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %1, i64 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5folly11AsyncWriter13getRXZeroCopyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: uwtable
define void @_ZThn32_N5folly11AsyncSocket21setZeroCopyEnableFuncESt8functionIFbRKSt10unique_ptrINS_5IOBufESt14default_deleteIS3_EEEE(ptr noundef captures(none) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 16    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14328 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEEEC2ERKS9_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !14313
  br label %_ZNSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEEEC2ERKS9_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 16, !tbaa !14328 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #43
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i:             ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.g

_ZNSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEEEC2ERKS9_.exit.i.i: ; preds = %bb.c, %bb.a
  %i.l = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.f, %bb.c ]
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !14155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !14329
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !14155
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !14313
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !14313 ; 2 uses
  store <2 x ptr> %i.n, ptr %i.b, align 16, !tbaa !14313
  store <2 x ptr> %i.l, ptr %i.m, align 8, !tbaa !14313
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN5folly11AsyncSocket21setZeroCopyEnableFuncESt8functionIFbRKSt10unique_ptrINS_5IOBufESt14default_deleteIS3_EEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEEEC2ERKS9_.exit.i.i
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZN5folly11AsyncSocket21setZeroCopyEnableFuncESt8functionIFbRKSt10unique_ptrINS_5IOBufESt14default_deleteIS3_EEEE.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #43
  unreachable

_ZN5folly11AsyncSocket21setZeroCopyEnableFuncESt8functionIFbRKSt10unique_ptrINS_5IOBufESt14default_deleteIS3_EEEE.exit: ; preds = %_ZNSt8functionIFbRKSt10unique_ptrIN5folly5IOBufESt14default_deleteIS2_EEEEC2ERKS9_.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn32_N5folly11AsyncSocketD1Ev(ptr noundef %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN5folly11AsyncSocketD1Ev(ptr noundef nonnull align 8 dereferenceable(1169) %i.a) #41
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn32_N5folly11AsyncSocketD0Ev(ptr noundef %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  tail call void @_ZN5folly11AsyncSocketD1Ev(ptr noundef nonnull align 8 dereferenceable(1169) %i.a) #41, !inline_history !15125
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(1169) %i.a, i64 noundef 1176) #40, !inline_history !15125
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11AsyncSocket29createDefaultZeroCopyMemStoreEmm(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.111") align 8 captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #42, !noalias !15133 ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_124ZeroCopyMMapMemStoreRealE, i64 16), ptr %i.b, align 8, !tbaa !11, !noalias !15133
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, i8 0, i64 144, i1 false), !noalias !15133
  invoke void @_ZNSt11_Deque_baseIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 0)
          to label %_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EEC2Ev.exit.i.i unwind label %bb.h, !noalias !15133

_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EEC2Ev.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !noalias !15133
  %i.h = tail call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #41, !noalias !15133 ; 3 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.b, label %_ZNSt10unique_ptrIN12_GLOBAL__N_124ZeroCopyMMapMemStoreRealESt14default_deleteIS1_EED2Ev.exit

bb.b:                                             ; preds = %_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EEC2Ev.exit.i.i
  %i.j = mul i64 %2, %1
  %i.k = tail call ptr @mmap(ptr noundef null, i64 noundef %i.j, i32 noundef 1, i32 noundef 1, i32 noundef %i.h, i64 noundef 0) #41, !noalias !15133 ; 2 uses
  %i.l = invoke i32 @close(i32 noundef %i.h)
          to label %bb.c unwind label %bb.i, !noalias !15133 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.k, inttoptr (i64 -1 to ptr)
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_124ZeroCopyMMapMemStoreRealESt14default_deleteIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.k, ptr %i.e, align 8, !tbaa !15136, !noalias !15133
  store i64 %1, ptr %i.f, align 8, !tbaa !15154, !noalias !15133
  store i64 %2, ptr %i.g, align 8, !tbaa !15155, !noalias !15133
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15156, !noalias !15133 ; 2 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !15157, !noalias !15133 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 5                   ; 3 uses
  %i.t = icmp ugt i64 %1, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = sub nuw i64 %1, %i.s
  invoke void @_ZNSt6vectorIN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.u)
          to label %._ZNSt6vectorIN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS4_EE6resizeEm.exit_crit_edge.i.i unwind label %bb.i, !noalias !15133

._ZNSt6vectorIN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS4_EE6resizeEm.exit_crit_edge.i.i: ; preds = %bb.e
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !15154, !noalias !15133
  br label %_ZNSt6vectorIN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS4_EE6resizeEm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = icmp ult i64 %1, %i.s
  br i1 %i.v, label %bb.g, label %_ZNSt6vectorIN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS4_EE6resizeEm.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %1 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.w
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS4_EE6resizeEm.exit.i.i, label %_ZSt8_DestroyIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryES4_EvT_S6_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.g
  store ptr %i.w, ptr %i.m, align 8, !tbaa !15156, !noalias !15133
  br label %_ZNSt6vectorIN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS4_EE6resizeEm.exit.i.i

_ZNSt6vectorIN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS4_EE6resizeEm.exit.i.i: ; preds = %_ZSt8_DestroyIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, %bb.g, %bb.f, %._ZNSt6vectorIN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS4_EE6resizeEm.exit_crit_edge.i.i
  %i.x = phi i64 [ %.pre.i.i, %._ZNSt6vectorIN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS4_EE6resizeEm.exit_crit_edge.i.i ], [ %1, %bb.f ], [ %1, %bb.g ], [ %1, %_ZSt8_DestroyIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryES4_EvT_S6_RSaIT0_E.exit.i.i.i.i ] ; 2 uses
  %.not28.i.i = icmp eq i64 %i.x, 0
  br i1 %.not28.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_124ZeroCopyMMapMemStoreRealESt14default_deleteIS1_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS4_EE6resizeEm.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.i:                                             ; preds = %bb.e, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE9push_backEOS5_.exit.i.i, %.lr.ph.i.i
  %i.ac = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.ap, %_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE9push_backEOS5_.exit.i.i ]
  %.027.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.aq, %_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE9push_backEOS5_.exit.i.i ] ; 3 uses
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !15136, !noalias !15133
  %i.ae = load i64, ptr %i.g, align 8, !tbaa !15155, !noalias !15133 ; 2 uses
  %i.af = mul i64 %i.ae, %.027.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !15157, !noalias !15133
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %.027.i.i ; 5 uses
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !15158, !noalias !15133
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %i.ae, ptr %i.aj, align 8, !tbaa !15161, !noalias !15133
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.b, ptr %i.ak, align 8, !tbaa !15162, !noalias !15133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41, !noalias !15133
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !15163, !noalias !15133
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !15164, !noalias !15133 ; 3 uses
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !15165, !noalias !15133
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %.not.i.i25.i.i = icmp eq ptr %i.al, %i.an
  br i1 %.not.i.i25.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !15163, !noalias !15133
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ao, ptr %i.y, align 8, !tbaa !15164, !noalias !15133
  br label %_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE9push_backEOS5_.exit.i.i

bb.l:                                             ; preds = %bb.j
  invoke void @_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %._ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE9push_backEOS5_.exit_crit_edge.i.i unwind label %bb.m, !noalias !15133

._ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE9push_backEOS5_.exit_crit_edge.i.i: ; preds = %bb.l
  %.pre29.i.i = load i64, ptr %i.f, align 8, !tbaa !15154, !noalias !15133
  br label %_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE9push_backEOS5_.exit.i.i

_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE9push_backEOS5_.exit.i.i: ; preds = %._ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE9push_backEOS5_.exit_crit_edge.i.i, %bb.k
  %i.ap = phi i64 [ %.pre29.i.i, %._ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE9push_backEOS5_.exit_crit_edge.i.i ], [ %i.ac, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41, !noalias !15133
  %i.aq = add nuw i64 %.027.i.i, 1                ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  br i1 %i.ar, label %bb.j, label %_ZNSt10unique_ptrIN12_GLOBAL__N_124ZeroCopyMMapMemStoreRealESt14default_deleteIS1_EED2Ev.exit, !llvm.loop !15166

bb.m:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41, !noalias !15133
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.as, %bb.m ], [ %i.ab, %bb.i ]
  call void @_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.d) #41, !noalias !15133
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.n ], [ %i.aa, %bb.h ]
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !15157, !noalias !15133 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i, label %.body.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !15167, !noalias !15133
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #40, !noalias !15133
  br label %.body.i

.body.i:                                          ; preds = %bb.p, %bb.o
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 176) #40, !noalias !15133
  resume { ptr, i32 } %.pn.pn.i.i

_ZNSt10unique_ptrIN12_GLOBAL__N_124ZeroCopyMMapMemStoreRealESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EE9push_backEOS5_.exit.i.i, %_ZNSt6vectorIN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS4_EE6resizeEm.exit.i.i, %bb.c, %_ZNSt5dequeIPN5folly11AsyncReader12ReadCallback16ZeroCopyMemStore5EntryESaIS5_EEC2Ev.exit.i.i
  store ptr %i.b, ptr %0, align 8, !tbaa !15168
  ret void
end_hunk_1
