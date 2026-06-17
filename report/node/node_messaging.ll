inline.NumInlined: 4628
inline.NumDeleted: 2061
begin_hunk_0_@_ZN4node6worker11MessagePort14ReceiveMessageEN2v85LocalINS2_7ContextEEENS1_21MessageProcessingModeEPNS3_INS2_5ValueEEE:bb.a
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZNK4node11Environment16can_call_into_jsEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK4node11Environment16can_call_into_jsEv.exit
  %i.bo = load ptr, ptr %i.f, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 176
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call ptr @_ZN4node6worker7Message11DeserializeEPNS_11EnvironmentEN2v85LocalINS4_7ContextEEEPNS5_INS4_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(136) %.pre, ptr noundef %i.bq, ptr %1, ptr noundef %3)
  br label %_ZNK4node11Environment16can_call_into_jsEv.exit.thread

_ZNK4node11Environment16can_call_into_jsEv.exit.thread: ; preds = %bb.j, %_ZNK4node11Environment16can_call_into_jsEv.exit, %bb.k, %bb.i
  %.sroa.013.0 = phi ptr [ null, %_ZNK4node11Environment16can_call_into_jsEv.exit ], [ %i.be, %bb.i ], [ %i.br, %bb.k ], [ null, %bb.j ] ; 4 uses
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN4node6worker7MessageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK4node11Environment16can_call_into_jsEv.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 4294967297
  %i.bv = trunc i64 %i.bt to i32                  ; 2 uses
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bs, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.bw, align 4
  %i.bx = load ptr, ptr %i.ak, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #29, !inline_history !150
  %i.ca = load ptr, ptr %i.ak, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #29, !inline_history !150
  br label %_ZNSt12__shared_ptrIN4node6worker7MessageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.cd = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i7 = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i7, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.cf = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.bv, %bb.o ], [ %i.cf, %bb.p ]
  %i.cg = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cg, label %bb.q, label %_ZNSt12__shared_ptrIN4node6worker7MessageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #29
  br label %_ZNSt12__shared_ptrIN4node6worker7MessageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node6worker7MessageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.thread, %_ZNK4node11Environment16can_call_into_jsEv.exit.thread, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.q
  %.sroa.013.019 = phi ptr [ %i.ai, %.thread ], [ %.sroa.013.0, %_ZNK4node11Environment16can_call_into_jsEv.exit.thread ], [ %.sroa.013.0, %bb.m ], [ %.sroa.013.0, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %.sroa.013.0, %bb.q ]
  ret ptr %.sroa.013.019
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeISt10shared_ptrIN4node6worker7MessageEESaIS4_EE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  %.not = icmp eq ptr %i.b, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 15 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.g, null         ; 2 uses
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i.i1, label %_ZSt10destroy_atISt10shared_ptrIN4node6worker7MessageEEEvPT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4
  %i.m = load ptr, ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #29, !inline_history !167
  %i.p = load ptr, ptr %i.g, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #29, !inline_history !167
  br label %_ZSt10destroy_atISt10shared_ptrIN4node6worker7MessageEEEvPT_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZSt10destroy_atISt10shared_ptrIN4node6worker7MessageEEEvPT_.exit, !prof !5

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #29
  br label %_ZSt10destroy_atISt10shared_ptrIN4node6worker7MessageEEEvPT_.exit

_ZSt10destroy_atISt10shared_ptrIN4node6worker7MessageEEEvPT_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  %i.w = load ptr, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  br label %bb.p

bb.i:                                             ; preds = %bb.a
  br i1 %.not.i.i.i.i1, label %_ZNSt5dequeISt10shared_ptrIN4node6worker7MessageEESaIS4_EE16_M_pop_front_auxEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.y, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.ac, align 4
  %i.ad = load ptr, ptr %i.g, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #29, !inline_history !168
  %i.ag = load ptr, ptr %i.g, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #29, !inline_history !168
  br label %_ZNSt5dequeISt10shared_ptrIN4node6worker7MessageEESaIS4_EE16_M_pop_front_auxEv.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.m ], [ %i.al, %bb.n ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.o, label %_ZNSt5dequeISt10shared_ptrIN4node6worker7MessageEESaIS4_EE16_M_pop_front_auxEv.exit, !prof !5

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #29
  br label %_ZNSt5dequeISt10shared_ptrIN4node6worker7MessageEESaIS4_EE16_M_pop_front_auxEv.exit

_ZNSt5dequeISt10shared_ptrIN4node6worker7MessageEESaIS4_EE16_M_pop_front_auxEv.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef 512) #32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.ap, align 8
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  store ptr %i.as, ptr %i.an, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  store ptr %i.at, ptr %i.c, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt5dequeISt10shared_ptrIN4node6worker7MessageEESaIS4_EE16_M_pop_front_auxEv.exit, %_ZSt10destroy_atISt10shared_ptrIN4node6worker7MessageEEEvPT_.exit
  %storemerge = phi ptr [ %i.x, %_ZSt10destroy_atISt10shared_ptrIN4node6worker7MessageEEEvPT_.exit ], [ %i.as, %_ZNSt5dequeISt10shared_ptrIN4node6worker7MessageEESaIS4_EE16_M_pop_front_auxEv.exit ]
  store ptr %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6worker11MessagePort9OnMessageENS1_21MessageProcessingModeE(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::HandleScope", align 8   ; 7 uses
  %3 = alloca %"class.v8::HandleScope", align 8   ; 12 uses
  %4 = alloca %"class.v8::Local.36", align 8      ; 6 uses
  %5 = alloca [3 x %"class.v8::Local.36"], align 16 ; 10 uses
  %6 = alloca %"class.node::errors::TryCatchScope", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2512
  %i.h = zext i32 %i.b to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !range !26, !noundef !46
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit22

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node27UnconditionalAsyncWrapDebugIJEEEvPNS_9AsyncWrapEPKcDpOT_(ptr noundef nonnull %0, ptr noundef nonnull @.str.44) #34
  br label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit22

_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit22: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = add i32 %i.o, -1
  %spec.select.i.i = icmp ult i32 %i.p, 2
  %i.q = select i1 %.not.i.i, i1 true, i1 %spec.select.i.i
  br i1 %i.q, label %bb.z, label %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i.i

_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i.i: ; preds = %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = add i64 %i.w, 560
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  store ptr %i.v, ptr %2, align 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 8
  %i.ah = load ptr, ptr %i.c, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 176
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 200
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !46, !noundef !46 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 11
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = and i8 %i.ap, 3
  %i.ar = icmp eq i8 %i.aq, 2
  br i1 %i.ar, label %bb.c, label %_ZNK4node10BaseObject6objectEPN2v87IsolateE.exit

bb.c:                                             ; preds = %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i.i
  %i.as = load i64, ptr %i.an, align 8
  %i.at = ptrtoint ptr %i.al to i64
  %i.au = add i64 %i.at, 560
  %i.av = inttoptr i64 %i.au to ptr               ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.d, label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.ba = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.al) #29
  br label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i

_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i = phi ptr [ %i.ba, %bb.d ], [ %i.aw, %bb.c ] ; 3 uses
  %i.bb = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.bc = add i64 %i.bb, 8
  %i.bd = inttoptr i64 %i.bc to ptr
  store ptr %i.bd, ptr %i.av, align 8
  store i64 %i.as, ptr %.0.i.i.i.i.i, align 8
  br label %_ZNK4node10BaseObject6objectEPN2v87IsolateE.exit

_ZNK4node10BaseObject6objectEPN2v87IsolateE.exit: ; preds = %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i
  %.sroa.0.0.i.i.i = phi ptr [ %.0.i.i.i.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i ], [ %i.an, %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i.i ]
  %i.be = tail call ptr @_ZN2v86Object25GetCreationContextCheckedEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.i.i.i) #29 ; 4 uses
  %i.bf = icmp eq i32 %1, 0
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4node10BaseObject6objectEPN2v87IsolateE.exit
  %i.bg = load ptr, ptr %i.l, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  tail call void @uv_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bh) #29
  %i.bi = load ptr, ptr %i.l, align 8             ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 120
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 88
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3
  %i.bt = icmp ne ptr %i.bm, null
  %.neg.i.i = sext i1 %i.bt to i64
  %i.bu = add nsw i64 %i.bs, %.neg.i.i
  %i.bv = shl nsw i64 %i.bu, 5
  %i.bw = load ptr, ptr %i.bj, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 4
  %i.cd = add nsw i64 %i.bv, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = load ptr, ptr %i.bk, align 8
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 4
  %i.cl = add nsw i64 %i.cd, %i.ck
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 1000)
  tail call void @uv_mutex_unlock(ptr noundef nonnull %i.bh) #29
  %i.cm = add i64 %.sroa.speculated, -1
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4node10BaseObject6objectEPN2v87IsolateE.exit, %bb.e
  %.0 = phi i64 [ %i.cm, %bb.e ], [ -2, %_ZNK4node10BaseObject6objectEPN2v87IsolateE.exit ]
  %i.cn = load ptr, ptr %i.l, align 8
  %.not66 = icmp eq ptr %i.cn, null
  br i1 %.not66, label %_ZN4node6worker11MessagePort12TriggerAsyncEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  br label %bb.k

bb.g:                                             ; preds = %.backedge
  %i.cw = add i64 %i.dc, -1
  %i.cx = icmp eq i64 %i.dc, 0
  br i1 %i.cx, label %bb.h, label %bb.k, !llvm.loop !169

bb.h:                                             ; preds = %bb.g
  %i.cy = load i32, ptr %i.n, align 8
  %i.cz = add i32 %i.cy, -1
  %spec.select.i.i24 = icmp ult i32 %i.cz, 2
  br i1 %spec.select.i.i24, label %_ZN4node6worker11MessagePort12TriggerAsyncEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.da = call i32 @uv_async_send(ptr noundef nonnull %i.cv) #29
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %_ZN4node6worker11MessagePort12TriggerAsyncEv.exit, label %bb.j, !prof !29

bb.j:                                             ; preds = %bb.i
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6worker11MessagePort12TriggerAsyncEvE20error_and_abort_args) #29
  call void @abort() #30
  unreachable

bb.k:                                             ; preds = %.lr.ph, %bb.g
  %i.dc = phi i64 [ %.0, %.lr.ph ], [ %i.cw, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.dd = load ptr, ptr %i.c, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 176
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 200
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = add i64 %i.di, 560
  %i.dk = inttoptr i64 %i.dj to ptr               ; 3 uses
  store ptr %i.dh, ptr %3, align 8
  %i.dl = load ptr, ptr %i.dk, align 8
  store ptr %i.dl, ptr %i.co, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  store ptr %i.dn, ptr %i.cp, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr %i.do, align 8
  call void @_ZN2v87Context5EnterEv(ptr noundef nonnull align 1 dereferenceable(1) %i.be) #29
  %.sroa.0.0.copyload.i = load ptr, ptr %i.cq, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.dr = load ptr, ptr %i.c, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 176
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 200
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = add i64 %i.dw, 648
  store i64 %i.dx, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZN2v88TryCatchC2EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef %i.dv) #29
  store ptr %i.dt, ptr %i.cr, align 8
  store i32 0, ptr %i.cs, align 8
  %i.dy = call ptr @_ZN4node6worker11MessagePort14ReceiveMessageEN2v85LocalINS2_7ContextEEENS1_21MessageProcessingModeEPNS3_INS2_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr nonnull %i.be, i32 noundef %1, ptr noundef nonnull %4) ; 3 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %.not64 = icmp eq ptr %i.dy, null
  br i1 %.not64, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ea = call noundef zeroext i1 @_ZNK2v88TryCatch9HasCaughtEv(ptr noundef nonnull align 8 dereferenceable(41) %6) #29
  br i1 %i.ea, label %bb.m, label %.thread62

bb.m:                                             ; preds = %bb.l
  %i.eb = call noundef zeroext i1 @_ZNK2v88TryCatch13HasTerminatedEv(ptr noundef nonnull align 8 dereferenceable(41) %6) #29
  br i1 %i.eb, label %.thread62, label %bb.q

bb.n:                                             ; preds = %bb.k
  call void @_ZN4node6errors13TryCatchScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(60) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.ec = load ptr, ptr %i.c, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 176
  %i.ee = load ptr, ptr %i.ed, align 8            ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 216
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 264
  %i.ei = load ptr, ptr %i.eh, align 8            ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_5ValueEEENS3_INS_6SymbolEEEEEbRKT_RKT0_.exit.thread, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_5ValueEEENS3_INS_6SymbolEEEEEbRKT_RKT0_.exit

_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_5ValueEEENS3_INS_6SymbolEEEEEbRKT_RKT0_.exit: ; preds = %bb.n
  %i.ek = load i64, ptr %i.dy, align 8
  %i.el = load i64, ptr %i.ei, align 8
  %i.em = icmp eq i64 %i.ek, %i.el
  br i1 %i.em, label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit.jt1, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_5ValueEEENS3_INS_6SymbolEEEEEbRKT_RKT0_.exit.thread

_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_5ValueEEENS3_INS_6SymbolEEEEEbRKT_RKT0_.exit.thread: ; preds = %bb.n, %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_5ValueEEENS3_INS_6SymbolEEEEEbRKT_RKT0_.exit
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 1001
  %i.eo = load atomic i8, ptr %i.en seq_cst, align 1, !range !26, !noundef !46
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %_ZNK4node11Environment16can_call_into_jsEv.exit, label %_ZNK4node11Environment16can_call_into_jsEv.exit.thread

_ZNK4node11Environment16can_call_into_jsEv.exit:  ; preds = %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_5ValueEEENS3_INS_6SymbolEEEEEbRKT_RKT0_.exit.thread
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 1000
  %i.er = load atomic i8, ptr %i.eq seq_cst, align 8, !range !26, !noundef !46
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %_ZNK4node11Environment16can_call_into_jsEv.exit.thread, label %bb.p

_ZNK4node11Environment16can_call_into_jsEv.exit.thread: ; preds = %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_5ValueEEENS3_INS_6SymbolEEEEEbRKT_RKT0_.exit.thread, %_ZNK4node11Environment16can_call_into_jsEv.exit
  %i.et = load i32, ptr %i.a, align 8
  %i.eu = load ptr, ptr %i.c, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 176
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 2512
  %i.ey = zext i32 %i.et to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !range !26, !noundef !46
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.o, label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit, !llvm.loop !169

bb.o:                                             ; preds = %_ZNK4node11Environment16can_call_into_jsEv.exit.thread
  call void @_ZN4node27UnconditionalAsyncWrapDebugIJEEEvPNS_9AsyncWrapEPKcDpOT_(ptr noundef nonnull %0, ptr noundef nonnull @.str.45) #34
  br label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit, !llvm.loop !169

bb.p:                                             ; preds = %_ZNK4node11Environment16can_call_into_jsEv.exit
  store i64 %i.dz, ptr %5, align 16
  %i.fc = load i64, ptr %4, align 8
  store i64 %i.fc, ptr %i.ct, align 8
  %i.fd = load ptr, ptr %i.c, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 176
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 216
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1792
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = ptrtoint ptr %i.fj to i64
  store i64 %i.fk, ptr %i.cu, align 16
  %i.fl = call ptr @_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_8FunctionEEEiPNS2_INS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %.sroa.0.0.copyload.i, i32 noundef 3, ptr noundef nonnull %5) #29
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %.thread59, label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit

.thread62:                                        ; preds = %bb.l, %bb.m
  call void @_ZN4node6errors13TryCatchScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(60) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %.thread59

bb.q:                                             ; preds = %bb.m
  %i.fn = call ptr @_ZNK2v88TryCatch9ExceptionEv(ptr noundef nonnull align 8 dereferenceable(41) %6) #29 ; 2 uses
  call void @_ZN4node6errors13TryCatchScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(60) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %.thread59, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fp = ptrtoint ptr %i.fn to i64
  store i64 %i.fp, ptr %5, align 16
  %i.fq = load ptr, ptr %i.c, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 176
  %i.fs = load ptr, ptr %i.fr, align 8            ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 200
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = add i64 %i.fv, 648
  store i64 %i.fw, ptr %i.ct, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 216
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 1800
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = ptrtoint ptr %i.ga to i64
  store i64 %i.gb, ptr %i.cu, align 16
  %i.gc = call ptr @_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_8FunctionEEEiPNS2_INS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %.sroa.0.0.copyload.i, i32 noundef 3, ptr noundef nonnull %5) #29 ; 0 uses
  br label %.thread59

.thread59:                                        ; preds = %bb.p, %.thread62, %bb.r, %bb.q
  %i.gd = load ptr, ptr %i.l, align 8
  %.not65 = icmp eq ptr %i.gd, null
  br i1 %.not65, label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit.jt1, label %bb.s

bb.s:                                             ; preds = %.thread59
  %i.ge = load i32, ptr %i.n, align 8
  %i.gf = add i32 %i.ge, -1
  %spec.select.i.i25 = icmp ult i32 %i.gf, 2
  br i1 %spec.select.i.i25, label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit.jt1, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gg = call i32 @uv_async_send(ptr noundef nonnull %i.cv) #29
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit.jt1, label %bb.u, !prof !29

bb.u:                                             ; preds = %bb.t
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6worker11MessagePort12TriggerAsyncEvE20error_and_abort_args) #29
  call void @abort() #30
  unreachable

_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit.jt1: ; preds = %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_5ValueEEENS3_INS_6SymbolEEEEEbRKT_RKT0_.exit, %bb.t, %bb.s, %.thread59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZN2v87Context4ExitEv(ptr noundef nonnull align 1 dereferenceable(1) %i.be) #29
  %7 = load ptr, ptr %3, align 8                  ; 2 uses
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_ZN2v811HandleScopeD2Ev.exit20, label %9, !prof !5

_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit: ; preds = %_ZNK4node11Environment16can_call_into_jsEv.exit.thread, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZN2v87Context4ExitEv(ptr noundef nonnull align 1 dereferenceable(1) %i.be) #29
  %i.gi = load ptr, ptr %3, align 8               ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %.backedge, label %bb.v, !prof !5

9:                                                ; preds = %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit.jt1
  %10 = ptrtoint ptr %7 to i64
  %11 = add i64 %10, 560
  %12 = inttoptr i64 %11 to ptr                   ; 4 uses
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %i.co, align 8
  store ptr %14, ptr %12, align 8
  store ptr %13, ptr %i.co, align 8
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %16 = load i32, ptr %15, align 8
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr %15, align 8
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %i.cp, align 8              ; 2 uses
  %.not.i19.jt1 = icmp eq ptr %19, %20
  br i1 %.not.i19.jt1, label %_ZN2v811HandleScopeD2Ev.exit20, label %21, !prof !29

bb.v:                                             ; preds = %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = add i64 %i.gk, 560
  %i.gm = inttoptr i64 %i.gl to ptr               ; 4 uses
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = load ptr, ptr %i.co, align 8
  store ptr %i.go, ptr %i.gm, align 8
  store ptr %i.gn, ptr %i.co, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8
  %i.gr = add nsw i32 %i.gq, -1
  store i32 %i.gr, ptr %i.gp, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not.i19 = icmp eq ptr %i.gt, %i.gu
  br i1 %.not.i19, label %.backedge, label %bb.w, !prof !29

21:                                               ; preds = %9
  store ptr %20, ptr %18, align 8
  %22 = load ptr, ptr %3, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %22) #29
  br label %_ZN2v811HandleScopeD2Ev.exit20

bb.w:                                             ; preds = %bb.v
  store ptr %i.gu, ptr %i.gs, align 8
  %i.gv = load ptr, ptr %3, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.gv) #29
  br label %.backedge

_ZN2v811HandleScopeD2Ev.exit20:                   ; preds = %21, %9, %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZN4node6worker11MessagePort12TriggerAsyncEv.exit

.backedge:                                        ; preds = %bb.w, %bb.v, %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.gw = load ptr, ptr %i.l, align 8
  %.not = icmp eq ptr %i.gw, null
  br i1 %.not, label %_ZN4node6worker11MessagePort12TriggerAsyncEv.exit, label %bb.g, !llvm.loop !169

_ZN4node6worker11MessagePort12TriggerAsyncEv.exit: ; preds = %.backedge, %_ZN2v811HandleScopeD2Ev.exit20, %bb.f, %bb.i, %bb.h
  %i.gx = load ptr, ptr %2, align 8               ; 3 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.x, !prof !5

bb.x:                                             ; preds = %_ZN4node6worker11MessagePort12TriggerAsyncEv.exit
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = add i64 %i.gz, 560
  %i.hb = inttoptr i64 %i.ha to ptr               ; 4 uses
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = load ptr, ptr %i.aa, align 8
  store ptr %i.hd, ptr %i.hb, align 8
  store ptr %i.hc, ptr %i.aa, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8
  %i.hg = add nsw i32 %i.hf, -1
  store i32 %i.hg, ptr %i.he, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.hi, %i.hj
  br i1 %.not.i, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.y, !prof !29

bb.y:                                             ; preds = %bb.x
  store ptr %i.hj, ptr %i.hh, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.gx) #29
  br label %_ZN2v811HandleScopeD2Ev.exit

_ZN2v811HandleScopeD2Ev.exit:                     ; preds = %_ZN4node6worker11MessagePort12TriggerAsyncEv.exit, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.z

bb.z:                                             ; preds = %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit22, %_ZN2v811HandleScopeD2Ev.exit
  ret void
}

declare ptr @_ZN2v86Object25GetCreationContextCheckedEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #8

declare noundef zeroext i1 @_ZNK2v88TryCatch9HasCaughtEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #8

declare noundef zeroext i1 @_ZNK2v88TryCatch13HasTerminatedEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #8

declare ptr @_ZNK2v88TryCatch9ExceptionEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN4node6errors13TryCatchScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #11

declare ptr @_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_8FunctionEEEiPNS2_INS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6worker11MessagePort7OnCloseEv(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2512
  %i.h = zext i32 %i.b to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !range !26, !noundef !46
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node27UnconditionalAsyncWrapDebugIJEEEvPNS_9AsyncWrapEPKcDpOT_(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #34
  br label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit

_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %_ZN4node6worker11MessagePort6DetachEv.exit

_ZN4node6worker11MessagePort6DetachEv.exit:       ; preds = %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  tail call void @uv_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #29, !noalias !170
  %i.o = load ptr, ptr %i.l, align 8, !noalias !170
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  store ptr null, ptr %i.p, align 8, !noalias !170
  %i.q = load i64, ptr %i.l, align 8, !noalias !170
  %i.r = inttoptr i64 %i.q to ptr                 ; 4 uses
  store ptr null, ptr %i.l, align 8, !noalias !170
  tail call void @uv_mutex_unlock(ptr noundef nonnull %i.n) #29, !noalias !170
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i1 = icmp eq ptr %i.t, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN4node6worker15MessagePortDataESt14default_deleteIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4node6worker11MessagePort6DetachEv.exit
  tail call void @_ZN4node6worker12SiblingGroup11DisentangleEPNS0_15MessagePortDataE(ptr noundef nonnull align 8 dereferenceable(152) %i.t, ptr noundef nonnull align 8 dereferenceable(152) %i.r)
  br label %_ZNSt10unique_ptrIN4node6worker15MessagePortDataESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4node6worker15MessagePortDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4node6worker11MessagePort6DetachEv.exit, %bb.c
  %i.u = load ptr, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(152) %i.r) #29, !inline_history !160
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4node6worker15MessagePortDataESt14default_deleteIS2_EED2Ev.exit, %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZNK4node6worker11MessagePort15GetTransferModeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add i32 %i.d, -3
  %spec.select.i.i = icmp ult i32 %i.e, -2
  %.not = select i1 %.not.i.i, i1 %spec.select.i.i, i1 false
  %. = zext i1 %.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6worker11MessagePort20TransferForMessagingEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.393") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(264) %1, ptr null) #29
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !173 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.b, label %_ZNSt10unique_ptrIN4node6worker15MessagePortDataESt14default_deleteIS2_EED2Ev.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6worker11MessagePort6DetachEvE20error_and_abort_args) #29, !noalias !173
  tail call void @abort() #30, !noalias !173
  unreachable

_ZNSt10unique_ptrIN4node6worker15MessagePortDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  tail call void @uv_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #29, !noalias !173
  %i.g = load ptr, ptr %i.d, align 8, !noalias !173
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store ptr null, ptr %i.h, align 8, !noalias !173
  %i.i = load i64, ptr %i.d, align 8, !noalias !173
  %i.j = inttoptr i64 %i.i to ptr
  store ptr null, ptr %i.d, align 8, !noalias !173
  tail call void @uv_mutex_unlock(ptr noundef nonnull %i.f) #29, !noalias !173
  store ptr %i.j, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6worker15MessagePortData11DeserializeEPNS_11EnvironmentEN2v85LocalINS4_7ContextEEESt10unique_ptrINS0_12TransferDataESt14default_deleteIS9_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.node::BaseObjectPtrImpl") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, ptr %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.std::unique_ptr.445", align 8 ; 3 uses
  %6 = alloca %"class.std::shared_ptr.487", align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.a = load ptr, ptr %4, align 8, !noalias !176
  store ptr null, ptr %4, align 8, !noalias !176
  store ptr %i.a, ptr %5, align 8, !alias.scope !176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.b = call noundef ptr @_ZN4node6worker11MessagePort3NewEPNS_11EnvironmentEN2v85LocalINS4_7ContextEEESt10unique_ptrINS0_15MessagePortDataESt14default_deleteIS9_EESt10shared_ptrINS0_12SiblingGroupEE(ptr noundef %2, ptr %3, ptr noundef nonnull %5, ptr noundef nonnull %6) ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EEC2INS_6worker11MessagePortELb0EEERKNS0_IT_XT0_EEE.exit.thread, label %_ZNK4node17BaseObjectPtrImplINS_6worker11MessagePortELb0EE12pointer_dataEv.exit.i

_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EEC2INS_6worker11MessagePortELb0EEERKNS0_IT_XT0_EEE.exit.thread: ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %_ZNSt12__shared_ptrIN4node6worker12SiblingGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNK4node17BaseObjectPtrImplINS_6worker11MessagePortELb0EE12pointer_dataEv.exit.i: ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #29
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb0EE12pointer_dataEv.exit.i.i, !prof !5

bb.b:                                             ; preds = %_ZNK4node17BaseObjectPtrImplINS_6worker11MessagePortELb0EE12pointer_dataEv.exit.i
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node17BaseObjectPtrImplINS_6worker11MessagePortELb0EEC1EPS2_E20error_and_abort_args_0) #29
  tail call void @abort() #30
  unreachable

_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb0EE12pointer_dataEv.exit.i.i: ; preds = %_ZNK4node17BaseObjectPtrImplINS_6worker11MessagePortELb0EE12pointer_dataEv.exit.i
  tail call void @_ZN4node10BaseObject17increase_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #29
  store ptr %i.b, ptr %0, align 8
  %i.e = tail call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #29
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb0EE12pointer_dataEv.exit.i.i
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EEC1EPS1_E20error_and_abort_args_0) #29
  tail call void @abort() #30
  unreachable

bb.d:                                             ; preds = %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb0EE12pointer_dataEv.exit.i.i
  tail call void @_ZN4node10BaseObject17increase_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #29
  tail call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #29
  br label %_ZNSt12__shared_ptrIN4node6worker12SiblingGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node6worker12SiblingGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EEC2INS_6worker11MessagePortELb0EEERKNS0_IT_XT0_EEE.exit.thread, %bb.d
  %.pre = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i4 = icmp eq ptr %.pre, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIN4node6worker15MessagePortDataESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4node6worker15MessagePortDataEEclEPS2_.exit.i

end_hunk_0
