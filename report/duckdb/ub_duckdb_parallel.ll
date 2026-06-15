inline.NumInlined: 6986
inline.NumDeleted: 3568
begin_hunk_0_@_ZN6duckdb12PipelineTask11ExecuteTaskENS_17TaskExecutionModeE:bb.a
  br i1 %.not.i.i.i22, label %_ZN6duckdb10shared_ptrINS_4TaskELb1EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb8weak_ptrINS_4TaskELb1EED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ag, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !42
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #34, !inline_history !150
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #34, !inline_history !150
  br label %_ZN6duckdb10shared_ptrINS_4TaskELb1EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i23 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i23, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i24

bb.p:                                             ; preds = %bb.n
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i24: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i25 = phi i32 [ %i.aj, %bb.o ], [ %i.at, %bb.p ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i25, 1
  br i1 %i.au, label %bb.q, label %_ZN6duckdb10shared_ptrINS_4TaskELb1EED2Ev.exit, !prof !53

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i24
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #34
  br label %_ZN6duckdb10shared_ptrINS_4TaskELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_4TaskELb1EED2Ev.exit:   ; preds = %_ZN6duckdb8weak_ptrINS_4TaskELb1EED2Ev.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i24, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.av = icmp eq i8 %1, 1
  %i.aw = call noundef ptr @_ZNK6duckdb10unique_ptrINS_16PipelineExecutorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  br i1 %i.av, label %bb.r, label %bb.y

bb.r:                                             ; preds = %_ZN6duckdb10shared_ptrINS_4TaskELb1EED2Ev.exit
  %i.ax = call noundef i32 @_ZN6duckdb16PipelineExecutor7ExecuteEm(ptr noundef nonnull align 8 dereferenceable(513) %i.aw, i64 noundef 50)
  switch i32 %i.ax, label %.thread38 [
    i32 1, label %_ZN6duckdb10unique_ptrINS_16PipelineExecutorESt14default_deleteIS1_ELb1EE5resetEPS1_.exit
    i32 2, label %bb.x
  ]

bb.s:                                             ; preds = %_ZN6duckdb8weak_ptrINS_4TaskELb1EEC2IS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS_10shared_ptrIS5_Lb1EEE.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !146 ; 4 uses
  %.not.i.i.i26 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i26, label %_ZN6duckdb8weak_ptrINS_4TaskELb1EED2Ev.exit30, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12 ; 3 uses
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i27 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i27, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !3  ; 2 uses
  %i.bd = add nsw i32 %i.bc, -1
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i28

bb.v:                                             ; preds = %bb.t
  %i.be = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i28

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i28: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i29 = phi i32 [ %i.bc, %bb.u ], [ %i.be, %bb.v ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i29, 1
  br i1 %i.bf, label %bb.w, label %_ZN6duckdb8weak_ptrINS_4TaskELb1EED2Ev.exit30

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i28
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #34, !inline_history !389
  br label %_ZN6duckdb8weak_ptrINS_4TaskELb1EED2Ev.exit30

_ZN6duckdb8weak_ptrINS_4TaskELb1EED2Ev.exit30:    ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i28, %bb.w
  call void @_ZN6duckdb10shared_ptrINS_4TaskELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %common.resume

bb.x:                                             ; preds = %bb.r
  br label %_ZN6duckdb10unique_ptrINS_16PipelineExecutorESt14default_deleteIS1_ELb1EE5resetEPS1_.exit

bb.y:                                             ; preds = %_ZN6duckdb10shared_ptrINS_4TaskELb1EED2Ev.exit
  %i.bj = call noundef range(i32 0, 3) i32 @_ZN6duckdb16PipelineExecutor7ExecuteEm(ptr noundef nonnull align 8 dereferenceable(513) %i.aw, i64 noundef -1)
  switch i32 %i.bj, label %.thread38 [
    i32 1, label %bb.z
    i32 2, label %_ZN6duckdb10unique_ptrINS_16PipelineExecutorESt14default_deleteIS1_ELb1EE5resetEPS1_.exit
  ]

bb.z:                                             ; preds = %bb.y
  %i.bk = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.aa unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.af unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.z
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0 = phi i1 [ false, %bb.ab ], [ true, %bb.aa ] ; 2 uses
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bn = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.bn) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br i1 %.0, label %bb.ad, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br i1 %.0, label %bb.ad, label %common.resume

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn37 = phi { ptr, i32 } [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bk) #34
  br label %common.resume

.thread38:                                        ; preds = %bb.y, %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = call noundef ptr @_ZNK6duckdb10shared_ptrINS_5EventELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load atomic i64, ptr %i.bs seq_cst, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bv = atomicrmw add ptr %i.bu, i64 1 seq_cst, align 8
  %i.bw = add i64 %i.bv, 1
  %i.bx = icmp eq i64 %i.bw, %i.bt
  br i1 %i.bx, label %bb.ae, label %_ZN6duckdb5Event10FinishTaskEv.exit

bb.ae:                                            ; preds = %.thread38
  call void @_ZN6duckdb5Event6FinishEv(ptr noundef nonnull align 8 dereferenceable(113) %i.br)
  br label %_ZN6duckdb5Event10FinishTaskEv.exit

_ZN6duckdb5Event10FinishTaskEv.exit:              ; preds = %.thread38, %bb.ae
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !426 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !426
  %.not.i.i.i31 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i31, label %_ZN6duckdb10unique_ptrINS_16PipelineExecutorESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN6duckdb16PipelineExecutorEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb16PipelineExecutorEEclEPS1_.exit.i.i.i: ; preds = %_ZN6duckdb5Event10FinishTaskEv.exit
  call void @_ZN6duckdb16PipelineExecutorD2Ev(ptr noundef nonnull align 8 dead_on_return(513) dereferenceable(513) %i.by) #34
  call void @_ZdlPv(ptr noundef nonnull %i.by) #36
  br label %_ZN6duckdb10unique_ptrINS_16PipelineExecutorESt14default_deleteIS1_ELb1EE5resetEPS1_.exit

_ZN6duckdb10unique_ptrINS_16PipelineExecutorESt14default_deleteIS1_ELb1EE5resetEPS1_.exit: ; preds = %bb.r, %bb.x, %_ZNKSt14default_deleteIN6duckdb16PipelineExecutorEEclEPS1_.exit.i.i.i, %_ZN6duckdb5Event10FinishTaskEv.exit, %bb.y
  %.2 = phi i8 [ 3, %bb.y ], [ 0, %_ZNKSt14default_deleteIN6duckdb16PipelineExecutorEEclEPS1_.exit.i.i.i ], [ 0, %_ZN6duckdb5Event10FinishTaskEv.exit ], [ 1, %bb.r ], [ 3, %bb.x ]
  ret i8 %.2

bb.af:                                            ; preds = %bb.ab
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(512) ptr @_ZN6duckdb8Pipeline16GetClientContextEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156, !nonnull !132, !align !133
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61, !nonnull !132, !align !133
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16PipelineExecutor20SetTaskForInterruptsENS_8weak_ptrINS_4TaskELb1EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(513) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::InterruptState", align 8 ; 9 uses
  %3 = alloca %"class.duckdb::weak_ptr", align 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !58
  store <2 x ptr> %i.b, ptr %3, align 16, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb14InterruptStateC1ENS_8weak_ptrINS_4TaskELb1EEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.ad

bb.b:                                             ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %5 = load i8, ptr %2, align 8, !tbaa !135
  store i8 %5, ptr %4, align 8, !tbaa !135
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !388
  store ptr %i.e, ptr %i.d, align 8, !tbaa !388
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !146  ; 4 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not6.i.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i7.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i7.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3    ; 2 uses
  %i.r = add nsw i32 %i.q, -1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.s = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.g ], [ %i.s, %bb.h ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #34, !inline_history !879
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i
  store ptr %i.h, ptr %i.f, align 8, !tbaa !146
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !880
  store ptr %i.z, ptr %i.y, align 8, !tbaa !880
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !146 ; 3 uses
  %.not.i.i.i.i4.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i4.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i6.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i5.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i5.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i6.i

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i6.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i6.i: ; preds = %bb.m, %bb.l, %bb.j
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !146 ; 4 uses
  %.not6.i.i.i.i7.i = icmp eq ptr %i.ai, null
  br i1 %.not6.i.i.i.i7.i, label %_ZN6duckdb14InterruptStateaSEOS0_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i6.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 3 uses
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i7.i.i.i.i8.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i7.i.i.i.i8.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !3  ; 2 uses
  %i.am = add nsw i32 %i.al, -1
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i9.i

bb.p:                                             ; preds = %bb.n
  %i.an = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i9.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i9.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i10.i = phi i32 [ %i.al, %bb.o ], [ %i.an, %bb.p ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i.i10.i, 1
  br i1 %i.ao, label %bb.q, label %_ZN6duckdb14InterruptStateaSEOS0_.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i9.i
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #34, !inline_history !881
  br label %_ZN6duckdb14InterruptStateaSEOS0_.exit

_ZN6duckdb14InterruptStateaSEOS0_.exit:           ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i9.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i6.i
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !146
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !146 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN6duckdb14InterruptStateaSEOS0_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12 ; 3 uses
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i4 = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i4, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = load i32, ptr %i.at, align 4, !tbaa !3  ; 2 uses
  %i.aw = add nsw i32 %i.av, -1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ax = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i = phi i32 [ %i.av, %bb.s ], [ %i.ax, %bb.t ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.u, label %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #34, !inline_history !882
  br label %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i

_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i: ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZN6duckdb14InterruptStateaSEOS0_.exit
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !146 ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i1.i, label %_ZN6duckdb14InterruptStateD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12 ; 3 uses
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i2.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i2.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !3  ; 2 uses
  %i.bg = add nsw i32 %i.bf, -1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i

bb.x:                                             ; preds = %bb.v
  %i.bh = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i4.i = phi i32 [ %i.bf, %bb.w ], [ %i.bh, %bb.x ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i4.i, 1
  br i1 %i.bi, label %bb.y, label %_ZN6duckdb14InterruptStateD2Ev.exit

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !28
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #34, !inline_history !883
  br label %_ZN6duckdb14InterruptStateD2Ev.exit

_ZN6duckdb14InterruptStateD2Ev.exit:              ; preds = %_ZN6duckdb8weak_ptrINS_24InterruptDoneSignalStateELb1EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i, %bb.y
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !146 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %_ZN6duckdb8weak_ptrINS_4TaskELb1EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb14InterruptStateD2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12 ; 3 uses
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i5 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i5, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !3  ; 2 uses
  %i.bq = add nsw i32 %i.bp, -1
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.br = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i = phi i32 [ %i.bp, %bb.aa ], [ %i.br, %bb.ab ]
  %i.bs = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bs, label %bb.ac, label %_ZN6duckdb8weak_ptrINS_4TaskELb1EED2Ev.exit

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #34, !inline_history !389
  br label %_ZN6duckdb8weak_ptrINS_4TaskELb1EED2Ev.exit

_ZN6duckdb8weak_ptrINS_4TaskELb1EED2Ev.exit:      ; preds = %_ZN6duckdb14InterruptStateD2Ev.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void

bb.ad:                                            ; preds = %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !146 ; 4 uses
  %.not.i.i.i6 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i6, label %_ZN6duckdb8weak_ptrINS_4TaskELb1EED2Ev.exit10, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 12 ; 3 uses
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i7 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i7, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !3  ; 2 uses
  %i.cb = add nsw i32 %i.ca, -1
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8

bb.ag:                                            ; preds = %bb.ae
  %i.cc = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i9 = phi i32 [ %i.ca, %bb.af ], [ %i.cc, %bb.ag ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i9, 1
  br i1 %i.cd, label %bb.ah, label %_ZN6duckdb8weak_ptrINS_4TaskELb1EED2Ev.exit10

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !28
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #34, !inline_history !389
  br label %_ZN6duckdb8weak_ptrINS_4TaskELb1EED2Ev.exit10

_ZN6duckdb8weak_ptrINS_4TaskELb1EED2Ev.exit10:    ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %i.bw
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 3) i32 @_ZN6duckdb16PipelineExecutor7ExecuteEm(ptr noundef nonnull align 8 dereferenceable(513) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::ExecutionBudget", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !884, !nonnull !132, !align !133 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !270
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !270
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_9DataChunkESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 0)
  %i.j = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ %i.g, %bb.b ], [ %i.j, %bb.c ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store i64 0, ptr %2, align 8, !tbaa !885
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %1, ptr %i.l, align 8, !tbaa !887
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !888, !nonnull !132, !align !133
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load atomic i8, ptr %i.o seq_cst, align 8, !range !268, !noundef !132
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 498 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 499 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 500 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 497
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN6duckdb15ExecutionBudget4NextEv.exit, %bb.d
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN6duckdb18InterruptExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %._crit_edge
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTIN6duckdb18InterruptExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
  unreachable

bb.f:                                             ; preds = %._crit_edge
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ad) #34
  br label %bb.ah

bb.g:                                             ; preds = %.lr.ph, %_ZN6duckdb15ExecutionBudget4NextEv.exit
  %i.af = load i8, ptr %i.r, align 8, !tbaa !889, !range !268, !noundef !132
  %i.ag = trunc nuw i8 %i.af to i1                ; 2 uses
  %i.ah = load i8, ptr %i.s, align 2, !range !268
  %i.ai = trunc nuw i8 %i.ah to i1                ; 2 uses
  %or.cond = select i1 %i.ag, i1 %i.ai, i1 false
  %or.cond.not = xor i1 %or.cond, true
  %i.aj = load i8, ptr %i.t, align 1, !range !268
  %i.ak = trunc nuw i8 %i.aj to i1                ; 2 uses
  %or.cond45 = select i1 %or.cond.not, i1 true, i1 %i.ak
  %i.al = load i8, ptr %i.u, align 4, !range !268
  %i.am = trunc nuw i8 %i.al to i1                ; 3 uses
  %or.cond48 = select i1 %or.cond45, i1 true, i1 %i.am
  br i1 %or.cond48, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !890
  %i.ao = load ptr, ptr %i.w, align 8, !tbaa !890
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %.thread85, label %.thread

bb.i:                                             ; preds = %bb.g
  br i1 %i.ak, label %bb.j, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.i
end_hunk_0
