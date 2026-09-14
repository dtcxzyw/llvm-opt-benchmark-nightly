Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/catch?download=true
inline.NumInlined: 17856
inline.NumDeleted: 5985
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZNK5Catch5clara6detail6Parser5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_11TokenStreamE:.preheader261
  br i1 %i.ao, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !210

.noexc.i.i.i.i:                                   ; preds = %bb.a
  call void @_ZSt28__throw_bad_array_new_lengthv() #58
  unreachable

_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.ap = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #59
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !949
  %.pre455 = load ptr, ptr %i.ah, align 8, !tbaa !949
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i, %_ZN5Catch5clara6detail11BasicResultINS1_15ParseResultTypeEED2Ev.exit
  %i.aq = phi ptr [ %i.ai, %_ZN5Catch5clara6detail11BasicResultINS1_15ParseResultTypeEED2Ev.exit ], [ %.pre455, %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i ]
  %i.ar = phi ptr [ %i.aj, %_ZN5Catch5clara6detail11BasicResultINS1_15ParseResultTypeEED2Ev.exit ], [ %.pre, %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i ]
  %.pr.i.i.i = phi ptr [ null, %_ZN5Catch5clara6detail11BasicResultINS1_15ParseResultTypeEED2Ev.exit ], [ %i.ap, %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 11 uses
  store ptr %.pr.i.i.i, ptr %i.af, align 8, !tbaa !707
  %i.as = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 %i.am
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.as, ptr %i.at, align 8, !tbaa !710
  %i.au = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch5clara6detail5TokenESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %i.ar, ptr %i.aq, ptr noundef %.pr.i.i.i)
          to label %_ZN5Catch5clara6detail10ParseStateC2ENS1_15ParseResultTypeERKNS1_11TokenStreamE.exit unwind label %bb.c ; 5 uses

bb.c:                                             ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i.i.i, i64 noundef %i.am) #57
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.d, %bb.ck
  %common.resume.op = phi { ptr, i32 } [ %.pn53.pn.pn, %bb.ck ], [ %i.av, %bb.d ], [ %i.av, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZN5Catch5clara6detail10ParseStateC2ENS1_15ParseResultTypeERKNS1_11TokenStreamE.exit: ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !708
  call void @llvm.experimental.noalias.scope.decl(metadata !2813)
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i32 0, ptr %i.ax, align 8, !tbaa !702, !alias.scope !2813
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEEE, i64 16), ptr %6, align 8, !tbaa !122, !alias.scope !2813
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store i32 1, ptr %i.ay, align 8, !tbaa !948, !alias.scope !2813
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 18 uses
  %i.bb = ptrtoint ptr %i.au to i64
  %i.bc = ptrtoint ptr %.pr.i.i.i to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, %.pr.i.i.i ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.noexc3.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5Catch5clara6detail10ParseStateC2ENS1_15ParseResultTypeERKNS1_11TokenStreamE.exit
  %i.be = sdiv exact i64 %i.bd, 40
  %i.bf = icmp ugt i64 %i.be, 230584300921369395
  br i1 %i.bf, label %.noexc.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i, !prof !210

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #58
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #59
          to label %.noexc3.i.i.i unwind label %bb.p

.noexc3.i.i.i:                                    ; preds = %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i, %_ZN5Catch5clara6detail10ParseStateC2ENS1_15ParseResultTypeERKNS1_11TokenStreamE.exit
  %i.bh = phi ptr [ null, %_ZN5Catch5clara6detail10ParseStateC2ENS1_15ParseResultTypeERKNS1_11TokenStreamE.exit ], [ %i.bg, %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.bh, ptr %i.ba, align 8, !tbaa !707, !alias.scope !2813
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 16 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !708, !alias.scope !2813
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bd
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !710, !alias.scope !2813
  %i.bl = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch5clara6detail5TokenESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %.pr.i.i.i, ptr %i.au, ptr noundef %i.bh)
          to label %bb.h unwind label %bb.f, !noalias !2813

bb.f:                                             ; preds = %.noexc3.i.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bd) #57, !noalias !2813
  br label %.body

.lr.ph386:                                        ; preds = %.preheader260, %.lr.ph386
  %.144385 = phi i64 [ %i.bn, %.lr.ph386 ], [ %.043.lcssa, %.preheader260 ] ; 2 uses
  %.sroa.0220.0384 = phi ptr [ %i.bp, %.lr.ph386 ], [ %i.k, %.preheader260 ] ; 2 uses
  %i.bn = add nuw nsw i64 %.144385, 1
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.144385
  store ptr %.sroa.0220.0384, ptr %i.bo, align 16, !tbaa !2812
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0220.0384, i64 96 ; 2 uses
  %.not242 = icmp eq ptr %i.bp, %i.j
  br i1 %.not242, label %._crit_edge, label %.lr.ph386

bb.h:                                             ; preds = %.noexc3.i.i.i
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !708, !alias.scope !2813
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch5clara6detail11BasicResultINS1_10ParseStateEEE, i64 16), ptr %6, align 8, !tbaa !122, !alias.scope !2813
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 10 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 17 uses
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !142, !alias.scope !2813
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 11 uses
  store i64 0, ptr %i.bs, align 8, !tbaa !140, !alias.scope !2813
  store i8 0, ptr %i.br, align 8, !tbaa !141, !alias.scope !2813
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bz, %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i.i ], [ %.pr.i.i.i, %bb.h ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !139 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !141
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #57
  br label %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i58 = icmp eq ptr %i.bz, %i.au
  br i1 %.not.i.i.i.i.i58, label %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !39

_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i.i, %bb.h
  %.not.i.i1.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5Catch5clara6detail10ParseStateD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i.i.i, i64 noundef %i.am) #57
  br label %_ZN5Catch5clara6detail10ParseStateD2Ev.exit

_ZN5Catch5clara6detail10ParseStateD2Ev.exit:      ; preds = %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #56
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.not390 = icmp eq i64 %i.t, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 56
  br label %bb.j

bb.j:                                             ; preds = %bb.bo, %_ZN5Catch5clara6detail10ParseStateD2Ev.exit
  %i.cm = load ptr, ptr %6, align 8, !tbaa !122
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit unwind label %.loopexit250, !inline_history !2795

_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit: ; preds = %bb.j
  %.sroa.0.0.copyload = load ptr, ptr %i.az, align 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cp = load ptr, ptr %i.bi, align 8, !tbaa !708, !noalias !2814 ; 3 uses
  %i.cq = load ptr, ptr %i.ba, align 8, !tbaa !707, !noalias !2814 ; 3 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 4 uses
  %.not.i.i.i.i.i.i60 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i.i.i.i.i.i60, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit
  %i.cu = sdiv exact i64 %i.ct, 40
  %i.cv = icmp ugt i64 %i.cu, 230584300921369395
  br i1 %i.cv, label %.noexc.i.i.i.i66, label %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i61, !prof !210

.noexc.i.i.i.i66:                                 ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #58
          to label %.noexc67 unwind label %.loopexit.split-lp251

.noexc67:                                         ; preds = %.noexc.i.i.i.i66
  unreachable

_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i61: ; preds = %bb.k
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #59
          to label %.noexc68 unwind label %.loopexit250

.noexc68:                                         ; preds = %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i61
  %.pre.i62 = load ptr, ptr %i.ba, align 8, !tbaa !949, !noalias !2814
  %.pre1.i63 = load ptr, ptr %i.bi, align 8, !tbaa !949, !noalias !2814
  br label %bb.l

bb.l:                                             ; preds = %.noexc68, %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit
  %i.cx = phi ptr [ %i.cp, %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit ], [ %.pre1.i63, %.noexc68 ]
  %i.cy = phi ptr [ %i.cq, %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit ], [ %.pre.i62, %.noexc68 ]
  %i.cz = phi ptr [ null, %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit ], [ %i.cw, %.noexc68 ] ; 7 uses
  %i.da = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch5clara6detail5TokenESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %i.cy, ptr %i.cx, ptr noundef %i.cz)
          to label %_ZNK5Catch5clara6detail10ParseState15remainingTokensEv.exit unwind label %bb.m, !noalias !2814 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i.i64 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i64, label %.body69, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.ct) #57, !noalias !2814
  br label %.body69

_ZNK5Catch5clara6detail10ParseState15remainingTokensEv.exit: ; preds = %bb.l
  %i.dc = icmp ne ptr %i.cz, %i.da                ; 2 uses
  %i.dd = icmp ne ptr %.sroa.0.0.copyload, %.sroa.5.0.copyload
  %i.de = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %i.dc, label %.lr.ph.i.i.i.i, label %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK5Catch5clara6detail10ParseState15remainingTokensEv.exit, %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dl, %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i ], [ %i.cz, %_ZNK5Catch5clara6detail10ParseState15remainingTokensEv.exit ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !139 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !141
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #57
  br label %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dl, %i.da
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !39

_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN5Catch5clara6detail5TokenEEvPT_.exit.i.i.i.i, %_ZNK5Catch5clara6detail10ParseState15remainingTokensEv.exit
  %.not.i.i1.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i1.i.i, label %_ZN5Catch5clara6detail11TokenStreamD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.ct) #57
  br label %_ZN5Catch5clara6detail11TokenStreamD2Ev.exit

_ZN5Catch5clara6detail11TokenStreamD2Ev.exit:     ; preds = %_ZSt8_DestroyIPN5Catch5clara6detail5TokenES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.o
  br i1 %i.de, label %.preheader, label %bb.cb

.preheader:                                       ; preds = %_ZN5Catch5clara6detail11TokenStreamD2Ev.exit
  br i1 %.not390, label %.loopexit243, label %.lr.ph388

bb.p:                                             ; preds = %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.dm, %bb.p ], [ %i.bm, %bb.g ], [ %i.bm, %bb.f ]
  call void @_ZN5Catch5clara6detail10ParseStateD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #56
  br label %bb.ck

.loopexit250:                                     ; preds = %bb.j, %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i61
  %lpad.loopexit252 = landingpad { ptr, i32 }
          cleanup
  br label %.body69

.loopexit.split-lp251:                            ; preds = %.noexc.i.i.i.i66
  %lpad.loopexit.split-lp253 = landingpad { ptr, i32 }
          cleanup
  br label %.body69

.lr.ph388:                                        ; preds = %.preheader, %bb.bh
  %.028387 = phi i64 [ %i.kp, %bb.bh ], [ 0, %.preheader ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.028387 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 16, !tbaa !2812 ; 6 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !122
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = invoke noundef i64 %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.do)
          to label %bb.q unwind label %.body179

bb.q:                                             ; preds = %.lr.ph388
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !2815
  %i.dw = load ptr, ptr %i.do, align 8, !tbaa !122
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = invoke noundef i64 %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.do)
          to label %bb.s unwind label %.body179

bb.s:                                             ; preds = %bb.r
  %i.ea = icmp ult i64 %i.dv, %i.dz
  br i1 %i.ea, label %bb.t, label %bb.bh

bb.t:                                             ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #56
  %i.eb = load ptr, ptr %6, align 8, !tbaa !122
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  invoke void %i.ed(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit72 unwind label %.loopexit244, !inline_history !2795

_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit72: ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !2816)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 16, i1 false)
  %i.ee = load ptr, ptr %i.bi, align 8, !tbaa !708, !noalias !2816 ; 3 uses
  %i.ef = load ptr, ptr %i.ba, align 8, !tbaa !707, !noalias !2816 ; 3 uses
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh                    ; 4 uses
  %.not.i.i.i.i.i.i73 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i.i.i.i.i.i73, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit72
  %i.ej = sdiv exact i64 %i.ei, 40
  %i.ek = icmp ugt i64 %i.ej, 230584300921369395
  br i1 %i.ek, label %.noexc.i.i.i.i79, label %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i74, !prof !210

.noexc.i.i.i.i79:                                 ; preds = %bb.u
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #58
          to label %.noexc80 unwind label %.loopexit.split-lp

.noexc80:                                         ; preds = %.noexc.i.i.i.i79
  unreachable

_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i74: ; preds = %bb.u
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #59
          to label %.noexc81 unwind label %.loopexit244

.noexc81:                                         ; preds = %_ZNSt15__new_allocatorIN5Catch5clara6detail5TokenEE8allocateEmPKv.exit.i.i.i.i.i.i74
  %.pre.i75 = load ptr, ptr %i.ba, align 8, !tbaa !949, !noalias !2816
  %.pre1.i76 = load ptr, ptr %i.bi, align 8, !tbaa !949, !noalias !2816
  br label %bb.v

bb.v:                                             ; preds = %.noexc81, %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit72
  %i.em = phi ptr [ %i.ee, %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit72 ], [ %.pre1.i76, %.noexc81 ] ; 2 uses
  %i.en = phi ptr [ %i.ef, %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit72 ], [ %.pre.i75, %.noexc81 ] ; 2 uses
  %i.eo = phi ptr [ null, %_ZNK5Catch5clara6detail15ResultValueBaseINS1_10ParseStateEE5valueEv.exit72 ], [ %i.el, %.noexc81 ] ; 7 uses
  store ptr %i.eo, ptr %i.ca, align 8, !tbaa !707, !alias.scope !2816
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ei
  store ptr %i.ep, ptr %i.cc, align 8, !tbaa !710, !alias.scope !2816
  %.not12.i = icmp eq ptr %i.en, %i.em
  br i1 %.not12.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %bb.y
  %.014.i = phi ptr [ %i.fh, %bb.y ], [ %i.eo, %bb.v ] ; 6 uses
  %.sroa.08.013.i = phi ptr [ %i.fg, %bb.y ], [ %i.en, %bb.v ] ; 4 uses
  %i.eq = load i32, ptr %.sroa.08.013.i, align 8, !tbaa !956, !noalias !2816
  store i32 %i.eq, ptr %.014.i, align 8, !tbaa !956, !noalias !2816
  %i.er = getelementptr inbounds nuw i8, ptr %.014.i, i64 8 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %.014.i, i64 24 ; 3 uses
  store ptr %i.et, ptr %i.er, align 8, !tbaa !142, !noalias !2816
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !139, !noalias !2816 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !140, !noalias !2816 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56, !noalias !2816
  store i64 %i.ew, ptr %i.b, align 8, !tbaa !166, !noalias !2816
  %i.ex = icmp ugt i64 %i.ew, 15
  br i1 %i.ex, label %.noexc.i.i.i.i162, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i162:                                ; preds = %.lr.ph.i
  %i.ey = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.er, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i unwind label %bb.z, !noalias !2816 ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i.i.i162
  store ptr %i.ey, ptr %i.er, align 8, !tbaa !139, !noalias !2816
  %i.ez = load i64, ptr %i.b, align 8, !tbaa !166, !noalias !2816
  store i64 %i.ez, ptr %i.et, align 8, !tbaa !141, !noalias !2816
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i, %.lr.ph.i
  %i.fa = phi ptr [ %i.ey, %.noexc.i ], [ %i.et, %.lr.ph.i ] ; 2 uses
  switch i64 %i.ew, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.fb = load i8, ptr %i.eu, align 1, !tbaa !141, !noalias !2816
  store i8 %i.fb, ptr %i.fa, align 1, !tbaa !141, !noalias !2816
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fa, ptr align 1 %i.eu, i64 %i.ew, i1 false), !noalias !2816
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.i.i.i.i.i
  %i.fc = load i64, ptr %i.b, align 8, !tbaa !166, !noalias !2816 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.014.i, i64 16
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !140, !noalias !2816
  %i.fe = load ptr, ptr %i.er, align 8, !tbaa !139, !noalias !2816
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fc
  store i8 0, ptr %i.ff, align 1, !tbaa !141, !noalias !2816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56, !noalias !2816
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i, i64 40 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.014.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.fg, %i.em
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !56

bb.z:                                             ; preds = %.noexc.i.i.i.i162
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  %i.fk = call ptr @__cxa_begin_catch(ptr %i.fj) #56, !noalias !2816 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5Catch5clara6detail5TokenEEvT_S5_(ptr noundef %i.eo, ptr noundef nonnull %.014.i)
          to label %bb.aa unwind label %bb.ab, !noalias !2816

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_rethrow() #58
          to label %bb.ad unwind label %bb.ab, !noalias !2816
end_hunk_0
