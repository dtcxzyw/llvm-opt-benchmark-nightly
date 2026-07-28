inline.NumInlined: 4507
inline.NumDeleted: 1580
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10Date32TypeENS_10StringTypeENS1_9ParseDateIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
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
  %i.bn = add i8 %i.bl, %narrow.i10.i             ; 3 uses
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
  %12 = add nuw nsw i64 %i.bu, 4294967295
  %13 = and i64 %12, 4294967295
  %i.bv = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %13
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !56
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i: ; preds = %.thread.i.i.i, %bb.r
  %.sroa.03.0.i.i.i = phi i8 [ %i.bw, %.thread.i.i.i ], [ 29, %bb.r ]
  %.not42.i = icmp ult i8 %.sroa.03.0.i.i.i, %i.bn
  br i1 %.not42.i, label %bb.s, label %bb.z, !prof !447

bb.s:                                             ; preds = %bb.o, %bb.i, %bb.m, %bb.j, %bb.p, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i, %bb.k, %bb.l, %bb.n, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @_ZN5arrow10TypeTraitsINS_10Date32TypeEE14type_singletonEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %11)
  %i.bx = load ptr, ptr %11, align 8, !tbaa !53   ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !45
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.bx, i1 noundef zeroext false)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5arrow6Status7InvalidIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cb = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i19, label %_ZN5arrow6StatusD2Ev.exit22, label %bb.v, !prof !141

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !142, !range !151, !noundef !152
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZN5arrow6StatusD2Ev.exit22, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit22

_ZN5arrow6StatusD2Ev.exit22:                      ; preds = %bb.w, %bb.v, %bb.u
  %i.cf = load ptr, ptr %9, align 8, !tbaa !138
  store ptr %i.cf, ptr %4, align 8, !tbaa !138
  store ptr null, ptr %9, align 8, !tbaa !138
  %i.cg = load ptr, ptr %10, align 8, !tbaa !237  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN5arrow6StatusD2Ev.exit22
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !56
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZN5arrow6StatusD2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.aa

bb.x:                                             ; preds = %bb.s
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.y:                                             ; preds = %bb.t
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %10, align 8, !tbaa !237  ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.y
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !56
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.x ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.cm, %bb.y ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.ab

bb.z:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i
  %i.cs = zext nneg i16 %i.av to i32
  %i.ct = icmp samesign ult i8 %i.be, 3
  %.neg.i.i.i = sext i1 %i.ct to i32
  %i.cu = add nsw i32 %.neg.i.i.i, %i.cs          ; 4 uses
  %i.cv = zext nneg i8 %i.be to i32
  %i.cw = zext i8 %i.bn to i32
  %i.cx = add nsw i32 %i.cu, 65137
  %i.cy = icmp slt i32 %i.cu, 0
  %i.cz = select i1 %i.cy, i32 %i.cx, i32 %i.cu
  %.lhs.trunc.i = trunc i32 %i.cz to i16
  %i.da = sdiv i16 %.lhs.trunc.i, 400
  %.sext.i = sext i16 %i.da to i32                ; 2 uses
  %.neg15.i.i.i = mul nsw i32 %.sext.i, -400
  %i.db = add nsw i32 %.neg15.i.i.i, %i.cu        ; 3 uses
  %i.dc = icmp samesign ugt i8 %i.be, 2
  %.v.i.i.i = select i1 %i.dc, i32 -3, i32 9
  %i.dd = add nsw i32 %.v.i.i.i, %i.cv
  %i.de = mul nsw i32 %i.dd, 153
  %i.df = add nsw i32 %i.de, 2
  %i.dg = udiv i32 %i.df, 5
  %i.dh = mul nsw i32 %i.db, 365
  %i.di = lshr i32 %i.db, 2
  %i.dj = udiv i32 %i.db, 100
  %i.dk = mul nsw i32 %.sext.i, 146097
  %i.dl = add nsw i32 %i.dg, -719469
  %i.dm = add nsw i32 %i.dl, %i.dk
  %i.dn = add nsw i32 %i.dm, %i.di
  %i.do = add nsw i32 %i.dn, %i.dh
  %i.dp = sub nsw i32 %i.do, %i.dj
  %i.dq = add nsw i32 %i.dp, %i.cw
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.010 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.dq, %bb.z ]
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
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_10Date64TypeENS_10StringTypeENS1_9ParseDateIS4_EEE9ArrayExecIS4_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
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
  %narrow47.i = add nuw nsw i8 %i.af, %narrow.i
  %i.al = zext nneg i8 %narrow47.i to i16
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
  %i.bn = add i8 %i.bl, %narrow.i10.i             ; 3 uses
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
  %12 = add nuw nsw i64 %i.bu, 4294967295
  %13 = and i64 %12, 4294967295
  %i.bv = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %13
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !56
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i: ; preds = %.thread.i.i.i, %bb.r
  %.sroa.03.0.i.i.i = phi i8 [ %i.bw, %.thread.i.i.i ], [ 29, %bb.r ]
  %.not41.i = icmp ult i8 %.sroa.03.0.i.i.i, %i.bn
  br i1 %.not41.i, label %bb.s, label %bb.z, !prof !447

bb.s:                                             ; preds = %bb.o, %bb.i, %bb.m, %bb.j, %bb.p, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i, %bb.k, %bb.l, %bb.n, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @_ZN5arrow10TypeTraitsINS_10Date64TypeEE14type_singletonEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %11)
  %i.bx = load ptr, ptr %11, align 8, !tbaa !53   ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !45
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.bx, i1 noundef zeroext false)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5arrow6Status7InvalidIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cb = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i19, label %_ZN5arrow6StatusD2Ev.exit22, label %bb.v, !prof !141

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !142, !range !151, !noundef !152
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZN5arrow6StatusD2Ev.exit22, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit22

_ZN5arrow6StatusD2Ev.exit22:                      ; preds = %bb.w, %bb.v, %bb.u
  %i.cf = load ptr, ptr %9, align 8, !tbaa !138
  store ptr %i.cf, ptr %4, align 8, !tbaa !138
  store ptr null, ptr %9, align 8, !tbaa !138
  %i.cg = load ptr, ptr %10, align 8, !tbaa !237  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN5arrow6StatusD2Ev.exit22
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !56
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZN5arrow6StatusD2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.aa

bb.x:                                             ; preds = %bb.s
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.y:                                             ; preds = %bb.t
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %10, align 8, !tbaa !237  ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.y
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !56
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.x ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.cm, %bb.y ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.ab

bb.z:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i
  %i.cs = zext nneg i16 %i.av to i32
  %i.ct = icmp samesign ult i8 %i.be, 3
  %.neg.i.i.i = sext i1 %i.ct to i32
  %i.cu = add nsw i32 %.neg.i.i.i, %i.cs          ; 4 uses
  %i.cv = zext nneg i8 %i.be to i32
  %i.cw = zext i8 %i.bn to i32
  %i.cx = add nsw i32 %i.cu, 65137
  %i.cy = icmp slt i32 %i.cu, 0
  %i.cz = select i1 %i.cy, i32 %i.cx, i32 %i.cu
  %.lhs.trunc.i = trunc i32 %i.cz to i16
  %i.da = sdiv i16 %.lhs.trunc.i, 400
  %.sext.i = sext i16 %i.da to i32                ; 2 uses
  %.neg15.i.i.i = mul nsw i32 %.sext.i, -400
  %i.db = add nsw i32 %.neg15.i.i.i, %i.cu        ; 3 uses
  %i.dc = icmp samesign ugt i8 %i.be, 2
  %.v.i.i.i = select i1 %i.dc, i32 -3, i32 9
  %i.dd = add nsw i32 %.v.i.i.i, %i.cv
  %i.de = mul nsw i32 %i.dd, 153
  %i.df = add nsw i32 %i.de, 2
  %i.dg = udiv i32 %i.df, 5
  %i.dh = mul nsw i32 %i.db, 365
  %i.di = lshr i32 %i.db, 2
  %i.dj = udiv i32 %i.db, 100
  %i.dk = mul nsw i32 %.sext.i, 146097
  %i.dl = add nsw i32 %i.dg, -719469
  %i.dm = add nsw i32 %i.dl, %i.dk
  %i.dn = add nsw i32 %i.dm, %i.di
  %i.do = add nsw i32 %i.dn, %i.dh
  %i.dp = sub nsw i32 %i.do, %i.dj
  %i.dq = add nsw i32 %i.dp, %i.cw
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul nsw i64 %i.dr, 86400000
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.010 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.ds, %bb.z ]
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

end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_13TimestampTypeENS_10StringTypeENS1_14ParseTimestampEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
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
  %narrow47.i.i = add nuw nsw i8 %i.q, %narrow.i.i
  %i.w = zext nneg i8 %narrow47.i.i to i16
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
  %i.ay = add i8 %i.aw, %narrow.i10.i.i           ; 3 uses
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
  %15 = add nuw nsw i64 %i.bf, 4294967295
  %16 = and i64 %15, 4294967295
  %i.bg = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %16
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !56
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i: ; preds = %.thread.i.i.i.i, %bb.k
  %.sroa.03.0.i.i.i.i = phi i8 [ %i.bh, %.thread.i.i.i.i ], [ 29, %bb.k ]
  %.not41.i.i = icmp ult i8 %.sroa.03.0.i.i.i.i, %i.ay
  br i1 %.not41.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, label %bb.l, !prof !447

bb.l:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i
  %i.bi = zext nneg i16 %i.ag to i32
  %i.bj = icmp samesign ult i8 %i.ap, 3
  %.neg.i.i.i.i = sext i1 %i.bj to i32
  %i.bk = add nsw i32 %.neg.i.i.i.i, %i.bi        ; 4 uses
  %i.bl = zext nneg i8 %i.ap to i32
  %i.bm = zext i8 %i.ay to i32
  %i.bn = add nsw i32 %i.bk, 65137
  %i.bo = icmp slt i32 %i.bk, 0
  %i.bp = select i1 %i.bo, i32 %i.bn, i32 %i.bk
  %.lhs.trunc.i.i = trunc i32 %i.bp to i16
  %i.bq = sdiv i16 %.lhs.trunc.i.i, 400
  %.sext.i.i = sext i16 %i.bq to i32              ; 2 uses
  %.neg15.i.i.i.i = mul nsw i32 %.sext.i.i, -400
  %i.br = add nsw i32 %.neg15.i.i.i.i, %i.bk      ; 3 uses
  %i.bs = icmp samesign ugt i8 %i.ap, 2
  %.v.i.i.i.i = select i1 %i.bs, i32 -3, i32 9
  %i.bt = add nsw i32 %.v.i.i.i.i, %i.bl
  %i.bu = mul nsw i32 %i.bt, 153
  %i.bv = add nsw i32 %i.bu, 2
  %i.bw = udiv i32 %i.bv, 5
  %i.bx = mul nsw i32 %i.br, 365
  %i.by = lshr i32 %i.br, 2
  %i.bz = udiv i32 %i.br, 100
  %i.ca = mul nsw i32 %.sext.i.i, 146097
  %i.cb = add nsw i32 %i.bw, -719469
  %i.cc = add nsw i32 %i.cb, %i.ca
  %i.cd = add nsw i32 %i.cc, %i.by
  %i.ce = add nsw i32 %i.cd, %i.bx
  %i.cf = sub nsw i32 %i.ce, %i.bz
  %i.cg = add nsw i32 %i.cf, %i.bm
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = mul nsw i64 %i.ch, 86400                ; 4 uses
  %i.cj = icmp eq i64 %2, 10
  br i1 %i.cj, label %bb.m, label %bb.p, !prof !444

bb.m:                                             ; preds = %bb.l
  switch i32 %i.f, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50 [
    i32 3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ck = mul nsw i64 %i.ch, 86400000
  br label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50

bb.o:                                             ; preds = %bb.m
  %i.cl = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ci, i64 1000000) ; 2 uses
  %i.cm = extractvalue { i64, i1 } %i.cl, 1
  %i.cn = extractvalue { i64, i1 } %i.cl, 0
  br i1 %i.cm, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50, !prof !1423

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i: ; preds = %bb.m
  %i.co = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ci, i64 1000000000) ; 2 uses
  %i.cp = extractvalue { i64, i1 } %i.co, 1
  %i.cq = extractvalue { i64, i1 } %i.co, 0
  br i1 %i.cp, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50, !prof !1423

bb.p:                                             ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !56
  switch i8 %i.cs, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread [
    i8 32, label %bb.q
    i8 84, label %bb.q
  ], !prof !1424

bb.q:                                             ; preds = %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i64 0, ptr %7, align 8
  %i.ct = getelementptr i8, ptr %3, i64 %2
  %i.cu = getelementptr i8, ptr %i.ct, i64 -1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !56  ; 3 uses
  %i.cw = icmp eq i8 %i.cv, 90
  br i1 %i.cw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cx = add i64 %2, -1
  br label %.sink.split.i

bb.s:                                             ; preds = %bb.q
  %i.cy = add i64 %2, -3                          ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 %i.cy ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !56  ; 4 uses
  switch i8 %i.da, label %bb.w [
    i8 43, label %bb.t
    i8 45, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !56
  %i.dd = add i8 %i.dc, -48                       ; 2 uses
  %i.de = icmp ult i8 %i.dd, 10
  br i1 %i.de, label %bb.u, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

bb.u:                                             ; preds = %bb.t
  %i.df = add i8 %i.cv, -48                       ; 2 uses
  %narrow.i.i.i = mul nuw nsw i8 %i.dd, 10
  %i.dg = icmp ugt i8 %i.df, 9
  %i.dh = add i8 %narrow.i.i.i, %i.df             ; 2 uses
  %i.di = icmp ugt i8 %i.dh, 23
  %or.cond.i.i = select i1 %i.dg, i1 true, i1 %i.di, !prof !1425
  br i1 %or.cond.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %bb.v, !prof !1425

bb.v:                                             ; preds = %bb.u
  %i.dj = zext nneg i8 %i.dh to i64
  %i.dk = mul nuw nsw i64 %i.dj, 3600             ; 2 uses
  %i.dl = icmp eq i8 %i.da, 43
  %i.dm = sub nsw i64 0, %i.dk
  %spec.select.i = select i1 %i.dl, i64 %i.dm, i64 %i.dk
  store i64 %spec.select.i, ptr %7, align 8, !tbaa !270
  br label %.sink.split.i

bb.w:                                             ; preds = %bb.s
  %i.dn = add i64 %2, -5                          ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 %i.dn ; 3 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !56  ; 2 uses
  switch i8 %i.dp, label %bb.ab [
    i8 43, label %bb.x
    i8 45, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !56
  %i.ds = add i8 %i.dr, -48                       ; 2 uses
  %i.dt = icmp ult i8 %i.ds, 10
  br i1 %i.dt, label %bb.y, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

bb.y:                                             ; preds = %bb.x
  %i.du = add i8 %i.da, -48                       ; 2 uses
  %narrow.i.i78.i = mul nuw nsw i8 %i.ds, 10
  %i.dv = icmp ult i8 %i.du, 10
  %i.dw = add i8 %narrow.i.i78.i, %i.du           ; 2 uses
  br i1 %i.dv, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79.i: ; preds = %bb.y
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 3
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !56
  %i.dz = add i8 %i.dy, -48                       ; 2 uses
  %i.ea = icmp ult i8 %i.dz, 10
  br i1 %i.ea, label %bb.z, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

bb.z:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79.i
  %i.eb = add i8 %i.cv, -48                       ; 2 uses
  %narrow.i8.i80.i = mul nuw nsw i8 %i.dz, 10
  %i.ec = icmp ult i8 %i.eb, 10
  %i.ed = add i8 %narrow.i8.i80.i, %i.eb          ; 2 uses
  br i1 %i.ec, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !444

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i: ; preds = %bb.z
  %i.ee = icmp ugt i8 %i.dw, 23
  %i.ef = icmp ugt i8 %i.ed, 59
  %or.cond6.i.i = select i1 %i.ee, i1 true, i1 %i.ef, !prof !1426
  br i1 %or.cond6.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %bb.aa, !prof !1427

bb.aa:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i
  %i.eg = zext nneg i8 %i.dw to i64
  %i.eh = zext nneg i8 %i.ed to i64
  %i.ei = mul nuw nsw i64 %i.eg, 60
  %i.ej = add nuw nsw i64 %i.ei, %i.eh
  %i.ek = mul nuw nsw i64 %i.ej, 60               ; 2 uses
  %i.el = icmp eq i8 %i.dp, 43
  %i.em = sub nsw i64 0, %i.ek
  %spec.select156.i = select i1 %i.el, i64 %i.em, i64 %i.ek
  store i64 %spec.select156.i, ptr %7, align 8, !tbaa !270
  br label %.sink.split.i

bb.ab:                                            ; preds = %bb.w
  %i.en = add i64 %2, -6                          ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 %i.en ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !56  ; 2 uses
  switch i8 %i.ep, label %.sink.split.i [
    i8 43, label %bb.ac
    i8 45, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %i.eq = icmp eq i8 %i.da, 58
  br i1 %i.eq, label %bb.ad, label %.sink.split.i

bb.ad:                                            ; preds = %bb.ac
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.es = call fastcc noundef zeroext i1 @_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_(ptr noundef nonnull %i.er, ptr noundef %7)
  br i1 %i.es, label %bb.ae, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !141

bb.ae:                                            ; preds = %bb.ad
  %i.et = icmp eq i8 %i.ep, 43
  br i1 %i.et, label %bb.af, label %.sink.split.i

bb.af:                                            ; preds = %bb.ae
end_hunk_2
