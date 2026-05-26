inline.NumInlined: 896
inline.NumDeleted: 497
begin_hunk_0_@_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE14_M_move_assignEOS5_:bb.a
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.o) #22
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i

_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i:               ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !43   ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = icmp eq ptr %i.r, %i.s
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !43   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.w = icmp eq ptr %i.u, %i.v                   ; 2 uses
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i
  br i1 %i.w, label %bb.d, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i
  br i1 %i.w, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !46   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %.not21.i.i = icmp eq ptr %1, %0
  br i1 %.not21.i.i, label %_ZN6google8protobuf2io7Printer16AnnotationRecordaSEOS3_.exit, label %bb.e, !prof !89

bb.e:                                             ; preds = %bb.d
  switch i64 %i.y, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !45
  store i8 %i.aa, ptr %i.r, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.u, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !46  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !46
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !45
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !43
  br label %_ZN6google8protobuf2io7Printer16AnnotationRecordaSEOS3_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %i.p, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !46
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !46
  %i.ai = load i64, ptr %i.v, align 8, !tbaa !45
  store i64 %i.ai, ptr %i.s, align 8, !tbaa !45
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.aj = load i64, ptr %i.s, align 8, !tbaa !45
  store ptr %i.u, ptr %i.p, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.al, ptr %i.am, align 8, !tbaa !46
  %i.an = load i64, ptr %i.v, align 8, !tbaa !45
  store i64 %i.an, ptr %i.s, align 8, !tbaa !45
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.r, ptr %i.q, align 8, !tbaa !43
  store i64 %i.aj, ptr %i.v, align 8, !tbaa !45
  br label %_ZN6google8protobuf2io7Printer16AnnotationRecordaSEOS3_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.v, ptr %i.q, align 8, !tbaa !43
  br label %_ZN6google8protobuf2io7Printer16AnnotationRecordaSEOS3_.exit

_ZN6google8protobuf2io7Printer16AnnotationRecordaSEOS3_.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.h, %bb.i
  %i.ao = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.r, %bb.h ], [ %i.v, %bb.i ], [ %i.u, %bb.d ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %i.ap, align 8, !tbaa !46
  store i8 0, ptr %i.ao, align 1, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load i64, ptr %i.ar, align 8
  store i64 %i.as, ptr %i.aq, align 8
  br label %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE8_M_resetEv.exit

bb.j:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.at = load <2 x ptr>, ptr %1, align 8, !tbaa !140
  store <2 x ptr> %i.at, ptr %0, align 8, !tbaa !140
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !115
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !115
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !40
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !43 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !46 ; 2 uses
  %i.bf = icmp ult i64 %i.be, 16
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false)
  br label %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !43
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !45
  store i64 %i.bh, ptr %i.az, align 8, !tbaa !45
  br label %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !46
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !46
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !43
  store i64 0, ptr %i.bi, align 8, !tbaa !46
  store i8 0, ptr %i.bb, align 8, !tbaa !45
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bn = load i64, ptr %i.bm, align 8
  store i64 %i.bn, ptr %i.bl, align 8
  store i8 1, ptr %i.a, align 8, !tbaa !85
  br label %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE8_M_resetEv.exit

bb.m:                                             ; preds = %bb.j
  store i8 0, ptr %i.a, align 8, !tbaa !85
  br i1 %i.c, label %bb.n, label %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE8_M_resetEv.exit

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !43 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !45
  %i.bt = add i64 %i.bs, 1
  tail call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.bu = load ptr, ptr %0, align 8, !tbaa !112   ; 3 uses
  %.not.i.i.i.i.i.i7 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i7, label %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE8_M_resetEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !115
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #22
  br label %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE8_M_resetEv.exit: ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.m, %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit, %_ZN6google8protobuf2io7Printer16AnnotationRecordaSEOS3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.3 = alloca { i64, %union.anon }, align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !54     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775736
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #24
  unreachable

_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 184                 ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 50127021939428129) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit
  %i.m = mul nuw nsw i64 %i.j, 184
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25
  br label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  %i.q = load ptr, ptr %2, align 8, !tbaa !43     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !46   ; 5 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  %.sroa.3.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.3.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.u, ptr %.sroa.3, align 16, !tbaa !46
  store ptr %i.r, ptr %2, align 8, !tbaa !43
  store i64 0, ptr %i.x, align 8, !tbaa !46
  store i8 0, ptr %i.r, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store ptr %i.y, ptr %i.p, align 8, !tbaa !40
  %i.z = add nuw nsw i64 %i.u, 1
  %.sroa.3.8..sroa_idx65.a = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.3.8..sroa_idx65.a, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load <2 x i64>, ptr %.phi.trans.insert, align 8, !tbaa !45
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !46
  store <2 x i64> %i.ab, ptr %.sroa.3, align 16, !tbaa !45
  store ptr %i.r, ptr %2, align 8, !tbaa !43
  store i64 0, ptr %i.aa, align 8, !tbaa !46
  store i8 0, ptr %i.r, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.p, align 8, !tbaa !43
  %.sroa.3.8..sroa_idx66 = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 8
  %.sroa.3.8..sroa.3.16. = load i64, ptr %.sroa.3.8..sroa_idx66, align 8, !tbaa !45
  store i64 %.sroa.3.8..sroa.3.16., ptr %i.ac, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread
  %i.ad = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !46
  store i64 0, ptr %.sroa.3, align 16, !tbaa !46
  %i.af = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 3 uses
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !46 ; 3 uses
  %i.al = add nuw nsw i64 %i.ak, 1
  store ptr %i.ag, ptr %3, align 8, !tbaa !43
  store i64 0, ptr %i.aj, align 8, !tbaa !46
  %i.am = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.am)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false)
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.an = load i64, ptr %i.ag, align 8, !tbaa !45
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !46
  store ptr %i.ag, ptr %3, align 8, !tbaa !43
  store i64 0, ptr %.phi.trans.insert.i.i, align 8, !tbaa !46
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !45, !alias.scope !141
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i
  %.sink.i = phi ptr [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  %i.ao = phi i64 [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i ]
  store i8 0, ptr %i.ag, align 8, !tbaa !45
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %.sink.i, ptr %i.ap, align 8, !tbaa !40, !alias.scope !144
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !46, !alias.scope !141
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i8 0, ptr %i.ar, align 8, !tbaa !75, !alias.scope !141
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 2 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  store i64 0, ptr %i.au, align 8, !tbaa !46
  store i8 0, ptr %i.at, align 8, !tbaa !45
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  store i8 0, ptr %i.av, align 8, !tbaa !77
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  store i8 0, ptr %i.aw, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %i.c, %bb.d ] ; 3 uses
  tail call void @_ZN6google8protobuf2io7Printer3SubC2EOS3_(ptr noundef nonnull align 8 dereferenceable(184) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.0911.i.i.i) #21
  tail call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.0911.i.i.i) #21
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 184 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !146

_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %bb.d
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %bb.d ], [ %i.ay, %.lr.ph.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 184 ; 2 uses
  %.not10.i.i.i31 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i31, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37, label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i32
  %.012.i.i.i33 = phi ptr [ %i.bb, %.lr.ph.i.i.i32 ], [ %i.az, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i34 = phi ptr [ %i.ba, %.lr.ph.i.i.i32 ], [ %1, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  tail call void @_ZN6google8protobuf2io7Printer3SubC2EOS3_(ptr noundef nonnull align 8 dereferenceable(184) %.012.i.i.i33, ptr noundef nonnull align 8 dereferenceable(184) %.0911.i.i.i34) #21
  tail call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.0911.i.i.i34) #21
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i34, i64 184 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i33, i64 184 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37, label %.lr.ph.i.i.i32, !llvm.loop !146

_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37: ; preds = %.lr.ph.i.i.i32, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i36 = phi ptr [ %i.az, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bb, %.lr.ph.i.i.i32 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.c, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !111
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #22
  br label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !54
  store ptr %.0.lcssa.i.i.i36, ptr %i.a, align 8, !tbaa !53
  %i.bg = getelementptr inbounds nuw [184 x i8], ptr %i.o, i64 %i.j
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !111
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer3SubC2EOS3_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !40
  %i.b = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !43
  %i.i = load i64, ptr %i.c, align 8, !tbaa !45
  store i64 %i.i, ptr %i.a, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !46
  store ptr %i.c, ptr %1, align 8, !tbaa !43
  store i64 0, ptr %i.j, align 8, !tbaa !46
  store i8 0, ptr %i.c, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i8 -1, ptr %i.o, align 8, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !75
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.s, ptr %i.m, align 8, !tbaa !40
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !43   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !46   ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.t, ptr %i.m, align 8, !tbaa !43
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !45
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !45
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !46
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !46
  store ptr %i.u, ptr %i.n, align 8, !tbaa !43
  store i64 0, ptr %i.ab, align 8, !tbaa !46
  store i8 0, ptr %i.u, align 8, !tbaa !45
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.m, i8 0, i64 24, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !136
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !136
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !116
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.m, ptr noundef nonnull align 8 dereferenceable(73) %i.n, i64 16, i1 false), !tbaa.struct !138
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !116
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i

_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i: ; preds = %bb.f, %bb.e, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i
  %i.al = load i8, ptr %i.p, align 8, !tbaa !75
  store i8 %i.al, ptr %i.o, align 8, !tbaa !75
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !40
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !43 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.at = load i64, ptr %i.as, align 8, !tbaa !46 ; 2 uses
  %i.au = icmp ult i64 %i.at, 16
  tail call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !43
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !45
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !45
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit

_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !46
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !43
  store i64 0, ptr %i.ax, align 8, !tbaa !46
  store i8 0, ptr %i.aq, align 8, !tbaa !45
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !77, !range !64, !noundef !66
  store i8 %i.bc, ptr %i.ba, align 8, !tbaa !77
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 0, ptr %i.be, align 8, !tbaa !85
  %i.bf = load i8, ptr %i.bd, align 8, !tbaa !85, !range !64, !noundef !66
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.h, label %_ZNSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEEC2EOS5_.exit

bb.h:                                             ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bj = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !140
  store <2 x ptr> %i.bj, ptr %i.bi, align 8, !tbaa !140
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !115
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !115
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, i8 0, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !40
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !43 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 5 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !46 ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 16
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false)
  br label %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !43
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !45
  store i64 %i.bx, ptr %i.bp, align 8, !tbaa !45
  br label %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !46
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !46
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !43
  store i64 0, ptr %i.by, align 8, !tbaa !46
  store i8 0, ptr %i.br, align 8, !tbaa !45
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cd = load i64, ptr %i.cc, align 8
  store i64 %i.cd, ptr %i.cb, align 8
  store i8 1, ptr %i.be, align 8, !tbaa !85
  br label %_ZNSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEEC2EOS5_.exit

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io7Printer3SubC2IRA44_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_:bb.a

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.r, ptr %3, align 8, !tbaa !43
  %i.s = load i64, ptr %i.a, align 8, !tbaa !42
  store i64 %i.s, ptr %i.o, align 8, !tbaa !45
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.t = phi ptr [ %i.r, %.noexc ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 2 uses
  switch i64 %i.p, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.u = load i8, ptr %2, align 1, !tbaa !45
  store i8 %i.u, ptr %i.t, align 1, !tbaa !45
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 dereferenceable(44) %2, i64 %i.p, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !46
  %i.x = load ptr, ptr %3, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.z, ptr %i.n, align 8, !tbaa !40, !alias.scope !147
  %i.aa = load ptr, ptr %3, align 8, !tbaa !43, !noalias !147 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.o
  br i1 %i.ab, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !46, !noalias !147 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.ae, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  store ptr %i.aa, ptr %i.n, align 8, !tbaa !43, !alias.scope !147
  %i.af = load i64, ptr %i.o, align 8, !tbaa !45, !noalias !147
  store i64 %i.af, ptr %i.z, align 8, !tbaa !45, !alias.scope !147
  %.pre.i.i = load i64, ptr %i.w, align 8, !tbaa !46, !noalias !147
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.ag = phi i64 [ %i.ac, %bb.f ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !46, !alias.scope !147
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ai, align 8, !tbaa !75, !alias.scope !147
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.al, align 8, !tbaa !46
  store i8 0, ptr %i.ak, align 8, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.am, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %i.an, align 8, !tbaa !85
  ret void

bb.h:                                             ; preds = %.noexc.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %0, align 8, !tbaa !43    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.b
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !45
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ao
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA44_KcEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(44) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !40
  %i.f = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  store ptr %i.f, ptr %3, align 8, !tbaa !43
  %i.m = load i64, ptr %i.g, align 8, !tbaa !45
  store i64 %i.m, ptr %i.e, align 8, !tbaa !45
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.n = phi i64 [ %i.j, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.p, align 8, !tbaa !46
  store ptr %i.g, ptr %1, align 8, !tbaa !43
  store i64 0, ptr %i.o, align 8, !tbaa !46
  store i8 0, ptr %i.g, align 8, !tbaa !45
  invoke void @_ZN6google8protobuf2io7Printer3SubC2IRA44_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.b, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(44) %2)
          to label %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA44_KcEEEvPT_DpOT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.e, align 8, !tbaa !45
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.q

_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA44_KcEEEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.v = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.e
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA44_KcEEEvPT_DpOT0_.exit
  %i.x = load i64, ptr %i.e, align 8, !tbaa !45
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA44_KcEEEvPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 184 ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !53
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA44_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(44) %2)
  %.pre8 = load ptr, ptr %i.a, align 8, !tbaa !123
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
  %i.ab = phi ptr [ %.pre8, %bb.e ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -184
  ret ptr %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA44_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(44) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !54     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775736
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #24
  unreachable

_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 184                 ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 50127021939428129) ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit
  %i.m = mul nuw nsw i64 %i.j, 184
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25
  br label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !40
  %i.r = load ptr, ptr %2, align 8, !tbaa !43     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !46   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit
  store ptr %i.r, ptr %4, align 8, !tbaa !43
  %i.y = load i64, ptr %i.s, align 8, !tbaa !45
  store i64 %i.y, ptr %i.q, align 8, !tbaa !45
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !46
  store ptr %i.s, ptr %2, align 8, !tbaa !43
  store i64 0, ptr %i.aa, align 8, !tbaa !46
  store i8 0, ptr %i.s, align 8, !tbaa !45
  invoke void @_ZN6google8protobuf2io7Printer3SubC2IRA44_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.p, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(44) %3)
          to label %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA44_KcEEEvPT_DpOT0_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.q
  br i1 %i.ae, label %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.af = load i64, ptr %i.q, align 8, !tbaa !45
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #22
  br label %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit

_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA44_KcEEEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ah = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.q
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA44_KcEEEvPT_DpOT0_.exit
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !45
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28: ; preds = %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA44_KcEEEvPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28 ] ; 3 uses
  call void @_ZN6google8protobuf2io7Printer3SubC2EOS3_(ptr noundef nonnull align 8 dereferenceable(184) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.0911.i.i.i) #21
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.0911.i.i.i) #21
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 184 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !146

_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28 ], [ %i.am, %.lr.ph.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 184 ; 2 uses
  %.not10.i.i.i30 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i30, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i31
  %.012.i.i.i32 = phi ptr [ %i.ap, %.lr.ph.i.i.i31 ], [ %i.an, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i33 = phi ptr [ %i.ao, %.lr.ph.i.i.i31 ], [ %1, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  call void @_ZN6google8protobuf2io7Printer3SubC2EOS3_(ptr noundef nonnull align 8 dereferenceable(184) %.012.i.i.i32, ptr noundef nonnull align 8 dereferenceable(184) %.0911.i.i.i33) #21
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.0911.i.i.i33) #21
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 184 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 184 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36, label %.lr.ph.i.i.i31, !llvm.loop !146

_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36: ; preds = %.lr.ph.i.i.i31, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.an, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ap, %.lr.ph.i.i.i31 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !111
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #22
  br label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !54
  store ptr %.0.lcssa.i.i.i35, ptr %i.a, align 8, !tbaa !53
  %i.au = getelementptr inbounds nuw [184 x i8], ptr %i.o, i64 %i.j
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !111
  ret void

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aw = extractvalue { ptr, i32 } %i.ac, 0
  %i.ax = call ptr @__cxa_begin_catch(ptr %i.aw) #21 ; 0 uses
  %i.ay = mul nuw nsw i64 %i.j, 184
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ay) #22
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.g

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.av

bb.i:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #23
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer3SubC2IRA5_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(5) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !40
  %i.c = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %i.h = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !43
  %i.j = load i64, ptr %i.d, align 8, !tbaa !45
  store i64 %i.j, ptr %i.b, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !46
  store ptr %i.d, ptr %1, align 8, !tbaa !43
  store i64 0, ptr %i.k, align 8, !tbaa !46
  store i8 0, ptr %i.d, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !40
  %i.p = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(5) %2) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.p, ptr %i.a, align 8, !tbaa !42
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.r, ptr %3, align 8, !tbaa !43
  %i.s = load i64, ptr %i.a, align 8, !tbaa !42
  store i64 %i.s, ptr %i.o, align 8, !tbaa !45
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.t = phi ptr [ %i.r, %.noexc ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 2 uses
  switch i64 %i.p, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.u = load i8, ptr %2, align 1, !tbaa !45
  store i8 %i.u, ptr %i.t, align 1, !tbaa !45
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 dereferenceable(5) %2, i64 %i.p, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !46
  %i.x = load ptr, ptr %3, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.z, ptr %i.n, align 8, !tbaa !40, !alias.scope !150
  %i.aa = load ptr, ptr %3, align 8, !tbaa !43, !noalias !150 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.o
  br i1 %i.ab, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !46, !noalias !150 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.ae, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  store ptr %i.aa, ptr %i.n, align 8, !tbaa !43, !alias.scope !150
  %i.af = load i64, ptr %i.o, align 8, !tbaa !45, !noalias !150
  store i64 %i.af, ptr %i.z, align 8, !tbaa !45, !alias.scope !150
  %.pre.i.i = load i64, ptr %i.w, align 8, !tbaa !46, !noalias !150
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.ag = phi i64 [ %i.ac, %bb.f ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !46, !alias.scope !150
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ai, align 8, !tbaa !75, !alias.scope !150
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.al, align 8, !tbaa !46
  store i8 0, ptr %i.ak, align 8, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.am, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %i.an, align 8, !tbaa !85
  ret void

bb.h:                                             ; preds = %.noexc.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %0, align 8, !tbaa !43    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.b
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !45
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ao
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(184) ptr @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(5) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !40
  %i.f = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  store ptr %i.f, ptr %3, align 8, !tbaa !43
  %i.m = load i64, ptr %i.g, align 8, !tbaa !45
  store i64 %i.m, ptr %i.e, align 8, !tbaa !45
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.n = phi i64 [ %i.j, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.p, align 8, !tbaa !46
  store ptr %i.g, ptr %1, align 8, !tbaa !43
  store i64 0, ptr %i.o, align 8, !tbaa !46
  store i8 0, ptr %i.g, align 8, !tbaa !45
  invoke void @_ZN6google8protobuf2io7Printer3SubC2IRA5_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.b, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(5) %2)
          to label %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEEvPT_DpOT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.e, align 8, !tbaa !45
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.q

_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.v = load ptr, ptr %3, align 8, !tbaa !43     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.e
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEEvPT_DpOT0_.exit
  %i.x = load i64, ptr %i.e, align 8, !tbaa !45
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEEvPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 184 ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !53
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(5) %2)
  %.pre8 = load ptr, ptr %i.a, align 8, !tbaa !123
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
  %i.ab = phi ptr [ %.pre8, %bb.e ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -184
  ret ptr %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(5) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !54     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775736
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #24
  unreachable

_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 184                 ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 50127021939428129) ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit
  %i.m = mul nuw nsw i64 %i.j, 184
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25
  br label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !40
  %i.r = load ptr, ptr %2, align 8, !tbaa !43     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !46   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE11_M_allocateEm.exit
  store ptr %i.r, ptr %4, align 8, !tbaa !43
  %i.y = load i64, ptr %i.s, align 8, !tbaa !45
  store i64 %i.y, ptr %i.q, align 8, !tbaa !45
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !46
  store ptr %i.s, ptr %2, align 8, !tbaa !43
  store i64 0, ptr %i.aa, align 8, !tbaa !46
  store i8 0, ptr %i.s, align 8, !tbaa !45
  invoke void @_ZN6google8protobuf2io7Printer3SubC2IRA5_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr noundef nonnull align 8 dereferenceable(184) %i.p, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(5) %3)
          to label %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEEvPT_DpOT0_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.q
  br i1 %i.ae, label %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.af = load i64, ptr %i.q, align 8, !tbaa !45
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #22
  br label %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit

_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ah = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.q
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEEvPT_DpOT0_.exit
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !45
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28: ; preds = %_ZNSt15__new_allocatorIN6google8protobuf2io7Printer3SubEE9constructIS4_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEEvPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28 ] ; 3 uses
  call void @_ZN6google8protobuf2io7Printer3SubC2EOS3_(ptr noundef nonnull align 8 dereferenceable(184) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.0911.i.i.i) #21
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.0911.i.i.i) #21
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 184 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !146

_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i28 ], [ %i.am, %.lr.ph.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 184 ; 2 uses
  %.not10.i.i.i30 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i30, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i31
  %.012.i.i.i32 = phi ptr [ %i.ap, %.lr.ph.i.i.i31 ], [ %i.an, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i33 = phi ptr [ %i.ao, %.lr.ph.i.i.i31 ], [ %1, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  call void @_ZN6google8protobuf2io7Printer3SubC2EOS3_(ptr noundef nonnull align 8 dereferenceable(184) %.012.i.i.i32, ptr noundef nonnull align 8 dereferenceable(184) %.0911.i.i.i33) #21
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.0911.i.i.i33) #21
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 184 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 184 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36, label %.lr.ph.i.i.i31, !llvm.loop !146

_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36: ; preds = %.lr.ph.i.i.i31, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.an, %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ap, %.lr.ph.i.i.i31 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !111
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #22
  br label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit36, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !54
  store ptr %.0.lcssa.i.i.i35, ptr %i.a, align 8, !tbaa !53
  %i.au = getelementptr inbounds nuw [184 x i8], ptr %i.o, i64 %i.j
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !111
  ret void

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aw = extractvalue { ptr, i32 } %i.ac, 0
  %i.ax = call ptr @__cxa_begin_catch(ptr %i.aw) #21 ; 0 uses
  %i.ay = mul nuw nsw i64 %i.j, 184
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ay) #22
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.g

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.av

bb.i:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #23
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 8}
!10 = !{!"_ZTSN6google8protobuf8compiler10objectivec14FieldGeneratorE", !11, i64 8, !13, i64 16, !14, i64 24}
!11 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTSN6google8protobuf8compiler10objectivec17GenerationOptionsE", !12, i64 0}
!14 = !{!"_ZTSN6google8protobuf8compiler10objectivec15SubstitutionMapE", !15, i64 0, !20, i64 24}
!15 = !{!"_ZTSSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE", !16, i64 0}
!16 = !{!"_ZTSSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE", !17, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE12_Vector_implE", !18, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"p1 _ZTSN6google8protobuf2io7Printer3SubE", !12, i64 0}
!20 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmNS0_18container_internal10StringHashENS8_8StringEqESaISt4pairIKS7_mEEEE", !21, i64 0}
!21 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEEE", !22, i64 0}
!22 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEEE", !23, i64 0}
!23 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqESaIcEEEE", !24, i64 0}
!24 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqESaIcEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !25, i64 0}
!25 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageINS1_12CommonFieldsELm0ELb0EEE", !26, i64 0}
!26 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !27, i64 0, !28, i64 8, !5, i64 16}
!27 = !{!"long", !5, i64 0}
!28 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !27, i64 0}
!29 = !{!30, !5, i64 2}
!30 = !{!"_ZTSN6google8protobuf15FieldDescriptorE", !31, i64 0, !32, i64 1, !32, i64 1, !32, i64 1, !32, i64 1, !32, i64 1, !32, i64 1, !5, i64 1, !5, i64 2, !5, i64 3, !32, i64 3, !32, i64 3, !5, i64 3, !4, i64 4, !33, i64 8, !35, i64 16, !36, i64 24, !37, i64 32, !5, i64 40, !5, i64 48, !38, i64 56, !39, i64 64, !39, i64 72, !5, i64 80}
!31 = !{!"_ZTSN6google8protobuf8internal10SymbolBaseE", !5, i64 0}
!32 = !{!"bool", !5, i64 0}
!33 = !{!"_ZTSN6google8protobuf8internal15DescriptorNamesE", !34, i64 0}
!34 = !{!"p1 omnipotent char", !12, i64 0}
!35 = !{!"p1 _ZTSN6google8protobuf14FileDescriptorE", !12, i64 0}
!36 = !{!"p1 _ZTSN4absl12lts_202505129once_flagE", !12, i64 0}
!37 = !{!"p1 _ZTSN6google8protobuf10DescriptorE", !12, i64 0}
!38 = !{!"p1 _ZTSN6google8protobuf12FieldOptionsE", !12, i64 0}
!39 = !{!"p1 _ZTSN6google8protobuf10FeatureSetE", !12, i64 0}
!40 = !{!41, !34, i64 0}
!41 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !34, i64 0}
!42 = !{!27, !27, i64 0}
!43 = !{!44, !34, i64 0}
!44 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !41, i64 0, !27, i64 8, !5, i64 16}
!45 = !{!5, !5, i64 0}
!46 = !{!44, !27, i64 8}
!47 = !{!48, !27, i64 0}
!48 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !27, i64 0, !34, i64 8}
!49 = !{!48, !34, i64 8}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE: argument 0"}
!52 = distinct !{!52, !"_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE"}
!53 = !{!18, !19, i64 8}
!54 = !{!18, !19, i64 0}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_: argument 0"}
!57 = distinct !{!57, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE16try_emplace_implIRSE_JmEEESD_INS1_12raw_hash_setISA_SB_SC_SG_E8iteratorEbEOT_DpOT0_: argument 0"}
!60 = distinct !{!60, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE16try_emplace_implIRSE_JmEEESD_INS1_12raw_hash_setISA_SB_SC_SG_E8iteratorEbEOT_DpOT0_"}
!61 = !{!62, !32, i64 16}
!62 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS2_10StringHashENS2_8StringEqESaIS_IKSA_mEEE8iteratorEbE", !63, i64 0, !32, i64 16}
!63 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE8iteratorE", !12, i64 0, !5, i64 8}
!64 = !{i8 0, i8 2}
!65 = !{!59, !56}
!66 = !{}
!67 = !{!68, !27, i64 32}
!68 = !{!"_ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE", !44, i64 0, !27, i64 32}
!69 = !{!32, !32, i64 0}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E: argument 0"}
!72 = distinct !{!72, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E"}
!73 = !{!74, !71}
!74 = distinct !{!74, !72, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E: argument 0:thread"}
!75 = !{!76, !5, i64 32}
!76 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEE", !5, i64 0, !5, i64 32}
!77 = !{!78, !32, i64 72}
!78 = !{!"_ZTSN6google8protobuf2io7Printer9ValueImplILb1EEE", !79, i64 0, !44, i64 40, !32, i64 72}
!79 = !{!"_ZTSSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEE", !80, i64 0}
!80 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEE", !81, i64 0}
!81 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEE", !82, i64 0}
!82 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEE", !83, i64 0}
!83 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEE", !84, i64 0}
!84 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEE", !76, i64 0}
!85 = !{!86, !32, i64 64}
!86 = !{!"_ZTSSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE", !5, i64 0, !32, i64 64}
!87 = !{!88, !27, i64 32}
!88 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE", !44, i64 0, !27, i64 32}
!89 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_: argument 0"}
!92 = distinct !{!92, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE16try_emplace_implIRSE_JmEEESD_INS1_12raw_hash_setISA_SB_SC_SG_E8iteratorEbEOT_DpOT0_: argument 0"}
!95 = distinct !{!95, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE16try_emplace_implIRSE_JmEEESD_INS1_12raw_hash_setISA_SB_SC_SG_E8iteratorEbEOT_DpOT0_"}
!96 = !{!94, !91}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_: argument 0"}
!99 = distinct !{!99, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE11try_emplaceIS9_Li0EJmETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISA_SB_SC_SG_E14const_iteratorEEE5valueEiE4typeELi0EEESD_INSM_8iteratorEbERKSK_DpOT1_"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE16try_emplace_implIRSE_JmEEESD_INS1_12raw_hash_setISA_SB_SC_SG_E8iteratorEbEOT_DpOT0_: argument 0"}
!102 = distinct !{!102, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE16try_emplace_implIRSE_JmEEESD_INS1_12raw_hash_setISA_SB_SC_SG_E8iteratorEbEOT_DpOT0_"}
!103 = !{!101, !98}
!104 = !{!26, !27, i64 0}
!105 = !{!106, !107, i64 0}
!106 = !{!"_ZTSZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEE13destroy_slotsEvEUlPKNS1_6ctrl_tEPvE_", !107, i64 0}
!107 = !{!"p1 _ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_mEEEE", !12, i64 0}
!108 = !{!28, !27, i64 0}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.mustprogress"}
!111 = !{!18, !19, i64 16}
!112 = !{!113, !114, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !114, i64 0, !114, i64 8, !114, i64 16}
!114 = !{!"p1 int", !12, i64 0}
!115 = !{!113, !114, i64 16}
!116 = !{!117, !12, i64 16}
!117 = !{!"_ZTSSt14_Function_base", !5, i64 0, !12, i64 16}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E: argument 0"}
!120 = distinct !{!120, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E"}
!121 = !{!122, !119}
!122 = distinct !{!122, !120, !"_ZN6google8protobuf2io7Printer9ValueImplILb1EE18ToStringOrCallbackENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_5Rank1E: argument 0:thread"}
!123 = !{!19, !19, i64 0}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
!126 = distinct !{!126, !"_ZN4absl12lts_2025051218container_internal5probeERKNS1_12CommonFieldsEm"}
!127 = !{!"branch_weights", i32 2146410443, i32 1073205}
!128 = distinct !{!128, !110}
!129 = distinct !{!129, !110}
!130 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!131 = !{!132, !132, i64 0}
!132 = !{!"_ZTSN4absl12lts_2025051218container_internal6ctrl_tE", !5, i64 0}
!133 = !{!134, !135, i64 0}
!134 = !{!"_ZTSZNSt8__detail9__variant17_Move_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEaSEOSB_EUlOT_T0_E_", !135, i64 0}
!135 = !{!"p1 _ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEE", !12, i64 0}
!136 = !{!137, !12, i64 24}
!137 = !{!"_ZTSSt8functionIFbvEE", !117, i64 0, !12, i64 24}
!138 = !{i64 0, i64 16, !45}
end_hunk_1
