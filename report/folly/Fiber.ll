Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Fiber?download=true
inline.NumInlined: 229
inline.NumDeleted: 129
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5folly6fibers5Fiber9fiberFuncEv:bb.a
  %i.ci = load ptr, ptr %i.m, align 8, !tbaa !47, !nonnull !48, !align !49
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 160
  %i.ck = load i64, ptr %i.cj, align 16, !tbaa !118
  %i.cl = add i64 %i.ck, -64                      ; 2 uses
  store i64 %i.cl, ptr %i.g, align 8, !tbaa !129
  %i.cm = icmp ult i64 %.sroa.speculated.i, %i.cl
  br i1 %i.cm, label %_ZN6google12Check_LTImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, label %_ZN6google12Check_LTImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit, !prof !62

_ZN6google12Check_LTImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread: ; preds = %.critedge16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %bb.ad

_ZN6google12Check_LTImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %.critedge16
  %i.cn = call noundef ptr @_ZN6google17MakeCheckOpStringImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.11) ; 2 uses
  store ptr %i.cn, ptr %8, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %.not30 = icmp eq ptr %i.cn, null
  br i1 %.not30, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %_ZN6google12Check_LTImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, %_ZN6google12Check_LTImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.al

bb.ae:                                            ; preds = %bb.f
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load ptr, ptr %6, align 8, !tbaa !131
  %.not.i20 = icmp eq ptr %i.cp, null
  br i1 %.not.i20, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #22
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @__cxa_end_catch()
          to label %bb.an unwind label %bb.ao

bb.ag:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.ac, %bb.ab
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.an

bb.ah:                                            ; preds = %_ZN6google12Check_LTImplImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull @.str.1, i32 noundef 169, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %9)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull @.str.12)
          to label %bb.aj unwind label %bb.ak     ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9) #23
  unreachable

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9) #23
  unreachable

bb.al:                                            ; preds = %bb.ad, %_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv.exit
  store i8 0, ptr %0, align 64, !tbaa !46
  %i.cu = load ptr, ptr %i.m, align 8, !tbaa !47, !nonnull !48, !align !49
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr null, ptr %i.cv, align 8, !tbaa !142
  %i.cw = load ptr, ptr %i.s, align 8, !tbaa !143
  %i.cx = call { ptr, ptr } @jump_fcontext(ptr noundef %i.cw, ptr noundef null)
  %i.cy = extractvalue { ptr, ptr } %i.cx, 0      ; 3 uses
  store ptr %i.cy, ptr %i.s, align 8, !tbaa !143
  %i.cz = load ptr, ptr %i.r, align 16, !tbaa !124 ; 3 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_ZN5folly6fibers12FiberManager15deactivateFiberEPNS0_5FiberE.exit.backedge, label %bb.am

_ZN5folly6fibers12FiberManager15deactivateFiberEPNS0_5FiberE.exit.backedge: ; preds = %bb.al, %bb.am
  br label %_ZN5folly6fibers12FiberManager15deactivateFiberEPNS0_5FiberE.exit, !llvm.loop !175

bb.am:                                            ; preds = %bb.al
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !127
  store ptr %i.dc, ptr %i.cz, align 8, !tbaa !127
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !127
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.de, ptr %i.df, align 8, !tbaa !127
  br label %_ZN5folly6fibers12FiberManager15deactivateFiberEPNS0_5FiberE.exit.backedge

bb.an:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.ag ], [ %i.co, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21 ]
  resume { ptr, i32 } %.pn

bb.ao:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #23
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #12

declare ptr @make_fcontext(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly6fibers9FiberImpl9fiberFuncEN5boost7context6detail10transfer_tE(ptr %0, ptr %1) #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %0, ptr %i.a, align 8, !tbaa !143
  %i.b = call ptr @llvm.frameaddress.p0(i32 0)    ; 4 uses
  store ptr %i.b, ptr %1, align 16, !tbaa !124
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5folly6fibers9FiberImpl17fixStackUnwindingEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !127
  store ptr %i.e, ptr %i.b, align 8, !tbaa !127
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !127
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !127
  br label %_ZN5folly6fibers9FiberImpl17fixStackUnwindingEv.exit

_ZN5folly6fibers9FiberImpl17fixStackUnwindingEv.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !122
  call void %i.k(ptr noundef nonnull align 16 dereferenceable(48) %i.i), !inline_history !2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #14

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !call_target !148, !inline_history !177
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !130  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !call_target !150, !inline_history !177
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly6fibers5Fiber4initEb(ptr noundef nonnull align 64 dereferenceable(928) initializes((2, 3)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %4 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %6 = alloca %"class.folly::fibers::FiberImpl", align 16 ; 7 uses
  %7 = alloca %"class.folly::Function", align 16  ; 6 uses
  %i.e = zext i1 %1 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.e, ptr %i.f, align 2, !tbaa !132
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !range !117
  %i.i = trunc nuw i8 %i.h to i1
  %not. = xor i1 %1, true
  %i.j = select i1 %not., i1 true, i1 %i.i, !prof !180
  br i1 %i.j, label %bb.p, label %bb.b, !prof !180

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 32, !tbaa !121
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, 7                          ; 2 uses
  store i64 %i.n, ptr %i.a, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !130
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, label %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit, !prof !62

_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.c

_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %bb.b
  %i.p = call noundef ptr @_ZN6google17MakeCheckOpStringImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @.str.2) ; 2 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = load i64, ptr %i.q, align 16, !tbaa !119 ; 2 uses
  %i.s = and i64 %i.r, 7                          ; 2 uses
  store i64 %i.s, ptr %i.c, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !130
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit4.thread, label %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit4, !prof !62

_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit4.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.g

_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit4: ; preds = %bb.c
  %i.u = call noundef ptr @_ZN6google17MakeCheckOpStringImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @.str.3) ; 2 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %.not10 = icmp eq ptr %i.u, null
  br i1 %.not10, label %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit4._crit_edge, label %bb.h

_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit4._crit_edge: ; preds = %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit4
  %.pre = load i64, ptr %i.q, align 16, !tbaa !119
  br label %bb.g

bb.d:                                             ; preds = %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str.1, i32 noundef 83, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #23
  unreachable

bb.g:                                             ; preds = %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit4._crit_edge, %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit4.thread
  %i.x = phi i64 [ %.pre, %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit4._crit_edge ], [ %i.r, %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit4.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.y = load ptr, ptr %i.k, align 32, !tbaa !121 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  %.not5.i.i.i = icmp samesign eq i64 %i.x, 0
  br i1 %.not5.i.i.i, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.g
  %i.aa = add i64 %i.x, -8                        ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1
  %xtraiter = and i64 %i.ac, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.06.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.prol ], [ %i.y, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store i64 -374168149231226868, ptr %.06.i.i.i.prol, align 8, !tbaa !129
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !178

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.06.i.i.i.unr = phi ptr [ %i.y, %.lr.ph.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.prol ]
  %i.ae = icmp ult i64 %i.aa, 56
  br i1 %i.ae, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  store i64 -374168149231226868, ptr %.06.i.i.i, align 8, !tbaa !129
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  store i64 -374168149231226868, ptr %i.af, align 8, !tbaa !129
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  store i64 -374168149231226868, ptr %i.ag, align 8, !tbaa !129
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  store i64 -374168149231226868, ptr %i.ah, align 8, !tbaa !129
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32
  store i64 -374168149231226868, ptr %i.ai, align 8, !tbaa !129
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  store i64 -374168149231226868, ptr %i.aj, align 8, !tbaa !129
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 48
  store i64 -374168149231226868, ptr %i.ak, align 8, !tbaa !129
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56
  store i64 -374168149231226868, ptr %i.al, align 8, !tbaa !129
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %i.am, %i.z
  br i1 %.not.i.i.i.7, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !179

_ZSt4fillIPmmEvT_S1_RKT0_.exit.loopexit:          ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.pre11 = load i64, ptr %i.q, align 16, !tbaa !119
  br label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %_ZSt4fillIPmmEvT_S1_RKT0_.exit.loopexit, %bb.g
  %i.an = phi i64 [ %.pre11, %_ZSt4fillIPmmEvT_S1_RKT0_.exit.loopexit ], [ 0, %bb.g ]
  store i8 1, ptr %i.g, align 1, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  store ptr %0, ptr %7, align 16, !tbaa !183
  store ptr @"_ZN5folly6detail8function5call_IZNS_6fibers5Fiber4initEbE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE", ptr %i.ao, align 16, !tbaa !122
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.ap, align 8, !tbaa !123
  invoke void @_ZN5folly6fibers9FiberImplC2ENS_8FunctionIFvvEEEPhm(ptr noundef nonnull align 16 dereferenceable(96) %6, ptr noundef nonnull align 16 %7, ptr noundef %i.y, i64 noundef %i.an)
          to label %bb.k unwind label %bb.n

bb.h:                                             ; preds = %_ZN6google12Check_EQImplImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull @.str.1, i32 noundef 84, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %5)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #23
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #23
  unreachable

bb.k:                                             ; preds = %_ZSt4fillIPmmEvT_S1_RKT0_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = call noundef nonnull align 16 dereferenceable(96) ptr @_ZN5folly6fibers9FiberImplaSEOS1_(ptr noundef nonnull align 16 dereferenceable(96) %i.as, ptr noundef nonnull align 16 dereferenceable(96) %6) #22 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !123 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i5, label %_ZN5folly6fibers9FiberImplD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ax = call noundef i64 %i.av(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.aw, ptr noundef null) #22, !inline_history !4 ; 0 uses
  br label %_ZN5folly6fibers9FiberImplD2Ev.exit

_ZN5folly6fibers9FiberImplD2Ev.exit:              ; preds = %bb.k, %bb.l
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !123 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5folly6fibers9FiberImplD2Ev.exit
  %i.az = call noundef i64 %i.ay(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef null) #22, !inline_history !1 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %_ZN5folly6fibers9FiberImplD2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.p

bb.n:                                             ; preds = %_ZSt4fillIPmmEvT_S1_RKT0_.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %i.ap, align 8, !tbaa !123 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i6, label %_ZN5folly8FunctionIFvvEED2Ev.exit7, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = call noundef i64 %i.bb(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef null) #22, !inline_history !1 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit7

_ZN5folly8FunctionIFvvEED2Ev.exit7:               ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %i.ba

bb.p:                                             ; preds = %bb.a, %_ZN5folly8FunctionIFvvEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 16 dereferenceable(96) ptr @_ZN5folly6fibers9FiberImplaSEOS1_(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 16, !tbaa !124
  store ptr %i.a, ptr %0, align 16, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123  ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 %i.e(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef null) #22, !inline_history !184 ; 0 uses
  br label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i

_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i: ; preds = %bb.b, %bb.a
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5folly8FunctionIFvvEEaSEOS2_.exit, label %bb.c, !prof !133

bb.c:                                             ; preds = %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123  ; 2 uses
  %.not.i9.i = icmp eq ptr %i.h, null
  br i1 %.not.i9.i, label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef i64 %i.h(i32 noundef 0, ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 16 dereferenceable(64) %i.b) #22, !inline_history !184 ; 0 uses
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !123
  br label %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i

_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i: ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ null, %bb.c ], [ %.pre.i, %bb.d ]
  store ptr %i.j, ptr %i.d, align 8, !tbaa !123
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !122
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.l, ptr %i.m, align 16, !tbaa !122
  br label %_ZN5folly8FunctionIFvvEEaSEOS2_.exit

_ZN5folly8FunctionIFvvEEaSEOS2_.exit:             ; preds = %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit.i, %_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_.exit11.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr null, ptr %i.n, align 8, !tbaa !123
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE, ptr %i.o, align 16, !tbaa !122
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.p, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google17MakeCheckOpStringImjEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::base::CheckOpMessageBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !153
  %i.b = load i64, ptr %0, align 8, !tbaa !129
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.b)
          to label %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit: ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit
  %i.e = load i32, ptr %1, align 4, !tbaa !130
  %i.f = zext i32 %i.e to i64
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.f)
          to label %_ZN6google22MakeCheckOpValueStringIjEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIjEEvPSoRKT_.exit: ; preds = %bb.b
  %i.h = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIjEEvPSoRKT_.exit
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret ptr %i.h

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZN6google22MakeCheckOpValueStringIjEEvPSoRKT_.exit, %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.i
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noreturn uwtable
define internal void @"_ZN5folly6detail8function5call_IZNS_6fibers5Fiber4initEbE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE"(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %0) #7 {
bb.a:
  %.val = load ptr, ptr %0, align 16, !tbaa !186
  tail call void @_ZN5folly6fibers5Fiber9fiberFuncEv(ptr noundef nonnull align 64 dereferenceable(928) %.val) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly6fibers5FiberD2Ev(ptr noundef nonnull align 64 dead_on_return(928) dereferenceable(928) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47, !nonnull !48, !align !49
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 32, !tbaa !121
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 16, !tbaa !119
  invoke void @_ZN5folly6fibers18GuardPageAllocator10deallocateEPhm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef %i.e, i64 noundef %i.g)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !64  ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_10member_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE0EE6unlinkEv.exit1, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63   ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_10member_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE0EE6unlinkEv.exit1

_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_10member_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE0EE6unlinkEv.exit1: ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 64, !tbaa !64  ; 3 uses
  %.not.i2 = icmp eq ptr %i.n, null
  br i1 %.not.i2, label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_10member_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE0EE6unlinkEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_10member_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE0EE6unlinkEv.exit1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63   ; 2 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br label %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_10member_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE0EE6unlinkEv.exit

_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_10member_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE0EE6unlinkEv.exit: ; preds = %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_10member_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE0EE6unlinkEv.exit1, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @_ZN5folly6fibers5Fiber9LocalDataD1Ev(ptr noundef nonnull align 64 dead_on_return(176) dereferenceable(176) %i.r) #22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !123  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_10member_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE0EE6unlinkEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.v = tail call noundef i64 %i.t(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.u, ptr noundef null) #22, !inline_history !1 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %_ZN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_10member_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE0EE6unlinkEv.exit, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !123  ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.x, null
  br i1 %.not.i.i3, label %_ZN5folly8FunctionIFvvEED2Ev.exit4, label %bb.f

bb.f:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.z = tail call noundef i64 %i.x(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.y, ptr noundef null) #22, !inline_history !1 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit4

_ZN5folly8FunctionIFvvEED2Ev.exit4:               ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !123 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i5, label %_ZN5folly8FunctionIFvvEED2Ev.exit6, label %bb.g

bb.g:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ad = tail call noundef i64 %i.ab(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.ac, ptr noundef null) #22, !inline_history !1 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit6

_ZN5folly8FunctionIFvvEED2Ev.exit6:               ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit4, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !188 ; 8 uses
  %.not.i.i7 = icmp eq ptr %i.af, null
  br i1 %.not.i.i7, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit6
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ag, align 8, !tbaa !190
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !191
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #22, !call_target !148, !inline_history !187
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !53
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #22, !call_target !150, !inline_history !187
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126
  %.not.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.aj, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.au, label %bb.m, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !133

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #22
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5folly8FunctionIFvvEED2Ev.exit6, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !123 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i8, label %_ZN5folly6fibers9FiberImplD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = tail call noundef i64 %i.aw(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.ax, ptr noundef null) #22, !inline_history !4 ; 0 uses
  br label %_ZN5folly6fibers9FiberImplD2Ev.exit

_ZN5folly6fibers9FiberImplD2Ev.exit:              ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n
  ret void

bb.o:                                             ; preds = %bb.a
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #23
  unreachable
}

declare void @_ZN5folly6fibers18GuardPageAllocator10deallocateEPhm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5folly6fibers5Fiber19recordStackPositionEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(928) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 32, !tbaa !121
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 16, !tbaa !119
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !129
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.k, i64 %i.i)
  store i64 %.sroa.speculated, ptr %i.j, align 8, !tbaa !120
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47, !nonnull !48, !align !49 ; 2 uses
  %i.n = call noundef i64 @_ZNK5folly6fibers12FiberManager18stackHighWatermarkEv(ptr noundef nonnull align 16 dereferenceable(577) %i.m)
  %.sroa.speculated.i = call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  store atomic i64 %.sroa.speculated.i, ptr %i.o monotonic, align 16
  %i.p = load ptr, ptr @_ZZN5folly6fibers5Fiber19recordStackPositionEvE8vlocal__, align 8, !tbaa !141 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  %i.r = call noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly6fibers5Fiber19recordStackPositionEvE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.1, i32 noundef 4)
  br i1 %i.r, label %bb.c, label %.critedge10

bb.b:                                             ; preds = %bb.a
  %i.s = load i32, ptr %i.p, align 4, !tbaa !130
  %i.t = icmp sgt i32 %i.s, 3
  br i1 %i.t, label %bb.c, label %.critedge10

bb.c:                                             ; preds = %.split, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.1, i32 noundef 128)
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.4, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef %i.i)
          to label %.critedge unwind label %bb.e  ; 0 uses

.critedge:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %.critedge10

.critedge10:                                      ; preds = %.split, %bb.b, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %i.x
}

declare noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #18

declare void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #4

declare noundef i64 @_ZNK5folly6fibers12FiberManager18stackHighWatermarkEv(ptr noundef nonnull align 16 dereferenceable(577)) local_unnamed_addr #2

declare void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5folly17current_exceptionEv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #4

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nounwind
declare i32 @pthread_getcpuclockid(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #19

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google17MakeCheckOpStringImmEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::base::CheckOpMessageBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !153
  %i.b = load i64, ptr %0, align 8, !tbaa !129
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.b)
          to label %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit: ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit
  %i.e = load i64, ptr %1, align 8, !tbaa !129
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.e)
          to label %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit4 unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit4: ; preds = %bb.b
  %i.g = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit4
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret ptr %i.g

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit4, %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.h
}

declare { ptr, ptr } @jump_fcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5folly6fibers5Fiber7preemptENS1_5StateE(ptr noundef nonnull align 64 dereferenceable(928) %0, i8 noundef signext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  %2 = alloca %class.anon.30, align 8             ; 7 uses
  %3 = alloca %"class.folly::Function", align 16  ; 6 uses
  store i8 %1, ptr %i.a, align 1, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %0, ptr %2, align 8, !tbaa !156
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !127
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47, !nonnull !48, !align !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !205 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store ptr %2, ptr %3, align 16, !tbaa !127
  store ptr @"_ZN5folly6detail8function5call_ISt17reference_wrapperIZNS_6fibers5Fiber7preemptENS5_5StateEE3$_0ELb1ELb0EvJEEET2_DpT3_RNS1_4DataE", ptr %i.g, align 16, !tbaa !122
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.h, align 8, !tbaa !123
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 16 %3)
          to label %bb.c unwind label %bb.e, !call_target !210

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !123  ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN5folly8FunctionIFvvEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef i64 %i.l(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #22, !inline_history !1 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !123  ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.o, null
  br i1 %.not.i.i2, label %_ZN5folly8FunctionIFvvEED2Ev.exit3, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = call noundef i64 %i.o(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #22, !inline_history !1 ; 0 uses
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit3

_ZN5folly8FunctionIFvvEED2Ev.exit3:               ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.n

bb.g:                                             ; preds = %bb.a
  call fastcc void @"_ZZN5folly6fibers5Fiber7preemptENS1_5StateEEN3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN5folly8FunctionIFvvEED2Ev.exit

_ZN5folly8FunctionIFvvEED2Ev.exit:                ; preds = %bb.d, %bb.c, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN5folly6fibers5Fiber7preemptENS1_5StateEEN3$_0clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %4 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %5 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !156    ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !328, !nonnull !48
  %i.h = load i8, ptr %i.g, align 1, !tbaa !154
  %.not = icmp eq i8 %i.h, 5
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47, !nonnull !48, !align !49
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 480
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN5folly17current_exceptionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #22
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !131 ; 2 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !131
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %.critedge, label %bb.c, !prof !62

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str.1, i32 noundef 185)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.22, i64 noundef 69)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #23
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.r = load ptr, ptr %3, align 8, !tbaa !131
  %.not.i9 = icmp eq ptr %i.r, null
  br i1 %.not.i9, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #23
  unreachable

.critedge:                                        ; preds = %bb.b
  %.not.i10 = icmp eq ptr %i.l, null
  br i1 %.not.i10, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit11, label %bb.i

bb.i:                                             ; preds = %.critedge
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit11

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit11: ; preds = %.critedge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !47, !nonnull !48, !align !49
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 472
  %i.v = load i64, ptr %i.u, align 8, !tbaa !329  ; 2 uses
  store i64 %i.v, ptr %i.c, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.w = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN5folly19uncaught_exceptionsEvE2ct) ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !330  ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.j, label %_ZN5folly19uncaught_exceptionsEv.exit, !prof !133

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit11
  %i.y = call noundef ptr @_ZN5folly6detail23uncaught_exceptions_ptrEv() #22 ; 2 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !330
  br label %_ZN5folly19uncaught_exceptionsEv.exit

_ZN5folly19uncaught_exceptionsEv.exit:            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit11, %bb.j
  %i.z = phi ptr [ %i.y, %bb.j ], [ %i.x, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit11 ]
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !130 ; 2 uses
  store i32 %i.aa, ptr %i.d, align 4, !tbaa !130
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i64 %i.v, %i.ab
  br i1 %i.ac, label %_ZN6google12Check_EQImplIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, label %_ZN6google12Check_EQImplIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit, !prof !62

_ZN6google12Check_EQImplIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread: ; preds = %_ZN5folly19uncaught_exceptionsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.k

_ZN6google12Check_EQImplIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %_ZN5folly19uncaught_exceptionsEv.exit
  %i.ad = call noundef ptr @_ZN6google17MakeCheckOpStringIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @.str.23) ; 2 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %.not21 = icmp eq ptr %i.ad, null
  br i1 %.not21, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN6google12Check_EQImplIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, %_ZN6google12Check_EQImplIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.o

bb.l:                                             ; preds = %_ZN6google12Check_EQImplIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull @.str.1, i32 noundef 186, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #23
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #23
  unreachable

bb.o:                                             ; preds = %bb.k, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !128, !range !117, !noundef !48
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.aj = tail call i64 @pthread_self() #25
  %i.ak = call i32 @pthread_getcpuclockid(i64 noundef %i.aj, ptr noundef nonnull %i.b) #22
  %.not.i12 = icmp eq i32 %i.ak, 0
  br i1 %.not.i12, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.al = load i32, ptr %i.b, align 4, !tbaa !130
  %i.am = call i32 @clock_gettime(i32 noundef %i.al, ptr noundef nonnull %2) #22
  %.not1.i = icmp eq i32 %i.am, 0
  br i1 %.not1.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !129
  %i.ap = load i64, ptr %2, align 8, !tbaa !129
  %i.aq = mul nsw i64 %i.ap, 1000000000
  %i.ar = add nsw i64 %i.aq, %i.ao
  br label %_ZN5folly6fibers12thread_clock3nowEv.exit

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.as = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  br label %_ZN5folly6fibers12thread_clock3nowEv.exit

_ZN5folly6fibers12thread_clock3nowEv.exit:        ; preds = %bb.r, %bb.s
  %.sroa.04.0.i = phi i64 [ %i.ar, %bb.r ], [ %i.as, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 240 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.at, align 8, !tbaa !129
  %i.au = sub i64 %.sroa.04.0.i, %.sroa.0.0.copyload.i2.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 248 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !331
  %i.ax = add nsw i64 %i.au, %i.aw
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !331
  store i64 %.sroa.04.0.i, ptr %i.at, align 16, !tbaa !129
  br label %bb.t

bb.t:                                             ; preds = %_ZN5folly6fibers12thread_clock3nowEv.exit, %bb.o
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !328, !nonnull !48
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !154
  store i8 %i.az, ptr %i.e, align 64, !tbaa !46
  call void @_ZN5folly6fibers5Fiber19recordStackPositionEv(ptr noundef nonnull align 64 dereferenceable(928) %i.e)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !47, !nonnull !48, !align !49
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr null, ptr %i.bc, align 8, !tbaa !142
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !143
  %i.bg = call { ptr, ptr } @jump_fcontext(ptr noundef %i.bf, ptr noundef null)
  %i.bh = extractvalue { ptr, ptr } %i.bg, 0      ; 3 uses
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !143
  %i.bi = load ptr, ptr %i.bd, align 16, !tbaa !124 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN5folly6fibers12FiberManager15deactivateFiberEPNS0_5FiberE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !127
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !127
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !127
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !127
  br label %_ZN5folly6fibers12FiberManager15deactivateFiberEPNS0_5FiberE.exit

_ZN5folly6fibers12FiberManager15deactivateFiberEPNS0_5FiberE.exit: ; preds = %bb.t, %bb.u
  %i.bp = load i8, ptr %i.ag, align 1, !tbaa !128, !range !117, !noundef !48
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.v, label %bb.z

bb.v:                                             ; preds = %_ZN5folly6fibers12FiberManager15deactivateFiberEPNS0_5FiberE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.br = tail call i64 @pthread_self() #25
  %i.bs = call i32 @pthread_getcpuclockid(i64 noundef %i.br, ptr noundef nonnull %i.a) #22
  %.not.i13 = icmp eq i32 %i.bs, 0
  br i1 %.not.i13, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bt = load i32, ptr %i.a, align 4, !tbaa !130
  %i.bu = call i32 @clock_gettime(i32 noundef %i.bt, ptr noundef nonnull %1) #22
  %.not1.i15 = icmp eq i32 %i.bu, 0
  br i1 %.not1.i15, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !129
  %i.bx = load i64, ptr %1, align 8, !tbaa !129
  %i.by = mul nsw i64 %i.bx, 1000000000
  %i.bz = add nsw i64 %i.by, %i.bw
  br label %_ZN5folly6fibers12thread_clock3nowEv.exit16

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.ca = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  br label %_ZN5folly6fibers12thread_clock3nowEv.exit16

_ZN5folly6fibers12thread_clock3nowEv.exit16:      ; preds = %bb.x, %bb.y
  %.sroa.04.0.i14 = phi i64 [ %i.bz, %bb.x ], [ %i.ca, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  store i64 %.sroa.04.0.i14, ptr %i.cb, align 16, !tbaa !129
  br label %bb.z

bb.z:                                             ; preds = %_ZN5folly6fibers12thread_clock3nowEv.exit16, %_ZN5folly6fibers12FiberManager15deactivateFiberEPNS0_5FiberE.exit
  store i8 3, ptr %i.e, align 64, !tbaa !46
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5folly6detail8function5call_ISt17reference_wrapperIZNS_6fibers5Fiber7preemptENS5_5StateEE3$_0ELb1ELb0EvJEEET2_DpT3_RNS1_4DataE"(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %0) #0 {
bb.a:
  %.val = load ptr, ptr %0, align 16, !tbaa !333
  tail call fastcc void @"_ZZN5folly6fibers5Fiber7preemptENS1_5StateEEN3$_0clEv"(ptr noundef nonnull readonly align 8 dereferenceable(16) %.val)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google17MakeCheckOpStringIliEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::base::CheckOpMessageBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !153
  %i.b = load i64, ptr %0, align 8, !tbaa !129
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.b)
          to label %_ZN6google22MakeCheckOpValueStringIlEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIlEEvPSoRKT_.exit: ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIlEEvPSoRKT_.exit
  %i.e = load i32, ptr %1, align 4, !tbaa !130
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %i.e)
          to label %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit: ; preds = %bb.b
  %i.g = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret ptr %i.g

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit, %_ZN6google22MakeCheckOpValueStringIlEEvPSoRKT_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.h
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #20

; Function Attrs: nounwind
declare noundef ptr @_ZN5folly6detail23uncaught_exceptions_ptrEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly6fibers5Fiber14getRunningTimeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::Optional") align 8 captures(none) initializes((0, 1), (8, 9)) %0, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(928) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !128, !range !117, !noundef !48
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.f = load i64, ptr %i.e, align 8, !tbaa !129  ; 3 uses
  %i.g = load i8, ptr %1, align 64, !tbaa !46
  %i.h = icmp eq i8 %i.g, 3
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47, !nonnull !48, !align !49
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l), !call_target !59
  br i1 %i.p, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.q = tail call i64 @pthread_self() #25
  %i.r = call i32 @pthread_getcpuclockid(i64 noundef %i.q, ptr noundef nonnull %i.a) #22
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.a, align 4, !tbaa !130
  %i.t = call i32 @clock_gettime(i32 noundef %i.s, ptr noundef nonnull %2) #22
  %.not1.i = icmp eq i32 %i.t, 0
  br i1 %.not1.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !129
  %i.w = load i64, ptr %2, align 8, !tbaa !129
  %i.x = mul nsw i64 %i.w, 1000000000
  %i.y = add nsw i64 %i.x, %i.v
  br label %_ZN5folly6fibers12thread_clock3nowEv.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.z = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  br label %_ZN5folly6fibers12thread_clock3nowEv.exit

_ZN5folly6fibers12thread_clock3nowEv.exit:        ; preds = %bb.f, %bb.g
  %.sroa.04.0.i = phi i64 [ %i.y, %bb.f ], [ %i.z, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.aa, align 16, !tbaa !129
  %i.ab = add i64 %.sroa.04.0.i, %i.f
  %i.ac = sub i64 %i.ab, %.sroa.0.0.copyload.i2.i
  br label %bb.h

bb.h:                                             ; preds = %_ZN5folly6fibers12thread_clock3nowEv.exit, %bb.c, %bb.b
  %.sroa.02.0 = phi i64 [ %i.ac, %_ZN5folly6fibers12thread_clock3nowEv.exit ], [ %i.f, %bb.c ], [ %i.f, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0, ptr %0, align 8, !tbaa !129
  store i8 1, ptr %i.ad, align 8, !tbaa !336
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !126
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ae, align 8, !tbaa !337
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly6fibers5Fiber9LocalDataD2Ev(ptr nofree noundef nonnull readonly align 64 captures(address) dead_on_return(176) dereferenceable(176) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5folly6fibers5Fiber9LocalData5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.b, %0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 32
  %.sink.i = select i1 %i.c, ptr %i.g, ptr %i.e
  invoke void %.sink.i(ptr noundef nonnull %i.b)
          to label %_ZN5folly6fibers5Fiber9LocalData5resetEv.exit unwind label %bb.c, !inline_history !158

_ZN5folly6fibers5Fiber9LocalData5resetEv.exit:    ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly6fibers5Fiber9LocalData5resetEv(ptr nofree noundef nonnull align 64 captures(address) dereferenceable(176) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.b, %0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 32
  %.sink = select i1 %i.c, ptr %i.g, ptr %i.e
  tail call void %.sink(ptr noundef nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(40) %i.h, i8 0, i64 40, i1 false)
  store ptr null, ptr %i.a, align 8, !tbaa !157
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly6fibers5Fiber9LocalDataC2ERKS2_(ptr noundef nonnull align 64 dereferenceable(176) initializes((128, 176)) %0, ptr nofree noundef nonnull readonly align 64 captures(address) dereferenceable(176) %1) unnamed_addr #0 align 2 {
_ZN5folly6fibers5Fiber9LocalData5resetEv.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !157
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN5folly6fibers5Fiber9LocalDataaSERKS2_.exit, label %bb.a

bb.a:                                             ; preds = %_ZN5folly6fibers5Fiber9LocalData5resetEv.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 64 dereferenceable(40) %i.g, i64 40, i1 false), !tbaa.struct !160
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !157  ; 3 uses
  %i.i = icmp eq ptr %i.h, %1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !161
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 64 dereferenceable(176) %0, ptr noundef %i.h), !inline_history !338
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !162
  %i.m = tail call noundef ptr %i.l(ptr noundef %i.h), !inline_history !338
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.k, %bb.b ], [ %i.m, %bb.c ]
  store ptr %.sink.i, ptr %i.d, align 8, !tbaa !157
  br label %_ZN5folly6fibers5Fiber9LocalDataaSERKS2_.exit

_ZN5folly6fibers5Fiber9LocalDataaSERKS2_.exit:    ; preds = %_ZN5folly6fibers5Fiber9LocalData5resetEv.exit.i, %.sink.split.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 64 dereferenceable(176) ptr @_ZN5folly6fibers5Fiber9LocalDataaSERKS2_(ptr noundef nonnull returned align 64 dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 64 captures(address) dereferenceable(176) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5folly6fibers5Fiber9LocalData5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.b, %0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 32
  %.sink.i = select i1 %i.c, ptr %i.g, ptr %i.e
  tail call void %.sink.i(ptr noundef nonnull %i.b), !inline_history !158
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(48) %i.h, i8 0, i64 48, i1 false)
  br label %_ZN5folly6fibers5Fiber9LocalData5resetEv.exit

_ZN5folly6fibers5Fiber9LocalData5resetEv.exit:    ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !157
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN5folly6fibers5Fiber9LocalData5resetEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(40) %i.l, ptr noundef nonnull align 64 dereferenceable(40) %i.k, i64 40, i1 false), !tbaa.struct !160
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !157  ; 3 uses
  %i.n = icmp eq ptr %i.m, %1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !161
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull %0, ptr noundef %i.m)
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !162
  %i.t = tail call noundef ptr %i.s(ptr noundef %i.m)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.sink = phi ptr [ %i.q, %bb.d ], [ %i.t, %bb.e ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !157
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %_ZN5folly6fibers5Fiber9LocalData5resetEv.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { cold noreturn }
attributes #12 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline uwtable "disable-tail-calls"="true" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LoopController", scope: !61, file: !54, line: 30, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6fibers14LoopControllerE")
!1 = distinct !{null, null}
!2 = distinct !{null}
!3 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !149, file: !144, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!4 = distinct !{null, null, null}
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 7, !"openmp", i32 51}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"_ZTSN5folly6fibers5Fiber5StateE", !13, i64 0}
!18 = !{!"bool", !13, i64 0}
!19 = !{!"_ZTSN5folly6fibers11TaskOptionsE", !18, i64 0}
!20 = !{!"any pointer", !13, i64 0}
!21 = !{!"p1 _ZTSN5folly6fibers12FiberManagerE", !20, i64 0}
!22 = !{!"long", !13, i64 0}
!23 = !{!"p1 omnipotent char", !20, i64 0}
!24 = !{!"_ZTSN5folly8FunctionIFvvEEE", !13, i64 0, !20, i64 48, !20, i64 56}
!25 = !{!"_ZTSN5folly6fibers9FiberImplE", !20, i64 0, !24, i64 16, !20, i64 80, !20, i64 88}
!26 = !{!"p1 _ZTSN5folly14RequestContextE", !20, i64 0}
!27 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0}
!28 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !27, i64 0}
!29 = !{!"_ZTSSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EE", !26, i64 0, !28, i64 8}
!30 = !{!"_ZTSSt10shared_ptrIN5folly14RequestContextEE", !29, i64 0}
!31 = !{!"p1 _ZTSN5folly14AsyncStackRootE", !20, i64 0}
!32 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !22, i64 0}
!33 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !32, i64 0}
!34 = !{!"p1 _ZTSN5folly6fibers5FiberE", !20, i64 0}
!35 = !{!"_ZTSN5folly29AtomicIntrusiveLinkedListHookINS_6fibers5FiberEEE", !34, i64 0}
!36 = !{!"_ZTSN5folly6detail15aligned_storageILm256ELm16EE4typeE", !13, i64 0}
!37 = !{!"_ZTSN5folly6detail15aligned_storageILm128ELm64EE4typeE", !13, i64 0}
!38 = !{!"p1 _ZTSSt9type_info", !20, i64 0}
!39 = !{!"_ZTSN5folly6fibers5Fiber9LocalData6VTableE", !38, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32}
!40 = !{!"_ZTSN5folly6fibers5Fiber9LocalDataE", !37, i64 0, !39, i64 128, !20, i64 168}
!41 = !{!"p1 _ZTSN5boost9intrusive9list_nodeIPvEE", !20, i64 0}
!42 = !{!"_ZTSN5boost9intrusive9list_nodeIPvEE", !41, i64 0, !41, i64 8}
!43 = !{!"_ZTSN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_10member_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE0EEE", !42, i64 0}
!44 = !{!"_ZTSN5boost9intrusive16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEE", !43, i64 0}
!45 = !{!"_ZTSN5folly6fibers5FiberE", !17, i64 0, !19, i64 1, !18, i64 2, !18, i64 3, !21, i64 8, !22, i64 16, !22, i64 24, !23, i64 32, !25, i64 48, !30, i64 144, !31, i64 160, !24, i64 176, !33, i64 240, !32, i64 248, !35, i64 256, !36, i64 272, !24, i64 528, !24, i64 592, !40, i64 704, !44, i64 896, !44, i64 912}
!46 = !{!45, !17, i64 0}
!47 = !{!45, !21, i64 8}
!48 = !{}
!49 = !{i64 16}
!50 = !{!"p1 _ZTSN5folly6fibers14LoopControllerE", !20, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"vtable pointer", !12, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !DIFile(filename: "folly/fibers/LoopController.h", directory: "/opt-bench/work/folly/folly", checksumkind: CSK_MD5, checksum: "61f8ef0cf1e84587cc96141d3d38821f")
!55 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!57 = !{!55, !56}
!58 = !DISubroutineType(types: !57)
!59 = !DISubprogram(name: "isInLoopThread", linkageName: "_ZN5folly6fibers14LoopController14isInLoopThreadEv", scope: !0, file: !54, line: 78, type: !58, scopeLine: 78, containingType: !0, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!60 = !DINamespace(name: "folly", scope: null)
!61 = !DINamespace(name: "fibers", scope: !60)
!62 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!63 = !{!42, !41, i64 8}
!64 = !{!42, !41, i64 0}
!65 = !{!"_ZTSN5folly8ExecutorE"}
!66 = !{!"_ZTSN5boost9intrusive6detail21default_header_holderINS0_16list_node_traitsIPvEEEE", !42, i64 0}
!67 = !{!"_ZTSN5boost9intrusive9list_implINS0_8mhtraitsIN5folly6fibers5FiberENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS5_9listHook_EEEEEmLb0EvE14root_plus_sizeE", !66, i64 0}
!68 = !{!"_ZTSN5boost9intrusive9list_implINS0_8mhtraitsIN5folly6fibers5FiberENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS5_9listHook_EEEEEmLb0EvE6data_tE", !67, i64 0}
!69 = !{!"_ZTSN5boost9intrusive9list_implINS0_8mhtraitsIN5folly6fibers5FiberENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS5_9listHook_EEEEEmLb0EvEE", !68, i64 0}
!70 = !{!"_ZTSN5boost9intrusive4listIN5folly6fibers5FiberEJNS0_11member_hookIS4_NS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS4_9listHook_EEEEENS0_18constant_time_sizeILb0EEEEEE", !69, i64 0}
!71 = !{!"p1 _ZTSN5boost9intrusive4listIN5folly6fibers5FiberEJNS0_11member_hookIS4_NS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS4_9listHook_EEEEENS0_18constant_time_sizeILb0EEEEEE", !20, i64 0}
!72 = !{!"_ZTSN5boost9intrusive9list_implINS0_8mhtraitsIN5folly6fibers5FiberENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS5_15globalListHook_EEEEEmLb0EvE14root_plus_sizeE", !66, i64 0}
!73 = !{!"_ZTSN5boost9intrusive9list_implINS0_8mhtraitsIN5folly6fibers5FiberENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS5_15globalListHook_EEEEEmLb0EvE6data_tE", !72, i64 0}
!74 = !{!"_ZTSN5boost9intrusive9list_implINS0_8mhtraitsIN5folly6fibers5FiberENS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS5_15globalListHook_EEEEEmLb0EvEE", !73, i64 0}
!75 = !{!"_ZTSN5boost9intrusive4listIN5folly6fibers5FiberEJNS0_11member_hookIS4_NS0_16list_member_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEEXadL_ZNS4_15globalListHook_EEEEENS0_18constant_time_sizeILb0EEEEEE", !74, i64 0}
!76 = !{!"_ZTSSt13__atomic_baseImE", !22, i64 0}
!77 = !{!"_ZTSSt6atomicImE", !76, i64 0}
!78 = !{!"_ZTSSt10_Head_baseILm0EPN5folly6fibers14LoopControllerELb0EE", !50, i64 0}
!79 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly6fibers14LoopControllerESt14default_deleteIS2_EEE", !78, i64 0}
!80 = !{!"_ZTSSt5tupleIJPN5folly6fibers14LoopControllerESt14default_deleteIS2_EEE", !79, i64 0}
!81 = !{!"_ZTSSt15__uniq_ptr_implIN5folly6fibers14LoopControllerESt14default_deleteIS2_EE", !80, i64 0}
!82 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly6fibers14LoopControllerESt14default_deleteIS2_ELb1ELb1EE", !81, i64 0}
!83 = !{!"_ZTSSt10unique_ptrIN5folly6fibers14LoopControllerESt14default_deleteIS2_EE", !82, i64 0}
!84 = !{!"p1 _ZTSN5folly6fibers15StackCacheEntryE", !20, i64 0}
!85 = !{!"_ZTSSt10_Head_baseILm0EPN5folly6fibers15StackCacheEntryELb0EE", !84, i64 0}
!86 = !{!"_ZTSSt11_Tuple_implILm0EJPN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EEE", !85, i64 0}
!87 = !{!"_ZTSSt5tupleIJPN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EEE", !86, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_implIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EE", !87, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_dataIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_ELb1ELb1EE", !88, i64 0}
!90 = !{!"_ZTSSt10unique_ptrIN5folly6fibers15StackCacheEntryESt14default_deleteIS2_EE", !89, i64 0}
!91 = !{!"_ZTSSaIhE"}
!92 = !{!"_ZTSN5folly6fibers18GuardPageAllocatorE", !90, i64 0, !91, i64 8, !22, i64 16}
!93 = !{!"_ZTSN5folly6fibers12FiberManager7OptionsE", !22, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !14, i64 40}
!94 = !{!"_ZTSN5folly8FunctionIFvRNS_6fibers5FiberEEEE", !13, i64 0, !20, i64 48, !20, i64 56}
!95 = !{!"p1 _ZTSN5folly6fibers20InlineFunctionRunnerE", !20, i64 0}
!96 = !{!"_ZTSN5boost9intrusive9list_implINS0_8bhtraitsIN5folly17ExecutionObserverENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE14root_plus_sizeE", !66, i64 0}
!97 = !{!"_ZTSN5boost9intrusive9list_implINS0_8bhtraitsIN5folly17ExecutionObserverENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvE6data_tE", !96, i64 0}
!98 = !{!"_ZTSN5boost9intrusive9list_implINS0_8bhtraitsIN5folly17ExecutionObserverENS0_16list_node_traitsIPvEELNS0_14link_mode_typeE2ENS0_7dft_tagELj1EEEmLb0EvEE", !97, i64 0}
!99 = !{!"_ZTSN5boost9intrusive4listIN5folly17ExecutionObserverEJNS0_18constant_time_sizeILb0EEEEEE", !98, i64 0}
!100 = !{!"_ZTSN5folly8FunctionIFvRKNSt15__exception_ptr13exception_ptrENS_5RangeIPKcEEEEE", !13, i64 0, !20, i64 48, !20, i64 56}
!101 = !{!"_ZTSSt13__atomic_baseIPN5folly6fibers5FiberEE", !34, i64 0}
!102 = !{!"_ZTSSt6atomicIPN5folly6fibers5FiberEE", !101, i64 0}
!103 = !{!"_ZTSN5folly25AtomicIntrusiveLinkedListINS_6fibers5FiberEXadL_ZNS2_16nextRemoteReady_EEEEE", !102, i64 0}
!104 = !{!"p1 _ZTSN5folly6fibers12FiberManager10RemoteTaskE", !20, i64 0}
!105 = !{!"_ZTSSt13__atomic_baseIPN5folly6fibers12FiberManager10RemoteTaskEE", !104, i64 0}
!106 = !{!"_ZTSSt6atomicIPN5folly6fibers12FiberManager10RemoteTaskEE", !105, i64 0}
!107 = !{!"_ZTSN5folly25AtomicIntrusiveLinkedListINS_6fibers12FiberManager10RemoteTaskEXadL_ZNS3_14nextRemoteTaskEEEEE", !106, i64 0}
!108 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !20, i64 0}
!109 = !{!"_ZTSN5boost9intrusive11node_holderINS0_9list_nodeIPvEENS0_7dft_tagELj1EEE", !42, i64 0}
!110 = !{!"_ZTSN5boost9intrusive12generic_hookILNS0_10algo_typesE0ENS0_16list_node_traitsIPvEENS0_7dft_tagELNS0_14link_mode_typeE2ELNS0_14base_hook_typeE1EEE", !109, i64 0}
!111 = !{!"_ZTSN5boost9intrusive14list_base_hookIJNS0_9link_modeILNS0_14link_mode_typeE2EEEEEE", !110, i64 0}
!112 = !{!"p1 _ZTSN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEE", !20, i64 0}
!113 = !{!"_ZTSN5folly16HHWheelTimerBaseINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE8CallbackE", !111, i64 8, !112, i64 24, !33, i64 32, !14, i64 40, !30, i64 48}
!114 = !{!"_ZTSN5folly6fibers12FiberManager17FibersPoolResizerE", !113, i64 0, !21, i64 64}
!115 = !{!"_ZTSSt10type_index", !38, i64 0}
!116 = !{!"_ZTSN5folly6fibers12FiberManagerE", !65, i64 0, !34, i64 8, !34, i64 16, !70, i64 24, !71, i64 40, !70, i64 48, !75, i64 64, !77, i64 80, !77, i64 88, !77, i64 96, !22, i64 104, !22, i64 112, !83, i64 120, !18, i64 128, !92, i64 136, !93, i64 160, !77, i64 208, !94, i64 224, !24, i64 288, !95, i64 352, !99, i64 360, !100, i64 384, !103, i64 448, !107, i64 456, !22, i64 464, !22, i64 472, !108, i64 480, !114, i64 488, !18, i64 560, !115, i64 568, !18, i64 576}
!117 = !{i8 0, i8 2}
!118 = !{!116, !22, i64 160}
!119 = !{!45, !22, i64 16}
!120 = !{!45, !22, i64 24}
!121 = !{!45, !23, i64 32}
!122 = !{!24, !20, i64 48}
!123 = !{!24, !20, i64 56}
!124 = !{!25, !20, i64 0}
!125 = !{!25, !20, i64 80}
!126 = !{!13, !13, i64 0}
!127 = !{!20, !20, i64 0}
!128 = !{!45, !18, i64 1}
!129 = !{!22, !22, i64 0}
!130 = !{!14, !14, i64 0}
!131 = !{!108, !20, i64 0}
!132 = !{!45, !18, i64 2}
!133 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!134 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0}
!135 = !{!"_ZTSN6google13CheckOpStringE", !134, i64 0}
!136 = !{!135, !134, i64 0}
!137 = !{!"llvm.loop.mustprogress"}
!138 = !{!"p1 int", !20, i64 0}
!139 = !{!"p1 _ZTSN6google8SiteFlagE", !20, i64 0}
!140 = !{!"_ZTSN6google8SiteFlagE", !138, i64 0, !23, i64 8, !22, i64 16, !139, i64 24}
!141 = !{!140, !138, i64 0}
!142 = !{!116, !34, i64 8}
!143 = !{!25, !20, i64 88}
!144 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!146 = !{null, !145}
!147 = !DISubroutineType(types: !146)
!148 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !3, file: !144, line: 139, type: !147, scopeLine: 139, containingType: !3, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!149 = !DINamespace(name: "std", scope: null)
!150 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !3, file: !144, line: 143, type: !147, scopeLine: 143, containingType: !3, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!151 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !20, i64 0}
!152 = !{!"_ZTSN6google4base21CheckOpMessageBuilderE", !151, i64 0}
!153 = !{!152, !151, i64 0}
!154 = !{!17, !17, i64 0}
!155 = !{!"_ZTSZN5folly6fibers5Fiber7preemptENS1_5StateEE3$_0", !34, i64 0, !20, i64 8}
!156 = !{!155, !34, i64 0}
!157 = !{!40, !20, i64 168}
!158 = !{ptr @_ZN5folly6fibers5Fiber9LocalData5resetEv}
!159 = !{!38, !38, i64 0}
!160 = !{i64 0, i64 8, !159, i64 8, i64 8, !127, i64 16, i64 8, !127, i64 24, i64 8, !127, i64 32, i64 8, !127}
!161 = !{!40, !20, i64 152}
!162 = !{!40, !20, i64 136}
!163 = distinct !{null}
!164 = !{!116, !18, i64 128}
!165 = !{null, !56}
!166 = !DISubroutineType(types: !165)
!167 = !DISubprogram(name: "schedule", linkageName: "_ZN5folly6fibers14LoopController8scheduleEv", scope: !0, file: !54, line: 46, type: !166, scopeLine: 46, containingType: !0, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!168 = distinct !{ptr @_ZN5folly6fibers9FiberImplC2ENS_8FunctionIFvvEEEPhm, null, null}
!169 = !{!21, !21, i64 0}
!170 = distinct !{null, null}
!171 = !{!"_ZTSZN5folly6fibers5FiberC1ERNS0_12FiberManagerEE3$_0", !34, i64 0}
!172 = !{!171, !34, i64 0}
!173 = distinct !{null}
!174 = distinct !{!174, !137}
!175 = distinct !{!175, !137}
!176 = !{!100, !20, i64 48}
!177 = distinct !{null}
!178 = distinct !{!178, !181}
!179 = distinct !{!179, !137}
!180 = !{!"branch_weights", i32 4001, i32 1}
!181 = !{!"llvm.loop.unroll.disable"}
!182 = !{!45, !18, i64 3}
!183 = !{!34, !34, i64 0}
!184 = distinct !{null, null}
!185 = !{!"_ZTSZN5folly6fibers5Fiber4initEbE3$_0", !34, i64 0}
!186 = !{!185, !34, i64 0}
!187 = distinct !{null, null, null}
!188 = !{!28, !27, i64 0}
!189 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 8, !14, i64 12}
!190 = !{!189, !14, i64 8}
!191 = !{!189, !14, i64 12}
!192 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "function<void ()>", scope: !149, file: !287, line: 334, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt8functionIFvvEE")
!193 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "FunctionTraitsSharedProxy<void (), false, void>", scope: !289, file: !211, line: 296, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6detail8function25FunctionTraitsSharedProxyIFvvELb0EvJEEE")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CoerceTag", scope: !289, file: !211, line: 248, size: 8, flags: DIFlagTypePassByValue, elements: !48, identifier: "_ZTSN5folly6detail8function9CoerceTagE")
!195 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Function<void () const>", scope: !60, file: !211, line: 630, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly8FunctionIKFvvEEE")
!196 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Op", scope: !289, file: !211, line: 234, baseType: !290, size: 32, flags: DIFlagEnumClass, elements: !294, identifier: "_ZTSN5folly6detail8function2OpE")
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aligned_storage<48UL, 16UL>", scope: !288, file: !298, line: 652, size: 8, flags: DIFlagTypePassByValue, elements: !48, templateParams: !304, identifier: "_ZTSN5folly6detail15aligned_storageILm48ELm16EEE")
!198 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "byte", scope: !149, file: !310, line: 69, baseType: !311, size: 8, flags: DIFlagEnumClass, elements: !48, identifier: "_ZTSSt4byte")
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "type", scope: !197, file: !298, line: 653, size: 384, flags: DIFlagTypePassByValue, elements: !309, identifier: "_ZTSN5folly6detail15aligned_storageILm48ELm16EE4typeE")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BigTrivialLayout", scope: !201, file: !211, line: 237, size: 192, flags: DIFlagTypePassByValue, elements: !315, identifier: "_ZTSN5folly6detail8function4Data16BigTrivialLayoutE")
!201 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Data", scope: !289, file: !211, line: 236, size: 384, flags: DIFlagTypePassByValue, elements: !301, identifier: "_ZTSN5folly6detail8function4DataE")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FunctionTraits<void ()>", scope: !289, file: !211, line: 351, size: 8, flags: DIFlagTypePassByValue, elements: !323, templateParams: !327, identifier: "_ZTSN5folly6detail8function14FunctionTraitsIFvvEEE")
!203 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Function<void ()>", scope: !60, file: !211, line: 630, size: 512, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !286, templateParams: !327, identifier: "_ZTSN5folly8FunctionIFvvEEE")
!204 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "InlineFunctionRunner", scope: !61, file: !206, line: 61, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly6fibers20InlineFunctionRunnerE")
!205 = !{!116, !95, i64 352}
!206 = !DIFile(filename: "folly/fibers/FiberManagerInternal.h", directory: "/opt-bench/work/folly/folly", checksumkind: CSK_MD5, checksum: "2d2b367a151c27ac90fa58893877af51")
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!208 = !{null, !207, !203}
!209 = !DISubroutineType(types: !208)
!210 = !DISubprogram(name: "run", linkageName: "_ZN5folly6fibers20InlineFunctionRunner3runENS_8FunctionIFvvEEE", scope: !204, file: !206, line: 68, type: !209, scopeLine: 68, containingType: !204, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!211 = !DIFile(filename: "folly/Function.h", directory: "/opt-bench/work/folly/folly", checksumkind: CSK_MD5, checksum: "98295d376a0a0e12899624ed2210ad51")
!212 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !203, baseType: !202, extraData: i32 0)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "Data", scope: !203, file: !211, line: 634, baseType: !201)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "data_", scope: !203, file: !211, line: 646, baseType: !213, size: 384)
!215 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !201, size: 64)
!216 = !{null, !215}
!217 = !DISubroutineType(types: !216)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "Call", scope: !202, file: !211, line: 352, baseType: !218)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "Call", scope: !203, file: !211, line: 639, baseType: !219)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "call_", scope: !203, file: !211, line: 647, baseType: !220, size: 64, offset: 384)
!222 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13/bits/c++config.h", directory: "", checksumkind: CSK_MD5, checksum: "449d6dbeca4f3eea299d97c24eb9ed95")
!223 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !149, file: !222, line: 308, baseType: !223)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "Op", scope: !203, file: !211, line: 635, baseType: !196)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!227 = !{!224, !225, !226, !226}
!228 = !DISubroutineType(types: !227)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "Exec", scope: !203, file: !211, line: 640, baseType: !229)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "exec_", scope: !203, file: !211, line: 648, baseType: !230, size: 64, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!234 = !{!224, !233, !225, !226, !226}
!235 = !DISubroutineType(types: !234)
!236 = !DISubprogram(name: "exec", linkageName: "_ZNK5folly8FunctionIFvvEE4execENS_6detail8function2OpEPNS4_4DataES7_", scope: !203, file: !211, line: 650, type: !235, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!238 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !195, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "CoerceTag", scope: !203, file: !211, line: 636, baseType: !194)
!240 = !{null, !237, !238, !239}
!241 = !DISubroutineType(types: !240)
!242 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4EONS0_IKFvvEEENS_6detail8function9CoerceTagE", scope: !203, file: !211, line: 672, type: !241, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!243 = !{null, !237}
!244 = !DISubroutineType(types: !243)
!245 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4Ev", scope: !203, file: !211, line: 683, type: !244, scopeLine: 683, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !232, size: 64)
!247 = !{null, !237, !246}
!248 = !DISubroutineType(types: !247)
!249 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4ERKS2_", scope: !203, file: !211, line: 686, type: !248, scopeLine: 686, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!250 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !203, size: 64)
!251 = !{null, !237, !250}
!252 = !DISubroutineType(types: !251)
!253 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4EOS2_", scope: !203, file: !211, line: 699, type: !252, scopeLine: 699, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !149, file: !222, line: 312, baseType: !254)
!256 = !{null, !237, !255}
!257 = !DISubroutineType(types: !256)
!258 = !DISubprogram(name: "Function", linkageName: "_ZN5folly8FunctionIFvvEEC4EDn", scope: !203, file: !211, line: 709, type: !257, scopeLine: 709, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DISubprogram(name: "~Function", linkageName: "_ZN5folly8FunctionIFvvEED4Ev", scope: !203, file: !211, line: 798, type: !244, scopeLine: 798, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!260 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !203, size: 64)
!261 = !{!260, !237, !246}
!262 = !DISubroutineType(types: !261)
!263 = !DISubprogram(name: "operator=", linkageName: "_ZN5folly8FunctionIFvvEEaSERKS2_", scope: !203, file: !211, line: 800, type: !262, scopeLine: 800, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!264 = !{!260, !237, !250}
!265 = !DISubroutineType(types: !264)
!266 = !DISubprogram(name: "operator=", linkageName: "_ZN5folly8FunctionIFvvEEaSEOS2_", scope: !203, file: !211, line: 820, type: !265, scopeLine: 820, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !{!260, !237, !255}
!268 = !DISubroutineType(types: !267)
!269 = !DISubprogram(name: "operator=", linkageName: "_ZN5folly8FunctionIFvvEEaSEDn", scope: !203, file: !211, line: 873, type: !268, scopeLine: 873, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!270 = !{null, !237, !260}
!271 = !DISubroutineType(types: !270)
!272 = !DISubprogram(name: "swap", linkageName: "_ZN5folly8FunctionIFvvEE4swapERS2_", scope: !203, file: !211, line: 897, type: !271, scopeLine: 897, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !{!55, !233}
!274 = !DISubroutineType(types: !273)
!275 = !DISubprogram(name: "operator bool", linkageName: "_ZNK5folly8FunctionIFvvEEcvbEv", scope: !203, file: !211, line: 903, type: !274, scopeLine: 903, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!276 = !{!224, !233}
!277 = !DISubroutineType(types: !276)
!278 = !DISubprogram(name: "heapAllocatedMemory", linkageName: "_ZNK5folly8FunctionIFvvEE19heapAllocatedMemoryEv", scope: !203, file: !211, line: 910, type: !277, scopeLine: 910, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "SharedProxy", scope: !202, file: !211, line: 373, baseType: !193)
!280 = !{!279, !237}
!281 = !DISubroutineType(flags: DIFlagRValueReference, types: !280)
!282 = !DISubprogram(name: "asSharedProxy", linkageName: "_ZNO5folly8FunctionIFvvEE13asSharedProxyEv", scope: !203, file: !211, line: 920, type: !281, scopeLine: 920, flags: DIFlagPublic | DIFlagPrototyped | DIFlagRValueReference, spFlags: DISPFlagOptimized)
!283 = !{!192, !237}
!284 = !DISubroutineType(flags: DIFlagRValueReference, types: !283)
!285 = !DISubprogram(name: "asStdFunction", linkageName: "_ZNO5folly8FunctionIFvvEE13asStdFunctionEv", scope: !203, file: !211, line: 927, type: !284, scopeLine: 927, flags: DIFlagPublic | DIFlagPrototyped | DIFlagRValueReference, spFlags: DISPFlagOptimized)
!286 = !{!212, !214, !221, !231, !236, !242, !245, !249, !253, !258, !259, !263, !266, !269, !272, !275, !278, !282, !285}
!287 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/std_function.h", directory: "")
!288 = !DINamespace(name: "detail", scope: !60)
!289 = !DINamespace(name: "function", scope: !288)
!290 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!291 = !DIEnumerator(name: "MOVE", value: 0)
!292 = !DIEnumerator(name: "NUKE", value: 1)
!293 = !DIEnumerator(name: "HEAP", value: 2)
!294 = !{!291, !292, !293}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "big", scope: !201, file: !211, line: 243, baseType: !295, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "bigt", scope: !201, file: !211, line: 244, baseType: !200, size: 192)
!298 = !DIFile(filename: "folly/Traits.h", directory: "/opt-bench/work/folly/folly", checksumkind: CSK_MD5, checksum: "77cec74a2c7120078ff7cc1fa3bac842")
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "aligned_storage_t<6 * sizeof(void *)>", scope: !60, file: !298, line: 662, baseType: !199)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "tiny", scope: !201, file: !211, line: 245, baseType: !299, size: 384)
!301 = !{!296, !297, !300}
!302 = !DITemplateValueParameter(name: "Len", type: !223, value: i64 48)
!303 = !DITemplateValueParameter(name: "Align", type: !223, value: i64 16)
!304 = !{!302, !303}
!305 = !DISubrange(count: 48)
!306 = !{!305}
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 384, elements: !306)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !199, file: !298, line: 654, baseType: !307, size: 384, align: 128)
!309 = !{!308}
!310 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!311 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "big", scope: !200, file: !211, line: 238, baseType: !295, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !200, file: !211, line: 239, baseType: !224, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !200, file: !211, line: 240, baseType: !224, size: 64, offset: 128)
!315 = !{!312, !313, !314}
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!317 = !DIDerivedType(tag: DW_TAG_variable, name: "call", scope: !202, file: !211, line: 361, baseType: !316, flags: DIFlagStaticMember)
!318 = !DISubprogram(name: "uninitCall", linkageName: "_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE", scope: !202, file: !211, line: 364, type: !217, scopeLine: 364, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!320 = !{null, !319}
!321 = !DISubroutineType(types: !320)
!322 = !DISubprogram(name: "operator()", linkageName: "_ZN5folly6detail8function14FunctionTraitsIFvvEEclEv", scope: !202, file: !211, line: 368, type: !321, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!323 = !{!317, !317, !317, !317, !318, !322}
!324 = !{null}
!325 = !DISubroutineType(types: !324)
!326 = !DITemplateTypeParameter(name: "FunctionType", type: !325)
!327 = !{!326}
!328 = !{!155, !20, i64 8}
!329 = !{!116, !22, i64 472}
!330 = !{!138, !138, i64 0}
!331 = !{!32, !22, i64 0}
!332 = !{!"_ZTSSt17reference_wrapperIZN5folly6fibers5Fiber7preemptENS2_5StateEE3$_0E", !20, i64 0}
!333 = !{!332, !20, i64 0}
!334 = !{!"_ZTSN5folly6detail36OptionalStorageTriviallyDestructibleINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEE", !13, i64 0, !18, i64 8}
!335 = !{!"_ZTSN5folly6detail15OptionalStorageINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEE", !334, i64 0}
!336 = !{!335, !18, i64 8}
!337 = !{!334, !18, i64 8}
!338 = !{ptr @_ZN5folly6fibers5Fiber9LocalDataaSERKS2_}
end_hunk_0
