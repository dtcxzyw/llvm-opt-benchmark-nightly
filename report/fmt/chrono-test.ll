Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/chrono-test?download=true
inline.NumInlined: 21374
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 225
begin_hunk_0_@_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_:bb.a

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cg = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load = load <16 x i8>, ptr %i.ch, align 1, !tbaa !232
  %wide.load31 = load <16 x i8>, ptr %i.ci, align 1, !tbaa !232
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <16 x i8> %wide.load, ptr %i.cj, align 1, !tbaa !232
  store <16 x i8> %wide.load31, ptr %i.ck, align 1, !tbaa !232
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !5772

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !327

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index33
  %wide.load34 = load <4 x i8>, ptr %i.cm, align 1, !tbaa !232
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 %index33
  store <4 x i8> %wide.load34, ptr %i.cn, align 1, !tbaa !232
  %index.next35 = add nuw i64 %index33, 4         ; 2 uses
  %i.co = icmp eq i64 %index.next35, %n.vec32
  br i1 %i.co, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5773

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %.025.i.i.i, %n.vec32
  br i1 %cmp.n36, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec32, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.cs, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !232
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.030.i.i.i.prol
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !232
  %i.cs = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !5774

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.cs, %.lr.ph.i.i.i.prol ]
  %i.ct = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.q, align 8, !tbaa !354
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.l
  %i.cv = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.l ]
  %i.cw = add i64 %i.cv, %.025.i.i.i              ; 2 uses
  store i64 %i.cw, ptr %i.q, align 8, !tbaa !354
  %i.cx = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cx, %i.bm
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit, label %bb.j, !llvm.loop !5

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.dn, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !232
  %i.da = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.030.i.i.i
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !232
  %i.db = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !232
  %i.de = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.db
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !232
  %i.df = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !232
  %i.di = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.df
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !232
  %i.dj = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !232
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.dj
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !232
  %i.dn = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.dn, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !5775

_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEEET0_S5_PKci.exit: ; preds = %._crit_edge.i.i.i, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !281
  %i.e = fdiv float %i.d, 3.600000e+03
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 2.400000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !281
  %i.i = fdiv float %i.h, 3.600000e+03
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef 2.400000e+01) #30 ; 2 uses
  %i.k = fptosi float %i.j to i32                 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt float %i.j, 2.400000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.k, ptr %i.p, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !281
  %i.e = fdiv float %i.d, 3.600000e+03
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 1.200000e+01) #30 ; 2 uses
  %i.g = fcmp ole float %i.f, 0.000000e+00
  %i.h = select i1 %i.g, float 1.200000e+01, float %i.f
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.h, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !281
  %i.k = fdiv float %i.j, 3.600000e+03
  %i.l = tail call noundef float @fmodf(float noundef %i.k, float noundef 1.200000e+01) #30 ; 2 uses
  %i.m = fcmp ole float %i.l, 0.000000e+00
  %i.n = select i1 %i.m, float 1.200000e+01, float %i.l ; 2 uses
  %i.o = fcmp ogt float %i.n, 1.200000e+01
  br i1 %i.o, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #30
  resume { ptr, i32 } %i.q

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %4 = fptosi float %i.n to i32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %4, ptr %i.r, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !281
  %i.e = fdiv float %i.d, 6.000000e+01
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 6.000000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !281
  %i.i = fdiv float %i.h, 6.000000e+01
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef 6.000000e+01) #30 ; 2 uses
  %i.k = fptosi float %i.j to i32                 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt float %i.j, 6.000000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.k, ptr %i.p, align 4, !tbaa !199
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.334", align 16 ; 5 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %5 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.d, align 8, !tbaa !260
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !338
  store i64 500, ptr %i.c, align 8, !tbaa !339
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load float, ptr %i.g, align 8, !tbaa !499 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !503  ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = call noundef float @llvm.round.f32(float %i.h)
  %i.m = fcmp une float %i.l, %i.h
  %spec.select.i = select i1 %i.m, i32 6, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ %i.j, %bb.c ], [ %spec.select.i, %bb.d ]
  %i.n = call noundef float @fmodf(float noundef %i.h, float noundef 6.000000e+01) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store float %i.n, ptr %3, align 16, !tbaa !232
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.0.i, ptr %i.o, align 16, !tbaa !232
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(533) %4, ptr nonnull @.str.1279, i64 7, i64 25, ptr nonnull %3, ptr null)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i8, ptr %i.p, align 8, !tbaa !502, !range !249, !noundef !250
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !354  ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !339
  %i.x = icmp ugt i64 %i.u, %i.w
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !260
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.u)
          to label %.noexc unwind label %bb.k, !inline_history !101

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load i64, ptr %i.s, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g
  %.pre-phi.i.i = phi i64 [ %i.u, %bb.g ], [ %.pre2.i.i, %.noexc ]
  %i.aa = phi i64 [ %i.t, %bb.g ], [ %.pre.i.i, %.noexc ]
  %i.ab = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.s, align 8, !tbaa !354
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  store i8 45, ptr %i.ac, align 1, !tbaa !232
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.l:                                             ; preds = %bb.i, %bb.f
  %i.af = load i64, ptr %i.e, align 8, !tbaa !354 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 2
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %4, align 8, !tbaa !338   ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !232
  %i.ak = icmp eq i8 %i.aj, 46
  br i1 %i.ak, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  %.sroa.01.0.copyload.pre = load ptr, ptr %0, align 8, !tbaa !351
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  br label %.lr.ph34.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 8 uses
  %.not.i = icmp eq i32 %2, 1
  br i1 %.not.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = icmp eq i32 %2, 2
  %i.an = select i1 %i.am, i8 32, i8 48
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 8 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !354 ; 2 uses
  %i.aq = add i64 %i.ap, 1                        ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !339
  %i.at = icmp ugt i64 %i.aq, %i.as
  br i1 %i.at, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !260
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.0.copyload, i64 noundef %i.aq)
          to label %.noexc13 unwind label %bb.q, !inline_history !107

end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail19parse_chrono_formatIcRNS1_18duration_formatterIcfSt5ratioILl1ELl1000EEEEEEPKT_SA_SA_OT0_:bb.a

vector.body341:                                   ; preds = %vector.body341, %vector.ph339
  %index342 = phi i64 [ 0, %vector.ph339 ], [ %index.next345, %vector.body341 ] ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %index342 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load343 = load <16 x i8>, ptr %i.ig, align 1, !tbaa !232
  %wide.load344 = load <16 x i8>, ptr %i.ih, align 1, !tbaa !232
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 %index342 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <16 x i8> %wide.load343, ptr %i.ii, align 1, !tbaa !232
  store <16 x i8> %wide.load344, ptr %i.ij, align 1, !tbaa !232
  %index.next345 = add nuw i64 %index342, 32      ; 2 uses
  %i.ik = icmp eq i64 %index.next345, %n.vec340
  br i1 %i.ik, label %middle.block346, label %vector.body341, !llvm.loop !5803

middle.block346:                                  ; preds = %vector.body341
  %cmp.n347 = icmp eq i64 %.025.i.i.i208, %n.vec340
  br i1 %cmp.n347, label %._crit_edge.loopexit.i.i.i213, label %vec.epilog.iter.check351

vec.epilog.iter.check351:                         ; preds = %middle.block346
  %min.epilog.iters.check352 = icmp eq i64 %i.if, 0
  br i1 %min.epilog.iters.check352, label %.lr.ph.i.i.i210.preheader, label %vec.epilog.ph353, !prof !327

vec.epilog.ph353:                                 ; preds = %vector.main.loop.iter.check337, %vec.epilog.iter.check351
  %vec.epilog.resume.val348 = phi i64 [ %n.vec340, %vec.epilog.iter.check351 ], [ 0, %vector.main.loop.iter.check337 ]
  %n.vec354 = and i64 %.025.i.i.i208, -4          ; 3 uses
  br label %vec.epilog.vector.body355

vec.epilog.vector.body355:                        ; preds = %vec.epilog.vector.body355, %vec.epilog.ph353
  %index356 = phi i64 [ %vec.epilog.resume.val348, %vec.epilog.ph353 ], [ %index.next358, %vec.epilog.vector.body355 ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %index356
  %wide.load357 = load <4 x i8>, ptr %i.il, align 1, !tbaa !232
  %i.im = getelementptr inbounds nuw i8, ptr %i.ic, i64 %index356
  store <4 x i8> %wide.load357, ptr %i.im, align 1, !tbaa !232
  %index.next358 = add nuw i64 %index356, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next358, %n.vec354
  br i1 %i.in, label %vec.epilog.middle.block359, label %vec.epilog.vector.body355, !llvm.loop !5804

vec.epilog.middle.block359:                       ; preds = %vec.epilog.vector.body355
  %cmp.n360 = icmp eq i64 %.025.i.i.i208, %n.vec354
  br i1 %cmp.n360, label %._crit_edge.loopexit.i.i.i213, label %.lr.ph.i.i.i210.preheader

.lr.ph.i.i.i210.preheader:                        ; preds = %vector.memcheck334, %iter.check349, %vec.epilog.iter.check351, %vec.epilog.middle.block359
  %.030.i.i.i211.ph = phi i64 [ 0, %iter.check349 ], [ 0, %vector.memcheck334 ], [ %n.vec340, %vec.epilog.iter.check351 ], [ %n.vec354, %vec.epilog.middle.block359 ] ; 3 uses
  %xtraiter365 = and i64 %.025.i.i.i208, 3        ; 2 uses
  %lcmp.mod366.not = icmp eq i64 %xtraiter365, 0
  br i1 %lcmp.mod366.not, label %.lr.ph.i.i.i210.prol.loopexit, label %.lr.ph.i.i.i210.prol

.lr.ph.i.i.i210.prol:                             ; preds = %.lr.ph.i.i.i210.preheader, %.lr.ph.i.i.i210.prol
  %.030.i.i.i211.prol = phi i64 [ %i.ir, %.lr.ph.i.i.i210.prol ], [ %.030.i.i.i211.ph, %.lr.ph.i.i.i210.preheader ] ; 3 uses
  %prol.iter367 = phi i64 [ %prol.iter367.next, %.lr.ph.i.i.i210.prol ], [ 0, %.lr.ph.i.i.i210.preheader ]
  %i.io = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %.030.i.i.i211.prol
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !232
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.030.i.i.i211.prol
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !232
  %i.ir = add nuw i64 %.030.i.i.i211.prol, 1      ; 2 uses
  %prol.iter367.next = add i64 %prol.iter367, 1   ; 2 uses
  %prol.iter367.cmp.not = icmp eq i64 %prol.iter367.next, %xtraiter365
  br i1 %prol.iter367.cmp.not, label %.lr.ph.i.i.i210.prol.loopexit, label %.lr.ph.i.i.i210.prol, !llvm.loop !5805

.lr.ph.i.i.i210.prol.loopexit:                    ; preds = %.lr.ph.i.i.i210.prol, %.lr.ph.i.i.i210.preheader
  %.030.i.i.i211.unr = phi i64 [ %.030.i.i.i211.ph, %.lr.ph.i.i.i210.preheader ], [ %i.ir, %.lr.ph.i.i.i210.prol ]
  %i.is = sub i64 %.030.i.i.i211.ph, %.025.i.i.i208
  %i.it = icmp ugt i64 %i.is, -4
  br i1 %i.it, label %._crit_edge.loopexit.i.i.i213, label %.lr.ph.i.i.i210

._crit_edge.loopexit.i.i.i213:                    ; preds = %.lr.ph.i.i.i210.prol.loopexit, %.lr.ph.i.i.i210, %vec.epilog.middle.block359, %middle.block346
  %.pre37.i.i.i214 = load i64, ptr %i.hk, align 8, !tbaa !354
  br label %._crit_edge.i.i.i215

._crit_edge.i.i.i215:                             ; preds = %._crit_edge.loopexit.i.i.i213, %bb.bx
  %i.iu = phi i64 [ %.pre37.i.i.i214, %._crit_edge.loopexit.i.i.i213 ], [ %.026.i.i.i207, %bb.bx ]
  %i.iv = add i64 %i.iu, %.025.i.i.i208           ; 2 uses
  store i64 %i.iv, ptr %i.hk, align 8, !tbaa !354
  %i.iw = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %.025.i.i.i208 ; 2 uses
  %.not.i.i.i216 = icmp eq ptr %i.iw, %.0129.lcssa.ph
  br i1 %.not.i.i.i216, label %_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE7on_textEPKcS7_.exit217, label %bb.bv, !llvm.loop !5

.lr.ph.i.i.i210:                                  ; preds = %.lr.ph.i.i.i210.prol.loopexit, %.lr.ph.i.i.i210
  %.030.i.i.i211 = phi i64 [ %i.jm, %.lr.ph.i.i.i210 ], [ %.030.i.i.i211.unr, %.lr.ph.i.i.i210.prol.loopexit ] ; 6 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %.030.i.i.i211
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !232
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.030.i.i.i211
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !232
  %i.ja = add nuw i64 %.030.i.i.i211, 1           ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !232
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ja
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !232
  %i.je = add nuw i64 %.030.i.i.i211, 2           ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !232
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.je
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !232
  %i.ji = add nuw i64 %.030.i.i.i211, 3           ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !232
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ji
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !232
  %i.jm = add nuw i64 %.030.i.i.i211, 4           ; 2 uses
  %exitcond.not.i.i.i212.3 = icmp eq i64 %i.jm, %.025.i.i.i208
  br i1 %exitcond.not.i.i.i212.3, label %._crit_edge.loopexit.i.i.i213, label %.lr.ph.i.i.i210, !llvm.loop !5806

_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE7on_textEPKcS7_.exit217: ; preds = %._crit_edge.i.i.i215, %_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE7on_textEPKcS7_.exit167.thread, %bb.b, %bb.a
  %.0134 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.0129.lcssa.ph, %_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE7on_textEPKcS7_.exit167.thread ], [ %.0129.lcssa.ph, %._crit_edge.i.i.i215 ]
  ret ptr %.0134

bb.by:                                            ; preds = %bb.n, %bb.u, %bb.bb, %bb.bf, %bb.bj, %bb.br, %bb.bu, %bb.e
  %.pn150 = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.bq, %bb.n ], [ %i.bw, %bb.u ], [ %i.hf, %bb.bu ], [ %i.gs, %bb.bb ], [ %i.gw, %bb.bf ], [ %i.gz, %bb.bj ], [ %i.hd, %bb.br ]
  resume { ptr, i32 } %.pn150
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !281
  %i.e = fdiv float %i.d, 3.600000e+03
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 2.400000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !281
  %i.i = fdiv float %i.h, 3.600000e+03
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef 2.400000e+01) #30 ; 2 uses
  %i.k = fptosi float %i.j to i32                 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt float %i.j, 2.400000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.k, ptr %i.p, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !281
  %i.e = fdiv float %i.d, 3.600000e+03
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 1.200000e+01) #30 ; 2 uses
  %i.g = fcmp ole float %i.f, 0.000000e+00
  %i.h = select i1 %i.g, float 1.200000e+01, float %i.f
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.h, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !281
  %i.k = fdiv float %i.j, 3.600000e+03
  %i.l = tail call noundef float @fmodf(float noundef %i.k, float noundef 1.200000e+01) #30 ; 2 uses
  %i.m = fcmp ole float %i.l, 0.000000e+00
  %i.n = select i1 %i.m, float 1.200000e+01, float %i.l ; 2 uses
  %i.o = fcmp ogt float %i.n, 1.200000e+01
  br i1 %i.o, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #30
  resume { ptr, i32 } %i.q

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %4 = fptosi float %i.n to i32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %4, ptr %i.r, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !281
  %i.e = fdiv float %i.d, 6.000000e+01
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 6.000000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !281
  %i.i = fdiv float %i.h, 6.000000e+01
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef 6.000000e+01) #30 ; 2 uses
  %i.k = fptosi float %i.j to i32                 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt float %i.j, 6.000000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.k, ptr %i.p, align 4, !tbaa !199
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.334", align 16 ; 5 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %5 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.d, align 8, !tbaa !260
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !338
  store i64 500, ptr %i.c, align 8, !tbaa !339
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load float, ptr %i.g, align 8, !tbaa !499 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !550  ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = call noundef float @llvm.round.f32(float %i.h)
  %i.m = fcmp une float %i.l, %i.h
  %spec.select.i = select i1 %i.m, i32 6, i32 3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ %i.j, %bb.c ], [ %spec.select.i, %bb.d ]
  %i.n = fdiv float %i.h, 1.000000e+03
  %i.o = call noundef float @fmodf(float noundef %i.n, float noundef 6.000000e+01) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store float %i.o, ptr %3, align 16, !tbaa !232
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.0.i, ptr %i.p, align 16, !tbaa !232
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(533) %4, ptr nonnull @.str.1279, i64 7, i64 25, ptr nonnull %3, ptr null)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i8, ptr %i.q, align 8, !tbaa !549, !range !249, !noundef !250
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !354  ; 2 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !339
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !260
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.v)
          to label %.noexc unwind label %bb.k, !inline_history !101

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load i64, ptr %i.t, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g
  %.pre-phi.i.i = phi i64 [ %i.v, %bb.g ], [ %.pre2.i.i, %.noexc ]
  %i.ab = phi i64 [ %i.u, %bb.g ], [ %.pre.i.i, %.noexc ]
  %i.ac = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.t, align 8, !tbaa !354
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 45, ptr %i.ad, align 1, !tbaa !232
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.l:                                             ; preds = %bb.i, %bb.f
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !354 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 2
  br i1 %i.ah, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr %4, align 8, !tbaa !338   ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !232
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  %.sroa.01.0.copyload.pre = load ptr, ptr %0, align 8, !tbaa !351
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  br label %.lr.ph34.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 8 uses
  %.not.i = icmp eq i32 %2, 1
  br i1 %.not.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = icmp eq i32 %2, 2
  %i.ao = select i1 %i.an, i8 32, i8 48
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 8 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !354 ; 2 uses
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !339
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !260
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.0.copyload, i64 noundef %i.ar)
          to label %.noexc13 unwind label %bb.q, !inline_history !107
end_hunk_1
begin_hunk_2_@_ZZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E1_clES6_:bb.a
  %i.o = load ptr, ptr %1, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !354
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !232
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !354  ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !339
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !260
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.s), !inline_history !10
  %.pre.i.i6 = load i64, ptr %i.q, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i7 = add i64 %.pre.i.i6, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8

_ZN3fmt3v1214basic_appenderIcEaSEc.exit8:         ; preds = %bb.d, %bb.e
  %.pre-phi.i.i5 = phi i64 [ %i.s, %bb.d ], [ %.pre2.i.i7, %bb.e ]
  %i.y = phi i64 [ %i.r, %bb.d ], [ %.pre.i.i6, %bb.e ]
  %i.z = load ptr, ptr %1, align 8, !tbaa !338
  store i64 %.pre-phi.i.i5, ptr %i.q, align 8, !tbaa !354
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 48, ptr %i.aa, align 1, !tbaa !232
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !5844, !nonnull !250
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !357, !range !249, !noundef !250
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !5845, !nonnull !250
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !232
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !354 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !339
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !260
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aj), !inline_history !10
  %.pre.i.i11 = load i64, ptr %i.q, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i12 = add i64 %.pre.i.i11, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13

_ZN3fmt3v1214basic_appenderIcEaSEc.exit13:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i10 = phi i64 [ %i.aj, %bb.f ], [ %.pre2.i.i12, %bb.g ]
  %i.ao = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i11, %bb.g ]
  %i.ap = load ptr, ptr %1, align 8, !tbaa !338
  store i64 %.pre-phi.i.i10, ptr %i.q, align 8, !tbaa !354
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.ah, ptr %i.aq, align 1, !tbaa !232
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !5846, !nonnull !250, !align !337
  %i.at = load i32, ptr %i.as, align 4, !tbaa !239 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.be, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ]
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !354 ; 2 uses
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !339
  %i.az = icmp ugt i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !260
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ax), !inline_history !34
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i = phi i64 [ %i.ax, %bb.h ], [ %.pre2.i.i.i, %bb.i ]
  %i.bb = phi i64 [ %i.aw, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  %i.bc = load ptr, ptr %1, align 8, !tbaa !338
  store i64 %.pre-phi.i.i.i, ptr %i.q, align 8, !tbaa !354
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 48, ptr %i.bd, align 1, !tbaa !232
  %i.be = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.be, %i.at
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.h, !llvm.loop !14

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit13
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !5847, !nonnull !250, !align !336
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !558
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !5848, !nonnull !250, !align !337
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !239
  %i.bl = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %1, i64 noundef %i.bh, i32 noundef %i.bk)
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit
  %.sroa.03.0 = phi ptr [ %i.bl, %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %1, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit8 ]
  ret ptr %.sroa.03.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !286
  %i.e = fdiv double %i.d, 3.600000e+03
  %i.f = tail call noundef double @fmod(double noundef %i.e, double noundef 2.400000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE5writeEdiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load double, ptr %i.g, align 8, !tbaa !286
  %i.i = fdiv double %i.h, 3.600000e+03
  %i.j = tail call noundef double @fmod(double noundef %i.i, double noundef 2.400000e+01) #30 ; 2 uses
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt double %i.j, 2.400000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.k, ptr %i.p, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !286
  %i.e = fdiv double %i.d, 3.600000e+03
  %i.f = tail call noundef double @fmod(double noundef %i.e, double noundef 1.200000e+01) #30 ; 2 uses
  %i.g = fcmp ole double %i.f, 0.000000e+00
  %i.h = select i1 %i.g, double 1.200000e+01, double %i.f
  tail call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE5writeEdiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %i.h, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load double, ptr %i.i, align 8, !tbaa !286
  %i.k = fdiv double %i.j, 3.600000e+03
  %i.l = tail call noundef double @fmod(double noundef %i.k, double noundef 1.200000e+01) #30 ; 2 uses
  %i.m = fcmp ole double %i.l, 0.000000e+00
  %i.n = select i1 %i.m, double 1.200000e+01, double %i.l ; 2 uses
  %i.o = fcmp ogt double %i.n, 1.200000e+01
  br i1 %i.o, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #30
  resume { ptr, i32 } %i.q

_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %4 = fptosi double %i.n to i32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %4, ptr %i.r, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !286
  %i.e = fdiv double %i.d, 6.000000e+01
  %i.f = tail call noundef double @fmod(double noundef %i.e, double noundef 6.000000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE5writeEdiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load double, ptr %i.g, align 8, !tbaa !286
  %i.i = fdiv double %i.h, 6.000000e+01
  %i.j = tail call noundef double @fmod(double noundef %i.i, double noundef 6.000000e+01) #30 ; 2 uses
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt double %i.j, 6.000000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.k, ptr %i.p, align 4, !tbaa !199
  call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS4_EEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSE_SF_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.357", align 16 ; 5 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %5 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.d, align 8, !tbaa !260
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !338
  store i64 500, ptr %i.c, align 8, !tbaa !339
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !315 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !555  ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = call double @llvm.round.f64(double %i.h)
  %i.m = fcmp une double %i.l, %i.h
  %spec.store.select.i = select i1 %i.m, i32 6, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ %spec.store.select.i, %bb.d ], [ %i.j, %bb.c ]
  %i.n = call double @fmod(double noundef %i.h, double noundef 6.000000e+01) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store double %i.n, ptr %3, align 16, !tbaa !232
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.0.i, ptr %i.o, align 16, !tbaa !232
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(533) %4, ptr nonnull @.str.1279, i64 7, i64 26, ptr nonnull %3, ptr null)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i8, ptr %i.p, align 8, !tbaa !554, !range !249, !noundef !250
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !354  ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !339
  %i.x = icmp ugt i64 %i.u, %i.w
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !260
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.u)
          to label %.noexc unwind label %bb.k, !inline_history !101

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load i64, ptr %i.s, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g
  %.pre-phi.i.i = phi i64 [ %i.u, %bb.g ], [ %.pre2.i.i, %.noexc ]
  %i.aa = phi i64 [ %i.t, %bb.g ], [ %.pre.i.i, %.noexc ]
  %i.ab = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.s, align 8, !tbaa !354
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  store i8 45, ptr %i.ac, align 1, !tbaa !232
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.l:                                             ; preds = %bb.i, %bb.f
  %i.af = load i64, ptr %i.e, align 8, !tbaa !354 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 2
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %4, align 8, !tbaa !338   ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !232
  %i.ak = icmp eq i8 %i.aj, 46
  br i1 %i.ak, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  %.sroa.01.0.copyload.pre = load ptr, ptr %0, align 8, !tbaa !351
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  br label %.lr.ph34.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 8 uses
  %.not.i = icmp eq i32 %2, 1
  br i1 %.not.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = icmp eq i32 %2, 2
  %i.an = select i1 %i.am, i8 32, i8 48
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 8 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !354 ; 2 uses
  %i.aq = add i64 %i.ap, 1                        ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !339
  %i.at = icmp ugt i64 %i.aq, %i.as
  br i1 %i.at, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !260
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.0.copyload, i64 noundef %i.aq)
          to label %.noexc13 unwind label %bb.q, !inline_history !107

end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail19parse_chrono_formatIcRNS1_18duration_formatterIcdSt5ratioILl1ELl1000EEEEEEPKT_SA_SA_OT0_:bb.a

vector.body341:                                   ; preds = %vector.body341, %vector.ph339
  %index342 = phi i64 [ 0, %vector.ph339 ], [ %index.next345, %vector.body341 ] ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %index342 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load343 = load <16 x i8>, ptr %i.ig, align 1, !tbaa !232
  %wide.load344 = load <16 x i8>, ptr %i.ih, align 1, !tbaa !232
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 %index342 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <16 x i8> %wide.load343, ptr %i.ii, align 1, !tbaa !232
  store <16 x i8> %wide.load344, ptr %i.ij, align 1, !tbaa !232
  %index.next345 = add nuw i64 %index342, 32      ; 2 uses
  %i.ik = icmp eq i64 %index.next345, %n.vec340
  br i1 %i.ik, label %middle.block346, label %vector.body341, !llvm.loop !5869

middle.block346:                                  ; preds = %vector.body341
  %cmp.n347 = icmp eq i64 %.025.i.i.i208, %n.vec340
  br i1 %cmp.n347, label %._crit_edge.loopexit.i.i.i213, label %vec.epilog.iter.check351

vec.epilog.iter.check351:                         ; preds = %middle.block346
  %min.epilog.iters.check352 = icmp eq i64 %i.if, 0
  br i1 %min.epilog.iters.check352, label %.lr.ph.i.i.i210.preheader, label %vec.epilog.ph353, !prof !327

vec.epilog.ph353:                                 ; preds = %vector.main.loop.iter.check337, %vec.epilog.iter.check351
  %vec.epilog.resume.val348 = phi i64 [ %n.vec340, %vec.epilog.iter.check351 ], [ 0, %vector.main.loop.iter.check337 ]
  %n.vec354 = and i64 %.025.i.i.i208, -4          ; 3 uses
  br label %vec.epilog.vector.body355

vec.epilog.vector.body355:                        ; preds = %vec.epilog.vector.body355, %vec.epilog.ph353
  %index356 = phi i64 [ %vec.epilog.resume.val348, %vec.epilog.ph353 ], [ %index.next358, %vec.epilog.vector.body355 ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %index356
  %wide.load357 = load <4 x i8>, ptr %i.il, align 1, !tbaa !232
  %i.im = getelementptr inbounds nuw i8, ptr %i.ic, i64 %index356
  store <4 x i8> %wide.load357, ptr %i.im, align 1, !tbaa !232
  %index.next358 = add nuw i64 %index356, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next358, %n.vec354
  br i1 %i.in, label %vec.epilog.middle.block359, label %vec.epilog.vector.body355, !llvm.loop !5870

vec.epilog.middle.block359:                       ; preds = %vec.epilog.vector.body355
  %cmp.n360 = icmp eq i64 %.025.i.i.i208, %n.vec354
  br i1 %cmp.n360, label %._crit_edge.loopexit.i.i.i213, label %.lr.ph.i.i.i210.preheader

.lr.ph.i.i.i210.preheader:                        ; preds = %vector.memcheck334, %iter.check349, %vec.epilog.iter.check351, %vec.epilog.middle.block359
  %.030.i.i.i211.ph = phi i64 [ 0, %iter.check349 ], [ 0, %vector.memcheck334 ], [ %n.vec340, %vec.epilog.iter.check351 ], [ %n.vec354, %vec.epilog.middle.block359 ] ; 3 uses
  %xtraiter365 = and i64 %.025.i.i.i208, 3        ; 2 uses
  %lcmp.mod366.not = icmp eq i64 %xtraiter365, 0
  br i1 %lcmp.mod366.not, label %.lr.ph.i.i.i210.prol.loopexit, label %.lr.ph.i.i.i210.prol

.lr.ph.i.i.i210.prol:                             ; preds = %.lr.ph.i.i.i210.preheader, %.lr.ph.i.i.i210.prol
  %.030.i.i.i211.prol = phi i64 [ %i.ir, %.lr.ph.i.i.i210.prol ], [ %.030.i.i.i211.ph, %.lr.ph.i.i.i210.preheader ] ; 3 uses
  %prol.iter367 = phi i64 [ %prol.iter367.next, %.lr.ph.i.i.i210.prol ], [ 0, %.lr.ph.i.i.i210.preheader ]
  %i.io = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %.030.i.i.i211.prol
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !232
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.030.i.i.i211.prol
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !232
  %i.ir = add nuw i64 %.030.i.i.i211.prol, 1      ; 2 uses
  %prol.iter367.next = add i64 %prol.iter367, 1   ; 2 uses
  %prol.iter367.cmp.not = icmp eq i64 %prol.iter367.next, %xtraiter365
  br i1 %prol.iter367.cmp.not, label %.lr.ph.i.i.i210.prol.loopexit, label %.lr.ph.i.i.i210.prol, !llvm.loop !5871

.lr.ph.i.i.i210.prol.loopexit:                    ; preds = %.lr.ph.i.i.i210.prol, %.lr.ph.i.i.i210.preheader
  %.030.i.i.i211.unr = phi i64 [ %.030.i.i.i211.ph, %.lr.ph.i.i.i210.preheader ], [ %i.ir, %.lr.ph.i.i.i210.prol ]
  %i.is = sub i64 %.030.i.i.i211.ph, %.025.i.i.i208
  %i.it = icmp ugt i64 %i.is, -4
  br i1 %i.it, label %._crit_edge.loopexit.i.i.i213, label %.lr.ph.i.i.i210

._crit_edge.loopexit.i.i.i213:                    ; preds = %.lr.ph.i.i.i210.prol.loopexit, %.lr.ph.i.i.i210, %vec.epilog.middle.block359, %middle.block346
  %.pre37.i.i.i214 = load i64, ptr %i.hk, align 8, !tbaa !354
  br label %._crit_edge.i.i.i215

._crit_edge.i.i.i215:                             ; preds = %._crit_edge.loopexit.i.i.i213, %bb.bx
  %i.iu = phi i64 [ %.pre37.i.i.i214, %._crit_edge.loopexit.i.i.i213 ], [ %.026.i.i.i207, %bb.bx ]
  %i.iv = add i64 %i.iu, %.025.i.i.i208           ; 2 uses
  store i64 %i.iv, ptr %i.hk, align 8, !tbaa !354
  %i.iw = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %.025.i.i.i208 ; 2 uses
  %.not.i.i.i216 = icmp eq ptr %i.iw, %.0129.lcssa.ph
  br i1 %.not.i.i.i216, label %_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE7on_textEPKcS7_.exit217, label %bb.bv, !llvm.loop !5

.lr.ph.i.i.i210:                                  ; preds = %.lr.ph.i.i.i210.prol.loopexit, %.lr.ph.i.i.i210
  %.030.i.i.i211 = phi i64 [ %i.jm, %.lr.ph.i.i.i210 ], [ %.030.i.i.i211.unr, %.lr.ph.i.i.i210.prol.loopexit ] ; 6 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %.030.i.i.i211
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !232
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.030.i.i.i211
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !232
  %i.ja = add nuw i64 %.030.i.i.i211, 1           ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !232
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ja
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !232
  %i.je = add nuw i64 %.030.i.i.i211, 2           ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !232
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.je
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !232
  %i.ji = add nuw i64 %.030.i.i.i211, 3           ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !232
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ji
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !232
  %i.jm = add nuw i64 %.030.i.i.i211, 4           ; 2 uses
  %exitcond.not.i.i.i212.3 = icmp eq i64 %i.jm, %.025.i.i.i208
  br i1 %exitcond.not.i.i.i212.3, label %._crit_edge.loopexit.i.i.i213, label %.lr.ph.i.i.i210, !llvm.loop !5872

_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE7on_textEPKcS7_.exit217: ; preds = %._crit_edge.i.i.i215, %_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE7on_textEPKcS7_.exit167.thread, %bb.b, %bb.a
  %.0134 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.0129.lcssa.ph, %_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE7on_textEPKcS7_.exit167.thread ], [ %.0129.lcssa.ph, %._crit_edge.i.i.i215 ]
  ret ptr %.0134

bb.by:                                            ; preds = %bb.n, %bb.u, %bb.bb, %bb.bf, %bb.bj, %bb.br, %bb.bu, %bb.e
  %.pn150 = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.bq, %bb.n ], [ %i.bw, %bb.u ], [ %i.hf, %bb.bu ], [ %i.gs, %bb.bb ], [ %i.gw, %bb.bf ], [ %i.gz, %bb.bj ], [ %i.hd, %bb.br ]
  resume { ptr, i32 } %.pn150
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !286
  %i.e = fdiv double %i.d, 3.600000e+03
  %i.f = tail call noundef double @fmod(double noundef %i.e, double noundef 2.400000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE5writeEdiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load double, ptr %i.g, align 8, !tbaa !286
  %i.i = fdiv double %i.h, 3.600000e+03
  %i.j = tail call noundef double @fmod(double noundef %i.i, double noundef 2.400000e+01) #30 ; 2 uses
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt double %i.j, 2.400000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.k, ptr %i.p, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !286
  %i.e = fdiv double %i.d, 3.600000e+03
  %i.f = tail call noundef double @fmod(double noundef %i.e, double noundef 1.200000e+01) #30 ; 2 uses
  %i.g = fcmp ole double %i.f, 0.000000e+00
  %i.h = select i1 %i.g, double 1.200000e+01, double %i.f
  tail call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE5writeEdiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %i.h, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load double, ptr %i.i, align 8, !tbaa !286
  %i.k = fdiv double %i.j, 3.600000e+03
  %i.l = tail call noundef double @fmod(double noundef %i.k, double noundef 1.200000e+01) #30 ; 2 uses
  %i.m = fcmp ole double %i.l, 0.000000e+00
  %i.n = select i1 %i.m, double 1.200000e+01, double %i.l ; 2 uses
  %i.o = fcmp ogt double %i.n, 1.200000e+01
  br i1 %i.o, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #30
  resume { ptr, i32 } %i.q

_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %4 = fptosi double %i.n to i32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %4, ptr %i.r, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !286
  %i.e = fdiv double %i.d, 6.000000e+01
  %i.f = tail call noundef double @fmod(double noundef %i.e, double noundef 6.000000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE5writeEdiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load double, ptr %i.g, align 8, !tbaa !286
  %i.i = fdiv double %i.h, 6.000000e+01
  %i.j = tail call noundef double @fmod(double noundef %i.i, double noundef 6.000000e+01) #30 ; 2 uses
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt double %i.j, 6.000000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.k, ptr %i.p, align 4, !tbaa !199
  call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.357", align 16 ; 5 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %5 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.d, align 8, !tbaa !260
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !338
  store i64 500, ptr %i.c, align 8, !tbaa !339
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !315 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !571  ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = call double @llvm.round.f64(double %i.h)
  %i.m = fcmp une double %i.l, %i.h
  %spec.store.select.i = select i1 %i.m, i32 6, i32 3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ %spec.store.select.i, %bb.d ], [ %i.j, %bb.c ]
  %i.n = fdiv double %i.h, 1.000000e+03
  %i.o = call double @fmod(double noundef %i.n, double noundef 6.000000e+01) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store double %i.o, ptr %3, align 16, !tbaa !232
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.0.i, ptr %i.p, align 16, !tbaa !232
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(533) %4, ptr nonnull @.str.1279, i64 7, i64 26, ptr nonnull %3, ptr null)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i8, ptr %i.q, align 8, !tbaa !570, !range !249, !noundef !250
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !354  ; 2 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !339
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !260
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.v)
          to label %.noexc unwind label %bb.k, !inline_history !101

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load i64, ptr %i.t, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g
  %.pre-phi.i.i = phi i64 [ %i.v, %bb.g ], [ %.pre2.i.i, %.noexc ]
  %i.ab = phi i64 [ %i.u, %bb.g ], [ %.pre.i.i, %.noexc ]
  %i.ac = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.t, align 8, !tbaa !354
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 45, ptr %i.ad, align 1, !tbaa !232
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.l:                                             ; preds = %bb.i, %bb.f
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !354 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 2
  br i1 %i.ah, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr %4, align 8, !tbaa !338   ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !232
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  %.sroa.01.0.copyload.pre = load ptr, ptr %0, align 8, !tbaa !351
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  br label %.lr.ph34.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 8 uses
  %.not.i = icmp eq i32 %2, 1
  br i1 %.not.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = icmp eq i32 %2, 2
  %i.ao = select i1 %i.an, i8 32, i8 48
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 8 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !354 ; 2 uses
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !339
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !260
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.0.copyload, i64 noundef %i.ar)
          to label %.noexc13 unwind label %bb.q, !inline_history !107
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail19parse_chrono_formatIcRNS1_18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEEEEEPKT_SA_SA_OT0_:bb.a

vector.body341:                                   ; preds = %vector.body341, %vector.ph339
  %index342 = phi i64 [ 0, %vector.ph339 ], [ %index.next345, %vector.body341 ] ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %index342 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load343 = load <16 x i8>, ptr %i.ig, align 1, !tbaa !232
  %wide.load344 = load <16 x i8>, ptr %i.ih, align 1, !tbaa !232
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 %index342 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <16 x i8> %wide.load343, ptr %i.ii, align 1, !tbaa !232
  store <16 x i8> %wide.load344, ptr %i.ij, align 1, !tbaa !232
  %index.next345 = add nuw i64 %index342, 32      ; 2 uses
  %i.ik = icmp eq i64 %index.next345, %n.vec340
  br i1 %i.ik, label %middle.block346, label %vector.body341, !llvm.loop !5942

middle.block346:                                  ; preds = %vector.body341
  %cmp.n347 = icmp eq i64 %.025.i.i.i208, %n.vec340
  br i1 %cmp.n347, label %._crit_edge.loopexit.i.i.i213, label %vec.epilog.iter.check351

vec.epilog.iter.check351:                         ; preds = %middle.block346
  %min.epilog.iters.check352 = icmp eq i64 %i.if, 0
  br i1 %min.epilog.iters.check352, label %.lr.ph.i.i.i210.preheader, label %vec.epilog.ph353, !prof !327

vec.epilog.ph353:                                 ; preds = %vector.main.loop.iter.check337, %vec.epilog.iter.check351
  %vec.epilog.resume.val348 = phi i64 [ %n.vec340, %vec.epilog.iter.check351 ], [ 0, %vector.main.loop.iter.check337 ]
  %n.vec354 = and i64 %.025.i.i.i208, -4          ; 3 uses
  br label %vec.epilog.vector.body355

vec.epilog.vector.body355:                        ; preds = %vec.epilog.vector.body355, %vec.epilog.ph353
  %index356 = phi i64 [ %vec.epilog.resume.val348, %vec.epilog.ph353 ], [ %index.next358, %vec.epilog.vector.body355 ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %index356
  %wide.load357 = load <4 x i8>, ptr %i.il, align 1, !tbaa !232
  %i.im = getelementptr inbounds nuw i8, ptr %i.ic, i64 %index356
  store <4 x i8> %wide.load357, ptr %i.im, align 1, !tbaa !232
  %index.next358 = add nuw i64 %index356, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next358, %n.vec354
  br i1 %i.in, label %vec.epilog.middle.block359, label %vec.epilog.vector.body355, !llvm.loop !5943

vec.epilog.middle.block359:                       ; preds = %vec.epilog.vector.body355
  %cmp.n360 = icmp eq i64 %.025.i.i.i208, %n.vec354
  br i1 %cmp.n360, label %._crit_edge.loopexit.i.i.i213, label %.lr.ph.i.i.i210.preheader

.lr.ph.i.i.i210.preheader:                        ; preds = %vector.memcheck334, %iter.check349, %vec.epilog.iter.check351, %vec.epilog.middle.block359
  %.030.i.i.i211.ph = phi i64 [ 0, %iter.check349 ], [ 0, %vector.memcheck334 ], [ %n.vec340, %vec.epilog.iter.check351 ], [ %n.vec354, %vec.epilog.middle.block359 ] ; 3 uses
  %xtraiter365 = and i64 %.025.i.i.i208, 3        ; 2 uses
  %lcmp.mod366.not = icmp eq i64 %xtraiter365, 0
  br i1 %lcmp.mod366.not, label %.lr.ph.i.i.i210.prol.loopexit, label %.lr.ph.i.i.i210.prol

.lr.ph.i.i.i210.prol:                             ; preds = %.lr.ph.i.i.i210.preheader, %.lr.ph.i.i.i210.prol
  %.030.i.i.i211.prol = phi i64 [ %i.ir, %.lr.ph.i.i.i210.prol ], [ %.030.i.i.i211.ph, %.lr.ph.i.i.i210.preheader ] ; 3 uses
  %prol.iter367 = phi i64 [ %prol.iter367.next, %.lr.ph.i.i.i210.prol ], [ 0, %.lr.ph.i.i.i210.preheader ]
  %i.io = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %.030.i.i.i211.prol
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !232
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.030.i.i.i211.prol
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !232
  %i.ir = add nuw i64 %.030.i.i.i211.prol, 1      ; 2 uses
  %prol.iter367.next = add i64 %prol.iter367, 1   ; 2 uses
  %prol.iter367.cmp.not = icmp eq i64 %prol.iter367.next, %xtraiter365
  br i1 %prol.iter367.cmp.not, label %.lr.ph.i.i.i210.prol.loopexit, label %.lr.ph.i.i.i210.prol, !llvm.loop !5944

.lr.ph.i.i.i210.prol.loopexit:                    ; preds = %.lr.ph.i.i.i210.prol, %.lr.ph.i.i.i210.preheader
  %.030.i.i.i211.unr = phi i64 [ %.030.i.i.i211.ph, %.lr.ph.i.i.i210.preheader ], [ %i.ir, %.lr.ph.i.i.i210.prol ]
  %i.is = sub i64 %.030.i.i.i211.ph, %.025.i.i.i208
  %i.it = icmp ugt i64 %i.is, -4
  br i1 %i.it, label %._crit_edge.loopexit.i.i.i213, label %.lr.ph.i.i.i210

._crit_edge.loopexit.i.i.i213:                    ; preds = %.lr.ph.i.i.i210.prol.loopexit, %.lr.ph.i.i.i210, %vec.epilog.middle.block359, %middle.block346
  %.pre37.i.i.i214 = load i64, ptr %i.hk, align 8, !tbaa !354
  br label %._crit_edge.i.i.i215

._crit_edge.i.i.i215:                             ; preds = %._crit_edge.loopexit.i.i.i213, %bb.bx
  %i.iu = phi i64 [ %.pre37.i.i.i214, %._crit_edge.loopexit.i.i.i213 ], [ %.026.i.i.i207, %bb.bx ]
  %i.iv = add i64 %i.iu, %.025.i.i.i208           ; 2 uses
  store i64 %i.iv, ptr %i.hk, align 8, !tbaa !354
  %i.iw = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %.025.i.i.i208 ; 2 uses
  %.not.i.i.i216 = icmp eq ptr %i.iw, %.0129.lcssa.ph
  br i1 %.not.i.i.i216, label %_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE7on_textEPKcS7_.exit217, label %bb.bv, !llvm.loop !5

.lr.ph.i.i.i210:                                  ; preds = %.lr.ph.i.i.i210.prol.loopexit, %.lr.ph.i.i.i210
  %.030.i.i.i211 = phi i64 [ %i.jm, %.lr.ph.i.i.i210 ], [ %.030.i.i.i211.unr, %.lr.ph.i.i.i210.prol.loopexit ] ; 6 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %.030.i.i.i211
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !232
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.030.i.i.i211
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !232
  %i.ja = add nuw i64 %.030.i.i.i211, 1           ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !232
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ja
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !232
  %i.je = add nuw i64 %.030.i.i.i211, 2           ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !232
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.je
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !232
  %i.ji = add nuw i64 %.030.i.i.i211, 3           ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !232
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ji
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !232
  %i.jm = add nuw i64 %.030.i.i.i211, 4           ; 2 uses
  %exitcond.not.i.i.i212.3 = icmp eq i64 %i.jm, %.025.i.i.i208
  br i1 %exitcond.not.i.i.i212.3, label %._crit_edge.loopexit.i.i.i213, label %.lr.ph.i.i.i210, !llvm.loop !5945

_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE7on_textEPKcS7_.exit217: ; preds = %._crit_edge.i.i.i215, %_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE7on_textEPKcS7_.exit167.thread, %bb.b, %bb.a
  %.0134 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.0129.lcssa.ph, %_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE7on_textEPKcS7_.exit167.thread ], [ %.0129.lcssa.ph, %._crit_edge.i.i.i215 ]
  ret ptr %.0134

bb.by:                                            ; preds = %bb.n, %bb.u, %bb.bb, %bb.bf, %bb.bj, %bb.br, %bb.bu, %bb.e
  %.pn150 = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.bq, %bb.n ], [ %i.bw, %bb.u ], [ %i.hf, %bb.bu ], [ %i.gs, %bb.bb ], [ %i.gw, %bb.bf ], [ %i.gz, %bb.bj ], [ %i.hd, %bb.br ]
  resume { ptr, i32 } %.pn150
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !281
  %i.e = fdiv float %i.d, 3.600000e+03
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 2.400000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !281
  %i.i = fdiv float %i.h, 3.600000e+03
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef 2.400000e+01) #30 ; 2 uses
  %i.k = fptosi float %i.j to i32                 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt float %i.j, 2.400000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.k, ptr %i.p, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !281
  %i.e = fdiv float %i.d, 3.600000e+03
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 1.200000e+01) #30 ; 2 uses
  %i.g = fcmp ole float %i.f, 0.000000e+00
  %i.h = select i1 %i.g, float 1.200000e+01, float %i.f
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.h, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !281
  %i.k = fdiv float %i.j, 3.600000e+03
  %i.l = tail call noundef float @fmodf(float noundef %i.k, float noundef 1.200000e+01) #30 ; 2 uses
  %i.m = fcmp ole float %i.l, 0.000000e+00
  %i.n = select i1 %i.m, float 1.200000e+01, float %i.l ; 2 uses
  %i.o = fcmp ogt float %i.n, 1.200000e+01
  br i1 %i.o, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #30
  resume { ptr, i32 } %i.q

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %4 = fptosi float %i.n to i32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %4, ptr %i.r, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !281
  %i.e = fdiv float %i.d, 6.000000e+01
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 6.000000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !281
  %i.i = fdiv float %i.h, 6.000000e+01
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef 6.000000e+01) #30 ; 2 uses
  %i.k = fptosi float %i.j to i32                 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt float %i.j, 6.000000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.k, ptr %i.p, align 4, !tbaa !199
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.334", align 16 ; 5 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %5 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1000000000000000000ELl1EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.d, align 8, !tbaa !260
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !338
  store i64 500, ptr %i.c, align 8, !tbaa !339
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load float, ptr %i.g, align 8, !tbaa !499 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !586  ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = call noundef float @llvm.round.f32(float %i.h)
  %i.m = fcmp une float %i.l, %i.h
  %spec.select.i = select i1 %i.m, i32 6, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ %i.j, %bb.c ], [ %spec.select.i, %bb.d ]
  %i.n = fmul float %i.h, f0x5D5E0B6B
  %i.o = call noundef float @fmodf(float noundef %i.n, float noundef 6.000000e+01) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store float %i.o, ptr %3, align 16, !tbaa !232
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.0.i, ptr %i.p, align 16, !tbaa !232
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(533) %4, ptr nonnull @.str.1279, i64 7, i64 25, ptr nonnull %3, ptr null)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i8, ptr %i.q, align 8, !tbaa !585, !range !249, !noundef !250
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !354  ; 2 uses
  %i.v = add i64 %i.u, 1                          ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !339
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !260
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.v)
          to label %.noexc unwind label %bb.k, !inline_history !101

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load i64, ptr %i.t, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g
  %.pre-phi.i.i = phi i64 [ %i.v, %bb.g ], [ %.pre2.i.i, %.noexc ]
  %i.ab = phi i64 [ %i.u, %bb.g ], [ %.pre.i.i, %.noexc ]
  %i.ac = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.t, align 8, !tbaa !354
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 45, ptr %i.ad, align 1, !tbaa !232
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.l:                                             ; preds = %bb.i, %bb.f
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !354 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 2
  br i1 %i.ah, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr %4, align 8, !tbaa !338   ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !232
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  %.sroa.01.0.copyload.pre = load ptr, ptr %0, align 8, !tbaa !351
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  br label %.lr.ph34.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 8 uses
  %.not.i = icmp eq i32 %2, 1
  br i1 %.not.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = icmp eq i32 %2, 2
  %i.ao = select i1 %i.an, i8 32, i8 48
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 8 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !354 ; 2 uses
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !339
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !260
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.0.copyload, i64 noundef %i.ar)
          to label %.noexc13 unwind label %bb.q, !inline_history !107
end_hunk_4
begin_hunk_5_@_ZN3fmt3v126detail19parse_chrono_formatIcRNS1_18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEEEEEPKT_SA_SA_OT0_:bb.a

vector.body341:                                   ; preds = %vector.body341, %vector.ph339
  %index342 = phi i64 [ 0, %vector.ph339 ], [ %index.next345, %vector.body341 ] ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %index342 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load343 = load <16 x i8>, ptr %i.ig, align 1, !tbaa !232
  %wide.load344 = load <16 x i8>, ptr %i.ih, align 1, !tbaa !232
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 %index342 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <16 x i8> %wide.load343, ptr %i.ii, align 1, !tbaa !232
  store <16 x i8> %wide.load344, ptr %i.ij, align 1, !tbaa !232
  %index.next345 = add nuw i64 %index342, 32      ; 2 uses
  %i.ik = icmp eq i64 %index.next345, %n.vec340
  br i1 %i.ik, label %middle.block346, label %vector.body341, !llvm.loop !5966

middle.block346:                                  ; preds = %vector.body341
  %cmp.n347 = icmp eq i64 %.025.i.i.i208, %n.vec340
  br i1 %cmp.n347, label %._crit_edge.loopexit.i.i.i213, label %vec.epilog.iter.check351

vec.epilog.iter.check351:                         ; preds = %middle.block346
  %min.epilog.iters.check352 = icmp eq i64 %i.if, 0
  br i1 %min.epilog.iters.check352, label %.lr.ph.i.i.i210.preheader, label %vec.epilog.ph353, !prof !327

vec.epilog.ph353:                                 ; preds = %vector.main.loop.iter.check337, %vec.epilog.iter.check351
  %vec.epilog.resume.val348 = phi i64 [ %n.vec340, %vec.epilog.iter.check351 ], [ 0, %vector.main.loop.iter.check337 ]
  %n.vec354 = and i64 %.025.i.i.i208, -4          ; 3 uses
  br label %vec.epilog.vector.body355

vec.epilog.vector.body355:                        ; preds = %vec.epilog.vector.body355, %vec.epilog.ph353
  %index356 = phi i64 [ %vec.epilog.resume.val348, %vec.epilog.ph353 ], [ %index.next358, %vec.epilog.vector.body355 ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %index356
  %wide.load357 = load <4 x i8>, ptr %i.il, align 1, !tbaa !232
  %i.im = getelementptr inbounds nuw i8, ptr %i.ic, i64 %index356
  store <4 x i8> %wide.load357, ptr %i.im, align 1, !tbaa !232
  %index.next358 = add nuw i64 %index356, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next358, %n.vec354
  br i1 %i.in, label %vec.epilog.middle.block359, label %vec.epilog.vector.body355, !llvm.loop !5967

vec.epilog.middle.block359:                       ; preds = %vec.epilog.vector.body355
  %cmp.n360 = icmp eq i64 %.025.i.i.i208, %n.vec354
  br i1 %cmp.n360, label %._crit_edge.loopexit.i.i.i213, label %.lr.ph.i.i.i210.preheader

.lr.ph.i.i.i210.preheader:                        ; preds = %vector.memcheck334, %iter.check349, %vec.epilog.iter.check351, %vec.epilog.middle.block359
  %.030.i.i.i211.ph = phi i64 [ 0, %iter.check349 ], [ 0, %vector.memcheck334 ], [ %n.vec340, %vec.epilog.iter.check351 ], [ %n.vec354, %vec.epilog.middle.block359 ] ; 3 uses
  %xtraiter365 = and i64 %.025.i.i.i208, 3        ; 2 uses
  %lcmp.mod366.not = icmp eq i64 %xtraiter365, 0
  br i1 %lcmp.mod366.not, label %.lr.ph.i.i.i210.prol.loopexit, label %.lr.ph.i.i.i210.prol

.lr.ph.i.i.i210.prol:                             ; preds = %.lr.ph.i.i.i210.preheader, %.lr.ph.i.i.i210.prol
  %.030.i.i.i211.prol = phi i64 [ %i.ir, %.lr.ph.i.i.i210.prol ], [ %.030.i.i.i211.ph, %.lr.ph.i.i.i210.preheader ] ; 3 uses
  %prol.iter367 = phi i64 [ %prol.iter367.next, %.lr.ph.i.i.i210.prol ], [ 0, %.lr.ph.i.i.i210.preheader ]
  %i.io = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %.030.i.i.i211.prol
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !232
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.030.i.i.i211.prol
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !232
  %i.ir = add nuw i64 %.030.i.i.i211.prol, 1      ; 2 uses
  %prol.iter367.next = add i64 %prol.iter367, 1   ; 2 uses
  %prol.iter367.cmp.not = icmp eq i64 %prol.iter367.next, %xtraiter365
  br i1 %prol.iter367.cmp.not, label %.lr.ph.i.i.i210.prol.loopexit, label %.lr.ph.i.i.i210.prol, !llvm.loop !5968

.lr.ph.i.i.i210.prol.loopexit:                    ; preds = %.lr.ph.i.i.i210.prol, %.lr.ph.i.i.i210.preheader
  %.030.i.i.i211.unr = phi i64 [ %.030.i.i.i211.ph, %.lr.ph.i.i.i210.preheader ], [ %i.ir, %.lr.ph.i.i.i210.prol ]
  %i.is = sub i64 %.030.i.i.i211.ph, %.025.i.i.i208
  %i.it = icmp ugt i64 %i.is, -4
  br i1 %i.it, label %._crit_edge.loopexit.i.i.i213, label %.lr.ph.i.i.i210

._crit_edge.loopexit.i.i.i213:                    ; preds = %.lr.ph.i.i.i210.prol.loopexit, %.lr.ph.i.i.i210, %vec.epilog.middle.block359, %middle.block346
  %.pre37.i.i.i214 = load i64, ptr %i.hk, align 8, !tbaa !354
  br label %._crit_edge.i.i.i215

._crit_edge.i.i.i215:                             ; preds = %._crit_edge.loopexit.i.i.i213, %bb.bx
  %i.iu = phi i64 [ %.pre37.i.i.i214, %._crit_edge.loopexit.i.i.i213 ], [ %.026.i.i.i207, %bb.bx ]
  %i.iv = add i64 %i.iu, %.025.i.i.i208           ; 2 uses
  store i64 %i.iv, ptr %i.hk, align 8, !tbaa !354
  %i.iw = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %.025.i.i.i208 ; 2 uses
  %.not.i.i.i216 = icmp eq ptr %i.iw, %.0129.lcssa.ph
  br i1 %.not.i.i.i216, label %_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEE7on_textEPKcS7_.exit217, label %bb.bv, !llvm.loop !5

.lr.ph.i.i.i210:                                  ; preds = %.lr.ph.i.i.i210.prol.loopexit, %.lr.ph.i.i.i210
  %.030.i.i.i211 = phi i64 [ %i.jm, %.lr.ph.i.i.i210 ], [ %.030.i.i.i211.unr, %.lr.ph.i.i.i210.prol.loopexit ] ; 6 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %.030.i.i.i211
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !232
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.030.i.i.i211
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !232
  %i.ja = add nuw i64 %.030.i.i.i211, 1           ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !232
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ja
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !232
  %i.je = add nuw i64 %.030.i.i.i211, 2           ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !232
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.je
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !232
  %i.ji = add nuw i64 %.030.i.i.i211, 3           ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !232
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ji
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !232
  %i.jm = add nuw i64 %.030.i.i.i211, 4           ; 2 uses
  %exitcond.not.i.i.i212.3 = icmp eq i64 %i.jm, %.025.i.i.i208
  br i1 %exitcond.not.i.i.i212.3, label %._crit_edge.loopexit.i.i.i213, label %.lr.ph.i.i.i210, !llvm.loop !5969

_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEE7on_textEPKcS7_.exit217: ; preds = %._crit_edge.i.i.i215, %_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEE7on_textEPKcS7_.exit167.thread, %bb.b, %bb.a
  %.0134 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.0129.lcssa.ph, %_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEE7on_textEPKcS7_.exit167.thread ], [ %.0129.lcssa.ph, %._crit_edge.i.i.i215 ]
  ret ptr %.0134

bb.by:                                            ; preds = %bb.n, %bb.u, %bb.bb, %bb.bf, %bb.bj, %bb.br, %bb.bu, %bb.e
  %.pn150 = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.bq, %bb.n ], [ %i.bw, %bb.u ], [ %i.hf, %bb.bu ], [ %i.gs, %bb.bb ], [ %i.gw, %bb.bf ], [ %i.gz, %bb.bj ], [ %i.hd, %bb.br ]
  resume { ptr, i32 } %.pn150
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !281
  %i.e = fdiv float %i.d, 3.600000e+03
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 2.400000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !281
  %i.i = fdiv float %i.h, 3.600000e+03
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef 2.400000e+01) #30 ; 2 uses
  %i.k = fptosi float %i.j to i32                 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt float %i.j, 2.400000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.k, ptr %i.p, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !281
  %i.e = fdiv float %i.d, 3.600000e+03
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 1.200000e+01) #30 ; 2 uses
  %i.g = fcmp ole float %i.f, 0.000000e+00
  %i.h = select i1 %i.g, float 1.200000e+01, float %i.f
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.h, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !281
  %i.k = fdiv float %i.j, 3.600000e+03
  %i.l = tail call noundef float @fmodf(float noundef %i.k, float noundef 1.200000e+01) #30 ; 2 uses
  %i.m = fcmp ole float %i.l, 0.000000e+00
  %i.n = select i1 %i.m, float 1.200000e+01, float %i.l ; 2 uses
  %i.o = fcmp ogt float %i.n, 1.200000e+01
  br i1 %i.o, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #30
  resume { ptr, i32 } %i.q

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %4 = fptosi float %i.n to i32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %4, ptr %i.r, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !281
  %i.e = fdiv float %i.d, 6.000000e+01
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 6.000000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !281
  %i.i = fdiv float %i.h, 6.000000e+01
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef 6.000000e+01) #30 ; 2 uses
  %i.k = fptosi float %i.j to i32                 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt float %i.j, 6.000000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.k, ptr %i.p, align 4, !tbaa !199
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.334", align 16 ; 5 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %5 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000000000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.d, align 8, !tbaa !260
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !338
  store i64 500, ptr %i.c, align 8, !tbaa !339
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load float, ptr %i.g, align 8, !tbaa !499
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !591  ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  %spec.select.i = select i1 %i.k, i32 18, i32 %i.j
  %i.l = fdiv float %i.h, f0x5D5E0B6B
  %i.m = call noundef float @fmodf(float noundef %i.l, float noundef 6.000000e+01) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store float %i.m, ptr %3, align 16, !tbaa !232
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %spec.select.i, ptr %i.n, align 16, !tbaa !232
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(533) %4, ptr nonnull @.str.1279, i64 7, i64 25, ptr nonnull %3, ptr null)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i8, ptr %i.o, align 8, !tbaa !590, !range !249, !noundef !250
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !354  ; 2 uses
  %i.t = add i64 %i.s, 1                          ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !339
  %i.w = icmp ugt i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !260
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.t)
          to label %.noexc unwind label %bb.i, !inline_history !101

.noexc:                                           ; preds = %bb.f
  %.pre.i.i = load i64, ptr %i.r, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.e
  %.pre-phi.i.i = phi i64 [ %i.t, %bb.e ], [ %.pre2.i.i, %.noexc ]
  %i.z = phi i64 [ %i.s, %bb.e ], [ %.pre.i.i, %.noexc ]
  %i.aa = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.r, align 8, !tbaa !354
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 45, ptr %i.ab, align 1, !tbaa !232
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.j:                                             ; preds = %bb.g, %bb.d
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !354 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 2
  br i1 %i.af, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %4, align 8, !tbaa !338   ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !232
  %i.aj = icmp eq i8 %i.ai, 46
  br i1 %i.aj, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.k
  %.sroa.01.0.copyload.pre = load ptr, ptr %0, align 8, !tbaa !351
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  br label %.lr.ph34.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 8 uses
  %.not.i = icmp eq i32 %2, 1
  br i1 %.not.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = icmp eq i32 %2, 2
  %i.am = select i1 %i.al, i8 32, i8 48
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !339
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.n, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !260
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.0.copyload, i64 noundef %i.ap)
          to label %.noexc13 unwind label %bb.o, !inline_history !107

.noexc13:                                         ; preds = %bb.n
  %.pre.i.i.i = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %.noexc13, %bb.m
  %.pre-phi.i.i.i = phi i64 [ %i.ap, %bb.m ], [ %.pre2.i.i.i, %.noexc13 ]
  %i.av = phi i64 [ %i.ao, %bb.m ], [ %.pre.i.i.i, %.noexc13 ]
end_hunk_5
begin_hunk_6_@_ZN3fmt3v126detail19parse_chrono_formatIcRNS1_18duration_formatterIcfSt5ratioILl1ELl1000000000000EEEEEEPKT_SA_SA_OT0_:bb.a

vector.body341:                                   ; preds = %vector.body341, %vector.ph339
  %index342 = phi i64 [ 0, %vector.ph339 ], [ %index.next345, %vector.body341 ] ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %index342 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load343 = load <16 x i8>, ptr %i.ig, align 1, !tbaa !232
  %wide.load344 = load <16 x i8>, ptr %i.ih, align 1, !tbaa !232
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 %index342 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <16 x i8> %wide.load343, ptr %i.ii, align 1, !tbaa !232
  store <16 x i8> %wide.load344, ptr %i.ij, align 1, !tbaa !232
  %index.next345 = add nuw i64 %index342, 32      ; 2 uses
  %i.ik = icmp eq i64 %index.next345, %n.vec340
  br i1 %i.ik, label %middle.block346, label %vector.body341, !llvm.loop !6015

middle.block346:                                  ; preds = %vector.body341
  %cmp.n347 = icmp eq i64 %.025.i.i.i208, %n.vec340
  br i1 %cmp.n347, label %._crit_edge.loopexit.i.i.i213, label %vec.epilog.iter.check351

vec.epilog.iter.check351:                         ; preds = %middle.block346
  %min.epilog.iters.check352 = icmp eq i64 %i.if, 0
  br i1 %min.epilog.iters.check352, label %.lr.ph.i.i.i210.preheader, label %vec.epilog.ph353, !prof !327

vec.epilog.ph353:                                 ; preds = %vector.main.loop.iter.check337, %vec.epilog.iter.check351
  %vec.epilog.resume.val348 = phi i64 [ %n.vec340, %vec.epilog.iter.check351 ], [ 0, %vector.main.loop.iter.check337 ]
  %n.vec354 = and i64 %.025.i.i.i208, -4          ; 3 uses
  br label %vec.epilog.vector.body355

vec.epilog.vector.body355:                        ; preds = %vec.epilog.vector.body355, %vec.epilog.ph353
  %index356 = phi i64 [ %vec.epilog.resume.val348, %vec.epilog.ph353 ], [ %index.next358, %vec.epilog.vector.body355 ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %index356
  %wide.load357 = load <4 x i8>, ptr %i.il, align 1, !tbaa !232
  %i.im = getelementptr inbounds nuw i8, ptr %i.ic, i64 %index356
  store <4 x i8> %wide.load357, ptr %i.im, align 1, !tbaa !232
  %index.next358 = add nuw i64 %index356, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next358, %n.vec354
  br i1 %i.in, label %vec.epilog.middle.block359, label %vec.epilog.vector.body355, !llvm.loop !6016

vec.epilog.middle.block359:                       ; preds = %vec.epilog.vector.body355
  %cmp.n360 = icmp eq i64 %.025.i.i.i208, %n.vec354
  br i1 %cmp.n360, label %._crit_edge.loopexit.i.i.i213, label %.lr.ph.i.i.i210.preheader

.lr.ph.i.i.i210.preheader:                        ; preds = %vector.memcheck334, %iter.check349, %vec.epilog.iter.check351, %vec.epilog.middle.block359
  %.030.i.i.i211.ph = phi i64 [ 0, %iter.check349 ], [ 0, %vector.memcheck334 ], [ %n.vec340, %vec.epilog.iter.check351 ], [ %n.vec354, %vec.epilog.middle.block359 ] ; 3 uses
  %xtraiter365 = and i64 %.025.i.i.i208, 3        ; 2 uses
  %lcmp.mod366.not = icmp eq i64 %xtraiter365, 0
  br i1 %lcmp.mod366.not, label %.lr.ph.i.i.i210.prol.loopexit, label %.lr.ph.i.i.i210.prol

.lr.ph.i.i.i210.prol:                             ; preds = %.lr.ph.i.i.i210.preheader, %.lr.ph.i.i.i210.prol
  %.030.i.i.i211.prol = phi i64 [ %i.ir, %.lr.ph.i.i.i210.prol ], [ %.030.i.i.i211.ph, %.lr.ph.i.i.i210.preheader ] ; 3 uses
  %prol.iter367 = phi i64 [ %prol.iter367.next, %.lr.ph.i.i.i210.prol ], [ 0, %.lr.ph.i.i.i210.preheader ]
  %i.io = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %.030.i.i.i211.prol
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !232
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.030.i.i.i211.prol
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !232
  %i.ir = add nuw i64 %.030.i.i.i211.prol, 1      ; 2 uses
  %prol.iter367.next = add i64 %prol.iter367, 1   ; 2 uses
  %prol.iter367.cmp.not = icmp eq i64 %prol.iter367.next, %xtraiter365
  br i1 %prol.iter367.cmp.not, label %.lr.ph.i.i.i210.prol.loopexit, label %.lr.ph.i.i.i210.prol, !llvm.loop !6017

.lr.ph.i.i.i210.prol.loopexit:                    ; preds = %.lr.ph.i.i.i210.prol, %.lr.ph.i.i.i210.preheader
  %.030.i.i.i211.unr = phi i64 [ %.030.i.i.i211.ph, %.lr.ph.i.i.i210.preheader ], [ %i.ir, %.lr.ph.i.i.i210.prol ]
  %i.is = sub i64 %.030.i.i.i211.ph, %.025.i.i.i208
  %i.it = icmp ugt i64 %i.is, -4
  br i1 %i.it, label %._crit_edge.loopexit.i.i.i213, label %.lr.ph.i.i.i210

._crit_edge.loopexit.i.i.i213:                    ; preds = %.lr.ph.i.i.i210.prol.loopexit, %.lr.ph.i.i.i210, %vec.epilog.middle.block359, %middle.block346
  %.pre37.i.i.i214 = load i64, ptr %i.hk, align 8, !tbaa !354
  br label %._crit_edge.i.i.i215

._crit_edge.i.i.i215:                             ; preds = %._crit_edge.loopexit.i.i.i213, %bb.bx
  %i.iu = phi i64 [ %.pre37.i.i.i214, %._crit_edge.loopexit.i.i.i213 ], [ %.026.i.i.i207, %bb.bx ]
  %i.iv = add i64 %i.iu, %.025.i.i.i208           ; 2 uses
  store i64 %i.iv, ptr %i.hk, align 8, !tbaa !354
  %i.iw = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %.025.i.i.i208 ; 2 uses
  %.not.i.i.i216 = icmp eq ptr %i.iw, %.0129.lcssa.ph
  br i1 %.not.i.i.i216, label %_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000EEE7on_textEPKcS7_.exit217, label %bb.bv, !llvm.loop !5

.lr.ph.i.i.i210:                                  ; preds = %.lr.ph.i.i.i210.prol.loopexit, %.lr.ph.i.i.i210
  %.030.i.i.i211 = phi i64 [ %i.jm, %.lr.ph.i.i.i210 ], [ %.030.i.i.i211.unr, %.lr.ph.i.i.i210.prol.loopexit ] ; 6 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %.030.i.i.i211
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !232
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.030.i.i.i211
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !232
  %i.ja = add nuw i64 %.030.i.i.i211, 1           ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !232
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ja
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !232
  %i.je = add nuw i64 %.030.i.i.i211, 2           ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !232
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.je
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !232
  %i.ji = add nuw i64 %.030.i.i.i211, 3           ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !232
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ji
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !232
  %i.jm = add nuw i64 %.030.i.i.i211, 4           ; 2 uses
  %exitcond.not.i.i.i212.3 = icmp eq i64 %i.jm, %.025.i.i.i208
  br i1 %exitcond.not.i.i.i212.3, label %._crit_edge.loopexit.i.i.i213, label %.lr.ph.i.i.i210, !llvm.loop !6018

_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000EEE7on_textEPKcS7_.exit217: ; preds = %._crit_edge.i.i.i215, %_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000EEE7on_textEPKcS7_.exit167.thread, %bb.b, %bb.a
  %.0134 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.0129.lcssa.ph, %_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000EEE7on_textEPKcS7_.exit167.thread ], [ %.0129.lcssa.ph, %._crit_edge.i.i.i215 ]
  ret ptr %.0134

bb.by:                                            ; preds = %bb.n, %bb.u, %bb.bb, %bb.bf, %bb.bj, %bb.br, %bb.bu, %bb.e
  %.pn150 = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.bq, %bb.n ], [ %i.bw, %bb.u ], [ %i.hf, %bb.bu ], [ %i.gs, %bb.bb ], [ %i.gw, %bb.bf ], [ %i.gz, %bb.bj ], [ %i.hd, %bb.br ]
  resume { ptr, i32 } %.pn150
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !281
  %i.e = fdiv float %i.d, 3.600000e+03
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 2.400000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !281
  %i.i = fdiv float %i.h, 3.600000e+03
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef 2.400000e+01) #30 ; 2 uses
  %i.k = fptosi float %i.j to i32                 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt float %i.j, 2.400000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.k, ptr %i.p, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !281
  %i.e = fdiv float %i.d, 3.600000e+03
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 1.200000e+01) #30 ; 2 uses
  %i.g = fcmp ole float %i.f, 0.000000e+00
  %i.h = select i1 %i.g, float 1.200000e+01, float %i.f
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.h, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !281
  %i.k = fdiv float %i.j, 3.600000e+03
  %i.l = tail call noundef float @fmodf(float noundef %i.k, float noundef 1.200000e+01) #30 ; 2 uses
  %i.m = fcmp ole float %i.l, 0.000000e+00
  %i.n = select i1 %i.m, float 1.200000e+01, float %i.l ; 2 uses
  %i.o = fcmp ogt float %i.n, 1.200000e+01
  br i1 %i.o, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #30
  resume { ptr, i32 } %i.q

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %4 = fptosi float %i.n to i32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %4, ptr %i.r, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !281
  %i.e = fdiv float %i.d, 6.000000e+01
  %i.f = tail call noundef float @fmodf(float noundef %i.e, float noundef 6.000000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000EEE5writeEfiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, float noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load float, ptr %i.g, align 4, !tbaa !281
  %i.i = fdiv float %i.h, 6.000000e+01
  %i.j = tail call noundef float @fmodf(float noundef %i.i, float noundef 6.000000e+01) #30 ; 2 uses
  %i.k = fptosi float %i.j to i32                 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt float %i.j, 6.000000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.k, ptr %i.p, align 4, !tbaa !199
  call void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIfiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.334", align 16 ; 5 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %5 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcfSt5ratioILl1ELl1000000000000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(33) %0)
  br i1 %i.a, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.d, align 8, !tbaa !260
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !338
  store i64 500, ptr %i.c, align 8, !tbaa !339
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load float, ptr %i.g, align 8, !tbaa !499
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !601  ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  %spec.select.i = select i1 %i.k, i32 12, i32 %i.j
  %i.l = fdiv float %i.h, f0x5368D4A5
  %i.m = call noundef float @fmodf(float noundef %i.l, float noundef 6.000000e+01) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store float %i.m, ptr %3, align 16, !tbaa !232
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %spec.select.i, ptr %i.n, align 16, !tbaa !232
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(533) %4, ptr nonnull @.str.1279, i64 7, i64 25, ptr nonnull %3, ptr null)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i8, ptr %i.o, align 8, !tbaa !600, !range !249, !noundef !250
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !354  ; 2 uses
  %i.t = add i64 %i.s, 1                          ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !339
  %i.w = icmp ugt i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !260
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.t)
          to label %.noexc unwind label %bb.i, !inline_history !101

.noexc:                                           ; preds = %bb.f
  %.pre.i.i = load i64, ptr %i.r, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.e
  %.pre-phi.i.i = phi i64 [ %i.t, %bb.e ], [ %.pre2.i.i, %.noexc ]
  %i.z = phi i64 [ %i.s, %bb.e ], [ %.pre.i.i, %.noexc ]
  %i.aa = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.r, align 8, !tbaa !354
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 45, ptr %i.ab, align 1, !tbaa !232
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.j:                                             ; preds = %bb.g, %bb.d
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !354 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 2
  br i1 %i.af, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %4, align 8, !tbaa !338   ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !232
  %i.aj = icmp eq i8 %i.ai, 46
  br i1 %i.aj, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.k
  %.sroa.01.0.copyload.pre = load ptr, ptr %0, align 8, !tbaa !351
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  br label %.lr.ph34.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 8 uses
  %.not.i = icmp eq i32 %2, 1
  br i1 %.not.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = icmp eq i32 %2, 2
  %i.am = select i1 %i.al, i8 32, i8 48
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !339
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.n, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !260
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.0.copyload, i64 noundef %i.ap)
          to label %.noexc13 unwind label %bb.o, !inline_history !107

.noexc13:                                         ; preds = %bb.n
  %.pre.i.i.i = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %.noexc13, %bb.m
  %.pre-phi.i.i.i = phi i64 [ %i.ap, %bb.m ], [ %.pre2.i.i.i, %.noexc13 ]
  %i.av = phi i64 [ %i.ao, %bb.m ], [ %.pre.i.i.i, %.noexc13 ]
end_hunk_6
begin_hunk_7_@_ZN3fmt3v126detail19parse_chrono_formatIcRNS1_18duration_formatterIcdSt5ratioILl1ELl1000000000EEEEEEPKT_SA_SA_OT0_:bb.a

vector.body341:                                   ; preds = %vector.body341, %vector.ph339
  %index342 = phi i64 [ 0, %vector.ph339 ], [ %index.next345, %vector.body341 ] ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %index342 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load343 = load <16 x i8>, ptr %i.ig, align 1, !tbaa !232
  %wide.load344 = load <16 x i8>, ptr %i.ih, align 1, !tbaa !232
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 %index342 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <16 x i8> %wide.load343, ptr %i.ii, align 1, !tbaa !232
  store <16 x i8> %wide.load344, ptr %i.ij, align 1, !tbaa !232
  %index.next345 = add nuw i64 %index342, 32      ; 2 uses
  %i.ik = icmp eq i64 %index.next345, %n.vec340
  br i1 %i.ik, label %middle.block346, label %vector.body341, !llvm.loop !6139

middle.block346:                                  ; preds = %vector.body341
  %cmp.n347 = icmp eq i64 %.025.i.i.i208, %n.vec340
  br i1 %cmp.n347, label %._crit_edge.loopexit.i.i.i213, label %vec.epilog.iter.check351

vec.epilog.iter.check351:                         ; preds = %middle.block346
  %min.epilog.iters.check352 = icmp eq i64 %i.if, 0
  br i1 %min.epilog.iters.check352, label %.lr.ph.i.i.i210.preheader, label %vec.epilog.ph353, !prof !327

vec.epilog.ph353:                                 ; preds = %vector.main.loop.iter.check337, %vec.epilog.iter.check351
  %vec.epilog.resume.val348 = phi i64 [ %n.vec340, %vec.epilog.iter.check351 ], [ 0, %vector.main.loop.iter.check337 ]
  %n.vec354 = and i64 %.025.i.i.i208, -4          ; 3 uses
  br label %vec.epilog.vector.body355

vec.epilog.vector.body355:                        ; preds = %vec.epilog.vector.body355, %vec.epilog.ph353
  %index356 = phi i64 [ %vec.epilog.resume.val348, %vec.epilog.ph353 ], [ %index.next358, %vec.epilog.vector.body355 ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %index356
  %wide.load357 = load <4 x i8>, ptr %i.il, align 1, !tbaa !232
  %i.im = getelementptr inbounds nuw i8, ptr %i.ic, i64 %index356
  store <4 x i8> %wide.load357, ptr %i.im, align 1, !tbaa !232
  %index.next358 = add nuw i64 %index356, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next358, %n.vec354
  br i1 %i.in, label %vec.epilog.middle.block359, label %vec.epilog.vector.body355, !llvm.loop !6140

vec.epilog.middle.block359:                       ; preds = %vec.epilog.vector.body355
  %cmp.n360 = icmp eq i64 %.025.i.i.i208, %n.vec354
  br i1 %cmp.n360, label %._crit_edge.loopexit.i.i.i213, label %.lr.ph.i.i.i210.preheader

.lr.ph.i.i.i210.preheader:                        ; preds = %vector.memcheck334, %iter.check349, %vec.epilog.iter.check351, %vec.epilog.middle.block359
  %.030.i.i.i211.ph = phi i64 [ 0, %iter.check349 ], [ 0, %vector.memcheck334 ], [ %n.vec340, %vec.epilog.iter.check351 ], [ %n.vec354, %vec.epilog.middle.block359 ] ; 3 uses
  %xtraiter365 = and i64 %.025.i.i.i208, 3        ; 2 uses
  %lcmp.mod366.not = icmp eq i64 %xtraiter365, 0
  br i1 %lcmp.mod366.not, label %.lr.ph.i.i.i210.prol.loopexit, label %.lr.ph.i.i.i210.prol

.lr.ph.i.i.i210.prol:                             ; preds = %.lr.ph.i.i.i210.preheader, %.lr.ph.i.i.i210.prol
  %.030.i.i.i211.prol = phi i64 [ %i.ir, %.lr.ph.i.i.i210.prol ], [ %.030.i.i.i211.ph, %.lr.ph.i.i.i210.preheader ] ; 3 uses
  %prol.iter367 = phi i64 [ %prol.iter367.next, %.lr.ph.i.i.i210.prol ], [ 0, %.lr.ph.i.i.i210.preheader ]
  %i.io = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %.030.i.i.i211.prol
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !232
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.030.i.i.i211.prol
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !232
  %i.ir = add nuw i64 %.030.i.i.i211.prol, 1      ; 2 uses
  %prol.iter367.next = add i64 %prol.iter367, 1   ; 2 uses
  %prol.iter367.cmp.not = icmp eq i64 %prol.iter367.next, %xtraiter365
  br i1 %prol.iter367.cmp.not, label %.lr.ph.i.i.i210.prol.loopexit, label %.lr.ph.i.i.i210.prol, !llvm.loop !6141

.lr.ph.i.i.i210.prol.loopexit:                    ; preds = %.lr.ph.i.i.i210.prol, %.lr.ph.i.i.i210.preheader
  %.030.i.i.i211.unr = phi i64 [ %.030.i.i.i211.ph, %.lr.ph.i.i.i210.preheader ], [ %i.ir, %.lr.ph.i.i.i210.prol ]
  %i.is = sub i64 %.030.i.i.i211.ph, %.025.i.i.i208
  %i.it = icmp ugt i64 %i.is, -4
  br i1 %i.it, label %._crit_edge.loopexit.i.i.i213, label %.lr.ph.i.i.i210

._crit_edge.loopexit.i.i.i213:                    ; preds = %.lr.ph.i.i.i210.prol.loopexit, %.lr.ph.i.i.i210, %vec.epilog.middle.block359, %middle.block346
  %.pre37.i.i.i214 = load i64, ptr %i.hk, align 8, !tbaa !354
  br label %._crit_edge.i.i.i215

._crit_edge.i.i.i215:                             ; preds = %._crit_edge.loopexit.i.i.i213, %bb.bx
  %i.iu = phi i64 [ %.pre37.i.i.i214, %._crit_edge.loopexit.i.i.i213 ], [ %.026.i.i.i207, %bb.bx ]
  %i.iv = add i64 %i.iu, %.025.i.i.i208           ; 2 uses
  store i64 %i.iv, ptr %i.hk, align 8, !tbaa !354
  %i.iw = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %.025.i.i.i208 ; 2 uses
  %.not.i.i.i216 = icmp eq ptr %i.iw, %.0129.lcssa.ph
  br i1 %.not.i.i.i216, label %_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000000000EEE7on_textEPKcS7_.exit217, label %bb.bv, !llvm.loop !5

.lr.ph.i.i.i210:                                  ; preds = %.lr.ph.i.i.i210.prol.loopexit, %.lr.ph.i.i.i210
  %.030.i.i.i211 = phi i64 [ %i.jm, %.lr.ph.i.i.i210 ], [ %.030.i.i.i211.unr, %.lr.ph.i.i.i210.prol.loopexit ] ; 6 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %.030.i.i.i211
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !232
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.030.i.i.i211
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !232
  %i.ja = add nuw i64 %.030.i.i.i211, 1           ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !232
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ja
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !232
  %i.je = add nuw i64 %.030.i.i.i211, 2           ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !232
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.je
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !232
  %i.ji = add nuw i64 %.030.i.i.i211, 3           ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i206, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !232
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ji
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !232
  %i.jm = add nuw i64 %.030.i.i.i211, 4           ; 2 uses
  %exitcond.not.i.i.i212.3 = icmp eq i64 %i.jm, %.025.i.i.i208
  br i1 %exitcond.not.i.i.i212.3, label %._crit_edge.loopexit.i.i.i213, label %.lr.ph.i.i.i210, !llvm.loop !6142

_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000000000EEE7on_textEPKcS7_.exit217: ; preds = %._crit_edge.i.i.i215, %_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000000000EEE7on_textEPKcS7_.exit167.thread, %bb.b, %bb.a
  %.0134 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.0129.lcssa.ph, %_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000000000EEE7on_textEPKcS7_.exit167.thread ], [ %.0129.lcssa.ph, %._crit_edge.i.i.i215 ]
  ret ptr %.0134

bb.by:                                            ; preds = %bb.n, %bb.u, %bb.bb, %bb.bf, %bb.bj, %bb.br, %bb.bu, %bb.e
  %.pn150 = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.bq, %bb.n ], [ %i.bw, %bb.u ], [ %i.hf, %bb.bu ], [ %i.gs, %bb.bb ], [ %i.gw, %bb.bf ], [ %i.gz, %bb.bj ], [ %i.hd, %bb.br ]
  resume { ptr, i32 } %.pn150
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000000000EEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000000000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !286
  %i.e = fdiv double %i.d, 3.600000e+03
  %i.f = tail call noundef double @fmod(double noundef %i.e, double noundef 2.400000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000000000EEE5writeEdiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load double, ptr %i.g, align 8, !tbaa !286
  %i.i = fdiv double %i.h, 3.600000e+03
  %i.j = tail call noundef double @fmod(double noundef %i.i, double noundef 2.400000e+01) #30 ; 2 uses
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt double %i.j, 2.400000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.k, ptr %i.p, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_24_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000000000EEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000000000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !286
  %i.e = fdiv double %i.d, 3.600000e+03
  %i.f = tail call noundef double @fmod(double noundef %i.e, double noundef 1.200000e+01) #30 ; 2 uses
  %i.g = fcmp ole double %i.f, 0.000000e+00
  %i.h = select i1 %i.g, double 1.200000e+01, double %i.f
  tail call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000000000EEE5writeEdiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %i.h, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load double, ptr %i.i, align 8, !tbaa !286
  %i.k = fdiv double %i.j, 3.600000e+03
  %i.l = tail call noundef double @fmod(double noundef %i.k, double noundef 1.200000e+01) #30 ; 2 uses
  %i.m = fcmp ole double %i.l, 0.000000e+00
  %i.n = select i1 %i.m, double 1.200000e+01, double %i.l ; 2 uses
  %i.o = fcmp ogt double %i.n, 1.200000e+01
  br i1 %i.o, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.p) #30
  resume { ptr, i32 } %i.q

_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %4 = fptosi double %i.n to i32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %4, ptr %i.r, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE10on_12_hourENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000000000EEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000000000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !286
  %i.e = fdiv double %i.d, 6.000000e+01
  %i.f = tail call noundef double @fmod(double noundef %i.e, double noundef 6.000000e+01) #30
  tail call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000000000EEE5writeEdiNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %i.f, i32 noundef 2, i32 noundef %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load double, ptr %i.g, align 8, !tbaa !286
  %i.i = fdiv double %i.h, 6.000000e+01
  %i.j = tail call noundef double @fmod(double noundef %i.i, double noundef 6.000000e+01) #30 ; 2 uses
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = fcmp ogt double %i.j, 6.000000e+01
  %or.cond.i = or i1 %i.m, %i.l
  br i1 %or.cond.i, label %bb.e, label %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1278)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #30
  resume { ptr, i32 } %i.o

_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.k, ptr %i.p, align 4, !tbaa !199
  call void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000000000EEE9format_tmIMNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlS3_ILl1ELl1EEEEEEFvNS1_14numeric_systemENS1_8pad_typeEEJSF_SG_EEEvRK2tmT_DpT0_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 ptrtoint (ptr @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE9on_minuteENS1_14numeric_systemENS1_8pad_typeE to i64), i64 0, i32 noundef %1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN3fmt3v126detail18to_nonnegative_intIdiTnNSt9enable_ifIXntsr3std11is_integralIT_EE5valueEiE4typeELi0EEET0_S4_S7_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000000000EEE9on_secondENS1_14numeric_systemENS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.357", align 16 ; 5 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %5 = alloca %struct.tm, align 8                 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN3fmt3v126detail18duration_formatterIcdSt5ratioILl1ELl1000000000EEE14handle_nan_infEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
  br i1 %i.a, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.d, align 8, !tbaa !260
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !338
  store i64 500, ptr %i.c, align 8, !tbaa !339
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !315
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !631  ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  %spec.select.i = select i1 %i.k, i32 9, i32 %i.j
  %i.l = fdiv double %i.h, 1.000000e+09
  %i.m = call double @fmod(double noundef %i.l, double noundef 6.000000e+01) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store double %i.m, ptr %3, align 16, !tbaa !232
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %spec.select.i, ptr %i.n, align 16, !tbaa !232
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(533) %4, ptr nonnull @.str.1279, i64 7, i64 26, ptr nonnull %3, ptr null)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i8, ptr %i.o, align 8, !tbaa !630, !range !249, !noundef !250
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !351 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !354  ; 2 uses
  %i.t = add i64 %i.s, 1                          ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !339
  %i.w = icmp ugt i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !260
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.t)
          to label %.noexc unwind label %bb.i, !inline_history !101

.noexc:                                           ; preds = %bb.f
  %.pre.i.i = load i64, ptr %i.r, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.e
  %.pre-phi.i.i = phi i64 [ %i.t, %bb.e ], [ %.pre2.i.i, %.noexc ]
  %i.z = phi i64 [ %i.s, %bb.e ], [ %.pre.i.i, %.noexc ]
  %i.aa = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !338
  store i64 %.pre-phi.i.i, ptr %i.r, align 8, !tbaa !354
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 45, ptr %i.ab, align 1, !tbaa !232
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.j:                                             ; preds = %bb.g, %bb.d
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !354 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 2
  br i1 %i.af, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %4, align 8, !tbaa !338   ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !232
  %i.aj = icmp eq i8 %i.ai, 46
  br i1 %i.aj, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.k
  %.sroa.01.0.copyload.pre = load ptr, ptr %0, align 8, !tbaa !351
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  br label %.lr.ph34.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !tbaa !351 ; 8 uses
  %.not.i = icmp eq i32 %2, 1
  br i1 %.not.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = icmp eq i32 %2, 2
  %i.am = select i1 %i.al, i8 32, i8 48
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !339
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.n, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !260
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.0.copyload, i64 noundef %i.ap)
          to label %.noexc13 unwind label %bb.o, !inline_history !107

.noexc13:                                         ; preds = %bb.n
  %.pre.i.i.i = load i64, ptr %i.an, align 8, !tbaa !354 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %.noexc13, %bb.m
  %.pre-phi.i.i.i = phi i64 [ %i.ap, %bb.m ], [ %.pre2.i.i.i, %.noexc13 ]
  %i.av = phi i64 [ %i.ao, %bb.m ], [ %.pre.i.i.i, %.noexc13 ]
end_hunk_7
