Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/ConfigUtils?download=true
inline.NumInlined: 1159
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN16OpenColorIO_v2_511ConfigUtils17simplifyTransformERKSt10shared_ptrIKNS_14GroupTransformEE:bb.a
  br i1 %i.co, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.cm, align 8, !tbaa !39
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 0, ptr %i.cq, align 4, !tbaa !40
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !42
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #21, !inline_history !7
  %i.cu = load ptr, ptr %i.cl, align 8, !tbaa !42
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #21, !inline_history !7
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit23

bb.al:                                            ; preds = %bb.aj
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i20 = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i20, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cy = add nsw i32 %i.cp, -1
  store i32 %i.cy, ptr %i.cm, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i21

bb.an:                                            ; preds = %bb.al
  %i.cz = atomicrmw volatile add ptr %i.cm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i21

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i21: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i22 = phi i32 [ %i.cp, %bb.am ], [ %i.cz, %bb.an ]
  %i.da = icmp eq i32 %.0.i.i.i.i22, 1
  br i1 %i.da, label %bb.ao, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit23, !prof !44

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i21
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit23

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit23: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i21, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !37 ; 8 uses
  %.not.i.i24 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i24, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit23
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.dd, align 8, !tbaa !39
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !40
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !42
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #21, !inline_history !10
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !42
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #21, !inline_history !10
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ar:                                            ; preds = %bb.ap
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i25 = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i25, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26

bb.at:                                            ; preds = %bb.ar
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i27 = phi i32 [ %i.dg, %bb.as ], [ %i.dq, %bb.at ]
  %i.dr = icmp eq i32 %.0.i.i.i.i27, 1
  br i1 %i.dr, label %bb.au, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit23, %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.av:                                            ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.v ], [ %i.ax, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #21
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.av ], [ %i.aw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aw ], [ %i.av, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN16OpenColorIO_v2_56Config9CreateRawEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.0") align 8) local_unnamed_addr #3

declare void @_ZNK16OpenColorIO_v2_56Config12getProcessorERKSt10shared_ptrIKNS_9TransformEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.13") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZNK16OpenColorIO_v2_59Processor21getOptimizedProcessorENS_17OptimizationFlagsE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.13") align 8, ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !40
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !5
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !5
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511ConfigUtils15invertTransformERKSt10shared_ptrIKNS_9TransformEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.4") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %2 = alloca %"class.std::shared_ptr.19", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.d = load ptr, ptr %2, align 16, !tbaa !72    ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef 1) #21
  %i.h = load <2 x ptr>, ptr %2, align 16, !tbaa !55
  store <2 x ptr> %i.h, ptr %0, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511ConfigUtils18getTransformForDirERKSt10shared_ptrIKNS_10ColorSpaceEENS_19ColorSpaceDirectionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.4") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.19", align 16 ; 5 uses
  %4 = alloca %"class.std::shared_ptr.4", align 16 ; 8 uses
  %5 = alloca %"class.std::shared_ptr.4", align 8 ; 7 uses
  %i.a = alloca [16 x double], align 16           ; 5 uses
  %i.b = alloca [4 x double], align 16            ; 5 uses
  %6 = alloca %"class.std::shared_ptr.31", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.c = load ptr, ptr %1, align 8, !tbaa !30
  call void @_ZNK16OpenColorIO_v2_510ColorSpace12getTransformENS_19ColorSpaceDirectionE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %2) #21
  %i.d = load ptr, ptr %4, align 16, !tbaa !54
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %7 = load <2 x ptr>, ptr %4, align 16, !tbaa !55
  store <2 x ptr> %7, ptr %0, align 8, !tbaa !55
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %2, 0
  %spec.store.select = zext i1 %i.e to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.f = load ptr, ptr %1, align 8, !tbaa !30
  call void @_ZNK16OpenColorIO_v2_510ColorSpace12getTransformENS_19ColorSpaceDirectionE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %spec.store.select) #21
  %i.g = load ptr, ptr %5, align 8, !tbaa !54     ; 3 uses
  %.not22 = icmp eq ptr %i.g, null
  br i1 %.not22, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !153
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42, !noalias !153
  %i.i = load ptr, ptr %i.h, align 8, !noalias !153
  invoke void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZN16OpenColorIO_v2_511ConfigUtils15invertTransformERKSt10shared_ptrIKNS_9TransformEE.exit unwind label %bb.d, !inline_history !80

_ZN16OpenColorIO_v2_511ConfigUtils15invertTransformERKSt10shared_ptrIKNS_9TransformEE.exit: ; preds = %bb.c
  %i.j = load ptr, ptr %3, align 16, !tbaa !72, !noalias !153 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42, !noalias !153
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !153
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 1) #21, !noalias !153, !inline_history !80
  %i.n = load <2 x ptr>, ptr %3, align 16, !tbaa !55, !noalias !153
  store <2 x ptr> %i.n, ptr %0, align 8, !tbaa !55, !alias.scope !153
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !153
  br label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  invoke void @_ZN16OpenColorIO_v2_515MatrixTransform8IdentityEPdS1_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN16OpenColorIO_v2_515MatrixTransform6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.31") align 8 %6)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %6, align 16, !tbaa !155   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.a)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %6, align 16, !tbaa !155   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.b)
          to label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515MatrixTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.k

_ZNSt12__shared_ptrIN16OpenColorIO_v2_515MatrixTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h
  %i.x = load <2 x ptr>, ptr %6, align 16, !tbaa !55
  store <2 x ptr> %i.x, ptr %0, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_515MatrixTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %i.z, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.y, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.u

bb.n:                                             ; preds = %_ZN16OpenColorIO_v2_511ConfigUtils15invertTransformERKSt10shared_ptrIKNS_9TransformEE.exit, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515MatrixTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !37 ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i13, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ad, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !40
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #21, !inline_history !2
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #21, !inline_history !2
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i14 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i14, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

bb.s:                                             ; preds = %bb.q
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i16 = phi i32 [ %i.ag, %bb.r ], [ %i.aq, %bb.s ]
  %i.ar = icmp eq i32 %.0.i.i.i.i16, 1
  br i1 %i.ar, label %bb.t, label %bb.v, !prof !44

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #21
  br label %bb.v

bb.u:                                             ; preds = %bb.m, %bb.d
  %.pn11 = phi { ptr, i32 } [ %i.o, %bb.d ], [ %.pn.pn, %bb.m ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn11

bb.v:                                             ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15, %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !37 ; 8 uses
  %.not.i.i17 = icmp eq ptr %.pre, null
  br i1 %.not.i.i17, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.as, align 8, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !40
  %i.ax = load ptr, ptr %.pre, align 8, !tbaa !42
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #21, !inline_history !2
  %i.ba = load ptr, ptr %.pre, align 8, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #21, !inline_history !2
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21

bb.y:                                             ; preds = %bb.w
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i18 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i18, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19

bb.aa:                                            ; preds = %bb.y
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i20 = phi i32 [ %i.av, %bb.z ], [ %i.bf, %bb.aa ]
end_hunk_0
