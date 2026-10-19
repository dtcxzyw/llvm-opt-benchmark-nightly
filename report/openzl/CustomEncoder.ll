Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/CustomEncoder?download=true
inline.NumInlined: 407
inline.NumDeleted: 318
begin_hunk_0_@_ZN6openzl13CustomEncoder21registerCustomEncoderERNS_10CompressorESt10shared_ptrIKS0_E:bb.a

bb.m:                                             ; preds = %bb.f, %_ZNSt12__shared_ptrIKN6openzl13CustomEncoderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cg = invoke i32 @_ZN6openzl10Compressor21registerCustomEncoderERK16ZL_MIEncoderDesc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(336) %7)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ch = load i8, ptr %i.bx, align 8, !tbaa !606, !range !77, !noundef !65
  %i.ci = trunc nuw i8 %i.ch to i1
  store i8 0, ptr %i.bx, align 8, !tbaa !606
  br i1 %i.ci, label %bb.o, label %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit

bb.o:                                             ; preds = %bb.n
  call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(208) %6) #23
  br label %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.cj = load ptr, ptr %5, align 8, !tbaa !76    ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !81
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #22
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit

_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit:           ; preds = %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.cp = load ptr, ptr %4, align 8, !tbaa !76    ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit27, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !81
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #22
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit27

_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit27:         ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.cv = load ptr, ptr %3, align 8, !tbaa !76    ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit29, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit27
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !81
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #22
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit29

_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit29:         ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit27, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.db = load ptr, ptr %i.t, align 8, !tbaa !73  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit29
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !82
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dg) #22
  br label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit.i:   ; preds = %bb.s, %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit29
  %i.dh = load ptr, ptr %i.l, align 8, !tbaa !73  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit2.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !82
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dm) #22
  br label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit2.i

_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit2.i:  ; preds = %bb.t, %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit.i
  %i.dn = load ptr, ptr %i.d, align 8, !tbaa !73  ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit4.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit2.i
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !82
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ds) #22
  br label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit4.i

_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit4.i:  ; preds = %bb.u, %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit2.i
  %i.dt = load i8, ptr %i.bi, align 8, !tbaa !79, !range !77, !noundef !65
  %i.du = trunc nuw i8 %i.dt to i1
  store i8 0, ptr %i.bi, align 8, !tbaa !79
  br i1 %i.du, label %bb.v, label %_ZN6openzl26MultiInputCodecDescriptionD2Ev.exit

bb.v:                                             ; preds = %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit4.i
  %i.dv = load ptr, ptr %i.bh, align 8, !tbaa !85 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZN6openzl26MultiInputCodecDescriptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.v
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !86
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #22
  br label %_ZN6openzl26MultiInputCodecDescriptionD2Ev.exit

_ZN6openzl26MultiInputCodecDescriptionD2Ev.exit:  ; preds = %bb.v, %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i32 %i.cg

bb.w:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.l ], [ %i.ce, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !606, !range !77, !noundef !65
  %i.ec = trunc nuw i8 %i.eb to i1
  store i8 0, ptr %i.ea, align 8, !tbaa !606
  br i1 %i.ec, label %bb.x, label %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit30

bb.x:                                             ; preds = %bb.w
  call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(208) %6) #23
  br label %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit30

_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit30: ; preds = %bb.x, %bb.w, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.j ], [ %.pn, %bb.w ], [ %.pn, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ed = load ptr, ptr %5, align 8, !tbaa !76    ; 3 uses
  %.not.i.i.i31 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit32, label %bb.y

bb.y:                                             ; preds = %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit30
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !81
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ed to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.ei) #22
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit32

_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit32:         ; preds = %bb.y, %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit30, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cc, %bb.i ], [ %.pn.pn, %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit30 ], [ %.pn.pn, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ej = load ptr, ptr %4, align 8, !tbaa !76    ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit34, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit32
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !81
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ej to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.eo) #22
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit34

_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit34:         ; preds = %bb.z, %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit32, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.h ], [ %.pn.pn.pn, %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit32 ], [ %.pn.pn.pn, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ep = load ptr, ptr %3, align 8, !tbaa !76    ; 3 uses
  %.not.i.i.i35 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit36, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit34
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !81
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.eu) #22
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit36

_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit36:         ; preds = %bb.aa, %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit34, %bb.g
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.g ], [ %.pn.pn.pn.pn, %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit34 ], [ %.pn.pn.pn.pn, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN6openzl26MultiInputCodecDescriptionD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6openzl13typesToCTypesENS_4poly4impl4spanIKNS_4TypeELm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.37") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.a, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not44 = icmp eq i64 %2, 0
  br i1 %.not44, label %._crit_edge.a, label %_ZNSt12_Vector_baseI7ZL_TypeSaIS0_EE11_M_allocateEm.exit.i.a

_ZNSt12_Vector_baseI7ZL_TypeSaIS0_EE11_M_allocateEm.exit.i.a: ; preds = %bb.b
  %3 = shl nuw nsw i64 %2, 2                      ; 2 uses
  %4 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #21 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %4, ptr %0, align 8, !tbaa !76
  store ptr %4, ptr %i.c, align 8, !tbaa !608
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %2 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseI7ZL_TypeSaIS0_EE11_M_allocateEm.exit.i.a, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit
  %i.g = phi ptr [ %4, %_ZNSt12_Vector_baseI7ZL_TypeSaIS0_EE11_M_allocateEm.exit.i.a ], [ %i.aa, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit ] ; 5 uses
  %.025 = phi ptr [ %1, %_ZNSt12_Vector_baseI7ZL_TypeSaIS0_EE11_M_allocateEm.exit.i.a ], [ %i.ad, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit ] ; 2 uses
  %i.h = phi ptr [ %i.d, %_ZNSt12_Vector_baseI7ZL_TypeSaIS0_EE11_M_allocateEm.exit.i.a ], [ %i.ac, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit ] ; 4 uses
  %i.i = phi ptr [ %4, %_ZNSt12_Vector_baseI7ZL_TypeSaIS0_EE11_M_allocateEm.exit.i.a ], [ %i.ab, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit ] ; 10 uses
  %i.j = load i32, ptr %.025, align 4, !tbaa !610 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.j, ptr %i.g, align 4, !tbaa !612
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !608
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m                       ; 6 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775804
  br i1 %i.o, label %bb.f, label %_ZNKSt6vectorI7ZL_TypeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.h, ptr %i.b, align 8
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorI7ZL_TypeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.p = ashr exact i64 %i.n, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 2305843009213693951)
  %i.t = select i1 %i.r, i64 2305843009213693951, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #21
          to label %.noexc14 unwind label %.loopexit ; 4 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorI7ZL_TypeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  store i32 %i.j, ptr %i.w, align 4, !tbaa !612
  %i.x = icmp sgt i64 %i.n, 0
  br i1 %i.x, label %bb.g, label %_ZNSt6vectorI7ZL_TypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc14
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.v, ptr align 4 %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI7ZL_TypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.g, %.noexc14
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI7ZL_TypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #22
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI7ZL_TypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorI7ZL_TypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  store ptr %i.y, ptr %i.f, align 8, !tbaa !608
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.t
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.d
  %i.aa = phi ptr [ %i.y, %_ZNSt6vectorI7ZL_TypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %i.k, %bb.d ]
  %i.ab = phi ptr [ %i.v, %_ZNSt6vectorI7ZL_TypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %i.i, %bb.d ] ; 2 uses
  %i.ac = phi ptr [ %i.z, %_ZNSt6vectorI7ZL_TypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.025, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.e
  br i1 %.not, label %._crit_edge.a, label %bb.c

.loopexit:                                        ; preds = %_ZNKSt6vectorI7ZL_TypeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.h, ptr %i.b, align 8
  store ptr %i.i, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

._crit_edge.a:                                    ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit, %bb.b
  %.lcssa21.a = phi ptr [ null, %bb.b ], [ %i.ab, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit ]
  %.lcssa.a = phi ptr [ null, %bb.b ], [ %i.ac, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit ]
  store ptr %.lcssa.a, ptr %i.b, align 8
  store ptr %.lcssa21.a, ptr %0, align 8
  ret void

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = ptrtoint ptr %i.g to i64
  %i.af = ptrtoint ptr %i.i to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ag) #22
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit

_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit:           ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal { i32, i64 } @_ZN6openzlL8encodeFnEP12ZL_Encoder_sPPK10ZL_Input_sm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %4 = alloca %"class.openzl::EncoderState", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call noundef ptr @ZL_Encoder_getOperationContext(ptr noundef readnone %0) #24
  store ptr %i.b, ptr %3, align 8, !tbaa !716
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN6openzl12EncoderStateC1EP12ZL_Encoder_sNS_4poly4impl4spanIPK10ZL_Input_sLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %0, ptr %1, i64 %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = invoke ptr @ZL_Encoder_getOpaquePtr(ptr noundef %0)
          to label %bb.c unwind label %bb.j       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.j, !call_target !720

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !91   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.m = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !93 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.m(ptr noundef nonnull %i.l)
          to label %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i.i unwind label %bb.g, !inline_history !4

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #25
  unreachable

_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6openzl8InputRefEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.g, align 8, !tbaa !27
  br label %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.d
  %i.q = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.h, %bb.d ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i, label %_ZN6openzl12EncoderStateD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #22
  br label %_ZN6openzl12EncoderStateD2Ev.exit

_ZN6openzl12EncoderStateD2Ev.exit:                ; preds = %_ZSt8_DestroyIPN6openzl8InputRefES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.t

bb.i:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          catch ptr @_ZTIN6openzl9ExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.k

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.x = landingpad { ptr, i32 }
          catch ptr @_ZTIN6openzl9ExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZN6openzl12EncoderStateD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.w, %bb.i ] ; 2 uses
  %.0 = extractvalue { ptr, i32 } %.pn, 0         ; 2 uses
  %.037 = extractvalue { ptr, i32 } %.pn, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.y = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6openzl9ExceptionE) #23
  %i.z = icmp eq i32 %.037, %i.y
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aa = call ptr @__cxa_begin_catch(ptr %.0) #23
  %i.ab = call { i32, ptr } @_ZNK6openzl9Exception7toErrorI12ZL_Encoder_sEE10ZL_Error_sPT_NS_4poly4impl15source_locationE(ptr noundef nonnull align 8 dereferenceable(105) %i.aa, ptr noundef %0) #23 ; 2 uses
  %i.ac = extractvalue { i32, ptr } %i.ab, 0
  %i.ad = extractvalue { i32, ptr } %i.ab, 1
  %i.ae = ptrtoint ptr %i.ad to i64
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.af = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #23
  %i.ag = icmp eq i32 %.037, %i.af
  %i.ah = call ptr @__cxa_begin_catch(ptr %.0) #23 ; 2 uses
  br i1 %i.ag, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) #23, !call_target !3158
  %i.am = invoke { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @_ZZN6openzlL8encodeFnEP12ZL_Encoder_sPPK10ZL_Input_smE22__zl_static_error_info_0, ptr noundef nonnull %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 88, i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef %i.al)
          to label %bb.o unwind label %bb.u       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.an = extractvalue { i32, ptr } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { i32, ptr } %i.am, 1      ; 2 uses
  invoke void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.an, ptr %i.ao, ptr noundef nonnull @.str.9)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ap = ptrtoint ptr %i.ao to i64
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

bb.q:                                             ; preds = %bb.m
  %i.aq = invoke { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @_ZZN6openzlL8encodeFnEP12ZL_Encoder_sPPK10ZL_Input_smE22__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 90, i32 noundef 1, ptr noundef nonnull @.str.8)
          to label %bb.r unwind label %bb.u       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ar = extractvalue { i32, ptr } %i.aq, 0      ; 2 uses
  %i.as = extractvalue { i32, ptr } %i.aq, 1      ; 2 uses
  invoke void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ar, ptr %i.as, ptr noundef nonnull @.str.9)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.at = ptrtoint ptr %i.as to i64
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.l, %bb.p, %bb.s, %_ZN6openzl12EncoderStateD2Ev.exit
  %.sroa.035.0 = phi i32 [ 0, %_ZN6openzl12EncoderStateD2Ev.exit ], [ %i.an, %bb.p ], [ %i.ar, %bb.s ], [ %i.ac, %bb.l ]
  %.sroa.536.0 = phi i64 [ 0, %_ZN6openzl12EncoderStateD2Ev.exit ], [ %i.ap, %bb.p ], [ %i.at, %bb.s ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.035.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.536.0, 1
  ret { i32, i64 } %.fca.1.insert

bb.u:                                             ; preds = %bb.p, %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.l
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #25
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @_ZN6openzl10Compressor21registerCustomEncoderERK16ZL_MIEncoderDesc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(336)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl26MultiInputCodecDescriptionD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22
  br label %_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6openzl4TypeESaIS1_EED2Ev.exit:     ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
end_hunk_0
