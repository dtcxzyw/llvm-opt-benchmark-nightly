Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/lincs?download=true
inline.NumInlined: 2108
inline.NumDeleted: 793
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !154
  %i.k = load ptr, ptr %0, align 8, !tbaa !153
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !156  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #19
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !153    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !104
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #19
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !153    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !104
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmxL18lincs_thread_setupEPNS_5LincsEi.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"struct.std::array.254", align 16  ; 6 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  %i.g = load i32, ptr %i.f, align 8, !tbaa !91   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.i, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.j = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !25
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !25
  %i.m = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not56 = icmp sgt i32 %i.m, %i.l
  br i1 %.not56, label %._crit_edge60, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.b
  %i.n = sext i32 %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph59, %._crit_edge
  %i.o = phi i32 [ %i.l, %.lr.ph59 ], [ %i.ds, %._crit_edge ]
  %indvars.iv63 = phi i64 [ %i.n, %.lr.ph59 ], [ %indvars.iv.next64, %._crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.p = load ptr, ptr %2, align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 352
  %.val = load ptr, ptr %i.q, align 8, !tbaa !97
  %i.r = getelementptr inbounds nuw [176 x i8], ptr %.val, i64 %indvars.iv63 ; 10 uses
  %i.s = trunc nsw i64 %indvars.iv63 to i32       ; 2 uses
  %i.t = sdiv i32 %i.s, 64                        ; 2 uses
  %i.u = shl nuw nsw i32 %i.t, 3                  ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %4, i8 -1, i64 %i.v, i1 false)
  %i.w = srem i32 %i.s, 64
  %i.x = zext nneg i32 %i.w to i64
  %notmask.i = shl nsw i64 -1, %i.x
  %i.y = xor i64 %notmask.i, -1
  %i.z = sext i32 %i.t to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.z ; 2 uses
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !134
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = sub nsw i32 8, %i.u
  %i.ad = sext i32 %i.ac to i64
  call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.ad, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.c
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.c, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !23
  %.not.i.i33 = icmp eq ptr %i.al, %i.aj
  br i1 %.not.i.i33, label %_ZNSt6vectorIiSaIiEE5clearEv.exit35, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i34

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i34:      ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit35

_ZNSt6vectorIiSaIiEE5clearEv.exit35:              ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i34
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 112 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 120 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23
  %.not.i.i36 = icmp eq ptr %i.ap, %i.an
  br i1 %.not.i.i36, label %_ZNSt6vectorIiSaIiEE5clearEv.exit38, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i37

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i37:      ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit35
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit38

_ZNSt6vectorIiSaIiEE5clearEv.exit38:              ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit35, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i37
  %i.aq = load i32, ptr %i.r, align 8, !tbaa !119 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !120
  %i.at = icmp slt i32 %i.aq, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit38
  %i.au = load <2 x i64>, ptr %4, align 16        ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 128 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 80 ; 3 uses
  %i.ax = sext i32 %i.aq to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !94
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %.val32 = load ptr, ptr %i.az, align 8, !tbaa !124
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.val32, i64 %indvars.iv ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !128
  %i.bc = sext i32 %i.bb to i64
  %i.bd = load i64, ptr %3, align 8
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.bc
  %i.bg = load <2 x i64>, ptr %i.bf, align 8
  %i.bh = and <2 x i64> %i.au, %i.bg
  %5 = icmp eq <2 x i64> %i.bh, zeroinitializer   ; 2 uses
  %6 = extractelement <2 x i1> %5, i64 0
  %7 = extractelement <2 x i1> %5, i64 1
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !129
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.bk
  %i.bm = load <2 x i64>, ptr %i.bl, align 8
  %i.bn = and <2 x i64> %i.bm, %i.au
  %9 = icmp eq <2 x i64> %i.bn, zeroinitializer   ; 2 uses
  %10 = extractelement <2 x i1> %9, i64 0
  %11 = extractelement <2 x i1> %9, i64 1
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.bo = load ptr, ptr %i.ag, align 8, !tbaa !23 ; 4 uses
  %i.bp = load ptr, ptr %i.aw, align 8, !tbaa !100
  %.not.i = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = trunc nsw i64 %indvars.iv to i32
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store ptr %i.br, ptr %i.ag, align 8, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.h:                                             ; preds = %bb.f
  %i.bs = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 4 uses
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 5 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775804
  br i1 %i.bw, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.bx = ashr exact i64 %i.bv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = call i64 @llvm.umin.i64(i64 %i.by, i64 2305843009213693951)
  %i.cb = select i1 %i.bz, i64 2305843009213693951, i64 %i.ca ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cb, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cc = shl nuw nsw i64 %i.cb, 2
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #37
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc39:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.bv ; 2 uses
  %i.cf = trunc nsw i64 %indvars.iv to i32
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !25
  %i.cg = icmp sgt i64 %i.bv, 0
  br i1 %i.cg, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %.noexc39
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cd, ptr align 4 %i.bs, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %.noexc39
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %.not.i17.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ci = load ptr, ptr %i.aw, align 8, !tbaa !100
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.ck) #40
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.cd, ptr %i.ae, align 8, !tbaa !24
  store ptr %i.ch, ptr %i.ag, align 8, !tbaa !23
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.cl, ptr %i.aw, align 8, !tbaa !100
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i41, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %.invoke
  %lpad.loopexit.split-lp79 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.cm = extractvalue { ptr, i32 } %lpad.loopexit.split-lp79, 0 ; 2 uses
  %i.cn = extractvalue { ptr, i32 } %lpad.loopexit.split-lp79, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.co = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.cp = icmp eq i32 %i.cn, %i.co
  br i1 %i.cp, label %bb.k, label %bb.t

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cq = call ptr @__cxa_begin_catch(ptr %i.cm) #19
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.cq) #39
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.cr = load ptr, ptr %i.ao, align 8, !tbaa !23 ; 4 uses
  %i.cs = load ptr, ptr %i.av, align 8, !tbaa !100
  %.not.i40 = icmp eq ptr %i.cr, %i.cs
  br i1 %.not.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = trunc nsw i64 %indvars.iv to i32
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !25
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store ptr %i.cu, ptr %i.ao, align 8, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.o:                                             ; preds = %bb.m
  %i.cv = load ptr, ptr %i.am, align 8, !tbaa !24 ; 4 uses
  %i.cw = ptrtoint ptr %i.cr to i64
  %i.cx = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 5 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775804
  br i1 %i.cz, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i41

.invoke:                                          ; preds = %bb.h, %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #39
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i41: ; preds = %bb.o
  %i.da = ashr exact i64 %i.cy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i42 = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i42, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = call i64 @llvm.umin.i64(i64 %i.db, i64 2305843009213693951)
  %i.de = select i1 %i.dc, i64 2305843009213693951, i64 %i.dd ; 3 uses
  %.not.i.i.i43 = icmp ne i64 %i.de, 0
  call void @llvm.assume(i1 %.not.i.i.i43)
  %i.df = shl nuw nsw i64 %i.de, 2
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #37
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i41
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.cy ; 2 uses
  %i.di = trunc nsw i64 %indvars.iv to i32
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !25
  %i.dj = icmp sgt i64 %i.cy, 0
  br i1 %i.dj, label %bb.p, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i44

bb.p:                                             ; preds = %.noexc48
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dg, ptr align 4 %i.cv, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i44

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i44: ; preds = %bb.p, %.noexc48
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %.not.i17.i.i45 = icmp eq ptr %i.cv, null
  br i1 %.not.i17.i.i45, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i46, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i44
  %i.dl = load ptr, ptr %i.av, align 8, !tbaa !100
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.dn) #40
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i46

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i46: ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i44
  store ptr %i.dg, ptr %i.am, align 8, !tbaa !24
  store ptr %i.dk, ptr %i.ao, align 8, !tbaa !23
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.do, ptr %i.av, align 8, !tbaa !100
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i46, %bb.n, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.g
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dp = load i32, ptr %i.ar, align 4, !tbaa !120
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next, %i.dq
  br i1 %i.dr, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !386

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre = load i32, ptr %i.b, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEE5clearEv.exit38
  %i.ds = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.o, %_ZNSt6vectorIiSaIiEE5clearEv.exit38 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, 1
  %i.dt = sext i32 %i.ds to i64
  %.not.not = icmp slt i64 %indvars.iv63, %i.dt
  br i1 %.not.not, label %bb.c, label %._crit_edge60

._crit_edge60:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge60, %bb.a
  ret void

bb.s:                                             ; preds = %bb.k
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #38
  unreachable

bb.t:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @__clang_call_terminate(ptr %i.cm) #38
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmxL18lincs_thread_setupEPNS_5LincsEi.omp_outlined.20(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"struct.std::array.254", align 16  ; 6 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  %i.g = load i32, ptr %i.f, align 8, !tbaa !91   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.i, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.j = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !25
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !25
  %i.m = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not40 = icmp sgt i32 %i.m, %i.l
  br i1 %.not40, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.b
  %i.n = sext i32 %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph43, %._crit_edge
  %i.o = phi i32 [ %i.l, %.lr.ph43 ], [ %i.am, %._crit_edge ]
  %indvars.iv = phi i64 [ %i.n, %.lr.ph43 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 352
  %.val = load ptr, ptr %i.q, align 8, !tbaa !97
  %i.r = getelementptr inbounds nuw [176 x i8], ptr %.val, i64 %indvars.iv ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.s = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.t = sdiv i32 %i.s, 64                        ; 2 uses
  %i.u = shl nuw nsw i32 %i.t, 3                  ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %4, i8 -1, i64 %i.v, i1 false)
  %i.w = srem i32 %i.s, 64
  %i.x = zext nneg i32 %i.w to i64
  %notmask.i = shl nsw i64 -1, %i.x
  %i.y = xor i64 %notmask.i, -1
  %i.z = sext i32 %i.t to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.z ; 2 uses
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !134
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = sub nsw i32 8, %i.u
  %i.ad = sext i32 %i.ac to i64
  call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.ad, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !101 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !101 ; 2 uses
  %.not3738 = icmp eq ptr %i.af, %i.ah
  br i1 %.not3738, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ai = load <2 x i64>, ptr %4, align 16        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 88 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 104 ; 3 uses
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i32, ptr %i.b, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.am = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.o, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.an = sext i32 %i.am to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.an
  br i1 %.not.not, label %bb.c, label %._crit_edge44

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.034.039 = phi ptr [ %i.af, %.lr.ph ], [ %i.ch, %bb.l ] ; 4 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !94
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.aq = load i32, ptr %.sroa.034.039, align 4, !tbaa !25 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %.val32 = load ptr, ptr %i.ap, align 8, !tbaa !124
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val32, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !128
  %i.au = sext i32 %i.at to i64
  %i.av = load i64, ptr %3, align 8
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.au
  %i.ay = load <2 x i64>, ptr %i.ax, align 8
  %i.az = and <2 x i64> %i.ai, %i.ay
  %5 = icmp eq <2 x i64> %i.az, zeroinitializer   ; 2 uses
  %6 = extractelement <2 x i1> %5, i64 0
  %7 = extractelement <2 x i1> %5, i64 1
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !129
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.bc
  %i.be = load <2 x i64>, ptr %i.bd, align 8
  %i.bf = and <2 x i64> %i.be, %i.ai
  %9 = icmp eq <2 x i64> %i.bf, zeroinitializer   ; 2 uses
  %10 = extractelement <2 x i1> %9, i64 0
  %11 = extractelement <2 x i1> %9, i64 1
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %i.ak, align 8, !tbaa !23 ; 4 uses
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !100
  %.not.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.aq, ptr %i.bg, align 4, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store ptr %i.bi, ptr %i.ak, align 8, !tbaa !23
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.h:                                             ; preds = %bb.f
  %i.bj = load ptr, ptr %i.aj, align 8, !tbaa !24 ; 4 uses
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 5 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775804
  br i1 %i.bn, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #39
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.bo = ashr exact i64 %i.bm, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = call i64 @llvm.umin.i64(i64 %i.bp, i64 2305843009213693951)
  %i.bs = select i1 %i.bq, i64 2305843009213693951, i64 %i.br ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #37
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bm ; 2 uses
  %i.bw = load i32, ptr %.sroa.034.039, align 4, !tbaa !25
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !25
  %i.bx = icmp sgt i64 %i.bm, 0
  br i1 %i.bx, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %.noexc33
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr align 4 %i.bj, i64 %i.bm, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %.noexc33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %.not.i17.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bz = load ptr, ptr %i.al, align 8, !tbaa !100
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.cb) #40
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bu, ptr %i.aj, align 8, !tbaa !24
  store ptr %i.by, ptr %i.ak, align 8, !tbaa !23
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.cc, ptr %i.al, align 8, !tbaa !100
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.g
  store i32 -1, ptr %.sroa.034.039, align 4, !tbaa !25
  br label %bb.l

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.i
  %lpad.loopexit.split-lp55 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.cd = extractvalue { ptr, i32 } %lpad.loopexit.split-lp55, 0 ; 2 uses
  %i.ce = extractvalue { ptr, i32 } %lpad.loopexit.split-lp55, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.cf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.m, label %bb.q

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.e, %bb.d
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.034.039, i64 4 ; 2 uses
  %.not37 = icmp eq ptr %i.ch, %i.ah
  br i1 %.not37, label %._crit_edge.loopexit, label %bb.d

bb.m:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ci = call ptr @__cxa_begin_catch(ptr %i.cd) #19
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.ci) #39
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

._crit_edge44:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge44, %bb.a
  ret void

bb.p:                                             ; preds = %bb.m
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #38
  unreachable

bb.q:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @__clang_call_terminate(ptr %i.cd) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt5arrayImLm2EESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !113    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !114
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPSt5arrayImLm2EEmS1_ET_S3_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 1152921504606846974
  %i.u = and i64 %i.t, 1152921504606846975
  %i.v = add i64 %1, 7
  %xtraiter = and i64 %i.v, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.p, %bb.d ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !105
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !387

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %bb.d
  %.06.i.i.i.i.i.i.i.unr = phi ptr [ %i.p, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.x = icmp samesign ult i64 %i.u, 7
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPSt5arrayImLm2EEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !105
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !105
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !105
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !105
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !105
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !105
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !105
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !105
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq ptr %i.af, %i.s
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPSt5arrayImLm2EEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !388
end_hunk_0
