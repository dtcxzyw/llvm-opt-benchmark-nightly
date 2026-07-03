inline.NumInlined: 3475
inline.NumDeleted: 1689
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor10EmitResultESt10shared_ptrINS_9ArrayDataEEPNS1_12ExecListenerE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %bb.z
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #27
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #27
  br label %bb.ad

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow5DatumD2Ev.exit26, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

bb.ad:                                            ; preds = %bb.k, %bb.y, %bb.ac
  %.pn12.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.ac ], [ %.pn12, %bb.y ], [ %i.v, %bb.k ]
  resume { ptr, i32 } %.pn12.pn.pn
}

; Function Attrs: nounwind
declare void @_ZNSt12bad_weak_ptrD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.60") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZNK5arrow5Array9GetScalarEl(ptr dead_on_unwind writable sret(%"class.arrow::Result.334") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !121    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread, !prof !124

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !84
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !767
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !767
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit, !prof !69

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !121    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread, !prof !195

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !126, !range !132, !noundef !133
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute12_GLOBAL__N_122ComputeDataPreallocateERKNS_8DataTypeEPSt6vectorINS1_19BufferPreallocationESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !295
  switch i32 %i.b, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit [
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 4, label %bb.b
    i32 5, label %bb.b
    i32 6, label %bb.b
    i32 7, label %bb.b
    i32 8, label %bb.b
    i32 9, label %bb.b
    i32 10, label %bb.b
    i32 11, label %bb.b
    i32 12, label %bb.b
    i32 16, label %bb.b
    i32 17, label %bb.b
    i32 19, label %bb.b
    i32 20, label %bb.b
    i32 18, label %bb.b
    i32 33, label %bb.b
    i32 21, label %bb.b
    i32 37, label %bb.b
    i32 22, label %bb.b
    i32 29, label %bb.b
    i32 43, label %bb.b
    i32 44, label %bb.b
    i32 23, label %bb.b
    i32 24, label %bb.b
    i32 15, label %bb.b
    i32 14, label %bb.g
    i32 13, label %bb.g
    i32 25, label %bb.g
    i32 30, label %bb.g
    i32 35, label %bb.l
    i32 34, label %bb.l
    i32 36, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !698  ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !768
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.f, ptr %i.h, align 4, !tbaa !769
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !771
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !698
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %.val26.i.i = load ptr, ptr %1, align 8, !tbaa !697 ; 7 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.n = ptrtoint ptr %.val26.i.i to i64          ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #28
  unreachable

_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %i.r = icmp eq ptr %i.h, %.val26.i.i            ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.r, i64 1, i64 %i.q
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.q
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #29 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.o ; 2 uses
  store i32 %i.f, ptr %i.y, align 4, !tbaa !769
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %i.z, align 4, !tbaa !771
  br i1 %i.r, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit38.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = ptrtoaddr ptr %i.x to i64
  %i.ab = sub i64 %i.m, %i.n
  %i.ac = add i64 %i.ab, -8                       ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check77 = icmp ult i64 %i.ac, 72
  %i.af = sub i64 %i.n, %i.aa
  %diff.check75 = icmp ugt i64 %i.af, -32
  %or.cond = or i1 %min.iters.check77, %diff.check75
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader94, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec80 = and i64 %i.ae, 4611686018427387900   ; 3 uses
  %i.ag = shl i64 %n.vec80, 3                     ; 2 uses
  %i.ah = getelementptr i8, ptr %i.x, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %.val26.i.i, i64 %i.ag
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph78
  %index82 = phi i64 [ 0, %vector.ph78 ], [ %index.next87, %vector.body81 ] ; 2 uses
  %i.aj = shl i64 %index82, 3                     ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.x, i64 %i.aj ; 2 uses
  %next.gep84 = getelementptr i8, ptr %.val26.i.i, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep84, i64 16
  %wide.load85 = load <2 x i64>, ptr %next.gep84, align 4
  %wide.load86 = load <2 x i64>, ptr %i.ak, align 4
  %i.al = getelementptr i8, ptr %next.gep83, i64 16
  store <2 x i64> %wide.load85, ptr %next.gep83, align 4, !alias.scope !772
  store <2 x i64> %wide.load86, ptr %i.al, align 4, !alias.scope !772
  %index.next87 = add nuw i64 %index82, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next87, %n.vec80
  br i1 %i.am, label %middle.block88, label %vector.body81, !llvm.loop !775

middle.block88:                                   ; preds = %vector.body81
  %cmp.n89 = icmp eq i64 %i.ae, %n.vec80
  br i1 %cmp.n89, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit38.i.i, label %.lr.ph.i.i.i.i.i.preheader94

.lr.ph.i.i.i.i.i.preheader94:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block88
  %.03.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block88 ]
  %.092.i.i.i.i.i.ph = phi ptr [ %.val26.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block88 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader94, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.03.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader94 ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader94 ] ; 2 uses
  %.09.val.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i, align 4
  store i64 %.09.val.i.i.i.i.i, ptr %.03.i.i.i.i.i, align 4, !alias.scope !772
  %i.an = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit38.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !776

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit38.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block88, %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ah, %middle.block88 ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i39.i.i = icmp eq ptr %.val26.i.i, null
  br i1 %.not.i39.i.i, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit38.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val26.i.i, i64 noundef %i.o) #31
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit38.i.i
  store ptr %i.x, ptr %1, align 8, !tbaa !697
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !698
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !768
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !698 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !768
  %.not.i11 = icmp eq ptr %i.as, %i.au
  br i1 %.not.i11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 32, ptr %i.as, align 4, !tbaa !769
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 1, ptr %i.av, align 4, !tbaa !771
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !698
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %.val.i.i = load ptr, ptr %1, align 8, !tbaa !697 ; 7 uses
  %i.ax = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.ay = ptrtoint ptr %.val.i.i to i64           ; 3 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 4 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %bb.j, label %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i12

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #28
  unreachable

_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i12: ; preds = %bb.i
  %i.bb = ashr exact i64 %i.az, 3                 ; 3 uses
  %i.bc = icmp eq ptr %i.as, %.val.i.i            ; 2 uses
  %.sroa.speculated.i.i.i13 = select i1 %i.bc, i64 1, i64 %i.bb
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i13, %i.bb ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bb
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 1152921504606846975)
  %i.bg = select i1 %i.be, i64 1152921504606846975, i64 %i.bf ; 3 uses
  %.not.i.i.i14 = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i14)
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #29 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.az ; 2 uses
  store i32 32, ptr %i.bj, align 4, !tbaa !769
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 1, ptr %i.bk, align 4, !tbaa !771
  br i1 %i.bc, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i, label %.lr.ph.i.i.i.i.i15.preheader

.lr.ph.i.i.i.i.i15.preheader:                     ; preds = %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i12
  %i.bl = ptrtoaddr ptr %i.bi to i64
  %i.bm = sub i64 %i.ax, %i.ay
  %i.bn = add i64 %i.bm, -8                       ; 2 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check59 = icmp ult i64 %i.bn, 72
  %i.bq = sub i64 %i.ay, %i.bl
  %diff.check57 = icmp ugt i64 %i.bq, -32
  %or.cond92 = or i1 %min.iters.check59, %diff.check57
  br i1 %or.cond92, label %.lr.ph.i.i.i.i.i15.preheader95, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.i.i.i.i.i15.preheader
  %n.vec62 = and i64 %i.bp, 4611686018427387900   ; 3 uses
  %i.br = shl i64 %n.vec62, 3                     ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bi, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %.val.i.i, i64 %i.br
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph60
  %index64 = phi i64 [ 0, %vector.ph60 ], [ %index.next69, %vector.body63 ] ; 2 uses
  %i.bu = shl i64 %index64, 3                     ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.bi, i64 %i.bu ; 2 uses
  %next.gep66 = getelementptr i8, ptr %.val.i.i, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load67 = load <2 x i64>, ptr %next.gep66, align 4
  %wide.load68 = load <2 x i64>, ptr %i.bv, align 4
  %i.bw = getelementptr i8, ptr %next.gep65, i64 16
  store <2 x i64> %wide.load67, ptr %next.gep65, align 4, !alias.scope !777
  store <2 x i64> %wide.load68, ptr %i.bw, align 4, !alias.scope !777
  %index.next69 = add nuw i64 %index64, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next69, %n.vec62
  br i1 %i.bx, label %middle.block70, label %vector.body63, !llvm.loop !780

middle.block70:                                   ; preds = %vector.body63
  %cmp.n71 = icmp eq i64 %i.bp, %n.vec62
  br i1 %cmp.n71, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i, label %.lr.ph.i.i.i.i.i15.preheader95

.lr.ph.i.i.i.i.i15.preheader95:                   ; preds = %.lr.ph.i.i.i.i.i15.preheader, %middle.block70
  %.03.i.i.i.i.i16.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i15.preheader ], [ %i.bs, %middle.block70 ]
  %.092.i.i.i.i.i17.ph = phi ptr [ %.val.i.i, %.lr.ph.i.i.i.i.i15.preheader ], [ %i.bt, %middle.block70 ]
  br label %.lr.ph.i.i.i.i.i15

.lr.ph.i.i.i.i.i15:                               ; preds = %.lr.ph.i.i.i.i.i15.preheader95, %.lr.ph.i.i.i.i.i15
  %.03.i.i.i.i.i16 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i15 ], [ %.03.i.i.i.i.i16.ph, %.lr.ph.i.i.i.i.i15.preheader95 ] ; 2 uses
  %.092.i.i.i.i.i17 = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i15 ], [ %.092.i.i.i.i.i17.ph, %.lr.ph.i.i.i.i.i15.preheader95 ] ; 2 uses
  %.09.val.i.i.i.i.i18 = load i64, ptr %.092.i.i.i.i.i17, align 4
  store i64 %.09.val.i.i.i.i.i18, ptr %.03.i.i.i.i.i16, align 4, !alias.scope !777
  %i.by = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i17, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i16, i64 8 ; 2 uses
  %.not.i.i.i.i.i19 = icmp eq ptr %i.by, %i.as
  br i1 %.not.i.i.i.i.i19, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i, label %.lr.ph.i.i.i.i.i15, !llvm.loop !781

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i: ; preds = %.lr.ph.i.i.i.i.i15, %middle.block70, %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i12
  %.0.lcssa.i.i.i.i.i20 = phi ptr [ %i.bi, %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i12 ], [ %i.bs, %middle.block70 ], [ %i.bz, %.lr.ph.i.i.i.i.i15 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i20, i64 8
  %.not.i41.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i41.i.i, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.az) #31
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i
  store ptr %i.bi, ptr %1, align 8, !tbaa !697
  store ptr %i.ca, ptr %i.ar, align 8, !tbaa !698
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.cb, ptr %i.at, align 8, !tbaa !768
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !698 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !768
  %.not.i21 = icmp eq ptr %i.cd, %i.cf
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 64, ptr %i.cd, align 4, !tbaa !769
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 1, ptr %i.cg, align 4, !tbaa !771
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.ch, ptr %i.cc, align 8, !tbaa !698
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit

bb.n:                                             ; preds = %bb.l
  %.val.i.i22 = load ptr, ptr %1, align 8, !tbaa !697 ; 7 uses
  %i.ci = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cj = ptrtoint ptr %.val.i.i22 to i64         ; 3 uses
  %i.ck = sub i64 %i.ci, %i.cj                    ; 4 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775800
  br i1 %i.cl, label %bb.o, label %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i23

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #28
  unreachable

_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i23: ; preds = %bb.n
  %i.cm = ashr exact i64 %i.ck, 3                 ; 3 uses
  %i.cn = icmp eq ptr %i.cd, %.val.i.i22          ; 2 uses
  %.sroa.speculated.i.i.i24 = select i1 %i.cn, i64 1, i64 %i.cm
  %i.co = add nsw i64 %.sroa.speculated.i.i.i24, %i.cm ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cm
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.co, i64 1152921504606846975)
  %i.cr = select i1 %i.cp, i64 1152921504606846975, i64 %i.cq ; 3 uses
  %.not.i.i.i25 = icmp ne i64 %i.cr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i25)
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #29 ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ck ; 2 uses
  store i32 64, ptr %i.cu, align 4, !tbaa !769
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 1, ptr %i.cv, align 4, !tbaa !771
  br i1 %i.cn, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i31, label %.lr.ph.i.i.i.i.i26.preheader

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i23
  %i.cw = ptrtoaddr ptr %i.ct to i64
  %i.cx = sub i64 %i.ci, %i.cj
  %i.cy = add i64 %i.cx, -8                       ; 2 uses
  %i.cz = lshr i64 %i.cy, 3
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cy, 72
  %i.db = sub i64 %i.cj, %i.cw
  %diff.check = icmp ugt i64 %i.db, -32
  %or.cond93 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond93, label %.lr.ph.i.i.i.i.i26.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i26.preheader
  %n.vec = and i64 %i.da, 4611686018427387900     ; 3 uses
  %i.dc = shl i64 %n.vec, 3                       ; 2 uses
  %i.dd = getelementptr i8, ptr %i.ct, i64 %i.dc  ; 2 uses
  %i.de = getelementptr i8, ptr %.val.i.i22, i64 %i.dc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ct, i64 %i.df ; 2 uses
  %next.gep53 = getelementptr i8, ptr %.val.i.i22, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep53, align 4
  %wide.load54 = load <2 x i64>, ptr %i.dg, align 4
  %i.dh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !782
  store <2 x i64> %wide.load54, ptr %i.dh, align 4, !alias.scope !782
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !785

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i31, label %.lr.ph.i.i.i.i.i26.preheader97

.lr.ph.i.i.i.i.i26.preheader97:                   ; preds = %.lr.ph.i.i.i.i.i26.preheader, %middle.block
  %.03.i.i.i.i.i27.ph = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.dd, %middle.block ]
  %.092.i.i.i.i.i28.ph = phi ptr [ %.val.i.i22, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader97, %.lr.ph.i.i.i.i.i26
  %.03.i.i.i.i.i27 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i26 ], [ %.03.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i26.preheader97 ] ; 2 uses
  %.092.i.i.i.i.i28 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i26 ], [ %.092.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i26.preheader97 ] ; 2 uses
  %.09.val.i.i.i.i.i29 = load i64, ptr %.092.i.i.i.i.i28, align 4
  store i64 %.09.val.i.i.i.i.i29, ptr %.03.i.i.i.i.i27, align 4, !alias.scope !782
  %i.dj = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i28, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i27, i64 8 ; 2 uses
  %.not.i.i.i.i.i30 = icmp eq ptr %i.dj, %i.cd
  br i1 %.not.i.i.i.i.i30, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i31, label %.lr.ph.i.i.i.i.i26, !llvm.loop !786

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i31: ; preds = %.lr.ph.i.i.i.i.i26, %middle.block, %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i23
  %.0.lcssa.i.i.i.i.i32 = phi ptr [ %i.ct, %_ZNKSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i23 ], [ %i.dd, %middle.block ], [ %i.dk, %.lr.ph.i.i.i.i.i26 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i32, i64 8
  %.not.i41.i.i33 = icmp eq ptr %.val.i.i22, null
  br i1 %.not.i41.i.i33, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i34, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i31
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i22, i64 noundef %i.ck) #31
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i34

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i34: ; preds = %bb.p, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit40.i.i31
  store ptr %i.ct, ptr %1, align 8, !tbaa !697
  store ptr %i.dl, ptr %i.cc, align 8, !tbaa !698
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cr
  store ptr %i.dm, ptr %i.ce, align 8, !tbaa !768
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE12emplace_backIJiEEERS3_DpOT_.exit: ; preds = %bb.a, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i34, %bb.m, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.h, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEE13PrepareOutputEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i64 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.35", align 16 ; 9 uses
  %4 = alloca %"class.std::shared_ptr.57", align 8 ; 8 uses
  %5 = alloca %"class.arrow::Result.274", align 8 ; 10 uses
  %6 = alloca %"class.arrow::Result.372", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !653, !noalias !787 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !660, !noalias !796 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !70, !alias.scope !796
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = load atomic i32, ptr %i.g monotonic, align 8, !noalias !796
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.c ], [ %i.l, %bb.e ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.j = cmpxchg weak ptr %i.g, i32 %.06.i.i.i.i.i.i.i, i32 %i.i acq_rel monotonic, align 8, !noalias !796 ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  %i.l = extractvalue { i32, i1 } %i.j, 0
  br i1 %i.k, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i, label %bb.d, !llvm.loop !662

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #27, !noalias !796 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.m, align 8, !tbaa !63, !noalias !796
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #28, !noalias !796
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit.i:       ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !663, !noalias !796 ; 2 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !289, !alias.scope !796
  br label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !787
  br label %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit

_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit:      ; preds = %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i, %bb.f
  %i.p = phi ptr [ %i.o, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i ], [ null, %bb.f ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #29
          to label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.k ; 10 uses

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !82, !noalias !797
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 1, ptr %i.t, align 4, !tbaa !84, !noalias !797
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.r, align 8, !tbaa !63, !noalias !797
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !70, !noalias !797
  store ptr %i.p, ptr %i.u, align 8, !tbaa !289, !noalias !797
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !70, !noalias !797
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 %2, ptr %i.y, align 8, !tbaa !211, !noalias !797
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 -1, ptr %i.z, align 8, !tbaa !800, !noalias !797
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, i8 0, i64 88, i1 false), !noalias !797
  store ptr %i.r, ptr %i.q, align 8, !tbaa !70, !alias.scope !797
  store ptr %i.u, ptr %3, align 16, !tbaa !710, !alias.scope !797
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !680 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %.not96 = icmp eq i32 %.pre, 0
  br i1 %.not96, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ac = sext i32 %.pre to i64
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.ac)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit unwind label %bb.l

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !682, !range !132, !noundef !133
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.ac

bb.h:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !616
  invoke void @_ZN5arrow7compute13KernelContext14AllocateBitmapEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.274") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %2)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %5, align 8, !tbaa !121
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  br i1 %i.aj, label %bb.n, label %bb.j, !prof !124

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %_ZNK5arrow10TypeHolder12GetSharedPtrEv.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.bg

bb.l:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.m:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf
end_hunk_0
