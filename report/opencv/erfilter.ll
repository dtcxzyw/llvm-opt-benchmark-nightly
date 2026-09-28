Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/erfilter?download=true
inline.NumInlined: 6540
inline.NumDeleted: 1902
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv4text23MaxMeaningfulClustering16build_merge_infoEPdS2_iibPSt6vectorINS0_8HClusterESaIS4_EEPS3_IS3_IiSaIiEESaIS9_EE:bb.a
          cleanup
  br label %bb.cj

.loopexit.split-lp785:                            ; preds = %bb.bs
  %lpad.loopexit.split-lp787 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

_ZN2cv4text7Minibox6volumeEv.exit:                ; preds = %_ZNSt6vectorIfSaIfEE2atEm.exit8.i, %._crit_edge941
  %.06.lcssa.i = phi x86_fp80 [ 1.000000e+00, %._crit_edge941 ], [ %i.ov, %_ZNSt6vectorIfSaIfEE2atEm.exit8.i ] ; 2 uses
  %i.ph = fcmp ult x86_fp80 %.06.lcssa.i, 1.000000e+00
  %spec.select = select i1 %i.ph, x86_fp80 %.06.lcssa.i, x86_fp80 f0x3FFEFFFFEF39085F4800 ; 2 uses
  %i.pi = fcmp oeq x86_fp80 %spec.select, 0.000000e+00
  %storemerge327 = select i1 %i.pi, x86_fp80 f0x3FF583126E978D4FE000, x86_fp80 %spec.select ; 3 uses
  store x86_fp80 %storemerge327, ptr %i.aa, align 16, !tbaa !557
  store x86_fp80 1.000000e+00, ptr %i.ab, align 16, !tbaa !558
  %.pre1091.pre = load ptr, ptr %i.m, align 8, !tbaa !264 ; 5 uses
  br i1 %i.at, label %bb.bx, label %bb.bv

.loopexit831:                                     ; preds = %bb.cb, %bb.cc
  %lpad.loopexit833 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit.split-lp832:                            ; preds = %.invoke
  %lpad.loopexit.split-lp834 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bv:                                            ; preds = %_ZN2cv4text7Minibox6volumeEv.exit
  %i.pj = sub nsw i32 %i.ap, %3
  %i.pk = zext nneg i32 %i.pj to i64              ; 3 uses
  %i.pl = load ptr, ptr %6, align 8, !tbaa !263   ; 2 uses
  %i.pm = ptrtoint ptr %.pre1091.pre to i64
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = sub i64 %i.pm, %i.pn
  %i.pp = sdiv exact i64 %i.po, 160               ; 2 uses
  %.not.i.i443 = icmp ugt i64 %i.pp, %i.pk
  br i1 %.not.i.i443, label %bb.bw, label %.invoke

bb.bw:                                            ; preds = %bb.bv
  %i.pq = getelementptr inbounds nuw [160 x i8], ptr %i.pl, i64 %i.pk
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 64
  store x86_fp80 %storemerge327, ptr %i.pr, align 16, !tbaa !558
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZN2cv4text7Minibox6volumeEv.exit
  br i1 %i.he, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ps = sub nsw i32 %i.ao, %3
  %i.pt = zext nneg i32 %i.ps to i64              ; 3 uses
  %i.pu = load ptr, ptr %6, align 8, !tbaa !263   ; 2 uses
  %i.pv = ptrtoint ptr %.pre1091.pre to i64
  %i.pw = ptrtoint ptr %i.pu to i64
  %i.px = sub i64 %i.pv, %i.pw
  %i.py = sdiv exact i64 %i.px, 160               ; 2 uses
  %.not.i.i446 = icmp ugt i64 %i.py, %i.pt
  br i1 %.not.i.i446, label %bb.bz, label %.invoke

bb.bz:                                            ; preds = %bb.by
  %i.pz = getelementptr inbounds nuw [160 x i8], ptr %i.pu, i64 %i.pt
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 64
  store x86_fp80 %storemerge327, ptr %i.qa, align 16, !tbaa !558
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bx
  store <2 x i32> %i.an, ptr %i.ac, align 4, !tbaa !67
  %i.qb = load ptr, ptr %i.ad, align 8, !tbaa !265
  %.not.i449 = icmp eq ptr %.pre1091.pre, %i.qb
  br i1 %.not.i449, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN2cv4text8HClusterC2ERKS1_(ptr noundef nonnull align 16 dereferenceable(160) %.pre1091.pre, ptr noundef nonnull align 16 dereferenceable(160) %9)
          to label %.noexc450 unwind label %.loopexit831

.noexc450:                                        ; preds = %bb.cb
  %i.qc = load ptr, ptr %i.m, align 8, !tbaa !264
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 160
  store ptr %i.qd, ptr %i.m, align 8, !tbaa !264
  br label %_ZNSt6vectorIN2cv4text8HClusterESaIS2_EE9push_backERKS2_.exit

bb.cc:                                            ; preds = %bb.ca
  invoke void @_ZNSt6vectorIN2cv4text8HClusterESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %.pre1091.pre, ptr noundef nonnull align 16 dereferenceable(160) %9)
          to label %_ZNSt6vectorIN2cv4text8HClusterESaIS2_EE9push_backERKS2_.exit unwind label %.loopexit831

_ZNSt6vectorIN2cv4text8HClusterESaIS2_EE9push_backERKS2_.exit: ; preds = %.noexc450, %bb.cc
  %i.qe = load ptr, ptr %i.y, align 8, !tbaa !235 ; 3 uses
  %.not.i.i.i.i452 = icmp eq ptr %i.qe, null
  br i1 %.not.i.i.i.i452, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIN2cv4text8HClusterESaIS2_EE9push_backERKS2_.exit
  %i.qf = load ptr, ptr %i.ae, align 8, !tbaa !238
  %i.qg = ptrtoint ptr %i.qf to i64
  %i.qh = ptrtoint ptr %i.qe to i64
  %i.qi = sub i64 %i.qg, %i.qh
  call void @_ZdlPvm(ptr noundef nonnull %i.qe, i64 noundef %i.qi) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.cd, %_ZNSt6vectorIN2cv4text8HClusterESaIS2_EE9push_backERKS2_.exit
  %.not.i.i.i1.i = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i1.i, label %_ZN2cv4text7MiniboxD2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.qj = load ptr, ptr %i.af, align 8, !tbaa !238
  %i.qk = ptrtoint ptr %i.qj to i64
  %i.ql = sub i64 %i.qk, %i.oc
  call void @_ZdlPvm(ptr noundef nonnull %i.oa, i64 noundef %i.ql) #33
  br label %_ZN2cv4text7MiniboxD2Ev.exit

_ZN2cv4text7MiniboxD2Ev.exit:                     ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.qm = load ptr, ptr %i.g, align 16, !tbaa !140 ; 3 uses
  %.not.i.i.i.i453 = icmp eq ptr %i.qm, null
  br i1 %.not.i.i.i.i453, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.cf

bb.cf:                                            ; preds = %_ZN2cv4text7MiniboxD2Ev.exit
  %i.qn = load ptr, ptr %i.ag, align 16, !tbaa !139
  %i.qo = ptrtoint ptr %i.qn to i64
  %i.qp = ptrtoint ptr %i.qm to i64
  %i.qq = sub i64 %i.qo, %i.qp
  call void @_ZdlPvm(ptr noundef nonnull %i.qm, i64 noundef %i.qq) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.cf, %_ZN2cv4text7MiniboxD2Ev.exit
  %i.qr = load ptr, ptr %i.f, align 16, !tbaa !281 ; 3 uses
  %i.qs = load ptr, ptr %i.n, align 8, !tbaa !278 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.qr, %i.qs
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.qz, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i ], [ %i.qr, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ] ; 3 uses
  %i.qt = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !235 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.qt, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i
  %i.qu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !238
  %i.qw = ptrtoint ptr %i.qv to i64
  %i.qx = ptrtoint ptr %i.qt to i64
  %i.qy = sub i64 %i.qw, %i.qx
  call void @_ZdlPvm(ptr noundef nonnull %i.qt, i64 noundef %i.qy) #33
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i: ; preds = %bb.cg, %.lr.ph.i.i.i.i
  %i.qz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1.i454 = icmp eq ptr %i.qz, %i.qs
  br i1 %.not.i.i.i1.i454, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.f, align 16, !tbaa !281
  br label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.ra = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.qr, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ra, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit.i, label %bb.ch

bb.ch:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.rb = load ptr, ptr %i.o, align 16, !tbaa !279
  %i.rc = ptrtoint ptr %i.rb to i64
  %i.rd = ptrtoint ptr %i.ra to i64
  %i.re = sub i64 %i.rc, %i.rd
  call void @_ZdlPvm(ptr noundef nonnull %i.ra, i64 noundef %i.re) #33
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit.i

_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit.i:       ; preds = %bb.ch, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.rf = load ptr, ptr %i.e, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.rf, null
  br i1 %.not.i.i.i2.i, label %_ZN2cv4text8HClusterD2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit.i
  %i.rg = load ptr, ptr %i.q, align 8, !tbaa !139
  %i.rh = ptrtoint ptr %i.rg to i64
  %i.ri = ptrtoint ptr %i.rf to i64
  %i.rj = sub i64 %i.rh, %i.ri
  call void @_ZdlPvm(ptr noundef nonnull %i.rf, i64 noundef %i.rj) #33
  br label %_ZN2cv4text8HClusterD2Ev.exit

_ZN2cv4text8HClusterD2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit.i, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %indvars.iv.next1076 = add nuw nsw i64 %indvars.iv1075, 4 ; 2 uses
  %i.rk = icmp samesign ult i64 %indvars.iv.next1076, %i.ah
  br i1 %i.rk, label %bb.b, label %._crit_edge945, !llvm.loop !551

bb.cj:                                            ; preds = %.loopexit831, %.loopexit.split-lp832, %.loopexit784, %.loopexit.split-lp785
  %.pn330 = phi { ptr, i32 } [ %lpad.loopexit.split-lp787, %.loopexit.split-lp785 ], [ %lpad.loopexit786, %.loopexit784 ], [ %lpad.loopexit833, %.loopexit831 ], [ %lpad.loopexit.split-lp834, %.loopexit.split-lp832 ]
  call void @_ZN2cv4text7MiniboxD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %12) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.ck

bb.ck:                                            ; preds = %.loopexit795, %.loopexit.split-lp796, %.loopexit806, %.loopexit.split-lp807, %bb.cj, %_ZNSt6vectorIfSaIfEED2Ev.exit407, %_ZNSt6vectorIfSaIfEED2Ev.exit350
  %.pn334.pn = phi { ptr, i32 } [ %.pn334, %_ZNSt6vectorIfSaIfEED2Ev.exit350 ], [ %.pn332, %_ZNSt6vectorIfSaIfEED2Ev.exit407 ], [ %.pn330, %bb.cj ], [ %lpad.loopexit.split-lp809, %.loopexit.split-lp807 ], [ %lpad.loopexit808, %.loopexit806 ], [ %lpad.loopexit797, %.loopexit795 ], [ %lpad.loopexit.split-lp798, %.loopexit.split-lp796 ]
  call void @_ZN2cv4text8HClusterD2Ev(ptr noundef nonnull align 16 dead_on_return(160) dereferenceable(160) %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %common.resume

._crit_edge945:                                   ; preds = %_ZN2cv4text8HClusterD2Ev.exit, %bb.a
  %i.rl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !264
  %i.rn = load ptr, ptr %6, align 8, !tbaa !263
  %i.ro = ptrtoint ptr %i.rm to i64
  %i.rp = ptrtoint ptr %i.rn to i64
  %i.rq = sub i64 %i.ro, %i.rp
  %i.rr = sdiv exact i64 %i.rq, 160
  %i.rs = trunc i64 %i.rr to i32
  %i.rt = icmp sgt i32 %i.rs, 0
  br i1 %i.rt, label %_ZNSt6vectorIN2cv4text8HClusterESaIS2_EE2atEm.exit458, label %._crit_edge958

_ZNSt6vectorIN2cv4text8HClusterESaIS2_EE2atEm.exit458: ; preds = %._crit_edge945
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.ru = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.ru, ptr %8, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 127, ptr %i.a, align 8, !tbaa !133
  %i.rv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.rv, ptr %8, align 8, !tbaa !113
  %i.rw = load i64, ptr %i.a, align 8, !tbaa !133 ; 3 uses
  store i64 %i.rw, ptr %i.ru, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(127) %i.rv, ptr noundef nonnull align 1 dereferenceable(127) @.str.22, i64 127, i1 false)
  %i.rx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.rw, ptr %i.rx, align 8, !tbaa !134
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.rw
  store i8 0, ptr %i.ry, align 1, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv4text23MaxMeaningfulClustering3nfaEfii, ptr noundef nonnull @.str.1, i32 noundef 2351) #35
          to label %bb.cl unwind label %bb.cm

bb.cl:                                            ; preds = %_ZNSt6vectorIN2cv4text8HClusterESaIS2_EE2atEm.exit458
  unreachable

bb.cm:                                            ; preds = %_ZNSt6vectorIN2cv4text8HClusterESaIS2_EE2atEm.exit458
  %i.rz = landingpad { ptr, i32 }
          cleanup
  %i.sa = load ptr, ptr %8, align 8, !tbaa !113   ; 2 uses
  %i.sb = icmp eq ptr %i.sa, %i.ru
  br i1 %i.sb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.cm
  %i.sc = load i64, ptr %i.ru, align 8, !tbaa !75
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.sd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.rz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn334.pn, %bb.ck ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %common.resume

._crit_edge958:                                   ; preds = %._crit_edge945
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv4text8HClusterESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !263
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !264
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN2cv4text8HClusterEEEvT_S6_(ptr noundef %i.a, ptr noundef %i.c)
          to label %_ZSt8_DestroyIPN2cv4text8HClusterES2_EvT_S4_RSaIT0_E.exit unwind label %bb.c

_ZSt8_DestroyIPN2cv4text8HClusterES2_EvT_S4_RSaIT0_E.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !263    ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN2cv4text8HClusterESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv4text8HClusterES2_EvT_S4_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !265
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #33
  br label %_ZNSt12_Vector_baseIN2cv4text8HClusterESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv4text8HClusterESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv4text8HClusterES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #36
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4text7MiniboxD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !238
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !235    ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIfSaIfEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !238
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #33
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2

_ZNSt6vectorIfSaIfEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4text8HClusterD2Ev(ptr noundef nonnull align 16 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !140 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !139
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !281 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !278  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i ], [ %i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i, align 8, !tbaa !235 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !238
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #33
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i:  ; preds = %bb.c, %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.r, %i.k
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.h, align 16, !tbaa !281
  br label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.s = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !279
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #33
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !140  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIiSaIiEED2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !139
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3

_ZNSt6vectorIiSaIiEED2Ev.exit3:                   ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit, %bb.e
  ret void
}

end_hunk_0
