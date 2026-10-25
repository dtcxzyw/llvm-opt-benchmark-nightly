Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/read_graphviz_new?download=true
inline.NumInlined: 6920
inline.NumDeleted: 2274
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5boost20read_graphviz_detail9tokenizer13get_token_rawEv:bb.a
  %i.ml = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc218 unwind label %bb.cp ; 2 uses

.noexc218:                                        ; preds = %.noexc.i217
  store ptr %i.ml, ptr %20, align 8, !tbaa !57
  %i.mm = load i64, ptr %i.b, align 8, !tbaa !63  ; 3 uses
  store i64 %i.mm, ptr %i.mk, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ml, ptr noundef nonnull align 1 dereferenceable(20) @.str.290, i64 20, i1 false)
  %i.mn = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.mm, ptr %i.mn, align 8, !tbaa !58
  %i.mo = load ptr, ptr %20, align 8, !tbaa !57
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mm
  store i8 0, ptr %i.mp, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.mq = load ptr, ptr %1, align 8, !tbaa !204   ; 2 uses
  %i.mr = load ptr, ptr %i.ai, align 8, !tbaa !204
  %i.ms = icmp eq ptr %i.mq, %i.mr
  br i1 %i.ms, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.noexc218
  %i.mt = load i8, ptr %i.mq, align 1, !tbaa !60
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.noexc218
  %i.mu = phi i8 [ %i.mt, %bb.cl ], [ 0, %.noexc218 ]
  invoke void @_ZN5boost20read_graphviz_detail9lex_errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"struct.boost::bad_graphviz_syntax") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %20, i8 noundef signext %i.mu)
          to label %.noexc220 unwind label %bb.cq

.noexc220:                                        ; preds = %bb.cm
  invoke void @_ZN5boost15throw_exceptionINS_19bad_graphviz_syntaxEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(40) %6) #28
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %.noexc220
  unreachable

bb.co:                                            ; preds = %.noexc220
  %i.mv = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost19bad_graphviz_syntaxE, i64 16), ptr %6, align 8, !tbaa !62
  %i.mw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !57 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.mz = icmp eq ptr %i.mx, %i.my
  br i1 %i.mz, label %_ZN5boost19bad_graphviz_syntaxD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.co
  %i.na = load i64, ptr %i.my, align 8, !tbaa !60
  %i.nb = add i64 %i.na, 1
  call void @_ZdlPvm(ptr noundef %i.mx, i64 noundef %i.nb) #29, !inline_history !137
  br label %_ZN5boost19bad_graphviz_syntaxD2Ev.exit.i

_ZN5boost19bad_graphviz_syntaxD2Ev.exit.i:        ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %6) #27, !inline_history !137
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.body221

bb.cp:                                            ; preds = %.noexc.i217
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

bb.cq:                                            ; preds = %bb.cm
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %.body221

.body221:                                         ; preds = %_ZN5boost19bad_graphviz_syntaxD2Ev.exit.i, %bb.cq
  %eh.lpad-body222 = phi { ptr, i32 } [ %i.nd, %bb.cq ], [ %i.mv, %_ZN5boost19bad_graphviz_syntaxD2Ev.exit.i ] ; 2 uses
  %i.ne = load ptr, ptr %20, align 8, !tbaa !57   ; 2 uses
  %i.nf = icmp eq ptr %i.ne, %i.mk
  br i1 %i.nf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %.body221
  %i.ng = load i64, ptr %i.mk, align 8, !tbaa !60
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef %i.nh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %.body221, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226, %bb.cp
  %.pn68 = phi { ptr, i32 } [ %i.nc, %bb.cp ], [ %eh.lpad-body222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ %eh.lpad-body222, %.body221 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %.body233

bb.cr:                                            ; preds = %bb.ck
  %i.ni = load i8, ptr %i.mh, align 1, !tbaa !60
  %.not = icmp eq i8 %i.ni, 60
  br i1 %.not, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mh, i64 1
  store ptr %i.nj, ptr %1, align 8, !tbaa !422
  br label %bb.du

bb.ct:                                            ; preds = %bb.cr
  %i.nk = invoke noundef zeroext i1 @_ZN5boost12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEbT_SJ_RNS_13match_resultsISJ_T0_EERKNS_11basic_regexIT1_T2_EENS_15regex_constants12_match_flagsESJ_(ptr nonnull %i.mh, ptr %i.mi, ptr noundef nonnull align 8 dereferenceable(77) %13, ptr noundef nonnull align 8 dereferenceable(16) %i.lz, i32 noundef 0, ptr nonnull %i.mh)
          to label %_ZN5boost12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEbT_SJ_RNS_13match_resultsISJ_T0_EERKNS_11basic_regexIT1_T2_EENS_15regex_constants12_match_flagsE.exit230 unwind label %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5boost12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEbT_SJ_RNS_13match_resultsISJ_T0_EERKNS_11basic_regexIT1_T2_EENS_15regex_constants12_match_flagsE.exit230: ; preds = %bb.ct
  br i1 %i.nk, label %bb.cu, label %bb.dk

bb.cu:                                            ; preds = %_ZN5boost12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEbT_SJ_RNS_13match_resultsISJ_T0_EERKNS_11basic_regexIT1_T2_EENS_15regex_constants12_match_flagsE.exit230
  %i.nl = load i8, ptr %i.aq, align 4, !tbaa !417, !range !283, !noundef !108
  %i.nm = trunc nuw i8 %i.nl to i1
  br i1 %i.nm, label %bb.cv, label %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit240

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.297)
          to label %.noexc232 unwind label %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc232:                                        ; preds = %bb.cv
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
          to label %bb.cw unwind label %bb.cx

bb.cw:                                            ; preds = %.noexc232
  unreachable

bb.cx:                                            ; preds = %.noexc232
  %i.nn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.body233

_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit240: ; preds = %bb.cu
  %i.no = load ptr, ptr %i.mb, align 8, !tbaa !418
  %i.np = load ptr, ptr %13, align 8, !tbaa !419  ; 5 uses
  %i.nq = ptrtoint ptr %i.no to i64
  %i.nr = ptrtoint ptr %i.np to i64
  %i.ns = sub i64 %i.nq, %i.nr
  %i.nt = sdiv exact i64 %i.ns, 24
  %i.nu = trunc i64 %i.nt to i32                  ; 2 uses
  %i.nv = icmp sgt i32 %i.nu, 0
  %spec.select.i231 = select i1 %i.nv, ptr %i.np, ptr %i.mc
  %i.nw = load i64, ptr %spec.select.i231, align 8, !tbaa !204
  store i64 %i.nw, ptr %1, align 8, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  %i.nx = icmp sgt i32 %i.nu, 3                   ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.np, i64 72
  %spec.select351 = select i1 %i.nx, ptr %i.ny, ptr %i.mc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  store ptr %i.md, ptr %21, align 8, !tbaa !59, !alias.scope !1126
  store i64 0, ptr %i.me, align 8, !tbaa !58, !alias.scope !1126
  store i8 0, ptr %i.md, align 8, !tbaa !60, !alias.scope !1126
  %.sroa.gep419 = getelementptr inbounds nuw i8, ptr %i.np, i64 88
  %spec.select351.sroa.sel421 = select i1 %i.nx, ptr %.sroa.gep419, ptr %.sroa.gep420
  %i.nz = load i8, ptr %spec.select351.sroa.sel421, align 8, !tbaa !421, !range !283, !noalias !1126, !noundef !108
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %bb.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i259.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i259.thread: ; preds = %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit240
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.dc

bb.cy:                                            ; preds = %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit240
  %.sroa.01.0.copyload.i241 = load ptr, ptr %spec.select351, align 8, !tbaa !204, !noalias !1126
  %.sroa.gep417 = getelementptr inbounds nuw i8, ptr %i.np, i64 80
  %spec.select351.sroa.sel = select i1 %i.nx, ptr %.sroa.gep417, ptr %.sroa.gep418 ; 3 uses
  %.sroa.0.0.copyload.i242 = load ptr, ptr %spec.select351.sroa.sel, align 8, !tbaa !204, !noalias !1126
  %i.ob = ptrtoint ptr %.sroa.0.0.copyload.i242 to i64
  %i.oc = ptrtoint ptr %.sroa.01.0.copyload.i241 to i64
  %i.od = sub i64 %i.ob, %i.oc
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %i.od)
          to label %bb.cz unwind label %.loopexit.split-lp.loopexit.split-lp.i243.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cz:                                            ; preds = %bb.cy
  %i.oe = load i64, ptr %spec.select351, align 8, !tbaa !204, !noalias !1126
  %i.of = inttoptr i64 %i.oe to ptr               ; 2 uses
  %i.og = load ptr, ptr %spec.select351.sroa.sel, align 8, !tbaa !204, !noalias !1126
  %.not13.i248 = icmp eq ptr %i.og, %i.of
  br i1 %.not13.i248, label %_ZNK5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv.exit255, label %.lr.ph.i249

.lr.ph.i249:                                      ; preds = %bb.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i251
  %.sroa.0.014.i250 = phi ptr [ %i.ok, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i251 ], [ %i.of, %bb.cz ] ; 2 uses
  %i.oh = load i8, ptr %.sroa.0.014.i250, align 1, !tbaa !60
  %i.oi = load i64, ptr %i.me, align 8, !tbaa !58, !alias.scope !1126
  %i.oj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %i.oi, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.oh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i251 unwind label %.loopexit.split-lp.loopexit.split-lp.i243.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i251: ; preds = %.lr.ph.i249
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i250, i64 1 ; 2 uses
  %i.ol = load ptr, ptr %spec.select351.sroa.sel, align 8, !tbaa !204, !noalias !1126
  %.not.i252 = icmp eq ptr %i.ok, %i.ol
  br i1 %.not.i252, label %_ZNK5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv.exit255, label %.lr.ph.i249, !llvm.loop !26

.loopexit.split-lp.loopexit.split-lp.i243.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i249, %bb.cy
  %lpad.loopexit.split-lp552 = landingpad { ptr, i32 }
          cleanup
  %i.om = load ptr, ptr %21, align 8, !tbaa !57, !alias.scope !1126 ; 2 uses
  %i.on = icmp eq ptr %i.om, %i.md
  br i1 %i.on, label %.body238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i245: ; preds = %.loopexit.split-lp.loopexit.split-lp.i243.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.oo = load i64, ptr %i.md, align 8, !tbaa !60, !alias.scope !1126
  %i.op = add i64 %i.oo, 1
  call void @_ZdlPvm(ptr noundef %i.om, i64 noundef %i.op) #29
  br label %.body238

_ZNK5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv.exit255: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i251, %bb.cz
  %.pr = load i64, ptr %i.me, align 8, !tbaa !58  ; 2 uses
  %i.oq = icmp eq i64 %.pr, 1
  %.pre428 = load ptr, ptr %21, align 8, !tbaa !57 ; 3 uses
  br i1 %i.oq, label %bb.da, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257

bb.da:                                            ; preds = %_ZNK5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv.exit255
  %lhsc = load i8, ptr %.pre428, align 1
  %i.or = icmp eq i8 %lhsc, 47
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257: ; preds = %_ZNK5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv.exit255, %bb.da
  %i.os = phi i1 [ false, %_ZNK5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv.exit255 ], [ %i.or, %bb.da ] ; 2 uses
  %i.ot = icmp eq ptr %.pre428, %i.md
  br i1 %i.ot, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i259, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i259: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257
  %28 = icmp ult i64 %.pr, 16
  call void @llvm.assume(i1 %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br i1 %i.os, label %bb.db, label %bb.dc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit257
  %i.ou = load i64, ptr %i.md, align 8, !tbaa !60
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %.pre428, i64 noundef %i.ov) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br i1 %i.os, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  %i.ow = add nsw i32 %.062, -1
  br label %bb.du

.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dk, %bb.ct, %bb.dm, %bb.cv, %bb.bv, %bb.be, %bb.ac, %bb.g
  %lpad.loopexit.split-lp555 = landingpad { ptr, i32 }
          cleanup
  br label %.body233

.body238:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i243.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i245
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %.body233

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i259.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  %i.ox = load i8, ptr %i.aq, align 4, !tbaa !417, !range !283, !noundef !108
  %i.oy = trunc nuw i8 %i.ox to i1
  %.pre429 = load ptr, ptr %i.mb, align 8, !tbaa !420 ; 2 uses
  %.pre430 = load ptr, ptr %13, align 8, !tbaa !420 ; 5 uses
  %i.oz = icmp eq ptr %.pre430, %.pre429
  %or.cond = select i1 %i.oy, i1 %i.oz, i1 false
  br i1 %or.cond, label %bb.dd, label %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit265

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.297)
          to label %.noexc262 unwind label %bb.dj

.noexc262:                                        ; preds = %bb.dd
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
          to label %bb.de unwind label %bb.df

bb.de:                                            ; preds = %.noexc262
  unreachable

bb.df:                                            ; preds = %.noexc262
  %i.pa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.body263

_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit265: ; preds = %bb.dc
  %i.pb = ptrtoint ptr %.pre429 to i64
  %i.pc = ptrtoint ptr %.pre430 to i64
  %i.pd = sub i64 %i.pb, %i.pc
  %i.pe = sdiv exact i64 %i.pd, 24
  %i.pf = trunc i64 %i.pe to i32
  %i.pg = icmp sgt i32 %i.pf, 4                   ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.pre430, i64 96
  %spec.select354 = select i1 %i.pg, ptr %i.ph, ptr %i.mc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  store ptr %i.mf, ptr %22, align 8, !tbaa !59, !alias.scope !1127
  store i64 0, ptr %i.mg, align 8, !tbaa !58, !alias.scope !1127
  store i8 0, ptr %i.mf, align 8, !tbaa !60, !alias.scope !1127
  %.sroa.gep424 = getelementptr inbounds nuw i8, ptr %.pre430, i64 112
  %spec.select354.sroa.sel426 = select i1 %i.pg, ptr %.sroa.gep424, ptr %.sroa.gep420
  %i.pi = load i8, ptr %spec.select354.sroa.sel426, align 8, !tbaa !421, !range !283, !noalias !1127, !noundef !108
  %i.pj = trunc nuw i8 %i.pi to i1
  br i1 %i.pj, label %bb.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

bb.dg:                                            ; preds = %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit265
  %.sroa.01.0.copyload.i266 = load ptr, ptr %spec.select354, align 8, !tbaa !204, !noalias !1127
  %.sroa.gep422 = getelementptr inbounds nuw i8, ptr %.pre430, i64 104
  %spec.select354.sroa.sel = select i1 %i.pg, ptr %.sroa.gep422, ptr %.sroa.gep423 ; 3 uses
  %.sroa.0.0.copyload.i267 = load ptr, ptr %spec.select354.sroa.sel, align 8, !tbaa !204, !noalias !1127
  %i.pk = ptrtoint ptr %.sroa.0.0.copyload.i267 to i64
  %i.pl = ptrtoint ptr %.sroa.01.0.copyload.i266 to i64
  %i.pm = sub i64 %i.pk, %i.pl
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef %i.pm)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.i268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dh:                                            ; preds = %bb.dg
  %i.pn = load i64, ptr %spec.select354, align 8, !tbaa !204, !noalias !1127
  %i.po = inttoptr i64 %i.pn to ptr               ; 2 uses
  %i.pp = load ptr, ptr %spec.select354.sroa.sel, align 8, !tbaa !204, !noalias !1127
  %.not13.i273 = icmp eq ptr %i.pp, %i.po
  br i1 %.not13.i273, label %_ZNK5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv.exit280, label %.lr.ph.i274

.lr.ph.i274:                                      ; preds = %bb.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i276
  %.sroa.0.014.i275 = phi ptr [ %i.pt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i276 ], [ %i.po, %bb.dh ] ; 2 uses
  %i.pq = load i8, ptr %.sroa.0.014.i275, align 1, !tbaa !60
  %i.pr = load i64, ptr %i.mg, align 8, !tbaa !58, !alias.scope !1127
  %i.ps = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef %i.pr, i64 noundef 0, i64 noundef 1, i8 noundef signext %i.pq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i276 unwind label %.loopexit.split-lp.loopexit.split-lp.i268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i276: ; preds = %.lr.ph.i274
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i275, i64 1 ; 2 uses
  %i.pu = load ptr, ptr %spec.select354.sroa.sel, align 8, !tbaa !204, !noalias !1127
  %.not.i277 = icmp eq ptr %i.pt, %i.pu
  br i1 %.not.i277, label %_ZNK5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv.exit280, label %.lr.ph.i274, !llvm.loop !26

.loopexit.split-lp.loopexit.split-lp.i268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i274, %bb.dg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pv = load ptr, ptr %22, align 8, !tbaa !57, !alias.scope !1127 ; 2 uses
  %i.pw = icmp eq ptr %i.pv, %i.mf
  br i1 %i.pw, label %.body263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270: ; preds = %.loopexit.split-lp.loopexit.split-lp.i268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.px = load i64, ptr %i.mf, align 8, !tbaa !60, !alias.scope !1127
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.py) #29
  br label %.body263

_ZNK5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv.exit280: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit.i276, %bb.dh
  %.pr349 = load i64, ptr %i.mg, align 8, !tbaa !58
  %i.pz = icmp eq i64 %.pr349, 1
  %.pre431 = load ptr, ptr %22, align 8, !tbaa !57 ; 3 uses
  br i1 %i.pz, label %bb.di, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit282

bb.di:                                            ; preds = %_ZNK5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv.exit280
  %lhsc519 = load i8, ptr %.pre431, align 1
  %i.qa = icmp ne i8 %lhsc519, 47
  %i.qb = zext i1 %i.qa to i32
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit282

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit282: ; preds = %_ZNK5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv.exit280, %bb.di
  %not. = phi i32 [ 1, %_ZNK5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv.exit280 ], [ %i.qb, %bb.di ] ; 2 uses
  %i.qc = icmp eq ptr %.pre431, %i.mf
  br i1 %i.qc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit282
  %i.qd = load i64, ptr %i.mf, align 8, !tbaa !60
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %.pre431, i64 noundef %i.qe) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit282, %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit265, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283
  %not.521 = phi i32 [ %not., %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283 ], [ %not., %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit282 ], [ 1, %_ZNK5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEixIiEENSt9enable_ifIXsr3std11is_integralIT_EE5valueERKSD_E4typeESI_.exit265 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  %spec.select = add nuw nsw i32 %not.521, %.062
  br label %bb.du

bb.dj:                                            ; preds = %bb.dd
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %.body263

.body263:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270, %bb.df
  %eh.lpad-body264 = phi { ptr, i32 } [ %i.pa, %bb.df ], [ %i.qf, %bb.dj ], [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i268.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %.body233

bb.dk:                                            ; preds = %_ZN5boost12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEbT_SJ_RNS_13match_resultsISJ_T0_EERKNS_11basic_regexIT1_T2_EENS_15regex_constants12_match_flagsE.exit230
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !tbaa !204 ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %i.ai, align 8, !tbaa !204
  %i.qg = invoke noundef zeroext i1 @_ZN5boost12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEbT_SJ_RNS_13match_resultsISJ_T0_EERKNS_11basic_regexIT1_T2_EENS_15regex_constants12_match_flagsESJ_(ptr %.sroa.03.0.copyload, ptr %.sroa.02.0.copyload, ptr noundef nonnull align 8 dereferenceable(77) %13, ptr noundef nonnull align 8 dereferenceable(16) %i.ma, i32 noundef 0, ptr %.sroa.03.0.copyload)
          to label %_ZN5boost12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEbT_SJ_RNS_13match_resultsISJ_T0_EERKNS_11basic_regexIT1_T2_EENS_15regex_constants12_match_flagsE.exit287 unwind label %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5boost12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEbT_SJ_RNS_13match_resultsISJ_T0_EERKNS_11basic_regexIT1_T2_EENS_15regex_constants12_match_flagsE.exit287: ; preds = %bb.dk
  br i1 %i.qg, label %bb.dl, label %.noexc.i294

bb.dl:                                            ; preds = %_ZN5boost12regex_searchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEbT_SJ_RNS_13match_resultsISJ_T0_EERKNS_11basic_regexIT1_T2_EENS_15regex_constants12_match_flagsE.exit287
  %i.qh = load i8, ptr %i.aq, align 4, !tbaa !417, !range !283, !noundef !108
  %i.qi = trunc nuw i8 %i.qh to i1
  br i1 %i.qi, label %bb.dm, label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.297)
          to label %.noexc289 unwind label %.loopexit.split-lp370.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc289:                                        ; preds = %bb.dm
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %3) #28
          to label %bb.dn unwind label %bb.do

bb.dn:                                            ; preds = %.noexc289
  unreachable

bb.do:                                            ; preds = %.noexc289
  %i.qj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.body233

bb.dp:                                            ; preds = %bb.dl
  %i.qk = load ptr, ptr %i.mb, align 8, !tbaa !418
  %i.ql = load ptr, ptr %13, align 8, !tbaa !419  ; 2 uses
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = sub i64 %i.qm, %i.qn
  %i.qp = sdiv exact i64 %i.qo, 24
  %i.qq = trunc i64 %i.qp to i32
  %i.qr = icmp sgt i32 %i.qq, 0
  %spec.select.i288 = select i1 %i.qr, ptr %i.ql, ptr %i.mc
  %i.qs = load i64, ptr %spec.select.i288, align 8, !tbaa !204
  store i64 %i.qs, ptr %1, align 8, !tbaa !204
  br label %bb.du
end_hunk_0
