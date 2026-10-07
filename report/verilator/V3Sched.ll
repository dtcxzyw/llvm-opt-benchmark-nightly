Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Sched?download=true
inline.NumInlined: 4815
inline.NumDeleted: 1903
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7V3Sched8scheduleEP10AstNetlist:bb.a
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #28
  br label %.body

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423

bb.bc:                                            ; preds = %.noexc399
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ho = load ptr, ptr %81, align 8, !tbaa !176  ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.fx
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421: ; preds = %bb.bc
  %i.hq = load i64, ptr %i.fx, align 8, !tbaa !148
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421, %bb.bb
  %.pn213 = phi { ptr, i32 } [ %i.hm, %bb.bb ], [ %i.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421 ], [ %i.hn, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #28
  br label %.body

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426

bb.be:                                            ; preds = %.noexc406
  %i.ht = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hu = load ptr, ptr %82, align 8, !tbaa !176  ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.gi
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424: ; preds = %bb.be
  %i.hw = load i64, ptr %i.gi, align 8, !tbaa !148
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424, %bb.bd
  %.pn215 = phi { ptr, i32 } [ %i.hs, %bb.bd ], [ %i.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424 ], [ %i.ht, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #28
  br label %.body

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429

bb.bg:                                            ; preds = %.noexc413
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ia = load ptr, ptr %83, align 8, !tbaa !176  ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.gu
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427: ; preds = %bb.bg
  %i.ic = load i64, ptr %i.gu, align 8, !tbaa !148
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427, %bb.bf
  %.pn217 = phi { ptr, i32 } [ %i.hy, %bb.bf ], [ %i.hz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i427 ], [ %i.hz, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #28
  br label %.body

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417, %bb.au
  %i.ie = load ptr, ptr %i.av, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #28
  %i.if = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 6 uses
  store ptr %i.if, ptr %73, align 8, !tbaa !174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.if, ptr noundef nonnull align 1 dereferenceable(12) @.str.60, i64 12, i1 false)
  %i.ig = getelementptr inbounds nuw i8, ptr %73, i64 8
  store i64 12, ptr %i.ig, align 8, !tbaa !175
  %i.ih = getelementptr inbounds nuw i8, ptr %73, i64 28
  store i8 0, ptr %i.ih, align 4, !tbaa !148
  %i.ii = invoke noundef ptr @_ZN7V3Sched4util15makeTopFunctionEP10AstNetlistRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef %i.ie, ptr noundef nonnull align 8 dereferenceable(32) %73, i1 noundef zeroext true)
          to label %bb.bi unwind label %bb.bk     ; 10 uses

bb.bi:                                            ; preds = %bb.bh
  %i.ij = load ptr, ptr %73, align 8, !tbaa !176  ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.if
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bi
  %i.il = load i64, ptr %i.if, align 8, !tbaa !148
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #28
  %i.in = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 3 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !181 ; 2 uses
  %i.ip = load ptr, ptr %79, align 8, !tbaa !182  ; 2 uses
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = sub i64 %i.iq, %i.ir                    ; 2 uses
  %i.it = ashr exact i64 %i.is, 4                 ; 3 uses
  %i.iu = icmp ult i64 %i.it, 2
  br i1 %i.iu, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  invoke fastcc void @_ZN7V3Sched12_GLOBAL__N_117orderSequentiallyEP8AstCFuncRKNS_12LogicByScopeE(ptr noundef %i.ii, ptr noundef nonnull align 8 dereferenceable(216) %79)
          to label %_ZN7V3Sched12_GLOBAL__N_112createStaticEP10AstNetlistRKNS_12LogicClassesE.exit unwind label %bb.cd

bb.bk:                                            ; preds = %bb.bh
  %i.iv = landingpad { ptr, i32 }
          cleanup
  %i.iw = load ptr, ptr %73, align 8, !tbaa !176  ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.if
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i: ; preds = %bb.bk
  %i.iy = load i64, ptr %i.if, align 8, !tbaa !148
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #28
  br label %.body

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ja = icmp ugt i64 %i.it, 1152921504606846975
  br i1 %i.ja, label %.noexc42.i, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc42.i:                                       ; preds = %bb.bl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.552) #31
          to label %.noexc432 unwind label %bb.cd

.noexc432:                                        ; preds = %.noexc42.i
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.bl
  %i.jb = ashr exact i64 %i.is, 1                 ; 6 uses
  %i.jc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jb) #27
          to label %.noexc433 unwind label %bb.cd ; 13 uses

.noexc433:                                        ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  store i64 0, ptr %i.jc, align 8, !tbaa !177
  %i.jd = getelementptr i8, ptr %i.jc, i64 8
  %.idx.i.i.i.i.i.i.i.i = add nsw i64 %i.jb, -8
  call void @llvm.memset.p0.i64(ptr align 8 %i.jd, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !177
  %i.je = getelementptr i8, ptr %i.jc, i64 %i.jb  ; 5 uses
  %i.jf = load ptr, ptr %i.in, align 8, !tbaa !181 ; 2 uses
  %i.jg = load ptr, ptr %79, align 8, !tbaa !182  ; 2 uses
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji                    ; 2 uses
  %.not83.i = icmp eq ptr %i.jf, %i.jg
  br i1 %.not83.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc433
  %i.jk = ashr exact i64 %i.jj, 4                 ; 4 uses
  %min.iters.check = icmp ult i64 %i.jk, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.jk, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %index ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store <2 x i64> %vec.ind, ptr %i.jl, align 8, !tbaa !177
  store <2 x i64> %step.add, ptr %i.jm, align 8, !tbaa !177
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.jn = icmp eq i64 %index.next, %n.vec
  br i1 %i.jn, label %middle.block, label %vector.body, !llvm.loop !472

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jk, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.02770.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %.noexc433
  %i.jo = icmp eq ptr %i.io, %i.ip                ; 2 uses
  br i1 %i.jo, label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7V3Sched12_GLOBAL__N_112createStaticEP10AstNetlistRKNS7_12LogicClassesEE3$_0EvT_SF_T0_.exit.i", label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %._crit_edge.i
  %i.jp = add nuw nsw i64 %i.it, 1
  %i.jq = lshr i64 %i.jp, 1                       ; 9 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %select.unfold.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %.010.i.i.i.i.i = phi i64 [ %i.jv, %select.unfold.i.i.i.i.i ], [ %i.jq, %.lr.ph.i.i.i.i.preheader.i ] ; 7 uses
  %i.jr = shl nuw nsw i64 %.010.i.i.i.i.i, 3
  %i.js = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.jr, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #32 ; 7 uses
  %.not.i.i.i.i44.i = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i.i44.i, label %select.unfold.i.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i.i

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i
  %i.jt = icmp eq i64 %.010.i.i.i.i.i, 1
  %i.ju = add nuw nsw i64 %.010.i.i.i.i.i, 1
  %i.jv = lshr i64 %i.ju, 1
  br i1 %i.jt, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i.thread.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !473

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.jw = icmp eq i64 %i.jq, %.010.i.i.i.i.i
  br i1 %i.jw, label %bb.bm, label %bb.bp, !prof !156

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i.thread.i: ; preds = %select.unfold.i.i.i.i.i
  %i.jx = icmp eq i64 %i.jq, 0
  br i1 %i.jx, label %bb.bm, label %bb.bo, !prof !156

bb.bm:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i.thread.i, %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i.i
  %.idx84.i = shl nuw nsw i64 %i.jq, 3            ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.idx84.i ; 3 uses
  invoke fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7V3Sched12_GLOBAL__N_112createStaticEP10AstNetlistRKNS9_12LogicClassesEE3$_0EEEvT_SI_T0_T1_"(ptr nonnull %i.jc, ptr nonnull %i.jy, ptr noundef %i.js, ptr nonnull align 8 dereferenceable(216) %79)
          to label %.noexc.i.i.i unwind label %bb.bn

.noexc.i.i.i:                                     ; preds = %bb.bm
  invoke fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7V3Sched12_GLOBAL__N_112createStaticEP10AstNetlistRKNS9_12LogicClassesEE3$_0EEEvT_SI_T0_T1_"(ptr nonnull %i.jy, ptr %i.je, ptr noundef %i.js, ptr nonnull align 8 dereferenceable(216) %79)
          to label %.noexc12.i.i.i unwind label %bb.bn

.noexc12.i.i.i:                                   ; preds = %.noexc.i.i.i
  %gepdiff.i = sub nsw i64 %i.jb, %.idx84.i
  %i.jz = ashr exact i64 %gepdiff.i, 3
  %i.ka = ptrtoint ptr %79 to i64
  invoke fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElS2_NS0_5__ops15_Iter_comp_iterIZN7V3Sched12_GLOBAL__N_112createStaticEP10AstNetlistRKNS9_12LogicClassesEE3$_0EEEvT_SI_SI_T0_SJ_T1_T2_"(ptr nonnull %i.jc, ptr nonnull %i.jy, ptr %i.je, i64 noundef %i.jq, i64 noundef %i.jz, ptr noundef %i.js, i64 %i.ka)
          to label %"_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7V3Sched12_GLOBAL__N_112createStaticEP10AstNetlistRKNS9_12LogicClassesEE3$_0EEEvT_SI_SI_T0_T1_.exit.i.i.i" unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bp, %bb.bo, %.noexc12.i.i.i, %.noexc.i.i.i, %bb.bm
  %.sroa.5.0.i.i.ph121.i = phi i64 [ %.010.i.i.i.i.i, %bb.bp ], [ 0, %bb.bo ], [ %i.jq, %.noexc12.i.i.i ], [ %i.jq, %.noexc.i.i.i ], [ %i.jq, %bb.bm ]
  %i.kb = landingpad { ptr, i32 }
          cleanup
  %i.kc = shl nuw nsw i64 %.sroa.5.0.i.i.ph121.i, 3
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.kc) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit56.i

bb.bo:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i.thread.i
  invoke fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7V3Sched12_GLOBAL__N_112createStaticEP10AstNetlistRKNS9_12LogicClassesEE3$_0EEEvT_SI_T0_"(ptr nonnull %i.jc, ptr %i.je, ptr nonnull align 8 dereferenceable(216) %79)
          to label %"_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7V3Sched12_GLOBAL__N_112createStaticEP10AstNetlistRKNS9_12LogicClassesEE3$_0EEEvT_SI_SI_T0_T1_.exit.i.i.i" unwind label %bb.bn

bb.bp:                                            ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i.i
  invoke fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZN7V3Sched12_GLOBAL__N_112createStaticEP10AstNetlistRKNS9_12LogicClassesEE3$_0EEEvT_SI_T0_T1_T2_"(ptr nonnull %i.jc, ptr %i.je, ptr noundef nonnull %i.js, i64 noundef %.010.i.i.i.i.i, ptr nonnull align 8 dereferenceable(216) %79)
          to label %"_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7V3Sched12_GLOBAL__N_112createStaticEP10AstNetlistRKNS9_12LogicClassesEE3$_0EEEvT_SI_SI_T0_T1_.exit.i.i.i" unwind label %bb.bn

"_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7V3Sched12_GLOBAL__N_112createStaticEP10AstNetlistRKNS9_12LogicClassesEE3$_0EEEvT_SI_SI_T0_T1_.exit.i.i.i": ; preds = %bb.bp, %bb.bo, %.noexc12.i.i.i
  %.sroa.5.0.i.i.ph119.i = phi i64 [ %.010.i.i.i.i.i, %bb.bp ], [ 0, %bb.bo ], [ %i.jq, %.noexc12.i.i.i ]
  %i.kd = shl nuw nsw i64 %.sroa.5.0.i.i.ph119.i, 3
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.kd) #28
  %.pre.i = load ptr, ptr %i.in, align 8, !tbaa !181
  %.pre93.i = load ptr, ptr %79, align 8, !tbaa !182
  %.pre96.i = ptrtoint ptr %.pre.i to i64
  %.pre97.i = ptrtoint ptr %.pre93.i to i64
  %.pre99.i = sub i64 %.pre96.i, %.pre97.i
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7V3Sched12_GLOBAL__N_112createStaticEP10AstNetlistRKNS7_12LogicClassesEE3$_0EvT_SF_T0_.exit.i"

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.02770.i = phi i64 [ %i.kf, %.lr.ph.i ], [ %.02770.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.02770.i
  store i64 %.02770.i, ptr %i.ke, align 8, !tbaa !177
  %i.kf = add nuw i64 %.02770.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.kf, %i.jk
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !474

"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7V3Sched12_GLOBAL__N_112createStaticEP10AstNetlistRKNS7_12LogicClassesEE3$_0EvT_SF_T0_.exit.i": ; preds = %"_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7V3Sched12_GLOBAL__N_112createStaticEP10AstNetlistRKNS9_12LogicClassesEE3$_0EEEvT_SI_SI_T0_T1_.exit.i.i.i", %._crit_edge.i
  %.pre-phi100.i = phi i64 [ %.pre99.i, %"_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN7V3Sched12_GLOBAL__N_112createStaticEP10AstNetlistRKNS9_12LogicClassesEE3$_0EEEvT_SI_SI_T0_T1_.exit.i.i.i" ], [ %i.jj, %._crit_edge.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %74, i8 0, i64 24, i1 false)
  %i.kg = icmp ugt i64 %.pre-phi100.i, 9223372036854775792
  br i1 %i.kg, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7V3Sched12_GLOBAL__N_112createStaticEP10AstNetlistRKNS7_12LogicClassesEE3$_0EvT_SF_T0_.exit.i"
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.556) #31
          to label %.noexc47.i unwind label %bb.bs

.noexc47.i:                                       ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7V3Sched12_GLOBAL__N_112createStaticEP10AstNetlistRKNS7_12LogicClassesEE3$_0EvT_SF_T0_.exit.i"
  %i.kh = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 4 uses
  %.not115.i = icmp eq i64 %.pre-phi100.i, 0
  br i1 %.not115.i, label %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE7reserveEm.exit.i, label %_ZNSt12_Vector_baseISt4pairIP8AstScopeP9AstActiveESaIS5_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseISt4pairIP8AstScopeP9AstActiveESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %bb.br
  %i.ki = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre-phi100.i) #27
          to label %_ZNSt12_Vector_baseISt4pairIP8AstScopeP9AstActiveESaIS5_EE13_M_deallocateEPS5_m.exit.i.i unwind label %bb.bs ; 4 uses

_ZNSt12_Vector_baseISt4pairIP8AstScopeP9AstActiveESaIS5_EE13_M_deallocateEPS5_m.exit.i.i: ; preds = %_ZNSt12_Vector_baseISt4pairIP8AstScopeP9AstActiveESaIS5_EE11_M_allocateEm.exit.i.i
  %i.kj = getelementptr inbounds nuw i8, ptr %74, i64 8
  store ptr %i.ki, ptr %74, align 8, !tbaa !182
  store ptr %i.ki, ptr %i.kj, align 8, !tbaa !181
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.pre-phi100.i ; 2 uses
  store ptr %i.kk, ptr %i.kh, align 8, !tbaa !185
  br label %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE7reserveEm.exit.i

_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseISt4pairIP8AstScopeP9AstActiveESaIS5_EE13_M_deallocateEPS5_m.exit.i.i, %bb.br
  %.promoted74.i = phi ptr [ %i.ki, %_ZNSt12_Vector_baseISt4pairIP8AstScopeP9AstActiveESaIS5_EE13_M_deallocateEPS5_m.exit.i.i ], [ null, %bb.br ] ; 3 uses
  %.promoted.i = phi ptr [ %i.kk, %_ZNSt12_Vector_baseISt4pairIP8AstScopeP9AstActiveESaIS5_EE13_M_deallocateEPS5_m.exit.i.i ], [ null, %bb.br ] ; 2 uses
  br i1 %i.jo, label %._crit_edge81.i, label %.lr.ph80.i

.lr.ph80.i:                                       ; preds = %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE7reserveEm.exit.i
  %i.kl = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 2 uses
  br label %bb.bt

._crit_edge81.i:                                  ; preds = %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE12emplace_backIJRKS2_RKS4_EEERS5_DpOT_.exit.i, %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE7reserveEm.exit.i
  %i.km = phi ptr [ %.promoted74.i, %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE7reserveEm.exit.i ], [ %i.lr, %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE12emplace_backIJRKS2_RKS4_EEERS5_DpOT_.exit.i ] ; 5 uses
  %i.kn = phi ptr [ %.promoted.i, %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE7reserveEm.exit.i ], [ %i.ls, %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE12emplace_backIJRKS2_RKS4_EEERS5_DpOT_.exit.i ] ; 3 uses
  store ptr %i.kn, ptr %i.kh, align 8
  store ptr %i.km, ptr %74, align 8
  invoke fastcc void @_ZN7V3Sched12_GLOBAL__N_117orderSequentiallyEP8AstCFuncRKNS_12LogicByScopeE(ptr noundef %i.ii, ptr noundef nonnull align 8 dereferenceable(24) %74)
          to label %bb.by unwind label %bb.bs

bb.bs:                                            ; preds = %._crit_edge81.i, %_ZNSt12_Vector_baseISt4pairIP8AstScopeP9AstActiveESaIS5_EE11_M_allocateEm.exit.i.i, %bb.bq
  %i.ko = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIP8AstScopeP9AstActiveESaIS5_EE11_M_allocateEm.exit.i.i ], [ null, %bb.bq ], [ %i.kn, %._crit_edge81.i ]
  %i.kp = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIP8AstScopeP9AstActiveESaIS5_EE11_M_allocateEm.exit.i.i ], [ null, %bb.bq ], [ %i.km, %._crit_edge81.i ]
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bt:                                            ; preds = %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE12emplace_backIJRKS2_RKS4_EEERS5_DpOT_.exit.i, %.lr.ph80.i
  %i.kr = phi ptr [ %.promoted74.i, %.lr.ph80.i ], [ %i.lq, %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE12emplace_backIJRKS2_RKS4_EEERS5_DpOT_.exit.i ] ; 8 uses
  %.sroa.057.079.i = phi ptr [ %i.jc, %.lr.ph80.i ], [ %i.lt, %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE12emplace_backIJRKS2_RKS4_EEERS5_DpOT_.exit.i ] ; 2 uses
  %i.ks = phi ptr [ %.promoted.i, %.lr.ph80.i ], [ %i.ls, %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE12emplace_backIJRKS2_RKS4_EEERS5_DpOT_.exit.i ] ; 4 uses
  %i.kt = phi ptr [ %.promoted74.i, %.lr.ph80.i ], [ %i.lr, %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE12emplace_backIJRKS2_RKS4_EEERS5_DpOT_.exit.i ] ; 10 uses
  %i.ku = load i64, ptr %.sroa.057.079.i, align 8, !tbaa !177
  %i.kv = load ptr, ptr %79, align 8, !tbaa !182
  %i.kw = getelementptr inbounds nuw [16 x i8], ptr %i.kv, i64 %i.ku ; 2 uses
  %.not.i.i = icmp eq ptr %i.kr, %i.ks
  br i1 %.not.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kx = load <2 x ptr>, ptr %i.kw, align 8, !tbaa !186
  store <2 x ptr> %i.kx, ptr %i.kr, align 8, !tbaa !186
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 16 ; 2 uses
  store ptr %i.ky, ptr %i.kl, align 8, !tbaa !181
  br label %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE12emplace_backIJRKS2_RKS4_EEERS5_DpOT_.exit.i

bb.bv:                                            ; preds = %bb.bt
  %i.kz = ptrtoint ptr %i.kr to i64
  %i.la = ptrtoint ptr %i.kt to i64
  %i.lb = sub i64 %i.kz, %i.la                    ; 4 uses
  %i.lc = icmp eq i64 %i.lb, 9223372036854775792
  br i1 %i.lc, label %bb.bw, label %_ZNKSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bw:                                            ; preds = %bb.bv
  store ptr %i.ks, ptr %i.kh, align 8
  store ptr %i.kt, ptr %74, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #31
          to label %.noexc49.i unwind label %.loopexit.split-lp.i

.noexc49.i:                                       ; preds = %bb.bw
  unreachable

_ZNKSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bv
  %i.ld = ashr exact i64 %i.lb, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ld, i64 1)
  %i.le = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ld ; 2 uses
  %i.lf = icmp ult i64 %i.le, %i.ld
  %i.lg = call i64 @llvm.umin.i64(i64 %i.le, i64 576460752303423487)
  %i.lh = select i1 %i.lf, i64 576460752303423487, i64 %i.lg ; 3 uses
  %.not.i.i.i.i430 = icmp ne i64 %i.lh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i430)
  %i.li = shl nuw nsw i64 %i.lh, 4
  %i.lj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.li) #27
          to label %.noexc50.i unwind label %.loopexit.i ; 5 uses

.noexc50.i:                                       ; preds = %_ZNKSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.lb
  %i.ll = load <2 x ptr>, ptr %i.kw, align 8, !tbaa !186
  store <2 x ptr> %i.ll, ptr %i.lk, align 8, !tbaa !186
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.kt, %i.kr
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc50.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ln, %.lr.ph.i.i.i.i.i.i ], [ %i.lj, %.noexc50.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.lm, %.lr.ph.i.i.i.i.i.i ], [ %i.kt, %.noexc50.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !514
  %i.lm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.lm, %i.kr
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc50.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.lj, %.noexc50.i ], [ %i.ln, %.lr.ph.i.i.i.i.i.i ]
  %i.lo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i.i = icmp eq ptr %i.kt, null
  br i1 %.not.i34.i.i.i, label %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE17_M_realloc_insertIJRKS2_RKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.lb) #29
  br label %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE17_M_realloc_insertIJRKS2_RKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE17_M_realloc_insertIJRKS2_RKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.bx, %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i.i
  store ptr %i.lo, ptr %i.kl, align 8, !tbaa !181
  %i.lp = getelementptr inbounds nuw [16 x i8], ptr %i.lj, i64 %i.lh
  br label %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE12emplace_backIJRKS2_RKS4_EEERS5_DpOT_.exit.i

_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE12emplace_backIJRKS2_RKS4_EEERS5_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE17_M_realloc_insertIJRKS2_RKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.bu
  %i.lq = phi ptr [ %i.lo, %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE17_M_realloc_insertIJRKS2_RKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.ky, %bb.bu ]
  %i.lr = phi ptr [ %i.lj, %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE17_M_realloc_insertIJRKS2_RKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.kt, %bb.bu ] ; 2 uses
  %i.ls = phi ptr [ %i.lp, %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE17_M_realloc_insertIJRKS2_RKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.ks, %bb.bu ] ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.057.079.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.lt, %i.je
  br i1 %.not.i, label %._crit_edge81.i, label %bb.bt

.loopexit.i:                                      ; preds = %_ZNKSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ks, ptr %i.kh, align 8
  store ptr %i.kt, ptr %74, align 8
  br label %bb.ca

.loopexit.split-lp.i:                             ; preds = %bb.bw
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.by:                                            ; preds = %._crit_edge81.i
  %.not.i.i.i51.i = icmp eq ptr %i.km, null
  br i1 %.not.i.i.i51.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lu = ptrtoint ptr %i.kn to i64
  %i.lv = ptrtoint ptr %i.km to i64
  %i.lw = sub i64 %i.lu, %i.lv
  call void @_ZdlPvm(ptr noundef nonnull %i.km, i64 noundef %i.lw) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.jb) #29
  br label %_ZN7V3Sched12_GLOBAL__N_112createStaticEP10AstNetlistRKNS_12LogicClassesE.exit

bb.ca:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.bs
  %i.lx = phi ptr [ %i.ko, %bb.bs ], [ %i.kr, %.loopexit.i ], [ %i.kr, %.loopexit.split-lp.i ]
  %i.ly = phi ptr [ %i.kp, %bb.bs ], [ %i.kt, %.loopexit.i ], [ %i.kt, %.loopexit.split-lp.i ] ; 3 uses
  %.pn34.i = phi { ptr, i32 } [ %i.kq, %bb.bs ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %.not.i.i.i53.i = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i53.i, label %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EED2Ev.exit54.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = ptrtoint ptr %i.ly to i64
  %i.mb = sub i64 %i.lz, %i.ma
  call void @_ZdlPvm(ptr noundef nonnull %i.ly, i64 noundef %i.mb) #29
  br label %_ZNSt6vectorISt4pairIP8AstScopeP9AstActiveESaIS5_EED2Ev.exit54.i

end_hunk_0
