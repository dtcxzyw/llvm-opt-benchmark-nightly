inline.NumInlined: 1078
inline.NumDeleted: 615
begin_hunk_0_@_ZN8facebook5velox7process8Profiler14threadFunctionEv:bb.a
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp sgt i64 %i.dd, %i.dk
  %i.dm = load i64, ptr @_ZN8facebook5velox7process8Profiler16sampleStartTime_E, align 8, !tbaa !17 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0                    ; 2 uses
  br i1 %i.dl, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %_ZNSt6threadD2Ev.exit40
  br i1 %i.dn, label %bb.ba, label %_ZNSt6threadD2Ev.exit52

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  invoke void @_ZN8facebook5velox7process8Profiler11startSampleEv(ptr dead_on_unwind nonnull writable sret(%"class.std::thread") align 8 %10)
          to label %bb.bb unwind label %.loopexit145

bb.bb:                                            ; preds = %bb.ba
  %.not.i45 = icmp eq i64 %.sroa.0.1, 0
  br i1 %.not.i45, label %_ZNSt6threadD2Ev.exit49, label %.loopexit151

.loopexit151:                                     ; preds = %bb.bb, %bb.ad
  call void @_ZSt9terminatev() #30
  unreachable

_ZNSt6threadD2Ev.exit49:                          ; preds = %bb.bb
  %i.do = load i64, ptr %10, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %_ZNSt6threadD2Ev.exit52

.loopexit145:                                     ; preds = %bb.ba
  %lpad.loopexit148 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp146:                            ; preds = %bb.o, %bb.ac
  %.sroa.0.1.lcssa100.ph147 = phi i64 [ 0, %bb.o ], [ %.sroa.0.1.peel122, %bb.ac ]
  %lpad.loopexit.split-lp149 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp146, %.loopexit145
  %.sroa.0.1.lcssa100 = phi i64 [ %.sroa.0.1, %.loopexit145 ], [ %.sroa.0.1.lcssa100.ph147, %.loopexit.split-lp146 ]
  %lpad.phi150 = phi { ptr, i32 } [ %lpad.loopexit148, %.loopexit145 ], [ %lpad.loopexit.split-lp149, %.loopexit.split-lp146 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %_ZNSt6threadD2Ev.exit37

bb.bd:                                            ; preds = %_ZNSt6threadD2Ev.exit40
  br i1 %i.dn, label %_ZNSt6threadD2Ev.exit52, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dp = sub nsw i64 %i.ct, %i.dm
  %i.dq = load i32, ptr @_ZN3fLI33FLAGS_profiler_min_sample_secondsE, align 4, !tbaa !3
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp sge i64 %i.dp, %i.dr
  %i.dt = zext i1 %i.ds to i8
  store i8 %i.dt, ptr @_ZN8facebook5velox7process8Profiler17shouldSaveResult_E, align 1, !tbaa !143
  store i64 %.sroa.0.1, ptr %11, align 8, !tbaa !17
  invoke void @_ZN8facebook5velox7process8Profiler10stopSampleESt6thread(ptr noundef nonnull %11)
          to label %bb.bf unwind label %.loopexit139

bb.bf:                                            ; preds = %bb.be
  %.sroa.0.0.copyload.i.i50 = load i64, ptr %11, align 8, !tbaa !17
  %.not.i51 = icmp eq i64 %.sroa.0.0.copyload.i.i50, 0
  br i1 %.not.i51, label %_ZNSt6threadD2Ev.exit52, label %.loopexit144

.loopexit144:                                     ; preds = %bb.bf, %bb.aa, %bb.m
  call void @_ZSt9terminatev() #30
  unreachable

.loopexit139:                                     ; preds = %bb.be
  %lpad.loopexit141 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp140:                            ; preds = %bb.l, %bb.z
  %lpad.loopexit.split-lp142 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.split-lp140, %.loopexit139
  %lpad.phi143 = phi { ptr, i32 } [ %lpad.loopexit141, %.loopexit139 ], [ %lpad.loopexit.split-lp142, %.loopexit.split-lp140 ]
  %.sroa.0.0.copyload.i.i53 = load i64, ptr %11, align 8, !tbaa !17
  %.not.i54 = icmp eq i64 %.sroa.0.0.copyload.i.i53, 0
  br i1 %.not.i54, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZSt9terminatev() #30
  unreachable

_ZNSt6threadD2Ev.exit52:                          ; preds = %bb.bf, %bb.bd, %bb.az, %_ZNSt6threadD2Ev.exit49
  %.sroa.0.2 = phi i64 [ %i.do, %_ZNSt6threadD2Ev.exit49 ], [ %.sroa.0.1, %bb.az ], [ %.sroa.0.1, %bb.bd ], [ 0, %bb.bf ] ; 3 uses
  store i64 %i.cx, ptr @_ZN8facebook5velox7process8Profiler15cpuAtLastCheck_E, align 8, !tbaa !17
  %i.du = load i32, ptr @_ZN3fLI37FLAGS_profiler_check_interval_secondsE, align 4, !tbaa !3
  %i.dv = invoke noundef zeroext i1 @_ZN8facebook5velox7process8Profiler18interruptibleSleepEi(i32 noundef %i.du)
          to label %bb.bi unwind label %.loopexit152

.loopexit152:                                     ; preds = %_ZNSt6threadD2Ev.exit52
  %lpad.loopexit155 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6threadD2Ev.exit37

.loopexit.split-lp153:                            ; preds = %_ZNSt6threadD2Ev.exit52.peel, %_ZNSt6threadD2Ev.exit52.peel128
  %.sroa.0.2.lcssa.ph154 = phi i64 [ %.sroa.0.2.peel, %_ZNSt6threadD2Ev.exit52.peel ], [ %.sroa.0.2.peel129, %_ZNSt6threadD2Ev.exit52.peel128 ]
  %lpad.loopexit.split-lp156 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6threadD2Ev.exit37

bb.bi:                                            ; preds = %_ZNSt6threadD2Ev.exit52
  br i1 %i.dv, label %.loopexit158, label %_ZNSt6threadD2Ev.exit34.peel135.backedge

.loopexit158:                                     ; preds = %bb.am, %bb.bi, %bb.ah, %bb.ae, %bb.r, %bb.p
  %.sroa.0.4 = phi i64 [ %.sroa.0.2.peel129, %bb.ae ], [ %i.ce, %bb.ah ], [ %.sroa.0.2.peel, %bb.p ], [ %i.av, %bb.r ], [ %i.cj, %bb.am ], [ %.sroa.0.2, %bb.bi ] ; 2 uses
  %i.dw = load i64, ptr @_ZN8facebook5velox7process8Profiler16sampleStartTime_E, align 8, !tbaa !17
  %.not23 = icmp eq i64 %i.dw, 0
  br i1 %.not23, label %_ZNSt6threadD2Ev.exit58, label %bb.bj

bb.bj:                                            ; preds = %.loopexit158
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.dx = call i32 @gettimeofday(ptr noundef nonnull %0, ptr noundef nonnull %1) #31 ; 0 uses
  %i.dy = load i64, ptr %0, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #31
  %i.dz = load i64, ptr @_ZN8facebook5velox7process8Profiler16sampleStartTime_E, align 8, !tbaa !17
  %i.ea = sub nsw i64 %i.dy, %i.dz
  %i.eb = load i32, ptr @_ZN3fLI33FLAGS_profiler_min_sample_secondsE, align 4, !tbaa !3
  %i.ec = sext i32 %i.eb to i64
  %i.ed = icmp sge i64 %i.ea, %i.ec
  %i.ee = zext i1 %i.ed to i8
  store i8 %i.ee, ptr @_ZN8facebook5velox7process8Profiler17shouldSaveResult_E, align 1, !tbaa !143
  store i64 %.sroa.0.4, ptr %12, align 8, !tbaa !17
  invoke void @_ZN8facebook5velox7process8Profiler10stopSampleESt6thread(ptr noundef nonnull %12)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %.sroa.0.0.copyload.i.i56 = load i64, ptr %12, align 8, !tbaa !17
  %.not.i57 = icmp eq i64 %.sroa.0.0.copyload.i.i56, 0
  br i1 %.not.i57, label %_ZNSt6threadD2Ev.exit64, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZSt9terminatev() #30
  unreachable

bb.bm:                                            ; preds = %bb.bj
  %i.ef = landingpad { ptr, i32 }
          cleanup
  %.sroa.0.0.copyload.i.i59 = load i64, ptr %12, align 8, !tbaa !17
  %.not.i60 = icmp eq i64 %.sroa.0.0.copyload.i.i59, 0
  br i1 %.not.i60, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZSt9terminatev() #30
  unreachable

_ZNSt6threadD2Ev.exit58:                          ; preds = %.loopexit158
  %.not.i63 = icmp eq i64 %.sroa.0.4, 0
  br i1 %.not.i63, label %_ZNSt6threadD2Ev.exit64, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6threadD2Ev.exit58
  call void @_ZSt9terminatev() #30
  unreachable

_ZNSt6threadD2Ev.exit64:                          ; preds = %bb.bk, %_ZNSt6threadD2Ev.exit58
  ret void

_ZNSt6threadD2Ev.exit37:                          ; preds = %.loopexit152, %.loopexit.split-lp153, %.loopexit166, %.loopexit.split-lp167, %bb.ao, %bb.bc
  %.sroa.0.6 = phi i64 [ %.lcssa.ph168, %.loopexit.split-lp167 ], [ %.sroa.0.1.lcssa100, %bb.bc ], [ %.sroa.0.0.lcssa110, %bb.ao ], [ %i.cj, %.loopexit166 ], [ %.sroa.0.2, %.loopexit152 ], [ %.sroa.0.2.lcssa.ph154, %.loopexit.split-lp153 ]
  %.pn24 = phi { ptr, i32 } [ %lpad.loopexit.split-lp170, %.loopexit.split-lp167 ], [ %lpad.phi150, %bb.bc ], [ %lpad.phi164, %bb.ao ], [ %lpad.loopexit169, %.loopexit166 ], [ %lpad.loopexit155, %.loopexit152 ], [ %lpad.loopexit.split-lp156, %.loopexit.split-lp153 ]
  %.not.i66 = icmp eq i64 %.sroa.0.6, 0
  br i1 %.not.i66, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6threadD2Ev.exit37
  call void @_ZSt9terminatev() #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.an, %bb.bm, %bb.ax, %bb.ar, %bb.bg, %_ZNSt6threadD2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %.pn24.pn = phi { ptr, i32 } [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %lpad.phi143, %bb.bg ], [ %.pn24, %_ZNSt6threadD2Ev.exit37 ], [ %i.ef, %bb.bm ], [ %lpad.phi, %bb.ax ], [ %lpad.phi176, %bb.ar ], [ %i.cn, %bb.an ]
  resume { ptr, i32 } %.pn24.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox7process8Profiler9isRunningEv() local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN8facebook5velox7process8Profiler13profileMutex_E) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #33
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.b = load i8, ptr @_ZN8facebook5velox7process8Profiler15profileStarted_E, align 1, !tbaa !143, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN8facebook5velox7process8Profiler13profileMutex_E) #31 ; 0 uses
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox7process8Profiler5startERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvvEESB_IFS8_vEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.97", align 8 ; 6 uses
  %4 = alloca %"class.std::function.2", align 16  ; 11 uses
  %5 = alloca %"class.std::function", align 16    ; 11 uses
  %i.a = alloca [1000 x i8], align 16             ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %8 = alloca %"class.std::shared_ptr.5", align 8 ; 4 uses
  %9 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %12 = alloca %"class.std::thread", align 8      ; 5 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN8facebook5velox7process8Profiler11resultPath_B5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvvEEC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !166
  br label %_ZNSt8functionIFvvEEC2ERKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %i.b, align 16, !tbaa !25  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %common.resume unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #30
  unreachable

common.resume:                                    ; preds = %bb.bi, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i, %bb.k, %bb.l, %bb.d, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.g, %bb.d ], [ %i.w, %bb.k ], [ %i.g, %bb.e ], [ %i.w, %bb.l ], [ %i.fe, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i ], [ %i.fe, %bb.bi ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFvvEEC2ERKS1_.exit.i:              ; preds = %bb.c, %bb.a
  %i.l = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.f, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8facebook5velox7process8Profiler11startExtra_E, i64 16, i1 false), !tbaa.struct !167
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr @_ZN8facebook5velox7process8Profiler11startExtra_E, align 8, !tbaa !15
  %i.m = load <2 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process8Profiler11startExtra_E, i64 16), align 8, !tbaa !166
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process8Profiler11startExtra_E, i64 16), align 8, !tbaa !166 ; 2 uses
  store <2 x ptr> %i.m, ptr %i.b, align 16, !tbaa !166
  store <2 x ptr> %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process8Profiler11startExtra_E, i64 16), align 8, !tbaa !166
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvvEEaSERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFvvEEC2ERKS1_.exit.i
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt8functionIFvvEEaSERKS1_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #30
  unreachable

_ZNSt8functionIFvvEEaSERKS1_.exit:                ; preds = %_ZNSt8functionIFvvEEC2ERKS1_.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %.not.i.i.not.i.i11 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.not.i.i11, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFvvEEaSERKS1_.exit
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.v = load <2 x ptr>, ptr %i.s, align 8, !tbaa !166
  br label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %i.r, align 16, !tbaa !25  ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i12, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = invoke noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %common.resume unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #30
  unreachable

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i: ; preds = %bb.j, %_ZNSt8functionIFvvEEaSERKS1_.exit
  %i.ab = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFvvEEaSERKS1_.exit ], [ %i.v, %bb.j ]
  %.sroa.0.i.i.i10.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8facebook5velox7process8Profiler12extraReport_B5cxx11E, i64 16, i1 false), !tbaa.struct !167
  store <2 x i64> %.sroa.0.i.i.i10.sroa.0.0.copyload, ptr @_ZN8facebook5velox7process8Profiler12extraReport_B5cxx11E, align 8, !tbaa !15
  %i.ac = load <2 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process8Profiler12extraReport_B5cxx11E, i64 16), align 8, !tbaa !166
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process8Profiler12extraReport_B5cxx11E, i64 16), align 8, !tbaa !166 ; 2 uses
  store <2 x ptr> %i.ac, ptr %i.r, align 16, !tbaa !166
  store <2 x ptr> %i.ab, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process8Profiler12extraReport_B5cxx11E, i64 16), align 8, !tbaa !166
  %.not.i.i14 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i14, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #30
  unreachable

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit: ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ah = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN8facebook5velox7process8Profiler13profileMutex_E) #31 ; 2 uses
  %.not.i.i15 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i15, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit
  call void @_ZSt20__throw_system_errori(i32 noundef %i.ah) #33
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit
  %i.ai = load i8, ptr @_ZN8facebook5velox7process8Profiler15profileStarted_E, align 1, !tbaa !143, !range !23, !noundef !24
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.ak = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN8facebook5velox7process8Profiler13profileMutex_E) #31 ; 0 uses
  br label %bb.bl

bb.r:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  store i8 1, ptr @_ZN8facebook5velox7process8Profiler15profileStarted_E, align 1, !tbaa !143
  %i.al = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN8facebook5velox7process8Profiler13profileMutex_E) #31 ; 0 uses
  %i.am = load ptr, ptr @_ZN3fLS22FLAGS_profiler_tmp_dirB5cxx11E, align 8, !tbaa !29, !nonnull !24, !align !31
  call fastcc void @_ZN8facebook5velox7process12_GLOBAL__N_19checkSafeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.am)
  %i.an = load ptr, ptr @_ZN3fLS25FLAGS_profiler_perf_flagsB5cxx11E, align 8, !tbaa !29, !nonnull !24, !align !31
  call fastcc void @_ZN8facebook5velox7process12_GLOBAL__N_19checkSafeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1000) %i.a, i8 0, i64 1000, i1 false)
  %i.ao = call i32 @gethostname(ptr noundef nonnull %i.a, i64 noundef 999) #31 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.ap, ptr %6, align 8, !tbaa !27
  %i.aq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #31 ; 8 uses
  %i.ar = icmp ugt i64 %i.aq, 15
  br i1 %i.ar, label %bb.s, label %._crit_edge.i.i

bb.s:                                             ; preds = %bb.r
  %i.as = icmp slt i64 %i.aq, 0
  br i1 %i.as, label %.noexc.i, label %bb.t

.noexc.i:                                         ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #33
          to label %.noexc unwind label %bb.ax

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.at = add nuw i64 %i.aq, 1                    ; 2 uses
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !112

.noexc11.i:                                       ; preds = %bb.t
  invoke void @_ZSt17__throw_bad_allocv() #33
          to label %.noexc16 unwind label %bb.ax

.noexc16:                                         ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.t
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #34
          to label %.noexc17 unwind label %bb.ax  ; 2 uses

.noexc17:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.av, ptr %6, align 8, !tbaa !10
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc17, %bb.r
  %i.aw = phi ptr [ %i.av, %.noexc17 ], [ %i.ap, %bb.r ] ; 3 uses
  switch i64 %i.aq, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.ax = load i8, ptr %i.a, align 16, !tbaa !15
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !15
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr nonnull align 16 %i.a, i64 %i.aq, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.aq, ptr %i.ay, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aq
  store i8 0, ptr %i.az, align 1, !tbaa !15
  %i.ba = load ptr, ptr @_ZN8facebook5velox7process12_GLOBAL__N_18hostnameB5cxx11E, align 8, !tbaa !10 ; 6 uses
  %i.bb = icmp eq ptr %i.ba, getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process12_GLOBAL__N_18hostnameB5cxx11E, i64 16)
  %i.bc = load ptr, ptr %6, align 8, !tbaa !10    ; 5 uses
  %i.bd = icmp eq ptr %i.bc, %i.ap                ; 2 uses
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.w
  br i1 %i.bd, label %bb.x, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.w
  br i1 %i.bd, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !28 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  switch i64 %i.be, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !15
  store i8 %i.bg, ptr %i.ba, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.bc, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.z, %bb.y, %bb.x
  %i.bh = load i64, ptr %i.ay, align 8, !tbaa !28 ; 2 uses
  store i64 %i.bh, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process12_GLOBAL__N_18hostnameB5cxx11E, i64 8), align 8, !tbaa !28
  %i.bi = load ptr, ptr @_ZN8facebook5velox7process12_GLOBAL__N_18hostnameB5cxx11E, align 8, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store i8 0, ptr %i.bj, align 1, !tbaa !15
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bc, ptr @_ZN8facebook5velox7process12_GLOBAL__N_18hostnameB5cxx11E, align 8, !tbaa !10
  %i.bk = load <2 x i64>, ptr %i.ay, align 8, !tbaa !15
  store <2 x i64> %i.bk, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process12_GLOBAL__N_18hostnameB5cxx11E, i64 8), align 8, !tbaa !15
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process12_GLOBAL__N_18hostnameB5cxx11E, i64 16), align 8, !tbaa !15
  store ptr %i.bc, ptr @_ZN8facebook5velox7process12_GLOBAL__N_18hostnameB5cxx11E, align 8, !tbaa !10
  %i.bm = load <2 x i64>, ptr %i.ay, align 8, !tbaa !15
  store <2 x i64> %i.bm, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process12_GLOBAL__N_18hostnameB5cxx11E, i64 8), align 8, !tbaa !15
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ba, ptr %6, align 8, !tbaa !10
  store i64 %i.bl, ptr %i.ap, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ap, ptr %6, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.aa, %bb.ab
  %i.bn = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ba, %bb.aa ], [ %i.ap, %bb.ab ]
  store i64 0, ptr %i.ay, align 8, !tbaa !28
  store i8 0, ptr %i.bn, align 1, !tbaa !15
  %i.bo = load ptr, ptr %6, align 8, !tbaa !10    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ap
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bq = load i64, ptr %i.ap, align 8, !tbaa !15
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.bs = load ptr, ptr %0, align 8, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  invoke void @_ZN8facebook5velox11filesystems13getFileSystemESt17basic_string_viewIcSt11char_traitsIcEESt10shared_ptrIKNS0_6config10ConfigBaseEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %7, i64 %i.bu, ptr %i.bs, ptr noundef nonnull %8)
          to label %bb.ac unwind label %bb.ay

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bw = load <2 x ptr>, ptr %7, align 16, !tbaa !166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process8Profiler11fileSystem_E, i64 8), align 8, !tbaa !115 ; 8 uses
  store <2 x ptr> %i.bw, ptr @_ZN8facebook5velox7process8Profiler11fileSystem_E, align 8, !tbaa !166
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox11filesystems10FileSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
end_hunk_0
