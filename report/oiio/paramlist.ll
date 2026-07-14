inline.NumInlined: 3958
inline.NumDeleted: 927
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZNK11OpenImageIO4v3_110ParamValue18get_string_indexedB5cxx11Ei:bb.a
  %i.abf = load ptr, ptr %12, align 8, !tbaa !45, !alias.scope !205
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.abe
  store i8 0, ptr %i.abg, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29, !noalias !205
  %i.abh = load ptr, ptr %11, align 8, !tbaa !95, !noalias !199 ; 2 uses
  %.not.i.i.i.us.i474 = icmp eq ptr %i.abh, %i.yp
  br i1 %.not.i.i.i.us.i474, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.us.i475, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @free(ptr noundef %i.abh) #29
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.us.i475

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.us.i475: ; preds = %bb.dr, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29, !noalias !199
  %i.abi = load i64, ptr %i.yr, align 8, !tbaa !47 ; 2 uses
  %i.abj = load i64, ptr %i.m, align 8, !tbaa !47
  %i.abk = sub i64 4611686018427387903, %i.abj
  %i.abl = icmp ult i64 %i.abk, %i.abi
  br i1 %i.abl, label %.split38.us.i492, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.i476

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.i476: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.us.i475
  %i.abm = load ptr, ptr %12, align 8, !tbaa !45
  %i.abn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef %i.abm, i64 noundef %i.abi)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.i485 unwind label %.loopexit2.split.us.i477 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.i485: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.i476
  %i.abo = load ptr, ptr %12, align 8, !tbaa !45  ; 2 uses
  %i.abp = icmp eq ptr %i.abo, %i.yq
  br i1 %i.abp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i487, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.i486

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.i486: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.i485
  %i.abq = load i64, ptr %i.yq, align 8, !tbaa !25
  %i.abr = add i64 %i.abq, 1
  call void @_ZdlPvm(ptr noundef %i.abo, i64 noundef %i.abr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i487

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i487: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.i485, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.i486
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.abs = add nuw nsw i32 %.02026.us.i461, 1     ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %.127.us.i460, i64 8
  %exitcond.not.i488 = icmp eq i32 %i.abs, %i.yl
  br i1 %exitcond.not.i488, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110formatTypeIfEEvRKNS0_10ParamValueEiiPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.dg, !llvm.loop !206

.loopexit.split.us.i497.loopexit:                 ; preds = %.noexc.i.i.i.us.i496
  %lpad.loopexit875 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split.us.i497

.loopexit.split.us.i497.loopexit.split-lp:        ; preds = %bb.di
  %lpad.loopexit.split-lp876 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split.us.i497

.loopexit2.split.us.i477:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.i476
  %lpad.loopexit4.us.i478 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

.noexc.i.i.i503:                                  ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us.i471
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.57) #34
          to label %.noexc.i.i506 unwind label %.loopexit.split-lp.i504

.noexc.i.i506:                                    ; preds = %.noexc.i.i.i503
  unreachable

.loopexit.split-lp.i504:                          ; preds = %.noexc.i.i.i503
  %lpad.loopexit.split-lp.i505 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split.us.i497

.loopexit.split.us.i497:                          ; preds = %.loopexit.split.us.i497.loopexit, %.loopexit.split.us.i497.loopexit.split-lp, %.loopexit.split-lp.i504
  %lpad.phi.i499 = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i505, %.loopexit.split-lp.i504 ], [ %lpad.loopexit875, %.loopexit.split.us.i497.loopexit ], [ %lpad.loopexit.split-lp876, %.loopexit.split.us.i497.loopexit.split-lp ]
  %i.abu = load ptr, ptr %11, align 8, !tbaa !95, !noalias !199 ; 2 uses
  %.not.i.i8.i.i500 = icmp eq ptr %i.abu, %i.yp
  br i1 %.not.i.i8.i.i500, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i.i501, label %bb.ds

bb.ds:                                            ; preds = %.loopexit.split.us.i497
  call void @free(ptr noundef %i.abu) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i.i501

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i.i501: ; preds = %bb.ds, %.loopexit.split.us.i497
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29, !noalias !199
  br label %.body

.split38.us.i492:                                 ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.us.i475
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #34
          to label %.noexc.i495 unwind label %.loopexit.split-lp3.i493

.noexc.i495:                                      ; preds = %.split38.us.i492
  unreachable

.loopexit.split-lp3.i493:                         ; preds = %.split38.us.i492
  %lpad.loopexit.split-lp5.i494 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dt:                                            ; preds = %.loopexit.split-lp3.i493, %.loopexit2.split.us.i477
  %lpad.phi6.i479 = phi { ptr, i32 } [ %lpad.loopexit4.us.i478, %.loopexit2.split.us.i477 ], [ %lpad.loopexit.split-lp5.i494, %.loopexit.split-lp3.i493 ]
  %i.abv = load ptr, ptr %12, align 8, !tbaa !45  ; 2 uses
  %i.abw = icmp eq ptr %i.abv, %i.yq
  br i1 %i.abw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i481, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i480

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i480: ; preds = %bb.dt
  %i.abx = load i64, ptr %i.yq, align 8, !tbaa !25
  %i.aby = add i64 %i.abx, 1
  call void @_ZdlPvm(ptr noundef %i.abv, i64 noundef %i.aby) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i481

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i481: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i480
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %.body

bb.du:                                            ; preds = %bb.b
  %.sroa.0.0.extract.trunc.i561 = trunc i64 %.sroa.0.0.copyload.i.fr.i642 to i32
  %i.abz = lshr i32 %.sroa.0.0.extract.trunc.i561, 8
  %i.aca = and i32 %i.abz, 255                    ; 4 uses
  %.not.i562 = icmp eq i32 %i.aca, 0
  %i.acb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 7 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 12 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  br i1 %.not.i562, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110formatTypeIfEEvRKNS0_10ParamValueEiiPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.us.i567

.lr.ph.us.i567:                                   ; preds = %bb.du
  %i.ach = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.aci = load i8, ptr %i.ach, align 2, !tbaa !27, !range !35, !noundef !36
  %i.acj = trunc nuw i8 %i.aci to i1
  %i.ack = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.acl = load ptr, ptr %i.ack, align 8
  %i.acm = select i1 %i.acj, ptr %i.acl, ptr %i.ack
  %i.acn = mul nuw nsw i32 %i.aca, %2
  %i.aco = zext nneg i32 %i.acn to i64
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acm, i64 %i.aco ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.acq = load i8, ptr %i.acp, align 1, !tbaa !25, !noalias !207 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29, !noalias !210
  store i64 0, ptr %i.acd, align 8, !noalias !210
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.acc, align 8, !tbaa !93, !noalias !210
  store ptr %i.ace, ptr %9, align 8, !tbaa !95, !noalias !210
  store i64 500, ptr %i.acb, align 8, !tbaa !96, !noalias !210
  %i.acr = zext i8 %i.acq to i32                  ; 2 uses
  %i.acs = or i32 %i.acr, 1
  %i.act = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.acs, i1 true)
  %i.acu = xor i32 %i.act, 31
  %i.acv = zext nneg i32 %i.acu to i64
  %i.acw = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.acv
  %i.acx = load i64, ptr %i.acw, align 8, !tbaa !9
  %i.acy = zext i8 %i.acq to i64
  %i.acz = add i64 %i.acx, %i.acy                 ; 2 uses
  %i.ada = lshr i64 %i.acz, 32                    ; 2 uses
  %i.adb = trunc nuw i64 %i.ada to i32            ; 2 uses
  %i.adc = ashr i64 %i.acz, 32                    ; 3 uses
  %i.add = icmp ugt i64 %i.adc, 500
  br i1 %i.add, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i.us.i609.peel, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.thread.i572.peel

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i.us.i609.peel: ; preds = %.lr.ph.us.i567
  %spec.select.i792.peel = call i64 @llvm.umax.i64(i64 %i.adc, i64 750) ; 2 uses
  %i.ade = call noalias ptr @malloc(i64 noundef %spec.select.i792.peel) #31 ; 3 uses
  %.not.i.i793.peel = icmp eq ptr %i.ade, null
  br i1 %.not.i.i793.peel, label %.loopexit1216, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.i614.peel

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.i614.peel: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i.us.i609.peel
  store ptr %i.ade, ptr %9, align 8, !tbaa !95
  store i64 %spec.select.i792.peel, ptr %i.acb, align 8, !tbaa !96
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.thread.i572.peel

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.thread.i572.peel: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.i614.peel, %.lr.ph.us.i567
  %i.adf = phi ptr [ %i.ade, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.i614.peel ], [ %i.ace, %.lr.ph.us.i567 ] ; 3 uses
  store i64 %i.adc, ptr %i.acd, align 8, !tbaa !100
  %i.adg = icmp ugt i8 %i.acq, 99
  br i1 %i.adg, label %._crit_edge.i.i.i.us.thread.i.peel, label %._crit_edge.i.i.i.us.i573.peel

._crit_edge.i.i.i.us.i573.peel:                   ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.thread.i572.peel
  %i.adh = icmp samesign ugt i8 %i.acq, 9
  br i1 %i.adh, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %._crit_edge.i.i.i.us.i573.peel
  %i.adi = add nuw nsw i64 %i.ada, 4294967294
  %i.adj = and i64 %i.adi, 4294967295
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.adj
  %i.adl = shl nuw nsw i32 %i.acr, 1
  %i.adm = zext nneg i32 %i.adl to i64
  %i.adn = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.adm
  %i.ado = load i16, ptr %i.adn, align 2
  store i16 %i.ado, ptr %i.adk, align 1
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us.i574.peel

._crit_edge.i.i.i.us.thread.i.peel:               ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.thread.i572.peel
  %i.adp = add i32 %i.adb, -2                     ; 2 uses
  %i.adq = zext i32 %i.adp to i64
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.adq
  %i.ads = urem i8 %i.acq, 100
  %i.adt = shl nuw i8 %i.ads, 1
  %i.adu = zext i8 %i.adt to i64
  %i.adv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.adu
  %i.adw = load i16, ptr %i.adv, align 2
  store i16 %i.adw, ptr %i.adr, align 1
  %31 = icmp ugt i8 %i.acq, -57
  %32 = select i1 %31, i8 2, i8 1
  br label %bb.dw

bb.dw:                                            ; preds = %._crit_edge.i.i.i.us.thread.i.peel, %._crit_edge.i.i.i.us.i573.peel
  %.0.lcssa.i.i.i.us65.i.peel = phi i32 [ %i.adp, %._crit_edge.i.i.i.us.thread.i.peel ], [ %i.adb, %._crit_edge.i.i.i.us.i573.peel ]
  %.018.lcssa.i.i.i.us64.i.peel = phi i8 [ %32, %._crit_edge.i.i.i.us.thread.i.peel ], [ %i.acq, %._crit_edge.i.i.i.us.i573.peel ]
  %i.adx = or disjoint i8 %.018.lcssa.i.i.i.us64.i.peel, 48
  %i.ady = add i32 %.0.lcssa.i.i.i.us65.i.peel, -1
  %i.adz = zext i32 %i.ady to i64
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.adz
  store i8 %i.adx, ptr %i.aea, align 1, !tbaa !25
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us.i574.peel

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us.i574.peel: ; preds = %bb.dw, %bb.dv
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.aeb = load i64, ptr %i.acd, align 8, !tbaa !100, !noalias !216 ; 6 uses
  %i.aec = icmp ult i64 %i.aeb, 4611686018427387903
  call void @llvm.assume(i1 %i.aec)
  %i.aed = load ptr, ptr %9, align 8, !tbaa !95, !noalias !216 ; 3 uses
  store ptr %i.acf, ptr %10, align 8, !tbaa !43, !alias.scope !216
  %i.aee = icmp eq ptr %i.aed, null
  %i.aef = icmp ne i64 %i.aeb, 0
  %or.cond.i.i.i.us.i575.peel = and i1 %i.aef, %i.aee
  br i1 %or.cond.i.i.i.us.i575.peel, label %.noexc.i.i.i605, label %bb.dx

bb.dx:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us.i574.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29, !noalias !216
  store i64 %i.aeb, ptr %i.c, align 8, !tbaa !9, !noalias !216
  %i.aeg = icmp samesign ugt i64 %i.aeb, 15
  br i1 %i.aeg, label %.noexc.i.i.i.us.i598.peel, label %._crit_edge.i.i.i.i.us.i576.peel

.noexc.i.i.i.us.i598.peel:                        ; preds = %bb.dx
  %i.aeh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc7.i.us.i604.peel unwind label %.loopexit.split.us.i599.loopexit.loopexit.split-lp ; 2 uses

.noexc7.i.us.i604.peel:                           ; preds = %.noexc.i.i.i.us.i598.peel
  store ptr %i.aeh, ptr %10, align 8, !tbaa !45, !alias.scope !216
  %i.aei = load i64, ptr %i.c, align 8, !tbaa !9, !noalias !216
  store i64 %i.aei, ptr %i.acf, align 8, !tbaa !25, !alias.scope !216
  br label %._crit_edge.i.i.i.i.us.i576.peel

._crit_edge.i.i.i.i.us.i576.peel:                 ; preds = %.noexc7.i.us.i604.peel, %bb.dx
  %i.aej = phi ptr [ %i.aeh, %.noexc7.i.us.i604.peel ], [ %i.acf, %bb.dx ] ; 2 uses
  switch i64 %i.aeb, label %bb.dz [
    i64 1, label %bb.dy
    i64 0, label %bb.ea
  ]

bb.dy:                                            ; preds = %._crit_edge.i.i.i.i.us.i576.peel
  %i.aek = load i8, ptr %i.aed, align 1, !tbaa !25
  store i8 %i.aek, ptr %i.aej, align 1, !tbaa !25
  br label %bb.ea

bb.dz:                                            ; preds = %._crit_edge.i.i.i.i.us.i576.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aej, ptr align 1 %i.aed, i64 %i.aeb, i1 false)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %._crit_edge.i.i.i.i.us.i576.peel
  %i.ael = load i64, ptr %i.c, align 8, !tbaa !9, !noalias !216 ; 2 uses
  store i64 %i.ael, ptr %i.acg, align 8, !tbaa !47, !alias.scope !216
  %i.aem = load ptr, ptr %10, align 8, !tbaa !45, !alias.scope !216
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 %i.ael
  store i8 0, ptr %i.aen, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29, !noalias !216
  %i.aeo = load ptr, ptr %9, align 8, !tbaa !95, !noalias !210 ; 2 uses
  %.not.i.i.i.us.i577.peel = icmp eq ptr %i.aeo, %i.ace
  br i1 %.not.i.i.i.us.i577.peel, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.us.i578.peel, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @free(ptr noundef %i.aeo) #29
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.us.i578.peel

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.us.i578.peel: ; preds = %bb.eb, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29, !noalias !210
  %i.aep = load i64, ptr %i.acg, align 8, !tbaa !47 ; 2 uses
  %i.aeq = load i64, ptr %i.m, align 8, !tbaa !47
  %i.aer = sub i64 4611686018427387903, %i.aeq
  %i.aes = icmp ult i64 %i.aer, %i.aep
  br i1 %i.aes, label %.split32.us.i594, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.i579.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.i579.peel: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.us.i578.peel
  %i.aet = load ptr, ptr %10, align 8, !tbaa !45
  %i.aeu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef %i.aet, i64 noundef %i.aep)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.i588.peel unwind label %.loopexit2.split.us.i580.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.i588.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.i579.peel
  %i.aev = load ptr, ptr %10, align 8, !tbaa !45  ; 2 uses
  %i.aew = icmp eq ptr %i.aev, %i.acf
  br i1 %i.aew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i590.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.i589.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.i589.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.i588.peel
  %i.aex = load i64, ptr %i.acf, align 8, !tbaa !25
  %i.aey = add i64 %i.aex, 1
  call void @_ZdlPvm(ptr noundef %i.aev, i64 noundef %i.aey) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i590.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i590.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.i589.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.i588.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %exitcond.not.i591.peel = icmp eq i32 %i.aca, 1
  br i1 %exitcond.not.i591.peel, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110formatTypeIfEEvRKNS0_10ParamValueEiiPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.us.i567.peel.newph

.lr.ph.us.i567.peel.newph:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i590.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i590
  %.pn1223 = phi ptr [ %.121.us.i568, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i590 ], [ %i.acp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i590.peel ]
  %.02020.us.i569 = phi i32 [ %i.ahm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i590 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i590.peel ]
  %.121.us.i568 = getelementptr inbounds nuw i8, ptr %.pn1223, i64 1 ; 2 uses
  %i.aez = load i64, ptr %i.m, align 8, !tbaa !47
  %i.afa = icmp eq i64 %i.aez, 4611686018427387903
  br i1 %i.afa, label %.split30.us.i.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit21.us.i571

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit21.us.i571: ; preds = %.lr.ph.us.i567.peel.newph
  %i.afb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %.noexc636 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit ; 0 uses

.noexc636:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit21.us.i571
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.afc = load i8, ptr %.121.us.i568, align 1, !tbaa !25, !noalias !207 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29, !noalias !217
  store i64 0, ptr %i.acd, align 8, !noalias !217
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.acc, align 8, !tbaa !93, !noalias !217
  store ptr %i.ace, ptr %9, align 8, !tbaa !95, !noalias !217
  store i64 500, ptr %i.acb, align 8, !tbaa !96, !noalias !217
  %i.afd = zext i8 %i.afc to i32                  ; 2 uses
  %i.afe = or i32 %i.afd, 1
  %i.aff = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.afe, i1 true)
  %i.afg = xor i32 %i.aff, 31
  %i.afh = zext nneg i32 %i.afg to i64
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.afh
  %i.afj = load i64, ptr %i.afi, align 8, !tbaa !9
  %i.afk = zext i8 %i.afc to i64
  %i.afl = add i64 %i.afj, %i.afk                 ; 2 uses
  %i.afm = lshr i64 %i.afl, 32                    ; 2 uses
  %i.afn = trunc nuw i64 %i.afm to i32            ; 2 uses
  %i.afo = ashr i64 %i.afl, 32                    ; 3 uses
  %i.afp = icmp ugt i64 %i.afo, 500
  br i1 %i.afp, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i.us.i609, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.thread.i572

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i.us.i609: ; preds = %.noexc636
  %spec.select.i792 = call i64 @llvm.umax.i64(i64 %i.afo, i64 750) ; 2 uses
  %i.afq = call noalias ptr @malloc(i64 noundef %spec.select.i792) #31 ; 3 uses
  %.not.i.i793 = icmp eq ptr %i.afq, null
  br i1 %.not.i.i793, label %.loopexit1216, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.i614

.loopexit1216:                                    ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i.us.i609, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i.us.i609.peel
  %i.afr = call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.afr, align 8, !tbaa !163
  invoke void @__cxa_throw(ptr nonnull %i.afr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc796 unwind label %.loopexit.split.us.i599.loopexit.split-lp

.noexc796:                                        ; preds = %.loopexit1216
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.i614: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i.us.i609
  store ptr %i.afq, ptr %9, align 8, !tbaa !95
  store i64 %spec.select.i792, ptr %i.acb, align 8, !tbaa !96
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.thread.i572

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.thread.i572: ; preds = %.noexc636, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.i614
  %i.afs = phi ptr [ %i.afq, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.i614 ], [ %i.ace, %.noexc636 ] ; 3 uses
  store i64 %i.afo, ptr %i.acd, align 8, !tbaa !100
  %i.aft = icmp ugt i8 %i.afc, 99
  br i1 %i.aft, label %._crit_edge.i.i.i.us.thread.i, label %._crit_edge.i.i.i.us.i573

._crit_edge.i.i.i.us.thread.i:                    ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.thread.i572
  %i.afu = add i32 %i.afn, -2                     ; 2 uses
  %i.afv = zext i32 %i.afu to i64
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afs, i64 %i.afv
  %i.afx = urem i8 %i.afc, 100
  %i.afy = shl nuw i8 %i.afx, 1
  %i.afz = zext i8 %i.afy to i64
  %i.aga = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.afz
  %i.agb = load i16, ptr %i.aga, align 2
  store i16 %i.agb, ptr %i.afw, align 1
  %33 = icmp ugt i8 %i.afc, -57
  %34 = select i1 %33, i8 2, i8 1
  br label %bb.ec

._crit_edge.i.i.i.us.i573:                        ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.us.thread.i572
  %i.agc = icmp samesign ugt i8 %i.afc, 9
  br i1 %i.agc, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %._crit_edge.i.i.i.us.i573, %._crit_edge.i.i.i.us.thread.i
  %.0.lcssa.i.i.i.us65.i = phi i32 [ %i.afu, %._crit_edge.i.i.i.us.thread.i ], [ %i.afn, %._crit_edge.i.i.i.us.i573 ]
  %.018.lcssa.i.i.i.us64.i = phi i8 [ %34, %._crit_edge.i.i.i.us.thread.i ], [ %i.afc, %._crit_edge.i.i.i.us.i573 ]
  %i.agd = or disjoint i8 %.018.lcssa.i.i.i.us64.i, 48
  %i.age = add i32 %.0.lcssa.i.i.i.us65.i, -1
  %i.agf = zext i32 %i.age to i64
  %i.agg = getelementptr inbounds nuw i8, ptr %i.afs, i64 %i.agf
  store i8 %i.agd, ptr %i.agg, align 1, !tbaa !25
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us.i574

bb.ed:                                            ; preds = %._crit_edge.i.i.i.us.i573
  %i.agh = add nuw nsw i64 %i.afm, 4294967294
  %i.agi = and i64 %i.agh, 4294967295
  %i.agj = getelementptr inbounds nuw i8, ptr %i.afs, i64 %i.agi
  %i.agk = shl nuw nsw i32 %i.afd, 1
  %i.agl = zext nneg i32 %i.agk to i64
  %i.agm = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.agl
  %i.agn = load i16, ptr %i.agm, align 2
  store i16 %i.agn, ptr %i.agj, align 1
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us.i574

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us.i574: ; preds = %bb.ed, %bb.ec
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.ago = load i64, ptr %i.acd, align 8, !tbaa !100, !noalias !221 ; 6 uses
  %i.agp = icmp ult i64 %i.ago, 4611686018427387903
  call void @llvm.assume(i1 %i.agp)
  %i.agq = load ptr, ptr %9, align 8, !tbaa !95, !noalias !221 ; 3 uses
  store ptr %i.acf, ptr %10, align 8, !tbaa !43, !alias.scope !221
  %i.agr = icmp eq ptr %i.agq, null
  %i.ags = icmp ne i64 %i.ago, 0
  %or.cond.i.i.i.us.i575 = and i1 %i.ags, %i.agr
  br i1 %or.cond.i.i.i.us.i575, label %.noexc.i.i.i605, label %bb.ee

bb.ee:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us.i574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29, !noalias !221
  store i64 %i.ago, ptr %i.c, align 8, !tbaa !9, !noalias !221
  %i.agt = icmp samesign ugt i64 %i.ago, 15
  br i1 %i.agt, label %.noexc.i.i.i.us.i598, label %._crit_edge.i.i.i.i.us.i576

.noexc.i.i.i.us.i598:                             ; preds = %bb.ee
  %i.agu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc7.i.us.i604 unwind label %.loopexit.split.us.i599.loopexit.loopexit ; 2 uses

.noexc7.i.us.i604:                                ; preds = %.noexc.i.i.i.us.i598
  store ptr %i.agu, ptr %10, align 8, !tbaa !45, !alias.scope !221
  %i.agv = load i64, ptr %i.c, align 8, !tbaa !9, !noalias !221
  store i64 %i.agv, ptr %i.acf, align 8, !tbaa !25, !alias.scope !221
  br label %._crit_edge.i.i.i.i.us.i576

._crit_edge.i.i.i.i.us.i576:                      ; preds = %.noexc7.i.us.i604, %bb.ee
  %i.agw = phi ptr [ %i.agu, %.noexc7.i.us.i604 ], [ %i.acf, %bb.ee ] ; 2 uses
  switch i64 %i.ago, label %bb.eg [
    i64 1, label %bb.ef
    i64 0, label %bb.eh
  ]

bb.ef:                                            ; preds = %._crit_edge.i.i.i.i.us.i576
  %i.agx = load i8, ptr %i.agq, align 1, !tbaa !25
  store i8 %i.agx, ptr %i.agw, align 1, !tbaa !25
  br label %bb.eh

bb.eg:                                            ; preds = %._crit_edge.i.i.i.i.us.i576
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agw, ptr align 1 %i.agq, i64 %i.ago, i1 false)
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %._crit_edge.i.i.i.i.us.i576
  %i.agy = load i64, ptr %i.c, align 8, !tbaa !9, !noalias !221 ; 2 uses
  store i64 %i.agy, ptr %i.acg, align 8, !tbaa !47, !alias.scope !221
  %i.agz = load ptr, ptr %10, align 8, !tbaa !45, !alias.scope !221
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 %i.agy
  store i8 0, ptr %i.aha, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29, !noalias !221
  %i.ahb = load ptr, ptr %9, align 8, !tbaa !95, !noalias !217 ; 2 uses
  %.not.i.i.i.us.i577 = icmp eq ptr %i.ahb, %i.ace
  br i1 %.not.i.i.i.us.i577, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.us.i578, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @free(ptr noundef %i.ahb) #29
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.us.i578

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.us.i578: ; preds = %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29, !noalias !217
  %i.ahc = load i64, ptr %i.acg, align 8, !tbaa !47 ; 2 uses
  %i.ahd = load i64, ptr %i.m, align 8, !tbaa !47
  %i.ahe = sub i64 4611686018427387903, %i.ahd
  %i.ahf = icmp ult i64 %i.ahe, %i.ahc
  br i1 %i.ahf, label %.split32.us.i594, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.i579

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.i579: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.us.i578
  %i.ahg = load ptr, ptr %10, align 8, !tbaa !45
  %i.ahh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef %i.ahg, i64 noundef %i.ahc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.i588 unwind label %.loopexit2.split.us.i580.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.i588: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.i579
  %i.ahi = load ptr, ptr %10, align 8, !tbaa !45  ; 2 uses
  %i.ahj = icmp eq ptr %i.ahi, %i.acf
  br i1 %i.ahj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i590, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.i589

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.i589: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.i588
  %i.ahk = load i64, ptr %i.acf, align 8, !tbaa !25
  %i.ahl = add i64 %i.ahk, 1
  call void @_ZdlPvm(ptr noundef %i.ahi, i64 noundef %i.ahl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i590

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.i590: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.us.i588, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.i589
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.ahm = add nuw nsw i32 %.02020.us.i569, 1     ; 2 uses
  %exitcond.not.i591 = icmp eq i32 %i.ahm, %i.aca
  br i1 %exitcond.not.i591, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110formatTypeIfEEvRKNS0_10ParamValueEiiPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.us.i567.peel.newph, !llvm.loop !222

.loopexit.split.us.i599.loopexit.loopexit:        ; preds = %.noexc.i.i.i.us.i598
  %lpad.loopexit1217 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split.us.i599

.loopexit.split.us.i599.loopexit.loopexit.split-lp: ; preds = %.noexc.i.i.i.us.i598.peel
  %lpad.loopexit.split-lp1218 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split.us.i599

.loopexit.split.us.i599.loopexit.split-lp:        ; preds = %.loopexit1216
  %lpad.loopexit.split-lp885 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split.us.i599

.loopexit2.split.us.i580.loopexit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.i579
  %lpad.loopexit1220 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit2.split.us.i580

.loopexit2.split.us.i580.loopexit.split-lp:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.i579.peel
  %lpad.loopexit.split-lp1221 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit2.split.us.i580

.noexc.i.i.i605:                                  ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us.i574, %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit.us.i574.peel
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.57) #34
          to label %.noexc.i.i608 unwind label %.loopexit.split-lp.i606

.noexc.i.i608:                                    ; preds = %.noexc.i.i.i605
  unreachable

.loopexit.split-lp.i606:                          ; preds = %.noexc.i.i.i605
  %lpad.loopexit.split-lp.i607 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split.us.i599

.loopexit.split.us.i599:                          ; preds = %.loopexit.split.us.i599.loopexit.loopexit, %.loopexit.split.us.i599.loopexit.loopexit.split-lp, %.loopexit.split.us.i599.loopexit.split-lp, %.loopexit.split-lp.i606
  %lpad.phi.i601 = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i607, %.loopexit.split-lp.i606 ], [ %lpad.loopexit.split-lp885, %.loopexit.split.us.i599.loopexit.split-lp ], [ %lpad.loopexit1217, %.loopexit.split.us.i599.loopexit.loopexit ], [ %lpad.loopexit.split-lp1218, %.loopexit.split.us.i599.loopexit.loopexit.split-lp ]
  %i.ahn = load ptr, ptr %9, align 8, !tbaa !95, !noalias !217 ; 2 uses
  %.not.i.i8.i.i602 = icmp eq ptr %i.ahn, %i.ace
  br i1 %.not.i.i8.i.i602, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i.i603, label %bb.ej

bb.ej:                                            ; preds = %.loopexit.split.us.i599
  call void @free(ptr noundef %i.ahn) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i.i603

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i.i603: ; preds = %bb.ej, %.loopexit.split.us.i599
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29, !noalias !217
  br label %.body

.split32.us.i594:                                 ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.us.i578, %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit.us.i578.peel
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #34
          to label %.noexc.i597 unwind label %.loopexit.split-lp3.i595

.noexc.i597:                                      ; preds = %.split32.us.i594
  unreachable

.loopexit.split-lp3.i595:                         ; preds = %.split32.us.i594
  %lpad.loopexit.split-lp5.i596 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit2.split.us.i580

.loopexit2.split.us.i580:                         ; preds = %.loopexit2.split.us.i580.loopexit, %.loopexit2.split.us.i580.loopexit.split-lp, %.loopexit.split-lp3.i595
  %lpad.phi6.i582 = phi { ptr, i32 } [ %lpad.loopexit.split-lp5.i596, %.loopexit.split-lp3.i595 ], [ %lpad.loopexit1220, %.loopexit2.split.us.i580.loopexit ], [ %lpad.loopexit.split-lp1221, %.loopexit2.split.us.i580.loopexit.split-lp ]
  %i.aho = load ptr, ptr %10, align 8, !tbaa !45  ; 2 uses
  %i.ahp = icmp eq ptr %i.aho, %i.acf
  br i1 %i.ahp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i584, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i583

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i583: ; preds = %.loopexit2.split.us.i580
  %i.ahq = load i64, ptr %i.acf, align 8, !tbaa !25
  %i.ahr = add i64 %i.ahq, 1
  call void @_ZdlPvm(ptr noundef %i.aho, i64 noundef %i.ahr) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i584

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i584: ; preds = %.loopexit2.split.us.i580, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i583
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %.body

bb.ek:                                            ; preds = %bb.b
  %.sroa.0.0.extract.trunc.i643 = trunc i64 %.sroa.0.0.copyload.i.fr.i642 to i32
  %i.ahs = lshr i32 %.sroa.0.0.extract.trunc.i643, 8
  %i.aht = and i32 %i.ahs, 255                    ; 4 uses
  %.not.i644 = icmp eq i32 %i.aht, 0
  %i.ahu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 12 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br i1 %.not.i644, label %_ZN11OpenImageIO4v3_112_GLOBAL__N_110formatTypeIfEEvRKNS0_10ParamValueEiiPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.peel.i648

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.us.peel.i648: ; preds = %bb.ek
  %i.ahw = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.ahx = load i8, ptr %i.ahw, align 2, !tbaa !27, !range !35, !noundef !36
  %i.ahy = trunc nuw i8 %i.ahx to i1
  %i.ahz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
end_hunk_0
