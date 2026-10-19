Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/resource_manager?download=true
inline.NumInlined: 1238
inline.NumDeleted: 629
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4cvc58internal11parseOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS6_Rm:bb.a

bb.p:                                             ; preds = %bb.o
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !339
  br label %_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.bm = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.aq
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit14
  %i.bo = load i32, ptr %i.be, align 4, !tbaa !339 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 34
  br i1 %i.bp, label %.critedge.i.i, label %bb.s

.critedge.i.i:                                    ; preds = %bb.q
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.29) #28
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %.critedge.i.i
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bq = ptrtoint ptr %i.bh to i64
  %i.br = ptrtoint ptr %i.bd to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = icmp eq i32 %i.bo, 0
  br i1 %i.bt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !339
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store i64 %i.bg, ptr %2, align 8, !tbaa !11
  %i.bu = load i64, ptr %i.ba, align 8, !tbaa !19 ; 2 uses
  %i.bv = icmp eq i64 %i.bs, %i.bu
  %i.bw = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.aq
  br i1 %i.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16: ; preds = %bb.u
  %i.by = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.by)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.u
  %i.bz = load i64, ptr %i.aq, align 8, !tbaa !18
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i
  %i.cb = load i64, ptr %i.aq, align 8, !tbaa !18
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.cc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.bj

bb.v:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.0 = phi i1 [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal15ResourceManagerC2ERNS0_18StatisticsRegistryERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(3560) initializes((0, 9), (16, 88)) %0, ptr noundef nonnull align 8 dereferenceable(58) %1, ptr noundef nonnull align 8 dereferenceable(408) %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store ptr %2, ptr %0, align 8, !tbaa !342
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.b, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3552 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i8 0, i64 72, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %bb.b unwind label %bb.c       ; 4 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4cvc58internal15ResourceManager10StatisticsC2ERNS0_18StatisticsRegistryE(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(58) %1)
          to label %vector.ph unwind label %bb.d

vector.ph:                                        ; preds = %bb.b
  store ptr %i.g, ptr %i.f, align 8, !tbaa !53
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.d, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body.3, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body.3 ] ; 6 uses
  %i.k = shl nuw nsw i64 %index, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x i64> splat (i64 1), ptr %i.l, align 8, !tbaa !11
  store <2 x i64> splat (i64 1), ptr %i.m, align 8, !tbaa !11
  %index.next = shl i64 %index, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %index.next ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store <2 x i64> splat (i64 1), ptr %i.o, align 8, !tbaa !11
  store <2 x i64> splat (i64 1), ptr %i.p, align 8, !tbaa !11
  %index.next.1 = shl i64 %index, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %index.next.1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store <2 x i64> splat (i64 1), ptr %i.r, align 8, !tbaa !11
  store <2 x i64> splat (i64 1), ptr %i.s, align 8, !tbaa !11
  %i.t = icmp eq i64 %index, 400
  br i1 %i.t, label %.lr.ph.i.i.i.i.i, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body
  %index.next.2 = shl i64 %index, 3
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %index.next.2 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  store <2 x i64> splat (i64 1), ptr %i.v, align 8, !tbaa !11
  store <2 x i64> splat (i64 1), ptr %i.w, align 8, !tbaa !11
  %index.next.3 = add nuw nsw i64 %index, 16
  br label %vector.body

.lr.ph.i.i.i.i.i:                                 ; preds = %vector.body
  %.06.i.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 3384
  store i64 1, ptr %.06.i.i.i.i.ptr.i, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3392 ; 2 uses
  store <4 x i64> splat (i64 1), ptr %i.x, align 8, !tbaa !11
  %.06.i.i.i.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %0, i64 3424
  store <4 x i64> splat (i64 1), ptr %.06.i.i.i.i.ptr.4.i, align 8, !tbaa !11
  %.06.i.i.i.i.ptr.8.i = getelementptr inbounds nuw i8, ptr %0, i64 3456
  store <4 x i64> splat (i64 1), ptr %.06.i.i.i.i.ptr.8.i, align 8, !tbaa !11
  %.06.i.i.i.i.ptr.12.i = getelementptr inbounds nuw i8, ptr %0, i64 3488
  store <4 x i64> splat (i64 1), ptr %.06.i.i.i.i.ptr.12.i, align 8, !tbaa !11
  %.06.i.i.i.i.ptr.16.i = getelementptr inbounds nuw i8, ptr %0, i64 3520
  store <4 x i64> splat (i64 1), ptr %.06.i.i.i.i.ptr.16.i, align 8, !tbaa !11
  %i.y = load ptr, ptr %0, align 8, !tbaa !54, !nonnull !55, !align !56
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 224
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !240, !nonnull !55, !align !56 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !343 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 264
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !343 ; 2 uses
  %.not41 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %.lr.ph.i.i.i.i.i
  ret void

bb.c:                                             ; preds = %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 32) #27
  br label %bb.q

bb.e:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.sroa.027.042 = phi ptr [ %i.ac, %.lr.ph ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.af, ptr %3, align 8, !tbaa !15
  store i64 0, ptr %i.ag, align 8, !tbaa !19
  store i8 0, ptr %i.af, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.aj = invoke noundef zeroext i1 @_ZN4cvc58internal11parseOptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS6_Rm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.027.042, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  br i1 %i.aj, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11.i, %bb.g
  %.0915.i = phi i64 [ 0, %bb.g ], [ %i.at, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11.i ] ; 3 uses
  %i.al = trunc nuw nsw i64 %.0915.i to i32
  %i.am = invoke noundef ptr @_ZN4cvc58internal6theory8toStringENS1_11InferenceIdE(i32 noundef %i.al)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.h
  %i.an = load i64, ptr %i.ag, align 8, !tbaa !19 ; 3 uses
  %i.ao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #26
  %i.ap = icmp eq i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11.i

bb.i:                                             ; preds = %.noexc
  %i.aq = icmp eq i64 %i.an, 0
  br i1 %i.aq, label %_ZN4cvc58internal9setWeightINS0_6theory11InferenceIdESt5arrayImLm413EEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRT0_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.i
  %i.ar = load ptr, ptr %3, align 8, !tbaa !17
  %bcmp.i.i = call i32 @bcmp(ptr %i.ar, ptr nonnull %i.am, i64 %i.an)
  %i.as = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.as, label %_ZN4cvc58internal9setWeightINS0_6theory11InferenceIdESt5arrayImLm413EEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRT0_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.noexc
  %i.at = add nuw nsw i64 %.0915.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.at, 413
  br i1 %exitcond.not.i, label %_ZN4cvc58internal9setWeightINS0_6theory11InferenceIdESt5arrayImLm413EEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRT0_.exit, label %bb.h, !llvm.loop !341

_ZN4cvc58internal9setWeightINS0_6theory11InferenceIdESt5arrayImLm413EEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRT0_.exit.thread: ; preds = %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0915.i
  store i64 %i.ak, ptr %i.au, align 8, !tbaa !11
  br label %bb.o

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZN4cvc58internal9setWeightINS0_6theory11InferenceIdESt5arrayImLm413EEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRT0_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11.i
  %i.av = call noundef zeroext i1 @_ZN4cvc58internal9setWeightINS0_8ResourceESt5arrayImLm20EEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRT0_(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(160) %i.x)
  br i1 %i.av, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZN4cvc58internal9setWeightINS0_6theory11InferenceIdESt5arrayImLm413EEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRT0_.exit
  %i.aw = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.24, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4cvc58internal15OptionExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTIN4cvc58internal15OptionExceptionE, ptr nonnull @_ZN4cvc58internal9ExceptionD2Ev) #28
          to label %bb.s unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i1 [ false, %bb.l ], [ true, %bb.k ]  ; 2 uses
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.az = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !18
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.0, label %bb.n, label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.0, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn33 = phi { ptr, i32 } [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.aw) #26
  br label %bb.p

bb.o:                                             ; preds = %_ZN4cvc58internal9setWeightINS0_6theory11InferenceIdESt5arrayImLm413EEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRT0_.exit.thread, %bb.f, %_ZN4cvc58internal9setWeightINS0_6theory11InferenceIdESt5arrayImLm413EEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.be = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.af
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.o
  %i.bg = load i64, ptr %i.af, align 8, !tbaa !18
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.027.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bi, %i.ae
  br i1 %.not, label %._crit_edge, label %bb.e

bb.p:                                             ; preds = %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn33, %bb.n ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.bj = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.af
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.p
  %i.bl = load i64, ptr %i.af, align 8, !tbaa !18
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZNSt10unique_ptrIN4cvc58internal15ResourceManager10StatisticsESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #26
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.d, %bb.c
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.ai, %bb.d ], [ %i.ah, %bb.c ]
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !243 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4cvc58internal8ListenerESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !244
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #27
  br label %_ZNSt6vectorIPN4cvc58internal8ListenerESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4cvc58internal8ListenerESaIS3_EED2Ev.exit: ; preds = %bb.q, %bb.r
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.s:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal9setWeightINS0_8ResourceESt5arrayImLm20EEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmRT0_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(160) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  %.fr21 = freeze i64 %i.b                        ; 3 uses
  %i.c = icmp eq i64 %.fr21, 0
  %i.d = load ptr, ptr %0, align 8
  br i1 %i.c, label %.loopexit, label %.split

.split:                                           ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11
  %.0915 = phi i64 [ %i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11 ], [ 0, %bb.a ] ; 4 uses
  %i.e = icmp samesign ult i64 %.0915, 19
  br i1 %i.e, label %switch.lookup36, label %_ZN4cvc58internal8toStringENS0_8ResourceE.exit

switch.lookup36:                                  ; preds = %.split
  %switch.gep37 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4cvc58internal23StatisticHistogramValueINS0_8ResourceEE9printSafeEi, i64 %.0915
  %switch.load38 = load ptr, ptr %switch.gep37, align 8
  br label %_ZN4cvc58internal8toStringENS0_8ResourceE.exit

_ZN4cvc58internal8toStringENS0_8ResourceE.exit:   ; preds = %.split, %switch.lookup36
  %.0.i = phi ptr [ %switch.load38, %switch.lookup36 ], [ @.str.19, %.split ] ; 2 uses
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #26
  %i.g = icmp eq i64 %.fr21, %i.f
  br i1 %i.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN4cvc58internal8toStringENS0_8ResourceE.exit
  %bcmp.i = tail call i32 @bcmp(ptr %i.d, ptr nonnull %.0.i, i64 %.fr21)
  %i.h = icmp eq i32 %bcmp.i, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11: ; preds = %_ZN4cvc58internal8toStringENS0_8ResourceE.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.i = add nuw nsw i64 %.0915, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, 20
  br i1 %exitcond.not, label %.loopexit, label %.split, !llvm.loop !344

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0915
  store i64 %1, ptr %i.j, align 8, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.k = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ false, %bb.a ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread11 ]
  ret i1 %i.k
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !15, !alias.scope !347
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !19, !alias.scope !347
  store i8 0, ptr %i.e, align 8, !tbaa !18, !alias.scope !347
  %i.g = add i64 %i.d, %i.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19, !alias.scope !347
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !19, !alias.scope !347
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #28
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !17, !alias.scope !347 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !18, !alias.scope !347
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal15OptionExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.b = load ptr, ptr @_ZN4cvc58internal15OptionException11s_errPrefixB5cxx11E, align 8, !tbaa !17, !noalias !352
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4cvc58internal15OptionException11s_errPrefixB5cxx11E, i64 8), align 8, !tbaa !19, !noalias !352 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !17, !noalias !352
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19, !noalias !352 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !15, !alias.scope !353
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.h, align 8, !tbaa !19, !alias.scope !353
  store i8 0, ptr %i.g, align 8, !tbaa !18, !alias.scope !353
  %i.i = add i64 %i.f, %i.c
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.i)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.h, align 8, !tbaa !19, !alias.scope !353
  %i.k = sub i64 4611686018427387903, %i.j
  %i.l = icmp ult i64 %i.k, %i.c
  br i1 %i.l, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.b, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.n = load i64, ptr %i.h, align 8, !tbaa !19, !alias.scope !353
  %i.o = sub i64 4611686018427387903, %i.n
  %i.p = icmp ult i64 %i.o, %i.f
  br i1 %i.p, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #28
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
end_hunk_0
