inline.NumInlined: 760
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5arrow7compute8internal21CastBinaryDecimalArgsENS1_16DecimalPromotionEPSt6vectorINS_10TypeHolderESaIS4_EE:bb.a
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !34 ; 8 uses
  %.not.i.i.i.i.i163 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i.i.i163, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i167, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 4 uses
  %i.ie = load atomic i64, ptr %i.id acquire, align 8 ; 2 uses
  %i.if = icmp eq i64 %i.ie, 4294967297
  %i.ig = trunc i64 %i.ie to i32                  ; 2 uses
  br i1 %i.if, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  store i32 0, ptr %i.id, align 8, !tbaa !61
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  store i32 0, ptr %i.ih, align 4, !tbaa !63
  %i.ii = load ptr, ptr %i.ic, align 8, !tbaa !64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #25, !inline_history !134
  %i.il = load ptr, ptr %i.ic, align 8, !tbaa !64
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #25, !inline_history !134
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i167

bb.cu:                                            ; preds = %bb.cs
  %i.io = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i.i.i164 = icmp eq i8 %i.io, 0
  br i1 %.not.i.i.i.i.i.i164, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ip = add nsw i32 %i.ig, -1
  store i32 %i.ip, ptr %i.id, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i165

bb.cw:                                            ; preds = %bb.cu
  %i.iq = atomicrmw volatile add ptr %i.id, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i165

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i165: ; preds = %bb.cw, %bb.cv
  %.0.i.i.i.i.i.i.i166 = phi i32 [ %i.ig, %bb.cv ], [ %i.iq, %bb.cw ]
  %i.ir = icmp eq i32 %.0.i.i.i.i.i.i.i166, 1
  br i1 %i.ir, label %bb.cx, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i167, !prof !48

bb.cx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i165
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i167

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i167: ; preds = %bb.cx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i165, %bb.ct, %bb.cr
  %.pr.i168 = load ptr, ptr %5, align 8, !tbaa !74 ; 2 uses
  %.not.i.i169 = icmp eq ptr %.pr.i168, null
  br i1 %.not.i.i169, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit170, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i162, !prof !135

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i162: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i167, %_ZN5arrow6StatusC2ERKS0_.exit109
  %i.is = phi ptr [ %.pr.i168, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i167 ], [ %i.hz, %_ZN5arrow6StatusC2ERKS0_.exit109 ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 1
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !136, !range !96, !noundef !97
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit170, label %bb.cy

bb.cy:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i162
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit170

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit170: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i167, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i162, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.db

bb.cz:                                            ; preds = %bb.cq, %bb.ax
  %.pn64 = phi { ptr, i32 } [ %i.dk, %bb.ax ], [ %.pn, %bb.cq ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %_ZN5arrow6ResultIiED2Ev.exit104, %_ZN5arrow6ResultIiED2Ev.exit
  %.pn64.pn = phi { ptr, i32 } [ %.pn64, %bb.cz ], [ %i.cj, %_ZN5arrow6ResultIiED2Ev.exit104 ], [ %i.bs, %_ZN5arrow6ResultIiED2Ev.exit ]
  resume { ptr, i32 } %.pn64.pn

bb.db:                                            ; preds = %bb.ao, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit170, %_ZN5arrow6ResultIiED2Ev.exit99.thread, %_ZN5arrow6ResultIiED2Ev.exit106.thread, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit94, %_ZN5arrow7compute8internal17CastableToDecimalERKNS_8DataTypeE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.42") align 8 %0, i32 noundef %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !206
  switch i32 %1, label %bb.g [
    i32 3, label %bb.b
    i32 2, label %bb.b
    i32 5, label %bb.c
    i32 4, label %bb.c
    i32 7, label %bb.d
    i32 6, label %bb.d
    i32 9, label %bb.e
    i32 8, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.b, align 8, !tbaa !3
  br label %bb.l

bb.c:                                             ; preds = %bb.a, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 5, ptr %i.c, align 8, !tbaa !3
  br label %bb.l

bb.d:                                             ; preds = %bb.a, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 10, ptr %i.d, align 8, !tbaa !3
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 19, ptr %i.e, align 8, !tbaa !3
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 20, ptr %i.f, align 8, !tbaa !3
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !207
  call void @_ZN5arrow8internal12JoinToStringIJRA22_KcRNS_4Type4typeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(22) @.str.11, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !noalias !207
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.g = load ptr, ptr %2, align 8, !tbaa !44, !noalias !207 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN5arrow6Status7InvalidIJRA22_KcRNS_4Type4typeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.j = load i64, ptr %i.h, align 8, !tbaa !39, !noalias !207
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZN5arrow6Status7InvalidIJRA22_KcRNS_4Type4typeEEEES0_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !tbaa !44, !noalias !207 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !39, !noalias !207
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !207
  resume { ptr, i32 } %i.l

_ZN5arrow6Status7InvalidIJRA22_KcRNS_4Type4typeEEEES0_DpOT_.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !207
  call void @_ZN5arrow6ResultIiEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  %i.r = load ptr, ptr %3, align 8, !tbaa !74     ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.j, !prof !129

bb.j:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA22_KcRNS_4Type4typeEEEES0_DpOT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !136, !range !96, !noundef !97
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN5arrow6StatusD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status7InvalidIJRA22_KcRNS_4Type4typeEEEES0_DpOT_.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.l

bb.l:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @_ZN5arrow11DecimalType4MakeENS_4Type4typeEii(ptr dead_on_unwind writable sret(%"class.arrow::Result.38") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal15CastDecimalArgsEPNS_10TypeHolderEm(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef captures(address) %1, i64 noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %4 = alloca %"class.arrow::Result.42", align 8  ; 12 uses
  %5 = alloca %"class.arrow::Result.38", align 8  ; 13 uses
  %.idx = mul nuw nsw i64 %2, 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 4 uses
  %.not165 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not165, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !3
  br label %.thread212

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.049169 = phi i32 [ %.2.ph, %bb.e ], [ 23, %bb.a ] ; 3 uses
  %.050168 = phi i1 [ %.252.ph, %bb.e ], [ false, %bb.a ] ; 2 uses
  %.054167 = phi ptr [ %i.i, %bb.e ], [ %1, %bb.a ] ; 2 uses
  %.0144166 = phi i32 [ %.1.ph, %bb.e ], [ 0, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.054167, align 8, !tbaa !113 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !98   ; 4 uses
  %.off.i = add i32 %i.e, -10
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.off.i74 = add i32 %i.e, -2
  %switch.i75 = icmp ult i32 %.off.i74, 8
  br i1 %switch.i75, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %i.e, label %bb.f [
    i32 43, label %bb.d
    i32 44, label %bb.d
    i32 23, label %bb.d
    i32 24, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !151
  %.sroa.speculated136 = tail call i32 @llvm.smax.i32(i32 %.0144166, i32 %i.g)
  %i.h = icmp eq i32 %i.e, 24
  %spec.select = select i1 %i.h, i32 24, i32 %.049169
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph, %bb.b
  %.1.ph = phi i32 [ %.sroa.speculated136, %bb.d ], [ %.0144166, %bb.b ], [ %.0144166, %.lr.ph ] ; 4 uses
  %.252.ph = phi i1 [ %.050168, %bb.d ], [ %.050168, %bb.b ], [ true, %.lr.ph ] ; 2 uses
  %.2.ph = phi i32 [ %spec.select, %bb.d ], [ %.049169, %bb.b ], [ %.049169, %.lr.ph ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.054167, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.i, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !212

bb.f:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !213
  br label %bb.bq

._crit_edge:                                      ; preds = %bb.e
  br i1 %.252.ph, label %bb.g, label %.lr.ph175

bb.g:                                             ; preds = %._crit_edge
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7float64Ev() ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 12 uses
  %.not.i.i.i = icmp eq ptr %i.m, null            ; 3 uses
  br i1 %.not.i.i.i, label %.lr.ph.i.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %.lr.ph.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j, %bb.i, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %6 = insertelement <2 x ptr> poison, ptr %i.k, i64 0
  %7 = shufflevector <2 x ptr> %6, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN5arrow10TypeHolderaSERKS0_.exit.i
  %.08.i = phi ptr [ %i.ap, %_ZN5arrow10TypeHolderaSERKS0_.exit.i ], [ %1, %.lr.ph.i.preheader ] ; 3 uses
  store <2 x ptr> %7, ptr %.08.i, align 8, !tbaa !77
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow10TypeHolderaSERKS0_.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  br i1 %.not.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = load i32, ptr %i.s, align 4, !tbaa !3
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.s, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.y = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !34
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.k
  %i.z = phi ptr [ %i.u, %bb.k ], [ %i.u, %bb.m ], [ %.pr.pre.i.i.i.i.i, %bb.n ] ; 8 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not8.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.aa, align 8, !tbaa !61
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !63
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25, !inline_history !166
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25, !inline_history !166
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i9.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i9.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.r ], [ %i.an, %bb.s ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ao, label %bb.t, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, !prof !48

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.p, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  store ptr %i.m, ptr %i.t, align 8, !tbaa !34
  br label %_ZN5arrow10TypeHolderaSERKS0_.exit.i

_ZN5arrow10TypeHolderaSERKS0_.exit.i:             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.ap, %i.b
  br i1 %.not.i, label %_ZN5arrow7compute8internal12ReplaceTypesERKNS_10TypeHolderEPS2_m.exit, label %.lr.ph.i, !llvm.loop !167

_ZN5arrow7compute8internal12ReplaceTypesERKNS_10TypeHolderEPS2_m.exit: ; preds = %_ZN5arrow10TypeHolderaSERKS0_.exit.i
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN5arrow7compute8internal12ReplaceTypesERKNS_10TypeHolderEPS2_m.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.aq, align 8, !tbaa !61
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !63
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25, !inline_history !216
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25, !inline_history !216
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i77 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i77, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i = phi i32 [ %i.at, %bb.x ], [ %i.bd, %bb.y ]
  %i.be = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.be, label %bb.z, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !48

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.v, %_ZN5arrow7compute8internal12ReplaceTypesERKNS_10TypeHolderEPS2_m.exit
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !217
  br label %bb.bq

.lr.ph175:                                        ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph175, %.critedge
  %i.bg = phi i32 [ 0, %.lr.ph175 ], [ %i.cc, %.critedge ] ; 3 uses
  %.062173 = phi ptr [ %1, %.lr.ph175 ], [ %i.cd, %.critedge ] ; 2 uses
  %i.bh = load ptr, ptr %.062173, align 8, !tbaa !113 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !98 ; 3 uses
  %.off.i79 = add i32 %i.bj, -2
  %switch.i80 = icmp ult i32 %.off.i79, 8
  br i1 %switch.i80, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.42") align 8 %4, i32 noundef %i.bj)
  %i.bk = load ptr, ptr %4, align 8, !tbaa !74
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZN5arrow6ResultIiED2Ev.exit, label %bb.ac, !prof !129

bb.ac:                                            ; preds = %bb.ab
  store ptr null, ptr %0, align 8, !tbaa !74
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %.not.i.i83 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i83, label %_ZN5arrow6ResultIiED2Ev.exit84, label %bb.ag, !prof !129

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.ac
  %.pre = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %.not.i.i82 = icmp eq ptr %.pre, null
  br i1 %.not.i.i82, label %.loopexit.loopexit, label %bb.ae, !prof !133

bb.ae:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !136, !range !96, !noundef !97
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %.loopexit.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %4) #25
  br label %.loopexit.loopexit

_ZN5arrow6ResultIiED2Ev.exit:                     ; preds = %bb.ab
  %i.br = load i32, ptr %i.bf, align 8, !tbaa !3
  %i.bs = add nsw i32 %i.br, %.1.ph
  %.sroa.speculated126 = call i32 @llvm.smax.i32(i32 %i.bg, i32 %i.bs) ; 2 uses
  store i32 %.sroa.speculated126, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.critedge

bb.ag:                                            ; preds = %bb.ad
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !136, !range !96, !noundef !97
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %_ZN5arrow6ResultIiED2Ev.exit84, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %4) #25
  br label %_ZN5arrow6ResultIiED2Ev.exit84

_ZN5arrow6ResultIiED2Ev.exit84:                   ; preds = %bb.ad, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.bp

bb.ai:                                            ; preds = %bb.aa
  switch i32 %i.bj, label %.critedge [
    i32 43, label %bb.aj
    i32 44, label %bb.aj
    i32 23, label %bb.aj
    i32 24, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai, %bb.ai, %bb.ai
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 76
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !190
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !151
  %i.ca = add i32 %i.bx, %.1.ph
  %i.cb = sub i32 %i.ca, %i.bz
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.bg, i32 %i.cb) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6ResultIiED2Ev.exit, %bb.ai, %bb.aj
  %i.cc = phi i32 [ %i.bg, %bb.ai ], [ %.sroa.speculated, %bb.aj ], [ %.sroa.speculated126, %_ZN5arrow6ResultIiED2Ev.exit ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.062173, i64 24 ; 2 uses
  %.not66 = icmp eq ptr %i.cd, %i.b
  br i1 %.not66, label %.critedge72, label %bb.aa, !llvm.loop !220

.critedge72:                                      ; preds = %.critedge
  %i.ce = icmp sgt i32 %i.cc, 76
  br i1 %i.ce, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %.critedge72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !221
  call void @_ZN5arrow8internal12JoinToStringIJRA19_KcRiRA40_S2_RKiRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(19) @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(40) @.str.5, ptr noundef nonnull align 4 dereferenceable(4) @_ZN5arrow15BasicDecimal25613kMaxPrecisionE, ptr noundef nonnull align 1 dereferenceable(2) @.str.6), !noalias !221
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cf = load ptr, ptr %3, align 8, !tbaa !44, !noalias !221 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZN5arrow6Status7InvalidIJRA19_KcRiRA40_S2_RKiRA2_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.al
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !39, !noalias !221
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #26
  br label %_ZN5arrow6Status7InvalidIJRA19_KcRiRA40_S2_RKiRA2_S2_EEES0_DpOT_.exit

bb.am:                                            ; preds = %bb.ak
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %3, align 8, !tbaa !44, !noalias !221 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i: ; preds = %bb.am
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !39, !noalias !221
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

common.resume:                                    ; preds = %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i ], [ %.pn69, %bb.bp ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !221
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA19_KcRiRA40_S2_RKiRA2_S2_EEES0_DpOT_.exit: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !221
  br label %.loopexit

bb.an:                                            ; preds = %.critedge72
  %i.cq = icmp sgt i32 %i.cc, 38
  %spec.select216 = select i1 %i.cq, i32 24, i32 %.2.ph
  br label %.thread212

.thread212:                                       ; preds = %bb.an, %.thread
  %.0144.lcssa201206210215 = phi i32 [ 0, %.thread ], [ %.1.ph, %bb.an ]
  %i.cr = phi i32 [ 0, %.thread ], [ %i.cc, %bb.an ]
  %i.cs = phi i32 [ 23, %.thread ], [ %spec.select216, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN5arrow11DecimalType4MakeENS_4Type4typeEii(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.38") align 8 %5, i32 noundef %i.cs, i32 noundef %i.cr, i32 noundef %.0144.lcssa201206210215)
  %i.ct = load ptr, ptr %5, align 8, !tbaa !74
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.aq, label %bb.ao, !prof !129

bb.ao:                                            ; preds = %.thread212
  store ptr null, ptr %0, align 8, !tbaa !74
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN5arrow6StatusC2ERKS0_.exit88 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.bp

bb.aq:                                            ; preds = %.thread212
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %8 = load ptr, ptr %i.cw, align 8, !tbaa !84, !noalias !226
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %10 = load ptr, ptr %9, align 8, !tbaa !34, !noalias !226 ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  br i1 %.not165, label %._crit_edge180, label %.lr.ph179

.lr.ph179:                                        ; preds = %bb.aq
  %.not.i.i.i94 = icmp eq ptr %10, null
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %11 = insertelement <2 x ptr> poison, ptr %8, i64 0
  %12 = shufflevector <2 x ptr> %11, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.ax

._crit_edge180:                                   ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110, %bb.aq
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !231
  %.not.i.i89 = icmp eq ptr %10, null
  br i1 %.not.i.i89, label %_ZN5arrow6StatusC2ERKS0_.exit88, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge180
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 4294967297
  %i.db = trunc i64 %i.cz to i32                  ; 2 uses
  br i1 %i.da, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.cy, align 8, !tbaa !61
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 0, ptr %i.dc, align 4, !tbaa !63
  %i.dd = load ptr, ptr %10, align 8, !tbaa !64
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %10) #25, !inline_history !142
  %i.dg = load ptr, ptr %10, align 8, !tbaa !64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %10) #25, !inline_history !142
  br label %_ZN5arrow6StatusC2ERKS0_.exit88

bb.at:                                            ; preds = %bb.ar
  %i.dj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i90 = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i.i90, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dk = add nsw i32 %i.db, -1
  store i32 %i.dk, ptr %i.cy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91

bb.av:                                            ; preds = %bb.at
  %i.dl = atomicrmw volatile add ptr %i.cy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i92 = phi i32 [ %i.db, %bb.au ], [ %i.dl, %bb.av ]
  %i.dm = icmp eq i32 %.0.i.i.i.i92, 1
  br i1 %i.dm, label %bb.aw, label %_ZN5arrow6StatusC2ERKS0_.exit88, !prof !48

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #25
  br label %_ZN5arrow6StatusC2ERKS0_.exit88

bb.ax:                                            ; preds = %.lr.ph179, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110
  %.0177 = phi ptr [ %1, %.lr.ph179 ], [ %i.ei, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110 ] ; 3 uses
  br i1 %.not.i.i.i94, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i95 = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i95, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.do = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.cx, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96

bb.ba:                                            ; preds = %bb.ay
  %i.dq = atomicrmw volatile add ptr %i.cx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96: ; preds = %bb.ax, %bb.az, %bb.ba
  store <2 x ptr> %12, ptr %.0177, align 8, !tbaa !77
  %i.dr = getelementptr inbounds nuw i8, ptr %.0177, i64 16 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !34 ; 8 uses
  store ptr %10, ptr %i.dr, align 8, !tbaa !34
  %.not.i.i.i.i.i97 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i.i97, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 4294967297
  %i.dw = trunc i64 %i.du to i32                  ; 2 uses
  br i1 %i.dv, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.dt, align 8, !tbaa !61
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4, !tbaa !63
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #25, !inline_history !163
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #25, !inline_history !163
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110

bb.bd:                                            ; preds = %bb.bb
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i.i.i98 = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i.i.i98, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i99

bb.bf:                                            ; preds = %bb.bd
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i99

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i99: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i.i.i100 = phi i32 [ %i.dw, %bb.be ], [ %i.eg, %bb.bf ]
  %i.eh = icmp eq i32 %.0.i.i.i.i.i.i.i100, 1
  br i1 %i.eh, label %bb.bg, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110, !prof !48

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i99
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #25
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96, %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i99, %bb.bg
  %i.ei = getelementptr inbounds nuw i8, ptr %.0177, i64 24 ; 2 uses
  %.not68 = icmp eq ptr %i.ei, %i.b
  br i1 %.not68, label %._crit_edge180, label %bb.ax, !llvm.loop !234

_ZN5arrow6StatusC2ERKS0_.exit88:                  ; preds = %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91, %bb.as, %._crit_edge180, %bb.ao
  %i.ej = load ptr, ptr %5, align 8, !tbaa !74    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.bh, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i, !prof !129

bb.bh:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit88
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !34 ; 8 uses
  %.not.i.i.i.i.i111 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i.i111, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 4 uses
  %i.eo = load atomic i64, ptr %i.en acquire, align 8 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 4294967297
  %i.eq = trunc i64 %i.eo to i32                  ; 2 uses
  br i1 %i.ep, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %i.en, align 8, !tbaa !61
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i32 0, ptr %i.er, align 4, !tbaa !63
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !64
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #25, !inline_history !134
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #25, !inline_history !134
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i

bb.bk:                                            ; preds = %bb.bi
  %i.ey = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i.i.i112 = icmp eq i8 %i.ey, 0
  br i1 %.not.i.i.i.i.i.i112, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ez = add nsw i32 %i.eq, -1
  store i32 %i.ez, ptr %i.en, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i113

bb.bm:                                            ; preds = %bb.bk
  %i.fa = atomicrmw volatile add ptr %i.en, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i113

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i113: ; preds = %bb.bm, %bb.bl
  %.0.i.i.i.i.i.i.i114 = phi i32 [ %i.eq, %bb.bl ], [ %i.fa, %bb.bm ]
  %i.fb = icmp eq i32 %.0.i.i.i.i.i.i.i114, 1
  br i1 %i.fb, label %bb.bn, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i, !prof !48

bb.bn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i113
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i: ; preds = %bb.bn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i113, %bb.bj, %bb.bh
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !74   ; 2 uses
  %.not.i.i115 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i115, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i, !prof !135

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit88
  %i.fc = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i ], [ %i.ej, %_ZN5arrow6StatusC2ERKS0_.exit88 ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !136, !range !96, !noundef !97
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %_ZN5arrow6StatusC2ERKS0_.exit, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev.exit, %_ZN5arrow6Status7InvalidIJRA19_KcRiRA40_S2_RKiRA2_S2_EEES0_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.bq

bb.bp:                                            ; preds = %bb.ap, %_ZN5arrow6ResultIiED2Ev.exit84
  %.pn69 = phi { ptr, i32 } [ %i.cv, %bb.ap ], [ %i.bm, %_ZN5arrow6ResultIiED2Ev.exit84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %common.resume

bb.bq:                                            ; preds = %bb.f, %.loopexit, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

declare void @_ZN5arrow13Decimal32Type4MakeEii(ptr dead_on_unwind writable sret(%"class.arrow::Result.38") align 8, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN5arrow13Decimal64Type4MakeEii(ptr dead_on_unwind writable sret(%"class.arrow::Result.38") align 8, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN5arrow14Decimal128Type4MakeEii(ptr dead_on_unwind writable sret(%"class.arrow::Result.38") align 8, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN5arrow14Decimal256Type4MakeEii(ptr dead_on_unwind writable sret(%"class.arrow::Result.38") align 8, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.10", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !74
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !74
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !48

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !39
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_0
