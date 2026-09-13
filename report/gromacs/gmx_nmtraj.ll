Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_nmtraj?download=true
inline.NumInlined: 354
inline.NumDeleted: 198
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Z10gmx_nmtrajiPPc:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr @.str.30, ptr %i.af, align 16, !tbaa !78
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 4, ptr %i.ag, align 8, !tbaa !76
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ai = invoke noundef zeroext i1 @_Z17parse_common_argsPiPPcmiP8t_filenmiP7t_pargsiPPKciS8_PP16gmx_output_env_t(ptr noundef nonnull %i.c, ptr noundef %1, i64 noundef 0, i32 noundef 3, ptr noundef nonnull %4, i32 noundef 5, ptr noundef nonnull %2, i32 noundef 15, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.r)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.ai, label %bb.d, label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit222

bb.d:                                             ; preds = %bb.b
  %i.ak = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.27, i32 noundef 3, ptr noundef nonnull %4)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  invoke void @_Z17read_eigenvectorsPKcPiPbPPA3_fS2_S5_S2_S1_PS1_PS5_PPf(ptr noundef %i.ak, ptr noundef nonnull %i.m, ptr noundef nonnull %i.p, ptr noundef nonnull %i.g, ptr noundef nonnull %i.n, ptr noundef nonnull %i.h, ptr noundef nonnull %i.o, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.q)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #16
  %i.al = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 26, i32 noundef 3, ptr noundef nonnull %4)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %bb.f
  store ptr %i.al, ptr %i.s, align 8, !tbaa !15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i8 noundef zeroext 2)
          to label %bb.h unwind label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.am = load i8, ptr %i.o, align 1, !tbaa !80, !range !81, !noundef !82
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = invoke noundef zeroext i1 @_Z13read_tps_confRKNSt10filesystem7__cxx114pathEP10t_topologyP7PbcTypePPA3_fSA_S9_b(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef null, ptr noundef nonnull %i.l, i1 noundef zeroext %i.an)
          to label %bb.i unwind label %bb.w       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull %i.aq) #16
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.j, %bb.i
  %i.ar = load ptr, ptr %5, align 8, !tbaa !20    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !21
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #17
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.aw = load ptr, ptr @_ZZ10gmx_nmtrajiPPcE8eignrvec, align 8, !tbaa !15 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.ax, ptr %7, align 8, !tbaa !22
  %i.ay = icmp eq ptr %i.aw, null
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.44) #18
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.az = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %i.az, ptr %i.b, align 8, !tbaa !23
  %i.ba = icmp ugt i64 %i.az, 15
  br i1 %i.ba, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.l
  %i.bb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc163 unwind label %bb.y  ; 2 uses

.noexc163:                                        ; preds = %.noexc.i
  store ptr %i.bb, ptr %7, align 8, !tbaa !20
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !23
  store i64 %i.bc, ptr %i.ax, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc163, %bb.l
  %i.bd = phi ptr [ %i.bb, %.noexc163 ], [ %i.ax, %bb.l ] ; 2 uses
  switch i64 %i.az, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.be = load i8, ptr %i.aw, align 1, !tbaa !21
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !21
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr nonnull align 1 %i.aw, i64 %i.az, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !24
  %i.bh = load ptr, ptr %7, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 0, ptr %i.bi, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  invoke void @_ZN3gmx11splitStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.bj = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ax
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.bl = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.bn = load ptr, ptr %6, align 8, !tbaa !83    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !83 ; 2 uses
  %.not264291 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not264291, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit
  %.pre = load ptr, ptr %6, align 8, !tbaa !25    ; 3 uses
  %.pre410 = load ptr, ptr %i.bo, align 8, !tbaa !26 ; 2 uses
  %i.bq = ptrtoint ptr %.sroa.11.1 to i64         ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre410
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.br = load ptr, ptr %.05.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !21
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #17
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i164 = icmp eq ptr %i.bw, %.pre410
  br i1 %.not.i.i.i164, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %.sroa.15.0.lcssa504 = phi ptr [ %.sroa.15.2, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.sroa.15.2, %._crit_edge ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.sroa.11.0.lcssa503 = phi i64 [ %i.bq, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bq, %._crit_edge ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.sroa.0234.0.lcssa502 = phi ptr [ %.sroa.0234.2, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.sroa.0234.2, %._crit_edge ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 14 uses
  %i.bx = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !28
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #17
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.cd = ptrtoint ptr %.sroa.0234.0.lcssa502 to i64 ; 2 uses
  %i.ce = sub i64 %.sroa.11.0.lcssa503, %i.cd     ; 4 uses
  %i.cf = lshr i64 %i.ce, 2                       ; 8 uses
  %i.cg = trunc i64 %i.cf to i32                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %sext = shl i64 %i.ce, 30                       ; 3 uses
  %i.ch = ashr exact i64 %sext, 32                ; 8 uses
  %i.ci = icmp ugt i64 %i.ch, 2305843009213693951
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #18
          to label %.noexc165 unwind label %bb.an

.noexc165:                                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %.not497 = icmp eq i64 %sext, 0
  br i1 %.not497, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cl = ashr exact i64 %sext, 30
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #19
          to label %.noexc166 unwind label %bb.an ; 4 uses

.noexc166:                                        ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.cn = load ptr, ptr %8, align 8, !tbaa !31    ; 4 uses
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !32
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq                    ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %bb.t, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

bb.t:                                             ; preds = %.noexc166
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cm, ptr align 4 %i.cn, i64 %i.cr, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i: ; preds = %bb.t, %.noexc166
  %.not.i8.i = icmp eq ptr %i.cn, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !33
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = sub i64 %i.cu, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cv) #17
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i: ; preds = %bb.u, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit.i
  store ptr %i.cm, ptr %8, align 8, !tbaa !31
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !32
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ch
  store ptr %i.cw, ptr %i.cj, align 8, !tbaa !33
  br label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

bb.v:                                             ; preds = %bb.g, %bb.f
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.h
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.w ], [ %i.cx, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit222

bb.y:                                             ; preds = %.noexc.i, %bb.k
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.z:                                             ; preds = %bb.o
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %7, align 8, !tbaa !20    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.ax
  br i1 %i.dc, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.z
  %i.dd = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #17
  br label %.thread

.thread:                                          ; preds = %bb.z, %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  %.pn142 = phi { ptr, i32 } [ %i.cz, %bb.y ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %i.da, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit222

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit
  %.sroa.0230.0295 = phi ptr [ %i.du, %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.sroa.15.0294 = phi ptr [ %.sroa.15.2, %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %.sroa.11.0293 = phi ptr [ %.sroa.11.1, %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.sroa.0234.0292 = phi ptr [ %.sroa.0234.2, %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 6 uses
  %.val = load ptr, ptr %.sroa.0230.0295, align 8, !tbaa !20
  %i.df = invoke noundef i32 @_ZN3gmx13intFromStringEPKc(ptr noundef %.val)
          to label %_ZN3gmxL13fromStdStringIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.loopexit275 ; 2 uses

_ZN3gmxL13fromStdStringIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph
  %.not.i = icmp eq ptr %.sroa.11.0293, %.sroa.15.0294
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN3gmxL13fromStdStringIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store i32 %i.df, ptr %.sroa.11.0293, align 4, !tbaa !65
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit

bb.ab:                                            ; preds = %_ZN3gmxL13fromStdStringIiEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dg = ptrtoint ptr %.sroa.15.0294 to i64
  %i.dh = ptrtoint ptr %.sroa.0234.0292 to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 6 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775804
  br i1 %i.dj, label %bb.ac, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #18
          to label %.noexc172 unwind label %.loopexit.split-lp276

.noexc172:                                        ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.dk = ashr exact i64 %i.di, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dl, i64 2305843009213693951)
  %i.do = select i1 %i.dm, i64 2305843009213693951, i64 %i.dn ; 3 uses
  %.not.i.i.i171 = icmp ne i64 %i.do, 0
  call void @llvm.assume(i1 %.not.i.i.i171)
  %i.dp = shl nuw nsw i64 %i.do, 2
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #19
          to label %.noexc173 unwind label %.loopexit275 ; 4 uses

.noexc173:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.di ; 2 uses
  store i32 %i.df, ptr %i.dr, align 4, !tbaa !65
  %i.ds = icmp sgt i64 %i.di, 0
  br i1 %i.ds, label %bb.ad, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ad:                                            ; preds = %.noexc173
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dq, ptr align 4 %.sroa.0234.0292, i64 %i.di, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ad, %.noexc173
  %.not.i17.i.i = icmp eq ptr %.sroa.0234.0292, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0234.0292, i64 noundef %i.di) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ae, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.do
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit

_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.aa
  %.sroa.0234.2 = phi ptr [ %i.dq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0234.0292, %bb.aa ] ; 3 uses
  %.pn266 = phi ptr [ %i.dr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.11.0293, %bb.aa ]
  %.sroa.15.2 = phi ptr [ %i.dt, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.15.0294, %bb.aa ] ; 3 uses
  %.sroa.11.1 = getelementptr inbounds nuw i8, ptr %.pn266, i64 4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0230.0295, i64 32 ; 2 uses
  %.not264 = icmp eq ptr %i.du, %i.bp
  br i1 %.not264, label %._crit_edge, label %.lr.ph

.loopexit275:                                     ; preds = %.lr.ph, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit277 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp276:                            ; preds = %bb.ac
  %lpad.loopexit.split-lp278 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp276, %.loopexit275
  %lpad.phi279 = phi { ptr, i32 } [ %lpad.loopexit277, %.loopexit275 ], [ %lpad.loopexit.split-lp278, %.loopexit.split-lp276 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.db

_ZNSt6vectorIfSaIfEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.dv = load ptr, ptr @_ZZ10gmx_nmtrajiPPcE8phasevec, align 8, !tbaa !15 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.dw, ptr %10, align 8, !tbaa !22
  %i.dx = icmp eq ptr %i.dv, null
  br i1 %i.dx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.44) #18
          to label %.noexc176 unwind label %bb.ao

.noexc176:                                        ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %_ZNSt6vectorIfSaIfEE7reserveEm.exit
end_hunk_0
begin_hunk_1_@_Z10gmx_nmtrajiPPc:bb.a
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i190

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i188, %._crit_edge301
  %i.ew = phi ptr [ %.pr.i189, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i188 ], [ %.pre411, %._crit_edge301 ], [ %i.em, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ] ; 3 uses
  %.not.i.i1.i191 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i1.i191, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit193, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i190
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !28
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fb) #17
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit193

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit193: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i190, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !32
  %i.fe = load ptr, ptr %8, align 8, !tbaa !31
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = lshr exact i64 %i.fh, 2
  %i.fj = trunc i64 %i.fi to i32                  ; 3 uses
  %i.fk = icmp sgt i32 %i.fj, %i.cg
  br i1 %i.fk, label %bb.ax, label %bb.be

bb.an:                                            ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, %bb.r
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.ao:                                            ; preds = %.noexc.i175, %bb.ag
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

bb.ap:                                            ; preds = %bb.ak
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.dw
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %bb.ap
  %i.fq = load i64, ptr %i.dw, align 8, !tbaa !21
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194, %bb.ao
  %.pn144 = phi { ptr, i32 } [ %i.fm, %bb.ao ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194 ], [ %i.fn, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.cz

bb.aq:                                            ; preds = %.lr.ph300, %_ZNSt6vectorIfSaIfEE12emplace_backIJfEEERfDpOT_.exit
  %.sroa.0224.0299 = phi ptr [ %i.em, %.lr.ph300 ], [ %i.gp, %_ZNSt6vectorIfSaIfEE12emplace_backIJfEEERfDpOT_.exit ] ; 2 uses
  %.val162 = load ptr, ptr %.sroa.0224.0299, align 8, !tbaa !20
  %i.fs = invoke noundef float @_ZN3gmx15floatFromStringEPKc(ptr noundef %.val162)
          to label %_ZN3gmxL13fromStdStringIfEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.loopexit274 ; 2 uses

_ZN3gmxL13fromStdStringIfEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.aq
  %i.ft = load ptr, ptr %i.ep, align 8, !tbaa !32 ; 4 uses
  %i.fu = load ptr, ptr %i.cj, align 8, !tbaa !33
  %.not.i198 = icmp eq ptr %i.ft, %i.fu
  br i1 %.not.i198, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN3gmxL13fromStdStringIfEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  store float %i.fs, ptr %i.ft, align 4, !tbaa !35
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store ptr %i.fv, ptr %i.ep, align 8, !tbaa !32
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJfEEERfDpOT_.exit

bb.as:                                            ; preds = %_ZN3gmxL13fromStdStringIfEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fw = load ptr, ptr %8, align 8, !tbaa !31    ; 4 uses
  %i.fx = ptrtoint ptr %i.ft to i64
  %i.fy = ptrtoint ptr %i.fw to i64               ; 2 uses
  %i.fz = sub i64 %i.fx, %i.fy                    ; 5 uses
  %i.ga = icmp eq i64 %i.fz, 9223372036854775804
  br i1 %i.ga, label %bb.at, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.at:                                            ; preds = %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #18
          to label %.noexc202 unwind label %.loopexit.split-lp

.noexc202:                                        ; preds = %bb.at
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.as
  %i.gb = ashr exact i64 %i.fz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i199 = call i64 @llvm.umax.i64(i64 %i.gb, i64 1)
  %i.gc = add nsw i64 %.sroa.speculated.i.i.i199, %i.gb ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.gb
  %i.ge = call i64 @llvm.umin.i64(i64 %i.gc, i64 2305843009213693951)
  %i.gf = select i1 %i.gd, i64 2305843009213693951, i64 %i.ge ; 3 uses
  %.not.i.i.i200 = icmp ne i64 %i.gf, 0
  call void @llvm.assume(i1 %.not.i.i.i200)
  %i.gg = shl nuw nsw i64 %i.gf, 2
  %i.gh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gg) #19
          to label %.noexc203 unwind label %.loopexit274 ; 4 uses

.noexc203:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 %i.fz ; 2 uses
  store float %i.fs, ptr %i.gi, align 4, !tbaa !35
  %i.gj = icmp sgt i64 %i.fz, 0
  br i1 %i.gj, label %bb.au, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.au:                                            ; preds = %.noexc203
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gh, ptr align 4 %i.fw, i64 %i.fz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.au, %.noexc203
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %.not.i17.i.i201 = icmp eq ptr %i.fw, null
  br i1 %.not.i17.i.i201, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %i.gl = load ptr, ptr %i.cj, align 8, !tbaa !33
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = sub i64 %i.gm, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gn) #17
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.av, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.gh, ptr %8, align 8, !tbaa !31
  store ptr %i.gk, ptr %i.ep, align 8, !tbaa !32
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gf
  store ptr %i.go, ptr %i.cj, align 8, !tbaa !33
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJfEEERfDpOT_.exit

_ZNSt6vectorIfSaIfEE12emplace_backIJfEEERfDpOT_.exit: ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.ar
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0224.0299, i64 32 ; 2 uses
  %.not265 = icmp eq ptr %i.gp, %i.eo
  br i1 %.not265, label %._crit_edge301, label %bb.aq

.loopexit274:                                     ; preds = %bb.aq, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp:                               ; preds = %bb.at
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit.split-lp, %.loopexit274
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit274 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.cz

bb.ax:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit193
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 1 dereferenceable(66) @.str.31, i8 noundef zeroext 2)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 165, ptr noundef nonnull @.str.32) #18
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  unreachable

bb.ba:                                            ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit, %.loopexit, %._crit_edge312, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge, %bb.bq, %._crit_edge340
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.bb:                                            ; preds = %bb.ax
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ay
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn152 = phi { ptr, i32 } [ %i.gs, %bb.bc ], [ %i.gr, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.cz

bb.be:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit193
  %i.gt = icmp sgt i32 %i.cg, %i.fj
  br i1 %i.gt, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.gu = sub nsw i32 %i.cg, %i.fj
  %i.gv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %i.gu) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #16
  store float 0.000000e+00, ptr %i.t, align 4, !tbaa !35
  %i.gw = load ptr, ptr %i.fc, align 8, !tbaa !32 ; 3 uses
  %i.gx = load ptr, ptr %8, align 8, !tbaa !31    ; 2 uses
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = ashr exact i64 %i.ha, 2                 ; 3 uses
  %i.hc = icmp ugt i64 %i.ch, %i.hb
  br i1 %i.hc, label %bb.bg, label %15

bb.bg:                                            ; preds = %bb.bf
  %i.hd = sub nuw nsw i64 %i.ch, %i.hb
  invoke void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.gw, i64 noundef %i.hd, ptr noundef nonnull align 4 dereferenceable(4) %i.t)
          to label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit unwind label %bb.bi

15:                                               ; preds = %bb.bf
  %16 = icmp ult i64 %i.ch, %i.hb
  br i1 %16, label %bb.bh, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

bb.bh:                                            ; preds = %15
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.ch ; 2 uses
  %.not.i.i = icmp eq ptr %i.gw, %i.he
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.bh
  store ptr %i.he, ptr %i.fc, align 8, !tbaa !32
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit:            ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.bh, %15, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #16
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #16
  br label %bb.cz

bb.bj:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit, %bb.be
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 2344 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !90 ; 2 uses
  %i.hi = load i32, ptr %i.m, align 4, !tbaa !65
  %.not = icmp eq i32 %i.hh, %i.hi
  br i1 %.not, label %bb.bq, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 1 dereferenceable(66) @.str.31, i8 noundef zeroext 2)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 178, ptr noundef nonnull @.str.34) #18
          to label %bb.bm unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  unreachable

bb.bn:                                            ; preds = %bb.bk
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bl
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #16
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn150 = phi { ptr, i32 } [ %i.hk, %bb.bo ], [ %i.hj, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.cz

bb.bq:                                            ; preds = %bb.bj
  %i.hl = sext i32 %i.hh to i64
  %i.hm = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.31, i32 noundef 181, i64 noundef range(i64 -2147483648, 2147483648) %i.hl, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader unwind label %bb.ba ; 2 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader: ; preds = %bb.bq
  %i.hn = load i32, ptr %i.m, align 4, !tbaa !65
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit:          ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit ], [ 0, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader ] ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv
  %i.hq = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.hq, ptr %i.hp, align 4, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hr = load i32, ptr %i.m, align 4, !tbaa !65
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp slt i64 %indvars.iv.next, %i.hs
  br i1 %i.ht, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge, !llvm.loop !38

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge: ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader
  %i.hu = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31, i32 noundef 188, i64 noundef range(i64 -2147483648, 2147483648) %i.ch, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit207.preheader unwind label %bb.ba ; 14 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit207.preheader: ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge
  %i.hv = icmp sgt i32 %i.cg, 0                   ; 3 uses
  br i1 %i.hv, label %.preheader273, label %._crit_edge312

.preheader273:                                    ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit207.preheader
  %i.hw = and i64 %i.ce, 8589934588
  call void @llvm.memset.p0.i64(ptr align 4 %i.hu, i8 -1, i64 %i.hw, i1 false), !tbaa !65
  %i.hx = load i32, ptr %i.i, align 4, !tbaa !65
  %i.hy = icmp sgt i32 %i.hx, 0
  br i1 %i.hy, label %.preheader272.preheader, label %.lr.ph311.preheader

.preheader272.preheader:                          ; preds = %.preheader273
  %i.hz = load ptr, ptr %i.j, align 8             ; 2 uses
  %wide.trip.count = and i64 %i.cf, 2147483647    ; 7 uses
  %i.ia = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.hu, i64 %i.ia ; 2 uses
  %scevgep524.a = getelementptr i8, ptr %.sroa.0234.0.lcssa502, i64 %i.ia
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  %bound0 = icmp ult ptr %i.hu, %scevgep524.a
  %bound1 = icmp ult ptr %.sroa.0234.0.lcssa502, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check529 = icmp samesign ult i64 %wide.trip.count, 32
  %n.vec = and i64 %i.cf, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  %i.ib = and i64 %i.ce, 112
  %min.epilog.iters.check = icmp eq i64 %i.ib, 0
  %n.vec535 = and i64 %i.cf, 2147483644           ; 3 uses
  %cmp.n543 = icmp eq i64 %wide.trip.count, %n.vec535
  %xtraiter = and i64 %i.cf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader272.preheader, %._crit_edge308
  %indvars.iv359 = phi i64 [ 0, %.preheader272.preheader ], [ %indvars.iv.next360, %._crit_edge308 ] ; 4 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %indvars.iv359 ; 8 uses
  %i.id = trunc nuw nsw i64 %indvars.iv359 to i32 ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ie = shl nuw nsw i64 %indvars.iv359, 2
  %i.if = getelementptr i8, ptr %i.hz, i64 %i.ie
  %scevgep525 = getelementptr i8, ptr %i.if, i64 4
  %bound0526 = icmp ult ptr %i.hu, %scevgep525
  %bound1527 = icmp ult ptr %i.ic, %scevgep
  %found.conflict528 = and i1 %bound0526, %bound1527
  %conflict.rdx = or i1 %found.conflict, %found.conflict528
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check529, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ig = load i32, ptr %i.ic, align 4, !tbaa !65, !alias.scope !91
  %broadcast.splatinsert533 = insertelement <8 x i32> poison, i32 %i.ig, i64 0
  %broadcast.splat534 = shufflevector <8 x i32> %broadcast.splatinsert533, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.id, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0234.0.lcssa502, i64 %index ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 96
  %wide.load = load <8 x i32>, ptr %i.ih, align 4, !tbaa !65, !alias.scope !92
  %wide.load530.a = load <8 x i32>, ptr %i.ii, align 4, !tbaa !65, !alias.scope !92
  %wide.load531.a = load <8 x i32>, ptr %i.ij, align 4, !tbaa !65, !alias.scope !92
  %wide.load532 = load <8 x i32>, ptr %i.ik, align 4, !tbaa !65, !alias.scope !92
  %i.il = icmp eq <8 x i32> %wide.load, %broadcast.splat534
  %i.im = icmp eq <8 x i32> %wide.load530.a, %broadcast.splat534
  %i.in = icmp eq <8 x i32> %wide.load531.a, %broadcast.splat534
  %i.io = icmp eq <8 x i32> %wide.load532, %broadcast.splat534
  %i.ip = getelementptr [4 x i8], ptr %i.hu, i64 %index ; 4 uses
  %i.iq = getelementptr i8, ptr %i.ip, i64 32
  %i.ir = getelementptr i8, ptr %i.ip, i64 64
  %i.is = getelementptr i8, ptr %i.ip, i64 96
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat, ptr align 4 %i.ip, <8 x i1> %i.il), !tbaa !65, !alias.scope !93, !noalias !94
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat, ptr align 4 %i.iq, <8 x i1> %i.im), !tbaa !65, !alias.scope !93, !noalias !94
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat, ptr align 4 %i.ir, <8 x i1> %i.in), !tbaa !65, !alias.scope !93, !noalias !94
  call void @llvm.masked.store.v8i32.p0(<8 x i32> %broadcast.splat, ptr align 4 %i.is, <8 x i1> %i.io), !tbaa !65, !alias.scope !93, !noalias !94
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.it = icmp eq i64 %index.next, %n.vec
  br i1 %i.it, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge308, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !95

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.iu = load i32, ptr %i.ic, align 4, !tbaa !65, !alias.scope !91
  %broadcast.splatinsert540 = insertelement <4 x i32> poison, i32 %i.iu, i64 0
  %broadcast.splat541 = shufflevector <4 x i32> %broadcast.splatinsert540, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert536 = insertelement <4 x i32> poison, i32 %i.id, i64 0
  %broadcast.splat537 = shufflevector <4 x i32> %broadcast.splatinsert536, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index538 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next542, %vec.epilog.vector.body ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0234.0.lcssa502, i64 %index538
  %wide.load539 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !65, !alias.scope !92
  %i.iw = icmp eq <4 x i32> %wide.load539, %broadcast.splat541
  %i.ix = getelementptr [4 x i8], ptr %i.hu, i64 %index538
  call void @llvm.masked.store.v4i32.p0(<4 x i32> %broadcast.splat537, ptr align 4 %i.ix, <4 x i1> %i.iw), !tbaa !65, !alias.scope !93, !noalias !94
  %index.next542 = add nuw i64 %index538, 4       ; 2 uses
  %i.iy = icmp eq i64 %index.next542, %n.vec535
  br i1 %i.iy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n543, label %._crit_edge308, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv356.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec535, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %bb.bs
  %indvars.iv356.prol = phi i64 [ %indvars.iv.next357.prol, %bb.bs ], [ %indvars.iv356.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.bs ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0234.0.lcssa502, i64 %indvars.iv356.prol
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !65
  %i.jb = load i32, ptr %i.ic, align 4, !tbaa !65
  %i.jc = icmp eq i32 %i.ja, %i.jb
  br i1 %i.jc, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %vec.epilog.scalar.ph.prol
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %indvars.iv356.prol
  store i32 %i.id, ptr %i.jd, align 4, !tbaa !65
  br label %bb.bs
end_hunk_1
