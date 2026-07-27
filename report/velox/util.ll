inline.NumInlined: 732
inline.NumDeleted: 422
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5arrow26all_dictionary_index_typesEv:bb.a
  %i.bp = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !65
  store <2 x ptr> %i.bp, ptr %i.bl, align 16, !tbaa !65
  %.not.i.i.i20 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i20, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit22, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i.i.i21 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i21, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !72
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !72
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit22

bb.ae:                                            ; preds = %bb.ac
  %i.bu = atomicrmw volatile add ptr %i.bq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit22

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit22: ; preds = %bb.ab, %bb.ad, %bb.ae
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev()
          to label %bb.af unwind label %bb.al     ; 2 uses

bb.af:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit22
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !64 ; 2 uses
  %i.bz = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !65
  store <2 x ptr> %i.bz, ptr %i.bv, align 16, !tbaa !65
  %.not.i.i.i23 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i23, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit25, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i.i.i24 = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i24, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !72
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !72
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit25

bb.ai:                                            ; preds = %bb.ag
  %i.ce = atomicrmw volatile add ptr %i.ca, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit25

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit25: ; preds = %bb.af, %bb.ah, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EEC2ESt16initializer_listIS3_ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5arrow26all_dictionary_index_typesEvE5types, ptr nonnull %0, i64 8, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.aj unwind label %.loopexit.loopexit

bb.aj:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cf) #20
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cg) #20
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ch) #20
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ci) #20
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cj) #20
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ck) #20
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cl) #20
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  %i.cm = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev, ptr nonnull @_ZZN5arrow26all_dictionary_index_typesEvE5types, ptr nonnull @__dso_handle) #20 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow26all_dictionary_index_typesEvE5types) #20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.b, %bb.a
  ret ptr @_ZZN5arrow26all_dictionary_index_typesEvE5types

bb.al:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit22, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit19, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit16, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit13, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit10, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit7, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %.03 = phi ptr [ %i.bv, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit22 ], [ %i.bl, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit19 ], [ %i.bb, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit16 ], [ %i.ar, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit13 ], [ %i.ah, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit10 ], [ %i.x, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit7 ], [ %i.n, %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit ]
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.am
  %i.co = phi ptr [ %.03, %bb.al ], [ %i.cp, %bb.am ]
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -16 ; 3 uses
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cp) #20
  %i.cq = icmp eq ptr %i.cp, %0
  br i1 %i.cq, label %.loopexit, label %bb.am

.loopexit.loopexit:                               ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit25
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cs) #20
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ct) #20
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cu) #20
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cv) #20
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cw) #20
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cx) #20
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cy) #20
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  br label %.loopexit

.loopexit:                                        ; preds = %bb.am, %.loopexit.loopexit, %.thread
  %.pn = phi { ptr, i32 } [ %i.cr, %.loopexit.loopexit ], [ %i.e, %.thread ], [ %i.cn, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow26all_dictionary_index_typesEvE5types) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev() local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5uint8Ev() local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev() local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint16Ev() local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev() local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint32Ev() local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int64Ev() local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !68
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !152
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !152
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !72
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !73

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EEC2ESt16initializer_listIS3_ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx6 = shl nuw nsw i64 %2, 4                  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx6
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.b = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx6) #22 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !153
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !156
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %.011.i.i.i.i.i = phi ptr [ %i.n, %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.b, %.lr.ph.i.i.i.i.preheader.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.m, %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  %i.g = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !65
  store <2 x ptr> %i.g, ptr %.011.i.i.i.i.i, align 8, !tbaa !65
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.h, align 4, !tbaa !72
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !72
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, %i.a
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !157

.loopexit:                                        ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ], [ %i.n, %_ZSt10_ConstructISt10shared_ptrIN5arrow8DataTypeEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.o, align 8, !tbaa !158
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !153    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !68
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #20, !inline_history !159
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #20, !inline_history !159
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !8
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !72
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i, !prof !73

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #20
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !160

_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow8DataTypeEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !153
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !156
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #21
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow8DataTypeEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow25GetSupportedHardwareFlagsERKSt6vectorIlSaIlEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.30") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22 ; 5 uses
  store i64 0, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !161
  store ptr %i.d, ptr %i.a, align 8, !tbaa !163
  store ptr %i.d, ptr %i.b, align 8, !tbaa !164
  %i.e = load ptr, ptr %1, align 8, !tbaa !165    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !165  ; 2 uses
  %.not1829 = icmp eq ptr %i.e, %i.g
  br i1 %.not1829, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %.lcssa26 = phi ptr [ %i.c, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ad, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ]
  %.lcssa22 = phi ptr [ %i.d, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ae, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ]
  %.lcssa = phi ptr [ %i.d, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.af, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ]
  store ptr %.lcssa, ptr %i.a, align 8
  store ptr %.lcssa22, ptr %i.b, align 8
  store ptr %.lcssa26, ptr %0, align 8
  ret void

.lr.ph:                                           ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  %.sroa.013.030 = phi ptr [ %i.ag, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ], [ %i.e, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %i.h = phi ptr [ %i.af, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ], [ %i.d, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i ] ; 9 uses
  %i.i = phi ptr [ %i.ae, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ], [ %i.d, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i ] ; 7 uses
  %i.j = phi ptr [ %i.ad, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ], [ %i.c, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i ] ; 11 uses
  %i.k = load i64, ptr %.sroa.013.030, align 8, !tbaa !16 ; 4 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.l = invoke noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv()
          to label %bb.b unwind label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.m = invoke noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef %i.k)
          to label %bb.c unwind label %.loopexit

bb.c:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.d, label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.k, ptr %i.h, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.f:                                             ; preds = %bb.d
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = ptrtoint ptr %i.j to i64
  %i.q = sub i64 %i.o, %i.p                       ; 6 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.g, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.h, ptr %i.a, align 8
  store ptr %i.i, ptr %i.b, align 8
  store ptr %i.j, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #24
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %bb.g
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #22
          to label %.noexc9 unwind label %.loopexit ; 4 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  store i64 %i.k, ptr %i.z, align 8, !tbaa !16
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.h, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

bb.h:                                             ; preds = %.noexc9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.j, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.h, %.noexc9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.q) #21
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

.loopexit:                                        ; preds = %bb.a, %bb.b, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.h, ptr %i.a, align 8
  store ptr %i.i, ptr %i.b, align 8
  store ptr %i.j, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_ZNSt6vectorIlSaIlEE9push_backERKl.exit:          ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.e, %bb.c, %.lr.ph
  %i.ad = phi ptr [ %i.y, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.j, %bb.e ], [ %i.j, %bb.c ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.ae = phi ptr [ %i.ac, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.i, %bb.e ], [ %i.i, %bb.c ], [ %i.i, %.lr.ph ] ; 2 uses
  %i.af = phi ptr [ %i.ab, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.n, %bb.e ], [ %i.h, %bb.c ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.013.030, i64 8 ; 2 uses
  %.not18 = icmp eq ptr %i.ag, %i.g
  br i1 %.not18, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %i.ah = phi ptr [ %i.h, %.loopexit.split-lp ], [ %i.i, %.loopexit ]
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i10 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.j to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ak) #21
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv() local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !68
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !166
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
end_hunk_0
begin_hunk_1_@llvm.bswap.i16
declare i16 @llvm.bswap.i16(i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #17

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { nounwind willreturn memory(none) }
attributes #24 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSSt18_Bit_iterator_base", !13, i64 0, !5, i64 8}
!13 = !{!"p1 long", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!12, !5, i64 8}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = !{!21, !22, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!22 = !{!"p1 omnipotent char", !14, i64 0}
!23 = !{!24, !17, i64 8}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0, !17, i64 8, !6, i64 16}
!25 = !{!24, !22, i64 0}
!26 = !{!27, !17, i64 0}
!27 = !{!"_ZTSSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE", !17, i64 0}
!28 = !{!29, !5, i64 0}
!29 = !{!"_ZTSNSt24uniform_int_distributionIiE10param_typeE", !5, i64 0, !5, i64 4}
!30 = !{!29, !5, i64 4}
!31 = distinct !{!31, !10}
!32 = !{!22, !22, i64 0}
!33 = distinct !{!33, !10, !34, !35}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = distinct !{!36, !10, !35, !34}
!37 = !{!38, !39, i64 0}
!38 = !{!"_ZTSN5arrow6StatusE", !39, i64 0}
!39 = !{!"p1 _ZTSN5arrow6Status5StateE", !14, i64 0}
!40 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZNO5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE11ValueUnsafeEv: argument 0"}
!43 = distinct !{!43, !"_ZNO5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE11ValueUnsafeEv"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv: argument 0"}
!46 = distinct !{!46, !"_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv"}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 _ZTSN5arrow15ResizableBufferE", !14, i64 0}
!49 = !{!45, !42}
!50 = !{!51, !52, i64 9}
!51 = !{!"_ZTSN5arrow6BufferE", !52, i64 8, !52, i64 9, !22, i64 16, !17, i64 24, !17, i64 32, !53, i64 40, !54, i64 48, !59, i64 64}
!52 = !{!"bool", !6, i64 0}
!53 = !{!"_ZTSN5arrow20DeviceAllocationTypeE", !6, i64 0}
!54 = !{!"_ZTSSt10shared_ptrIN5arrow6BufferEE", !55, i64 0}
!55 = !{!"_ZTSSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EE", !56, i64 0, !57, i64 8}
!56 = !{!"p1 _ZTSN5arrow6BufferE", !14, i64 0}
!57 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !58, i64 0}
!58 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!59 = !{!"_ZTSSt10shared_ptrIN5arrow13MemoryManagerEE", !60, i64 0}
!60 = !{!"_ZTSSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EE", !61, i64 0, !57, i64 8}
!61 = !{!"p1 _ZTSN5arrow13MemoryManagerE", !14, i64 0}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = !{!57, !58, i64 0}
!65 = !{!14, !14, i64 0}
!66 = !{!67, !5, i64 8}
!67 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!68 = !{!67, !5, i64 12}
!69 = !{!70, !70, i64 0}
!70 = !{!"vtable pointer", !7, i64 0}
!71 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!72 = !{!5, !5, i64 0}
!73 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN5arrow6Status2OKEv: argument 0"}
!76 = distinct !{!76, !"_ZN5arrow6Status2OKEv"}
!77 = distinct !{null, null}
!78 = distinct !{ptr @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev, null, null, null, null}
!79 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!80 = !{!81, !82, i64 0}
!81 = !{!"_ZTSN5arrow6Status5StateE", !82, i64 0, !24, i64 8, !83, i64 40}
!82 = !{!"_ZTSN5arrow10StatusCodeE", !6, i64 0}
!83 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !84, i64 0}
!84 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !85, i64 0, !57, i64 8}
!85 = !{!"p1 _ZTSN5arrow12StatusDetailE", !14, i64 0}
!86 = distinct !{null, null, null, null}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN5arrow6Status2OKEv: argument 0"}
!89 = distinct !{!89, !"_ZN5arrow6Status2OKEv"}
!90 = !{!91, !52, i64 32}
!91 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !6, i64 0, !52, i64 32}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZSt13make_optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENSt9enable_ifIX18is_constructible_vINSt5decayIT_E4typeES8_EESt8optionalISA_EE4typeEOS8_: argument 0"}
!94 = distinct !{!94, !"_ZSt13make_optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENSt9enable_ifIX18is_constructible_vINSt5decayIT_E4typeES8_EESt8optionalISA_EE4typeEOS8_"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN5arrow27GetTestTimezoneDatabaseRootB5cxx11Ev: argument 0"}
!97 = distinct !{!97, !"_ZN5arrow27GetTestTimezoneDatabaseRootB5cxx11Ev"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZSt13make_optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENSt9enable_ifIX18is_constructible_vINSt5decayIT_E4typeES8_EESt8optionalISA_EE4typeEOS8_: argument 0"}
!100 = distinct !{!100, !"_ZSt13make_optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENSt9enable_ifIX18is_constructible_vINSt5decayIT_E4typeES8_EESt8optionalISA_EE4typeEOS8_"}
!101 = !{!99, !96}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN5arrow6Status2OKEv: argument 0"}
!104 = distinct !{!104, !"_ZN5arrow6Status2OKEv"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZSt13make_optionalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENSt9enable_ifIX18is_constructible_vINSt5decayIT_E4typeES9_EESt8optionalISB_EE4typeEOS9_: argument 0"}
!107 = distinct !{!107, !"_ZSt13make_optionalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENSt9enable_ifIX18is_constructible_vINSt5decayIT_E4typeES9_EESt8optionalISB_EE4typeEOS9_"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!110 = distinct !{!110, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN5arrow6Status2OKEv: argument 0"}
!113 = distinct !{!113, !"_ZN5arrow6Status2OKEv"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZZN5arrow13GetListenPortEvENK3$_0clB5cxx11Ev: argument 0"}
!116 = distinct !{!116, !"_ZZN5arrow13GetListenPortEvENK3$_0clB5cxx11Ev"}
!117 = !{!118, !119, i64 0}
!118 = !{!"_ZTS11sockaddr_in", !119, i64 0, !119, i64 2, !120, i64 4, !6, i64 8}
!119 = !{!"short", !6, i64 0}
!120 = !{!"_ZTS7in_addr", !5, i64 0}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZZN5arrow13GetListenPortEvENK3$_0clB5cxx11Ev: argument 0"}
!123 = distinct !{!123, !"_ZZN5arrow13GetListenPortEvENK3$_0clB5cxx11Ev"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZZN5arrow13GetListenPortEvENK3$_0clB5cxx11Ev: argument 0"}
!126 = distinct !{!126, !"_ZZN5arrow13GetListenPortEvENK3$_0clB5cxx11Ev"}
!127 = !{!118, !119, i64 2}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN5arrow6Status8FromArgsIJRA30_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_: argument 0"}
!130 = distinct !{!130, !"_ZN5arrow6Status8FromArgsIJRA30_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN5arrow6Status8FromArgsIJRA16_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_: argument 0"}
!133 = distinct !{!133, !"_ZN5arrow6Status8FromArgsIJRA16_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN5arrow6Status8FromArgsIJRA23_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_: argument 0"}
!136 = distinct !{!136, !"_ZN5arrow6Status8FromArgsIJRA23_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!139 = distinct !{!139, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!142 = distinct !{!142, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!143 = !{!141, !138}
!144 = !{!145, !22, i64 40}
!145 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !146, i64 56}
!146 = !{!"_ZTSSt6locale", !147, i64 0}
!147 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!148 = !{!145, !22, i64 32}
!149 = !{!150, !17, i64 8}
!150 = !{!"_ZTSSi", !17, i64 8}
!151 = !{!"branch_weights", i32 1, i32 1048575}
!152 = distinct !{ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!153 = !{!154, !155, i64 0}
!154 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow8DataTypeEESaIS3_EE17_Vector_impl_dataE", !155, i64 0, !155, i64 8, !155, i64 16}
!155 = !{!"p1 _ZTSSt10shared_ptrIN5arrow8DataTypeEE", !14, i64 0}
!156 = !{!154, !155, i64 16}
!157 = distinct !{!157, !10}
!158 = !{!154, !155, i64 8}
!159 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!160 = distinct !{!160, !10}
!161 = !{!162, !13, i64 0}
!162 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!163 = !{!162, !13, i64 8}
!164 = !{!162, !13, i64 16}
!165 = !{!13, !13, i64 0}
!166 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!167 = distinct !{null}
!168 = distinct !{null}
!169 = !{!170, !13, i64 32}
!170 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !171, i64 0, !171, i64 16, !13, i64 32}
!171 = !{!"_ZTSSt13_Bit_iterator", !12, i64 0}
!172 = distinct !{!172, !10}
!173 = distinct !{!173, !10}
!174 = distinct !{!174, !10}
!175 = distinct !{!175, !10}
!176 = distinct !{!176, !10}
!177 = !{!178, !48, i64 0}
!178 = !{!"_ZTSSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EE", !48, i64 0, !57, i64 8}
!179 = !{!180, !48, i64 0}
!180 = !{!"_ZTSNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !48, i64 0}
!181 = distinct !{null, null}
!182 = !{!183, !48, i64 16}
!183 = !{!"_ZTSSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE", !67, i64 0, !180, i64 16}
!184 = distinct !{null}
!185 = !{!186, !22, i64 8}
!186 = !{!"_ZTSSt9type_info", !22, i64 8}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZN5arrow4util13StringBuilderIJRA74_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!189 = distinct !{!189, !"_ZN5arrow4util13StringBuilderIJRA74_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!190 = !{!191, !199, i64 8}
!191 = !{!"_ZTSN5arrow4util6detail19StringStreamWrapperE", !192, i64 0, !199, i64 8}
!192 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !193, i64 0}
!193 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !194, i64 0}
!194 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !195, i64 0}
!195 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !196, i64 0}
!196 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !197, i64 0}
!197 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !198, i64 0}
!198 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!199 = !{!"p1 _ZTSSo", !14, i64 0}
!200 = !{i64 8}
end_hunk_1
