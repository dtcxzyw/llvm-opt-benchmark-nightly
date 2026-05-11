inline.NumInlined: 4997
inline.NumDeleted: 1755
begin_hunk_0_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
  %i.u = sdiv i32 %i.t, %i.r                      ; 3 uses
  %i.v = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.j, i1 noundef zeroext true) #36
  %i.w = load ptr, ptr %5, align 8, !tbaa !278    ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !280  ; 6 uses
  %i.z = load i32, ptr %i.j, align 8, !tbaa !136  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
  br label %bb.cv

bb.an:                                            ; preds = %.lr.ph356, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit"
  %.sroa.16.32.copyload = phi i64 [ %i.y, %.lr.ph356 ], [ %i.kp, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ] ; 6 uses
  %.sroa.13.32.copyload = phi ptr [ %i.w, %.lr.ph356 ], [ %i.kq, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ] ; 10 uses
  %13 = phi i32 [ %i.fm, %.lr.ph356 ], [ %i.kr, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ]
  %14 = phi i32 [ %i.fl, %.lr.ph356 ], [ %i.kt, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ]
  %i.ge = phi i64 [ 0, %.lr.ph356 ], [ %i.ku, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ] ; 2 uses
  %i.gf = mul i64 %i.ge, %i.ex
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.gf ; 3 uses
  %i.gh = load i32, ptr %i.k, align 4, !tbaa !137
  %i.gi = sub nsw i32 %14, %i.gh
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
bb.as:                                            ; preds = %bb.an
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.at:                                            ; preds = %bb.ap
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.au:                                            ; preds = %bb.aq
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  %i.gw = load ptr, ptr %10, align 8, !tbaa !77   ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
bb.ax:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef 16) #37, !noalias !317
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %.noexc.i.i.i.i.i
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.ay, %bb.ax
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
bb.az:                                            ; preds = %.noexc170
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt13packaged_taskIFviEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt13packaged_taskIFviEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.az, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 80
  store i64 %i.gl, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !116, !noalias !304
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 88
  store ptr %.sroa.13.32.copyload, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !181, !noalias !304
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 96
  store i64 %.sroa.16.32.copyload, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !116, !noalias !304
  %.sroa.16222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 104
  store i64 %i.ew, ptr %.sroa.16222.0..sroa_idx, align 8, !tbaa !116, !noalias !304
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hd, i64 112
end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
  br i1 %.not.i.i.i, label %bb.bc, label %_ZNSt13__future_base13_State_baseV28_S_checkINS_16_Task_state_baseIFviEEEEEvRKSt10shared_ptrIT_E.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_future_errori(i32 noundef 3) #40
          to label %.noexc.i unwind label %.loopexit.split-lp, !noalias !291

end_hunk_6
begin_hunk_7_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
.loopexit272:                                     ; preds = %"_ZSt11make_sharedISt13packaged_taskIFviEEJRZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS4_4spanISt4byteLm18446744073709551615EEEE3$_0EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESD_E4typeEEDpOT0_.exit.i", %_ZNSt13__future_base13_State_baseV28_S_checkINS_16_Task_state_baseIFviEEEEEvRKSt10shared_ptrIT_E.exit.i.i, %bb.bj
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp:                               ; preds = %bb.bc
end_hunk_7
begin_hunk_8_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
bb.bh:                                            ; preds = %"_ZZN11OpenImageIO4v3_111thread_pool4pushIRZNS0_9TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEE3$_0EESt6futureIDTclfL0p_Li0EEEEOT_ENUliE_D2Ev.exit.i", %bb.bd
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bi:                                            ; preds = %_ZNSt10shared_ptrISt13packaged_taskIFviEEEC2ERKS3_.exit.i
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZZN11OpenImageIO4v3_111thread_pool4pushIRZNS0_9TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEE3$_0EESt6futureIDTclfL0p_Li0EEEEOT_ENUliE_D2Ev"(ptr nonnull %i.ha) #36, !noalias !291
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef 32) #37, !noalias !291
  br label %bb.br
end_hunk_8
begin_hunk_9_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a

_ZNSt14__basic_futureIvED2Ev.exit:                ; preds = %_ZN11OpenImageIO4v3_18task_set4pushEOSt6futureIvE.exit, %bb.bw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i174, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %.pre = load i64, ptr %i.x, align 8, !tbaa !116
  %.pre398 = load ptr, ptr %5, align 8, !tbaa !278
  br label %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit"

bb.cb:                                            ; preds = %bb.aw
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cc:                                            ; preds = %bb.bu
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14__basic_futureIvED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #36
  br label %.body

end_hunk_9
begin_hunk_10_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
  %i.jx = load i32, ptr %i.eh, align 4, !tbaa !133
  %i.jy = load i32, ptr %i.aa, align 4, !tbaa !130
  %i.jz = load i32, ptr %i.q, align 4, !tbaa !161
  invoke void @_ZN11OpenImageIO4v3_19TIFFInput20uncompress_one_stripEPKvmPvmiiiPb(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %i.gg, i64 noundef %i.gl, ptr noundef %.sroa.13.32.copyload, i64 noundef %i.ew, i32 noundef %i.jx, i32 noundef %i.jy, i32 noundef %i.jz, ptr noundef nonnull %i.c)
          to label %.noexc176 unwind label %bb.cf

.noexc176:                                        ; preds = %bb.cd
end_hunk_10
begin_hunk_11_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a

vector.body686:                                   ; preds = %vector.main.loop.iter.check681, %vector.body686
  %index687 = phi i64 [ %index.next690, %vector.body686 ], [ 0, %vector.main.loop.iter.check681 ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.13.32.copyload, i64 %index687 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 2 uses
  %wide.load688 = load <16 x i8>, ptr %i.kd, align 1, !tbaa !16
  %wide.load689 = load <16 x i8>, ptr %i.ke, align 1, !tbaa !16
end_hunk_11
begin_hunk_12_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a

vec.epilog.vector.body701:                        ; preds = %vec.epilog.vector.body701, %vec.epilog.ph698
  %index702 = phi i64 [ %vec.epilog.resume.val693, %vec.epilog.ph698 ], [ %index.next704, %vec.epilog.vector.body701 ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.13.32.copyload, i64 %index702 ; 2 uses
  %wide.load703 = load <4 x i8>, ptr %i.ki, align 1, !tbaa !16
  %i.kj = xor <4 x i8> %wide.load703, splat (i8 -1)
  store <4 x i8> %i.kj, ptr %i.ki, align 1, !tbaa !16
end_hunk_12
begin_hunk_13_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.13.32.copyload, i64 %indvars.iv.i.i ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !16
  %i.kn = xor i8 %i.km, -1
  store i8 %i.kn, ptr %i.kl, align 1, !tbaa !16
end_hunk_13
begin_hunk_14_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
bb.cf:                                            ; preds = %bb.cd
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit": ; preds = %.lr.ph.i.i, %middle.block691, %vec.epilog.middle.block705, %bb.ce, %.noexc176, %_ZNSt14__basic_futureIvED2Ev.exit
  %15 = phi ptr [ %.pre398, %_ZNSt14__basic_futureIvED2Ev.exit ], [ %.sroa.13.32.copyload, %bb.ce ], [ %.sroa.13.32.copyload, %.noexc176 ], [ %.sroa.13.32.copyload, %middle.block691 ], [ %.sroa.13.32.copyload, %vec.epilog.middle.block705 ], [ %.sroa.13.32.copyload, %.lr.ph.i.i ]
  %16 = phi i64 [ %.pre, %_ZNSt14__basic_futureIvED2Ev.exit ], [ %.sroa.16.32.copyload, %bb.ce ], [ %.sroa.16.32.copyload, %.noexc176 ], [ %.sroa.16.32.copyload, %middle.block691 ], [ %.sroa.16.32.copyload, %vec.epilog.middle.block705 ], [ %.sroa.16.32.copyload, %.lr.ph.i.i ] ; 2 uses
  %.sroa.speculated6.i177 = call i64 @llvm.umin.i64(i64 %16, i64 %i.fx) ; 2 uses
  %i.kp = sub i64 %16, %.sroa.speculated6.i177    ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %15, i64 %.sroa.speculated6.i177 ; 3 uses
  store ptr %i.kq, ptr %5, align 8, !tbaa !181
  store i64 %i.kp, ptr %i.x, align 8, !tbaa !116
  %i.kr = load i32, ptr %i.q, align 4, !tbaa !161 ; 3 uses
  %i.ks = load i32, ptr %i.d, align 4, !tbaa !3
  %i.kt = add nsw i32 %i.ks, %i.kr                ; 4 uses
  store i32 %i.kt, ptr %i.d, align 4, !tbaa !3
  %i.ku = add i64 %i.ge, 1
  %i.kv = add nsw i32 %i.kr, %i.kt
  %.not138 = icmp sgt i32 %i.kv, %.sroa.speculated234
  br i1 %.not138, label %.loopexit271, label %bb.an, !llvm.loop !345
end_hunk_14
begin_hunk_15_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
bb.cg:                                            ; preds = %bb.ag
  %i.kw = load i32, ptr %i.d, align 4, !tbaa !3   ; 3 uses
  %i.kx = icmp slt i32 %i.kw, %.sroa.speculated234
  br i1 %i.kx, label %.lr.ph320, label %.loopexit273

.lr.ph320:                                        ; preds = %bb.cg
  %i.ky = load i32, ptr %i.m, align 8, !tbaa !131
end_hunk_15
begin_hunk_16_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
  store i32 %i.ra, ptr %i.d, align 4, !tbaa !3
  %i.rb = add i64 %.0126318, 1
  %i.rc = icmp slt i32 %i.ra, %.sroa.speculated234
  br i1 %i.rc, label %bb.ch, label %.loopexit273, !llvm.loop !359

.loopexit273:                                     ; preds = %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit, %bb.cg
  %17 = phi i32 [ %i.kw, %bb.cg ], [ %i.ra, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit ]
  %.lcssa314 = phi i64 [ %i.y, %bb.cg ], [ %i.qw, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit ] ; 2 uses
  %.lcssa309 = phi ptr [ %i.w, %bb.cg ], [ %i.qx, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit ] ; 2 uses
  store ptr %.lcssa309, ptr %5, align 8
  store i64 %.lcssa314, ptr %i.x, align 8
  br label %.loopexit271

.loopexit271:                                     ; preds = %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit", %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader, %.loopexit273
  %.promoted329 = phi i64 [ %.lcssa314, %.loopexit273 ], [ %i.y, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader ], [ %i.kp, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ] ; 2 uses
  %.promoted325 = phi ptr [ %.lcssa309, %.loopexit273 ], [ %i.w, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader ], [ %i.kq, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ] ; 2 uses
  %18 = phi i32 [ %17, %.loopexit273 ], [ %i.fl, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader ], [ %i.kt, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ] ; 3 uses
  %.sroa.0226.1 = phi ptr [ null, %.loopexit273 ], [ %i.fk, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader ], [ %i.fk, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ] ; 4 uses
  %i.rd = load i32, ptr %i.k, align 4, !tbaa !137
  %i.re = sub nsw i32 %18, %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %i.re, ptr %i.rf, align 4, !tbaa !98
  %.not = icmp slt i32 %18, %.sroa.speculated234
  br i1 %.not, label %.lr.ph370, label %._crit_edge371

.lr.ph370:                                        ; preds = %.loopexit271, %bb.cu
  %i.rg = phi i32 [ %i.rm, %bb.cu ], [ %18, %.loopexit271 ]
  %.sroa.01.0.copyload360368 = phi ptr [ %i.rk, %bb.cu ], [ %.promoted325, %.loopexit271 ] ; 3 uses
  %.sroa.2.0.copyload364367 = phi i64 [ %i.rj, %bb.cu ], [ %.promoted329, %.loopexit271 ] ; 3 uses
  %i.rh = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_19TIFFInput27read_native_scanline_lockedEiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 poison, i32 poison, i32 noundef %i.rg, ptr %.sroa.01.0.copyload360368, i64 poison)
          to label %bb.cs unwind label %bb.ct

end_hunk_16
begin_hunk_17_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
  br i1 %.not380, label %.lr.ph370, label %._crit_edge371, !llvm.loop !360

._crit_edge371:                                   ; preds = %bb.cu, %.loopexit271
  %.sroa.2.0.copyload364.lcssa = phi i64 [ %.promoted329, %.loopexit271 ], [ %i.rj, %bb.cu ]
  %.sroa.01.0.copyload360.lcssa = phi ptr [ %.promoted325, %.loopexit271 ], [ %i.rk, %bb.cu ]
  store ptr %.sroa.01.0.copyload360.lcssa, ptr %5, align 8
  store i64 %.sroa.2.0.copyload364.lcssa, ptr %i.x, align 8
  invoke void @_ZN11OpenImageIO4v3_18task_set4waitEb(ptr noundef nonnull align 8 dereferenceable(40) %9, i1 noundef zeroext false)
end_hunk_17
