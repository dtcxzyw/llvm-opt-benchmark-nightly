Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/text_file_backend?download=true
inline.NumInlined: 3516
inline.NumDeleted: 1232
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5boost9algorithm6detail21find_format_all_impl2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13first_finderFIN9__gnu_cxx17__normal_iteratorIPKcS8_EENS0_8is_equalEEENS1_13empty_formatFIcEENS_14iterator_rangeINSB_IPcS8_EEEENS1_15empty_containerIcEEEEvRT_T0_T1_T2_T3_:bb.a
bb.f:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

._crit_edge:                                      ; preds = %bb.d, %.lr.ph36.i, %.loopexit, %.critedge9.i, %.._crit_edge_crit_edge
  %i.ab = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.o, %.critedge9.i ], [ %i.o, %.loopexit ], [ %i.o, %.lr.ph36.i ], [ %i.o, %bb.d ]
  %i.ac = phi ptr [ %i.a, %.._crit_edge_crit_edge ], [ %i.n, %.critedge9.i ], [ %i.n, %.loopexit ], [ %i.n, %.lr.ph36.i ], [ %i.n, %bb.d ]
  %.sroa.016.0.lcssa = phi ptr [ %i.a, %.._crit_edge_crit_edge ], [ %.sroa.7.051, %.critedge9.i ], [ %.sroa.7.051, %.loopexit ], [ %.sroa.7.051, %.lr.ph36.i ], [ %.sroa.7.051, %bb.d ]
  %.sroa.017.0.lcssa = phi ptr [ %i.a, %.._crit_edge_crit_edge ], [ %i.i, %.critedge9.i ], [ %i.i, %.loopexit ], [ %i.i, %.lr.ph36.i ], [ %i.i, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.af = invoke ptr @_ZN5boost9algorithm6detail22process_segment_helperILb0EEclISt5dequeIcSaIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcES6_EEN9__gnu_cxx17__normal_iteratorIPcSC_EEEET1_RT_RT0_SH_SH_SH_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.017.0.lcssa, ptr %.sroa.016.0.lcssa, ptr %i.ae)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !232 ; 2 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !232 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  %i.al = load ptr, ptr %0, align 8, !tbaa !39    ; 3 uses
  br i1 %i.ak, label %_ZN5boost9algorithm6detail5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENT_8iteratorERS9_SA_SA_.exit, label %bb.i

_ZN5boost9algorithm6detail5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENT_8iteratorERS9_SA_SA_.exit: ; preds = %bb.g
  %i.am = ptrtoint ptr %i.af to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  store i64 %i.ao, ptr %i.ad, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao
  store i8 0, ptr %i.ap, align 1, !tbaa !40
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ar = load i64, ptr %i.ad, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !233, !noalias !1059
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !233, !noalias !1060
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.aj, ptr %4, align 8, !tbaa !232
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ba = load <2 x ptr>, ptr %i.at, align 8, !tbaa !42, !noalias !1059
  store <2 x ptr> %i.ba, ptr %i.az, align 8, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.av, ptr %i.bb, align 8, !tbaa !233
  store ptr %i.ai, ptr %5, align 8, !tbaa !232
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bd = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !42, !noalias !1060
  store <2 x ptr> %i.bd, ptr %i.bc, align 8, !tbaa !42
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.ay, ptr %i.be, align 8, !tbaa !233
  %i.bf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE19_M_replace_dispatchISt15_Deque_iteratorIcRcPcEEERS4_N9__gnu_cxx17__normal_iteratorIPKcS4_EESF_T_SG_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.as, ptr %i.as, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5)
          to label %_ZN5boost9algorithm6detail6insertINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt15_Deque_iteratorIcRcPcEEEvRT_NSD_8iteratorET0_SG_.exit unwind label %.loopexit.split-lp ; 0 uses

_ZN5boost9algorithm6detail6insertINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt15_Deque_iteratorIcRcPcEEEvRT_NSD_8iteratorET0_SG_.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost9algorithm6detail6insertINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt15_Deque_iteratorIcRcPcEEEvRT_NSD_8iteratorET0_SG_.exit, %_ZN5boost9algorithm6detail5eraseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENT_8iteratorERS9_SA_SA_.exit
  %i.bg = load ptr, ptr %9, align 8, !tbaa !240   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %_ZNSt5dequeIcSaIcEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !241 ; 2 uses
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !242 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = icmp ult ptr %i.bj, %i.bl
  br i1 %i.bm, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i ], [ %i.bj, %bb.k ] ; 3 uses
  %i.bn = load ptr, ptr %.06.i.i.i, align 8, !tbaa !42
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef 512) #31
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.bp = icmp ult ptr %.06.i.i.i, %i.bk
  br i1 %i.bp, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i, !llvm.loop !17

_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %9, align 8, !tbaa !240
  br label %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i

_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i, %bb.k
  %i.bq = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.loopexit.i.i ], [ %i.bg, %bb.k ]
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !243
  %i.bt = shl i64 %i.bs, 3
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #31
  br label %_ZNSt5dequeIcSaIcEED2Ev.exit

_ZNSt5dequeIcSaIcEED2Ev.exit:                     ; preds = %bb.j, %_ZNSt11_Deque_baseIcSaIcEE16_M_destroy_nodesEPPcS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  ret void

bb.l:                                             ; preds = %.loopexit44, %.loopexit.split-lp, %bb.f, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.aa, %bb.f ], [ %lpad.loopexit, %.loopexit44 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt5dequeIcSaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9gregorian5to_tmERKNS0_4dateE(ptr dead_on_unwind noalias writable sret(%struct.tm) align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !161    ; 2 uses
  %i.b = add i32 %i.a, 2
  %i.c = icmp ult i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.99, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.d = load i32, ptr %1, align 4, !tbaa !161
  %switch.tableidx = add i32 %i.d, 2              ; 2 uses
  %i.e = icmp ult i32 %switch.tableidx, 3
  br i1 %i.e, label %switch.lookup, label %.invoke

bb.c:                                             ; preds = %.invoke
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

switch.lookup:                                    ; preds = %bb.b
  %i.g = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5boost9gregorian5to_tmERKNS0_4dateE, i64 %i.g
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.b, %switch.lookup
  %i.h = phi ptr [ %switch.load, %switch.lookup ], [ @.str.103, %bb.b ]
  %i.i = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %i.h)
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.d:                                             ; preds = %.invoke
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5boost15throw_exceptionISt12out_of_rangeEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %4) #29
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.j, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.f, %bb.c ]
  %i.l = load ptr, ptr %2, align 8, !tbaa !39     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.o = load i64, ptr %i.m, align 8, !tbaa !40
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn.pn

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %i.q = tail call i48 @_ZN5boost9date_time23gregorian_calendar_baseINS0_19year_month_day_baseINS_9gregorian9greg_yearENS3_10greg_monthENS3_8greg_dayEEEjE15from_day_numberEj(i32 noundef %i.a) ; 2 uses
  %.sroa.013.0.extract.trunc = trunc i48 %i.q to i32 ; 2 uses
  %5 = lshr i32 %.sroa.013.0.extract.trunc, 16
  %.sroa.5.0.extract.shift = lshr i48 %i.q, 32
  %.sroa.5.0.extract.trunc = trunc nuw nsw i48 %.sroa.5.0.extract.shift to i32
  %i.r = and i32 %.sroa.013.0.extract.trunc, 65535
  %i.s = add nsw i32 %i.r, -1900
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.s, ptr %i.t, align 4, !tbaa !276
  %i.u = add nsw i32 %5, -1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.u, ptr %i.v, align 8, !tbaa !222
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.5.0.extract.trunc, ptr %i.w, align 4, !tbaa !277
  %i.x = tail call i16 @_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEE11day_of_weekEv(ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.y = zext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.y, ptr %i.z, align 8, !tbaa !221
  %i.aa = tail call i16 @_ZNK5boost9gregorian4date11day_of_yearEv(ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.ab = zext i16 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !1061
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.ae, align 8, !tbaa !275
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost15throw_exceptionISt12out_of_rangeEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 64) #28 ; 3 uses
  invoke void @_ZN5boost10wrapexceptISt12out_of_rangeEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt12out_of_rangeEE, ptr nonnull @_ZN5boost10wrapexceptISt12out_of_rangeED2Ev) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #28
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i16 @_ZNK5boost9gregorian4date11day_of_yearEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !161
  %i.b = tail call i48 @_ZN5boost9date_time23gregorian_calendar_baseINS0_19year_month_day_baseINS_9gregorian9greg_yearENS3_10greg_monthENS3_8greg_dayEEEjE15from_day_numberEj(i32 noundef %i.a)
  %.fr = freeze i48 %i.b
  %.sroa.0.0.extract.trunc.i = trunc i48 %.fr to i32
  %i.c = add i32 %.sroa.0.0.extract.trunc.i, 4799 ; 2 uses
  %i.d = and i32 %i.c, 65535                      ; 2 uses
  %i.e = mul nuw nsw i32 %i.d, 365
  %i.f = lshr i32 %i.d, 2
  %.lhs.trunc.i.i.i = trunc i32 %i.c to i16       ; 2 uses
  %i.g = udiv i16 %.lhs.trunc.i.i.i, 100
  %.zext.i.i.i = zext nneg i16 %i.g to i32
  %i.h = udiv i16 %.lhs.trunc.i.i.i, 400
  %.zext12.i.i.i = zext nneg i16 %i.h to i32
  %i.i = add nsw i32 %i.e, -32044
  %i.j = add nsw i32 %i.i, %i.f
  %i.k = sub nsw i32 %i.j, %.zext.i.i.i
  %i.l = add nsw i32 %i.k, %.zext12.i.i.i         ; 2 uses
  %i.m = add nsw i32 %i.l, 306                    ; 8 uses
  %i.n = load i32, ptr %0, align 4, !tbaa !161    ; 6 uses
  %i.o = add i32 %i.n, 2
  %i.p = icmp ult i32 %i.o, 3
  br i1 %i.p, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = add nsw i32 %i.l, 308
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = trunc i32 %i.n to i16
  %i.t = trunc i32 %i.m to i16
  %i.u = sub i16 %i.s, %i.t
  br label %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit

bb.d:                                             ; preds = %bb.a
  %i.v = icmp eq i32 %i.n, -2
  %i.w = icmp eq i32 %i.m, -2
  %or.cond = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond, label %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread.thread9, label %bb.e

.thread.i.i:                                      ; preds = %bb.b
  %.old = icmp eq i32 %i.m, -2
  br i1 %.old, label %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread.thread9, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i.i
  switch i32 %i.n, label %bb.h [
    i32 -1, label %bb.f
    i32 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %i.m, -1
  br i1 %i.x, label %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread.thread9, label %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread6

bb.g:                                             ; preds = %bb.e
  %i.y = icmp eq i32 %i.m, 0
  br i1 %i.y, label %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread.thread9, label %_ZN5boost2CV17constrained_valueINS0_23simple_exception_policyItLt1ELt366ENS_9gregorian15bad_day_of_yearEEEEC2Et.exit

bb.h:                                             ; preds = %bb.e
  switch i32 %i.m, label %_ZNK5boost9date_time11int_adapterIjEmiIjEES2_RKNS1_IT_EE.exit.i [
    i32 -1, label %_ZN5boost2CV17constrained_valueINS0_23simple_exception_policyItLt1ELt366ENS_9gregorian15bad_day_of_yearEEEEC2Et.exit
    i32 0, label %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread6
  ]

_ZNK5boost9date_time11int_adapterIjEmiIjEES2_RKNS1_IT_EE.exit.i: ; preds = %bb.h
  %i.z = sub i32 %i.n, %i.m
  %switch.selectcmp.i = icmp eq i32 %i.n, %i.m
  %switch.select.i = select i1 %switch.selectcmp.i, i16 0, i16 -2
  %switch.selectcmp21.i = icmp eq i32 %i.z, -1
  %switch.select22.i = select i1 %switch.selectcmp21.i, i16 -1, i16 %switch.select.i
  br label %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit

_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit: ; preds = %bb.c, %_ZNK5boost9date_time11int_adapterIjEmiIjEES2_RKNS1_IT_EE.exit.i
  %.sroa.08.0.i = phi i16 [ %i.u, %bb.c ], [ %switch.select22.i, %_ZNK5boost9date_time11int_adapterIjEmiIjEES2_RKNS1_IT_EE.exit.i ]
  %i.aa = add i16 %.sroa.08.0.i, 1                ; 4 uses
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread6, label %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread

_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread6: ; preds = %bb.h, %bb.f, %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit
  tail call void @_ZN5boost2CV23simple_exception_policyItLt1ELt366ENS_9gregorian15bad_day_of_yearEE8on_errorEttNS0_14violation_enumE(i16 noundef zeroext 1, i16 noundef zeroext 0, i32 noundef 0)
  br label %_ZN5boost2CV17constrained_valueINS0_23simple_exception_policyItLt1ELt366ENS_9gregorian15bad_day_of_yearEEEEC2Et.exit

_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread: ; preds = %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit
  %i.ac = icmp ugt i16 %i.aa, 366
  br i1 %i.ac, label %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread.thread9, label %_ZN5boost2CV17constrained_valueINS0_23simple_exception_policyItLt1ELt366ENS_9gregorian15bad_day_of_yearEEEEC2Et.exit

_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread.thread9: ; preds = %bb.g, %bb.f, %.thread.i.i, %bb.d, %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread
  %i.ad = phi i16 [ %i.aa, %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread ], [ -1, %bb.d ], [ -1, %.thread.i.i ], [ -1, %bb.f ], [ -1, %bb.g ]
  tail call void @_ZN5boost2CV23simple_exception_policyItLt1ELt366ENS_9gregorian15bad_day_of_yearEE8on_errorEttNS0_14violation_enumE(i16 noundef zeroext 1, i16 noundef zeroext %i.ad, i32 noundef 1)
  br label %_ZN5boost2CV17constrained_valueINS0_23simple_exception_policyItLt1ELt366ENS_9gregorian15bad_day_of_yearEEEEC2Et.exit

_ZN5boost2CV17constrained_valueINS0_23simple_exception_policyItLt1ELt366ENS_9gregorian15bad_day_of_yearEEEEC2Et.exit: ; preds = %bb.g, %bb.h, %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread, %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread6, %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread.thread9
  %.sroa.04.0 = phi i16 [ 1, %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread6 ], [ 1, %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread.thread9 ], [ %i.aa, %_ZNK5boost9date_time4dateINS_9gregorian4dateENS2_18gregorian_calendarENS2_13date_durationEEmiERKS3_.exit.thread ], [ 1, %bb.h ], [ 1, %bb.g ]
  ret i16 %.sroa.04.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt12out_of_rangeEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %0, align 8, !tbaa !65
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.d, align 8, !tbaa !252
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 -1, ptr %i.e, align 4, !tbaa !253
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt12out_of_rangeEE, i64 16), ptr %0, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt12out_of_rangeEE, i64 64), ptr %i.a, align 8, !tbaa !65
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt12out_of_rangeEE, i64 104), ptr %i.b, align 8, !tbaa !65
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost10wrapexceptISt12out_of_rangeED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !254  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5boost9exceptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost9exceptionD2Ev.exit unwind label %bb.c, !inline_history !19 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #30
  unreachable

_ZN5boost9exceptionD2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt12out_of_rangeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.j) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost10wrapexceptISt12out_of_rangeE5cloneEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %i.a, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c) #28, !inline_history !1064
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12out_of_range, i64 16), ptr %i.b, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.d, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
end_hunk_0
