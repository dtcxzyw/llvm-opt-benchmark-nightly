inline.NumInlined: 20842
inline.NumDeleted: 3929
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN2v88internal4wasm7Decoder7verrorfEjPKcz:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit: ; preds = %bb.g, %bb.h
  %i.p = phi ptr [ %i.i, %bb.g ], [ %i.o, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.h, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  store i8 0, ptr %i.r, align 1
  store i32 %1, ptr %5, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 12 uses
  store ptr %i.t, ptr %i.s, align 8
  %i.u = load ptr, ptr %6, align 8                ; 3 uses
  %i.v = icmp eq ptr %i.u, %i.i
  br i1 %i.v, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  %i.w = load i64, ptr %i.q, align 8              ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.y, i1 false)
  br label %_ZN2v88internal4wasm9WasmErrorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  store ptr %i.u, ptr %i.s, align 8
  %i.z = load i64, ptr %i.i, align 8
  store i64 %i.z, ptr %i.t, align 8
  %.pr = load i64, ptr %i.q, align 8
  br label %_ZN2v88internal4wasm9WasmErrorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN2v88internal4wasm9WasmErrorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi ptr [ %i.t, %bb.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 5 uses
  %i.ab = phi i64 [ %i.w, %bb.i ], [ %.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 %i.ab, ptr %i.ac, align 8
  store ptr %i.i, ptr %6, align 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.i, align 8
  store i32 %1, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  %i.ah = icmp eq ptr %i.aa, %i.t                 ; 2 uses
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZN2v88internal4wasm9WasmErrorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.ah, label %bb.j, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN2v88internal4wasm9WasmErrorC2EjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.ah, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  %i.ai = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ai)
  switch i64 %i.ab, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.aj = load i8, ptr %i.aa, align 1
  store i8 %i.aj, ptr %i.ae, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.aa, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.ak = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = load ptr, ptr %i.ad, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1
  %.pre.i.i = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aa, ptr %i.ad, align 8
  store i64 %i.ab, ptr %i.ao, align 8
  %i.ap = load i64, ptr %i.t, align 8
  store i64 %i.ap, ptr %i.af, align 8
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.aq = load i64, ptr %i.af, align 8
  store ptr %i.aa, ptr %i.ad, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ab, ptr %i.ar, align 8
  %i.as = load i64, ptr %i.t, align 8
  store i64 %i.as, ptr %i.af, align 8
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ae, ptr %i.s, align 8
  store i64 %i.aq, ptr %i.t, align 8
  br label %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.t, ptr %i.s, align 8
  br label %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit

_ZN2v88internal4wasm9WasmErroraSEOS2_.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.m, %bb.n
  %i.at = phi ptr [ %i.ae, %bb.m ], [ %i.t, %bb.n ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %i.at, align 1
  %i.au = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.t
  br i1 %i.av, label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit
  %i.aw = load i64, ptr %i.t, align 8
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #26
  br label %_ZN2v88internal4wasm9WasmErrorD2Ev.exit

_ZN2v88internal4wasm9WasmErrorD2Ev.exit:          ; preds = %_ZN2v88internal4wasm9WasmErroraSEOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ay = load ptr, ptr %6, align 8               ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.i
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZN2v88internal4wasm9WasmErrorD2Ev.exit
  %i.ba = load i64, ptr %i.i, align 8
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2v88internal4wasm9WasmErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(80) %0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

declare noundef i32 @_ZN2v84base9VSNPrintFENS0_6VectorIcEEPKcP13__va_list_tag(ptr, i64, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.m, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.o = shl nuw i64 8, %i.l
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 7 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = add i64 %i.c, -8
  %i.t = sub i64 %i.s, %i.h                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 56
  %i.w = sub i64 %i.r, %i.h
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 4
  %wide.load13 = load <2 x i64>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i64, ptr %.sroa.04.07.i.i.i.i, align 4
  store i64 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !159

_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.l
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.p, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ai
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #12 comdat align 2 {
_ZSt9destroy_nIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrylET_SC_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrylET_SC_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #26
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrylET_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm17value_type_reader14read_heap_typeINS1_7Decoder15NoValidationTagEEESt4pairINS1_8HeapTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.a, -1
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i8 %i.a to i64
  %i.c = shl nuw i64 %i.b, 57
  %i.d = ashr exact i64 %i.c, 57
  br label %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call preserve_mostcc { i64, i32 } @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1) ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i32 } %i.e, 1 ; 3 uses
  %i.f = icmp ult i32 %.fca.1.extract.i.i, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp ne i32 %.fca.1.extract.i.i, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = extractvalue { i64, i32 } %i.e, 0
  br label %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.b, %bb.c
  %.fca.1.extract.pre-phi = phi i32 [ 1, %bb.b ], [ %.fca.1.extract.i.i, %bb.c ] ; 4 uses
  %.fca.1.insert.i.merged.i = phi i64 [ %i.d, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %i.i = icmp slt i64 %.fca.1.insert.i.merged.i, 0 ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit
  %i.j = trunc i64 %.fca.1.insert.i.merged.i to i8
  %i.k = and i8 %i.j, 127                         ; 2 uses
  %i.l = icmp eq i8 %i.k, 101                     ; 5 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = zext nneg i32 %.fca.1.extract.pre-phi to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %.0.copyload.i.i.i.i = load i8, ptr %i.n, align 1
  %i.o = add nuw nsw i32 %.fca.1.extract.pre-phi, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.464.0 = phi i32 [ %i.o, %bb.e ], [ %.fca.1.extract.pre-phi, %bb.d ] ; 5 uses
  %.043 = phi i8 [ %.0.copyload.i.i.i.i, %bb.e ], [ %i.k, %bb.d ] ; 5 uses
  switch i8 %.043, label %bb.j [
    i8 115, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 112, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 109, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 108, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 107, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 106, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 110, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 113, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 114, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 111, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 116, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit50
    i8 105, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit50
    i8 103, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53
    i8 102, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53
    i8 96, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53
    i8 97, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53
    i8 117, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit56
    i8 104, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit56
    i8 98, label %bb.g
  ]

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit:  ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.p = and i8 %.043, 31
  %i.q = zext nneg i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  %i.t = select i1 %i.l, i32 20, i32 4
  %i.u = or i32 %i.s, %i.t
  br label %.critedge

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit50: ; preds = %bb.f, %bb.f
  %i.v = load i64, ptr %3, align 8
  %i.w = or i64 %i.v, 65536
  store i64 %i.w, ptr %3, align 8
  %i.x = and i8 %.043, 31
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = select i1 %i.l, i32 20, i32 4
  %i.ac = or i32 %i.aa, %i.ab
  br label %.critedge

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53: ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.ad = and i8 %.043, 31
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = select i1 %i.l, i32 20, i32 4
  %i.ai = or i32 %i.ag, %i.ah
  br label %.critedge

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit56: ; preds = %bb.f, %bb.f
  %i.aj = and i8 %.043, 31
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = select i1 %i.l, i32 20, i32 4
  %i.ao = or i32 %i.am, %i.an
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1             ; 2 uses
  %.not.i.i57 = icmp sgt i8 %i.aq, -1
  br i1 %.not.i.i57, label %bb.h, label %bb.i, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.ar = zext nneg i8 %i.aq to i64
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.i:                                             ; preds = %bb.g
  %i.as = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ap) ; 4 uses
  %i.at = icmp ult i64 %i.as, 25769803776
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EE17_M_default_appendEm:bb.a

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #27
  unreachable

_ZNKSt6vectorIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 384307168202282325) ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 24
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #25 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 3 uses
  %xtraiter37 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol

.lr.ph.i.i.i25.prol:                              ; preds = %_ZNKSt6vectorIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i25.prol
  %.08.i.i.i26.prol = phi ptr [ %i.as, %.lr.ph.i.i.i25.prol ], [ %i.ap, %_ZNKSt6vectorIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.057.i.i.i27.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i25.prol ], [ %1, %_ZNKSt6vectorIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EE12_M_check_lenEmPKc.exit ]
  %prol.iter39 = phi i64 [ %prol.iter39.next, %.lr.ph.i.i.i25.prol ], [ 0, %_ZNKSt6vectorIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EE12_M_check_lenEmPKc.exit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i26.prol, i8 0, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 4
  store i32 2, ptr %i.aq, align 4
  %i.ar = add i64 %.057.i.i.i27.prol, -1          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.prol, i64 24 ; 2 uses
  %prol.iter39.next = add i64 %prol.iter39, 1     ; 2 uses
  %prol.iter39.cmp.not = icmp eq i64 %prol.iter39.next, %xtraiter37
  br i1 %prol.iter39.cmp.not, label %.lr.ph.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i25.prol, !llvm.loop !191

.lr.ph.i.i.i25.prol.loopexit:                     ; preds = %.lr.ph.i.i.i25.prol, %_ZNKSt6vectorIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i26.unr = phi ptr [ %i.ap, %_ZNKSt6vectorIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.lr.ph.i.i.i25.prol ]
  %.057.i.i.i27.unr = phi i64 [ %1, %_ZNKSt6vectorIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.ar, %.lr.ph.i.i.i25.prol ]
  %i.at = icmp ult i64 %1, 8
  br i1 %i.at, label %_ZSt27__uninitialized_default_n_aIPN2v88internal4wasm14DebugSideTable5Entry5ValueEmS5_ET_S7_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %.lr.ph.i.i.i25.prol.loopexit, %.lr.ph.i.i.i25
  %.08.i.i.i26 = phi ptr [ %i.bk, %.lr.ph.i.i.i25 ], [ %.08.i.i.i26.unr, %.lr.ph.i.i.i25.prol.loopexit ] ; 17 uses
  %.057.i.i.i27 = phi i64 [ %i.bj, %.lr.ph.i.i.i25 ], [ %.057.i.i.i27.unr, %.lr.ph.i.i.i25.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i26, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 4
  store i32 2, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 28
  store i32 2, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 52
  store i32 2, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 76
  store i32 2, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 100
  store i32 2, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 124
  store i32 2, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 148
  store i32 2, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 172
  store i32 2, ptr %i.bi, align 4
  %i.bj = add i64 %.057.i.i.i27, -8               ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i26, i64 192
  %.not.i.i.i28.7 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i28.7, label %_ZSt27__uninitialized_default_n_aIPN2v88internal4wasm14DebugSideTable5Entry5ValueEmS5_ET_S7_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i25, !llvm.loop !190

_ZSt27__uninitialized_default_n_aIPN2v88internal4wasm14DebugSideTable5Entry5ValueEmS5_ET_S7_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i25, %.lr.ph.i.i.i25.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN2v88internal4wasm14DebugSideTable5Entry5ValueEmS5_ET_S7_T0_RSaIT1_E.exit30, %.lr.ph.i.i.i31
  %.012.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i31 ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPN2v88internal4wasm14DebugSideTable5Entry5ValueEmS5_ET_S7_T0_RSaIT1_E.exit30 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i31 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2v88internal4wasm14DebugSideTable5Entry5ValueEmS5_ET_S7_T0_RSaIT1_E.exit30 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i64 24, i1 false), !alias.scope !192
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %.not.i.i.i32 = icmp eq ptr %i.bl, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i31, !llvm.loop !187

_ZNSt6vectorIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i31, %_ZSt27__uninitialized_default_n_aIPN2v88internal4wasm14DebugSideTable5Entry5ValueEmS5_ET_S7_T0_RSaIT1_E.exit30
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.bn = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bn) #26
  br label %_ZNSt12_Vector_baseIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %1
  store ptr %i.bo, ptr %i.a, align 8
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bp, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2v88internal4wasm14DebugSideTable5Entry5ValueEmS5_ET_S7_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2v88internal4wasm14DebugSideTable5Entry5ValueESaIS5_EE13_M_deallocateEPS5_m.exit, %bb.a
  ret void
}

declare { i64, ptr } @_ZN2v88internal14MacroAssembler19StackLimitAsOperandENS0_14StackLimitKindE(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(408), i8 noundef zeroext, i8, i64, ptr, i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal4wasm16LiftoffAssembler17SpillAllRegistersEv(ptr noundef nonnull align 8 dereferenceable(824)) local_unnamed_addr #2

declare void @_ZN2v88internal26SourcePositionTableBuilder11AddPositionEmNS0_14SourcePositionEbb(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef, i64, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare { ptr, ptr } @_ZN2v88internal21SafepointTableBuilder15DefineSafepointEPNS0_9AssemblerEi(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState15DefineSafepointERNS0_21SafepointTableBuilder9SafepointE(ptr noundef nonnull align 8 dereferenceable(337), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler17EmitDebuggingInfoEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, 256) %2) unnamed_addr #12 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %4 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  %5 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %6 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %7 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %8 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 962), align 2, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = icmp ne i32 %2, 3
  %i.d = and i1 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler38EmitCoverageInstrumentationIfReachableEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_10WasmOpcodeE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr i8, ptr %1, i64 1448
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !196
  %i.f = getelementptr i8, ptr %1, i64 1456
  %.val6.i = load ptr, ptr %i.f, align 8, !noalias !196 ; 3 uses
  %i.g = ptrtoint ptr %.val6.i to i64             ; 3 uses
  %i.h = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 2
  %i.k = and i64 %i.j, 4294967295                 ; 4 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler30GetStackValueTypesForDebuggingEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = shl nuw nsw i64 %i.k, 2                  ; 4 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #25, !noalias !199 ; 9 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.k
  %i.q = add nsw i64 %i.m, -4                     ; 2 uses
  %i.r = lshr exact i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.s, 9223372036854775800      ; 3 uses
  %i.t = shl i64 %n.vec, 2
  %i.u = getelementptr i8, ptr %i.n, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 2), ptr %next.gep, align 4, !noalias !199
  store <4 x i32> splat (i32 2), ptr %i.w, align 4, !noalias !199
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.d, %middle.block
  %.ph = phi ptr [ %i.n, %bb.d ], [ %i.u, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.y = phi ptr [ %i.z, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  store i32 2, ptr %i.y, align 4, !noalias !199
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.p
  br i1 %i.aa, label %.lr.ph.preheader.i, label %scalar.ph, !llvm.loop !205

.lr.ph.preheader.i:                               ; preds = %scalar.ph, %middle.block
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m ; 4 uses
  %i.ac = add nsw i64 %i.m, -4                    ; 2 uses
  %i.ad = lshr exact i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check95 = icmp ult i64 %i.ac, 44
  br i1 %min.iters.check95, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.af = sub i64 %i.g, %i.h
  %i.ag = and i64 %i.af, 17179869180
  %i.ah = add i64 %i.ag, %i.o
  %i.ai = sub i64 %i.g, %i.ah
  %diff.check = icmp ult i64 %i.ai, 32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph96

vector.ph96:                                      ; preds = %vector.memcheck
  %n.vec98 = and i64 %i.ae, 9223372036854775800   ; 4 uses
  %i.aj = mul i64 %n.vec98, -4
  %i.ak = getelementptr i8, ptr %i.ab, i64 %i.aj
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph96
  %index100 = phi i64 [ 0, %vector.ph96 ], [ %index.next103, %vector.body99 ] ; 3 uses
  %i.al = mul i64 %index100, -4
  %next.gep101 = getelementptr i8, ptr %i.ab, i64 %i.al ; 2 uses
  %i.am = xor i64 %index100, -1
  %i.an = getelementptr inbounds [4 x i8], ptr %.val6.i, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -12
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ao, align 4, !noalias !196
  %wide.load102 = load <4 x i32>, ptr %i.ap, align 4, !noalias !196
  %i.aq = getelementptr inbounds i8, ptr %next.gep101, i64 -16
  %i.ar = getelementptr inbounds i8, ptr %next.gep101, i64 -32
  store <4 x i32> %wide.load, ptr %i.aq, align 4, !noalias !196
  store <4 x i32> %wide.load102, ptr %i.ar, align 4, !noalias !196
  %index.next103 = add nuw i64 %index100, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next103, %n.vec98
  br i1 %i.as, label %middle.block104, label %vector.body99, !llvm.loop !206

middle.block104:                                  ; preds = %vector.body99
  %cmp.n105 = icmp eq i64 %i.ae, %n.vec98
  br i1 %cmp.n105, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler30GetStackValueTypesForDebuggingEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block104
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec98, %middle.block104 ]
  %.sroa.01.05.i.ph = phi ptr [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph.preheader.i ], [ %i.ak, %middle.block104 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.01.05.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.sroa.01.05.i.ph, %.lr.ph.i.preheader ]
  %i.at = getelementptr inbounds i8, ptr %.sroa.01.05.i, i64 -4 ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.au = xor i64 %indvars.iv.i, -1
  %i.av = getelementptr inbounds [4 x i8], ptr %.val6.i, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !noalias !196
  store i32 %i.aw, ptr %i.at, align 4, !noalias !196
  %i.ax = icmp eq ptr %i.at, %i.n
  br i1 %i.ax, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler30GetStackValueTypesForDebuggingEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE.exit, label %.lr.ph.i, !llvm.loop !207

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler30GetStackValueTypesForDebuggingEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE.exit: ; preds = %.lr.ph.i, %middle.block104, %bb.c
  %.sroa.059.0 = phi ptr [ null, %bb.c ], [ %i.n, %middle.block104 ], [ %i.n, %.lr.ph.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  store ptr %.sroa.059.0, ptr %i.ay, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v84base11OwnedVectorINS_8internal4wasm9ValueTypeEED2Ev.exit, label %_ZNKSt14default_deleteIA_N2v88internal4wasm9ValueTypeEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_N2v88internal4wasm9ValueTypeEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler30GetStackValueTypesForDebuggingEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.az) #26
  br label %_ZN2v84base11OwnedVectorINS_8internal4wasm9ValueTypeEED2Ev.exit

_ZN2v84base11OwnedVectorINS_8internal4wasm9ValueTypeEED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_N2v88internal4wasm9ValueTypeEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler30GetStackValueTypesForDebuggingEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 880
  store i64 %i.k, ptr %i.ba, align 8
  %trunc = trunc nuw i32 %2 to i8
  switch i8 %trunc, label %bb.e [
    i8 2, label %_ZN2v88internal4wasm11WasmOpcodes11IsBreakableENS1_10WasmOpcodeE.exit
    i8 6, label %_ZN2v88internal4wasm11WasmOpcodes11IsBreakableENS1_10WasmOpcodeE.exit
    i8 7, label %_ZN2v88internal4wasm11WasmOpcodes11IsBreakableENS1_10WasmOpcodeE.exit
    i8 3, label %_ZN2v88internal4wasm11WasmOpcodes11IsBreakableENS1_10WasmOpcodeE.exit
    i8 5, label %_ZN2v88internal4wasm11WasmOpcodes11IsBreakableENS1_10WasmOpcodeE.exit
  ]

bb.e:                                             ; preds = %_ZN2v84base11OwnedVectorINS_8internal4wasm9ValueTypeEED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 4 uses
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %.critedge40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.critedge42, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not3769 = icmp eq ptr %i.bc, %i.bg
  br i1 %.not3769, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bh = getelementptr i8, ptr %1, i64 8
  %i.bi = getelementptr i8, ptr %1, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %i.bj = phi ptr [ %i.bc, %.lr.ph ], [ %i.bq, %bb.h ] ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4            ; 2 uses
  %.val47 = load ptr, ptr %i.bh, align 8
  %.val48 = load ptr, ptr %i.bi, align 8
  %i.bl = ptrtoint ptr %.val48 to i64
  %i.bm = ptrtoint ptr %.val47 to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = trunc i64 %i.bn to i32                  ; 2 uses
  %i.bp = icmp slt i32 %i.bk, %i.bo
  br i1 %i.bp, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 3 uses
  store ptr %i.bq, ptr %i.bb, align 8
  %.not37 = icmp eq ptr %i.bq, %i.bg
  br i1 %.not37, label %._crit_edge, label %bb.g, !llvm.loop !208

._crit_edge:                                      ; preds = %bb.h, %.preheader
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  br label %.critedge40

.critedge:                                        ; preds = %bb.g
  %i.br = icmp eq i32 %i.bk, %i.bo
  br i1 %i.br, label %.critedge42, label %.critedge40

.critedge42:                                      ; preds = %bb.f, %.critedge
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler14EmitBreakpointEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef %1)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1172
  store i8 1, ptr %i.bs, align 4
  br label %bb.u

.critedge40:                                      ; preds = %bb.e, %._crit_edge, %.critedge
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1172 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 4, !range !5, !noundef !6
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.s, label %bb.i

bb.i:                                             ; preds = %.critedge40
  store i8 1, ptr %i.bt, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i32 0, ptr %6, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.bw, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i32 0, ptr %7, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.by, align 8
  %i.bz = and i32 %.sroa.0.0.copyload.i.i.i, 37839 ; 2 uses
  %.not.i.i49 = icmp eq i32 %i.bz, 37839
  br i1 %.not.i.i49, label %bb.k, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ca = xor i32 %i.bz, 37839
  %i.cb = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i32 %i.cb to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

bb.k:                                             ; preds = %bb.i
  %i.cd = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 37839) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit: ; preds = %bb.j, %bb.k
  %.sroa.06.0.i.i = phi i8 [ %i.cc, %bb.j ], [ %i.cd, %bb.k ] ; 17 uses
  %i.ce = icmp samesign ult i8 %.sroa.06.0.i.i, 16
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8             ; 2 uses
  %i.ch = icmp eq i8 %i.cg, -1
  br i1 %i.ch, label %bb.l, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit43, !prof !7

bb.l:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.ci = tail call preserve_mostcc i8 @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler29LoadInstanceIntoRegister_SlowENS1_14LiftoffRegListENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 0, i8 %.sroa.06.0.i.i)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit43

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit43: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit, %bb.l
  %.sroa.063.0 = phi i8 [ %i.ci, %bb.l ], [ %i.cg, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  store i64 0, ptr %5, align 8
  switch i8 %.sroa.063.0, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit43._ZN2v88internal4wasm16LiftoffAssembler16LoadFromInstanceENS0_8RegisterES3_ii.exit_crit_edge [
    i8 4, label %bb.m
    i8 12, label %bb.m
  ]

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit43._ZN2v88internal4wasm16LiftoffAssembler16LoadFromInstanceENS0_8RegisterES3_ii.exit_crit_edge: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit43
  %.pre = and i8 %.sroa.063.0, 7
  br label %_ZN2v88internal4wasm16LiftoffAssembler16LoadFromInstanceENS0_8RegisterES3_ii.exit

bb.m:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit43, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit43
  %scevgep.i = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.cl = and i8 %.sroa.063.0, 7                  ; 2 uses
  %i.cm = or disjoint i8 %i.cl, 32
  store i8 %i.cm, ptr %scevgep.i, align 1
  %i.cn = icmp samesign ult i8 %.sroa.063.0, 16
  tail call void @llvm.assume(i1 %i.cn)
  br label %_ZN2v88internal4wasm16LiftoffAssembler16LoadFromInstanceENS0_8RegisterES3_ii.exit

_ZN2v88internal4wasm16LiftoffAssembler16LoadFromInstanceENS0_8RegisterES3_ii.exit: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit43._ZN2v88internal4wasm16LiftoffAssembler16LoadFromInstanceENS0_8RegisterES3_ii.exit_crit_edge, %bb.m
  %.pre-phi = phi i8 [ %.pre, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit43._ZN2v88internal4wasm16LiftoffAssembler16LoadFromInstanceENS0_8RegisterES3_ii.exit_crit_edge ], [ %i.cl, %bb.m ]
  %i.co = phi i64 [ 1, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit43._ZN2v88internal4wasm16LiftoffAssembler16LoadFromInstanceENS0_8RegisterES3_ii.exit_crit_edge ], [ 2, %bb.m ] ; 2 uses
  %i.cp = lshr i8 %.sroa.063.0, 3
  %i.cq = or disjoint i8 %.pre-phi, 64
  store i8 %i.cq, ptr %i.ck, align 2
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateE:bb.a
  %indvars.iv66 = phi i64 [ 0, %.lr.ph55.preheader.new ], [ %indvars.iv.next67.3, %.lr.ph55 ] ; 6 uses
  %niter92 = phi i64 [ 0, %.lr.ph55.preheader.new ], [ %niter92.next.3, %.lr.ph55 ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv66
  %.sroa.0.0.copyload.i45 = load i32, ptr %i.ey, align 4
  %i.ez = load ptr, ptr %i.ev, align 8
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv66
  store i32 %.sroa.0.0.copyload.i45, ptr %i.fa, align 4
  %indvars.iv.next67 = or disjoint i64 %indvars.iv66, 1 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next67
  %.sroa.0.0.copyload.i45.1 = load i32, ptr %i.fb, align 4
  %i.fc = load ptr, ptr %i.ev, align 8
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv.next67
  store i32 %.sroa.0.0.copyload.i45.1, ptr %i.fd, align 4
  %indvars.iv.next67.1 = or disjoint i64 %indvars.iv66, 2 ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next67.1
  %.sroa.0.0.copyload.i45.2 = load i32, ptr %i.fe, align 4
  %i.ff = load ptr, ptr %i.ev, align 8
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.next67.1
  store i32 %.sroa.0.0.copyload.i45.2, ptr %i.fg, align 4
  %indvars.iv.next67.2 = or disjoint i64 %indvars.iv66, 3 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next67.2
  %.sroa.0.0.copyload.i45.3 = load i32, ptr %i.fh, align 4
  %i.fi = load ptr, ptr %i.ev, align 8
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.next67.2
  store i32 %.sroa.0.0.copyload.i45.3, ptr %i.fj, align 4
  %indvars.iv.next67.3 = add nuw nsw i64 %indvars.iv66, 4 ; 2 uses
  %niter92.next.3 = add i64 %niter92, 4           ; 2 uses
  %niter92.ncmp.3 = icmp eq i64 %niter92.next.3, %unroll_iter91
  br i1 %niter92.ncmp.3, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE9InitMergeIZNS8_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINS1_9ValueBaseIS4_EEEEjT_.exit.loopexit.unr-lcssa, label %.lr.ph55, !llvm.loop !448

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE9InitMergeIZNS8_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINS1_9ValueBaseIS4_EEEEjT_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph55
  %lcmp.mod89.not = icmp eq i64 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE9InitMergeIZNS8_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINS1_9ValueBaseIS4_EEEEjT_.exit, label %.lr.ph55.epil.preheader

.lr.ph55.epil.preheader:                          ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE9InitMergeIZNS8_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINS1_9ValueBaseIS4_EEEEjT_.exit.loopexit.unr-lcssa, %.lr.ph55.preheader
  %indvars.iv66.epil.init = phi i64 [ 0, %.lr.ph55.preheader ], [ %indvars.iv.next67.3, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE9InitMergeIZNS8_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINS1_9ValueBaseIS4_EEEEjT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod90 = icmp ne i64 %xtraiter88, 0
  tail call void @llvm.assume(i1 %lcmp.mod90)
  br label %.lr.ph55.epil

.lr.ph55.epil:                                    ; preds = %.lr.ph55.epil, %.lr.ph55.epil.preheader
  %indvars.iv66.epil = phi i64 [ %indvars.iv66.epil.init, %.lr.ph55.epil.preheader ], [ %indvars.iv.next67.epil, %.lr.ph55.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph55.epil.preheader ], [ %epil.iter.next, %.lr.ph55.epil ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv66.epil
  %.sroa.0.0.copyload.i45.epil = load i32, ptr %i.fk, align 4
  %i.fl = load ptr, ptr %i.ev, align 8
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv66.epil
  store i32 %.sroa.0.0.copyload.i45.epil, ptr %i.fm, align 4
  %indvars.iv.next67.epil = add nuw nsw i64 %indvars.iv66.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter88
  br i1 %epil.iter.cmp.not, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE9InitMergeIZNS8_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINS1_9ValueBaseIS4_EEEEjT_.exit, label %.lr.ph55.epil, !llvm.loop !449

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE9InitMergeIZNS8_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINS1_9ValueBaseIS4_EEEEjT_.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE9InitMergeIZNS8_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINS1_9ValueBaseIS4_EEEEjT_.exit.loopexit.unr-lcssa, %.lr.ph55.epil, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE9InitMergeIZNS8_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE_EEvPNS1_5MergeINS1_9ValueBaseIS4_EEEEjT_.exit, %bb.j
  ret ptr %i.by

bb.m:                                             ; preds = %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit.1, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit.1 ]
  %i.fn = load i64, ptr %i.b, align 8
  %i.fo = icmp ugt i64 %i.fn, %indvars.iv
  br i1 %i.fo, label %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit, label %.loopexit, !prof !16

.loopexit:                                        ; preds = %bb.m, %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit, %.epil.preheader
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.79) #27
  unreachable

_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit: ; preds = %bb.m
  %i.fp = load ptr, ptr %i.ce, align 8
  %i.fq = load i64, ptr %i.a, align 8
  %i.fr = getelementptr [4 x i8], ptr %i.fp, i64 %i.fq
  %i.fs = getelementptr [4 x i8], ptr %i.fr, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.fs, align 4
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.ft, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.fu = load i64, ptr %i.b, align 8
  %i.fv = icmp ugt i64 %i.fu, %indvars.iv.next
  br i1 %i.fv, label %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit.1, label %.loopexit, !prof !16

_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit.1: ; preds = %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit
  %i.fw = load ptr, ptr %i.ce, align 8
  %i.fx = load i64, ptr %i.a, align 8
  %i.fy = getelementptr [4 x i8], ptr %i.fw, i64 %i.fx
  %i.fz = getelementptr [4 x i8], ptr %i.fy, i64 %indvars.iv.next
  %.sroa.0.0.copyload.i.i.1 = load i32, ptr %i.fz, align 4
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next
  store i32 %.sroa.0.0.copyload.i.i.1, ptr %i.ga, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.m, !llvm.loop !450
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_12_GLOBAL__N_115LiftoffCompilerELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(1536) %0, i32 noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %.val, i64 -448
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 13 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = sub i32 %i.l, %i.c                       ; 4 uses
  %i.n = sub nsw i32 %1, %i.m                     ; 7 uses
  %i.o = add nsw i32 %i.n, 1                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.h
  %i.t = ashr exact i64 %i.s, 2
  %i.u = sext i32 %i.o to i64
  %.not.i = icmp slt i64 %i.t, %i.u
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8
  tail call preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef %i.o, ptr noundef %i.w)
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit

_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit: ; preds = %bb.a, %bb.b
  %i.x = icmp sgt i32 %i.n, 0                     ; 2 uses
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit
  %.pre = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.y = add i32 %i.c, %1
  %xtraiter = and i32 %i.n, 3                     ; 3 uses
  %i.z = sub i32 %i.l, %i.y
  %i.aa = icmp ugt i32 %i.z, -4
  br i1 %i.aa, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.n, 2147483644
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %i.ab = phi ptr [ %i.ad, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  store i32 514, ptr %i.ab, align 4
  %i.ac = load ptr, ptr %i.e, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  store ptr %i.ad, ptr %i.e, align 8
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !451

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN2v88internal4wasm14FastZoneVectorINS1_9ValueBaseINS1_7Decoder15NoValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit
  %i.ae = icmp sgt i32 %i.m, 0
  br i1 %i.ae, label %bb.c, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.af = phi ptr [ %.pre, %.lr.ph.preheader.new ], [ %i.an, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  store i32 514, ptr %i.af, align 4
  %i.ag = load ptr, ptr %i.e, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  store ptr %i.ah, ptr %i.e, align 8
  store i32 514, ptr %i.ah, align 4
  %i.ai = load ptr, ptr %i.e, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  store ptr %i.aj, ptr %i.e, align 8
  store i32 514, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.e, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  store ptr %i.al, ptr %i.e, align 8
  store i32 514, ptr %i.al, align 4
  %i.am = load ptr, ptr %i.e, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 3 uses
  store ptr %i.an, ptr %i.e, align 8
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !452

bb.c:                                             ; preds = %._crit_edge
  %.val30 = load ptr, ptr %i.e, align 8
  %i.ao = zext i32 %1 to i64
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr inbounds [4 x i8], ptr %.val30, i64 %i.ap ; 5 uses
  %i.ar = zext nneg i32 %i.m to i64               ; 6 uses
  %i.as = sext i32 %i.n to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.aq, i64 %i.as ; 2 uses
  %min.iters.check = icmp ult i32 %i.m, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.at = sub i64 %i.h, %i.i
  %i.au = lshr i64 %i.at, 2
  %i.av = trunc i64 %i.au to i32
  %i.aw = sub i32 %i.av, %i.c
  %i.ax = sext i32 %i.aw to i64
  %i.ay = sext i32 %1 to i64
  %i.az = sub nsw i64 %i.ax, %i.ay
  %2 = and i64 %i.az, 4611686018427387896
  %diff.check = icmp eq i64 %2, 0
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ar, 2147483640              ; 2 uses
  %i.ba = and i64 %i.ar, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = xor i64 %index, -1
  %i.bc = add i64 %i.bb, %i.ar                    ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bc ; 2 uses
  %i.be = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bc ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -12
  %i.bg = getelementptr inbounds i8, ptr %i.bd, i64 -28
  %wide.load = load <4 x i32>, ptr %i.bf, align 4
  %wide.load1 = load <4 x i32>, ptr %i.bg, align 4
  %i.bh = getelementptr i8, ptr %i.be, i64 -12
  %i.bi = getelementptr i8, ptr %i.be, i64 -28
  store <4 x i32> %wide.load, ptr %i.bh, align 4
  store <4 x i32> %wide.load1, ptr %i.bi, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !453

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ar
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.c, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ar, %vector.memcheck ], [ %i.ar, %bb.c ], [ %i.ba, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %scalar.ph, %middle.block
  br i1 %i.x, label %.lr.ph34.preheader, label %.loopexit

.lr.ph34.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 3 uses
  %min.iters.check3 = icmp ult i32 %i.n, 8
  br i1 %min.iters.check3, label %.lr.ph34.preheader13, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph34.preheader
  %n.vec6 = and i64 %wide.trip.count, 2147483640  ; 3 uses
  br label %vector.body7

vector.body7:                                     ; preds = %vector.body7, %vector.ph4
  %index8 = phi i64 [ 0, %vector.ph4 ], [ %index.next9, %vector.body7 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <4 x i32> splat (i32 514), ptr %i.bk, align 4
  store <4 x i32> splat (i32 514), ptr %i.bl, align 4
  %index.next9 = add nuw i64 %index8, 8           ; 2 uses
  %i.bm = icmp eq i64 %index.next9, %n.vec6
  br i1 %i.bm, label %middle.block10, label %vector.body7, !llvm.loop !454

middle.block10:                                   ; preds = %vector.body7
  %cmp.n11 = icmp eq i64 %n.vec6, %wide.trip.count
  br i1 %cmp.n11, label %.loopexit, label %.lr.ph34.preheader13

.lr.ph34.preheader13:                             ; preds = %.lr.ph34.preheader, %middle.block10
  %indvars.iv36.ph = phi i64 [ 0, %.lr.ph34.preheader ], [ %n.vec6, %middle.block10 ]
  br label %.lr.ph34

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.bo = load i32, ptr %i.bn, align 4
  store i32 %i.bo, ptr %gep, align 4
  %i.bp = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bp, label %scalar.ph, label %.preheader, !llvm.loop !455

.lr.ph34:                                         ; preds = %.lr.ph34.preheader13, %.lr.ph34
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %.lr.ph34 ], [ %indvars.iv36.ph, %.lr.ph34.preheader13 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv36
  store i32 514, ptr %i.bq, align 4
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count
  br i1 %exitcond39.not, label %.loopexit, label %.lr.ph34, !llvm.loop !456

.loopexit:                                        ; preds = %.lr.ph34, %middle.block10, %.preheader, %._crit_edge
  ret void
}

declare void @_ZN2v88internal4wasm16LiftoffAssembler11SpillLocalsEv(ptr noundef nonnull align 8 dereferenceable(824)) local_unnamed_addr #2

declare void @_ZN2v88internal4wasm16LiftoffAssembler13SpillLoopArgsEi(ptr noundef nonnull align 8 dereferenceable(824), i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal4wasm16LiftoffAssembler10CacheState5SplitERKS3_(ptr noundef nonnull align 8 dereferenceable(337), ptr noundef nonnull align 8 dereferenceable(337)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler11JumpIfFalseEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEPNS0_5LabelERSt8optionalINS1_16FreezeCacheStateEE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(2) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.f [
    i32 69, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler29test_and_reset_outstanding_opENS1_10WasmOpcodeE.exit.thread
    i32 0, label %bb.b
    i32 70, label %_ZN2v88internal4wasm12_GLOBAL__N_119GetCompareConditionENS1_10WasmOpcodeE.exit.thread
    i32 71, label %_ZN2v88internal4wasm6NegateENS0_9ConditionE.exit
    i32 72, label %bb.g
    i32 73, label %bb.k
    i32 74, label %bb.j
    i32 75, label %_ZN2v88internal4wasm12_GLOBAL__N_119GetCompareConditionENS1_10WasmOpcodeE.exit
    i32 76, label %bb.h
    i32 77, label %bb.l
    i32 78, label %bb.i
    i32 79, label %bb.m
  ]

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler29test_and_reset_outstanding_opENS1_10WasmOpcodeE.exit.thread: ; preds = %bb.a
  store i32 0, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler29test_and_reset_outstanding_opENS1_10WasmOpcodeE.exit.thread
  %i.c = phi i32 [ 4, %bb.a ], [ 5, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler29test_and_reset_outstanding_opENS1_10WasmOpcodeE.exit.thread ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -12 ; 2 uses
  %.sroa.014.0.copyload = load i64, ptr %i.f, align 4 ; 3 uses
  %.sroa.014.sroa.515.0.extract.shift = lshr i64 %.sroa.014.0.copyload, 32 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.e, i64 -4
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  store ptr %i.f, ptr %i.d, align 8
  %i.g = and i64 %.sroa.014.0.copyload, 255
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.j = and i64 %.sroa.014.sroa.515.0.extract.shift, 255
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = trunc nuw i64 %.sroa.014.sroa.515.0.extract.shift to i32
  %i.p = and i32 %i.o, 255
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.r = shl nuw i32 1, %i.p
  %i.s = xor i32 %i.r, -1
  %i.t = load i32, ptr %i.q, align 8
  %i.u = and i32 %i.t, %i.s
  store i32 %i.u, ptr %i.q, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.025.4.extract.trunc = trunc i64 %.sroa.014.sroa.515.0.extract.shift to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit: ; preds = %bb.b
  %i.v = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.014.0.copyload, i32 %.sroa.6.0.copyload, i32 0) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit: ; preds = %bb.e, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit
  %.sroa.07.0.i = phi i8 [ %.sroa.025.4.extract.trunc, %bb.e ], [ %i.v, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit ] ; 3 uses
  %i.w = icmp samesign ult i8 %.sroa.07.0.i, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 1, ptr %i.x, align 1
  tail call void @_ZN2v88internal9Assembler9emit_testENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.07.0.i, i8 %.sroa.07.0.i, i32 noundef 4) #24
  br label %bb.ab

_ZN2v88internal4wasm12_GLOBAL__N_119GetCompareConditionENS1_10WasmOpcodeE.exit.thread: ; preds = %bb.a
  br label %_ZN2v88internal4wasm6NegateENS0_9ConditionE.exit

bb.f:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #27
  unreachable

bb.g:                                             ; preds = %bb.a
  br label %_ZN2v88internal4wasm6NegateENS0_9ConditionE.exit

bb.h:                                             ; preds = %bb.a
  br label %_ZN2v88internal4wasm6NegateENS0_9ConditionE.exit

bb.i:                                             ; preds = %bb.a
  br label %_ZN2v88internal4wasm6NegateENS0_9ConditionE.exit

bb.j:                                             ; preds = %bb.a
  br label %_ZN2v88internal4wasm6NegateENS0_9ConditionE.exit

bb.k:                                             ; preds = %bb.a
  br label %_ZN2v88internal4wasm6NegateENS0_9ConditionE.exit

bb.l:                                             ; preds = %bb.a
  br label %_ZN2v88internal4wasm6NegateENS0_9ConditionE.exit

bb.m:                                             ; preds = %bb.a
  br label %_ZN2v88internal4wasm6NegateENS0_9ConditionE.exit

_ZN2v88internal4wasm12_GLOBAL__N_119GetCompareConditionENS1_10WasmOpcodeE.exit: ; preds = %bb.a
  br label %_ZN2v88internal4wasm6NegateENS0_9ConditionE.exit

_ZN2v88internal4wasm6NegateENS0_9ConditionE.exit: ; preds = %bb.a, %_ZN2v88internal4wasm12_GLOBAL__N_119GetCompareConditionENS1_10WasmOpcodeE.exit.thread, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %_ZN2v88internal4wasm12_GLOBAL__N_119GetCompareConditionENS1_10WasmOpcodeE.exit
  %.0.i71 = phi i32 [ 6, %_ZN2v88internal4wasm12_GLOBAL__N_119GetCompareConditionENS1_10WasmOpcodeE.exit ], [ 5, %_ZN2v88internal4wasm12_GLOBAL__N_119GetCompareConditionENS1_10WasmOpcodeE.exit.thread ], [ 13, %bb.g ], [ 15, %bb.h ], [ 12, %bb.i ], [ 14, %bb.j ], [ 3, %bb.k ], [ 7, %bb.l ], [ 2, %bb.m ], [ 4, %bb.a ] ; 3 uses
end_hunk_2
