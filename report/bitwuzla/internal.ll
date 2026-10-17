Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/internal?download=true
inline.NumInlined: 2057
inline.NumDeleted: 1077
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  %.06.i.i.i81 = phi ptr [ %i.br, %.noexc83 ], [ %1, %_ZSt22__uninitialized_move_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit78 ] ; 2 uses
  %i.bq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i81, ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit ; 0 uses

.noexc83:                                         ; preds = %.lr.ph.i.i.i80
  %i.br = getelementptr inbounds nuw i8, ptr %.06.i.i.i81, i64 24 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.br, %i.z
  br i1 %.not.i.i.i82, label %_ZSt4fillIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES4_EvT_S6_RKT0_.exit, label %.lr.ph.i.i.i80, !llvm.loop !495

_ZSt4fillIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES4_EvT_S6_RKT0_.exit: ; preds = %.noexc83, %.noexc, %_ZSt22__uninitialized_move_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit78.thread
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !197 ; 2 uses
  %.not.i.i.i.i85 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i85, label %_ZNSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE16_Temporary_valueD2Ev.exit86, label %bb.i

bb.i:                                             ; preds = %_ZSt4fillIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES4_EvT_S6_RKT0_.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bs) #22
  br label %_ZNSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE16_Temporary_valueD2Ev.exit86

_ZNSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE16_Temporary_valueD2Ev.exit86: ; preds = %_ZSt4fillIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES4_EvT_S6_RKT0_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.s

bb.j:                                             ; preds = %bb.b
  %i.bt = load ptr, ptr %0, align 8, !tbaa !193   ; 7 uses
  %i.bu = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bv = sub i64 %i.f, %i.bu
  %i.bw = sdiv exact i64 %i.bv, 24                ; 4 uses
  %i.bx = sub nsw i64 384307168202282325, %i.bw
  %i.by = icmp ult i64 %i.bx, %2
  br i1 %i.by, label %bb.k, label %_ZNKSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
  unreachable

_ZNKSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 %2)
  %i.bz = add nsw i64 %.sroa.speculated.i, %i.bw  ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.bw
  %i.cb = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 384307168202282325)
  %i.cc = select i1 %i.ca, i64 384307168202282325, i64 %i.cb ; 3 uses
  %i.cd = ptrtoint ptr %1 to i64
  %i.ce = sub i64 %i.cd, %i.bu
  %.not.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE11_M_allocateEm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit
  %i.cf = mul nuw nsw i64 %i.cc, 24
  %i.cg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #21
  br label %_ZNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit, %bb.l
  %i.ch = phi ptr [ %i.cg, %bb.l ], [ null, %_ZNKSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ce ; 3 uses
  %i.cj = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIN7CaDiCaL5WatchESaIS2_EEmS4_ET_S6_T0_RKT1_(ptr noundef %i.ci, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZSt24__uninitialized_fill_n_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit88 unwind label %bb.o ; 0 uses

_ZSt24__uninitialized_fill_n_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit88: ; preds = %_ZNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE11_M_allocateEm.exit
  %.not11.i.i.i.i.i89 = icmp eq ptr %i.bt, %1
  br i1 %.not11.i.i.i.i.i89, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i90

.lr.ph.i.i.i.i.i90:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit88, %.lr.ph.i.i.i.i.i90
  %.013.i.i.i.i.i91 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i90 ], [ %i.ch, %_ZSt24__uninitialized_fill_n_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit88 ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i92 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i90 ], [ %i.bt, %_ZSt24__uninitialized_fill_n_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit88 ] ; 4 uses
  %i.ck = load <2 x ptr>, ptr %.sroa.08.012.i.i.i.i.i92, align 8, !tbaa !308
  store <2 x ptr> %i.ck, ptr %.013.i.i.i.i.i91, align 8, !tbaa !308
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i91, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i92, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !309
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !309
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i92, i8 0, i64 24, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i92, i64 24 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i91, i64 24 ; 2 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %i.co, %1
  br i1 %.not.i.i.i.i.i93, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i90, !llvm.loop !493

_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i90, %_ZSt24__uninitialized_fill_n_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit88
  %.0.lcssa.i.i.i.i.i94 = phi ptr [ %i.ch, %_ZSt24__uninitialized_fill_n_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit88 ], [ %i.cp, %.lr.ph.i.i.i.i.i90 ]
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %.0.lcssa.i.i.i.i.i94, i64 %2 ; 2 uses
  %.not11.i.i.i.i.i95 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i95, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit101, label %.lr.ph.i.i.i.i.i96

.lr.ph.i.i.i.i.i96:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %.lr.ph.i.i.i.i.i96
  %.013.i.i.i.i.i97 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i96 ], [ %i.cq, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i98 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i96 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit ] ; 4 uses
  %i.cr = load <2 x ptr>, ptr %.sroa.08.012.i.i.i.i.i98, align 8, !tbaa !308
  store <2 x ptr> %i.cr, ptr %.013.i.i.i.i.i97, align 8, !tbaa !308
  %i.cs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i97, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i98, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !309
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !309
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i98, i8 0, i64 24, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i98, i64 24 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i97, i64 24 ; 2 uses
  %.not.i.i.i.i.i99 = icmp eq ptr %i.cv, %i.d
  br i1 %.not.i.i.i.i.i99, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit101, label %.lr.ph.i.i.i.i.i96, !llvm.loop !493

_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit101: ; preds = %.lr.ph.i.i.i.i.i96, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %.0.lcssa.i.i.i.i.i100 = phi ptr [ %i.cq, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.cw, %.lr.ph.i.i.i.i.i96 ]
  %.not4.i.i = icmp eq ptr %i.bt, %i.d
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN7CaDiCaL5WatchESaIS2_EEEvT_S6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit101, %_ZSt8_DestroyISt6vectorIN7CaDiCaL5WatchESaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.cy, %_ZSt8_DestroyISt6vectorIN7CaDiCaL5WatchESaIS2_EEEvPT_.exit.i.i ], [ %i.bt, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit101 ] ; 2 uses
  %i.cx = load ptr, ptr %.05.i.i, align 8, !tbaa !197 ; 2 uses
  %.not.i.i.i.i.i.i102 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i.i102, label %_ZSt8_DestroyISt6vectorIN7CaDiCaL5WatchESaIS2_EEEvPT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.cx) #22
  br label %_ZSt8_DestroyISt6vectorIN7CaDiCaL5WatchESaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN7CaDiCaL5WatchESaIS2_EEEvPT_.exit.i.i: ; preds = %bb.m, %.lr.ph.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cy, %i.d
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN7CaDiCaL5WatchESaIS2_EEEvT_S6_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIN7CaDiCaL5WatchESaIS2_EEEvT_S6_.exit: ; preds = %_ZSt8_DestroyISt6vectorIN7CaDiCaL5WatchESaIS2_EEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit101
  %.not.i103 = icmp eq ptr %i.bt, null
  br i1 %.not.i103, label %_ZNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN7CaDiCaL5WatchESaIS2_EEEvT_S6_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.bt) #22
  br label %_ZNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN7CaDiCaL5WatchESaIS2_EEEvT_S6_.exit, %bb.n
  store ptr %i.ch, ptr %0, align 8, !tbaa !193
  store ptr %.0.lcssa.i.i.i.i.i100, ptr %i.c, align 8, !tbaa !194
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %i.cc
  store ptr %i.cz, ptr %i.a, align 8, !tbaa !496
  br label %bb.s

bb.o:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE11_M_allocateEm.exit
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  %i.dc = tail call ptr @__cxa_begin_catch(ptr %i.db) #23 ; 0 uses
  %.not66 = icmp eq ptr %i.ch, null
  br i1 %.not66, label %bb.p, label %_ZSt8_DestroyIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit68.thread126

bb.p:                                             ; preds = %bb.o
  %.idx128 = mul nuw nsw i64 %2, 24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx128
  br label %.lr.ph.i.i105

.lr.ph.i.i105:                                    ; preds = %bb.p, %_ZSt8_DestroyISt6vectorIN7CaDiCaL5WatchESaIS2_EEEvPT_.exit.i.i108
  %.05.i.i106 = phi ptr [ %i.df, %_ZSt8_DestroyISt6vectorIN7CaDiCaL5WatchESaIS2_EEEvPT_.exit.i.i108 ], [ %i.ci, %bb.p ] ; 2 uses
  %i.de = load ptr, ptr %.05.i.i106, align 8, !tbaa !197 ; 2 uses
  %.not.i.i.i.i.i.i107 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i.i.i107, label %_ZSt8_DestroyISt6vectorIN7CaDiCaL5WatchESaIS2_EEEvPT_.exit.i.i108, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i105
  tail call void @_ZdlPv(ptr noundef nonnull %i.de) #22
  br label %_ZSt8_DestroyISt6vectorIN7CaDiCaL5WatchESaIS2_EEEvPT_.exit.i.i108

_ZSt8_DestroyISt6vectorIN7CaDiCaL5WatchESaIS2_EEEvPT_.exit.i.i108: ; preds = %bb.q, %.lr.ph.i.i105
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i106, i64 24 ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.df, %i.dd
  br i1 %.not.i.i109, label %_ZNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit118, label %.lr.ph.i.i105, !llvm.loop !0

bb.r:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit118
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

_ZSt8_DestroyIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit68.thread126: ; preds = %bb.o
  tail call void @_ZdlPv(ptr noundef nonnull %i.ch) #22
  br label %_ZNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit118

_ZNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit118: ; preds = %_ZSt8_DestroyISt6vectorIN7CaDiCaL5WatchESaIS2_EEEvPT_.exit.i.i108, %_ZSt8_DestroyIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit68.thread126
  invoke void @__cxa_rethrow() #20
          to label %bb.v unwind label %bb.r

bb.s:                                             ; preds = %_ZNSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE16_Temporary_valueD2Ev.exit86, %_ZNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void

bb.t:                                             ; preds = %bb.r, %_ZNSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE16_Temporary_valueD2Ev.exit
  %.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE16_Temporary_valueD2Ev.exit ], [ %i.dg, %bb.r ]
  resume { ptr, i32 } %.pn

bb.u:                                             ; preds = %bb.r
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  tail call void @__clang_call_terminate(ptr %i.di) #24
  unreachable

bb.v:                                             ; preds = %_ZNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit118
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !197    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !309
  %i.i = load ptr, ptr %0, align 8, !tbaa !197    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE11_M_allocateEm.exit.i, !prof !307

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE11_M_allocateEm.exit.i
  %i.o = add i64 %i.d, -16
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -16
  %i.r = add i64 %i.q, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8, !tbaa !197      ; 2 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %3) #22
  br label %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !197
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !309
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !306
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp sgt i64 %i.f, 16
  br i1 %i.x, label %bb.h, label %bb.i, !prof !304

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.y = icmp eq i64 %i.f, 16
  br i1 %i.y, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !310
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.w, 16
  br i1 %i.z, label %bb.l, label %bb.m, !prof !304

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  br label %_ZSt4copyIPN7CaDiCaL5WatchES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.aa = icmp eq i64 %i.w, 16
  br i1 %i.aa, label %bb.n, label %_ZSt4copyIPN7CaDiCaL5WatchES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !310
  br label %_ZSt4copyIPN7CaDiCaL5WatchES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN7CaDiCaL5WatchES2_ET0_T_S4_S3_.exit:  ; preds = %bb.l, %bb.m, %bb.n
  %i.ab = load ptr, ptr %1, align 8, !tbaa !197
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !306 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !197
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !306 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN7CaDiCaL5WatchES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.ac, %_ZSt4copyIPN7CaDiCaL5WatchES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.ah, %_ZSt4copyIPN7CaDiCaL5WatchES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false), !tbaa.struct !310
  %i.aj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !501

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN7CaDiCaL5WatchES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !197
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !306
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIN7CaDiCaL5WatchESaIS2_EEmS4_ET_S6_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not18 = icmp eq i64 %1, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !197
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.b = phi ptr [ %.pre, %.lr.ph ], [ %i.m, %.loopexit ] ; 2 uses
  %.020 = phi ptr [ %0, %.lr.ph ], [ %i.r, %.loopexit ] ; 7 uses
  %.01119 = phi i64 [ %1, %.lr.ph ], [ %i.q, %.loopexit ]
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !306  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.020, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i.i.i.i.i, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN7CaDiCaL5WatchEE8allocateEmPKv.exit.i.i.i.i.i, !prof !307

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN7CaDiCaL5WatchEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21
          to label %.noexc12 unwind label %.loopexit14

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorIN7CaDiCaL5WatchEE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.i = phi ptr [ null, %bb.b ], [ %i.h, %_ZNSt15__new_allocatorIN7CaDiCaL5WatchEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.020, align 8, !tbaa !197
  %i.j = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !306
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.020, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !309
  %i.m = load ptr, ptr %2, align 8, !tbaa !308    ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !308  ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc12, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %.noexc12 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.noexc12 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !310
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !8

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc12
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc12 ], [ %i.p, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !306
  %i.q = add i64 %.01119, -1                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.020, i64 24 ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !502

.loopexit14:                                      ; preds = %_ZNSt15__new_allocatorIN7CaDiCaL5WatchEE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit14
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit14 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.s = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #23 ; 0 uses
  %.not4.i.i = icmp eq ptr %0, %.020
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN7CaDiCaL5WatchESaIS2_EEEvT_S6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZSt8_DestroyISt6vectorIN7CaDiCaL5WatchESaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt6vectorIN7CaDiCaL5WatchESaIS2_EEEvPT_.exit.i.i ], [ %0, %bb.d ] ; 2 uses
  %i.u = load ptr, ptr %.05.i.i, align 8, !tbaa !197 ; 2 uses
  %.not.i.i.i.i.i.i13 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i13, label %_ZSt8_DestroyISt6vectorIN7CaDiCaL5WatchESaIS2_EEEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.u) #22
  br label %_ZSt8_DestroyISt6vectorIN7CaDiCaL5WatchESaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN7CaDiCaL5WatchESaIS2_EEEvPT_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %.020
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN7CaDiCaL5WatchESaIS2_EEEvT_S6_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIN7CaDiCaL5WatchESaIS2_EEEvT_S6_.exit: ; preds = %_ZSt8_DestroyISt6vectorIN7CaDiCaL5WatchESaIS2_EEEvPT_.exit.i.i, %bb.d
  invoke void @__cxa_rethrow() #20
          to label %bb.i unwind label %bb.f

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.r, %.loopexit ]
  ret ptr %.0.lcssa

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN7CaDiCaL5WatchESaIS2_EEEvT_S6_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.w

bb.h:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #24
  unreachable
end_hunk_0
