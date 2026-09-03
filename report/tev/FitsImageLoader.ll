Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/FitsImageLoader?download=true
inline.NumInlined: 6970
inline.NumDeleted: 2790
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 45
begin_hunk_0_@"_ZZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileiiENK3$_2clENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE":.from.
  %7 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__1::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.tev::ChannelView.465", align 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(560) ptr @_Znwm(i64 noundef 560) #33 ; 55 uses
  store ptr @"_ZZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileiiENK3$_2clENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE.resume", ptr %i.b, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZZN3tev12_GLOBAL__N_114decodeImageHduEP8fitsfileiiENK3$_2clENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEE.destroy", ptr %destroy.addr, align 8
  %.reload.addr498 = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 10 uses
  %.reload.addr499 = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 4 uses
  %.reload.addr500 = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 8 uses
  %.reload.addr501 = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 8 uses
  %.reload.addr504 = getelementptr inbounds nuw i8, ptr %i.b, i64 328 ; 12 uses
  %.reload.addr505 = getelementptr inbounds nuw i8, ptr %i.b, i64 480 ; 9 uses
  %.reload.addr507 = getelementptr inbounds nuw i8, ptr %i.b, i64 504 ; 2 uses
  %.reload.addr508 = getelementptr inbounds nuw i8, ptr %i.b, i64 536 ; 5 uses
  %.reload.addr510 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 9 uses
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.b, i64 520 ; 5 uses
  store ptr %1, ptr %.spill.addr, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr504, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr510)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %i.c = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %bb.a unwind label %.body.from.483 ; 5 uses

.body.from.483:                                   ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr510) #32
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1120
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.c, align 8, !tbaa !71, !noalias !1120
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !1120
  store i32 2, ptr %i.h, align 8, !tbaa !77, !noalias !1120
  store ptr %i.g, ptr %i.e, align 8, !tbaa !81, !alias.scope !1121
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store ptr %i.c, ptr %i.i, align 8, !tbaa !82, !alias.scope !1121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !1122
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future.209") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr510)
          to label %bb.b unwind label %bb.d, !noalias !1122

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !98, !alias.scope !1122
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %6, align 8, !tbaa !381, !noalias !1122
  store ptr %i.k, ptr %i.j, align 8, !tbaa !381, !alias.scope !1122
  store ptr null, ptr %6, align 8, !tbaa !381, !noalias !1122
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !82, !noalias !1122 ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.e, align 8, !tbaa !98, !noalias !1122
  store <2 x ptr> %i.n, ptr %i.l, align 8, !tbaa !98, !alias.scope !1122
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8, !noalias !1122 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #37, !noalias !1122
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32, !noalias !1122
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !1122
  %i.t = load ptr, ptr %1, align 8, !tbaa !1123, !nonnull !140, !align !299 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !101
  %.not = icmp eq i64 %i.u, 1
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1124, !nonnull !140, !align !294
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc93 unwind label %.from.468

.noexc93:                                         ; preds = %bb.f
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !118
  invoke void @_ZN4tlog6Logger3logIJRiRKmEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS9_(ptr noundef nonnull align 8 dereferenceable(56) %i.y, i32 noundef 8, ptr nonnull @.str.114, i64 83, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %_ZN4tlog7warningIJRiRKmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit unwind label %.from.468

_ZN4tlog7warningIJRiRKmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit: ; preds = %.noexc93
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr510)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZN4tlog7warningIJRiRKmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #37
  unreachable

.from.468:                                        ; preds = %bb.f, %.noexc93, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit515.thread, %.noexc516
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.466

bb.h:                                             ; preds = %bb.e
  %i.ac = load i8, ptr %.reload.addr504, align 8  ; 2 uses
  %i.ad = trunc i8 %i.ac to i1                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = lshr i8 %i.ac, 1
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = select i1 %i.ad, i64 %i.af, i64 %i.ah
  %cond = icmp eq i64 %i.ai, 4
  br i1 %cond, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit515.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 329
  %i.am = select i1 %i.ad, ptr %i.ak, ptr %i.al   ; 4 uses
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = icmp ne i32 %i.an, 1111967570
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EPKc.exit, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit99

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit99: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
  %i.ar = load i32, ptr %i.am, align 1
  %i.as = icmp ne i32 %i.ar, 1380403010
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EPKc.exit, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit104

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit104: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit99
  %i.av = load i32, ptr %i.am, align 1
  %i.aw = icmp ne i32 %i.av, 1195528775
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EPKc.exit, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit515

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit515: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit104
  %i.az = load i32, ptr %i.am, align 1
  %i.ba = icmp ne i32 %i.az, 1196573255
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EPKc.exit, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit515.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit515.thread: ; preds = %bb.h, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit515
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1124, !nonnull !140, !align !294
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc516 unwind label %.from.468

.noexc516:                                        ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit515.thread
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !118
  invoke void @_ZN4tlog6Logger3logIJRiRNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSF_(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i32 noundef 8, ptr nonnull @.str.119, i64 59, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr504)
          to label %_ZN4tlog7warningIJRiRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit518 unwind label %.from.468

_ZN4tlog7warningIJRiRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit518: ; preds = %.noexc516
  %i.bh = load i8, ptr %.reload.addr504, align 8
  %i.bi = trunc i8 %i.bh to i1
  br i1 %i.bi, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.from., label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.from.326

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.from.: ; preds = %_ZN4tlog7warningIJRiRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit518
  store i64 4, ptr %i.ae, align 8, !tbaa !97
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !97
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.from.326: ; preds = %_ZN4tlog7warningIJRiRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit518
  store i8 8, ptr %.reload.addr504, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 329
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.from., %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.from.326
  %i.bm = phi ptr [ %i.bk, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.from. ], [ %i.bl, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.from.326 ] ; 2 uses
  store i32 1111967570, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i8 0, ptr %i.bn, align 1, !tbaa !97
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EPKc.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EPKc.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit515, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit104, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit99, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
  store i32 0, ptr %.reload.addr508, align 8, !tbaa !99
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 540 ; 5 uses
  store i32 0, ptr %i.bo, align 4, !tbaa !99
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1125, !nonnull !140, !align !299
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store i8 16, ptr %7, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i64 5063822046128063064, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 9
  store i8 0, ptr %i.bs, align 1, !tbaa !97
  %i.bt = invoke ptr @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE4findIS7_EENS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEERKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit unwind label %bb.n ; 5 uses

_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EPKc.exit
  %i.bu = load i8, ptr %7, align 8
  %i.bv = trunc i8 %i.bu to i1
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !97
  %i.by = load i64, ptr %7, align 8
  %i.bz = and i64 %i.by, -2
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.bz) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.ca = icmp eq ptr %i.bt, null
  br i1 %i.ca, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 40 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 8             ; 2 uses
  %i.cd = trunc i8 %i.cc to i1                    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 41
  %i.ch = select i1 %i.cd, ptr %i.cf, ptr %i.cg   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = lshr i8 %i.cc, 1
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = select i1 %i.cd, i64 %i.cj, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cm ; 2 uses
  %i.co = invoke { ptr, i32 } @_ZNSt3__117__from_chars_atoiB8ne180100IiTnNS_9enable_ifIXsr9is_signedIT_EE5valueEiE4typeELi0EEENS_17from_chars_resultEPKcS7_RS2_(ptr noundef %i.ch, ptr noundef %i.cn, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr508)
          to label %bb.l unwind label %.from.457  ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  %i.cq = extractvalue { ptr, i32 } %i.co, 1
  %i.cr = icmp eq i32 %i.cq, 0
  %i.cs = icmp eq ptr %i.cp, %i.cn
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %i.ct, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1124, !nonnull !140, !align !294
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc110 unwind label %.from.457

.noexc110:                                        ; preds = %bb.m
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !118
  invoke void @_ZN4tlog6Logger3logIJRiRNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSF_(ptr noundef nonnull align 8 dereferenceable(56) %i.cx, i32 noundef 8, ptr nonnull @.str.121, i64 57, ptr noundef nonnull align 4 dereferenceable(4) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_ZN4tlog7warningIJRiRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit unwind label %.from.457

_ZN4tlog7warningIJRiRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit: ; preds = %.noexc110
  store i32 0, ptr %.reload.addr508, align 8, !tbaa !99
  br label %bb.p

.from.463:                                        ; preds = %bb.x, %.noexc131
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.466

bb.n:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EPKc.exit
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = load i8, ptr %7, align 8
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %bb.o, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit112

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !97
  %i.de = load i64, ptr %7, align 8
  %i.df = and i64 %i.de, -2
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.df) #36
  br label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit112

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit112: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %.from.466

.from.457:                                        ; preds = %bb.k, %bb.m, %.noexc110
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.466

bb.p:                                             ; preds = %bb.l, %_ZN4tlog7warningIJRiRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit, %bb.j
  %i.dh = load ptr, ptr %i.bp, align 8, !tbaa !1125, !nonnull !140, !align !299
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  store i8 16, ptr %8, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 1
  store i64 5063822046128063065, ptr %i.di, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 9
  store i8 0, ptr %i.dj, align 1, !tbaa !97
  %i.dk = invoke ptr @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_22__unordered_map_hasherIS7_S8_NS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_S8_SD_SB_Lb1EEENS5_IS8_EEE4findIS7_EENS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEERKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit121 unwind label %bb.v ; 5 uses

_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit121: ; preds = %bb.p
  %i.dl = load i8, ptr %8, align 8
  %i.dm = trunc i8 %i.dl to i1
  br i1 %i.dm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit121
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !97
  %i.dp = load i64, ptr %8, align 8
  %i.dq = and i64 %i.dp, -2
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dq) #36
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB8ne180100ERSC_.exit121
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.dr = icmp eq ptr %i.dk, null
  br i1 %i.dr, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 40 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 8             ; 2 uses
  %i.du = trunc i8 %i.dt to i1                    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 41
  %i.dy = select i1 %i.du, ptr %i.dw, ptr %i.dx   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = lshr i8 %i.dt, 1
  %i.ec = zext nneg i8 %i.eb to i64
  %i.ed = select i1 %i.du, i64 %i.ea, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ed ; 2 uses
  %i.ef = invoke { ptr, i32 } @_ZNSt3__117__from_chars_atoiB8ne180100IiTnNS_9enable_ifIXsr9is_signedIT_EE5valueEiE4typeELi0EEENS_17from_chars_resultEPKcS7_RS2_(ptr noundef %i.dy, ptr noundef %i.ee, ptr noundef nonnull align 4 dereferenceable(4) %i.bo)
          to label %bb.t unwind label %.from.453  ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  %i.eh = extractvalue { ptr, i32 } %i.ef, 1
  %i.ei = icmp eq i32 %i.eh, 0
  %i.ej = icmp eq ptr %i.eg, %i.ee
  %i.ek = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %i.ek, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1124, !nonnull !140, !align !294
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc127 unwind label %.from.453

.noexc127:                                        ; preds = %bb.u
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !118
  invoke void @_ZN4tlog6Logger3logIJRiRNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSF_(ptr noundef nonnull align 8 dereferenceable(56) %i.eo, i32 noundef 8, ptr nonnull @.str.121, i64 57, ptr noundef nonnull align 4 dereferenceable(4) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %_ZN4tlog7warningIJRiRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit129 unwind label %.from.453

_ZN4tlog7warningIJRiRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit129: ; preds = %.noexc127
  store i32 0, ptr %i.bo, align 4, !tbaa !99
  br label %bb.x

bb.v:                                             ; preds = %bb.p
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = load i8, ptr %8, align 8
  %i.er = trunc i8 %i.eq to i1
  br i1 %i.er, label %bb.w, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit130

bb.w:                                             ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !97
  %i.eu = load i64, ptr %8, align 8
  %i.ev = and i64 %i.eu, -2
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ev) #36
  br label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit130

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit130: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %.from.466

.from.453:                                        ; preds = %bb.s, %bb.u, %.noexc127
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.466

bb.x:                                             ; preds = %bb.t, %_ZN4tlog7warningIJRiRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit129, %bb.r
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1124, !nonnull !140, !align !294
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc131 unwind label %.from.463

.noexc131:                                        ; preds = %bb.x
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !118
  invoke void @_ZN4tlog6Logger3logIJRiRNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEES2_S2_EEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSF_(ptr noundef nonnull align 8 dereferenceable(56) %i.fa, i32 noundef 4, ptr nonnull @.str.123, i64 56, ptr noundef nonnull align 4 dereferenceable(4) %i.ey, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr504, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr508, ptr noundef nonnull align 4 dereferenceable(4) %i.bo)
          to label %_ZN4tlog5debugIJRiRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES1_S1_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit unwind label %.from.463

_ZN4tlog5debugIJRiRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES1_S1_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit: ; preds = %.noexc131
  %i.fb = load i8, ptr %.reload.addr504, align 8  ; 2 uses
  %i.fc = trunc i8 %i.fb to i1
  %i.fd = load i64, ptr %i.ae, align 8
  %i.fe = lshr i8 %i.fb, 1
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = select i1 %i.fc, i64 %i.fd, i64 %i.ff   ; 2 uses
  %i.fh = trunc i64 %i.fg to i32                  ; 2 uses
  %i.fi = sitofp i32 %i.fh to double
  %i.fj = call noundef double @sqrt(double noundef %i.fi) #32 ; 2 uses
  %.spill.addr495 = getelementptr inbounds nuw i8, ptr %i.b, i64 528 ; 2 uses
  store double %i.fj, ptr %.spill.addr495, align 8
  %i.fk = fptosi double %i.fj to i32              ; 10 uses
  %i.fl = mul nsw i32 %i.fk, %i.fk
  %.not77 = icmp eq i32 %i.fl, %i.fh
  br i1 %.not77, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZN4tlog5debugIJRiRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES1_S1_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit
  %i.fm = load ptr, ptr %i.ex, align 8, !tbaa !1124, !nonnull !140, !align !294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.fg, ptr %i.a, align 8, !tbaa !101
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc133 unwind label %.from.460

.noexc133:                                        ; preds = %bb.y
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !118
  invoke void @_ZN4tlog6Logger3logIJRimEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.fo, i32 noundef 8, ptr nonnull @.str.124, i64 72, ptr noundef nonnull align 4 dereferenceable(4) %i.fm, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4tlog7warningIJRimEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit unwind label %.from.460

_ZN4tlog7warningIJRimEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit: ; preds = %.noexc133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr510)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.z

bb.z:                                             ; preds = %_ZN4tlog7warningIJRimEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #37
  unreachable

.from.460:                                        ; preds = %bb.y, %.noexc133
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %.from.466

bb.aa:                                            ; preds = %_ZN4tlog5debugIJRiRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES1_S1_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr505, i8 0, i64 24, i1 false)
  %i.fs = icmp sgt i32 %i.fk, 0
  br i1 %i.fs, label %.preheader.from..preheader.lr.ph, label %._crit_edge274.split

.preheader.from..preheader.lr.ph:                 ; preds = %bb.aa
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2232.0.insert.ext = zext nneg i32 %i.fk to i64 ; 5 uses
  %.sroa.0231.0.insert.insert = mul nuw nsw i64 %.sroa.2232.0.insert.ext, 4294967297 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 329
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 488 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 496 ; 3 uses
  %i.fy = tail call ptr @__ctype_toupper_loc() #39
  br label %.from..preheader

.from..preheader:                                 ; preds = %._crit_edge, %.preheader.from..preheader.lr.ph
  %i.fz = phi ptr [ null, %.preheader.from..preheader.lr.ph ], [ %.0.i141, %._crit_edge ]
  %.062273 = phi i32 [ 0, %.preheader.from..preheader.lr.ph ], [ %i.gc, %._crit_edge ] ; 2 uses
  br label %bb.ab

._crit_edge274.split:                             ; preds = %._crit_edge, %bb.aa
  %i.ga = load ptr, ptr %1, align 8, !tbaa !1123, !nonnull !140, !align !299
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !101
  %.not78 = icmp eq i64 %i.gb, 0
  br i1 %.not78, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit151, label %bb.at, !prof !1126

._crit_edge:                                      ; preds = %.from._ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i
  %i.gc = add nuw nsw i32 %.062273, 1             ; 2 uses
  %exitcond276.not = icmp eq i32 %i.gc, %i.fk
  br i1 %exitcond276.not, label %._crit_edge274.split, label %.from..preheader, !llvm.loop !1089

bb.ab:                                            ; preds = %.from._ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, %.from..preheader
  %i.gd = phi ptr [ %i.fz, %.from..preheader ], [ %.0.i141, %.from._ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i ] ; 5 uses
  %.063272 = phi i32 [ 0, %.from..preheader ], [ %i.mg, %.from._ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i ] ; 2 uses
  %13 = load i32, ptr %.reload.addr508, align 8, !tbaa !99
  %14 = add nsw i32 %13, %.063272
  %15 = srem i32 %14, %i.fk
  %16 = load i32, ptr %i.bo, align 4, !tbaa !99
  %17 = add nsw i32 %16, %.062273
  %18 = srem i32 %17, %i.fk
  %i.ge = xor i32 %18, -1
  %i.gf = add i32 %i.ge, %i.fk
  %i.gg = load ptr, ptr %i.ft, align 8, !tbaa !383, !nonnull !140, !align !299
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 88
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !204
  %.sroa.5236.0.insert.ext = zext i32 %i.gf to i64 ; 9 uses
  %.sroa.5236.0.insert.shift = shl nuw i64 %.sroa.5236.0.insert.ext, 32
  %.sroa.0235.0.insert.ext = zext i32 %15 to i64
  %.sroa.0235.0.insert.insert = or disjoint i64 %.sroa.5236.0.insert.shift, %.sroa.0235.0.insert.ext ; 8 uses
  switch i32 %i.gi, label %toupper.exit.from. [
    i32 8, label %toupper.exit.from.337
    i32 7, label %toupper.exit.from.340
    i32 2, label %toupper.exit.from.356
    i32 3, label %toupper.exit.from.352
    i32 4, label %toupper.exit.from.348
    i32 5, label %toupper.exit
    i32 6, label %toupper.exit.from.344
  ]

toupper.exit.from.356:                            ; preds = %bb.ab
  %i.gj = xor i64 %.sroa.0235.0.insert.insert, 4294967295
  %i.gk = add i64 %i.gj, %.sroa.0231.0.insert.insert
  br label %toupper.exit

toupper.exit.from.352:                            ; preds = %bb.ab
  %i.gl = xor i64 %.sroa.0235.0.insert.insert, 4294967295
  %i.gm = add i64 %i.gl, %.sroa.0231.0.insert.insert
  %i.gn = xor i64 %.sroa.5236.0.insert.ext, 4294967295
  %i.go = add nuw nsw i64 %i.gn, %.sroa.2232.0.insert.ext
  br label %toupper.exit

toupper.exit.from.348:                            ; preds = %bb.ab
  %i.gp = xor i64 %.sroa.5236.0.insert.ext, 4294967295
  %i.gq = add nuw nsw i64 %i.gp, %.sroa.2232.0.insert.ext
  br label %toupper.exit

toupper.exit.from.344:                            ; preds = %bb.ab
  %i.gr = xor i64 %.sroa.0235.0.insert.insert, 4294967295
  %i.gs = add i64 %i.gr, %.sroa.0231.0.insert.insert
  br label %toupper.exit

toupper.exit.from.340:                            ; preds = %bb.ab
  %i.gt = xor i64 %.sroa.5236.0.insert.ext, 4294967295
  %i.gu = add nuw nsw i64 %i.gt, %.sroa.2232.0.insert.ext
  %i.gv = xor i64 %.sroa.0235.0.insert.insert, 4294967295
  %i.gw = add i64 %i.gv, %.sroa.0231.0.insert.insert
  br label %toupper.exit

toupper.exit.from.337:                            ; preds = %bb.ab
  %i.gx = xor i64 %.sroa.5236.0.insert.ext, 4294967295
  %i.gy = add nuw nsw i64 %i.gx, %.sroa.2232.0.insert.ext
  br label %toupper.exit

toupper.exit.from.:                               ; preds = %bb.ab
  br label %toupper.exit

toupper.exit:                                     ; preds = %bb.ab, %toupper.exit.from., %toupper.exit.from.337, %toupper.exit.from.340, %toupper.exit.from.344, %toupper.exit.from.348, %toupper.exit.from.352, %toupper.exit.from.356
  %.sroa.039.0.i = phi i64 [ %.sroa.0235.0.insert.insert, %toupper.exit.from. ], [ %.sroa.5236.0.insert.ext, %toupper.exit.from.344 ], [ %i.gu, %toupper.exit.from.340 ], [ %i.gk, %toupper.exit.from.356 ], [ %i.gm, %toupper.exit.from.352 ], [ %.sroa.0235.0.insert.insert, %toupper.exit.from.348 ], [ %i.gy, %toupper.exit.from.337 ], [ %.sroa.5236.0.insert.ext, %bb.ab ]
  %.sroa.1142.0.i = phi i64 [ %.sroa.5236.0.insert.ext, %toupper.exit.from. ], [ %i.gs, %toupper.exit.from.344 ], [ %i.gw, %toupper.exit.from.340 ], [ %.sroa.5236.0.insert.ext, %toupper.exit.from.356 ], [ %i.go, %toupper.exit.from.352 ], [ %i.gq, %toupper.exit.from.348 ], [ %.sroa.0235.0.insert.insert, %toupper.exit.from.337 ], [ %.sroa.0235.0.insert.insert, %bb.ab ]
  %.sroa.0233.0.extract.trunc = trunc i64 %.sroa.039.0.i to i32
  %.sroa.5234.0.extract.trunc = trunc i64 %.sroa.1142.0.i to i32
  %i.gz = mul nsw i32 %.sroa.5234.0.extract.trunc, %i.fk
  %i.ha = add nsw i32 %i.gz, %.sroa.0233.0.extract.trunc
  %i.hb = sext i32 %i.ha to i64
  %i.hc = load i8, ptr %.reload.addr504, align 8
  %i.hd = trunc i8 %i.hc to i1
  %i.he = load ptr, ptr %i.fu, align 8
  %.pn.i = select i1 %i.hd, ptr %i.he, ptr %i.fv
  %.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 %i.hb
  %i.hf = load i8, ptr %.0.i, align 1, !tbaa !97
  %i.hg = load ptr, ptr %i.fy, align 8, !tbaa !249
  %i.hh = sext i8 %i.hf to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !99
  %sext = shl i32 %i.hj, 24                       ; 3 uses
  switch i32 %sext, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit [
    i32 1375731712, label %bb.am
    i32 1191182336, label %bb.am
    i32 1107296256, label %bb.am
  ], !prof !1127

_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit: ; preds = %toupper.exit
  %i.hk = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  store ptr @.str.125, ptr %.reload.addr500, align 16, !tbaa !97, !noalias !1128
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 281, ptr %i.hl, align 16, !tbaa !97, !noalias !1128
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 113, ptr %i.hm, align 16, !tbaa !97, !noalias !1128
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store ptr @.str.126, ptr %i.hn, align 16, !tbaa !97, !noalias !1128
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !1129
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.hq, align 8, !noalias !1129
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.hp, align 8, !tbaa !103, !noalias !1129
  %i.hr = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.hr, ptr %5, align 8, !tbaa !104, !noalias !1129
  store i64 500, ptr %i.ho, align 8, !tbaa !105, !noalias !1129
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !1129
  store ptr @.str.128, ptr %3, align 8, !tbaa !106, !noalias !1129
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 65, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !101, !noalias !1129
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.hs, align 8, !tbaa !109, !noalias !1129
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %5, ptr %i.ht, align 8, !tbaa !111, !noalias !1129
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 49708, ptr %i.hu, align 8, !tbaa !113, !noalias !1129
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %.reload.addr500, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !97, !noalias !1129
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr null, ptr %i.hv, align 8, !tbaa !98, !noalias !1129
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.128, i64 65, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !1129
  call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  %i.hw = load i64, ptr %i.hq, align 8, !tbaa !114, !noalias !1131 ; 8 uses
  %i.hx = icmp ult i64 %i.hw, -9
  call void @llvm.assume(i1 %i.hx)
  %i.hy = load ptr, ptr %5, align 8, !tbaa !104, !noalias !1131
  %i.hz = icmp ult i64 %i.hw, 23
  br i1 %i.hz, label %bb.ad, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.ac
  %i.ia = or i64 %i.hw, 7                         ; 2 uses
  %i.ib = icmp eq i64 %i.ia, 23
  %i.ic = add nuw i64 %i.ia, 1
  %i.id = select i1 %i.ib, i64 25, i64 %i.ic      ; 2 uses
  %i.ie = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.id) #34
          to label %.noexc.i unwind label %bb.ah, !noalias !1129 ; 2 uses

.noexc.i:                                         ; preds = %.thread.i.i.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !97, !alias.scope !1131
  %i.ig = or i64 %i.id, 1
  store i64 %i.ig, ptr %9, align 8, !alias.scope !1131
  %i.ih = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.hw, ptr %i.ih, align 8, !tbaa !97, !alias.scope !1131
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ii = trunc nuw nsw i64 %i.hw to i8
  %i.ij = shl nuw nsw i8 %i.ii, 1
  store i8 %i.ij, ptr %9, align 8, !alias.scope !1131
  %i.ik = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.noexc.i
  %.017.i.i.i.i = phi ptr [ %i.ie, %.noexc.i ], [ %i.ik, %bb.ad ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i, ptr align 1 %i.hy, i64 %i.hw, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.018.i.i.i.i = phi ptr [ %i.ik, %bb.ad ], [ %.017.i.i.i.i, %bb.ae ]
  %i.il = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 %i.hw
  store i8 0, ptr %i.il, align 1, !tbaa !97
  %i.im = load ptr, ptr %5, align 8, !tbaa !104, !noalias !1129 ; 2 uses
  %.not.i.i.i519 = icmp eq ptr %i.im, %i.hr
  br i1 %.not.i.i.i519, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef %i.im) #32, !noalias !1129
  br label %bb.aj

bb.ah:                                            ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit, %.thread.i.i.i.i
  %i.in = landingpad { ptr, i32 }
          catch ptr null
  %i.io = load ptr, ptr %5, align 8, !tbaa !104, !noalias !1129 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.io, %i.hr
  br i1 %.not.i.i7.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef %i.io) #32, !noalias !1129
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i: ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !1129
  br label %.from.446.sink.split

bb.aj:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !1129
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @__cxa_throw(ptr nonnull %i.hk, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.cm unwind label %.thread524

bb.al:                                            ; preds = %bb.aj
  %i.ip = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.iq = load i8, ptr %9, align 8
  %i.ir = trunc i8 %i.iq to i1
  br i1 %i.ir, label %.split, label %.from.446.sink.split

.thread524:                                       ; preds = %bb.ak
  %i.is = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.it = load i8, ptr %9, align 8
  %i.iu = trunc i8 %i.it to i1
  br i1 %i.iu, label %.split, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit139447

end_hunk_0
