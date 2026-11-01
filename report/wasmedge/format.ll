Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/format?download=true
inline.NumInlined: 2606
inline.NumDeleted: 709
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEEeEET0_S5_T1_NS0_12format_specsENS1_10locale_refE:bb.a
  invoke void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.27) #34
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

.thread:                                          ; preds = %bb.q
  %i.bj = add nsw i32 %i.bg, 1
  %i.bk = lshr i16 %i.c, 8
  %.lobit.i74 = and i16 %i.bk, 1
  br label %.sink.split.i

bb.t:                                             ; preds = %bb.p
  %i.bl = icmp ne i8 %i.g, 2                      ; 2 uses
  %i.bm = icmp eq i32 %i.bg, 0
  %or.cond6 = select i1 %i.bl, i1 %i.bm, i1 false
  %spec.store.select7 = select i1 %or.cond6, i32 1, i32 %i.bg ; 2 uses
  %i.bn = lshr i16 %i.c, 8
  %.lobit.i = and i16 %i.bn, 1                    ; 2 uses
  %i.bo = zext nneg i16 %.lobit.i to i64
  %i.bp = shl nuw nsw i64 %i.bo, 50
  br i1 %i.bl, label %_ZN3fmt3v116detail21parse_float_type_specERKNS0_12format_specsE.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.t, %.thread
  %.lobit.i77 = phi i16 [ %.lobit.i74, %.thread ], [ %.lobit.i, %bb.t ]
  %.05175 = phi i32 [ %i.bj, %.thread ], [ %spec.store.select7, %bb.t ]
  %.sink25.i = phi i64 [ 4294967296, %.thread ], [ 8589934592, %bb.t ]
  %i.bq = icmp ne i64 %i.h, 0
  %i.br = zext i1 %i.bq to i16
  %i.bs = or i16 %.lobit.i77, %i.br
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 50
  %i.bv = or disjoint i64 %i.bu, %.sink25.i
  br label %_ZN3fmt3v116detail21parse_float_type_specERKNS0_12format_specsE.exit

_ZN3fmt3v116detail21parse_float_type_specERKNS0_12format_specsE.exit: ; preds = %bb.t, %.sink.split.i
  %.05176 = phi i32 [ %spec.store.select7, %bb.t ], [ %.05175, %.sink.split.i ] ; 2 uses
  %.pn.i = phi i64 [ %i.bp, %bb.t ], [ %i.bv, %.sink.split.i ] ; 2 uses
  %i.bw = shl i64 %3, 31
  %i.bx = and i64 %i.bw, 281474976710656
  %i.by = zext nneg i8 %.1 to i64
  %i.bz = shl nuw nsw i64 %i.by, 40
  %.pn.i.masked = and i64 %.pn.i, -280379760050176
  %i.ca = or i64 %.pn.i.masked, %i.bx
  %.sroa.7.0.insert.ext15 = or disjoint i64 %i.ca, %i.bz ; 2 uses
  %.sroa.011.0.insert.ext12 = and i64 %.pn.i, 4294967295
  %.sroa.011.0.insert.insert14 = or disjoint i64 %.sroa.7.0.insert.ext15, %.sroa.011.0.insert.ext12
  %i.cb = invoke noundef i32 @_ZN3fmt3v116detail12format_floatIeEEiT_iNS1_11float_specsERNS1_6bufferIcEE(x86_fp80 noundef %.0, i32 noundef %.05176, i64 %.sroa.011.0.insert.insert14, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZN3fmt3v116detail21parse_float_type_specERKNS0_12format_specsE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.cc = load ptr, ptr %9, align 8, !tbaa !85
  store ptr %i.cc, ptr %10, align 8, !tbaa !216
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ce = load i64, ptr %i.au, align 8, !tbaa !72
  %i.cf = trunc i64 %i.ce to i32
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !217
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %i.cb, ptr %i.cg, align 4, !tbaa !218
  %.sroa.011.0.insert.ext = zext i32 %.05176 to i64
  %.sroa.011.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.ext15, %.sroa.011.0.insert.ext
  %i.ch = invoke ptr @_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_S8_RKT1_RKNS0_12format_specsENS1_11float_specsENS1_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 %.sroa.011.0.insert.insert, ptr %4)
          to label %_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS1_11float_specsENS1_10locale_refE.exit unwind label %bb.w

_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS1_11float_specsENS1_10locale_refE.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.x

bb.v:                                             ; preds = %bb.o, %bb.r, %bb.n, %_ZN3fmt3v116detail21parse_float_type_specERKNS0_12format_specsE.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.z

bb.x:                                             ; preds = %_ZN3fmt3v116detail11write_bytesIcLNS0_5align4typeE2ENS0_14basic_appenderIcEEEET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit, %_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS1_11float_specsENS1_10locale_refE.exit
  %.sroa.049.0 = phi ptr [ %i.ch, %_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS1_11float_specsENS1_10locale_refE.exit ], [ %i.bd, %_ZN3fmt3v116detail11write_bytesIcLNS0_5align4typeE2ENS0_14basic_appenderIcEEEET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit ]
  %i.ck = load ptr, ptr %9, align 8, !tbaa !85    ; 2 uses
  %.not.i.i = icmp eq ptr %i.ck, %i.av
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = load i64, ptr %i.as, align 8, !tbaa !86
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cl) #33
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.ab

bb.z:                                             ; preds = %bb.w, %bb.v
  %.pn64 = phi { ptr, i32 } [ %i.ci, %bb.v ], [ %i.cj, %bb.w ]
  %i.cm = load ptr, ptr %9, align 8, !tbaa !85    ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.cm, %i.av
  br i1 %.not.i.i68, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit69, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cn = load i64, ptr %i.as, align 8, !tbaa !86
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cn) #33
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit69

_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit69: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  resume { ptr, i32 } %.pn64

bb.ab:                                            ; preds = %_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit, %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4sign4typeE.exit
  %.sroa.049.1 = phi ptr [ %.sroa.049.0, %_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit ], [ %i.y, %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4sign4typeE.exit ]
  ret ptr %.sroa.049.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail15format_hexfloatIeTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE(x86_fp80 noundef %0, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 7 uses
  %.sroa.133.0.extract.shift = lshr i64 %1, 32
  %.sroa.133.0.extract.trunc = trunc nuw i64 %.sroa.133.0.extract.shift to i32 ; 7 uses
  %.sroa.8.8.extract.shift = lshr i64 %2, 8
  %.sroa.8.8.extract.trunc = trunc i64 %.sroa.8.8.extract.shift to i16 ; 2 uses
  %i.c = bitcast x86_fp80 %0 to i80
  %.0.insert.ext.i.i = zext i80 %i.c to i128      ; 2 uses
  %i.d = and i128 %.0.insert.ext.i.i, 18446744073709551615 ; 5 uses
  %i.e = lshr i128 %.0.insert.ext.i.i, 64
  %i.f = trunc nuw nsw i128 %i.e to i32
  %i.g = and i32 %i.f, 32767
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1)
  %i.h = add nsw i32 %spec.store.select.i.i, -16383
  %i.i = lshr i128 %i.d, 60
  %i.j = trunc nuw nsw i128 %i.i to i32           ; 2 uses
  %i.k = icmp samesign ugt i32 %i.j, 1
  %i.l = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.j, i1 true)
  %.neg = add nuw nsw i32 %i.l, -31
  %i.m = select i1 %i.k, i32 %.neg, i32 0
  %.sroa.9.0 = add nsw i32 %i.h, %i.m             ; 3 uses
  %i.n = icmp sgt i64 %1, -1
  %i.o = icmp slt i32 %.sroa.133.0.extract.trunc, 15
  %or.cond45 = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond45, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.p = shl i32 %.sroa.133.0.extract.trunc, 2    ; 2 uses
  %i.q = sub i32 56, %i.p
  %i.r = zext nneg i32 %i.q to i128
  %i.s = shl i128 8, %i.r
  %i.t = and i128 %i.s, %i.d
  %.not = icmp eq i128 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = sub i32 60, %i.p
  %i.v = zext nneg i32 %i.u to i128
  %i.w = shl nuw nsw i128 1, %i.v                 ; 2 uses
  %i.x = add nuw nsw i128 %i.w, %i.d
  %i.y = sub nsw i128 0, %i.w
  %i.z = and i128 %i.x, %i.y
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.087.0 = phi i128 [ %i.d, %bb.b ], [ %i.z, %bb.c ] ; 3 uses
  %i.aa = and i128 %.sroa.087.0, 18446744073709551616
  %.not44 = icmp eq i128 %i.aa, 0
  br i1 %.not44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = lshr i128 %.sroa.087.0, 4
  %i.ac = add nsw i32 %.sroa.9.0, 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.sroa.087.1 = phi i128 [ %.sroa.087.0, %bb.d ], [ %i.ab, %bb.e ], [ %i.d, %bb.a ]
  %.sroa.9.1 = phi i32 [ %.sroa.9.0, %bb.d ], [ %i.ac, %bb.e ], [ %.sroa.9.0, %bb.a ] ; 3 uses
  %.042 = phi i32 [ %.sroa.133.0.extract.trunc, %bb.d ], [ %.sroa.133.0.extract.trunc, %bb.e ], [ 15, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 48, i64 32, i1 false)
  %i.ad = and i16 %.sroa.8.8.extract.trunc, 128
  %.not96 = icmp eq i16 %i.ad, 0                  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.str.19..str.20.i = select i1 %.not96, ptr @.str.20, ptr @.str.19
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.09.i = phi i128 [ %.sroa.087.1, %bb.f ], [ %i.ak, %bb.g ] ; 2 uses
  %.0.i = phi ptr [ %i.ae, %bb.f ], [ %i.aj, %bb.g ]
  %i.af = trunc i128 %.09.i to i64
  %i.ag = and i64 %i.af, 15
  %i.ah = getelementptr inbounds nuw i8, ptr %.str.19..str.20.i, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !82
  %i.aj = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 2 uses
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !82
  %i.ak = lshr i128 %.09.i, 4                     ; 2 uses
  %.not.i = icmp eq i128 %i.ak, 0
  br i1 %.not.i, label %_ZN3fmt3v116detail11format_uintILj4EcoEEPT0_S4_T1_ib.exit.preheader, label %bb.g, !llvm.loop !30

_ZN3fmt3v116detail11format_uintILj4EcoEEPT0_S4_T1_ib.exit.preheader: ; preds = %bb.g
  %i.al = icmp sgt i32 %.042, 0
  br i1 %i.al, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %_ZN3fmt3v116detail11format_uintILj4EcoEEPT0_S4_T1_ib.exit.preheader
  %4 = zext nneg i32 %.042 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN3fmt3v116detail11format_uintILj4EcoEEPT0_S4_T1_ib.exit
  %indvars.iv = phi i64 [ %4, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN3fmt3v116detail11format_uintILj4EcoEEPT0_S4_T1_ib.exit ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.an = load i8, ptr %i.am, align 1, !tbaa !82
  %.not130 = icmp eq i8 %i.an, 48
  br i1 %.not130, label %_ZN3fmt3v116detail11format_uintILj4EcoEEPT0_S4_T1_ib.exit, label %.critedge.loopexit.split.loop.exit127

_ZN3fmt3v116detail11format_uintILj4EcoEEPT0_S4_T1_ib.exit: ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ao = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ao, label %.lr.ph, label %.critedge, !llvm.loop !489

.critedge.loopexit.split.loop.exit127:            ; preds = %.lr.ph
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %_ZN3fmt3v116detail11format_uintILj4EcoEEPT0_S4_T1_ib.exit, %.critedge.loopexit.split.loop.exit127, %_ZN3fmt3v116detail11format_uintILj4EcoEEPT0_S4_T1_ib.exit.preheader
  %.1.lcssa = phi i32 [ %.042, %_ZN3fmt3v116detail11format_uintILj4EcoEEPT0_S4_T1_ib.exit.preheader ], [ %5, %.critedge.loopexit.split.loop.exit127 ], [ 0, %_ZN3fmt3v116detail11format_uintILj4EcoEEPT0_S4_T1_ib.exit ] ; 4 uses
  %.lcssa98 = phi i1 [ false, %_ZN3fmt3v116detail11format_uintILj4EcoEEPT0_S4_T1_ib.exit.preheader ], [ true, %.critedge.loopexit.split.loop.exit127 ], [ false, %_ZN3fmt3v116detail11format_uintILj4EcoEEPT0_S4_T1_ib.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 27 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !72 ; 2 uses
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !86
  %i.au = icmp ugt i64 %i.ar, %i.at
  br i1 %i.au, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.h:                                             ; preds = %.critedge
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !84
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ar), !inline_history !31
  %.pre.i = load i64, ptr %i.ap, align 8, !tbaa !72 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %.critedge, %bb.h
  %.pre-phi.i = phi i64 [ %i.ar, %.critedge ], [ %.pre2.i, %bb.h ]
  %i.ax = phi i64 [ %i.aq, %.critedge ], [ %.pre.i, %bb.h ]
  %i.ay = load ptr, ptr %3, align 8, !tbaa !85
  store i64 %.pre-phi.i, ptr %i.ap, align 8, !tbaa !72
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store i8 48, ptr %i.az, align 1, !tbaa !82
  %i.ba = select i1 %.not96, i8 120, i8 88
  %i.bb = load i64, ptr %i.ap, align 8, !tbaa !72 ; 2 uses
  %i.bc = add i64 %i.bb, 1                        ; 3 uses
  %i.bd = load i64, ptr %i.as, align 8, !tbaa !86
  %i.be = icmp ugt i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.i, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50

bb.i:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !84
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bc), !inline_history !31
  %.pre.i48 = load i64, ptr %i.ap, align 8, !tbaa !72 ; 2 uses
  %.pre2.i49 = add i64 %.pre.i48, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit, %bb.i
  %.pre-phi.i47 = phi i64 [ %i.bc, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %.pre2.i49, %bb.i ]
  %i.bh = phi i64 [ %i.bb, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %.pre.i48, %bb.i ]
  %i.bi = load ptr, ptr %3, align 8, !tbaa !85
  store i64 %.pre-phi.i47, ptr %i.ap, align 8, !tbaa !72
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store i8 %i.ba, ptr %i.bj, align 1, !tbaa !82
  %i.bk = load i64, ptr %i.ap, align 8, !tbaa !72 ; 2 uses
  %i.bl = add i64 %i.bk, 1                        ; 3 uses
  %i.bm = load i64, ptr %i.as, align 8, !tbaa !86
  %i.bn = icmp ugt i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.j, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit54

bb.j:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !84
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bl), !inline_history !31
  %.pre.i52 = load i64, ptr %i.ap, align 8, !tbaa !72 ; 2 uses
  %.pre2.i53 = add i64 %.pre.i52, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit54

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit54: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50, %bb.j
  %.pre-phi.i51 = phi i64 [ %i.bl, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50 ], [ %.pre2.i53, %bb.j ]
  %i.bq = phi i64 [ %i.bk, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit50 ], [ %.pre.i52, %bb.j ]
  %i.br = load i8, ptr %i.b, align 16, !tbaa !82
  %i.bs = load ptr, ptr %3, align 8, !tbaa !85
  store i64 %.pre-phi.i51, ptr %i.ap, align 8, !tbaa !72
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !82
  %i.bu = and i16 %.sroa.8.8.extract.trunc, 256
  %i.bv = icmp ne i16 %i.bu, 0
  %or.cond = or i1 %i.bv, %.lcssa98
  %i.bw = icmp sgt i32 %.sroa.133.0.extract.trunc, 0
  %or.cond46 = select i1 %or.cond, i1 true, i1 %i.bw
  br i1 %or.cond46, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit54
  %i.bx = load i64, ptr %i.ap, align 8, !tbaa !72 ; 2 uses
  %i.by = add i64 %i.bx, 1                        ; 3 uses
  %i.bz = load i64, ptr %i.as, align 8, !tbaa !86
  %i.ca = icmp ugt i64 %i.by, %i.bz
  br i1 %i.ca, label %bb.l, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit58

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !84
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.by), !inline_history !31
  %.pre.i56 = load i64, ptr %i.ap, align 8, !tbaa !72 ; 2 uses
  %.pre2.i57 = add i64 %.pre.i56, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit58

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit58: ; preds = %bb.k, %bb.l
  %.pre-phi.i55 = phi i64 [ %i.by, %bb.k ], [ %.pre2.i57, %bb.l ]
  %i.cd = phi i64 [ %i.bx, %bb.k ], [ %.pre.i56, %bb.l ]
  %i.ce = load ptr, ptr %3, align 8, !tbaa !85
  store i64 %.pre-phi.i55, ptr %i.ap, align 8, !tbaa !72
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  store i8 46, ptr %i.cf, align 1, !tbaa !82
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit54, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit58
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.ch = zext nneg i32 %.1.lcssa to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ch ; 2 uses
  %.not24.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not24.i, label %_ZN3fmt3v116detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %bb.m
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i59 = load i64, ptr %i.ap, align 8, !tbaa !72
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i, %.lr.ph27.i
  %i.cl = phi i64 [ %.pre.i59, %.lr.ph27.i ], [ %i.dq, %._crit_edge.i ] ; 2 uses
  %.01925.i = phi ptr [ %i.cg, %.lr.ph27.i ], [ %i.dr, %._crit_edge.i ] ; 9 uses
  %i.cm = ptrtoint ptr %.01925.i to i64           ; 2 uses
  %i.cn = sub i64 %i.cj, %i.cm                    ; 2 uses
  %i.co = add i64 %i.cn, %i.cl                    ; 2 uses
  %i.cp = load i64, ptr %i.as, align 8, !tbaa !86 ; 2 uses
  %i.cq = icmp ugt i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.o, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i

bb.o:                                             ; preds = %bb.n
  %i.cr = load ptr, ptr %i.ck, align 8, !tbaa !84
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.co), !inline_history !32
  %.pre30.i = load i64, ptr %i.as, align 8, !tbaa !86
  %.pre31.i = load i64, ptr %i.ap, align 8, !tbaa !72
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.o, %bb.n
  %i.cs = phi i64 [ %i.cl, %bb.n ], [ %.pre31.i, %bb.o ] ; 4 uses
  %i.ct = phi i64 [ %i.cp, %bb.n ], [ %.pre30.i, %bb.o ]
  %i.cu = sub i64 %i.ct, %i.cs
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cn) ; 13 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !85    ; 2 uses
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cs ; 7 uses
  %.not29.i = icmp eq i64 %spec.select.i, 0
  br i1 %.not29.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i
  %min.iters.check = icmp ult i64 %spec.select.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cy = add i64 %i.cs, %i.cw
  %i.cz = sub i64 %i.cm, %i.cy
  %diff.check = icmp ugt i64 %i.cz, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check128 = icmp ult i64 %spec.select.i, 32
  br i1 %min.iters.check128, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.da = and i64 %spec.select.i, 28
  %n.vec = and i64 %spec.select.i, -32            ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.01925.i, i64 %index ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load = load <16 x i8>, ptr %i.db, align 1, !tbaa !82
  %wide.load129 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !82
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 %index ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <16 x i8> %wide.load, ptr %i.dd, align 1, !tbaa !82
  store <16 x i8> %wide.load129, ptr %i.de, align 1, !tbaa !82
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !490

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.da, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !131

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec130 = and i64 %spec.select.i, -4          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index131 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next133, %vec.epilog.vector.body ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.01925.i, i64 %index131
  %wide.load132 = load <4 x i8>, ptr %i.dg, align 1, !tbaa !82
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 %index131
  store <4 x i8> %wide.load132, ptr %i.dh, align 1, !tbaa !82
  %index.next133 = add nuw i64 %index131, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next133, %n.vec130
  br i1 %i.di, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !491

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n134 = icmp eq i64 %spec.select.i, %n.vec130
  br i1 %cmp.n134, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEEfEET0_S5_T1_NS0_12format_specsENS1_10locale_refE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.x

bb.p:                                             ; preds = %bb.k
  %i.bf = icmp sgt i64 %2, -1
  %i.bg = icmp eq i8 %i.g, 0
  %or.cond4 = or i1 %i.bg, %i.bf
  %i.bh = select i1 %or.cond4, i32 %i.i, i32 6    ; 4 uses
  %i.bi = icmp eq i8 %i.g, 1
  br i1 %i.bi, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bj = icmp eq i32 %i.bh, 2147483647
  br i1 %i.bj, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN3fmt3v1112report_errorEPKc(ptr noundef nonnull @.str.27) #34
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  unreachable

.thread:                                          ; preds = %bb.q
  %i.bk = add nsw i32 %i.bh, 1
  %i.bl = lshr i16 %i.c, 8
  %.lobit.i75 = and i16 %i.bl, 1
  br label %.sink.split.i

bb.t:                                             ; preds = %bb.p
  %i.bm = icmp ne i8 %i.g, 2                      ; 2 uses
  %i.bn = icmp eq i32 %i.bh, 0
  %or.cond6 = select i1 %i.bm, i1 %i.bn, i1 false
  %spec.store.select7 = select i1 %or.cond6, i32 1, i32 %i.bh ; 2 uses
  %i.bo = lshr i16 %i.c, 8
  %.lobit.i = and i16 %i.bo, 1                    ; 2 uses
  %i.bp = zext nneg i16 %.lobit.i to i64
  %i.bq = shl nuw nsw i64 %i.bp, 50
  br i1 %i.bm, label %_ZN3fmt3v116detail21parse_float_type_specERKNS0_12format_specsE.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.t, %.thread
  %.lobit.i78 = phi i16 [ %.lobit.i75, %.thread ], [ %.lobit.i, %bb.t ]
  %.05276 = phi i32 [ %i.bk, %.thread ], [ %spec.store.select7, %bb.t ]
  %.sink25.i = phi i64 [ 4294967296, %.thread ], [ 8589934592, %bb.t ]
  %i.br = icmp ne i64 %i.h, 0
  %i.bs = zext i1 %i.br to i16
  %i.bt = or i16 %.lobit.i78, %i.bs
  %i.bu = zext nneg i16 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 50
  %i.bw = or disjoint i64 %i.bv, %.sink25.i
  br label %_ZN3fmt3v116detail21parse_float_type_specERKNS0_12format_specsE.exit

_ZN3fmt3v116detail21parse_float_type_specERKNS0_12format_specsE.exit: ; preds = %bb.t, %.sink.split.i
  %.05277 = phi i32 [ %spec.store.select7, %bb.t ], [ %.05276, %.sink.split.i ] ; 2 uses
  %.pn.i = phi i64 [ %i.bq, %bb.t ], [ %i.bw, %.sink.split.i ] ; 2 uses
  %i.bx = shl i64 %3, 31
  %i.by = and i64 %i.bx, 281474976710656
  %i.bz = zext nneg i8 %.1 to i64
  %i.ca = shl nuw nsw i64 %i.bz, 40
  %.pn.i.masked = and i64 %.pn.i, -843329713471488
  %i.cb = or i64 %.pn.i.masked, %i.by
  %i.cc = or disjoint i64 %i.cb, %i.ca
  %.sroa.7.0.insert.ext15 = or disjoint i64 %i.cc, 562949953421312 ; 2 uses
  %i.cd = fpext float %.0 to double
  %.sroa.011.0.insert.ext12 = and i64 %.pn.i, 4294967295
  %.sroa.011.0.insert.insert14 = or disjoint i64 %.sroa.7.0.insert.ext15, %.sroa.011.0.insert.ext12
  %i.ce = invoke noundef i32 @_ZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE(double noundef %i.cd, i32 noundef %.05277, i64 %.sroa.011.0.insert.insert14, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZN3fmt3v116detail21parse_float_type_specERKNS0_12format_specsE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.cf = load ptr, ptr %9, align 8, !tbaa !85
  store ptr %i.cf, ptr %10, align 8, !tbaa !216
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ch = load i64, ptr %i.au, align 8, !tbaa !72
  %i.ci = trunc i64 %i.ch to i32
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !217
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 %i.ce, ptr %i.cj, align 4, !tbaa !218
  %.sroa.011.0.insert.ext = zext i32 %.05277 to i64
  %.sroa.011.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.ext15, %.sroa.011.0.insert.ext
  %i.ck = invoke ptr @_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpENS1_14digit_groupingIcEEEET0_S8_RKT1_RKNS0_12format_specsENS1_11float_specsENS1_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 %.sroa.011.0.insert.insert, ptr %4)
          to label %_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS1_11float_specsENS1_10locale_refE.exit unwind label %bb.w

_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS1_11float_specsENS1_10locale_refE.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.x

bb.v:                                             ; preds = %bb.o, %bb.r, %bb.n, %_ZN3fmt3v116detail21parse_float_type_specERKNS0_12format_specsE.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.z

bb.x:                                             ; preds = %_ZN3fmt3v116detail11write_bytesIcLNS0_5align4typeE2ENS0_14basic_appenderIcEEEET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit, %_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS1_11float_specsENS1_10locale_refE.exit
  %.sroa.050.0 = phi ptr [ %i.ck, %_ZN3fmt3v116detail11write_floatIcNS0_14basic_appenderIcEENS1_14big_decimal_fpEEET0_S6_RKT1_RKNS0_12format_specsENS1_11float_specsENS1_10locale_refE.exit ], [ %i.be, %_ZN3fmt3v116detail11write_bytesIcLNS0_5align4typeE2ENS0_14basic_appenderIcEEEET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsE.exit ]
  %i.cn = load ptr, ptr %9, align 8, !tbaa !85    ; 2 uses
  %.not.i.i = icmp eq ptr %i.cn, %i.av
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = load i64, ptr %i.as, align 8, !tbaa !86
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.co) #33
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.ab

bb.z:                                             ; preds = %bb.w, %bb.v
  %.pn65 = phi { ptr, i32 } [ %i.cl, %bb.v ], [ %i.cm, %bb.w ]
  %i.cp = load ptr, ptr %9, align 8, !tbaa !85    ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.cp, %i.av
  br i1 %.not.i.i69, label %_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit70, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = load i64, ptr %i.as, align 8, !tbaa !86
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cq) #33
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit70

_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit70: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  resume { ptr, i32 } %.pn65

bb.ab:                                            ; preds = %_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit, %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4sign4typeE.exit
  %.sroa.050.1 = phi ptr [ %.sroa.050.0, %_ZN3fmt3v1119basic_memory_bufferIcLm500ESaIcEED2Ev.exit ], [ %i.y, %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4sign4typeE.exit ]
  ret ptr %.sroa.050.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE(double noundef %0, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 7 uses
  %.sroa.133.0.extract.shift = lshr i64 %1, 32
  %.sroa.133.0.extract.trunc = trunc nuw i64 %.sroa.133.0.extract.shift to i32 ; 7 uses
  %.sroa.8.8.extract.shift = lshr i64 %2, 8
  %.sroa.8.8.extract.trunc = trunc i64 %.sroa.8.8.extract.shift to i16 ; 2 uses
  %i.c = bitcast double %0 to i64                 ; 2 uses
  %i.d = and i64 %i.c, 4503599627370495           ; 2 uses
  %i.e = and i64 %i.c, 9218868437227405312        ; 2 uses
  %i.f = icmp eq i64 %i.e, 0                      ; 2 uses
  %i.g = lshr exact i64 %i.e, 52
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = or disjoint i64 %i.d, 4503599627370496
  %storemerge.i.i = select i1 %i.f, i64 %i.d, i64 %i.i ; 4 uses
  %i.j = add nsw i32 %i.h, -1023                  ; 2 uses
  %i.k = select i1 %i.f, i32 -1022, i32 %i.j      ; 2 uses
  %i.l = icmp sgt i64 %1, -1
  %i.m = icmp slt i32 %.sroa.133.0.extract.trunc, 13
  %or.cond44 = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond44, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = shl i32 %.sroa.133.0.extract.trunc, 2    ; 2 uses
  %i.o = sub i32 48, %i.n
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl i64 8, %i.p
  %i.r = and i64 %i.q, %storemerge.i.i
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = sub i32 52, %i.n
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 1, %i.t                  ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %storemerge.i.i
  %i.w = sub nsw i64 0, %i.u
  %i.x = and i64 %i.v, %i.w
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.086.0 = phi i64 [ %storemerge.i.i, %bb.b ], [ %i.x, %bb.c ], [ %storemerge.i.i, %bb.a ]
  %.042 = phi i32 [ %.sroa.133.0.extract.trunc, %bb.b ], [ %.sroa.133.0.extract.trunc, %bb.c ], [ 13, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 48, i64 16, i1 false)
  %i.y = and i16 %.sroa.8.8.extract.trunc, 128
  %.not93 = icmp eq i16 %i.y, 0                   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %.str.19..str.20.i = select i1 %.not93, ptr @.str.20, ptr @.str.19
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.09.i = phi i64 [ %.sroa.086.0, %bb.d ], [ %i.ae, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %i.z, %bb.d ], [ %i.ad, %bb.e ]
  %i.aa = and i64 %.09.i, 15
  %i.ab = getelementptr inbounds nuw i8, ptr %.str.19..str.20.i, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !82
  %i.ad = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 2 uses
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !82
  %i.ae = lshr i64 %.09.i, 4                      ; 2 uses
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %_ZN3fmt3v116detail11format_uintILj4EcmEEPT0_S4_T1_ib.exit.preheader, label %bb.e, !llvm.loop !39

_ZN3fmt3v116detail11format_uintILj4EcmEEPT0_S4_T1_ib.exit.preheader: ; preds = %bb.e
  %i.af = icmp sgt i32 %.042, 0
  br i1 %i.af, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %_ZN3fmt3v116detail11format_uintILj4EcmEEPT0_S4_T1_ib.exit.preheader
  %4 = zext nneg i32 %.042 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN3fmt3v116detail11format_uintILj4EcmEEPT0_S4_T1_ib.exit
  %indvars.iv = phi i64 [ %4, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN3fmt3v116detail11format_uintILj4EcmEEPT0_S4_T1_ib.exit ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !82
  %.not128 = icmp eq i8 %i.ah, 48
  br i1 %.not128, label %_ZN3fmt3v116detail11format_uintILj4EcmEEPT0_S4_T1_ib.exit, label %.critedge.loopexit.split.loop.exit125

_ZN3fmt3v116detail11format_uintILj4EcmEEPT0_S4_T1_ib.exit: ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ai = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ai, label %.lr.ph, label %.critedge, !llvm.loop !758

.critedge.loopexit.split.loop.exit125:            ; preds = %.lr.ph
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %_ZN3fmt3v116detail11format_uintILj4EcmEEPT0_S4_T1_ib.exit, %.critedge.loopexit.split.loop.exit125, %_ZN3fmt3v116detail11format_uintILj4EcmEEPT0_S4_T1_ib.exit.preheader
  %.1.lcssa = phi i32 [ %.042, %_ZN3fmt3v116detail11format_uintILj4EcmEEPT0_S4_T1_ib.exit.preheader ], [ %5, %.critedge.loopexit.split.loop.exit125 ], [ 0, %_ZN3fmt3v116detail11format_uintILj4EcmEEPT0_S4_T1_ib.exit ] ; 4 uses
  %.lcssa95 = phi i1 [ false, %_ZN3fmt3v116detail11format_uintILj4EcmEEPT0_S4_T1_ib.exit.preheader ], [ true, %.critedge.loopexit.split.loop.exit125 ], [ false, %_ZN3fmt3v116detail11format_uintILj4EcmEEPT0_S4_T1_ib.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 27 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !72 ; 2 uses
  %i.al = add i64 %i.ak, 1                        ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !86
  %i.ao = icmp ugt i64 %i.al, %i.an
  br i1 %i.ao, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.f:                                             ; preds = %.critedge
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !84
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.al), !inline_history !31
  %.pre.i = load i64, ptr %i.aj, align 8, !tbaa !72 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %.critedge, %bb.f
  %.pre-phi.i = phi i64 [ %i.al, %.critedge ], [ %.pre2.i, %bb.f ]
  %i.ar = phi i64 [ %i.ak, %.critedge ], [ %.pre.i, %bb.f ]
  %i.as = load ptr, ptr %3, align 8, !tbaa !85
  store i64 %.pre-phi.i, ptr %i.aj, align 8, !tbaa !72
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store i8 48, ptr %i.at, align 1, !tbaa !82
  %i.au = select i1 %.not93, i8 120, i8 88
  %i.av = load i64, ptr %i.aj, align 8, !tbaa !72 ; 2 uses
  %i.aw = add i64 %i.av, 1                        ; 3 uses
  %i.ax = load i64, ptr %i.am, align 8, !tbaa !86
  %i.ay = icmp ugt i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.g, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit49

bb.g:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !84
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aw), !inline_history !31
  %.pre.i47 = load i64, ptr %i.aj, align 8, !tbaa !72 ; 2 uses
  %.pre2.i48 = add i64 %.pre.i47, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit49

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit49: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit, %bb.g
  %.pre-phi.i46 = phi i64 [ %i.aw, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %.pre2.i48, %bb.g ]
  %i.bb = phi i64 [ %i.av, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %.pre.i47, %bb.g ]
  %i.bc = load ptr, ptr %3, align 8, !tbaa !85
  store i64 %.pre-phi.i46, ptr %i.aj, align 8, !tbaa !72
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 %i.au, ptr %i.bd, align 1, !tbaa !82
  %i.be = load i64, ptr %i.aj, align 8, !tbaa !72 ; 2 uses
  %i.bf = add i64 %i.be, 1                        ; 3 uses
  %i.bg = load i64, ptr %i.am, align 8, !tbaa !86
  %i.bh = icmp ugt i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit53

bb.h:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit49
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !84
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bf), !inline_history !31
  %.pre.i51 = load i64, ptr %i.aj, align 8, !tbaa !72 ; 2 uses
  %.pre2.i52 = add i64 %.pre.i51, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit53

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit53: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit49, %bb.h
  %.pre-phi.i50 = phi i64 [ %i.bf, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit49 ], [ %.pre2.i52, %bb.h ]
  %i.bk = phi i64 [ %i.be, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit49 ], [ %.pre.i51, %bb.h ]
  %i.bl = load i8, ptr %i.b, align 16, !tbaa !82
  %i.bm = load ptr, ptr %3, align 8, !tbaa !85
  store i64 %.pre-phi.i50, ptr %i.aj, align 8, !tbaa !72
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 %i.bl, ptr %i.bn, align 1, !tbaa !82
  %i.bo = and i16 %.sroa.8.8.extract.trunc, 256
  %i.bp = icmp ne i16 %i.bo, 0
  %or.cond = or i1 %i.bp, %.lcssa95
  %i.bq = icmp sgt i32 %.sroa.133.0.extract.trunc, 0
  %or.cond45 = select i1 %or.cond, i1 true, i1 %i.bq
  br i1 %or.cond45, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit53
  %i.br = load i64, ptr %i.aj, align 8, !tbaa !72 ; 2 uses
  %i.bs = add i64 %i.br, 1                        ; 3 uses
  %i.bt = load i64, ptr %i.am, align 8, !tbaa !86
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.j, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit57

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !84
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bs), !inline_history !31
  %.pre.i55 = load i64, ptr %i.aj, align 8, !tbaa !72 ; 2 uses
  %.pre2.i56 = add i64 %.pre.i55, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit57

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit57: ; preds = %bb.i, %bb.j
  %.pre-phi.i54 = phi i64 [ %i.bs, %bb.i ], [ %.pre2.i56, %bb.j ]
  %i.bx = phi i64 [ %i.br, %bb.i ], [ %.pre.i55, %bb.j ]
  %i.by = load ptr, ptr %3, align 8, !tbaa !85
  store i64 %.pre-phi.i54, ptr %i.aj, align 8, !tbaa !72
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  store i8 46, ptr %i.bz, align 1, !tbaa !82
  br label %bb.k

bb.k:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit53, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit57
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.cb = zext nneg i32 %.1.lcssa to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb ; 2 uses
  %.not24.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not24.i, label %_ZN3fmt3v116detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %.lr.ph27.i

.lr.ph27.i:                                       ; preds = %bb.k
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i58 = load i64, ptr %i.aj, align 8, !tbaa !72
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i, %.lr.ph27.i
  %i.cf = phi i64 [ %.pre.i58, %.lr.ph27.i ], [ %i.dk, %._crit_edge.i ] ; 2 uses
  %.01925.i = phi ptr [ %i.ca, %.lr.ph27.i ], [ %i.dl, %._crit_edge.i ] ; 9 uses
  %i.cg = ptrtoint ptr %.01925.i to i64           ; 2 uses
  %i.ch = sub i64 %i.cd, %i.cg                    ; 2 uses
  %i.ci = add i64 %i.ch, %i.cf                    ; 2 uses
  %i.cj = load i64, ptr %i.am, align 8, !tbaa !86 ; 2 uses
  %i.ck = icmp ugt i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.m, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !84
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ci), !inline_history !32
  %.pre30.i = load i64, ptr %i.am, align 8, !tbaa !86
  %.pre31.i = load i64, ptr %i.aj, align 8, !tbaa !72
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.m, %bb.l
  %i.cm = phi i64 [ %i.cf, %bb.l ], [ %.pre31.i, %bb.m ] ; 4 uses
  %i.cn = phi i64 [ %i.cj, %bb.l ], [ %.pre30.i, %bb.m ]
  %i.co = sub i64 %i.cn, %i.cm
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.co, i64 %i.ch) ; 13 uses
  %i.cp = load ptr, ptr %3, align 8, !tbaa !85    ; 2 uses
  %i.cq = ptrtoaddr ptr %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cm ; 7 uses
  %.not29.i = icmp eq i64 %spec.select.i, 0
  br i1 %.not29.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i
  %min.iters.check = icmp ult i64 %spec.select.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cs = add i64 %i.cm, %i.cq
  %i.ct = sub i64 %i.cg, %i.cs
  %diff.check = icmp ugt i64 %i.ct, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check125 = icmp ult i64 %spec.select.i, 32
  br i1 %min.iters.check125, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cu = and i64 %spec.select.i, 28
  %n.vec = and i64 %spec.select.i, -32            ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.01925.i, i64 %index ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load = load <16 x i8>, ptr %i.cv, align 1, !tbaa !82
  %wide.load126 = load <16 x i8>, ptr %i.cw, align 1, !tbaa !82
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <16 x i8> %wide.load, ptr %i.cx, align 1, !tbaa !82
  store <16 x i8> %wide.load126, ptr %i.cy, align 1, !tbaa !82
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !759

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !131

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec127 = and i64 %spec.select.i, -4          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index128 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next130, %vec.epilog.vector.body ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.01925.i, i64 %index128
  %wide.load129 = load <4 x i8>, ptr %i.da, align 1, !tbaa !82
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 %index128
  store <4 x i8> %wide.load129, ptr %i.db, align 1, !tbaa !82
  %index.next130 = add nuw i64 %index128, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next130, %n.vec127
  br i1 %i.dc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !760

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n131 = icmp eq i64 %spec.select.i, %n.vec127
  br i1 %cmp.n131, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
end_hunk_1
