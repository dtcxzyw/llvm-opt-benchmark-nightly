Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/float_conversion?download=true
inline.NumInlined: 822
inline.NumDeleted: 310
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 19
begin_hunk_0_@"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatENegativeExpSlowENS0_7uint128EibRKNS4_11FormatStateEmE3$_0vJNS4_24FractionalDigitGeneratorEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !61
  %i.rd = load ptr, ptr %i.qn, align 8, !tbaa !62
  call void %i.rc(ptr noundef %i.rd, i64 1024, ptr nonnull %i.ra), !inline_history !171
  store ptr %i.ra, ptr %i.qx, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit232.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit232.i.i.i.i: ; preds = %.lr.ph.i226.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit222.i.i.i.i
  %.lcssa.i225.i.i.i.i = phi ptr [ %i.qy, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit222.i.i.i.i ], [ %i.ra, %.lr.ph.i226.i.i.i.i ]
  store i8 %i.qs, ptr %.lcssa.i225.i.i.i.i, align 1
  %i.re = load ptr, ptr %i.qx, align 8, !tbaa !60
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 1
  store ptr %i.rf, ptr %i.qx, align 8, !tbaa !60
  %i.rg = load ptr, ptr %0, align 8, !tbaa !175, !nonnull !74, !align !75
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 24
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !39 ; 7 uses
  %i.rj = icmp eq ptr %i.cp, %i.a
  br i1 %i.rj, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit232.i.i.i.i
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 16 ; 2 uses
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !59
  %i.rm = add i64 %i.rl, %i.cx
  store i64 %i.rm, ptr %i.rk, align 8, !tbaa !59
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ri, i64 1056
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ri, i64 24 ; 4 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !60 ; 2 uses
  %i.rq = ptrtoint ptr %i.rn to i64
  %i.rr = ptrtoint ptr %i.rp to i64               ; 2 uses
  %i.rs = sub i64 %i.rq, %i.rr
  %.not.i233.i.i.i.i = icmp ult i64 %i.cx, %i.rs
  br i1 %.not.i233.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ri, i64 32 ; 3 uses
  %i.ru = ptrtoint ptr %i.rt to i64
  %i.rv = sub i64 %i.rr, %i.ru
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ri, i64 8 ; 2 uses
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !61
  %i.ry = load ptr, ptr %i.ri, align 8, !tbaa !62
  call void %i.rx(ptr noundef %i.ry, i64 %i.rv, ptr nonnull %i.rt), !inline_history !172
  store ptr %i.rt, ptr %i.ro, align 8, !tbaa !60
  %i.rz = load ptr, ptr %i.rw, align 8, !tbaa !61
  %i.sa = load ptr, ptr %i.ri, align 8, !tbaa !62
  call void %i.rz(ptr noundef %i.sa, i64 %i.cx, ptr nonnull %i.a), !inline_history !173
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rp, ptr nonnull align 16 %i.a, i64 %i.cx, i1 false)
  %i.sb = load ptr, ptr %i.ro, align 8, !tbaa !60
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.cx
  store ptr %i.sc, ptr %i.ro, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i: ; preds = %bb.aj, %bb.ai, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit232.i.i.i.i
  %i.sd = load ptr, ptr %0, align 8, !tbaa !175, !nonnull !74, !align !75
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !39 ; 7 uses
  %i.sg = icmp eq i64 %.sroa.9.0287.i.i.i.i, 0
  br i1 %i.sg, label %"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatENegativeExpSlowENS1_7uint128EibRKNS3_11FormatStateEmE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit", label %bb.ak

bb.ak:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 16 ; 2 uses
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !59
  %i.sj = add i64 %i.si, %.sroa.9.0287.i.i.i.i
  store i64 %i.sj, ptr %i.sh, align 8, !tbaa !59
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sf, i64 1056 ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sf, i64 24 ; 8 uses
  %i.sm = ptrtoint ptr %i.sk to i64               ; 2 uses
  %i.sn = load ptr, ptr %i.sl, align 8, !tbaa !60 ; 4 uses
  %i.so = ptrtoint ptr %i.sn to i64
  %i.sp = sub i64 %i.sm, %i.so                    ; 4 uses
  %i.sq = icmp ugt i64 %.sroa.9.0287.i.i.i.i, %i.sp
  br i1 %i.sq, label %.lr.ph.i237.i.i.i.i, label %._crit_edge.i234.i.i.i.i

.lr.ph.i237.i.i.i.i:                              ; preds = %bb.ak
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sf, i64 32 ; 8 uses
  %i.ss = ptrtoint ptr %i.sr to i64
  %i.st = getelementptr inbounds nuw i8, ptr %i.sf, i64 8 ; 2 uses
  %i.su = sub nuw nsw i64 %.sroa.9.0287.i.i.i.i, %i.sp ; 3 uses
  %.not.peel.i238.i.i.i.i = icmp eq ptr %i.sk, %i.sn
  br i1 %.not.peel.i238.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i237.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.sn, i8 32, i64 %i.sp, i1 false)
  %i.sv = load ptr, ptr %i.sl, align 8, !tbaa !60
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sp ; 2 uses
  store ptr %i.sw, ptr %i.sl, align 8, !tbaa !60
  %.pre.i239.i.i.i.i = ptrtoint ptr %i.sw to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i237.i.i.i.i
  %.pre-phi.i240.i.i.i.i = phi i64 [ %.pre.i239.i.i.i.i, %bb.al ], [ %i.sm, %.lr.ph.i237.i.i.i.i ]
  %i.sx = sub i64 %.pre-phi.i240.i.i.i.i, %i.ss
  %i.sy = load ptr, ptr %i.st, align 8, !tbaa !61
  %i.sz = load ptr, ptr %i.sf, align 8, !tbaa !62
  call void %i.sy(ptr noundef %i.sz, i64 %i.sx, ptr nonnull %i.sr), !inline_history !171
  store ptr %i.sr, ptr %i.sl, align 8, !tbaa !60
  %i.ta = icmp ugt i64 %i.su, 1024
  br i1 %i.ta, label %.peel.next.i241.i.i.i.i, label %._crit_edge.i234.i.i.i.i

.peel.next.i241.i.i.i.i:                          ; preds = %bb.am, %.peel.next.i241.i.i.i.i
  %.010.i242.i.i.i.i = phi i64 [ %i.tb, %.peel.next.i241.i.i.i.i ], [ %i.su, %bb.am ]
  %i.tb = add i64 %.010.i242.i.i.i.i, -1024       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.sr, i8 32, i64 1024, i1 false)
  store ptr %i.sk, ptr %i.sl, align 8, !tbaa !60
  %i.tc = load ptr, ptr %i.st, align 8, !tbaa !61
  %i.td = load ptr, ptr %i.sf, align 8, !tbaa !62
  call void %i.tc(ptr noundef %i.td, i64 1024, ptr nonnull %i.sr), !inline_history !171
  store ptr %i.sr, ptr %i.sl, align 8, !tbaa !60
  %i.te = icmp ugt i64 %i.tb, 1024
  br i1 %i.te, label %.peel.next.i241.i.i.i.i, label %._crit_edge.i234.i.i.i.i, !llvm.loop !7

._crit_edge.i234.i.i.i.i:                         ; preds = %.peel.next.i241.i.i.i.i, %bb.am, %bb.ak
  %.0.lcssa.i235.i.i.i.i = phi i64 [ %.sroa.9.0287.i.i.i.i, %bb.ak ], [ %i.su, %bb.am ], [ %i.tb, %.peel.next.i241.i.i.i.i ] ; 2 uses
  %.lcssa.i236.i.i.i.i = phi ptr [ %i.sn, %bb.ak ], [ %i.sr, %bb.am ], [ %i.sr, %.peel.next.i241.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i236.i.i.i.i, i8 32, i64 %.0.lcssa.i235.i.i.i.i, i1 false)
  %i.tf = load ptr, ptr %i.sl, align 8, !tbaa !60
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 %.0.lcssa.i235.i.i.i.i
  store ptr %i.tg, ptr %i.sl, align 8, !tbaa !60
  br label %"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatENegativeExpSlowENS1_7uint128EibRKNS3_11FormatStateEmE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit"

"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatENegativeExpSlowENS1_7uint128EibRKNS3_11FormatStateEmE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit": ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i, %._crit_edge.i234.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEmPc(i64 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferENS0_7uint128EPc(i64, i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatGPositiveExpSlowINS0_7uint128EEEvT_ibRKNS4_11FormatStateEEUlNS4_15BinaryToDecimalEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %class.anon, align 8                ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %3 = alloca %class.anon.7, align 8              ; 6 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::BinaryToDecimal", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !72
  %i.f = load i64, ptr %5, align 8, !tbaa !73
  %i.g = sub i64 %i.e, %i.f
  %i.h = mul i64 %i.g, 9
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !71   ; 3 uses
  %i.k = add i64 %i.h, %i.j                       ; 2 uses
  %i.l = add i64 %i.k, -1                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = sub i64 9, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i64 %i.j, ptr %4, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.o, ptr %i.p, align 8
  %i.q = load ptr, ptr %0, align 8, !tbaa !180, !nonnull !74, !align !75 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !37   ; 2 uses
  %i.t = add i64 %i.s, 1
  %i.u = call fastcc { i64, i64 } @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0        ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.u, 1
  %i.x = and i64 %i.v, 4294967296
  %.not94.i.i.i.i = icmp eq i64 %i.x, 0           ; 2 uses
  %.sroa.064.0.extract.trunc.i.i.i.i = trunc i64 %i.v to i32
  %.0.i.i.i.i.i = select i1 %.not94.i.i.i.i, i32 9, i32 %.sroa.064.0.extract.trunc.i.i.i.i ; 4 uses
  %i.y = sext i1 %.not94.i.i.i.i to i64
  %spec.select90.i.i.i.i = add i64 %i.w, %i.y     ; 3 uses
  %i.z = add i64 %spec.select90.i.i.i.i, 1
  %.not.i.i.i.i = icmp ult i64 %i.z, %i.t         ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = call fastcc { i64, i64 } @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.ab = extractvalue { i64, i64 } %i.aa, 0      ; 2 uses
  %.sroa.061.0.extract.trunc.i.i.i.i = trunc i64 %i.ab to i32
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !37  ; 2 uses
  %i.ad = icmp ne i64 %spec.select90.i.i.i.i, %i.ac
  %i.ae = and i64 %i.ab, 4294967296
  %.not95.i.i.i.i = icmp ne i64 %i.ae, 0
  %i.af = icmp sgt i32 %.sroa.061.0.extract.trunc.i.i.i.i, 4
  %i.ag = and i1 %.not95.i.i.i.i, %i.af
  %or.cond92.i.i.i.i = select i1 %i.ad, i1 true, i1 %i.ag
  br i1 %or.cond92.i.i.i.i, label %.critedge35.i.i.i.i, label %bb.c

.critedge35.i.i.i.i:                              ; preds = %bb.b
  %.not31.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i, 9  ; 2 uses
  %i.ah = add nsw i32 %.0.i.i.i.i.i, 1
  %.021.i.i.i.i = select i1 %.not31.i.i.i.i, i32 1, i32 %i.ah
  %.0.i.i.i.i = select i1 %.not31.i.i.i.i, i64 %i.k, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %.critedge35.i.i.i.i, %bb.b, %bb.a
  %.126.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.ac, %.critedge35.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %.223.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.a ], [ %.021.i.i.i.i, %.critedge35.i.i.i.i ], [ %.0.i.i.i.i.i, %bb.b ]
  %.2.i.i.i.i = phi i64 [ %i.l, %bb.a ], [ %.0.i.i.i.i, %.critedge35.i.i.i.i ], [ %i.l, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !55, !nonnull !74, !align !82
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  %i.am = and i8 %i.al, 8
  %i.an = icmp ne i8 %i.am, 0                     ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.an, i64 0, i64 %.126.i.i.i.i
  %i.ao = icmp ne i64 %.126.i.i.i.i, 0
  %or.cond.i.i.i.i = or i1 %i.ao, %i.an
  br i1 %or.cond.i.i.i.i, label %.critedge.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = icmp eq i32 %.223.i.i.i.i, 0
  %i.aq = zext i1 %i.ap to i64                    ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.critedge.thread.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.d
  %i.ar = sub i64 %i.s, %spec.select90.i.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.3100.i.i.i.i = phi i64 [ %.7.i.i.i.i, %.critedge.i.i.i.i ], [ %i.aq, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.08599.i.i.i.i = phi i64 [ %.186.i.i.i.i, %.critedge.i.i.i.i ], [ %i.ar, %.lr.ph.preheader.i.i.i.i ] ; 7 uses
  %i.as = call fastcc { i64, i64 } @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.at = extractvalue { i64, i64 } %i.as, 0      ; 3 uses
  %i.au = extractvalue { i64, i64 } %i.as, 1      ; 4 uses
  %i.av = and i64 %i.at, 4294967296
  %.not96.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not96.i.i.i.i, label %.critedge.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aw = add i64 %i.au, 1                        ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %.08599.i.i.i.i
  br i1 %i.ax, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ay = and i64 %i.at, 4294967295
  %i.az = icmp eq i64 %i.ay, 0
  %i.ba = icmp eq i64 %i.au, 0
  %or.cond4.i.i.i.i = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond4.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bb = add i64 %.3100.i.i.i.i, 1
  %i.bc = add i64 %.08599.i.i.i.i, -1
  br label %.critedge.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.bd = add i64 %.08599.i.i.i.i, -1
  %i.be = call i64 @llvm.usub.sat.i64(i64 %i.bd, i64 %i.au)
  br label %.critedge.i.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bf = call fastcc { i64, i64 } @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.bg = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %i.bg to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i = lshr i64 %i.bg, 32 ; 2 uses
  %i.bh = icmp eq i64 %.08599.i.i.i.i, 1
  br i1 %i.bh, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bi = and i64 %i.at, 4294967295
  %i.bj = icmp eq i64 %i.bi, 0
  %.not33.i.i.i.i = icmp eq i64 %i.au, 0
  %or.cond93.i.i.i.i = select i1 %i.bj, i1 %.not33.i.i.i.i, i1 false
  br i1 %or.cond93.i.i.i.i, label %bb.k, label %.critedge.thread.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bk = trunc i64 %.sroa.5.0.extract.shift.i.i.i.i to i1
  %i.bl = icmp sgt i32 %.sroa.0.0.extract.trunc.i.i.i.i, 4
  %i.bm = and i1 %i.bl, %i.bk
  %i.bn = add i64 %.3100.i.i.i.i, 1
  %spec.select36.i.i.i.i = select i1 %i.bm, i64 0, i64 %i.bn
  br label %.critedge.thread.i.i.i.i

bb.l:                                             ; preds = %bb.i
  %i.bo = icmp eq i64 %.08599.i.i.i.i, %i.aw
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bp = trunc i64 %.sroa.5.0.extract.shift.i.i.i.i to i1
  %i.bq = icmp sgt i32 %.sroa.0.0.extract.trunc.i.i.i.i, 4
  %i.br = and i1 %i.bq, %i.bp
  %i.bs = add i64 %.08599.i.i.i.i, -1
  %i.bt = select i1 %i.br, i64 %i.bs, i64 0
  br label %.critedge.thread.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bu = add i64 %.08599.i.i.i.i, -1
  br label %.critedge.thread.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.h, %bb.g
  %.186.i.i.i.i = phi i64 [ %i.be, %bb.h ], [ %i.bc, %bb.g ] ; 2 uses
  %.7.i.i.i.i = phi i64 [ 0, %bb.h ], [ %i.bb, %bb.g ] ; 2 uses
  %.not32.i.i.i.i = icmp eq i64 %.186.i.i.i.i, 0
  br i1 %.not32.i.i.i.i, label %.critedge.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.critedge.thread.i.i.i.i:                         ; preds = %.critedge.i.i.i.i, %.lr.ph.i.i.i.i, %bb.n, %bb.m, %bb.k, %bb.j, %bb.d, %bb.c
  %.8.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.c ], [ %i.aq, %bb.d ], [ %i.bt, %bb.m ], [ %i.bu, %bb.n ], [ 0, %bb.j ], [ %spec.select36.i.i.i.i, %bb.k ], [ %.7.i.i.i.i, %.critedge.i.i.i.i ], [ %.3100.i.i.i.i, %.lr.ph.i.i.i.i ]
  %sext.i.i.i.i = shl i64 %.2.i.i.i.i, 32
  %i.bv = ashr exact i64 %sext.i.i.i.i, 32
  %i.bw = load i64, ptr %i.r, align 8, !tbaa !37
  %i.bx = icmp ugt i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !181, !nonnull !74, !align !83 ; 2 uses
  %.sroa.05.0.copyload.i.i.i.i = load i64, ptr %i.bz, align 16, !tbaa !31 ; 2 uses
  %.sroa.26.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.26.0.copyload.i.i.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !182, !nonnull !74, !align !82
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !50 ; 2 uses
  br i1 %i.bx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge.thread.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !183, !nonnull !74
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !42, !range !77, !noundef !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.cf, ptr %i.b, align 1, !tbaa !42
  store i64 %.8.i.i.i.i, ptr %i.c, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %i.q, ptr %3, align 8, !tbaa !44
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.cg, align 8, !tbaa !49
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.b, ptr %i.ch, align 8, !tbaa !46
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE(i64 %.sroa.05.0.copyload.i.i.i.i, i64 %.sroa.26.0.copyload.i.i.i.i, i32 noundef %i.cc, ptr nonnull %3, ptr nonnull @"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS4_11FormatStateEmE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatGPositiveExpSlowINS1_7uint128EEEvT_ibRKNS3_11FormatStateEEUlNS3_15BinaryToDecimalEE_JSA_EENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSE_.exit

bb.p:                                             ; preds = %.critedge.thread.i.i.i.i
  %i.ci = load ptr, ptr %i.ai, align 8, !tbaa !55, !nonnull !74, !align !82
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cl = lshr i8 %i.ck, 3
  %.lobit.i.i.i.i = and i8 %i.cl, 1
  %i.cm = xor i8 %.lobit.i.i.i.i, 1
  store i8 %i.cm, ptr %i.a, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %i.q, ptr %2, align 8, !tbaa !44
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.cn, align 8, !tbaa !46
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE(i64 %.sroa.05.0.copyload.i.i.i.i, i64 %.sroa.26.0.copyload.i.i.i.i, i32 noundef %i.cc, ptr nonnull %2, ptr nonnull @"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS4_11FormatStateEbE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatGPositiveExpSlowINS1_7uint128EEEvT_ibRKNS3_11FormatStateEEUlNS3_15BinaryToDecimalEE_JSA_EENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSE_.exit

_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatGPositiveExpSlowINS1_7uint128EEEvT_ibRKNS3_11FormatStateEEUlNS3_15BinaryToDecimalEE_JSA_EENSt13invoke_resultIS6_JDpT0_EE4typeEOS6_DpOSE_.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatGNegativeExpSlowINS0_7uint128EEEvT_ibRKNS4_11FormatStateEEUlNS4_24FractionalDigitGeneratorEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %class.anon.10, align 8             ; 6 uses
  %3 = alloca %"struct.absl::lts_20260526::str_format_internal::(anonymous namespace)::FormatState", align 8 ; 5 uses
  %.sroa.04.0.copyload.i.i.i = load i8, ptr %1, align 8, !tbaa !25 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !31 ; 2 uses
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.45.0.copyload.i.i.i = load ptr, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !tbaa !53 ; 16 uses
  %.not.i175.i.i.i.i = icmp ne i8 %.sroa.04.0.copyload.i.i.i, 0
  %i.c = icmp ne i64 %.sroa.3.0.copyload.i.i.i, 0
  %i.d = select i1 %.not.i175.i.i.i.i, i1 true, i1 %i.c
  br i1 %i.d, label %.lr.ph.i.i.i.i, label %.thread135.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.c
  %.046178.i.i.i.i = phi i32 [ %i.bv, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %storemerge.lcssa.i166177.i.i.i.i = phi i8 [ %storemerge.lcssa.i.i.i.i.i, %bb.c ], [ %.sroa.04.0.copyload.i.i.i, %bb.a ] ; 3 uses
  %.lcssa164170176.i.i.i.i = phi i64 [ %.lcssa164171.i.i.i.i, %bb.c ], [ %.sroa.3.0.copyload.i.i.i, %bb.a ] ; 9 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.lcssa164170176.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i
  %xtraiter = and i64 %.lcssa164170176.i.i.i.i, 1
  %i.e = icmp eq i64 %.lcssa164170176.i.i.i.i, 1
  br i1 %i.e, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.lcssa164170176.i.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.i.epil.init = phi i64 [ %.lcssa164170176.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ab, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ]
  %.0610.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ai, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod187 = trunc i64 %.lcssa164170176.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod187)
  %i.f = getelementptr [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %.011.i.i.i.i.i.i.epil.init
  %i.g = getelementptr i8, ptr %i.f, i64 -4       ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !50
  %i.i = zext i32 %i.h to i64
  %i.j = mul nuw nsw i64 %i.i, 10
  %i.k = add nuw nsw i64 %i.j, %.0610.i.i.i.i.i.i.epil.init ; 2 uses
  %i.l = trunc i64 %i.k to i32
  store i32 %i.l, ptr %i.g, align 4, !tbaa !50
  %i.m = lshr i64 %i.k, 32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.epil.preheader
  %.lcssa164 = phi i64 [ %i.ai, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ], [ %i.m, %.preheader.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.n = trunc nuw nsw i64 %.lcssa164 to i8
  %i.o = add i64 %.lcssa164170176.i.i.i.i, -1     ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !50
  %i.r = icmp eq i32 %i.q, 0
  %spec.select194.i.i.i.i = select i1 %i.r, i64 %i.o, i64 %.lcssa164170176.i.i.i.i ; 4 uses
  %i.s = icmp eq i64 %.lcssa164, 9
  br i1 %i.s, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %.011.i.i.i.i.i.i = phi i64 [ %.lcssa164170176.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ab, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0610.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ai, %.preheader.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i ]
  %i.t = getelementptr [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %.011.i.i.i.i.i.i
  %i.u = getelementptr i8, ptr %i.t, i64 -4       ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !50
  %i.w = zext i32 %i.v to i64
  %i.x = mul nuw nsw i64 %i.w, 10
  %i.y = add nuw nsw i64 %i.x, %.0610.i.i.i.i.i.i ; 2 uses
  %i.z = trunc i64 %i.y to i32
  store i32 %i.z, ptr %i.u, align 4, !tbaa !50
  %i.aa = lshr i64 %i.y, 32
  %i.ab = add i64 %.011.i.i.i.i.i.i, -2           ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !50
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul nuw nsw i64 %i.ae, 10
  %i.ag = add nuw nsw i64 %i.af, %i.aa            ; 2 uses
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !50
  %i.ai = lshr i64 %i.ag, 32                      ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i
  %i.aj = icmp eq i64 %spec.select194.i.i.i.i, 0
  br i1 %i.aj, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i
  %i.ak = phi i64 [ %spec.select196.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i ], [ %spec.select194.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.al = phi i64 [ %spec.select197.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i ], [ %spec.select194.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 9 uses
  %.sroa.2.010.i.i.i.i.i = phi i64 [ %i.am, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.am = add i64 %.sroa.2.010.i.i.i.i.i, 1       ; 3 uses
  %.not.i2.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i2.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i, label %.preheader.i3.i.i.i.i.i.preheader

.preheader.i3.i.i.i.i.i.preheader:                ; preds = %.lr.ph.split.i.i.i.i.i
  %xtraiter188 = and i64 %i.al, 1
  %i.an = icmp eq i64 %i.al, 1
  br i1 %i.an, label %.preheader.i3.i.i.i.i.i.epil.preheader, label %.preheader.i3.i.i.i.i.i.preheader.new

.preheader.i3.i.i.i.i.i.preheader.new:            ; preds = %.preheader.i3.i.i.i.i.i.preheader
  %unroll_iter192 = and i64 %i.al, -2
  br label %.preheader.i3.i.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i3.i.i.i.i.i
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i, label %.preheader.i3.i.i.i.i.i.epil.preheader

.preheader.i3.i.i.i.i.i.epil.preheader:           ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa, %.preheader.i3.i.i.i.i.i.preheader
  %.011.i4.i.i.i.i.i.epil.init = phi i64 [ %i.al, %.preheader.i3.i.i.i.i.i.preheader ], [ %i.bj, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ]
  %.0610.i5.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader ], [ %i.bq, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod191 = trunc i64 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod191)
  %i.ao = getelementptr [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %.011.i4.i.i.i.i.i.epil.init
  %i.ap = getelementptr i8, ptr %i.ao, i64 -4     ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !50
  %i.ar = zext i32 %i.aq to i64
  %i.as = mul nuw nsw i64 %i.ar, 10
  %i.at = add nuw nsw i64 %i.as, %.0610.i5.i.i.i.i.i.epil.init ; 2 uses
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %i.ap, align 4, !tbaa !50
  %i.av = lshr i64 %i.at, 32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa, %.preheader.i3.i.i.i.i.i.epil.preheader
  %.lcssa165 = phi i64 [ %i.bq, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ], [ %i.av, %.preheader.i3.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.aw = add i64 %i.al, -1                       ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !50
  %i.az = icmp eq i32 %i.ay, 0                    ; 2 uses
  %spec.select196.i.i.i.i = select i1 %i.az, i64 %i.aw, i64 %i.ak ; 2 uses
  %spec.select197.i.i.i.i = select i1 %i.az, i64 %i.aw, i64 %i.al
  %i.ba = icmp eq i64 %.lcssa165, 9
  br i1 %i.ba, label %.lr.ph.split.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i, !llvm.loop !10

.preheader.i3.i.i.i.i.i:                          ; preds = %.preheader.i3.i.i.i.i.i, %.preheader.i3.i.i.i.i.i.preheader.new
  %.011.i4.i.i.i.i.i = phi i64 [ %i.al, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %i.bj, %.preheader.i3.i.i.i.i.i ] ; 2 uses
  %.0610.i5.i.i.i.i.i = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %i.bq, %.preheader.i3.i.i.i.i.i ]
  %niter193 = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %niter193.next.1, %.preheader.i3.i.i.i.i.i ]
  %i.bb = getelementptr [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %.011.i4.i.i.i.i.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 -4     ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !50
  %i.be = zext i32 %i.bd to i64
  %i.bf = mul nuw nsw i64 %i.be, 10
  %i.bg = add nuw nsw i64 %i.bf, %.0610.i5.i.i.i.i.i ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  store i32 %i.bh, ptr %i.bc, align 4, !tbaa !50
  %i.bi = lshr i64 %i.bg, 32
  %i.bj = add i64 %.011.i4.i.i.i.i.i, -2          ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !50
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul nuw nsw i64 %i.bm, 10
  %i.bo = add nuw nsw i64 %i.bn, %i.bi            ; 2 uses
  %i.bp = trunc i64 %i.bo to i32
  store i32 %i.bp, ptr %i.bk, align 4, !tbaa !50
  %i.bq = lshr i64 %i.bo, 32                      ; 3 uses
  %niter193.next.1 = add nuw i64 %niter193, 2     ; 2 uses
  %niter193.ncmp.1 = icmp eq i64 %niter193.next.1, %unroll_iter192
  br i1 %niter193.ncmp.1, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa, label %.preheader.i3.i.i.i.i.i, !llvm.loop !9

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i
  %i.br = trunc nuw nsw i64 %.lcssa165 to i8
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.lcssa164171.i.i.i.i = phi i64 [ %spec.select194.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ], [ %spec.select196.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i ], [ %i.ak, %.lr.ph.split.i.i.i.i.i ] ; 4 uses
  %storemerge.lcssa.i.i.i.i.i = phi i8 [ %i.n, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ], [ %i.br, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i ], [ 0, %.lr.ph.split.i.i.i.i.i ] ; 4 uses
  %.sroa.2.0.lcssa.i.i.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ], [ %i.am, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i ], [ %i.am, %.lr.ph.split.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %storemerge.lcssa.i166177.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %.loopexit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.not129.i.i.i.i = icmp eq i8 %storemerge.lcssa.i166177.i.i.i.i, 0
  br i1 %.not129.i.i.i.i, label %.thread.i.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i
  %.val85227.i.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i ], [ %.lcssa164171.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i ]
  %.val84224.i.i.i.i = phi i8 [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i ], [ %storemerge.lcssa.i.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i ]
  %.sroa.2.0.lcssa.i131.i.i.i.i = phi i64 [ 1, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i ], [ %.sroa.2.0.lcssa.i.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i ]
  %i.bs = sext i8 %storemerge.lcssa.i166177.i.i.i.i to i32
  br label %.thread135.i.i.i.i

bb.b:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i
  %.not66.i.i.i.i = icmp eq i64 %.sroa.2.0.lcssa.i.i.i.i.i, 0
  br i1 %.not66.i.i.i.i, label %bb.c, label %.thread.loopexit.i.i.i.i

.thread.loopexit.i.i.i.i:                         ; preds = %bb.b
  %i.bt = add i64 %.sroa.2.0.lcssa.i.i.i.i.i, -1
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.thread.loopexit.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i
  %.val85228.i.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i ], [ %.lcssa164171.i.i.i.i, %.thread.loopexit.i.i.i.i ]
  %.val84225.i.i.i.i = phi i8 [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i ], [ %storemerge.lcssa.i.i.i.i.i, %.thread.loopexit.i.i.i.i ]
  %.sroa.2.0.lcssa.i130134.i.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i ], [ %i.bt, %.thread.loopexit.i.i.i.i ]
  %i.bu = add nuw nsw i32 %.046178.i.i.i.i, 1
  br label %.thread135.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.bv = add nuw nsw i32 %.046178.i.i.i.i, 1     ; 2 uses
  %.not.i.i.i.i.i = icmp ne i8 %storemerge.lcssa.i.i.i.i.i, 0
  %i.bw = icmp ne i64 %.lcssa164171.i.i.i.i, 0
  %i.bx = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.bw
  br i1 %i.bx, label %.lr.ph.i.i.i.i, label %.thread135.i.i.i.i

.thread135.i.i.i.i:                               ; preds = %bb.c, %.thread.i.i.i.i, %.loopexit.i.i.i.i, %bb.a
  %.val85.i.i.i.i = phi i64 [ %.val85227.i.i.i.i, %.loopexit.i.i.i.i ], [ %.val85228.i.i.i.i, %.thread.i.i.i.i ], [ 0, %bb.a ], [ 0, %bb.c ] ; 4 uses
  %.val84.i.i.i.i = phi i8 [ %.val84224.i.i.i.i, %.loopexit.i.i.i.i ], [ %.val84225.i.i.i.i, %.thread.i.i.i.i ], [ 0, %bb.a ], [ 0, %bb.c ] ; 4 uses
  %.248.i.i.i.i = phi i32 [ %.046178.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.bu, %.thread.i.i.i.i ], [ 0, %bb.a ], [ %i.bv, %bb.c ] ; 3 uses
  %.245.i.i.i.i = phi i64 [ %.sroa.2.0.lcssa.i131.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.2.0.lcssa.i130134.i.i.i.i, %.thread.i.i.i.i ], [ 0, %bb.a ], [ 0, %bb.c ] ; 4 uses
  %.2.i.i.i.i = phi i32 [ %i.bs, %.loopexit.i.i.i.i ], [ 9, %.thread.i.i.i.i ], [ 0, %bb.a ], [ 0, %bb.c ] ; 4 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !185, !nonnull !74, !align !75 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !37 ; 6 uses
  %.not67.i.i.i.i = icmp ult i64 %.245.i.i.i.i, %i.ca
  br i1 %.not67.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread135.i.i.i.i
  %i.cb = icmp ne i64 %.245.i.i.i.i, %i.ca
  %i.cc = icmp sgt i8 %.val84.i.i.i.i, 5
  %or.cond283.i.i.i.i = select i1 %i.cb, i1 true, i1 %i.cc
  br i1 %or.cond283.i.i.i.i, label %.critedge75.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.d
  %i.cd = icmp eq i8 %.val84.i.i.i.i, 5
  %i.ce = icmp ne i64 %.val85.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %spec.select.i.i.i.i.i, label %.critedge75.i.i.i.i, label %bb.e

.critedge75.i.i.i.i:                              ; preds = %.split.i.i.i.i, %bb.d
  %i.cf = icmp eq i32 %.2.i.i.i.i, 9
  %i.cg = add nsw i32 %.2.i.i.i.i, 1
  %i.ch = select i1 %i.cf, i32 1, i32 %i.cg       ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 1
  %.neg.i.i.i.i = sext i1 %i.ci to i32
  %i.cj = add i32 %.248.i.i.i.i, %.neg.i.i.i.i
  br label %bb.e

bb.e:                                             ; preds = %.critedge75.i.i.i.i, %.split.i.i.i.i, %.thread135.i.i.i.i
  %.152.i.i.i.i = phi i64 [ 0, %.thread135.i.i.i.i ], [ %i.ca, %.critedge75.i.i.i.i ], [ 0, %.split.i.i.i.i ] ; 2 uses
  %.450.i.i.i.i = phi i32 [ %.248.i.i.i.i, %.thread135.i.i.i.i ], [ %i.cj, %.critedge75.i.i.i.i ], [ %.248.i.i.i.i, %.split.i.i.i.i ] ; 2 uses
  %.4.i.i.i.i = phi i32 [ %.2.i.i.i.i, %.thread135.i.i.i.i ], [ %i.ch, %.critedge75.i.i.i.i ], [ %.2.i.i.i.i, %.split.i.i.i.i ]
  %i.ck = add i64 %i.ca, 1                        ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !55, !nonnull !74, !align !82
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !24
  %i.cp = and i8 %i.co, 8
  %i.cq = icmp ne i8 %i.cp, 0                     ; 3 uses
  %spec.select.i.i.i.i = select i1 %i.cq, i64 0, i64 %.152.i.i.i.i
  %i.cr = icmp ne i64 %.152.i.i.i.i, 0
  %or.cond.i.i.i.i = or i1 %i.cr, %i.cq
  br i1 %or.cond.i.i.i.i, label %.critedge.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cs = icmp eq i32 %.4.i.i.i.i, 0
  %i.ct = zext i1 %i.cs to i64                    ; 3 uses
  %i.cu = add i64 %.245.i.i.i.i, 1
  %.not69185.not.i.i.i.i = icmp ugt i64 %i.ck, %i.cu
  br i1 %.not69185.not.i.i.i.i, label %.lr.ph188.i.i.i.i, label %.critedge.i.i.i.i

.lr.ph188.i.i.i.i:                                ; preds = %bb.f
  %i.cv = sub i64 %i.ca, %.245.i.i.i.i            ; 2 uses
  %.not.i90.i38.i.i.i = icmp ne i8 %.val84.i.i.i.i, 0
  %i.cw = icmp ne i64 %.val85.i.i.i.i, 0
  %i.cx = select i1 %.not.i90.i38.i.i.i, i1 true, i1 %i.cw
  br i1 %i.cx, label %.lr.ph.i.i.i, label %.critedge.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph188.i.i.i.i, %bb.l
  %.0123186.i43.i.i.i = phi i64 [ %i.gf, %bb.l ], [ %i.cv, %.lr.ph188.i.i.i.i ] ; 5 uses
  %.354187.i42.i.i.i = phi i64 [ %.455.i.i.i.i, %bb.l ], [ %i.ct, %.lr.ph188.i.i.i.i ] ; 2 uses
  %.val.i41.i.i.i = phi i8 [ %storemerge.lcssa.i97.i.i.i.i, %bb.l ], [ %.val84.i.i.i.i, %.lr.ph188.i.i.i.i ] ; 3 uses
  %.val77.i40.i.i.i = phi i64 [ %.val77233.i.i.i.i, %bb.l ], [ %.val85.i.i.i.i, %.lr.ph188.i.i.i.i ] ; 9 uses
  %.val81238.i39.i.i.i = phi i64 [ %.val81.i.i.i.i, %bb.l ], [ %.val85.i.i.i.i, %.lr.ph188.i.i.i.i ] ; 2 uses
  %.not.i.i91.i.i.i.i = icmp eq i64 %.val77.i40.i.i.i, 0
  br i1 %.not.i.i91.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.i.i.i.i, label %.preheader.i.i92.i.i.i.i.preheader

.preheader.i.i92.i.i.i.i.preheader:               ; preds = %.lr.ph.i.i.i
  %xtraiter194 = and i64 %.val77.i40.i.i.i, 1
  %i.cy = icmp eq i64 %.val77.i40.i.i.i, 1
  br i1 %i.cy, label %.preheader.i.i92.i.i.i.i.epil.preheader, label %.preheader.i.i92.i.i.i.i.preheader.new

.preheader.i.i92.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i92.i.i.i.i.preheader
  %unroll_iter198 = and i64 %.val77.i40.i.i.i, -2
  br label %.preheader.i.i92.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i92.i.i.i.i
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i, label %.preheader.i.i92.i.i.i.i.epil.preheader

.preheader.i.i92.i.i.i.i.epil.preheader:          ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i.unr-lcssa, %.preheader.i.i92.i.i.i.i.preheader
  %.011.i.i93.i.i.i.i.epil.init = phi i64 [ %.val77.i40.i.i.i, %.preheader.i.i92.i.i.i.i.preheader ], [ %i.dv, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i.unr-lcssa ]
  %.0610.i.i94.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i92.i.i.i.i.preheader ], [ %i.ec, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i.unr-lcssa ]
  %lcmp.mod197 = trunc i64 %.val77.i40.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod197)
  %i.cz = getelementptr [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %.011.i.i93.i.i.i.i.epil.init
  %i.da = getelementptr i8, ptr %i.cz, i64 -4     ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !50
  %i.dc = zext i32 %i.db to i64
  %i.dd = mul nuw nsw i64 %i.dc, 10
  %i.de = add nuw nsw i64 %i.dd, %.0610.i.i94.i.i.i.i.epil.init ; 2 uses
  %i.df = trunc i64 %i.de to i32
  store i32 %i.df, ptr %i.da, align 4, !tbaa !50
  %i.dg = lshr i64 %i.de, 32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i.unr-lcssa, %.preheader.i.i92.i.i.i.i.epil.preheader
  %.lcssa = phi i64 [ %i.ec, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i.unr-lcssa ], [ %i.dg, %.preheader.i.i92.i.i.i.i.epil.preheader ] ; 2 uses
  %i.dh = trunc nuw nsw i64 %.lcssa to i8
  %i.di = add i64 %.val77.i40.i.i.i, -1           ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !50
  %i.dl = icmp eq i32 %i.dk, 0                    ; 2 uses
  %spec.select284.i.i.i.i = select i1 %i.dl, i64 %i.di, i64 %.val81238.i39.i.i.i ; 3 uses
  %spec.select285.i.i.i.i = select i1 %i.dl, i64 %i.di, i64 %.val77.i40.i.i.i ; 4 uses
  %i.dm = icmp eq i64 %.lcssa, 9
  br i1 %i.dm, label %.lr.ph.i101.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.i.i.i.i

.preheader.i.i92.i.i.i.i:                         ; preds = %.preheader.i.i92.i.i.i.i, %.preheader.i.i92.i.i.i.i.preheader.new
  %.011.i.i93.i.i.i.i = phi i64 [ %.val77.i40.i.i.i, %.preheader.i.i92.i.i.i.i.preheader.new ], [ %i.dv, %.preheader.i.i92.i.i.i.i ] ; 2 uses
  %.0610.i.i94.i.i.i.i = phi i64 [ 0, %.preheader.i.i92.i.i.i.i.preheader.new ], [ %i.ec, %.preheader.i.i92.i.i.i.i ]
  %niter199 = phi i64 [ 0, %.preheader.i.i92.i.i.i.i.preheader.new ], [ %niter199.next.1, %.preheader.i.i92.i.i.i.i ]
  %i.dn = getelementptr [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %.011.i.i93.i.i.i.i
  %i.do = getelementptr i8, ptr %i.dn, i64 -4     ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !50
  %i.dq = zext i32 %i.dp to i64
  %i.dr = mul nuw nsw i64 %i.dq, 10
  %i.ds = add nuw nsw i64 %i.dr, %.0610.i.i94.i.i.i.i ; 2 uses
  %i.dt = trunc i64 %i.ds to i32
  store i32 %i.dt, ptr %i.do, align 4, !tbaa !50
  %i.du = lshr i64 %i.ds, 32
  %i.dv = add i64 %.011.i.i93.i.i.i.i, -2         ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %i.dv ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !50
  %i.dy = zext i32 %i.dx to i64
  %i.dz = mul nuw nsw i64 %i.dy, 10
  %i.ea = add nuw nsw i64 %i.dz, %i.du            ; 2 uses
  %i.eb = trunc i64 %i.ea to i32
  store i32 %i.eb, ptr %i.dw, align 4, !tbaa !50
  %i.ec = lshr i64 %i.ea, 32                      ; 3 uses
  %niter199.next.1 = add nuw i64 %niter199, 2     ; 2 uses
  %niter199.ncmp.1 = icmp eq i64 %niter199.next.1, %unroll_iter198
  br i1 %niter199.ncmp.1, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i.unr-lcssa, label %.preheader.i.i92.i.i.i.i, !llvm.loop !9

.lr.ph.i101.i.i.i.i:                              ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i
  %i.ed = icmp eq i64 %spec.select285.i.i.i.i, 0
  br i1 %i.ed, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.i.i.i.i, label %.lr.ph.split.i102.i.i.i.i

.lr.ph.split.i102.i.i.i.i:                        ; preds = %.lr.ph.i101.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i
  %.val81240.i.i.i.i = phi i64 [ %.val81241.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i ], [ %spec.select284.i.i.i.i, %.lr.ph.i101.i.i.i.i ] ; 2 uses
  %.val77231.i.i.i.i = phi i64 [ %.val77230.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i ], [ %spec.select285.i.i.i.i, %.lr.ph.i101.i.i.i.i ] ; 2 uses
  %i.ee = phi i64 [ %i.et, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i ], [ %spec.select285.i.i.i.i, %.lr.ph.i101.i.i.i.i ] ; 9 uses
  %.sroa.2.010.i103.i.i.i.i = phi i64 [ %i.ef, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i ], [ 0, %.lr.ph.i101.i.i.i.i ]
  %i.ef = add i64 %.sroa.2.010.i103.i.i.i.i, 1    ; 3 uses
  %.not.i2.i104.i.i.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i2.i104.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.i.i.i.i, label %.preheader.i3.i105.i.i.i.i.preheader

.preheader.i3.i105.i.i.i.i.preheader:             ; preds = %.lr.ph.split.i102.i.i.i.i
  %xtraiter200 = and i64 %i.ee, 1
  %i.eg = icmp eq i64 %i.ee, 1
  br i1 %i.eg, label %.preheader.i3.i105.i.i.i.i.epil.preheader, label %.preheader.i3.i105.i.i.i.i.preheader.new

.preheader.i3.i105.i.i.i.i.preheader.new:         ; preds = %.preheader.i3.i105.i.i.i.i.preheader
  %unroll_iter204 = and i64 %i.ee, -2
  br label %.preheader.i3.i105.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i.unr-lcssa: ; preds = %.preheader.i3.i105.i.i.i.i
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod201.not, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i, label %.preheader.i3.i105.i.i.i.i.epil.preheader

.preheader.i3.i105.i.i.i.i.epil.preheader:        ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i.unr-lcssa, %.preheader.i3.i105.i.i.i.i.preheader
  %.011.i4.i106.i.i.i.i.epil.init = phi i64 [ %i.ee, %.preheader.i3.i105.i.i.i.i.preheader ], [ %i.fd, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i.unr-lcssa ]
  %.0610.i5.i107.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i3.i105.i.i.i.i.preheader ], [ %i.fk, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i.unr-lcssa ]
  %lcmp.mod203 = trunc i64 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod203)
  %i.eh = getelementptr [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %.011.i4.i106.i.i.i.i.epil.init
  %i.ei = getelementptr i8, ptr %i.eh, i64 -4     ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !50
  %i.ek = zext i32 %i.ej to i64
  %i.el = mul nuw nsw i64 %i.ek, 10
  %i.em = add nuw nsw i64 %i.el, %.0610.i5.i107.i.i.i.i.epil.init ; 2 uses
  %i.en = trunc i64 %i.em to i32
  store i32 %i.en, ptr %i.ei, align 4, !tbaa !50
  %i.eo = lshr i64 %i.em, 32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i.unr-lcssa, %.preheader.i3.i105.i.i.i.i.epil.preheader
  %.lcssa150 = phi i64 [ %i.fk, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i.unr-lcssa ], [ %i.eo, %.preheader.i3.i105.i.i.i.i.epil.preheader ] ; 2 uses
  %i.ep = add i64 %i.ee, -1                       ; 4 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !50
  %i.es = icmp eq i32 %i.er, 0                    ; 3 uses
  %.val81241.i.i.i.i = select i1 %i.es, i64 %i.ep, i64 %.val81240.i.i.i.i ; 2 uses
  %.val77230.i.i.i.i = select i1 %i.es, i64 %i.ep, i64 %.val77231.i.i.i.i ; 2 uses
  %i.et = select i1 %i.es, i64 %i.ep, i64 %i.ee
  %i.eu = icmp eq i64 %.lcssa150, 9
  br i1 %i.eu, label %.lr.ph.split.i102.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.loopexit.split.loop.exit.i.i.i.i, !llvm.loop !10

.preheader.i3.i105.i.i.i.i:                       ; preds = %.preheader.i3.i105.i.i.i.i, %.preheader.i3.i105.i.i.i.i.preheader.new
  %.011.i4.i106.i.i.i.i = phi i64 [ %i.ee, %.preheader.i3.i105.i.i.i.i.preheader.new ], [ %i.fd, %.preheader.i3.i105.i.i.i.i ] ; 2 uses
  %.0610.i5.i107.i.i.i.i = phi i64 [ 0, %.preheader.i3.i105.i.i.i.i.preheader.new ], [ %i.fk, %.preheader.i3.i105.i.i.i.i ]
  %niter205 = phi i64 [ 0, %.preheader.i3.i105.i.i.i.i.preheader.new ], [ %niter205.next.1, %.preheader.i3.i105.i.i.i.i ]
  %i.ev = getelementptr [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %.011.i4.i106.i.i.i.i
  %i.ew = getelementptr i8, ptr %i.ev, i64 -4     ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !50
  %i.ey = zext i32 %i.ex to i64
  %i.ez = mul nuw nsw i64 %i.ey, 10
  %i.fa = add nuw nsw i64 %i.ez, %.0610.i5.i107.i.i.i.i ; 2 uses
  %i.fb = trunc i64 %i.fa to i32
  store i32 %i.fb, ptr %i.ew, align 4, !tbaa !50
  %i.fc = lshr i64 %i.fa, 32
  %i.fd = add i64 %.011.i4.i106.i.i.i.i, -2       ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %i.fd ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !50
  %i.fg = zext i32 %i.ff to i64
  %i.fh = mul nuw nsw i64 %i.fg, 10
  %i.fi = add nuw nsw i64 %i.fh, %i.fc            ; 2 uses
  %i.fj = trunc i64 %i.fi to i32
  store i32 %i.fj, ptr %i.fe, align 4, !tbaa !50
  %i.fk = lshr i64 %i.fi, 32                      ; 3 uses
  %niter205.next.1 = add nuw i64 %niter205, 2     ; 2 uses
  %niter205.ncmp.1 = icmp eq i64 %niter205.next.1, %unroll_iter204
  br i1 %niter205.ncmp.1, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i.unr-lcssa, label %.preheader.i3.i105.i.i.i.i, !llvm.loop !9

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.loopexit.split.loop.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i109.i.i.i.i
  %i.fl = trunc nuw nsw i64 %.lcssa150 to i8
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.i.i.i.i: ; preds = %.lr.ph.split.i102.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.loopexit.split.loop.exit.i.i.i.i, %.lr.ph.i101.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i, %.lr.ph.i.i.i
  %.val81.i.i.i.i = phi i64 [ %spec.select284.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i ], [ %.val81238.i39.i.i.i, %.lr.ph.i.i.i ], [ %spec.select284.i.i.i.i, %.lr.ph.i101.i.i.i.i ], [ %.val81241.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.loopexit.split.loop.exit.i.i.i.i ], [ %.val81240.i.i.i.i, %.lr.ph.split.i102.i.i.i.i ] ; 3 uses
  %.val77233.i.i.i.i = phi i64 [ %spec.select285.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i ], [ 0, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i101.i.i.i.i ], [ %.val77230.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.loopexit.split.loop.exit.i.i.i.i ], [ %.val77231.i.i.i.i, %.lr.ph.split.i102.i.i.i.i ] ; 2 uses
  %storemerge.lcssa.i97.i.i.i.i = phi i8 [ %i.dh, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i ], [ 0, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i101.i.i.i.i ], [ %i.fl, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.loopexit.split.loop.exit.i.i.i.i ], [ 0, %.lr.ph.split.i102.i.i.i.i ] ; 4 uses
  %.sroa.2.0.lcssa.i98.i.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i96.i.i.i.i ], [ 0, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i101.i.i.i.i ], [ %i.ef, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.loopexit.split.loop.exit.i.i.i.i ], [ %i.ef, %.lr.ph.split.i102.i.i.i.i ] ; 3 uses
  %i.fm = add i64 %.sroa.2.0.lcssa.i98.i.i.i.i, 1 ; 3 uses
  %i.fn = icmp ult i64 %i.fm, %.0123186.i43.i.i.i
  br i1 %i.fn, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit110.i.i.i.i
  %i.fo = icmp ugt i64 %i.fm, %.0123186.i43.i.i.i
  %i.fp = icmp sgt i8 %storemerge.lcssa.i97.i.i.i.i, 5
  %or.cond286.i.i.i.i = select i1 %i.fo, i1 true, i1 %i.fp
  br i1 %or.cond286.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit112.thread.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit112.i.i.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit112.i.i.i.i: ; preds = %bb.g
  %i.fq = icmp eq i8 %storemerge.lcssa.i97.i.i.i.i, 5 ; 2 uses
  %i.fr = icmp ne i64 %.val81.i.i.i.i, 0
  %spec.select.i111.i.i.i.i = select i1 %i.fq, i1 %i.fr, i1 false
  br i1 %spec.select.i111.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit112.thread.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit112.i.i.i.i
  %.not.i113.i.i.i.i = icmp eq i64 %.val81.i.i.i.i, 0
  %i.fs = select i1 %i.fq, i1 %.not.i113.i.i.i.i, i1 false
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatGFastImEEvT_ibRKNS2_11FormatStateE:bb.a
  %.not.i244 = icmp eq i64 %.val, 0
  br i1 %.not.i244, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit245, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit245.thread

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit245: ; preds = %bb.be
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val189 = load ptr, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %.val189, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !24
  %.fr268 = freeze i8 %i.hm
  %i.hn = and i8 %.fr268, 8
  %.not269 = icmp eq i8 %i.hn, 0
  %i.ho = getelementptr inbounds nuw i8, ptr %.2161, i64 1
  br i1 %.not269, label %bb.bf, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit245.thread

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit245.thread: ; preds = %bb.be, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit245
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit245, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit245.thread
  %i.hp = phi ptr [ %.2161, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit245.thread ], [ %i.ho, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit245 ]
  %.not305 = icmp eq i32 %.3, -1
  br i1 %.not305, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bf
  %i.hq = sub nuw nsw i32 -2, %.3
  %i.hr = zext nneg i32 %i.hq to i64              ; 3 uses
  %i.hs = sub nsw i64 0, %i.hr
  %scevgep = getelementptr i8, ptr %.3169, i64 %i.hs
  %i.ht = add nuw nsw i64 %i.hr, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 48, i64 %i.ht, i1 false), !tbaa !25
  %i.hu = xor i64 %i.hr, -1
  %scevgep325 = getelementptr i8, ptr %.3169, i64 %i.hu
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.bf
  %.4170.lcssa = phi ptr [ %.3169, %bb.bf ], [ %scevgep325, %.lr.ph.preheader ] ; 2 uses
  %i.hv = getelementptr inbounds i8, ptr %.4170.lcssa, i64 -1 ; 2 uses
  store i8 46, ptr %.4170.lcssa, align 1, !tbaa !25
  store i8 48, ptr %i.hv, align 1, !tbaa !25
  br label %bb.bi

bb.bg:                                            ; preds = %bb.bc
  %.not186 = icmp eq i32 %.3, 0
  br i1 %.not186, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hw = getelementptr inbounds nuw i8, ptr %.3169, i64 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.3169, i64 2
  %i.hy = getelementptr inbounds nuw i8, ptr %.3169, i64 %i.hg
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 2
  %i.ia = call noundef ptr @_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag(ptr noundef nonnull %i.hw, ptr noundef nonnull %i.hx, ptr noundef nonnull %i.hz) ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge, %bb.bh, %bb.bg, %bb.bd, %bb.bc
  %.6172 = phi ptr [ %.3169, %bb.bc ], [ %.3169, %bb.bd ], [ %i.hv, %._crit_edge ], [ %.3169, %bb.bh ], [ %.3169, %bb.bg ] ; 4 uses
  %.5164 = phi ptr [ %.2161, %bb.bc ], [ %.2161, %bb.bd ], [ %i.hp, %._crit_edge ], [ %.2161, %bb.bh ], [ %.2161, %bb.bg ] ; 2 uses
  %.5 = phi i32 [ %.3, %bb.bc ], [ %.3, %bb.bd ], [ 0, %._crit_edge ], [ 0, %bb.bh ], [ 0, %bb.bg ] ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !55, !nonnull !74, !align !82
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 1
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !24
  %i.if = and i8 %i.ie, 8
  %.not270 = icmp eq i8 %i.if, 0
  br i1 %.not270, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.bi, %.preheader
  %.6165 = phi ptr [ %i.ig, %.preheader ], [ %.5164, %bb.bi ] ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %.6165, i64 -1 ; 3 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !25
  switch i8 %i.ih, label %.loopexit.loopexit [
    i8 48, label %.preheader
    i8 46, label %.loopexit
  ]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit.loopexit, %bb.bi
  %.7 = phi ptr [ %.5164, %bb.bi ], [ %.6165, %.loopexit.loopexit ], [ %i.ig, %.preheader ] ; 2 uses
  %.1154 = phi i64 [ %.0153, %bb.bi ], [ 0, %.loopexit.loopexit ], [ 0, %.preheader ] ; 2 uses
  %.not187 = icmp eq i32 %.5, 0
  br i1 %.not187, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ii = select i1 %2, i8 69, i8 101
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ii, ptr %i.b, align 16, !tbaa !25
  %i.ik = icmp sgt i32 %.5, -1
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %.sink = select i1 %i.ik, i8 43, i8 45
  %.6 = call i32 @llvm.abs.i32(i32 %.5, i1 true)  ; 2 uses
  store i8 %.sink, ptr %i.ij, align 1, !tbaa !25
  %i.im = icmp samesign ult i32 %.6, 10
  br i1 %i.im, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 48, ptr %i.il, align 2, !tbaa !25
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.1 = phi ptr [ %i.in, %bb.bk ], [ %i.il, %bb.bj ]
  %i.io = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc(i32 noundef %.6, ptr noundef nonnull %.1)
  %i.ip = ptrtoint ptr %.7 to i64
  %i.iq = ptrtoint ptr %.6172 to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = ptrtoint ptr %i.io to i64
  %i.it = ptrtoint ptr %i.b to i64
  %i.iu = sub i64 %i.is, %i.it
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 %i.ir, ptr %.6172, i64 noundef 0, i64 noundef %.1154, i64 %i.iu, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.bn

bb.bm:                                            ; preds = %.loopexit
  %i.iv = ptrtoint ptr %.7 to i64
  %i.iw = ptrtoint ptr %.6172 to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 %i.ix, ptr %.6172, i64 noundef 0, i64 noundef %.1154, i64 0, ptr nonnull @.str.4)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.thread356
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatGPositiveExpSlowImEEvT_ibRKNS4_11FormatStateEEUlNS4_15BinaryToDecimalEE_vJSA_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %class.anon, align 8                ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %3 = alloca %class.anon.7, align 8              ; 6 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::BinaryToDecimal", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !72
  %i.f = load i64, ptr %5, align 8, !tbaa !73
  %i.g = sub i64 %i.e, %i.f
  %i.h = mul i64 %i.g, 9
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !71   ; 3 uses
  %i.k = add i64 %i.h, %i.j                       ; 2 uses
  %i.l = add i64 %i.k, -1                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = sub i64 9, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i64 %i.j, ptr %4, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.o, ptr %i.p, align 8
  %i.q = load ptr, ptr %0, align 8, !tbaa !230, !nonnull !74, !align !75 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !37   ; 2 uses
  %i.t = add i64 %i.s, 1
  %i.u = call fastcc { i64, i64 } @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0        ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.u, 1
  %i.x = and i64 %i.v, 4294967296
  %.not94.i.i.i.i = icmp eq i64 %i.x, 0           ; 2 uses
  %.sroa.064.0.extract.trunc.i.i.i.i = trunc i64 %i.v to i32
  %.0.i.i.i.i.i = select i1 %.not94.i.i.i.i, i32 9, i32 %.sroa.064.0.extract.trunc.i.i.i.i ; 4 uses
  %i.y = sext i1 %.not94.i.i.i.i to i64
  %spec.select90.i.i.i.i = add i64 %i.w, %i.y     ; 3 uses
  %i.z = add i64 %spec.select90.i.i.i.i, 1
  %.not.i.i.i.i = icmp ult i64 %i.z, %i.t         ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = call fastcc { i64, i64 } @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.ab = extractvalue { i64, i64 } %i.aa, 0      ; 2 uses
  %.sroa.061.0.extract.trunc.i.i.i.i = trunc i64 %i.ab to i32
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !37  ; 2 uses
  %i.ad = icmp ne i64 %spec.select90.i.i.i.i, %i.ac
  %i.ae = and i64 %i.ab, 4294967296
  %.not95.i.i.i.i = icmp ne i64 %i.ae, 0
  %i.af = icmp sgt i32 %.sroa.061.0.extract.trunc.i.i.i.i, 4
  %i.ag = and i1 %.not95.i.i.i.i, %i.af
  %or.cond92.i.i.i.i = select i1 %i.ad, i1 true, i1 %i.ag
  br i1 %or.cond92.i.i.i.i, label %.critedge32.i.i.i.i, label %bb.c

.critedge32.i.i.i.i:                              ; preds = %bb.b
  %.not28.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i, 9  ; 2 uses
  %i.ah = add nsw i32 %.0.i.i.i.i.i, 1
  %.018.i.i.i.i = select i1 %.not28.i.i.i.i, i32 1, i32 %i.ah
  %.0.i.i.i.i = select i1 %.not28.i.i.i.i, i64 %i.k, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %.critedge32.i.i.i.i, %bb.b, %bb.a
  %.124.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.ac, %.critedge32.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %.220.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.a ], [ %.018.i.i.i.i, %.critedge32.i.i.i.i ], [ %.0.i.i.i.i.i, %bb.b ]
  %.2.i.i.i.i = phi i64 [ %i.l, %bb.a ], [ %.0.i.i.i.i, %.critedge32.i.i.i.i ], [ %i.l, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !55, !nonnull !74, !align !82
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  %i.am = and i8 %i.al, 8
  %i.an = icmp ne i8 %i.am, 0                     ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.an, i64 0, i64 %.124.i.i.i.i
  %i.ao = icmp ne i64 %.124.i.i.i.i, 0
  %or.cond.i.i.i.i = or i1 %i.ao, %i.an
  br i1 %or.cond.i.i.i.i, label %.critedge.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = icmp eq i32 %.220.i.i.i.i, 0
  %i.aq = zext i1 %i.ap to i64                    ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.critedge.thread.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.d
  %i.ar = sub i64 %i.s, %spec.select90.i.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.3100.i.i.i.i = phi i64 [ %.7.i.i.i.i, %.critedge.i.i.i.i ], [ %i.aq, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.08599.i.i.i.i = phi i64 [ %.186.i.i.i.i, %.critedge.i.i.i.i ], [ %i.ar, %.lr.ph.preheader.i.i.i.i ] ; 7 uses
  %i.as = call fastcc { i64, i64 } @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.at = extractvalue { i64, i64 } %i.as, 0      ; 3 uses
  %i.au = extractvalue { i64, i64 } %i.as, 1      ; 4 uses
  %i.av = and i64 %i.at, 4294967296
  %.not96.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not96.i.i.i.i, label %.critedge.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aw = add i64 %i.au, 1                        ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %.08599.i.i.i.i
  br i1 %i.ax, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ay = and i64 %i.at, 4294967295
  %i.az = icmp eq i64 %i.ay, 0
  %i.ba = icmp eq i64 %i.au, 0
  %or.cond4.i.i.i.i = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond4.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bb = add i64 %.3100.i.i.i.i, 1
  %i.bc = add i64 %.08599.i.i.i.i, -1
  br label %.critedge.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.bd = add i64 %.08599.i.i.i.i, -1
  %i.be = call i64 @llvm.usub.sat.i64(i64 %i.bd, i64 %i.au)
  br label %.critedge.i.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bf = call fastcc { i64, i64 } @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.bg = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %.sroa.041.0.extract.trunc.i.i.i.i = trunc i64 %i.bg to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i = lshr i64 %i.bg, 32 ; 2 uses
  %i.bh = icmp eq i64 %.08599.i.i.i.i, 1
  br i1 %i.bh, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bi = and i64 %i.at, 4294967295
  %i.bj = icmp eq i64 %i.bi, 0
  %.not30.i.i.i.i = icmp eq i64 %i.au, 0
  %or.cond93.i.i.i.i = select i1 %i.bj, i1 %.not30.i.i.i.i, i1 false
  br i1 %or.cond93.i.i.i.i, label %bb.k, label %.critedge.thread.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bk = trunc i64 %.sroa.5.0.extract.shift.i.i.i.i to i1
  %i.bl = icmp sgt i32 %.sroa.041.0.extract.trunc.i.i.i.i, 4
  %i.bm = and i1 %i.bl, %i.bk
  %i.bn = add i64 %.3100.i.i.i.i, 1
  %spec.select33.i.i.i.i = select i1 %i.bm, i64 0, i64 %i.bn
  br label %.critedge.thread.i.i.i.i

bb.l:                                             ; preds = %bb.i
  %i.bo = icmp eq i64 %.08599.i.i.i.i, %i.aw
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bp = trunc i64 %.sroa.5.0.extract.shift.i.i.i.i to i1
  %i.bq = icmp sgt i32 %.sroa.041.0.extract.trunc.i.i.i.i, 4
  %i.br = and i1 %i.bq, %i.bp
  %i.bs = add i64 %.08599.i.i.i.i, -1
  %i.bt = select i1 %i.br, i64 %i.bs, i64 0
  br label %.critedge.thread.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bu = add i64 %.08599.i.i.i.i, -1
  br label %.critedge.thread.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.h, %bb.g
  %.186.i.i.i.i = phi i64 [ %i.be, %bb.h ], [ %i.bc, %bb.g ] ; 2 uses
  %.7.i.i.i.i = phi i64 [ 0, %bb.h ], [ %i.bb, %bb.g ] ; 2 uses
  %.not29.i.i.i.i = icmp eq i64 %.186.i.i.i.i, 0
  br i1 %.not29.i.i.i.i, label %.critedge.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.critedge.thread.i.i.i.i:                         ; preds = %.critedge.i.i.i.i, %.lr.ph.i.i.i.i, %bb.n, %bb.m, %bb.k, %bb.j, %bb.d, %bb.c
  %.8.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.c ], [ %i.aq, %bb.d ], [ %i.bt, %bb.m ], [ %i.bu, %bb.n ], [ 0, %bb.j ], [ %spec.select33.i.i.i.i, %bb.k ], [ %.7.i.i.i.i, %.critedge.i.i.i.i ], [ %.3100.i.i.i.i, %.lr.ph.i.i.i.i ]
  %sext.i.i.i.i = shl i64 %.2.i.i.i.i, 32
  %i.bv = ashr exact i64 %sext.i.i.i.i, 32
  %i.bw = load i64, ptr %i.r, align 8, !tbaa !37
  %i.bx = icmp ugt i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !231, !nonnull !74, !align !75
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !31 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !232, !nonnull !74, !align !82
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !50 ; 2 uses
  br i1 %i.bx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge.thread.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !233, !nonnull !74
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !42, !range !77, !noundef !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.cg, ptr %i.b, align 1, !tbaa !42
  store i64 %.8.i.i.i.i, ptr %i.c, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %i.q, ptr %3, align 8, !tbaa !44
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.ch, align 8, !tbaa !49
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.b, ptr %i.ci, align 8, !tbaa !46
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE(i64 %i.ca, i64 0, i32 noundef %i.cd, ptr nonnull %3, ptr nonnull @"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS4_11FormatStateEmE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatGPositiveExpSlowImEEvT_ibRKNS3_11FormatStateEEUlNS3_15BinaryToDecimalEE_JS9_EENSt13invoke_resultIS5_JDpT0_EE4typeEOS5_DpOSD_.exit

bb.p:                                             ; preds = %.critedge.thread.i.i.i.i
  %i.cj = load ptr, ptr %i.ai, align 8, !tbaa !55, !nonnull !74, !align !82
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cm = lshr i8 %i.cl, 3
  %.lobit.i.i.i.i = and i8 %i.cm, 1
  %i.cn = xor i8 %.lobit.i.i.i.i, 1
  store i8 %i.cn, ptr %i.a, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %i.q, ptr %2, align 8, !tbaa !44
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.co, align 8, !tbaa !46
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE(i64 %i.ca, i64 0, i32 noundef %i.cd, ptr nonnull %2, ptr nonnull @"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS4_11FormatStateEbE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatGPositiveExpSlowImEEvT_ibRKNS3_11FormatStateEEUlNS3_15BinaryToDecimalEE_JS9_EENSt13invoke_resultIS5_JDpT0_EE4typeEOS5_DpOSD_.exit

_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatGPositiveExpSlowImEEvT_ibRKNS3_11FormatStateEEUlNS3_15BinaryToDecimalEE_JS9_EENSt13invoke_resultIS5_JDpT0_EE4typeEOS5_DpOSD_.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatGNegativeExpSlowImEEvT_ibRKNS4_11FormatStateEEUlNS4_24FractionalDigitGeneratorEE_vJSA_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %class.anon.10, align 8             ; 6 uses
  %3 = alloca %"struct.absl::lts_20260526::str_format_internal::(anonymous namespace)::FormatState", align 8 ; 5 uses
  %.sroa.04.0.copyload.i.i.i = load i8, ptr %1, align 8, !tbaa !25 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !31 ; 2 uses
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.45.0.copyload.i.i.i = load ptr, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !tbaa !53 ; 16 uses
  %.not.i174.i.i.i.i = icmp ne i8 %.sroa.04.0.copyload.i.i.i, 0
  %i.c = icmp ne i64 %.sroa.3.0.copyload.i.i.i, 0
  %i.d = select i1 %.not.i174.i.i.i.i, i1 true, i1 %i.c
  br i1 %i.d, label %.lr.ph.i.i.i.i, label %.thread134.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.c
  %.051177.i.i.i.i = phi i32 [ %i.bv, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %storemerge.lcssa.i165176.i.i.i.i = phi i8 [ %storemerge.lcssa.i.i.i.i.i, %bb.c ], [ %.sroa.04.0.copyload.i.i.i, %bb.a ] ; 3 uses
  %.lcssa163169175.i.i.i.i = phi i64 [ %.lcssa163170.i.i.i.i, %bb.c ], [ %.sroa.3.0.copyload.i.i.i, %bb.a ] ; 9 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.lcssa163169175.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i
  %xtraiter = and i64 %.lcssa163169175.i.i.i.i, 1
  %i.e = icmp eq i64 %.lcssa163169175.i.i.i.i, 1
  br i1 %i.e, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.lcssa163169175.i.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.i.epil.init = phi i64 [ %.lcssa163169175.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ab, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ]
  %.0610.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ai, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod187 = trunc i64 %.lcssa163169175.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod187)
  %i.f = getelementptr [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %.011.i.i.i.i.i.i.epil.init
  %i.g = getelementptr i8, ptr %i.f, i64 -4       ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !50
  %i.i = zext i32 %i.h to i64
  %i.j = mul nuw nsw i64 %i.i, 10
  %i.k = add nuw nsw i64 %i.j, %.0610.i.i.i.i.i.i.epil.init ; 2 uses
  %i.l = trunc i64 %i.k to i32
  store i32 %i.l, ptr %i.g, align 4, !tbaa !50
  %i.m = lshr i64 %i.k, 32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.epil.preheader
  %.lcssa164 = phi i64 [ %i.ai, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ], [ %i.m, %.preheader.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.n = trunc nuw nsw i64 %.lcssa164 to i8
  %i.o = add i64 %.lcssa163169175.i.i.i.i, -1     ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !50
  %i.r = icmp eq i32 %i.q, 0
  %spec.select193.i.i.i.i = select i1 %i.r, i64 %i.o, i64 %.lcssa163169175.i.i.i.i ; 4 uses
  %i.s = icmp eq i64 %.lcssa164, 9
  br i1 %i.s, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %.011.i.i.i.i.i.i = phi i64 [ %.lcssa163169175.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ab, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0610.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ai, %.preheader.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i ]
  %i.t = getelementptr [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %.011.i.i.i.i.i.i
  %i.u = getelementptr i8, ptr %i.t, i64 -4       ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !50
  %i.w = zext i32 %i.v to i64
  %i.x = mul nuw nsw i64 %i.w, 10
  %i.y = add nuw nsw i64 %i.x, %.0610.i.i.i.i.i.i ; 2 uses
  %i.z = trunc i64 %i.y to i32
  store i32 %i.z, ptr %i.u, align 4, !tbaa !50
  %i.aa = lshr i64 %i.y, 32
  %i.ab = add i64 %.011.i.i.i.i.i.i, -2           ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !50
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul nuw nsw i64 %i.ae, 10
  %i.ag = add nuw nsw i64 %i.af, %i.aa            ; 2 uses
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !50
  %i.ai = lshr i64 %i.ag, 32                      ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i
  %i.aj = icmp eq i64 %spec.select193.i.i.i.i, 0
  br i1 %i.aj, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i
  %i.ak = phi i64 [ %spec.select195.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i ], [ %spec.select193.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.al = phi i64 [ %spec.select196.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i ], [ %spec.select193.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 9 uses
  %.sroa.2.010.i.i.i.i.i = phi i64 [ %i.am, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.am = add i64 %.sroa.2.010.i.i.i.i.i, 1       ; 3 uses
  %.not.i2.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i2.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i, label %.preheader.i3.i.i.i.i.i.preheader

.preheader.i3.i.i.i.i.i.preheader:                ; preds = %.lr.ph.split.i.i.i.i.i
  %xtraiter188 = and i64 %i.al, 1
  %i.an = icmp eq i64 %i.al, 1
  br i1 %i.an, label %.preheader.i3.i.i.i.i.i.epil.preheader, label %.preheader.i3.i.i.i.i.i.preheader.new

.preheader.i3.i.i.i.i.i.preheader.new:            ; preds = %.preheader.i3.i.i.i.i.i.preheader
  %unroll_iter192 = and i64 %i.al, -2
  br label %.preheader.i3.i.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i3.i.i.i.i.i
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i, label %.preheader.i3.i.i.i.i.i.epil.preheader

.preheader.i3.i.i.i.i.i.epil.preheader:           ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa, %.preheader.i3.i.i.i.i.i.preheader
  %.011.i4.i.i.i.i.i.epil.init = phi i64 [ %i.al, %.preheader.i3.i.i.i.i.i.preheader ], [ %i.bj, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ]
  %.0610.i5.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader ], [ %i.bq, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod191 = trunc i64 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod191)
  %i.ao = getelementptr [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %.011.i4.i.i.i.i.i.epil.init
  %i.ap = getelementptr i8, ptr %i.ao, i64 -4     ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !50
  %i.ar = zext i32 %i.aq to i64
  %i.as = mul nuw nsw i64 %i.ar, 10
  %i.at = add nuw nsw i64 %i.as, %.0610.i5.i.i.i.i.i.epil.init ; 2 uses
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %i.ap, align 4, !tbaa !50
  %i.av = lshr i64 %i.at, 32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa, %.preheader.i3.i.i.i.i.i.epil.preheader
  %.lcssa165 = phi i64 [ %i.bq, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ], [ %i.av, %.preheader.i3.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.aw = add i64 %i.al, -1                       ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !50
  %i.az = icmp eq i32 %i.ay, 0                    ; 2 uses
  %spec.select195.i.i.i.i = select i1 %i.az, i64 %i.aw, i64 %i.ak ; 2 uses
  %spec.select196.i.i.i.i = select i1 %i.az, i64 %i.aw, i64 %i.al
  %i.ba = icmp eq i64 %.lcssa165, 9
  br i1 %i.ba, label %.lr.ph.split.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i, !llvm.loop !10

.preheader.i3.i.i.i.i.i:                          ; preds = %.preheader.i3.i.i.i.i.i, %.preheader.i3.i.i.i.i.i.preheader.new
  %.011.i4.i.i.i.i.i = phi i64 [ %i.al, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %i.bj, %.preheader.i3.i.i.i.i.i ] ; 2 uses
  %.0610.i5.i.i.i.i.i = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %i.bq, %.preheader.i3.i.i.i.i.i ]
  %niter193 = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %niter193.next.1, %.preheader.i3.i.i.i.i.i ]
  %i.bb = getelementptr [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %.011.i4.i.i.i.i.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 -4     ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !50
  %i.be = zext i32 %i.bd to i64
  %i.bf = mul nuw nsw i64 %i.be, 10
  %i.bg = add nuw nsw i64 %i.bf, %.0610.i5.i.i.i.i.i ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  store i32 %i.bh, ptr %i.bc, align 4, !tbaa !50
  %i.bi = lshr i64 %i.bg, 32
  %i.bj = add i64 %.011.i4.i.i.i.i.i, -2          ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !50
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul nuw nsw i64 %i.bm, 10
  %i.bo = add nuw nsw i64 %i.bn, %i.bi            ; 2 uses
  %i.bp = trunc i64 %i.bo to i32
  store i32 %i.bp, ptr %i.bk, align 4, !tbaa !50
  %i.bq = lshr i64 %i.bo, 32                      ; 3 uses
  %niter193.next.1 = add nuw i64 %niter193, 2     ; 2 uses
  %niter193.ncmp.1 = icmp eq i64 %niter193.next.1, %unroll_iter192
  br i1 %niter193.ncmp.1, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa, label %.preheader.i3.i.i.i.i.i, !llvm.loop !9

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i
  %i.br = trunc nuw nsw i64 %.lcssa165 to i8
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.lcssa163170.i.i.i.i = phi i64 [ %spec.select193.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ], [ %spec.select195.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i ], [ %i.ak, %.lr.ph.split.i.i.i.i.i ] ; 4 uses
  %storemerge.lcssa.i.i.i.i.i = phi i8 [ %i.n, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ], [ %i.br, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i ], [ 0, %.lr.ph.split.i.i.i.i.i ] ; 4 uses
  %.sroa.2.0.lcssa.i.i.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ], [ %i.am, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i ], [ %i.am, %.lr.ph.split.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %storemerge.lcssa.i165176.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %.loopexit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.not128.i.i.i.i = icmp eq i8 %storemerge.lcssa.i165176.i.i.i.i, 0
  br i1 %.not128.i.i.i.i, label %.thread.i.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i
  %.val82226.i.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i ], [ %.lcssa163170.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i ]
  %.val81223.i.i.i.i = phi i8 [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i ], [ %storemerge.lcssa.i.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i ]
  %.sroa.2.0.lcssa.i130.i.i.i.i = phi i64 [ 1, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i ], [ %.sroa.2.0.lcssa.i.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i ]
  %i.bs = sext i8 %storemerge.lcssa.i165176.i.i.i.i to i32
  br label %.thread134.i.i.i.i

bb.b:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i
  %.not63.i.i.i.i = icmp eq i64 %.sroa.2.0.lcssa.i.i.i.i.i, 0
  br i1 %.not63.i.i.i.i, label %bb.c, label %.thread.loopexit.i.i.i.i

.thread.loopexit.i.i.i.i:                         ; preds = %bb.b
  %i.bt = add i64 %.sroa.2.0.lcssa.i.i.i.i.i, -1
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.thread.loopexit.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i
  %.val82227.i.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i ], [ %.lcssa163170.i.i.i.i, %.thread.loopexit.i.i.i.i ]
  %.val81224.i.i.i.i = phi i8 [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i ], [ %storemerge.lcssa.i.i.i.i.i, %.thread.loopexit.i.i.i.i ]
  %.sroa.2.0.lcssa.i129133.i.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.thread.i.i.i.i ], [ %i.bt, %.thread.loopexit.i.i.i.i ]
  %i.bu = add nuw nsw i32 %.051177.i.i.i.i, 1
  br label %.thread134.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.bv = add nuw nsw i32 %.051177.i.i.i.i, 1     ; 2 uses
  %.not.i.i.i.i.i = icmp ne i8 %storemerge.lcssa.i.i.i.i.i, 0
  %i.bw = icmp ne i64 %.lcssa163170.i.i.i.i, 0
  %i.bx = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.bw
  br i1 %i.bx, label %.lr.ph.i.i.i.i, label %.thread134.i.i.i.i

.thread134.i.i.i.i:                               ; preds = %bb.c, %.thread.i.i.i.i, %.loopexit.i.i.i.i, %bb.a
  %.val82.i.i.i.i = phi i64 [ %.val82226.i.i.i.i, %.loopexit.i.i.i.i ], [ %.val82227.i.i.i.i, %.thread.i.i.i.i ], [ 0, %bb.a ], [ 0, %bb.c ] ; 4 uses
  %.val81.i.i.i.i = phi i8 [ %.val81223.i.i.i.i, %.loopexit.i.i.i.i ], [ %.val81224.i.i.i.i, %.thread.i.i.i.i ], [ 0, %bb.a ], [ 0, %bb.c ] ; 4 uses
  %.253.i.i.i.i = phi i32 [ %.051177.i.i.i.i, %.loopexit.i.i.i.i ], [ %i.bu, %.thread.i.i.i.i ], [ 0, %bb.a ], [ %i.bv, %bb.c ] ; 3 uses
  %.245.i.i.i.i = phi i64 [ %.sroa.2.0.lcssa.i130.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.2.0.lcssa.i129133.i.i.i.i, %.thread.i.i.i.i ], [ 0, %bb.a ], [ 0, %bb.c ] ; 4 uses
  %.2.i.i.i.i = phi i32 [ %i.bs, %.loopexit.i.i.i.i ], [ 9, %.thread.i.i.i.i ], [ 0, %bb.a ], [ 0, %bb.c ] ; 4 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !235, !nonnull !74, !align !75 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !37 ; 6 uses
  %.not64.i.i.i.i = icmp ult i64 %.245.i.i.i.i, %i.ca
  br i1 %.not64.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread134.i.i.i.i
  %i.cb = icmp ne i64 %.245.i.i.i.i, %i.ca
  %i.cc = icmp sgt i8 %.val81.i.i.i.i, 5
  %or.cond283.i.i.i.i = select i1 %i.cb, i1 true, i1 %i.cc
  br i1 %or.cond283.i.i.i.i, label %.critedge72.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.d
  %i.cd = icmp eq i8 %.val81.i.i.i.i, 5
  %i.ce = icmp ne i64 %.val82.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %spec.select.i.i.i.i.i, label %.critedge72.i.i.i.i, label %bb.e

.critedge72.i.i.i.i:                              ; preds = %.split.i.i.i.i, %bb.d
  %i.cf = icmp eq i32 %.2.i.i.i.i, 9
  %i.cg = add nsw i32 %.2.i.i.i.i, 1
  %i.ch = select i1 %i.cf, i32 1, i32 %i.cg       ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 1
  %.neg.i.i.i.i = sext i1 %i.ci to i32
  %i.cj = add i32 %.253.i.i.i.i, %.neg.i.i.i.i
  br label %bb.e

bb.e:                                             ; preds = %.critedge72.i.i.i.i, %.split.i.i.i.i, %.thread134.i.i.i.i
  %.455.i.i.i.i = phi i32 [ %.253.i.i.i.i, %.thread134.i.i.i.i ], [ %i.cj, %.critedge72.i.i.i.i ], [ %.253.i.i.i.i, %.split.i.i.i.i ] ; 2 uses
  %.147.i.i.i.i = phi i64 [ 0, %.thread134.i.i.i.i ], [ %i.ca, %.critedge72.i.i.i.i ], [ 0, %.split.i.i.i.i ] ; 2 uses
  %.4.i.i.i.i = phi i32 [ %.2.i.i.i.i, %.thread134.i.i.i.i ], [ %i.ch, %.critedge72.i.i.i.i ], [ %.2.i.i.i.i, %.split.i.i.i.i ]
  %i.ck = add i64 %i.ca, 1                        ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !55, !nonnull !74, !align !82
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !24
  %i.cp = and i8 %i.co, 8
  %i.cq = icmp ne i8 %i.cp, 0                     ; 3 uses
  %spec.select.i.i.i.i = select i1 %i.cq, i64 0, i64 %.147.i.i.i.i
  %i.cr = icmp ne i64 %.147.i.i.i.i, 0
  %or.cond.i.i.i.i = or i1 %i.cr, %i.cq
  br i1 %or.cond.i.i.i.i, label %.critedge.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cs = icmp eq i32 %.4.i.i.i.i, 0
  %i.ct = zext i1 %i.cs to i64                    ; 3 uses
  %i.cu = add i64 %.245.i.i.i.i, 1
  %.not66184.not.i.i.i.i = icmp ugt i64 %i.ck, %i.cu
  br i1 %.not66184.not.i.i.i.i, label %.lr.ph187.i.i.i.i, label %.critedge.i.i.i.i

.lr.ph187.i.i.i.i:                                ; preds = %bb.f
  %i.cv = sub i64 %i.ca, %.245.i.i.i.i            ; 2 uses
  %.not.i87.i38.i.i.i = icmp ne i8 %.val81.i.i.i.i, 0
  %i.cw = icmp ne i64 %.val82.i.i.i.i, 0
  %i.cx = select i1 %.not.i87.i38.i.i.i, i1 true, i1 %i.cw
  br i1 %i.cx, label %.lr.ph.i.i.i, label %.critedge.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph187.i.i.i.i, %bb.l
  %.0122185.i43.i.i.i = phi i64 [ %i.gf, %bb.l ], [ %i.cv, %.lr.ph187.i.i.i.i ] ; 5 uses
  %.349186.i42.i.i.i = phi i64 [ %.450.i.i.i.i, %bb.l ], [ %i.ct, %.lr.ph187.i.i.i.i ] ; 2 uses
  %.val.i41.i.i.i = phi i8 [ %storemerge.lcssa.i94.i.i.i.i, %bb.l ], [ %.val81.i.i.i.i, %.lr.ph187.i.i.i.i ] ; 3 uses
  %.val74.i40.i.i.i = phi i64 [ %.val74232.i.i.i.i, %bb.l ], [ %.val82.i.i.i.i, %.lr.ph187.i.i.i.i ] ; 9 uses
  %.val78237.i39.i.i.i = phi i64 [ %.val78.i.i.i.i, %bb.l ], [ %.val82.i.i.i.i, %.lr.ph187.i.i.i.i ] ; 2 uses
  %.not.i.i88.i.i.i.i = icmp eq i64 %.val74.i40.i.i.i, 0
  br i1 %.not.i.i88.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit107.i.i.i.i, label %.preheader.i.i89.i.i.i.i.preheader

.preheader.i.i89.i.i.i.i.preheader:               ; preds = %.lr.ph.i.i.i
  %xtraiter194 = and i64 %.val74.i40.i.i.i, 1
  %i.cy = icmp eq i64 %.val74.i40.i.i.i, 1
  br i1 %i.cy, label %.preheader.i.i89.i.i.i.i.epil.preheader, label %.preheader.i.i89.i.i.i.i.preheader.new

.preheader.i.i89.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i89.i.i.i.i.preheader
  %unroll_iter198 = and i64 %.val74.i40.i.i.i, -2
  br label %.preheader.i.i89.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i93.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i89.i.i.i.i
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i93.i.i.i.i, label %.preheader.i.i89.i.i.i.i.epil.preheader

.preheader.i.i89.i.i.i.i.epil.preheader:          ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i93.i.i.i.i.unr-lcssa, %.preheader.i.i89.i.i.i.i.preheader
  %.011.i.i90.i.i.i.i.epil.init = phi i64 [ %.val74.i40.i.i.i, %.preheader.i.i89.i.i.i.i.preheader ], [ %i.dv, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i93.i.i.i.i.unr-lcssa ]
  %.0610.i.i91.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i89.i.i.i.i.preheader ], [ %i.ec, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i93.i.i.i.i.unr-lcssa ]
  %lcmp.mod197 = trunc i64 %.val74.i40.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod197)
  %i.cz = getelementptr [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %.011.i.i90.i.i.i.i.epil.init
  %i.da = getelementptr i8, ptr %i.cz, i64 -4     ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !50
  %i.dc = zext i32 %i.db to i64
  %i.dd = mul nuw nsw i64 %i.dc, 10
  %i.de = add nuw nsw i64 %i.dd, %.0610.i.i91.i.i.i.i.epil.init ; 2 uses
  %i.df = trunc i64 %i.de to i32
  store i32 %i.df, ptr %i.da, align 4, !tbaa !50
  %i.dg = lshr i64 %i.de, 32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i93.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i93.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i93.i.i.i.i.unr-lcssa, %.preheader.i.i89.i.i.i.i.epil.preheader
  %.lcssa = phi i64 [ %i.ec, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i93.i.i.i.i.unr-lcssa ], [ %i.dg, %.preheader.i.i89.i.i.i.i.epil.preheader ] ; 2 uses
  %i.dh = trunc nuw nsw i64 %.lcssa to i8
  %i.di = add i64 %.val74.i40.i.i.i, -1           ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !50
  %i.dl = icmp eq i32 %i.dk, 0                    ; 2 uses
  %spec.select284.i.i.i.i = select i1 %i.dl, i64 %i.di, i64 %.val78237.i39.i.i.i ; 3 uses
  %spec.select285.i.i.i.i = select i1 %i.dl, i64 %i.di, i64 %.val74.i40.i.i.i ; 4 uses
  %i.dm = icmp eq i64 %.lcssa, 9
  br i1 %i.dm, label %.lr.ph.i98.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit107.i.i.i.i

.preheader.i.i89.i.i.i.i:                         ; preds = %.preheader.i.i89.i.i.i.i, %.preheader.i.i89.i.i.i.i.preheader.new
  %.011.i.i90.i.i.i.i = phi i64 [ %.val74.i40.i.i.i, %.preheader.i.i89.i.i.i.i.preheader.new ], [ %i.dv, %.preheader.i.i89.i.i.i.i ] ; 2 uses
  %.0610.i.i91.i.i.i.i = phi i64 [ 0, %.preheader.i.i89.i.i.i.i.preheader.new ], [ %i.ec, %.preheader.i.i89.i.i.i.i ]
  %niter199 = phi i64 [ 0, %.preheader.i.i89.i.i.i.i.preheader.new ], [ %niter199.next.1, %.preheader.i.i89.i.i.i.i ]
  %i.dn = getelementptr [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %.011.i.i90.i.i.i.i
  %i.do = getelementptr i8, ptr %i.dn, i64 -4     ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !50
  %i.dq = zext i32 %i.dp to i64
  %i.dr = mul nuw nsw i64 %i.dq, 10
  %i.ds = add nuw nsw i64 %i.dr, %.0610.i.i91.i.i.i.i ; 2 uses
  %i.dt = trunc i64 %i.ds to i32
  store i32 %i.dt, ptr %i.do, align 4, !tbaa !50
  %i.du = lshr i64 %i.ds, 32
  %i.dv = add i64 %.011.i.i90.i.i.i.i, -2         ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %i.dv ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !50
  %i.dy = zext i32 %i.dx to i64
  %i.dz = mul nuw nsw i64 %i.dy, 10
  %i.ea = add nuw nsw i64 %i.dz, %i.du            ; 2 uses
  %i.eb = trunc i64 %i.ea to i32
  store i32 %i.eb, ptr %i.dw, align 4, !tbaa !50
  %i.ec = lshr i64 %i.ea, 32                      ; 3 uses
  %niter199.next.1 = add nuw i64 %niter199, 2     ; 2 uses
  %niter199.ncmp.1 = icmp eq i64 %niter199.next.1, %unroll_iter198
  br i1 %niter199.ncmp.1, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i93.i.i.i.i.unr-lcssa, label %.preheader.i.i89.i.i.i.i, !llvm.loop !9

.lr.ph.i98.i.i.i.i:                               ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i93.i.i.i.i
  %i.ed = icmp eq i64 %spec.select285.i.i.i.i, 0
  br i1 %i.ed, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit107.i.i.i.i, label %.lr.ph.split.i99.i.i.i.i

.lr.ph.split.i99.i.i.i.i:                         ; preds = %.lr.ph.i98.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i106.i.i.i.i
  %.val78239.i.i.i.i = phi i64 [ %.val78240.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i106.i.i.i.i ], [ %spec.select284.i.i.i.i, %.lr.ph.i98.i.i.i.i ] ; 2 uses
  %.val74230.i.i.i.i = phi i64 [ %.val74229.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i106.i.i.i.i ], [ %spec.select285.i.i.i.i, %.lr.ph.i98.i.i.i.i ] ; 2 uses
  %i.ee = phi i64 [ %i.et, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i106.i.i.i.i ], [ %spec.select285.i.i.i.i, %.lr.ph.i98.i.i.i.i ] ; 9 uses
  %.sroa.2.010.i100.i.i.i.i = phi i64 [ %i.ef, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i106.i.i.i.i ], [ 0, %.lr.ph.i98.i.i.i.i ]
  %i.ef = add i64 %.sroa.2.010.i100.i.i.i.i, 1    ; 3 uses
  %.not.i2.i101.i.i.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i2.i101.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit107.i.i.i.i, label %.preheader.i3.i102.i.i.i.i.preheader

.preheader.i3.i102.i.i.i.i.preheader:             ; preds = %.lr.ph.split.i99.i.i.i.i
  %xtraiter200 = and i64 %i.ee, 1
  %i.eg = icmp eq i64 %i.ee, 1
  br i1 %i.eg, label %.preheader.i3.i102.i.i.i.i.epil.preheader, label %.preheader.i3.i102.i.i.i.i.preheader.new

.preheader.i3.i102.i.i.i.i.preheader.new:         ; preds = %.preheader.i3.i102.i.i.i.i.preheader
  %unroll_iter204 = and i64 %i.ee, -2
  br label %.preheader.i3.i102.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i106.i.i.i.i.unr-lcssa: ; preds = %.preheader.i3.i102.i.i.i.i
  %lcmp.mod201.not = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod201.not, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i106.i.i.i.i, label %.preheader.i3.i102.i.i.i.i.epil.preheader

.preheader.i3.i102.i.i.i.i.epil.preheader:        ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i106.i.i.i.i.unr-lcssa, %.preheader.i3.i102.i.i.i.i.preheader
  %.011.i4.i103.i.i.i.i.epil.init = phi i64 [ %i.ee, %.preheader.i3.i102.i.i.i.i.preheader ], [ %i.fd, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i106.i.i.i.i.unr-lcssa ]
  %.0610.i5.i104.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i3.i102.i.i.i.i.preheader ], [ %i.fk, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i106.i.i.i.i.unr-lcssa ]
  %lcmp.mod203 = trunc i64 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod203)
  %i.eh = getelementptr [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %.011.i4.i103.i.i.i.i.epil.init
  %i.ei = getelementptr i8, ptr %i.eh, i64 -4     ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !50
  %i.ek = zext i32 %i.ej to i64
  %i.el = mul nuw nsw i64 %i.ek, 10
  %i.em = add nuw nsw i64 %i.el, %.0610.i5.i104.i.i.i.i.epil.init ; 2 uses
  %i.en = trunc i64 %i.em to i32
  store i32 %i.en, ptr %i.ei, align 4, !tbaa !50
  %i.eo = lshr i64 %i.em, 32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i106.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i106.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i106.i.i.i.i.unr-lcssa, %.preheader.i3.i102.i.i.i.i.epil.preheader
  %.lcssa150 = phi i64 [ %i.fk, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i106.i.i.i.i.unr-lcssa ], [ %i.eo, %.preheader.i3.i102.i.i.i.i.epil.preheader ] ; 2 uses
  %i.ep = add i64 %i.ee, -1                       ; 4 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !50
  %i.es = icmp eq i32 %i.er, 0                    ; 3 uses
  %.val78240.i.i.i.i = select i1 %i.es, i64 %i.ep, i64 %.val78239.i.i.i.i ; 2 uses
  %.val74229.i.i.i.i = select i1 %i.es, i64 %i.ep, i64 %.val74230.i.i.i.i ; 2 uses
  %i.et = select i1 %i.es, i64 %i.ep, i64 %i.ee
  %i.eu = icmp eq i64 %.lcssa150, 9
  br i1 %i.eu, label %.lr.ph.split.i99.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit107.loopexit.split.loop.exit.i.i.i.i, !llvm.loop !10

.preheader.i3.i102.i.i.i.i:                       ; preds = %.preheader.i3.i102.i.i.i.i, %.preheader.i3.i102.i.i.i.i.preheader.new
  %.011.i4.i103.i.i.i.i = phi i64 [ %i.ee, %.preheader.i3.i102.i.i.i.i.preheader.new ], [ %i.fd, %.preheader.i3.i102.i.i.i.i ] ; 2 uses
  %.0610.i5.i104.i.i.i.i = phi i64 [ 0, %.preheader.i3.i102.i.i.i.i.preheader.new ], [ %i.fk, %.preheader.i3.i102.i.i.i.i ]
  %niter205 = phi i64 [ 0, %.preheader.i3.i102.i.i.i.i.preheader.new ], [ %niter205.next.1, %.preheader.i3.i102.i.i.i.i ]
  %i.ev = getelementptr [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %.011.i4.i103.i.i.i.i
  %i.ew = getelementptr i8, ptr %i.ev, i64 -4     ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !50
  %i.ey = zext i32 %i.ex to i64
  %i.ez = mul nuw nsw i64 %i.ey, 10
  %i.fa = add nuw nsw i64 %i.ez, %.0610.i5.i104.i.i.i.i ; 2 uses
  %i.fb = trunc i64 %i.fa to i32
  store i32 %i.fb, ptr %i.ew, align 4, !tbaa !50
  %i.fc = lshr i64 %i.fa, 32
  %i.fd = add i64 %.011.i4.i103.i.i.i.i, -2       ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.45.0.copyload.i.i.i, i64 %i.fd ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !50
  %i.fg = zext i32 %i.ff to i64
  %i.fh = mul nuw nsw i64 %i.fg, 10
  %i.fi = add nuw nsw i64 %i.fh, %i.fc            ; 2 uses
  %i.fj = trunc i64 %i.fi to i32
  store i32 %i.fj, ptr %i.fe, align 4, !tbaa !50
  %i.fk = lshr i64 %i.fi, 32                      ; 3 uses
  %niter205.next.1 = add nuw i64 %niter205, 2     ; 2 uses
  %niter205.ncmp.1 = icmp eq i64 %niter205.next.1, %unroll_iter204
  br i1 %niter205.ncmp.1, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i106.i.i.i.i.unr-lcssa, label %.preheader.i3.i102.i.i.i.i, !llvm.loop !9

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit107.loopexit.split.loop.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i106.i.i.i.i
  %i.fl = trunc nuw nsw i64 %.lcssa150 to i8
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit107.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit107.i.i.i.i: ; preds = %.lr.ph.split.i99.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit107.loopexit.split.loop.exit.i.i.i.i, %.lr.ph.i98.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i93.i.i.i.i, %.lr.ph.i.i.i
  %.val78.i.i.i.i = phi i64 [ %spec.select284.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i93.i.i.i.i ], [ %.val78237.i39.i.i.i, %.lr.ph.i.i.i ], [ %spec.select284.i.i.i.i, %.lr.ph.i98.i.i.i.i ], [ %.val78240.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit107.loopexit.split.loop.exit.i.i.i.i ], [ %.val78239.i.i.i.i, %.lr.ph.split.i99.i.i.i.i ] ; 3 uses
  %.val74232.i.i.i.i = phi i64 [ %spec.select285.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i93.i.i.i.i ], [ 0, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i98.i.i.i.i ], [ %.val74229.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit107.loopexit.split.loop.exit.i.i.i.i ], [ %.val74230.i.i.i.i, %.lr.ph.split.i99.i.i.i.i ] ; 2 uses
  %storemerge.lcssa.i94.i.i.i.i = phi i8 [ %i.dh, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i93.i.i.i.i ], [ 0, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i98.i.i.i.i ], [ %i.fl, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit107.loopexit.split.loop.exit.i.i.i.i ], [ 0, %.lr.ph.split.i99.i.i.i.i ] ; 4 uses
  %.sroa.2.0.lcssa.i95.i.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i93.i.i.i.i ], [ 0, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i98.i.i.i.i ], [ %i.ef, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit107.loopexit.split.loop.exit.i.i.i.i ], [ %i.ef, %.lr.ph.split.i99.i.i.i.i ] ; 3 uses
  %i.fm = add i64 %.sroa.2.0.lcssa.i95.i.i.i.i, 1 ; 3 uses
  %i.fn = icmp ult i64 %i.fm, %.0122185.i43.i.i.i
  br i1 %i.fn, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit107.i.i.i.i
  %i.fo = icmp ugt i64 %i.fm, %.0122185.i43.i.i.i
  %i.fp = icmp sgt i8 %storemerge.lcssa.i94.i.i.i.i, 5
  %or.cond286.i.i.i.i = select i1 %i.fo, i1 true, i1 %i.fp
  br i1 %or.cond286.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit109.thread.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit109.i.i.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit109.i.i.i.i: ; preds = %bb.g
  %i.fq = icmp eq i8 %storemerge.lcssa.i94.i.i.i.i, 5 ; 2 uses
  %i.fr = icmp ne i64 %.val78.i.i.i.i, 0
  %spec.select.i108.i.i.i.i = select i1 %i.fq, i1 %i.fr, i1 false
  br i1 %spec.select.i108.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit109.thread.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit109.i.i.i.i
  %.not.i110.i.i.i.i = icmp eq i64 %.val78.i.i.i.i, 0
  %i.fs = select i1 %i.fq, i1 %.not.i110.i.i.i.i, i1 false
end_hunk_1
