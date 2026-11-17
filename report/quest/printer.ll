Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/printer?download=true
inline.NumInlined: 3013
inline.NumDeleted: 673
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_Z17getMemoryCostsStrB5cxx11mbb:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z23getMatrixOfQcompStringsB5cxx11St6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !68     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = sdiv exact i64 %i.g, 24                  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70   ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = ashr exact i64 %i.n, 4                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.p = icmp ugt i64 %i.o, 288230376151711743
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #31
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.c
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.k          ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.loopexit32

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.q = shl nuw nsw i64 %i.n, 1
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #33
          to label %.noexc24 unwind label %bb.i   ; 4 uses

.noexc24:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  store ptr %i.r, ptr %2, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !58
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc24, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.prol ], [ %i.r, %.noexc24 ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.prol ], [ %i.o, %.noexc24 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc24 ]
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.u, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !36
  store i8 0, ptr %i.u, align 8, !tbaa !35
  %i.w = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !755

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc24
  %.lcssa.unr = phi ptr [ poison, %.noexc24 ], [ %i.x, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.r, %.noexc24 ], [ %i.x, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.o, %.noexc24 ], [ %i.w, %.lr.ph.i.i.i.i.i.prol ]
  %i.y = icmp ult i64 %i.o, 4
  br i1 %i.y, label %.loopexit32, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.z, ptr %.08.i.i.i.i.i, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !36
  store i8 0, ptr %i.z, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.ad, align 8, !tbaa !36
  store i8 0, ptr %i.ac, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ag, align 8, !tbaa !36
  store i8 0, ptr %i.af, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.aj, align 8, !tbaa !36
  store i8 0, ptr %i.ai, align 8, !tbaa !35
  %i.ak = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit32, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

.loopexit32:                                      ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.am, align 8, !tbaa !59
  %i.an = icmp ugt i64 %i.h, 384307168202282325
  br i1 %i.an, label %bb.e, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i

bb.e:                                             ; preds = %.loopexit32
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #31
          to label %.noexc26 unwind label %bb.j

.noexc26:                                         ; preds = %bb.e
  unreachable

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i: ; preds = %.loopexit32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #33
          to label %_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EEC2EmRKS9_.exit.i unwind label %bb.j ; 5 uses

_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EEC2EmRKS9_.exit.i: ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i
  store ptr %i.ao, ptr %0, align 8, !tbaa !74
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !75
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !76
  %i.as = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEmS8_ET_SA_T0_RKT1_(ptr noundef nonnull %i.ao, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EEC2EmRKS9_.exit.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.g) #32
  br label %.body

bb.g:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EEC2EmRKS9_.exit.i
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !75
  %i.au = load ptr, ptr %2, align 8, !tbaa !57    ; 3 uses
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.au, %bb.g ] ; 3 uses
  %i.aw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !35
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.bb, %i.av
  br i1 %.not.i.i.i28, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.g
  %i.bc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.au, %bb.g ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i, label %.preheader.lr.ph, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !58
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #32
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.h, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  br i1 %.not.i.i.i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.01834 = phi i64 [ %i.bm, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  br label %bb.l

bb.i:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %bb.d
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i, %bb.e
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.j ], [ %i.at, %bb.f ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  br label %bb.k

bb.k:                                             ; preds = %.body, %bb.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bk, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.t

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bm = add nuw i64 %.01834, 1                  ; 2 uses
  %exitcond36.not = icmp eq i64 %i.bm, %i.h
  br i1 %exitcond36.not, label %.loopexit, label %.preheader, !llvm.loop !756

bb.l:                                             ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.01733 = phi i64 [ 0, %.preheader ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.bn = load ptr, ptr %1, align 8, !tbaa !78
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.01834
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !71
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.01733 ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.bq, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !35
  invoke void @_Z13printer_toStrIdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7complexIT_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, double %.sroa.0.0.copyload, double %.sroa.2.0.copyload)
          to label %_Z5toStrISt7complexIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit unwind label %bb.s

_Z5toStrISt7complexIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit: ; preds = %bb.l
  %4 = load ptr, ptr %0, align 8, !tbaa !74
  %5 = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %.01834
  %i.br = load ptr, ptr %5, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.br, i64 %.01733 ; 9 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !34 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 4 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  %i.bw = load ptr, ptr %3, align 8, !tbaa !34    ; 6 uses
  %i.bx = icmp eq ptr %i.bw, %i.bi                ; 2 uses
  br i1 %i.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_Z5toStrISt7complexIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit
  br i1 %i.bx, label %bb.m, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_Z5toStrISt7complexIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_.exit
  br i1 %i.bx, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.by = load i64, ptr %i.bj, align 8, !tbaa !36 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  %.not21.i = icmp eq ptr %3, %i.bs
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.n, !prof !62

bb.n:                                             ; preds = %bb.m
  switch i64 %i.by, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !35
  store i8 %i.ca, ptr %i.bt, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %i.bw, i64 %i.by, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.cb = load i64, ptr %i.bj, align 8, !tbaa !36 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !36
  %i.cd = load ptr, ptr %i.bs, align 8, !tbaa !34
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb
  store i8 0, ptr %i.ce, align 1, !tbaa !35
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !34
  %i.cg = load i64, ptr %i.bj, align 8, !tbaa !36
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !36
  %i.ch = load i64, ptr %i.bi, align 8, !tbaa !35
  store i64 %i.ch, ptr %i.bu, align 8, !tbaa !35
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ci = load i64, ptr %i.bu, align 8, !tbaa !35
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !34
  %i.cj = load i64, ptr %i.bj, align 8, !tbaa !36
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !36
  %i.cl = load i64, ptr %i.bi, align 8, !tbaa !35
  store i64 %i.cl, ptr %i.bu, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bt, ptr %3, align 8, !tbaa !34
  store i64 %i.ci, ptr %i.bi, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bi, ptr %3, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.q, %bb.r
  %i.cm = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bt, %bb.q ], [ %i.bi, %bb.r ], [ %i.bw, %bb.m ]
  store i64 0, ptr %i.bj, align 8, !tbaa !36
  store i8 0, ptr %i.cm, align 1, !tbaa !35
  %i.cn = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bi
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cp = load i64, ptr %i.bi, align 8, !tbaa !35
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.cr = add nuw i64 %.01733, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !757

bb.s:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #29
  br label %bb.t

.loopexit:                                        ; preds = %._crit_edge, %.preheader.lr.ph, %bb.b
  ret void

bb.t:                                             ; preds = %bb.k, %bb.s
  %.pn22 = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.cs, %bb.s ]
  resume { ptr, i32 } %.pn22
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.s, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !57 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !35
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i.i
  %i.m = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #32
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !74
  br label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.t = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.t, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #32
  br label %_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EES8_EvT_SA_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvT_SA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvT_SC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i
  %.05.i = phi ptr [ %i.p, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i ], [ %0, %bb.a ] ; 5 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !57 ; 3 uses
end_hunk_0
begin_hunk_1_@_Z11print_elems11PauliStrSumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.cb = load ptr, ptr %i.n, align 8, !tbaa !106 ; 2 uses
  %i.cc = load ptr, ptr %2, align 8, !tbaa !78    ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 24                ; 7 uses
  %i.ch = icmp ugt i64 %i.cg, 288230376151711743
  br i1 %i.ch, label %bb.n, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #31
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.m
  %.not.i.i.i.i = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %.loopexit418

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.ci = shl nuw nsw i64 %i.cg, 5
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #33
          to label %.noexc50 unwind label %bb.q   ; 4 uses

.noexc50:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  store ptr %i.cj, ptr %7, align 8, !tbaa !57
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %i.cg
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !58
  %xtraiter566 = and i64 %i.cg, 3                 ; 2 uses
  %lcmp.mod567.not = icmp eq i64 %xtraiter566, 0
  br i1 %lcmp.mod567.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc50, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.prol ], [ %i.cj, %.noexc50 ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.prol ], [ %i.cg, %.noexc50 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc50 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.cm, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !30
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.cn, align 8, !tbaa !36
  store i8 0, ptr %i.cm, align 8, !tbaa !35
  %i.co = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter566
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !864

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc50
  %.lcssa558.unr = phi ptr [ poison, %.noexc50 ], [ %i.cp, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.cj, %.noexc50 ], [ %i.cp, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.cg, %.noexc50 ], [ %i.co, %.lr.ph.i.i.i.i.i.prol ]
  %i.cq = icmp ult i64 %i.cg, 4
  br i1 %i.cq, label %.loopexit418, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.cr, ptr %.08.i.i.i.i.i, align 8, !tbaa !30
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.cs, align 8, !tbaa !36
  store i8 0, ptr %i.cr, align 8, !tbaa !35
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !30
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.cv, align 8, !tbaa !36
  store i8 0, ptr %i.cu, align 8, !tbaa !35
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !30
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.cy, align 8, !tbaa !36
  store i8 0, ptr %i.cx, align 8, !tbaa !35
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !30
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.db, align 8, !tbaa !36
  store i8 0, ptr %i.da, align 8, !tbaa !35
  %i.dc = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit418, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

.loopexit418:                                     ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa558.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.dd, %.lr.ph.i.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.de, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.df = load ptr, ptr %i.aj, align 8, !tbaa !106 ; 2 uses
  %i.dg = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = sdiv exact i64 %i.dj, 24                ; 7 uses
  %i.dl = icmp ugt i64 %i.dk, 288230376151711743
  br i1 %i.dl, label %bb.o, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i51

bb.o:                                             ; preds = %.loopexit418
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #31
          to label %.noexc60 unwind label %bb.r

.noexc60:                                         ; preds = %bb.o
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i51: ; preds = %.loopexit418
  %.not.i.i.i.i52 = icmp eq ptr %i.df, %i.dg
  br i1 %.not.i.i.i.i52, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i59, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i53

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i59: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i53: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i51
  %i.dm = shl nuw nsw i64 %i.dk, 5
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #33
          to label %.noexc61 unwind label %bb.r   ; 4 uses

.noexc61:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i53
  store ptr %i.dn, ptr %8, align 8, !tbaa !57
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %i.dk
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !58
  %xtraiter568 = and i64 %i.dk, 3                 ; 2 uses
  %lcmp.mod569.not = icmp eq i64 %xtraiter568, 0
  br i1 %lcmp.mod569.not, label %.lr.ph.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i54.prol

.lr.ph.i.i.i.i.i54.prol:                          ; preds = %.noexc61, %.lr.ph.i.i.i.i.i54.prol
  %.08.i.i.i.i.i55.prol = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i54.prol ], [ %i.dn, %.noexc61 ] ; 4 uses
  %.057.i.i.i.i.i56.prol = phi i64 [ %i.ds, %.lr.ph.i.i.i.i.i54.prol ], [ %i.dk, %.noexc61 ]
  %prol.iter570 = phi i64 [ %prol.iter570.next, %.lr.ph.i.i.i.i.i54.prol ], [ 0, %.noexc61 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55.prol, i64 16 ; 2 uses
  store ptr %i.dq, ptr %.08.i.i.i.i.i55.prol, align 8, !tbaa !30
  %i.dr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55.prol, i64 8
  store i64 0, ptr %i.dr, align 8, !tbaa !36
  store i8 0, ptr %i.dq, align 8, !tbaa !35
  %i.ds = add nsw i64 %.057.i.i.i.i.i56.prol, -1  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55.prol, i64 32 ; 3 uses
  %prol.iter570.next = add i64 %prol.iter570, 1   ; 2 uses
  %prol.iter570.cmp.not = icmp eq i64 %prol.iter570.next, %xtraiter568
  br i1 %prol.iter570.cmp.not, label %.lr.ph.i.i.i.i.i54.prol.loopexit, label %.lr.ph.i.i.i.i.i54.prol, !llvm.loop !865

.lr.ph.i.i.i.i.i54.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i54.prol, %.noexc61
  %.lcssa.unr = phi ptr [ poison, %.noexc61 ], [ %i.dt, %.lr.ph.i.i.i.i.i54.prol ]
  %.08.i.i.i.i.i55.unr = phi ptr [ %i.dn, %.noexc61 ], [ %i.dt, %.lr.ph.i.i.i.i.i54.prol ]
  %.057.i.i.i.i.i56.unr = phi i64 [ %i.dk, %.noexc61 ], [ %i.ds, %.lr.ph.i.i.i.i.i54.prol ]
  %i.du = icmp ult i64 %i.dk, 4
  br i1 %i.du, label %.loopexit, label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i54
  %.08.i.i.i.i.i55 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i54 ], [ %.08.i.i.i.i.i55.unr, %.lr.ph.i.i.i.i.i54.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i56 = phi i64 [ %i.eg, %.lr.ph.i.i.i.i.i54 ], [ %.057.i.i.i.i.i56.unr, %.lr.ph.i.i.i.i.i54.prol.loopexit ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 16 ; 2 uses
  store ptr %i.dv, ptr %.08.i.i.i.i.i55, align 8, !tbaa !30
  %i.dw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 8
  store i64 0, ptr %i.dw, align 8, !tbaa !36
  store i8 0, ptr %i.dv, align 8, !tbaa !35
  %i.dx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 48 ; 2 uses
  store ptr %i.dy, ptr %i.dx, align 8, !tbaa !30
  %i.dz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 40
  store i64 0, ptr %i.dz, align 8, !tbaa !36
  store i8 0, ptr %i.dy, align 8, !tbaa !35
  %i.ea = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 64
  %i.eb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 80 ; 2 uses
  store ptr %i.eb, ptr %i.ea, align 8, !tbaa !30
  %i.ec = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 72
  store i64 0, ptr %i.ec, align 8, !tbaa !36
  store i8 0, ptr %i.eb, align 8, !tbaa !35
  %i.ed = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 96
  %i.ee = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 112 ; 2 uses
  store ptr %i.ee, ptr %i.ed, align 8, !tbaa !30
  %i.ef = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 104
  store i64 0, ptr %i.ef, align 8, !tbaa !36
  store i8 0, ptr %i.ee, align 8, !tbaa !35
  %i.eg = add nsw i64 %.057.i.i.i.i.i56, -4       ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i55, i64 128 ; 2 uses
  %.not.i.i.i.i.i57.3 = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i.i.i.i57.3, label %.loopexit, label %.lr.ph.i.i.i.i.i54, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i54.prol.loopexit, %.lr.ph.i.i.i.i.i54, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i59
  %.0.lcssa.i.i.i.i.i58 = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i59 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i54.prol.loopexit ], [ %i.eh, %.lr.ph.i.i.i.i.i54 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i58, ptr %i.ei, align 8, !tbaa !59
  %i.ej = icmp sgt i64 %.sroa.0363.0, 0
  br i1 %i.ej, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.loopexit
  %i.ek = icmp eq i32 %.sroa.speculated, 0
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.en = load ptr, ptr %i.bg, align 8, !tbaa !873
  br label %bb.s

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.loopexit
  %i.eo = icmp sgt i64 %.sroa.12.0, 0
  br i1 %i.eo, label %.lr.ph422, label %._crit_edge

.lr.ph422:                                        ; preds = %.preheader
  %i.ep = icmp eq i32 %.sroa.speculated, 0
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 10 uses
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.es = load ptr, ptr %i.bg, align 8, !tbaa !873
  %invariant.gep = getelementptr [16 x i8], ptr %i.es, i64 %i.m
  br label %bb.ah

bb.p:                                             ; preds = %_Z23populateMatrixQuadrantsI11PauliStrSumEv18MatrixQuadrantIndsRSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES9_S9_S9_T_.exit, %_Z30getTruncatedMatrixQuadrantIndsxx.exit, %bb.k
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.q:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %bb.n
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.r:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i53, %bb.o
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.s:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.031420 = phi i64 [ 0, %.lr.ph ], [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %.031420 ; 2 uses
  %.sroa.04.0.copyload = load i64, ptr %i.ew, align 8, !tbaa !25 ; 3 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.sroa.25.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !25 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  br i1 %i.ek, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ex = invoke noundef i32 @_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr(i64 %.sroa.04.0.copyload, i64 %.sroa.25.0.copyload)
          to label %.noexc63 unwind label %bb.ad

.noexc63:                                         ; preds = %bb.t
  %i.ey = add nsw i32 %i.ex, 1
  br label %bb.u

bb.u:                                             ; preds = %.noexc63, %bb.s
  %.0.i = phi i32 [ %i.ey, %.noexc63 ], [ %.sroa.speculated, %bb.s ] ; 2 uses
  %i.ez = load i32, ptr @global_pauliStrFormatFlag, align 4, !tbaa !26, !noalias !874
  switch i32 %i.ez, label %.noexc.i.i [
    i32 0, label %bb.v
    i32 1, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  invoke void @_Z28getPauliStrAsAllQubitsStringB5cxx118PauliStri(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i64 %.sroa.04.0.copyload, i64 %.sroa.25.0.copyload, i32 noundef %.0.i)
          to label %_Z19getPauliStrAsStringB5cxx118PauliStri.exit unwind label %bb.ad

bb.w:                                             ; preds = %bb.u
  invoke void @_Z24getPauliStrAsIndexStringB5cxx118PauliStri(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i64 %.sroa.04.0.copyload, i64 %.sroa.25.0.copyload, i32 noundef %.0.i)
          to label %_Z19getPauliStrAsStringB5cxx118PauliStri.exit unwind label %bb.ad

.noexc.i.i:                                       ; preds = %bb.u
  store ptr %i.el, ptr %9, align 8, !tbaa !30, !alias.scope !874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29, !noalias !874
  store i64 60, ptr %i.d, align 8, !tbaa !32, !noalias !874
  %i.fa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc66 unwind label %bb.ad  ; 3 uses

.noexc66:                                         ; preds = %.noexc.i.i
  store ptr %i.fa, ptr %9, align 8, !tbaa !34, !alias.scope !874
  %i.fb = load i64, ptr %i.d, align 8, !tbaa !32, !noalias !874 ; 3 uses
  store i64 %i.fb, ptr %i.el, align 8, !tbaa !35, !alias.scope !874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.fa, ptr noundef nonnull align 1 dereferenceable(60) @.str.79, i64 60, i1 false)
  store i64 %i.fb, ptr %i.em, align 8, !tbaa !36, !alias.scope !874
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fb
  store i8 0, ptr %i.fc, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29, !noalias !874
  br label %_Z19getPauliStrAsStringB5cxx118PauliStri.exit

_Z19getPauliStrAsStringB5cxx118PauliStri.exit:    ; preds = %.noexc66, %bb.v, %bb.w
  %23 = load ptr, ptr %7, align 8, !tbaa !57
  %i.fd = getelementptr inbounds nuw [32 x i8], ptr %23, i64 %.031420 ; 9 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !34 ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 4 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  %i.fh = load ptr, ptr %9, align 8, !tbaa !34    ; 6 uses
  %i.fi = icmp eq ptr %i.fh, %i.el                ; 2 uses
  br i1 %i.fg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_Z19getPauliStrAsStringB5cxx118PauliStri.exit
  br i1 %i.fi, label %bb.x, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_Z19getPauliStrAsStringB5cxx118PauliStri.exit
  br i1 %i.fi, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fj = load i64, ptr %i.em, align 8, !tbaa !36 ; 3 uses
  %i.fk = icmp ult i64 %i.fj, 16
  call void @llvm.assume(i1 %i.fk)
  %.not21.i = icmp eq ptr %9, %i.fd
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.y, !prof !62

bb.y:                                             ; preds = %bb.x
  switch i64 %i.fj, label %bb.aa [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.fl = load i8, ptr %i.fh, align 1, !tbaa !35
  store i8 %i.fl, ptr %i.fe, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fe, ptr align 1 %i.fh, i64 %i.fj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.aa, %bb.z, %bb.y
  %i.fm = load i64, ptr %i.em, align 8, !tbaa !36 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !36
  %i.fo = load ptr, ptr %i.fd, align 8, !tbaa !34
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fm
  store i8 0, ptr %i.fp, align 1, !tbaa !35
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %i.fh, ptr %i.fd, align 8, !tbaa !34
  %i.fr = load i64, ptr %i.em, align 8, !tbaa !36
  store i64 %i.fr, ptr %i.fq, align 8, !tbaa !36
  %i.fs = load i64, ptr %i.el, align 8, !tbaa !35
  store i64 %i.fs, ptr %i.ff, align 8, !tbaa !35
  br label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ft = load i64, ptr %i.ff, align 8, !tbaa !35
  store ptr %i.fh, ptr %i.fd, align 8, !tbaa !34
  %i.fu = load i64, ptr %i.em, align 8, !tbaa !36
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !36
  %i.fw = load i64, ptr %i.el, align 8, !tbaa !35
  store i64 %i.fw, ptr %i.ff, align 8, !tbaa !35
  %.not.i67 = icmp eq ptr %i.fe, null
  br i1 %.not.i67, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.fe, ptr %9, align 8, !tbaa !34
  store i64 %i.ft, ptr %i.el, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.el, ptr %9, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ab, %bb.ac
  %i.fx = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.fe, %bb.ab ], [ %i.el, %bb.ac ], [ %i.fh, %bb.x ]
  store i64 0, ptr %i.em, align 8, !tbaa !36
  store i8 0, ptr %i.fx, align 1, !tbaa !35
  %i.fy = load ptr, ptr %9, align 8, !tbaa !34    ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.el
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ga = load i64, ptr %i.el, align 8, !tbaa !35
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.gc = add nuw nsw i64 %.031420, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.gc, %.sroa.0363.0
  br i1 %exitcond.not, label %.preheader, label %bb.s, !llvm.loop !868

bb.ad:                                            ; preds = %.noexc.i.i, %bb.w, %bb.v, %bb.t
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.cz

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ge = load ptr, ptr %i.n, align 8, !tbaa !106 ; 3 uses
  %i.gf = load ptr, ptr %2, align 8, !tbaa !78    ; 3 uses
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gg, %i.gh                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i68 = icmp eq ptr %i.ge, %i.gf
  br i1 %.not.i.i.i.i68, label %.noexc71, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  %i.gj = sdiv exact i64 %i.gi, 24
  %i.gk = icmp ugt i64 %i.gj, 384307168202282325
  br i1 %i.gk, label %.noexc.i.i69, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !62

.noexc.i.i69:                                     ; preds = %bb.ae
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc70 unwind label %bb.cq

.noexc70:                                         ; preds = %.noexc.i.i69
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.ae
  %i.gl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gi) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc71_crit_edge unwind label %bb.cq

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc71_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !68
  %.pre425 = load ptr, ptr %i.n, align 8, !tbaa !68
  br label %.noexc71

.noexc71:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc71_crit_edge, %._crit_edge
  %i.gm = phi ptr [ %i.ge, %._crit_edge ], [ %.pre425, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc71_crit_edge ]
  %i.gn = phi ptr [ %i.gf, %._crit_edge ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc71_crit_edge ]
  %.pr.i254 = phi ptr [ null, %._crit_edge ], [ %i.gl, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i..noexc71_crit_edge ] ; 10 uses
  store ptr %.pr.i254, ptr %12, align 8, !tbaa !78
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %.pr.i254, ptr %i.go, align 8, !tbaa !106
  %i.gp = getelementptr inbounds nuw i8, ptr %.pr.i254, i64 %i.gi
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !107
  %i.gr = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.gn, ptr %i.gm, ptr noundef %.pr.i254)
          to label %bb.at unwind label %bb.af     ; 3 uses

bb.af:                                            ; preds = %.noexc71
  %i.gs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i254, null
  br i1 %.not.i.i.i, label %.body, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i254, i64 noundef %i.gi) #32
  br label %.body

bb.ah:                                            ; preds = %.lr.ph422, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %.030421 = phi i64 [ 0, %.lr.ph422 ], [ %i.hy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %.030421 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %gep, align 8, !tbaa !25 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !25 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  br i1 %i.ep, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gt = invoke noundef i32 @_Z38paulis_getIndOfLefmostNonIdentityPauli8PauliStr(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
          to label %.noexc74 unwind label %bb.as

.noexc74:                                         ; preds = %bb.ai
  %i.gu = add nsw i32 %i.gt, 1
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc74, %bb.ah
  %.0.i72 = phi i32 [ %i.gu, %.noexc74 ], [ %.sroa.speculated, %bb.ah ] ; 2 uses
  %i.gv = load i32, ptr @global_pauliStrFormatFlag, align 4, !tbaa !26, !noalias !875
  switch i32 %i.gv, label %.noexc.i.i73 [
    i32 0, label %bb.ak
    i32 1, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  invoke void @_Z28getPauliStrAsAllQubitsStringB5cxx118PauliStri(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %.0.i72)
          to label %_Z19getPauliStrAsStringB5cxx118PauliStri.exit78 unwind label %bb.as

bb.al:                                            ; preds = %bb.aj
  invoke void @_Z24getPauliStrAsIndexStringB5cxx118PauliStri(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %.0.i72)
          to label %_Z19getPauliStrAsStringB5cxx118PauliStri.exit78 unwind label %bb.as

.noexc.i.i73:                                     ; preds = %bb.aj
  store ptr %i.eq, ptr %10, align 8, !tbaa !30, !alias.scope !875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29, !noalias !875
  store i64 60, ptr %i.c, align 8, !tbaa !32, !noalias !875
  %i.gw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc77 unwind label %bb.as  ; 3 uses

.noexc77:                                         ; preds = %.noexc.i.i73
  store ptr %i.gw, ptr %10, align 8, !tbaa !34, !alias.scope !875
  %i.gx = load i64, ptr %i.c, align 8, !tbaa !32, !noalias !875 ; 3 uses
  store i64 %i.gx, ptr %i.eq, align 8, !tbaa !35, !alias.scope !875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.gw, ptr noundef nonnull align 1 dereferenceable(60) @.str.79, i64 60, i1 false)
  store i64 %i.gx, ptr %i.er, align 8, !tbaa !36, !alias.scope !875
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gx
  store i8 0, ptr %i.gy, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29, !noalias !875
  br label %_Z19getPauliStrAsStringB5cxx118PauliStri.exit78

_Z19getPauliStrAsStringB5cxx118PauliStri.exit78:  ; preds = %.noexc77, %bb.ak, %bb.al
  %24 = load ptr, ptr %8, align 8, !tbaa !57
  %i.gz = getelementptr inbounds nuw [32 x i8], ptr %24, i64 %.030421 ; 9 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !34 ; 6 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 4 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  %i.hd = load ptr, ptr %10, align 8, !tbaa !34   ; 6 uses
  %i.he = icmp eq ptr %i.hd, %i.eq                ; 2 uses
  br i1 %i.hc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i85: ; preds = %_Z19getPauliStrAsStringB5cxx118PauliStri.exit78
  br i1 %i.he, label %bb.am, label %.thread.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i79: ; preds = %_Z19getPauliStrAsStringB5cxx118PauliStri.exit78
  br i1 %i.he, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i80

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i85
  %i.hf = load i64, ptr %i.er, align 8, !tbaa !36 ; 3 uses
  %i.hg = icmp ult i64 %i.hf, 16
  call void @llvm.assume(i1 %i.hg)
  %.not21.i82 = icmp eq ptr %10, %i.gz
  br i1 %.not21.i82, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87, label %bb.an, !prof !62

bb.an:                                            ; preds = %bb.am
  switch i64 %i.hf, label %bb.ap [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i83
    i64 1, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  %i.hh = load i8, ptr %i.hd, align 1, !tbaa !35
  store i8 %i.hh, ptr %i.ha, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i83

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ha, ptr align 1 %i.hd, i64 %i.hf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i83: ; preds = %bb.ap, %bb.ao, %bb.an
  %i.hi = load i64, ptr %i.er, align 8, !tbaa !36 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !36
  %i.hk = load ptr, ptr %i.gz, align 8, !tbaa !34
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hi
  store i8 0, ptr %i.hl, align 1, !tbaa !35
  %.pre.i84 = load ptr, ptr %10, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87

.thread.i86:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i85
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.hd, ptr %i.gz, align 8, !tbaa !34
  %i.hn = load i64, ptr %i.er, align 8, !tbaa !36
  store i64 %i.hn, ptr %i.hm, align 8, !tbaa !36
  %i.ho = load i64, ptr %i.eq, align 8, !tbaa !35
  store i64 %i.ho, ptr %i.hb, align 8, !tbaa !35
  br label %bb.ar

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i80: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i79
  %i.hp = load i64, ptr %i.hb, align 8, !tbaa !35
  store ptr %i.hd, ptr %i.gz, align 8, !tbaa !34
  %i.hq = load i64, ptr %i.er, align 8, !tbaa !36
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i64 %i.hq, ptr %i.hr, align 8, !tbaa !36
  %i.hs = load i64, ptr %i.eq, align 8, !tbaa !35
  store i64 %i.hs, ptr %i.hb, align 8, !tbaa !35
  %.not.i81 = icmp eq ptr %i.ha, null
  br i1 %.not.i81, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i80
  store ptr %i.ha, ptr %10, align 8, !tbaa !34
  store i64 %i.hp, ptr %i.eq, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i80, %.thread.i86
  store ptr %i.eq, ptr %10, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87: ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i83, %bb.aq, %bb.ar
  %i.ht = phi ptr [ %.pre.i84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i83 ], [ %i.ha, %bb.aq ], [ %i.eq, %bb.ar ], [ %i.hd, %bb.am ]
  store i64 0, ptr %i.er, align 8, !tbaa !36
  store i8 0, ptr %i.ht, align 1, !tbaa !35
  %i.hu = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.eq
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87
  %i.hw = load i64, ptr %i.eq, align 8, !tbaa !35
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.hy = add nuw nsw i64 %.030421, 1             ; 2 uses
  %exitcond424.not = icmp eq i64 %i.hy, %.sroa.12.0
  br i1 %exitcond424.not, label %._crit_edge, label %bb.ah, !llvm.loop !871

bb.as:                                            ; preds = %.noexc.i.i73, %bb.al, %bb.ak, %bb.ai
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.cz

bb.at:                                            ; preds = %.noexc71
  store ptr %i.gr, ptr %i.go, align 8, !tbaa !106
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !106 ; 3 uses
  %i.ic = load ptr, ptr %3, align 8, !tbaa !78    ; 3 uses
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = sub i64 %i.id, %i.ie                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not.i.i.i.i91 = icmp eq ptr %i.ib, %i.ic
  br i1 %.not.i.i.i.i91, label %.noexc97, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ig = sdiv exact i64 %i.if, 24
  %i.ih = icmp ugt i64 %i.ig, 384307168202282325
  br i1 %i.ih, label %.noexc.i.i95, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i92, !prof !62

.noexc.i.i95:                                     ; preds = %bb.au
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc96 unwind label %bb.cr

.noexc96:                                         ; preds = %.noexc.i.i95
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i92: ; preds = %bb.au
  %i.ii = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.if) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i92..noexc97_crit_edge unwind label %bb.cr

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i92..noexc97_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i92
  %.pre426 = load ptr, ptr %3, align 8, !tbaa !68
  %.pre427 = load ptr, ptr %i.ia, align 8, !tbaa !68
  br label %.noexc97

.noexc97:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i92..noexc97_crit_edge, %bb.at
  %i.ij = phi ptr [ %i.ib, %bb.at ], [ %.pre427, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i92..noexc97_crit_edge ]
  %i.ik = phi ptr [ %i.ic, %bb.at ], [ %.pre426, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i92..noexc97_crit_edge ]
  %.pr.i242 = phi ptr [ null, %bb.at ], [ %i.ii, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i92..noexc97_crit_edge ] ; 10 uses
  store ptr %.pr.i242, ptr %13, align 8, !tbaa !78
  %i.il = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %.pr.i242, ptr %i.il, align 8, !tbaa !106
  %i.im = getelementptr inbounds nuw i8, ptr %.pr.i242, i64 %i.if
  %i.in = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.im, ptr %i.in, align 8, !tbaa !107
  %i.io = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ik, ptr %i.ij, ptr noundef %.pr.i242)
          to label %bb.ax unwind label %bb.av     ; 3 uses

bb.av:                                            ; preds = %.noexc97
  %i.ip = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %.pr.i242, null
  br i1 %.not.i.i.i93, label %.body98, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i242, i64 noundef %i.if) #32
  br label %.body98

bb.ax:                                            ; preds = %.noexc97
  store ptr %i.io, ptr %i.il, align 8, !tbaa !106
  %i.iq = load ptr, ptr %i.aj, align 8, !tbaa !106 ; 3 uses
  %i.ir = load ptr, ptr %4, align 8, !tbaa !78    ; 3 uses
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it                    ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i101 = icmp eq ptr %i.iq, %i.ir
  br i1 %.not.i.i.i.i101, label %.noexc107, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iv = sdiv exact i64 %i.iu, 24
  %i.iw = icmp ugt i64 %i.iv, 384307168202282325
  br i1 %i.iw, label %.noexc.i.i105, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i102, !prof !62

.noexc.i.i105:                                    ; preds = %bb.ay
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc106 unwind label %bb.cs

.noexc106:                                        ; preds = %.noexc.i.i105
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i102: ; preds = %bb.ay
  %i.ix = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iu) #33
          to label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i102..noexc107_crit_edge unwind label %bb.cs

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i102..noexc107_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i102
  %.pre428 = load ptr, ptr %4, align 8, !tbaa !68
  %.pre429 = load ptr, ptr %i.aj, align 8, !tbaa !68
  br label %.noexc107

.noexc107:                                        ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i102..noexc107_crit_edge, %bb.ax
  %i.iy = phi ptr [ %i.iq, %bb.ax ], [ %.pre429, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i102..noexc107_crit_edge ]
  %i.iz = phi ptr [ %i.ir, %bb.ax ], [ %.pre428, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i102..noexc107_crit_edge ]
  %.pr.i230 = phi ptr [ null, %bb.ax ], [ %i.ix, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i102..noexc107_crit_edge ] ; 10 uses
  store ptr %.pr.i230, ptr %14, align 8, !tbaa !78
  %i.ja = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %.pr.i230, ptr %i.ja, align 8, !tbaa !106
  %i.jb = getelementptr inbounds nuw i8, ptr %.pr.i230, i64 %i.iu
  %i.jc = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.jb, ptr %i.jc, align 8, !tbaa !107
  %i.jd = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.iz, ptr %i.iy, ptr noundef %.pr.i230)
end_hunk_1
