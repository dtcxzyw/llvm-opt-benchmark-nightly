inline.NumInlined: 4507
inline.NumDeleted: 1580
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10Date32TypeENS_10StringTypeENS1_9ParseDateIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit19, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit23, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bp = load ptr, ptr %0, align 8, !tbaa !138   ; 2 uses
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !141

bb.h:                                             ; preds = %.loopexit.split-lp
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !142, !range !151, !noundef !152
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp, %bb.h, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK5arrow7compute8internal9ParseDateINS_10Date32TypeEE4CallIiSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 %2, ptr %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::shared_ptr.7", align 8 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::shared_ptr.7", align 8 ; 7 uses
  store i64 %2, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.a, align 8
  %.not = icmp eq i64 %2, 10
  br i1 %.not, label %bb.i, label %bb.b, !prof !141

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @_ZN5arrow10TypeTraitsINS_10Date32TypeEE14type_singletonEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %8)
  %i.b = load ptr, ptr %8, align 8, !tbaa !53     ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5arrow6Status7InvalidIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %4, align 8, !tbaa !138    ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !141

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !142, !range !151, !noundef !152
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.f, %bb.e, %bb.d
  %i.j = load ptr, ptr %6, align 8, !tbaa !138
  store ptr %i.j, ptr %4, align 8, !tbaa !138
  store ptr null, ptr %6, align 8, !tbaa !138
  %i.k = load ptr, ptr %7, align 8, !tbaa !237    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !56
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.aa

bb.g:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.h:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %7, align 8, !tbaa !237    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.h
  %i.u = load i64, ptr %i.s, align 8, !tbaa !56
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.q, %bb.h ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ab

bb.i:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = load i8, ptr %i.w, align 1, !tbaa !56
  %.not.i18 = icmp eq i8 %i.x, 45
  br i1 %.not.i18, label %bb.j, label %bb.s, !prof !141

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.z = load i8, ptr %i.y, align 1, !tbaa !56
  %.not7.i = icmp eq i8 %i.z, 45
  br i1 %.not7.i, label %bb.k, label %bb.s, !prof !141

bb.k:                                             ; preds = %bb.j
  %i.aa = load i8, ptr %3, align 1, !tbaa !56
  %i.ab = add i8 %i.aa, -48                       ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 10
  br i1 %i.ac, label %bb.l, label %bb.s, !prof !444

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !56
  %i.af = add i8 %i.ae, -48                       ; 2 uses
  %i.ag = icmp ult i8 %i.af, 10
  br i1 %i.ag, label %bb.m, label %bb.s, !prof !444

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !56
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = icmp ult i8 %i.aj, 10
  br i1 %i.ak, label %bb.n, label %bb.s, !prof !444

bb.n:                                             ; preds = %bb.m
  %narrow.i = mul nuw nsw i8 %i.ab, 10
  %narrow49.i = add nuw nsw i8 %i.af, %narrow.i
  %i.al = zext nneg i8 %narrow49.i to i16
  %i.am = mul nuw nsw i16 %i.al, 10
  %i.an = zext nneg i8 %i.aj to i16
  %i.ao = add nuw nsw i16 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !56
  %i.ar = add i8 %i.aq, -48                       ; 2 uses
  %i.as = mul nuw nsw i16 %i.ao, 10
  %i.at = icmp ult i8 %i.ar, 10
  %i.au = zext nneg i8 %i.ar to i16
  %i.av = add nuw nsw i16 %i.as, %i.au            ; 4 uses
  br i1 %i.at, label %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i, label %bb.s, !prof !444

_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i:  ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !56
  %i.ay = add i8 %i.ax, -48                       ; 2 uses
  %i.az = icmp ult i8 %i.ay, 10
  br i1 %i.az, label %bb.o, label %bb.s, !prof !444

bb.o:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !56
  %i.bc = add i8 %i.bb, -48                       ; 2 uses
  %narrow.i8.i = mul nuw nsw i8 %i.ay, 10
  %i.bd = icmp ult i8 %i.bc, 10
  %i.be = add i8 %i.bc, %narrow.i8.i              ; 6 uses
  br i1 %i.bd, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i, label %bb.s, !prof !444

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i:  ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !56
  %i.bh = add i8 %i.bg, -48                       ; 2 uses
  %i.bi = icmp ult i8 %i.bh, 10
  br i1 %i.bi, label %bb.p, label %bb.s, !prof !444

bb.p:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !56
  %i.bl = add i8 %i.bk, -48                       ; 2 uses
  %narrow.i10.i = mul nuw nsw i8 %i.bh, 10
  %i.bm = icmp ugt i8 %i.bl, 9
  %i.bn = add nuw nsw i8 %i.bl, %narrow.i10.i     ; 3 uses
  %i.bo = add i8 %i.be, -13
  %spec.select.i.i.i = icmp ult i8 %i.bo, -12
  %or.cond35.not39.i = select i1 %i.bm, i1 true, i1 %spec.select.i.i.i, !prof !445
  %.not8.i.i = icmp eq i8 %i.bn, 0
  %or.cond36.i = select i1 %or.cond35.not39.i, i1 true, i1 %.not8.i.i, !prof !446
  br i1 %or.cond36.i, label %bb.s, label %bb.q, !prof !446

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i = icmp eq i8 %i.be, 2
  %i.bp = and i16 %i.av, 3
  %i.bq = icmp eq i16 %i.bp, 0
  %or.cond.i.i = and i1 %i.bq, %.not.i.i.i
  br i1 %or.cond.i.i, label %bb.r, label %.thread.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.br = urem i16 %i.av, 100
  %.not.i.i.i.i = icmp ne i16 %i.br, 0
  %i.bs = urem i16 %i.av, 400
  %i.bt = icmp eq i16 %i.bs, 0
  %or.cond.i.i.i = or i1 %.not.i.i.i.i, %i.bt
  br i1 %or.cond.i.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.r, %bb.q
  %i.bu = zext nneg i8 %i.be to i64
  %i.bv = add nuw nsw i64 %i.bu, 4294967295
  %i.bw = and i64 %i.bv, 4294967295
  %i.bx = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !56
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i: ; preds = %.thread.i.i.i, %bb.r
  %.sroa.03.0.i.i.i = phi i8 [ %i.by, %.thread.i.i.i ], [ 29, %bb.r ]
  %.not42.i = icmp ult i8 %.sroa.03.0.i.i.i, %i.bn
  br i1 %.not42.i, label %bb.s, label %bb.z, !prof !447

bb.s:                                             ; preds = %bb.o, %bb.i, %bb.m, %bb.j, %bb.p, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i, %bb.k, %bb.l, %bb.n, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @_ZN5arrow10TypeTraitsINS_10Date32TypeEE14type_singletonEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %11)
  %i.bz = load ptr, ptr %11, align 8, !tbaa !53   ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !45
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.bz, i1 noundef zeroext false)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5arrow6Status7InvalidIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cd = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i19, label %_ZN5arrow6StatusD2Ev.exit22, label %bb.v, !prof !141

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !142, !range !151, !noundef !152
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %_ZN5arrow6StatusD2Ev.exit22, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit22

_ZN5arrow6StatusD2Ev.exit22:                      ; preds = %bb.w, %bb.v, %bb.u
  %i.ch = load ptr, ptr %9, align 8, !tbaa !138
  store ptr %i.ch, ptr %4, align 8, !tbaa !138
  store ptr null, ptr %9, align 8, !tbaa !138
  %i.ci = load ptr, ptr %10, align 8, !tbaa !237  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN5arrow6StatusD2Ev.exit22
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !56
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZN5arrow6StatusD2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.aa

bb.x:                                             ; preds = %bb.s
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.y:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %10, align 8, !tbaa !237  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.y
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !56
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.x ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.co, %bb.y ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.ab

bb.z:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i
  %i.cu = zext nneg i16 %i.av to i32
  %i.cv = icmp samesign ult i8 %i.be, 3
  %.neg.i.i.i = sext i1 %i.cv to i32
  %i.cw = add nsw i32 %.neg.i.i.i, %i.cu          ; 4 uses
  %i.cx = zext nneg i8 %i.be to i32
  %i.cy = zext nneg i8 %i.bn to i32
  %i.cz = add nsw i32 %i.cw, 65137
  %i.da = icmp slt i32 %i.cw, 0
  %i.db = select i1 %i.da, i32 %i.cz, i32 %i.cw
  %.lhs.trunc.i = trunc i32 %i.db to i16
  %i.dc = sdiv i16 %.lhs.trunc.i, 400
  %.sext.i = sext i16 %i.dc to i32                ; 2 uses
  %.neg15.i.i.i = mul nsw i32 %.sext.i, -400
  %i.dd = add nsw i32 %.neg15.i.i.i, %i.cw        ; 3 uses
  %i.de = icmp samesign ugt i8 %i.be, 2
  %.v.i.i.i = select i1 %i.de, i32 -3, i32 9
  %i.df = add nsw i32 %.v.i.i.i, %i.cx
  %i.dg = mul nsw i32 %i.df, 153
  %i.dh = add nsw i32 %i.dg, 2
  %i.di = udiv i32 %i.dh, 5
  %i.dj = mul nsw i32 %i.dd, 365
  %i.dk = lshr i32 %i.dd, 2
  %i.dl = udiv i32 %i.dd, 100
  %i.dm = mul nsw i32 %.sext.i, 146097
  %i.dn = add nsw i32 %i.di, -719469
  %i.do = add nsw i32 %i.dn, %i.dm
  %i.dp = add nsw i32 %i.do, %i.dk
  %i.dq = add nsw i32 %i.dp, %i.dj
  %i.dr = sub nsw i32 %i.dq, %i.dl
  %i.ds = add nsw i32 %i.dr, %i.cy
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.010 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.ds, %bb.z ]
  ret i32 %.010

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  resume { ptr, i32 } %.pn12.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status7InvalidIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(23) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !448
  call void @_ZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(23) %3, ptr noundef nonnull align 8 dereferenceable(32) %4), !noalias !448
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !237, !noalias !448 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5arrow6Status8FromArgsIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_NS_10StatusCodeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !56, !noalias !448
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #22
  br label %_ZN5arrow6Status8FromArgsIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_NS_10StatusCodeEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %5, align 8, !tbaa !237, !noalias !448 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !56, !noalias !448
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !448
  resume { ptr, i32 } %i.f

_ZN5arrow6Status8FromArgsIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_NS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !448
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5arrow10TypeTraitsINS_10Date32TypeEE14type_singletonEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.7") align 8 %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6date32Ev() ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !77
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !77
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(23) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !309, !nonnull !152, !align !319
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #20
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E2_clIS4_EEDaSK_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E2_clIS4_EEDaSK_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !309, !nonnull !152, !align !319
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !270
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !451
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E1_clIS9_EEDaSK_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E1_clIS9_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E2_clIS4_EEDaSK_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !309, !nonnull !152, !align !319
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(23) %3) #20
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(23) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E0_clISB_EEDaSK_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E0_clISB_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E1_clIS9_EEDaSK_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !309, !nonnull !152, !align !319
  %i.k = load ptr, ptr %4, align 8, !tbaa !237
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !238
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.k, i64 noundef %i.m)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E_clISF_EEDaSK_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E_clISF_EEDaSK_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E0_clISB_EEDaSK_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E_clISF_EEDaSK_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E2_clIS4_EEDaSK_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E1_clIS9_EEDaSK_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E0_clISB_EEDaSK_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEESF_DpOT_ENKUlOT_E_clISF_EEDaSK_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.d, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.o, %bb.c ], [ %i.p, %bb.d ], [ %i.r, %bb.f ], [ %i.q, %bb.e ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn12
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_10Date32TypeENS_15LargeStringTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.213", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !452
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247, !noalias !455
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10Date32TypeENS_15LargeStringTypeENS1_9ParseDateIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !452
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10Date32TypeENS_15LargeStringTypeENS1_9ParseDateIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10Date64TypeENS_10StringTypeENS1_9ParseDateIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit19, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit23, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bp = load ptr, ptr %0, align 8, !tbaa !138   ; 2 uses
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !141

bb.h:                                             ; preds = %.loopexit.split-lp
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !142, !range !151, !noundef !152
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp, %bb.h, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK5arrow7compute8internal9ParseDateINS_10Date64TypeEE4CallIlSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 %2, ptr %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::shared_ptr.7", align 8 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::shared_ptr.7", align 8 ; 7 uses
  store i64 %2, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.a, align 8
  %.not = icmp eq i64 %2, 10
  br i1 %.not, label %bb.i, label %bb.b, !prof !141

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @_ZN5arrow10TypeTraitsINS_10Date64TypeEE14type_singletonEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %8)
  %i.b = load ptr, ptr %8, align 8, !tbaa !53     ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5arrow6Status7InvalidIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %4, align 8, !tbaa !138    ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !141

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !142, !range !151, !noundef !152
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.f, %bb.e, %bb.d
  %i.j = load ptr, ptr %6, align 8, !tbaa !138
  store ptr %i.j, ptr %4, align 8, !tbaa !138
  store ptr null, ptr %6, align 8, !tbaa !138
  %i.k = load ptr, ptr %7, align 8, !tbaa !237    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !56
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.aa

bb.g:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.h:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %7, align 8, !tbaa !237    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.h
  %i.u = load i64, ptr %i.s, align 8, !tbaa !56
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.q, %bb.h ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ab

bb.i:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = load i8, ptr %i.w, align 1, !tbaa !56
  %.not.i18 = icmp eq i8 %i.x, 45
  br i1 %.not.i18, label %bb.j, label %bb.s, !prof !141

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.z = load i8, ptr %i.y, align 1, !tbaa !56
  %.not7.i = icmp eq i8 %i.z, 45
  br i1 %.not7.i, label %bb.k, label %bb.s, !prof !141

bb.k:                                             ; preds = %bb.j
  %i.aa = load i8, ptr %3, align 1, !tbaa !56
  %i.ab = add i8 %i.aa, -48                       ; 2 uses
  %i.ac = icmp ult i8 %i.ab, 10
  br i1 %i.ac, label %bb.l, label %bb.s, !prof !444

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !56
  %i.af = add i8 %i.ae, -48                       ; 2 uses
  %i.ag = icmp ult i8 %i.af, 10
  br i1 %i.ag, label %bb.m, label %bb.s, !prof !444

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !56
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = icmp ult i8 %i.aj, 10
  br i1 %i.ak, label %bb.n, label %bb.s, !prof !444

bb.n:                                             ; preds = %bb.m
  %narrow.i = mul nuw nsw i8 %i.ab, 10
  %narrow48.i = add nuw nsw i8 %i.af, %narrow.i
  %i.al = zext nneg i8 %narrow48.i to i16
  %i.am = mul nuw nsw i16 %i.al, 10
  %i.an = zext nneg i8 %i.aj to i16
  %i.ao = add nuw nsw i16 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !56
  %i.ar = add i8 %i.aq, -48                       ; 2 uses
  %i.as = mul nuw nsw i16 %i.ao, 10
  %i.at = icmp ult i8 %i.ar, 10
  %i.au = zext nneg i8 %i.ar to i16
  %i.av = add nuw nsw i16 %i.as, %i.au            ; 4 uses
  br i1 %i.at, label %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i, label %bb.s, !prof !444

_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i:  ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !56
  %i.ay = add i8 %i.ax, -48                       ; 2 uses
  %i.az = icmp ult i8 %i.ay, 10
  br i1 %i.az, label %bb.o, label %bb.s, !prof !444

bb.o:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !56
  %i.bc = add i8 %i.bb, -48                       ; 2 uses
  %narrow.i8.i = mul nuw nsw i8 %i.ay, 10
  %i.bd = icmp ult i8 %i.bc, 10
  %i.be = add i8 %i.bc, %narrow.i8.i              ; 6 uses
  br i1 %i.bd, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i, label %bb.s, !prof !444

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i:  ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !56
  %i.bh = add i8 %i.bg, -48                       ; 2 uses
  %i.bi = icmp ult i8 %i.bh, 10
  br i1 %i.bi, label %bb.p, label %bb.s, !prof !444

bb.p:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !56
  %i.bl = add i8 %i.bk, -48                       ; 2 uses
  %narrow.i10.i = mul nuw nsw i8 %i.bh, 10
  %i.bm = icmp ugt i8 %i.bl, 9
  %i.bn = add nuw nsw i8 %i.bl, %narrow.i10.i     ; 3 uses
  %i.bo = add i8 %i.be, -13
  %spec.select.i.i.i = icmp ult i8 %i.bo, -12
  %or.cond34.not38.i = select i1 %i.bm, i1 true, i1 %spec.select.i.i.i, !prof !445
  %.not8.i.i = icmp eq i8 %i.bn, 0
  %or.cond35.i = select i1 %or.cond34.not38.i, i1 true, i1 %.not8.i.i, !prof !446
  br i1 %or.cond35.i, label %bb.s, label %bb.q, !prof !446

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i = icmp eq i8 %i.be, 2
  %i.bp = and i16 %i.av, 3
  %i.bq = icmp eq i16 %i.bp, 0
  %or.cond.i.i = and i1 %i.bq, %.not.i.i.i
  br i1 %or.cond.i.i, label %bb.r, label %.thread.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.br = urem i16 %i.av, 100
  %.not.i.i.i.i = icmp ne i16 %i.br, 0
  %i.bs = urem i16 %i.av, 400
  %i.bt = icmp eq i16 %i.bs, 0
  %or.cond.i.i.i = or i1 %.not.i.i.i.i, %i.bt
  br i1 %or.cond.i.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.r, %bb.q
  %i.bu = zext nneg i8 %i.be to i64
  %i.bv = add nuw nsw i64 %i.bu, 4294967295
  %i.bw = and i64 %i.bv, 4294967295
  %i.bx = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !56
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i: ; preds = %.thread.i.i.i, %bb.r
  %.sroa.03.0.i.i.i = phi i8 [ %i.by, %.thread.i.i.i ], [ 29, %bb.r ]
  %.not41.i = icmp ult i8 %.sroa.03.0.i.i.i, %i.bn
  br i1 %.not41.i, label %bb.s, label %bb.z, !prof !447

bb.s:                                             ; preds = %bb.o, %bb.i, %bb.m, %bb.j, %bb.p, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i, %bb.k, %bb.l, %bb.n, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @_ZN5arrow10TypeTraitsINS_10Date64TypeEE14type_singletonEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %11)
  %i.bz = load ptr, ptr %11, align 8, !tbaa !53   ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !45
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.bz, i1 noundef zeroext false)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5arrow6Status7InvalidIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cd = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i19, label %_ZN5arrow6StatusD2Ev.exit22, label %bb.v, !prof !141

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !142, !range !151, !noundef !152
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %_ZN5arrow6StatusD2Ev.exit22, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit22

_ZN5arrow6StatusD2Ev.exit22:                      ; preds = %bb.w, %bb.v, %bb.u
  %i.ch = load ptr, ptr %9, align 8, !tbaa !138
  store ptr %i.ch, ptr %4, align 8, !tbaa !138
  store ptr null, ptr %9, align 8, !tbaa !138
  %i.ci = load ptr, ptr %10, align 8, !tbaa !237  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN5arrow6StatusD2Ev.exit22
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !56
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZN5arrow6StatusD2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.aa

bb.x:                                             ; preds = %bb.s
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.y:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %10, align 8, !tbaa !237  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.y
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !56
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.x ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.co, %bb.y ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.ab

bb.z:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i
  %i.cu = zext nneg i16 %i.av to i32
  %i.cv = icmp samesign ult i8 %i.be, 3
  %.neg.i.i.i = sext i1 %i.cv to i32
  %i.cw = add nsw i32 %.neg.i.i.i, %i.cu          ; 4 uses
  %i.cx = zext nneg i8 %i.be to i32
  %i.cy = zext nneg i8 %i.bn to i32
  %i.cz = add nsw i32 %i.cw, 65137
  %i.da = icmp slt i32 %i.cw, 0
  %i.db = select i1 %i.da, i32 %i.cz, i32 %i.cw
  %.lhs.trunc.i = trunc i32 %i.db to i16
  %i.dc = sdiv i16 %.lhs.trunc.i, 400
  %.sext.i = sext i16 %i.dc to i32                ; 2 uses
  %.neg15.i.i.i = mul nsw i32 %.sext.i, -400
  %i.dd = add nsw i32 %.neg15.i.i.i, %i.cw        ; 3 uses
  %i.de = icmp samesign ugt i8 %i.be, 2
  %.v.i.i.i = select i1 %i.de, i32 -3, i32 9
  %i.df = add nsw i32 %.v.i.i.i, %i.cx
  %i.dg = mul nsw i32 %i.df, 153
  %i.dh = add nsw i32 %i.dg, 2
  %i.di = udiv i32 %i.dh, 5
  %i.dj = mul nsw i32 %i.dd, 365
  %i.dk = lshr i32 %i.dd, 2
  %i.dl = udiv i32 %i.dd, 100
  %i.dm = mul nsw i32 %.sext.i, 146097
  %i.dn = add nsw i32 %i.di, -719469
  %i.do = add nsw i32 %i.dn, %i.dm
  %i.dp = add nsw i32 %i.do, %i.dk
  %i.dq = add nsw i32 %i.dp, %i.dj
  %i.dr = sub nsw i32 %i.dq, %i.dl
  %i.ds = add nsw i32 %i.dr, %i.cy
  %i.dt = sext i32 %i.ds to i64
  %i.du = mul nsw i64 %i.dt, 86400000
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.010 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.du, %bb.z ]
  ret i64 %.010

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  resume { ptr, i32 } %.pn12.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5arrow10TypeTraitsINS_10Date64TypeEE14type_singletonEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.7") align 8 %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6date64Ev() ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !77
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !77
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CastFunctorINS_10Date64TypeENS_15LargeStringTypeEvE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.284", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !570
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247, !noalias !573
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10Date64TypeENS_15LargeStringTypeENS1_9ParseDateIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !570
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10Date64TypeENS_15LargeStringTypeENS1_9ParseDateIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !138, !alias.scope !576
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.c = load i8, ptr %i.b, align 8, !tbaa !241
  switch i8 %i.c, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %bb.b
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !243

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.11.sink = phi ptr [ @.str.10, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.11, %bb.a ]
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.11.sink, ptr %i.e, align 8, !tbaa !244
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.g

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !259
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !266
  %i.j = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !269  ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !259  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !266
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.o ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !266  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %storemerge.i.i.i = select i1 %i.v, ptr %i.a, ptr %i.u ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !266  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.w, i64 noundef %i.o, i64 noundef %i.l)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.c
  %i.x = icmp sgt i64 %i.l, 0
  br i1 %i.x, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeStringTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_10Date64TypeES3_NS7_9ParseDateISB_EEE9ArrayExecISB_vE4ExecERKSE_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSG_4ExecESI_SK_SN_SP_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESN_OSX_OT1_EUlST_E_SV_EEvSN_OT_S11_EUllE_SV_EEvPKhllS16_S11_.exit.i.i.i

.lr.ph45.i.i.i.i:                                 ; preds = %.noexc8, %.loopexit.i.i.i.i
  %.0 = phi ptr [ %.1, %.loopexit.i.i.i.i ], [ %i.j, %.noexc8 ] ; 7 uses
  %.02444.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc8 ] ; 7 uses
  %i.y = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc9:                                          ; preds = %.lr.ph45.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.y to i16 ; 3 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.y, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.z = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  %i.aa = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0 ; 3 uses
  br i1 %i.z, label %.preheader.i.i.i.i, label %bb.d

.preheader.i.i.i.i:                               ; preds = %.noexc9
  %i.ab = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64
  br i1 %i.aa, label %.lr.ph42.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph42.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.noexc10
  %.3 = phi ptr [ %i.aj, %.noexc10 ], [ %.0, %.preheader.i.i.i.i ] ; 2 uses
  %.02341.i.i.i.i = phi i64 [ %i.ak, %.noexc10 ], [ 0, %.preheader.i.i.i.i ]
  %.140.i.i.i.i = phi i64 [ %i.al, %.noexc10 ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.140.i.i.i.i ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !270 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !270
  %i.ah = sub nsw i64 %i.ag, %i.ad
  %i.ai = invoke noundef i64 @_ZNK5arrow7compute8internal9ParseDateINS_10Date64TypeEE4CallIlSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 %i.ah, ptr nonnull %i.ae, ptr noundef nonnull %0)
          to label %.noexc10 unwind label %.loopexit

.noexc10:                                         ; preds = %.lr.ph42.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.3, i64 8 ; 2 uses
  store i64 %i.ai, ptr %.3, align 8, !tbaa !270
  %i.ak = add nuw nsw i64 %.02341.i.i.i.i, 1      ; 2 uses
  %i.al = add nsw i64 %.140.i.i.i.i, 1            ; 2 uses
  %exitcond50.not.i.i.i.i = icmp eq i64 %i.ak, %i.ab
  br i1 %exitcond50.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph42.i.i.i.i, !llvm.loop !579

bb.d:                                             ; preds = %.noexc9
  %i.am = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.am, label %.preheader30.i.i.i.i, label %.preheader32.i.i.i.i

.preheader32.i.i.i.i:                             ; preds = %bb.d
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader32.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.y, 32767
  %i.an = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.ao = add i64 %.02444.i.i.i.i, %i.an          ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader30.i.i.i.i:                             ; preds = %bb.d
  br i1 %i.aa, label %.lr.ph38.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph38.i.i.i.i:                                 ; preds = %.preheader30.i.i.i.i
  %i.ap = zext nneg i32 %i.y to i64               ; 2 uses
  %i.aq = shl nuw nsw i64 %i.ap, 3                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.0, i8 0, i64 %i.aq, i1 false), !tbaa !270
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_13TimestampTypeENS_10StringTypeENS1_14ParseTimestampEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  %i.ar = zext nneg i32 %i.y to i64               ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 3                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.0, i8 0, i64 %i.as, i1 false), !tbaa !270
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0, i64 %i.as
  %i.at = add i64 %.02444.i.i.i.i, %i.ar
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc11, %.lr.ph.preheader.i.i.i.i
  %.2 = phi ptr [ %.0, %.lr.ph.preheader.i.i.i.i ], [ %i.bl, %.noexc11 ] ; 2 uses
  %.334.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.bm, %.noexc11 ] ; 3 uses
  %i.au = add nsw i64 %.334.i.i.i.i, %i.o         ; 2 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !56
  %i.ay = trunc i64 %i.au to i8
  %i.az = and i8 %i.ay, 7
  %i.ba = lshr i8 %i.ax, %i.az
  %i.bb = trunc i8 %i.ba to i1
  br i1 %i.bb, label %bb.e, label %.noexc11

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.334.i.i.i.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bc, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = sub nsw i32 %i.bh, %i.bd
  %i.bj = sext i32 %i.bi to i64
  %i.bk = invoke noundef i64 @_ZNK5arrow7compute8internal14ParseTimestamp4CallIlSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef %2, i64 %i.bj, ptr nonnull %i.bf, ptr noundef nonnull %0)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit

.noexc11:                                         ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.sink.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bk, %bb.e ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 2 uses
  store i64 %.sink.i.i.i.i, ptr %.2, align 8, !tbaa !270
  %i.bm = add i64 %.334.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bm, %i.aq
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1419

.loopexit.i.i.i.i:                                ; preds = %.noexc11, %.noexc10, %.lr.ph38.i.i.i.i, %.preheader30.i.i.i.i, %.preheader32.i.i.i.i, %.preheader.i.i.i.i
  %.1 = phi ptr [ %.0, %.preheader32.i.i.i.i ], [ %.0, %.preheader.i.i.i.i ], [ %scevgep.i.i.i.i, %.lr.ph38.i.i.i.i ], [ %.0, %.preheader30.i.i.i.i ], [ %i.al, %.noexc10 ], [ %i.bl, %.noexc11 ]
  %.4.i.i.i.i = phi i64 [ %.02444.i.i.i.i, %.preheader32.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader.i.i.i.i ], [ %i.at, %.lr.ph38.i.i.i.i ], [ %.02444.i.i.i.i, %.preheader30.i.i.i.i ], [ %i.an, %.noexc10 ], [ %i.aq, %.noexc11 ] ; 2 uses
  %i.bn = icmp slt i64 %.4.i.i.i.i, %i.l
  br i1 %i.bn, label %.lr.ph45.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10StringTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_13TimestampTypeES3_NS7_14ParseTimestampEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i, !llvm.loop !1420

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10StringTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_13TimestampTypeES3_NS7_14ParseTimestampEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10StringTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_13TimestampTypeES3_NS7_14ParseTimestampEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

bb.g:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph42.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.e
  %lpad.loopexit19 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph45.i.i.i.i
  %lpad.loopexit23 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit19, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit23, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bp = load ptr, ptr %0, align 8, !tbaa !138   ; 2 uses
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !141

bb.h:                                             ; preds = %.loopexit.split-lp
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !142, !range !151, !noundef !152
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp, %bb.h, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK5arrow7compute8internal14ParseTimestamp4CallIlSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1, i64 %2, ptr %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.std::chrono::duration.121", align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i64 %2, ptr %8, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %3, ptr %i.c, align 8
  %i.d = load ptr, ptr %0, align 8, !tbaa !1421, !nonnull !152, !align !319
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !328  ; 4 uses
  %i.g = icmp ult i64 %2, 10
  br i1 %i.g, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, label %bb.b, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = load i8, ptr %i.h, align 1, !tbaa !56
  %.not.i.i = icmp eq i8 %i.i, 45
  br i1 %.not.i.i, label %bb.c, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, !prof !141

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.k = load i8, ptr %i.j, align 1, !tbaa !56
  %.not7.i.i = icmp eq i8 %i.k, 45
  br i1 %.not7.i.i, label %bb.d, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, !prof !141

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %3, align 1, !tbaa !56
  %i.m = add i8 %i.l, -48                         ; 2 uses
  %i.n = icmp ult i8 %i.m, 10
  br i1 %i.n, label %bb.e, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, !prof !444

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !56
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %i.r = icmp ult i8 %i.q, 10
  br i1 %i.r, label %bb.f, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, !prof !444

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !56
  %i.u = add i8 %i.t, -48                         ; 2 uses
  %i.v = icmp ult i8 %i.u, 10
  br i1 %i.v, label %bb.g, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, !prof !444

bb.g:                                             ; preds = %bb.f
  %narrow.i.i = mul nuw nsw i8 %i.m, 10
  %narrow48.i.i = add nuw nsw i8 %i.q, %narrow.i.i
  %i.w = zext nneg i8 %narrow48.i.i to i16
  %i.x = mul nuw nsw i16 %i.w, 10
  %i.y = zext nneg i8 %i.u to i16
  %i.z = add nuw nsw i16 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !56
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %i.ad = mul nuw nsw i16 %i.z, 10
  %i.ae = icmp ult i8 %i.ac, 10
  %i.af = zext nneg i8 %i.ac to i16
  %i.ag = add nuw nsw i16 %i.ad, %i.af            ; 4 uses
  br i1 %i.ae, label %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, !prof !444

_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !56
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = icmp ult i8 %i.aj, 10
  br i1 %i.ak, label %bb.h, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, !prof !444

bb.h:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.am = load i8, ptr %i.al, align 1, !tbaa !56
  %i.an = add i8 %i.am, -48                       ; 2 uses
  %narrow.i8.i.i = mul nuw nsw i8 %i.aj, 10
  %i.ao = icmp ult i8 %i.an, 10
  %i.ap = add i8 %i.an, %narrow.i8.i.i            ; 6 uses
  br i1 %i.ao, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, !prof !444

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i: ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !56
  %i.as = add i8 %i.ar, -48                       ; 2 uses
  %i.at = icmp ult i8 %i.as, 10
  br i1 %i.at, label %bb.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, !prof !444

bb.i:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.av = load i8, ptr %i.au, align 1, !tbaa !56
  %i.aw = add i8 %i.av, -48                       ; 2 uses
  %narrow.i10.i.i = mul nuw nsw i8 %i.as, 10
  %i.ax = icmp ugt i8 %i.aw, 9
  %i.ay = add nuw nsw i8 %i.aw, %narrow.i10.i.i   ; 3 uses
  %i.az = add i8 %i.ap, -13
  %spec.select.i.i.i.i = icmp ult i8 %i.az, -12
  %or.cond34.not38.i.i = select i1 %i.ax, i1 true, i1 %spec.select.i.i.i.i, !prof !445
  %.not8.i.i.i = icmp eq i8 %i.ay, 0
  %or.cond35.i.i = select i1 %or.cond34.not38.i.i, i1 true, i1 %.not8.i.i.i, !prof !446
  br i1 %or.cond35.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, label %bb.j, !prof !446

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i8 %i.ap, 2
  %i.ba = and i16 %i.ag, 3
  %i.bb = icmp eq i16 %i.ba, 0
  %or.cond.i.i.i = and i1 %i.bb, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %bb.k, label %.thread.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bc = urem i16 %i.ag, 100
  %.not.i.i.i.i.i = icmp ne i16 %i.bc, 0
  %i.bd = urem i16 %i.ag, 400
  %i.be = icmp eq i16 %i.bd, 0
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.be
  br i1 %or.cond.i.i.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.k, %bb.j
  %i.bf = zext nneg i8 %i.ap to i64
  %i.bg = add nuw nsw i64 %i.bf, 4294967295
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !56
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i: ; preds = %.thread.i.i.i.i, %bb.k
  %.sroa.03.0.i.i.i.i = phi i8 [ %i.bj, %.thread.i.i.i.i ], [ 29, %bb.k ]
  %.not41.i.i = icmp ult i8 %.sroa.03.0.i.i.i.i, %i.ay
  br i1 %.not41.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, label %bb.l, !prof !447

bb.l:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i
  %i.bk = zext nneg i16 %i.ag to i32
  %i.bl = icmp samesign ult i8 %i.ap, 3
  %.neg.i.i.i.i = sext i1 %i.bl to i32
  %i.bm = add nsw i32 %.neg.i.i.i.i, %i.bk        ; 4 uses
  %i.bn = zext nneg i8 %i.ap to i32
  %i.bo = zext nneg i8 %i.ay to i32
  %i.bp = add nsw i32 %i.bm, 65137
  %i.bq = icmp slt i32 %i.bm, 0
  %i.br = select i1 %i.bq, i32 %i.bp, i32 %i.bm
  %.lhs.trunc.i.i = trunc i32 %i.br to i16
  %i.bs = sdiv i16 %.lhs.trunc.i.i, 400
  %.sext.i.i = sext i16 %i.bs to i32              ; 2 uses
  %.neg15.i.i.i.i = mul nsw i32 %.sext.i.i, -400
  %i.bt = add nsw i32 %.neg15.i.i.i.i, %i.bm      ; 3 uses
  %i.bu = icmp samesign ugt i8 %i.ap, 2
  %.v.i.i.i.i = select i1 %i.bu, i32 -3, i32 9
  %i.bv = add nsw i32 %.v.i.i.i.i, %i.bn
  %i.bw = mul nsw i32 %i.bv, 153
  %i.bx = add nsw i32 %i.bw, 2
  %i.by = udiv i32 %i.bx, 5
  %i.bz = mul nsw i32 %i.bt, 365
  %i.ca = lshr i32 %i.bt, 2
  %i.cb = udiv i32 %i.bt, 100
  %i.cc = mul nsw i32 %.sext.i.i, 146097
  %i.cd = add nsw i32 %i.by, -719469
  %i.ce = add nsw i32 %i.cd, %i.cc
  %i.cf = add nsw i32 %i.ce, %i.ca
  %i.cg = add nsw i32 %i.cf, %i.bz
  %i.ch = sub nsw i32 %i.cg, %i.cb
  %i.ci = add nsw i32 %i.ch, %i.bo
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = mul nsw i64 %i.cj, 86400                ; 4 uses
  %i.cl = icmp eq i64 %2, 10
  br i1 %i.cl, label %bb.m, label %bb.p, !prof !444

bb.m:                                             ; preds = %bb.l
  switch i32 %i.f, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50 [
    i32 3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.cm = mul nsw i64 %i.cj, 86400000
  br label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50

bb.o:                                             ; preds = %bb.m
  %i.cn = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ck, i64 1000000) ; 2 uses
  %i.co = extractvalue { i64, i1 } %i.cn, 1
  %i.cp = extractvalue { i64, i1 } %i.cn, 0
  br i1 %i.co, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50, !prof !1423

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i: ; preds = %bb.m
  %i.cq = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ck, i64 1000000000) ; 2 uses
  %i.cr = extractvalue { i64, i1 } %i.cq, 1
  %i.cs = extractvalue { i64, i1 } %i.cq, 0
  br i1 %i.cr, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50, !prof !1423

bb.p:                                             ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !56
  switch i8 %i.cu, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread [
    i8 32, label %bb.q
    i8 84, label %bb.q
  ], !prof !1424

bb.q:                                             ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i64 0, ptr %7, align 8
  %i.cv = getelementptr i8, ptr %3, i64 %2
  %i.cw = getelementptr i8, ptr %i.cv, i64 -1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !56  ; 3 uses
  %i.cy = icmp eq i8 %i.cx, 90
  br i1 %i.cy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cz = add i64 %2, -1
  br label %.sink.split.i

bb.s:                                             ; preds = %bb.q
  %i.da = add i64 %2, -3                          ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 %i.da ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !56  ; 4 uses
  switch i8 %i.dc, label %bb.w [
    i8 43, label %bb.t
    i8 45, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !56
  %i.df = add i8 %i.de, -48                       ; 2 uses
  %i.dg = icmp ult i8 %i.df, 10
  br i1 %i.dg, label %bb.u, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

bb.u:                                             ; preds = %bb.t
  %i.dh = add i8 %i.cx, -48                       ; 2 uses
  %narrow.i.i.i = mul nuw nsw i8 %i.df, 10
  %i.di = icmp ugt i8 %i.dh, 9
  %i.dj = add nuw nsw i8 %narrow.i.i.i, %i.dh     ; 2 uses
  %i.dk = icmp ugt i8 %i.dj, 23
  %or.cond.i.i = select i1 %i.di, i1 true, i1 %i.dk, !prof !1425
  br i1 %or.cond.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %bb.v, !prof !1425

bb.v:                                             ; preds = %bb.u
  %i.dl = zext nneg i8 %i.dj to i64
  %i.dm = mul nuw nsw i64 %i.dl, 3600             ; 2 uses
  %i.dn = icmp eq i8 %i.dc, 43
  %i.do = sub nsw i64 0, %i.dm
  %spec.select.i = select i1 %i.dn, i64 %i.do, i64 %i.dm
  store i64 %spec.select.i, ptr %7, align 8, !tbaa !270
  br label %.sink.split.i

bb.w:                                             ; preds = %bb.s
  %i.dp = add i64 %2, -5                          ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 %i.dp ; 3 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !56  ; 2 uses
  switch i8 %i.dr, label %bb.ab [
    i8 43, label %bb.x
    i8 45, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !56
  %i.du = add i8 %i.dt, -48                       ; 2 uses
  %i.dv = icmp ult i8 %i.du, 10
  br i1 %i.dv, label %bb.y, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

bb.y:                                             ; preds = %bb.x
  %i.dw = add i8 %i.dc, -48                       ; 2 uses
  %narrow.i.i78.i = mul nuw nsw i8 %i.du, 10
  %i.dx = icmp ult i8 %i.dw, 10
  %i.dy = add nuw nsw i8 %narrow.i.i78.i, %i.dw   ; 2 uses
  br i1 %i.dx, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79.i: ; preds = %bb.y
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 3
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !56
  %i.eb = add i8 %i.ea, -48                       ; 2 uses
  %i.ec = icmp ult i8 %i.eb, 10
  br i1 %i.ec, label %bb.z, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

bb.z:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79.i
  %i.ed = add i8 %i.cx, -48                       ; 2 uses
  %narrow.i8.i80.i = mul nuw nsw i8 %i.eb, 10
  %i.ee = icmp ult i8 %i.ed, 10
  %i.ef = add nuw nsw i8 %narrow.i8.i80.i, %i.ed  ; 2 uses
  br i1 %i.ee, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i: ; preds = %bb.z
  %i.eg = icmp ugt i8 %i.dy, 23
  %i.eh = icmp ugt i8 %i.ef, 59
  %or.cond6.i.i = select i1 %i.eg, i1 true, i1 %i.eh, !prof !1426
  br i1 %or.cond6.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %bb.aa, !prof !1427

bb.aa:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i
  %i.ei = zext nneg i8 %i.dy to i64
  %i.ej = zext nneg i8 %i.ef to i64
  %i.ek = mul nuw nsw i64 %i.ei, 60
  %i.el = add nuw nsw i64 %i.ek, %i.ej
  %i.em = mul nuw nsw i64 %i.el, 60               ; 2 uses
  %i.en = icmp eq i8 %i.dr, 43
  %i.eo = sub nsw i64 0, %i.em
  %spec.select156.i = select i1 %i.en, i64 %i.eo, i64 %i.em
  store i64 %spec.select156.i, ptr %7, align 8, !tbaa !270
  br label %.sink.split.i

bb.ab:                                            ; preds = %bb.w
  %i.ep = add i64 %2, -6                          ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 %i.ep ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !56  ; 2 uses
  switch i8 %i.er, label %.sink.split.i [
    i8 43, label %bb.ac
    i8 45, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %i.es = icmp eq i8 %i.dc, 58
  br i1 %i.es, label %bb.ad, label %.sink.split.i

bb.ad:                                            ; preds = %bb.ac
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  %i.eu = call fastcc noundef zeroext i1 @_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_(ptr noundef nonnull %i.et, ptr noundef %7)
  br i1 %i.eu, label %bb.ae, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !141

bb.ae:                                            ; preds = %bb.ad
  %i.ev = icmp eq i8 %i.er, 43
  br i1 %i.ev, label %bb.af, label %.sink.split.i

bb.af:                                            ; preds = %bb.ae
  %i.ew = load i64, ptr %7, align 8, !tbaa !394
  %i.ex = sub nsw i64 0, %i.ew
  store i64 %i.ex, ptr %7, align 8, !tbaa !394
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.r, %bb.v, %bb.aa, %bb.ae, %bb.af, %bb.ac, %bb.ab
  %.1 = phi i8 [ 0, %bb.ac ], [ 0, %bb.ab ], [ 1, %bb.af ], [ 1, %bb.ae ], [ 1, %bb.aa ], [ 1, %bb.v ], [ 1, %bb.r ] ; 26 uses
  %.064.i = phi i64 [ %2, %bb.ac ], [ %2, %bb.ab ], [ %i.ep, %bb.af ], [ %i.ep, %bb.ae ], [ %i.dp, %bb.aa ], [ %i.da, %bb.v ], [ %i.cz, %bb.r ] ; 6 uses
  switch i64 %.064.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split [
    i64 13, label %bb.ag
    i64 16, label %bb.ai
    i64 19, label %bb.am
    i64 21, label %bb.am
    i64 22, label %bb.am
    i64 23, label %bb.am
    i64 24, label %bb.am
    i64 25, label %bb.am
    i64 26, label %bb.am
    i64 27, label %bb.am
    i64 28, label %bb.am
    i64 29, label %bb.am
  ]

bb.ag:                                            ; preds = %.sink.split.i
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !56
  %i.fa = add i8 %i.ez, -48                       ; 2 uses
  %i.fb = icmp ult i8 %i.fa, 10
  br i1 %i.fb, label %bb.ah, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

bb.ah:                                            ; preds = %bb.ag
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !56
  %i.fe = add i8 %i.fd, -48                       ; 2 uses
  %narrow.i.i82.i = mul nuw nsw i8 %i.fa, 10
  %i.ff = icmp ugt i8 %i.fe, 9
  %i.fg = add nuw nsw i8 %i.fe, %narrow.i.i82.i   ; 2 uses
  %i.fh = icmp ugt i8 %i.fg, 23
  %or.cond.i83.i = select i1 %i.ff, i1 true, i1 %i.fh, !prof !1425
  br i1 %or.cond.i83.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit84.i, !prof !1425

_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit84.i: ; preds = %bb.ah
  %i.fi = zext nneg i8 %i.fg to i64
  %i.fj = mul nuw nsw i64 %i.fi, 3600
  br label %bb.ar

bb.ai:                                            ; preds = %.sink.split.i
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !56
  %.not.i85.i = icmp eq i8 %i.fl, 58
  br i1 %.not.i85.i, label %bb.aj, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !141

bb.aj:                                            ; preds = %bb.ai
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !56
  %i.fo = add i8 %i.fn, -48                       ; 2 uses
  %i.fp = icmp ult i8 %i.fo, 10
  br i1 %i.fp, label %bb.ak, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

bb.ak:                                            ; preds = %bb.aj
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !56
  %i.fs = add i8 %i.fr, -48                       ; 2 uses
  %narrow.i.i87.i = mul nuw nsw i8 %i.fo, 10
  %i.ft = icmp ult i8 %i.fs, 10
  %i.fu = add nuw nsw i8 %i.fs, %narrow.i.i87.i   ; 2 uses
  br i1 %i.ft, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i88.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i88.i: ; preds = %bb.ak
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !56
  %i.fx = add i8 %i.fw, -48                       ; 2 uses
  %i.fy = icmp ult i8 %i.fx, 10
  br i1 %i.fy, label %bb.al, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

bb.al:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i88.i
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 15
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !56
  %i.gb = add i8 %i.ga, -48                       ; 2 uses
  %narrow.i10.i89.i = mul nuw nsw i8 %i.fx, 10
  %i.gc = icmp ult i8 %i.gb, 10
  %i.gd = add nuw nsw i8 %i.gb, %narrow.i10.i89.i ; 2 uses
  br i1 %i.gc, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i: ; preds = %bb.al
  %i.ge = icmp ugt i8 %i.fu, 23
  %i.gf = icmp ugt i8 %i.gd, 59
  %or.cond8.i.i = select i1 %i.ge, i1 true, i1 %i.gf, !prof !1426
  br i1 %or.cond8.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i, !prof !1427

_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i
  %i.gg = zext nneg i8 %i.fu to i64
  %i.gh = zext nneg i8 %i.gd to i64
  %i.gi = mul nuw nsw i64 %i.gg, 60
  %i.gj = add nuw nsw i64 %i.gi, %i.gh
  %i.gk = mul nuw nsw i64 %i.gj, 60
  br label %bb.ar

bb.am:                                            ; preds = %.sink.split.i, %.sink.split.i, %.sink.split.i, %.sink.split.i, %.sink.split.i, %.sink.split.i, %.sink.split.i, %.sink.split.i, %.sink.split.i, %.sink.split.i
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !56
  %.not.i90.i = icmp eq i8 %i.gn, 58
  br i1 %.not.i90.i, label %bb.an, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !141

bb.an:                                            ; preds = %bb.am
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !56
  %.not7.i92.i = icmp eq i8 %i.gp, 58
  br i1 %.not7.i92.i, label %bb.ao, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !141

bb.ao:                                            ; preds = %bb.an
  %i.gq = load i8, ptr %i.gl, align 1, !tbaa !56
  %i.gr = add i8 %i.gq, -48                       ; 2 uses
  %i.gs = icmp ult i8 %i.gr, 10
  br i1 %i.gs, label %bb.ap, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

bb.ap:                                            ; preds = %bb.ao
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !56
  %i.gv = add i8 %i.gu, -48                       ; 2 uses
  %narrow.i.i93.i = mul nuw nsw i8 %i.gr, 10
  %i.gw = icmp ult i8 %i.gv, 10
  %i.gx = add nuw nsw i8 %i.gv, %narrow.i.i93.i   ; 2 uses
  br i1 %i.gw, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i94.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i94.i: ; preds = %bb.ap
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !56
  %i.ha = add i8 %i.gz, -48                       ; 2 uses
  %i.hb = icmp ult i8 %i.ha, 10
  br i1 %i.hb, label %bb.aq, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

bb.aq:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i94.i
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 15
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !56
  %i.he = add i8 %i.hd, -48                       ; 2 uses
  %narrow.i15.i.i = mul nuw nsw i8 %i.ha, 10
  %i.hf = icmp ult i8 %i.he, 10
  %i.hg = add nuw nsw i8 %i.he, %narrow.i15.i.i   ; 2 uses
  br i1 %i.hf, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i: ; preds = %bb.aq
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !56
  %i.hj = add i8 %i.hi, -48                       ; 2 uses
  %i.hk = icmp ult i8 %i.hj, 10
  br i1 %i.hk, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !56
  %i.hn = add i8 %i.hm, -48                       ; 2 uses
  %narrow.i18.i.i = mul nuw nsw i8 %i.hj, 10
  %i.ho = icmp ugt i8 %i.hn, 9
  %i.hp = add i8 %i.hn, %narrow.i18.i.i           ; 2 uses
  %i.hq = icmp ugt i8 %i.gx, 23
  %or.cond.i95.i = select i1 %i.ho, i1 true, i1 %i.hq, !prof !1428
  %i.hr = icmp ugt i8 %i.hg, 59
  %or.cond11.i.i = select i1 %or.cond.i95.i, i1 true, i1 %i.hr, !prof !1426
  %i.hs = icmp ugt i8 %i.hp, 59
  %or.cond13.i.i = select i1 %or.cond11.i.i, i1 true, i1 %i.hs, !prof !1429
  br i1 %or.cond13.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %_ZN5arrow8internal6detailL13ParseHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i, !prof !1427

_ZN5arrow8internal6detailL13ParseHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i
  %i.ht = zext nneg i8 %i.gx to i64
  %i.hu = zext nneg i8 %i.hg to i64
  %i.hv = mul nuw nsw i64 %i.ht, 60
  %i.hw = add nuw nsw i64 %i.hv, %i.hu
  %i.hx = zext nneg i8 %i.hp to i64
  %i.hy = mul nuw nsw i64 %i.hw, 60
  %i.hz = add nuw nsw i64 %i.hy, %i.hx
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN5arrow8internal6detailL13ParseHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i, %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i, %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit84.i
  %.sroa.0108.0.i = phi i64 [ %i.fj, %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit84.i ], [ %i.gk, %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i ], [ %i.hz, %_ZN5arrow8internal6detailL13ParseHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i ]
  %i.ia = load i64, ptr %7, align 8, !tbaa !270
  %i.ib = add nsw i64 %i.ia, %.sroa.0108.0.i
  %i.ic = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ib, i64 %i.ck) ; 2 uses
  %i.id = extractvalue { i64, i1 } %i.ic, 1
  %i.ie = extractvalue { i64, i1 } %i.ic, 0       ; 7 uses
  br i1 %i.id, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %bb.as, !prof !67

bb.as:                                            ; preds = %bb.ar
  %i.if = icmp samesign ult i64 %.064.i, 20
  br i1 %i.if, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  switch i32 %i.f, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread59 [
    i32 3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i99.i
    i32 1, label %bb.au
    i32 2, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  %i.ig = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ie, i64 1000) ; 2 uses
  %i.ih = extractvalue { i64, i1 } %i.ig, 1
  %i.ii = extractvalue { i64, i1 } %i.ig, 0
  br i1 %i.ih, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread59, !prof !1423

bb.av:                                            ; preds = %bb.at
  %i.ij = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ie, i64 1000000) ; 2 uses
  %i.ik = extractvalue { i64, i1 } %i.ij, 1
  %i.il = extractvalue { i64, i1 } %i.ij, 0
  br i1 %i.ik, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread59, !prof !1423

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i99.i: ; preds = %bb.at
  %i.im = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ie, i64 1000000000) ; 2 uses
  %i.in = extractvalue { i64, i1 } %i.im, 1
  %i.io = extractvalue { i64, i1 } %i.im, 0
  br i1 %i.in, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread59, !prof !1423

_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread59: ; preds = %bb.at, %bb.au, %bb.av, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i99.i
  %.pn25.i.i8.i97.i = phi i64 [ %i.ii, %bb.au ], [ %i.io, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i99.i ], [ %i.il, %bb.av ], [ %i.ie, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50

bb.aw:                                            ; preds = %bb.as
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 19
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !56
  %.not76.i = icmp eq i8 %i.iq, 46
  br i1 %.not76.i, label %bb.ax, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !141

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.ir = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.is = add nsw i64 %.064.i, -20                ; 3 uses
  switch i32 %i.f, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64 [
    i32 1, label %bb.ay
    i32 2, label %bb.az
    i32 3, label %bb.ba
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.it = icmp samesign ugt i64 %.064.i, 23
  br i1 %i.it, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64, label %bb.ba, !prof !67

bb.az:                                            ; preds = %bb.ax
  %i.iu = icmp samesign ugt i64 %.064.i, 26
  br i1 %i.iu, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64, label %bb.ba, !prof !67

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.pn.i.i = phi i64 [ 3, %bb.ay ], [ 6, %bb.az ], [ 9, %bb.ax ] ; 2 uses
  %i.iv = icmp eq i64 %.pn.i.i, %i.is
  br i1 %i.iv, label %bb.bb, label %bb.bc, !prof !141

bb.bb:                                            ; preds = %bb.ba
  %i.iw = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %i.ir, i64 noundef range(i64 0, -20) %i.is, ptr noundef nonnull %i.b)
  br i1 %i.iw, label %bb.be, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64, !prof !620

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.ix = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %i.ir, i64 noundef range(i64 0, -20) %i.is, ptr noundef nonnull %i.a)
  br i1 %i.ix, label %bb.bd, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.i, !prof !141

bb.bd:                                            ; preds = %bb.bc
  %reass.sub = sub i64 %.pn.i.i, %.064.i
  %switch.tableidx = add i64 %reass.sub, 19       ; 2 uses
  %i.iy = icmp ult i64 %switch.tableidx, 8
  br i1 %i.iy, label %switch.lookup, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread126.i

switch.lookup:                                    ; preds = %bb.bd
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK5arrow7compute8internal14ParseTimestamp4CallIlSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE, i64 %switch.tableidx
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.iz = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ja = mul i32 %i.iz, %switch.load
  store i32 %i.ja, ptr %i.b, align 4, !tbaa !3
  br label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread126.i

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread126.i: ; preds = %bb.bd, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.be

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.i: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64

bb.be:                                            ; preds = %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread126.i, %bb.bb
  switch i32 %i.f, label %default.unreachable.i [
    i32 3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i105.i
    i32 1, label %bb.bf
    i32 2, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.jb = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ie, i64 1000) ; 2 uses
  %i.jc = extractvalue { i64, i1 } %i.jb, 1
  br i1 %i.jc, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !1423

bb.bg:                                            ; preds = %bb.be
  %i.jd = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ie, i64 1000000) ; 2 uses
  %i.je = extractvalue { i64, i1 } %i.jd, 1
  br i1 %i.je, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !1423

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i105.i: ; preds = %bb.be
  %i.jf = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ie, i64 1000000000) ; 2 uses
  %i.jg = extractvalue { i64, i1 } %i.jf, 1
  br i1 %i.jg, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !1423

default.unreachable.i:                            ; preds = %bb.be
  unreachable

_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64: ; preds = %bb.ay, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.i, %bb.bb, %bb.ax, %bb.az, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i105.i, %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split

_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit: ; preds = %bb.bf, %bb.bg, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i105.i
  %.pn.i = phi { i64, i1 } [ %i.jb, %bb.bf ], [ %i.jf, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i105.i ], [ %i.jd, %bb.bg ]
  %.pn25.i.i8.i103.i = extractvalue { i64, i1 } %.pn.i, 0
  %i.jh = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ji = zext i32 %i.jh to i64
  %i.jj = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.pn25.i.i8.i103.i, i64 %i.ji) ; 2 uses
  %i.jk = extractvalue { i64, i1 } %i.jj, 1
  %i.jl = extractvalue { i64, i1 } %i.jj, 0       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %i.jk, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50, !prof !447

_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i, %bb.aq, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i94.i, %bb.ao, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i, %bb.ap, %bb.an, %bb.am, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i88.i, %bb.aj, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i, %bb.ak, %bb.ai, %bb.ah, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79.i, %bb.x, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i, %bb.y, %bb.u, %bb.av, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i99.i, %bb.ar, %bb.aw, %bb.z, %.sink.split.i, %bb.ag, %bb.al, %bb.au, %bb.t, %bb.ad, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64
  %.248.ph = phi i8 [ %.1, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64 ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79.i ], [ 0, %bb.z ], [ 0, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i ], [ 0, %bb.ad ], [ %.1, %bb.am ], [ %.1, %bb.an ], [ %.1, %bb.ao ], [ %.1, %bb.ap ], [ %.1, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i94.i ], [ %.1, %bb.aq ], [ %.1, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i ], [ %.1, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i ], [ %.1, %bb.ai ], [ %.1, %bb.aj ], [ %.1, %bb.ak ], [ %.1, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i88.i ], [ %.1, %bb.al ], [ %.1, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i ], [ %.1, %bb.ag ], [ %.1, %bb.aw ], [ %.1, %bb.av ], [ %.1, %bb.au ], [ %.1, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i99.i ], [ %.1, %bb.ar ], [ %.1, %bb.ah ], [ %.1, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread

_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread: ; preds = %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i, %bb.g, %bb.e, %bb.d, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i, %bb.i, %bb.c, %bb.f, %bb.b, %bb.h, %bb.o, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i, %bb.p, %bb.a, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit
  %.248 = phi i8 [ 0, %bb.g ], [ %.1, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit ], [ 0, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i ], [ 0, %bb.a ], [ 0, %bb.p ], [ 0, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i ], [ 0, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i ], [ 0, %bb.o ], [ 0, %bb.h ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.i ], [ 0, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i ], [ 0, %bb.d ], [ 0, %bb.e ], [ %.248.ph, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split ]
  %.24246 = phi i64 [ 0, %bb.g ], [ %i.jl, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit ], [ 0, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i ], [ 0, %bb.a ], [ 0, %bb.p ], [ 0, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i ], [ 0, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i ], [ 0, %bb.o ], [ 0, %bb.h ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.i ], [ 0, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.jm = load ptr, ptr %0, align 8, !tbaa !1421, !nonnull !152, !align !319 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !45
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.jp = load ptr, ptr %i.jo, align 8
  call void %i.jp(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(112) %i.jm, i1 noundef zeroext false)
  invoke void @_ZN5arrow6Status7InvalidIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.bh unwind label %bb.bk

bb.bh:                                            ; preds = %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread
  %i.jq = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK5arrow7compute8internal14ParseTimestamp4CallIlSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE:bb.a
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !1431
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !1431
  %i.ky = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i11, label %_ZN5arrow6StatusD2Ev.exit14, label %bb.bp, !prof !141

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 1
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !142, !range !151, !noundef !152
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %_ZN5arrow6StatusD2Ev.exit14, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit14

_ZN5arrow6StatusD2Ev.exit14:                      ; preds = %bb.bq, %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.lc = load ptr, ptr %11, align 8, !tbaa !138
  store ptr %i.lc, ptr %4, align 8, !tbaa !138
  store ptr null, ptr %11, align 8, !tbaa !138
  %i.ld = load ptr, ptr %12, align 8, !tbaa !237  ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.lf = icmp eq ptr %i.ld, %i.le
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZN5arrow6StatusD2Ev.exit14
  %i.lg = load i64, ptr %i.le, align 8, !tbaa !56
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZN5arrow6StatusD2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.by

bb.br:                                            ; preds = %bb.bm
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, %bb.br
  %eh.lpad-body = phi { ptr, i32 } [ %i.li, %bb.br ], [ %i.ks, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i ]
  %i.lj = load ptr, ptr %12, align 8, !tbaa !237  ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %.body
  %i.lm = load i64, ptr %i.lk, align 8, !tbaa !56
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.ln) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.bz

bb.bs:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.lo = load ptr, ptr %0, align 8, !tbaa !1421, !nonnull !152, !align !319 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !45
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 32
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(112) %i.lo, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !1436
  invoke void @_ZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEERA27_S2_EEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 1 dereferenceable(27) @.str.25)
          to label %.noexc26 unwind label %bb.bx

.noexc26:                                         ; preds = %bb.bs
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %13, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %.noexc26
  %i.ls = load ptr, ptr %5, align 8, !tbaa !237, !noalias !1436 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.lu = icmp eq ptr %i.ls, %i.lt
  br i1 %i.lu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24: ; preds = %bb.bt
  %i.lv = load i64, ptr %i.lt, align 8, !tbaa !56, !noalias !1436
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lw) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i25

bb.bu:                                            ; preds = %.noexc26
  %i.lx = landingpad { ptr, i32 }
          cleanup
  %i.ly = load ptr, ptr %5, align 8, !tbaa !237, !noalias !1436 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ma = icmp eq ptr %i.ly, %i.lz
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i21: ; preds = %bb.bu
  %i.mb = load i64, ptr %i.lz, align 8, !tbaa !56, !noalias !1436
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i22: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !1436
  br label %.body27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i25: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !1436
  %i.md = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.md, null
  br i1 %.not.i.i29, label %_ZN5arrow6StatusD2Ev.exit32, label %bb.bv, !prof !141

bb.bv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i25
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 1
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !142, !range !151, !noundef !152
  %i.mg = trunc nuw i8 %i.mf to i1
  br i1 %i.mg, label %_ZN5arrow6StatusD2Ev.exit32, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit32

_ZN5arrow6StatusD2Ev.exit32:                      ; preds = %bb.bw, %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i25
  %i.mh = load ptr, ptr %13, align 8, !tbaa !138
  store ptr %i.mh, ptr %4, align 8, !tbaa !138
  store ptr null, ptr %13, align 8, !tbaa !138
  %i.mi = load ptr, ptr %14, align 8, !tbaa !237  ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.mk = icmp eq ptr %i.mi, %i.mj
  br i1 %i.mk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZN5arrow6StatusD2Ev.exit32
  %i.ml = load i64, ptr %i.mj, align 8, !tbaa !56
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.mm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZN5arrow6StatusD2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.by

bb.bx:                                            ; preds = %bb.bs
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %.body27

.body27:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i22, %bb.bx
  %eh.lpad-body28 = phi { ptr, i32 } [ %i.mn, %bb.bx ], [ %i.lx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i22 ]
  %i.mo = load ptr, ptr %14, align 8, !tbaa !237  ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.mq = icmp eq ptr %i.mo, %i.mp
  br i1 %i.mq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %.body27
  %i.mr = load i64, ptr %i.mp, align 8, !tbaa !56
  %i.ms = add i64 %i.mr, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.ms) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %.body27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.bz

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50
  ret i64 %.24247

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %eh.lpad-body28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %i.ka, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1, !tbaa !56
  %.not = icmp eq i8 %i.b, 58
  br i1 %.not, label %bb.b, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, !prof !141

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !56
  %i.d = add i8 %i.c, -48                         ; 2 uses
  %i.e = icmp ult i8 %i.d, 10
  br i1 %i.e, label %bb.c, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, !prof !444

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !56
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %narrow.i = mul nuw nsw i8 %i.d, 10
  %i.i = icmp ult i8 %i.h, 10
  %i.j = add nuw nsw i8 %i.h, %narrow.i           ; 2 uses
  br i1 %i.i, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, !prof !444

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit:    ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !56
  %i.m = add i8 %i.l, -48                         ; 2 uses
  %i.n = icmp ult i8 %i.m, 10
  br i1 %i.n, label %bb.d, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread

bb.d:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i8, ptr %i.o, align 1, !tbaa !56
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %narrow.i10 = mul nuw nsw i8 %i.m, 10
  %i.r = icmp ult i8 %i.q, 10
  %i.s = add nuw nsw i8 %i.q, %narrow.i10         ; 2 uses
  br i1 %i.r, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11:  ; preds = %bb.d
  %i.t = icmp ugt i8 %i.j, 23
  %i.u = icmp ugt i8 %i.s, 59
  %or.cond8 = select i1 %i.t, i1 true, i1 %i.u, !prof !1426
  br i1 %or.cond8, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, label %bb.e, !prof !1427

bb.e:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11
  %i.v = zext nneg i8 %i.j to i64
  %i.w = zext nneg i8 %i.s to i64
  %i.x = mul nuw nsw i64 %i.v, 60
  %i.y = add nuw nsw i64 %i.x, %i.w
  %i.z = mul nuw nsw i64 %i.y, 60
  store i64 %i.z, ptr %1, align 8, !tbaa !270
  br label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread: ; preds = %bb.d, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, %bb.c, %bb.b, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11, %bb.a, %bb.e
  %.0 = phi i1 [ true, %bb.e ], [ false, %bb.a ], [ false, %bb.c ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11 ], [ false, %bb.b ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !56
  %i.c = add i8 %i.b, -48                         ; 2 uses
  %i.d = icmp ult i8 %i.c, 10
  %i.e = zext i8 %i.c to i32                      ; 2 uses
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %.not136 = icmp eq i64 %1, 1
  br i1 %.not136, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !56
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %i.i = mul nuw nsw i32 %i.e, 10
  %i.j = icmp ult i8 %i.h, 10
  %i.k = zext i8 %i.h to i32
  %i.l = add nuw nsw i32 %i.i, %i.k               ; 2 uses
  br i1 %i.j, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %.not137 = icmp eq i64 %1, 2
  br i1 %.not137, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.f, align 1, !tbaa !56
  %i.o = add i8 %i.n, -48                         ; 2 uses
  %i.p = mul nuw nsw i32 %i.l, 10
  %i.q = icmp ult i8 %i.o, 10
  %i.r = zext i8 %i.o to i32
  %i.s = add nuw nsw i32 %i.p, %i.r               ; 2 uses
  br i1 %i.q, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %.not138 = icmp eq i64 %1, 3
  br i1 %.not138, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.m, align 1, !tbaa !56
  %i.v = add i8 %i.u, -48                         ; 2 uses
  %i.w = mul nuw nsw i32 %i.s, 10
  %i.x = icmp ult i8 %i.v, 10
  %i.y = zext i8 %i.v to i32
  %i.z = add nuw nsw i32 %i.w, %i.y               ; 2 uses
  br i1 %i.x, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %.not139 = icmp eq i64 %1, 4
  br i1 %.not139, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !56
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %i.ad = mul nuw nsw i32 %i.z, 10
  %i.ae = icmp ult i8 %i.ac, 10
  %i.af = zext i8 %i.ac to i32
  %i.ag = add nuw nsw i32 %i.ad, %i.af            ; 2 uses
  br i1 %i.ae, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %.not140 = icmp eq i64 %1, 5
  br i1 %.not140, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !56
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = mul nuw nsw i32 %i.ag, 10
  %i.al = icmp ult i8 %i.aj, 10
  %i.am = zext i8 %i.aj to i32
  %i.an = add nuw nsw i32 %i.ak, %i.am            ; 2 uses
  br i1 %i.al, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %.not141 = icmp eq i64 %1, 6
  br i1 %.not141, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !56
  %i.aq = add i8 %i.ap, -48                       ; 2 uses
  %i.ar = mul nuw nsw i32 %i.an, 10
  %i.as = icmp ult i8 %i.aq, 10
  %i.at = zext i8 %i.aq to i32
  %i.au = add nuw nsw i32 %i.ar, %i.at            ; 2 uses
  br i1 %i.as, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %.not142 = icmp eq i64 %1, 7
  br i1 %.not142, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !56
  %i.ax = add i8 %i.aw, -48                       ; 2 uses
  %i.ay = mul nuw nsw i32 %i.au, 10
  %i.az = icmp ult i8 %i.ax, 10
  %i.ba = zext i8 %i.ax to i32
  %i.bb = add nuw nsw i32 %i.ay, %i.ba            ; 2 uses
  br i1 %i.az, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %.not143 = icmp eq i64 %1, 8
  br i1 %.not143, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !56
  %i.be = add i8 %i.bd, -48                       ; 2 uses
  %i.bf = mul nuw nsw i32 %i.bb, 10
  %i.bg = add i64 %1, -9                          ; 2 uses
  %i.bh = icmp ult i8 %i.be, 10
  %i.bi = zext i8 %i.be to i32
  %i.bj = add nuw nsw i32 %i.bf, %i.bi            ; 3 uses
  br i1 %i.bh, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %.not144 = icmp eq i64 %i.bg, 0
  br i1 %.not144, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = icmp samesign ugt i32 %i.bj, 429496729
  br i1 %i.bk, label %.critedge, label %bb.u, !prof !67

bb.u:                                             ; preds = %bb.t
  %i.bl = load i8, ptr %i.bc, align 1, !tbaa !56
  %i.bm = add i8 %i.bl, -48                       ; 2 uses
  %.not145 = icmp ne i64 %i.bg, 1
  %i.bn = icmp ugt i8 %i.bm, 9
  %or.cond = or i1 %.not145, %i.bn
  br i1 %or.cond, label %.critedge, label %bb.v, !prof !1428

bb.v:                                             ; preds = %bb.u
  %i.bo = mul nuw i32 %i.bj, 10                   ; 3 uses
  %i.bp = zext nneg i8 %i.bm to i32
  %i.bq = add i32 %i.bo, %i.bp                    ; 2 uses
  %.not147 = icmp ult i32 %i.bq, %i.bo
  %.146 = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 %i.bo)
  br i1 %.not147, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %.10105 = phi i32 [ %.146, %bb.v ], [ %i.bj, %bb.s ], [ %i.bb, %bb.q ], [ %i.au, %bb.o ], [ %i.an, %bb.m ], [ %i.ag, %bb.k ], [ %i.z, %bb.i ], [ %i.s, %bb.g ], [ %i.l, %bb.e ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  store i32 %.10105, ptr %2, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %bb.u, %bb.t, %bb.v, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.w
  %.10 = phi i1 [ false, %bb.b ], [ true, %bb.w ], [ false, %bb.v ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.t ], [ false, %bb.u ]
  ret i1 %.10
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEERA128_S2_EEESF_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(23) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(128) %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !309, !nonnull !152, !align !319
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #20
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEERA128_S2_EEESF_DpOT_ENKUlOT_E3_clIS4_EEDaSM_.exit unwind label %bb.c ; 0 uses
end_hunk_3
