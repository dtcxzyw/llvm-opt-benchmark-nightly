Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/VectorTransform?download=true
inline.NumInlined: 1138
inline.NumDeleted: 371
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN5faiss12ITQTransform5trainElPKf:bb.a
bb.z:                                             ; preds = %bb.y
  %i.gx = sub nuw nsw i64 %i.go, %i.gv
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, i64 noundef %i.gx)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge unwind label %bb.ad

._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge:    ; preds = %bb.z
  %.pre = load ptr, ptr %i.gm, align 8, !tbaa !33
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.aa:                                            ; preds = %bb.y
  %i.gy = icmp ugt i64 %i.gv, %i.go
  br i1 %i.gy, label %bb.ab, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.ab:                                            ; preds = %bb.aa
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.go ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.gq, %i.gz
  br i1 %.not.i.i68, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i69

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i69:      ; preds = %bb.ab
  store ptr %i.gz, ptr %i.gp, align 8, !tbaa !32
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i69, %bb.ab, %bb.aa
  %i.ha = phi ptr [ %.pre, %._ZNSt6vectorIfSaIfEE6resizeEm.exit_crit_edge ], [ %i.gr, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i69 ], [ %i.gr, %bb.ab ], [ %i.gr, %bb.aa ]
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !33
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !33
  %i.hf = invoke i32 @sgemm_(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.74, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef %i.hc, ptr noundef nonnull %i.d, ptr noundef %i.he, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, ptr noundef %i.ha, ptr noundef nonnull %i.d)
          to label %bb.ac unwind label %bb.ad     ; 0 uses

bb.ac:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.af

bb.ad:                                            ; preds = %bb.z, %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.am

bb.ae:                                            ; preds = %bb.x
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.hj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %i.hh)
          to label %bb.af unwind label %bb.w      ; 0 uses

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 1, ptr %i.hk, align 8, !tbaa !21
  store i8 1, ptr %i.g, align 8, !tbaa !21
  %.not.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.af
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #30
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.af, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5faiss9PCAMatrixE, i64 16), ptr %4, align 8, !tbaa !44
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !45
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hr) #30, !inline_history !61
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.ag, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !45
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.ht to i64
  %i.hy = sub i64 %i.hw, %i.hx
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.hy) #30, !inline_history !61
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i:                 ; preds = %bb.ah, %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit4.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !45
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = ptrtoint ptr %i.ia to i64
  %i.if = sub i64 %i.id, %i.ie
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef %i.if) #30, !inline_history !61
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit4.i

_ZNSt6vectorIfSaIfEED2Ev.exit4.i:                 ; preds = %bb.ai, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5faiss15LinearTransformE, i64 16), ptr %4, align 8, !tbaa !44
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit4.i
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !45
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = ptrtoint ptr %i.ih to i64
  %i.im = sub i64 %i.ik, %i.il
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef %i.im) #30, !inline_history !62
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i:                ; preds = %bb.aj, %_ZNSt6vectorIfSaIfEED2Ev.exit4.i
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit73, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !45
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %i.io to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.it) #30, !inline_history !62
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit73

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit73: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #30
  %i.iu = icmp eq ptr %i.ag, null
  %or.cond = or i1 %.not98, %i.iu
  br i1 %or.cond, label %_ZN5faiss18TransformedVectorsD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit73
  call void @_ZdaPv(ptr noundef nonnull %i.ag) #30
  br label %_ZN5faiss18TransformedVectorsD2Ev.exit

_ZN5faiss18TransformedVectorsD2Ev.exit:           ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit73, %bb.al
  ret void

bb.am:                                            ; preds = %bb.ad, %bb.w
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %bb.ad ], [ %.sroa.0.0, %bb.w ] ; 2 uses
  %.pn57 = phi { ptr, i32 } [ %i.hg, %bb.ad ], [ %i.gf, %bb.w ]
  %.not.i74 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i74, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit76, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i75

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i75: ; preds = %bb.am
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.2) #30
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit76

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit76: ; preds = %bb.am, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i75
  call void @_ZN5faiss9PCAMatrixD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #22
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit76, %bb.v
  %.pn57.pn = phi { ptr, i32 } [ %.pn57, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit76 ], [ %i.ge, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit79

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit79: ; preds = %bb.p, %bb.u, %bb.an
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %bb.an ], [ %i.gd, %bb.u ], [ %i.ck, %bb.p ]
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #30
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit79, %bb.o
  %.pn57.pn.pn.pn = phi { ptr, i32 } [ %.pn57.pn.pn, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit79 ], [ %i.cj, %bb.o ] ; 2 uses
  %i.iv = icmp eq ptr %i.ag, null
  %or.cond97 = or i1 %.not98, %i.iv
  br i1 %or.cond97, label %_ZN5faiss18TransformedVectorsD2Ev.exit80, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZdaPv(ptr noundef nonnull %i.ag) #30
  br label %_ZN5faiss18TransformedVectorsD2Ev.exit80

_ZN5faiss18TransformedVectorsD2Ev.exit80:         ; preds = %bb.ap, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn62.pn = phi { ptr, i32 } [ %.pn62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn57.pn.pn.pn, %bb.ao ], [ %.pn57.pn.pn.pn, %bb.ap ]
  resume { ptr, i32 } %.pn62.pn

bb.aq:                                            ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss12ITQTransform13apply_noallocElPKfPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = ptrtoaddr ptr %2 to i64
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !21, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !18
  store i8 0, ptr %i.d, align 8, !tbaa !17
  %i.f = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #22 ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i32 %i.f to i64                ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.i)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %5, align 8, !tbaa !16
  %i.k = load i64, ptr %i.e, align 8, !tbaa !18
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #22 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.h)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.n = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss12ITQTransform13apply_noallocElPKfPf, ptr noundef nonnull @.str.1, i32 noundef 1170)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #29
          to label %bb.o unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.n) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.o, %bb.h ]
  %i.p = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.r = load i64, ptr %i.d, align 8, !tbaa !17
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !40
  %i.v = sext i32 %i.u to i64
  %i.w = mul nsw i64 %1, %i.v                     ; 2 uses
  %i.x = icmp ugt i64 %i.w, 4611686018427387903
  %i.y = shl i64 %i.w, 2
  %i.z = select i1 %i.x, i64 -1, i64 %i.y
  %i.aa = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #28 ; 9 uses
  %i.ab = load i32, ptr %i.t, align 8, !tbaa !40  ; 4 uses
  %i.ac = icmp sgt i64 %1, 0
  %i.ad = sext i32 %i.ab to i64                   ; 7 uses
  %i.ae = icmp sgt i32 %i.ab, 0
  %or.cond = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge44.split

.preheader.lr.ph.split:                           ; preds = %bb.j
  %6 = ptrtoaddr ptr %i.aa to i64                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !33 ; 5 uses
  %7 = ptrtoaddr ptr %i.ag to i64
  %8 = sub i64 %6, %7
  %9 = shl nuw nsw i64 %i.ad, 2
  %min.iters.check = icmp ult i32 %i.ab, 8
  %10 = sub i64 %4, %6
  %diff.check = icmp ugt i64 %10, -32
  %invariant.op = add i64 %8, -1
  %n.vec = and i64 %i.ad, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ad
  %11 = and i32 %i.ab, 1
  %lcmp.mod.not = icmp eq i32 %11, 0
  %12 = add nsw i64 %i.ad, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.02343 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %i.as, %._crit_edge ] ; 3 uses
  %i.ah = mul nuw nsw i64 %.02343, %i.ad          ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader.a, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %13 = mul i64 %9, %.02343
  %.reass = add i64 %13, %invariant.op
  %diff.check51 = icmp ult i64 %.reass, 31
  %conflict.rdx = or i1 %diff.check, %diff.check51
  br i1 %conflict.rdx, label %scalar.ph.preheader.a, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ai = add nuw nsw i64 %index, %i.ah           ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <4 x float>, ptr %i.aj, align 4, !tbaa !35
  %wide.load52.a = load <4 x float>, ptr %i.ak, align 4, !tbaa !35
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load53.a = load <4 x float>, ptr %i.al, align 4, !tbaa !35
  %wide.load54 = load <4 x float>, ptr %i.am, align 4, !tbaa !35
  %i.an = fsub <4 x float> %wide.load, %wide.load53.a
  %i.ao = fsub <4 x float> %wide.load52.a, %wide.load54
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ai ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x float> %i.an, ptr %i.ap, align 4, !tbaa !35
  store <4 x float> %i.ao, ptr %i.aq, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader.a

scalar.ph.preheader.a:                            ; preds = %vector.memcheck, %.preheader, %middle.block
  %.042.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader.a
  %14 = add nuw nsw i64 %.042.ph, %i.ah           ; 2 uses
  %15 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !35
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.042.ph
  %18 = load float, ptr %17, align 4, !tbaa !35
  %19 = fsub float %16, %18
  %20 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %14
  store float %19, ptr %20, align 4, !tbaa !35
  %21 = or disjoint i64 %.042.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader.a
  %.042.unr = phi i64 [ %.042.ph, %scalar.ph.preheader.a ], [ %21, %scalar.ph.prol ]
  %22 = icmp eq i64 %.042.ph, %12
  br i1 %22, label %._crit_edge, label %scalar.ph

._crit_edge44.split:                              ; preds = %._crit_edge, %bb.j
  invoke void @_ZN5faiss14fvec_renorm_L2EmmPf(i64 noundef %i.ad, i64 noundef %1, ptr noundef nonnull %i.aa)
          to label %bb.k unwind label %bb.l

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.as = add nuw nsw i64 %.02343, 1              ; 2 uses
  %exitcond45.not = icmp eq i64 %i.as, %1
  br i1 %exitcond45.not, label %._crit_edge44.split, label %.preheader, !llvm.loop !180

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.042 = phi i64 [ %i.ba, %scalar.ph ], [ %.042.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %23 = add nuw nsw i64 %.042, %i.ah              ; 2 uses
  %24 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %23
  %25 = load float, ptr %24, align 4, !tbaa !35
  %26 = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.042
  %27 = load float, ptr %26, align 4, !tbaa !35
  %28 = fsub float %25, %27
  %29 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %23
  store float %28, ptr %29, align 4, !tbaa !35
  %30 = add nuw nsw i64 %.042, 1                  ; 2 uses
  %i.at = add nuw nsw i64 %30, %i.ah              ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !35
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %30
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !35
  %i.ay = fsub float %i.av, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.at
  store float %i.ay, ptr %i.az, align 4, !tbaa !35
  %i.ba = add nuw nsw i64 %.042, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ba, %i.ad
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !181

bb.k:                                             ; preds = %._crit_edge44.split
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke void @_ZNK5faiss15LinearTransform13apply_noallocElPKfPf(ptr noundef nonnull align 8 dereferenceable(73) %i.bb, i64 noundef %1, ptr noundef nonnull %i.aa, ptr noundef %3)
          to label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit unwind label %bb.m

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #30
  ret void

bb.l:                                             ; preds = %._crit_edge44.split
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37

bb.m:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37: ; preds = %bb.m, %bb.l
  %.pn32 = phi { ptr, i32 } [ %i.bd, %bb.m ], [ %i.bc, %bb.l ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #30
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn32.pn = phi { ptr, i32 } [ %.pn32, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit37 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn32.pn

bb.o:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss12ITQTransform15check_identicalERKNS_15VectorTransformE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZNK5faiss15VectorTransform15check_identicalERKS0_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(17) %1)
  %i.a = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN5faiss15VectorTransformE, ptr nonnull @_ZTIN5faiss12ITQTransformE, i64 0) #22 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !18
  store i8 0, ptr %i.b, align 8, !tbaa !17
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.28) #22 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %i.d to i64                ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.g)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %2, align 8, !tbaa !16
  %i.i = load i64, ptr %i.c, align 8, !tbaa !18
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.28) #22 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.f)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.l = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss12ITQTransform15check_identicalERKNS_15VectorTransformE, ptr noundef nonnull @.str.1, i32 noundef 1191)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #29
          to label %bb.u unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.l) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.m, %bb.h ]
  %i.n = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.p = load i64, ptr %i.b, align 8, !tbaa !17
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  tail call void @_ZNK5faiss15LinearTransform15check_identicalERKNS_15VectorTransformE(ptr noundef nonnull align 8 dereferenceable(73) %i.r, ptr noundef nonnull align 8 dereferenceable(17) %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32   ; 3 uses
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !33   ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !33  ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp eq i64 %i.aa, %i.ag
  br i1 %i.ah, label %bb.k, label %_ZSteqIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit

bb.k:                                             ; preds = %bb.j
  %.not9.i.i.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not9.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %bb.l
  %.011.i.i.i.i.i = phi ptr [ %i.am, %bb.l ], [ %i.ad, %bb.k ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.al, %bb.l ], [ %i.x, %bb.k ] ; 2 uses
  %i.ai = load float, ptr %.0810.i.i.i.i.i, align 4, !tbaa !35
  %i.aj = load float, ptr %.011.i.i.i.i.i, align 4, !tbaa !35
  %i.ak = fcmp oeq float %i.ai, %i.aj
  br i1 %i.ak, label %bb.l, label %_ZSteqIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.w
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSteqIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit:        ; preds = %.lr.ph.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.an, ptr %3, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.ao, align 8, !tbaa !18
  store i8 0, ptr %i.an, align 8, !tbaa !17
  %i.ap = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91) #22 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZSteqIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit
  %i.ar = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.as)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = load ptr, ptr %3, align 8, !tbaa !16
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !18
  %i.av = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.at, i64 noundef %i.au, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91) #22 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ar)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n, %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.n, %_ZSteqIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit
  %i.ax = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss12ITQTransform15check_identicalERKNS_15VectorTransformE, ptr noundef nonnull @.str.1, i32 noundef 1194)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #29
          to label %bb.u unwind label %bb.o

bb.r:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ax) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn20 = phi { ptr, i32 } [ %i.aw, %bb.o ], [ %i.ay, %bb.r ]
  %i.az = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.an
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.s
  %i.bb = load i64, ptr %i.an, align 8, !tbaa !17
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

end_hunk_0
begin_hunk_1_@llvm.fabs.v4f32
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #21 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nofree nounwind }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { noreturn }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { cold nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !36}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !14, i64 8, !6, i64 16}
!16 = !{!15, !11, i64 0}
!17 = !{!6, !6, i64 0}
!18 = !{!15, !14, i64 8}
!19 = !{!"bool", !6, i64 0}
!20 = !{!"_ZTSN5faiss15VectorTransformE", !7, i64 8, !7, i64 12, !19, i64 16}
!21 = !{!20, !19, i64 16}
!22 = !{i8 0, i8 2}
!23 = !{}
!24 = !{!"p1 float", !10, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorIfSaIfEE", !27, i64 0}
!29 = !{!"_ZTSN5faiss15LinearTransformE", !20, i64 0, !19, i64 17, !19, i64 18, !28, i64 24, !28, i64 48, !19, i64 72}
!30 = !{!29, !19, i64 17}
!31 = !{!20, !7, i64 12}
!32 = !{!25, !24, i64 8}
!33 = !{!25, !24, i64 0}
!34 = !{!"float", !6, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!20, !7, i64 8}
!41 = !{!7, !7, i64 0}
!42 = !{!29, !19, i64 18}
!43 = !{!"vtable pointer", !5, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!25, !24, i64 16}
!46 = !{ptr @_ZN5faiss15LinearTransformD2Ev}
!47 = !{!"_ZTSN5faiss16HadamardRotationE", !20, i64 0, !7, i64 20, !28, i64 24, !28, i64 48, !28, i64 72}
!48 = !{!47, !7, i64 20}
!49 = !{!14, !14, i64 0}
!50 = !{!24, !24, i64 0}
!51 = !{!"p1 int", !10, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!52, !51, i64 8}
!54 = !{!52, !51, i64 0}
!55 = !{!52, !51, i64 16}
!56 = !{!"_ZTSN5faiss9PCAMatrixE", !29, i64 0, !34, i64 76, !34, i64 80, !19, i64 84, !14, i64 88, !7, i64 96, !28, i64 104, !28, i64 128, !28, i64 152}
!57 = !{!56, !14, i64 88}
!58 = !{!29, !19, i64 72}
!59 = !{!"double", !6, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{ptr @_ZN5faiss9PCAMatrixD2Ev}
!62 = !{ptr @_ZN5faiss9PCAMatrixD2Ev, ptr @_ZN5faiss15LinearTransformD2Ev}
!63 = !{!"p1 double", !10, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!64, !63, i64 0}
!66 = !{!64, !63, i64 16}
!67 = !{!64, !63, i64 8}
!68 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !64, i64 0}
!69 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !68, i64 0}
!70 = !{!"_ZTSSt6vectorIdSaIdEE", !69, i64 0}
!71 = !{!"_ZTSN5faiss9ITQMatrixE", !29, i64 0, !7, i64 76, !7, i64 80, !70, i64 88}
!72 = !{!71, !7, i64 80}
!73 = !{!71, !7, i64 76}
!74 = !{ptr @_ZN5faiss9ITQMatrixD2Ev}
!75 = !{ptr @_ZN5faiss9ITQMatrixD2Ev, ptr @_ZN5faiss15LinearTransformD2Ev}
!76 = !{!"_ZTSN5faiss12ITQTransformE", !20, i64 0, !28, i64 24, !19, i64 48, !71, i64 56, !7, i64 168, !29, i64 176}
!77 = !{!76, !7, i64 168}
!78 = !{!76, !19, i64 48}
!79 = !{!"p1 _ZTSN5faiss16ProductQuantizerE", !10, i64 0}
!80 = !{!"_ZTSN5faiss9OPQMatrixE", !29, i64 0, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !14, i64 96, !19, i64 104, !79, i64 112}
!81 = !{!80, !14, i64 96}
!82 = !{!80, !19, i64 104}
!83 = !{!80, !7, i64 76}
!84 = !{!80, !79, i64 112}
!85 = !{!80, !7, i64 80}
!86 = !{!"_ZTSN5faiss22NormalizationTransformE", !20, i64 0, !34, i64 20}
!87 = !{!86, !34, i64 20}
!88 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!89 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{i64 2, i64 -1, i64 -1, i1 true}
!92 = !{!91}
!93 = !{!56, !34, i64 76}
!94 = !{!56, !19, i64 84}
!95 = !{!56, !7, i64 96}
!96 = !{!56, !34, i64 80}
!97 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!98 = distinct !{!98, !36, !37, !38}
!99 = distinct !{!99, !39}
!100 = distinct !{!100, !36}
!101 = distinct !{!101, !36, !37}
!102 = !{ptr @_ZN5faiss16HadamardRotationD2Ev}
!103 = distinct !{!103, !36}
!104 = distinct !{!104, !36}
!105 = distinct !{!105, !36}
!106 = distinct !{!106, !36}
!107 = !{ptr @_ZN5faiss24RemapDimensionsTransformD2Ev}
!108 = distinct !{!108, !"LVerDomain"}
!109 = distinct !{!109, !108}
!110 = distinct !{!110, !108}
!111 = distinct !{!111, !36, !37, !38}
!112 = distinct !{!112, !39}
!113 = distinct !{!113, !36, !37, !38}
!114 = distinct !{!114, !36}
!115 = distinct !{!115, !36, !37}
!116 = distinct !{!116, !36, !38, !37}
!117 = distinct !{!117, !36}
!118 = distinct !{!118, !"LVerDomain"}
!119 = distinct !{!119, !118}
!120 = distinct !{!120, !118}
!121 = distinct !{!121, !118}
!122 = distinct !{!122, !36, !37, !38}
!123 = distinct !{!123, !39}
!124 = distinct !{!124, !36}
!125 = distinct !{!125, !36, !37}
!126 = distinct !{!126, !36}
!127 = distinct !{!127, !36}
!128 = distinct !{!128, !36, !37, !38}
!129 = distinct !{!129, !36, !38, !37}
!130 = distinct !{!130, !36, !37, !38}
!131 = distinct !{!131, !36, !37, !38}
!132 = distinct !{!132, !36, !38, !37}
!133 = distinct !{!133, !36, !38, !37}
!134 = distinct !{!134, !36, !37, !38}
!135 = distinct !{!135, !39}
!136 = distinct !{!136, !36}
!137 = distinct !{!137, !36, !37}
!138 = distinct !{!138, !36}
!139 = distinct !{!139, !36}
!140 = distinct !{!140, !36, !37, !38}
!141 = distinct !{!141, !36, !38, !37}
!142 = distinct !{!142, !36, !37, !38}
!143 = distinct !{!143, !36, !37, !38}
!144 = distinct !{!144, !36, !38, !37}
!145 = distinct !{!145, !36, !38, !37}
!146 = distinct !{!146, !36}
!147 = distinct !{!147, !36}
!148 = !{!109}
!149 = !{!110}
!150 = !{!119}
!151 = !{!120}
!152 = !{!121}
!153 = !{!120, !119}
!154 = distinct !{!154, !36, !37, !38}
!155 = distinct !{!155, !36, !38, !37}
!156 = distinct !{!156, !36, !37, !38}
!157 = distinct !{!157, !36, !38, !37}
!158 = distinct !{!158, !36, !37, !38}
!159 = distinct !{!159, !36, !38, !37}
!160 = distinct !{!160, !36}
!161 = distinct !{!161, !39}
!162 = distinct !{!162, !36}
!163 = distinct !{!163, !36}
!164 = distinct !{!164, !"LVerDomain"}
!165 = distinct !{!165, !164}
!166 = distinct !{!166, !164}
!167 = distinct !{!167, !36, !37, !38}
!168 = distinct !{!168, !39}
!169 = distinct !{!169, !36, !37, !38}
!170 = distinct !{!170, !36}
!171 = distinct !{!171, !36, !37}
!172 = distinct !{!172, !36, !38, !37}
!173 = distinct !{!173, !36, !37, !38}
!174 = distinct !{!174, !36}
!175 = distinct !{!175, !36, !37}
!176 = !{!165}
!177 = !{!166}
!178 = !{ptr @_ZNK5faiss15VectorTransform5applyElPKf}
!179 = distinct !{!179, !36, !37, !38}
!180 = distinct !{!180, !36}
!181 = distinct !{!181, !36, !37}
!182 = distinct !{!182, !"LVerDomain"}
!183 = distinct !{!183, !182}
!184 = distinct !{!184, !182}
!185 = distinct !{!185, !36, !37, !38}
!186 = distinct !{!186, !39}
!187 = distinct !{!187, !36, !37, !38}
!188 = distinct !{!188, !36}
!189 = distinct !{!189, !36, !37}
!190 = distinct !{!190, !36, !38, !37}
!191 = distinct !{!191, !36, !37, !38}
!192 = distinct !{!192, !39}
!193 = distinct !{!193, !36}
!194 = distinct !{!194, !36, !37}
!195 = distinct !{!195, !36}
!196 = distinct !{!196, !36}
!197 = !{!183}
!198 = !{!184}
!199 = !{!"_ZTSN5faiss9QuantizerE", !14, i64 8, !14, i64 16}
!200 = !{!199, !14, i64 16}
!201 = !{!"_ZTSN5faiss16ProductQuantizer12train_type_tE", !6, i64 0}
!202 = !{!"_ZTSN5faiss20ClusteringInitMethodE", !6, i64 0}
!203 = !{!"short", !6, i64 0}
!204 = !{!"_ZTSN5faiss20ClusteringParametersE", !7, i64 0, !7, i64 4, !19, i64 8, !19, i64 9, !19, i64 10, !19, i64 11, !19, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !14, i64 32, !19, i64 40, !19, i64 41, !202, i64 42, !203, i64 44, !59, i64 48}
!205 = !{!"p1 _ZTSN5faiss5IndexE", !10, i64 0}
!206 = !{!"_ZTSN5faiss16ProductQuantizerE", !199, i64 0, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !19, i64 56, !201, i64 60, !204, i64 64, !205, i64 120, !28, i64 128, !28, i64 152, !28, i64 176, !28, i64 200}
!207 = !{!206, !7, i64 84}
!208 = !{!206, !7, i64 64}
!209 = !{!206, !19, i64 56}
!210 = !{!206, !205, i64 120}
!211 = !{!206, !201, i64 60}
!212 = distinct !{!212, !"LVerDomain"}
!213 = distinct !{!213, !212}
!214 = distinct !{!214, !212}
!215 = distinct !{!215, !36, !37, !38}
!216 = distinct !{!216, !39}
!217 = distinct !{!217, !36, !37, !38}
!218 = distinct !{!218, !36}
!219 = distinct !{!219, !36, !37}
!220 = distinct !{!220, !36, !38, !37}
!221 = !{!213}
!222 = !{!214}
!223 = distinct !{!223, !36, !37, !38}
!224 = distinct !{!224, !39}
!225 = distinct !{!225, !36}
!226 = distinct !{!226, !36, !37}
!227 = distinct !{!227, !36, !37, !38}
!228 = distinct !{!228, !39}
!229 = distinct !{!229, !36}
!230 = distinct !{!230, !36, !37}
!231 = !{ptr @_ZN5faiss18CenteringTransformD2Ev}
!232 = distinct !{!232, !36, !37, !38}
!233 = distinct !{!233, !39}
!234 = distinct !{!234, !36}
!235 = distinct !{!235, !36, !37}
!236 = distinct !{!236, !36, !37, !38}
!237 = distinct !{!237, !36}
!238 = distinct !{!238, !36, !38, !37}
!239 = distinct !{!239, !36}
!240 = distinct !{!240, !36}
!241 = distinct !{!241, !"LVerDomain"}
!242 = distinct !{!242, !241}
!243 = distinct !{!243, !241}
!244 = distinct !{!244, !36, !37, !38}
!245 = distinct !{!245, !39}
!246 = distinct !{!246, !36, !37}
!247 = distinct !{!247, !36}
!248 = !{!242}
!249 = !{!243}
!250 = distinct !{!250, !36}
!251 = distinct !{!251, !36}
!252 = distinct !{!252, !36}
!253 = distinct !{!253, !36}
!254 = distinct !{}
!255 = distinct !{!255, !"LVerDomain"}
!256 = distinct !{!256, !255}
!257 = distinct !{!257, !255}
!258 = distinct !{!258, !255}
!259 = distinct !{!259, !36, !37, !38}
!260 = distinct !{!260, !39}
!261 = distinct !{!261, !36, !37}
!262 = distinct !{!262, !36, !37, !38}
!263 = distinct !{!263, !36}
!264 = distinct !{!264, !36}
!265 = distinct !{!265, !36, !38, !37}
!266 = distinct !{!266, !"LVerDomain"}
!267 = distinct !{!267, !266}
!268 = distinct !{!268, !266}
!269 = distinct !{!269, !36, !37, !38}
!270 = distinct !{!270, !39}
!271 = distinct !{!271, !36, !37, !38}
!272 = distinct !{!272, !36, !38, !37}
!273 = distinct !{!273, !"LVerDomain"}
!274 = distinct !{!274, !273}
!275 = distinct !{!275, !273}
!276 = distinct !{!276, !36, !37, !38}
!277 = distinct !{!277, !39}
!278 = distinct !{!278, !36, !37}
!279 = distinct !{!279, !36, !37, !38}
!280 = distinct !{!280, !36, !38, !37}
!281 = distinct !{!281, !"LVerDomain"}
!282 = distinct !{!282, !281}
!283 = distinct !{!283, !281}
!284 = distinct !{!284, !36, !37, !38}
!285 = distinct !{!285, !39}
!286 = distinct !{!286, !36, !37}
!287 = distinct !{!287, !299}
!288 = distinct !{!288, !36, !37}
!289 = !{!256}
!290 = !{!257}
!291 = !{!258}
!292 = !{!256, !257}
!293 = !{!267}
!294 = !{!268}
!295 = !{!274}
!296 = !{!275}
!297 = !{!282}
!298 = !{!283}
!299 = !{!"llvm.loop.parallel_accesses", !254}
!300 = distinct !{!300, !36}
!301 = distinct !{!301, !36}
!302 = distinct !{!302, !36}
!303 = distinct !{!303, !"LVerDomain"}
!304 = distinct !{!304, !303}
!305 = distinct !{!305, !303}
!306 = distinct !{!306, !36, !37, !38}
!307 = distinct !{!307, !36, !37}
!308 = distinct !{!308, !36}
!309 = !{!304}
!310 = !{!305}
!311 = distinct !{!311, !36, !37, !38}
!312 = distinct !{!312, !36, !38, !37}
!313 = distinct !{!313, !36}
!314 = distinct !{!314, !39}
!315 = distinct !{!315, !36}
!316 = distinct !{!316, !36}
!317 = distinct !{!317, !36}
!318 = distinct !{!318, !36}
!319 = distinct !{!319, !39}
!320 = distinct !{!320, !36}
!321 = distinct !{!321, !36}
!322 = distinct !{!322, !39}
!323 = distinct !{!323, !36}
!324 = distinct !{!324, !36, !37, !38}
!325 = distinct !{!325, !36, !38, !37}
!326 = distinct !{!326, !36, !37, !38}
!327 = distinct !{!327, !36, !38, !37}
!328 = distinct !{!328, !36, !37, !38}
!329 = distinct !{!329, !36, !38, !37}
!330 = distinct !{!330, !36, !37, !38}
!331 = distinct !{!331, !36, !38, !37}
!332 = !{!80, !7, i64 84}
!333 = !{!80, !7, i64 88}
!334 = distinct !{!334, !36}
!335 = distinct !{!335, !36, !37, !38}
!336 = distinct !{!336, !36, !37, !38}
!337 = distinct !{!337, !36}
!338 = distinct !{!338, !36, !38, !37}
!339 = distinct !{!339, !36, !38, !37}
!340 = distinct !{!340, !36, !37, !38}
!341 = distinct !{!341, !36, !38, !37}
!342 = distinct !{!342, !36, !37, !38}
!343 = distinct !{!343, !36, !38, !37}
!344 = distinct !{!344, !36, !37, !38}
!345 = distinct !{!345, !36, !38, !37}
!346 = distinct !{!346, !36, !37, !38}
!347 = distinct !{!347, !36, !38, !37}
end_hunk_1
