Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/JsonCastOperator?download=true
inline.NumInlined: 36269
inline.NumDeleted: 7697
loop-unroll.NumCompletelyUnrolled: 285
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 375
begin_hunk_0_@_ZN3fmt3v116detail11write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEfEET0_SB_T1_NS0_12format_specsENS1_10locale_refE:bb.a
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @.str.65, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !38
  %i.cb = sext i8 %i.ca to i64
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = lshr i64 %i.bu, %i.cc                   ; 4 uses
  %i.ce = sub nuw nsw i64 %i.bu, %i.cd
  %.not.i.i.i47 = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i47, label %.noexc51, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = invoke ptr @_ZN3fmt3v116detail4fillIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET0_SB_mRKNS0_11basic_specsE(ptr %0, i64 noundef %i.cd, ptr noundef nonnull align 4 dereferenceable(16) %7)
          to label %.noexc51 unwind label %bb.u

.noexc51:                                         ; preds = %bb.s, %bb.r
  %.sroa.08.0.i.i.i48 = phi ptr [ %0, %bb.r ], [ %i.cf, %bb.s ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i.i48, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !121
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.0.i.i.i48, i64 noundef %i.ch, i64 noundef 0, ptr noundef %i.bq, i64 noundef %i.br)
          to label %.noexc52 unwind label %bb.u   ; 0 uses

.noexc52:                                         ; preds = %.noexc51
  %.not29.i.i.i49 = icmp eq i64 %i.bu, %i.cd
  br i1 %.not29.i.i.i49, label %_ZN3fmt3v116detail11write_bytesIcLNS0_5alignE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET1_SC_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit, label %bb.t

bb.t:                                             ; preds = %.noexc52
  %i.cj = invoke ptr @_ZN3fmt3v116detail4fillIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET0_SB_mRKNS0_11basic_specsE(ptr nonnull %.sroa.08.0.i.i.i48, i64 noundef %i.ce, ptr noundef nonnull align 4 dereferenceable(16) %7)
          to label %_ZN3fmt3v116detail11write_bytesIcLNS0_5alignE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET1_SC_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t, %.noexc51, %bb.s, %bb.w, %bb.q
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.v:                                             ; preds = %bb.n
  %i.cl = icmp eq i32 %.032, 2147483647
  br i1 %i.cl, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.72) #46
          to label %bb.x unwind label %bb.u

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.cm = add nuw nsw i32 %.032, 1                ; 2 uses
  %.not42 = icmp eq i32 %i.bc, 0
  br i1 %.not42, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = or i32 %.pre, 8192
  store i32 %i.cn, ptr %7, align 8, !tbaa !1265
  br label %bb.ad

bb.aa:                                            ; preds = %bb.n
  %.not41 = icmp eq i32 %i.bc, 0
  br i1 %.not41, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = or i32 %.pre, 8192
  store i32 %i.co, ptr %7, align 8, !tbaa !1265
  br label %bb.ad

bb.ac:                                            ; preds = %bb.n
  %spec.store.select = call i32 @llvm.umax.i32(i32 %.032, i32 1)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.z
  %.1 = phi i32 [ %i.cm, %bb.z ], [ %i.cm, %bb.y ], [ %.032, %bb.ab ], [ %.032, %bb.aa ], [ %spec.store.select, %bb.ac ] ; 2 uses
  %i.cp = invoke noundef i32 @_ZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(double noundef %i.b, i32 noundef %.1, ptr noundef nonnull align 4 dereferenceable(16) %7, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 %.1, ptr %i.bb, align 4, !tbaa !1363
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.cq = load ptr, ptr %9, align 8, !tbaa !1255
  store ptr %i.cq, ptr %10, align 8, !tbaa !1364
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cs = load i64, ptr %i.bj, align 8, !tbaa !1261
  %i.ct = trunc i64 %i.cs to i32
  store i32 %i.ct, ptr %i.cr, align 8, !tbaa !1366
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %i.cp, ptr %i.cu, align 4, !tbaa !1367
  %i.cv = invoke ptr @_ZN3fmt3v116detail14do_write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_SE_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %.0, i32 noundef 7, ptr %4)
          to label %_ZN3fmt3v116detail11write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEEET0_SC_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refE.exit unwind label %bb.ag

_ZN3fmt3v116detail11write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEEET0_SC_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refE.exit: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  br label %_ZN3fmt3v116detail11write_bytesIcLNS0_5alignE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET1_SC_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit

bb.af:                                            ; preds = %bb.ad
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  br label %bb.ai

_ZN3fmt3v116detail11write_bytesIcLNS0_5alignE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET1_SC_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit: ; preds = %.noexc52, %bb.t, %_ZN3fmt3v116detail11write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEEET0_SC_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refE.exit
  %.sroa.031.0 = phi ptr [ %i.cv, %_ZN3fmt3v116detail11write_floatIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS1_14big_decimal_fpEEET0_SC_RKT1_RKNS0_12format_specsENS0_4signEiNS1_10locale_refE.exit ], [ %.sroa.08.0.i.i.i48, %.noexc52 ], [ %i.cj, %bb.t ]
  %i.cy = load ptr, ptr %9, align 8, !tbaa !1255  ; 2 uses
  %.not.i.i = icmp eq ptr %i.cy, %i.bk
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN3fmt3v116detail11write_bytesIcLNS0_5alignE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET1_SC_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit
  call void @free(ptr noundef %i.cy) #38
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %_ZN3fmt3v116detail11write_bytesIcLNS0_5alignE2ESt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET1_SC_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  br label %bb.ak

bb.ai:                                            ; preds = %bb.af, %bb.ag, %bb.u
  %.pn45 = phi { ptr, i32 } [ %i.ck, %bb.u ], [ %i.cw, %bb.af ], [ %i.cx, %bb.ag ]
  %i.cz = load ptr, ptr %9, align 8, !tbaa !1255  ; 2 uses
  %.not.i.i55 = icmp eq ptr %i.cz, %i.bk
  br i1 %.not.i.i55, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit56, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @free(ptr noundef %i.cz) #38
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit56

_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit56: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  resume { ptr, i32 } %.pn45

bb.ak:                                            ; preds = %bb.m, %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, %_ZN3fmt3v116detail15write_nonfiniteIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET0_SB_bNS0_12format_specsENS0_4signE.exit
  %.sroa.031.2 = phi ptr [ %.sroa.08.1.i.i.i, %_ZN3fmt3v116detail15write_nonfiniteIcSt20back_insert_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEET0_SB_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.031.0, %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit ], [ %i.bg, %bb.m ]
  ret ptr %.sroa.031.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE(double noundef %0, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %.sroa.085.0.extract.trunc = trunc i64 %1 to i32 ; 2 uses
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
  %.sroa.078.1 = phi i64 [ %storemerge.i.i, %bb.a ], [ %storemerge.i.i, %bb.b ], [ %i.w, %bb.c ]
  %.032 = phi i32 [ 13, %bb.a ], [ %.sroa.6.8.extract.trunc, %bb.b ], [ %.sroa.6.8.extract.trunc, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 48, i64 16, i1 false)
  %i.x = and i32 %.sroa.085.0.extract.trunc, 4096
  %.not92 = icmp eq i32 %i.x, 0                   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.str.73..str.74.i.i = select i1 %.not92, ptr @.str.74, ptr @.str.73
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %bb.d
  %.012.i.i = phi i64 [ %i.ad, %.split.i.i ], [ %.sroa.078.1, %bb.d ] ; 2 uses
  %.0.i.i38 = phi ptr [ %i.ac, %.split.i.i ], [ %i.y, %bb.d ]
  %i.z = and i64 %.012.i.i, 15
  %i.aa = getelementptr inbounds nuw i8, ptr %.str.73..str.74.i.i, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !38
  %i.ac = getelementptr inbounds i8, ptr %.0.i.i38, i64 -1 ; 2 uses
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !38
  %i.ad = lshr i64 %.012.i.i, 4                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader, label %.split.i.i, !llvm.loop !1368

_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader: ; preds = %.split.i.i
  %.not9394 = icmp eq i32 %.032, 0
  br i1 %.not9394, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit
  %.195 = phi i32 [ %5, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %.032, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader ] ; 3 uses
  %4 = zext nneg i32 %.195 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %4
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !38
  %i.ag = icmp eq i8 %i.af, 48
  br i1 %i.ag, label %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit, label %.critedge

_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit: ; preds = %.lr.ph
  %5 = add nsw i32 %.195, -1                      ; 2 uses
  %.not93 = icmp eq i32 %5, 0
  br i1 %.not93, label %.critedge, label %.lr.ph, !llvm.loop !1369

.critedge:                                        ; preds = %.lr.ph, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader
  %.1.lcssa = phi i32 [ 0, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader ], [ 0, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %.195, %.lr.ph ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 27 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !1261 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !1256
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.e:                                             ; preds = %.critedge
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1253
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aj), !inline_history !1370
  %.pre.i = load i64, ptr %i.ah, align 8, !tbaa !1261 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %.critedge, %bb.e
  %.pre-phi.i = phi i64 [ %i.aj, %.critedge ], [ %.pre2.i, %bb.e ]
  %i.ap = phi i64 [ %i.ai, %.critedge ], [ %.pre.i, %bb.e ]
  %i.aq = load ptr, ptr %3, align 8, !tbaa !1255
  store i64 %.pre-phi.i, ptr %i.ah, align 8, !tbaa !1261
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 48, ptr %i.ar, align 1, !tbaa !38
  %i.as = select i1 %.not92, i8 120, i8 88
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !1261 ; 2 uses
  %i.au = add i64 %i.at, 1                        ; 3 uses
  %i.av = load i64, ptr %i.ak, align 8, !tbaa !1256
  %i.aw = icmp ugt i64 %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42

bb.f:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1253
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.au), !inline_history !1370
  %.pre.i40 = load i64, ptr %i.ah, align 8, !tbaa !1261 ; 2 uses
  %.pre2.i41 = add i64 %.pre.i40, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit, %bb.f
  %.pre-phi.i39 = phi i64 [ %i.au, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %.pre2.i41, %bb.f ]
  %i.az = phi i64 [ %i.at, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %.pre.i40, %bb.f ]
  %i.ba = load ptr, ptr %3, align 8, !tbaa !1255
  store i64 %.pre-phi.i39, ptr %i.ah, align 8, !tbaa !1261
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  store i8 %i.as, ptr %i.bb, align 1, !tbaa !38
  %i.bc = load i64, ptr %i.ah, align 8, !tbaa !1261 ; 2 uses
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  %i.be = load i64, ptr %i.ak, align 8, !tbaa !1256
  %i.bf = icmp ugt i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.g, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46

bb.g:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1253
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bd), !inline_history !1370
  %.pre.i44 = load i64, ptr %i.ah, align 8, !tbaa !1261 ; 2 uses
  %.pre2.i45 = add i64 %.pre.i44, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42, %bb.g
  %.pre-phi.i43 = phi i64 [ %i.bd, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ], [ %.pre2.i45, %bb.g ]
  %i.bi = phi i64 [ %i.bc, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ], [ %.pre.i44, %bb.g ]
  %i.bj = load i8, ptr %i.a, align 16, !tbaa !38
  %i.bk = load ptr, ptr %3, align 8, !tbaa !1255
  store i64 %.pre-phi.i43, ptr %i.ah, align 8, !tbaa !1261
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !38
  %i.bm = and i32 %.sroa.085.0.extract.trunc, 8192
  %i.bn = or i32 %.1.lcssa, %i.bm
  %or.cond = icmp ne i32 %i.bn, 0
  %i.bo = icmp slt i32 %.1.lcssa, %.sroa.6.8.extract.trunc ; 2 uses
  %or.cond37 = or i1 %i.bo, %or.cond
  br i1 %or.cond37, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46
  %i.bp = load i64, ptr %i.ah, align 8, !tbaa !1261 ; 2 uses
  %i.bq = add i64 %i.bp, 1                        ; 3 uses
  %i.br = load i64, ptr %i.ak, align 8, !tbaa !1256
  %i.bs = icmp ugt i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.i, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1253
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bq), !inline_history !1370
  %.pre.i48 = load i64, ptr %i.ah, align 8, !tbaa !1261 ; 2 uses
  %.pre2.i49 = add i64 %.pre.i48, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50: ; preds = %bb.h, %bb.i
  %.pre-phi.i47 = phi i64 [ %i.bq, %bb.h ], [ %.pre2.i49, %bb.i ]
  %i.bv = phi i64 [ %i.bp, %bb.h ], [ %.pre.i48, %bb.i ]
  %i.bw = load ptr, ptr %3, align 8, !tbaa !1255
  store i64 %.pre-phi.i47, ptr %i.ah, align 8, !tbaa !1261
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store i8 46, ptr %i.bx, align 1, !tbaa !38
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.bz = zext nneg i32 %.1.lcssa to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz ; 2 uses
  %.not24.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not24.i, label %_ZN3fmt3v116detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %bb.j
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i51 = load i64, ptr %i.ah, align 8, !tbaa !1261
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %.lr.ph27.i
  %i.cd = phi i64 [ %.pre.i51, %.lr.ph27.i ], [ %i.dm, %._crit_edge.i ] ; 2 uses
  %.01925.i = phi ptr [ %i.by, %.lr.ph27.i ], [ %i.dn, %._crit_edge.i ] ; 9 uses
  %i.ce = ptrtoint ptr %.01925.i to i64           ; 2 uses
  %i.cf = sub i64 %i.cb, %i.ce                    ; 2 uses
  %i.cg = add i64 %i.cf, %i.cd                    ; 2 uses
  %i.ch = load i64, ptr %i.ak, align 8, !tbaa !1256 ; 2 uses
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.l, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i

bb.l:                                             ; preds = %bb.k
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !1253
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cg), !inline_history !1371
  %.pre30.i = load i64, ptr %i.ak, align 8, !tbaa !1256
  %.pre31.i = load i64, ptr %i.ah, align 8, !tbaa !1261
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.l, %bb.k
  %i.ck = phi i64 [ %i.cd, %bb.k ], [ %.pre31.i, %bb.l ] ; 4 uses
  %i.cl = phi i64 [ %i.ch, %bb.k ], [ %.pre30.i, %bb.l ]
  %i.cm = sub i64 %i.cl, %i.ck
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.cm, i64 %i.cf) ; 13 uses
  %i.cn = load ptr, ptr %3, align 8, !tbaa !1255  ; 2 uses
  %i.co = ptrtoaddr ptr %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ck ; 7 uses
  %.not29.i = icmp eq i64 %spec.select.i, 0
  br i1 %.not29.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i
  %min.iters.check = icmp ult i64 %spec.select.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cq = add i64 %i.ck, %i.co
  %i.cr = sub i64 %i.ce, %i.cq
  %diff.check = icmp ugt i64 %i.cr, -128
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check121 = icmp ult i64 %spec.select.i, 128
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cs = and i64 %spec.select.i, 120
  %n.vec = and i64 %spec.select.i, -128           ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.01925.i, i64 %index ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 96
  %wide.load = load <32 x i8>, ptr %i.ct, align 1, !tbaa !38
  %wide.load122 = load <32 x i8>, ptr %i.cu, align 1, !tbaa !38
  %wide.load123 = load <32 x i8>, ptr %i.cv, align 1, !tbaa !38
  %wide.load124 = load <32 x i8>, ptr %i.cw, align 1, !tbaa !38
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 %index ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 96
  store <32 x i8> %wide.load, ptr %i.cx, align 1, !tbaa !38
  store <32 x i8> %wide.load122, ptr %i.cy, align 1, !tbaa !38
  store <32 x i8> %wide.load123, ptr %i.cz, align 1, !tbaa !38
  store <32 x i8> %wide.load124, ptr %i.da, align 1, !tbaa !38
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !1372

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1272

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec125 = and i64 %spec.select.i, -8          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index126 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next128, %vec.epilog.vector.body ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.01925.i, i64 %index126
  %wide.load127 = load <8 x i8>, ptr %i.dc, align 1, !tbaa !38
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 %index126
  store <8 x i8> %wide.load127, ptr %i.dd, align 1, !tbaa !38
  %index.next128 = add nuw i64 %index126, 8       ; 2 uses
end_hunk_0
