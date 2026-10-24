Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/gmock-all?download=true
inline.NumInlined: 2053
inline.NumDeleted: 922
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase22DescribeNegationToImplEPSo:bb.a
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(128) %i.cr) #34, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit65

_ZN7testing7MessageD2Ev.exit65:                   ; preds = %.body55, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.u

bb.o:                                             ; preds = %bb.a
  %i.cv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.29, i64 noundef 62) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.cw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.30, i64 noundef 61) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %_ZN7testing7MessageD2Ev.exit62, %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !105
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !102
  %.not66 = icmp eq ptr %i.cz, %i.da
  br i1 %.not66, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %bb.t
  %.068 = phi i64 [ %i.dr, %bb.t ], [ 0, %bb.q ]  ; 3 uses
  %.01767 = phi ptr [ %.str.23..str.9, %bb.t ], [ @.str.4, %bb.q ] ; 2 uses
  %i.db = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01767) #34
  %i.dc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.01767, i64 noundef %i.db) ; 0 uses
  %i.dd = load i32, ptr %0, align 8, !tbaa !98
  %i.de = icmp eq i32 %i.dd, 3
  br i1 %i.de, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.21, i64 noundef 12) ; 0 uses
  %i.dg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.068)
  %i.dh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull @.str.12, i64 noundef 1) ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.22, i64 noundef 14) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dj = load ptr, ptr %i.cx, align 8, !tbaa !102
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.068
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !104 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !38
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull %1)
  %i.dp = load i32, ptr %0, align 8, !tbaa !98
  %i.dq = icmp eq i32 %i.dp, 3
  %.str.23..str.9 = select i1 %i.dq, ptr @.str.23, ptr @.str.9
  %i.dr = add i64 %.068, 1                        ; 2 uses
  %i.ds = load ptr, ptr %i.cy, align 8, !tbaa !105
  %i.dt = load ptr, ptr %i.cx, align 8, !tbaa !102
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = ashr exact i64 %i.dw, 3
  %.not = icmp eq i64 %i.dr, %i.dx
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !316

.loopexit:                                        ; preds = %bb.t, %bb.q, %_ZN7testing7MessageD2Ev.exit41, %bb.c
  ret void

bb.u:                                             ; preds = %_ZN7testing7MessageD2Ev.exit65, %_ZN7testing7MessageD2Ev.exit47
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit47 ], [ %eh.lpad-body56, %_ZN7testing7MessageD2Ev.exit65 ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK7testing8internal35UnorderedElementsAreMatcherImplBase17VerifyMatchMatrixERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EERKNS0_11MatchMatrixEPNS_19MatchResultListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %i.a = load i64, ptr %2, align 8, !tbaa !80     ; 4 uses
  %i.b = icmp eq i64 %i.a, 0                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %or.cond = select i1 %i.b, i1 %i.e, i1 false
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEED2Ev.exit103, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !98
  %i.g = icmp ne i32 %i.f, 3
  %i.h = icmp eq i64 %i.a, %i.d
  %or.cond170.not172 = select i1 %i.g, i1 true, i1 %i.h ; 2 uses
  %brmerge = or i1 %i.b, %or.cond170.not172
  br i1 %brmerge, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !108  ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.thread, label %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit

_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit: ; preds = %bb.c
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.31, i64 noundef 10) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.l = load i64, ptr %2, align 8, !tbaa !80
  call void @_ZN7testing8internal35UnorderedElementsAreMatcherImplBase8ElementsEm(ptr dead_on_unwind nonnull writable sret(%"class.testing::Message") align 8 %5, i64 noundef %i.l)
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !108  ; 2 uses
  %.not.i56 = icmp eq ptr %i.m, null
  br i1 %.not.i56, label %_ZN7testing19MatchResultListenerlsIA2_cEERS0_RKT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  %i.n = load ptr, ptr %4, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !29
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.n, i64 noundef %i.p)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc
  %i.r = load ptr, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !30
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #35
  br label %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit

bb.e:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.e
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !30
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %.body

_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !108  ; 2 uses
  %.not.i57 = icmp eq ptr %.pr, null
  br i1 %.not.i57, label %_ZN7testing19MatchResultListenerlsIA2_cEERS0_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr, ptr noundef nonnull @.str.9, i64 noundef 1)
          to label %_ZN7testing19MatchResultListenerlsIA2_cEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing19MatchResultListenerlsIA2_cEERS0_RKT_.exit: ; preds = %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit, %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit, %bb.f
  %i.ad = load ptr, ptr %5, align 8, !tbaa !101   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZN7testing19MatchResultListenerlsIA2_cEERS0_RKT_.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(128) %i.ad) #34, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZN7testing19MatchResultListenerlsIA2_cEERS0_RKT_.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %.pre = load i64, ptr %2, align 8, !tbaa !80
  br label %.thread

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ]
  %i.ai = load ptr, ptr %5, align 8, !tbaa !101   ; 3 uses
  %.not.i.i59 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i59, label %_ZN7testing7MessageD2Ev.exit61, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60: ; preds = %.body
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(128) %i.ai) #34, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit61

_ZN7testing7MessageD2Ev.exit61:                   ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit107

.thread:                                          ; preds = %bb.b, %bb.c, %_ZN7testing7MessageD2Ev.exit
  %i.am = phi i64 [ %i.a, %bb.b ], [ %.pre, %_ZN7testing7MessageD2Ev.exit ], [ %i.a, %bb.c ] ; 5 uses
  %6 = phi i1 [ %or.cond170.not172, %bb.b ], [ false, %_ZN7testing7MessageD2Ev.exit ], [ false, %bb.c ]
  %i.an = zext i1 %6 to i8                        ; 3 uses
  %i.ao = icmp slt i64 %i.am, 0
  br i1 %i.ao, label %.noexc62, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

.noexc62:                                         ; preds = %.thread
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #37
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.thread
  %.not.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit, label %.noexc63

.noexc63:                                         ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ap = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #36 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.am
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ap, i8 0, i64 %i.am, i1 false)
  %i.ar = ptrtoint ptr %i.aq to i64
  br label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit:            ; preds = %.noexc63, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.15132.0 = phi i64 [ %i.ar, %.noexc63 ], [ 0, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 4 uses
  %.sroa.0126.0 = phi ptr [ %i.ap, %.noexc63 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  %i.as = load i64, ptr %i.c, align 8, !tbaa !84  ; 5 uses
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.h, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i64

bb.h:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #37
          to label %.noexc68 unwind label %bb.j

.noexc68:                                         ; preds = %bb.h
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i64: ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit
  %.not.i.i.i.i65 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i65, label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit70, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i64
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #36
          to label %.noexc69 unwind label %bb.j   ; 3 uses

.noexc69:                                         ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.au, i8 0, i64 %i.as, i1 false)
  %i.aw = ptrtoint ptr %i.av to i64
  br label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit70

_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit70:          ; preds = %.noexc69, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i64
  %.sroa.0118.0 = phi ptr [ %i.au, %.noexc69 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i64 ] ; 16 uses
  %.sroa.15.0 = phi i64 [ %i.aw, %.noexc69 ], [ 0, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i64 ] ; 4 uses
  %i.ax = load i64, ptr %2, align 8, !tbaa !80    ; 4 uses
  %.not193 = icmp eq i64 %i.ax, 0
  br i1 %.not193, label %._crit_edge181.split, label %.preheader176.lr.ph

.preheader176.lr.ph:                              ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit70
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !84  ; 15 uses
  %.not194 = icmp eq i64 %i.ay, 0
  br i1 %.not194, label %._crit_edge181.split, label %.preheader176.lr.ph.split

.preheader176.lr.ph.split:                        ; preds = %.preheader176.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !85 ; 4 uses
  %scevgep = getelementptr i8, ptr %.sroa.0126.0, i64 %i.ax ; 2 uses
  %scevgep232 = getelementptr i8, ptr %.sroa.0118.0, i64 %i.ay ; 2 uses
  %i.bb = mul i64 %i.ay, %i.ax
  %scevgep233 = getelementptr i8, ptr %i.ba, i64 %i.bb ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 4
  %bound0 = icmp ult ptr %.sroa.0126.0, %scevgep232
  %bound1 = icmp ult ptr %.sroa.0118.0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0234 = icmp ult ptr %.sroa.0126.0, %scevgep233
  %bound1235 = icmp ult ptr %i.ba, %scevgep
  %found.conflict236 = and i1 %bound0234, %bound1235
  %stride.check = icmp slt i64 %i.ay, 0
  %i.bc = or i1 %found.conflict236, %stride.check
  %conflict.rdx = or i1 %found.conflict, %i.bc
  %bound0237 = icmp ult ptr %.sroa.0118.0, %scevgep233
  %bound1238 = icmp ult ptr %i.ba, %scevgep232
  %found.conflict239 = and i1 %bound0237, %bound1238
  %conflict.rdx240 = or i1 %conflict.rdx, %found.conflict239
  %min.iters.check241 = icmp ult i64 %i.ay, 32
  %i.bd = and i64 %i.ay, 28
  %n.vec = and i64 %i.ay, 9223372036854775776     ; 4 uses
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.bd, 0
  %n.vec246 = and i64 %i.ay, 9223372036854775804  ; 3 uses
  %cmp.n252 = icmp eq i64 %i.ay, %n.vec246
  %xtraiter = and i64 %i.ay, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader176.lr.ph.split, %._crit_edge
  %.037180 = phi i64 [ 0, %.preheader176.lr.ph.split ], [ %i.cw, %._crit_edge ] ; 3 uses
  %i.be = mul i64 %i.ay, %.037180
  %i.bf = getelementptr i8, ptr %i.ba, i64 %i.be  ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0126.0, i64 %.037180 ; 6 uses
  %.promoted = load i8, ptr %i.bg, align 1, !tbaa !30 ; 3 uses
  %brmerge258 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx240
  br i1 %brmerge258, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check241, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bh = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <16 x i8> [ %i.bh, %vector.ph ], [ %i.bo, %vector.body ]
  %vec.phi242 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.bp, %vector.body ]
  %i.bi = getelementptr i8, ptr %i.bf, i64 %index ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %wide.load = load <16 x i8>, ptr %i.bi, align 1, !tbaa !30, !alias.scope !327
  %wide.load243 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !30, !alias.scope !327
  %i.bk = icmp eq <16 x i8> %wide.load, splat (i8 1)
  %i.bl = icmp eq <16 x i8> %wide.load243, splat (i8 1)
  %i.bm = zext <16 x i1> %i.bk to <16 x i8>       ; 2 uses
  %i.bn = zext <16 x i1> %i.bl to <16 x i8>       ; 2 uses
  %i.bo = or <16 x i8> %vec.phi, %i.bm            ; 2 uses
  %i.bp = or <16 x i8> %vec.phi242, %i.bn         ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0118.0, i64 %index ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %wide.load244 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !30, !alias.scope !328, !noalias !327
  %wide.load245 = load <16 x i8>, ptr %i.br, align 1, !tbaa !30, !alias.scope !328, !noalias !327
  %i.bs = or <16 x i8> %wide.load244, %i.bm
  %i.bt = or <16 x i8> %wide.load245, %i.bn
  store <16 x i8> %i.bs, ptr %i.bq, align 1, !tbaa !30, !alias.scope !328, !noalias !327
  store <16 x i8> %i.bt, ptr %i.br, align 1, !tbaa !30, !alias.scope !328, !noalias !327
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !320

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i8> %i.bp, %i.bo
  %i.bv = call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  store i8 %i.bv, ptr %i.bg, align 1, !tbaa !30, !alias.scope !329, !noalias !330
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !331

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.bv, %vec.epilog.iter.check ], [ %.promoted, %vector.main.loop.iter.check ]
  %i.bw = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index247 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next251, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi248 = phi <4 x i8> [ %i.bw, %vec.epilog.ph ], [ %i.ca, %vec.epilog.vector.body ]
  %i.bx = getelementptr i8, ptr %i.bf, i64 %index247
  %wide.load249 = load <4 x i8>, ptr %i.bx, align 1, !tbaa !30, !alias.scope !327
  %i.by = icmp eq <4 x i8> %wide.load249, splat (i8 1)
  %i.bz = zext <4 x i1> %i.by to <4 x i8>         ; 2 uses
  %i.ca = or <4 x i8> %vec.phi248, %i.bz          ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0118.0, i64 %index247 ; 2 uses
  %wide.load250 = load <4 x i8>, ptr %i.cb, align 1, !tbaa !30, !alias.scope !328, !noalias !327
  %i.cc = or <4 x i8> %wide.load250, %i.bz
  store <4 x i8> %i.cc, ptr %i.cb, align 1, !tbaa !30, !alias.scope !328, !noalias !327
  %index.next251 = add nuw i64 %index247, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next251, %n.vec246
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !322

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ce = call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.ca) ; 2 uses
  store i8 %i.ce, ptr %i.bg, align 1, !tbaa !30, !alias.scope !329, !noalias !330
  br i1 %cmp.n252, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %.promoted, %iter.check ], [ %i.ce, %vec.epilog.middle.block ], [ %i.bv, %vec.epilog.iter.check ] ; 2 uses
  %.036179.ph = phi i64 [ 0, %iter.check ], [ %n.vec246, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 5 uses
  %.neg = or disjoint i64 %.036179.ph, 1
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.cf = getelementptr i8, ptr %i.bf, i64 %.036179.ph
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !30
  %i.ch = icmp eq i8 %i.cg, 1
  %i.ci = zext i1 %i.ch to i8                     ; 2 uses
  %i.cj = or i8 %.ph, %i.ci                       ; 2 uses
  store i8 %i.cj, ptr %i.bg, align 1, !tbaa !30
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0118.0, i64 %.036179.ph ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !30
  %i.cm = or i8 %i.cl, %i.ci
  store i8 %i.cm, ptr %i.ck, align 1, !tbaa !30
  %i.cn = or disjoint i64 %.036179.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.unr = phi i8 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cj, %vec.epilog.scalar.ph.prol ]
  %.036179.unr = phi i64 [ %.036179.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cn, %vec.epilog.scalar.ph.prol ]
  %i.co = icmp eq i64 %i.ay, %.neg
  br i1 %i.co, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge181.split:                             ; preds = %._crit_edge, %.preheader176.lr.ph, %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit70
  %i.cp = load i32, ptr %0, align 8, !tbaa !98    ; 3 uses
  %i.cq = and i32 %i.cp, 1
  %.not47 = icmp eq i32 %i.cq, 0
  br i1 %.not47, label %.loopexit175, label %.preheader

end_hunk_0
