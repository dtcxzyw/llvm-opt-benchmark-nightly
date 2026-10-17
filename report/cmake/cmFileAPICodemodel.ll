Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmFileAPICodemodel?download=true
inline.NumInlined: 5669
inline.NumDeleted: 2433
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_16Target4DumpEv:bb.a
.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %bb.aqu
  %i.dtg = udiv exact i64 %i.dsa, 40
  br label %.lr.ph.i.i.i.i.i.i.i.i.i540

.lr.ph.i.i.i.i.i.i.i.i.i540:                      ; preds = %.noexc126.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dtm, %.noexc126.i.i.i ], [ %i.dtg, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dtl, %.noexc126.i.i.i ], [ %.val.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dtk, %.noexc126.i.i.i ], [ %.val32.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(36) %.0811.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(36) %.0910.i.i.i.i.i.i.i.i.i)
          to label %.noexc126.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i

.noexc126.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i540
  %i.dth = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 32
  %i.dti = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i, i64 32
  %i.dtj = load i32, ptr %i.dti, align 8, !tbaa !162
  store i32 %i.dtj, ptr %i.dth, align 8, !tbaa !162
  %i.dtk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i, i64 40
  %i.dtl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 40 ; 3 uses
  %i.dtm = add nsw i64 %.012.i.i.i.i.i.i.i.i.i, -1
  %i.dtn = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.dtn, label %.lr.ph.i.i.i.i.i.i.i.i.i540, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit.loopexit.i.i.i.i, !llvm.loop !11

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit.loopexit.i.i.i.i: ; preds = %.noexc126.i.i.i
  %.val34.pre.i.i.i.i = load ptr, ptr %i.dqj, align 8, !tbaa !440, !alias.scope !1081, !noalias !1079
  %.pre66.i.i.i.i = ptrtoint ptr %i.dtl to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit.i.i.i.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit.i.i.i.i: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit.loopexit.i.i.i.i, %bb.aqu
  %.pre-phi67.i.i.i.i = phi i64 [ %.pre66.i.i.i.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit.loopexit.i.i.i.i ], [ %i.dsc, %bb.aqu ]
  %.val34.i.i.i.i = phi ptr [ %.val34.pre.i.i.i.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit.loopexit.i.i.i.i ], [ %.val31.i.i.i.i, %bb.aqu ] ; 2 uses
  %.08.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dtl, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit.loopexit.i.i.i.i ], [ %.val.i.i.i.i, %bb.aqu ]
  %.not4.i.i41.i.i.i.i = icmp eq ptr %.08.lcssa.i.i.i.i.i.i.i.i.i, %.val34.i.i.i.i
  br i1 %.not4.i.i41.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEEEvT_SG_.exit.i.i.i.i, label %.lr.ph.i.i42.preheader.i.i.i.i

.lr.ph.i.i42.preheader.i.i.i.i:                   ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit.i.i.i.i
  %i.dto = sub i64 %.pre-phi67.i.i.i.i, %i.dsc
  %i.dtp = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 %i.dto
  br label %.lr.ph.i.i42.i.i.i.i

.lr.ph.i.i42.i.i.i.i:                             ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i44.i.i.i.i, %.lr.ph.i.i42.preheader.i.i.i.i
  %.sroa.03.05.i.i.i.i.i.i = phi ptr [ %i.dtv, %_ZSt8_DestroyIN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i44.i.i.i.i ], [ %i.dtp, %.lr.ph.i.i42.preheader.i.i.i.i ] ; 3 uses
  %i.dtq = load ptr, ptr %.sroa.03.05.i.i.i.i.i.i, align 8, !tbaa !102 ; 2 uses
  %i.dtr = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dts = icmp eq ptr %i.dtq, %i.dtr
  br i1 %i.dts, label %_ZSt8_DestroyIN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i44.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i43.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i43.i.i.i.i: ; preds = %.lr.ph.i.i42.i.i.i.i
  %i.dtt = load i64, ptr %i.dtr, align 8, !tbaa !103
  %i.dtu = add i64 %i.dtt, 1
  call void @_ZdlPvm(ptr noundef %i.dtq, i64 noundef %i.dtu) #28
  br label %_ZSt8_DestroyIN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i44.i.i.i.i

_ZSt8_DestroyIN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i44.i.i.i.i: ; preds = %.lr.ph.i.i42.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i43.i.i.i.i
  %i.dtv = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i45.i.i.i.i = icmp eq ptr %i.dtv, %.val34.i.i.i.i
  br i1 %.not.i.i45.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEEEvT_SG_.exit.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i, !llvm.loop !916

bb.aqv:                                           ; preds = %bb.aqt
  %i.dtw = icmp sgt i64 %i.dte, 0
  br i1 %i.dtw, label %.lr.ph.preheader.i.i.i.i.i48.i.i.i.i, label %_ZSt4copyIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i.i.i.i

.lr.ph.preheader.i.i.i.i.i48.i.i.i.i:             ; preds = %bb.aqv
  %i.dtx = udiv exact i64 %i.dte, 40
  br label %.lr.ph.i.i.i.i.i49.i.i.i.i

.lr.ph.i.i.i.i.i49.i.i.i.i:                       ; preds = %.noexc127.i.i.i, %.lr.ph.preheader.i.i.i.i.i48.i.i.i.i
  %.012.i.i.i.i.i50.i.i.i.i = phi i64 [ %i.dud, %.noexc127.i.i.i ], [ %i.dtx, %.lr.ph.preheader.i.i.i.i.i48.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i51.i.i.i.i = phi ptr [ %i.duc, %.noexc127.i.i.i ], [ %.val.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i48.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i52.i.i.i.i = phi ptr [ %i.dub, %.noexc127.i.i.i ], [ %.val32.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i48.i.i.i.i ] ; 3 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(36) %.0811.i.i.i.i.i51.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(36) %.0910.i.i.i.i.i52.i.i.i.i)
          to label %.noexc127.i.i.i unwind label %.loopexit.i.i.i545

.noexc127.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i49.i.i.i.i
  %i.dty = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i51.i.i.i.i, i64 32
  %i.dtz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i52.i.i.i.i, i64 32
  %i.dua = load i32, ptr %i.dtz, align 8, !tbaa !162
  store i32 %i.dua, ptr %i.dty, align 8, !tbaa !162
  %i.dub = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i52.i.i.i.i, i64 40
  %i.duc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i51.i.i.i.i, i64 40
  %i.dud = add nsw i64 %.012.i.i.i.i.i50.i.i.i.i, -1
  %i.due = icmp samesign ugt i64 %.012.i.i.i.i.i50.i.i.i.i, 1
  br i1 %i.due, label %.lr.ph.i.i.i.i.i49.i.i.i.i, label %_ZSt4copyIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.loopexit.i.i.i.i, !llvm.loop !917

_ZSt4copyIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.loopexit.i.i.i.i: ; preds = %.noexc127.i.i.i
  %.pre.i.i.i.i547 = load ptr, ptr %i.drw, align 8, !tbaa !394
  %.val26.pre.i.i.i.i = load ptr, ptr %i.dqh, align 8, !tbaa !394, !alias.scope !1081, !noalias !1079
  %.val27.pre.i.i.i.i = load ptr, ptr %i.dqj, align 8, !tbaa !392, !alias.scope !1081, !noalias !1079 ; 2 uses
  %.pre60.i.i.i.i = load ptr, ptr %i.drx, align 8, !tbaa !392
  %.pre61.i.i.i.i = ptrtoint ptr %.val27.pre.i.i.i.i to i64
  %.pre62.i.i.i.i = ptrtoint ptr %.val26.pre.i.i.i.i to i64
  %.pre64.i.i.i.i = sub i64 %.pre61.i.i.i.i, %.pre62.i.i.i.i
  br label %_ZSt4copyIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i.i.i.i

_ZSt4copyIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i.i.i.i: ; preds = %_ZSt4copyIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.loopexit.i.i.i.i, %bb.aqv
  %.pre-phi65.i.i.i.i = phi i64 [ %.pre64.i.i.i.i, %_ZSt4copyIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.loopexit.i.i.i.i ], [ %i.dte, %bb.aqv ]
  %i.duf = phi ptr [ %.pre60.i.i.i.i, %_ZSt4copyIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.loopexit.i.i.i.i ], [ %.val33.i.i.i.i, %bb.aqv ] ; 2 uses
  %.val27.i.i.i.i = phi ptr [ %.val27.pre.i.i.i.i, %_ZSt4copyIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.loopexit.i.i.i.i ], [ %.val31.i.i.i.i, %bb.aqv ] ; 2 uses
  %i.dug = phi ptr [ %.pre.i.i.i.i547, %_ZSt4copyIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.loopexit.i.i.i.i ], [ %.val32.i.i.i.i, %bb.aqv ]
  %i.duh = getelementptr inbounds nuw i8, ptr %i.dug, i64 %.pre-phi65.i.i.i.i ; 2 uses
  %.not14.i.i.i.i.i.i.i.i = icmp eq ptr %i.duh, %i.duf
  br i1 %.not14.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEEEvT_SG_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i541

.lr.ph.i.i.i.i.i.i.i.i541:                        ; preds = %_ZSt4copyIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i.i.i.i, %bb.aqy
  %.016.i.i.i.i.i.i.i.i = phi ptr [ %i.duz, %bb.aqy ], [ %.val27.i.i.i.i, %_ZSt4copyIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i.i.i.i ] ; 9 uses
  %.01215.i.i.i.i.i.i.i.i = phi ptr [ %i.duy, %bb.aqy ], [ %i.duh, %_ZSt4copyIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i.i.i.i ] ; 4 uses
  %i.dui = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.dui, ptr %.016.i.i.i.i.i.i.i.i, align 8, !tbaa !125
  %i.duj = load ptr, ptr %.01215.i.i.i.i.i.i.i.i, align 8, !tbaa !102 ; 2 uses
  %i.duk = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i, i64 8
  %i.dul = load i64, ptr %i.duk, align 8, !tbaa !126 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !1082
  store i64 %i.dul, ptr %i.b, align 8, !tbaa !127, !noalias !1082
  %i.dum = icmp ugt i64 %i.dul, 15
  br i1 %i.dum, label %.noexc.i.i.i.i.i.i.i.i.i.i.i543, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i543:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i541
  %i.dun = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %.016.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i.i.i.i.i.i.i544 unwind label %bb.aqz ; 2 uses

.noexc.i.i.i.i.i.i.i.i544:                        ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i543
  store ptr %i.dun, ptr %.016.i.i.i.i.i.i.i.i, align 8, !tbaa !102
  %i.duo = load i64, ptr %i.b, align 8, !tbaa !127, !noalias !1082
  store i64 %i.duo, ptr %i.dui, align 8, !tbaa !103
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc.i.i.i.i.i.i.i.i544, %.lr.ph.i.i.i.i.i.i.i.i541
  %i.dup = phi ptr [ %i.dun, %.noexc.i.i.i.i.i.i.i.i544 ], [ %i.dui, %.lr.ph.i.i.i.i.i.i.i.i541 ] ; 2 uses
  switch i64 %i.dul, label %bb.aqx [
    i64 1, label %bb.aqw
    i64 0, label %bb.aqy
  ]

bb.aqw:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.duq = load i8, ptr %i.duj, align 1, !tbaa !103
  store i8 %i.duq, ptr %i.dup, align 1, !tbaa !103
  br label %bb.aqy

bb.aqx:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dup, ptr align 1 %i.duj, i64 %i.dul, i1 false)
  br label %bb.aqy

bb.aqy:                                           ; preds = %bb.aqx, %bb.aqw, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dur = load i64, ptr %i.b, align 8, !tbaa !127, !noalias !1082 ; 2 uses
  %i.dus = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i, i64 8
  store i64 %i.dur, ptr %i.dus, align 8, !tbaa !126
  %i.dut = load ptr, ptr %.016.i.i.i.i.i.i.i.i, align 8, !tbaa !102
  %i.duu = getelementptr inbounds nuw i8, ptr %i.dut, i64 %i.dur
  store i8 0, ptr %i.duu, align 1, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !1082
  %i.duv = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i, i64 32
  %i.duw = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i, i64 32
  %i.dux = load i32, ptr %i.duw, align 8, !tbaa !162
  store i32 %i.dux, ptr %i.duv, align 8, !tbaa !162
  %i.duy = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.duz = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i, i64 40
  %.not.i.i.i.i.i.i.i.i542 = icmp eq ptr %i.duy, %i.duf
  br i1 %.not.i.i.i.i.i.i.i.i542, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEEEvT_SG_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i541, !llvm.loop !918

bb.aqz:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i543
  %i.dva = landingpad { ptr, i32 }
          catch ptr null
  %i.dvb = extractvalue { ptr, i32 } %i.dva, 0
  %i.dvc = call ptr @__cxa_begin_catch(ptr %i.dvb) #27 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_(ptr noundef %.val27.i.i.i.i, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #30
          to label %bb.arc unwind label %bb.ara

bb.ara:                                           ; preds = %bb.aqz
  %i.dvd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i486 unwind label %bb.arb

bb.arb:                                           ; preds = %bb.ara
  %i.dve = landingpad { ptr, i32 }
          catch ptr null
  %i.dvf = extractvalue { ptr, i32 } %i.dve, 0
  call void @__clang_call_terminate(ptr %i.dvf) #31
  unreachable

bb.arc:                                           ; preds = %bb.aqz
  unreachable

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEEEvT_SG_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i44.i.i.i.i, %bb.aqy, %_ZSt4copyIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ET0_T_SB_SA_.exit.i.i.i.i, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEENS1_IPSA_SF_EEET0_T_SK_SJ_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIS8_EE13_M_deallocateEPS8_m.exit.i.i.i.i
  %i.dvg = load ptr, ptr %i.dqh, align 8, !tbaa !394, !alias.scope !1081, !noalias !1079
  %i.dvh = getelementptr inbounds nuw i8, ptr %i.dvg, i64 %i.dsa
  store ptr %i.dvh, ptr %i.dqj, align 8, !tbaa !392, !alias.scope !1081, !noalias !1079
  br label %_ZNSt6vectorIN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIS8_EEaSERKSA_.exit.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIS8_EEaSERKSA_.exit.i.i.i: ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt6vectorISA_SaISA_EEEEEvT_SG_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit123.i.i.i
  %i.dvi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i, i64 128 ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.dqb, ptr noundef nonnull align 8 dereferenceable(56) %i.dvi)
          to label %.noexc130.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.i

.noexc130.i.i.i:                                  ; preds = %_ZNSt6vectorIN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIS8_EEaSERKSA_.exit.i.i.i
  %i.dvj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i128.i.i.i = icmp eq ptr %i.dvi, %i.dqb
  br i1 %.not.i.i128.i.i.i, label %_ZN12_GLOBAL__N_14JBTsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS7_.exit.i.i.i, label %bb.ard

bb.ard:                                           ; preds = %.noexc130.i.i.i
  %.val32.i.i.i.i.i = load ptr, ptr %i.dvj, align 8, !tbaa !410 ; 8 uses
  %i.dvk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.val33.i.i.i.i.i = load ptr, ptr %i.dvk, align 8, !tbaa !411 ; 3 uses
  %i.dvl = ptrtoint ptr %.val33.i.i.i.i.i to i64
  %i.dvm = ptrtoint ptr %.val32.i.i.i.i.i to i64
  %i.dvn = sub i64 %i.dvl, %i.dvm                 ; 10 uses
  %.val.i.i.i.i.i499 = load ptr, ptr %i.dqe, align 8, !tbaa !410, !alias.scope !1081, !noalias !1079 ; 9 uses
  %.val25.i.i.i.i.i = load ptr, ptr %i.dqk, align 8, !tbaa !1017, !alias.scope !1081, !noalias !1079
  %i.dvo = ptrtoint ptr %.val25.i.i.i.i.i to i64
  %i.dvp = ptrtoint ptr %.val.i.i.i.i.i499 to i64 ; 2 uses
  %i.dvq = sub i64 %i.dvo, %i.dvp
  %i.dvr = icmp ugt i64 %i.dvn, %i.dvq
  br i1 %i.dvr, label %bb.are, label %bb.arg

bb.are:                                           ; preds = %bb.ard
  %i.dvs = icmp ugt i64 %i.dvn, 9223372036854775804
  br i1 %i.dvs, label %.invoke.i.i.i538, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_18JBTIndexESaIS1_EE11_M_allocateEm.exit.i.i.i.i.i.i, !prof !370

.invoke.i.i.i538:                                 ; preds = %bb.are, %bb.aqo
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.cont.i.i.i539 unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp.i

.cont.i.i.i539:                                   ; preds = %.invoke.i.i.i538
  unreachable

_ZNSt12_Vector_baseIN12_GLOBAL__N_18JBTIndexESaIS1_EE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.are
  %i.dvt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dvn) #29
          to label %_ZNSt6vectorIN12_GLOBAL__N_18JBTIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.i ; 4 uses

_ZNSt6vectorIN12_GLOBAL__N_18JBTIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit.i.i.i.i.i: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_18JBTIndexESaIS1_EE11_M_allocateEm.exit.i.i.i.i.i.i
  %218 = and i64 %i.dvn, 9223372036854775804
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dvt, ptr readonly align 4 %.val32.i.i.i.i.i, i64 %218, i1 false), !tbaa !162
  %i.dvu = load ptr, ptr %i.dqe, align 8, !tbaa !410, !alias.scope !1081, !noalias !1079 ; 3 uses
  %.not.i.i.i.i.i.i537 = icmp eq ptr %i.dvu, null
  br i1 %.not.i.i.i.i.i.i537, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_18JBTIndexESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i, label %bb.arf

bb.arf:                                           ; preds = %_ZNSt6vectorIN12_GLOBAL__N_18JBTIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit.i.i.i.i.i
  %i.dvv = load ptr, ptr %i.dqk, align 8, !tbaa !1017, !alias.scope !1081, !noalias !1079
  %i.dvw = ptrtoint ptr %i.dvv to i64
  %i.dvx = ptrtoint ptr %i.dvu to i64
  %i.dvy = sub i64 %i.dvw, %i.dvx
  call void @_ZdlPvm(ptr noundef nonnull %i.dvu, i64 noundef %i.dvy) #28
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_18JBTIndexESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_18JBTIndexESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i: ; preds = %bb.arf, %_ZNSt6vectorIN12_GLOBAL__N_18JBTIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit.i.i.i.i.i
  store ptr %i.dvt, ptr %i.dqe, align 8, !tbaa !410, !alias.scope !1081, !noalias !1079
  %i.dvz = getelementptr inbounds nuw i8, ptr %i.dvt, i64 %i.dvn
  store ptr %i.dvz, ptr %i.dqk, align 8, !tbaa !1017, !alias.scope !1081, !noalias !1079
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_18JBTIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.i.i.i.i.i

bb.arg:                                           ; preds = %bb.ard
  %.val31.i.i.i.i.i = load ptr, ptr %i.dql, align 8, !tbaa !411, !alias.scope !1081, !noalias !1079 ; 3 uses
  %i.dwa = ptrtoint ptr %.val31.i.i.i.i.i to i64
  %i.dwb = sub i64 %i.dwa, %i.dvp                 ; 5 uses
  %.not24.i.i.i.i.i = icmp ult i64 %i.dwb, %i.dvn
  br i1 %.not24.i.i.i.i.i, label %bb.arl, label %bb.arh

bb.arh:                                           ; preds = %bb.arg
  %i.dwc = icmp sgt i64 %i.dvn, 4
  br i1 %i.dwc, label %bb.ari, label %bb.arj, !prof !247

bb.ari:                                           ; preds = %bb.arh
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.val.i.i.i.i.i499, ptr align 4 %.val32.i.i.i.i.i, i64 %i.dvn, i1 false)
  %.pre44.i.i.i.i.i = load ptr, ptr %i.dqe, align 8, !tbaa !410, !alias.scope !1081, !noalias !1079
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_18JBTIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.i.i.i.i.i

bb.arj:                                           ; preds = %bb.arh
  %i.dwd = icmp eq i64 %i.dvn, 4
  br i1 %i.dwd, label %bb.ark, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_18JBTIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.i.i.i.i.i

bb.ark:                                           ; preds = %bb.arj
  %.val.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.val32.i.i.i.i.i, align 4, !tbaa !162
  store i32 %.val.i.i.i.i.i.i.i.i.i.i, ptr %.val.i.i.i.i.i499, align 4, !tbaa !162
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_18JBTIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.i.i.i.i.i

bb.arl:                                           ; preds = %bb.arg
  %i.dwe = icmp sgt i64 %i.dwb, 4
  br i1 %i.dwe, label %bb.arm, label %bb.arn, !prof !247

bb.arm:                                           ; preds = %bb.arl
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.val.i.i.i.i.i499, ptr align 4 %.val32.i.i.i.i.i, i64 %i.dwb, i1 false)
  %.pre.i.i.i.i.i = load ptr, ptr %i.dvj, align 8, !tbaa !410
  %.val26.pre.i.i.i.i.i = load ptr, ptr %i.dqe, align 8, !tbaa !410, !alias.scope !1081, !noalias !1079 ; 2 uses
  %.val27.pre.i.i.i.i.i = load ptr, ptr %i.dql, align 8, !tbaa !411, !alias.scope !1081, !noalias !1079 ; 2 uses
  %.pre43.i.i.i.i.i = load ptr, ptr %i.dvk, align 8, !tbaa !411
  %.pre45.i.i.i.i.i = ptrtoint ptr %.val27.pre.i.i.i.i.i to i64
  %.pre46.i.i.i.i.i = ptrtoint ptr %.val26.pre.i.i.i.i.i to i64
  %.pre48.i.i.i.i.i = sub i64 %.pre45.i.i.i.i.i, %.pre46.i.i.i.i.i
  br label %_ZSt4copyIPN12_GLOBAL__N_18JBTIndexES2_ET0_T_S4_S3_.exit.i.i.i.i.i

bb.arn:                                           ; preds = %bb.arl
  %i.dwf = icmp eq i64 %i.dwb, 4
  br i1 %i.dwf, label %bb.aro, label %_ZSt4copyIPN12_GLOBAL__N_18JBTIndexES2_ET0_T_S4_S3_.exit.i.i.i.i.i

bb.aro:                                           ; preds = %bb.arn
  %.val.i.i.i.i.i40.i.i.i.i.i = load i32, ptr %.val32.i.i.i.i.i, align 4, !tbaa !162
  store i32 %.val.i.i.i.i.i40.i.i.i.i.i, ptr %.val.i.i.i.i.i499, align 4, !tbaa !162
  br label %_ZSt4copyIPN12_GLOBAL__N_18JBTIndexES2_ET0_T_S4_S3_.exit.i.i.i.i.i

_ZSt4copyIPN12_GLOBAL__N_18JBTIndexES2_ET0_T_S4_S3_.exit.i.i.i.i.i: ; preds = %bb.aro, %bb.arn, %bb.arm
  %.pre-phi49.i.i.i.i.i = phi i64 [ %.pre48.i.i.i.i.i, %bb.arm ], [ %i.dwb, %bb.arn ], [ 4, %bb.aro ] ; 3 uses
  %i.dwg = phi ptr [ %.pre43.i.i.i.i.i, %bb.arm ], [ %.val33.i.i.i.i.i, %bb.arn ], [ %.val33.i.i.i.i.i, %bb.aro ] ; 3 uses
  %.val27.i.i.i.i.i = phi ptr [ %.val27.pre.i.i.i.i.i, %bb.arm ], [ %.val31.i.i.i.i.i, %bb.arn ], [ %.val31.i.i.i.i.i, %bb.aro ] ; 5 uses
  %.val26.i.i.i.i.i = phi ptr [ %.val26.pre.i.i.i.i.i, %bb.arm ], [ %.val.i.i.i.i.i499, %bb.arn ], [ %.val.i.i.i.i.i499, %bb.aro ] ; 3 uses
  %i.dwh = phi ptr [ %.pre.i.i.i.i.i, %bb.arm ], [ %.val32.i.i.i.i.i, %bb.arn ], [ %.val32.i.i.i.i.i, %bb.aro ] ; 2 uses
  %.val27.i.i.i.i.i1638 = ptrtoaddr ptr %.val27.i.i.i.i.i to i64
  %i.dwi = ptrtoaddr ptr %i.dwh to i64            ; 2 uses
  %i.dwj = getelementptr inbounds nuw i8, ptr %i.dwh, i64 %.pre-phi49.i.i.i.i.i ; 5 uses
  %.not9.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dwj, %i.dwg
  br i1 %.not9.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_18JBTIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i129.i.i.i.preheader

.lr.ph.i.i.i.i.i.i129.i.i.i.preheader:            ; preds = %_ZSt4copyIPN12_GLOBAL__N_18JBTIndexES2_ET0_T_S4_S3_.exit.i.i.i.i.i
  %i.dwk = ptrtoaddr ptr %i.dwg to i64
  %i.dwl = add i64 %i.dwk, -4
  %i.dwm = add i64 %.pre-phi49.i.i.i.i.i, %i.dwi
  %i.dwn = sub i64 %i.dwl, %i.dwm                 ; 2 uses
  %i.dwo = lshr i64 %i.dwn, 2
  %i.dwp = add nuw nsw i64 %i.dwo, 1              ; 2 uses
  %min.iters.check1641 = icmp ult i64 %i.dwn, 28
  br i1 %min.iters.check1641, label %.lr.ph.i.i.i.i.i.i129.i.i.i.preheader1657, label %vector.memcheck1637

vector.memcheck1637:                              ; preds = %.lr.ph.i.i.i.i.i.i129.i.i.i.preheader
  %i.dwq = add nuw i64 %.pre-phi49.i.i.i.i.i, %i.dwi
  %i.dwr = sub i64 %i.dwq, %.val27.i.i.i.i.i1638
  %diff.check1639 = icmp ugt i64 %i.dwr, -32
  br i1 %diff.check1639, label %.lr.ph.i.i.i.i.i.i129.i.i.i.preheader1657, label %vector.ph1642

vector.ph1642:                                    ; preds = %vector.memcheck1637
  %n.vec1643 = and i64 %i.dwp, 9223372036854775800 ; 3 uses
  %i.dws = shl i64 %n.vec1643, 2                  ; 2 uses
  %i.dwt = getelementptr i8, ptr %.val27.i.i.i.i.i, i64 %i.dws
  %i.dwu = getelementptr i8, ptr %i.dwj, i64 %i.dws
  br label %vector.body1644

vector.body1644:                                  ; preds = %vector.body1644, %vector.ph1642
  %index1645 = phi i64 [ 0, %vector.ph1642 ], [ %index.next1650, %vector.body1644 ] ; 2 uses
  %i.dwv = shl i64 %index1645, 2                  ; 2 uses
  %next.gep1646 = getelementptr i8, ptr %.val27.i.i.i.i.i, i64 %i.dwv ; 2 uses
  %next.gep1647 = getelementptr i8, ptr %i.dwj, i64 %i.dwv ; 2 uses
  %i.dww = getelementptr i8, ptr %next.gep1647, i64 16
  %wide.load1648 = load <4 x i32>, ptr %next.gep1647, align 4, !tbaa !162
  %wide.load1649 = load <4 x i32>, ptr %i.dww, align 4, !tbaa !162
  %i.dwx = getelementptr i8, ptr %next.gep1646, i64 16
  store <4 x i32> %wide.load1648, ptr %next.gep1646, align 4, !tbaa !162
  store <4 x i32> %wide.load1649, ptr %i.dwx, align 4, !tbaa !162
  %index.next1650 = add nuw i64 %index1645, 8     ; 2 uses
  %i.dwy = icmp eq i64 %index.next1650, %n.vec1643
  br i1 %i.dwy, label %middle.block1651, label %vector.body1644, !llvm.loop !919

middle.block1651:                                 ; preds = %vector.body1644
  %cmp.n1652 = icmp eq i64 %i.dwp, %n.vec1643
  br i1 %cmp.n1652, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_18JBTIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i129.i.i.i.preheader1657

.lr.ph.i.i.i.i.i.i129.i.i.i.preheader1657:        ; preds = %vector.memcheck1637, %.lr.ph.i.i.i.i.i.i129.i.i.i.preheader, %middle.block1651
  %.011.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.val27.i.i.i.i.i, %vector.memcheck1637 ], [ %.val27.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i129.i.i.i.preheader ], [ %i.dwt, %middle.block1651 ]
  %.0810.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.dwj, %vector.memcheck1637 ], [ %i.dwj, %.lr.ph.i.i.i.i.i.i129.i.i.i.preheader ], [ %i.dwu, %middle.block1651 ]
  br label %.lr.ph.i.i.i.i.i.i129.i.i.i

.lr.ph.i.i.i.i.i.i129.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i129.i.i.i.preheader1657, %.lr.ph.i.i.i.i.i.i129.i.i.i
  %.011.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dxa, %.lr.ph.i.i.i.i.i.i129.i.i.i ], [ %.011.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i129.i.i.i.preheader1657 ] ; 2 uses
  %.0810.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dwz, %.lr.ph.i.i.i.i.i.i129.i.i.i ], [ %.0810.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i129.i.i.i.preheader1657 ] ; 2 uses
  %.08.val.i.i.i.i.i.i.i.i.i = load i32, ptr %.0810.i.i.i.i.i.i.i.i.i, align 4, !tbaa !162
  store i32 %.08.val.i.i.i.i.i.i.i.i.i, ptr %.011.i.i.i.i.i.i.i.i.i, align 4, !tbaa !162
  %i.dwz = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.dxa = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i.i.i.i536 = icmp eq ptr %i.dwz, %i.dwg
  br i1 %.not.i.i.i.i.i.i.i.i.i536, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_18JBTIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i129.i.i.i, !llvm.loop !920

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_18JBTIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i129.i.i.i, %middle.block1651, %_ZSt4copyIPN12_GLOBAL__N_18JBTIndexES2_ET0_T_S4_S3_.exit.i.i.i.i.i, %bb.ark, %bb.arj, %bb.ari, %_ZNSt12_Vector_baseIN12_GLOBAL__N_18JBTIndexESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i
  %i.dxb = phi ptr [ %i.dvt, %_ZNSt12_Vector_baseIN12_GLOBAL__N_18JBTIndexESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i.i ], [ %.val26.i.i.i.i.i, %_ZSt4copyIPN12_GLOBAL__N_18JBTIndexES2_ET0_T_S4_S3_.exit.i.i.i.i.i ], [ %.val.i.i.i.i.i499, %bb.ark ], [ %.val.i.i.i.i.i499, %bb.arj ], [ %.pre44.i.i.i.i.i, %bb.ari ], [ %.val26.i.i.i.i.i, %middle.block1651 ], [ %.val26.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i129.i.i.i ]
  %i.dxc = getelementptr inbounds nuw i8, ptr %i.dxb, i64 %i.dvn
  store ptr %i.dxc, ptr %i.dql, align 8, !tbaa !411, !alias.scope !1081, !noalias !1079
  br label %_ZN12_GLOBAL__N_14JBTsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS7_.exit.i.i.i

_ZN12_GLOBAL__N_14JBTsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS7_.exit.i.i.i: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN12_GLOBAL__N_18JBTIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.i.i.i.i.i, %.noexc130.i.i.i
  %i.dxd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i, i64 184 ; 2 uses
  %.val71.i.i.i = load ptr, ptr %i.dxd, align 8, !tbaa !394 ; 2 uses
  %i.dxe = getelementptr i8, ptr %.19.i.i.i.i.i.i.i, i64 192 ; 2 uses
  %.val72.i.i.i = load ptr, ptr %i.dxe, align 8, !tbaa !392 ; 2 uses
  %i.dxf = ptrtoint ptr %.val72.i.i.i to i64
  %i.dxg = ptrtoint ptr %.val71.i.i.i to i64
  %i.dxh = sub i64 %i.dxf, %i.dxg                 ; 2 uses
  %i.dxi = sdiv exact i64 %i.dxh, 40
  %i.dxj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 128 ; 2 uses
  %.val69.i.i.i = load ptr, ptr %i.dxj, align 8, !tbaa !394, !noalias !1081
  %i.dxk = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 136 ; 2 uses
  %.val70.i.i.i = load ptr, ptr %i.dxk, align 8, !tbaa !392, !noalias !1081
  %i.dxl = ptrtoint ptr %.val70.i.i.i to i64
  %i.dxm = ptrtoint ptr %.val69.i.i.i to i64
  %i.dxn = sub i64 %i.dxl, %i.dxm                 ; 2 uses
  %i.dxo = sdiv exact i64 %i.dxn, 40
  %i.dxp = add nsw i64 %i.dxo, %i.dxi             ; 3 uses
  %i.dxq = icmp ugt i64 %i.dxp, 230584300921369395
  br i1 %i.dxq, label %.invoke.i.i, label %bb.arp

.invoke.i.i:                                      ; preds = %bb.asd, %bb.ary, %bb.art, %_ZN12_GLOBAL__N_14JBTsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS7_.exit.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #30
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.split-lp.i

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.arp:                                           ; preds = %_ZN12_GLOBAL__N_14JBTsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSERKS7_.exit.i.i.i
  %.val.i70.i.i = load ptr, ptr %i.dqm, align 8, !tbaa !394, !noalias !1079
  %.val8.i71.i.i = load ptr, ptr %i.dqn, align 8, !tbaa !393, !noalias !1079
  %i.dxr = ptrtoint ptr %.val8.i71.i.i to i64
  %i.dxs = ptrtoint ptr %.val.i70.i.i to i64      ; 2 uses
  %i.dxt = sub i64 %i.dxr, %i.dxs
  %i.dxu = sdiv exact i64 %i.dxt, 40
  %i.dxv = icmp ult i64 %i.dxu, %i.dxp
  %.val10.i73.i.i = load ptr, ptr %i.dqo, align 8, !tbaa !440, !noalias !1079 ; 2 uses
  br i1 %i.dxv, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIS8_EE11_M_allocateEm.exit.i72.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIS8_EE7reserveEm.exit90.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIS8_EE11_M_allocateEm.exit.i72.i.i: ; preds = %bb.arp
  %i.dxw = ptrtoint ptr %.val10.i73.i.i to i64
  %i.dxx = sub i64 %i.dxw, %i.dxs
  %i.dxy = add i64 %i.dxn, %i.dxh
  %i.dxz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dxy) #29
          to label %.noexc89.i.i535 unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.loopexit.i ; 4 uses

.noexc89.i.i535:                                  ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIS8_EE11_M_allocateEm.exit.i72.i.i
  %i.dya = load ptr, ptr %i.dqm, align 8, !tbaa !394, !noalias !1079 ; 3 uses
  %i.dyb = load ptr, ptr %i.dqo, align 8, !tbaa !392, !noalias !1079 ; 2 uses
  %.not1.i.i.i.i74.i.i = icmp eq ptr %i.dya, %i.dyb
  br i1 %.not1.i.i.i.i74.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i85.i.i, label %.lr.ph.i.i.i.i75.i.i

.lr.ph.i.i.i.i75.i.i:                             ; preds = %.noexc89.i.i535, %_ZSt19__relocate_object_aIN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i.i81.i.i
  %.03.i.i.i.i76.i.i = phi ptr [ %i.dys, %_ZSt19__relocate_object_aIN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i.i81.i.i ], [ %i.dxz, %.noexc89.i.i535 ] ; 6 uses
  %.092.i.i.i.i77.i.i = phi ptr [ %i.dyr, %_ZSt19__relocate_object_aIN12_GLOBAL__N_13JBTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i.i81.i.i ], [ %i.dya, %.noexc89.i.i535 ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.dyc = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i76.i.i, i64 16 ; 3 uses
end_hunk_0
