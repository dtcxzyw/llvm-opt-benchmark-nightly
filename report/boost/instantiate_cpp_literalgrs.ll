Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/instantiate_cpp_literalgrs?download=true
inline.NumInlined: 3352
inline.NumDeleted: 1979
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE10InsertImplINS_9iterators15filter_iteratorIZNS0_8grammars18intlit_grammar_genINS0_8cpplexer9lex_tokenINS1_13file_positionISB_EEEEE8evaluateERKSL_RbEUlcE_PKcEEEEvS9_T_SU_St20forward_iterator_tag:bb.a
bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i, label %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.p to i64
  %reass.sub = sub i64 %i.r, %i.q
  %i.s = add i64 %reass.sub, 24
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.s) #29
  br label %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcED2Ev.exit

_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcED2Ev.exit: ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZSt4copyIN5boost9iterators15filter_iteratorIZNS0_4wave8grammars18intlit_grammar_genINS3_8cpplexer9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEESH_ET0_T_SV_SU_.exit

bb.h:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.f, %bb.c ]
  call void @_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  resume { ptr, i32 } %.pn.pn

bb.i:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !19    ; 2 uses
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = add i8 %i.w, -1
  store i8 %i.y, ptr %i.v, align 1, !tbaa !19
  %i.z = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = icmp eq ptr %i.aa, %i.ab
  br i1 %i.af, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = add i64 %i.ae, 24                       ; 2 uses
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %.noexc.i.i.i.i, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i, !prof !36

.noexc.i.i.i.i:                                   ; preds = %bb.k
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #28 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae ; 2 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !34
  %i.am = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 %i.an, i64 %i.ar, i1 false)
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i: ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i, %bb.j
  %.sroa.0.0.i.i.i = phi ptr [ %i.ai, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i ], [ @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, %bb.j ] ; 2 uses
  store ptr %.sroa.0.0.i.i.i, ptr %0, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 16
  store i8 1, ptr %i.as, align 1, !tbaa !19
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !26
  br label %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit

_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit: ; preds = %bb.i, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i
  %i.at = phi ptr [ %i.u, %bb.i ], [ %.pre.i.i, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i ] ; 6 uses
  %i.au = ptrtoaddr ptr %i.at to i64
  %i.av = ptrtoaddr ptr %3 to i64                 ; 6 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i
  %.06.i = phi i64 [ %i.ba, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i ], [ 0, %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit ] ; 5 uses
  %.sroa.02.05.i = phi ptr [ %.sroa.02.2.i, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i ], [ %2, %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 1 ; 3 uses
  %.not2.i.i.i.i.i = icmp eq ptr %i.aw, %3
  br i1 %.not2.i.i.i.i.i, label %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %.lr.ph.i
  %.sroa.02.057.i = ptrtoaddr ptr %.sroa.02.05.i to i64
  %scevgep.i = getelementptr i8, ptr %.sroa.02.05.i, i64 %i.av
  %i.ax = sub i64 0, %.sroa.02.057.i
  %scevgep8.i = getelementptr i8, ptr %scevgep.i, i64 %i.ax
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.l, %.lr.ph.i.i.i.i.preheader.i
  %.sroa.02.1.i = phi ptr [ %i.az, %bb.l ], [ %i.aw, %.lr.ph.i.i.i.i.preheader.i ] ; 3 uses
  %i.ay = load i8, ptr %.sroa.02.1.i, align 1, !tbaa !19
  %.not1.i.i.i.i.i = icmp eq i8 %i.ay, 39
  br i1 %.not1.i.i.i.i.i, label %bb.l, label %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, %3
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !31

_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i: ; preds = %bb.l, %.lr.ph.i.i.i.i.i, %.lr.ph.i
  %.sroa.02.2.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %scevgep8.i, %bb.l ], [ %.sroa.02.1.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ba = add nuw nsw i64 %.06.i, 1               ; 2 uses
  %.not.i = icmp eq ptr %.sroa.02.2.i, %4
  br i1 %.not.i, label %_ZSt10__distanceIN5boost9iterators15filter_iteratorIZNS0_4wave8grammars18intlit_grammar_genINS3_8cpplexer9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEEENSt15iterator_traitsIT_E15difference_typeESV_SV_St18input_iterator_tag.exit, label %.lr.ph.i, !llvm.loop !269

_ZSt10__distanceIN5boost9iterators15filter_iteratorIZNS0_4wave8grammars18intlit_grammar_genINS3_8cpplexer9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEEENSt15iterator_traitsIT_E15difference_typeESV_SV_St18input_iterator_tag.exit: ; preds = %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 17
  %i.bc = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !34
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = load ptr, ptr %i.at, align 8, !tbaa !29 ; 2 uses
  %i.bj = ptrtoint ptr %i.bi to i64               ; 3 uses
  %i.bk = sub i64 %i.bh, %i.bj
  %.not132 = icmp sgt i64 %i.bk, %.06.i
  br i1 %.not132, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZSt10__distanceIN5boost9iterators15filter_iteratorIZNS0_4wave8grammars18intlit_grammar_genINS3_8cpplexer9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEEENSt15iterator_traitsIT_E15difference_typeESV_SV_St18input_iterator_tag.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %.06.i, %i.bm
  %i.bo = add i64 %i.bn, %i.bj
  tail call void @_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE7reserveEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.bo)
  %i.bp = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !19  ; 2 uses
  %i.bs = icmp eq i8 %i.br, 1
  br i1 %i.bs, label %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit58, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = add i8 %i.br, -1
  store i8 %i.bt, ptr %i.bq, align 1, !tbaa !19
  %i.bu = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !29 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = icmp eq ptr %i.bv, %i.bw
  br i1 %i.ca, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i54, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = add i64 %i.bz, 24                       ; 2 uses
  %i.cc = icmp slt i64 %i.cb, 0
  br i1 %i.cc, label %.noexc.i.i.i.i57, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i53, !prof !36

.noexc.i.i.i.i57:                                 ; preds = %bb.o
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i53: ; preds = %bb.o
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #28 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bz ; 2 uses
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !29
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !34
  %i.ch = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !29
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr nonnull align 8 %i.ci, i64 %i.cm, i1 false)
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i54

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i54: ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i53, %bb.n
  %.sroa.0.0.i.i.i55 = phi ptr [ %i.cd, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i53 ], [ @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, %bb.n ] ; 2 uses
  store ptr %.sroa.0.0.i.i.i55, ptr %0, align 8, !tbaa !26
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i55, i64 16
  store i8 1, ptr %i.cn, align 1, !tbaa !19
  %.pre.i.i56 = load ptr, ptr %0, align 8, !tbaa !26
  br label %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit58

_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit58: ; preds = %bb.m, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i54
  %i.co = phi ptr [ %i.bp, %bb.m ], [ %.pre.i.i56, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i.i54 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 17
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.be
  %.pre = load ptr, ptr %i.co, align 8, !tbaa !29 ; 2 uses
  %.pre145 = ptrtoint ptr %.pre to i64
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit58, %_ZSt10__distanceIN5boost9iterators15filter_iteratorIZNS0_4wave8grammars18intlit_grammar_genINS3_8cpplexer9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEEENSt15iterator_traitsIT_E15difference_typeESV_SV_St18input_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre145, %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit58 ], [ %i.bj, %_ZSt10__distanceIN5boost9iterators15filter_iteratorIZNS0_4wave8grammars18intlit_grammar_genINS3_8cpplexer9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEEENSt15iterator_traitsIT_E15difference_typeESV_SV_St18input_iterator_tag.exit ] ; 2 uses
  %i.cr = phi ptr [ %.pre, %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit58 ], [ %i.bi, %_ZSt10__distanceIN5boost9iterators15filter_iteratorIZNS0_4wave8grammars18intlit_grammar_genINS3_8cpplexer9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEEENSt15iterator_traitsIT_E15difference_typeESV_SV_St18input_iterator_tag.exit ] ; 2 uses
  %i.cs = phi ptr [ %i.co, %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit58 ], [ %i.at, %_ZSt10__distanceIN5boost9iterators15filter_iteratorIZNS0_4wave8grammars18intlit_grammar_genINS3_8cpplexer9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEEENSt15iterator_traitsIT_E15difference_typeESV_SV_St18input_iterator_tag.exit ] ; 2 uses
  %.0 = phi ptr [ %i.cq, %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE5beginEv.exit58 ], [ %1, %_ZSt10__distanceIN5boost9iterators15filter_iteratorIZNS0_4wave8grammars18intlit_grammar_genINS3_8cpplexer9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEEENSt15iterator_traitsIT_E15difference_typeESV_SV_St18input_iterator_tag.exit ] ; 3 uses
  %8 = ptrtoaddr ptr %i.cs to i64
  %i.ct = add i64 %i.ba, %i.be
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 5 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = xor i64 %i.cv, -1
  %i.cx = add i64 %.pre-phi, %i.cw                ; 3 uses
  %.not = icmp ugt i64 %i.ct, %i.cx
  br i1 %.not, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !19  ; 2 uses
  %i.cz = icmp eq i8 %i.cy, 1
  br i1 %i.cz, label %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE3endEv.exit.thread, label %bb.r

_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE3endEv.exit.thread: ; preds = %bb.q
  %i.da = xor i64 %.06.i, -1
  %i.db = getelementptr inbounds i8, ptr %i.cr, i64 %i.da
  br label %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendIS6_EEvT_S9_.exit

bb.r:                                             ; preds = %bb.q
  %i.dc = add i8 %i.cy, -1
  store i8 %i.dc, ptr %i.cu, align 1, !tbaa !19
  %i.dd = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !29 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 2 uses
  %i.dj = icmp eq ptr %i.de, %i.df
  br i1 %i.dj, label %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE3endEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = add i64 %i.di, 24                       ; 2 uses
  %i.dl = icmp slt i64 %i.dk, 0
  br i1 %i.dl, label %.noexc.i.i.i.i63, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i59, !prof !36

.noexc.i.i.i.i63:                                 ; preds = %bb.s
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i59: ; preds = %bb.s
  %i.dm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #28 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.di ; 2 uses
  store ptr %i.do, ptr %i.dm, align 8, !tbaa !29
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !34
  %i.dq = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !29
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = sub i64 %i.dt, %i.du
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr nonnull align 8 %i.dr, i64 %i.dv, i1 false)
  br label %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE3endEv.exit

_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE3endEv.exit: ; preds = %bb.r, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i59
  %.sroa.0.0.i.i.i61 = phi ptr [ %i.dm, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i.i59 ], [ @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, %bb.r ] ; 2 uses
  store ptr %.sroa.0.0.i.i.i61, ptr %0, align 8, !tbaa !26
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i61, i64 16
  store i8 1, ptr %i.dw, align 1, !tbaa !19
  %.pre.i.i62 = load ptr, ptr %0, align 8, !tbaa !26 ; 3 uses
  %.pre143 = load ptr, ptr %.pre.i.i62, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.i.i62, i64 16
  %.pre144 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !19 ; 2 uses
  %i.dx = xor i64 %.06.i, -1
  %i.dy = getelementptr inbounds i8, ptr %.pre143, i64 %i.dx ; 2 uses
  %i.dz = icmp eq i8 %.pre144, 1
  br i1 %i.dz, label %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendIS6_EEvT_S9_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE3endEv.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre.i.i62, i64 16
  %i.eb = add i8 %.pre144, -1
  store i8 %i.eb, ptr %i.ea, align 8, !tbaa !19
  %i.ec = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !29 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg                    ; 2 uses
  %i.ei = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ei, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ej = add i64 %i.eh, 24                       ; 2 uses
  %i.ek = icmp slt i64 %i.ej, 0
  br i1 %i.ek, label %.noexc.i.i.i, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i, !prof !36

.noexc.i.i.i:                                     ; preds = %bb.u
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i: ; preds = %bb.u
  %i.el = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #28 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eh ; 2 uses
  store ptr %i.en, ptr %i.el, align 8, !tbaa !29
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !34
  %i.ep = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !29
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.eq to i64
  %i.eu = sub i64 %i.es, %i.et
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.em, ptr nonnull align 8 %i.eq, i64 %i.eu, i1 false)
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i: ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i, %bb.t
  %.sroa.0.0.i.i = phi ptr [ %i.el, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i ], [ @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, %bb.t ] ; 2 uses
  store ptr %.sroa.0.0.i.i, ptr %0, align 8, !tbaa !26
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  store i8 1, ptr %i.ev, align 1, !tbaa !19
  br label %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendIS6_EEvT_S9_.exit

_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendIS6_EEvT_S9_.exit: ; preds = %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE3endEv.exit.thread, %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE3endEv.exit, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i
  %i.ew = phi ptr [ %i.db, %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE3endEv.exit.thread ], [ %i.dy, %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE3endEv.exit ], [ %i.dy, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i ] ; 7 uses
  %i.ex = phi ptr [ %i.cr, %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE3endEv.exit.thread ], [ %.pre143, %_ZN5boost4wave4util11flex_stringIcSt11char_traitsIcESaIcENS1_9CowStringINS1_22AllocatorStringStorageIcS5_EEPcEEE3endEv.exit ], [ %.pre143, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i ] ; 7 uses
  tail call void @_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE6appendIPcEEvT_S7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ew, ptr noundef %i.ex)
  %i.ey = ptrtoint ptr %.0 to i64
  %i.ez = ptrtoint ptr %i.ew to i64               ; 2 uses
  %.neg.i.i.i.i.i.i.i = sub i64 %i.ez, %i.ey      ; 11 uses
  %i.fa = icmp sgt i64 %.neg.i.i.i.i.i.i.i, 0
  br i1 %i.fa, label %iter.check, label %.lr.ph.i.i.i.i.i65.preheader

iter.check:                                       ; preds = %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendIS6_EEvT_S9_.exit
  %i.fb = ptrtoaddr ptr %i.ex to i64
  %min.iters.check = icmp ult i64 %.neg.i.i.i.i.i.i.i, 8
  %i.fc = sub i64 %i.fb, %i.ez
  %diff.check = icmp ugt i64 %i.fc, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i64.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check189 = icmp ult i64 %.neg.i.i.i.i.i.i.i, 32
  br i1 %min.iters.check189, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fd = and i64 %.neg.i.i.i.i.i.i.i, 24
  %n.vec = and i64 %.neg.i.i.i.i.i.i.i, 9223372036854775776 ; 4 uses
  %i.fe = sub nsw i64 0, %n.vec                   ; 2 uses
  %i.ff = and i64 %.neg.i.i.i.i.i.i.i, 31
  %i.fg = getelementptr i8, ptr %i.ex, i64 %i.fe
  %i.fh = getelementptr i8, ptr %i.ew, i64 %i.fe
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = sub i64 0, %index                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ex, i64 %i.fi ; 2 uses
  %next.gep190 = getelementptr i8, ptr %i.ew, i64 %i.fi ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %next.gep190, i64 -16
  %i.fk = getelementptr inbounds i8, ptr %next.gep190, i64 -32
  %wide.load = load <16 x i8>, ptr %i.fj, align 1, !tbaa !19
  %wide.load191 = load <16 x i8>, ptr %i.fk, align 1, !tbaa !19
  %i.fl = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.fm = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <16 x i8> %wide.load, ptr %i.fl, align 1, !tbaa !19
  store <16 x i8> %wide.load191, ptr %i.fm, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !307

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.neg.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i65.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i64.preheader, label %vec.epilog.ph, !prof !281

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec194 = and i64 %.neg.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.fo = sub nsw i64 0, %n.vec194                ; 2 uses
  %i.fp = and i64 %.neg.i.i.i.i.i.i.i, 7
  %i.fq = getelementptr i8, ptr %i.ex, i64 %i.fo
  %i.fr = getelementptr i8, ptr %i.ew, i64 %i.fo
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index195 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next199, %vec.epilog.vector.body ] ; 2 uses
  %i.fs = sub i64 0, %index195                    ; 2 uses
  %next.gep196 = getelementptr i8, ptr %i.ex, i64 %i.fs
  %next.gep197 = getelementptr i8, ptr %i.ew, i64 %i.fs
  %i.ft = getelementptr inbounds i8, ptr %next.gep197, i64 -8
  %wide.load198 = load <8 x i8>, ptr %i.ft, align 1, !tbaa !19
  %i.fu = getelementptr inbounds i8, ptr %next.gep196, i64 -8
  store <8 x i8> %wide.load198, ptr %i.fu, align 1, !tbaa !19
  %index.next199 = add nuw i64 %index195, 8       ; 2 uses
  %i.fv = icmp eq i64 %index.next199, %n.vec194
  br i1 %i.fv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !308

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n200 = icmp eq i64 %.neg.i.i.i.i.i.i.i, %n.vec194
  br i1 %cmp.n200, label %.lr.ph.i.i.i.i.i65.preheader, label %.lr.ph.i.i.i.i.i64.preheader

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i.ph = phi i64 [ %.neg.i.i.i.i.i.i.i, %iter.check ], [ %i.ff, %vec.epilog.iter.check ], [ %i.fp, %vec.epilog.middle.block ]
  %.sroa.0.08.i.i.i.i.i.ph = phi ptr [ %i.ex, %iter.check ], [ %i.fg, %vec.epilog.iter.check ], [ %i.fq, %vec.epilog.middle.block ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.ew, %iter.check ], [ %i.fh, %vec.epilog.iter.check ], [ %i.fr, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.preheader, %.lr.ph.i.i.i.i.i64
  %.09.i.i.i.i.i = phi i64 [ %i.fz, %.lr.ph.i.i.i.i.i64 ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i64.preheader ] ; 2 uses
  %.sroa.0.08.i.i.i.i.i = phi ptr [ %i.fy, %.lr.ph.i.i.i.i.i64 ], [ %.sroa.0.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i64.preheader ]
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i64 ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i64.preheader ]
  %i.fw = getelementptr inbounds i8, ptr %.sroa.04.07.i.i.i.i.i, i64 -1 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !19
  %i.fy = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !19
  %i.fz = add nsw i64 %.09.i.i.i.i.i, -1
  %i.ga = icmp samesign ugt i64 %.09.i.i.i.i.i, 1
  br i1 %i.ga, label %.lr.ph.i.i.i.i.i64, label %.lr.ph.i.i.i.i.i65.preheader, !llvm.loop !309

.lr.ph.i.i.i.i.i65.preheader:                     ; preds = %.lr.ph.i.i.i.i.i64, %middle.block, %vec.epilog.middle.block, %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendIS6_EEvT_S9_.exit
  br label %.lr.ph.i.i.i.i.i65

.lr.ph.i.i.i.i.i65:                               ; preds = %.lr.ph.i.i.i.i.i65.preheader, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.gc, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i.i.i.i.i ], [ %.0, %.lr.ph.i.i.i.i.i65.preheader ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %.sroa.03.2.i.i.i.i.i, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i.i.i.i.i ], [ %2, %.lr.ph.i.i.i.i.i65.preheader ] ; 4 uses
  %i.gb = load i8, ptr %.sroa.03.07.i.i.i.i.i, align 1, !tbaa !19
  store i8 %i.gb, ptr %.08.i.i.i.i.i, align 1, !tbaa !19
  %i.gc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 1
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i, i64 1 ; 3 uses
  %.not2.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gd, %3
  br i1 %.not2.i.i.i.i.i.i.i.i.i, label %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i65
  %.sroa.03.079.i.i.i.i.i = ptrtoaddr ptr %.sroa.03.07.i.i.i.i.i to i64
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.sroa.03.07.i.i.i.i.i, i64 %i.av
  %i.ge = sub i64 0, %.sroa.03.079.i.i.i.i.i
  %scevgep10.i.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i.i, i64 %i.ge
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.v, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i
  %.sroa.03.1.i.i.i.i.i = phi ptr [ %i.gg, %bb.v ], [ %i.gd, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.gf = load i8, ptr %.sroa.03.1.i.i.i.i.i, align 1, !tbaa !19
  %.not1.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gf, 39
  br i1 %.not1.i.i.i.i.i.i.i.i.i, label %bb.v, label %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gg, %3
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !31

_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i.i.i.i.i: ; preds = %bb.v, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i65
  %.sroa.03.2.i.i.i.i.i = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i65 ], [ %scevgep10.i.i.i.i.i, %bb.v ], [ %.sroa.03.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i66 = icmp eq ptr %.sroa.03.2.i.i.i.i.i, %4
  br i1 %.not.i.i.i.i.i66, label %_ZSt4copyIN5boost9iterators15filter_iteratorIZNS0_4wave8grammars18intlit_grammar_genINS3_8cpplexer9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEESH_ET0_T_SV_SU_.exit, label %.lr.ph.i.i.i.i.i65, !llvm.loop !273

bb.w:                                             ; preds = %bb.p
  %i.gh = sub i64 %i.cx, %i.be                    ; 6 uses
  %i.gi = icmp sgt i64 %i.gh, 0
  br i1 %i.gi, label %.preheader.i.preheader, label %.preheader7.i

.preheader.i.preheader:                           ; preds = %bb.w
  %i.gj = add i64 %.pre-phi, %i.au
  %9 = xor i64 %8, -1
  %i.gk = add i64 %i.gj, %9
  %xtraiter = and i64 %i.gh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader
  %i.gl = add nsw i64 %i.gh, -1                   ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 4 uses
  %.not2.i.i.i.i.i69.prol = icmp eq ptr %i.gm, %3
  br i1 %.not2.i.i.i.i.i69.prol, label %.preheader.i.prol.loopexit, label %.lr.ph.i.i.i.i.i70.preheader.prol

.lr.ph.i.i.i.i.i70.preheader.prol:                ; preds = %.preheader.i.prol
  %i.gn = ptrtoaddr ptr %2 to i64
  %scevgep.prol = getelementptr i8, ptr %2, i64 %i.av
  %i.go = sub i64 0, %i.gn
  %scevgep142.prol = getelementptr i8, ptr %scevgep.prol, i64 %i.go ; 2 uses
  br label %.lr.ph.i.i.i.i.i70.prol

.lr.ph.i.i.i.i.i70.prol:                          ; preds = %bb.x, %.lr.ph.i.i.i.i.i70.preheader.prol
  %.sroa.0.0.prol = phi ptr [ %i.gq, %bb.x ], [ %i.gm, %.lr.ph.i.i.i.i.i70.preheader.prol ] ; 4 uses
  %i.gp = load i8, ptr %.sroa.0.0.prol, align 1, !tbaa !19
  %.not1.i.i.i.i.i71.prol = icmp eq i8 %i.gp, 39
  br i1 %.not1.i.i.i.i.i71.prol, label %bb.x, label %.preheader.i.prol.loopexit

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i70.prol
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.prol, i64 1 ; 2 uses
  %.not.i.i.i.i.i73.prol = icmp eq ptr %i.gq, %3
  br i1 %.not.i.i.i.i.i73.prol, label %.preheader.i.prol.loopexit, label %.lr.ph.i.i.i.i.i70.prol, !llvm.loop !31

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %bb.x, %.lr.ph.i.i.i.i.i70.prol, %.preheader.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader.i.preheader ], [ %i.gm, %.preheader.i.prol ], [ %.sroa.0.0.prol, %.lr.ph.i.i.i.i.i70.prol ], [ %scevgep142.prol, %bb.x ]
  %.012.i.unr = phi i64 [ %i.gh, %.preheader.i.preheader ], [ %i.gl, %.lr.ph.i.i.i.i.i70.prol ], [ %i.gl, %bb.x ], [ %i.gl, %.preheader.i.prol ]
  %.unr = phi ptr [ %2, %.preheader.i.preheader ], [ %i.gm, %.preheader.i.prol ], [ %.sroa.0.0.prol, %.lr.ph.i.i.i.i.i70.prol ], [ %scevgep142.prol, %bb.x ]
  %i.gr = icmp eq i64 %i.gk, %i.bc
  br i1 %i.gr, label %_ZSt9__advanceIN5boost9iterators15filter_iteratorIZNS0_4wave8grammars18intlit_grammar_genINS3_8cpplexer9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.preheader.i

.preheader7.i:                                    ; preds = %bb.w
  %.not9.i = icmp eq i64 %i.gh, 0
  br i1 %.not9.i, label %_ZSt9__advanceIN5boost9iterators15filter_iteratorIZNS0_4wave8grammars18intlit_grammar_genINS3_8cpplexer9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i67

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i72.1
  %.012.i = phi i64 [ %i.gz, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i72.1 ], [ %.012.i.unr, %.preheader.i.prol.loopexit ]
  %i.gs = phi ptr [ %i.hf, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i72.1 ], [ %.unr, %.preheader.i.prol.loopexit ] ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1 ; 3 uses
  %.not2.i.i.i.i.i69 = icmp eq ptr %i.gt, %3
  br i1 %.not2.i.i.i.i.i69, label %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i72, label %.lr.ph.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i70.preheader:                     ; preds = %.preheader.i
  %i.gu = ptrtoaddr ptr %i.gs to i64
  %scevgep = getelementptr i8, ptr %i.gs, i64 %i.av
  %i.gv = sub i64 0, %i.gu
  %scevgep142 = getelementptr i8, ptr %scevgep, i64 %i.gv
  br label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader, %bb.y
  %.sroa.0.0 = phi ptr [ %i.gx, %bb.y ], [ %i.gt, %.lr.ph.i.i.i.i.i70.preheader ] ; 3 uses
  %i.gw = load i8, ptr %.sroa.0.0, align 1, !tbaa !19
  %.not1.i.i.i.i.i71 = icmp eq i8 %i.gw, 39
  br i1 %.not1.i.i.i.i.i71, label %bb.y, label %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i72

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i70
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1 ; 2 uses
  %.not.i.i.i.i.i73 = icmp eq ptr %i.gx, %3
  br i1 %.not.i.i.i.i.i73, label %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i72, label %.lr.ph.i.i.i.i.i70, !llvm.loop !31

_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i72: ; preds = %bb.y, %.lr.ph.i.i.i.i.i70, %.preheader.i
  %i.gy = phi ptr [ %i.gt, %.preheader.i ], [ %.sroa.0.0, %.lr.ph.i.i.i.i.i70 ], [ %scevgep142, %bb.y ] ; 3 uses
  %i.gz = add nsw i64 %.012.i, -2                 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 1 ; 3 uses
  %.not2.i.i.i.i.i69.1 = icmp eq ptr %i.ha, %3
  br i1 %.not2.i.i.i.i.i69.1, label %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i72.1, label %.lr.ph.i.i.i.i.i70.preheader.1

.lr.ph.i.i.i.i.i70.preheader.1:                   ; preds = %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i72
  %i.hb = ptrtoaddr ptr %i.gy to i64
  %scevgep.1 = getelementptr i8, ptr %i.gy, i64 %i.av
  %i.hc = sub i64 0, %i.hb
  %scevgep142.1 = getelementptr i8, ptr %scevgep.1, i64 %i.hc
  br label %.lr.ph.i.i.i.i.i70.1

.lr.ph.i.i.i.i.i70.1:                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i70.preheader.1
  %.sroa.0.0.1 = phi ptr [ %i.he, %bb.z ], [ %i.ha, %.lr.ph.i.i.i.i.i70.preheader.1 ] ; 3 uses
  %i.hd = load i8, ptr %.sroa.0.0.1, align 1, !tbaa !19
  %.not1.i.i.i.i.i71.1 = icmp eq i8 %i.hd, 39
  br i1 %.not1.i.i.i.i.i71.1, label %bb.z, label %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i72.1

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i70.1
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.0.1, i64 1 ; 2 uses
  %.not.i.i.i.i.i73.1 = icmp eq ptr %i.he, %3
  br i1 %.not.i.i.i.i.i73.1, label %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i72.1, label %.lr.ph.i.i.i.i.i70.1, !llvm.loop !31

_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i72.1: ; preds = %.lr.ph.i.i.i.i.i70.1, %bb.z, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i72
  %i.hf = phi ptr [ %i.ha, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i72 ], [ %.sroa.0.0.1, %.lr.ph.i.i.i.i.i70.1 ], [ %scevgep142.1, %bb.z ] ; 2 uses
  %.not6.i.1 = icmp eq i64 %i.gz, 0
  br i1 %.not6.i.1, label %_ZSt9__advanceIN5boost9iterators15filter_iteratorIZNS0_4wave8grammars18intlit_grammar_genINS3_8cpplexer9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.preheader.i, !llvm.loop !275

.lr.ph.i67:                                       ; preds = %.preheader7.i, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb1ELb0EEmmEv.exit.i
  %.110.i = phi i64 [ %i.hk, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb1ELb0EEmmEv.exit.i ], [ %i.gh, %.preheader7.i ]
  %i.hg = phi ptr [ %i.hi, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb1ELb0EEmmEv.exit.i ], [ %2, %.preheader7.i ]
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i67
  %i.hh = phi ptr [ %i.hi, %bb.aa ], [ %i.hg, %.lr.ph.i67 ]
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -1 ; 4 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.hj, 39
  br i1 %.not.i.i.i.i, label %bb.aa, label %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb1ELb0EEmmEv.exit.i, !llvm.loop !310

_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb1ELb0EEmmEv.exit.i: ; preds = %bb.aa
  %i.hk = add nsw i64 %.110.i, 1                  ; 2 uses
  %.not.i68 = icmp eq i64 %i.hk, 0
  br i1 %.not.i68, label %_ZSt9__advanceIN5boost9iterators15filter_iteratorIZNS0_4wave8grammars18intlit_grammar_genINS3_8cpplexer9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i67, !llvm.loop !311

_ZSt9__advanceIN5boost9iterators15filter_iteratorIZNS0_4wave8grammars18intlit_grammar_genINS3_8cpplexer9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb1ELb0EEmmEv.exit.i, %.preheader.i.prol.loopexit, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i72.1, %.preheader7.i
  %.sroa.0.2 = phi ptr [ %i.hf, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i72.1 ], [ %2, %.preheader7.i ], [ %.lcssa.unr, %.preheader.i.prol.loopexit ], [ %i.hi, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb1ELb0EEmmEv.exit.i ] ; 3 uses
  %i.hl = load i8, ptr %i.cu, align 1, !tbaa !19  ; 2 uses
  %i.hm = icmp eq i8 %i.hl, 1
  br i1 %i.hm, label %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendINS_9iterators15filter_iteratorIZNS0_8grammars18intlit_grammar_genINS0_8cpplexer9lex_tokenINS1_13file_positionINS1_11flex_stringIcSt11char_traitsIcES4_S7_EEEEEEE8evaluateERKSL_RbEUlcE_PKcEEEEvT_SU_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt9__advanceIN5boost9iterators15filter_iteratorIZNS0_4wave8grammars18intlit_grammar_genINS3_8cpplexer9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.hn = add i8 %i.hl, -1
  store i8 %i.hn, ptr %i.cu, align 1, !tbaa !19
  %i.ho = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !29 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 2 uses
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = sub i64 %i.hr, %i.hs                    ; 2 uses
  %i.hu = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hu, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i75, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hv = add i64 %i.ht, 24                       ; 2 uses
  %i.hw = icmp slt i64 %i.hv, 0
  br i1 %i.hw, label %.noexc.i.i.i77, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i74, !prof !36

.noexc.i.i.i77:                                   ; preds = %bb.ac
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i74: ; preds = %bb.ac
  %i.hx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hv) #28 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ht ; 2 uses
  store ptr %i.hz, ptr %i.hx, align 8, !tbaa !29
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !34
  %i.ib = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16 ; 2 uses
  %i.id = load ptr, ptr %i.ib, align 8, !tbaa !29
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = ptrtoint ptr %i.ic to i64
  %i.ig = sub i64 %i.ie, %i.if
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hy, ptr nonnull align 8 %i.ic, i64 %i.ig, i1 false)
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i75

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i75: ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i74, %bb.ab
  %.sroa.0.0.i.i76 = phi ptr [ %i.hx, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i74 ], [ @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, %bb.ab ] ; 2 uses
  store ptr %.sroa.0.0.i.i76, ptr %0, align 8, !tbaa !26
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i76, i64 16
  store i8 1, ptr %i.ih, align 1, !tbaa !19
  br label %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendINS_9iterators15filter_iteratorIZNS0_8grammars18intlit_grammar_genINS0_8cpplexer9lex_tokenINS1_13file_positionINS1_11flex_stringIcSt11char_traitsIcES4_S7_EEEEEEE8evaluateERKSL_RbEUlcE_PKcEEEEvT_SU_.exit

_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendINS_9iterators15filter_iteratorIZNS0_8grammars18intlit_grammar_genINS0_8cpplexer9lex_tokenINS1_13file_positionINS1_11flex_stringIcSt11char_traitsIcES4_S7_EEEEEEE8evaluateERKSL_RbEUlcE_PKcEEEEvT_SU_.exit: ; preds = %_ZSt9__advanceIN5boost9iterators15filter_iteratorIZNS0_4wave8grammars18intlit_grammar_genINS3_8cpplexer9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEElEvRT_T0_St26bidirectional_iterator_tag.exit, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i75
  tail call void @_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE6appendINS_9iterators15filter_iteratorIZNS0_8grammars18intlit_grammar_genINS0_8cpplexer9lex_tokenINS1_13file_positionINS1_11flex_stringIcSt11char_traitsIcES3_NS1_9CowStringIS4_PcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEEEEvT_SU_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %.sroa.0.2, ptr %3, ptr %4, ptr %5)
  %i.ii = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 17 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.be
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.cx
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 16 ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !19  ; 2 uses
  %i.io = icmp eq i8 %i.in, 1
  br i1 %i.io, label %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendIPKcEEvT_SB_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendINS_9iterators15filter_iteratorIZNS0_8grammars18intlit_grammar_genINS0_8cpplexer9lex_tokenINS1_13file_positionINS1_11flex_stringIcSt11char_traitsIcES4_S7_EEEEEEE8evaluateERKSL_RbEUlcE_PKcEEEEvT_SU_.exit
  %i.ip = add i8 %i.in, -1
  store i8 %i.ip, ptr %i.im, align 1, !tbaa !19
  %i.iq = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !29 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 16 ; 2 uses
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu                    ; 2 uses
  %i.iw = icmp eq ptr %i.ir, %i.is
  br i1 %i.iw, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i79, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ix = add i64 %i.iv, 24                       ; 2 uses
  %i.iy = icmp slt i64 %i.ix, 0
  br i1 %i.iy, label %.noexc.i.i.i81, label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i78, !prof !36

.noexc.i.i.i81:                                   ; preds = %bb.ae
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i78: ; preds = %bb.ae
  %i.iz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ix) #28 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.iv ; 2 uses
  store ptr %i.jb, ptr %i.iz, align 8, !tbaa !29
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store ptr %i.jb, ptr %i.jc, align 8, !tbaa !34
  %i.jd = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16 ; 2 uses
  %i.jf = load ptr, ptr %i.jd, align 8, !tbaa !29
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = ptrtoint ptr %i.je to i64
  %i.ji = sub i64 %i.jg, %i.jh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ja, ptr nonnull align 8 %i.je, i64 %i.ji, i1 false)
  br label %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i79

_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i79: ; preds = %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i78, %bb.ad
  %.sroa.0.0.i.i80 = phi ptr [ %i.iz, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE5AllocEmPKv.exit.i.i.i.i78 ], [ @_ZN5boost4wave4util19SimpleStringStorageIcSaIcEE12emptyString_E, %bb.ad ] ; 2 uses
  store ptr %.sroa.0.0.i.i80, ptr %0, align 8, !tbaa !26
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i80, i64 16
  store i8 1, ptr %i.jj, align 1, !tbaa !19
  br label %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendIPKcEEvT_SB_.exit

_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendIPKcEEvT_SB_.exit: ; preds = %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendINS_9iterators15filter_iteratorIZNS0_8grammars18intlit_grammar_genINS0_8cpplexer9lex_tokenINS1_13file_positionINS1_11flex_stringIcSt11char_traitsIcES4_S7_EEEEEEE8evaluateERKSL_RbEUlcE_PKcEEEEvT_SU_.exit, %_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEEC2ERKS4_.exit.i.i79
  tail call void @_ZN5boost4wave4util22AllocatorStringStorageIcSaIcEE6appendIPKcEEvT_S8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ik, ptr noundef nonnull %i.il)
  %.not6.i.i.i.i.i82 = icmp eq ptr %2, %.sroa.0.2
  br i1 %.not6.i.i.i.i.i82, label %_ZSt4copyIN5boost9iterators15filter_iteratorIZNS0_4wave8grammars18intlit_grammar_genINS3_8cpplexer9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEE8evaluateERKSL_RbEUlcE_PKcEESH_ET0_T_SV_SU_.exit, label %.lr.ph.i.i.i.i.i83

.lr.ph.i.i.i.i.i83:                               ; preds = %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendIPKcEEvT_SB_.exit, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i.i.i.i.i94
  %.08.i.i.i.i.i84 = phi ptr [ %i.jl, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i.i.i.i.i94 ], [ %.0, %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendIPKcEEvT_SB_.exit ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i85 = phi ptr [ %.sroa.03.2.i.i.i.i.i95, %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i.i.i.i.i94 ], [ %2, %_ZN5boost4wave4util9CowStringINS1_22AllocatorStringStorageIcSaIcEEEPcE6appendIPKcEEvT_SB_.exit ] ; 4 uses
  %i.jk = load i8, ptr %.sroa.03.07.i.i.i.i.i85, align 1, !tbaa !19
  store i8 %i.jk, ptr %.08.i.i.i.i.i84, align 1, !tbaa !19
  %i.jl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i84, i64 1
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i85, i64 1 ; 3 uses
  %.not2.i.i.i.i.i.i.i.i.i86 = icmp eq ptr %i.jm, %3
  br i1 %.not2.i.i.i.i.i.i.i.i.i86, label %_ZN5boost9iterators6detail20iterator_facade_baseINS0_15filter_iteratorIZNS_4wave8grammars18intlit_grammar_genINS4_8cpplexer9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEE8evaluateERKSM_RbEUlcE_PKcEEcNS0_27bidirectional_traversal_tagERSS_lLb0ELb0EEppEv.exit.i.i.i.i.i94, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i87

.lr.ph.i.i.i.i.preheader.i.i.i.i.i87:             ; preds = %.lr.ph.i.i.i.i.i83
  %.sroa.03.079.i.i.i.i.i88 = ptrtoaddr ptr %.sroa.03.07.i.i.i.i.i85 to i64
end_hunk_0
