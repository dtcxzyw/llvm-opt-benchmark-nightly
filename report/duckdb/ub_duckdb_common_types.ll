inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN6duckdb8Interval11FromCStringEPKcmRNS_10interval_tEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
.preheader394:                                    ; preds = %bb.c, %bb.b
  %.0227.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]  ; 2 uses
  %i.j = icmp ult i64 %.0227.ph, %1
  br i1 %i.j, label %.lr.ph.lr.ph, label %.loopexit

.lr.ph.lr.ph:                                     ; preds = %.preheader394
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16
end_hunk_0
begin_hunk_1_@_ZN6duckdb8Interval11FromCStringEPKcmRNS_10interval_tEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.bt
  %.0227505 = phi i64 [ %.0227.ph, %.lr.ph.lr.ph ], [ %.8235.lcssa, %bb.bt ]
  %.0242504 = phi i8 [ 0, %.lr.ph.lr.ph ], [ 1, %bb.bt ] ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.j
end_hunk_1
begin_hunk_2_@_ZN6duckdb8Interval11FromCStringEPKcmRNS_10interval_tEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
bb.i:                                             ; preds = %bb.e, %bb.g
  %.2229 = phi i64 [ %.1228474, %bb.e ], [ %i.p, %bb.g ] ; 7 uses
  %i.u = icmp ult i64 %.2229, %1
  br i1 %i.u, label %.lr.ph478, label %.loopexit

bb.j:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.v = add nuw i64 %.1228474, 1                 ; 2 uses
  %i.w = icmp ult i64 %i.v, %1
  br i1 %i.w, label %bb.d, label %.loopexit, !llvm.loop !949

.lr.ph478:                                        ; preds = %bb.i, %bb.aa
  %.3230477 = phi i64 [ %i.bk, %bb.aa ], [ %.2229, %bb.i ] ; 6 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb8Interval11FromCStringEPKcmRNS_10interval_tEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
bb.aa:                                            ; preds = %.lr.ph478
  %i.bk = add i64 %.3230477, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bk, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph478, !llvm.loop !951

bb.ab:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
end_hunk_3
begin_hunk_4_@_ZN6duckdb8Interval11FromCStringEPKcmRNS_10interval_tEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  store i64 %spec.select, ptr %i.g, align 8, !tbaa !954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  br label %.loopexit

bb.ad:                                            ; preds = %_ZN6duckdb4Time18TryConvertIntervalEPKcmRmRNS_7dtime_tEbNS_12optional_ptrIiLb1EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
end_hunk_4
begin_hunk_5_@_ZN6duckdb8Interval11FromCStringEPKcmRNS_10interval_tEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  %i.ch = load i64, ptr %i.e, align 8, !tbaa !152
  %18 = icmp ne i64 %i.ch, 0
  %19 = trunc nuw i8 %.0242504 to i1
  %or.cond30 = select i1 %18, i1 true, i1 %19
  br i1 %or.cond30, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN6duckdb19IntervalTryAdditionIlEEvRT_lll(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %.2247642646, i64 noundef 1000000, i64 noundef 0)
end_hunk_5
begin_hunk_6_@_ZN6duckdb8Interval11FromCStringEPKcmRNS_10interval_tEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a

.preheader:                                       ; preds = %bb.ai
  %i.ci = icmp ult i64 %.8235.lcssa, %1
  br i1 %i.ci, label %.lr.ph512, label %.loopexit

.lr.ph512:                                        ; preds = %.preheader, %bb.ak
  %.9236511 = phi i64 [ %i.cm, %bb.ak ], [ %.8235.lcssa, %.preheader ] ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6duckdb8Interval11FromCStringEPKcmRNS_10interval_tEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
bb.ak:                                            ; preds = %.lr.ph512, %.lr.ph512, %.lr.ph512
  %i.cm = add i64 %.9236511, 1                    ; 2 uses
  %exitcond606.not = icmp eq i64 %i.cm, %1
  br i1 %exitcond606.not, label %.loopexit, label %.lr.ph512, !llvm.loop !958

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cn = invoke noundef zeroext i1 @_ZN6duckdb23TryGetDatePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_17DatePartSpecifierE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
end_hunk_7
begin_hunk_8_@_ZN6duckdb8Interval11FromCStringEPKcmRNS_10interval_tEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a

bb.bt:                                            ; preds = %.invoke756, %.invoke
  %i.eu = icmp ult i64 %.8235.lcssa, %1
  br i1 %i.eu, label %.lr.ph, label %.loopexit

bb.bu:                                            ; preds = %bb.h
  %i.ev = getelementptr i8, ptr %i.q, i64 1
end_hunk_8
begin_hunk_9_@_ZN6duckdb8Interval11FromCStringEPKcmRNS_10interval_tEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  %i.fg = load i64, ptr %i.g, align 8, !tbaa !954
  %i.fh = sub nsw i64 0, %i.fg
  store i64 %i.fh, ptr %i.g, align 8, !tbaa !954
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bt, %bb.i, %bb.j, %bb.aa, %bb.ak, %.preheader394, %.preheader, %.thread382, %._crit_edge510
  %.2244 = phi i8 [ 1, %.thread382 ], [ 1, %.preheader ], [ %.0242504, %bb.j ], [ %.0242504, %._crit_edge510 ], [ 1, %bb.ak ], [ 0, %.preheader394 ], [ %.0242504, %bb.aa ], [ 1, %bb.bt ], [ %.0242504, %bb.i ]
  %20 = trunc nuw i8 %.2244 to i1
  br label %.thread

.thread:                                          ; preds = %bb.l, %.lr.ph509, %.lr.ph512, %bb.h, %bb.ad, %.loopexit, %bb.bv, %bb.bu, %bb.b, %bb.b, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
  %.10 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.h ], [ false, %bb.bv ], [ %20, %.loopexit ], [ false, %bb.ad ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ], [ false, %.lr.ph512 ], [ false, %bb.b ], [ false, %.lr.ph509 ], [ false, %bb.bu ], [ false, %bb.l ]
  %i.fi = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.d
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331
end_hunk_9
begin_hunk_10_@_ZN6duckdb12_GLOBAL__N_119FromStringRecursiveERNS0_10TextReaderERNS0_10BlobWriterEjbb:bb.a
_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEPKc.exit.thread: ; preds = %bb.bs, %.lr.ph.i.i305, %bb.bf, %.lr.ph.i.i294, %bb.ap, %.lr.ph.i.i283, %bb.ae, %.lr.ph.i.i272, %bb.w, %.lr.ph.i.i261, %bb.l, %.lr.ph.i.i, %._ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEPKc.exit.thread_crit_edge, %.critedge.i304, %.critedge.i293, %.critedge.i282, %.critedge.i271, %.critedge.i260, %.critedge.i
  %.pre.i313 = phi ptr [ %.pre.i, %bb.bf ], [ %.pre.i313.pre, %._ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEPKc.exit.thread_crit_edge ], [ %.pre.i, %.critedge.i282 ], [ %.pre.i, %.critedge.i304 ], [ %.pre.i, %bb.ap ], [ %.pre.i, %.critedge.i293 ], [ %.pre.i, %.critedge.i ], [ %.pre.i, %bb.ae ], [ %.pre.i, %.critedge.i260 ], [ %.pre.i, %bb.l ], [ %.pre.i, %.critedge.i271 ], [ %.pre.i, %bb.w ], [ %.pre.i, %.lr.ph.i.i ], [ %.pre.i, %.lr.ph.i.i261 ], [ %.pre.i, %.lr.ph.i.i272 ], [ %.pre.i, %.lr.ph.i.i283 ], [ %.pre.i, %.lr.ph.i.i294 ], [ %.pre.i, %.lr.ph.i.i305 ], [ %.pre.i, %bb.bs ] ; 13 uses
  %i.sc = phi ptr [ %i.og, %bb.bf ], [ %.pre, %._ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEPKc.exit.thread_crit_edge ], [ %i.ju, %.critedge.i282 ], [ %i.rl, %.critedge.i304 ], [ %i.ka, %bb.ap ], [ %i.oa, %.critedge.i293 ], [ %i.by, %.critedge.i ], [ %i.hd, %bb.ae ], [ %i.ev, %.critedge.i260 ], [ %i.ce, %bb.l ], [ %i.gx, %.critedge.i271 ], [ %i.fb, %bb.w ], [ %i.ca, %.lr.ph.i.i ], [ %i.ex, %.lr.ph.i.i261 ], [ %i.gz, %.lr.ph.i.i272 ], [ %i.jw, %.lr.ph.i.i283 ], [ %i.oc, %.lr.ph.i.i294 ], [ %i.rr, %bb.bs ], [ %i.rn, %.lr.ph.i.i305 ] ; 5 uses
  %.0177.a = phi i8 [ 5, %bb.bf ], [ 7, %._ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEPKc.exit.thread_crit_edge ], [ 4, %.critedge.i282 ], [ 6, %.critedge.i304 ], [ 4, %bb.ap ], [ 5, %.critedge.i293 ], [ 1, %.critedge.i ], [ 3, %bb.ae ], [ 2, %.critedge.i260 ], [ 1, %bb.l ], [ 3, %.critedge.i271 ], [ 2, %bb.w ], [ 1, %.lr.ph.i.i ], [ 2, %.lr.ph.i.i261 ], [ 3, %.lr.ph.i.i272 ], [ 4, %.lr.ph.i.i283 ], [ 5, %.lr.ph.i.i294 ], [ 6, %.lr.ph.i.i305 ], [ 6, %bb.bs ] ; 2 uses
  %i.sd = icmp ult ptr %i.sc, %.pre.i313
  br i1 %i.sd, label %bb.by, label %bb.ca

end_hunk_10
begin_hunk_11_@_ZN6duckdb12_GLOBAL__N_119FromStringRecursiveERNS0_10TextReaderERNS0_10BlobWriterEjbb:bb.a

_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEPKc.exit333: ; preds = %.lr.ph.i.i330, %bb.cc, %.critedge.i329, %bb.cd
  %i.te = phi ptr [ %i.sq, %bb.cd ], [ %i.sx, %.critedge.i329 ], [ %i.sz, %.lr.ph.i.i330 ], [ %i.td, %bb.cc ] ; 8 uses
  %.not11.i327.a = phi i1 [ false, %bb.cd ], [ true, %.critedge.i329 ], [ true, %bb.cc ], [ true, %.lr.ph.i.i330 ] ; 5 uses
  %i.tf = icmp ult ptr %i.te, %.pre.i313
  br i1 %i.tf, label %bb.ce, label %bb.ck

end_hunk_11
begin_hunk_12_@_ZN6duckdb12_GLOBAL__N_119FromStringRecursiveERNS0_10TextReaderERNS0_10BlobWriterEjbb:bb.a

bb.cr:                                            ; preds = %bb.cl, %_ZN6duckdb12_GLOBAL__N_110TextReader8TryMatchEPKc.exit344
  %i.vf = select i1 %.not11.i316, i32 3, i32 2
  %24 = zext i1 %.not11.i327.a to i32
  %i.vg = add nuw nsw i32 %i.vf, %24              ; 8 uses
  %25 = zext nneg i8 %.0177.a to i32
  %i.vh = select i1 %.not11.i316, i32 1000, i32 0 ; 4 uses
  %i.vi = or disjoint i32 %i.vh, %25
  %i.vj = select i1 %.not11.i327.a, i32 2000, i32 0 ; 4 uses
  %i.vk = add nuw nsw i32 %i.vi, %i.vj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #49
end_hunk_12
