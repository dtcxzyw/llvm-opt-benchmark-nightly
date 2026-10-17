Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3FsmDetect?download=true
inline.NumInlined: 5729
inline.NumDeleted: 2094
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_18FsmState6fsmForEP11AstVarScope:bb.a
  %.val5 = phi ptr [ %i.be, %bb.j ], [ %.val5.pre, %_ZNSt6vectorIN12_GLOBAL__N_111DetectedFsmESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.cl = getelementptr inbounds i8, ptr %.val5, i64 -8
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_111DetectedFsmESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit, %_ZNSt6vectorIN12_GLOBAL__N_111DetectedFsmESaIS1_EE2atEm.exit
  %.0 = phi ptr [ %i.w, %_ZNSt6vectorIN12_GLOBAL__N_111DetectedFsmESaIS1_EE2atEm.exit ], [ %i.cl, %_ZNSt6vectorIN12_GLOBAL__N_111DetectedFsmESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_18FsmGraphC2Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  tail call void @_ZN7V3GraphC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_18FsmGraphE, i64 16), ptr %0, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !109
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.d, align 8, !tbaa !41
  store i8 0, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.g, align 8, !tbaa !41
  store i8 0, ptr %i.f, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %i.j, align 8, !tbaa !385
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 161
  store i8 0, ptr %i.k, align 1, !tbaa !386
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 162
  store i8 0, ptr %i.l, align 2, !tbaa !387
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr null, ptr %i.m, align 8, !tbaa !388
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.h, i8 0, i64 49, i1 false)
  store ptr %i.p, ptr %i.o, align 8, !tbaa !404
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 1, ptr %i.q, align 8, !tbaa !403
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 8, !tbaa !130
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #31
          to label %._crit_edge.i.i unwind label %bb.d ; 3 uses

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.w, ptr noundef nonnull align 1 dereferenceable(3) @.str.535, i64 3, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 3, ptr %i.x, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 0, ptr %i.y, align 1, !tbaa !42
  invoke void @_ZN12_GLOBAL__N_115FsmPseudoVertexC2EP7V3GraphNS_9FsmVertex4KindENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(208) %i.v, ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.z = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.w
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !42
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.v, ptr %i.u, align 8, !tbaa !427
  %i.ad = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #31
          to label %._crit_edge.i.i12 unwind label %bb.d ; 3 uses

._crit_edge.i.i12:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ae, ptr noundef nonnull align 1 dereferenceable(7) @.str.536, i64 7, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 7, ptr %i.af, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 23
  store i8 0, ptr %i.ag, align 1, !tbaa !42
  invoke void @_ZN12_GLOBAL__N_115FsmPseudoVertexC2EP7V3GraphNS_9FsmVertex4KindENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(208) %i.ad, ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef nonnull align 8 %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i12
  %i.ah = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.ae
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.c
  %i.aj = load i64, ptr %i.ae, align 8, !tbaa !42
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.ad, ptr %i.al, align 8, !tbaa !428
  ret void

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.w
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.e
  %i.aq = load i64, ptr %i.w, align 8, !tbaa !42
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 208) #27
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i12
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ae
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.f
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !42
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 208) #27
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %bb.d
  %.pn8.pn = phi { ptr, i32 } [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.am, %bb.d ]
  call fastcc void @_ZNSt13unordered_mapIN12_GLOBAL__N_113FsmStateValueEPNS0_14FsmStateVertexENS0_17FsmStateValueHashESt8equal_toIS1_ESaISt4pairIKS1_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.n) #26
  %.val = load ptr, ptr %i.i, align 8             ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val11 = load ptr, ptr %i.ax, align 8
  %i.ay = ptrtoint ptr %.val11 to i64
  %i.az = ptrtoint ptr %.val to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.ba) #27
  br label %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EED2Ev.exit: ; preds = %bb.g, %bb.h
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !40  ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.f
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EED2Ev.exit
  %i.bd = load i64, ptr %i.f, align 8, !tbaa !42
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !40  ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.c
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.bh = load i64, ptr %i.c, align 8, !tbaa !42
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @_ZN7V3GraphD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %.pn8.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EEaSERKS3_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val31 = load ptr, ptr %1, align 8, !tbaa !183 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val32 = load ptr, ptr %i.a, align 8, !tbaa !184 ; 2 uses
  %i.b = ptrtoint ptr %.val32 to i64
  %i.c = ptrtoint ptr %.val31 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 10 uses
  %.val38 = load ptr, ptr %0, align 8, !tbaa !183 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val39 = load ptr, ptr %i.e, align 8, !tbaa !185
  %i.f = ptrtoint ptr %.val39 to i64
  %i.g = ptrtoint ptr %.val38 to i64              ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %i.d, 9223372036854775792
  br i1 %i.j, label %bb.d, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_110FsmSenDescESaIS1_EE11_M_allocateEm.exit.i, !prof !34

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt12_Vector_baseIN12_GLOBAL__N_110FsmSenDescESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #31 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %.val31, %.val32
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_110FsmSenDescESaIS1_EE11_M_allocateEm.exit.i
  %3 = and i64 %i.d, 9223372036854775792
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr readonly align 8 %.val31, i64 %3, i1 false)
  br label %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_110FsmSenDescESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !183    ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_110FsmSenDescESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !185
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.o) #27
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_110FsmSenDescESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN12_GLOBAL__N_110FsmSenDescESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_110FsmSenDescESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !183
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.d
  store ptr %i.p, ptr %i.e, align 8, !tbaa !185
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_110FsmSenDescESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val30 = load ptr, ptr %i.q, align 8, !tbaa !184
  %i.r = ptrtoint ptr %.val30 to i64
  %i.s = sub i64 %i.r, %i.g                       ; 4 uses
  %.not24 = icmp ult i64 %i.s, %i.d
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp sgt i64 %i.d, 16
  br i1 %i.t, label %bb.h, label %bb.i, !prof !203

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val38, ptr align 8 %.val31, i64 %i.d, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_110FsmSenDescESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.u = icmp eq i64 %i.d, 16
  br i1 %i.u, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_110FsmSenDescESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.val38, ptr noundef nonnull readonly align 8 dereferenceable(16) %.val31, i64 16, i1 false), !tbaa.struct !208
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_110FsmSenDescESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.v = icmp sgt i64 %i.s, 16
  br i1 %i.v, label %bb.l, label %bb.m, !prof !203

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val38, ptr align 8 %.val31, i64 %i.s, i1 false)
  br label %_ZSt4copyIPN12_GLOBAL__N_110FsmSenDescES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.w = icmp eq i64 %i.s, 16
  br i1 %i.w, label %bb.n, label %_ZSt4copyIPN12_GLOBAL__N_110FsmSenDescES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.val38, ptr noundef nonnull readonly align 8 dereferenceable(16) %.val31, i64 16, i1 false), !tbaa.struct !208
  br label %_ZSt4copyIPN12_GLOBAL__N_110FsmSenDescES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN12_GLOBAL__N_110FsmSenDescES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.x = load ptr, ptr %1, align 8, !tbaa !183
  %.val25 = load ptr, ptr %0, align 8, !tbaa !183
  %.val26 = load ptr, ptr %i.q, align 8, !tbaa !184 ; 2 uses
  %i.y = ptrtoint ptr %.val26 to i64
  %i.z = ptrtoint ptr %.val25 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !184 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_110FsmSenDescESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN12_GLOBAL__N_110FsmSenDescES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.val26, %_ZSt4copyIPN12_GLOBAL__N_110FsmSenDescES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.ab, %_ZSt4copyIPN12_GLOBAL__N_110FsmSenDescES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false), !tbaa.struct !208
  %i.ad = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_110FsmSenDescESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !743

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_110FsmSenDescESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN12_GLOBAL__N_110FsmSenDescES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN12_GLOBAL__N_110FsmSenDescESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.af = load ptr, ptr %0, align 8, !tbaa !183
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !184
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_110FsmSenDescESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN12_GLOBAL__N_18FsmGraph14addStateVertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13FsmStateValueE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr noundef align 8 %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.(anonymous namespace)::FsmStateValue", align 8 ; 16 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #31 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !109
  %i.f = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %i.h, ptr %i.c, align 8, !tbaa !108
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.ax    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.j, ptr %3, align 8, !tbaa !40
  %i.k = load i64, ptr %i.c, align 8, !tbaa !108
  store i64 %i.k, ptr %i.e, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !42
  store i8 %i.m, ptr %i.l, align 1, !tbaa !42
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.n = load i64, ptr %i.c, align 8, !tbaa !108  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !41
  %i.p = load ptr, ptr %3, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !109
  %i.s = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !41   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.u, ptr %i.b, align 8, !tbaa !108
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.d
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc7 unwind label %bb.ay   ; 2 uses

.noexc7:                                          ; preds = %.noexc.i.i
  store ptr %i.w, ptr %4, align 8, !tbaa !40
  %i.x = load i64, ptr %i.b, align 8, !tbaa !108
  store i64 %i.x, ptr %i.r, align 8, !tbaa !42
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc7, %bb.d
  %i.y = phi ptr [ %i.w, %.noexc7 ], [ %i.r, %bb.d ] ; 2 uses
  switch i64 %i.u, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !42
  store i8 %i.z, ptr %i.y, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !108 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !41
  %i.ac = load ptr, ptr %4, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  invoke void @_ZN12V3NumberDataC2ERKS_(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %i.af)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.r
  br i1 %i.ai, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
end_hunk_0
