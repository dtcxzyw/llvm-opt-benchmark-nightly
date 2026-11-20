Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matrix?download=true
inline.NumInlined: 721
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZNK2cv12MatAllocator4copyEPNS_8UMatDataES2_iPKmS4_S4_S4_S4_b:bb.a
  call void @__clang_call_terminate(ptr %i.ck) #28
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  ret void

bb.af:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aa
  %.pn65.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp157, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cc, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #24
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.z
  %.pn65.pn.pn = phi { ptr, i32 } [ %.pn65.pn, %bb.af ], [ %i.cb, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn65.pn.pn.pn = phi { ptr, i32 } [ %.pn65.pn.pn, %bb.ag ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  resume { ptr, i32 } %.pn65.pn.pn.pn
}

declare void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !65
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @_ZNK2cv12MatAllocator23getBufferPoolControllerEPKc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK2cv12MatAllocator23getBufferPoolControllerEPKcE5dummy acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK2cv12MatAllocator23getBufferPoolControllerEPKcE5dummy) #24
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv25DummyBufferPoolControllerE, i64 16), ptr @_ZZNK2cv12MatAllocator23getBufferPoolControllerEPKcE5dummy, align 8, !tbaa !42
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK2cv12MatAllocator23getBufferPoolControllerEPKcE5dummy) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZNK2cv12MatAllocator23getBufferPoolControllerEPKcE5dummy
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv20BufferPoolControllerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN2cv3Mat19getDefaultAllocatorEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN2cvL25getDefaultAllocatorMatRefEv.exit, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator) #24, !inline_history !4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN2cvL25getDefaultAllocatorMatRefEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN2cv3Mat15getStdAllocatorEv()
          to label %bb.d unwind label %bb.e, !inline_history !4

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator, align 8, !tbaa !67
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator) #24, !inline_history !4
  br label %_ZN2cvL25getDefaultAllocatorMatRefEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator) #24, !inline_history !4
  resume { ptr, i32 } %i.e

_ZN2cvL25getDefaultAllocatorMatRefEv.exit:        ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr @_ZZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator, align 8, !tbaa !67
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat19setDefaultAllocatorEPNS_12MatAllocatorE(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN2cvL25getDefaultAllocatorMatRefEv.exit, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator) #24, !inline_history !4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN2cvL25getDefaultAllocatorMatRefEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZN2cv3Mat15getStdAllocatorEv()
          to label %bb.d unwind label %bb.e, !inline_history !4

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator, align 8, !tbaa !67
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator) #24, !inline_history !4
  br label %_ZN2cvL25getDefaultAllocatorMatRefEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator) #24, !inline_history !4
  resume { ptr, i32 } %i.e

_ZN2cvL25getDefaultAllocatorMatRefEv.exit:        ; preds = %bb.a, %bb.b, %bb.d
  store ptr %0, ptr @_ZZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN2cv3Mat15getStdAllocatorEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN2cv3Mat15getStdAllocatorEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cv3Mat15getStdAllocatorEvE8instance) #24
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #27
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN2cv15StdMatAllocatorE, i64 16), ptr %i.d, align 8, !tbaa !42
  store ptr %i.d, ptr @_ZZN2cv3Mat15getStdAllocatorEvE8instance, align 8, !tbaa !67
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN2cv3Mat15getStdAllocatorEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cv3Mat15getStdAllocatorEvE8instance) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load ptr, ptr @_ZZN2cv3Mat15getStdAllocatorEvE8instance, align 8, !tbaa !67
  ret ptr %i.f

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cv3Mat15getStdAllocatorEvE8instance) #24
  resume { ptr, i32 } %i.g
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7setSizeERNS_3MatEiPKiPKmb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i1 noundef zeroext %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = ptrtoaddr ptr %0 to i64
  %6 = ptrtoaddr ptr %3 to i64
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"struct.cv::MatShape", align 16   ; 8 uses
  %or.cond3 = icmp ult i32 %1, 11
  br i1 %or.cond3, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv7setSizeERNS_3MatEiPKiPKmb, ptr noundef nonnull @.str.10, i32 noundef 632) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.c = load ptr, ptr %9, align 8, !tbaa !24     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !25
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.a, %bb.e ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.b, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.h, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.i = zext nneg i32 %1 to i64
  call void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %11, i64 noundef %i.i, ptr noundef %2, i32 noundef 0, i32 noundef 0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load <4 x i32>, ptr %11, align 16, !tbaa !25
  %i.l = load i32, ptr %11, align 16, !tbaa !29
  store <4 x i32> %i.k, ptr %i.j, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load <4 x i32>, ptr %i.m, align 16, !tbaa !32
  store <4 x i32> %i.o, ptr %i.n, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load <4 x i32>, ptr %i.p, align 16, !tbaa !32
  store <4 x i32> %i.r, ptr %i.q, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.t = load i32, ptr %i.s, align 16, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.t, ptr %i.u, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.v = load i32, ptr %0, align 8, !tbaa !71     ; 2 uses
  %i.w = lshr i32 %i.v, 5
  %i.x = and i32 %i.w, 127
  %i.y = add nuw nsw i32 %i.x, 1
  %i.z = shl i32 %i.v, 2
  %i.aa = and i32 %i.z, 124
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = lshr i64 1275511473185297, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 15
  %i.af = mul nuw nsw i32 %i.ae, %i.y
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 13 uses
  %i.ai = call i32 @llvm.umax.i32(i32 %1, i32 1)
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr [8 x i8], ptr %i.ah, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  store i64 %i.ag, ptr %i.al, align 8, !tbaa !22
  %i.am = add nsw i32 %1, -2                      ; 5 uses
  %i.an = icmp samesign ugt i32 %1, 1
  br i1 %i.an, label %.lr.ph, label %bb.j

.lr.ph:                                           ; preds = %bb.g
  %.not54 = icmp eq ptr %3, null
  %.not83 = icmp sgt i32 %1, %i.l                 ; 3 uses
  br i1 %.not54, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %.not83, label %.split.us, label %.lr.ph.split.preheader.split

.lr.ph.split.preheader.split:                     ; preds = %.lr.ph.split.preheader
  %12 = zext i32 %i.am to i64                     ; 5 uses
  %13 = add nuw nsw i64 %12, 1                    ; 2 uses
  %min.iters.check = icmp ult i32 %i.am, 9
  br i1 %min.iters.check, label %.lr.ph.split.preheader93, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader.split
  %14 = sub i64 %6, %5
  %15 = add i64 %14, -129
  %diff.check = icmp ult i64 %15, 31
  br i1 %diff.check, label %.lr.ph.split.preheader93, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %13, 8589934588                ; 3 uses
  %16 = sub nsw i64 %12, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %17 = sub i64 %12, %index                       ; 2 uses
  %18 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %17 ; 2 uses
  %19 = getelementptr inbounds i8, ptr %18, i64 -8
  %20 = getelementptr inbounds i8, ptr %18, i64 -24
  %wide.load = load <2 x i64>, ptr %19, align 8, !tbaa !22
  %wide.load92 = load <2 x i64>, ptr %20, align 8, !tbaa !22
  %21 = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %17 ; 2 uses
  %22 = getelementptr inbounds i8, ptr %21, i64 -8
  %23 = getelementptr inbounds i8, ptr %21, i64 -24
  store <2 x i64> %wide.load, ptr %22, align 8, !tbaa !22
  store <2 x i64> %wide.load92, ptr %23, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %24 = icmp eq i64 %index.next, %n.vec
  br i1 %24, label %middle.block, label %vector.body, !llvm.loop !159

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %13, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader93

.lr.ph.split.preheader93:                         ; preds = %vector.memcheck, %.lr.ph.split.preheader.split, %middle.block
  %indvars.iv.ph = phi i64 [ %12, %vector.memcheck ], [ %12, %.lr.ph.split.preheader.split ], [ %16, %middle.block ] ; 4 uses
  %i.ao = add nsw i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.ao, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader93, %.lr.ph.split.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.split.prol ], [ %indvars.iv.ph, %.lr.ph.split.preheader93 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader93 ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.prol
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !22
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.prol
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !22
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !160

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader93
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.split.preheader93 ], [ %indvars.iv.next.prol, %.lr.ph.split.prol ]
  %i.as = icmp ult i64 %indvars.iv.ph, 3
  br i1 %i.as, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %4, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  br i1 %.not83, label %.split.us, label %.lr.ph.split.us.split.preheader.split

.lr.ph.split.us.split.preheader.split:            ; preds = %.lr.ph.split.us.split.preheader
  %i.at = zext nneg i32 %i.am to i64
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i8 0, i64 %i.av, i1 false), !tbaa !22
  br label %._crit_edge

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  br i1 %.not83, label %.split.us, label %.lr.ph.split.us.split.us.preheader.split

.lr.ph.split.us.split.us.preheader.split:         ; preds = %.lr.ph.split.us.split.us.preheader
  %i.aw = zext i32 %i.am to i64                   ; 4 uses
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = getelementptr i8, ptr %0, i64 %i.ax
  %scevgep = getelementptr i8, ptr %i.ay, i64 136
  %load_initial = load i64, ptr %scevgep, align 8 ; 2 uses
  %i.az = add nuw nsw i64 %i.aw, 1
  %xtraiter95 = and i64 %i.az, 3                  ; 2 uses
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %.lr.ph.split.us.split.us.prol.loopexit, label %.lr.ph.split.us.split.us.prol

.lr.ph.split.us.split.us.prol:                    ; preds = %.lr.ph.split.us.split.us.preheader.split, %.lr.ph.split.us.split.us.prol
  %store_forwarded.prol = phi i64 [ %i.be, %.lr.ph.split.us.split.us.prol ], [ %load_initial, %.lr.ph.split.us.split.us.preheader.split ]
  %indvars.iv72.prol = phi i64 [ %indvars.iv.next73.prol, %.lr.ph.split.us.split.us.prol ], [ %i.aw, %.lr.ph.split.us.split.us.preheader.split ] ; 3 uses
  %prol.iter97 = phi i64 [ %prol.iter97.next, %.lr.ph.split.us.split.us.prol ], [ 0, %.lr.ph.split.us.split.us.preheader.split ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv72.prol
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !32
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul i64 %store_forwarded.prol, %i.bd    ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv72.prol
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !22
  %indvars.iv.next73.prol = add nsw i64 %indvars.iv72.prol, -1 ; 2 uses
  %prol.iter97.next = add i64 %prol.iter97, 1     ; 2 uses
  %prol.iter97.cmp.not = icmp eq i64 %prol.iter97.next, %xtraiter95
  br i1 %prol.iter97.cmp.not, label %.lr.ph.split.us.split.us.prol.loopexit, label %.lr.ph.split.us.split.us.prol, !llvm.loop !161

.lr.ph.split.us.split.us.prol.loopexit:           ; preds = %.lr.ph.split.us.split.us.prol, %.lr.ph.split.us.split.us.preheader.split
  %store_forwarded.unr = phi i64 [ %load_initial, %.lr.ph.split.us.split.us.preheader.split ], [ %i.be, %.lr.ph.split.us.split.us.prol ]
  %indvars.iv72.unr = phi i64 [ %i.aw, %.lr.ph.split.us.split.us.preheader.split ], [ %indvars.iv.next73.prol, %.lr.ph.split.us.split.us.prol ]
  %i.bg = icmp ult i32 %i.am, 3
  br i1 %i.bg, label %._crit_edge, label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.prol.loopexit, %.lr.ph.split.us.split.us
  %store_forwarded = phi i64 [ %i.cd, %.lr.ph.split.us.split.us ], [ %store_forwarded.unr, %.lr.ph.split.us.split.us.prol.loopexit ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.3, %.lr.ph.split.us.split.us ], [ %indvars.iv72.unr, %.lr.ph.split.us.split.us.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv72
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !32
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul i64 %store_forwarded, %i.bk         ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv72
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !22
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, -1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next73
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !32
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul i64 %i.bl, %i.bq                    ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next73
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !22
  %indvars.iv.next73.1 = add nsw i64 %indvars.iv72, -2 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next73.1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !32
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul i64 %i.br, %i.bw                    ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next73.1
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !22
  %indvars.iv.next73.2 = add nsw i64 %indvars.iv72, -3 ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next73.2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !32
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul i64 %i.bx, %i.cc                    ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next73.2
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !22
  %indvars.iv.next73.3 = add nsw i64 %indvars.iv72, -4
  %.not90.3 = icmp eq i64 %indvars.iv.next73.2, 0
  br i1 %.not90.3, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !162

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.split.us.prol.loopexit, %.lr.ph.split.us.split.us, %middle.block, %.lr.ph.split.us.split.preheader.split
  %i.cf = icmp eq i32 %1, 2
  br i1 %i.cf, label %.thread84, label %bb.l

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.split ], [ %indvars.iv.unr, %.lr.ph.split.prol.loopexit ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !22
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !22
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !22
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !22
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !22
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.1
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !22
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !22
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.2
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !22
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %.not89.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %.not89.3, label %._crit_edge, label %.lr.ph.split, !llvm.loop !163

.split.us:                                        ; preds = %.lr.ph.split.preheader, %.lr.ph.split.us.split.preheader, %.lr.ph.split.us.split.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 97) #25
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.split.us
  unreachable

bb.i:                                             ; preds = %.split.us
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !25
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  %i.cy = icmp eq i32 %1, 0
  br i1 %i.cy, label %.thread, label %.thread85

.thread:                                          ; preds = %bb.j
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.cz, align 4, !tbaa !72
  br label %.thread61

.thread84:                                        ; preds = %._crit_edge
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.thread59, label %bb.k

.thread85:                                        ; preds = %bb.j
  %.not86 = icmp eq ptr %2, null
  br i1 %.not86, label %.thread59, label %.thread87

.thread87:                                        ; preds = %.thread85
  %i.da = load i32, ptr %2, align 4, !tbaa !32
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.da, ptr %i.db, align 4, !tbaa !72
  br label %.thread61

bb.k:                                             ; preds = %.thread84
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !32
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !72
  %i.df = load i32, ptr %2, align 4, !tbaa !32
  br label %.thread61

.thread59:                                        ; preds = %.thread85, %.thread84
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !72
  %.not5260 = icmp ne i32 %1, 2
  %spec.select = zext i1 %.not5260 to i32
  br label %.thread61

.thread61:                                        ; preds = %.thread87, %.thread59, %.thread, %bb.k
  %i.dh = phi i32 [ 1, %.thread87 ], [ %i.df, %bb.k ], [ %spec.select, %.thread59 ], [ 1, %.thread ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !73
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.dj, align 8, !tbaa !73
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1, ptr %i.dk, align 4, !tbaa !72
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread61
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN2cv20updateContinuityFlagEiiPKiPKm(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %1, 2
  br i1 %i.a, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = or i32 %0, 16384
  br label %bb.e

.preheader:                                       ; preds = %.preheader.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.loop.exit48, label %.preheader, !llvm.loop !5

.split.loop.exit:                                 ; preds = %.preheader
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  br label %.split.loop.exit48

.split.loop.exit48:                               ; preds = %bb.c, %.split.loop.exit
  %storemerge.lcssa = phi i32 [ %i.f, %.split.loop.exit ], [ %1, %bb.c ] ; 4 uses
  %i.g = add nsw i32 %1, -1                       ; 3 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %storemerge.lcssa)
  %i.h = sext i32 %.sroa.speculated to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %2, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32
  %i.k = sext i32 %i.j to i64
  %i.l = lshr i32 %0, 5
  %i.m = and i32 %i.l, 127
  %i.n = add nuw nsw i32 %i.m, 1
  %i.o = zext nneg i32 %i.n to i64
  %i.p = mul nsw i64 %i.k, %i.o                   ; 2 uses
  %i.q = icmp sgt i32 %i.g, %storemerge.lcssa
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.split.loop.exit48
  %i.r = zext nneg i32 %i.g to i64
  %i.s = sext i32 %storemerge.lcssa to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv43 = phi i64 [ %i.r, %.lr.ph.preheader ], [ %indvars.iv.next44, %bb.d ] ; 4 uses
  %.037 = phi i64 [ %i.p, %.lr.ph.preheader ], [ %i.w, %bb.d ]
  %i.t = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv43
  %i.u = load i32, ptr %i.t, align 4, !tbaa !32
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = mul i64 %.037, %i.v                      ; 3 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv43 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !22
  %i.z = mul i64 %i.y, %i.v
  %i.aa = getelementptr i8, ptr %i.x, i64 -8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !22
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %._crit_edge.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, -1 ; 2 uses
  %i.ad = icmp sgt i64 %indvars.iv.next44, %i.s
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !6

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %i.ae = trunc nsw i64 %indvars.iv43 to i32
  %i.af = icmp sge i32 %storemerge.lcssa, %i.ae
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.loopexit.split.loop.exit, %.split.loop.exit48
  %.024.lcssa = phi i1 [ true, %.split.loop.exit48 ], [ %i.af, %._crit_edge.loopexit.split.loop.exit ], [ true, %bb.d ]
  %.1 = phi i64 [ %i.p, %.split.loop.exit48 ], [ %i.w, %._crit_edge.loopexit.split.loop.exit ], [ %i.w, %bb.d ]
  %i.ag = add i64 %.1, 2147483648
  %i.ah = icmp ult i64 %i.ag, 4294967296
  %or.cond = select i1 %.024.lcssa, i1 %i.ah, i1 false
  %i.ai = and i32 %0, -16385
  %masksel = select i1 %or.cond, i32 16384, i32 0
  %.025 = or disjoint i32 %masksel, %i.ai
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.126 = phi i32 [ %i.b, %bb.b ], [ %.025, %._crit_edge ]
  ret i32 %.126
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN2cv3Mat20updateContinuityFlagEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !71     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !70   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = icmp slt i32 %i.c, 2
  br i1 %i.f, label %bb.b, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  br label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.g = or i32 %i.a, 16384
  br label %_ZN2cv20updateContinuityFlagEiiPKiPKm.exit

.preheader.i:                                     ; preds = %bb.c, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %.split.loop.exit.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.split.loop.exit48.i, label %.preheader.i, !llvm.loop !5

.split.loop.exit.i:                               ; preds = %.preheader.i
  %i.k = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.split.loop.exit48.i

.split.loop.exit48.i:                             ; preds = %bb.c, %.split.loop.exit.i
  %storemerge.lcssa.i = phi i32 [ %i.k, %.split.loop.exit.i ], [ %i.c, %bb.c ] ; 4 uses
  %i.l = add nsw i32 %i.c, -1                     ; 3 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %storemerge.lcssa.i)
  %i.m = sext i32 %.sroa.speculated.i to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !32
  %i.p = sext i32 %i.o to i64
  %i.q = lshr i32 %i.a, 5
  %i.r = and i32 %i.q, 127
  %i.s = add nuw nsw i32 %i.r, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = mul nsw i64 %i.p, %i.t                   ; 2 uses
  %i.v = icmp sgt i32 %i.l, %storemerge.lcssa.i
  br i1 %i.v, label %.lr.ph.preheader.i, label %._crit_edge.i

end_hunk_0
begin_hunk_1_@_ZN2cv11finalizeHdrERNS_3MatE:bb.a
  %i.r = and i32 %i.q, 127
  %i.s = add nuw nsw i32 %i.r, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = mul nsw i64 %i.p, %i.t                   ; 2 uses
  %i.v = icmp sgt i32 %i.l, %storemerge.lcssa.i.i
  br i1 %i.v, label %.lr.ph.preheader.i.i, label %_ZN2cv3Mat20updateContinuityFlagEv.exit

.lr.ph.preheader.i.i:                             ; preds = %.split.loop.exit48.i.i
  %i.w = zext nneg i32 %i.l to i64
  %i.x = sext i32 %storemerge.lcssa.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.preheader.i.i
  %indvars.iv43.i.i = phi i64 [ %i.w, %.lr.ph.preheader.i.i ], [ %indvars.iv.next44.i.i, %bb.c ] ; 4 uses
  %.037.i.i = phi i64 [ %i.u, %.lr.ph.preheader.i.i ], [ %i.ab, %bb.c ]
  %i.y = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv43.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !32
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = mul i64 %.037.i.i, %i.aa                ; 3 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv43.i.i ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !22
  %i.ae = mul i64 %i.ad, %i.aa
  %i.af = getelementptr i8, ptr %i.ac, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !22
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %._crit_edge.loopexit.split.loop.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next44.i.i = add nsw i64 %indvars.iv43.i.i, -1 ; 2 uses
  %i.ai = icmp sgt i64 %indvars.iv.next44.i.i, %i.x
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZN2cv3Mat20updateContinuityFlagEv.exit, !llvm.loop !6

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %.lr.ph.i.i
  %i.aj = trunc nsw i64 %indvars.iv43.i.i to i32
  %i.ak = icmp sge i32 %storemerge.lcssa.i.i, %i.aj
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

_ZN2cv3Mat20updateContinuityFlagEv.exit:          ; preds = %bb.c, %.split.loop.exit48.i.i, %._crit_edge.loopexit.split.loop.exit.i.i
  %.024.lcssa.i.i = phi i1 [ true, %.split.loop.exit48.i.i ], [ %i.ak, %._crit_edge.loopexit.split.loop.exit.i.i ], [ true, %bb.c ]
  %.1.i.i = phi i64 [ %i.u, %.split.loop.exit48.i.i ], [ %i.ab, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.ab, %bb.c ]
  %i.al = add i64 %.1.i.i, 2147483648
  %i.am = icmp ult i64 %i.al, 4294967296
  %or.cond.i.i = select i1 %.024.lcssa.i.i, i1 %i.am, i1 false
  %i.an = and i32 %i.a, -16385
  %masksel.i.i = select i1 %or.cond.i.i, i32 16384, i32 0
  %.025.i.i = or disjoint i32 %masksel.i.i, %i.an
  store i32 %.025.i.i, ptr %0, align 8, !tbaa !71
  %.not50 = icmp eq i32 %i.c, 2
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2cv3Mat20updateContinuityFlagEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1, ptr %i.ao, align 4, !tbaa !72
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.ap, align 8, !tbaa !73
  br label %bb.e

bb.e:                                             ; preds = %_ZN2cv3Mat20updateContinuityFlagEv.exit.thread, %bb.d, %_ZN2cv3Mat20updateContinuityFlagEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !74 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !75
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !53 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.at, ptr %i.au, align 8, !tbaa !75
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.at, ptr %i.av, align 8, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.aw = phi ptr [ %.pre, %._crit_edge ], [ %i.at, %bb.f ] ; 4 uses
  %i.ax = icmp ne ptr %i.aw, null
  %i.ay = icmp sgt i32 %i.c, 0
  %or.cond = and i1 %i.ay, %i.ax
  br i1 %or.cond, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !76
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !29
  %i.bd = load i32, ptr %i.d, align 4, !tbaa !32  ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = load i64, ptr %i.e, align 8, !tbaa !22
  %i.bg = mul i64 %i.bf, %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !77
  %i.bj = icmp sgt i32 %i.bd, 0
  br i1 %i.bj, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 1)
  %i.bk = add nsw i32 %i.c, -1                    ; 2 uses
  %i.bl = icmp samesign ult i32 %i.bk, %narrow.i
  br i1 %i.bl, label %_ZN2cv8MatShapeixEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %2)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 97) #25
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !25
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.bm

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.i
  %i.bs = zext nneg i32 %i.bk to i64              ; 4 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !32
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bs
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !22
  %i.by = mul i64 %i.bx, %i.bv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.by ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !78
  %i.cb = icmp samesign ugt i32 %i.c, 1
  br i1 %i.cb, label %_ZN2cv8MatShapeixEm.exit48.preheader, label %.loopexit

_ZN2cv8MatShapeixEm.exit48.preheader:             ; preds = %_ZN2cv8MatShapeixEm.exit
  %xtraiter = and i64 %i.bs, 3                    ; 3 uses
  %i.cc = add nsw i32 %i.c, -2
  %i.cd = icmp ult i32 %i.cc, 3
  br i1 %i.cd, label %_ZN2cv8MatShapeixEm.exit48.epil.preheader, label %_ZN2cv8MatShapeixEm.exit48.preheader.new

_ZN2cv8MatShapeixEm.exit48.preheader.new:         ; preds = %_ZN2cv8MatShapeixEm.exit48.preheader
  %unroll_iter = and i64 %i.bs, 2147483644
  br label %_ZN2cv8MatShapeixEm.exit48

_ZN2cv8MatShapeixEm.exit48:                       ; preds = %_ZN2cv8MatShapeixEm.exit48, %_ZN2cv8MatShapeixEm.exit48.preheader.new
  %indvars.iv = phi i64 [ 0, %_ZN2cv8MatShapeixEm.exit48.preheader.new ], [ %indvars.iv.next.3, %_ZN2cv8MatShapeixEm.exit48 ] ; 6 uses
  %i.ce = phi ptr [ %i.bz, %_ZN2cv8MatShapeixEm.exit48.preheader.new ], [ %i.dk, %_ZN2cv8MatShapeixEm.exit48 ]
  %niter = phi i64 [ 0, %_ZN2cv8MatShapeixEm.exit48.preheader.new ], [ %niter.next.3, %_ZN2cv8MatShapeixEm.exit48 ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !32
  %i.ch = add nsw i32 %i.cg, -1
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !22
  %i.cl = mul i64 %i.ck, %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cl
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !32
  %i.cp = add nsw i32 %i.co, -1
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !22
  %i.ct = mul i64 %i.cs, %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ct
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !32
  %i.cx = add nsw i32 %i.cw, -1
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.1
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !22
  %i.db = mul i64 %i.da, %i.cy
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.db
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.2
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !32
  %i.df = add nsw i32 %i.de, -1
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.2
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !22
  %i.dj = mul i64 %i.di, %i.dg
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dj ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..loopexit_crit_edge.unr-lcssa, label %_ZN2cv8MatShapeixEm.exit48, !llvm.loop !164

bb.m:                                             ; preds = %bb.h
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bh, ptr %i.dl, align 8, !tbaa !78
  br label %.loopexit

bb.n:                                             ; preds = %bb.g
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aw, ptr %i.dm, align 8, !tbaa !77
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.aw, ptr %i.dn, align 8, !tbaa !78
  br label %.loopexit

..loopexit_crit_edge.unr-lcssa:                   ; preds = %_ZN2cv8MatShapeixEm.exit48
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge, label %_ZN2cv8MatShapeixEm.exit48.epil.preheader

_ZN2cv8MatShapeixEm.exit48.epil.preheader:        ; preds = %..loopexit_crit_edge.unr-lcssa, %_ZN2cv8MatShapeixEm.exit48.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZN2cv8MatShapeixEm.exit48.preheader ], [ %indvars.iv.next.3, %..loopexit_crit_edge.unr-lcssa ]
  %.epil.init = phi ptr [ %i.bz, %_ZN2cv8MatShapeixEm.exit48.preheader ], [ %i.dk, %..loopexit_crit_edge.unr-lcssa ]
  %lcmp.mod80 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod80)
  br label %_ZN2cv8MatShapeixEm.exit48.epil

_ZN2cv8MatShapeixEm.exit48.epil:                  ; preds = %_ZN2cv8MatShapeixEm.exit48.epil, %_ZN2cv8MatShapeixEm.exit48.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %_ZN2cv8MatShapeixEm.exit48.epil ], [ %indvars.iv.epil.init, %_ZN2cv8MatShapeixEm.exit48.epil.preheader ] ; 3 uses
  %i.do = phi ptr [ %i.dw, %_ZN2cv8MatShapeixEm.exit48.epil ], [ %.epil.init, %_ZN2cv8MatShapeixEm.exit48.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN2cv8MatShapeixEm.exit48.epil ], [ 0, %_ZN2cv8MatShapeixEm.exit48.epil.preheader ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.epil
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !32
  %i.dr = add nsw i32 %i.dq, -1
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.epil
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !22
  %i.dv = mul i64 %i.du, %i.ds
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dv ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge, label %_ZN2cv8MatShapeixEm.exit48.epil, !llvm.loop !165

..loopexit_crit_edge:                             ; preds = %_ZN2cv8MatShapeixEm.exit48.epil, %..loopexit_crit_edge.unr-lcssa
  %.lcssa = phi ptr [ %i.dk, %..loopexit_crit_edge.unr-lcssa ], [ %i.dw, %_ZN2cv8MatShapeixEm.exit48.epil ]
  store ptr %.lcssa, ptr %i.ca, align 8, !tbaa !78
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN2cv8MatShapeixEm.exit, %..loopexit_crit_edge, %bb.m, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %0, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.a, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i8 0, i64 80, i1 false), !tbaa !22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #28
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %0, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.e, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, i8 0, i64 80, i1 false), !tbaa !22
  %i.i = and i32 %3, 4095                         ; 2 uses
  %i.j = load i32, ptr %i.b, align 4, !tbaa !70
  %i.k = icmp slt i32 %i.j, 3
  %i.l = load i32, ptr %i.c, align 8
  %i.m = icmp eq i32 %i.l, %1
  %or.cond.i = select i1 %i.k, i1 %i.m, i1 false
  %i.n = load i32, ptr %i.d, align 4
  %i.o = icmp eq i32 %i.n, %2
  %or.cond11.i = select i1 %or.cond.i, i1 %i.o, i1 false
  br i1 %or.cond11.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %0, align 8, !tbaa !71
  %i.q = and i32 %i.p, 4095
  %i.r = icmp ne i32 %i.q, %i.i
  %i.s = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.s, null
  %or.cond13.i = select i1 %i.r, i1 true, i1 %.not.i
  br i1 %or.cond13.i, label %bb.c, label %_ZN2cv3Mat6createEiii.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %1, ptr %i.a, align 4, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %2, ptr %i.t, align 4, !tbaa !32
  call void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN2cv3Mat6createEiii.exit

_ZN2cv3Mat6createEiii.exit:                       ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = and i32 %3, 4095                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !70
  %i.e = icmp slt i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, %2
  %or.cond11 = select i1 %or.cond, i1 %i.k, i1 false
  br i1 %or.cond11, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %0, align 8, !tbaa !71
  %i.m = and i32 %i.l, 4095
  %i.n = icmp ne i32 %i.m, %i.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %.not = icmp eq ptr %i.p, null
  %or.cond13 = select i1 %i.n, i1 true, i1 %.not
  br i1 %or.cond13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %1, ptr %i.a, align 4, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %2, ptr %i.q, align 4, !tbaa !32
  call void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3MatC2EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %0, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.e, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, i8 0, i64 80, i1 false), !tbaa !22
  %i.i = and i32 %3, 4095                         ; 2 uses
  %i.j = load i32, ptr %i.b, align 4, !tbaa !70
  %i.k = icmp slt i32 %i.j, 3
  %i.l = load i32, ptr %i.c, align 8
  %i.m = icmp eq i32 %i.l, %1
  %or.cond.i = select i1 %i.k, i1 %i.m, i1 false
  %i.n = load i32, ptr %i.d, align 4
  %i.o = icmp eq i32 %i.n, %2
  %or.cond11.i = select i1 %or.cond.i, i1 %i.o, i1 false
  br i1 %or.cond11.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %0, align 8, !tbaa !71
  %i.q = and i32 %i.p, 4095
  %i.r = icmp ne i32 %i.q, %i.i
  %i.s = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.s, null
  %or.cond13.i = select i1 %i.r, i1 true, i1 %.not.i
  br i1 %or.cond13.i, label %bb.c, label %_ZN2cv3Mat6createEiii.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %1, ptr %i.a, align 4, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %2, ptr %i.t, align 4, !tbaa !32
  call void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN2cv3Mat6createEiii.exit

_ZN2cv3Mat6createEiii.exit:                       ; preds = %bb.b, %bb.c
  %i.u = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3MatC2ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0, i64 %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 2 uses
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
end_hunk_1
begin_hunk_2_@_ZN2cv3MatC2ENS_5Size_IiEEiRKNS_7Scalar_IdEE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %0, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.e, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, i8 0, i64 80, i1 false), !tbaa !22
  %i.i = and i32 %2, 4095                         ; 2 uses
  %i.j = load i32, ptr %i.b, align 4, !tbaa !70
  %i.k = icmp slt i32 %i.j, 3
  %i.l = load i32, ptr %i.c, align 8
  %i.m = icmp eq i32 %i.l, %.sroa.2.0.extract.trunc
  %or.cond.i = select i1 %i.k, i1 %i.m, i1 false
  %i.n = load i32, ptr %i.d, align 4
  %i.o = icmp eq i32 %i.n, %.sroa.0.0.extract.trunc
  %or.cond11.i = select i1 %or.cond.i, i1 %i.o, i1 false
  br i1 %or.cond11.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %0, align 8, !tbaa !71
  %i.q = and i32 %i.p, 4095
  %i.r = icmp ne i32 %i.q, %i.i
  %i.s = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.s, null
  %or.cond13.i = select i1 %i.r, i1 true, i1 %.not.i
  br i1 %or.cond13.i, label %bb.c, label %_ZN2cv3Mat6createEiii.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %.sroa.2.0.extract.trunc, ptr %i.a, align 4, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.0.0.extract.trunc, ptr %i.t, align 4, !tbaa !32
  call void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN2cv3Mat6createEiii.exit

_ZN2cv3Mat6createEiii.exit:                       ; preds = %bb.b, %bb.c
  %i.u = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3MatC2EiPKii(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %0, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.a, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i8 0, i64 80, i1 false), !tbaa !22
  tail call void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca [32 x i32], align 16              ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 1, ptr %i.a, align 4, !tbaa !32
  %i.c = icmp eq i32 %1, 0
  %spec.select = select i1 %i.c, ptr %i.a, ptr %2 ; 5 uses
  %spec.select74 = tail call i32 @llvm.umax.i32(i32 %1, i32 1) ; 4 uses
  %or.cond = icmp ult i32 %1, 33
  %i.d = icmp ne ptr %spec.select, null
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv3Mat6createEiPKii, ptr noundef nonnull @.str.10, i32 noundef 1093) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %8, align 8, !tbaa !24     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !25
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ba

bb.g:                                             ; preds = %bb.a
  %i.l = and i32 %3, 4095                         ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75
  %.not = icmp ne ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %spec.select74, %i.p
  %or.cond77 = select i1 %.not, i1 %i.q, i1 false
  br i1 %or.cond77, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %0, align 8, !tbaa !71
  %i.s = and i32 %i.r, 4095
  %i.t = icmp eq i32 %i.l, %i.s
  br i1 %i.t, label %.lr.ph, label %bb.n

.lr.ph:                                           ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i32, ptr %i.u, align 8, !tbaa !29
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.v, i32 1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 84
  %wide.trip.count = zext nneg i32 %narrow.i to i64
  %wide.trip.count95 = zext nneg i32 %spec.select74 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %bb.j, label %_ZN2cv8MatShapeixEm.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 97) #25
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %6, align 8, !tbaa !24     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !25
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.ba, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.dg, %bb.w ], [ %.pn70.pn.pn, %bb.ba ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !32
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %spec.select, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !32
  %.not60 = icmp eq i32 %i.ae, %i.ag
  br i1 %.not60, label %bb.m, label %_ZN2cv8MatShapeixEm.exit._crit_edge

bb.m:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next, %wide.trip.count95
  br i1 %exitcond96.not, label %_ZN2cv8MatShapeixEm.exit._crit_edge.thread, label %bb.i, !llvm.loop !166

_ZN2cv8MatShapeixEm.exit._crit_edge:              ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = icmp eq i32 %spec.select74, %i.ah
  br i1 %i.ai, label %_ZN2cv8MatShapeixEm.exit._crit_edge.thread, label %bb.n

bb.n:                                             ; preds = %_ZN2cv8MatShapeixEm.exit._crit_edge, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 12 uses
  %i.al = icmp eq ptr %spec.select, %i.ak
  br i1 %i.al, label %.lr.ph93.preheader, label %.loopexit

.lr.ph93.preheader:                               ; preds = %bb.n
  %i.am = call i32 @llvm.umax.i32(i32 %1, i32 1)
  %i.an = shl nuw nsw i32 %i.am, 2
  %i.ao = zext nneg i32 %i.an to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, ptr noundef nonnull align 4 dereferenceable(1) %spec.select, i64 %i.ao, i1 false), !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph93.preheader, %bb.n
  %.155 = phi ptr [ %spec.select, %bb.n ], [ %i.b, %.lr.ph93.preheader ]
  call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.ap = or disjoint i32 %i.l, 1124007936
  store i32 %i.ap, ptr %0, align 8, !tbaa !71
  call void @_ZN2cv7setSizeERNS_3MatEiPKiPKmb(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %spec.select74, ptr noundef nonnull %.155, ptr noundef null, i1 noundef zeroext true)
  %i.aq = load i32, ptr %i.o, align 4, !tbaa !70  ; 4 uses
  %i.ar = icmp slt i32 %i.aq, 3
  br i1 %i.ar, label %bb.o, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit
  %i.as = load i32, ptr %i.aj, align 8, !tbaa !29
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.as, i32 1)
  %i.at = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.au = add nsw i32 %i.aq, -1
  %.not.not.i = icmp samesign ugt i32 %narrow.i.i, %i.au
  br i1 %.not.not.i, label %_ZNK2cv8MatShapeixEm.exit.i.preheader, label %bb.p

_ZNK2cv8MatShapeixEm.exit.i.preheader:            ; preds = %.preheader.i
  %xtraiter = and i64 %i.at, 7                    ; 3 uses
  %i.av = icmp ult i32 %i.aq, 8
  br i1 %i.av, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.preheader.new

_ZNK2cv8MatShapeixEm.exit.i.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %unroll_iter = and i64 %i.at, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

bb.o:                                             ; preds = %.loopexit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !73
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !72
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul nsw i64 %i.bb, %i.ay
  br label %_ZNK2cv3Mat5totalEv.exit

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.069.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %i.cp, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !32
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %.069.i, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !32
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul i64 %i.bg, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !32
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %i.bl, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !32
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %i.bq, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !32
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul i64 %i.bv, %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !32
  %i.ce = sext i32 %i.cd to i64
  %i.cf = mul i64 %i.ca, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !32
  %i.cj = sext i32 %i.ci to i64
  %i.ck = mul i64 %i.cf, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 28
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !32
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul i64 %i.ck, %i.co                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !7

bb.p:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !25
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa:      ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %indvars.iv.next.i.7, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ]
  %.069.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %i.cp, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod123)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ] ; 2 uses
  %.069.i.epil = phi i64 [ %i.cz, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %.069.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i.epil
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !32
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul i64 %.069.i.epil, %i.cy             ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !167

_ZNK2cv3Mat5totalEv.exit:                         ; preds = %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.epil, %bb.o
  %.07.i = phi i64 [ %i.bc, %bb.o ], [ %i.cp, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ], [ %i.cz, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %.not61 = icmp eq i64 %.07.i, 0
  br i1 %.not61, label %bb.ay, label %bb.s

bb.s:                                             ; preds = %_ZNK2cv3Mat5totalEv.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !80 ; 2 uses
  %i.dc = load atomic i8, ptr @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator acquire, align 8
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.t, label %_ZN2cv3Mat19getDefaultAllocatorEv.exit, !prof !66

bb.t:                                             ; preds = %bb.s
  %i.de = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator) #24, !inline_history !8
  %.not.i.i = icmp eq i32 %i.de, 0
  br i1 %.not.i.i, label %_ZN2cv3Mat19getDefaultAllocatorEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = invoke noundef ptr @_ZN2cv3Mat15getStdAllocatorEv()
          to label %bb.v unwind label %bb.w, !inline_history !8

bb.v:                                             ; preds = %bb.u
  store ptr %i.df, ptr @_ZZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator, align 8, !tbaa !67
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator) #24, !inline_history !8
  br label %_ZN2cv3Mat19getDefaultAllocatorEv.exit

bb.w:                                             ; preds = %bb.u
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator) #24, !inline_history !8
  br label %common.resume

_ZN2cv3Mat19getDefaultAllocatorEv.exit:           ; preds = %bb.s, %bb.t, %bb.v
  %i.dh = load ptr, ptr @_ZZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator, align 8, !tbaa !67 ; 5 uses
  %.not62 = icmp eq ptr %i.db, null
  %spec.select78 = select i1 %.not62, ptr %i.dh, ptr %i.db ; 4 uses
  %i.di = load i32, ptr %i.o, align 4, !tbaa !70
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.dk = load ptr, ptr %spec.select78, align 8, !tbaa !42
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = invoke noundef ptr %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %spec.select78, i32 noundef %i.di, ptr noundef nonnull %i.ak, i32 noundef %i.l, ptr noundef null, ptr noundef nonnull %i.dj, i32 noundef 50331648, i32 noundef 0)
          to label %bb.x unwind label %bb.y       ; 2 uses

bb.x:                                             ; preds = %_ZN2cv3Mat19getDefaultAllocatorEv.exit
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !74
  %.not63 = icmp eq ptr %i.dn, null
  br i1 %.not63, label %bb.z, label %bb.ag

bb.y:                                             ; preds = %_ZN2cv3Mat19getDefaultAllocatorEv.exit
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ae

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3Mat6createEiPKii, ptr noundef nonnull @.str.10, i32 noundef 1127) #25
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.ad:                                            ; preds = %bb.aa
  %i.dr = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ds = load ptr, ptr %10, align 8, !tbaa !24   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.ad
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !25
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.ac
  %.pn64 = phi { ptr, i32 } [ %i.dq, %bb.ac ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %i.dr, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %bb.y
  %.pn64.pn = phi { ptr, i32 } [ %.pn64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %i.dp, %bb.y ]
  %.247 = extractvalue { ptr, i32 } %.pn64.pn, 0
  %i.dx = call ptr @__cxa_begin_catch(ptr %.247) #24 ; 0 uses
  %i.dy = icmp eq ptr %spec.select78, %i.dh
  br i1 %i.dy, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_rethrow() #25
          to label %bb.bc unwind label %bb.ah

bb.ag:                                            ; preds = %bb.x
  store ptr %spec.select78, ptr %i.da, align 8, !tbaa !80
  br label %bb.aq

bb.ah:                                            ; preds = %bb.ai, %bb.af
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ai:                                            ; preds = %bb.ae
  %i.ea = load i32, ptr %i.o, align 4, !tbaa !70
  %i.eb = load ptr, ptr %i.dh, align 8, !tbaa !42
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = invoke noundef ptr %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i32 noundef %i.ea, ptr noundef nonnull %i.ak, i32 noundef %i.l, ptr noundef null, ptr noundef nonnull %i.dj, i32 noundef 50331648, i32 noundef 0)
          to label %bb.aj unwind label %bb.ah     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !74
  %.not65 = icmp eq ptr %i.ee, null
  br i1 %.not65, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv3Mat6createEiPKii, ptr noundef nonnull @.str.10, i32 noundef 1135) #25
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.ao:                                            ; preds = %bb.al
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %12, align 8, !tbaa !24   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.ao
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !25
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82, %bb.an
  %.pn66 = phi { ptr, i32 } [ %i.eg, %bb.an ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82 ], [ %i.eh, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.ar

bb.ap:                                            ; preds = %bb.aj
  store ptr %i.dh, ptr %i.da, align 8, !tbaa !80
  call void @__cxa_end_catch()
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ag, %bb.ap
  %i.en = load i32, ptr %i.o, align 4, !tbaa !70
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr [8 x i8], ptr %i.dj, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 -8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !22
  %i.es = load i32, ptr %0, align 8, !tbaa !71    ; 2 uses
  %i.et = lshr i32 %i.es, 5
  %i.eu = and i32 %i.et, 127
  %i.ev = add nuw nsw i32 %i.eu, 1
  %i.ew = shl i32 %i.es, 2
  %i.ex = and i32 %i.ew, 124
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = lshr i64 1275511473185297, %i.ey
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = and i32 %i.fa, 15
  %i.fc = mul nuw nsw i32 %i.fb, %i.ev
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = icmp eq i64 %i.er, %i.fd
  br i1 %i.fe, label %bb.ay, label %bb.as

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %bb.ah
  %.pn68 = phi { ptr, i32 } [ %i.dz, %bb.ah ], [ %.pn66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ]
  invoke void @__cxa_end_catch()
          to label %bb.ax unwind label %bb.bb

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
end_hunk_2
begin_hunk_3_@_ZN2cv3MatC2ERKS0_:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !62
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !tbaa !62
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load <2 x ptr>, ptr %i.j, align 8, !tbaa !82
  store <2 x ptr> %i.l, ptr %i.i, align 8, !tbaa !82
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.m, ptr noundef nonnull align 4 dereferenceable(52) %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %i.p, i64 80, i1 false), !tbaa.struct !83
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.s = atomicrmw add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3MatC2EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = and i32 %3, 4095
  %i.b = or disjoint i32 %i.a, 1124007936
  store i32 %i.b, ptr %0, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 2, ptr %i.c, align 4, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %1, ptr %i.d, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 %2, ptr %i.e, align 4, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.f, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %4, ptr %i.g, align 8, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %4, ptr %i.h, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  tail call void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.k, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.l, i8 0, i64 80, i1 false), !tbaa !22
  %i.m = load i32, ptr %i.c, align 4, !tbaa !70   ; 8 uses
  %i.n = icmp slt i32 %i.m, 3
  br i1 %i.n, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.o = load i32, ptr %i.k, align 8, !tbaa !29
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 9 uses
  %i.q = zext nneg i32 %i.m to i64                ; 2 uses
  %i.r = add nsw i32 %i.m, -1
  %.not.not.i = icmp samesign ugt i32 %narrow.i.i, %i.r
  br i1 %.not.not.i, label %_ZNK2cv8MatShapeixEm.exit.i.preheader, label %bb.c

_ZNK2cv8MatShapeixEm.exit.i.preheader:            ; preds = %.preheader.i
  %xtraiter = and i64 %i.q, 7                     ; 3 uses
  %i.s = icmp ult i32 %i.m, 8
  br i1 %i.s, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.preheader.new

_ZNK2cv8MatShapeixEm.exit.i.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %unroll_iter = and i64 %i.q, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %i.d, align 8, !tbaa !73
  %i.u = sext i32 %i.t to i64
  %i.v = load i32, ptr %i.e, align 4, !tbaa !72
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, %i.u
  br label %_ZNK2cv3Mat5totalEv.exit

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.069.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %i.bk, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !32
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul i64 %.069.i, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !32
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.ab, %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32
  %i.ak = sext i32 %i.aj to i64
  %i.al = mul i64 %i.ag, %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !32
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.al, %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i32, ptr %i.as, align 4, !tbaa !32
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !32
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul i64 %i.av, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !32
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %i.ba, %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !32
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul i64 %i.bf, %i.bj                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !7

bb.c:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %9)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !25
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume

_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa:      ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %indvars.iv.next.i.7, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ]
  %.069.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %i.bk, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod79 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod79)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ] ; 2 uses
  %.069.i.epil = phi i64 [ %i.bu, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %.069.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.epil
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !32
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %.069.i.epil, %i.bt             ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !168

_ZNK2cv3Mat5totalEv.exit:                         ; preds = %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.epil, %bb.b
  %.07.i = phi i64 [ %i.x, %bb.b ], [ %i.bk, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ], [ %i.bu, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.bv = icmp eq i64 %.07.i, 0
  br i1 %i.bv, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_ZNK2cv3Mat5totalEv.exit
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !75
  %.not = icmp eq ptr %i.bw, null
  br i1 %.not, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 823) #25
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %10, align 8, !tbaa !24   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !25
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.by, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %common.resume

bb.l:                                             ; preds = %bb.f, %_ZNK2cv3Mat5totalEv.exit
  %i.ce = lshr i32 %3, 5
  %i.cf = and i32 %i.ce, 127
  %i.cg = add nuw nsw i32 %i.cf, 1
  %i.ch = shl i32 %3, 2
  %i.ci = and i32 %i.ch, 124
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = lshr i64 1275511473185297, %i.cj        ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = and i32 %i.cl, 15
  %i.cn = mul nuw nsw i32 %i.cm, %i.cg
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cp = and i64 %i.ck, 15
  %i.cq = load i32, ptr %i.e, align 4, !tbaa !72  ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul nsw i64 %i.cr, %i.co                ; 3 uses
  %i.ct = icmp eq i64 %5, 0
  br i1 %i.ct, label %bb.y, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not30 = icmp ult i64 %5, %i.cs
  br i1 %.not30, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 833) #25
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.r:                                             ; preds = %bb.o
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = load ptr, ptr %12, align 8, !tbaa !24   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.r
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !25
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.q
  %.pn31 = phi { ptr, i32 } [ %i.cu, %bb.q ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.cv, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %common.resume

bb.s:                                             ; preds = %bb.m
  %i.db = urem i64 %5, %i.cp
  %.not33 = icmp eq i64 %i.db, 0
  br i1 %.not33, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 836) #25
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.x:                                             ; preds = %bb.u
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.de = load ptr, ptr %14, align 8, !tbaa !24   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.x
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !25
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.w
  %.pn34 = phi { ptr, i32 } [ %i.dc, %bb.w ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.dd, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %common.resume

bb.y:                                             ; preds = %bb.l, %bb.s
  %.027 = phi i64 [ %5, %bb.s ], [ %i.cs, %bb.l ] ; 3 uses
  %i.dj = load i32, ptr %i.d, align 8, !tbaa !73  ; 2 uses
  %i.dk = load i32, ptr %i.k, align 8, !tbaa !29
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  store i32 %i.dj, ptr %i.dl, align 4, !tbaa !32
  %i.dm = icmp sgt i32 %i.dk, 1
  br i1 %i.dm, label %_ZN2cv8MatShapeixEm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 97) #25
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ab
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !25
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.y
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.cq, ptr %i.dt, align 8, !tbaa !32
  store i64 %.027, ptr %i.l, align 8, !tbaa !22
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.co, ptr %i.du, align 8, !tbaa !22
  %i.dv = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.dw = sext i32 %i.dj to i64
  %i.dx = mul i64 %.027, %i.dw
end_hunk_3
begin_hunk_4_@_ZN2cv3MatC2EiiiPvm:bb.a
  %storemerge.lcssa.i.i = phi i32 [ %i.ei, %.split.loop.exit.i.i ], [ %i.m, %bb.ad ] ; 4 uses
  %i.ej = add nsw i32 %i.m, -1                    ; 3 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.ej, i32 %storemerge.lcssa.i.i)
  %i.ek = sext i32 %.sroa.speculated.i.i to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !32
  %i.en = sext i32 %i.em to i64
  %i.eo = lshr i32 %i.ec, 5
  %i.ep = and i32 %i.eo, 127
  %i.eq = add nuw nsw i32 %i.ep, 1
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = mul nsw i64 %i.en, %i.er                ; 2 uses
  %i.et = icmp sgt i32 %i.ej, %storemerge.lcssa.i.i
  br i1 %i.et, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.split.loop.exit48.i.i
  %i.eu = zext nneg i32 %i.ej to i64
  %i.ev = sext i32 %storemerge.lcssa.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ae, %.lr.ph.preheader.i.i
  %indvars.iv43.i.i = phi i64 [ %i.eu, %.lr.ph.preheader.i.i ], [ %indvars.iv.next44.i.i, %bb.ae ] ; 4 uses
  %.037.i.i = phi i64 [ %i.es, %.lr.ph.preheader.i.i ], [ %i.ez, %bb.ae ]
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %indvars.iv43.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !32
  %i.ey = sext i32 %i.ex to i64                   ; 2 uses
  %i.ez = mul i64 %.037.i.i, %i.ey                ; 3 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv43.i.i ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !22
  %i.fc = mul i64 %i.fb, %i.ey
  %i.fd = getelementptr i8, ptr %i.fa, i64 -8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !22
  %i.ff = icmp ult i64 %i.fc, %i.fe
  br i1 %i.ff, label %._crit_edge.loopexit.split.loop.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next44.i.i = add nsw i64 %indvars.iv43.i.i, -1 ; 2 uses
  %i.fg = icmp sgt i64 %indvars.iv.next44.i.i, %i.ev
  br i1 %i.fg, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !6

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %.lr.ph.i.i
  %i.fh = trunc nsw i64 %indvars.iv43.i.i to i32
  %i.fi = icmp sge i32 %storemerge.lcssa.i.i, %i.fh
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ae, %._crit_edge.loopexit.split.loop.exit.i.i, %.split.loop.exit48.i.i
  %.024.lcssa.i.i = phi i1 [ true, %.split.loop.exit48.i.i ], [ %i.fi, %._crit_edge.loopexit.split.loop.exit.i.i ], [ true, %bb.ae ]
  %.1.i.i = phi i64 [ %i.es, %.split.loop.exit48.i.i ], [ %i.ez, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.ez, %bb.ae ]
  %i.fj = add i64 %.1.i.i, 2147483648
  %i.fk = icmp ult i64 %i.fj, 4294967296
  %or.cond.i.i = select i1 %.024.lcssa.i.i, i1 %i.fk, i1 false
  %i.fl = and i32 %i.ec, -16385
  %masksel.i.i = select i1 %or.cond.i.i, i32 16384, i32 0
  %.025.i.i = or disjoint i32 %masksel.i.i, %i.fl
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

_ZN2cv3Mat20updateContinuityFlagEv.exit:          ; preds = %bb.ac, %._crit_edge.i.i
  %.126.i.i = phi i32 [ %i.ee, %bb.ac ], [ %.025.i.i, %._crit_edge.i.i ]
  store i32 %.126.i.i, ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK2cv3Mat5totalEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !70   ; 4 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 9 uses
  %i.g = zext nneg i32 %i.b to i64                ; 2 uses
  %i.h = add nsw i32 %i.b, -1
  %.not.not = icmp samesign ugt i32 %narrow.i, %i.h
  br i1 %.not.not, label %_ZNK2cv8MatShapeixEm.exit.preheader, label %bb.c

_ZNK2cv8MatShapeixEm.exit.preheader:              ; preds = %.preheader
  %xtraiter = and i64 %i.g, 7                     ; 3 uses
  %i.i = icmp ult i32 %i.b, 8
  br i1 %i.i, label %_ZNK2cv8MatShapeixEm.exit.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.preheader.new

_ZNK2cv8MatShapeixEm.exit.preheader.new:          ; preds = %_ZNK2cv8MatShapeixEm.exit.preheader
  %unroll_iter = and i64 %i.g, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !73
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !72
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.o, %i.l
  br label %.loopexit

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %_ZNK2cv8MatShapeixEm.exit, %_ZNK2cv8MatShapeixEm.exit.preheader.new
  %indvars.iv = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.preheader.new ], [ %indvars.iv.next.7, %_ZNK2cv8MatShapeixEm.exit ] ; 9 uses
  %.069 = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.preheader.new ], [ %i.bc, %_ZNK2cv8MatShapeixEm.exit ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !32
  %i.s = sext i32 %i.r to i64
  %i.t = mul i64 %.069, %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 8, !tbaa !32
  %i.x = sext i32 %i.w to i64
  %i.y = mul i64 %i.t, %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul i64 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !32
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul i64 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32
  %i.am = sext i32 %i.al to i64
  %i.an = mul i64 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !32
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul i64 %i.an, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i32, ptr %i.au, align 4, !tbaa !32
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !32
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul i64 %i.ax, %i.bb                    ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit, !llvm.loop !7

bb.c:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %2)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !25
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.bd

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZNK2cv8MatShapeixEm.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK2cv8MatShapeixEm.exit.epil.preheader

_ZNK2cv8MatShapeixEm.exit.epil.preheader:         ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.preheader ], [ %indvars.iv.next.7, %.loopexit.loopexit.unr-lcssa ]
  %.069.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.preheader ], [ %i.bc, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %_ZNK2cv8MatShapeixEm.exit.epil

_ZNK2cv8MatShapeixEm.exit.epil:                   ; preds = %_ZNK2cv8MatShapeixEm.exit.epil, %_ZNK2cv8MatShapeixEm.exit.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %_ZNK2cv8MatShapeixEm.exit.epil ], [ %indvars.iv.epil.init, %_ZNK2cv8MatShapeixEm.exit.epil.preheader ] ; 2 uses
  %.069.epil = phi i64 [ %i.bm, %_ZNK2cv8MatShapeixEm.exit.epil ], [ %.069.epil.init, %_ZNK2cv8MatShapeixEm.exit.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.epil.preheader ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.epil
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !32
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul i64 %.069.epil, %i.bl               ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %_ZNK2cv8MatShapeixEm.exit.epil, !llvm.loop !169

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.epil, %bb.b
  %.07 = phi i64 [ %i.p, %bb.b ], [ %i.bc, %.loopexit.loopexit.unr-lcssa ], [ %i.bm, %_ZNK2cv8MatShapeixEm.exit.epil ]
  ret i64 %.07
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3MatC2ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0, i64 %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.a = and i32 %2, 4095
  %i.b = or disjoint i32 %i.a, 1124007936
  store i32 %i.b, ptr %0, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 2, ptr %i.c, align 4, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 %.sroa.2.0.extract.trunc, ptr %i.d, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 %.sroa.0.0.extract.trunc, ptr %i.e, align 4, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.f, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %3, ptr %i.g, align 8, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %3, ptr %i.h, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  tail call void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.k, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.l, i8 0, i64 80, i1 false), !tbaa !22
  %i.m = load i32, ptr %i.c, align 4, !tbaa !70   ; 8 uses
  %i.n = icmp slt i32 %i.m, 3
  br i1 %i.n, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.o = load i32, ptr %i.k, align 8, !tbaa !29
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 9 uses
  %i.q = zext nneg i32 %i.m to i64                ; 2 uses
  %i.r = add nsw i32 %i.m, -1
  %.not.not.i = icmp samesign ugt i32 %narrow.i.i, %i.r
  br i1 %.not.not.i, label %_ZNK2cv8MatShapeixEm.exit.i.preheader, label %bb.c

_ZNK2cv8MatShapeixEm.exit.i.preheader:            ; preds = %.preheader.i
  %xtraiter = and i64 %i.q, 7                     ; 3 uses
  %i.s = icmp ult i32 %i.m, 8
  br i1 %i.s, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.preheader.new

_ZNK2cv8MatShapeixEm.exit.i.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %unroll_iter = and i64 %i.q, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %i.d, align 8, !tbaa !73
  %i.u = sext i32 %i.t to i64
  %i.v = load i32, ptr %i.e, align 4, !tbaa !72
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, %i.u
  br label %_ZNK2cv3Mat5totalEv.exit

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.069.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %i.bk, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !32
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul i64 %.069.i, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !32
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.ab, %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32
  %i.ak = sext i32 %i.aj to i64
  %i.al = mul i64 %i.ag, %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !32
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.al, %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i32, ptr %i.as, align 4, !tbaa !32
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !32
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul i64 %i.av, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !32
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %i.ba, %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !32
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul i64 %i.bf, %i.bj                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !7

bb.c:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !25
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa:      ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %indvars.iv.next.i.7, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ]
  %.069.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %i.bk, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod73 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod73)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ] ; 2 uses
  %.069.i.epil = phi i64 [ %i.bu, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %.069.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.epil
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !32
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %.069.i.epil, %i.bt             ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !170

_ZNK2cv3Mat5totalEv.exit:                         ; preds = %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.epil, %bb.b
  %.07.i = phi i64 [ %i.x, %bb.b ], [ %i.bk, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ], [ %i.bu, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.bv = icmp eq i64 %.07.i, 0
  br i1 %i.bv, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_ZNK2cv3Mat5totalEv.exit
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !75
  %.not = icmp eq ptr %i.bw, null
  br i1 %.not, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 853) #25
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !25
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.by, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %common.resume

bb.l:                                             ; preds = %bb.f, %_ZNK2cv3Mat5totalEv.exit
  %i.ce = lshr i32 %2, 5
  %i.cf = and i32 %i.ce, 127
  %i.cg = add nuw nsw i32 %i.cf, 1
  %i.ch = shl i32 %2, 2
  %i.ci = and i32 %i.ch, 124
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = lshr i64 1275511473185297, %i.cj        ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = and i32 %i.cl, 15
  %i.cn = mul nuw nsw i32 %i.cm, %i.cg
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cp = and i64 %i.ck, 15
  %i.cq = load i32, ptr %i.e, align 4, !tbaa !72  ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul nsw i64 %i.cr, %i.co                ; 5 uses
  %i.ct = icmp eq i64 %4, 0
  br i1 %i.ct, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cu = icmp ult i64 %4, %i.cs
  br i1 %i.cu, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cv = load i32, ptr %i.d, align 8, !tbaa !73
  %i.cw = icmp eq i32 %i.cv, 1
  br i1 %i.cw, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %4, i64 noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3MatC1ENS_5Size_IiEEiPvmE15__cv_check__863) #25
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.cx = urem i64 %4, %i.cp
  %.not32 = icmp eq i64 %i.cx, 0
  br i1 %.not32, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -13, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 867) #25
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

bb.u:                                             ; preds = %bb.r
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %11, align 8, !tbaa !24   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.u
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !25
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.t
  %.pn33 = phi { ptr, i32 } [ %i.cy, %bb.t ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %i.cz, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %common.resume

bb.v:                                             ; preds = %bb.l, %bb.n, %bb.p
  %.027 = phi i64 [ %4, %bb.p ], [ %i.cs, %bb.n ], [ %i.cs, %bb.l ] ; 3 uses
  %i.df = load i32, ptr %i.d, align 8, !tbaa !73  ; 2 uses
  %i.dg = load i32, ptr %i.k, align 8, !tbaa !29
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  store i32 %i.df, ptr %i.dh, align 4, !tbaa !32
  %i.di = icmp sgt i32 %i.dg, 1
  br i1 %i.di, label %_ZN2cv8MatShapeixEm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 97) #25
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.y
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !25
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.v
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.cq, ptr %i.dp, align 8, !tbaa !32
  store i64 %.027, ptr %i.l, align 8, !tbaa !22
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.co, ptr %i.dq, align 8, !tbaa !22
  %i.dr = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.ds = sext i32 %i.df to i64
  %i.dt = mul i64 %.027, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dt ; 2 uses
  store ptr %i.du, ptr %i.j, align 8, !tbaa !77
  %i.dv = sub i64 0, %.027
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.cs
  store ptr %i.dx, ptr %i.i, align 8, !tbaa !78
  %i.dy = load i32, ptr %0, align 8, !tbaa !71    ; 3 uses
  %i.dz = icmp slt i32 %i.m, 2
  br i1 %i.dz, label %bb.z, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN2cv8MatShapeixEm.exit
  %wide.trip.count.i.i = zext nneg i32 %i.m to i64
  br label %.preheader.i.i

bb.z:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.ea = or i32 %i.dy, 16384
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

.preheader.i.i:                                   ; preds = %bb.aa, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.aa ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !32
  %i.ed = icmp sgt i32 %i.ec, 1
  br i1 %i.ed, label %.split.loop.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %.preheader.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.split.loop.exit48.i.i, label %.preheader.i.i, !llvm.loop !5

.split.loop.exit.i.i:                             ; preds = %.preheader.i.i
  %i.ee = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %.split.loop.exit48.i.i

.split.loop.exit48.i.i:                           ; preds = %bb.aa, %.split.loop.exit.i.i
  %storemerge.lcssa.i.i = phi i32 [ %i.ee, %.split.loop.exit.i.i ], [ %i.m, %bb.aa ] ; 4 uses
  %i.ef = add nsw i32 %i.m, -1                    ; 3 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.ef, i32 %storemerge.lcssa.i.i)
  %i.eg = sext i32 %.sroa.speculated.i.i to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !32
  %i.ej = sext i32 %i.ei to i64
  %i.ek = lshr i32 %i.dy, 5
  %i.el = and i32 %i.ek, 127
  %i.em = add nuw nsw i32 %i.el, 1
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = mul nsw i64 %i.ej, %i.en                ; 2 uses
  %i.ep = icmp sgt i32 %i.ef, %storemerge.lcssa.i.i
  br i1 %i.ep, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.split.loop.exit48.i.i
  %i.eq = zext nneg i32 %i.ef to i64
  %i.er = sext i32 %storemerge.lcssa.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab, %.lr.ph.preheader.i.i
  %indvars.iv43.i.i = phi i64 [ %i.eq, %.lr.ph.preheader.i.i ], [ %indvars.iv.next44.i.i, %bb.ab ] ; 4 uses
  %.037.i.i = phi i64 [ %i.eo, %.lr.ph.preheader.i.i ], [ %i.ev, %bb.ab ]
  %i.es = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %indvars.iv43.i.i
  %i.et = load i32, ptr %i.es, align 4, !tbaa !32
  %i.eu = sext i32 %i.et to i64                   ; 2 uses
  %i.ev = mul i64 %.037.i.i, %i.eu                ; 3 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv43.i.i ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !22
  %i.ey = mul i64 %i.ex, %i.eu
  %i.ez = getelementptr i8, ptr %i.ew, i64 -8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !22
  %i.fb = icmp ult i64 %i.ey, %i.fa
  br i1 %i.fb, label %._crit_edge.loopexit.split.loop.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next44.i.i = add nsw i64 %indvars.iv43.i.i, -1 ; 2 uses
  %i.fc = icmp sgt i64 %indvars.iv.next44.i.i, %i.er
  br i1 %i.fc, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !6

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %.lr.ph.i.i
  %i.fd = trunc nsw i64 %indvars.iv43.i.i to i32
  %i.fe = icmp sge i32 %storemerge.lcssa.i.i, %i.fd
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ab, %._crit_edge.loopexit.split.loop.exit.i.i, %.split.loop.exit48.i.i
  %.024.lcssa.i.i = phi i1 [ true, %.split.loop.exit48.i.i ], [ %i.fe, %._crit_edge.loopexit.split.loop.exit.i.i ], [ true, %bb.ab ]
  %.1.i.i = phi i64 [ %i.eo, %.split.loop.exit48.i.i ], [ %i.ev, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.ev, %bb.ab ]
  %i.ff = add i64 %.1.i.i, 2147483648
  %i.fg = icmp ult i64 %i.ff, 4294967296
  %or.cond.i.i = select i1 %.024.lcssa.i.i, i1 %i.fg, i1 false
  %i.fh = and i32 %i.dy, -16385
  %masksel.i.i = select i1 %or.cond.i.i, i32 16384, i32 0
  %.025.i.i = or disjoint i32 %masksel.i.i, %i.fh
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

_ZN2cv3Mat20updateContinuityFlagEv.exit:          ; preds = %bb.z, %._crit_edge.i.i
  %.126.i.i = phi i32 [ %i.ea, %bb.z ], [ %.025.i.i, %._crit_edge.i.i ]
  store i32 %.126.i.i, ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv3MatD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(208) dereferenceable(208) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat7releaseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN2cv3Mat10deallocateEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN2cv3Mat10deallocateEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !74   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN2cv3Mat10deallocateEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84   ; 2 uses
  %.not6.i = icmp eq ptr %i.h, null
  br i1 %.not6.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80   ; 2 uses
  %.not7.i = icmp eq ptr %i.j, null
  br i1 %.not7.i, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.k = load atomic i8, ptr @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.g, label %_ZN2cv3Mat19getDefaultAllocatorEv.exit.i, !prof !66

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator) #24, !inline_history !171
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %_ZN2cv3Mat19getDefaultAllocatorEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = invoke noundef ptr @_ZN2cv3Mat15getStdAllocatorEv()
          to label %bb.i unwind label %bb.j, !inline_history !171

bb.i:                                             ; preds = %bb.h
  store ptr %i.n, ptr @_ZZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator, align 8, !tbaa !67
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator) #24, !inline_history !171
  br label %_ZN2cv3Mat19getDefaultAllocatorEv.exit.i

bb.j:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator) #24, !inline_history !171
  resume { ptr, i32 } %i.o

_ZN2cv3Mat19getDefaultAllocatorEv.exit.i:         ; preds = %bb.i, %bb.g, %bb.f
  %i.p = load ptr, ptr @_ZZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator, align 8, !tbaa !67
  br label %bb.k

bb.k:                                             ; preds = %_ZN2cv3Mat19getDefaultAllocatorEv.exit.i, %bb.e, %bb.d
  %i.q = phi ptr [ %i.p, %_ZN2cv3Mat19getDefaultAllocatorEv.exit.i ], [ %i.h, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.f), !inline_history !172
  br label %_ZN2cv3Mat10deallocateEv.exit

_ZN2cv3Mat10deallocateEv.exit:                    ; preds = %bb.k, %bb.c, %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  %i.w = load i32, ptr %i.v, align 4, !tbaa !70   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv3Mat10deallocateEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.aa, i1 false), !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN2cv3Mat10deallocateEv.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !71
  %i.ac = and i32 %i.ab, 4095
  %i.ad = or disjoint i32 %i.ac, 1124007936
  store i32 %i.ad, ptr %0, align 8, !tbaa !71
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !72
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.af, align 8, !tbaa !73
  store i32 0, ptr %i.v, align 4, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 -1, ptr %i.ag, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.ah, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(208) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not18 = icmp eq ptr %i.b, null
  br i1 %.not18, label %.loopexit.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = atomicrmw add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  br label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.c, %bb.b
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.e = load <4 x i32>, ptr %1, align 8, !tbaa !32
  store <4 x i32> %i.e, ptr %0, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load <2 x i32>, ptr %i.f, align 8, !tbaa !25
  store <2 x i32> %i.h, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.j, ptr %i.k, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.n = load i32, ptr %i.l, align 4, !tbaa !32
  store i32 %i.n, ptr %i.m, align 4, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load i32, ptr %i.o, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.p, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.s = load i32, ptr %i.r, align 4, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.s, ptr %i.t, align 4, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.v, ptr %i.w, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.y = load i32, ptr %i.x, align 4, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.y, ptr %i.z, align 4, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.an = load i32, ptr %i.am, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noundef nonnull align 8 dereferenceable(80) %i.ap, i64 80, i1 false), !tbaa.struct !83
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !62
  store <2 x ptr> %i.at, ptr %i.as, align 8, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load <2 x ptr>, ptr %i.au, align 8, !tbaa !62
  store <2 x ptr> %i.aw, ptr %i.av, align 8, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !82
  store <2 x ptr> %i.az, ptr %i.ay, align 8, !tbaa !82
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.loopexit.i, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.b, align 8
  store i32 33619968, ptr %2, align 8, !tbaa !87
  store ptr %0, ptr %i.a, align 8, !tbaa !88
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #24
  resume { ptr, i32 } %i.c
}

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3Mat8assignToERS0_i(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %0) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.d, align 8
  store i32 33619968, ptr %3, align 8, !tbaa !87
  store ptr %1, ptr %i.c, align 8, !tbaa !88
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %2, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 2 uses
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32 ; 2 uses
  %i.b = and i32 %2, 4095                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !70
  %i.e = icmp slt i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %.sroa.2.0.extract.trunc
  %or.cond.i = select i1 %i.e, i1 %i.h, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, %.sroa.0.0.extract.trunc
  %or.cond11.i = select i1 %or.cond.i, i1 %i.k, i1 false
  br i1 %or.cond11.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %0, align 8, !tbaa !71
  %i.m = and i32 %i.l, 4095
  %i.n = icmp ne i32 %i.m, %i.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %.not.i = icmp eq ptr %i.p, null
  %or.cond13.i = select i1 %i.n, i1 true, i1 %.not.i
  br i1 %or.cond13.i, label %bb.c, label %_ZN2cv3Mat6createEiii.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %.sroa.2.0.extract.trunc, ptr %i.a, align 4, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.0.0.extract.trunc, ptr %i.q, align 4, !tbaa !32
  call void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN2cv3Mat6createEiii.exit

_ZN2cv3Mat6createEiii.exit:                       ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat14createSameSizeERKNS_11_InputArrayEi(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.cv::MatShape", align 4     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNK2cv11_InputArray5shapeEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::MatShape") align 4 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  %i.a = load i32, ptr %3, align 4, !tbaa !29     ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  br label %_ZN2cv3Mat6createERKNS_8MatShapeEi.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.a, ptr noundef nonnull %i.c, i32 noundef %2)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.f = load <2 x i32>, ptr %i.d, align 4, !tbaa !25
  store <2 x i32> %i.f, ptr %i.e, align 4, !tbaa !25
  br label %_ZN2cv3Mat6createERKNS_8MatShapeEi.exit

_ZN2cv3Mat6createERKNS_8MatShapeEi.exit:          ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

declare void @_ZNK2cv11_InputArray5shapeEi(ptr dead_on_unwind writable sret(%"struct.cv::MatShape") align 4, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat3fitEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !89
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.g = lshr i32 %3, 5
  %i.h = and i32 %i.g, 127
  %i.i = add nuw nsw i32 %i.h, 1
  %i.j = shl i32 %3, 2
  %i.k = and i32 %i.j, 124
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 1275511473185297, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 15
  %i.p = mul nuw nsw i32 %i.o, %i.i
  %i.q = zext nneg i32 %i.p to i64
  %i.r = icmp sgt i32 %1, -1                      ; 3 uses
  %i.s = zext i1 %i.r to i64                      ; 3 uses
  %i.t = icmp sgt i32 %1, 0
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.u = icmp ult i32 %1, 8
  br i1 %i.u, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %.02230.epil.init = phi i64 [ %i.s, %.lr.ph.preheader ], [ %i.bm, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod36 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod36)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.02230.epil = phi i64 [ %.02230.epil.init, %.lr.ph.epil.preheader ], [ %i.y, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil
  %i.w = load i32, ptr %i.v, align 4, !tbaa !32
  %i.x = sext i32 %i.w to i64
  %i.y = mul i64 %.02230.epil, %i.x               ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !173

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.c
  %.022.lcssa = phi i64 [ %i.s, %bb.c ], [ %i.bm, %._crit_edge.loopexit.unr-lcssa ], [ %i.y, %.lr.ph.epil ]
  %i.z = mul i64 %.022.lcssa, %i.q                ; 2 uses
  %.not26 = icmp eq i64 %i.z, 0
  %.pre = load i32, ptr %0, align 8, !tbaa !71    ; 2 uses
  br i1 %.not26, label %bb.g, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %.02230 = phi i64 [ %i.s, %.lr.ph.preheader.new ], [ %i.bm, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul i64 %.02230, %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !32
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul i64 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32
  %i.am = sext i32 %i.al to i64
  %i.an = mul i64 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !32
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul i64 %i.an, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !32
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !32
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul i64 %i.ax, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !32
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul i64 %i.bc, %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !32
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul i64 %i.bh, %i.bl                    ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !174

bb.d:                                             ; preds = %._crit_edge
  %i.bn = and i32 %.pre, 16384
  %.not29 = icmp eq i32 %i.bn, 0
  %i.bo = icmp ugt i64 %i.z, %i.f
  %or.cond = select i1 %.not29, i1 true, i1 %i.bo
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !75
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !76
  %.not27 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %._crit_edge
  %i.bt = and i32 %.pre, -4096
  %i.bu = and i32 %3, 4095
  %i.bv = or disjoint i32 %i.bt, %i.bu
  store i32 %i.bv, ptr %0, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !32
  %i.bw = select i1 %i.r, i32 %1, i32 1
  %i.bx = select i1 %i.r, ptr %2, ptr %i.a
  call void @_ZN2cv7setSizeERNS_3MatEiPKiPKmb(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.bw, ptr noundef %i.bx, ptr noundef null, i1 noundef zeroext true)
  call void @_ZN2cv11finalizeHdrERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat3fitERKSt6vectorIiSaIiEEi(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32
  tail call void @_ZN2cv3Mat3fitEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.h, ptr noundef %i.c, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat3fitERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(52) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  tail call void @_ZN2cv3Mat3fitEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.a, ptr noundef nonnull %i.b, i32 noundef %2)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = load <2 x i32>, ptr %i.c, align 4, !tbaa !25
  store <2 x i32> %i.e, ptr %i.d, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat3fitESt16initializer_listIiEi(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree readonly captures(none) %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [10 x i32], align 16              ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = trunc i64 %2 to i32                      ; 3 uses
  %i.c = icmp slt i32 %i.b, 11
  br i1 %i.c, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.e = shl i64 %2, 2
  %i.f = and i64 %i.e, 8589934588
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 4 %1, i64 %i.f, i1 false), !tbaa !32
  br label %._crit_edge

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv3Mat3fitESt16initializer_listIiEi, ptr noundef nonnull @.str.10, i32 noundef 978) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !tbaa !25
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  resume { ptr, i32 } %i.g

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  call void @_ZN2cv3Mat3fitEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.b, ptr noundef nonnull %i.a, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat3fitEiii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = and i32 %3, 4095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %1, ptr %i.a, align 4, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %2, ptr %i.c, align 4, !tbaa !32
  call void @_ZN2cv3Mat3fitEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat3fitENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %2, 4095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %.sroa.2.0.extract.trunc, ptr %i.a, align 4, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.0.0.extract.trunc, ptr %i.c, align 4, !tbaa !32
  call void @_ZN2cv3Mat3fitEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat11fitSameSizeERKNS_11_InputArrayEi(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = call noundef i32 @_ZNK2cv11_InputArray6sizendEPii(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a, i32 noundef -1)
  call void @_ZN2cv3Mat3fitEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.b, ptr noundef nonnull %i.a, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

declare noundef i32 @_ZNK2cv11_InputArray6sizendEPii(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN2cv3Mat6addrefEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = atomicrmw add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat10deallocateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84   ; 2 uses
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
end_hunk_4
begin_hunk_5_@_ZN2cv3Mat10deallocateEv:bb.a
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZN2cv3Mat19getDefaultAllocatorEv.exit, !prof !66

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator) #24, !inline_history !8
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN2cv3Mat19getDefaultAllocatorEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = invoke noundef ptr @_ZN2cv3Mat15getStdAllocatorEv()
          to label %bb.g unwind label %bb.h, !inline_history !8

bb.g:                                             ; preds = %bb.f
  store ptr %i.j, ptr @_ZZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator, align 8, !tbaa !67
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator) #24, !inline_history !8
  br label %_ZN2cv3Mat19getDefaultAllocatorEv.exit

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator) #24, !inline_history !8
  resume { ptr, i32 } %i.k

_ZN2cv3Mat19getDefaultAllocatorEv.exit:           ; preds = %bb.d, %bb.e, %bb.g
  %i.l = load ptr, ptr @_ZZN2cvL25getDefaultAllocatorMatRefEvE14g_matAllocator, align 8, !tbaa !67
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.b, %_ZN2cv3Mat19getDefaultAllocatorEv.exit
  %i.m = phi ptr [ %i.l, %_ZN2cv3Mat19getDefaultAllocatorEv.exit ], [ %i.d, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK2cv3Mat5step1Ei(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22
  %i.e = load i32, ptr %0, align 8, !tbaa !71
  %i.f = shl i32 %i.e, 2
  %i.g = and i32 %i.f, 124
  %i.h = zext nneg i32 %i.g to i64
  %i.i = lshr i64 1275511473185297, %i.h
  %i.j = and i64 %i.i, 15
  %i.k = udiv i64 %i.d, %i.j
  ret i64 %i.k
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !70   ; 4 uses
  %i.f = icmp slt i32 %i.e, 3
  br i1 %i.f, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 9 uses
  %i.j = zext nneg i32 %i.e to i64                ; 2 uses
  %i.k = add nsw i32 %i.e, -1
  %.not.not.i = icmp samesign ugt i32 %narrow.i.i, %i.k
  br i1 %.not.not.i, label %_ZNK2cv8MatShapeixEm.exit.i.preheader, label %bb.d

_ZNK2cv8MatShapeixEm.exit.i.preheader:            ; preds = %.preheader.i
  %xtraiter = and i64 %i.j, 7                     ; 3 uses
  %i.l = icmp ult i32 %i.e, 8
  br i1 %i.l, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.preheader.new

_ZNK2cv8MatShapeixEm.exit.i.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %unroll_iter = and i64 %i.j, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !73
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !72
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, %i.o
  br label %_ZNK2cv3Mat5totalEv.exit

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.069.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %i.bf, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !32
  %i.v = sext i32 %i.u to i64
  %i.w = mul i64 %.069.i, %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 8, !tbaa !32
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul i64 %i.w, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !32
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.ab, %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !32
  %i.ak = sext i32 %i.aj to i64
  %i.al = mul i64 %i.ag, %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.al, %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.at = load i32, ptr %i.as, align 8, !tbaa !32
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !32
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul i64 %i.av, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !32
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %i.ba, %i.be                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !7

bb.d:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %2)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !25
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.bg

_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa:      ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %indvars.iv.next.i.7, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ]
  %.069.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %i.bf, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ] ; 2 uses
  %.069.i.epil = phi i64 [ %i.bp, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %.069.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i.epil
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !32
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul i64 %.069.i.epil, %i.bo             ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !175

_ZNK2cv3Mat5totalEv.exit:                         ; preds = %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.epil, %bb.c
  %.07.i = phi i64 [ %i.s, %bb.c ], [ %i.bf, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ], [ %i.bp, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.bq = icmp eq i64 %.07.i, 0
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2cv3Mat5totalEv.exit, %bb.a
  %i.br = phi i1 [ true, %bb.a ], [ %i.bq, %_ZNK2cv3Mat5totalEv.exit ]
  ret i1 %i.br
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK2cv3Mat5totalEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = icmp slt i32 %1, 0
  %.not = icmp sgt i32 %1, %2
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.48, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv3Mat5totalEii, ptr noundef nonnull @.str.10, i32 noundef 1045) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !24     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.g = load i64, ptr %i.e, align 8, !tbaa !25
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !70
  %. = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.j) ; 3 uses
  %i.k = icmp slt i32 %1, %.
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load i32, ptr %i.l, align 8, !tbaa !29
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.m, i32 1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.o = zext nneg i32 %. to i64
  %i.p = tail call i32 @llvm.usub.sat.i32(i32 %narrow.i, i32 %1)
  %i.q = xor i32 %1, -1
  %i.r = add nsw i32 %., %i.q
  %.not31.not = icmp ugt i32 %i.p, %i.r
  br i1 %.not31.not, label %.lr.ph.split, label %bb.h

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.s = zext nneg i32 %1 to i64
  br label %_ZNK2cv8MatShapeixEm.exit

._crit_edge:                                      ; preds = %_ZNK2cv8MatShapeixEm.exit, %bb.g
  %.014.lcssa = phi i64 [ 1, %bb.g ], [ %i.w, %_ZNK2cv8MatShapeixEm.exit ]
  ret i64 %.014.lcssa

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %.lr.ph.split, %_ZNK2cv8MatShapeixEm.exit
  %indvars.iv = phi i64 [ %i.s, %.lr.ph.split ], [ %indvars.iv.next, %_ZNK2cv8MatShapeixEm.exit ] ; 2 uses
  %.01423 = phi i64 [ 1, %.lr.ph.split ], [ %i.w, %_ZNK2cv8MatShapeixEm.exit ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !32
  %i.v = sext i32 %i.u to i64
  %i.w = mul i64 %.01423, %i.v                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.x, label %_ZNK2cv8MatShapeixEm.exit, label %._crit_edge, !llvm.loop !176

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !25
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv3MatC2EOS0_(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <4 x i32>, ptr %1, align 8, !tbaa !32
  store <4 x i32> %i.a, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.b, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !62
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !tbaa !62
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !82
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.l, ptr noundef nonnull align 4 dereferenceable(52) %i.m)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 80, i1 false), !tbaa.struct !83
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %1, align 8, !tbaa !32
  store i32 -1, ptr %i.m, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i8 0, i64 80, i1 false), !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(208) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(208) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.b, label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load <4 x i32>, ptr %1, align 8, !tbaa !32
  store <4 x i32> %i.b, ptr %0, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.i = load <2 x i32>, ptr %i.f, align 8, !tbaa !25
  store <2 x i32> %i.i, ptr %i.g, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i32, ptr %i.j, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.k, ptr %i.l, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.o = load i32, ptr %i.m, align 4, !tbaa !32
  store i32 %i.o, ptr %i.n, align 4, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.q, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.t = load i32, ptr %i.s, align 4, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.t, ptr %i.u, align 4, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load i32, ptr %i.v, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.w, ptr %i.x, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.z = load i32, ptr %i.y, align 4, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.al, ptr %i.am, align 4, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, ptr noundef nonnull align 8 dereferenceable(80) %i.aq, i64 80, i1 false), !tbaa.struct !83
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load <2 x ptr>, ptr %i.as, align 8, !tbaa !62
  store <2 x ptr> %i.au, ptr %i.at, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load <2 x ptr>, ptr %i.av, align 8, !tbaa !82
  store <2 x ptr> %i.ax, ptr %i.aw, align 8, !tbaa !82
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !74
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !74
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %1, align 8, !tbaa !32
  store i32 -1, ptr %i.f, align 8, !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.h, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, i8 0, i64 80, i1 false), !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit.loopexit.i
  ret ptr %0
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN2cv3Mat8copySizeERKS0_(ptr nofree noundef nonnull writeonly align 8 captures(address) dereferenceable(208) initializes((4, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(208) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.d, ptr %i.e, align 4, !tbaa !72
  %i.f = load <2 x i32>, ptr %i.a, align 4, !tbaa !32
  store <2 x i32> %i.f, ptr %i.b, align 4, !tbaa !32
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN2cv8MatShapeaSERKS0_.exit, label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load <2 x i32>, ptr %i.g, align 8, !tbaa !25
  store <2 x i32> %i.i, ptr %i.h, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i32, ptr %i.j, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.k, ptr %i.l, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.o = load i32, ptr %i.m, align 4, !tbaa !32
  store i32 %i.o, ptr %i.n, align 4, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.q, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 92
end_hunk_5
begin_hunk_6_@_ZN2cv3MatC2ERKS0_RKNS_5RangeES5_:bb.a
          catch ptr null
  %i.ds = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.am
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !25
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body

bb.an:                                            ; preds = %bb.aj
  %i.dx = zext i1 %i.dn to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dx
  store i32 %i.dl, ptr %i.dz, align 4, !tbaa !32
  %i.ea = load i32, ptr %3, align 4, !tbaa !91
  %i.eb = sext i32 %i.ea to i64
  %i.ec = load i32, ptr %0, align 8, !tbaa !71    ; 3 uses
  %i.ed = lshr i32 %i.ec, 5
  %i.ee = and i32 %i.ed, 127
  %i.ef = add nuw nsw i32 %i.ee, 1
  %i.eg = shl i32 %i.ec, 2
  %i.eh = and i32 %i.eg, 124
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = lshr i64 1275511473185297, %i.ei
  %i.ek = trunc i64 %i.ej to i32
  %i.el = and i32 %i.ek, 15
  %i.em = mul nuw nsw i32 %i.el, %i.ef
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = mul nsw i64 %i.en, %i.eb
  %i.ep = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eo
  store ptr %i.eq, ptr %i.e, align 8, !tbaa !75
  %i.er = or i32 %i.ec, 32768
  store i32 %i.er, ptr %0, align 8, !tbaa !71
  br label %.critedge2

bb.ao:                                            ; preds = %bb.ai, %.body
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.av unwind label %bb.aw

.critedge2:                                       ; preds = %.critedge, %bb.aa, %bb.an
  %i.et = load i32, ptr %0, align 8, !tbaa !71    ; 3 uses
  %i.eu = load i32, ptr %i.a, align 4, !tbaa !70  ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.ew = icmp slt i32 %i.eu, 2
  br i1 %i.ew, label %bb.ap, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.critedge2
  %wide.trip.count.i.i = zext nneg i32 %i.eu to i64
  br label %.preheader.i.i

bb.ap:                                            ; preds = %.critedge2
  %i.ex = or i32 %i.et, 16384
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

.preheader.i.i:                                   ; preds = %bb.aq, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.aq ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !32
  %i.fa = icmp sgt i32 %i.ez, 1
  br i1 %i.fa, label %.split.loop.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %.preheader.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.split.loop.exit48.i.i, label %.preheader.i.i, !llvm.loop !5

.split.loop.exit.i.i:                             ; preds = %.preheader.i.i
  %i.fb = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %.split.loop.exit48.i.i

.split.loop.exit48.i.i:                           ; preds = %bb.aq, %.split.loop.exit.i.i
  %storemerge.lcssa.i.i = phi i32 [ %i.fb, %.split.loop.exit.i.i ], [ %i.eu, %bb.aq ] ; 4 uses
  %i.fc = add nsw i32 %i.eu, -1                   ; 3 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.fc, i32 %storemerge.lcssa.i.i)
  %i.fd = sext i32 %.sroa.speculated.i.i to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !32
  %i.fg = sext i32 %i.ff to i64
  %i.fh = lshr i32 %i.et, 5
  %i.fi = and i32 %i.fh, 127
  %i.fj = add nuw nsw i32 %i.fi, 1
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = mul nsw i64 %i.fg, %i.fk                ; 2 uses
  %i.fm = icmp sgt i32 %i.fc, %storemerge.lcssa.i.i
  br i1 %i.fm, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.split.loop.exit48.i.i
  %i.fn = zext nneg i32 %i.fc to i64
  %i.fo = sext i32 %storemerge.lcssa.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ar, %.lr.ph.preheader.i.i
  %indvars.iv43.i.i = phi i64 [ %i.fn, %.lr.ph.preheader.i.i ], [ %indvars.iv.next44.i.i, %bb.ar ] ; 4 uses
  %.037.i.i = phi i64 [ %i.fl, %.lr.ph.preheader.i.i ], [ %i.fs, %bb.ar ]
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %indvars.iv43.i.i
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !32
  %i.fr = sext i32 %i.fq to i64                   ; 2 uses
  %i.fs = mul i64 %.037.i.i, %i.fr                ; 3 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv43.i.i ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !22
  %i.fv = mul i64 %i.fu, %i.fr
  %i.fw = getelementptr i8, ptr %i.ft, i64 -8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !22
  %i.fy = icmp ult i64 %i.fv, %i.fx
  br i1 %i.fy, label %._crit_edge.loopexit.split.loop.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next44.i.i = add nsw i64 %indvars.iv43.i.i, -1 ; 2 uses
  %i.fz = icmp sgt i64 %indvars.iv.next44.i.i, %i.fo
  br i1 %i.fz, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !6

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %.lr.ph.i.i
  %i.ga = trunc nsw i64 %indvars.iv43.i.i to i32
  %i.gb = icmp sge i32 %storemerge.lcssa.i.i, %i.ga
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ar, %._crit_edge.loopexit.split.loop.exit.i.i, %.split.loop.exit48.i.i
  %.024.lcssa.i.i = phi i1 [ true, %.split.loop.exit48.i.i ], [ %i.gb, %._crit_edge.loopexit.split.loop.exit.i.i ], [ true, %bb.ar ]
  %.1.i.i = phi i64 [ %i.fl, %.split.loop.exit48.i.i ], [ %i.fs, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.fs, %bb.ar ]
  %i.gc = add i64 %.1.i.i, 2147483648
  %i.gd = icmp ult i64 %i.gc, 4294967296
  %or.cond.i.i = select i1 %.024.lcssa.i.i, i1 %i.gd, i1 false
  %i.ge = and i32 %i.et, -16385
  %masksel.i.i = select i1 %or.cond.i.i, i32 16384, i32 0
  %.025.i.i = or disjoint i32 %masksel.i.i, %i.ge
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

_ZN2cv3Mat20updateContinuityFlagEv.exit:          ; preds = %bb.ap, %._crit_edge.i.i
  %.126.i.i = phi i32 [ %i.ex, %bb.ap ], [ %.025.i.i, %._crit_edge.i.i ]
  store i32 %.126.i.i, ptr %0, align 8, !tbaa !71
  %i.gf = load i32, ptr %i.b, align 8, !tbaa !73
  %i.gg = icmp slt i32 %i.gf, 1
  br i1 %i.gg, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN2cv3Mat20updateContinuityFlagEv.exit
  %i.gh = load i32, ptr %i.c, align 4, !tbaa !72
  %i.gi = icmp slt i32 %i.gh, 1
  br i1 %i.gi, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %_ZN2cv3Mat20updateContinuityFlagEv.exit
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store i32 0, ptr %i.c, align 4, !tbaa !72
  store i32 0, ptr %i.b, align 8, !tbaa !73
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.o
  ret void

bb.av:                                            ; preds = %bb.ao, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn57 = phi { ptr, i32 } [ %i.br, %bb.p ], [ %i.es, %bb.ao ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn57

bb.aw:                                            ; preds = %bb.ao
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #28
  unreachable

bb.ax:                                            ; preds = %bb.ai
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3MatC2ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !71
  store i32 %i.a, ptr %0, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 2, ptr %i.b, align 4, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load <2 x i32>, ptr %i.f, align 4, !tbaa !32
  %i.h = shufflevector <2 x i32> %i.g, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.h, ptr %i.c, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.i, align 8, !tbaa !79
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !178
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !22
  %i.r = mul i64 %i.q, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.r
  store ptr %i.s, ptr %i.j, align 8, !tbaa !75
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !tbaa !62
  store <2 x ptr> %i.v, ptr %i.t, align 8, !tbaa !62
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load <2 x ptr>, ptr %i.x, align 8, !tbaa !82
  store <2 x ptr> %i.y, ptr %i.w, align 8, !tbaa !82
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !74
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !74
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.ac, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, i8 0, i64 80, i1 false), !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !70
  %i.ag = icmp slt i32 %i.af, 3
  br i1 %i.ag, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.56, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 1255) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !25
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.e ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ai, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.ao = load i32, ptr %0, align 8, !tbaa !71    ; 4 uses
  %i.ap = lshr i32 %i.ao, 5
  %i.aq = and i32 %i.ap, 127
  %i.ar = add nuw nsw i32 %i.aq, 1
  %i.as = shl i32 %i.ao, 2
  %i.at = and i32 %i.as, 124
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 1275511473185297, %i.au
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 15
  %i.ay = mul nuw nsw i32 %i.ax, %i.ar
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = load i32, ptr %2, align 4, !tbaa !179   ; 3 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul nsw i64 %i.az, %i.bb
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store ptr %i.be, ptr %i.j, align 8, !tbaa !75
  %i.bf = icmp sgt i32 %i.ba, -1
  br i1 %i.bf, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.bg = load i32, ptr %i.f, align 4, !tbaa !180 ; 3 uses
  %i.bh = icmp sgt i32 %i.bg, -1
  br i1 %i.bh, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bi = add nuw nsw i32 %i.bg, %i.ba
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !72 ; 2 uses
  %.not = icmp sgt i32 %i.bi, %i.bk
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = load i32, ptr %i.m, align 4, !tbaa !178 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, -1
  br i1 %i.bm, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bn = load i32, ptr %i.d, align 4, !tbaa !181 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, -1
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = add nuw nsw i32 %i.bn, %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !73 ; 2 uses
  %.not42 = icmp sgt i32 %i.bp, %i.br
  br i1 %.not42, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.57, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 1260) #25
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.q:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.q
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !25
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.p
  %.pn43 = phi { ptr, i32 } [ %i.bs, %bb.p ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.bt, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

bb.r:                                             ; preds = %bb.l
  %i.bz = icmp samesign ult i32 %i.bg, %i.bk
  %i.ca = icmp samesign ult i32 %i.bn, %i.br
  %or.cond = or i1 %i.bz, %i.ca
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = or i32 %i.ao, 32768                     ; 2 uses
  store i32 %i.cb, ptr %0, align 8, !tbaa !71
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.cc = phi i32 [ %i.ao, %bb.r ], [ %i.cb, %bb.s ] ; 3 uses
  %i.cd = load i32, ptr %i.c, align 8, !tbaa !73  ; 2 uses
  %i.ce = load i32, ptr %i.ac, align 8, !tbaa !29
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  store i32 %i.cd, ptr %i.cf, align 4, !tbaa !32
  %i.cg = icmp sgt i32 %i.ce, 1
  br i1 %i.cg, label %_ZN2cv8MatShapeixEm.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 97) #25
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !25
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.t
  %i.cn = load i32, ptr %i.e, align 4, !tbaa !72
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.cn, ptr %i.co, align 8, !tbaa !32
  %i.cp = load i64, ptr %i.p, align 8, !tbaa !22
  store i64 %i.cp, ptr %i.ad, align 8, !tbaa !22
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.az, ptr %i.cq, align 8, !tbaa !22
  %i.cr = load i32, ptr %i.b, align 4, !tbaa !70  ; 4 uses
  %i.cs = icmp slt i32 %i.cr, 2
  br i1 %i.cs, label %bb.x, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN2cv8MatShapeixEm.exit
  %wide.trip.count.i.i = zext nneg i32 %i.cr to i64
  br label %.preheader.i.i

bb.x:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.ct = or i32 %i.cc, 16384
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

.preheader.i.i:                                   ; preds = %bb.y, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.y ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !32
  %i.cw = icmp sgt i32 %i.cv, 1
  br i1 %i.cw, label %.split.loop.exit.i.i, label %bb.y

bb.y:                                             ; preds = %.preheader.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.split.loop.exit48.i.i, label %.preheader.i.i, !llvm.loop !5

.split.loop.exit.i.i:                             ; preds = %.preheader.i.i
  %i.cx = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %.split.loop.exit48.i.i

.split.loop.exit48.i.i:                           ; preds = %bb.y, %.split.loop.exit.i.i
  %storemerge.lcssa.i.i = phi i32 [ %i.cx, %.split.loop.exit.i.i ], [ %i.cr, %bb.y ] ; 4 uses
  %i.cy = add nsw i32 %i.cr, -1                   ; 3 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.cy, i32 %storemerge.lcssa.i.i)
  %i.cz = sext i32 %.sroa.speculated.i.i to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !32
  %i.dc = sext i32 %i.db to i64
  %i.dd = lshr i32 %i.cc, 5
  %i.de = and i32 %i.dd, 127
  %i.df = add nuw nsw i32 %i.de, 1
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = mul nsw i64 %i.dc, %i.dg                ; 2 uses
  %i.di = icmp sgt i32 %i.cy, %storemerge.lcssa.i.i
  br i1 %i.di, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.split.loop.exit48.i.i
  %i.dj = zext nneg i32 %i.cy to i64
  %i.dk = sext i32 %storemerge.lcssa.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.lr.ph.preheader.i.i
  %indvars.iv43.i.i = phi i64 [ %i.dj, %.lr.ph.preheader.i.i ], [ %indvars.iv.next44.i.i, %bb.z ] ; 4 uses
  %.037.i.i = phi i64 [ %i.dh, %.lr.ph.preheader.i.i ], [ %i.do, %bb.z ]
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %indvars.iv43.i.i
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !32
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = mul i64 %.037.i.i, %i.dn                ; 3 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %indvars.iv43.i.i ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !22
  %i.dr = mul i64 %i.dq, %i.dn
  %i.ds = getelementptr i8, ptr %i.dp, i64 -8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !22
  %i.du = icmp ult i64 %i.dr, %i.dt
  br i1 %i.du, label %._crit_edge.loopexit.split.loop.exit.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next44.i.i = add nsw i64 %indvars.iv43.i.i, -1 ; 2 uses
  %i.dv = icmp sgt i64 %indvars.iv.next44.i.i, %i.dk
  br i1 %i.dv, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !6

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %.lr.ph.i.i
  %i.dw = trunc nsw i64 %indvars.iv43.i.i to i32
  %i.dx = icmp sge i32 %storemerge.lcssa.i.i, %i.dw
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.z, %._crit_edge.loopexit.split.loop.exit.i.i, %.split.loop.exit48.i.i
  %.024.lcssa.i.i = phi i1 [ true, %.split.loop.exit48.i.i ], [ %i.dx, %._crit_edge.loopexit.split.loop.exit.i.i ], [ true, %bb.z ]
  %.1.i.i = phi i64 [ %i.dh, %.split.loop.exit48.i.i ], [ %i.do, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.do, %bb.z ]
  %i.dy = add i64 %.1.i.i, 2147483648
  %i.dz = icmp ult i64 %i.dy, 4294967296
  %or.cond.i.i = select i1 %.024.lcssa.i.i, i1 %i.dz, i1 false
  %i.ea = and i32 %i.cc, -16385
  %masksel.i.i = select i1 %or.cond.i.i, i32 16384, i32 0
  %.025.i.i = or disjoint i32 %masksel.i.i, %i.ea
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

_ZN2cv3Mat20updateContinuityFlagEv.exit:          ; preds = %bb.x, %._crit_edge.i.i
  %.126.i.i = phi i32 [ %i.ct, %bb.x ], [ %.025.i.i, %._crit_edge.i.i ]
  store i32 %.126.i.i, ptr %0, align 8, !tbaa !71
  %i.eb = load ptr, ptr %i.z, align 8, !tbaa !74  ; 2 uses
  %.not.i = icmp eq ptr %i.eb, null
  br i1 %.not.i, label %_ZN2cv3Mat6addrefEv.exit, label %bb.aa
end_hunk_6
begin_hunk_7_@_ZN2cv3MatC2ESt16initializer_listIiEiPvPKm:bb.a
bb.f:                                             ; preds = %._crit_edge, %bb.e
  call void @_ZN2cv11finalizeHdrERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3MatC2ERKS0_PKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(208) %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %0, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.d, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i8 0, i64 80, i1 false), !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !70   ; 6 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.k = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  store i32 1, ptr %i.b, align 8, !tbaa !73
  %i.l = icmp eq i32 %i.i, 0
  %i.m = zext i1 %i.l to i32
  br label %bb.y

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 84
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 1342) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %7, align 8, !tbaa !24     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.u = load i64, ptr %i.s, align 8, !tbaa !25
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.q, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

._crit_edge:                                      ; preds = %.critedge39
  %i.w = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 84
  %wide.trip.count89 = zext nneg i32 %i.i to i64
  br label %bb.q

bb.g:                                             ; preds = %.lr.ph, %.critedge39
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge39 ] ; 4 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.z = load i64, ptr %i.y, align 4, !tbaa !32   ; 2 uses
  %.sroa.071.0.extract.trunc = trunc i64 %i.z to i32 ; 3 uses
  %.sroa.672.0.extract.shift = lshr i64 %i.z, 32  ; 2 uses
  %.sroa.672.0.extract.trunc = trunc nuw i64 %.sroa.672.0.extract.shift to i32 ; 2 uses
  %i.aa = icmp eq i32 %.sroa.071.0.extract.trunc, -2147483648
  %i.ab = icmp eq i64 %.sroa.672.0.extract.shift, 2147483647
  %i.ac = and i1 %i.aa, %i.ab
  br i1 %i.ac, label %.critedge39, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp sgt i32 %.sroa.071.0.extract.trunc, -1
  %i.ae = icmp slt i32 %.sroa.071.0.extract.trunc, %.sroa.672.0.extract.trunc
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.i, label %.critedge41

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %i.n, align 8, !tbaa !29
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.af, i32 1)
  %i.ag = zext nneg i32 %narrow.i to i64
  %i.ah = icmp samesign ult i64 %indvars.iv, %i.ag
  br i1 %i.ah, label %_ZNK2cv8MatShapeixEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !25
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !32
  %.not73 = icmp slt i32 %i.ap, %.sroa.672.0.extract.trunc
  br i1 %.not73, label %.critedge41, label %.critedge39

.critedge41:                                      ; preds = %bb.h, %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %.critedge41
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 1346) #25
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %.critedge41
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.p:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.p
  %i.av = load i64, ptr %i.at, align 8, !tbaa !25
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.o
  %.pn35 = phi { ptr, i32 } [ %i.aq, %bb.o ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.ar, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %common.resume

.critedge39:                                      ; preds = %bb.g, %_ZNK2cv8MatShapeixEm.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !182

._crit_edge81:                                    ; preds = %.critedge
  %i.ax = icmp slt i32 %i.i, 3
  br i1 %i.ax, label %bb.t, label %bb.z

bb.q:                                             ; preds = %._crit_edge, %.critedge
  %indvars.iv86 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next87, %.critedge ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv86
  %i.az = load i64, ptr %i.ay, align 4, !tbaa !32 ; 3 uses
  %.sroa.069.0.extract.trunc = trunc i64 %i.az to i32 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i64 %i.az, 32   ; 2 uses
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32 ; 2 uses
  %i.ba = icmp ne i32 %.sroa.069.0.extract.trunc, -2147483648
  %i.bb = icmp ne i64 %.sroa.6.0.extract.shift, 2147483647
  %.not6.i = or i1 %i.ba, %i.bb
  br i1 %.not6.i, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv86 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !32
  %i.be = icmp ne i32 %.sroa.069.0.extract.trunc, 0
  %i.bf = icmp ne i32 %i.bd, %.sroa.6.0.extract.trunc
  %.not6.i56 = select i1 %i.be, i1 true, i1 %i.bf
  br i1 %.not6.i56, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.bg = sub nsw i32 %.sroa.6.0.extract.trunc, %.sroa.069.0.extract.trunc
  store i32 %i.bg, ptr %i.bc, align 4, !tbaa !32
  %sext = shl i64 %i.az, 32
  %i.bh = ashr exact i64 %sext, 32
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv86
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !22
  %i.bk = mul i64 %i.bj, %i.bh
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store ptr %i.bm, ptr %i.e, align 8, !tbaa !75
  %i.bn = load i32, ptr %0, align 8, !tbaa !71
  %i.bo = or i32 %i.bn, 32768
  store i32 %i.bo, ptr %0, align 8, !tbaa !71
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.s, %bb.r
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %._crit_edge81, label %bb.q, !llvm.loop !183

bb.t:                                             ; preds = %._crit_edge81
  %i.bp = icmp eq i32 %i.i, 2                     ; 3 uses
  br i1 %i.bp, label %.thread, label %bb.u

.thread:                                          ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread
  %storemerge = phi i32 [ %i.br, %.thread ], [ 1, %bb.t ]
  store i32 %storemerge, ptr %i.b, align 8, !tbaa !73
  %i.bs = load i32, ptr %i.f, align 8, !tbaa !29
  %narrow.i62 = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 1)
  %i.bt = zext i1 %i.bp to i32
  %i.bu = icmp samesign ugt i32 %narrow.i62, %i.bt
  br i1 %i.bu, label %_ZN2cv8MatShapeixEm.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 97) #25
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %bb.x
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !25
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.u
  %i.cb = zext i1 %i.bp to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !32
  br label %bb.y

bb.y:                                             ; preds = %_ZN2cv8MatShapeixEm.exit, %._crit_edge.thread
  %i.cf = phi i32 [ %i.m, %._crit_edge.thread ], [ %i.ce, %_ZN2cv8MatShapeixEm.exit ]
  store i32 %i.cf, ptr %i.c, align 4, !tbaa !72
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge81
  %i.cg = load i32, ptr %0, align 8, !tbaa !71    ; 3 uses
  %i.ch = load i32, ptr %i.a, align 4, !tbaa !70  ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.cj = icmp slt i32 %i.ch, 2
  br i1 %i.cj, label %bb.aa, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.z
  %wide.trip.count.i.i = zext nneg i32 %i.ch to i64
  br label %.preheader.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ck = or i32 %i.cg, 16384
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

.preheader.i.i:                                   ; preds = %bb.ab, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ab ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !32
  %i.cn = icmp sgt i32 %i.cm, 1
  br i1 %i.cn, label %.split.loop.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.split.loop.exit48.i.i, label %.preheader.i.i, !llvm.loop !5

.split.loop.exit.i.i:                             ; preds = %.preheader.i.i
  %i.co = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %.split.loop.exit48.i.i

.split.loop.exit48.i.i:                           ; preds = %bb.ab, %.split.loop.exit.i.i
  %storemerge.lcssa.i.i = phi i32 [ %i.co, %.split.loop.exit.i.i ], [ %i.ch, %bb.ab ] ; 4 uses
  %i.cp = add nsw i32 %i.ch, -1                   ; 3 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.cp, i32 %storemerge.lcssa.i.i)
  %i.cq = sext i32 %.sroa.speculated.i.i to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !32
  %i.ct = sext i32 %i.cs to i64
  %i.cu = lshr i32 %i.cg, 5
  %i.cv = and i32 %i.cu, 127
  %i.cw = add nuw nsw i32 %i.cv, 1
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = mul nsw i64 %i.ct, %i.cx                ; 2 uses
  %i.cz = icmp sgt i32 %i.cp, %storemerge.lcssa.i.i
  br i1 %i.cz, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.split.loop.exit48.i.i
  %i.da = zext nneg i32 %i.cp to i64
  %i.db = sext i32 %storemerge.lcssa.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac, %.lr.ph.preheader.i.i
  %indvars.iv43.i.i = phi i64 [ %i.da, %.lr.ph.preheader.i.i ], [ %indvars.iv.next44.i.i, %bb.ac ] ; 4 uses
  %.037.i.i = phi i64 [ %i.cy, %.lr.ph.preheader.i.i ], [ %i.df, %bb.ac ]
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %indvars.iv43.i.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !32
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = mul i64 %.037.i.i, %i.de                ; 3 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv43.i.i ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !22
  %i.di = mul i64 %i.dh, %i.de
  %i.dj = getelementptr i8, ptr %i.dg, i64 -8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !22
  %i.dl = icmp ult i64 %i.di, %i.dk
  br i1 %i.dl, label %._crit_edge.loopexit.split.loop.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next44.i.i = add nsw i64 %indvars.iv43.i.i, -1 ; 2 uses
  %i.dm = icmp sgt i64 %indvars.iv.next44.i.i, %i.db
  br i1 %i.dm, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !6

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %.lr.ph.i.i
  %i.dn = trunc nsw i64 %indvars.iv43.i.i to i32
  %i.do = icmp sge i32 %storemerge.lcssa.i.i, %i.dn
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ac, %._crit_edge.loopexit.split.loop.exit.i.i, %.split.loop.exit48.i.i
  %.024.lcssa.i.i = phi i1 [ true, %.split.loop.exit48.i.i ], [ %i.do, %._crit_edge.loopexit.split.loop.exit.i.i ], [ true, %bb.ac ]
  %.1.i.i = phi i64 [ %i.cy, %.split.loop.exit48.i.i ], [ %i.df, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.df, %bb.ac ]
  %i.dp = add i64 %.1.i.i, 2147483648
  %i.dq = icmp ult i64 %i.dp, 4294967296
  %or.cond.i.i = select i1 %.024.lcssa.i.i, i1 %i.dq, i1 false
  %i.dr = and i32 %i.cg, -16385
  %masksel.i.i = select i1 %or.cond.i.i, i32 16384, i32 0
  %.025.i.i = or disjoint i32 %masksel.i.i, %i.dr
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

_ZN2cv3Mat20updateContinuityFlagEv.exit:          ; preds = %bb.aa, %._crit_edge.i.i
  %.126.i.i = phi i32 [ %i.ck, %bb.aa ], [ %.025.i.i, %._crit_edge.i.i ]
  store i32 %.126.i.i, ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3MatC2ERKS0_RKSt6vectorINS_5RangeESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %0, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.d, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i8 0, i64 80, i1 false), !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !70   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !188
  %i.l = load ptr, ptr %2, align 8, !tbaa !189    ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 3
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp eq i32 %i.i, %i.q
  br i1 %i.r, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.s = icmp sgt i32 %i.i, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.t = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  store i32 1, ptr %i.b, align 8, !tbaa !73
  %i.u = icmp eq i32 %i.i, 0
  %i.v = zext i1 %i.u to i32
  br label %bb.y

.lr.ph:                                           ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 84
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.62, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 1373) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.z, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

._crit_edge:                                      ; preds = %.critedge39
  %i.af = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !189
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 84
  %wide.trip.count88 = zext nneg i32 %i.i to i64
  br label %bb.q

bb.g:                                             ; preds = %.lr.ph, %.critedge39
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge39 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.aj = load i64, ptr %i.ai, align 4, !tbaa !32 ; 2 uses
  %.sroa.071.0.extract.trunc = trunc i64 %i.aj to i32 ; 3 uses
  %.sroa.672.0.extract.shift = lshr i64 %i.aj, 32 ; 2 uses
  %.sroa.672.0.extract.trunc = trunc nuw i64 %.sroa.672.0.extract.shift to i32 ; 2 uses
  %i.ak = icmp eq i32 %.sroa.071.0.extract.trunc, -2147483648
  %i.al = icmp eq i64 %.sroa.672.0.extract.shift, 2147483647
  %i.am = and i1 %i.ak, %i.al
  br i1 %i.am, label %.critedge39, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = icmp sgt i32 %.sroa.071.0.extract.trunc, -1
  %i.ao = icmp slt i32 %.sroa.071.0.extract.trunc, %.sroa.672.0.extract.trunc
  %or.cond = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.i, label %.critedge41

bb.i:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %i.w, align 8, !tbaa !29
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 1)
  %i.aq = zext nneg i32 %narrow.i to i64
  %i.ar = icmp samesign ult i64 %indvars.iv, %i.aq
  br i1 %i.ar, label %_ZNK2cv8MatShapeixEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !25
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !32
  %.not = icmp slt i32 %i.az, %.sroa.672.0.extract.trunc
  br i1 %.not, label %.critedge41, label %.critedge39

.critedge41:                                      ; preds = %bb.h, %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %.critedge41
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 1377) #25
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %.critedge41
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.p:                                             ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.p
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !25
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.o
  %.pn35 = phi { ptr, i32 } [ %i.ba, %bb.o ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.bb, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %common.resume

.critedge39:                                      ; preds = %bb.g, %_ZNK2cv8MatShapeixEm.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !184

._crit_edge80:                                    ; preds = %.critedge
  %i.bh = icmp slt i32 %i.i, 3
  br i1 %i.bh, label %bb.t, label %bb.z

bb.q:                                             ; preds = %._crit_edge, %.critedge
  %indvars.iv85 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next86, %.critedge ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv85
  %i.bj = load i64, ptr %i.bi, align 4, !tbaa !32 ; 3 uses
  %.sroa.069.0.extract.trunc = trunc i64 %i.bj to i32 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i64 %i.bj, 32   ; 2 uses
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32 ; 2 uses
  %i.bk = icmp ne i32 %.sroa.069.0.extract.trunc, -2147483648
  %i.bl = icmp ne i64 %.sroa.6.0.extract.shift, 2147483647
  %.not6.i = or i1 %i.bk, %i.bl
  br i1 %.not6.i, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv85 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !32
  %i.bo = icmp ne i32 %.sroa.069.0.extract.trunc, 0
  %i.bp = icmp ne i32 %i.bn, %.sroa.6.0.extract.trunc
  %.not6.i56 = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %.not6.i56, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.bq = sub nsw i32 %.sroa.6.0.extract.trunc, %.sroa.069.0.extract.trunc
  store i32 %i.bq, ptr %i.bm, align 4, !tbaa !32
  %sext = shl i64 %i.bj, 32
  %i.br = ashr exact i64 %sext, 32
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv85
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !22
  %i.bu = mul i64 %i.bt, %i.br
  %i.bv = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  store ptr %i.bw, ptr %i.e, align 8, !tbaa !75
  %i.bx = load i32, ptr %0, align 8, !tbaa !71
  %i.by = or i32 %i.bx, 32768
  store i32 %i.by, ptr %0, align 8, !tbaa !71
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.s, %bb.r
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %._crit_edge80, label %bb.q, !llvm.loop !185

bb.t:                                             ; preds = %._crit_edge80
  %i.bz = icmp eq i32 %i.i, 2                     ; 3 uses
  br i1 %i.bz, label %.thread, label %bb.u

.thread:                                          ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread
  %storemerge = phi i32 [ %i.cb, %.thread ], [ 1, %bb.t ]
  store i32 %storemerge, ptr %i.b, align 8, !tbaa !73
  %i.cc = load i32, ptr %i.f, align 8, !tbaa !29
  %narrow.i62 = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 1)
  %i.cd = zext i1 %i.bz to i32
  %i.ce = icmp samesign ugt i32 %narrow.i62, %i.cd
  br i1 %i.ce, label %_ZN2cv8MatShapeixEm.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 97) #25
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %bb.x
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !25
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.u
  %i.cl = zext i1 %i.bz to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cl
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !32
  br label %bb.y

bb.y:                                             ; preds = %_ZN2cv8MatShapeixEm.exit, %._crit_edge.thread
  %i.cp = phi i32 [ %i.v, %._crit_edge.thread ], [ %i.co, %_ZN2cv8MatShapeixEm.exit ]
  store i32 %i.cp, ptr %i.c, align 4, !tbaa !72
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge80
  %i.cq = load i32, ptr %0, align 8, !tbaa !71    ; 3 uses
  %i.cr = load i32, ptr %i.a, align 4, !tbaa !70  ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.ct = icmp slt i32 %i.cr, 2
  br i1 %i.ct, label %bb.aa, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.z
  %wide.trip.count.i.i = zext nneg i32 %i.cr to i64
  br label %.preheader.i.i

bb.aa:                                            ; preds = %bb.z
  %i.cu = or i32 %i.cq, 16384
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

.preheader.i.i:                                   ; preds = %bb.ab, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ab ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.i.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !32
  %i.cx = icmp sgt i32 %i.cw, 1
  br i1 %i.cx, label %.split.loop.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.split.loop.exit48.i.i, label %.preheader.i.i, !llvm.loop !5

.split.loop.exit.i.i:                             ; preds = %.preheader.i.i
  %i.cy = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %.split.loop.exit48.i.i

.split.loop.exit48.i.i:                           ; preds = %bb.ab, %.split.loop.exit.i.i
  %storemerge.lcssa.i.i = phi i32 [ %i.cy, %.split.loop.exit.i.i ], [ %i.cr, %bb.ab ] ; 4 uses
  %i.cz = add nsw i32 %i.cr, -1                   ; 3 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.cz, i32 %storemerge.lcssa.i.i)
  %i.da = sext i32 %.sroa.speculated.i.i to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !32
  %i.dd = sext i32 %i.dc to i64
  %i.de = lshr i32 %i.cq, 5
  %i.df = and i32 %i.de, 127
  %i.dg = add nuw nsw i32 %i.df, 1
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = mul nsw i64 %i.dd, %i.dh                ; 2 uses
  %i.dj = icmp sgt i32 %i.cz, %storemerge.lcssa.i.i
  br i1 %i.dj, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.split.loop.exit48.i.i
  %i.dk = zext nneg i32 %i.cz to i64
  %i.dl = sext i32 %storemerge.lcssa.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac, %.lr.ph.preheader.i.i
  %indvars.iv43.i.i = phi i64 [ %i.dk, %.lr.ph.preheader.i.i ], [ %indvars.iv.next44.i.i, %bb.ac ] ; 4 uses
  %.037.i.i = phi i64 [ %i.di, %.lr.ph.preheader.i.i ], [ %i.dp, %bb.ac ]
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %indvars.iv43.i.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !32
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  %i.dp = mul i64 %.037.i.i, %i.do                ; 3 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv43.i.i ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !22
  %i.ds = mul i64 %i.dr, %i.do
  %i.dt = getelementptr i8, ptr %i.dq, i64 -8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !22
  %i.dv = icmp ult i64 %i.ds, %i.du
  br i1 %i.dv, label %._crit_edge.loopexit.split.loop.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next44.i.i = add nsw i64 %indvars.iv43.i.i, -1 ; 2 uses
  %i.dw = icmp sgt i64 %indvars.iv.next44.i.i, %i.dl
  br i1 %i.dw, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !6

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %.lr.ph.i.i
  %i.dx = trunc nsw i64 %indvars.iv43.i.i to i32
  %i.dy = icmp sge i32 %storemerge.lcssa.i.i, %i.dx
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ac, %._crit_edge.loopexit.split.loop.exit.i.i, %.split.loop.exit48.i.i
  %.024.lcssa.i.i = phi i1 [ true, %.split.loop.exit48.i.i ], [ %i.dy, %._crit_edge.loopexit.split.loop.exit.i.i ], [ true, %bb.ac ]
  %.1.i.i = phi i64 [ %i.di, %.split.loop.exit48.i.i ], [ %i.dp, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.dp, %bb.ac ]
  %i.dz = add i64 %.1.i.i, 2147483648
  %i.ea = icmp ult i64 %i.dz, 4294967296
  %or.cond.i.i = select i1 %.024.lcssa.i.i, i1 %i.ea, i1 false
  %i.eb = and i32 %i.cq, -16385
  %masksel.i.i = select i1 %or.cond.i.i, i32 16384, i32 0
  %.025.i.i = or disjoint i32 %masksel.i.i, %i.eb
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

_ZN2cv3Mat20updateContinuityFlagEv.exit:          ; preds = %bb.aa, %._crit_edge.i.i
  %.126.i.i = phi i32 [ %i.cu, %bb.aa ], [ %.025.i.i, %._crit_edge.i.i ]
  store i32 %.126.i.i, ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3Mat4diagEi(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !70
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv3Mat4diagEi, ptr noundef nonnull @.str.10, i32 noundef 1401) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %7, align 8, !tbaa !24     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !25
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_7
begin_hunk_8_@_ZNK2cv3Mat4diagEi:bb.a
  %.126.i.i = phi i32 [ %i.bq, %bb.o ], [ %.025.i.i, %._crit_edge.i.i ] ; 2 uses
  store i32 %.126.i.i, ptr %0, align 8, !tbaa !71
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !29 ; 6 uses
  %i.da = icmp slt i32 %i.cz, 3
  br i1 %i.da, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.108, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc33 unwind label %bb.aa

.noexc33:                                         ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.107, i32 noundef 109) #25
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.noexc33
  unreachable

bb.u:                                             ; preds = %.noexc33
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30: ; preds = %bb.u
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !25
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.body

bb.v:                                             ; preds = %bb.r
  %i.dh = icmp sgt i32 %i.cz, 0
  br i1 %i.dh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.dj = icmp eq i32 %i.cz, 2
  %i.dk = zext i1 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !32
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dn = icmp eq i32 %i.cz, 0
  %i.do = zext i1 %i.dn to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.dp = phi i32 [ %i.dm, %bb.w ], [ %i.do, %bb.x ]
  %i.dq = icmp eq i32 %i.cz, 2
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = icmp sgt i32 %i.cz, -1
  %i.du = zext i1 %i.dt to i32
  %i.dv = select i1 %i.dq, i32 %i.ds, i32 %i.du
  %i.dw = icmp ne i32 %i.dp, 1
  %i.dx = icmp ne i32 %i.dv, 1
  %.not6.i = select i1 %i.dw, i1 true, i1 %i.dx
  br i1 %.not6.i, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dy = or i32 %.126.i.i, 32768
  store i32 %i.dy, ptr %0, align 8, !tbaa !71
  br label %bb.ab

bb.aa:                                            ; preds = %bb.k, %bb.s
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn20.pn = phi { ptr, i32 } [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dz, %bb.aa ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #24
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y, %bb.z
  ret void

bb.ac:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn20.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat8pop_backEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Range", align 4         ; 5 uses
  %3 = alloca %"class.cv::Range", align 8         ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.cv::Mat", align 16          ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 3 uses
  %i.c = sext i32 %i.b to i64
  %.not = icmp ugt i64 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.64, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv3Mat8pop_backEm, ptr noundef nonnull @.str.10, i32 noundef 1433) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !25
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.v

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !70   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv3Mat8pop_backEm, ptr noundef nonnull @.str.10, i32 noundef 1434) #25
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.l:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %6, align 8, !tbaa !24     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.l
  %i.s = load i64, ptr %i.q, align 8, !tbaa !25
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.k
  %.pn12 = phi { ptr, i32 } [ %i.n, %bb.k ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.o, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.v

bb.m:                                             ; preds = %bb.g
  %i.u = load i32, ptr %0, align 8, !tbaa !71
  %i.v = and i32 %i.u, 32768
  %.not19 = icmp eq i32 %i.v, 0
  br i1 %.not19, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.w = trunc i64 %1 to i32
  %i.x = sub nsw i32 %i.b, %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !192
  store i32 0, ptr %2, align 4, !tbaa !91, !noalias !192
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !92, !noalias !192
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !192
  store i64 9223372034707292160, ptr %3, align 8, !noalias !192
  call void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !192
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.z = load <4 x i32>, ptr %8, align 16, !tbaa !32
  store <4 x i32> %i.z, ptr %0, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 76
  %i.af = load <4 x i32>, ptr %i.ac, align 8, !tbaa !25
  store <4 x i32> %i.af, ptr %i.ad, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ai = load <4 x i32>, ptr %i.ag, align 8, !tbaa !32
  store <4 x i32> %i.ai, ptr %i.ah, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load <4 x i32>, ptr %i.aj, align 8, !tbaa !32
  store <4 x i32> %i.al, ptr %i.ak, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.an = load i32, ptr %i.am, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noundef nonnull align 16 dereferenceable(80) %i.ap, i64 80, i1 false), !tbaa.struct !83
  %i.ar = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !62
  store <2 x ptr> %i.ar, ptr %i.ab, align 8, !tbaa !62
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load <2 x ptr>, ptr %i.as, align 8, !tbaa !62
  store <2 x ptr> %i.au, ptr %i.at, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ax = load <2 x ptr>, ptr %i.av, align 8, !tbaa !82
  store <2 x ptr> %i.ax, ptr %i.aw, align 8, !tbaa !82
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %8, align 16, !tbaa !32
  store i32 -1, ptr %i.ac, align 8, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.ae, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ap, i8 0, i64 80, i1 false), !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i8 0, i64 48, i1 false)
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.v

bb.q:                                             ; preds = %bb.m
  %i.az = trunc i64 %1 to i32
  %i.ba = sub nsw i32 %i.b, %i.az                 ; 3 uses
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !32
  switch i32 %i.l, label %bb.t [
    i32 2, label %bb.r
    i32 1, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !73
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ba, ptr %i.bc, align 4, !tbaa !72
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s, %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !22
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !78
  %i.bh = mul i64 %1, %i.be
  %i.bi = sub i64 0, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 %i.bi
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !78
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  ret void

bb.v:                                             ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14 = phi { ptr, i32 } [ %i.ay, %bb.p ], [ %.pn12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn14
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat10push_back_EPKv(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 11 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !71     ; 2 uses
  %i.e = and i32 %i.d, 32768
  %.not18 = icmp eq i32 %i.e, 0
  br i1 %.not18, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.m = icmp ugt ptr %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = add nsw i64 %i.c, 1
  %i.o = mul nsw i64 %i.c, 3
  %i.p = add nsw i64 %i.o, 1
  %i.q = lshr i64 %i.p, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.q)
  tail call void @_ZN2cv3Mat7reserveEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.speculated)
  %.pre = load i32, ptr %0, align 8, !tbaa !71
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre22 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i64 [ %.pre22, %bb.c ], [ %i.i, %bb.b ]
  %i.s = phi i32 [ %.pre, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.t = lshr i32 %i.s, 5
  %i.u = and i32 %i.t, 127
  %i.v = add nuw nsw i32 %i.u, 1
  %i.w = shl i32 %i.s, 2
  %i.x = and i32 %i.w, 124
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i64 1275511473185297, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 15
  %i.ac = mul nuw nsw i32 %i.ab, %i.v
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !75
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ah = mul i64 %i.r, %i.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %1, i64 %i.ad, i1 false)
  %i.aj = add i32 %i.b, 1                         ; 6 uses
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !70 ; 4 uses
  switch i32 %i.al, label %bb.e [
    i32 2, label %.thread
    i32 1, label %.thread23
  ]

.thread:                                          ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.aj, ptr %i.am, align 8, !tbaa !73
  %i.an = load i64, ptr %i.ag, align 8, !tbaa !22 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !78
  %i.ar = sext i32 %i.aj to i64
  br label %.lr.ph.preheader

.thread23:                                        ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.aj, ptr %i.as, align 4, !tbaa !72
  %i.at = load i64, ptr %i.ag, align 8, !tbaa !22 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !78
  %i.ax = sext i32 %i.aj to i64
  br label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.ay = load i64, ptr %i.ag, align 8, !tbaa !22 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !78
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !78
  %i.bc = sext i32 %i.aj to i64                   ; 2 uses
  %i.bd = icmp sgt i32 %i.al, 1
  br i1 %i.bd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.thread, %bb.e
  %i.be = phi i64 [ %i.ar, %.thread ], [ %i.bc, %bb.e ] ; 2 uses
  %i.bf = phi i64 [ %i.an, %.thread ], [ %i.ay, %bb.e ] ; 2 uses
  %wide.trip.count = zext nneg i32 %i.al to i64
  %i.bg = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.bg, 7                    ; 3 uses
  %i.bh = add i32 %i.al, -2
  %i.bi = icmp ult i32 %i.bh, 7
  br i1 %i.bi, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bg, -8
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %.01319.epil.init = phi i64 [ %i.be, %.lr.ph.preheader ], [ %i.dc, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.01319.epil = phi i64 [ %.01319.epil.init, %.lr.ph.epil.preheader ], [ %i.bm, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !32
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul i64 %.01319.epil, %i.bl             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !193

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.thread23, %bb.e
  %i.bn = phi i64 [ %i.ay, %bb.e ], [ %i.at, %.thread23 ], [ %i.bf, %.lr.ph.epil ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ]
  %.013.lcssa = phi i64 [ %i.bc, %bb.e ], [ %i.ax, %.thread23 ], [ %i.dc, %._crit_edge.loopexit.unr-lcssa ], [ %i.bm, %.lr.ph.epil ]
  %i.bo = icmp ule i64 %i.bn, %i.ad
  %i.bp = add i64 %.013.lcssa, 2147483648
  %.not = icmp ult i64 %i.bp, 4294967296
  %or.cond = select i1 %i.bo, i1 %.not, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %.01319 = phi i64 [ %i.be, %.lr.ph.preheader.new ], [ %i.dc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !32
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul i64 %.01319, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !32
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %i.bt, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !32
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul i64 %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !32
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul i64 %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !32
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul i64 %i.ci, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !32
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul i64 %i.cn, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !32
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul i64 %i.cs, %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 28
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !32
  %i.db = sext i32 %i.da to i64
  %i.dc = mul i64 %i.cx, %i.db                    ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !194

bb.f:                                             ; preds = %._crit_edge
  %i.dd = load i32, ptr %0, align 8, !tbaa !71
  %i.de = and i32 %i.dd, -16385
  store i32 %i.de, ptr %0, align 8, !tbaa !71
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat7reserveEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Range", align 4         ; 5 uses
  %3 = alloca %"class.cv::Range", align 8         ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"struct.cv::MatShape", align 4     ; 8 uses
  %7 = alloca %"class.cv::Mat", align 16          ; 18 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.66, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv3Mat7reserveEm, ptr noundef nonnull @.str.10, i32 noundef 1476) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !25
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.aj

bb.g:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 8, !tbaa !71
  %i.k = and i32 %i.j, 32768
  %.not49 = icmp eq i32 %i.k, 0
  br i1 %.not49, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.p = mul i64 %i.m, %1
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !77
  %.not29 = icmp ugt ptr %i.q, %i.s
  br i1 %.not29, label %bb.j, label %bb.ah

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !32   ; 7 uses
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %.not30 = icmp ugt i64 %1, %i.v
  br i1 %.not30, label %bb.k, label %bb.ah

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %6, ptr noundef nonnull align 4 dereferenceable(52) %i.w)
  %i.x = load i32, ptr %0, align 8, !tbaa !71     ; 3 uses
  %i.y = lshr i32 %i.x, 5
  %i.z = and i32 %i.y, 127
  %i.aa = add nuw nsw i32 %i.z, 1
  %i.ab = shl i32 %i.x, 2
  %i.ac = and i32 %i.ab, 124
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = lshr i64 1275511473185297, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.af, 15
  %i.ah = mul nuw nsw i32 %i.ag, %i.aa            ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = load i32, ptr %6, align 4, !tbaa !32    ; 3 uses
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.aj, i32 1) ; 2 uses
  store i32 %.sroa.speculated, ptr %6, align 4, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !70 ; 2 uses
  %i.am = icmp sgt i32 %i.al, 1
  %i.an = icmp eq i32 %i.u, 0
  %or.cond = and i1 %i.an, %i.am
  br i1 %or.cond, label %bb.l, label %.lr.ph.i

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !22
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.m, label %.lr.ph.i

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !32
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.al, 2
  br i1 %i.au, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ax = phi i64 [ %i.aw, %bb.n ], [ %i.ai, %bb.m ]
  %i.ay = mul i64 %i.ax, %i.at
  store i64 %i.ay, ptr %i.ao, align 8, !tbaa !22
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %bb.l, %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 21 uses
  store i32 %i.a, ptr %i.az, align 4, !tbaa !32
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.ba = icmp slt i32 %i.aj, 8
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.p ] ; 9 uses
  %.068.i = phi i64 [ 1, %.lr.ph.i.new ], [ %i.cn, %bb.p ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.p ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !32
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul i64 %.068.i, %i.bd
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !32
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul i64 %i.be, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul i64 %i.bj, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !32
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul i64 %i.bo, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !32
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %i.bt, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !32
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul i64 %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !32
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul i64 %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !32
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul i64 %i.ci, %i.cm                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK2cv8MatShape5totalEv.exit.unr-lcssa, label %bb.p, !llvm.loop !3

_ZNK2cv8MatShape5totalEv.exit.unr-lcssa:          ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv8MatShape5totalEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK2cv8MatShape5totalEv.exit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShape5totalEv.exit.unr-lcssa ]
  %.068.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %i.cn, %_ZNK2cv8MatShape5totalEv.exit.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod63)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.q ] ; 2 uses
  %.068.i.epil = phi i64 [ %.068.i.epil.init, %.epil.preheader ], [ %i.cr, %bb.q ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i.epil
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !32
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul i64 %.068.i.epil, %i.cq             ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv8MatShape5totalEv.exit, label %bb.q, !llvm.loop !195

_ZNK2cv8MatShape5totalEv.exit:                    ; preds = %bb.q, %_ZNK2cv8MatShape5totalEv.exit.unr-lcssa
  %.lcssa61 = phi i64 [ %i.cn, %_ZNK2cv8MatShape5totalEv.exit.unr-lcssa ], [ %i.cr, %bb.q ]
  %i.cs = mul i64 %.lcssa61, %i.ai
  %i.ct = icmp ult i64 %i.cs, 64
  br i1 %i.ct, label %.lr.ph.i39, label %bb.t

.lr.ph.i39:                                       ; preds = %_ZNK2cv8MatShape5totalEv.exit
  store i32 1, ptr %i.az, align 4, !tbaa !32
  %xtraiter65 = and i64 %wide.trip.count.i, 7     ; 3 uses
  %i.cu = icmp slt i32 %i.aj, 8
  br i1 %i.cu, label %.epil.preheader64, label %.lr.ph.i39.new

.lr.ph.i39.new:                                   ; preds = %.lr.ph.i39
  %unroll_iter70 = and i64 %wide.trip.count.i, 2147483640
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i39.new
  %indvars.iv.i41 = phi i64 [ 0, %.lr.ph.i39.new ], [ %indvars.iv.next.i43.7, %bb.r ] ; 9 uses
  %.068.i42 = phi i64 [ 1, %.lr.ph.i39.new ], [ %i.eh, %bb.r ]
  %niter71 = phi i64 [ 0, %.lr.ph.i39.new ], [ %niter71.next.7, %bb.r ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !32
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul i64 %.068.i42, %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !32
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul i64 %i.cy, %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !32
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul i64 %i.dd, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !32
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul i64 %i.di, %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !32
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul i64 %i.dn, %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !32
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul i64 %i.ds, %i.dw
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !32
  %i.eb = sext i32 %i.ea to i64
  %i.ec = mul i64 %i.dx, %i.eb
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 28
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !32
  %i.eg = sext i32 %i.ef to i64
  %i.eh = mul i64 %i.ec, %i.eg                    ; 3 uses
  %indvars.iv.next.i43.7 = add nuw nsw i64 %indvars.iv.i41, 8 ; 2 uses
  %niter71.next.7 = add i64 %niter71, 8           ; 2 uses
  %niter71.ncmp.7 = icmp eq i64 %niter71.next.7, %unroll_iter70
  br i1 %niter71.ncmp.7, label %_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa, label %bb.r, !llvm.loop !3

_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa:        ; preds = %bb.r
  %lcmp.mod67.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod67.not, label %_ZNK2cv8MatShape5totalEv.exit46, label %.epil.preheader64

.epil.preheader64:                                ; preds = %_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa, %.lr.ph.i39
  %indvars.iv.i41.epil.init = phi i64 [ 0, %.lr.ph.i39 ], [ %indvars.iv.next.i43.7, %_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa ]
  %.068.i42.epil.init = phi i64 [ 1, %.lr.ph.i39 ], [ %i.eh, %_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa ]
  %lcmp.mod69 = icmp ne i64 %xtraiter65, 0
  call void @llvm.assume(i1 %lcmp.mod69)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader64
  %indvars.iv.i41.epil = phi i64 [ %indvars.iv.i41.epil.init, %.epil.preheader64 ], [ %indvars.iv.next.i43.epil, %bb.s ] ; 2 uses
  %.068.i42.epil = phi i64 [ %.068.i42.epil.init, %.epil.preheader64 ], [ %i.el, %bb.s ]
  %epil.iter66 = phi i64 [ 0, %.epil.preheader64 ], [ %epil.iter66.next, %bb.s ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41.epil
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !32
  %i.ek = sext i32 %i.ej to i64
  %i.el = mul i64 %.068.i42.epil, %i.ek           ; 2 uses
  %indvars.iv.next.i43.epil = add nuw nsw i64 %indvars.iv.i41.epil, 1
  %epil.iter66.next = add i64 %epil.iter66, 1     ; 2 uses
  %epil.iter66.cmp.not = icmp eq i64 %epil.iter66.next, %xtraiter65
  br i1 %epil.iter66.cmp.not, label %_ZNK2cv8MatShape5totalEv.exit46, label %bb.s, !llvm.loop !196

_ZNK2cv8MatShape5totalEv.exit46:                  ; preds = %bb.s, %_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa
  %.lcssa = phi i64 [ %i.eh, %_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa ], [ %i.el, %bb.s ]
  %i.em = udiv i64 64, %.lcssa
  %.lhs.trunc = trunc nuw nsw i64 %i.em to i16
  %.rhs.trunc = trunc nuw nsw i32 %i.ah to i16
  %i.en = udiv i16 %.lhs.trunc, %.rhs.trunc
  %i.eo = zext nneg i16 %i.en to i32
  store i32 %i.eo, ptr %i.az, align 4, !tbaa !32
  br label %bb.t

bb.t:                                             ; preds = %_ZNK2cv8MatShape5totalEv.exit46, %_ZNK2cv8MatShape5totalEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ep = and i32 %i.x, 4095
  call void @_ZN2cv3MatC1ERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 4 dereferenceable(52) %6, i32 noundef %i.ep)
  %i.eq = icmp sgt i32 %i.u, 0
  br i1 %i.eq, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !199
  store i32 0, ptr %2, align 4, !tbaa !91, !noalias !199
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.u, ptr %i.er, align 4, !tbaa !92, !noalias !199
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !199
  store i64 9223372034707292160, ptr %3, align 8, !noalias !199
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !199
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !199
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.et, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !87
  store ptr %8, ptr %i.es, align 8, !tbaa !88
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.aa

bb.x:                                             ; preds = %bb.u
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn31.pn = phi { ptr, i32 } [ %i.ev, %bb.y ], [ %i.eu, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ai

bb.aa:                                            ; preds = %bb.w, %bb.t
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ex = load ptr, ptr %i.ew, align 16, !tbaa !74 ; 2 uses
  %.not18.i = icmp eq ptr %i.ex, null
  br i1 %.not18.i, label %.loopexit.loopexit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %i.ez = atomicrmw add ptr %i.ey, i32 1 acq_rel, align 4 ; 0 uses
  br label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.ab, %bb.aa
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %.loopexit.loopexit.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.fb = load <4 x i32>, ptr %7, align 16, !tbaa !32
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !70
  store <4 x i32> %i.fb, ptr %0, align 8, !tbaa !32
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.fe = load <2 x i32>, ptr %i.fd, align 8, !tbaa !25
  store <2 x i32> %i.fe, ptr %i.w, align 8, !tbaa !25
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.fg = load i32, ptr %i.ff, align 16, !tbaa !31
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.fg, ptr %i.fh, align 8, !tbaa !31
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fk = load <4 x i32>, ptr %i.fi, align 8, !tbaa !32
  store <4 x i32> %i.fk, ptr %i.fj, align 8, !tbaa !32
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fn = load <4 x i32>, ptr %i.fl, align 8, !tbaa !32
  store <4 x i32> %i.fn, ptr %i.fm, align 8, !tbaa !32
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !32
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.fp, ptr %i.fq, align 8, !tbaa !32
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fs, ptr noundef nonnull readonly align 16 dereferenceable(80) %i.fr, i64 80, i1 false), !tbaa.struct !83
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fw = load <4 x ptr>, ptr %i.ft, align 8, !tbaa !62
  %i.fx = load ptr, ptr %i.ft, align 8, !tbaa !75
  store <4 x ptr> %i.fw, ptr %i.fu, align 8, !tbaa !62
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ga = load <2 x ptr>, ptr %i.fy, align 8, !tbaa !82
  store <2 x ptr> %i.ga, ptr %i.fz, align 8, !tbaa !82
  store i32 %i.u, ptr %i.t, align 4, !tbaa !32
  switch i32 %i.fc, label %bb.ag [
    i32 2, label %bb.ad
    i32 1, label %bb.af
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.u, ptr %i.gb, align 8, !tbaa !73
  br label %bb.ag

bb.ae:                                            ; preds = %.loopexit.loopexit.i.i
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.af:                                            ; preds = %bb.ac
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.u, ptr %i.gd, align 4, !tbaa !72
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %bb.af, %bb.ad
  %i.ge = load i64, ptr %i.fs, align 8, !tbaa !22
  %i.gf = mul i64 %i.ge, %i.v
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.gf
  store ptr %i.gg, ptr %i.fv, align 8, !tbaa !78
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.j, %bb.i
  ret void

bb.ai:                                            ; preds = %bb.ae, %bb.z
  %.pn34 = phi { ptr, i32 } [ %i.gc, %bb.ae ], [ %.pn31.pn, %bb.z ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %bb.ai ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn34.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat13reserveBufferEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !71     ; 4 uses
  %i.d = and i32 %i.c, 32768
  %.not20 = icmp eq i32 %i.d, 0
  br i1 %.not20, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !78
  %.not = icmp ugt ptr %i.g, %i.i
  br i1 %.not, label %bb.d, label %_ZN2cv3Mat6createEiii.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = lshr i32 %i.c, 5
  %i.k = and i32 %i.j, 127
  %i.l = add nuw nsw i32 %i.k, 1
  %i.m = shl i32 %i.c, 2
  %i.n = and i32 %i.m, 124
  %i.o = zext nneg i32 %i.n to i64
  %i.p = lshr i64 1275511473185297, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 15
  %i.s = mul nuw nsw i32 %i.r, %i.l
  %i.t = zext nneg i32 %i.s to i64
  %i.u = and i32 %i.c, 4095
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.017 = phi i32 [ 0, %bb.a ], [ %i.u, %bb.d ]   ; 2 uses
  %.0 = phi i64 [ 1, %bb.a ], [ %i.t, %bb.d ]
  %i.v = add i64 %1, -1
  %i.w = udiv i64 %i.v, %.0                       ; 2 uses
  %i.x = add i64 %i.w, 1                          ; 5 uses
  %i.y = icmp ult i64 %i.x, 4611686014132420610
  br i1 %i.y, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv3Mat13reserveBufferEm, ptr noundef nonnull @.str.10, i32 noundef 1530) #25
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.z

bb.i:                                             ; preds = %bb.e
  %i.af = icmp samesign ugt i64 %i.x, 2147483647
  br i1 %i.af, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp samesign ugt i64 %i.x, 2199023254528
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp samesign ugt i64 %i.x, 2251799812636672
  %i.ai = icmp samesign ugt i64 %i.x, 2305843008139952128
  %i.aj = select i1 %i.ai, i32 2147483647, i32 1073741824
  %i.ak = select i1 %i.ah, i32 %i.aj, i32 1048576
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %i.al = phi i32 [ 1024, %bb.j ], [ %i.ak, %bb.k ], [ 1, %bb.i ] ; 3 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = udiv i64 %i.w, %i.am
  %i.ao = trunc i64 %i.an to i32
  %i.ap = add i32 %i.ao, 1                        ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !70
  %i.as = icmp slt i32 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i32, ptr %i.at, align 8
  %i.av = icmp eq i32 %i.au, %i.al
  %or.cond.i = select i1 %i.as, i1 %i.av, i1 false
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp eq i32 %i.ax, %i.ap
  %or.cond11.i = select i1 %or.cond.i, i1 %i.ay, i1 false
  br i1 %or.cond11.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = load i32, ptr %0, align 8, !tbaa !71
  %i.ba = and i32 %i.az, 4095
  %i.bb = icmp ne i32 %i.ba, %.017
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  %.not.i = icmp eq ptr %i.bd, null
  %or.cond13.i = select i1 %i.bb, i1 true, i1 %.not.i
  br i1 %or.cond13.i, label %bb.n, label %_ZN2cv3Mat6createEiii.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.al, ptr %i.a, align 4, !tbaa !32
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ap, ptr %i.be, align 4, !tbaa !32
  call void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %.017)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN2cv3Mat6createEiii.exit

_ZN2cv3Mat6createEiii.exit:                       ; preds = %bb.n, %bb.m, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 2 uses
  %i.c = trunc i64 %1 to i32                      ; 6 uses
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %i.c, -1
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.66, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv8MatShape6resizeEmi, ptr noundef nonnull @.str.10, i32 noundef 1547) #25
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !25
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.f

bb.f:                                             ; preds = %bb.b
  %i.l = load i32, ptr %0, align 8, !tbaa !71
  %i.m = and i32 %i.l, 32768
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = load i64, ptr %i.p, align 8, !tbaa !22
  %i.r = mul i64 %i.q, %1
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77
  %i.v = icmp ugt ptr %i.s, %i.u
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN2cv3Mat7reserveEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 %i.c, ptr %i.a, align 4, !tbaa !32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !70
  switch i32 %i.x, label %bb.l [
    i32 2, label %bb.j
    i32 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.y, align 8, !tbaa !73
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %i.z, align 4, !tbaa !72
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %i.aa = sub nsw i32 %i.c, %i.b
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !22
  %i.ae = mul nsw i64 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !78
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.ae
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !78
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat6resizeEmRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Range", align 4         ; 5 uses
  %4 = alloca %"class.cv::Range", align 8         ; 4 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 2 uses
  tail call void @_ZN2cv3Mat6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !32   ; 2 uses
  %i.d = icmp sgt i32 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !202
  store i32 %i.b, ptr %3, align 4, !tbaa !91, !noalias !202
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.c, ptr %i.e, align 4, !tbaa !92, !noalias !202
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !202
  store i64 9223372034707292160, ptr %4, align 8, !noalias !202
  call void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !202
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !202
  %i.f = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Range", align 4         ; 5 uses
  %3 = alloca %"class.cv::Range", align 8         ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::Mat", align 16          ; 19 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 7 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32   ; 7 uses
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 11 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !32   ; 5 uses
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = icmp eq i32 %i.g, 0
  br i1 %i.i, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %0, %1
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %1)
  invoke void @_ZN2cv3Mat9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.bc

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !208
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.o, align 8, !noalias !208
  store i32 33619968, ptr %6, align 8, !tbaa !87, !noalias !208
  store ptr %8, ptr %i.n, align 8, !tbaa !88, !noalias !208
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZNK2cv3Mat5cloneEv.exit unwind label %bb.h

common.resume:                                    ; preds = %bb.e, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.gl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.k, %bb.e ], [ %i.an, %bb.j ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.hl, %bb.bb ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  br label %common.resume

_ZNK2cv3Mat5cloneEv.exit:                         ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !208
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNK2cv3Mat5cloneEv.exit
  %i.q = load <4 x i32>, ptr %8, align 16, !tbaa !32
  store <4 x i32> %i.q, ptr %0, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 76
  %i.u = load <4 x i32>, ptr %i.s, align 8, !tbaa !25
  store <4 x i32> %i.u, ptr %i.a, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load <4 x i32>, ptr %i.v, align 8, !tbaa !32
  store <4 x i32> %i.x, ptr %i.w, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load <4 x i32>, ptr %i.y, align 8, !tbaa !32
  store <4 x i32> %i.aa, ptr %i.z, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.af, ptr noundef nonnull align 16 dereferenceable(80) %i.ae, i64 80, i1 false), !tbaa.struct !83
  %i.ag = load <2 x ptr>, ptr %i.r, align 8, !tbaa !62
  store <2 x ptr> %i.ag, ptr %i.l, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !62
  store <2 x ptr> %i.aj, ptr %i.ai, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !82
  store <2 x ptr> %i.am, ptr %i.al, align 8, !tbaa !82
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %8, align 16, !tbaa !32
  store i32 -1, ptr %i.s, align 8, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.t, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ae, i8 0, i64 80, i1 false), !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.bc

bb.j:                                             ; preds = %_ZNK2cv3Mat5cloneEv.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume

bb.k:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !70 ; 4 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShape9push_backEi, ptr noundef nonnull @.str.10, i32 noundef 1592) #25
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !25
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.o ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.as, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %common.resume

bb.q:                                             ; preds = %bb.k
  store i32 %i.g, ptr %i.b, align 4, !tbaa !32
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !29  ; 3 uses
  %i.az = load i32, ptr %i.e, align 8, !tbaa !29
  %.not.i = icmp eq i32 %i.ay, %i.az
  br i1 %.not.i, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !30 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !30 ; 3 uses
  %.not22.i = icmp eq i32 %i.bb, %i.bd
  %.not23.i = icmp eq i32 %i.bb, 0
  %or.cond.i = or i1 %.not23.i, %.not22.i
  %.not24.i = icmp eq i32 %i.bd, 0
  %or.cond27.i = or i1 %.not24.i, %or.cond.i
  br i1 %or.cond27.i, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.be = icmp eq i32 %i.bb, 7
  %i.bf = icmp eq i32 %i.bd, 7
  %or.cond29.i = and i1 %i.be, %i.bf
  br i1 %or.cond29.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !31
  %.not25.i = icmp eq i32 %i.bh, %i.bj
  br i1 %.not25.i, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bk = icmp slt i32 %i.ay, 1
  br i1 %i.bk, label %.loopexit79, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %wide.trip.count.i = zext nneg i32 %i.ay to i64
  br label %bb.w

bb.v:                                             ; preds = %bb.w
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit79, label %bb.w, !llvm.loop !0

bb.w:                                             ; preds = %bb.v, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.v ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !32
  %.not26.i = icmp eq i32 %i.bm, %i.bo
  br i1 %.not26.i, label %bb.v, label %.loopexit

.loopexit:                                        ; preds = %bb.w, %bb.t, %bb.q, %bb.r
  store i32 %i.c, ptr %i.b, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %.loopexit
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -209, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShape9push_backEi, ptr noundef nonnull @.str.10, i32 noundef 1598) #25
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %.loopexit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.aa:                                            ; preds = %bb.x
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %11, align 8, !tbaa !24   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.aa
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !25
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.z
  %.pn53 = phi { ptr, i32 } [ %i.bp, %bb.z ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %i.bq, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %common.resume

.loopexit79:                                      ; preds = %bb.v, %bb.u
  store i32 %i.c, ptr %i.b, align 4, !tbaa !32
  %i.bw = load i32, ptr %0, align 8, !tbaa !71    ; 4 uses
  %i.bx = load i32, ptr %1, align 8, !tbaa !71
  %i.by = xor i32 %i.bx, %i.bw
  %i.bz = and i32 %i.by, 4095
  %.not55 = icmp eq i32 %i.bz, 0
  br i1 %.not55, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %.loopexit79
end_hunk_8
begin_hunk_9_@_ZN2cv3Mat9push_backERKS0_:bb.a
  %.0 = phi i64 [ %i.db, %bb.al ], [ %i.dd, %bb.ak ] ; 3 uses
  %i.dg = and i32 %i.bw, 32768
  %.not76 = icmp eq i32 %i.dg, 0
  br i1 %.not76, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !78
  %i.dj = mul i64 %.0, %i.h
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !77
  %i.dn = icmp ugt ptr %i.dk, %i.dm
  br i1 %i.dn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.do = add nsw i64 %i.h, %i.d
  %i.dp = mul nsw i64 %i.d, 3
  %i.dq = add nsw i64 %i.dp, 1
  %i.dr = lshr i64 %i.dq, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.do, i64 %i.dr)
  tail call void @_ZN2cv3Mat7reserveEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.speculated)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !32
  %.pre80 = load i32, ptr %i.ao, align 4, !tbaa !70
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ds = phi i32 [ %.pre80, %bb.ao ], [ %i.ap, %bb.an ]
  %i.dt = phi i32 [ %.pre, %bb.ao ], [ %i.c, %bb.an ]
  %i.du = add nsw i32 %i.dt, %i.g                 ; 3 uses
  store i32 %i.du, ptr %i.b, align 4, !tbaa !32
  switch i32 %i.ds, label %bb.as [
    i32 2, label %bb.aq
    i32 1, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.du, ptr %i.dv, align 8, !tbaa !73
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.du, ptr %i.dw, align 4, !tbaa !72
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.ar, %bb.aq
  %i.dx = mul i64 %.0, %i.h
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !78
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dx
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !78
  %i.eb = load i32, ptr %0, align 8, !tbaa !71
  %i.ec = and i32 %i.eb, 16384
  %.not77 = icmp eq i32 %i.ec, 0
  br i1 %.not77, label %bb.az, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ed = load i32, ptr %1, align 8, !tbaa !71    ; 3 uses
  %i.ee = and i32 %i.ed, 16384
  %.not78 = icmp eq i32 %i.ee, 0
  br i1 %.not78, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ef = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.eg = mul i64 %.0, %i.d
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !75
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !70 ; 4 uses
  %i.em = icmp slt i32 %i.el, 3
  br i1 %i.em, label %bb.av, label %.preheader.i

.preheader.i:                                     ; preds = %bb.au
  %i.en = load i32, ptr %i.e, align 8, !tbaa !29
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.en, i32 1)
  %i.eo = zext nneg i32 %i.el to i64              ; 2 uses
  %i.ep = add nsw i32 %i.el, -1
  %.not.not.i = icmp samesign ugt i32 %narrow.i.i, %i.ep
  br i1 %.not.not.i, label %_ZNK2cv8MatShapeixEm.exit.i.preheader, label %bb.aw

_ZNK2cv8MatShapeixEm.exit.i.preheader:            ; preds = %.preheader.i
  %xtraiter = and i64 %i.eo, 7                    ; 3 uses
  %i.eq = icmp ult i32 %i.el, 8
  br i1 %i.eq, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.preheader.new

_ZNK2cv8MatShapeixEm.exit.i.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %unroll_iter = and i64 %i.eo, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

bb.av:                                            ; preds = %bb.au
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.es = load i32, ptr %i.er, align 8, !tbaa !73
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !72
  %i.ew = sext i32 %i.ev to i64
  %i.ex = mul nsw i64 %i.ew, %i.et
  br label %_ZNK2cv3Mat5totalEv.exit

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new
  %indvars.iv.i69 = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %indvars.iv.next.i70.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.069.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %i.gk, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i69
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !32
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul i64 %.069.i, %i.fa
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i69
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !32
  %i.ff = sext i32 %i.fe to i64
  %i.fg = mul i64 %i.fb, %i.ff
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i69
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !32
  %i.fk = sext i32 %i.fj to i64
  %i.fl = mul i64 %i.fg, %i.fk
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i69
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !32
  %i.fp = sext i32 %i.fo to i64
  %i.fq = mul i64 %i.fl, %i.fp
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i69
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !32
  %i.fu = sext i32 %i.ft to i64
  %i.fv = mul i64 %i.fq, %i.fu
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i69
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 20
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !32
  %i.fz = sext i32 %i.fy to i64
  %i.ga = mul i64 %i.fv, %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i69
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !32
  %i.ge = sext i32 %i.gd to i64
  %i.gf = mul i64 %i.ga, %i.ge
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i69
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 28
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !32
  %i.gj = sext i32 %i.gi to i64
  %i.gk = mul i64 %i.gf, %i.gj                    ; 3 uses
  %indvars.iv.next.i70.7 = add nuw nsw i64 %indvars.iv.i69, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !7

bb.aw:                                            ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.gl = landingpad { ptr, i32 }
          cleanup
  %i.gm = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ay
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !25
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa:      ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %indvars.iv.i69.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %indvars.iv.next.i70.7, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ]
  %.069.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %i.gk, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i69.epil = phi i64 [ %indvars.iv.next.i70.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %indvars.iv.i69.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ] ; 2 uses
  %.069.i.epil = phi i64 [ %i.gu, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %.069.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i69.epil
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !32
  %i.gt = sext i32 %i.gs to i64
  %i.gu = mul i64 %.069.i.epil, %i.gt             ; 2 uses
  %indvars.iv.next.i70.epil = add nuw nsw i64 %indvars.iv.i69.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !205

_ZNK2cv3Mat5totalEv.exit:                         ; preds = %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.epil, %bb.av
  %.07.i = phi i64 [ %i.ex, %bb.av ], [ %i.gk, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ], [ %i.gu, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.gv = lshr i32 %i.ed, 5
  %i.gw = and i32 %i.gv, 127
  %i.gx = add nuw nsw i32 %i.gw, 1
  %i.gy = shl i32 %i.ed, 2
  %i.gz = and i32 %i.gy, 124
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = lshr i64 1275511473185297, %i.ha
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = and i32 %i.hc, 15
  %i.he = mul nuw nsw i32 %i.hd, %i.gx
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = mul i64 %.07.i, %i.hf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eh, ptr align 1 %i.ej, i64 %i.hg, i1 false)
  br label %bb.bc

bb.az:                                            ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.hh = add i32 %i.g, %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !209
  store i32 %i.c, ptr %2, align 4, !tbaa !91, !noalias !209
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !92, !noalias !209
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !209
  store i64 9223372034707292160, ptr %3, align 8, !noalias !209
  call void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !209
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !209
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.hj = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 0, ptr %i.hk, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !87
  store ptr %15, ptr %i.hj, align 8, !tbaa !88
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %common.resume

bb.bc:                                            ; preds = %_ZNK2cv3Mat5totalEv.exit, %bb.ba, %bb.a, %bb.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3Mat9locateROIERNS_5Size_IiEERNS_6Point_IiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !70
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22   ; 5 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv3Mat9locateROIERNS_5Size_IiEERNS_6Point_IiEE, ptr noundef nonnull @.str.10, i32 noundef 1633) #25
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !25
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.f

bb.f:                                             ; preds = %bb.b
  %i.l = load i32, ptr %0, align 8, !tbaa !71     ; 2 uses
  %i.m = lshr i32 %i.l, 5
  %i.n = and i32 %i.m, 127
  %i.o = add nuw nsw i32 %i.n, 1
  %i.p = shl i32 %i.l, 2
  %i.q = and i32 %i.p, 124
  %i.r = zext nneg i32 %i.q to i64
  %i.s = lshr i64 1275511473185297, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.t, 15
  %i.v = mul nuw nsw i32 %i.u, %i.o
  %i.w = zext nneg i32 %i.v to i64                ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !76  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !78
  %i.ae = icmp eq ptr %i.y, %i.aa
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = sub i64 %i.af, %i.ab                    ; 2 uses
  %i.ah = udiv i64 %i.ag, %i.e                    ; 2 uses
  %i.ai = trunc i64 %i.ah to i32
  %sext = shl i64 %i.ah, 32
  %i.aj = ashr exact i64 %sext, 32
  %i.ak = mul i64 %i.aj, %i.e
  %i.al = sub i64 %i.ag, %i.ak
  %i.am = udiv i64 %i.al, %i.w
  %i.an = trunc i64 %i.am to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sink = phi i32 [ %i.ai, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %storemerge = phi i32 [ %i.an, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.sink, ptr %i.ao, align 4, !tbaa !94
  store i32 %storemerge, ptr %2, align 4, !tbaa !95
  %i.ap = ptrtoint ptr %i.ad to i64
  %i.aq = sub i64 %i.ap, %i.ab                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !72
  %i.at = add nsw i32 %i.as, %storemerge          ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.au, %i.w
  %i.aw = sub i64 %i.aq, %i.av
  %i.ax = udiv i64 %i.aw, %i.e
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add i32 %i.ay, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !73
  %i.bd = add nsw i32 %i.bc, %.sink
  %.sroa.speculated32 = tail call i32 @llvm.smax.i32(i32 %i.az, i32 %i.bd) ; 2 uses
  store i32 %.sroa.speculated32, ptr %i.ba, align 4, !tbaa !96
  %i.be = add nsw i32 %.sroa.speculated32, -1
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %i.e, %i.bf
  %i.bh = sub i64 %i.aq, %i.bg
  %i.bi = udiv i64 %i.bh, %i.w
  %i.bj = trunc i64 %i.bi to i32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.at, i32 %i.bj)
  store i32 %.sroa.speculated, ptr %1, align 4, !tbaa !97
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat9adjustROIEiiii(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(208) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.cv::Size_", align 4         ; 6 uses
  %8 = alloca %"class.cv::Point_", align 4        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !70
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3Mat9adjustROIEiiii, ptr noundef nonnull @.str.10, i32 noundef 1654) #25
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %5, align 8, !tbaa !24     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !25
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %i.f

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i32 0, ptr %7, align 4, !tbaa !97
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  store i32 0, ptr %i.l, align 4, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store i32 0, ptr %8, align 4, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  store i32 0, ptr %i.m, align 4, !tbaa !94
  %i.n = load i32, ptr %0, align 8, !tbaa !71     ; 2 uses
  %i.o = lshr i32 %i.n, 5
end_hunk_9
begin_hunk_10_@_ZNK2cv3Mat7reshapeEii:bb.a
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 97) #25
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc82
  unreachable

bb.p:                                             ; preds = %.noexc82
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79: ; preds = %bb.p
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !25
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.body

bb.q:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 84
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.u ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !32
  %i.bm = mul nsw i32 %i.bl, %i.e
  %i.bn = sdiv i32 %i.bm, %spec.select
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !32
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %10) #24
  br label %bb.bd

bb.r:                                             ; preds = %bb.b
  %i.bo = icmp sgt i32 %3, 0
  br i1 %i.bo, label %.preheader.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1698) #25
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.w:                                             ; preds = %bb.t
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %13, align 8, !tbaa !24   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.w
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !25
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.v
  %.pn71 = phi { ptr, i32 } [ %i.bp, %bb.v ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.bq, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %.body

.preheader.i:                                     ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %3, ptr %i.a, align 4, !tbaa !32
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !29
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.bx, i32 1)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 9 uses
  %i.bz = zext nneg i32 %i.h to i64               ; 2 uses
  %i.ca = add nsw i32 %i.h, -1
  %.not.not.i = icmp samesign ugt i32 %narrow.i.i, %i.ca
  br i1 %.not.not.i, label %_ZNK2cv8MatShapeixEm.exit.i.preheader, label %bb.x

_ZNK2cv8MatShapeixEm.exit.i.preheader:            ; preds = %.preheader.i
  %xtraiter = and i64 %i.bz, 7                    ; 3 uses
  %i.cb = icmp ult i32 %i.h, 8
  br i1 %i.cb, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.preheader.new

_ZNK2cv8MatShapeixEm.exit.i.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %unroll_iter = and i64 %i.bz, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.069.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %i.do, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !32
  %i.ce = sext i32 %i.cd to i64
  %i.cf = mul i64 %.069.i, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !32
  %i.cj = sext i32 %i.ci to i64
  %i.ck = mul i64 %i.cf, %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !32
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul i64 %i.ck, %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !32
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul i64 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !32
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul i64 %i.cu, %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 20
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !32
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul i64 %i.cz, %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !32
  %i.di = sext i32 %i.dh to i64
  %i.dj = mul i64 %i.de, %i.di
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !32
  %i.dn = sext i32 %i.dm to i64
  %i.do = mul i64 %i.dj, %i.dn                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK2cv3Mat5totalEv.exit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !7

bb.x:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc97 unwind label %bb.ab

.noexc97:                                         ; preds = %bb.x
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc97
  unreachable

bb.z:                                             ; preds = %.noexc97
  %i.dp = landingpad { ptr, i32 }
          cleanup
  %i.dq = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.z
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !25
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body98

_ZNK2cv3Mat5totalEv.exit.unr-lcssa:               ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZNK2cv3Mat5totalEv.exit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %indvars.iv.next.i.7, %_ZNK2cv3Mat5totalEv.exit.unr-lcssa ]
  %.069.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %i.do, %_ZNK2cv3Mat5totalEv.exit.unr-lcssa ]
  %lcmp.mod156 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod156)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ] ; 2 uses
  %.069.i.epil = phi i64 [ %i.dy, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %.069.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i.epil
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !32
  %i.dx = sext i32 %i.dw to i64
  %i.dy = mul i64 %.069.i.epil, %i.dx             ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !210

_ZNK2cv3Mat5totalEv.exit:                         ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv3Mat5totalEv.exit.unr-lcssa
  %.lcssa = phi i64 [ %i.do, %_ZNK2cv3Mat5totalEv.exit.unr-lcssa ], [ %i.dy, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ea = zext nneg i32 %i.e to i64
  %i.eb = mul i64 %.lcssa, %i.ea
  %i.ec = zext nneg i32 %3 to i64
  %i.ed = udiv i64 %i.eb, %i.ec
  %i.ee = trunc i64 %i.ed to i32
  store i32 %i.ee, ptr %i.dz, align 4, !tbaa !32
  invoke void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %spec.select, i32 noundef 2, ptr noundef nonnull %i.a)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZNK2cv3Mat5totalEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.bd

bb.ab:                                            ; preds = %bb.x, %_ZNK2cv3Mat5totalEv.exit
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body98

.body98:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.ab
  %eh.lpad-body99 = phi { ptr, i32 } [ %i.ef, %bb.ab ], [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.body

bb.ac:                                            ; preds = %bb.a
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !72 ; 2 uses
  %i.ei = mul nsw i32 %i.eh, %i.e                 ; 6 uses
  %i.ej = icmp sgt i32 %spec.select, %i.ei
  br i1 %i.ej, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ek = srem i32 %i.ei, %spec.select
  %i.el = icmp ne i32 %i.ek, 0
  %i.em = icmp eq i32 %3, 0
  %or.cond = and i1 %i.em, %i.el
  br i1 %or.cond, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %.old1 = icmp eq i32 %3, 0
  br i1 %.old1, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !73
  %i.ep = mul nsw i32 %i.eo, %i.ei
  %i.eq = sdiv i32 %i.ep, %spec.select
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %.052 = phi i32 [ %i.eq, %bb.af ], [ %3, %bb.ad ] ; 2 uses
  %.not = icmp eq i32 %.052, 0
  br i1 %.not, label %._crit_edge, label %.thread

._crit_edge:                                      ; preds = %bb.ag
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !73
  br label %bb.au

.thread:                                          ; preds = %bb.ae, %bb.ag
  %.052130 = phi i32 [ %.052, %bb.ag ], [ %3, %bb.ae ] ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.es = load i32, ptr %i.er, align 8, !tbaa !73 ; 2 uses
  %.not60 = icmp eq i32 %.052130, %i.es
  br i1 %.not60, label %bb.au, label %bb.ah

bb.ah:                                            ; preds = %.thread
  %i.et = load i32, ptr %1, align 8, !tbaa !71    ; 2 uses
  %i.eu = and i32 %i.et, 16384
  %.not131 = icmp eq i32 %i.eu, 0
  br i1 %.not131, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.73, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -13, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1713) #25
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.ai
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

bb.am:                                            ; preds = %bb.aj
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = load ptr, ptr %15, align 8, !tbaa !24   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.am
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !25
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.al
  %.pn = phi { ptr, i32 } [ %i.ev, %bb.al ], [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.ew, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %.body

bb.an:                                            ; preds = %bb.ah
  %i.fc = mul nsw i32 %i.es, %i.ei                ; 2 uses
  %i.fd = sdiv i32 %i.fc, %.052130                ; 3 uses
  %i.fe = mul nsw i32 %i.fd, %.052130
  %.not62 = icmp eq i32 %i.fe, %i.fc
  br i1 %.not62, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.74, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1719) #25
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.as:                                            ; preds = %bb.ap
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = load ptr, ptr %17, align 8, !tbaa !24   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.as
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !25
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.ar
  %.pn67 = phi { ptr, i32 } [ %i.ff, %bb.ar ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %i.fg, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %.body

bb.at:                                            ; preds = %bb.an
  %i.fm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.052130, ptr %i.fm, align 8, !tbaa !73
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 84
  store i32 %.052130, ptr %i.fn, align 4, !tbaa !32
  %i.fo = sext i32 %i.fd to i64
  %i.fp = shl i32 %i.et, 2
  %i.fq = and i32 %i.fp, 124
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = lshr i64 1275511473185297, %i.fr
  %i.ft = and i64 %i.fs, 15
  %i.fu = mul nsw i64 %i.ft, %i.fo
  br label %.sink.split

bb.au:                                            ; preds = %._crit_edge, %.thread
  %i.fv = phi i32 [ %.pre, %._crit_edge ], [ %.052130, %.thread ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.fv, ptr %i.fw, align 8, !tbaa !73
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 84
  store i32 %i.fv, ptr %i.fx, align 4, !tbaa !32
  %.not132 = icmp eq i32 %i.h, 2
  br i1 %.not132, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fy = load i32, ptr %1, align 8, !tbaa !71    ; 2 uses
  %i.fz = lshr i32 %i.fy, 5
  %i.ga = and i32 %i.fz, 127
  %i.gb = add nuw nsw i32 %i.ga, 1
  %i.gc = shl i32 %i.fy, 2
  %i.gd = and i32 %i.gc, 124
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = lshr i64 1275511473185297, %i.ge
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = and i32 %i.gg, 15
  %i.gi = mul i32 %i.gb, %i.eh
  %i.gj = mul i32 %i.gi, %i.gh
  %i.gk = sext i32 %i.gj to i64
  br label %.sink.split

.sink.split:                                      ; preds = %bb.at, %bb.av
  %.sink = phi i64 [ %i.gk, %bb.av ], [ %i.fu, %bb.at ]
  %.0.ph = phi i32 [ %i.ei, %bb.av ], [ %i.fd, %bb.at ]
end_hunk_10
begin_hunk_11_@_ZNK2cv3Mat7reshapeEiiPKi:bb.a
  %i.r = load i64, ptr %i.p, align 8, !tbaa !25
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn74 = phi { ptr, i32 } [ %i.m, %bb.l ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.n, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

bb.n:                                             ; preds = %bb.h
  %i.t = icmp eq i32 %2, 0
  br i1 %i.t, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.u = lshr i32 %i.g, 5
  %i.v = and i32 %i.u, 127
  %i.w = add nuw nsw i32 %i.v, 1
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.x = icmp slt i32 %2, 129
  br i1 %i.x, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.77, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1759) #25
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.u:                                             ; preds = %bb.r
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.u
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.t
  %.pn76 = phi { ptr, i32 } [ %i.y, %bb.t ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.z, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %common.resume

bb.v:                                             ; preds = %bb.p, %bb.o
  %.067 = phi i32 [ %i.w, %bb.o ], [ %2, %bb.p ]  ; 2 uses
  %i.af = icmp slt i32 %i.b, 3
  br i1 %i.af, label %bb.w, label %.preheader.i

.preheader.i:                                     ; preds = %bb.v
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !29
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 1)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 9 uses
  %i.aj = zext nneg i32 %i.b to i64               ; 2 uses
  %i.ak = add nsw i32 %i.b, -1
  %.not.not.i = icmp samesign ugt i32 %narrow.i.i, %i.ak
  br i1 %.not.not.i, label %_ZNK2cv8MatShapeixEm.exit.i.preheader, label %bb.x

_ZNK2cv8MatShapeixEm.exit.i.preheader:            ; preds = %.preheader.i
  %xtraiter = and i64 %i.aj, 7                    ; 3 uses
  %i.al = icmp ult i32 %i.b, 8
  br i1 %i.al, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.preheader.new

_ZNK2cv8MatShapeixEm.exit.i.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %unroll_iter = and i64 %i.aj, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

bb.w:                                             ; preds = %bb.v
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !73
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !72
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul nsw i64 %i.ar, %i.ao
  br label %_ZNK2cv3Mat5totalEv.exit

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.069.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %i.cf, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !32
  %i.av = sext i32 %i.au to i64
  %i.aw = mul i64 %.069.i, %i.av
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !32
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul i64 %i.aw, %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !32
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %i.bb, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !32
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul i64 %i.bg, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !32
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %i.bl, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 20
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !32
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %i.bq, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !32
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul i64 %i.bv, %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !32
  %i.ce = sext i32 %i.cd to i64
  %i.cf = mul i64 %i.ca, %i.ce                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !7

bb.x:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.z
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !25
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZN2cv10AutoBufferIiLm4EED2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn84.pn, %_ZN2cv10AutoBufferIiLm4EED2Ev.exit106 ], [ %.pn76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa:      ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %indvars.iv.next.i.7, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ]
  %.069.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %i.cf, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod148 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ] ; 2 uses
  %.069.i.epil = phi i64 [ %i.cp, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %.069.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i.epil
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !32
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul i64 %.069.i.epil, %i.co             ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !211

_ZNK2cv3Mat5totalEv.exit:                         ; preds = %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.epil, %bb.w
  %.07.i = phi i64 [ %i.as, %bb.w ], [ %i.cf, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ], [ %i.cp, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.cq = lshr i32 %i.g, 5
  %i.cr = and i32 %i.cq, 127
  %i.cs = add nuw nsw i32 %i.cr, 1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = mul i64 %.07.i, %i.ct                   ; 4 uses
  %i.cv = sext i32 %.067 to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.cw = zext i32 %3 to i64                      ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.cx, ptr %11, align 8, !tbaa !214
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.not.i.i = icmp ugt i32 %3, 4
  store i64 %i.cw, ptr %i.cy, align 8, !tbaa !215
  br i1 %.not.i.i, label %bb.aa, label %_ZN2cv10AutoBufferIiLm4EEC2Em.exit

bb.aa:                                            ; preds = %_ZNK2cv3Mat5totalEv.exit
  %i.cz = shl nuw nsw i64 %i.cw, 2
  %i.da = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cz) #27 ; 2 uses
  store ptr %i.da, ptr %11, align 8, !tbaa !214
  br label %_ZN2cv10AutoBufferIiLm4EEC2Em.exit

_ZN2cv10AutoBufferIiLm4EEC2Em.exit:               ; preds = %_ZNK2cv3Mat5totalEv.exit, %bb.aa
  %i.db = phi ptr [ %i.cx, %_ZNK2cv3Mat5totalEv.exit ], [ %i.da, %bb.aa ]
  %i.dc = icmp sgt i32 %3, 0
  br i1 %i.dc, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIiLm4EEC2Em.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 84
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.am
  %i.de = icmp sgt i32 %.1, -1
  br i1 %i.de, label %bb.an, label %._crit_edge.thread

bb.ab:                                            ; preds = %.lr.ph, %bb.am
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.am ] ; 6 uses
  %.052114 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.am ] ; 2 uses
  %.053113 = phi i64 [ %i.cv, %.lr.ph ], [ %.154, %bb.am ] ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !32 ; 4 uses
  %i.dh = icmp sgt i32 %i.dg, -1
  br i1 %i.dh, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.di = icmp eq i32 %i.dg, 0
  br i1 %i.di, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dj = load i32, ptr %i.a, align 4, !tbaa !70
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv, %i.dk
  br i1 %i.dl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !32
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %.sink = phi i32 [ %i.dn, %bb.ae ], [ %i.dg, %bb.ad ], [ %i.dg, %bb.ac ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv
  store i32 %.sink, ptr %i.do, align 4, !tbaa !32
  %i.dp = sext i32 %.sink to i64
  %i.dq = mul i64 %.053113, %i.dp
  br label %bb.am

bb.ag:                                            ; preds = %bb.ab
  %i.dr = icmp sgt i32 %.052114, -1
  %i.ds = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.dr, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -201, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1778) #25
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.al:                                            ; preds = %bb.ai
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %12, align 8, !tbaa !24   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.al
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !25
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.ak
  %.pn84 = phi { ptr, i32 } [ %i.dt, %bb.ak ], [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.du, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.bm

bb.am:                                            ; preds = %bb.ag, %bb.af
  %.154 = phi i64 [ %i.dq, %bb.af ], [ %.053113, %bb.ag ] ; 4 uses
  %.1 = phi i32 [ %.052114, %bb.af ], [ %i.ds, %bb.ag ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.cw
  br i1 %exitcond.not, label %._crit_edge, label %bb.ab, !llvm.loop !212

bb.an:                                            ; preds = %._crit_edge
  %i.ea = icmp eq i64 %.154, 0
  br i1 %i.ea, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.eb = icmp eq i64 %i.cu, 0
  br i1 %i.eb, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.79, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1785) #25
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %bb.ap
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.at:                                            ; preds = %bb.aq
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = load ptr, ptr %14, align 8, !tbaa !24   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.at
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !25
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.as
  %.pn80 = phi { ptr, i32 } [ %i.ec, %bb.as ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.ed, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.bm

bb.au:                                            ; preds = %bb.ao, %bb.an
  %.2 = phi i64 [ %.154, %bb.an ], [ 1, %bb.ao ]  ; 2 uses
  %i.ej = urem i64 %i.cu, %.2
  %i.ek = udiv i64 %i.cu, %.2
  %i.el = icmp eq i64 %i.ej, 0
  br i1 %i.el, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.80, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1788) #25
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %bb.av
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

bb.az:                                            ; preds = %bb.aw
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %16, align 8, !tbaa !24   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.az
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !25
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.ay
  %.pn82 = phi { ptr, i32 } [ %i.em, %bb.ay ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.en, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.bm

bb.ba:                                            ; preds = %bb.au
  %i.et = trunc i64 %i.ek to i32
  %i.eu = zext nneg i32 %.1 to i64
  %i.ev = load ptr, ptr %11, align 8, !tbaa !214
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.eu
  store i32 %i.et, ptr %i.ew, align 4, !tbaa !32
  br label %bb.bh

bb.bb:                                            ; preds = %bb.bh
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

._crit_edge.thread:                               ; preds = %_ZN2cv10AutoBufferIiLm4EEC2Em.exit, %._crit_edge
  %.053.lcssa145 = phi i64 [ %.154, %._crit_edge ], [ %i.cv, %_ZN2cv10AutoBufferIiLm4EEC2Em.exit ]
  %.not = icmp eq i64 %.053.lcssa145, %i.cu
  br i1 %.not, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.81, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -209, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1791) #25
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  unreachable

bb.bf:                                            ; preds = %bb.bc
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

bb.bg:                                            ; preds = %bb.bd
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %18, align 8, !tbaa !24   ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.bg
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !25
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.bf
  %.pn78 = phi { ptr, i32 } [ %i.ey, %bb.bf ], [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.ez, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.bm

bb.bh:                                            ; preds = %._crit_edge.thread, %bb.ba
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.bi unwind label %bb.bb

bb.bi:                                            ; preds = %bb.bh
  %i.ff = load i32, ptr %0, align 8, !tbaa !71
  %i.fg = and i32 %i.ff, -4065
  %i.fh = shl i32 %.067, 5
  %i.fi = add i32 %i.fh, -32
  %i.fj = or i32 %i.fg, %i.fi
  store i32 %i.fj, ptr %0, align 8, !tbaa !71
  %i.fk = load ptr, ptr %11, align 8, !tbaa !214
  invoke void @_ZN2cv7setSizeERNS_3MatEiPKiPKmb(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %3, ptr noundef %i.fk, ptr noundef null, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #24
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bi
  %i.fm = load ptr, ptr %11, align 8, !tbaa !214  ; 3 uses
  %.not.i.i103 = icmp eq ptr %i.fm, %i.cx
  %i.fn = icmp eq ptr %i.fm, null
  %or.cond.i = or i1 %.not.i.i103, %i.fn
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIiLm4EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZdaPv(ptr noundef nonnull %i.fm) #26
  br label %_ZN2cv10AutoBufferIiLm4EED2Ev.exit

_ZN2cv10AutoBufferIiLm4EED2Ev.exit:               ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bt

bb.bm:                                            ; preds = %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn84.pn = phi { ptr, i32 } [ %.pn84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.fl, %bb.bj ], [ %i.ex, %bb.bb ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.pn78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ]
  %i.fo = load ptr, ptr %11, align 8, !tbaa !214  ; 3 uses
  %.not.i.i104 = icmp eq ptr %i.fo, %i.cx
  %i.fp = icmp eq ptr %i.fo, null
  %or.cond.i105 = or i1 %.not.i.i104, %i.fp
  br i1 %or.cond.i105, label %_ZN2cv10AutoBufferIiLm4EED2Ev.exit106, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZdaPv(ptr noundef nonnull %i.fo) #26
  br label %_ZN2cv10AutoBufferIiLm4EED2Ev.exit106

_ZN2cv10AutoBufferIiLm4EED2Ev.exit106:            ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %common.resume

bb.bo:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.82, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1801) #25
          to label %bb.bq unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  unreachable

bb.br:                                            ; preds = %bb.bo
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

bb.bs:                                            ; preds = %bb.bp
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = load ptr, ptr %20, align 8, !tbaa !24   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.bs
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !25
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.br
  %.pn = phi { ptr, i32 } [ %i.fq, %bb.br ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %i.fr, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %common.resume

bb.bt:                                            ; preds = %_ZN2cv10AutoBufferIiLm4EED2Ev.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3Mat7reshapeEiRKSt6vectorIiSaIiEE(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = load ptr, ptr %3, align 8, !tbaa !39     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.j, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = icmp sgt i32 %i.h, 0
  %spec.select = select i1 %i.k, ptr %i.c, ptr null
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.b
  %i.l = phi ptr [ null, %bb.b ], [ %spec.select, %bb.d ]
  tail call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, i32 noundef %i.h, ptr noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3Mat7reshapeEiRKNS_8MatShapeE(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(address_is_null) dereferenceable(52) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [1 x i32], align 4                ; 4 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !29     ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, i32 noundef 1, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  tail call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, i32 noundef %i.b, ptr noundef nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3Mat7reshapeEiSt16initializer_listIiE(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, ptr nofree readonly captures(none) %3, i64 %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [10 x i32], align 16              ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = icmp ult i64 %4, 11
  br i1 %i.b, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.c = shl nuw nsw i64 %4, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 4 %3, i64 %i.c, i1 false), !tbaa !32
  br label %._crit_edge

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.83, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1829) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !24     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !25
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  resume { ptr, i32 } %i.d

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  %i.j = trunc nuw nsw i64 %4 to i32
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, i32 noundef %i.j, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3Mat11reinterpretEi(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !71
  %i.b = and i32 %i.a, 4095                       ; 2 uses
  %i.c = lshr i32 %i.b, 5
  %i.d = add nuw nsw i32 %i.c, 1
  %i.e = shl nuw nsw i32 %i.b, 2
  %i.f = and i32 %i.e, 124
  %i.g = zext nneg i32 %i.f to i64
  %i.h = lshr i64 1275511473185297, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 15
  %i.k = mul nuw nsw i32 %i.j, %i.d
  %i.l = lshr i32 %2, 5
  %i.m = and i32 %i.l, 127
  %i.n = add nuw nsw i32 %i.m, 1                  ; 2 uses
  %i.o = shl i32 %2, 2
  %i.p = and i32 %i.o, 124
  %i.q = zext nneg i32 %i.p to i64
  %i.r = lshr i64 1275511473185297, %i.q
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, 15
  %i.u = mul nuw nsw i32 %i.t, %i.n
  %i.v = icmp eq i32 %i.k, %i.u
  br i1 %i.v, label %bb.e, label %bb.b

end_hunk_11
begin_hunk_12_@_ZN2cv19getContinuousSize2DERNS_3MatES1_S1_i:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.hw = load i32, ptr %i.cx, align 8, !tbaa !73
  %i.hx = icmp eq i32 %i.hr, %i.hw
  br i1 %i.hx, label %bb.bj, label %bb.be

bb.bb:                                            ; preds = %bb.au
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %common.resume

bb.bc:                                            ; preds = %bb.av
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %common.resume

bb.bd:                                            ; preds = %bb.aw
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %common.resume

bb.be:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.100, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv19getContinuousSize2DERNS_3MatES1_i, ptr noundef nonnull @.str.10, i32 noundef 1936) #25
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  unreachable

bb.bh:                                            ; preds = %bb.be
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

bb.bi:                                            ; preds = %bb.bf
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = load ptr, ptr %19, align 8, !tbaa !24   ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.bi
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !25
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ih) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145, %bb.bh
  %.pn83 = phi { ptr, i32 } [ %i.ib, %bb.bh ], [ %i.ic, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %i.ic, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %common.resume

bb.bj:                                            ; preds = %bb.ba
  %i.ii = mul nsw i32 %i.ho, %3
  br label %bb.bl

bb.bk:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit109
  %i.ij = load i32, ptr %0, align 8, !tbaa !71
  %i.ik = load i32, ptr %1, align 8, !tbaa !71
  %i.il = load i32, ptr %2, align 8, !tbaa !71
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.in = load i32, ptr %i.im, align 4, !tbaa !72 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !73 ; 2 uses
  %i.iq = sext i32 %i.in to i64
  %i.ir = sext i32 %i.ip to i64
  %i.is = sext i32 %3 to i64
  %i.it = mul nsw i64 %i.iq, %i.is
  %i.iu = mul i64 %i.it, %i.ir                    ; 2 uses
  %i.iv = icmp sgt i64 %i.iu, 2147483646
  %i.iw = and i32 %i.ij, 16384
  %i.ix = and i32 %i.iw, %i.ik
  %i.iy = and i32 %i.ix, %i.il
  %.not12.i = icmp eq i32 %i.iy, 0
  %or.cond.i = select i1 %.not12.i, i1 true, i1 %i.iv ; 2 uses
  %i.iz = mul nsw i32 %i.in, %3
  %i.ja = trunc i64 %i.iu to i32
  %.sroa.0.0.i = select i1 %or.cond.i, i32 %i.iz, i32 %i.ja
  %.sroa.3.0.extract.trunc = select i1 %or.cond.i, i32 %i.ip, i32 1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.sroa.3.0 = phi i32 [ %i.hr, %bb.bj ], [ %.sroa.3.0.extract.trunc, %bb.bk ]
  %.sroa.0153.0 = phi i32 [ %i.ii, %bb.bj ], [ %.sroa.0.0.i, %bb.bk ]
  %.sroa.3.0.insert.ext = zext i32 %.sroa.3.0 to i64
  %.sroa.3.0.insert.shift = shl nuw i64 %.sroa.3.0.insert.ext, 32
  %.sroa.0153.0.insert.ext = zext i32 %.sroa.0153.0 to i64
  %.sroa.0153.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0153.0.insert.ext
  ret i64 %.sroa.0153.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12MatAllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12MatAllocatorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #28
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2cv25DummyBufferPoolController15getReservedSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i64 -1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2cv25DummyBufferPoolController18getMaxReservedSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i64 -1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv25DummyBufferPoolController18setMaxReservedSizeEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv25DummyBufferPoolController22freeAllReservedBuffersEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv25DummyBufferPoolControllerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv15StdMatAllocatorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK2cv15StdMatAllocator8allocateEiPKiiPvPmNS_10AccessFlagENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = lshr i32 %3, 5
  %i.b = and i32 %i.a, 127
  %i.c = add nuw nsw i32 %i.b, 1
  %i.d = shl i32 %3, 2
  %i.e = and i32 %i.d, 124
  %i.f = zext nneg i32 %i.e to i64
  %i.g = lshr i64 1275511473185297, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 15
  %i.j = mul nuw nsw i32 %i.i, %i.c
  %i.k = zext nneg i32 %i.j to i64                ; 6 uses
  %.03548 = add i32 %1, -1                        ; 2 uses
  %i.l = icmp sgt i32 %1, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not41 = icmp eq ptr %5, null
  br i1 %.not41, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.m = zext i32 %.03548 to i64                  ; 2 uses
  %i.n = and i32 %1, 7                            ; 2 uses
  %xtraiter89 = zext nneg i32 %i.n to i64
  %lcmp.mod90.not = icmp eq i32 %i.n, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv65.prol = phi i64 [ %indvars.iv.next66.prol, %.lr.ph.split.us.prol ], [ %i.m, %.lr.ph.split.us.preheader ] ; 2 uses
  %.03649.us.prol = phi i64 [ %i.r, %.lr.ph.split.us.prol ], [ %i.k, %.lr.ph.split.us.preheader ]
  %prol.iter91 = phi i64 [ %prol.iter91.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv65.prol
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32
  %i.q = sext i32 %i.p to i64
  %i.r = mul i64 %.03649.us.prol, %i.q            ; 3 uses
  %indvars.iv.next66.prol = add nsw i64 %indvars.iv65.prol, -1 ; 2 uses
  %prol.iter91.next = add i64 %prol.iter91, 1     ; 2 uses
  %prol.iter91.cmp.not = icmp eq i64 %prol.iter91.next, %xtraiter89
  br i1 %prol.iter91.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !216

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.preheader ], [ %i.r, %.lr.ph.split.us.prol ]
  %indvars.iv65.unr = phi i64 [ %i.m, %.lr.ph.split.us.preheader ], [ %indvars.iv.next66.prol, %.lr.ph.split.us.prol ]
  %.03649.us.unr = phi i64 [ %i.k, %.lr.ph.split.us.preheader ], [ %i.r, %.lr.ph.split.us.prol ]
  %i.s = icmp ult i32 %1, 8
  br i1 %i.s, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv65 = phi i64 [ %indvars.iv.next66.7, %.lr.ph.split.us ], [ %indvars.iv65.unr, %.lr.ph.split.us.prol.loopexit ] ; 9 uses
  %.03649.us = phi i64 [ %i.be, %.lr.ph.split.us ], [ %.03649.us.unr, %.lr.ph.split.us.prol.loopexit ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv65
  %i.u = load i32, ptr %i.t, align 4, !tbaa !32
  %i.v = sext i32 %i.u to i64
  %i.w = mul i64 %.03649.us, %i.v
  %i.x = getelementptr [4 x i8], ptr %2, i64 %indvars.iv65
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !32
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul i64 %i.w, %i.aa
  %i.ac = getelementptr [4 x i8], ptr %2, i64 %indvars.iv65
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !32
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.ab, %i.af
  %i.ah = getelementptr [4 x i8], ptr %2, i64 %indvars.iv65
  %i.ai = getelementptr i8, ptr %i.ah, i64 -12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32
  %i.ak = sext i32 %i.aj to i64
  %i.al = mul i64 %i.ag, %i.ak
  %i.am = getelementptr [4 x i8], ptr %2, i64 %indvars.iv65
  %i.an = getelementptr i8, ptr %i.am, i64 -16
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.al, %i.ap
  %i.ar = getelementptr [4 x i8], ptr %2, i64 %indvars.iv65
  %i.as = getelementptr i8, ptr %i.ar, i64 -20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !32
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.aq, %i.au
  %i.aw = getelementptr [4 x i8], ptr %2, i64 %indvars.iv65
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !32
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul i64 %i.av, %i.az
  %indvars.iv.next66.6 = add nsw i64 %indvars.iv65, -7 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next66.6
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !32
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul i64 %i.ba, %i.bd                    ; 2 uses
  %indvars.iv.next66.7 = add nsw i64 %indvars.iv65, -8
  %.not82.7 = icmp eq i64 %indvars.iv.next66.6, 0
  br i1 %.not82.7, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !217

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not42 = icmp eq ptr %4, null
  %i.bf = zext i32 %.03548 to i64                 ; 3 uses
  br i1 %.not42, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.bg = and i32 %1, 3                           ; 2 uses
  %xtraiter = zext nneg i32 %i.bg to i64
  %lcmp.mod.not = icmp eq i32 %i.bg, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us.prol.loopexit, label %.lr.ph.split.split.us.prol

.lr.ph.split.split.us.prol:                       ; preds = %.lr.ph.split.split.us.preheader, %.lr.ph.split.split.us.prol
  %indvars.iv62.prol = phi i64 [ %indvars.iv.next63.prol, %.lr.ph.split.split.us.prol ], [ %i.bf, %.lr.ph.split.split.us.preheader ] ; 3 uses
  %.03649.us52.prol = phi i64 [ %i.bl, %.lr.ph.split.split.us.prol ], [ %i.k, %.lr.ph.split.split.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.split.us.prol ], [ 0, %.lr.ph.split.split.us.preheader ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv62.prol
  store i64 %.03649.us52.prol, ptr %i.bh, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv62.prol
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !32
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul i64 %.03649.us52.prol, %i.bk        ; 3 uses
  %indvars.iv.next63.prol = add nsw i64 %indvars.iv62.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.split.us.prol.loopexit, label %.lr.ph.split.split.us.prol, !llvm.loop !218

.lr.ph.split.split.us.prol.loopexit:              ; preds = %.lr.ph.split.split.us.prol, %.lr.ph.split.split.us.preheader
  %.lcssa86.unr = phi i64 [ poison, %.lr.ph.split.split.us.preheader ], [ %i.bl, %.lr.ph.split.split.us.prol ]
  %indvars.iv62.unr = phi i64 [ %i.bf, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next63.prol, %.lr.ph.split.split.us.prol ]
  %.03649.us52.unr = phi i64 [ %i.k, %.lr.ph.split.split.us.preheader ], [ %i.bl, %.lr.ph.split.split.us.prol ]
  %i.bm = icmp ult i32 %1, 4
  br i1 %i.bm, label %._crit_edge.thread, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.prol.loopexit, %.lr.ph.split.split.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63.3, %.lr.ph.split.split.us ], [ %indvars.iv62.unr, %.lr.ph.split.split.us.prol.loopexit ] ; 6 uses
  %.03649.us52 = phi i64 [ %i.cg, %.lr.ph.split.split.us ], [ %.03649.us52.unr, %.lr.ph.split.split.us.prol.loopexit ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv62
  store i64 %.03649.us52, ptr %i.bn, align 8, !tbaa !22
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv62
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !32
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul i64 %.03649.us52, %i.bq             ; 2 uses
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, -1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next63
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next63
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !32
  %i.bv = sext i32 %i.bu to i64
  %i.bw = mul i64 %i.br, %i.bv                    ; 2 uses
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, -2 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next63.1
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !22
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next63.1
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !32
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul i64 %i.bw, %i.ca                    ; 2 uses
  %indvars.iv.next63.2 = add nsw i64 %indvars.iv62, -3 ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next63.2
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !22
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next63.2
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !32
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul i64 %i.cb, %i.cf                    ; 2 uses
  %indvars.iv.next63.3 = add nsw i64 %indvars.iv62, -4
  %.not81.3 = icmp eq i64 %indvars.iv.next63.2, 0
  br i1 %.not81.3, label %._crit_edge.thread, label %.lr.ph.split.split.us, !llvm.loop !217

._crit_edge:                                      ; preds = %bb.i, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %bb.a
  %.036.lcssa = phi i64 [ %i.k, %bb.a ], [ %i.be, %.lr.ph.split.us ], [ %.lcssa.unr, %.lr.ph.split.us.prol.loopexit ], [ %i.ct, %bb.i ] ; 2 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %._crit_edge.thread, label %bb.j

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ %i.bf, %.lr.ph.split ] ; 4 uses
  %.03649 = phi i64 [ %i.ct, %bb.i ], [ %i.k, %.lr.ph.split ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !22 ; 3 uses
  %.not43 = icmp eq i64 %i.ci, 2147483647
  br i1 %.not43, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.split
  %.not44 = icmp ugt i64 %.03649, %i.ci
  br i1 %.not44, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.103, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv15StdMatAllocator8allocateEiPKiiPvPmNS_10AccessFlagENS_14UMatUsageFlagsE, ptr noundef nonnull @.str.10, i32 noundef 566) #25
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !25
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.f ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ck, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.o

bb.h:                                             ; preds = %.lr.ph.split.split
  store i64 %.03649, ptr %i.ch, align 8, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.137 = phi i64 [ %i.ci, %bb.b ], [ %.03649, %bb.h ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !32
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul i64 %.137, %i.cs                    ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.cu = icmp sgt i64 %indvars.iv, 0
  br i1 %i.cu, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !217

._crit_edge.thread:                               ; preds = %.lr.ph.split.split.us.prol.loopexit, %.lr.ph.split.split.us, %._crit_edge
  %.036.lcssa74 = phi i64 [ %.036.lcssa, %._crit_edge ], [ %.lcssa86.unr, %.lr.ph.split.split.us.prol.loopexit ], [ %i.cg, %.lr.ph.split.split.us ] ; 2 uses
  %i.cv = tail call noundef ptr @_ZN2cv10fastMallocEm(i64 noundef %.036.lcssa74)
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %.not76 = phi i1 [ true, %._crit_edge.thread ], [ false, %._crit_edge ]
  %.036.lcssa75 = phi i64 [ %.036.lcssa74, %._crit_edge.thread ], [ %.036.lcssa, %._crit_edge ]
  %i.cw = phi ptr [ %i.cv, %._crit_edge.thread ], [ %4, %._crit_edge ] ; 2 uses
  %i.cx = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #27 ; 7 uses
  invoke void @_ZN2cv8UMatDataC1EPKNS_12MatAllocatorE(ptr noundef nonnull align 8 dereferenceable(104) %i.cx, ptr noundef nonnull %0)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !98
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store ptr %i.cw, ptr %i.cz, align 8, !tbaa !53
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  store i64 %.036.lcssa75, ptr %i.da, align 8, !tbaa !89
  br i1 %.not76, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 48 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !99
  %i.dd = or i32 %i.dc, 32
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !99
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.de = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 104) #26
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k
  ret ptr %i.cx

bb.o:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.de, %bb.m ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv15StdMatAllocator8allocateEPNS_8UMatDataENS_10AccessFlagENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 comdat align 2 {
bb.a:
  %.not = icmp ne ptr %1, null
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv15StdMatAllocator10deallocateEPNS_8UMatDataE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.104, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv15StdMatAllocator10deallocateEPNS_8UMatDataE, ptr noundef nonnull @.str.10, i32 noundef 595) #25
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.i = load i64, ptr %i.g, align 8, !tbaa !25
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.r

bb.h:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !52
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.105, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv15StdMatAllocator10deallocateEPNS_8UMatDataE, ptr noundef nonnull @.str.10, i32 noundef 596) #25
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.m:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.m
  %i.s = load i64, ptr %i.q, align 8, !tbaa !25
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.l
  %.pn13 = phi { ptr, i32 } [ %i.n, %bb.l ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.o, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.r

bb.n:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val = load i32, ptr %i.u, align 8, !tbaa !99
  %i.v = and i32 %.val, 32
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !98
  tail call void @_ZN2cv8fastFreeEPv(ptr noundef %i.x)
  store ptr null, ptr %i.w, align 8, !tbaa !98
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  tail call void @_ZN2cv8UMatDataD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %1) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 104) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p
  ret void

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn13.pn
}

declare noundef ptr @_ZN2cv10fastMallocEm(i64 noundef) local_unnamed_addr #6

declare void @_ZN2cv8UMatDataC1EPKNS_12MatAllocatorE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #6

declare void @_ZN2cv8fastFreeEPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN2cv8UMatDataD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104)) unnamed_addr #18

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #19

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #18
end_hunk_12
begin_hunk_13_@llvm.smin.i32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !33}
!1 = distinct !{!1, !33}
!2 = distinct !{!2, !33}
!3 = distinct !{!3, !33}
!4 = distinct !{null}
!5 = distinct !{!5, !33}
!6 = distinct !{!6, !33}
!7 = distinct !{!7, !33}
!8 = distinct !{ptr @_ZN2cv3Mat19getDefaultAllocatorEv, null}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"long", !13, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !21, i64 8, !13, i64 16}
!24 = !{!23, !18, i64 0}
!25 = !{!13, !13, i64 0}
!26 = !{!23, !21, i64 8}
!27 = !{!"_ZTSN2cv10DataLayoutE", !13, i64 0}
!28 = !{!"_ZTSN2cv8MatShapeE", !14, i64 0, !27, i64 4, !14, i64 8, !13, i64 12}
!29 = !{!28, !14, i64 0}
!30 = !{!28, !27, i64 4}
!31 = !{!28, !14, i64 8}
!32 = !{!14, !14, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = !{!"p1 int", !17, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!38, !37, i64 0}
!40 = !{!38, !37, i64 8}
!41 = !{!"vtable pointer", !12, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"p1 _ZTSN2cv12MatAllocatorE", !17, i64 0}
!44 = !{!"_ZTSN2cv8UMatData10MemoryFlagE", !13, i64 0}
!45 = !{!"p1 _ZTSN2cv8UMatDataE", !17, i64 0}
!46 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!47 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !46, i64 0}
!48 = !{!"_ZTSSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0, !47, i64 8}
!49 = !{!"_ZTSSt10shared_ptrIvE", !48, i64 0}
!50 = !{!"_ZTSN2cv8UMatDataE", !43, i64 0, !43, i64 8, !14, i64 16, !14, i64 20, !18, i64 24, !18, i64 32, !21, i64 40, !44, i64 48, !17, i64 56, !17, i64 64, !14, i64 72, !14, i64 76, !45, i64 80, !49, i64 88}
!51 = !{!50, !14, i64 16}
!52 = !{!50, !14, i64 20}
!53 = !{!50, !18, i64 24}
!54 = !{!"p1 _ZTSN2cv3MatE", !17, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"any p2 pointer", !17, i64 0}
!57 = !{!"p2 _ZTSN2cv3MatE", !56, i64 0}
!58 = !{!"p2 omnipotent char", !56, i64 0}
!59 = !{!"_ZTSN2cv15NAryMatIteratorE", !57, i64 0, !54, i64 8, !58, i64 16, !14, i64 24, !21, i64 32, !21, i64 40, !14, i64 48, !21, i64 56}
!60 = !{!59, !21, i64 40}
!61 = !{!59, !21, i64 32}
!62 = !{!18, !18, i64 0}
!63 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !17, i64 0}
!64 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !63, i64 0, !14, i64 8}
!65 = !{!64, !14, i64 8}
!66 = !{!"branch_weights", i32 1, i32 1048575}
!67 = !{!43, !43, i64 0}
!68 = !{!"_ZTSN2cv7MatStepE", !13, i64 0}
!69 = !{!"_ZTSN2cv3MatE", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !43, i64 56, !45, i64 64, !28, i64 72, !68, i64 128}
!70 = !{!69, !14, i64 4}
!71 = !{!69, !14, i64 0}
!72 = !{!69, !14, i64 12}
!73 = !{!69, !14, i64 8}
!74 = !{!69, !45, i64 64}
!75 = !{!69, !18, i64 24}
!76 = !{!69, !18, i64 32}
!77 = !{!69, !18, i64 48}
!78 = !{!69, !18, i64 40}
!79 = !{!69, !14, i64 16}
!80 = !{!69, !43, i64 56}
!81 = !{!69, !14, i64 72}
!82 = !{!17, !17, i64 0}
!83 = !{i64 0, i64 80, !25}
!84 = !{!50, !43, i64 8}
!85 = !{!"_ZTSN2cv5Size_IiEE", !14, i64 0, !14, i64 4}
!86 = !{!"_ZTSN2cv11_InputArrayE", !14, i64 0, !17, i64 8, !85, i64 16}
!87 = !{!86, !14, i64 0}
!88 = !{!86, !17, i64 8}
!89 = !{!50, !21, i64 40}
!90 = !{!"_ZTSN2cv5RangeE", !14, i64 0, !14, i64 4}
!91 = !{!90, !14, i64 0}
!92 = !{!90, !14, i64 4}
!93 = !{!"_ZTSN2cv6Point_IiEE", !14, i64 0, !14, i64 4}
!94 = !{!93, !14, i64 4}
!95 = !{!93, !14, i64 0}
!96 = !{!85, !14, i64 4}
!97 = !{!85, !14, i64 0}
!98 = !{!50, !18, i64 32}
!99 = !{!44, !44, i64 0}
!100 = distinct !{!100, !33, !34, !35}
!101 = distinct !{!101, !33, !35, !34}
!102 = distinct !{!102, !36}
!103 = distinct !{!103, !36}
!104 = distinct !{!104, !36}
!105 = distinct !{!105, !36}
!106 = distinct !{!106, !33, !34, !35}
!107 = distinct !{!107, !33, !34}
!108 = distinct !{!108, !33, !34, !35}
!109 = distinct !{!109, !33, !34, !35}
!110 = distinct !{!110, !33, !34}
!111 = distinct !{!111, !33, !35, !34}
!112 = distinct !{!112, !33, !34, !35}
!113 = distinct !{!113, !33, !34, !35}
!114 = distinct !{!114, !36}
!115 = distinct !{!115, !33, !34}
!116 = distinct !{!116, !33, !34}
!117 = distinct !{!117, !33, !34, !35}
!118 = distinct !{!118, !33, !35, !34}
!119 = distinct !{!119, !36}
!120 = !{!38, !37, i64 16}
!121 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!122 = distinct !{!122, !36}
!123 = distinct !{!123, !33, !128}
!124 = distinct !{!124, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!125 = distinct !{!125, !124, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!126 = distinct !{!126, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!127 = distinct !{!127, !126, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!128 = !{!"llvm.loop.peeled.count", i32 1}
!129 = !{!125}
!130 = !{!127}
!131 = !{!127, !125}
!132 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!133 = !{!"_ZTSSt6locale", !132, i64 0}
!134 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !133, i64 56}
!135 = !{!134, !18, i64 40}
!136 = !{!134, !18, i64 32}
!137 = !{!"_ZTSSi", !21, i64 8}
!138 = !{!137, !21, i64 8}
!139 = distinct !{!139, !36}
!140 = distinct !{!140, !33}
!141 = distinct !{!141, !36}
!142 = distinct !{!142, !33}
!143 = distinct !{!143, !36}
!144 = distinct !{!144, !33}
!145 = distinct !{!145, !36}
!146 = distinct !{!146, !33}
!147 = distinct !{!147, !36}
!148 = distinct !{!148, !33}
!149 = distinct !{!149, !36}
!150 = distinct !{!150, !33}
!151 = distinct !{!151, !33}
!152 = distinct !{!152, !33}
!153 = distinct !{!153, !33}
!154 = distinct !{!154, !33}
!155 = distinct !{!155, !33}
!156 = distinct !{!156, !33}
!157 = distinct !{!157, !33}
!158 = distinct !{!158, !33}
!159 = distinct !{!159, !33, !34, !35}
!160 = distinct !{!160, !36}
!161 = distinct !{!161, !36}
!162 = distinct !{!162, !33}
!163 = distinct !{!163, !33, !34}
!164 = distinct !{!164, !33}
!165 = distinct !{!165, !36}
!166 = distinct !{!166, !33}
!167 = distinct !{!167, !36}
!168 = distinct !{!168, !36}
!169 = distinct !{!169, !36}
!170 = distinct !{!170, !36}
!171 = distinct !{ptr @_ZN2cv3Mat10deallocateEv, ptr @_ZN2cv3Mat19getDefaultAllocatorEv, null}
!172 = !{ptr @_ZN2cv3Mat10deallocateEv}
!173 = distinct !{!173, !36}
!174 = distinct !{!174, !33}
!175 = distinct !{!175, !36}
!176 = distinct !{!176, !33}
!177 = !{!"_ZTSN2cv5Rect_IiEE", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!178 = !{!177, !14, i64 4}
!179 = !{!177, !14, i64 0}
!180 = !{!177, !14, i64 8}
!181 = !{!177, !14, i64 12}
!182 = distinct !{!182, !33}
!183 = distinct !{!183, !33}
!184 = distinct !{!184, !33}
!185 = distinct !{!185, !33}
!186 = !{!"p1 _ZTSN2cv5RangeE", !17, i64 0}
!187 = !{!"_ZTSNSt12_Vector_baseIN2cv5RangeESaIS1_EE17_Vector_impl_dataE", !186, i64 0, !186, i64 8, !186, i64 16}
!188 = !{!187, !186, i64 8}
!189 = !{!187, !186, i64 0}
!190 = distinct !{!190, i1 true, !"_ZNK2cv3Mat8rowRangeEii"}
!191 = distinct !{!191, !190, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!192 = !{!191}
!193 = distinct !{!193, !36}
!194 = distinct !{!194, !33}
!195 = distinct !{!195, !36}
!196 = distinct !{!196, !36}
!197 = distinct !{!197, i1 true, !"_ZNK2cv3Mat8rowRangeEii"}
!198 = distinct !{!198, !197, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!199 = !{!198}
!200 = distinct !{!200, i1 true, !"_ZNK2cv3Mat8rowRangeEii"}
!201 = distinct !{!201, !200, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!202 = !{!201}
!203 = distinct !{!203, i1 true, !"_ZNK2cv3Mat5cloneEv"}
!204 = distinct !{!204, !203, !"_ZNK2cv3Mat5cloneEv: argument 0"}
!205 = distinct !{!205, !36}
!206 = distinct !{!206, i1 true, !"_ZNK2cv3Mat8rowRangeEii"}
!207 = distinct !{!207, !206, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!208 = !{!204}
!209 = !{!207}
!210 = distinct !{!210, !36}
!211 = distinct !{!211, !36}
!212 = distinct !{!212, !33}
!213 = !{!"_ZTSN2cv10AutoBufferIiLm4EEE", !37, i64 0, !21, i64 8, !13, i64 16}
!214 = !{!213, !37, i64 0}
!215 = !{!213, !21, i64 8}
!216 = distinct !{!216, !36}
!217 = distinct !{!217, !33}
!218 = distinct !{!218, !36}
end_hunk_13
