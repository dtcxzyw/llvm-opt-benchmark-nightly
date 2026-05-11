inline.NumInlined: 4997
inline.NumDeleted: 1755
begin_hunk_0_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
  %i.u = sdiv i32 %i.t, %i.r                      ; 3 uses
  %i.v = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.j, i1 noundef zeroext true) #36
  %i.w = load ptr, ptr %5, align 8, !tbaa !278    ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 19 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !280  ; 6 uses
  %i.z = load i32, ptr %i.j, align 8, !tbaa !136  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
  br label %bb.cv

bb.an:                                            ; preds = %.lr.ph324, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit"
  %13 = phi i32 [ %i.fm, %.lr.ph324 ], [ %i.kq, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ]
  %14 = phi i32 [ %i.fl, %.lr.ph324 ], [ %i.ks, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ]
  %.0125355 = phi i64 [ 0, %.lr.ph324 ], [ %i.kt, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ] ; 2 uses
  %.sroa.13.32.copyload323353 = phi ptr [ %i.w, %.lr.ph324 ], [ %i.kp, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ] ; 19 uses
  %.0125323 = phi i64 [ %i.y, %.lr.ph324 ], [ %i.ko, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ] ; 16 uses
  %i.ge = mul i64 %.0125355, %i.ex
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ge ; 3 uses
  %i.gg = load i32, ptr %i.k, align 4, !tbaa !137
  %i.gh = sub nsw i32 %14, %i.gg
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
bb.as:                                            ; preds = %bb.an
  %i.gs = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.13.32.copyload323353, ptr %5, align 8
  store i64 %.0125323, ptr %i.x, align 8
  br label %bb.cv

bb.at:                                            ; preds = %bb.ap
  %i.gt = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.13.32.copyload323353, ptr %5, align 8
  store i64 %.0125323, ptr %i.x, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.au:                                            ; preds = %bb.aq
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %.sroa.13.32.copyload323353, ptr %5, align 8
  store i64 %.0125323, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  %i.gv = load ptr, ptr %10, align 8, !tbaa !77   ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
bb.ax:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hl = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.13.32.copyload323353, ptr %5, align 8
  store i64 %.0125323, ptr %i.x, align 8
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef 16) #37, !noalias !317
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %.noexc.i.i.i.i.i
  %i.hm = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.13.32.copyload323353, ptr %5, align 8
  store i64 %.0125323, ptr %i.x, align 8
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.ay, %bb.ax
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
bb.az:                                            ; preds = %.noexc170
  %i.hn = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.13.32.copyload323353, ptr %5, align 8
  store i64 %.0125323, ptr %i.x, align 8
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt13packaged_taskIFviEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt13packaged_taskIFviEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %bb.az, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 80
  store i64 %i.gk, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !116, !noalias !304
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 88
  store ptr %.sroa.13.32.copyload323353, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !181, !noalias !304
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 96
  store i64 %.0125323, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !116, !noalias !304
  %.sroa.16222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 104
  store i64 %i.ew, ptr %.sroa.16222.0..sroa_idx, align 8, !tbaa !116, !noalias !304
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 112
end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
  br i1 %.not.i.i.i, label %bb.bc, label %_ZNSt13__future_base13_State_baseV28_S_checkINS_16_Task_state_baseIFviEEEEEvRKSt10shared_ptrIT_E.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  store ptr %.sroa.13.32.copyload323353, ptr %5, align 8
  store i64 %.0125323, ptr %i.x, align 8
  invoke void @_ZSt20__throw_future_errori(i32 noundef 3) #40
          to label %.noexc.i unwind label %.loopexit.split-lp, !noalias !291

end_hunk_6
begin_hunk_7_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
.loopexit272:                                     ; preds = %"_ZSt11make_sharedISt13packaged_taskIFviEEJRZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS4_4spanISt4byteLm18446744073709551615EEEE3$_0EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESD_E4typeEEDpOT0_.exit.i", %_ZNSt13__future_base13_State_baseV28_S_checkINS_16_Task_state_baseIFviEEEEEvRKSt10shared_ptrIT_E.exit.i.i, %bb.bj
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.13.32.copyload323353, ptr %5, align 8
  store i64 %.0125323, ptr %i.x, align 8
  br label %bb.br

.loopexit.split-lp:                               ; preds = %bb.bc
end_hunk_7
begin_hunk_8_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
bb.bh:                                            ; preds = %"_ZZN11OpenImageIO4v3_111thread_pool4pushIRZNS0_9TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEE3$_0EESt6futureIDTclfL0p_Li0EEEEOT_ENUliE_D2Ev.exit.i", %bb.bd
  %i.ig = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.13.32.copyload323353, ptr %5, align 8
  store i64 %.0125323, ptr %i.x, align 8
  br label %bb.br

bb.bi:                                            ; preds = %_ZNSt10shared_ptrISt13packaged_taskIFviEEEC2ERKS3_.exit.i
  %i.ih = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.13.32.copyload323353, ptr %5, align 8
  store i64 %.0125323, ptr %i.x, align 8
  call fastcc void @"_ZZN11OpenImageIO4v3_111thread_pool4pushIRZNS0_9TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEE3$_0EESt6futureIDTclfL0p_Li0EEEEOT_ENUliE_D2Ev"(ptr nonnull %i.gz) #36, !noalias !291
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef 32) #37, !noalias !291
  br label %bb.br
end_hunk_8
begin_hunk_9_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a

_ZNSt14__basic_futureIvED2Ev.exit:                ; preds = %_ZN11OpenImageIO4v3_18task_set4pushEOSt6futureIvE.exit, %bb.bw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i174, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit"

bb.cb:                                            ; preds = %bb.aw
  %i.ju = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.13.32.copyload323353, ptr %5, align 8
  store i64 %.0125323, ptr %i.x, align 8
  br label %.body

bb.cc:                                            ; preds = %bb.bu
  %i.jv = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.13.32.copyload323353, ptr %5, align 8
  store i64 %.0125323, ptr %i.x, align 8
  call void @_ZNSt14__basic_futureIvED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #36
  br label %.body

end_hunk_9
begin_hunk_10_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
  %i.jw = load i32, ptr %i.eh, align 4, !tbaa !133
  %i.jx = load i32, ptr %i.aa, align 4, !tbaa !130
  %i.jy = load i32, ptr %i.q, align 4, !tbaa !161
  invoke void @_ZN11OpenImageIO4v3_19TIFFInput20uncompress_one_stripEPKvmPvmiiiPb(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull %i.gf, i64 noundef %i.gk, ptr noundef %.sroa.13.32.copyload323353, i64 noundef %i.ew, i32 noundef %i.jw, i32 noundef %i.jx, i32 noundef %i.jy, ptr noundef nonnull %i.c)
          to label %.noexc176 unwind label %bb.cf

.noexc176:                                        ; preds = %bb.cd
end_hunk_10
begin_hunk_11_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a

vector.body572:                                   ; preds = %vector.main.loop.iter.check567, %vector.body572
  %index573 = phi i64 [ %index.next576, %vector.body572 ], [ 0, %vector.main.loop.iter.check567 ] ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.13.32.copyload323353, i64 %index573 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 2 uses
  %wide.load574 = load <16 x i8>, ptr %i.kc, align 1, !tbaa !16
  %wide.load575 = load <16 x i8>, ptr %i.kd, align 1, !tbaa !16
end_hunk_11
begin_hunk_12_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a

vec.epilog.vector.body587:                        ; preds = %vec.epilog.vector.body587, %vec.epilog.ph584
  %index588 = phi i64 [ %vec.epilog.resume.val579, %vec.epilog.ph584 ], [ %index.next590, %vec.epilog.vector.body587 ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.13.32.copyload323353, i64 %index588 ; 2 uses
  %wide.load589 = load <4 x i8>, ptr %i.kh, align 1, !tbaa !16
  %i.ki = xor <4 x i8> %wide.load589, splat (i8 -1)
  store <4 x i8> %i.ki, ptr %i.kh, align 1, !tbaa !16
end_hunk_12
begin_hunk_13_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.13.32.copyload323353, i64 %indvars.iv.i.i ; 2 uses
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !16
  %i.km = xor i8 %i.kl, -1
  store i8 %i.km, ptr %i.kk, align 1, !tbaa !16
end_hunk_13
begin_hunk_14_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
bb.cf:                                            ; preds = %bb.cd
  %i.kn = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.13.32.copyload323353, ptr %5, align 8
  store i64 %.0125323, ptr %i.x, align 8
  br label %bb.cv

"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit": ; preds = %.lr.ph.i.i, %middle.block577, %vec.epilog.middle.block591, %bb.ce, %.noexc176, %_ZNSt14__basic_futureIvED2Ev.exit
  %.sroa.speculated6.i177 = call i64 @llvm.umin.i64(i64 %.0125323, i64 %i.fx) ; 2 uses
  %i.ko = sub i64 %.0125323, %.sroa.speculated6.i177 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.13.32.copyload323353, i64 %.sroa.speculated6.i177 ; 2 uses
  %i.kq = load i32, ptr %i.q, align 4, !tbaa !161 ; 3 uses
  %i.kr = load i32, ptr %i.d, align 4, !tbaa !3
  %i.ks = add nsw i32 %i.kr, %i.kq                ; 4 uses
  store i32 %i.ks, ptr %i.d, align 4, !tbaa !3
  %i.kt = add i64 %.0125355, 1
  %i.ku = add nsw i32 %i.kq, %i.ks
  %.not138 = icmp sgt i32 %i.ku, %.sroa.speculated234
  br i1 %.not138, label %.loopexit271, label %bb.an, !llvm.loop !345
end_hunk_14
begin_hunk_15_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
bb.cg:                                            ; preds = %bb.ag
  %i.kv = load i32, ptr %i.d, align 4, !tbaa !3   ; 3 uses
  %i.kw = icmp slt i32 %i.kv, %.sroa.speculated234
  br i1 %i.kw, label %.lr.ph320, label %.loopexit271

.lr.ph320:                                        ; preds = %bb.cg
  %i.kx = load i32, ptr %i.m, align 8, !tbaa !131
end_hunk_15
begin_hunk_16_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
  store i32 %i.qz, ptr %i.d, align 4, !tbaa !3
  %i.ra = add i64 %.0126318, 1
  %i.rb = icmp slt i32 %i.qz, %.sroa.speculated234
  br i1 %i.rb, label %bb.ch, label %.loopexit271, !llvm.loop !359

.loopexit271:                                     ; preds = %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit", %bb.cg, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader
  %15 = phi i32 [ %i.ks, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ], [ %i.fl, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader ], [ %i.kv, %bb.cg ], [ %i.qz, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit ] ; 3 uses
  %storemerge379 = phi ptr [ %i.kp, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ], [ %i.w, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader ], [ %i.w, %bb.cg ], [ %i.qw, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit ] ; 3 uses
  %storemerge = phi i64 [ %i.ko, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ], [ %i.y, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader ], [ %i.y, %bb.cg ], [ %i.qv, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit ] ; 2 uses
  %.sroa.0226.1 = phi ptr [ %i.fk, %"_ZZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEEENK3$_0clEi.exit" ], [ %i.fk, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader ], [ null, %bb.cg ], [ null, %_ZN11OpenImageIO4v3_19TIFFInput18separate_to_contigEmmNS0_4spanIKSt4byteLm18446744073709551615EEENS2_IS3_Lm18446744073709551615EEE.exit ] ; 4 uses
  store ptr %storemerge379, ptr %5, align 8
  %i.rc = load i32, ptr %i.k, align 4, !tbaa !137
  %i.rd = sub nsw i32 %15, %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %i.rd, ptr %i.re, align 4, !tbaa !98
  %.not = icmp slt i32 %15, %.sroa.speculated234
  br i1 %.not, label %.lr.ph336, label %._crit_edge337

.lr.ph336:                                        ; preds = %.loopexit271, %bb.cu
  %i.rf = phi i32 [ %i.rl, %bb.cu ], [ %15, %.loopexit271 ]
  %.sroa.01.0.copyload326334 = phi ptr [ %i.rj, %bb.cu ], [ %storemerge379, %.loopexit271 ] ; 3 uses
  %.sroa.2.0.copyload330333 = phi i64 [ %i.ri, %bb.cu ], [ %storemerge, %.loopexit271 ] ; 3 uses
  %i.rg = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_19TIFFInput27read_native_scanline_lockedEiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(432) %0, i32 poison, i32 poison, i32 noundef %i.rf, ptr %.sroa.01.0.copyload326334, i64 poison)
          to label %bb.cs unwind label %bb.ct

end_hunk_16
begin_hunk_17_@_ZN11OpenImageIO4v3_19TIFFInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE:bb.a
  br i1 %.not345, label %.lr.ph336, label %._crit_edge337, !llvm.loop !360

._crit_edge337:                                   ; preds = %bb.cu, %.loopexit271
  %.sroa.2.0.copyload330.lcssa = phi i64 [ %storemerge, %.loopexit271 ], [ %i.ri, %bb.cu ]
  %.sroa.01.0.copyload326.lcssa = phi ptr [ %storemerge379, %.loopexit271 ], [ %i.rj, %bb.cu ]
  store ptr %.sroa.01.0.copyload326.lcssa, ptr %5, align 8
  store i64 %.sroa.2.0.copyload330.lcssa, ptr %i.x, align 8
  invoke void @_ZN11OpenImageIO4v3_18task_set4waitEb(ptr noundef nonnull align 8 dereferenceable(40) %9, i1 noundef zeroext false)
end_hunk_17
