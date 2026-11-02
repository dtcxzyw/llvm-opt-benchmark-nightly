Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/tree?download=true
inline.NumInlined: 6283
inline.NumDeleted: 1853
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEEeEET0_S5_T1_NS0_12format_specsENS1_10locale_refE:bb.a
bb.l:                                             ; preds = %bb.k, %bb.j
  invoke void @_ZN3fmt3v116detail15format_hexfloatIeTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE(x86_fp80 noundef %1, ptr noundef nonnull byval(%"struct.fmt::v11::format_specs") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.be = load ptr, ptr %7, align 8, !tbaa !269
  %i.bf = load i64, ptr %i.ax, align 8, !tbaa !270 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %i.be, ptr %4, align 8, !tbaa !275
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bf, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !276
  %i.bg = invoke ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_2ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %0, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 noundef %i.bf, i64 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN3fmt3v116detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit unwind label %bb.x

_ZN3fmt3v116detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.z

bb.n:                                             ; preds = %bb.i
  %i.bh = icmp eq i32 %.028, 2147483647
  br i1 %i.bh, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.50) #42
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.bi = add nsw i32 %.028, 1                    ; 2 uses
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = or i64 %i.c, 8192
  store i64 %i.bj, ptr %2, align 8, !tbaa !294
  br label %bb.v

bb.s:                                             ; preds = %bb.i
  %.not35 = icmp eq i32 %i.ar, 0
  br i1 %.not35, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = or i64 %i.c, 8192
  store i64 %i.bk, ptr %2, align 8, !tbaa !294
  br label %bb.v

bb.u:                                             ; preds = %bb.i
  %spec.store.select = call i32 @llvm.umax.i32(i32 %.028, i32 1)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %bb.r
  %.129 = phi i32 [ %i.bi, %bb.r ], [ %i.bi, %bb.q ], [ %.028, %bb.t ], [ %.028, %bb.s ], [ %spec.store.select, %bb.u ] ; 2 uses
  %i.bl = invoke noundef i32 @_ZN3fmt3v116detail12format_floatIeEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(x86_fp80 noundef %1, i32 noundef %.129, ptr noundef nonnull align 8 dereferenceable(20) %2, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %.129, ptr %i.aq, align 8, !tbaa !296
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.bm = load ptr, ptr %7, align 8, !tbaa !269
  store ptr %i.bm, ptr %8, align 8, !tbaa !362
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bo = load i64, ptr %i.ax, align 8, !tbaa !270
  %i.bp = trunc i64 %i.bo to i32
  store i32 %i.bp, ptr %i.bn, align 8, !tbaa !363
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.bl, ptr %i.bq, align 4, !tbaa !364
  %i.br = invoke ptr @_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_S8_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(20) %2, i32 noundef %.0, ptr %3)
          to label %_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refE.exit unwind label %bb.y

_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refE.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.z

bb.x:                                             ; preds = %bb.l, %bb.o, %bb.m, %bb.v
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.ab

bb.z:                                             ; preds = %_ZN3fmt3v116detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit, %_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refE.exit
  %.sroa.024.0 = phi ptr [ %i.br, %_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refE.exit ], [ %i.bg, %_ZN3fmt3v116detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit ]
  %i.bu = load ptr, ptr %7, align 8, !tbaa !269   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, %i.ay
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef %i.bu) #12
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.ad

bb.ab:                                            ; preds = %bb.x, %bb.y
  %.pn39 = phi { ptr, i32 } [ %i.bt, %bb.y ], [ %i.bs, %bb.x ]
  %i.bv = load ptr, ptr %7, align 8, !tbaa !269   ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.bv, %i.ay
  br i1 %.not.i.i43, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit44, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef %i.bv) #12
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit44

_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit44: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  resume { ptr, i32 } %.pn39

bb.ad:                                            ; preds = %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.024.1 = phi ptr [ %.sroa.024.0, %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit ], [ %i.v, %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ]
  ret ptr %.sroa.024.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail15format_hexfloatIeTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE(x86_fp80 noundef %0, ptr noundef byval(%"struct.fmt::v11::format_specs") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %i.b = bitcast x86_fp80 %0 to i80
  %.0.insert.ext.i.i = zext i80 %i.b to i128      ; 3 uses
  %i.c = and i128 %.0.insert.ext.i.i, 18446744073709551615 ; 4 uses
  %i.d = lshr i128 %.0.insert.ext.i.i, 64
  %i.e = trunc nuw nsw i128 %i.d to i32
  %i.f = and i32 %i.e, 32767
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 1)
  %i.g = add nsw i32 %spec.store.select.i.i, -16383
  %i.h = lshr i128 %i.c, 60
  %i.i = trunc nuw nsw i128 %i.h to i32           ; 2 uses
  %i.j = icmp samesign ugt i32 %i.i, 1
  %i.k = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.i, i1 true)
  %.neg = add nuw nsw i32 %i.k, -31
  %i.l = select i1 %i.j, i32 %.neg, i32 0
  %.sroa.9.0 = add nsw i32 %i.g, %i.l             ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !296  ; 7 uses
  %or.cond36 = icmp ult i32 %i.n, 15
  br i1 %or.cond36, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = shl nuw nsw i32 %i.n, 2                  ; 2 uses
  %i.p = sub nuw nsw i32 56, %i.o
  %i.q = zext nneg i32 %i.p to i128
  %i.r = shl nuw nsw i128 8, %i.q
  %i.s = and i128 %i.r, %.0.insert.ext.i.i
  %.not = icmp eq i128 %i.s, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = sub nuw nsw i32 60, %i.o
  %i.u = zext nneg i32 %i.t to i128
  %i.v = shl nuw nsw i128 1, %i.u                 ; 2 uses
  %i.w = add nuw nsw i128 %i.v, %i.c
  %i.x = sub nsw i128 0, %i.v
  %i.y = and i128 %i.w, %i.x
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.078.0 = phi i128 [ %i.c, %bb.b ], [ %i.y, %bb.c ] ; 3 uses
  %i.z = and i128 %.sroa.078.0, 18446744073709551616
  %.not35 = icmp eq i128 %i.z, 0
  br i1 %.not35, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = lshr i128 %.sroa.078.0, 4
  %i.ab = add nsw i32 %.sroa.9.0, 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.sroa.078.2 = phi i128 [ %i.c, %bb.a ], [ %.sroa.078.0, %bb.d ], [ %i.aa, %bb.e ]
  %.sroa.9.2 = phi i32 [ %.sroa.9.0, %bb.a ], [ %.sroa.9.0, %bb.d ], [ %i.ab, %bb.e ] ; 3 uses
  %.032 = phi i32 [ 15, %bb.a ], [ %i.n, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 48, i64 32, i1 false)
  %i.ac = load i64, ptr %1, align 8, !tbaa !294   ; 2 uses
  %i.ad = and i64 %i.ac, 4096
  %.not87 = icmp eq i64 %i.ad, 0                  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.str.37..str.38.i.i = select i1 %.not87, ptr @.str.38, ptr @.str.37
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %bb.f
  %.012.i.i = phi i128 [ %i.ak, %.split.i.i ], [ %.sroa.078.2, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %i.aj, %.split.i.i ], [ %i.ae, %bb.f ]
  %i.af = trunc i128 %.012.i.i to i64
  %i.ag = and i64 %i.af, 15
  %i.ah = getelementptr inbounds nuw i8, ptr %.str.37..str.38.i.i, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !202
  %i.aj = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !202
  %i.ak = lshr i128 %.012.i.i, 4                  ; 2 uses
  %.not.i.i = icmp eq i128 %i.ak, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail13format_base2eIcoEEPT_iS4_T0_ib.exit.preheader, label %.split.i.i, !llvm.loop !20

_ZN3fmt3v116detail13format_base2eIcoEEPT_iS4_T0_ib.exit.preheader: ; preds = %.split.i.i
  %.not94 = icmp eq i32 %.032, 0
  br i1 %.not94, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN3fmt3v116detail13format_base2eIcoEEPT_iS4_T0_ib.exit.preheader
  %3 = zext nneg i32 %.032 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN3fmt3v116detail13format_base2eIcoEEPT_iS4_T0_ib.exit
  %indvars.iv = phi i64 [ %3, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN3fmt3v116detail13format_base2eIcoEEPT_iS4_T0_ib.exit ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.am = load i8, ptr %i.al, align 1, !tbaa !202
  %.not121 = icmp eq i8 %i.am, 48
  br i1 %.not121, label %_ZN3fmt3v116detail13format_base2eIcoEEPT_iS4_T0_ib.exit, label %.critedge.loopexit.split.loop.exit118

_ZN3fmt3v116detail13format_base2eIcoEEPT_iS4_T0_ib.exit: ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %4 = and i64 %indvars.iv.next, 4294967295
  %.not95 = icmp eq i64 %4, 0
  br i1 %.not95, label %.critedge, label %.lr.ph, !llvm.loop !957

.critedge.loopexit.split.loop.exit118:            ; preds = %.lr.ph
  %5 = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %_ZN3fmt3v116detail13format_base2eIcoEEPT_iS4_T0_ib.exit, %.critedge.loopexit.split.loop.exit118, %_ZN3fmt3v116detail13format_base2eIcoEEPT_iS4_T0_ib.exit.preheader
  %.1.lcssa = phi i32 [ 0, %_ZN3fmt3v116detail13format_base2eIcoEEPT_iS4_T0_ib.exit.preheader ], [ %5, %.critedge.loopexit.split.loop.exit118 ], [ 0, %_ZN3fmt3v116detail13format_base2eIcoEEPT_iS4_T0_ib.exit ] ; 4 uses
  %.lcssa = phi i1 [ false, %_ZN3fmt3v116detail13format_base2eIcoEEPT_iS4_T0_ib.exit.preheader ], [ true, %.critedge.loopexit.split.loop.exit118 ], [ false, %_ZN3fmt3v116detail13format_base2eIcoEEPT_iS4_T0_ib.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 27 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !270 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !271
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.g:                                             ; preds = %.critedge
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !272
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ap), !inline_history !26
  %.pre.i = load i64, ptr %i.an, align 8, !tbaa !270 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %.critedge, %bb.g
  %.pre-phi.i = phi i64 [ %i.ap, %.critedge ], [ %.pre2.i, %bb.g ]
  %i.av = phi i64 [ %i.ao, %.critedge ], [ %.pre.i, %bb.g ]
  %i.aw = load ptr, ptr %2, align 8, !tbaa !269
  store i64 %.pre-phi.i, ptr %i.an, align 8, !tbaa !270
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 48, ptr %i.ax, align 1, !tbaa !202
  %i.ay = select i1 %.not87, i8 120, i8 88
  %i.az = load i64, ptr %i.an, align 8, !tbaa !270 ; 2 uses
  %i.ba = add i64 %i.az, 1                        ; 3 uses
  %i.bb = load i64, ptr %i.aq, align 8, !tbaa !271
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42

bb.h:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !272
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ba), !inline_history !26
  %.pre.i40 = load i64, ptr %i.an, align 8, !tbaa !270 ; 2 uses
  %.pre2.i41 = add i64 %.pre.i40, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit, %bb.h
  %.pre-phi.i39 = phi i64 [ %i.ba, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %.pre2.i41, %bb.h ]
  %i.bf = phi i64 [ %i.az, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %.pre.i40, %bb.h ]
  %i.bg = load ptr, ptr %2, align 8, !tbaa !269
  store i64 %.pre-phi.i39, ptr %i.an, align 8, !tbaa !270
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  store i8 %i.ay, ptr %i.bh, align 1, !tbaa !202
  %i.bi = load i64, ptr %i.an, align 8, !tbaa !270 ; 2 uses
  %i.bj = add i64 %i.bi, 1                        ; 3 uses
  %i.bk = load i64, ptr %i.aq, align 8, !tbaa !271
  %i.bl = icmp ugt i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.i, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46

bb.i:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !272
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bj), !inline_history !26
  %.pre.i44 = load i64, ptr %i.an, align 8, !tbaa !270 ; 2 uses
  %.pre2.i45 = add i64 %.pre.i44, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42, %bb.i
  %.pre-phi.i43 = phi i64 [ %i.bj, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ], [ %.pre2.i45, %bb.i ]
  %i.bo = phi i64 [ %i.bi, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ], [ %.pre.i44, %bb.i ]
  %i.bp = load i8, ptr %i.a, align 16, !tbaa !202
  %i.bq = load ptr, ptr %2, align 8, !tbaa !269
  store i64 %.pre-phi.i43, ptr %i.an, align 8, !tbaa !270
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !202
  %i.bs = and i64 %i.ac, 8192
  %i.bt = icmp ne i64 %i.bs, 0
  %i.bu = icmp sgt i32 %i.n, 0
  %i.bv = or i1 %i.bu, %i.bt
  %or.cond38 = or i1 %i.bv, %.lcssa
  br i1 %or.cond38, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46
  %i.bw = load i64, ptr %i.an, align 8, !tbaa !270 ; 2 uses
  %i.bx = add i64 %i.bw, 1                        ; 3 uses
  %i.by = load i64, ptr %i.aq, align 8, !tbaa !271
  %i.bz = icmp ugt i64 %i.bx, %i.by
  br i1 %i.bz, label %bb.k, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !272
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bx), !inline_history !26
  %.pre.i48 = load i64, ptr %i.an, align 8, !tbaa !270 ; 2 uses
  %.pre2.i49 = add i64 %.pre.i48, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50: ; preds = %bb.j, %bb.k
  %.pre-phi.i47 = phi i64 [ %i.bx, %bb.j ], [ %.pre2.i49, %bb.k ]
  %i.cc = phi i64 [ %i.bw, %bb.j ], [ %.pre.i48, %bb.k ]
  %i.cd = load ptr, ptr %2, align 8, !tbaa !269
  store i64 %.pre-phi.i47, ptr %i.an, align 8, !tbaa !270
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cc
  store i8 46, ptr %i.ce, align 1, !tbaa !202
  br label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.cg = zext nneg i32 %.1.lcssa to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cg ; 2 uses
  %.not24.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not24.i, label %_ZN3fmt3v116detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %bb.l
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre.i51 = load i64, ptr %i.an, align 8, !tbaa !270
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i, %.lr.ph27.i
  %i.ck = phi i64 [ %.pre.i51, %.lr.ph27.i ], [ %i.dp, %._crit_edge.i ] ; 2 uses
  %.01925.i = phi ptr [ %i.cf, %.lr.ph27.i ], [ %i.dq, %._crit_edge.i ] ; 9 uses
  %i.cl = ptrtoint ptr %.01925.i to i64           ; 2 uses
  %i.cm = sub i64 %i.ci, %i.cl                    ; 2 uses
  %i.cn = add i64 %i.cm, %i.ck                    ; 2 uses
  %i.co = load i64, ptr %i.aq, align 8, !tbaa !271 ; 2 uses
  %i.cp = icmp ugt i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.n, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i

bb.n:                                             ; preds = %bb.m
  %i.cq = load ptr, ptr %i.cj, align 8, !tbaa !272
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.cn), !inline_history !27
  %.pre30.i = load i64, ptr %i.aq, align 8, !tbaa !271
  %.pre31.i = load i64, ptr %i.an, align 8, !tbaa !270
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.n, %bb.m
  %i.cr = phi i64 [ %i.ck, %bb.m ], [ %.pre31.i, %bb.n ] ; 4 uses
  %i.cs = phi i64 [ %i.co, %bb.m ], [ %.pre30.i, %bb.n ]
  %i.ct = sub i64 %i.cs, %i.cr
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.cm) ; 13 uses
  %i.cu = load ptr, ptr %2, align 8, !tbaa !269   ; 2 uses
  %i.cv = ptrtoaddr ptr %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cr ; 7 uses
  %.not29.i = icmp eq i64 %spec.select.i, 0
  br i1 %.not29.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i
  %min.iters.check = icmp ult i64 %spec.select.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cx = add i64 %i.cr, %i.cv
  %i.cy = sub i64 %i.cl, %i.cx
  %diff.check = icmp ugt i64 %i.cy, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check119 = icmp ult i64 %spec.select.i, 32
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cz = and i64 %spec.select.i, 28
  %n.vec = and i64 %spec.select.i, -32            ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.01925.i, i64 %index ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load = load <16 x i8>, ptr %i.da, align 1, !tbaa !202
  %wide.load120 = load <16 x i8>, ptr %i.db, align 1, !tbaa !202
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <16 x i8> %wide.load, ptr %i.dc, align 1, !tbaa !202
  store <16 x i8> %wide.load120, ptr %i.dd, align 1, !tbaa !202
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !958

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !303

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec121 = and i64 %spec.select.i, -4          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next124, %vec.epilog.vector.body ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.01925.i, i64 %index122
  %wide.load123 = load <4 x i8>, ptr %i.df, align 1, !tbaa !202
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 %index122
  store <4 x i8> %wide.load123, ptr %i.dg, align 1, !tbaa !202
  %index.next124 = add nuw i64 %index122, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next124, %n.vec121
  br i1 %i.dh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !959

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n125 = icmp eq i64 %spec.select.i, %n.vec121
  br i1 %cmp.n125, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEEfEET0_S5_T1_NS0_12format_specsENS1_10locale_refE:bb.a
  switch i8 %i.bc, label %bb.x [
    i8 4, label %bb.m
    i8 1, label %bb.q
    i8 2, label %bb.v
  ]

bb.m:                                             ; preds = %bb.l
  %.not41 = icmp eq i32 %.0, 0
  br i1 %.not41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = shl nuw nsw i32 %.0, 3
  %i.be = lshr i32 539700480, %i.bd
  %i.bf = trunc i32 %i.be to i8
  store i64 1, ptr %i.az, align 8, !tbaa !270
  store i8 %i.bf, ptr %i.ba, align 8, !tbaa !202
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  invoke void @_ZN3fmt3v116detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE(double noundef %i.a, ptr noundef nonnull byval(%"struct.fmt::v11::format_specs") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.p unwind label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %8, align 8, !tbaa !269
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !270 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %i.bg, ptr %4, align 8, !tbaa !275
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bh, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !276
  %i.bi = invoke ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_2ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %0, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 noundef %i.bh, i64 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN3fmt3v116detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit unwind label %bb.aa

_ZN3fmt3v116detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.ac

bb.q:                                             ; preds = %bb.l
  %i.bj = icmp eq i32 %.032, 2147483647
  br i1 %i.bj, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.50) #42
          to label %bb.s unwind label %bb.aa

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.bk = add nuw nsw i32 %.032, 1                ; 2 uses
  %.not39 = icmp eq i32 %i.as, 0
  br i1 %.not39, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = or i64 %i.d, 8192
  store i64 %i.bl, ptr %2, align 8, !tbaa !294
  br label %bb.y

bb.v:                                             ; preds = %bb.l
  %.not38 = icmp eq i32 %i.as, 0
  br i1 %.not38, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = or i64 %i.d, 8192
  store i64 %i.bm, ptr %2, align 8, !tbaa !294
  br label %bb.y

bb.x:                                             ; preds = %bb.l
  %spec.store.select = call i32 @llvm.umax.i32(i32 %.032, i32 1)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.t, %bb.u
  %.133 = phi i32 [ %i.bk, %bb.u ], [ %i.bk, %bb.t ], [ %.032, %bb.w ], [ %.032, %bb.v ], [ %spec.store.select, %bb.x ] ; 2 uses
  %i.bn = invoke noundef i32 @_ZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(double noundef %i.a, i32 noundef %.133, ptr noundef nonnull align 8 dereferenceable(20) %2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %.133, ptr %i.ar, align 8, !tbaa !296
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.bo = load ptr, ptr %8, align 8, !tbaa !269
  store ptr %i.bo, ptr %9, align 8, !tbaa !362
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = load i64, ptr %i.az, align 8, !tbaa !270
  %i.br = trunc i64 %i.bq to i32
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !363
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %i.bn, ptr %i.bs, align 4, !tbaa !364
  %i.bt = invoke ptr @_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_S8_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(20) %2, i32 noundef %.0, ptr %3)
          to label %_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refE.exit unwind label %bb.ab

_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refE.exit: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.ac

bb.aa:                                            ; preds = %bb.o, %bb.r, %bb.p, %bb.y
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.ae

bb.ac:                                            ; preds = %_ZN3fmt3v116detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit, %_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refE.exit
  %.sroa.028.0 = phi ptr [ %i.bt, %_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refE.exit ], [ %i.bi, %_ZN3fmt3v116detail11write_bytesIcLNS0_5alignE2ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit ]
  %i.bw = load ptr, ptr %8, align 8, !tbaa !269   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bw, %i.ba
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @free(ptr noundef %i.bw) #12
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.ag

bb.ae:                                            ; preds = %bb.aa, %bb.ab
  %.pn42 = phi { ptr, i32 } [ %i.bv, %bb.ab ], [ %i.bu, %bb.aa ]
  %i.bx = load ptr, ptr %8, align 8, !tbaa !269   ; 2 uses
  %.not.i.i46 = icmp eq ptr %i.bx, %i.ba
  br i1 %.not.i.i46, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit47, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef %i.bx) #12
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit47

_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit47: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  resume { ptr, i32 } %.pn42

bb.ag:                                            ; preds = %bb.k, %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.028.2 = phi ptr [ %i.w, %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.028.0, %_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit ], [ %i.aw, %bb.k ]
  ret ptr %.sroa.028.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE(double noundef %0, ptr noundef byval(%"struct.fmt::v11::format_specs") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
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
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !296  ; 7 uses
  %or.cond35 = icmp ult i32 %i.l, 13
  br i1 %or.cond35, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = shl nuw nsw i32 %i.l, 2                  ; 2 uses
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
  %.032 = phi i32 [ 13, %bb.a ], [ %i.l, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 48, i64 16, i1 false)
  %i.x = load i64, ptr %1, align 8, !tbaa !294    ; 2 uses
  %i.y = and i64 %i.x, 4096
  %.not85 = icmp eq i64 %i.y, 0                   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.str.37..str.38.i.i = select i1 %.not85, ptr @.str.38, ptr @.str.37
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %bb.d
  %.012.i.i = phi i64 [ %i.ae, %.split.i.i ], [ %.sroa.078.1, %bb.d ] ; 2 uses
  %.0.i.i38 = phi ptr [ %i.ad, %.split.i.i ], [ %i.z, %bb.d ]
  %i.aa = and i64 %.012.i.i, 15
  %i.ab = getelementptr inbounds nuw i8, ptr %.str.37..str.38.i.i, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !202
  %i.ad = getelementptr inbounds i8, ptr %.0.i.i38, i64 -1 ; 2 uses
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !202
  %i.ae = lshr i64 %.012.i.i, 4                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader, label %.split.i.i, !llvm.loop !19

_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader: ; preds = %.split.i.i
  %.not92 = icmp eq i32 %.032, 0
  br i1 %.not92, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader
  %3 = zext nneg i32 %.032 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit
  %indvars.iv = phi i64 [ %3, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !202
  %.not121 = icmp eq i8 %i.ag, 48
  br i1 %.not121, label %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit, label %.critedge.loopexit.split.loop.exit118

_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit: ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %4 = and i64 %indvars.iv.next, 4294967295
  %.not93 = icmp eq i64 %4, 0
  br i1 %.not93, label %.critedge, label %.lr.ph, !llvm.loop !1139

.critedge.loopexit.split.loop.exit118:            ; preds = %.lr.ph
  %5 = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit, %.critedge.loopexit.split.loop.exit118, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader
  %.1.lcssa = phi i32 [ 0, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader ], [ %5, %.critedge.loopexit.split.loop.exit118 ], [ 0, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit ] ; 4 uses
  %.lcssa = phi i1 [ false, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit.preheader ], [ true, %.critedge.loopexit.split.loop.exit118 ], [ false, %_ZN3fmt3v116detail13format_base2eIcmEEPT_iS4_T0_ib.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 27 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !270 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !271
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.e:                                             ; preds = %.critedge
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !272
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.aj), !inline_history !26
  %.pre.i = load i64, ptr %i.ah, align 8, !tbaa !270 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %.critedge, %bb.e
  %.pre-phi.i = phi i64 [ %i.aj, %.critedge ], [ %.pre2.i, %bb.e ]
  %i.ap = phi i64 [ %i.ai, %.critedge ], [ %.pre.i, %bb.e ]
  %i.aq = load ptr, ptr %2, align 8, !tbaa !269
  store i64 %.pre-phi.i, ptr %i.ah, align 8, !tbaa !270
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 48, ptr %i.ar, align 1, !tbaa !202
  %i.as = select i1 %.not85, i8 120, i8 88
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !270 ; 2 uses
  %i.au = add i64 %i.at, 1                        ; 3 uses
  %i.av = load i64, ptr %i.ak, align 8, !tbaa !271
  %i.aw = icmp ugt i64 %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42

bb.f:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !272
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.au), !inline_history !26
  %.pre.i40 = load i64, ptr %i.ah, align 8, !tbaa !270 ; 2 uses
  %.pre2.i41 = add i64 %.pre.i40, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit, %bb.f
  %.pre-phi.i39 = phi i64 [ %i.au, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %.pre2.i41, %bb.f ]
  %i.az = phi i64 [ %i.at, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %.pre.i40, %bb.f ]
  %i.ba = load ptr, ptr %2, align 8, !tbaa !269
  store i64 %.pre-phi.i39, ptr %i.ah, align 8, !tbaa !270
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  store i8 %i.as, ptr %i.bb, align 1, !tbaa !202
  %i.bc = load i64, ptr %i.ah, align 8, !tbaa !270 ; 2 uses
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  %i.be = load i64, ptr %i.ak, align 8, !tbaa !271
  %i.bf = icmp ugt i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.g, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46

bb.g:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !272
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bd), !inline_history !26
  %.pre.i44 = load i64, ptr %i.ah, align 8, !tbaa !270 ; 2 uses
  %.pre2.i45 = add i64 %.pre.i44, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42, %bb.g
  %.pre-phi.i43 = phi i64 [ %i.bd, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ], [ %.pre2.i45, %bb.g ]
  %i.bi = phi i64 [ %i.bc, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ], [ %.pre.i44, %bb.g ]
  %i.bj = load i8, ptr %i.a, align 16, !tbaa !202
  %i.bk = load ptr, ptr %2, align 8, !tbaa !269
  store i64 %.pre-phi.i43, ptr %i.ah, align 8, !tbaa !270
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !202
  %i.bm = and i64 %i.x, 8192
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = icmp sgt i32 %i.l, 0
  %i.bp = or i1 %i.bo, %i.bn
  %or.cond37 = or i1 %i.bp, %.lcssa
  br i1 %or.cond37, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46
  %i.bq = load i64, ptr %i.ah, align 8, !tbaa !270 ; 2 uses
  %i.br = add i64 %i.bq, 1                        ; 3 uses
  %i.bs = load i64, ptr %i.ak, align 8, !tbaa !271
  %i.bt = icmp ugt i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.i, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !272
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.br), !inline_history !26
  %.pre.i48 = load i64, ptr %i.ah, align 8, !tbaa !270 ; 2 uses
  %.pre2.i49 = add i64 %.pre.i48, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50: ; preds = %bb.h, %bb.i
  %.pre-phi.i47 = phi i64 [ %i.br, %bb.h ], [ %.pre2.i49, %bb.i ]
  %i.bw = phi i64 [ %i.bq, %bb.h ], [ %.pre.i48, %bb.i ]
  %i.bx = load ptr, ptr %2, align 8, !tbaa !269
  store i64 %.pre-phi.i47, ptr %i.ah, align 8, !tbaa !270
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 46, ptr %i.by, align 1, !tbaa !202
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit46, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.ca = zext nneg i32 %.1.lcssa to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca ; 2 uses
  %.not24.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not24.i, label %_ZN3fmt3v116detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %bb.j
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre.i51 = load i64, ptr %i.ah, align 8, !tbaa !270
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %.lr.ph27.i
  %i.ce = phi i64 [ %.pre.i51, %.lr.ph27.i ], [ %i.dj, %._crit_edge.i ] ; 2 uses
  %.01925.i = phi ptr [ %i.bz, %.lr.ph27.i ], [ %i.dk, %._crit_edge.i ] ; 9 uses
  %i.cf = ptrtoint ptr %.01925.i to i64           ; 2 uses
  %i.cg = sub i64 %i.cc, %i.cf                    ; 2 uses
  %i.ch = add i64 %i.cg, %i.ce                    ; 2 uses
  %i.ci = load i64, ptr %i.ak, align 8, !tbaa !271 ; 2 uses
  %i.cj = icmp ugt i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.l, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !272
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ch), !inline_history !27
  %.pre30.i = load i64, ptr %i.ak, align 8, !tbaa !271
  %.pre31.i = load i64, ptr %i.ah, align 8, !tbaa !270
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.l, %bb.k
  %i.cl = phi i64 [ %i.ce, %bb.k ], [ %.pre31.i, %bb.l ] ; 4 uses
  %i.cm = phi i64 [ %i.ci, %bb.k ], [ %.pre30.i, %bb.l ]
  %i.cn = sub i64 %i.cm, %i.cl
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.cn, i64 %i.cg) ; 13 uses
  %i.co = load ptr, ptr %2, align 8, !tbaa !269   ; 2 uses
  %i.cp = ptrtoaddr ptr %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cl ; 7 uses
  %.not29.i = icmp eq i64 %spec.select.i, 0
  br i1 %.not29.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i
  %min.iters.check = icmp ult i64 %spec.select.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cr = add i64 %i.cl, %i.cp
  %i.cs = sub i64 %i.cf, %i.cr
  %diff.check = icmp ugt i64 %i.cs, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check119 = icmp ult i64 %spec.select.i, 32
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ct = and i64 %spec.select.i, 28
  %n.vec = and i64 %spec.select.i, -32            ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.01925.i, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load = load <16 x i8>, ptr %i.cu, align 1, !tbaa !202
  %wide.load120 = load <16 x i8>, ptr %i.cv, align 1, !tbaa !202
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <16 x i8> %wide.load, ptr %i.cw, align 1, !tbaa !202
  store <16 x i8> %wide.load120, ptr %i.cx, align 1, !tbaa !202
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !1140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ct, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !303

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec121 = and i64 %spec.select.i, -4          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next124, %vec.epilog.vector.body ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.01925.i, i64 %index122
  %wide.load123 = load <4 x i8>, ptr %i.cz, align 1, !tbaa !202
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 %index122
  store <4 x i8> %wide.load123, ptr %i.da, align 1, !tbaa !202
  %index.next124 = add nuw i64 %index122, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next124, %n.vec121
  br i1 %i.db, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1141

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n125 = icmp eq i64 %spec.select.i, %n.vec121
  br i1 %cmp.n125, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
end_hunk_1
