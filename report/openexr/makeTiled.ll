Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/makeTiled?download=true
inline.NumInlined: 634
inline.NumDeleted: 213
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7Imf_3_419MultiPartOutputFileD1Ev
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7Imf_3_418MultiPartInputFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !52
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !224
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !224
  br label %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !54

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49   ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZN7Imf_3_47ContextD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !52
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !225
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !225
  br label %_ZN7Imf_3_47ContextD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN7Imf_3_47ContextD2Ev.exit, !prof !54

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26
  br label %_ZN7Imf_3_47ContextD2Ev.exit

_ZN7Imf_3_47ContextD2Ev.exit:                     ; preds = %_ZNSt12__shared_ptrIN7Imf_3_418MultiPartInputFile4DataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7Imf_3_46HeaderESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %.05.i.i) #26
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !26
  br label %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7Imf_3_46HeaderESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #28
  br label %_ZNSt12_Vector_baseIN7Imf_3_46HeaderESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN7Imf_3_46HeaderESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7Imf_3_46HeaderES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7Imf_3_411FrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #30
  unreachable

_ZNSt3mapIN7Imf_3_44NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5ImageD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef double @_ZN12_GLOBAL__N_17sampleXIN9Imath_3_24halfEEEdRK17TypedImageChannelIT_Eidi13Extrapolation(i64 %.24.val, ptr nofree readonly captures(none) %.32.val, i32 noundef %0, double noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = fcmp ult double %1, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fptosi double %1 to i32
  br label %_ZN9Imath_3_25floorIdEEiT_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = fneg double %1                           ; 2 uses
  %i.d = fptosi double %i.c to i32                ; 2 uses
  %i.e = sitofp i32 %i.d to double
  %i.f = fcmp ogt double %i.c, %i.e
  %.neg.i = sext i1 %i.f to i32
  %.neg5.i = sub nsw i32 %.neg.i, %i.d
  br label %_ZN9Imath_3_25floorIdEEiT_.exit

_ZN9Imath_3_25floorIdEEiT_.exit:                  ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.b, %bb.b ], [ %.neg5.i, %bb.c ]
  %.fr = freeze i32 %i.g                          ; 27 uses
  %i.h = add nsw i32 %.fr, 1                      ; 12 uses
  switch i32 %3, label %bb.z [
    i32 0, label %bb.d
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.m
  ]

bb.d:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.i = icmp sgt i32 %.fr, -1
  %i.j = icmp slt i32 %.fr, %0
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = sext i32 %2 to i64
  %i.l = mul nsw i64 %.24.val, %i.k
  %i.m = getelementptr inbounds [2 x i8], ptr %.32.val, i64 %i.l
  %i.n = zext nneg i32 %.fr to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !88
  %i.q = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !90
  %i.r = zext i16 %i.p to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !32
  %i.u = fpext float %i.t to double
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.v = phi double [ %i.u, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.w = icmp sgt i32 %.fr, -2
  %i.x = icmp slt i32 %i.h, %0
  %or.cond54 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond54, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.y = sext i32 %2 to i64
  %i.z = mul nsw i64 %.24.val, %i.y
  %i.aa = getelementptr inbounds [2 x i8], ptr %.32.val, i64 %i.z
  %i.ab = zext nneg i32 %i.h to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !90
  br label %.sink.split

bb.h:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.ae = add nsw i32 %0, -1                      ; 2 uses
  %i.af = icmp slt i32 %.fr, 0
  %i.ag = tail call i32 @llvm.smin.i32(i32 %.fr, i32 %i.ae)
  %i.ah = select i1 %i.af, i32 0, i32 %i.ag
  %i.ai = icmp slt i32 %.fr, -1
  %i.aj = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.ae)
  %i.ak = select i1 %i.ai, i32 0, i32 %i.aj
  %i.al = sext i32 %2 to i64
  %i.am = mul nsw i64 %.24.val, %i.al
  %i.an = getelementptr inbounds [2 x i8], ptr %.32.val, i64 %i.am ; 2 uses
  %i.ao = sext i32 %i.ah to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !88
  %i.ar = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !90 ; 2 uses
  %i.as = zext i16 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !32
  %i.av = fpext float %i.au to double
  %i.aw = sext i32 %i.ak to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.aw
  br label %.sink.split

bb.i:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.ay = icmp sgt i32 %.fr, -1
  %i.az = icmp sgt i32 %0, -1                     ; 2 uses
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.az, label %.thread10, label %..thread2_crit_edge

.thread10:                                        ; preds = %bb.j
  %i.ba = urem i32 %.fr, %0
  br label %.thread9

bb.k:                                             ; preds = %bb.i
  br i1 %i.az, label %_ZN9Imath_3_24modpEii.exit, label %_ZN9Imath_3_24modpEii.exit.thread1

_ZN9Imath_3_24modpEii.exit:                       ; preds = %bb.k
  %i.bb = xor i32 %.fr, -1
  %i.bc = add nuw i32 %0, %i.bb                   ; 2 uses
  %i.bd = urem i32 %i.bc, %0
  %.neg.neg = sub nuw i32 %i.bc, %i.bd
  %i.be = add i32 %.neg.neg, %.fr                 ; 2 uses
  %i.bf = icmp eq i32 %.fr, -1
  br i1 %i.bf, label %.thread9, label %bb.l

_ZN9Imath_3_24modpEii.exit.thread1:               ; preds = %bb.k
  %i.bg = sub nsw i32 0, %0                       ; 3 uses
  %i.bh = xor i32 %0, -1                          ; 2 uses
  %i.bi = sub nsw i32 %i.bh, %.fr
  %i.bj = udiv i32 %i.bi, %i.bg
  %i.bk = mul nsw i32 %i.bj, %0
  %i.bl = sub nsw i32 %.fr, %i.bk                 ; 2 uses
  %i.bm = icmp eq i32 %.fr, -1
  br i1 %i.bm, label %.thread2, label %.thread

..thread2_crit_edge:                              ; preds = %bb.j
  %i.bn = sub nsw i32 0, %0
  %i.bo = udiv i32 %.fr, %i.bn
  %i.bp = mul i32 %i.bo, %0
  %i.bq = add i32 %.fr, %i.bp
  %.pre = sub nsw i32 0, %0
  br label %.thread2

.thread9:                                         ; preds = %_ZN9Imath_3_24modpEii.exit, %.thread10
  %i.br = phi i32 [ %i.ba, %.thread10 ], [ %i.be, %_ZN9Imath_3_24modpEii.exit ]
  %i.bs = udiv i32 %i.h, %0
  br label %_ZN9Imath_3_24modpEii.exit55

.thread2:                                         ; preds = %..thread2_crit_edge, %_ZN9Imath_3_24modpEii.exit.thread1
  %.pre-phi = phi i32 [ %.pre, %..thread2_crit_edge ], [ %i.bg, %_ZN9Imath_3_24modpEii.exit.thread1 ]
  %i.bt = phi i32 [ %i.bq, %..thread2_crit_edge ], [ %i.bl, %_ZN9Imath_3_24modpEii.exit.thread1 ]
  %i.bu = udiv i32 %i.h, %.pre-phi
  %i.bv = sub nsw i32 0, %i.bu
  br label %_ZN9Imath_3_24modpEii.exit55

bb.l:                                             ; preds = %_ZN9Imath_3_24modpEii.exit
  %reass.sub4 = add nsw i32 %0, -2
  %i.bw = sub i32 %reass.sub4, %.fr
  %i.bx = udiv i32 %i.bw, %0
  %i.by = sub nsw i32 0, %i.bx
  br label %_ZN9Imath_3_24modpEii.exit55

.thread:                                          ; preds = %_ZN9Imath_3_24modpEii.exit.thread1
  %i.bz = sub nsw i32 %i.bh, %i.h
  %i.ca = udiv i32 %i.bz, %i.bg
  br label %_ZN9Imath_3_24modpEii.exit55

_ZN9Imath_3_24modpEii.exit55:                     ; preds = %.thread9, %.thread2, %bb.l, %.thread
  %i.cb = phi i32 [ %i.bt, %.thread2 ], [ %i.br, %.thread9 ], [ %i.be, %bb.l ], [ %i.bl, %.thread ]
  %i.cc = phi i32 [ %i.bv, %.thread2 ], [ %i.bs, %.thread9 ], [ %i.by, %bb.l ], [ %i.ca, %.thread ]
  %i.cd = mul nsw i32 %i.cc, %0
  %i.ce = sub nsw i32 %i.h, %i.cd
  %i.cf = sext i32 %2 to i64
  %i.cg = mul nsw i64 %.24.val, %i.cf
  %i.ch = getelementptr inbounds [2 x i8], ptr %.32.val, i64 %i.cg ; 2 uses
  %i.ci = sext i32 %i.cb to i64
  %i.cj = getelementptr inbounds [2 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !88
  %i.cl = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !90 ; 2 uses
  %i.cm = zext i16 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4, !tbaa !32
  %i.cp = fpext float %i.co to double
  %i.cq = sext i32 %i.ce to i64
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.ch, i64 %i.cq
  br label %.sink.split

bb.m:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.cs = icmp sgt i32 %.fr, -1
  %i.ct = icmp sgt i32 %0, -1                     ; 4 uses
  br i1 %i.cs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.ct, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  br i1 %i.ct, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.cu = udiv i32 %.fr, %0
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

bb.q:                                             ; preds = %bb.n
  %i.cv = sub nsw i32 0, %0
  %i.cw = udiv i32 %.fr, %i.cv
  %i.cx = sub nsw i32 0, %i.cw
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

bb.r:                                             ; preds = %bb.o
  %i.cy = xor i32 %.fr, -1
  %i.cz = add nuw i32 %0, %i.cy
  %i.da = udiv i32 %i.cz, %0
  %i.db = sub nsw i32 0, %i.da
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

bb.s:                                             ; preds = %bb.o
  %i.dc = sub nsw i32 0, %0
  %i.dd = xor i32 %0, -1
  %i.de = sub nsw i32 %i.dd, %.fr
  %i.df = udiv i32 %i.de, %i.dc
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

_ZN12_GLOBAL__N_16mirrorEii.exit:                 ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %i.dg = phi i32 [ %i.cx, %bb.q ], [ %i.cu, %bb.p ], [ %i.db, %bb.r ], [ %i.df, %bb.s ] ; 2 uses
  %i.dh = mul nsw i32 %i.dg, %0
  %i.di = sub nsw i32 %.fr, %i.dh                 ; 2 uses
  %i.dj = and i32 %i.dg, 1
  %.not.i = icmp eq i32 %i.dj, 0
  %i.dk = xor i32 %i.di, -1
  %i.dl = add i32 %0, %i.dk
  %i.dm = select i1 %.not.i, i32 %i.di, i32 %i.dl
  %i.dn = icmp sgt i32 %.fr, -2
  br i1 %i.dn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_16mirrorEii.exit
  br i1 %i.ct, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_16mirrorEii.exit
  br i1 %i.ct, label %bb.x, label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.do = udiv i32 %i.h, %0
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

bb.w:                                             ; preds = %bb.t
  %i.dp = sub nsw i32 0, %0
  %i.dq = udiv i32 %i.h, %i.dp
  %i.dr = sub nsw i32 0, %i.dq
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

bb.x:                                             ; preds = %bb.u
  %reass.sub = add nsw i32 %0, -2
  %i.ds = sub i32 %reass.sub, %.fr
  %i.dt = udiv i32 %i.ds, %0
  %i.du = sub nsw i32 0, %i.dt
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

bb.y:                                             ; preds = %bb.u
  %i.dv = sub nsw i32 0, %0
  %i.dw = xor i32 %0, -1
  %i.dx = sub nsw i32 %i.dw, %i.h
  %i.dy = udiv i32 %i.dx, %i.dv
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

_ZN12_GLOBAL__N_16mirrorEii.exit57:               ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %i.dz = phi i32 [ %i.dr, %bb.w ], [ %i.do, %bb.v ], [ %i.du, %bb.x ], [ %i.dy, %bb.y ] ; 2 uses
  %i.ea = mul nsw i32 %i.dz, %0
  %i.eb = sub nsw i32 %i.h, %i.ea                 ; 2 uses
  %i.ec = and i32 %i.dz, 1
  %.not.i56 = icmp eq i32 %i.ec, 0
  %i.ed = xor i32 %i.eb, -1
  %i.ee = add i32 %0, %i.ed
  %i.ef = select i1 %.not.i56, i32 %i.eb, i32 %i.ee
  %i.eg = sext i32 %2 to i64
  %i.eh = mul nsw i64 %.24.val, %i.eg
  %i.ei = getelementptr inbounds [2 x i8], ptr %.32.val, i64 %i.eh ; 2 uses
  %i.ej = sext i32 %i.dm to i64
  %i.ek = getelementptr inbounds [2 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !88
  %i.em = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !90 ; 2 uses
  %i.en = zext i16 %i.el to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !32
  %i.eq = fpext float %i.ep to double
  %i.er = sext i32 %i.ef to i64
  %i.es = getelementptr inbounds [2 x i8], ptr %i.ei, i64 %i.er
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %_ZN9Imath_3_24modpEii.exit55, %_ZN12_GLOBAL__N_16mirrorEii.exit57, %bb.g
  %.sink14.in = phi ptr [ %i.ac, %bb.g ], [ %i.es, %_ZN12_GLOBAL__N_16mirrorEii.exit57 ], [ %i.cr, %_ZN9Imath_3_24modpEii.exit55 ], [ %i.ax, %bb.h ]
  %.sink = phi ptr [ %i.ad, %bb.g ], [ %i.em, %_ZN12_GLOBAL__N_16mirrorEii.exit57 ], [ %i.cl, %_ZN9Imath_3_24modpEii.exit55 ], [ %i.ar, %bb.h ]
  %.051.ph = phi double [ %i.v, %bb.g ], [ %i.eq, %_ZN12_GLOBAL__N_16mirrorEii.exit57 ], [ %i.cp, %_ZN9Imath_3_24modpEii.exit55 ], [ %i.av, %bb.h ]
  %.sink14 = load i16, ptr %.sink14.in, align 2, !tbaa !88
  %i.et = zext i16 %.sink14 to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.sink, i64 %i.et
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !32
  %i.ew = fpext float %i.ev to double
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.f, %_ZN9Imath_3_25floorIdEEiT_.exit
  %.051 = phi double [ 0.000000e+00, %_ZN9Imath_3_25floorIdEEiT_.exit ], [ %i.v, %bb.f ], [ %.051.ph, %.sink.split ]
  %.0 = phi double [ 0.000000e+00, %_ZN9Imath_3_25floorIdEEiT_.exit ], [ 0.000000e+00, %bb.f ], [ %i.ew, %.sink.split ]
  %i.ex = sitofp i32 %i.h to double
  %i.ey = fsub double %i.ex, %1                   ; 2 uses
  %i.ez = fsub double 1.000000e+00, %i.ey
  %i.fa = fmul double %i.ez, %.0
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.ey, double %.051, double %i.fa)
  ret double %i.fb
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5Image7channelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #15

declare void @__cxa_bad_cast() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef double @_ZN12_GLOBAL__N_17sampleXIfEEdRK17TypedImageChannelIT_Eidi13Extrapolation(i64 %.24.val, ptr nofree readonly captures(none) %.32.val, i32 noundef %0, double noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #16 {
bb.a:
  %i.a = fcmp ult double %1, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fptosi double %1 to i32
  br label %_ZN9Imath_3_25floorIdEEiT_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = fneg double %1                           ; 2 uses
  %i.d = fptosi double %i.c to i32                ; 2 uses
  %i.e = sitofp i32 %i.d to double
  %i.f = fcmp ogt double %i.c, %i.e
  %.neg.i = sext i1 %i.f to i32
  %.neg5.i = sub nsw i32 %.neg.i, %i.d
  br label %_ZN9Imath_3_25floorIdEEiT_.exit

_ZN9Imath_3_25floorIdEEiT_.exit:                  ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.b, %bb.b ], [ %.neg5.i, %bb.c ]
  %.fr = freeze i32 %i.g                          ; 27 uses
  %i.h = add nsw i32 %.fr, 1                      ; 12 uses
  switch i32 %3, label %bb.z [
    i32 0, label %bb.d
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.m
  ]

bb.d:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.i = icmp sgt i32 %.fr, -1
  %i.j = icmp slt i32 %.fr, %0
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = sext i32 %2 to i64
  %i.l = mul nsw i64 %.24.val, %i.k
  %i.m = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.l
  %i.n = zext nneg i32 %.fr to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !12
  %i.q = fpext float %i.p to double
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.r = phi double [ %i.q, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.s = icmp sgt i32 %.fr, -2
  %i.t = icmp slt i32 %i.h, %0
  %or.cond54 = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond54, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.u = sext i32 %2 to i64
  %i.v = mul nsw i64 %.24.val, %i.u
  %i.w = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.v
  %i.x = zext nneg i32 %i.h to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x
  %i.z = load float, ptr %i.y, align 4, !tbaa !12
  %i.aa = fpext float %i.z to double
  br label %bb.z

bb.h:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.ab = add nsw i32 %0, -1                      ; 2 uses
  %i.ac = icmp slt i32 %.fr, 0
  %i.ad = tail call i32 @llvm.smin.i32(i32 %.fr, i32 %i.ab)
  %i.ae = select i1 %i.ac, i32 0, i32 %i.ad
  %i.af = icmp slt i32 %.fr, -1
  %i.ag = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.ab)
  %i.ah = select i1 %i.af, i32 0, i32 %i.ag
  %i.ai = sext i32 %2 to i64
  %i.aj = mul nsw i64 %.24.val, %i.ai
  %i.ak = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.aj ; 2 uses
  %i.al = sext i32 %i.ae to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !12
  %i.ao = fpext float %i.an to double
  %i.ap = sext i32 %i.ah to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !12
  %i.as = fpext float %i.ar to double
  br label %bb.z

bb.i:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.at = icmp sgt i32 %.fr, -1
  %i.au = icmp sgt i32 %0, -1                     ; 2 uses
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.au, label %.thread10, label %..thread2_crit_edge

.thread10:                                        ; preds = %bb.j
  %i.av = urem i32 %.fr, %0
  br label %.thread9

bb.k:                                             ; preds = %bb.i
  br i1 %i.au, label %_ZN9Imath_3_24modpEii.exit, label %_ZN9Imath_3_24modpEii.exit.thread1

_ZN9Imath_3_24modpEii.exit:                       ; preds = %bb.k
  %i.aw = xor i32 %.fr, -1
  %i.ax = add nuw i32 %0, %i.aw                   ; 2 uses
  %i.ay = urem i32 %i.ax, %0
  %.neg.neg = sub nuw i32 %i.ax, %i.ay
  %i.az = add i32 %.neg.neg, %.fr                 ; 2 uses
  %i.ba = icmp eq i32 %.fr, -1
  br i1 %i.ba, label %.thread9, label %bb.l

_ZN9Imath_3_24modpEii.exit.thread1:               ; preds = %bb.k
  %i.bb = sub nsw i32 0, %0                       ; 3 uses
  %i.bc = xor i32 %0, -1                          ; 2 uses
  %i.bd = sub nsw i32 %i.bc, %.fr
  %i.be = udiv i32 %i.bd, %i.bb
  %i.bf = mul nsw i32 %i.be, %0
  %i.bg = sub nsw i32 %.fr, %i.bf                 ; 2 uses
  %i.bh = icmp eq i32 %.fr, -1
  br i1 %i.bh, label %.thread2, label %.thread

..thread2_crit_edge:                              ; preds = %bb.j
  %i.bi = sub nsw i32 0, %0
  %i.bj = udiv i32 %.fr, %i.bi
  %i.bk = mul i32 %i.bj, %0
  %i.bl = add i32 %.fr, %i.bk
  %.pre = sub nsw i32 0, %0
  br label %.thread2

.thread9:                                         ; preds = %_ZN9Imath_3_24modpEii.exit, %.thread10
  %i.bm = phi i32 [ %i.av, %.thread10 ], [ %i.az, %_ZN9Imath_3_24modpEii.exit ]
  %i.bn = udiv i32 %i.h, %0
  br label %_ZN9Imath_3_24modpEii.exit55

.thread2:                                         ; preds = %..thread2_crit_edge, %_ZN9Imath_3_24modpEii.exit.thread1
  %.pre-phi = phi i32 [ %.pre, %..thread2_crit_edge ], [ %i.bb, %_ZN9Imath_3_24modpEii.exit.thread1 ]
  %i.bo = phi i32 [ %i.bl, %..thread2_crit_edge ], [ %i.bg, %_ZN9Imath_3_24modpEii.exit.thread1 ]
  %i.bp = udiv i32 %i.h, %.pre-phi
  %i.bq = sub nsw i32 0, %i.bp
  br label %_ZN9Imath_3_24modpEii.exit55

bb.l:                                             ; preds = %_ZN9Imath_3_24modpEii.exit
  %reass.sub4 = add nsw i32 %0, -2
  %i.br = sub i32 %reass.sub4, %.fr
  %i.bs = udiv i32 %i.br, %0
  %i.bt = sub nsw i32 0, %i.bs
  br label %_ZN9Imath_3_24modpEii.exit55

.thread:                                          ; preds = %_ZN9Imath_3_24modpEii.exit.thread1
  %i.bu = sub nsw i32 %i.bc, %i.h
  %i.bv = udiv i32 %i.bu, %i.bb
  br label %_ZN9Imath_3_24modpEii.exit55

_ZN9Imath_3_24modpEii.exit55:                     ; preds = %.thread9, %.thread2, %bb.l, %.thread
  %i.bw = phi i32 [ %i.bo, %.thread2 ], [ %i.bm, %.thread9 ], [ %i.az, %bb.l ], [ %i.bg, %.thread ]
  %i.bx = phi i32 [ %i.bq, %.thread2 ], [ %i.bn, %.thread9 ], [ %i.bt, %bb.l ], [ %i.bv, %.thread ]
  %i.by = mul nsw i32 %i.bx, %0
  %i.bz = sub nsw i32 %i.h, %i.by
  %i.ca = sext i32 %2 to i64
  %i.cb = mul nsw i64 %.24.val, %i.ca
  %i.cc = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.cb ; 2 uses
  %i.cd = sext i32 %i.bw to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !12
  %i.cg = fpext float %i.cf to double
  %i.ch = sext i32 %i.bz to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !12
  %i.ck = fpext float %i.cj to double
  br label %bb.z

bb.m:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.cl = icmp sgt i32 %.fr, -1
  %i.cm = icmp sgt i32 %0, -1                     ; 4 uses
  br i1 %i.cl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.cm, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  br i1 %i.cm, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.cn = udiv i32 %.fr, %0
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

bb.q:                                             ; preds = %bb.n
  %i.co = sub nsw i32 0, %0
  %i.cp = udiv i32 %.fr, %i.co
  %i.cq = sub nsw i32 0, %i.cp
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

bb.r:                                             ; preds = %bb.o
  %i.cr = xor i32 %.fr, -1
  %i.cs = add nuw i32 %0, %i.cr
  %i.ct = udiv i32 %i.cs, %0
  %i.cu = sub nsw i32 0, %i.ct
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

bb.s:                                             ; preds = %bb.o
  %i.cv = sub nsw i32 0, %0
  %i.cw = xor i32 %0, -1
  %i.cx = sub nsw i32 %i.cw, %.fr
  %i.cy = udiv i32 %i.cx, %i.cv
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

_ZN12_GLOBAL__N_16mirrorEii.exit:                 ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %i.cz = phi i32 [ %i.cq, %bb.q ], [ %i.cn, %bb.p ], [ %i.cu, %bb.r ], [ %i.cy, %bb.s ] ; 2 uses
  %i.da = mul nsw i32 %i.cz, %0
  %i.db = sub nsw i32 %.fr, %i.da                 ; 2 uses
  %i.dc = and i32 %i.cz, 1
  %.not.i = icmp eq i32 %i.dc, 0
  %i.dd = xor i32 %i.db, -1
  %i.de = add i32 %0, %i.dd
  %i.df = select i1 %.not.i, i32 %i.db, i32 %i.de
  %i.dg = icmp sgt i32 %.fr, -2
  br i1 %i.dg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_16mirrorEii.exit
  br i1 %i.cm, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_16mirrorEii.exit
  br i1 %i.cm, label %bb.x, label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.dh = udiv i32 %i.h, %0
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

bb.w:                                             ; preds = %bb.t
  %i.di = sub nsw i32 0, %0
  %i.dj = udiv i32 %i.h, %i.di
  %i.dk = sub nsw i32 0, %i.dj
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

bb.x:                                             ; preds = %bb.u
  %reass.sub = add nsw i32 %0, -2
  %i.dl = sub i32 %reass.sub, %.fr
  %i.dm = udiv i32 %i.dl, %0
  %i.dn = sub nsw i32 0, %i.dm
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

bb.y:                                             ; preds = %bb.u
  %i.do = sub nsw i32 0, %0
  %i.dp = xor i32 %0, -1
  %i.dq = sub nsw i32 %i.dp, %i.h
  %i.dr = udiv i32 %i.dq, %i.do
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

_ZN12_GLOBAL__N_16mirrorEii.exit57:               ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %i.ds = phi i32 [ %i.dk, %bb.w ], [ %i.dh, %bb.v ], [ %i.dn, %bb.x ], [ %i.dr, %bb.y ] ; 2 uses
  %i.dt = mul nsw i32 %i.ds, %0
  %i.du = sub nsw i32 %i.h, %i.dt                 ; 2 uses
  %i.dv = and i32 %i.ds, 1
  %.not.i56 = icmp eq i32 %i.dv, 0
  %i.dw = xor i32 %i.du, -1
  %i.dx = add i32 %0, %i.dw
  %i.dy = select i1 %.not.i56, i32 %i.du, i32 %i.dx
  %i.dz = sext i32 %2 to i64
  %i.ea = mul nsw i64 %.24.val, %i.dz
  %i.eb = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.ea ; 2 uses
  %i.ec = sext i32 %i.df to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !12
  %i.ef = fpext float %i.ee to double
  %i.eg = sext i32 %i.dy to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !12
  %i.ej = fpext float %i.ei to double
  br label %bb.z

bb.z:                                             ; preds = %bb.g, %bb.f, %_ZN12_GLOBAL__N_16mirrorEii.exit57, %_ZN9Imath_3_24modpEii.exit55, %bb.h, %_ZN9Imath_3_25floorIdEEiT_.exit
  %.051 = phi double [ 0.000000e+00, %_ZN9Imath_3_25floorIdEEiT_.exit ], [ %i.ef, %_ZN12_GLOBAL__N_16mirrorEii.exit57 ], [ %i.ao, %bb.h ], [ %i.cg, %_ZN9Imath_3_24modpEii.exit55 ], [ %i.r, %bb.f ], [ %i.r, %bb.g ]
  %.0 = phi double [ 0.000000e+00, %_ZN9Imath_3_25floorIdEEiT_.exit ], [ %i.ej, %_ZN12_GLOBAL__N_16mirrorEii.exit57 ], [ %i.as, %bb.h ], [ %i.ck, %_ZN9Imath_3_24modpEii.exit55 ], [ 0.000000e+00, %bb.f ], [ %i.aa, %bb.g ]
  %i.ek = sitofp i32 %i.h to double
  %i.el = fsub double %i.ek, %1                   ; 2 uses
  %i.em = fsub double 1.000000e+00, %i.el
  %i.en = fmul double %i.em, %.0
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.el, double %.051, double %i.en)
  ret double %i.eo
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef double @_ZN12_GLOBAL__N_17sampleXIjEEdRK17TypedImageChannelIT_Eidi13Extrapolation(i64 %.24.val, ptr nofree readonly captures(none) %.32.val, i32 noundef %0, double noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #16 {
bb.a:
  %i.a = fcmp ult double %1, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fptosi double %1 to i32
  br label %_ZN9Imath_3_25floorIdEEiT_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = fneg double %1                           ; 2 uses
  %i.d = fptosi double %i.c to i32                ; 2 uses
  %i.e = sitofp i32 %i.d to double
  %i.f = fcmp ogt double %i.c, %i.e
  %.neg.i = sext i1 %i.f to i32
  %.neg5.i = sub nsw i32 %.neg.i, %i.d
  br label %_ZN9Imath_3_25floorIdEEiT_.exit

_ZN9Imath_3_25floorIdEEiT_.exit:                  ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.b, %bb.b ], [ %.neg5.i, %bb.c ]
  %.fr = freeze i32 %i.g                          ; 27 uses
  %i.h = add nsw i32 %.fr, 1                      ; 12 uses
  switch i32 %3, label %bb.z [
    i32 0, label %bb.d
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.m
  ]

bb.d:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.i = icmp sgt i32 %.fr, -1
  %i.j = icmp slt i32 %.fr, %0
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = sext i32 %2 to i64
  %i.l = mul nsw i64 %.24.val, %i.k
  %i.m = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.l
  %i.n = zext nneg i32 %.fr to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !53
  %i.q = uitofp i32 %i.p to double
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.r = phi double [ %i.q, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.s = icmp sgt i32 %.fr, -2
  %i.t = icmp slt i32 %i.h, %0
  %or.cond54 = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond54, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.u = sext i32 %2 to i64
  %i.v = mul nsw i64 %.24.val, %i.u
  %i.w = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.v
  %i.x = zext nneg i32 %i.h to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !53
  %i.aa = uitofp i32 %i.z to double
  br label %bb.z

bb.h:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.ab = add nsw i32 %0, -1                      ; 2 uses
  %i.ac = icmp slt i32 %.fr, 0
  %i.ad = tail call i32 @llvm.smin.i32(i32 %.fr, i32 %i.ab)
  %i.ae = select i1 %i.ac, i32 0, i32 %i.ad
  %i.af = icmp slt i32 %.fr, -1
  %i.ag = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.ab)
  %i.ah = select i1 %i.af, i32 0, i32 %i.ag
  %i.ai = sext i32 %2 to i64
  %i.aj = mul nsw i64 %.24.val, %i.ai
  %i.ak = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.aj ; 2 uses
  %i.al = sext i32 %i.ae to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !53
  %i.ao = uitofp i32 %i.an to double
  %i.ap = sext i32 %i.ah to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !53
  %i.as = uitofp i32 %i.ar to double
  br label %bb.z

bb.i:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.at = icmp sgt i32 %.fr, -1
  %i.au = icmp sgt i32 %0, -1                     ; 2 uses
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.au, label %.thread10, label %..thread2_crit_edge

.thread10:                                        ; preds = %bb.j
  %i.av = urem i32 %.fr, %0
  br label %.thread9

bb.k:                                             ; preds = %bb.i
  br i1 %i.au, label %_ZN9Imath_3_24modpEii.exit, label %_ZN9Imath_3_24modpEii.exit.thread1

_ZN9Imath_3_24modpEii.exit:                       ; preds = %bb.k
  %i.aw = xor i32 %.fr, -1
  %i.ax = add nuw i32 %0, %i.aw                   ; 2 uses
  %i.ay = urem i32 %i.ax, %0
  %.neg.neg = sub nuw i32 %i.ax, %i.ay
  %i.az = add i32 %.neg.neg, %.fr                 ; 2 uses
  %i.ba = icmp eq i32 %.fr, -1
  br i1 %i.ba, label %.thread9, label %bb.l

_ZN9Imath_3_24modpEii.exit.thread1:               ; preds = %bb.k
  %i.bb = sub nsw i32 0, %0                       ; 3 uses
  %i.bc = xor i32 %0, -1                          ; 2 uses
  %i.bd = sub nsw i32 %i.bc, %.fr
  %i.be = udiv i32 %i.bd, %i.bb
  %i.bf = mul nsw i32 %i.be, %0
  %i.bg = sub nsw i32 %.fr, %i.bf                 ; 2 uses
  %i.bh = icmp eq i32 %.fr, -1
  br i1 %i.bh, label %.thread2, label %.thread

..thread2_crit_edge:                              ; preds = %bb.j
  %i.bi = sub nsw i32 0, %0
  %i.bj = udiv i32 %.fr, %i.bi
  %i.bk = mul i32 %i.bj, %0
  %i.bl = add i32 %.fr, %i.bk
  %.pre = sub nsw i32 0, %0
  br label %.thread2

.thread9:                                         ; preds = %_ZN9Imath_3_24modpEii.exit, %.thread10
  %i.bm = phi i32 [ %i.av, %.thread10 ], [ %i.az, %_ZN9Imath_3_24modpEii.exit ]
  %i.bn = udiv i32 %i.h, %0
  br label %_ZN9Imath_3_24modpEii.exit55

.thread2:                                         ; preds = %..thread2_crit_edge, %_ZN9Imath_3_24modpEii.exit.thread1
  %.pre-phi = phi i32 [ %.pre, %..thread2_crit_edge ], [ %i.bb, %_ZN9Imath_3_24modpEii.exit.thread1 ]
  %i.bo = phi i32 [ %i.bl, %..thread2_crit_edge ], [ %i.bg, %_ZN9Imath_3_24modpEii.exit.thread1 ]
  %i.bp = udiv i32 %i.h, %.pre-phi
  %i.bq = sub nsw i32 0, %i.bp
  br label %_ZN9Imath_3_24modpEii.exit55

bb.l:                                             ; preds = %_ZN9Imath_3_24modpEii.exit
  %reass.sub4 = add nsw i32 %0, -2
  %i.br = sub i32 %reass.sub4, %.fr
  %i.bs = udiv i32 %i.br, %0
  %i.bt = sub nsw i32 0, %i.bs
  br label %_ZN9Imath_3_24modpEii.exit55

.thread:                                          ; preds = %_ZN9Imath_3_24modpEii.exit.thread1
  %i.bu = sub nsw i32 %i.bc, %i.h
  %i.bv = udiv i32 %i.bu, %i.bb
  br label %_ZN9Imath_3_24modpEii.exit55

_ZN9Imath_3_24modpEii.exit55:                     ; preds = %.thread9, %.thread2, %bb.l, %.thread
  %i.bw = phi i32 [ %i.bo, %.thread2 ], [ %i.bm, %.thread9 ], [ %i.az, %bb.l ], [ %i.bg, %.thread ]
  %i.bx = phi i32 [ %i.bq, %.thread2 ], [ %i.bn, %.thread9 ], [ %i.bt, %bb.l ], [ %i.bv, %.thread ]
  %i.by = mul nsw i32 %i.bx, %0
  %i.bz = sub nsw i32 %i.h, %i.by
  %i.ca = sext i32 %2 to i64
  %i.cb = mul nsw i64 %.24.val, %i.ca
  %i.cc = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.cb ; 2 uses
  %i.cd = sext i32 %i.bw to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !53
  %i.cg = uitofp i32 %i.cf to double
  %i.ch = sext i32 %i.bz to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !53
  %i.ck = uitofp i32 %i.cj to double
  br label %bb.z

bb.m:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.cl = icmp sgt i32 %.fr, -1
  %i.cm = icmp sgt i32 %0, -1                     ; 4 uses
  br i1 %i.cl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.cm, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  br i1 %i.cm, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.cn = udiv i32 %.fr, %0
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

bb.q:                                             ; preds = %bb.n
  %i.co = sub nsw i32 0, %0
  %i.cp = udiv i32 %.fr, %i.co
  %i.cq = sub nsw i32 0, %i.cp
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

bb.r:                                             ; preds = %bb.o
  %i.cr = xor i32 %.fr, -1
  %i.cs = add nuw i32 %0, %i.cr
  %i.ct = udiv i32 %i.cs, %0
  %i.cu = sub nsw i32 0, %i.ct
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

bb.s:                                             ; preds = %bb.o
  %i.cv = sub nsw i32 0, %0
  %i.cw = xor i32 %0, -1
  %i.cx = sub nsw i32 %i.cw, %.fr
  %i.cy = udiv i32 %i.cx, %i.cv
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

_ZN12_GLOBAL__N_16mirrorEii.exit:                 ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %i.cz = phi i32 [ %i.cq, %bb.q ], [ %i.cn, %bb.p ], [ %i.cu, %bb.r ], [ %i.cy, %bb.s ] ; 2 uses
  %i.da = mul nsw i32 %i.cz, %0
  %i.db = sub nsw i32 %.fr, %i.da                 ; 2 uses
  %i.dc = and i32 %i.cz, 1
  %.not.i = icmp eq i32 %i.dc, 0
  %i.dd = xor i32 %i.db, -1
  %i.de = add i32 %0, %i.dd
  %i.df = select i1 %.not.i, i32 %i.db, i32 %i.de
  %i.dg = icmp sgt i32 %.fr, -2
  br i1 %i.dg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_16mirrorEii.exit
  br i1 %i.cm, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_16mirrorEii.exit
  br i1 %i.cm, label %bb.x, label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.dh = udiv i32 %i.h, %0
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

bb.w:                                             ; preds = %bb.t
  %i.di = sub nsw i32 0, %0
  %i.dj = udiv i32 %i.h, %i.di
  %i.dk = sub nsw i32 0, %i.dj
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

bb.x:                                             ; preds = %bb.u
  %reass.sub = add nsw i32 %0, -2
  %i.dl = sub i32 %reass.sub, %.fr
  %i.dm = udiv i32 %i.dl, %0
  %i.dn = sub nsw i32 0, %i.dm
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

bb.y:                                             ; preds = %bb.u
  %i.do = sub nsw i32 0, %0
  %i.dp = xor i32 %0, -1
  %i.dq = sub nsw i32 %i.dp, %i.h
  %i.dr = udiv i32 %i.dq, %i.do
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

_ZN12_GLOBAL__N_16mirrorEii.exit57:               ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %i.ds = phi i32 [ %i.dk, %bb.w ], [ %i.dh, %bb.v ], [ %i.dn, %bb.x ], [ %i.dr, %bb.y ] ; 2 uses
  %i.dt = mul nsw i32 %i.ds, %0
  %i.du = sub nsw i32 %i.h, %i.dt                 ; 2 uses
  %i.dv = and i32 %i.ds, 1
  %.not.i56 = icmp eq i32 %i.dv, 0
  %i.dw = xor i32 %i.du, -1
  %i.dx = add i32 %0, %i.dw
  %i.dy = select i1 %.not.i56, i32 %i.du, i32 %i.dx
  %i.dz = sext i32 %2 to i64
  %i.ea = mul nsw i64 %.24.val, %i.dz
  %i.eb = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.ea ; 2 uses
  %i.ec = sext i32 %i.df to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !53
  %i.ef = uitofp i32 %i.ee to double
  %i.eg = sext i32 %i.dy to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !53
  %i.ej = uitofp i32 %i.ei to double
  br label %bb.z

bb.z:                                             ; preds = %bb.g, %bb.f, %_ZN12_GLOBAL__N_16mirrorEii.exit57, %_ZN9Imath_3_24modpEii.exit55, %bb.h, %_ZN9Imath_3_25floorIdEEiT_.exit
  %.051 = phi double [ 0.000000e+00, %_ZN9Imath_3_25floorIdEEiT_.exit ], [ %i.ef, %_ZN12_GLOBAL__N_16mirrorEii.exit57 ], [ %i.ao, %bb.h ], [ %i.cg, %_ZN9Imath_3_24modpEii.exit55 ], [ %i.r, %bb.f ], [ %i.r, %bb.g ]
  %.0 = phi double [ 0.000000e+00, %_ZN9Imath_3_25floorIdEEiT_.exit ], [ %i.ej, %_ZN12_GLOBAL__N_16mirrorEii.exit57 ], [ %i.as, %bb.h ], [ %i.ck, %_ZN9Imath_3_24modpEii.exit55 ], [ 0.000000e+00, %bb.f ], [ %i.aa, %bb.g ]
  %i.ek = sitofp i32 %i.h to double
  %i.el = fsub double %i.ek, %1                   ; 2 uses
  %i.em = fsub double 1.000000e+00, %i.el
  %i.en = fmul double %i.em, %.0
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.el, double %.051, double %i.en)
  ret double %i.eo
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef double @_ZN12_GLOBAL__N_17sampleYIN9Imath_3_24halfEEEdRK17TypedImageChannelIT_Eiid13Extrapolation(i64 %.24.val, ptr nofree readonly captures(none) %.32.val, i32 noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3) unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = fcmp ult double %2, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fptosi double %2 to i32
  br label %_ZN9Imath_3_25floorIdEEiT_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = fneg double %2                           ; 2 uses
  %i.d = fptosi double %i.c to i32                ; 2 uses
  %i.e = sitofp i32 %i.d to double
  %i.f = fcmp ogt double %i.c, %i.e
  %.neg.i = sext i1 %i.f to i32
  %.neg5.i = sub nsw i32 %.neg.i, %i.d
  br label %_ZN9Imath_3_25floorIdEEiT_.exit

_ZN9Imath_3_25floorIdEEiT_.exit:                  ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.b, %bb.b ], [ %.neg5.i, %bb.c ]
  %.fr = freeze i32 %i.g                          ; 27 uses
  %i.h = add nsw i32 %.fr, 1                      ; 12 uses
  switch i32 %3, label %bb.z [
    i32 0, label %bb.d
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.m
  ]

bb.d:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.i = icmp sgt i32 %.fr, -1
  %i.j = icmp slt i32 %.fr, %0
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = zext nneg i32 %.fr to i64
  %i.l = mul nsw i64 %.24.val, %i.k
  %i.m = getelementptr inbounds [2 x i8], ptr %.32.val, i64 %i.l
  %i.n = sext i32 %1 to i64
  %i.o = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !88
  %i.q = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !90
  %i.r = zext i16 %i.p to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load float, ptr %i.s, align 4, !tbaa !32
  %i.u = fpext float %i.t to double
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.v = phi double [ %i.u, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.w = icmp sgt i32 %.fr, -2
  %i.x = icmp slt i32 %i.h, %0
  %or.cond54 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond54, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.y = zext nneg i32 %i.h to i64
  %i.z = mul nsw i64 %.24.val, %i.y
  %i.aa = getelementptr inbounds [2 x i8], ptr %.32.val, i64 %i.z
  %i.ab = sext i32 %1 to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !90
  br label %.sink.split

bb.h:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.ae = add nsw i32 %0, -1                      ; 2 uses
  %i.af = icmp slt i32 %.fr, 0
  %i.ag = tail call i32 @llvm.smin.i32(i32 %.fr, i32 %i.ae)
  %i.ah = select i1 %i.af, i32 0, i32 %i.ag
  %i.ai = icmp slt i32 %.fr, -1
  %i.aj = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.ae)
  %i.ak = select i1 %i.ai, i32 0, i32 %i.aj
  %i.al = sext i32 %i.ah to i64
  %i.am = mul nsw i64 %.24.val, %i.al
  %i.an = getelementptr inbounds [2 x i8], ptr %.32.val, i64 %i.am
  %i.ao = sext i32 %1 to i64                      ; 2 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !88
  %i.ar = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !90 ; 2 uses
  %i.as = zext i16 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !32
  %i.av = fpext float %i.au to double
  %i.aw = sext i32 %i.ak to i64
  %i.ax = mul nsw i64 %.24.val, %i.aw
  %i.ay = getelementptr inbounds [2 x i8], ptr %.32.val, i64 %i.ax
  %i.az = getelementptr inbounds [2 x i8], ptr %i.ay, i64 %i.ao
  br label %.sink.split

bb.i:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.ba = icmp sgt i32 %.fr, -1
  %i.bb = icmp sgt i32 %0, -1                     ; 2 uses
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.bb, label %.thread10, label %..thread2_crit_edge

.thread10:                                        ; preds = %bb.j
  %i.bc = urem i32 %.fr, %0
  br label %.thread9

bb.k:                                             ; preds = %bb.i
  br i1 %i.bb, label %_ZN9Imath_3_24modpEii.exit, label %_ZN9Imath_3_24modpEii.exit.thread1

_ZN9Imath_3_24modpEii.exit:                       ; preds = %bb.k
  %i.bd = xor i32 %.fr, -1
  %i.be = add nuw i32 %0, %i.bd                   ; 2 uses
  %i.bf = urem i32 %i.be, %0
  %.neg.neg = sub nuw i32 %i.be, %i.bf
  %i.bg = add i32 %.neg.neg, %.fr                 ; 2 uses
  %i.bh = icmp eq i32 %.fr, -1
  br i1 %i.bh, label %.thread9, label %bb.l

_ZN9Imath_3_24modpEii.exit.thread1:               ; preds = %bb.k
  %i.bi = sub nsw i32 0, %0                       ; 3 uses
  %i.bj = xor i32 %0, -1                          ; 2 uses
  %i.bk = sub nsw i32 %i.bj, %.fr
  %i.bl = udiv i32 %i.bk, %i.bi
  %i.bm = mul nsw i32 %i.bl, %0
  %i.bn = sub nsw i32 %.fr, %i.bm                 ; 2 uses
  %i.bo = icmp eq i32 %.fr, -1
  br i1 %i.bo, label %.thread2, label %.thread

..thread2_crit_edge:                              ; preds = %bb.j
  %i.bp = sub nsw i32 0, %0
  %i.bq = udiv i32 %.fr, %i.bp
  %i.br = mul i32 %i.bq, %0
  %i.bs = add i32 %.fr, %i.br
  %.pre = sub nsw i32 0, %0
  br label %.thread2

.thread9:                                         ; preds = %_ZN9Imath_3_24modpEii.exit, %.thread10
  %i.bt = phi i32 [ %i.bc, %.thread10 ], [ %i.bg, %_ZN9Imath_3_24modpEii.exit ]
  %i.bu = udiv i32 %i.h, %0
  br label %_ZN9Imath_3_24modpEii.exit55

.thread2:                                         ; preds = %..thread2_crit_edge, %_ZN9Imath_3_24modpEii.exit.thread1
  %.pre-phi = phi i32 [ %.pre, %..thread2_crit_edge ], [ %i.bi, %_ZN9Imath_3_24modpEii.exit.thread1 ]
  %i.bv = phi i32 [ %i.bs, %..thread2_crit_edge ], [ %i.bn, %_ZN9Imath_3_24modpEii.exit.thread1 ]
  %i.bw = udiv i32 %i.h, %.pre-phi
  %i.bx = sub nsw i32 0, %i.bw
  br label %_ZN9Imath_3_24modpEii.exit55

bb.l:                                             ; preds = %_ZN9Imath_3_24modpEii.exit
  %reass.sub4 = add nsw i32 %0, -2
  %i.by = sub i32 %reass.sub4, %.fr
  %i.bz = udiv i32 %i.by, %0
  %i.ca = sub nsw i32 0, %i.bz
  br label %_ZN9Imath_3_24modpEii.exit55

.thread:                                          ; preds = %_ZN9Imath_3_24modpEii.exit.thread1
  %i.cb = sub nsw i32 %i.bj, %i.h
  %i.cc = udiv i32 %i.cb, %i.bi
  br label %_ZN9Imath_3_24modpEii.exit55

_ZN9Imath_3_24modpEii.exit55:                     ; preds = %.thread9, %.thread2, %bb.l, %.thread
  %i.cd = phi i32 [ %i.bv, %.thread2 ], [ %i.bt, %.thread9 ], [ %i.bg, %bb.l ], [ %i.bn, %.thread ]
  %i.ce = phi i32 [ %i.bx, %.thread2 ], [ %i.bu, %.thread9 ], [ %i.ca, %bb.l ], [ %i.cc, %.thread ]
  %i.cf = mul nsw i32 %i.ce, %0
  %i.cg = sub nsw i32 %i.h, %i.cf
  %i.ch = sext i32 %i.cd to i64
  %i.ci = mul nsw i64 %.24.val, %i.ch
  %i.cj = getelementptr inbounds [2 x i8], ptr %.32.val, i64 %i.ci
  %i.ck = sext i32 %1 to i64                      ; 2 uses
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !88
  %i.cn = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !90 ; 2 uses
  %i.co = zext i16 %i.cm to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !32
  %i.cr = fpext float %i.cq to double
  %i.cs = sext i32 %i.cg to i64
  %i.ct = mul nsw i64 %.24.val, %i.cs
  %i.cu = getelementptr inbounds [2 x i8], ptr %.32.val, i64 %i.ct
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.cu, i64 %i.ck
  br label %.sink.split

bb.m:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.cw = icmp sgt i32 %.fr, -1
  %i.cx = icmp sgt i32 %0, -1                     ; 4 uses
  br i1 %i.cw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.cx, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  br i1 %i.cx, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.cy = udiv i32 %.fr, %0
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

bb.q:                                             ; preds = %bb.n
  %i.cz = sub nsw i32 0, %0
  %i.da = udiv i32 %.fr, %i.cz
  %i.db = sub nsw i32 0, %i.da
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

bb.r:                                             ; preds = %bb.o
  %i.dc = xor i32 %.fr, -1
  %i.dd = add nuw i32 %0, %i.dc
  %i.de = udiv i32 %i.dd, %0
  %i.df = sub nsw i32 0, %i.de
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

bb.s:                                             ; preds = %bb.o
  %i.dg = sub nsw i32 0, %0
  %i.dh = xor i32 %0, -1
  %i.di = sub nsw i32 %i.dh, %.fr
  %i.dj = udiv i32 %i.di, %i.dg
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

_ZN12_GLOBAL__N_16mirrorEii.exit:                 ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %i.dk = phi i32 [ %i.db, %bb.q ], [ %i.cy, %bb.p ], [ %i.df, %bb.r ], [ %i.dj, %bb.s ] ; 2 uses
  %i.dl = mul nsw i32 %i.dk, %0
  %i.dm = sub nsw i32 %.fr, %i.dl                 ; 2 uses
  %i.dn = and i32 %i.dk, 1
  %.not.i = icmp eq i32 %i.dn, 0
  %i.do = xor i32 %i.dm, -1
  %i.dp = add i32 %0, %i.do
  %i.dq = select i1 %.not.i, i32 %i.dm, i32 %i.dp
  %i.dr = icmp sgt i32 %.fr, -2
  br i1 %i.dr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_16mirrorEii.exit
  br i1 %i.cx, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_16mirrorEii.exit
  br i1 %i.cx, label %bb.x, label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.ds = udiv i32 %i.h, %0
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

bb.w:                                             ; preds = %bb.t
  %i.dt = sub nsw i32 0, %0
  %i.du = udiv i32 %i.h, %i.dt
  %i.dv = sub nsw i32 0, %i.du
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

bb.x:                                             ; preds = %bb.u
  %reass.sub = add nsw i32 %0, -2
  %i.dw = sub i32 %reass.sub, %.fr
  %i.dx = udiv i32 %i.dw, %0
  %i.dy = sub nsw i32 0, %i.dx
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

bb.y:                                             ; preds = %bb.u
  %i.dz = sub nsw i32 0, %0
  %i.ea = xor i32 %0, -1
  %i.eb = sub nsw i32 %i.ea, %i.h
  %i.ec = udiv i32 %i.eb, %i.dz
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

_ZN12_GLOBAL__N_16mirrorEii.exit57:               ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %i.ed = phi i32 [ %i.dv, %bb.w ], [ %i.ds, %bb.v ], [ %i.dy, %bb.x ], [ %i.ec, %bb.y ] ; 2 uses
  %i.ee = mul nsw i32 %i.ed, %0
  %i.ef = sub nsw i32 %i.h, %i.ee                 ; 2 uses
  %i.eg = and i32 %i.ed, 1
  %.not.i56 = icmp eq i32 %i.eg, 0
  %i.eh = xor i32 %i.ef, -1
  %i.ei = add i32 %0, %i.eh
  %i.ej = select i1 %.not.i56, i32 %i.ef, i32 %i.ei
  %i.ek = sext i32 %i.dq to i64
  %i.el = mul nsw i64 %.24.val, %i.ek
  %i.em = getelementptr inbounds [2 x i8], ptr %.32.val, i64 %i.el
  %i.en = sext i32 %1 to i64                      ; 2 uses
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.em, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !88
  %i.eq = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !90 ; 2 uses
  %i.er = zext i16 %i.ep to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.er
  %i.et = load float, ptr %i.es, align 4, !tbaa !32
  %i.eu = fpext float %i.et to double
  %i.ev = sext i32 %i.ej to i64
  %i.ew = mul nsw i64 %.24.val, %i.ev
  %i.ex = getelementptr inbounds [2 x i8], ptr %.32.val, i64 %i.ew
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.ex, i64 %i.en
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %_ZN9Imath_3_24modpEii.exit55, %_ZN12_GLOBAL__N_16mirrorEii.exit57, %bb.g
  %.sink14.in = phi ptr [ %i.ac, %bb.g ], [ %i.ey, %_ZN12_GLOBAL__N_16mirrorEii.exit57 ], [ %i.cv, %_ZN9Imath_3_24modpEii.exit55 ], [ %i.az, %bb.h ]
  %.sink = phi ptr [ %i.ad, %bb.g ], [ %i.eq, %_ZN12_GLOBAL__N_16mirrorEii.exit57 ], [ %i.cn, %_ZN9Imath_3_24modpEii.exit55 ], [ %i.ar, %bb.h ]
  %.051.ph = phi double [ %i.v, %bb.g ], [ %i.eu, %_ZN12_GLOBAL__N_16mirrorEii.exit57 ], [ %i.cr, %_ZN9Imath_3_24modpEii.exit55 ], [ %i.av, %bb.h ]
  %.sink14 = load i16, ptr %.sink14.in, align 2, !tbaa !88
  %i.ez = zext i16 %.sink14 to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.sink, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !32
  %i.fc = fpext float %i.fb to double
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.f, %_ZN9Imath_3_25floorIdEEiT_.exit
  %.051 = phi double [ 0.000000e+00, %_ZN9Imath_3_25floorIdEEiT_.exit ], [ %i.v, %bb.f ], [ %.051.ph, %.sink.split ]
  %.0 = phi double [ 0.000000e+00, %_ZN9Imath_3_25floorIdEEiT_.exit ], [ 0.000000e+00, %bb.f ], [ %i.fc, %.sink.split ]
  %i.fd = sitofp i32 %i.h to double
  %i.fe = fsub double %i.fd, %2                   ; 2 uses
  %i.ff = fsub double 1.000000e+00, %i.fe
  %i.fg = fmul double %i.ff, %.0
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fe, double %.051, double %i.fg)
  ret double %i.fh
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef double @_ZN12_GLOBAL__N_17sampleYIfEEdRK17TypedImageChannelIT_Eiid13Extrapolation(i64 %.24.val, ptr nofree readonly captures(none) %.32.val, i32 noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3) unnamed_addr #16 {
bb.a:
  %i.a = fcmp ult double %2, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fptosi double %2 to i32
  br label %_ZN9Imath_3_25floorIdEEiT_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = fneg double %2                           ; 2 uses
  %i.d = fptosi double %i.c to i32                ; 2 uses
  %i.e = sitofp i32 %i.d to double
  %i.f = fcmp ogt double %i.c, %i.e
  %.neg.i = sext i1 %i.f to i32
  %.neg5.i = sub nsw i32 %.neg.i, %i.d
  br label %_ZN9Imath_3_25floorIdEEiT_.exit

_ZN9Imath_3_25floorIdEEiT_.exit:                  ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.b, %bb.b ], [ %.neg5.i, %bb.c ]
  %.fr = freeze i32 %i.g                          ; 27 uses
  %i.h = add nsw i32 %.fr, 1                      ; 12 uses
  switch i32 %3, label %bb.z [
    i32 0, label %bb.d
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.m
  ]

bb.d:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.i = icmp sgt i32 %.fr, -1
  %i.j = icmp slt i32 %.fr, %0
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = zext nneg i32 %.fr to i64
  %i.l = mul nsw i64 %.24.val, %i.k
  %i.m = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.l
  %i.n = sext i32 %1 to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !12
  %i.q = fpext float %i.p to double
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.r = phi double [ %i.q, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.s = icmp sgt i32 %.fr, -2
  %i.t = icmp slt i32 %i.h, %0
  %or.cond54 = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond54, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.u = zext nneg i32 %i.h to i64
  %i.v = mul nsw i64 %.24.val, %i.u
  %i.w = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.v
  %i.x = sext i32 %1 to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.x
  %i.z = load float, ptr %i.y, align 4, !tbaa !12
  %i.aa = fpext float %i.z to double
  br label %bb.z

bb.h:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.ab = add nsw i32 %0, -1                      ; 2 uses
  %i.ac = icmp slt i32 %.fr, 0
  %i.ad = tail call i32 @llvm.smin.i32(i32 %.fr, i32 %i.ab)
  %i.ae = select i1 %i.ac, i32 0, i32 %i.ad
  %i.af = icmp slt i32 %.fr, -1
  %i.ag = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.ab)
  %i.ah = select i1 %i.af, i32 0, i32 %i.ag
  %i.ai = sext i32 %i.ae to i64
  %i.aj = mul nsw i64 %.24.val, %i.ai
  %i.ak = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.aj
  %i.al = sext i32 %1 to i64                      ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !12
  %i.ao = fpext float %i.an to double
  %i.ap = sext i32 %i.ah to i64
  %i.aq = mul nsw i64 %.24.val, %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.aq
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.al
  %i.at = load float, ptr %i.as, align 4, !tbaa !12
  %i.au = fpext float %i.at to double
  br label %bb.z

bb.i:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.av = icmp sgt i32 %.fr, -1
  %i.aw = icmp sgt i32 %0, -1                     ; 2 uses
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.aw, label %.thread10, label %..thread2_crit_edge

.thread10:                                        ; preds = %bb.j
  %i.ax = urem i32 %.fr, %0
  br label %.thread9

bb.k:                                             ; preds = %bb.i
  br i1 %i.aw, label %_ZN9Imath_3_24modpEii.exit, label %_ZN9Imath_3_24modpEii.exit.thread1

_ZN9Imath_3_24modpEii.exit:                       ; preds = %bb.k
  %i.ay = xor i32 %.fr, -1
  %i.az = add nuw i32 %0, %i.ay                   ; 2 uses
  %i.ba = urem i32 %i.az, %0
  %.neg.neg = sub nuw i32 %i.az, %i.ba
  %i.bb = add i32 %.neg.neg, %.fr                 ; 2 uses
  %i.bc = icmp eq i32 %.fr, -1
  br i1 %i.bc, label %.thread9, label %bb.l

_ZN9Imath_3_24modpEii.exit.thread1:               ; preds = %bb.k
  %i.bd = sub nsw i32 0, %0                       ; 3 uses
  %i.be = xor i32 %0, -1                          ; 2 uses
  %i.bf = sub nsw i32 %i.be, %.fr
  %i.bg = udiv i32 %i.bf, %i.bd
  %i.bh = mul nsw i32 %i.bg, %0
  %i.bi = sub nsw i32 %.fr, %i.bh                 ; 2 uses
  %i.bj = icmp eq i32 %.fr, -1
  br i1 %i.bj, label %.thread2, label %.thread

..thread2_crit_edge:                              ; preds = %bb.j
  %i.bk = sub nsw i32 0, %0
  %i.bl = udiv i32 %.fr, %i.bk
  %i.bm = mul i32 %i.bl, %0
  %i.bn = add i32 %.fr, %i.bm
  %.pre = sub nsw i32 0, %0
  br label %.thread2

.thread9:                                         ; preds = %_ZN9Imath_3_24modpEii.exit, %.thread10
  %i.bo = phi i32 [ %i.ax, %.thread10 ], [ %i.bb, %_ZN9Imath_3_24modpEii.exit ]
  %i.bp = udiv i32 %i.h, %0
  br label %_ZN9Imath_3_24modpEii.exit55

.thread2:                                         ; preds = %..thread2_crit_edge, %_ZN9Imath_3_24modpEii.exit.thread1
  %.pre-phi = phi i32 [ %.pre, %..thread2_crit_edge ], [ %i.bd, %_ZN9Imath_3_24modpEii.exit.thread1 ]
  %i.bq = phi i32 [ %i.bn, %..thread2_crit_edge ], [ %i.bi, %_ZN9Imath_3_24modpEii.exit.thread1 ]
  %i.br = udiv i32 %i.h, %.pre-phi
  %i.bs = sub nsw i32 0, %i.br
  br label %_ZN9Imath_3_24modpEii.exit55

bb.l:                                             ; preds = %_ZN9Imath_3_24modpEii.exit
  %reass.sub4 = add nsw i32 %0, -2
  %i.bt = sub i32 %reass.sub4, %.fr
  %i.bu = udiv i32 %i.bt, %0
  %i.bv = sub nsw i32 0, %i.bu
  br label %_ZN9Imath_3_24modpEii.exit55

.thread:                                          ; preds = %_ZN9Imath_3_24modpEii.exit.thread1
  %i.bw = sub nsw i32 %i.be, %i.h
  %i.bx = udiv i32 %i.bw, %i.bd
  br label %_ZN9Imath_3_24modpEii.exit55

_ZN9Imath_3_24modpEii.exit55:                     ; preds = %.thread9, %.thread2, %bb.l, %.thread
  %i.by = phi i32 [ %i.bq, %.thread2 ], [ %i.bo, %.thread9 ], [ %i.bb, %bb.l ], [ %i.bi, %.thread ]
  %i.bz = phi i32 [ %i.bs, %.thread2 ], [ %i.bp, %.thread9 ], [ %i.bv, %bb.l ], [ %i.bx, %.thread ]
  %i.ca = mul nsw i32 %i.bz, %0
  %i.cb = sub nsw i32 %i.h, %i.ca
  %i.cc = sext i32 %i.by to i64
  %i.cd = mul nsw i64 %.24.val, %i.cc
  %i.ce = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.cd
  %i.cf = sext i32 %1 to i64                      ; 2 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !12
  %i.ci = fpext float %i.ch to double
  %i.cj = sext i32 %i.cb to i64
  %i.ck = mul nsw i64 %.24.val, %i.cj
  %i.cl = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.ck
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cf
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !12
  %i.co = fpext float %i.cn to double
  br label %bb.z

bb.m:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.cp = icmp sgt i32 %.fr, -1
  %i.cq = icmp sgt i32 %0, -1                     ; 4 uses
  br i1 %i.cp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.cq, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  br i1 %i.cq, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.cr = udiv i32 %.fr, %0
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

bb.q:                                             ; preds = %bb.n
  %i.cs = sub nsw i32 0, %0
  %i.ct = udiv i32 %.fr, %i.cs
  %i.cu = sub nsw i32 0, %i.ct
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

bb.r:                                             ; preds = %bb.o
  %i.cv = xor i32 %.fr, -1
  %i.cw = add nuw i32 %0, %i.cv
  %i.cx = udiv i32 %i.cw, %0
  %i.cy = sub nsw i32 0, %i.cx
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

bb.s:                                             ; preds = %bb.o
  %i.cz = sub nsw i32 0, %0
  %i.da = xor i32 %0, -1
  %i.db = sub nsw i32 %i.da, %.fr
  %i.dc = udiv i32 %i.db, %i.cz
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

_ZN12_GLOBAL__N_16mirrorEii.exit:                 ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %i.dd = phi i32 [ %i.cu, %bb.q ], [ %i.cr, %bb.p ], [ %i.cy, %bb.r ], [ %i.dc, %bb.s ] ; 2 uses
  %i.de = mul nsw i32 %i.dd, %0
  %i.df = sub nsw i32 %.fr, %i.de                 ; 2 uses
  %i.dg = and i32 %i.dd, 1
  %.not.i = icmp eq i32 %i.dg, 0
  %i.dh = xor i32 %i.df, -1
  %i.di = add i32 %0, %i.dh
  %i.dj = select i1 %.not.i, i32 %i.df, i32 %i.di
  %i.dk = icmp sgt i32 %.fr, -2
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_16mirrorEii.exit
  br i1 %i.cq, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_16mirrorEii.exit
  br i1 %i.cq, label %bb.x, label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.dl = udiv i32 %i.h, %0
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

bb.w:                                             ; preds = %bb.t
  %i.dm = sub nsw i32 0, %0
  %i.dn = udiv i32 %i.h, %i.dm
  %i.do = sub nsw i32 0, %i.dn
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

bb.x:                                             ; preds = %bb.u
  %reass.sub = add nsw i32 %0, -2
  %i.dp = sub i32 %reass.sub, %.fr
  %i.dq = udiv i32 %i.dp, %0
  %i.dr = sub nsw i32 0, %i.dq
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

bb.y:                                             ; preds = %bb.u
  %i.ds = sub nsw i32 0, %0
  %i.dt = xor i32 %0, -1
  %i.du = sub nsw i32 %i.dt, %i.h
  %i.dv = udiv i32 %i.du, %i.ds
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit57

_ZN12_GLOBAL__N_16mirrorEii.exit57:               ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %i.dw = phi i32 [ %i.do, %bb.w ], [ %i.dl, %bb.v ], [ %i.dr, %bb.x ], [ %i.dv, %bb.y ] ; 2 uses
  %i.dx = mul nsw i32 %i.dw, %0
  %i.dy = sub nsw i32 %i.h, %i.dx                 ; 2 uses
  %i.dz = and i32 %i.dw, 1
  %.not.i56 = icmp eq i32 %i.dz, 0
  %i.ea = xor i32 %i.dy, -1
  %i.eb = add i32 %0, %i.ea
  %i.ec = select i1 %.not.i56, i32 %i.dy, i32 %i.eb
  %i.ed = sext i32 %i.dj to i64
  %i.ee = mul nsw i64 %.24.val, %i.ed
  %i.ef = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.ee
  %i.eg = sext i32 %1 to i64                      ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !12
  %i.ej = fpext float %i.ei to double
  %i.ek = sext i32 %i.ec to i64
  %i.el = mul nsw i64 %.24.val, %i.ek
  %i.em = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.el
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.eg
  %i.eo = load float, ptr %i.en, align 4, !tbaa !12
  %i.ep = fpext float %i.eo to double
  br label %bb.z

bb.z:                                             ; preds = %bb.g, %bb.f, %_ZN12_GLOBAL__N_16mirrorEii.exit57, %_ZN9Imath_3_24modpEii.exit55, %bb.h, %_ZN9Imath_3_25floorIdEEiT_.exit
  %.051 = phi double [ 0.000000e+00, %_ZN9Imath_3_25floorIdEEiT_.exit ], [ %i.ej, %_ZN12_GLOBAL__N_16mirrorEii.exit57 ], [ %i.ao, %bb.h ], [ %i.ci, %_ZN9Imath_3_24modpEii.exit55 ], [ %i.r, %bb.f ], [ %i.r, %bb.g ]
  %.0 = phi double [ 0.000000e+00, %_ZN9Imath_3_25floorIdEEiT_.exit ], [ %i.ep, %_ZN12_GLOBAL__N_16mirrorEii.exit57 ], [ %i.au, %bb.h ], [ %i.co, %_ZN9Imath_3_24modpEii.exit55 ], [ 0.000000e+00, %bb.f ], [ %i.aa, %bb.g ]
  %i.eq = sitofp i32 %i.h to double
  %i.er = fsub double %i.eq, %2                   ; 2 uses
  %i.es = fsub double 1.000000e+00, %i.er
  %i.et = fmul double %i.es, %.0
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.er, double %.051, double %i.et)
  ret double %i.eu
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef double @_ZN12_GLOBAL__N_17sampleYIjEEdRK17TypedImageChannelIT_Eiid13Extrapolation(i64 %.24.val, ptr nofree readonly captures(none) %.32.val, i32 noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3) unnamed_addr #16 {
bb.a:
  %i.a = fcmp ult double %2, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fptosi double %2 to i32
  br label %_ZN9Imath_3_25floorIdEEiT_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = fneg double %2                           ; 2 uses
  %i.d = fptosi double %i.c to i32                ; 2 uses
  %i.e = sitofp i32 %i.d to double
  %i.f = fcmp ogt double %i.c, %i.e
  %.neg.i = sext i1 %i.f to i32
  %.neg5.i = sub nsw i32 %.neg.i, %i.d
  br label %_ZN9Imath_3_25floorIdEEiT_.exit

_ZN9Imath_3_25floorIdEEiT_.exit:                  ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.b, %bb.b ], [ %.neg5.i, %bb.c ]
  %.fr = freeze i32 %i.g                          ; 27 uses
  %i.h = add nsw i32 %.fr, 1                      ; 12 uses
  switch i32 %3, label %bb.z [
    i32 0, label %bb.d
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.m
  ]

bb.d:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.i = icmp sgt i32 %.fr, -1
  %i.j = icmp slt i32 %.fr, %0
  %or.cond = and i1 %i.i, %i.j
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = zext nneg i32 %.fr to i64
  %i.l = mul nsw i64 %.24.val, %i.k
  %i.m = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.l
  %i.n = sext i32 %1 to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !53
  %i.q = uitofp i32 %i.p to double
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.r = phi double [ %i.q, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.s = icmp sgt i32 %.fr, -2
  %i.t = icmp slt i32 %i.h, %0
  %or.cond54 = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond54, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.u = zext nneg i32 %i.h to i64
  %i.v = mul nsw i64 %.24.val, %i.u
  %i.w = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.v
  %i.x = sext i32 %1 to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !53
  %i.aa = uitofp i32 %i.z to double
  br label %bb.z

bb.h:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.ab = add nsw i32 %0, -1                      ; 2 uses
  %i.ac = icmp slt i32 %.fr, 0
  %i.ad = tail call i32 @llvm.smin.i32(i32 %.fr, i32 %i.ab)
  %i.ae = select i1 %i.ac, i32 0, i32 %i.ad
  %i.af = icmp slt i32 %.fr, -1
  %i.ag = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.ab)
  %i.ah = select i1 %i.af, i32 0, i32 %i.ag
  %i.ai = sext i32 %i.ae to i64
  %i.aj = mul nsw i64 %.24.val, %i.ai
  %i.ak = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.aj
  %i.al = sext i32 %1 to i64                      ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !53
  %i.ao = uitofp i32 %i.an to double
  %i.ap = sext i32 %i.ah to i64
  %i.aq = mul nsw i64 %.24.val, %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.aq
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.al
  %i.at = load i32, ptr %i.as, align 4, !tbaa !53
  %i.au = uitofp i32 %i.at to double
  br label %bb.z

bb.i:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.av = icmp sgt i32 %.fr, -1
  %i.aw = icmp sgt i32 %0, -1                     ; 2 uses
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.aw, label %.thread10, label %..thread2_crit_edge

.thread10:                                        ; preds = %bb.j
  %i.ax = urem i32 %.fr, %0
  br label %.thread9

bb.k:                                             ; preds = %bb.i
  br i1 %i.aw, label %_ZN9Imath_3_24modpEii.exit, label %_ZN9Imath_3_24modpEii.exit.thread1

_ZN9Imath_3_24modpEii.exit:                       ; preds = %bb.k
  %i.ay = xor i32 %.fr, -1
  %i.az = add nuw i32 %0, %i.ay                   ; 2 uses
  %i.ba = urem i32 %i.az, %0
  %.neg.neg = sub nuw i32 %i.az, %i.ba
  %i.bb = add i32 %.neg.neg, %.fr                 ; 2 uses
  %i.bc = icmp eq i32 %.fr, -1
  br i1 %i.bc, label %.thread9, label %bb.l

_ZN9Imath_3_24modpEii.exit.thread1:               ; preds = %bb.k
  %i.bd = sub nsw i32 0, %0                       ; 3 uses
  %i.be = xor i32 %0, -1                          ; 2 uses
  %i.bf = sub nsw i32 %i.be, %.fr
  %i.bg = udiv i32 %i.bf, %i.bd
  %i.bh = mul nsw i32 %i.bg, %0
  %i.bi = sub nsw i32 %.fr, %i.bh                 ; 2 uses
  %i.bj = icmp eq i32 %.fr, -1
  br i1 %i.bj, label %.thread2, label %.thread

..thread2_crit_edge:                              ; preds = %bb.j
  %i.bk = sub nsw i32 0, %0
  %i.bl = udiv i32 %.fr, %i.bk
  %i.bm = mul i32 %i.bl, %0
  %i.bn = add i32 %.fr, %i.bm
  %.pre = sub nsw i32 0, %0
  br label %.thread2

.thread9:                                         ; preds = %_ZN9Imath_3_24modpEii.exit, %.thread10
  %i.bo = phi i32 [ %i.ax, %.thread10 ], [ %i.bb, %_ZN9Imath_3_24modpEii.exit ]
  %i.bp = udiv i32 %i.h, %0
  br label %_ZN9Imath_3_24modpEii.exit55

.thread2:                                         ; preds = %..thread2_crit_edge, %_ZN9Imath_3_24modpEii.exit.thread1
  %.pre-phi = phi i32 [ %.pre, %..thread2_crit_edge ], [ %i.bd, %_ZN9Imath_3_24modpEii.exit.thread1 ]
  %i.bq = phi i32 [ %i.bn, %..thread2_crit_edge ], [ %i.bi, %_ZN9Imath_3_24modpEii.exit.thread1 ]
  %i.br = udiv i32 %i.h, %.pre-phi
  %i.bs = sub nsw i32 0, %i.br
  br label %_ZN9Imath_3_24modpEii.exit55

bb.l:                                             ; preds = %_ZN9Imath_3_24modpEii.exit
  %reass.sub4 = add nsw i32 %0, -2
  %i.bt = sub i32 %reass.sub4, %.fr
  %i.bu = udiv i32 %i.bt, %0
  %i.bv = sub nsw i32 0, %i.bu
  br label %_ZN9Imath_3_24modpEii.exit55

.thread:                                          ; preds = %_ZN9Imath_3_24modpEii.exit.thread1
  %i.bw = sub nsw i32 %i.be, %i.h
  %i.bx = udiv i32 %i.bw, %i.bd
  br label %_ZN9Imath_3_24modpEii.exit55

_ZN9Imath_3_24modpEii.exit55:                     ; preds = %.thread9, %.thread2, %bb.l, %.thread
  %i.by = phi i32 [ %i.bq, %.thread2 ], [ %i.bo, %.thread9 ], [ %i.bb, %bb.l ], [ %i.bi, %.thread ]
  %i.bz = phi i32 [ %i.bs, %.thread2 ], [ %i.bp, %.thread9 ], [ %i.bv, %bb.l ], [ %i.bx, %.thread ]
  %i.ca = mul nsw i32 %i.bz, %0
  %i.cb = sub nsw i32 %i.h, %i.ca
  %i.cc = sext i32 %i.by to i64
  %i.cd = mul nsw i64 %.24.val, %i.cc
  %i.ce = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.cd
  %i.cf = sext i32 %1 to i64                      ; 2 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !53
  %i.ci = uitofp i32 %i.ch to double
  %i.cj = sext i32 %i.cb to i64
  %i.ck = mul nsw i64 %.24.val, %i.cj
  %i.cl = getelementptr inbounds [4 x i8], ptr %.32.val, i64 %i.ck
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cf
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !53
  %i.co = uitofp i32 %i.cn to double
  br label %bb.z

bb.m:                                             ; preds = %_ZN9Imath_3_25floorIdEEiT_.exit
  %i.cp = icmp sgt i32 %.fr, -1
  %i.cq = icmp sgt i32 %0, -1                     ; 4 uses
  br i1 %i.cp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %i.cq, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  br i1 %i.cq, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.cr = udiv i32 %.fr, %0
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

bb.q:                                             ; preds = %bb.n
  %i.cs = sub nsw i32 0, %0
  %i.ct = udiv i32 %.fr, %i.cs
  %i.cu = sub nsw i32 0, %i.ct
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

bb.r:                                             ; preds = %bb.o
  %i.cv = xor i32 %.fr, -1
  %i.cw = add nuw i32 %0, %i.cv
  %i.cx = udiv i32 %i.cw, %0
  %i.cy = sub nsw i32 0, %i.cx
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

bb.s:                                             ; preds = %bb.o
  %i.cz = sub nsw i32 0, %0
  %i.da = xor i32 %0, -1
  %i.db = sub nsw i32 %i.da, %.fr
  %i.dc = udiv i32 %i.db, %i.cz
  br label %_ZN12_GLOBAL__N_16mirrorEii.exit

_ZN12_GLOBAL__N_16mirrorEii.exit:                 ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %i.dd = phi i32 [ %i.cu, %bb.q ], [ %i.cr, %bb.p ], [ %i.cy, %bb.r ], [ %i.dc, %bb.s ] ; 2 uses
  %i.de = mul nsw i32 %i.dd, %0
  %i.df = sub nsw i32 %.fr, %i.de                 ; 2 uses
  %i.dg = and i32 %i.dd, 1
  %.not.i = icmp eq i32 %i.dg, 0
  %i.dh = xor i32 %i.df, -1
  %i.di = add i32 %0, %i.dh
  %i.dj = select i1 %.not.i, i32 %i.df, i32 %i.di
  %i.dk = icmp sgt i32 %.fr, -2
end_hunk_0
