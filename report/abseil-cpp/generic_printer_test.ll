Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/generic_printer_test?download=true
inline.NumInlined: 8384
inline.NumDeleted: 2934
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4absl12lts_2026052612log_internal16LogRangeToStreamIN9__gnu_cxx17__normal_iteratorIPKN20generic_logging_test10StreamableESt6vectorIS6_SaIS6_EEEENS0_24internal_generic_printer18ContainerLogPolicyEEEvRSoT_SG_RKT0_:bb.a
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.256, i64 noundef 11) ; 0 uses
  %i.p = load i32, ptr %i.m, align 4, !tbaa !908
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.p)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.257, i64 noundef 1) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.not.1 = icmp eq ptr %i.s, %2
  br i1 %.not.1, label %.critedge, label %.lr.ph.1, !llvm.loop !1222

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.256, i64 noundef 11) ; 0 uses
  %i.v = load i32, ptr %i.s, align 4, !tbaa !908
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.v)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.257, i64 noundef 1) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not.2 = icmp eq ptr %i.y, %2
  br i1 %.not.2, label %.critedge, label %.lr.ph.2, !llvm.loop !1222

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.256, i64 noundef 11) ; 0 uses
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !908
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ab)
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.257, i64 noundef 1) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %.not.3 = icmp eq ptr %i.ae, %2
  br i1 %.not.3, label %.critedge, label %.lr.ph.3, !llvm.loop !1222

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.256, i64 noundef 11) ; 0 uses
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !908
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ah)
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.257, i64 noundef 1) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.not.4 = icmp eq ptr %i.ak, %2
  br i1 %.not.4, label %.critedge, label %.lr.ph.4, !llvm.loop !1222

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.256, i64 noundef 11) ; 0 uses
  %i.an = load i32, ptr %i.ak, align 4, !tbaa !908
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.an)
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.257, i64 noundef 1) ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %.not.5 = icmp eq ptr %i.aq, %2
  br i1 %.not.5, label %.critedge, label %.lr.ph.5, !llvm.loop !1222

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.256, i64 noundef 11) ; 0 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !908
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.at)
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull @.str.257, i64 noundef 1) ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.not.6 = icmp eq ptr %i.aw, %2
  br i1 %.not.6, label %.critedge, label %.lr.ph.6, !llvm.loop !1222

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.256, i64 noundef 11) ; 0 uses
  %i.az = load i32, ptr %i.aw, align 4, !tbaa !908
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.az)
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str.257, i64 noundef 1) ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %.not.7 = icmp eq ptr %i.bc, %2
  br i1 %.not.7, label %.critedge, label %.lr.ph.7, !llvm.loop !1222

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.256, i64 noundef 11) ; 0 uses
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !908
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bf)
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.257, i64 noundef 1) ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.not.8 = icmp eq ptr %i.bi, %2
  br i1 %.not.8, label %.critedge, label %.lr.ph.8, !llvm.loop !1222

.lr.ph.8:                                         ; preds = %.lr.ph.7
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.256, i64 noundef 11) ; 0 uses
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !908
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bl)
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str.257, i64 noundef 1) ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %.not.9 = icmp eq ptr %i.bo, %2
  br i1 %.not.9, label %.critedge, label %.lr.ph.9, !llvm.loop !1222

.lr.ph.9:                                         ; preds = %.lr.ph.8
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.256, i64 noundef 11) ; 0 uses
  %i.br = load i32, ptr %i.bo, align 4, !tbaa !908
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.br)
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull @.str.257, i64 noundef 1) ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.not.10 = icmp eq ptr %i.bu, %2
  br i1 %.not.10, label %.critedge, label %.lr.ph.10, !llvm.loop !1222

.lr.ph.10:                                        ; preds = %.lr.ph.9
  %i.bv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.256, i64 noundef 11) ; 0 uses
  %i.bx = load i32, ptr %i.bu, align 4, !tbaa !908
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bx)
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.257, i64 noundef 1) ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %.not.11 = icmp eq ptr %i.ca, %2
  br i1 %.not.11, label %.critedge, label %.lr.ph.11, !llvm.loop !1222

.lr.ph.11:                                        ; preds = %.lr.ph.10
  %i.cb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.256, i64 noundef 11) ; 0 uses
  %i.cd = load i32, ptr %i.ca, align 4, !tbaa !908
  %i.ce = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cd)
  %i.cf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.257, i64 noundef 1) ; 0 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.not.12 = icmp eq ptr %i.cg, %2
  br i1 %.not.12, label %.critedge, label %.lr.ph.12, !llvm.loop !1222

.lr.ph.12:                                        ; preds = %.lr.ph.11
  %i.ch = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.ci = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.256, i64 noundef 11) ; 0 uses
  %i.cj = load i32, ptr %i.cg, align 4, !tbaa !908
  %i.ck = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cj)
  %i.cl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.257, i64 noundef 1) ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.not.13 = icmp eq ptr %i.cm, %2
  br i1 %.not.13, label %.critedge, label %.lr.ph.13, !llvm.loop !1222

.lr.ph.13:                                        ; preds = %.lr.ph.12
  %i.cn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.co = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.137, i64 noundef 3) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.preheader, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %.lr.ph.8, %.lr.ph.9, %.lr.ph.10, %.lr.ph.11, %.lr.ph.12, %bb.b, %bb.a, %.lr.ph.13
  %i.cp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.138, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052616strings_internal12_GLOBAL__N_127GenericPrinterTest_Map_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052616strings_internal12_GLOBAL__N_127GenericPrinterTest_Map_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052616strings_internal12_GLOBAL__N_127GenericPrinterTest_Map_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052616strings_internal12_GLOBAL__N_127GenericPrinterTest_Map_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052616strings_internal12_GLOBAL__N_127GenericPrinterTest_Map_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair.209", align 8    ; 5 uses
  %2 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<std::__cxx11::basic_string<char>, absl::lts_20260526::flat_hash_map<std::__cxx11::basic_string<char>, std::pair<double, double>>>>::EmplaceDecomposable", align 8 ; 4 uses
  %3 = alloca %"struct.std::pair.214", align 8    ; 3 uses
  %4 = alloca %"struct.std::pair.183", align 8    ; 5 uses
  %5 = alloca %"struct.absl::lts_20260526::container_internal::raw_hash_set<absl::lts_20260526::container_internal::FlatHashMapPolicy<std::__cxx11::basic_string<char>, std::pair<double, double>>>::EmplaceDecomposable", align 8 ; 4 uses
  %6 = alloca %"struct.std::pair.191", align 8    ; 3 uses
  %7 = alloca %"class.absl::lts_20260526::log_internal::detail::RangeLogger.240", align 8 ; 5 uses
  %8 = alloca %"class.absl::lts_20260526::log_internal::detail::RangeLogger.240", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %10 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::pair<double, double>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::pair<double, double>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %17 = alloca %"class.absl::lts_20260526::log_internal::detail::RangeLogger.226", align 8 ; 7 uses
  %18 = alloca %"class.absl::lts_20260526::log_internal::detail::RangeLogger.226", align 8 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %20 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.absl::lts_20260526::flat_hash_map", align 8 ; 17 uses
  %27 = alloca [1 x %"struct.std::pair"], align 8 ; 11 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.absl::lts_20260526::flat_hash_map.148", align 8 ; 10 uses
  %30 = alloca [1 x %"struct.std::pair.152"], align 8 ; 14 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %33 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.162", align 8 ; 5 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %35 = alloca %"class.testing::Message", align 8 ; 7 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %37 = alloca %"class.std::map", align 8         ; 9 uses
  %38 = alloca [1 x %"struct.std::pair.167"], align 8 ; 10 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %40 = alloca %"class.std::map.169", align 8     ; 14 uses
  %41 = alloca [1 x %"struct.std::pair.175"], align 8 ; 13 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %43 = alloca %"struct.std::less", align 1       ; 4 uses
  %44 = alloca %"class.std::allocator.177", align 1 ; 4 uses
  %45 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %46 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.162", align 8 ; 5 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %48 = alloca %"class.testing::Message", align 8 ; 7 uses
  %49 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  %i.a = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.a, ptr %28, align 8, !tbaa !61
  store i8 65, ptr %i.a, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %28, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  %i.d = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  store ptr %i.d, ptr %31, align 8, !tbaa !61
  store i8 66, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 1, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %31, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  store ptr %i.g, ptr %30, align 8, !tbaa !61
  store i8 66, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 1, ptr %i.h, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %30, i64 17
  store i8 0, ptr %i.i, align 1, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 2 uses
  store <2 x double> <double 5.000000e-01, double 2.500000e-01>, ptr %i.j, align 8
  store i64 0, ptr %29, align 8
  invoke void @_ZN4absl12lts_2026052618container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE18GetPolicyFunctionsEvE5value, i64 noundef 1)
          to label %.noexc227 unwind label %bb.au

.noexc227:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !1223
  store ptr %29, ptr %5, align 8, !tbaa !1226, !noalias !1223
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !1228
  store ptr %30, ptr %4, align 8, !tbaa !46, !alias.scope !1233, !noalias !1238
  store ptr %i.j, ptr %i.k, align 8, !tbaa !1241, !alias.scope !1233, !noalias !1238
  invoke void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJRKS9_EESJ_IJRKSB_EEEEESA_INSD_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.191") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.noexc.i225 unwind label %bb.b

.noexc.i225:                                      ; preds = %.noexc227
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1228
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !1223
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEEC2IS5_SG_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISK_SL_EEEbE4typeELb1EEERSD_RKSG_(ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %bb.d unwind label %bb.av

bb.b:                                             ; preds = %.noexc227
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %.body228 unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #28
  unreachable

bb.d:                                             ; preds = %.noexc.i225
  store i64 0, ptr %26, align 8
  invoke void @_ZN4absl12lts_2026052618container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE18GetPolicyFunctionsEvE5value, i64 noundef 1)
          to label %.noexc234 unwind label %bb.aw

.noexc234:                                        ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !1243
  store ptr %26, ptr %2, align 8, !tbaa !1246, !noalias !1243
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !1248
  %i.p = getelementptr inbounds nuw i8, ptr %27, i64 32
  store ptr %27, ptr %1, align 8, !tbaa !46, !alias.scope !1253, !noalias !1258
  store ptr %i.p, ptr %i.o, align 8, !tbaa !1261, !alias.scope !1253, !noalias !1258
  invoke void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJRSF_EESQ_IJRKSI_EEEEESB_INSK_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.214") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %.noexc.i232 unwind label %bb.e

.noexc.i232:                                      ; preds = %.noexc234
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !1248
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !1243
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.q = getelementptr inbounds nuw i8, ptr %27, i64 32
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i unwind label %bb.g

bb.e:                                             ; preds = %.noexc234
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %.body235 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #28
  unreachable

bb.g:                                             ; preds = %.noexc.i232
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #28
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i: ; preds = %.noexc.i232
  %i.w = load ptr, ptr %27, align 8, !tbaa !33    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !34
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.preheader unwind label %bb.h

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.preheader: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEED2Ev.exit
  %i.ab = load ptr, ptr %30, align 8, !tbaa !33   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IddEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97

bb.h:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEED2Ev.exit
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #28
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.preheader
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !34
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ah) #29
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IddEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IddEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97
  %i.ai = load ptr, ptr %31, align 8, !tbaa !33   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.d
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IddEED2Ev.exit
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !34
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IddEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  %i.am = load ptr, ptr %28, align 8, !tbaa !33   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !34
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  store ptr @.str.283, ptr %33, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27, !noalias !1263
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %19)
          to label %.noexc104 unwind label %bb.ay

.noexc104:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i100
  %i.aq = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27, !noalias !1263
  call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  %i.ar = load i64, ptr %26, align 8, !noalias !1269 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.ar, 131072
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052624internal_generic_printer16GenericPrintImplINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_IS9_St4pairIddENS0_18container_internal10StringHashENSC_8StringEqESaISA_IKS9_SB_EEEESD_SE_SaISA_ISF_SI_EEEEEERSoSM_RKT_.exit.i.i, label %bb.i, !prof !985

bb.i:                                             ; preds = %.noexc104
  %i.as = and i64 %i.ar, 254
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %26, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !34, !noalias !1269
  br label %_ZN4absl12lts_2026052624internal_generic_printer16GenericPrintImplINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_IS9_St4pairIddENS0_18container_internal10StringHashENSC_8StringEqESaISA_IKS9_SB_EEEESD_SE_SaISA_ISF_SI_EEEEEERSoSM_RKT_.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !34, !noalias !1269, !nonnull !45, !noundef !45 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %26, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !34, !noalias !1269 ; 2 uses
  %i.ax = load i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, align 1, !tbaa !1270, !noalias !1269
  %i.ay = icmp slt i8 %i.ax, -1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052624internal_generic_printer16GenericPrintImplINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_IS9_St4pairIddENS0_18container_internal10StringHashENSC_8StringEqESaISA_IKS9_SB_EEEESD_SE_SaISA_ISF_SI_EEEEEERSoSM_RKT_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i
  %i.az = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %bb.k ]
  %i.ba = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.k ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 56 ; 2 uses
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !1270, !noalias !1269
  %i.be = icmp slt i8 %i.bd, -1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052624internal_generic_printer16GenericPrintImplINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_IS9_St4pairIddENS0_18container_internal10StringHashENSC_8StringEqESaISA_IKS9_SB_EEEESD_SE_SaISA_ISF_SI_EEEEEERSoSM_RKT_.exit.i.i, !llvm.loop !1272

_ZN4absl12lts_2026052624internal_generic_printer16GenericPrintImplINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_IS9_St4pairIddENS0_18container_internal10StringHashENSC_8StringEqESaISA_IKS9_SB_EEEESD_SE_SaISA_ISF_SI_EEEEEERSoSM_RKT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.k, %bb.j, %.noexc104
  %.sroa.6.0.i.i.i.i.i.i = phi ptr [ undef, %.noexc104 ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.j ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %bb.k ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ null, %.noexc104 ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.j ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.k ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %18, align 8, !alias.scope !1266, !noalias !1263
  %.sroa.44.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.sroa.6.0.i.i.i.i.i.i, ptr %.sroa.44.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1266, !noalias !1263
  %i.bf = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr null, ptr %i.bf, align 8, !alias.scope !1266, !noalias !1263
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1263
  %i.bg = getelementptr inbounds nuw i8, ptr %18, i64 32
  invoke void @_ZN4absl12lts_2026052612log_internal16LogRangeToStreamINS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapISB_St4pairIddENS3_10StringHashENS3_8StringEqESaISD_IKSB_SE_EEEEEEJEE14const_iteratorENS0_24internal_generic_printer18ContainerLogPolicyEEEvRSoT_SR_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr %.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.6.0.i.i.i.i.i.i, ptr null, ptr %.sroa.2.0.copyload.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.bg)
          to label %bb.l unwind label %bb.y, !noalias !1263

bb.l:                                             ; preds = %_ZN4absl12lts_2026052624internal_generic_printer16GenericPrintImplINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_IS9_St4pairIddENS0_18container_internal10StringHashENSC_8StringEqESaISA_IKS9_SB_EEEESD_SE_SaISA_ISF_SI_EEEEEERSoSM_RKT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27, !noalias !1263
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27, !noalias !1263
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %20)
          to label %bb.m unwind label %bb.z, !noalias !1263

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27, !noalias !1263
  call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  %i.bh = load i64, ptr %26, align 8, !noalias !1276 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %i.bh, 131072
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052624internal_generic_printerlsERSoRKNS1_14GenericPrinterINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_ISA_St4pairIddENS0_18container_internal10StringHashENSD_8StringEqESaISB_IKSA_SC_EEEESE_SF_SaISB_ISG_SJ_EEEEEE.exit.i.i, label %bb.n, !prof !985

bb.n:                                             ; preds = %bb.m
  %i.bi = and i64 %i.bh, 254
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %26, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !34, !noalias !1276
  br label %_ZN4absl12lts_2026052624internal_generic_printerlsERSoRKNS1_14GenericPrinterINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_ISA_St4pairIddENS0_18container_internal10StringHashENSD_8StringEqESaISB_IKSA_SC_EEEESE_SF_SaISB_ISG_SJ_EEEEEE.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !tbaa !34, !noalias !1276, !nonnull !45, !noundef !45 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %26, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i21.i = load ptr, ptr %i.bm, align 8, !tbaa !34, !noalias !1276 ; 2 uses
  %i.bn = load i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !1270, !noalias !1276
  %i.bo = icmp slt i8 %i.bn, -1
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052624internal_generic_printerlsERSoRKNS1_14GenericPrinterINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_ISA_St4pairIddENS0_18container_internal10StringHashENSD_8StringEqESaISB_IKSA_SC_EEEESE_SF_SaISB_ISG_SJ_EEEEEE.exit.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i.i
  %i.bp = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i21.i, %bb.p ]
  %i.bq = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.p ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 56 ; 2 uses
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !1270, !noalias !1276
  %i.bu = icmp slt i8 %i.bt, -1
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052624internal_generic_printerlsERSoRKNS1_14GenericPrinterINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_ISA_St4pairIddENS0_18container_internal10StringHashENSD_8StringEqESaISB_IKSA_SC_EEEESE_SF_SaISB_ISG_SJ_EEEEEE.exit.i.i, !llvm.loop !1272

_ZN4absl12lts_2026052624internal_generic_printerlsERSoRKNS1_14GenericPrinterINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_ISA_St4pairIddENS0_18container_internal10StringHashENSD_8StringEqESaISB_IKSA_SC_EEEESE_SF_SaISB_ISG_SJ_EEEEEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.p, %bb.o, %bb.m
  %.sroa.6.0.i.i.i.i.i.i.i = phi ptr [ undef, %bb.m ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i21.i, %bb.p ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.m ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.o ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.p ], [ %i.br, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i.i.i.i, ptr %17, align 8, !alias.scope !1273, !noalias !1263
  %.sroa.44.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.sroa.6.0.i.i.i.i.i.i.i, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1273, !noalias !1263
  %i.bw = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr null, ptr %i.bw, align 8, !alias.scope !1273, !noalias !1263
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %17, i64 24
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1263
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 32
  invoke void @_ZN4absl12lts_2026052612log_internal16LogRangeToStreamINS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapISB_St4pairIddENS3_10StringHashENS3_8StringEqESaISD_IKSB_SE_EEEEEEJEE14const_iteratorENS0_24internal_generic_printer18ContainerLogPolicyEEEvRSoT_SR_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr %.sroa.0.0.i.i.i.i.i.i.i, ptr %.sroa.6.0.i.i.i.i.i.i.i, ptr null, ptr %.sroa.2.0.copyload.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.bx)
          to label %bb.q unwind label %bb.aa, !noalias !1263

bb.q:                                             ; preds = %_ZN4absl12lts_2026052624internal_generic_printerlsERSoRKNS1_14GenericPrinterINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_ISA_St4pairIddENS0_18container_internal10StringHashENSD_8StringEqESaISB_IKSA_SC_EEEESE_SF_SaISB_ISG_SJ_EEEEEE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27, !noalias !1263
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27, !noalias !1263
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27, !noalias !1263
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  %i.by = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.by, ptr %22, align 8, !tbaa !61, !alias.scope !1283, !noalias !1263
  %i.bz = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store i64 0, ptr %i.bz, align 8, !tbaa !24, !alias.scope !1283, !noalias !1263
  store i8 0, ptr %i.by, align 8, !tbaa !34, !alias.scope !1283, !noalias !1263
  %i.ca = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !63, !noalias !1284 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.cb, null
  %i.cc = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !1284 ; 2 uses
  %i.ce = icmp ugt ptr %i.cb, %i.cd
  %.08.i.i.i.i = select i1 %i.ce, ptr %i.cb, ptr %i.cd ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !65, !noalias !1284 ; 2 uses
  %i.ch = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef 0, i64 noundef 0, ptr noundef %i.cg, i64 noundef %i.cj)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.s, !noalias !1263 ; 0 uses

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %22, align 8, !tbaa !33, !alias.scope !1283, !noalias !1263 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.by
  br i1 %i.cn, label %.body.i, label %.body.i.sink.split

bb.t:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %19, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %i.co)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.s, !noalias !1263

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27, !noalias !1263
  call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  %i.cp = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  store ptr %i.cp, ptr %23, align 8, !tbaa !61, !alias.scope !1291, !noalias !1263
  %i.cq = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store i64 0, ptr %i.cq, align 8, !tbaa !24, !alias.scope !1291, !noalias !1263
  store i8 0, ptr %i.cp, align 8, !tbaa !34, !alias.scope !1291, !noalias !1263
  %i.cr = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !63, !noalias !1292 ; 3 uses
  %.not.i.not.i.i22.i = icmp eq ptr %i.cs, null
  %i.ct = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !1292 ; 2 uses
  %i.cv = icmp ugt ptr %i.cs, %i.cu
  %.08.i.i.i23.i = select i1 %i.cv, ptr %i.cs, ptr %i.cu ; 2 uses
  %.not5.i.i24.i = icmp eq ptr %.08.i.i.i23.i, null
  %.not.i.i25.i = select i1 %.not.i.not.i.i22.i, i1 true, i1 %.not5.i.i24.i
  br i1 %.not.i.i25.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %20, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !65, !noalias !1292 ; 2 uses
  %i.cy = ptrtoint ptr %.08.i.i.i23.i to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef 0, i64 noundef 0, ptr noundef %i.cx, i64 noundef %i.da)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit31.i unwind label %bb.v, !noalias !1263 ; 0 uses

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %23, align 8, !tbaa !33, !alias.scope !1291, !noalias !1263 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cp
  br i1 %i.de, label %.body29.i, label %.body29.i.sink.split

bb.w:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %20, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %i.df)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit31.i unwind label %bb.v, !noalias !1263

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit31.i: ; preds = %bb.w, %bb.u
  %i.dg = load i64, ptr %i.bz, align 8, !tbaa !24, !noalias !1293 ; 3 uses
  %i.dh = load i64, ptr %i.cq, align 8, !tbaa !24, !noalias !1293
  %i.di = icmp eq i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i.i

bb.x:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit31.i
  %i.dj = icmp eq i64 %i.dg, 0
  br i1 %i.dj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i: ; preds = %bb.x
  %i.dk = load ptr, ptr %23, align 8, !tbaa !33, !noalias !1293
  %i.dl = load ptr, ptr %22, align 8, !tbaa !33, !noalias !1293
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.dl, ptr %i.dk, i64 %i.dg), !noalias !1293
  %i.dm = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.dm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, %bb.x
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit.i unwind label %bb.ab, !noalias !1263

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i, %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit31.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EENS_15AssertionResultEPKcSA_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit.i unwind label %bb.ab, !noalias !1263

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i
  %i.dn = load ptr, ptr %23, align 8, !tbaa !33, !noalias !1263 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.cp
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit.i
  %i.dp = load i64, ptr %i.cp, align 8, !tbaa !34, !noalias !1263
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #29, !noalias !1263
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27, !noalias !1263
  %i.dr = load ptr, ptr %22, align 8, !tbaa !33, !noalias !1263 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.by
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dt = load i64, ptr %i.by, align 8, !tbaa !34, !noalias !1263
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #29, !noalias !1263
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27, !noalias !1263
  %i.dv = load i8, ptr %21, align 8, !tbaa !35, !range !44, !noalias !1263, !noundef !45
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.al, label %bb.ac

bb.y:                                             ; preds = %_ZN4absl12lts_2026052624internal_generic_printer16GenericPrintImplINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS3_IS9_St4pairIddENS0_18container_internal10StringHashENSC_8StringEqESaISA_IKS9_SB_EEEESD_SE_SaISA_ISF_SI_EEEEEERSoSM_RKT_.exit.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body57.i

bb.z:                                             ; preds = %bb.l
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.aa:                                            ; preds = %_ZN4absl12lts_2026052624internal_generic_printerlsERSoRKNS1_14GenericPrinterINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_ISA_St4pairIddENS0_18container_internal10StringHashENSD_8StringEqESaISB_IKSA_SC_EEEESE_SF_SaISB_ISG_SJ_EEEEEE.exit.i.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ab:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = load ptr, ptr %23, align 8, !tbaa !33, !noalias !1263 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.cp
  br i1 %i.ec, label %.body29.i, label %.body29.i.sink.split

.body29.i.sink.split:                             ; preds = %bb.ab, %bb.v
  %.sink = phi ptr [ %i.dd, %bb.v ], [ %i.eb, %bb.ab ]
  %.pn.i.ph = phi { ptr, i32 } [ %i.dc, %bb.v ], [ %i.ea, %bb.ab ]
  %i.ed = load i64, ptr %i.cp, align 8, !tbaa !34, !noalias !1263
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ee) #29, !noalias !1263
  br label %.body29.i

.body29.i:                                        ; preds = %.body29.i.sink.split, %bb.ab, %bb.v
  %.pn.i = phi { ptr, i32 } [ %i.dc, %bb.v ], [ %i.ea, %bb.ab ], [ %.pn.i.ph, %.body29.i.sink.split ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_St4pairIddESt4lessIS5_ESaIS6_IKS5_S7_EEES9_SaIS6_ISA_SD_EEEC2ESt16initializer_listISE_ERKS9_RKSF_:bb.a
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.s = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.s, label %.noexc.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i
  %i.t = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_S6_IddESt4lessIS5_ESaIS6_IS7_S9_EEEESt10_Select1stISF_ESB_SaISF_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(80) %.07.i)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.u = extractvalue { ptr, ptr } %i.t, 0
  %i.v = extractvalue { ptr, ptr } %i.t, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_S6_IddESt4lessIS5_ESaIS6_IS7_S9_EEEESt10_Select1stISF_ESB_SaISF_EE17_M_insert_unique_IRKSF_NSJ_11_Alloc_nodeEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EOT_RT0_.exit.i, label %.noexc.thread

.noexc.thread:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.noexc
  %.sroa.12.2.i17 = phi ptr [ %i.v, %.noexc ], [ %i.h, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  %.sroa.066.2.i16 = phi ptr [ %i.u, %.noexc ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  %i.w = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_S6_IddESt4lessIS5_ESaIS6_IS7_S9_EEEESt10_Select1stISF_ESB_SaISF_EE10_M_insert_IRKSF_NSJ_11_Alloc_nodeEEESt17_Rb_tree_iteratorISF_EPSt18_Rb_tree_node_baseSR_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %.sroa.066.2.i16, ptr noundef nonnull %.sroa.12.2.i17, ptr noundef nonnull align 8 dereferenceable(80) %.07.i, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_S6_IddESt4lessIS5_ESaIS6_IS7_S9_EEEESt10_Select1stISF_ESB_SaISF_EE17_M_insert_unique_IRKSF_NSJ_11_Alloc_nodeEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EOT_RT0_.exit.i unwind label %bb.d ; 0 uses

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_S6_IddESt4lessIS5_ESaIS6_IS7_S9_EEEESt10_Select1stISF_ESB_SaISF_EE17_M_insert_unique_IRKSF_NSJ_11_Alloc_nodeEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EOT_RT0_.exit.i: ; preds = %.noexc.thread, %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i, i64 80 ; 2 uses
  %.not.i = icmp eq ptr %i.x, %i.f
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !1398

.loopexit:                                        ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_S6_IddESt4lessIS5_ESaIS6_IS7_S9_EEEESt10_Select1stISF_ESB_SaISF_EE17_M_insert_unique_IRKSF_NSJ_11_Alloc_nodeEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EOT_RT0_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

bb.d:                                             ; preds = %bb.c, %.noexc.thread
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_S6_IddESt4lessIS5_ESaIS6_IS7_S9_EEEESt10_Select1stISF_ESB_SaISF_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #27
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapIS5_S_IddESt4lessIS5_ESaIS_IS6_S8_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1311
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IddEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddESt4lessIS5_ESaIS6_IKS5_S7_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddESt4lessIS5_ESaIS6_IKS5_S7_EEED2Ev.exit: ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddESt4lessIS5_ESaIS6_IKS5_S7_EEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !34
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddESt4lessIS5_ESaIS6_IKS5_S7_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddESt4lessIS5_ESaIS6_IKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1311
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IddEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IddEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IddEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_St4pairIddESt4lessIS5_ESaIS6_IKS5_S7_EEES9_SaIS6_ISA_SD_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1311
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_S6_IddESt4lessIS5_ESaIS6_IS7_S9_EEEESt10_Select1stISF_ESB_SaISF_EE8_M_eraseEPSt13_Rb_tree_nodeISF_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_S6_IddESt4lessIS5_ESaIS6_IS7_S9_EEEESt10_Select1stISF_ESB_SaISF_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIS5_S6_IddESt4lessIS5_ESaIS6_IS7_S9_EEEESt10_Select1stISF_ESB_SaISF_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare void @_ZN4absl12lts_2026052618container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

declare noundef ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(24)) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS1_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #2 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24
  %i.d = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %2, ptr noundef %i.a, i64 noundef %i.c)
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE19transfer_n_slots_fnEPvSE_SE_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE8transferEPNS1_13map_slot_typeIS9_SB_EESG_.exit
  %.014 = phi ptr [ %i.u, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE8transferEPNS1_13map_slot_typeIS9_SB_EESG_.exit ], [ %1, %bb.a ] ; 6 uses
  %.0913 = phi ptr [ %i.t, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE8transferEPNS1_13map_slot_typeIS9_SB_EESG_.exit ], [ %2, %bb.a ] ; 8 uses
  %.01012 = phi i64 [ %i.s, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE8transferEPNS1_13map_slot_typeIS9_SB_EESG_.exit ], [ %3, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.a, ptr %.014, align 8, !tbaa !61
  %i.b = load ptr, ptr %.0913, align 8, !tbaa !33 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0913, i64 16 ; 7 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IddEEC2EOS7_.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  store ptr %i.b, ptr %.014, align 8, !tbaa !33
  %i.i = load i64, ptr %i.c, align 8, !tbaa !34
  store i64 %i.i, ptr %i.a, align 8, !tbaa !34
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IddEEC2EOS7_.exit.i.i.i.i.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IddEEC2EOS7_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.0913, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !24
  store ptr %i.c, ptr %.0913, align 8, !tbaa !33
  store i64 0, ptr %i.j, align 8, !tbaa !24
  store i8 0, ptr %i.c, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %.014, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %i.o = load ptr, ptr %.0913, align 8, !tbaa !33 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE8transferEPNS1_13map_slot_typeIS9_SB_EESG_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IddEEC2EOS7_.exit.i.i.i.i.i.i.i
  %i.q = load i64, ptr %i.c, align 8, !tbaa !34
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #29
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE8transferEPNS1_13map_slot_typeIS9_SB_EESG_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE8transferEPNS1_13map_slot_typeIS9_SB_EESG_.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IddEEC2EOS7_.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.s = add i64 %.01012, -1                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0913, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %.014, i64 48
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1399

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE8transferEPNS1_13map_slot_typeIS9_SB_EESG_.exit, %bb.a
  ret void
}

declare noundef ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef, i64 noundef) #0

declare void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSJ_PFvSJ_hmmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !34 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #32, !srcloc !1400 ; 2 uses
  %.not60 = icmp eq i32 %i.r, 65535
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE8transferEPNS1_13map_slot_typeIS9_SB_EESG_.exit, %bb.c
  %i.t = add nuw nsw i64 %.04962, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !1401

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE8transferEPNS1_13map_slot_typeIS9_SB_EESG_.exit
  %.sroa.052.061 = phi i32 [ %i.ef, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE8transferEPNS1_13map_slot_typeIS9_SB_EESG_.exit ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.052.061, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04962, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.x ; 7 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255                      ; 4 uses
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !33  ; 11 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !24 ; 14 uses
  %i.af = icmp ult i64 %i.ae, 9
  br i1 %i.af, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %i.ae
  %.0.copyload.i.i.i.i = load i64, ptr %i.ag, align 1
  %i.ah = icmp samesign ugt i64 %i.ae, 3
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i34.i.i = load i32, ptr %i.ac, align 1
  %i.ai = zext i32 %.0.copyload.i.i34.i.i to i64
  %i.aj = shl nuw i64 %i.ai, 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %.0.copyload.i4.i.i.i = load i32, ptr %i.al, align 1
  %i.am = zext i32 %.0.copyload.i4.i.i.i to i64
  %i.an = or disjoint i64 %i.aj, %i.am
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load i8, ptr %i.ac, align 1, !tbaa !34
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 16
  %i.ar = getelementptr i8, ptr %i.ac, i64 %i.ae
  %i.as = getelementptr i8, ptr %i.ar, i64 -1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !34
  %i.au = zext i8 %i.at to i64
  %i.av = or disjoint i64 %i.aq, %i.au
  %i.aw = lshr i64 %i.ae, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !34
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 8
  %i.bb = or disjoint i64 %i.av, %i.ba
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i

_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i.i = phi i64 [ %i.an, %bb.e ], [ %i.bb, %bb.g ], [ 87, %bb.f ]
  %i.bc = xor i64 %.0.copyload.i.i.i.i, %.0.i.i.i
  %i.bd = xor i64 %i.bc, %i.ab
  %i.be = zext i64 %i.bd to i128
  %i.bf = mul nuw nsw i128 %i.be, 8779197792823184629 ; 2 uses
  %i.bg = lshr i128 %i.bf, 64
  %i.bh = xor i128 %i.bg, %i.bf
  %i.bi = trunc i128 %i.bh to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.h:                                             ; preds = %.lr.ph
  %i.bj = icmp ult i64 %i.ae, 17
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %i.ae
  %.0.copyload.i.i38.i.i = load i64, ptr %i.bk, align 1
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ac, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %.0.copyload.i.i2.i.i.i = load i64, ptr %i.bm, align 1
  %i.bn = xor i64 %.0.copyload.i.i38.i.i, %.0.copyload.i.i.i.i.i
  %i.bo = xor i64 %i.bn, %i.ab
  %i.bp = xor i64 %.0.copyload.i.i2.i.i.i, 8779197792823184629
  %i.bq = zext i64 %i.bo to i128
  %i.br = zext i64 %i.bp to i128
  %i.bs = mul nuw i128 %i.bq, %i.br               ; 2 uses
  %i.bt = lshr i128 %i.bs, 64
  %i.bu = xor i128 %i.bt, %i.bs
  %i.bv = trunc i128 %i.bu to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.j:                                             ; preds = %bb.h
  %i.bw = icmp ult i64 %i.ae, 33
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %i.ae
  %.0.copyload.i.i42.i.i = load i64, ptr %i.bx, align 1
  %i.by = xor i64 %.0.copyload.i.i42.i.i, %i.ab   ; 2 uses
  %.0.copyload.i.i43.i.i = load i64, ptr %i.ac, align 1
  %i.bz = xor i64 %.0.copyload.i.i43.i.i, 1376283091369227076
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.0.copyload.i.i44.i.i = load i64, ptr %i.ca, align 1
  %i.cb = xor i64 %.0.copyload.i.i44.i.i, %i.by
  %i.cc = zext i64 %i.bz to i128
  %i.cd = zext i64 %i.cb to i128
  %i.ce = mul nuw i128 %i.cd, %i.cc               ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ac, i64 %i.ae  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 -16
  %.0.copyload.i.i48.i.i = load i64, ptr %i.cg, align 1
  %i.ch = xor i64 %.0.copyload.i.i48.i.i, 589684135938649225
  %i.ci = getelementptr i8, ptr %i.cf, i64 -8
  %.0.copyload.i.i49.i.i = load i64, ptr %i.ci, align 1
  %i.cj = xor i64 %.0.copyload.i.i49.i.i, %i.by
  %i.ck = zext i64 %i.ch to i128
  %i.cl = zext i64 %i.cj to i128
  %i.cm = mul nuw i128 %i.cl, %i.ck               ; 2 uses
  %i.cn = xor i128 %i.cm, %i.ce
  %i.co = lshr i128 %i.cn, 64
  %i.cp = xor i128 %i.ce, %i.co
  %i.cq = xor i128 %i.cp, %i.cm
  %i.cr = trunc i128 %i.cq to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.l:                                             ; preds = %bb.j
  %i.cs = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef %i.ab, ptr noundef %i.ac, i64 noundef %i.ae)
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit: ; preds = %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i, %bb.i, %bb.k, %bb.l
  %.0.i.i = phi i64 [ %i.bi, %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i ], [ %i.bv, %bb.i ], [ %i.cr, %bb.k ], [ %i.cs, %bb.l ] ; 6 uses
  %i.ct = lshr i64 %.0.i.i, 57
  %i.cu = trunc nuw nsw i64 %i.ct to i8           ; 2 uses
  %i.cv = sub i64 %i.x, %.0.i.i                   ; 2 uses
  %i.cw = and i64 %i.i, %i.cv
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.m, label %bb.n, !prof !1402

bb.m:                                             ; preds = %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit
  %i.cy = and i64 %i.cv, 15
  %i.cz = add i64 %i.cy, %.0.i.i
  %i.da = and i64 %i.cz, %i.c
  br label %bb.r

bb.n:                                             ; preds = %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit
  %i.db = and i64 %.0.i.i, %i.d
  %.not.i = icmp ult i64 %i.db, %i.x
  br i1 %.not.i, label %bb.o, label %bb.q, !prof !1402

bb.o:                                             ; preds = %bb.n
  %i.dc = and i64 %.0.i.i, %i.c                   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.dc
  %i.de = load <16 x i8>, ptr %i.dd, align 1, !tbaa !34
  %i.df = icmp slt <16 x i8> %i.de, zeroinitializer
  %i.dg = bitcast <16 x i1> %i.df to i16
  %i.dh = zext i16 %i.dg to i32
  %i.di = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.dh) #32, !srcloc !1400 ; 2 uses
  %.not26.i = icmp eq i32 %i.di, 0
  br i1 %.not26.i, label %bb.q, label %bb.p, !prof !985

bb.p:                                             ; preds = %bb.o
  %i.dj = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.di, i1 true)
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = add nuw i64 %i.dc, %i.dk
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.cu, i64 noundef %i.x, i64 noundef %.0.i.i)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE8transferEPNS1_13map_slot_typeIS9_SB_EESG_.exit

bb.r:                                             ; preds = %bb.p, %bb.m
  %.sink27.i = phi i64 [ %i.dl, %bb.p ], [ %i.da, %bb.m ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm:bb.a

bb.f:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %2, 17
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %2
  %.0.copyload.i.i38.i = load i64, ptr %i.af, align 1
  %.0.copyload.i.i.i.i = load i64, ptr %1, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %.0.copyload.i.i2.i.i = load i64, ptr %i.ah, align 1
  %i.ai = xor i64 %.0.copyload.i.i38.i, %.0.copyload.i.i.i.i
  %i.aj = xor i64 %i.ai, %0
  %i.ak = xor i64 %.0.copyload.i.i2.i.i, 8779197792823184629
  %i.al = zext i64 %i.aj to i128
  %i.am = zext i64 %i.ak to i128
  %i.an = mul nuw i128 %i.al, %i.am               ; 2 uses
  %i.ao = lshr i128 %i.an, 64
  %i.ap = xor i128 %i.ao, %i.an
  %i.aq = trunc i128 %i.ap to i64
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.h:                                             ; preds = %bb.f
  %i.ar = icmp ult i64 %2, 33
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %2
  %.0.copyload.i.i42.i = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i42.i, %0        ; 2 uses
  %.0.copyload.i.i43.i = load i64, ptr %1, align 1
  %i.au = xor i64 %.0.copyload.i.i43.i, 1376283091369227076
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i44.i = load i64, ptr %i.av, align 1
  %i.aw = xor i64 %.0.copyload.i.i44.i, %i.at
  %i.ax = zext i64 %i.au to i128
  %i.ay = zext i64 %i.aw to i128
  %i.az = mul nuw i128 %i.ay, %i.ax               ; 2 uses
  %i.ba = getelementptr i8, ptr %1, i64 %2        ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -16
  %.0.copyload.i.i48.i = load i64, ptr %i.bb, align 1
  %i.bc = xor i64 %.0.copyload.i.i48.i, 589684135938649225
  %i.bd = getelementptr i8, ptr %i.ba, i64 -8
  %.0.copyload.i.i49.i = load i64, ptr %i.bd, align 1
  %i.be = xor i64 %.0.copyload.i.i49.i, %i.at
  %i.bf = zext i64 %i.bc to i128
  %i.bg = zext i64 %i.be to i128
  %i.bh = mul nuw i128 %i.bg, %i.bf               ; 2 uses
  %i.bi = xor i128 %i.bh, %i.az
  %i.bj = lshr i128 %i.bi, 64
  %i.bk = xor i128 %i.az, %i.bj
  %i.bl = xor i128 %i.bk, %i.bh
  %i.bm = trunc i128 %i.bl to i64
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.j:                                             ; preds = %bb.h
  %i.bn = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i, %bb.g, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.ad, %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i ], [ %i.aq, %bb.g ], [ %i.bm, %bb.i ], [ %i.bn, %bb.j ]
  ret i64 %.0.i
}

declare noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJRKS9_EESJ_IJRKSB_EEEEESA_INSD_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.191") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.absl::lts_20260526::container_internal::HashKey", align 8 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1403, !nonnull !45, !align !1405 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  %i.c = load i64, ptr %i.b, align 8, !noalias !1406 ; 2 uses
  %i.d = and i64 %i.c, 254
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  %.not.i.i.i = icmp ult i64 %i.c, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !34, !noalias !1412 ; 3 uses
  %i.g = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !1412
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24, !noalias !1412 ; 3 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !33, !noalias !1412
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !24, !noalias !1412
  %i.m = icmp eq i64 %i.i, %i.l
  br i1 %i.m, label %bb.d, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.i, 0
  br i1 %i.n, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit.thread5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.j, i64 %i.i), !noalias !1412
  %i.o = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.o, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit.thread5, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit.thread

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit.thread5: ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  store ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr %0, align 8, !alias.scope !1412
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !1412
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.p, align 8, !tbaa !1413, !alias.scope !1412
  br label %bb.h

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit.thread: ; preds = %bb.b, %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !1412
  store ptr %i.b, ptr %6, align 8, !tbaa !1416, !noalias !1412
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.q, align 8, !tbaa !46, !noalias !1412
  %i.r = call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %6, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE), !noalias !1412 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  store ptr %i.s, ptr %0, align 8, !alias.scope !1412
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1412
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.u, align 8, !tbaa !1413, !alias.scope !1412
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !1412
  br label %bb.e

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit: ; preds = %bb.a
  tail call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE28find_or_prepare_insert_largeIS9_EESA_INSD_8iteratorEbERKT_(ptr dead_on_unwind writable sret(%"struct.std::pair.191") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !1413, !range !44
  %i.v = trunc nuw i8 %.pre to i1
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit.thread, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 7 uses
  %i.w = load i64, ptr %4, align 8, !tbaa !46
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load i64, ptr %5, align 8, !tbaa !1241
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 16 ; 3 uses
  store ptr %i.z, ptr %.sroa.2.0.copyload, align 8, !tbaa !61
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !33  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !103
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.e
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ae, ptr %.sroa.2.0.copyload, align 8, !tbaa !33
  %i.af = load i64, ptr %i.a, align 8, !tbaa !103
  store i64 %i.af, ptr %i.z, align 8, !tbaa !34
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ag = phi ptr [ %i.ae, %.noexc.i.i.i.i.i.i.i.i.i.i ], [ %i.z, %bb.e ] ; 2 uses
  switch i64 %i.ac, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESI_IJRKSB_EEEEEvNSD_8iteratorEDpOT_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !34
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !34
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESI_IJRKSB_EEEEEvNSD_8iteratorEDpOT_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESI_IJRKSB_EEEEEvNSD_8iteratorEDpOT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESI_IJRKSB_EEEEEvNSD_8iteratorEDpOT_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.f, %bb.g
  %i.ai = inttoptr i64 %i.y to ptr
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !103 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !24
  %i.al = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit.thread5, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE10emplace_atIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESI_IJRKSB_EEEEEvNSD_8iteratorEDpOT_.exit, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE22find_or_prepare_insertIS9_EESA_INSD_8iteratorEbERKT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE28find_or_prepare_insert_largeIS9_EESA_INSD_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.191") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.b = load i64, ptr %1, align 8
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.c = lshr i64 %i.b, 8
  %i.d = and i64 %i.c, 255
  %i.e = load ptr, ptr %2, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24
  %i.h = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.d, ptr noundef %i.e, i64 noundef %i.g) ; 3 uses
  %i.i = load i64, ptr %1, align 8, !noalias !1418
  %i.j = and i64 %i.i, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.l = lshr i64 %i.h, 57
  %i.m = trunc nuw nsw i64 %i.l to i8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !34 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i3 = load ptr, ptr %i.n, align 8, !tbaa !34 ; 4 uses
  %i.o = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.pn = phi i64 [ %i.h, %bb.a ], [ %i.as, %bb.f ]
  %.sroa.14.0 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.f ] ; 2 uses
  %.sroa.639.0 = and i64 %.pn, %i.k               ; 5 uses
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %.sroa.639.0
  tail call void @llvm.prefetch.p0(ptr %i.q, i32 0, i32 3, i32 1)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.639.0
  %i.s = load <16 x i8>, ptr %i.r, align 1, !tbaa !34 ; 2 uses
  %i.t = icmp eq <16 x i8> %i.p, %i.s
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32
  %i.w = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.v) #32, !srcloc !1400 ; 2 uses
  %.not68 = icmp eq i32 %i.w, 0
  br i1 %.not68, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSA_IKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.x = load ptr, ptr %2, align 8, !tbaa !33
  %i.y = load i64, ptr %i.f, align 8, !tbaa !24   ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge.i
  %.sroa.024.069 = phi i32 [ %i.w, %.lr.ph ], [ %i.al, %.critedge.i ] ; 3 uses
  %i.aa = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.024.069, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = add nuw i64 %.sroa.639.0, %i.ab
  %i.ad = and i64 %i.ac, %i.k                     ; 3 uses
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !24
  %i.ai = icmp eq i64 %i.ah, %i.y
  br i1 %i.ai, label %bb.d, label %.critedge.i, !prof !1421

bb.d:                                             ; preds = %bb.c
  br i1 %i.z, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE28find_or_prepare_insert_largeIS9_EESA_INSD_8iteratorEbERKT_ENKUlvE_clEv.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.x, i64 %i.y)
  %i.aj = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE28find_or_prepare_insert_largeIS9_EESA_INSD_8iteratorEbERKT_ENKUlvE_clEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ak = add i32 %.sroa.024.069, -1
  %i.al = and i32 %i.ak, %.sroa.024.069           ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSA_IKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit, label %bb.c

_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSA_IKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit: ; preds = %.critedge.i, %bb.b
  %i.am = icmp eq <16 x i8> %i.s, splat (i8 -128)
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = zext i16 %i.an to i32
  %i.ap = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ao) #32, !srcloc !1400 ; 2 uses
  %.not62 = icmp eq i32 %i.ap, 0
  br i1 %.not62, label %bb.f, label %bb.e, !prof !985

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSA_IKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit
  %i.aq = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i32 %i.ap, i64 %.sroa.639.0, i64 %.sroa.14.0)
  %.sroa.0.0.copyload.i.i.i.i7.pre = load ptr, ptr %i.a, align 8, !tbaa !34
  %.sroa.0.0.copyload.i.i.i2.i.pre = load ptr, ptr %i.n, align 8, !tbaa !34
  br label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE28find_or_prepare_insert_largeIS9_EESA_INSD_8iteratorEbERKT_ENKUlvE_clEv.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEvE5applyINS1_12EqualElementIS9_NS1_8StringEqEEEJRSA_IKS9_SB_EESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_.exit
  %i.ar = add i64 %.sroa.14.0, 16                 ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.639.0
  br label %bb.b

_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE28find_or_prepare_insert_largeIS9_EESA_INSD_8iteratorEbERKT_ENKUlvE_clEv.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i.i2.i = phi ptr [ %.sroa.0.0.copyload.i.i.i2.i.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i3, %bb.d ], [ %.sroa.0.0.copyload.i.i.i3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.copyload.i.i.i.i7 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i7.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ %.sroa.0.0.copyload.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.349.ph = phi i64 [ %i.aq, %bb.e ], [ %i.ad, %bb.d ], [ %i.ad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.3.ph = phi i8 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i7, i64 %.349.ph
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i, i64 %.349.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i7) ]
  store ptr %i.at, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph, ptr %i.av, align 8, !tbaa !1413
  ret void
}

declare { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1422, !nonnull !45, !align !1405 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24
  %i.f = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %1, ptr noundef %i.c, i64 noundef %i.e)
  ret i64 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #20

declare noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i32, i64, i64) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.200, align 8            ; 4 uses
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = and i64 %i.a, 255
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, 254
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ult i64 %i.a, 131072
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !34 ; 2 uses
  %i.g = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !34
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr %0, ptr %1, align 8, !tbaa !1424
  call void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 48, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSI_SJ_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.e
  %i.l = load i64, ptr %0, align 8                ; 2 uses
  %i.m = and i64 %i.l, 255
  %notmask.i.i.i.i = shl nsw i64 -1, %i.m         ; 4 uses
  %i.n = add nsw i64 %notmask.i.i.i.i, 281474976710655
  %i.o = or i64 %i.n, %notmask.i.i.i.i
  %i.p = icmp eq i64 %i.o, -1
  call void @llvm.assume(i1 %i.p)
  %i.q = icmp samesign ugt i64 %notmask.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.q)
  %i.r = and i64 %i.l, 65536
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !34
  %2 = xor i64 %notmask.i.i.i.i, -1
  %3 = icmp ne i64 %i.r, 0
  call void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i, i64 noundef 48, i64 noundef 8, i1 noundef zeroext %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit
  ret void
}

declare void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr, ptr) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSI_SJ_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSH_SI_EENSt13invoke_resultIT_JDpT0_EE4typeEOSM_DpOSN_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !34
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #29
  br label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSH_SI_EENSt13invoke_resultIT_JDpT0_EE4typeEOSM_DpOSN_.exit

_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSH_SI_EENSt13invoke_resultIT_JDpT0_EE4typeEOSM_DpOSN_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

declare void @_ZN4absl12lts_2026052618container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), ptr, ptr) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEEC1ERKSF_RKSaISC_IKSB_SD_EEEUlPvPKvE_vJSN_SP_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !61
  %i.c = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.e, ptr %i.a, align 8, !tbaa !103
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !33
  %i.h = load i64, ptr %i.a, align 8, !tbaa !103
  store i64 %i.h, ptr %i.b, align 8, !tbaa !34
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEEC1ERKSE_RKSaISB_IKSA_SC_EEEUlPvPKvE_JSM_SO_EENSt13invoke_resultIT_JDpT0_EE4typeEOSS_DpOST_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !34
  store i8 %i.j, ptr %i.i, align 1, !tbaa !34
  br label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEEC1ERKSE_RKSaISB_IKSA_SC_EEEUlPvPKvE_JSM_SO_EENSt13invoke_resultIT_JDpT0_EE4typeEOSS_DpOST_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEEC1ERKSE_RKSaISB_IKSA_SC_EEEUlPvPKvE_JSM_SO_EENSt13invoke_resultIT_JDpT0_EE4typeEOSS_DpOST_.exit

_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEEC1ERKSE_RKSaISB_IKSA_SC_EEEUlPvPKvE_JSM_SO_EENSt13invoke_resultIT_JDpT0_EE4typeEOSS_DpOST_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !24
  %i.m = load ptr, ptr %1, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE19transfer_n_slots_fnEPvSL_SL_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit
  %.014 = phi ptr [ %i.w, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit ], [ %1, %bb.a ] ; 6 uses
  %.0913 = phi ptr [ %i.v, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit ], [ %2, %bb.a ] ; 8 uses
  %.01012 = phi i64 [ %i.u, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit ], [ %3, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.a, ptr %.014, align 8, !tbaa !61
  %i.b = load ptr, ptr %.0913, align 8, !tbaa !33 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0913, i64 16 ; 7 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.0913, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEEC2EOSH_.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  store ptr %i.b, ptr %.014, align 8, !tbaa !33
  %i.i = load i64, ptr %i.c, align 8, !tbaa !34
  store i64 %i.i, ptr %i.a, align 8, !tbaa !34
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEEC2EOSH_.exit.i.i.i.i.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEEC2EOSH_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.0913, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !24
  store ptr %i.c, ptr %.0913, align 8, !tbaa !33
  store i64 0, ptr %i.j, align 8, !tbaa !24
  store i8 0, ptr %i.c, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %.014, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %.0913, i64 32 ; 2 uses
  tail call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEEC2EOSD_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n) #27
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEEC2EOSH_.exit.i.i.i.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #28
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEEC2EOSH_.exit.i.i.i.i.i.i.i
  %i.q = load ptr, ptr %.0913, align 8, !tbaa !33 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.s = load i64, ptr %i.c, align 8, !tbaa !34
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #29
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.u = add i64 %.01012, -1                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0913, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %.014, i64 56
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1426

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSQ_PFvSQ_hmmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.200, align 8            ; 4 uses
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !34 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04963 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04963
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04963 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #32, !srcloc !1400 ; 2 uses
  %.not61 = icmp eq i32 %i.r, 65535
  br i1 %.not61, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit, %bb.c
  %i.t = add nuw nsw i64 %.04963, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !1427

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit
  %.sroa.053.062 = phi i32 [ %i.ez, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.053.062, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04963, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.x ; 9 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255                      ; 4 uses
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !33  ; 11 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !24 ; 14 uses
  %i.af = icmp ult i64 %i.ae, 9
  br i1 %i.af, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %i.ae
  %.0.copyload.i.i.i.i = load i64, ptr %i.ag, align 1
  %i.ah = icmp samesign ugt i64 %i.ae, 3
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i34.i.i = load i32, ptr %i.ac, align 1
  %i.ai = zext i32 %.0.copyload.i.i34.i.i to i64
  %i.aj = shl nuw i64 %i.ai, 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %.0.copyload.i4.i.i.i = load i32, ptr %i.al, align 1
  %i.am = zext i32 %.0.copyload.i4.i.i.i to i64
  %i.an = or disjoint i64 %i.aj, %i.am
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i

bb.f:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load i8, ptr %i.ac, align 1, !tbaa !34
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 16
  %i.ar = getelementptr i8, ptr %i.ac, i64 %i.ae
  %i.as = getelementptr i8, ptr %i.ar, i64 -1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !34
  %i.au = zext i8 %i.at to i64
  %i.av = or disjoint i64 %i.aq, %i.au
  %i.aw = lshr i64 %i.ae, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !34
  %i.az = zext i8 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 8
  %i.bb = or disjoint i64 %i.av, %i.ba
  br label %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i

_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i.i = phi i64 [ %i.an, %bb.e ], [ %i.bb, %bb.g ], [ 87, %bb.f ]
  %i.bc = xor i64 %.0.copyload.i.i.i.i, %.0.i.i.i
  %i.bd = xor i64 %i.bc, %i.ab
  %i.be = zext i64 %i.bd to i128
  %i.bf = mul nuw nsw i128 %i.be, 8779197792823184629 ; 2 uses
  %i.bg = lshr i128 %i.bf, 64
  %i.bh = xor i128 %i.bg, %i.bf
  %i.bi = trunc i128 %i.bh to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.h:                                             ; preds = %.lr.ph
  %i.bj = icmp ult i64 %i.ae, 17
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %i.ae
  %.0.copyload.i.i38.i.i = load i64, ptr %i.bk, align 1
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ac, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %.0.copyload.i.i2.i.i.i = load i64, ptr %i.bm, align 1
  %i.bn = xor i64 %.0.copyload.i.i38.i.i, %.0.copyload.i.i.i.i.i
  %i.bo = xor i64 %i.bn, %i.ab
  %i.bp = xor i64 %.0.copyload.i.i2.i.i.i, 8779197792823184629
  %i.bq = zext i64 %i.bo to i128
  %i.br = zext i64 %i.bp to i128
  %i.bs = mul nuw i128 %i.bq, %i.br               ; 2 uses
  %i.bt = lshr i128 %i.bs, 64
  %i.bu = xor i128 %i.bt, %i.bs
  %i.bv = trunc i128 %i.bu to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.j:                                             ; preds = %bb.h
  %i.bw = icmp ult i64 %i.ae, 33
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052613hash_internal17kStaticRandomDataE, i64 %i.ae
  %.0.copyload.i.i42.i.i = load i64, ptr %i.bx, align 1
  %i.by = xor i64 %.0.copyload.i.i42.i.i, %i.ab   ; 2 uses
  %.0.copyload.i.i43.i.i = load i64, ptr %i.ac, align 1
  %i.bz = xor i64 %.0.copyload.i.i43.i.i, 1376283091369227076
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.0.copyload.i.i44.i.i = load i64, ptr %i.ca, align 1
  %i.cb = xor i64 %.0.copyload.i.i44.i.i, %i.by
  %i.cc = zext i64 %i.bz to i128
  %i.cd = zext i64 %i.cb to i128
  %i.ce = mul nuw i128 %i.cd, %i.cc               ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ac, i64 %i.ae  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 -16
  %.0.copyload.i.i48.i.i = load i64, ptr %i.cg, align 1
  %i.ch = xor i64 %.0.copyload.i.i48.i.i, 589684135938649225
  %i.ci = getelementptr i8, ptr %i.cf, i64 -8
  %.0.copyload.i.i49.i.i = load i64, ptr %i.ci, align 1
  %i.cj = xor i64 %.0.copyload.i.i49.i.i, %i.by
  %i.ck = zext i64 %i.ch to i128
  %i.cl = zext i64 %i.cj to i128
  %i.cm = mul nuw i128 %i.cl, %i.ck               ; 2 uses
  %i.cn = xor i128 %i.cm, %i.ce
  %i.co = lshr i128 %i.cn, 64
  %i.cp = xor i128 %i.ce, %i.co
  %i.cq = xor i128 %i.cp, %i.cm
  %i.cr = trunc i128 %i.cq to i64
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

bb.l:                                             ; preds = %bb.j
  %i.cs = call noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef %i.ab, ptr noundef %i.ac, i64 noundef %i.ae)
  br label %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit

_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit: ; preds = %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i, %bb.i, %bb.k, %bb.l
  %.0.i.i = phi i64 [ %i.bi, %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i.i ], [ %i.bv, %bb.i ], [ %i.cr, %bb.k ], [ %i.cs, %bb.l ] ; 6 uses
  %i.ct = lshr i64 %.0.i.i, 57
  %i.cu = trunc nuw nsw i64 %i.ct to i8           ; 2 uses
  %i.cv = sub i64 %i.x, %.0.i.i                   ; 2 uses
  %i.cw = and i64 %i.i, %i.cv
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.m, label %bb.n, !prof !1402

bb.m:                                             ; preds = %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit
  %i.cy = and i64 %i.cv, 15
  %i.cz = add i64 %i.cy, %.0.i.i
  %i.da = and i64 %i.cz, %i.c
  br label %bb.r

bb.n:                                             ; preds = %_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm.exit
  %i.db = and i64 %.0.i.i, %i.d
  %.not.i = icmp ult i64 %i.db, %i.x
  br i1 %.not.i, label %bb.o, label %bb.q, !prof !1402

bb.o:                                             ; preds = %bb.n
  %i.dc = and i64 %.0.i.i, %i.c                   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.dc
  %i.de = load <16 x i8>, ptr %i.dd, align 1, !tbaa !34
  %i.df = icmp slt <16 x i8> %i.de, zeroinitializer
  %i.dg = bitcast <16 x i1> %i.df to i16
  %i.dh = zext i16 %i.dg to i32
  %i.di = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.dh) #32, !srcloc !1400 ; 2 uses
  %.not26.i = icmp eq i32 %i.di, 0
  br i1 %.not26.i, label %bb.q, label %bb.p, !prof !985

bb.p:                                             ; preds = %bb.o
  %i.dj = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.di, i1 true)
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = add nuw i64 %i.dc, %i.dk
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  call void %4(ptr noundef %3, i8 noundef zeroext %i.cu, i64 noundef %i.x, i64 noundef %.0.i.i)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit

bb.r:                                             ; preds = %bb.p, %bb.m
  %.sink27.i = phi i64 [ %i.dl, %bb.p ], [ %i.da, %bb.m ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.cu, ptr %i.dm, align 1, !tbaa !1270
  %i.dn = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 3 uses
  store ptr %i.do, ptr %i.dn, align 8, !tbaa !61
  %i.dp = load ptr, ptr %i.y, align 8, !tbaa !33  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 7 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.ds = load i64, ptr %i.ad, align 8, !tbaa !24 ; 2 uses
  %i.dt = icmp ult i64 %i.ds, 16
  call void @llvm.assume(i1 %i.dt)
  %i.du = add nuw nsw i64 %i.ds, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.do, ptr noundef nonnull align 8 dereferenceable(1) %i.dq, i64 %i.du, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEEC2EOSH_.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  store ptr %i.dp, ptr %i.dn, align 8, !tbaa !33
  %i.dv = load i64, ptr %i.dq, align 8, !tbaa !34
  store i64 %i.dv, ptr %i.do, align 8, !tbaa !34
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEEC2EOSH_.exit.i.i.i.i.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEEC2EOSH_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.s
  %i.dw = load i64, ptr %i.ad, align 8, !tbaa !24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !24
  store ptr %i.dq, ptr %i.y, align 8, !tbaa !33
  store i64 0, ptr %i.ad, align 8, !tbaa !24
  store i8 0, ptr %i.dq, align 8, !tbaa !34
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 6 uses
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEEC2EOSD_(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.dz) #27
  %i.ea = load i64, ptr %i.dz, align 8            ; 3 uses
  %i.eb = and i64 %i.ea, 255
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEEC2EOSH_.exit.i.i.i.i.i.i.i
  %i.ed = and i64 %i.ea, 254
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %.not.i.i = icmp ult i64 %i.ea, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ef, align 8, !tbaa !34 ; 2 uses
  %i.eg = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.v
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !34
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #29
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit.i

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %i.dz, ptr %5, align 8, !tbaa !1424
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 noundef 48, ptr nonnull %5, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSI_SJ_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit.i: ; preds = %bb.v, %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.u
  %i.el = load i64, ptr %i.dz, align 8            ; 2 uses
  %i.em = and i64 %i.el, 255
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.em      ; 4 uses
  %i.en = add nsw i64 %notmask.i.i.i.i.i, 281474976710655
  %i.eo = or i64 %i.en, %notmask.i.i.i.i.i
  %i.ep = icmp eq i64 %i.eo, -1
  call void @llvm.assume(i1 %i.ep)
  %i.eq = icmp samesign ugt i64 %notmask.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.eq)
  %i.er = and i64 %i.el, 65536
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.0.0.copyload.i.i.i2.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !34
  %6 = xor i64 %notmask.i.i.i.i.i, -1
  %7 = icmp ne i64 %i.er, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i64 noundef %6, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i, i64 noundef 48, i64 noundef 8, i1 noundef zeroext %7)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i.i.i unwind label %bb.x

bb.x:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit.i, %bb.w
  %i.es = landingpad { ptr, i32 }
          catch ptr null
  %i.et = extractvalue { ptr, i32 } %i.es, 0
  call void @__clang_call_terminate(ptr %i.et) #28
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEEC2EOSH_.exit.i.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE7destroyEPNS1_13map_slot_typeIS9_SB_EE.exit.i
  %i.eu = load ptr, ptr %i.y, align 8, !tbaa !33  ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.dq
  br i1 %i.ev, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.ew = load i64, ptr %i.dq, align 8, !tbaa !34
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #29
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8transferEPNS1_13map_slot_typeIS9_SI_EESN_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.q
  %i.ey = add i32 %.sroa.053.062, -1
  %i.ez = and i32 %i.ey, %.sroa.053.062           ; 2 uses
  %.not = icmp eq i32 %i.ez, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEEC2EOSD_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.5 = alloca %"struct.absl::lts_20260526::container_internal::HeapPtrs", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  store i64 %.sroa.011.0.copyload, ptr %0, align 8
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store i64 0, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE19EmplaceDecomposableclIS9_JRKSt21piecewise_construct_tSt5tupleIJRSF_EESQ_IJRKSI_EEEEESB_INSK_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.214") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::tuple.185", align 8    ; 4 uses
  %7 = alloca %"class.std::tuple.211", align 8    ; 4 uses
  %8 = alloca %"struct.absl::lts_20260526::container_internal::HashKey", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1428, !nonnull !45, !align !1405 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  %i.b = load i64, ptr %i.a, align 8, !noalias !1430 ; 2 uses
  %i.c = and i64 %i.b, 254
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %.not.i.i.i = icmp ult i64 %i.b, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !34, !noalias !1436 ; 3 uses
  %i.f = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8, !tbaa !33, !noalias !1436
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24, !noalias !1436 ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !33, !noalias !1436
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24, !noalias !1436
  %i.l = icmp eq i64 %i.h, %i.k
  br i1 %i.l, label %bb.d, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit.thread5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.f, ptr %i.i, i64 %i.h), !noalias !1436
  %i.n = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.n, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit.thread5, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit.thread

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit.thread5: ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  store ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr %0, align 8, !alias.scope !1436
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !1436
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.o, align 8, !tbaa !1437, !alias.scope !1436
  br label %bb.f

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit.thread: ; preds = %bb.b, %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !1436
  store ptr %i.a, ptr %8, align 8, !tbaa !1416, !noalias !1436
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.p, align 8, !tbaa !46, !noalias !1436
  %i.q = call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %8, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE), !noalias !1436 ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = extractvalue { ptr, ptr } %i.q, 1
  store ptr %i.r, ptr %0, align 8, !alias.scope !1436
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1436
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.t, align 8, !tbaa !1437, !alias.scope !1436
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !1436
  br label %bb.e

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit: ; preds = %bb.a
  tail call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE28find_or_prepare_insert_largeIS9_EESB_INSK_8iteratorEbERKT_(ptr dead_on_unwind writable sret(%"struct.std::pair.214") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !1437, !range !44
  %i.u = trunc nuw i8 %.pre to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit.thread, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.v = load i64, ptr %4, align 8, !tbaa !46
  store i64 %i.v, ptr %6, align 8, !tbaa !46
  %i.w = load i64, ptr %5, align 8, !tbaa !1261
  store i64 %i.w, ptr %7, align 8, !tbaa !1261
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEEC2IJRSD_EJLm0EEJRKSG_EJLm0EEEERSt5tupleIJDpT_EERSM_IJDpT1_EESt12_Index_tupleIJXspT0_EEESV_IJXspT2_EEE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit.thread5, %bb.e, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE22find_or_prepare_insertIS9_EESB_INSK_8iteratorEbERKT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE28find_or_prepare_insert_largeIS9_EESB_INSK_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.214") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.b = load i64, ptr %1, align 8
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.c = lshr i64 %i.b, 8
  %i.d = and i64 %i.c, 255
  %i.e = load ptr, ptr %2, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24
  %i.h = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.d, ptr noundef %i.e, i64 noundef %i.g) ; 3 uses
  %i.i = load i64, ptr %1, align 8, !noalias !1440
  %i.j = and i64 %i.i, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.j
  %i.k = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.l = lshr i64 %i.h, 57
  %i.m = trunc nuw nsw i64 %i.l to i8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !34 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i3 = load ptr, ptr %i.n, align 8, !tbaa !34 ; 4 uses
  %i.o = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.pn = phi i64 [ %i.h, %bb.a ], [ %i.as, %bb.f ]
  %.sroa.14.0 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.f ] ; 2 uses
  %.sroa.639.0 = and i64 %.pn, %i.k               ; 5 uses
  %i.q = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %.sroa.639.0
  tail call void @llvm.prefetch.p0(ptr %i.q, i32 0, i32 3, i32 1)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.639.0
  %i.s = load <16 x i8>, ptr %i.r, align 1, !tbaa !34 ; 2 uses
  %i.t = icmp eq <16 x i8> %i.p, %i.s
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32
  %i.w = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.v) #32, !srcloc !1400 ; 2 uses
  %.not68 = icmp eq i32 %i.w, 0
  br i1 %.not68, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEvE5applyINS1_12EqualElementIS9_SE_EEJRSB_ISF_SI_EESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.x = load ptr, ptr %2, align 8, !tbaa !33
  %i.y = load i64, ptr %i.f, align 8, !tbaa !24   ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge.i
  %.sroa.024.069 = phi i32 [ %i.w, %.lr.ph ], [ %i.al, %.critedge.i ] ; 3 uses
  %i.aa = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.024.069, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = add nuw i64 %.sroa.639.0, %i.ab
  %i.ad = and i64 %i.ac, %i.k                     ; 3 uses
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !24
  %i.ai = icmp eq i64 %i.ah, %i.y
  br i1 %i.ai, label %bb.d, label %.critedge.i, !prof !1421

bb.d:                                             ; preds = %bb.c
  br i1 %i.z, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE28find_or_prepare_insert_largeIS9_EESB_INSK_8iteratorEbERKT_ENKUlvE_clEv.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.x, i64 %i.y)
  %i.aj = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE28find_or_prepare_insert_largeIS9_EESB_INSK_8iteratorEbERKT_ENKUlvE_clEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ak = add i32 %.sroa.024.069, -1
  %i.al = and i32 %i.ak, %.sroa.024.069           ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEvE5applyINS1_12EqualElementIS9_SE_EEJRSB_ISF_SI_EESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit, label %bb.c

_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEvE5applyINS1_12EqualElementIS9_SE_EEJRSB_ISF_SI_EESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit: ; preds = %.critedge.i, %bb.b
  %i.am = icmp eq <16 x i8> %i.s, splat (i8 -128)
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = zext i16 %i.an to i32
  %i.ap = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ao) #32, !srcloc !1400 ; 2 uses
  %.not62 = icmp eq i32 %i.ap, 0
  br i1 %.not62, label %bb.f, label %bb.e, !prof !985

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEvE5applyINS1_12EqualElementIS9_SE_EEJRSB_ISF_SI_EESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit
  %i.aq = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i32 %i.ap, i64 %.sroa.639.0, i64 %.sroa.14.0)
  %.sroa.0.0.copyload.i.i.i.i7.pre = load ptr, ptr %i.a, align 8, !tbaa !34
  %.sroa.0.0.copyload.i.i.i2.i.pre = load ptr, ptr %i.n, align 8, !tbaa !34
  br label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE28find_or_prepare_insert_largeIS9_EESB_INSK_8iteratorEbERKT_ENKUlvE_clEv.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEvE5applyINS1_12EqualElementIS9_SE_EEJRSB_ISF_SI_EESJ_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit
  %i.ar = add i64 %.sroa.14.0, 16                 ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.639.0
  br label %bb.b

_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE28find_or_prepare_insert_largeIS9_EESB_INSK_8iteratorEbERKT_ENKUlvE_clEv.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i.i2.i = phi ptr [ %.sroa.0.0.copyload.i.i.i2.i.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i3, %bb.d ], [ %.sroa.0.0.copyload.i.i.i3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.copyload.i.i.i.i7 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i7.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ %.sroa.0.0.copyload.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.349.ph = phi i64 [ %i.aq, %bb.e ], [ %i.ad, %bb.d ], [ %i.ad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.3.ph = phi i8 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i7, i64 %.349.ph
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i, i64 %.349.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i7) ]
  store ptr %i.at, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph, ptr %i.av, align 8, !tbaa !1437
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4absl12lts_2026052613flat_hash_mapIS5_S_IddENS7_18container_internal10StringHashENSA_8StringEqESaIS_IKS5_S9_EEEEEC2IJRSD_EJLm0EEJRKSG_EJLm0EEEERSt5tupleIJDpT_EERSM_IJDpT1_EESt12_Index_tupleIJXspT0_EEESV_IJXspT2_EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.203, align 8            ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1443, !nonnull !45, !align !1405 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !61
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.f, ptr %i.a, align 8, !tbaa !103
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !33
  %i.i = load i64, ptr %i.a, align 8, !tbaa !103
  store i64 %i.i, ptr %i.c, align 8, !tbaa !34
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !34
  store i8 %i.k, ptr %i.j, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !24
  %i.n = load ptr, ptr %0, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !1445, !nonnull !45, !align !1405 ; 2 uses
  store i64 0, ptr %i.p, align 8
  %i.r = load i64, ptr %i.q, align 8
  %.not.i.i.i.i.i = icmp ult i64 %i.r, 131072
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052613flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddENS0_18container_internal10StringHashENSA_8StringEqESaIS8_IKS7_S9_EEEC2ERKSG_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.p, ptr %3, align 8, !tbaa !1364
  invoke void @_ZN4absl12lts_2026052618container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE18GetPolicyFunctionsEvE5value, ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEEC1ERKSF_RKSaISC_IKSB_SD_EEEUlPvPKvE_vJSN_SP_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN4absl12lts_2026052613flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddENS0_18container_internal10StringHashENSA_8StringEqESaIS8_IKS7_S9_EEEC2ERKSG_.exit

bb.f:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #28
  unreachable

_ZN4absl12lts_2026052613flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddENS0_18container_internal10StringHashENSA_8StringEqESaIS8_IKS7_S9_EEEC2ERKSG_.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void

.body:                                            ; preds = %bb.f
  %i.v = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.x = load i64, ptr %i.c, align 8, !tbaa !34
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.222, align 8            ; 4 uses
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = and i64 %i.a, 255
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, 254
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ult i64 %i.a, 131072
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE7destroyEPNS1_13map_slot_typeIS9_SI_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !34 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 32
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #28
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.j = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE7destroyEPNS1_13map_slot_typeIS9_SI_EE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !34
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE7destroyEPNS1_13map_slot_typeIS9_SI_EE.exit

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr %0, ptr %1, align 8, !tbaa !1447
  call void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 56, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapISB_St4pairIddENS3_10StringHashENS3_8StringEqESaISD_IKSB_SE_EEEEEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSP_SQ_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE7destroyEPNS1_13map_slot_typeIS9_SI_EE.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE7destroyEPNS1_13map_slot_typeIS9_SI_EE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.f
  %i.o = load i64, ptr %0, align 8                ; 2 uses
  %i.p = and i64 %i.o, 255
  %notmask.i.i.i.i = shl nsw i64 -1, %i.p         ; 4 uses
  %i.q = add nsw i64 %notmask.i.i.i.i, 281474976710655
  %i.r = or i64 %i.q, %notmask.i.i.i.i
  %i.s = icmp eq i64 %i.r, -1
  call void @llvm.assume(i1 %i.s)
  %i.t = icmp samesign ugt i64 %notmask.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.t)
  %i.u = and i64 %i.o, 65536
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !34
  %2 = xor i64 %notmask.i.i.i.i, -1
  %3 = icmp ne i64 %i.u, 0
  call void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i, i64 noundef 56, i64 noundef 8, i1 noundef zeroext %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE7destroyEPNS1_13map_slot_typeIS9_SI_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapISB_St4pairIddENS3_10StringHashENS3_8StringEqESaISD_IKSB_SE_EEEEEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSP_SQ_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE15destructor_implEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #28
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !33     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13flat_hash_mapISA_St4pairIddENS2_10StringHashENS2_8StringEqESaISC_IKSA_SD_EEEEEEJEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSO_SP_EENSt13invoke_resultIT_JDpT0_EE4typeEOST_DpOSU_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !34
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #29
  br label %_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13flat_hash_mapISA_St4pairIddENS2_10StringHashENS2_8StringEqESaISC_IKSA_SD_EEEEEEJEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSO_SP_EENSt13invoke_resultIT_JDpT0_EE4typeEOST_DpOSU_.exit

_ZSt6invokeIRZN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13flat_hash_mapISA_St4pairIddENS2_10StringHashENS2_8StringEqESaISC_IKSA_SD_EEEEEEJEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSO_SP_EENSt13invoke_resultIT_JDpT0_EE4typeEOST_DpOSU_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

declare void @_ZN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1EPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052612log_internal16LogRangeToStreamINS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapISB_St4pairIddENS3_10StringHashENS3_8StringEqESaISD_IKSB_SE_EEEEEEJEE14const_iteratorENS0_24internal_generic_printer18ContainerLogPolicyEEEvRSoT_SR_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.135, i64 noundef 1) ; 0 uses
  %.not24 = icmp eq ptr %1, %3
  br i1 %.not24, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE14const_iteratorppEv.exit
  %.027 = phi i64 [ %i.e, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE14const_iteratorppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.7.026 = phi ptr [ %.sroa.7.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE14const_iteratorppEv.exit ], [ %2, %bb.a ] ; 2 uses
  %.sroa.018.025 = phi ptr [ %.sroa.018.2, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE14const_iteratorppEv.exit ], [ %1, %bb.a ]
  switch i64 %.027, label %bb.c [
    i64 15, label %bb.f
    i64 0, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.129, i64 noundef 0) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052624internal_generic_printer9PrintPairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS8_St4pairIddENS0_18container_internal10StringHashENSD_8StringEqESaISB_IS9_SC_EEEEEERSoSJ_RKSB_IT_T0_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.026) ; 0 uses
  %i.e = add nuw nsw i64 %.027, 1
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.018.025, i64 1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.7.026, i64 56 ; 2 uses
  %i.h = load i8, ptr %i.f, align 1, !tbaa !1270  ; 2 uses
  %i.i = icmp slt i8 %i.h, -1
  br i1 %i.i, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.j = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %i.g, %bb.d ]
  %i.k = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.f, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.n = load i8, ptr %i.l, align 1, !tbaa !1270  ; 2 uses
  %i.o = icmp slt i8 %i.n, -1
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !1272

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.018.1 = phi ptr [ %i.f, %bb.d ], [ %i.l, %.lr.ph.i.i.i ]
  %.sroa.7.1 = phi ptr [ %i.g, %bb.d ], [ %i.m, %.lr.ph.i.i.i ]
  %i.p = phi i8 [ %i.h, %bb.d ], [ %i.n, %.lr.ph.i.i.i ]
  %i.q = icmp eq i8 %i.p, -1
  br i1 %i.q, label %bb.e, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE14const_iteratorppEv.exit, !prof !985

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE14const_iteratorppEv.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE14const_iteratorppEv.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i, %bb.e
  %.sroa.018.2 = phi ptr [ null, %bb.e ], [ %.sroa.018.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.018.2, %3
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1449

bb.f:                                             ; preds = %.lr.ph
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.137, i64 noundef 3) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS9_St4pairIddENS1_10StringHashENS1_8StringEqESaISB_IKS9_SC_EEEEEEJEE14const_iteratorppEv.exit, %bb.a, %bb.f
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.138, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052624internal_generic_printer9PrintPairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13flat_hash_mapIS8_St4pairIddENS0_18container_internal10StringHashENSD_8StringEqESaISB_IS9_SC_EEEEEERSoSJ_RKSB_IT_T0_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #2 comdat {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::log_internal::detail::RangeLogger.229", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.285, i64 noundef 1) ; 0 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052624internal_generic_printer18PrintEscapedStringERSoSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %i.d, ptr %i.b) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  %i.h = load i64, ptr %i.g, align 8, !noalias !1450 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.h, 131072
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052624internal_generic_printer16GenericPrintImplINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddENS0_18container_internal10StringHashENSC_8StringEqESaISA_IKS9_SB_EEEEEERSoSJ_RKT_.exit, label %bb.b, !prof !985

bb.b:                                             ; preds = %bb.a
  %i.i = and i64 %i.h, 254
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !34, !noalias !1450
  br label %_ZN4absl12lts_2026052624internal_generic_printer16GenericPrintImplINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddENS0_18container_internal10StringHashENSC_8StringEqESaISA_IKS9_SB_EEEEEERSoSJ_RKT_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !34, !noalias !1450, !nonnull !45, !noundef !45 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !34, !noalias !1450 ; 2 uses
  %i.n = load i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, align 1, !tbaa !1270, !noalias !1450
  %i.o = icmp slt i8 %i.n, -1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2026052624internal_generic_printer16GenericPrintImplINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddENS0_18container_internal10StringHashENSC_8StringEqESaISA_IKS9_SB_EEEEEERSoSJ_RKT_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.p = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.d ]
  %i.q = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.t = load i8, ptr %i.r, align 1, !tbaa !1270, !noalias !1450
  %i.u = icmp slt i8 %i.t, -1
  br i1 %i.u, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2026052624internal_generic_printer16GenericPrintImplINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddENS0_18container_internal10StringHashENSC_8StringEqESaISA_IKS9_SB_EEEEEERSoSJ_RKT_.exit, !llvm.loop !1453

_ZN4absl12lts_2026052624internal_generic_printer16GenericPrintImplINS0_13flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddENS0_18container_internal10StringHashENSC_8StringEqESaISA_IKS9_SB_EEEEEERSoSJ_RKT_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.a, %bb.c, %bb.d
  %.sroa.6.0.i.i.i.i = phi ptr [ undef, %bb.a ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.c ], [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.d ], [ %i.s, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.a ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.c ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.d ], [ %i.r, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i, ptr %2, align 8, !alias.scope !1450
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.6.0.i.i.i.i, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !alias.scope !1450
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.v, align 8, !alias.scope !1450
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @_ZN4absl12lts_2026052612log_internal16LogRangeToStreamINS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE14const_iteratorENS0_24internal_generic_printer18ContainerLogPolicyEEEvRSoT_SK_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %.sroa.0.0.i.i.i.i, ptr %.sroa.6.0.i.i.i.i, ptr null, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.286, i64 noundef 1) ; 0 uses
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052612log_internal16LogRangeToStreamINS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE14const_iteratorENS0_24internal_generic_printer18ContainerLogPolicyEEEvRSoT_SK_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.135, i64 noundef 1) ; 0 uses
  %.not24 = icmp eq ptr %1, %3
  br i1 %.not24, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE14const_iteratorppEv.exit
  %.027 = phi i64 [ %i.e, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE14const_iteratorppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.7.026 = phi ptr [ %.sroa.7.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE14const_iteratorppEv.exit ], [ %2, %bb.a ] ; 2 uses
  %.sroa.018.025 = phi ptr [ %.sroa.018.2, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE14const_iteratorppEv.exit ], [ %1, %bb.a ]
  switch i64 %.027, label %bb.c [
    i64 15, label %bb.f
    i64 0, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.129, i64 noundef 0) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052624internal_generic_printer9PrintPairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEERSoSC_RKSA_IT_T0_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.026) ; 0 uses
  %i.e = add nuw nsw i64 %.027, 1
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.018.025, i64 1 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.7.026, i64 48 ; 2 uses
  %i.h = load i8, ptr %i.f, align 1, !tbaa !1270  ; 2 uses
  %i.i = icmp slt i8 %i.h, -1
  br i1 %i.i, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.j = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %i.g, %bb.d ]
  %i.k = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.f, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.n = load i8, ptr %i.l, align 1, !tbaa !1270  ; 2 uses
  %i.o = icmp slt i8 %i.n, -1
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !1453

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.018.1 = phi ptr [ %i.f, %bb.d ], [ %i.l, %.lr.ph.i.i.i ]
  %.sroa.7.1 = phi ptr [ %i.g, %bb.d ], [ %i.m, %.lr.ph.i.i.i ]
  %i.p = phi i8 [ %i.h, %bb.d ], [ %i.n, %.lr.ph.i.i.i ]
  %i.q = icmp eq i8 %i.p, -1
  br i1 %i.q, label %bb.e, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE14const_iteratorppEv.exit, !prof !985

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE14const_iteratorppEv.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE14const_iteratorppEv.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i, %bb.e
  %.sroa.018.2 = phi ptr [ null, %bb.e ], [ %.sroa.018.1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.018.2, %3
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1454

bb.f:                                             ; preds = %.lr.ph
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.137, i64 noundef 3) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEEJEE14const_iteratorppEv.exit, %bb.a, %bb.f
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.138, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052624internal_generic_printer9PrintPairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIddEEERSoSC_RKSA_IT_T0_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.285, i64 noundef 1) ; 0 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052624internal_generic_printer18PrintEscapedStringERSoSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %i.d, ptr %i.b) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.285, i64 noundef 1) ; 0 uses
  %i.i = load double, ptr %i.g, align 8, !tbaa !692
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052624internal_generic_printer14PrintPreciseFPERSod(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.i) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.136, i64 noundef 2) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !692
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052624internal_generic_printer14PrintPreciseFPERSod(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.m) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.286, i64 noundef 1) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.286, i64 noundef 1) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IddEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1311
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IddEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IddEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE17_M_insert_unique_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IddEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.e
  br i1 %or.cond.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IddEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = load ptr, ptr %2, align 8, !tbaa !33
  %i.n = tail call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.o = sub i64 %i.g, %i.i
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i.i, 0
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IddEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IddEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit: ; preds = %bb.b, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %i.q = phi i1 [ %i.p, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ true, %bb.b ]
  %i.r = load ptr, ptr %3, align 8, !tbaa !1455, !nonnull !45, !align !1405
  %i.s = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #30 ; 3 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IddEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE17_M_construct_nodeIJRKS9_EEEvPSt13_Rb_tree_nodeIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(48) %2)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef nonnull %i.s, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1314
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !1314
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IddEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit
  %.sroa.08.0 = phi ptr [ %i.s, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S6_IddEESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE10_M_insert_IRKS9_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS9_EPSt18_Rb_tree_node_baseSN_OT_RT0_.exit ], [ %i.b, %bb.a ]
  ret ptr %.sroa.08.0
end_hunk_2
