Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/chrono-test?download=true
inline.NumInlined: 21374
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 225
begin_hunk_0_@_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE:bb.a
  store i64 1, ptr %i.az, align 8, !tbaa !4244
  store i8 %i.bf, ptr %i.ba, align 8, !tbaa !65
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.04.0.copyload = load i64, ptr %8, align 16
  %.sroa.2.0.copyload = load i64, ptr %i.a, align 8
  invoke void @_ZN3fmt3v126detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE(double noundef %i.g, i64 %.sroa.04.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bg = load ptr, ptr %11, align 8, !tbaa !4228
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !4244 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.bg, ptr %5, align 8, !tbaa !214
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bh, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !212
  %i.bi = invoke ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_2ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 noundef %i.bh, i64 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit unwind label %bb.r

_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ae

bb.r:                                             ; preds = %bb.q, %bb.t, %bb.p
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.s:                                             ; preds = %bb.m
  %i.bk = icmp eq i32 %.037, 2147483647
  br i1 %i.bk, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.1073) #31
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.bl = add nuw nsw i32 %.037, 1                ; 2 uses
  %.not47 = icmp eq i32 %i.as, 0
  br i1 %.not47, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = or i32 %.pre61, 8192
  store i32 %i.bm, ptr %8, align 16, !tbaa !4193
  br label %bb.aa

bb.x:                                             ; preds = %bb.m
  %.not46 = icmp eq i32 %i.as, 0
  br i1 %.not46, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = or i32 %.pre61, 8192
  store i32 %i.bn, ptr %8, align 16, !tbaa !4193
  br label %bb.aa

bb.z:                                             ; preds = %bb.m
  %spec.store.select = call i32 @llvm.umax.i32(i32 %.037, i32 1)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.v, %bb.w
  %.1 = phi i32 [ %i.bl, %bb.w ], [ %i.bl, %bb.v ], [ %.037, %bb.y ], [ %.037, %bb.x ], [ %spec.store.select, %bb.z ] ; 2 uses
  %i.bo = invoke noundef i32 @_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(double noundef %i.g, i32 noundef %.1, ptr noundef nonnull align 4 dereferenceable(16) %8, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %.1, ptr %i.ar, align 4, !tbaa !4195
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.bp = load ptr, ptr %11, align 8, !tbaa !4228
  store ptr %i.bp, ptr %12, align 8, !tbaa !5340
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.br = load i64, ptr %i.az, align 8, !tbaa !4244
  %i.bs = trunc i64 %i.br to i32
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !5342
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 %i.bo, ptr %i.bt, align 4, !tbaa !5343
  %i.bu = invoke ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %8, i32 noundef %.0, i32 noundef 7, ptr %4)
          to label %_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit unwind label %bb.ad

_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.ag

bb.ae:                                            ; preds = %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit, %_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit
  %.sroa.036.0 = phi ptr [ %i.bu, %_ZN3fmt3v126detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE.exit ], [ %i.bi, %_ZN3fmt3v126detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit ]
  %i.bx = load ptr, ptr %11, align 8, !tbaa !4228 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bx, %i.ba
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef %i.bx) #30
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ac, %bb.ad, %bb.r
  %.pn50 = phi { ptr, i32 } [ %i.bj, %bb.r ], [ %i.bv, %bb.ac ], [ %i.bw, %bb.ad ]
  %i.by = load ptr, ptr %11, align 8, !tbaa !4228 ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.by, %i.ba
  br i1 %.not.i.i54, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit55, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef %i.by) #30
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit55

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit55: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  resume { ptr, i32 } %.pn50

bb.ai:                                            ; preds = %bb.b, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, %bb.l
  %.sroa.036.3 = phi ptr [ %i.aw, %bb.l ], [ %i.x, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.036.0, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit ], [ %0, %bb.b ]
  ret ptr %.sroa.036.3
}

declare noundef zeroext i1 @_ZN3fmt3v126detail9write_locENS0_14basic_appenderIcEENS0_9loc_valueERKNS0_12format_specsENS0_10locale_refE(ptr, ptr noundef byval(%"class.fmt::v12::loc_value") align 16, ptr noundef nonnull align 4 dereferenceable(16), ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @_ZN3fmt3v126detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE(double noundef %0, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %.sroa.081.0.extract.trunc = trunc i64 %1 to i32 ; 2 uses
  %.sroa.6.8.extract.shift = lshr i64 %2, 32
  %.sroa.6.8.extract.trunc = trunc nuw i64 %.sroa.6.8.extract.shift to i32 ; 6 uses
  %i.b = bitcast double %0 to i64                 ; 2 uses
  %i.c = and i64 %i.b, 4503599627370495           ; 2 uses
  %i.d = and i64 %i.b, 9218868437227405312        ; 2 uses
  %i.e = icmp eq i64 %i.d, 0                      ; 2 uses
  %i.f = lshr exact i64 %i.d, 52
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = or disjoint i64 %i.c, 4503599627370496
  %storemerge.i.i = select i1 %i.e, i64 %i.c, i64 %i.h ; 4 uses
  %i.i = add nsw i32 %i.g, -1023                  ; 2 uses
  %i.j = select i1 %i.e, i32 -1022, i32 %i.i      ; 2 uses
  %i.k = icmp sgt i64 %2, -1
  %i.l = icmp slt i32 %.sroa.6.8.extract.trunc, 13
  %or.cond35 = and i1 %i.k, %i.l
  br i1 %or.cond35, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = shl nuw nsw i32 %.sroa.6.8.extract.trunc, 2 ; 2 uses
  %i.n = sub nuw nsw i32 48, %i.m
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 8, %i.o
  %i.q = and i64 %i.p, %storemerge.i.i
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sub nuw nsw i32 52, %i.m
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw nsw i64 1, %i.s                  ; 2 uses
  %i.u = add nuw nsw i64 %i.t, %storemerge.i.i
  %i.v = sub nsw i64 0, %i.t
  %i.w = and i64 %i.u, %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.074.1 = phi i64 [ %storemerge.i.i, %bb.a ], [ %storemerge.i.i, %bb.b ], [ %i.w, %bb.c ]
  %.032 = phi i32 [ 13, %bb.a ], [ %.sroa.6.8.extract.trunc, %bb.b ], [ %.sroa.6.8.extract.trunc, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 48, i64 16, i1 false)
  %i.x = and i32 %.sroa.081.0.extract.trunc, 4096
  %.not88 = icmp eq i32 %i.x, 0                   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.str.1120..str.1121.i.i = select i1 %.not88, ptr @.str.1121, ptr @.str.1120
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %bb.d
  %.012.i.i = phi i64 [ %i.ad, %.split.i.i ], [ %.sroa.074.1, %bb.d ] ; 2 uses
  %.0.i.i38 = phi ptr [ %i.ac, %.split.i.i ], [ %i.y, %bb.d ]
  %i.z = and i64 %.012.i.i, 15
  %i.aa = getelementptr inbounds nuw i8, ptr %.str.1120..str.1121.i.i, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !65
  %i.ac = getelementptr inbounds i8, ptr %.0.i.i38, i64 -1 ; 2 uses
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !65
  %i.ad = lshr i64 %.012.i.i, 4                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader, label %.split.i.i, !llvm.loop !5344

_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader: ; preds = %.split.i.i
  %.not8990 = icmp eq i32 %.032, 0
  br i1 %.not8990, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit
  %.191 = phi i32 [ %5, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %.032, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader ] ; 3 uses
  %4 = zext nneg i32 %.191 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %4
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !65
  %i.ag = icmp eq i8 %i.af, 48
  br i1 %i.ag, label %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit, label %.critedge

_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit: ; preds = %.lr.ph
  %5 = add nsw i32 %.191, -1                      ; 2 uses
  %.not89 = icmp eq i32 %5, 0
  br i1 %.not89, label %.critedge, label %.lr.ph, !llvm.loop !5345

.critedge:                                        ; preds = %.lr.ph, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader
  %.1.lcssa = phi i32 [ 0, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader ], [ 0, %_ZN3fmt3v126detail13format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %.191, %.lr.ph ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 27 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !4244 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !4229
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.e, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.e:                                             ; preds = %.critedge
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !398
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aj), !inline_history !4342
  %.pre.i = load i64, ptr %i.ah, align 8, !tbaa !4244 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %.critedge, %bb.e
  %.pre-phi.i = phi i64 [ %i.aj, %.critedge ], [ %.pre2.i, %bb.e ]
  %i.ap = phi i64 [ %i.ai, %.critedge ], [ %.pre.i, %bb.e ]
  %i.aq = load ptr, ptr %3, align 8, !tbaa !4228
  store i64 %.pre-phi.i, ptr %i.ah, align 8, !tbaa !4244
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 48, ptr %i.ar, align 1, !tbaa !65
  %i.as = select i1 %.not88, i8 120, i8 88
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !4244 ; 2 uses
  %i.au = add i64 %i.at, 1                        ; 3 uses
  %i.av = load i64, ptr %i.ak, align 8, !tbaa !4229
  %i.aw = icmp ugt i64 %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42

bb.f:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !398
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.au), !inline_history !4342
  %.pre.i40 = load i64, ptr %i.ah, align 8, !tbaa !4244 ; 2 uses
  %.pre2.i41 = add i64 %.pre.i40, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit, %bb.f
  %.pre-phi.i39 = phi i64 [ %i.au, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %.pre2.i41, %bb.f ]
  %i.az = phi i64 [ %i.at, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %.pre.i40, %bb.f ]
  %i.ba = load ptr, ptr %3, align 8, !tbaa !4228
  store i64 %.pre-phi.i39, ptr %i.ah, align 8, !tbaa !4244
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  store i8 %i.as, ptr %i.bb, align 1, !tbaa !65
  %i.bc = load i64, ptr %i.ah, align 8, !tbaa !4244 ; 2 uses
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  %i.be = load i64, ptr %i.ak, align 8, !tbaa !4229
  %i.bf = icmp ugt i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.g, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46

bb.g:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !398
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bd), !inline_history !4342
  %.pre.i44 = load i64, ptr %i.ah, align 8, !tbaa !4244 ; 2 uses
  %.pre2.i45 = add i64 %.pre.i44, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42, %bb.g
  %.pre-phi.i43 = phi i64 [ %i.bd, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42 ], [ %.pre2.i45, %bb.g ]
  %i.bi = phi i64 [ %i.bc, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit42 ], [ %.pre.i44, %bb.g ]
  %i.bj = load i8, ptr %i.a, align 16, !tbaa !65
  %i.bk = load ptr, ptr %3, align 8, !tbaa !4228
  store i64 %.pre-phi.i43, ptr %i.ah, align 8, !tbaa !4244
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !65
  %i.bm = and i32 %.sroa.081.0.extract.trunc, 8192
  %i.bn = or i32 %.1.lcssa, %i.bm
  %or.cond = icmp ne i32 %i.bn, 0
  %i.bo = icmp slt i32 %.1.lcssa, %.sroa.6.8.extract.trunc ; 2 uses
  %or.cond37 = or i1 %i.bo, %or.cond
  br i1 %or.cond37, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46
  %i.bp = load i64, ptr %i.ah, align 8, !tbaa !4244 ; 2 uses
  %i.bq = add i64 %i.bp, 1                        ; 3 uses
  %i.br = load i64, ptr %i.ak, align 8, !tbaa !4229
  %i.bs = icmp ugt i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.i, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !398
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bq), !inline_history !4342
  %.pre.i48 = load i64, ptr %i.ah, align 8, !tbaa !4244 ; 2 uses
  %.pre2.i49 = add i64 %.pre.i48, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50: ; preds = %bb.h, %bb.i
  %.pre-phi.i47 = phi i64 [ %i.bq, %bb.h ], [ %.pre2.i49, %bb.i ]
  %i.bv = phi i64 [ %i.bp, %bb.h ], [ %.pre.i48, %bb.i ]
  %i.bw = load ptr, ptr %3, align 8, !tbaa !4228
  store i64 %.pre-phi.i47, ptr %i.ah, align 8, !tbaa !4244
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store i8 46, ptr %i.bx, align 1, !tbaa !65
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit46, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit50
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.bz = zext nneg i32 %.1.lcssa to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz ; 2 uses
  %.not31.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not31.i, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.j
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i51 = load i64, ptr %i.ah, align 8, !tbaa !4244
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %.lr.ph34.i
  %i.cd = phi i64 [ %.pre.i51, %.lr.ph34.i ], [ %i.dk, %._crit_edge.i ] ; 3 uses
  %.02732.i = phi ptr [ %i.by, %.lr.ph34.i ], [ %i.dl, %._crit_edge.i ] ; 9 uses
  %i.ce = load i64, ptr %i.ak, align 8, !tbaa !4229
  %i.cf = sub i64 %i.ce, %i.cd
  %i.cg = ptrtoint ptr %.02732.i to i64           ; 2 uses
  %i.ch = sub i64 %i.cb, %i.cg                    ; 4 uses
  %i.ci = icmp ult i64 %i.cf, %i.ch
  br i1 %i.ci, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !398
  %i.ck = add i64 %i.ch, %i.cd
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ck), !inline_history !4337
  %i.cl = load i64, ptr %i.ah, align 8, !tbaa !4244 ; 2 uses
  %i.cm = load i64, ptr %i.ak, align 8, !tbaa !4229
  %i.cn = sub i64 %i.cm, %i.cl
  %i.co = call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.cn)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.026.i = phi i64 [ %i.cl, %bb.l ], [ %i.cd, %bb.k ] ; 3 uses
  %.025.i = phi i64 [ %i.co, %bb.l ], [ %i.ch, %bb.k ] ; 13 uses
  %i.cp = load ptr, ptr %3, align 8, !tbaa !4228  ; 2 uses
  %i.cq = ptrtoaddr ptr %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.026.i ; 7 uses
  %.not36.i = icmp eq i64 %.025.i, 0
  br i1 %.not36.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.m
  %min.iters.check = icmp ult i64 %.025.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cs = add i64 %.026.i, %i.cq
  %i.ct = sub i64 %i.cg, %i.cs
  %diff.check = icmp ugt i64 %i.ct, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check117 = icmp ult i64 %.025.i, 32
  br i1 %min.iters.check117, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cu = and i64 %.025.i, 28
  %n.vec = and i64 %.025.i, -32                   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %index ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load = load <16 x i8>, ptr %i.cv, align 1, !tbaa !65
  %wide.load118 = load <16 x i8>, ptr %i.cw, align 1, !tbaa !65
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <16 x i8> %wide.load, ptr %i.cx, align 1, !tbaa !65
  store <16 x i8> %wide.load118, ptr %i.cy, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !5346

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !4205

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec119 = and i64 %.025.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index120 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.02732.i, i64 %index120
  %wide.load121 = load <4 x i8>, ptr %i.da, align 1, !tbaa !65
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 %index120
  store <4 x i8> %wide.load121, ptr %i.db, align 1, !tbaa !65
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next122, %n.vec119
  br i1 %i.dc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5347

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n123 = icmp eq i64 %.025.i, %n.vec119
  br i1 %cmp.n123, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

end_hunk_0
