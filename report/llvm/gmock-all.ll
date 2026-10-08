Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/gmock-all?download=true
inline.NumInlined: 1964
inline.NumDeleted: 959
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7testing10InSequenceD2Ev:bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !240, !range !172, !noundef !135
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7testing8internal11ThreadLocalIPNS_8SequenceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZN7testing8internal25g_gmock_implicit_sequenceE)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !236  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN7testing8SequenceD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !71
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #28, !inline_history !420
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #28, !inline_history !420
  br label %_ZN7testing8SequenceD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !170
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.k, %bb.g ], [ %i.u, %bb.h ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.i, label %_ZN7testing8SequenceD2Ev.exit, !prof !171

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #28
  br label %_ZN7testing8SequenceD2Ev.exit

_ZN7testing8SequenceD2Ev.exit:                    ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 16) #29
  br label %bb.j

bb.j:                                             ; preds = %_ZN7testing8SequenceD2Ev.exit, %bb.b
  %i.w = tail call noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_8SequenceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZN7testing8internal25g_gmock_implicit_sequenceE)
  store ptr null, ptr %i.w, align 8, !tbaa !236
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing14InitGoogleMockEPiPPc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7testing8internal18InitGoogleMockImplIcEEvPiPPT_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal18InitGoogleMockImplIcEEvPiPPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  tail call void @_ZN7testing14InitGoogleTestEPiPPc(ptr noundef %0, ptr noundef %1) #28
  %i.c = load i32, ptr %0, align 4, !tbaa !170
  %or.cond = icmp slt i32 %i.c, 2
  br i1 %or.cond, label %.loopexit, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %.02546 = phi i32 [ 1, %.lr.ph47 ], [ %.126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.g = sext i32 %.02546 to i64                  ; 4 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g
  call void @_ZN7testing8internal18StreamableToStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.i = load ptr, ptr %2, align 8, !tbaa !25     ; 3 uses
  %i.j = call fastcc noundef ptr @_ZN7testing8internalL24ParseGoogleMockFlagValueEPKcS2_b(ptr noundef readonly %i.i, ptr noundef nonnull @.str.130, i1 noundef zeroext true) ; 2 uses
  %.not38 = icmp eq ptr %i.j, null
  br i1 %.not38, label %_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.j, align 1, !tbaa !27    ; 2 uses
  switch i8 %i.k, label %bb.d [
    i8 48, label %.thread
    i8 102, label %.thread
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ne i8 %i.k, 70
  %i.m = zext i1 %i.l to i8
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.c, %bb.d
  %.032.ph = phi i8 [ %i.m, %bb.d ], [ 0, %bb.c ], [ 0, %bb.c ]
  store i8 %.032.ph, ptr @_ZN7testing30FLAGS_gmock_catch_leaked_mocksE, align 1, !tbaa !203
  br label %.preheader

_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.d, ptr %3, align 8, !tbaa !28
  %i.n = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, i64 8), align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.o, ptr %i.a, align 8, !tbaa !82
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 2 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !25
  %i.r = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 %i.r, ptr %i.d, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit
  %i.s = phi ptr [ %i.q, %bb.e ], [ %i.d, %_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit ] ; 2 uses
  switch i64 %i.o, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.n, align 1, !tbaa !27
  store i8 %i.t, ptr %i.s, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.n, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.u = load i64, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  store i64 %i.u, ptr %i.e, align 8, !tbaa !26
  %i.v = load ptr, ptr %3, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.x = call fastcc noundef ptr @_ZN7testing8internalL24ParseGoogleMockFlagValueEPKcS2_b(ptr noundef %i.i, ptr noundef nonnull @.str.131, i1 noundef zeroext false) ; 3 uses
  %.not39.not = icmp eq ptr %i.x, null            ; 2 uses
  br i1 %.not39.not, label %_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = load i64, ptr %i.e, align 8, !tbaa !26
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #28
  %i.aa = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.y, ptr noundef nonnull %i.x, i64 noundef %i.z) #28 ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  br label %_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit

_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.h
  %i.ab = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.d
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !27
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.not39.not, label %bb.i, label %.preheader

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.af = load i32, ptr @_ZN7testing33FLAGS_gmock_default_mock_behaviorE, align 4, !tbaa !170
  store i32 %i.af, ptr %i.b, align 4, !tbaa !170
  %i.ag = call fastcc noundef zeroext i1 @_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pi(ptr noundef %i.i, ptr noundef %i.b)
  br i1 %i.ag, label %bb.j, label %.critedge41

bb.j:                                             ; preds = %bb.i
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !170
  store i32 %i.ah, ptr @_ZN7testing33FLAGS_gmock_default_mock_behaviorE, align 4, !tbaa !170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.preheader

.preheader:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %.thread, %bb.j
  %i.ai = load i32, ptr %0, align 4, !tbaa !170   ; 4 uses
  %.not2843 = icmp eq i32 %.02546, %i.ai
  br i1 %.not2843, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.aj = xor i32 %.02546, -1
  %i.ak = add i32 %i.ai, %i.aj                    ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ak, 3
  br i1 %min.iters.check, label %.lr.ph.preheader58, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.am, 8589934588              ; 3 uses
  %i.an = add nsw i64 %n.vec, %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = add i64 %index, %i.g                    ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %1, i64 %i.ao ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = getelementptr i8, ptr %i.ap, i64 24
  %wide.load = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !81
  %wide.load57 = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !81
  %i.as = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ao ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <2 x ptr> %wide.load, ptr %i.as, align 8, !tbaa !81
  store <2 x ptr> %wide.load57, ptr %i.at, align 8, !tbaa !81
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !421

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader58

.lr.ph.preheader58:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader
  %i.av = add nsw i32 %i.ai, -1
  store i32 %i.av, ptr %0, align 4, !tbaa !170
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader58, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader58 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !81
  %i.ay = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !81
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %i.ai, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !422

.critedge41:                                      ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %4 = add nsw i32 %.02546, 1
  br label %bb.k

bb.k:                                             ; preds = %.critedge41, %._crit_edge
  %.126 = phi i32 [ %.02546, %._crit_edge ], [ %4, %.critedge41 ] ; 2 uses
  %i.az = load ptr, ptr %2, align 8, !tbaa !25    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.f
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.k
  %i.bb = load i64, ptr %i.f, align 8, !tbaa !27
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.bd = load i32, ptr %0, align 4, !tbaa !170
  %.not = icmp eq i32 %.126, %i.bd
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !423

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing14InitGoogleMockEPiPPw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7testing8internal18InitGoogleMockImplIwEEvPiPPT_(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7testing8internal18InitGoogleMockImplIwEEvPiPPT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.testing::Message", align 8  ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  tail call void @_ZN7testing14InitGoogleTestEPiPPw(ptr noundef %0, ptr noundef %1) #28
  %i.c = load i32, ptr %0, align 4, !tbaa !170
  %or.cond = icmp slt i32 %i.c, 2
  br i1 %or.cond, label %.loopexit, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %.02546 = phi i32 [ 1, %.lr.ph47 ], [ %.126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.g = sext i32 %.02546 to i64                  ; 4 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !430
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #28, !noalias !430
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !432, !noalias !430
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7testing7MessagelsEPw(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.i) #28, !noalias !430
  call void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #28
  %i.k = load ptr, ptr %2, align 8, !tbaa !118, !noalias !430 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(128) %i.k) #28, !inline_history !426
  br label %_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !430
  %i.o = load ptr, ptr %3, align 8, !tbaa !25     ; 3 uses
  %i.p = call fastcc noundef ptr @_ZN7testing8internalL24ParseGoogleMockFlagValueEPKcS2_b(ptr noundef readonly %i.o, ptr noundef nonnull @.str.130, i1 noundef zeroext true) ; 2 uses
  %.not38 = icmp eq ptr %i.p, null
  br i1 %.not38, label %_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.q = load i8, ptr %i.p, align 1, !tbaa !27    ; 2 uses
  switch i8 %i.q, label %bb.d [
    i8 48, label %.thread
    i8 102, label %.thread
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ne i8 %i.q, 70
  %i.s = zext i1 %i.r to i8
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.c, %bb.d
  %.032.ph = phi i8 [ %i.s, %bb.d ], [ 0, %bb.c ], [ 0, %bb.c ]
  store i8 %.032.ph, ptr @_ZN7testing30FLAGS_gmock_catch_leaked_mocksE, align 1, !tbaa !203
  br label %.preheader

_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit: ; preds = %_ZN7testing8internal18StreamableToStringIPwEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.d, ptr %4, align 8, !tbaa !28
  %i.t = load ptr, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, align 8, !tbaa !25 ; 2 uses
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, i64 8), align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.u, ptr %i.a, align 8, !tbaa !82
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 2 uses
  store ptr %i.w, ptr %4, align 8, !tbaa !25
  %i.x = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 %i.x, ptr %i.d, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.e, %_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit
  %i.y = phi ptr [ %i.w, %bb.e ], [ %i.d, %_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pb.exit ] ; 2 uses
  switch i64 %i.u, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.t, align 1, !tbaa !27
  store i8 %i.z, ptr %i.y, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.t, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  store i64 %i.aa, ptr %i.e, align 8, !tbaa !26
  %i.ab = load ptr, ptr %4, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  store i8 0, ptr %i.ac, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ad = call fastcc noundef ptr @_ZN7testing8internalL24ParseGoogleMockFlagValueEPKcS2_b(ptr noundef %i.o, ptr noundef nonnull @.str.131, i1 noundef zeroext false) ; 3 uses
  %.not39.not = icmp eq ptr %i.ad, null           ; 2 uses
  br i1 %.not39.not, label %_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !26
  %i.af = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #28
  %i.ag = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.ae, ptr noundef nonnull %i.ad, i64 noundef %i.af) #28 ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing19FLAGS_gmock_verboseB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  br label %_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit

_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.h
  %i.ah = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.d
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !27
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN7testing8internalL19ParseGoogleMockFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcS9_PT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.not39.not, label %bb.i, label %.preheader

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.al = load i32, ptr @_ZN7testing33FLAGS_gmock_default_mock_behaviorE, align 4, !tbaa !170
  store i32 %i.al, ptr %i.b, align 4, !tbaa !170
  %i.am = call fastcc noundef zeroext i1 @_ZN7testing8internalL19ParseGoogleMockFlagEPKcS2_Pi(ptr noundef %i.o, ptr noundef %i.b)
  br i1 %i.am, label %bb.j, label %.critedge41

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %i.b, align 4, !tbaa !170
  store i32 %i.an, ptr @_ZN7testing33FLAGS_gmock_default_mock_behaviorE, align 4, !tbaa !170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.preheader

.preheader:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %.thread, %bb.j
  %i.ao = load i32, ptr %0, align 4, !tbaa !170   ; 4 uses
  %.not2843 = icmp eq i32 %.02546, %i.ao
  br i1 %.not2843, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ap = xor i32 %.02546, -1
  %i.aq = add i32 %i.ao, %i.ap                    ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.aq, 3
  br i1 %min.iters.check, label %.lr.ph.preheader59, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.as, 8589934588              ; 3 uses
  %i.at = add nsw i64 %n.vec, %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = add i64 %index, %i.g                    ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %1, i64 %i.au ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = getelementptr i8, ptr %i.av, i64 24
  %wide.load = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !432
  %wide.load58 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !432
  %i.ay = getelementptr inbounds [8 x i8], ptr %1, i64 %i.au ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <2 x ptr> %wide.load, ptr %i.ay, align 8, !tbaa !432
  store <2 x ptr> %wide.load58, ptr %i.az, align 8, !tbaa !432
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !427

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader59

.lr.ph.preheader59:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.g, %.lr.ph.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader
  %i.bb = add nsw i32 %i.ao, -1
  store i32 %i.bb, ptr %0, align 4, !tbaa !170
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader59, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader59 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !432
  %i.be = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !432
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %i.ao, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !428

.critedge41:                                      ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %5 = add nsw i32 %.02546, 1
  br label %bb.k

bb.k:                                             ; preds = %.critedge41, %._crit_edge
  %.126 = phi i32 [ %.02546, %._crit_edge ], [ %5, %.critedge41 ] ; 2 uses
  %i.bf = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.f
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.k
  %i.bh = load i64, ptr %i.f, align 8, !tbaa !27
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.bj = load i32, ptr %0, align 4, !tbaa !170
  %.not = icmp eq i32 %.126, %i.bj
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !429

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing14InitGoogleMockEv() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 1, ptr %i.a, align 4, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr @.str.80, ptr %i.b, align 8, !tbaa !81
  call void @_ZN7testing8internal18InitGoogleMockImplIcEEvPiPPT_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing20CardinalityInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing12_GLOBAL__N_122BetweenCardinalityImplD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZNK7testing12_GLOBAL__N_122BetweenCardinalityImpl22ConservativeLowerBoundEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !59
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZNK7testing12_GLOBAL__N_122BetweenCardinalityImpl22ConservativeUpperBoundEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !60
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZNK7testing12_GLOBAL__N_122BetweenCardinalityImpl22IsSatisfiedByCallCountEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !59
  %.not = icmp sle i32 %i.b, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sle i32 %1, %i.d
  %i.f = select i1 %.not, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZNK7testing12_GLOBAL__N_122BetweenCardinalityImpl22IsSaturatedByCallCountEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !60
  %i.c = icmp sge i32 %1, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK7testing12_GLOBAL__N_122BetweenCardinalityImpl10DescribeToEPSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !60   ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  switch i32 %i.e, label %bb.e [
    i32 0, label %bb.c
    i32 2147483647, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 12) #28 ; 0 uses
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.91, i64 noundef 26) #28 ; 0 uses
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.92, i64 noundef 15) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.i = load i32, ptr %i.d, align 4, !tbaa !60
  call fastcc void @_ZN7testing12_GLOBAL__N_111FormatTimesB5cxx11Ei(ptr dead_on_unwind noalias writable align 8 %2, i32 noundef %i.i)
  %i.j = load ptr, ptr %2, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.j, i64 noundef %i.l) #28 ; 0 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !27
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.s = icmp eq i32 %i.b, %i.e
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 7) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.u = load i32, ptr %i.a, align 8, !tbaa !59
  call fastcc void @_ZN7testing12_GLOBAL__N_111FormatTimesB5cxx11Ei(ptr dead_on_unwind noalias writable align 8 %3, i32 noundef %i.u)
  %i.v = load ptr, ptr %3, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.v, i64 noundef %i.x) #28 ; 0 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !25     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.g
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !27
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ae = icmp eq i32 %i.e, 2147483647
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.93, i64 noundef 16) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !59
  call fastcc void @_ZN7testing12_GLOBAL__N_111FormatTimesB5cxx11Ei(ptr dead_on_unwind noalias writable align 8 %4, i32 noundef %i.ag)
  %i.ah = load ptr, ptr %4, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !26
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ah, i64 noundef %i.aj) #28 ; 0 uses
  %i.al = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !27
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.94, i64 noundef 15) #28 ; 0 uses
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !59
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ar) #28 ; 2 uses
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.52, i64 noundef 5) #28 ; 0 uses
end_hunk_0
