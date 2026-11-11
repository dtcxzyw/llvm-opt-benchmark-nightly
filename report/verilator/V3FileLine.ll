Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3FileLine?download=true
inline.NumInlined: 1804
inline.NumDeleted: 617
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm:bb.a
  %i.e = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.f = shl nuw nsw i64 %.sroa.speculated, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !186
  %i.h = load i64, ptr %i.c, align 8, !tbaa !188
  %i.i = sub i64 %i.h, %i.e
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.j ; 6 uses
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.n, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i ], [ %i.k, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.m = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #28
          to label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i unwind label %bb.b

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.m, ptr %.011.i, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.o = icmp ult ptr %i.n, %i.l
  br i1 %i.o, label %.lr.ph.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_create_nodesEPPS5_S9_.exit, !llvm.loop !557

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #24 ; 0 uses
  %i.s = icmp ult ptr %i.k, %.011.i
  br i1 %i.s, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %.06.i.i, align 8, !tbaa !108
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef 512) #26
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.v = icmp ult ptr %i.u, %.011.i
  br i1 %i.v, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i, !llvm.loop !3

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i: ; preds = %.lr.ph.i.i, %bb.b
  invoke void @__cxa_rethrow() #25
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #29
  unreachable

bb.e:                                             ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i
  unreachable

.body:                                            ; preds = %bb.c
  %i.z = extractvalue { ptr, i32 } %i.w, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #24 ; 0 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !186
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !188
  %i.ad = shl i64 %i.ac, 3
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ad) #26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #25
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ae

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_create_nodesEPPS5_S9_.exit: ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %i.ag, align 8, !tbaa !31
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !108 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 512
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.am, ptr %i.an, align 8, !tbaa !31
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !108 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 512
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !34
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !558
  %i.as = and i64 %1, 15
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %i.as
  store ptr %i.at, ptr %i.al, align 8, !tbaa !40
  ret void

bb.h:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #29
  unreachable

bb.i:                                             ; preds = %.body
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17FileLineSingleton12numberToNameB5cxx11Et(ptr noundef nonnull align 8 dereferenceable(336) %0, i16 noundef zeroext %1) #2 comdat align 2 {
bb.a:
  %i.a = zext i16 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32, !noalias !561 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33, !noalias !561
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31, !noalias !561
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 5
  %i.l = add nsw i64 %i.k, %i.a                   ; 5 uses
  %i.m = icmp sgt i64 %i.l, -1
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = icmp samesign ult i64 %i.l, 16
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.a
  br label %_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit

bb.d:                                             ; preds = %bb.b
  %i.p = lshr i64 %i.l, 4
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.q = ashr i64 %i.l, 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi i64 [ %i.p, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !108, !noalias !561
  %i.u = shl nsw i64 %i.r, 4
  %i.v = sub nsw i64 %i.l, %i.u
  %i.w = getelementptr inbounds [32 x i8], ptr %i.t, i64 %i.v
  br label %_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit

_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit: ; preds = %bb.c, %bb.f
  %storemerge.i.i.i.i = phi ptr [ %i.w, %bb.f ], [ %i.o, %bb.c ]
  ret ptr %storemerge.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8FileLine10filenamenoEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !161
  %i.c = zext i16 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN11V3ErrorCodeC2EPKc(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8FileLineC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.FileLineSingleton::MsgEnBitSet", align 8 ; 6 uses
  %2 = alloca %class.V3ErrorCode, align 1         ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load atomic i8, ptr @_ZGVZN8FileLine9singletonEvE1s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN8FileLine9singletonEv.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #24
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8FileLine9singletonEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN17FileLineSingletonC2Ev(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN17FileLineSingletonD2Ev, ptr nonnull @_ZZN8FileLine9singletonEvE1s, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #24
  br label %_ZN8FileLine9singletonEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.l, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.y, %bb.l ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #24
  br label %common.resume

_ZN8FileLine9singletonEv.exit:                    ; preds = %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.f

bb.f:                                             ; preds = %_ZN17FileLineSingleton11MsgEnBitSet3setENS0_6SubsetE11V3ErrorCodeb.exit.i, %_ZN8FileLine9singletonEv.exit
  %indvars.iv.i = phi i64 [ 0, %_ZN8FileLine9singletonEv.exit ], [ %indvars.iv.next.i, %_ZN17FileLineSingleton11MsgEnBitSet3setENS0_6SubsetE11V3ErrorCodeb.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.g = trunc i64 %indvars.iv.i to i8
  store i8 %i.g, ptr %2, align 1, !tbaa !91
  %4 = call noundef zeroext i1 @_ZNK11V3ErrorCode11defaultsOffEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  %i.h = lshr i64 %indvars.iv.i, 6
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.h ; 3 uses
  %i.j = and i64 %indvars.iv.i, 63
  %i.k = shl nuw i64 1, %i.j                      ; 2 uses
  br i1 %4, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i64, ptr %i.i, align 8, !tbaa !22
  %i.m = or i64 %i.l, %i.k
  br label %_ZN17FileLineSingleton11MsgEnBitSet3setENS0_6SubsetE11V3ErrorCodeb.exit.i

bb.h:                                             ; preds = %bb.f
  %i.n = xor i64 %i.k, -1
  %i.o = load i64, ptr %i.i, align 8, !tbaa !22
  %i.p = and i64 %i.o, %i.n
  br label %_ZN17FileLineSingleton11MsgEnBitSet3setENS0_6SubsetE11V3ErrorCodeb.exit.i

_ZN17FileLineSingleton11MsgEnBitSet3setENS0_6SubsetE11V3ErrorCodeb.exit.i: ; preds = %bb.h, %bb.g
  %storemerge.i.i.i = phi i64 [ %i.p, %bb.h ], [ %i.m, %bb.g ]
  store i64 %storemerge.i.i.i, ptr %i.i, align 8, !tbaa !22
  %.sroa.0.0.copyload.i = load i8, ptr %2, align 1, !tbaa !92
  %5 = zext i8 %.sroa.0.0.copyload.i to i64       ; 2 uses
  %6 = lshr i64 %5, 6
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %6 ; 2 uses
  %i.q = and i64 %5, 63
  %8 = shl nuw i64 1, %i.q
  %i.r = load i64, ptr %7, align 8, !tbaa !22
  %i.s = or i64 %8, %i.r
  store i64 %i.s, ptr %7, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 146
  br i1 %exitcond.not.i, label %_ZN17FileLineSingleton17defaultMsgEnIndexEv.exit, label %bb.f, !llvm.loop !2

_ZN17FileLineSingleton17defaultMsgEnIndexEv.exit: ; preds = %_ZN17FileLineSingleton11MsgEnBitSet3setENS0_6SubsetE11V3ErrorCodeb.exit.i
  %i.t = call noundef zeroext i16 @_ZN17FileLineSingleton14addMsgEnBitSetERKNS_11MsgEnBitSetE(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s, ptr noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  store i16 %i.t, ptr %0, align 8, !tbaa !185
  %i.u = load atomic i8, ptr @_ZGVZN8FileLine9singletonEvE1s acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.i, label %_ZN8FileLine9singletonEv.exit3, !prof !47

bb.i:                                             ; preds = %_ZN17FileLineSingleton17defaultMsgEnIndexEv.exit
  %i.w = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #24
  %.not.i2 = icmp eq i32 %i.w, 0
  br i1 %.not.i2, label %_ZN8FileLine9singletonEv.exit3, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN17FileLineSingletonC2Ev(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = call i32 @__cxa_atexit(ptr nonnull @_ZN17FileLineSingletonD2Ev, ptr nonnull @_ZZN8FileLine9singletonEvE1s, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #24
  br label %_ZN8FileLine9singletonEv.exit3

bb.l:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #24
  br label %common.resume

_ZN8FileLine9singletonEv.exit3:                   ; preds = %_ZN17FileLineSingleton17defaultMsgEnIndexEv.exit, %bb.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !20, !alias.scope !564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.z, ptr noundef nonnull align 1 dereferenceable(10) @.str.59, i64 10, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 10, ptr %i.aa, align 8, !tbaa !25, !alias.scope !564
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 0, ptr %i.ab, align 2, !tbaa !15, !alias.scope !564
  %i.ac = invoke noundef zeroext i16 @_ZN17FileLineSingleton12nameToNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZN8FileLine9singletonEv.exit3
  %i.ad = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.z
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.af = load i64, ptr %i.z, align 8, !tbaa !15
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  store i16 %i.ac, ptr %i.ah, align 2, !tbaa !161
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.aj, align 8, !tbaa !183
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !159
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = and i64 %i.am, -72057589759737856
  store i64 %i.an, ptr %i.al, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 0, ptr %i.ao, align 8, !tbaa !160
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  ret void

bb.n:                                             ; preds = %_ZN8FileLine9singletonEv.exit3
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.z
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.n
  %i.at = load i64, ptr %i.z, align 8, !tbaa !15
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8FileLine15builtInFilenameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.59, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 10, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !15
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %0, ptr nonnull @.str.13, ptr nonnull @.str.46, i32 460, ptr null)
  store i8 0, ptr %i.a, align 8, !tbaa !565
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.b, ptr nonnull @.str.13, ptr nonnull @.str.46, i32 461, ptr null)
  store i8 0, ptr %i.c, align 1, !tbaa !566
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.d, ptr nonnull @.str.13, ptr nonnull @.str.46, i32 462, ptr null) ; 2 uses
  tail call void @_ZN13VErrorMessageC2Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.f, ptr nonnull @.str.13, ptr nonnull @.str.46, i32 463, ptr null)
  store i8 0, ptr %i.g, align 8, !tbaa !567
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.h, ptr nonnull @.str.13, ptr nonnull @.str.46, i32 465, ptr null) ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store i32 0, ptr %i.j, align 8, !tbaa !196
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %i.k, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.j, ptr %i.l, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.j, ptr %i.m, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 0, ptr %i.n, align 8, !tbaa !198
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.p = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.o, ptr nonnull @.str.13, ptr nonnull @.str.46, i32 466, ptr null)
  store ptr null, ptr %i.p, align 8, !tbaa !568
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.r = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.q, ptr nonnull @.str.13, ptr nonnull @.str.46, i32 468, ptr null)
  store i8 0, ptr %i.r, align 8, !tbaa !182
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.t = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.s, ptr nonnull @.str.13, ptr nonnull @.str.46, i32 469, ptr null)
  store i32 0, ptr %i.t, align 4, !tbaa !569
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.v = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.u, ptr nonnull @.str.13, ptr nonnull @.str.46, i32 470, ptr null)
  store i32 0, ptr %i.v, align 8, !tbaa !570
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.x = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.w, ptr nonnull @.str.13, ptr nonnull @.str.46, i32 472, ptr null)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.z = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.y, ptr nonnull @.str.13, ptr nonnull @.str.46, i32 474, ptr null)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ab = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.aa, ptr nonnull @.str.13, ptr nonnull @.str.46, i32 476, ptr null)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 0, ptr %i.ac, align 8, !tbaa !571
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ae = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.ad, ptr nonnull @.str.13, ptr nonnull @.str.46, i32 478, ptr null)
  store i32 50, ptr %i.ae, align 4, !tbaa !572
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ag = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.af, ptr nonnull @.str.13, ptr nonnull @.str.46, i32 480, ptr null)
  store i8 1, ptr %i.ag, align 8, !tbaa !573
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ai = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.ah, ptr nonnull @.str.13, ptr nonnull @.str.46, i32 481, ptr null)
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.ai)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 680
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i8 0, i64 40, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i32 1, ptr %i.ak, align 8, !tbaa !577
  ret void

bb.c:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.i) #24
  tail call void @_ZN13VErrorMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.e) #24
  resume { ptr, i32 } %i.al
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14V3ErrorGuardedD2Ev(ptr noundef nonnull align 8 dead_on_return(720) dereferenceable(720) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.a, ptr nonnull @.str.13, ptr nonnull @.str.46, i32 481, ptr null) ; 7 uses
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !54
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.m = load i64, ptr %i.k, align 8, !tbaa !15
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #24
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.p) #24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.q, ptr nonnull @.str.13, ptr nonnull @.str.46, i32 465, ptr null) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.w, ptr nonnull @.str.13, ptr nonnull @.str.46, i32 462, ptr null) ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !199  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !200 ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !201 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = icmp ult ptr %i.ac, %i.ae
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %i.ac, %bb.c ] ; 3 uses
  %i.ag = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !202
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef 512) #26
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ai = icmp ult ptr %.06.i.i.i.i, %i.ad
  br i1 %i.ai, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i, !llvm.loop !4

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !199
  br label %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i

_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i, %bb.c
  %i.aj = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i ], [ %i.z, %bb.c ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !203
  %i.am = shl i64 %i.al, 3
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #26
  br label %_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit.i

_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit.i:       ; preds = %_ZNSt11_Deque_baseIPK8FileLineSaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZN13VErrorMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !15
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #26
  br label %_ZN13VErrorMessageD2Ev.exit

_ZN13VErrorMessageD2Ev.exit:                      ; preds = %_ZNSt5dequeIPK8FileLineSaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

end_hunk_0
