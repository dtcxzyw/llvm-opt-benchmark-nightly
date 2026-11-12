Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/float_conversion?download=true
inline.NumInlined: 822
inline.NumDeleted: 310
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS4_11FormatStateEbE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
  %i.gs = insertelement <4 x i32> poison, i32 %i.gj, i64 0
  %i.gt = shufflevector <4 x i32> %i.gs, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gu = udiv <4 x i32> %i.gt, <i32 10000, i32 1000, i32 100, i32 10>
  %i.gv = urem <4 x i32> %i.gu, splat (i32 10)
  %i.gw = trunc nuw nsw <4 x i32> %i.gv to <4 x i8>
  %i.gx = udiv i32 %i.gj, 100000
  %.lhs.trunc.i.i.i.i.i = trunc nuw i32 %i.gx to i16
  %i.gy = udiv i32 %i.gj, 1000000
  %.lhs.trunc7.i.i.i.i.i = trunc nuw nsw i32 %i.gy to i16
  %i.gz = insertelement <2 x i16> poison, i16 %.lhs.trunc7.i.i.i.i.i, i64 0
  %i.ha = insertelement <2 x i16> %i.gz, i16 %.lhs.trunc.i.i.i.i.i, i64 1
  %i.hb = urem <2 x i16> %i.ha, splat (i16 10)
  %i.hc = insertelement <8 x i8> poison, i8 %i.gr, i64 0
  %i.hd = insertelement <8 x i8> %i.hc, i8 %i.gp, i64 1
  %i.he = shufflevector <4 x i8> %i.gw, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = shufflevector <8 x i8> %i.hd, <8 x i8> %i.he, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.hg = shufflevector <2 x i16> %i.hb, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hh = trunc nuw nsw <8 x i16> %i.hg to <8 x i8>
  %i.hi = shufflevector <8 x i8> %i.hf, <8 x i8> %i.hh, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.hj = or disjoint <8 x i8> %i.hi, splat (i8 48)
  store <8 x i8> %i.hj, ptr %i.da, align 8, !tbaa !25
  store i64 9, ptr %i.f, align 8, !tbaa !71
  br label %bb.p, !llvm.loop !134

.loopexit:                                        ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel
  %i.hk = load ptr, ptr %0, align 8, !tbaa !136   ; 5 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 8
  %.val.i.i.i.i = load i64, ptr %i.hl, align 8, !tbaa !37
  %.not.i29.i.i.i.i = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %.not.i29.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i: ; preds = %.loopexit
  %i.hm = getelementptr i8, ptr %i.hk, i64 16
  %.val2.i.i.i.i = load ptr, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 1
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !24
  %i.hp = and i8 %i.ho, 8
  %.not67.i.i.i.i = icmp eq i8 %i.hp, 0
  br i1 %.not67.i.i.i.i, label %bb.t, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i: ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i, %.loopexit
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !138, !nonnull !74
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !42, !range !77, !noundef !74
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !39 ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !59
  %i.hy = add i64 %i.hx, 1
  store i64 %i.hy, ptr %i.hw, align 8, !tbaa !59
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 1056
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 24 ; 4 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !60 ; 2 uses
  %i.ic = icmp eq ptr %i.hz, %i.ib
  br i1 %i.ic, label %.lr.ph.i34.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i

.lr.ph.i34.i.i.i.i:                               ; preds = %bb.s
  %i.id = getelementptr inbounds nuw i8, ptr %i.hv, i64 32 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !61
  %i.ig = load ptr, ptr %i.hv, align 8, !tbaa !62
  call void %i.if(ptr noundef %i.ig, i64 1024, ptr nonnull %i.id), !inline_history !131
  store ptr %i.id, ptr %i.ia, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i: ; preds = %.lr.ph.i34.i.i.i.i, %bb.s
  %.lcssa.i33.i.i.i.i = phi ptr [ %i.ib, %bb.s ], [ %i.id, %.lr.ph.i34.i.i.i.i ]
  store i8 46, ptr %.lcssa.i33.i.i.i.i, align 1
  %i.ih = load ptr, ptr %i.ia, align 8, !tbaa !60
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  store ptr %i.ii, ptr %i.ia, align 8, !tbaa !60
  %.pre77.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !136
  br label %bb.t

bb.t:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i
  %.pre77.i.i.i.i = phi ptr [ %.pre77.pre.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i ], [ %i.hk, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i ], [ %i.hk, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i ] ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !138, !nonnull !74
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !42, !range !77, !noundef !74
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.in = getelementptr inbounds nuw i8, ptr %.pre77.i.i.i.i, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !39 ; 7 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.pre77.i.i.i.i, i64 8
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !37 ; 5 uses
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !59
  %i.iu = add i64 %i.it, %i.iq
  store i64 %i.iu, ptr %i.is, align 8, !tbaa !59
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 1056 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.io, i64 24 ; 8 uses
  %i.ix = ptrtoint ptr %i.iv to i64               ; 2 uses
  %i.iy = load ptr, ptr %i.iw, align 8, !tbaa !60 ; 4 uses
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = sub i64 %i.ix, %i.iz                    ; 4 uses
  %i.jb = icmp ugt i64 %i.iq, %i.ja
  br i1 %i.jb, label %.lr.ph.i44.i.i.i.i, label %._crit_edge.i41.i.i.i.i

.lr.ph.i44.i.i.i.i:                               ; preds = %bb.v
  %i.jc = getelementptr inbounds nuw i8, ptr %i.io, i64 32 ; 8 uses
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 2 uses
  %i.jf = sub nuw i64 %i.iq, %i.ja                ; 3 uses
  %.not.peel.i45.i.i.i.i = icmp eq ptr %i.iv, %i.iy
  br i1 %.not.peel.i45.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i44.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.iy, i8 48, i64 %i.ja, i1 false)
  %i.jg = load ptr, ptr %i.iw, align 8, !tbaa !60
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.ja ; 2 uses
  store ptr %i.jh, ptr %i.iw, align 8, !tbaa !60
  %.pre.i46.i.i.i.i = ptrtoint ptr %i.jh to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i44.i.i.i.i
  %.pre-phi.i47.i.i.i.i = phi i64 [ %.pre.i46.i.i.i.i, %bb.w ], [ %i.ix, %.lr.ph.i44.i.i.i.i ]
  %i.ji = sub i64 %.pre-phi.i47.i.i.i.i, %i.jd
  %i.jj = load ptr, ptr %i.je, align 8, !tbaa !61
  %i.jk = load ptr, ptr %i.io, align 8, !tbaa !62
  call void %i.jj(ptr noundef %i.jk, i64 %i.ji, ptr nonnull %i.jc), !inline_history !131
  store ptr %i.jc, ptr %i.iw, align 8, !tbaa !60
  %i.jl = icmp ugt i64 %i.jf, 1024
  br i1 %i.jl, label %.peel.next.i48.i.i.i.i, label %._crit_edge.i41.i.i.i.i

.peel.next.i48.i.i.i.i:                           ; preds = %bb.x, %.peel.next.i48.i.i.i.i
  %.010.i49.i.i.i.i = phi i64 [ %i.jm, %.peel.next.i48.i.i.i.i ], [ %i.jf, %bb.x ]
  %i.jm = add i64 %.010.i49.i.i.i.i, -1024        ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.jc, i8 48, i64 1024, i1 false)
  store ptr %i.iv, ptr %i.iw, align 8, !tbaa !60
  %i.jn = load ptr, ptr %i.je, align 8, !tbaa !61
  %i.jo = load ptr, ptr %i.io, align 8, !tbaa !62
  call void %i.jn(ptr noundef %i.jo, i64 1024, ptr nonnull %i.jc), !inline_history !131
  store ptr %i.jc, ptr %i.iw, align 8, !tbaa !60
  %i.jp = icmp ugt i64 %i.jm, 1024
  br i1 %i.jp, label %.peel.next.i48.i.i.i.i, label %._crit_edge.i41.i.i.i.i, !llvm.loop !7

._crit_edge.i41.i.i.i.i:                          ; preds = %.peel.next.i48.i.i.i.i, %bb.x, %bb.v
  %.0.lcssa.i42.i.i.i.i = phi i64 [ %i.iq, %bb.v ], [ %i.jf, %bb.x ], [ %i.jm, %.peel.next.i48.i.i.i.i ] ; 2 uses
  %.lcssa.i43.i.i.i.i = phi ptr [ %i.iy, %bb.v ], [ %i.jc, %bb.x ], [ %i.jc, %.peel.next.i48.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i43.i.i.i.i, i8 48, i64 %.0.lcssa.i42.i.i.i.i, i1 false)
  %i.jq = load ptr, ptr %i.iw, align 8, !tbaa !60
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0.lcssa.i42.i.i.i.i
  store ptr %i.jr, ptr %i.iw, align 8, !tbaa !60
  %.pre76.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !136
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i: ; preds = %._crit_edge.i41.i.i.i.i, %bb.u, %bb.t
  %i.js = phi ptr [ %.pre76.i.i.i.i, %._crit_edge.i41.i.i.i.i ], [ %.pre77.i.i.i.i, %bb.u ], [ %.pre77.i.i.i.i, %bb.t ]
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !39 ; 7 uses
  %i.jv = icmp eq i64 %.sroa.10.065.i.i.i.i, 0
  br i1 %i.jv, label %"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS1_7uint128EiRKNS3_11FormatStateEbE3$_0JNS3_15BinaryToDecimalEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit", label %bb.y

bb.y:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 16 ; 2 uses
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !59
  %i.jy = add i64 %i.jx, %.sroa.10.065.i.i.i.i
  store i64 %i.jy, ptr %i.jw, align 8, !tbaa !59
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 1056 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ju, i64 24 ; 8 uses
  %i.kb = ptrtoint ptr %i.jz to i64               ; 2 uses
  %i.kc = load ptr, ptr %i.ka, align 8, !tbaa !60 ; 4 uses
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = sub i64 %i.kb, %i.kd                    ; 4 uses
  %i.kf = icmp ugt i64 %.sroa.10.065.i.i.i.i, %i.ke
  br i1 %i.kf, label %.lr.ph.i54.i.i.i.i, label %._crit_edge.i51.i.i.i.i

.lr.ph.i54.i.i.i.i:                               ; preds = %bb.y
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ju, i64 32 ; 8 uses
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 2 uses
  %i.kj = sub nuw nsw i64 %.sroa.10.065.i.i.i.i, %i.ke ; 3 uses
  %.not.peel.i55.i.i.i.i = icmp eq ptr %i.jz, %i.kc
  br i1 %.not.peel.i55.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i54.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.kc, i8 32, i64 %i.ke, i1 false)
  %i.kk = load ptr, ptr %i.ka, align 8, !tbaa !60
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.ke ; 2 uses
  store ptr %i.kl, ptr %i.ka, align 8, !tbaa !60
  %.pre.i56.i.i.i.i = ptrtoint ptr %i.kl to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i54.i.i.i.i
  %.pre-phi.i57.i.i.i.i = phi i64 [ %.pre.i56.i.i.i.i, %bb.z ], [ %i.kb, %.lr.ph.i54.i.i.i.i ]
  %i.km = sub i64 %.pre-phi.i57.i.i.i.i, %i.kh
  %i.kn = load ptr, ptr %i.ki, align 8, !tbaa !61
  %i.ko = load ptr, ptr %i.ju, align 8, !tbaa !62
  call void %i.kn(ptr noundef %i.ko, i64 %i.km, ptr nonnull %i.kg), !inline_history !131
  store ptr %i.kg, ptr %i.ka, align 8, !tbaa !60
  %i.kp = icmp ugt i64 %i.kj, 1024
  br i1 %i.kp, label %.peel.next.i58.i.i.i.i, label %._crit_edge.i51.i.i.i.i

.peel.next.i58.i.i.i.i:                           ; preds = %bb.aa, %.peel.next.i58.i.i.i.i
  %.010.i59.i.i.i.i = phi i64 [ %i.kq, %.peel.next.i58.i.i.i.i ], [ %i.kj, %bb.aa ]
  %i.kq = add i64 %.010.i59.i.i.i.i, -1024        ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.kg, i8 32, i64 1024, i1 false)
  store ptr %i.jz, ptr %i.ka, align 8, !tbaa !60
  %i.kr = load ptr, ptr %i.ki, align 8, !tbaa !61
  %i.ks = load ptr, ptr %i.ju, align 8, !tbaa !62
  call void %i.kr(ptr noundef %i.ks, i64 1024, ptr nonnull %i.kg), !inline_history !131
  store ptr %i.kg, ptr %i.ka, align 8, !tbaa !60
  %i.kt = icmp ugt i64 %i.kq, 1024
  br i1 %i.kt, label %.peel.next.i58.i.i.i.i, label %._crit_edge.i51.i.i.i.i, !llvm.loop !7

._crit_edge.i51.i.i.i.i:                          ; preds = %.peel.next.i58.i.i.i.i, %bb.aa, %bb.y
  %.0.lcssa.i52.i.i.i.i = phi i64 [ %.sroa.10.065.i.i.i.i, %bb.y ], [ %i.kj, %bb.aa ], [ %i.kq, %.peel.next.i58.i.i.i.i ] ; 2 uses
  %.lcssa.i53.i.i.i.i = phi ptr [ %i.kc, %bb.y ], [ %i.kg, %bb.aa ], [ %i.kg, %.peel.next.i58.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i53.i.i.i.i, i8 32, i64 %.0.lcssa.i52.i.i.i.i, i1 false)
  %i.ku = load ptr, ptr %i.ka, align 8, !tbaa !60
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.0.lcssa.i52.i.i.i.i
  store ptr %i.kv, ptr %i.ka, align 8, !tbaa !60
  br label %"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS1_7uint128EiRKNS3_11FormatStateEbE3$_0JNS3_15BinaryToDecimalEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit"

"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS1_7uint128EiRKNS3_11FormatStateEbE3$_0JNS3_15BinaryToDecimalEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit": ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i, %._crit_edge.i51.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE(i64 %0, i64 %1, i32 noundef range(i32 -2147483647, -2147483648) %2, ptr %3, ptr %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.5, align 16             ; 12 uses
  %i.a = add nsw i32 %2, 159
  %i.b = sdiv i32 %i.a, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %3, ptr %5, align 16, !tbaa !25
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %0, ptr %i.c, align 16, !tbaa !31
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %1, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %2, ptr %i.d, align 16, !tbaa !80
  %narrow = add nsw i32 %i.b, 127
  %i.e = sext i32 %narrow to i64
  %i.f = lshr i64 %i.e, 7
  switch i64 %i.f, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110StackArray15RunWithCapacityEmNS0_11FunctionRefIFvNS0_4SpanIjEEEEE.exit [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm1EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr nonnull %5, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110StackArray15RunWithCapacityEmNS0_11FunctionRefIFvNS0_4SpanIjEEEEE.exit

bb.c:                                             ; preds = %bb.a
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm2EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr nonnull %5, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110StackArray15RunWithCapacityEmNS0_11FunctionRefIFvNS0_4SpanIjEEEEE.exit

bb.d:                                             ; preds = %bb.a
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm3EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr nonnull %5, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110StackArray15RunWithCapacityEmNS0_11FunctionRefIFvNS0_4SpanIjEEEEE.exit

bb.e:                                             ; preds = %bb.a
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm4EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr nonnull %5, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110StackArray15RunWithCapacityEmNS0_11FunctionRefIFvNS0_4SpanIjEEEEE.exit

bb.f:                                             ; preds = %bb.a
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm5EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr nonnull %5, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110StackArray15RunWithCapacityEmNS0_11FunctionRefIFvNS0_4SpanIjEEEEE.exit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110StackArray15RunWithCapacityEmNS0_11FunctionRefIFvNS0_4SpanIjEEEEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readonly captures(none) %0, ptr %1, i64 %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::FractionalDigitGenerator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 16, !tbaa !31
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 16, !tbaa !80  ; 3 uses
  %i.d = sdiv i32 %i.c, 32                        ; 2 uses
  %i.e = add nsw i32 %i.d, 1                      ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 5 uses
  %i.g = srem i32 %i.c, 32                        ; 2 uses
  %i.h = sub nsw i32 32, %i.g
  %i.i = zext i64 %.sroa.2.0.copyload.i.i.i.i to i128
  %i.j = shl nuw i128 %i.i, 64
  %i.k = zext i64 %.sroa.0.0.copyload.i.i.i.i to i128 ; 2 uses
  %i.l = or disjoint i128 %i.j, %i.k
  %i.m = zext nneg i32 %i.h to i128
  %i.n = shl nuw nsw i128 %i.k, %i.m
  %i.o = trunc i128 %i.n to i32
  %i.p = add nsw i64 %i.f, -1                     ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.p ; 2 uses
  store i32 %i.o, ptr %i.q, align 4, !tbaa !50
  %i.r = zext nneg i32 %i.g to i128
  %i.s = lshr i128 %i.l, %i.r                     ; 2 uses
  %i.t = trunc i128 %i.s to i64                   ; 2 uses
  %i.u = lshr i128 %i.s, 64                       ; 2 uses
  %.not.i19.i.i.i.i.i = icmp ne i64 %i.t, 0
  %i.v = icmp ne i128 %i.u, 0
  %i.w = or i1 %.not.i19.i.i.i.i.i, %i.v
  br i1 %i.w, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %i.x = trunc nuw i128 %i.u to i64
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.not.i7.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i7.i.i.i.i.i, label %_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS1_7uint128EiNS1_11FunctionRefIFvS4_EEEEUlNS1_4SpanIjEEE_JSA_EENSt13invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i
  %.off = add i32 %i.c, 31
  %i.y = icmp ult i32 %.off, 63
  br i1 %i.y, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.f, -2
  br label %.preheader.i.i.i.i.i.i

.unr-lcssa:                                       ; preds = %.preheader.i.i.i.i.i.i
  %i.z = and i32 %i.d, 1
  %lcmp.mod.not.not = icmp eq i32 %i.z, 0
  br i1 %lcmp.mod.not.not, label %.preheader.i.i.i.i.i.i.epil.preheader, label %bb.b

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.i.epil.init = phi i64 [ %i.f, %.preheader.i.i.i.i.i.i.preheader ], [ %i.at, %.unr-lcssa ]
  %.0610.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ba, %.unr-lcssa ]
  %lcmp.mod3 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.aa = getelementptr [4 x i8], ptr %1, i64 %.011.i.i.i.i.i.i.epil.init
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4     ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !50
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul nuw nsw i64 %i.ad, 10
  %i.af = add nuw nsw i64 %i.ae, %.0610.i.i.i.i.i.i.epil.init ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !50
  %i.ah = lshr i64 %i.af, 32
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.preheader.i.i.i.i.i.i.epil.preheader
  %.lcssa = phi i64 [ %i.ba, %.unr-lcssa ], [ %i.ah, %.preheader.i.i.i.i.i.i.epil.preheader ]
  %i.ai = trunc nuw nsw i64 %.lcssa to i8
  %i.aj = load i32, ptr %i.q, align 4, !tbaa !50
  %i.ak = icmp eq i32 %i.aj, 0
  %spec.select.i.i.i.i = select i1 %i.ak, i64 %i.p, i64 %i.f
  br label %_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS1_7uint128EiNS1_11FunctionRefIFvS4_EEEEUlNS1_4SpanIjEEE_JSA_EENSt13invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %.011.i.i.i.i.i.i = phi i64 [ %i.f, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.at, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0610.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ba, %.preheader.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i ]
  %i.al = getelementptr [4 x i8], ptr %1, i64 %.011.i.i.i.i.i.i
  %i.am = getelementptr i8, ptr %i.al, i64 -4     ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !50
  %i.ao = zext i32 %i.an to i64
  %i.ap = mul nuw nsw i64 %i.ao, 10
  %i.aq = add nuw nsw i64 %i.ap, %.0610.i.i.i.i.i.i ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !50
  %i.as = lshr i64 %i.aq, 32
  %i.at = add i64 %.011.i.i.i.i.i.i, -2           ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !50
  %i.aw = zext i32 %i.av to i64
  %i.ax = mul nuw nsw i64 %i.aw, 10
  %i.ay = add nuw nsw i64 %i.ax, %i.as            ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  store i32 %i.az, ptr %i.au, align 4, !tbaa !50
  %i.ba = lshr i64 %i.ay, 32                      ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.i.i.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.022.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.8.021.i.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %i.x, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.011.020.i.i.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %i.t, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.bb = trunc i64 %.sroa.011.020.i.i.i.i.i to i32
  %i.bc = add i64 %.022.i.i.i.i.i, -1             ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bc
  store i32 %i.bb, ptr %i.bd, align 4, !tbaa !50
  %i.be = zext i64 %.sroa.8.021.i.i.i.i.i to i128
  %i.bf = shl nuw i128 %i.be, 64
  %i.bg = zext i64 %.sroa.011.020.i.i.i.i.i to i128
  %i.bh = or disjoint i128 %i.bf, %i.bg
  %i.bi = lshr i128 %i.bh, 32
  %i.bj = trunc i128 %i.bi to i64                 ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS4_11FormatStateEmE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !60
  %i.mc = load ptr, ptr %i.lt, align 8, !tbaa !61
  %i.md = load ptr, ptr %i.lg, align 8, !tbaa !62
  call void %i.mc(ptr noundef %i.md, i64 1024, ptr nonnull %i.lr), !inline_history !156
  store ptr %i.lr, ptr %i.ll, align 8, !tbaa !60
  %i.me = icmp ugt i64 %i.mb, 1024
  br i1 %i.me, label %.peel.next.i.i150.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i143.i.i.i.i, !llvm.loop !7

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i143.i.i.i.i: ; preds = %.peel.next.i.i150.i.i.i.i, %bb.al, %bb.aj
  %.0.lcssa.i.i144.i.i.i.i = phi i64 [ %.sroa.speculated.i141.i.i.i.i, %bb.aj ], [ %i.lu, %bb.al ], [ %i.mb, %.peel.next.i.i150.i.i.i.i ] ; 2 uses
  %.lcssa.i.i145.i.i.i.i = phi ptr [ %i.ln, %bb.aj ], [ %i.lr, %bb.al ], [ %i.lr, %.peel.next.i.i150.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i.i145.i.i.i.i, i8 48, i64 %.0.lcssa.i.i144.i.i.i.i, i1 false)
  %i.mf = load ptr, ptr %i.ll, align 8, !tbaa !60
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %.0.lcssa.i.i144.i.i.i.i
  store ptr %i.mg, ptr %i.ll, align 8, !tbaa !60
  br label %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit152.i.i.i.i"

"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit152.i.i.i.i": ; preds = %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit140.i.i.i.i", %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i143.i.i.i.i, %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit140.thread.thread271.i.i.i.i", %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i131.i.i.i.i, %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit128.i.i.i.i", %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit.i.i.i.i"
  %i.mh = load ptr, ptr %0, align 8, !tbaa !160, !nonnull !74, !align !75
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !39 ; 6 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !163, !nonnull !74
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !42, !range !77, !noundef !74
  %i.mn = trunc nuw i8 %i.mm to i1
  %i.mo = select i1 %i.mn, i8 69, i8 101
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mj, i64 16 ; 2 uses
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !59
  %i.mr = add i64 %i.mq, 1
  store i64 %i.mr, ptr %i.mp, align 8, !tbaa !59
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mj, i64 1056
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mj, i64 24 ; 4 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !60 ; 2 uses
  %i.mv = icmp eq ptr %i.ms, %i.mu
  br i1 %i.mv, label %.lr.ph.i156.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit162.i.i.i.i

.lr.ph.i156.i.i.i.i:                              ; preds = %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit152.i.i.i.i"
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mj, i64 32 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !61
  %i.mz = load ptr, ptr %i.mj, align 8, !tbaa !62
  call void %i.my(ptr noundef %i.mz, i64 1024, ptr nonnull %i.mw), !inline_history !155
  store ptr %i.mw, ptr %i.mt, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit162.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit162.i.i.i.i: ; preds = %.lr.ph.i156.i.i.i.i, %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit152.i.i.i.i"
  %.lcssa.i155.i.i.i.i = phi ptr [ %i.mu, %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit152.i.i.i.i" ], [ %i.mw, %.lr.ph.i156.i.i.i.i ]
  store i8 %i.mo, ptr %.lcssa.i155.i.i.i.i, align 1
  %i.na = load ptr, ptr %i.mt, align 8, !tbaa !60
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 1
  store ptr %i.nb, ptr %i.mt, align 8, !tbaa !60
  %i.nc = load ptr, ptr %0, align 8, !tbaa !160, !nonnull !74, !align !75
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !39 ; 6 uses
  %i.nf = icmp sgt i32 %.1.i.i.i.i, -1
  %i.ng = select i1 %i.nf, i8 43, i8 45
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 16 ; 2 uses
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !59
  %i.nj = add i64 %i.ni, 1
  store i64 %i.nj, ptr %i.nh, align 8, !tbaa !59
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ne, i64 1056
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ne, i64 24 ; 4 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !60 ; 2 uses
  %i.nn = icmp eq ptr %i.nk, %i.nm
  br i1 %i.nn, label %.lr.ph.i166.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit172.i.i.i.i

.lr.ph.i166.i.i.i.i:                              ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit162.i.i.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.ne, i64 32 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !61
  %i.nr = load ptr, ptr %i.ne, align 8, !tbaa !62
  call void %i.nq(ptr noundef %i.nr, i64 1024, ptr nonnull %i.no), !inline_history !155
  store ptr %i.no, ptr %i.nl, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit172.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit172.i.i.i.i: ; preds = %.lr.ph.i166.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit162.i.i.i.i
  %.lcssa.i165.i.i.i.i = phi ptr [ %i.nm, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit162.i.i.i.i ], [ %i.no, %.lr.ph.i166.i.i.i.i ]
  store i8 %i.ng, ptr %.lcssa.i165.i.i.i.i, align 1
  %i.ns = load ptr, ptr %i.nl, align 8, !tbaa !60
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  store ptr %i.nt, ptr %i.nl, align 8, !tbaa !60
  br i1 %i.bk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit172.i.i.i.i
  %i.nu = load ptr, ptr %0, align 8, !tbaa !160, !nonnull !74, !align !75
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !39 ; 6 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16 ; 2 uses
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !59
  %i.nz = add i64 %i.ny, 1
  store i64 %i.nz, ptr %i.nx, align 8, !tbaa !59
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 1056
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 24 ; 4 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !60 ; 2 uses
  %i.od = icmp eq ptr %i.oa, %i.oc
  br i1 %i.od, label %.lr.ph.i176.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit182.i.i.i.i

.lr.ph.i176.i.i.i.i:                              ; preds = %bb.am
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nw, i64 32 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !61
  %i.oh = load ptr, ptr %i.nw, align 8, !tbaa !62
  call void %i.og(ptr noundef %i.oh, i64 1024, ptr nonnull %i.oe), !inline_history !155
  store ptr %i.oe, ptr %i.ob, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit182.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit182.i.i.i.i: ; preds = %.lr.ph.i176.i.i.i.i, %bb.am
  %.lcssa.i175.i.i.i.i = phi ptr [ %i.oc, %bb.am ], [ %i.oe, %.lr.ph.i176.i.i.i.i ]
  store i8 48, ptr %.lcssa.i175.i.i.i.i, align 1
  %i.oi = load ptr, ptr %i.ob, align 8, !tbaa !60
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 1
  store ptr %i.oj, ptr %i.ob, align 8, !tbaa !60
  br label %bb.an

bb.an:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit182.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit172.i.i.i.i
  %i.ok = load ptr, ptr %0, align 8, !tbaa !160, !nonnull !74, !align !75
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !39 ; 7 uses
  %i.on = icmp eq i64 %i.bl, 0
  br i1 %i.on, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 16 ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !59
  %i.oq = add i64 %i.op, %i.bl
  store i64 %i.oq, ptr %i.oo, align 8, !tbaa !59
  %i.or = getelementptr inbounds nuw i8, ptr %i.om, i64 1056
  %i.os = getelementptr inbounds nuw i8, ptr %i.om, i64 24 ; 4 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !60 ; 2 uses
  %i.ou = ptrtoint ptr %i.or to i64
  %i.ov = ptrtoint ptr %i.ot to i64               ; 2 uses
  %i.ow = sub i64 %i.ou, %i.ov
  %.not.i183.i.i.i.i = icmp ult i64 %i.bl, %i.ow
  br i1 %.not.i183.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ox = getelementptr inbounds nuw i8, ptr %i.om, i64 32 ; 3 uses
  %i.oy = ptrtoint ptr %i.ox to i64
  %i.oz = sub i64 %i.ov, %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.om, i64 8 ; 2 uses
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !61
  %i.pc = load ptr, ptr %i.om, align 8, !tbaa !62
  call void %i.pb(ptr noundef %i.pc, i64 %i.oz, ptr nonnull %i.ox), !inline_history !157
  store ptr %i.ox, ptr %i.os, align 8, !tbaa !60
  %i.pd = load ptr, ptr %i.pa, align 8, !tbaa !61
  %i.pe = load ptr, ptr %i.om, align 8, !tbaa !62
  call void %i.pd(ptr noundef %i.pe, i64 %i.bl, ptr nonnull %i.a), !inline_history !158
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ot, ptr nonnull align 16 %i.a, i64 %i.bl, i1 false)
  %i.pf = load ptr, ptr %i.os, align 8, !tbaa !60
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.bl
  store ptr %i.pg, ptr %i.os, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.an
  %i.ph = load ptr, ptr %0, align 8, !tbaa !160, !nonnull !74, !align !75
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !39 ; 7 uses
  %i.pk = icmp eq i64 %.sroa.9205.0258.i.i.i.i, 0
  br i1 %i.pk, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit193.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 16 ; 2 uses
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !59
  %i.pn = add i64 %i.pm, %.sroa.9205.0258.i.i.i.i
  store i64 %i.pn, ptr %i.pl, align 8, !tbaa !59
  %i.po = getelementptr inbounds nuw i8, ptr %i.pj, i64 1056 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pj, i64 24 ; 8 uses
  %i.pq = ptrtoint ptr %i.po to i64               ; 2 uses
  %i.pr = load ptr, ptr %i.pp, align 8, !tbaa !60 ; 4 uses
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = sub i64 %i.pq, %i.ps                    ; 4 uses
  %i.pu = icmp ugt i64 %.sroa.9205.0258.i.i.i.i, %i.pt
  br i1 %i.pu, label %.lr.ph.i187.i.i.i.i, label %._crit_edge.i184.i.i.i.i

.lr.ph.i187.i.i.i.i:                              ; preds = %bb.ar
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pj, i64 32 ; 8 uses
  %i.pw = ptrtoint ptr %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.pj, i64 8 ; 2 uses
  %i.py = sub nuw nsw i64 %.sroa.9205.0258.i.i.i.i, %i.pt ; 3 uses
  %.not.peel.i188.i.i.i.i = icmp eq ptr %i.po, %i.pr
  br i1 %.not.peel.i188.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i187.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.pr, i8 32, i64 %i.pt, i1 false)
  %i.pz = load ptr, ptr %i.pp, align 8, !tbaa !60
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.pt ; 2 uses
  store ptr %i.qa, ptr %i.pp, align 8, !tbaa !60
  %.pre.i189.i.i.i.i = ptrtoint ptr %i.qa to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i187.i.i.i.i
  %.pre-phi.i190.i.i.i.i = phi i64 [ %.pre.i189.i.i.i.i, %bb.as ], [ %i.pq, %.lr.ph.i187.i.i.i.i ]
  %i.qb = sub i64 %.pre-phi.i190.i.i.i.i, %i.pw
  %i.qc = load ptr, ptr %i.px, align 8, !tbaa !61
  %i.qd = load ptr, ptr %i.pj, align 8, !tbaa !62
  call void %i.qc(ptr noundef %i.qd, i64 %i.qb, ptr nonnull %i.pv), !inline_history !155
  store ptr %i.pv, ptr %i.pp, align 8, !tbaa !60
  %i.qe = icmp ugt i64 %i.py, 1024
  br i1 %i.qe, label %.peel.next.i191.i.i.i.i, label %._crit_edge.i184.i.i.i.i

.peel.next.i191.i.i.i.i:                          ; preds = %bb.at, %.peel.next.i191.i.i.i.i
  %.010.i192.i.i.i.i = phi i64 [ %i.qf, %.peel.next.i191.i.i.i.i ], [ %i.py, %bb.at ]
  %i.qf = add i64 %.010.i192.i.i.i.i, -1024       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.pv, i8 32, i64 1024, i1 false)
  store ptr %i.po, ptr %i.pp, align 8, !tbaa !60
  %i.qg = load ptr, ptr %i.px, align 8, !tbaa !61
  %i.qh = load ptr, ptr %i.pj, align 8, !tbaa !62
  call void %i.qg(ptr noundef %i.qh, i64 1024, ptr nonnull %i.pv), !inline_history !155
  store ptr %i.pv, ptr %i.pp, align 8, !tbaa !60
  %i.qi = icmp ugt i64 %i.qf, 1024
  br i1 %i.qi, label %.peel.next.i191.i.i.i.i, label %._crit_edge.i184.i.i.i.i, !llvm.loop !7

._crit_edge.i184.i.i.i.i:                         ; preds = %.peel.next.i191.i.i.i.i, %bb.at, %bb.ar
  %.0.lcssa.i185.i.i.i.i = phi i64 [ %.sroa.9205.0258.i.i.i.i, %bb.ar ], [ %i.py, %bb.at ], [ %i.qf, %.peel.next.i191.i.i.i.i ] ; 2 uses
  %.lcssa.i186.i.i.i.i = phi ptr [ %i.pr, %bb.ar ], [ %i.pv, %bb.at ], [ %i.pv, %.peel.next.i191.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i186.i.i.i.i, i8 32, i64 %.0.lcssa.i185.i.i.i.i, i1 false)
  %i.qj = load ptr, ptr %i.pp, align 8, !tbaa !60
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 %.0.lcssa.i185.i.i.i.i
  store ptr %i.qk, ptr %i.pp, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit193.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit193.i.i.i.i: ; preds = %._crit_edge.i184.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS1_7uint128EibRKNS3_11FormatStateEmE3$_0JNS3_15BinaryToDecimalEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit"

"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS1_7uint128EibRKNS3_11FormatStateEmE3$_0JNS3_15BinaryToDecimalEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit": ; preds = %bb.a, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit193.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { i64, i64 } @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !166    ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !73     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !72
  %.not.i.i = icmp ult i64 %i.c, %i.e
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.thread.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.thread.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = add nuw i64 %i.c, 1
  store i64 %i.g, ptr %0, align 8, !tbaa !73
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.c
  %i.j = load i32, ptr %i.i, align 4, !tbaa !50   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = urem i32 %i.j, 10
  %i.n = trunc nuw nsw i32 %i.m to i8
  %i.o = or disjoint i8 %i.n, 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.o, ptr %i.p, align 8, !tbaa !25
  %i.q = udiv i32 %i.j, 10000000
  %.lhs.trunc9.i.i = trunc nuw nsw i32 %i.q to i16
  %i.r = urem i16 %.lhs.trunc9.i.i, 10
  %i.s = trunc nuw nsw i16 %i.r to i8
  %i.t = udiv i32 %i.j, 100000000
  %.lhs.trunc11.i.i = trunc nuw nsw i32 %i.t to i8
  %i.u = urem i8 %.lhs.trunc11.i.i, 10
  %i.v = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.w = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.x = udiv <4 x i32> %i.w, <i32 10000, i32 1000, i32 100, i32 10>
  %i.y = urem <4 x i32> %i.x, splat (i32 10)
  %i.z = trunc nuw nsw <4 x i32> %i.y to <4 x i8>
  %i.aa = udiv i32 %i.j, 100000
  %.lhs.trunc.i.i = trunc nuw i32 %i.aa to i16
  %i.ab = udiv i32 %i.j, 1000000
  %.lhs.trunc7.i.i = trunc nuw nsw i32 %i.ab to i16
  %i.ac = insertelement <2 x i16> poison, i16 %.lhs.trunc7.i.i, i64 0
  %i.ad = insertelement <2 x i16> %i.ac, i16 %.lhs.trunc.i.i, i64 1
  %i.ae = urem <2 x i16> %i.ad, splat (i16 10)
  %i.af = insertelement <8 x i8> poison, i8 %i.u, i64 0
  %i.ag = insertelement <8 x i8> %i.af, i8 %i.s, i64 1
  %i.ah = shufflevector <4 x i8> %i.z, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ai = shufflevector <8 x i8> %i.ag, <8 x i8> %i.ah, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.aj = shufflevector <2 x i16> %i.ae, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ak = trunc nuw nsw <8 x i16> %i.aj to <8 x i8>
  %i.al = shufflevector <8 x i8> %i.ai, <8 x i8> %i.ak, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.am = or disjoint <8 x i8> %i.al, splat (i8 48)
  store <8 x i8> %i.am, ptr %i.l, align 8, !tbaa !25
  store i64 9, ptr %i.k, align 8, !tbaa !71
  %.pre.i = load i64, ptr %1, align 8, !tbaa !166
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.thread.i
  %i.an = phi i64 [ %.pre.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.thread.i ], [ %i.a, %bb.a ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !167 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !167
  %i.as = add i64 %i.an, -1                       ; 3 uses
  store i64 %i.as, ptr %1, align 8, !tbaa !166
  %i.at = sext i8 %i.aq to i32
  %.sroa.040.0.extract.trunc = add nsw i32 %i.at, -48 ; 2 uses
  %i.au = icmp eq i64 %i.as, 0
  br i1 %i.au, label %bb.c, label %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit"

bb.c:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.av = load i64, ptr %0, align 8, !tbaa !73    ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !72
  %.not.i.i14 = icmp ult i64 %i.av, %i.ax
  br i1 %.not.i.i14, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = add nuw i64 %i.av, 1
  store i64 %i.az, ptr %0, align 8, !tbaa !73
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !76
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.av
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !50 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bf = urem i32 %i.bc, 10
  %i.bg = trunc nuw nsw i32 %i.bf to i8
  %i.bh = or disjoint i8 %i.bg, 48
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.bh, ptr %i.bi, align 8, !tbaa !25
  %i.bj = udiv i32 %i.bc, 10000000
  %.lhs.trunc9.i.i17 = trunc nuw nsw i32 %i.bj to i16
  %i.bk = urem i16 %.lhs.trunc9.i.i17, 10
  %i.bl = trunc nuw nsw i16 %i.bk to i8
  %i.bm = udiv i32 %i.bc, 100000000
  %.lhs.trunc11.i.i18 = trunc nuw nsw i32 %i.bm to i8
  %i.bn = urem i8 %.lhs.trunc11.i.i18, 10
  %i.bo = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %i.bp = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bq = udiv <4 x i32> %i.bp, <i32 10000, i32 1000, i32 100, i32 10>
  %i.br = urem <4 x i32> %i.bq, splat (i32 10)
  %i.bs = trunc nuw nsw <4 x i32> %i.br to <4 x i8>
  %i.bt = udiv i32 %i.bc, 100000
  %.lhs.trunc.i.i15 = trunc nuw i32 %i.bt to i16
  %i.bu = udiv i32 %i.bc, 1000000
  %.lhs.trunc7.i.i16 = trunc nuw nsw i32 %i.bu to i16
  %i.bv = insertelement <2 x i16> poison, i16 %.lhs.trunc7.i.i16, i64 0
  %i.bw = insertelement <2 x i16> %i.bv, i16 %.lhs.trunc.i.i15, i64 1
  %i.bx = urem <2 x i16> %i.bw, splat (i16 10)
  %i.by = insertelement <8 x i8> poison, i8 %i.bn, i64 0
  %i.bz = insertelement <8 x i8> %i.by, i8 %i.bl, i64 1
  %i.ca = shufflevector <4 x i8> %i.bs, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cb = shufflevector <8 x i8> %i.bz, <8 x i8> %i.ca, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.cc = shufflevector <2 x i16> %i.bx, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cd = trunc nuw nsw <8 x i16> %i.cc to <8 x i8>
  %i.ce = shufflevector <8 x i8> %i.cb, <8 x i8> %i.cd, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.cf = or disjoint <8 x i8> %i.ce, splat (i8 48)
  store <8 x i8> %i.cf, ptr %i.be, align 8, !tbaa !25
  store i64 9, ptr %i.bd, align 8, !tbaa !71
  store i64 9, ptr %1, align 8, !tbaa !31
  store ptr %i.be, ptr %i.ao, align 8, !tbaa !168
  br label %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit"

"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit": ; preds = %bb.d, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.cg = phi i64 [ 9, %bb.d ], [ %i.as, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.ch = phi ptr [ %i.be, %bb.d ], [ %i.ar, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !25
  %i.cj = icmp eq i8 %i.ci, 57
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit"
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load ptr, ptr %i.cl, align 8
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit27

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit27: ; preds = %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38", %.lr.ph
  %i.cq = phi ptr [ %i.ch, %.lr.ph ], [ %.pre.i3064, %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38" ]
  %.pr = phi i64 [ %i.cg, %.lr.ph ], [ %.pr60, %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38" ]
  %.057 = phi i64 [ 0, %.lr.ph ], [ %i.ct, %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38" ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  store ptr %i.cr, ptr %i.ao, align 8, !tbaa !167
  %i.cs = add i64 %.pr, -1                        ; 3 uses
  store i64 %i.cs, ptr %1, align 8, !tbaa !166
  %i.ct = add i64 %.057, 1                        ; 3 uses
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %bb.e, label %"_ZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv.exit38"

bb.e:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit27
  %i.cv = load i64, ptr %0, align 8, !tbaa !73    ; 3 uses
  %i.cw = load i64, ptr %i.ck, align 8, !tbaa !72
  %.not.i.i32 = icmp ult i64 %i.cv, %i.cw
  br i1 %.not.i.i32, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.cx = add nuw i64 %i.cv, 1
  store i64 %i.cx, ptr %0, align 8, !tbaa !73
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cv
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !50 ; 6 uses
end_hunk_1
begin_hunk_2_@"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatENegativeExpSlowENS0_7uint128EibRKNS4_11FormatStateEmE3$_0vJNS4_24FractionalDigitGeneratorEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
._crit_edge.i203.i.i.i.i:                         ; preds = %.peel.next.i210.i.i.i.i, %bb.ae, %bb.ac
  %.0.lcssa.i204.i.i.i.i = phi i64 [ %i.of, %bb.ac ], [ %i.ou, %bb.ae ], [ %i.pb, %.peel.next.i210.i.i.i.i ] ; 2 uses
  %.lcssa.i205.i.i.i.i = phi ptr [ %i.on, %bb.ac ], [ %i.or, %bb.ae ], [ %i.or, %.peel.next.i210.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i205.i.i.i.i, i8 57, i64 %.0.lcssa.i204.i.i.i.i, i1 false)
  %i.pf = load ptr, ptr %i.ol, align 8, !tbaa !60
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.0.lcssa.i204.i.i.i.i
  store ptr %i.pg, ptr %i.ol, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit222.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit212.i.i.i.i: ; preds = %._crit_edge.i170.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit169.i.i.i.i
  %i.ph = sub nuw i64 %.0267363.i.i.i.i, %i.kn    ; 2 uses
  %.not.i138.i.i.i.i = icmp ne i8 %.val82.i.i.i.i, 0
  %i.pi = icmp ne i64 %.val83.i.i.i.i, 0
  %i.pj = select i1 %.not.i138.i.i.i.i, i1 true, i1 %i.pi
  br i1 %i.pj, label %.lr.ph366.i.i.i.i, label %.critedge.thread293.i.i.i.i

.critedge.thread293.i.i.i.i:                      ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit212.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit192.i.i.i.i, %.preheader.split.i.i.i.i
  %.1268295.i.i.i.i = phi i64 [ %i.nj, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit192.i.i.i.i ], [ %i.hw, %.preheader.split.i.i.i.i ], [ %i.ph, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit212.i.i.i.i ] ; 4 uses
  %.pn.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !175, !nonnull !74, !align !75
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %i.pk = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !39 ; 7 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16 ; 2 uses
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !59
  %i.pn = add i64 %i.pm, %.1268295.i.i.i.i
  store i64 %i.pn, ptr %i.pl, align 8, !tbaa !59
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 1056 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pk, i64 24 ; 8 uses
  %i.pq = ptrtoint ptr %i.po to i64               ; 2 uses
  %i.pr = load ptr, ptr %i.pp, align 8, !tbaa !60 ; 4 uses
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = sub i64 %i.pq, %i.ps                    ; 4 uses
  %i.pu = icmp ugt i64 %.1268295.i.i.i.i, %i.pt
  br i1 %i.pu, label %.lr.ph.i216.i.i.i.i, label %._crit_edge.i213.i.i.i.i

.lr.ph.i216.i.i.i.i:                              ; preds = %.critedge.thread293.i.i.i.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pk, i64 32 ; 8 uses
  %i.pw = ptrtoint ptr %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.pk, i64 8 ; 2 uses
  %i.py = sub nuw i64 %.1268295.i.i.i.i, %i.pt    ; 3 uses
  %.not.peel.i217.i.i.i.i = icmp eq ptr %i.po, %i.pr
  br i1 %.not.peel.i217.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i216.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.pr, i8 48, i64 %i.pt, i1 false)
  %i.pz = load ptr, ptr %i.pp, align 8, !tbaa !60
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.pt ; 2 uses
  store ptr %i.qa, ptr %i.pp, align 8, !tbaa !60
  %.pre.i218.i.i.i.i = ptrtoint ptr %i.qa to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i216.i.i.i.i
  %.pre-phi.i219.i.i.i.i = phi i64 [ %.pre.i218.i.i.i.i, %bb.af ], [ %i.pq, %.lr.ph.i216.i.i.i.i ]
  %i.qb = sub i64 %.pre-phi.i219.i.i.i.i, %i.pw
  %i.qc = load ptr, ptr %i.px, align 8, !tbaa !61
  %i.qd = load ptr, ptr %i.pk, align 8, !tbaa !62
  call void %i.qc(ptr noundef %i.qd, i64 %i.qb, ptr nonnull %i.pv), !inline_history !171
  store ptr %i.pv, ptr %i.pp, align 8, !tbaa !60
  %i.qe = icmp ugt i64 %i.py, 1024
  br i1 %i.qe, label %.peel.next.i220.i.i.i.i, label %._crit_edge.i213.i.i.i.i

.peel.next.i220.i.i.i.i:                          ; preds = %bb.ag, %.peel.next.i220.i.i.i.i
  %.010.i221.i.i.i.i = phi i64 [ %i.qf, %.peel.next.i220.i.i.i.i ], [ %i.py, %bb.ag ]
  %i.qf = add i64 %.010.i221.i.i.i.i, -1024       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.pv, i8 48, i64 1024, i1 false)
  store ptr %i.po, ptr %i.pp, align 8, !tbaa !60
  %i.qg = load ptr, ptr %i.px, align 8, !tbaa !61
  %i.qh = load ptr, ptr %i.pk, align 8, !tbaa !62
  call void %i.qg(ptr noundef %i.qh, i64 1024, ptr nonnull %i.pv), !inline_history !171
  store ptr %i.pv, ptr %i.pp, align 8, !tbaa !60
  %i.qi = icmp ugt i64 %i.qf, 1024
  br i1 %i.qi, label %.peel.next.i220.i.i.i.i, label %._crit_edge.i213.i.i.i.i, !llvm.loop !7

._crit_edge.i213.i.i.i.i:                         ; preds = %.peel.next.i220.i.i.i.i, %bb.ag, %.critedge.thread293.i.i.i.i
  %.0.lcssa.i214.i.i.i.i = phi i64 [ %.1268295.i.i.i.i, %.critedge.thread293.i.i.i.i ], [ %i.py, %bb.ag ], [ %i.qf, %.peel.next.i220.i.i.i.i ] ; 2 uses
  %.lcssa.i215.i.i.i.i = phi ptr [ %i.pr, %.critedge.thread293.i.i.i.i ], [ %i.pv, %bb.ag ], [ %i.pv, %.peel.next.i220.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i215.i.i.i.i, i8 48, i64 %.0.lcssa.i214.i.i.i.i, i1 false)
  %i.qj = load ptr, ptr %i.pp, align 8, !tbaa !60
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 %.0.lcssa.i214.i.i.i.i
  store ptr %i.qk, ptr %i.pp, align 8, !tbaa !60
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit222.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit222.i.i.i.i: ; preds = %._crit_edge.i213.i.i.i.i, %._crit_edge.i203.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit202.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit192.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit137.i.i.i.i
  %i.ql = load ptr, ptr %0, align 8, !tbaa !175, !nonnull !74, !align !75
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 24
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !39 ; 6 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !178, !nonnull !74
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !42, !range !77, !noundef !74
  %i.qr = trunc nuw i8 %i.qq to i1
  %i.qs = select i1 %i.qr, i8 69, i8 101
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qn, i64 16 ; 2 uses
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !59
  %i.qv = add i64 %i.qu, 1
  store i64 %i.qv, ptr %i.qt, align 8, !tbaa !59
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qn, i64 1056
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qn, i64 24 ; 4 uses
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !60 ; 2 uses
  %i.qz = icmp eq ptr %i.qw, %i.qy
  br i1 %i.qz, label %.lr.ph.i226.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit232.i.i.i.i

.lr.ph.i226.i.i.i.i:                              ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit222.i.i.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qn, i64 32 ; 3 uses
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
  %.126.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.ac, %.critedge35.i.i.i.i ], [ 0, %bb.b ]
  %.223.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.a ], [ %.021.i.i.i.i, %.critedge35.i.i.i.i ], [ %.0.i.i.i.i.i, %bb.b ]
  %.2.i.i.i.i = phi i64 [ %i.l, %bb.a ], [ %.0.i.i.i.i, %.critedge35.i.i.i.i ], [ %i.l, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !55, !nonnull !74, !align !82
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  %i.am = and i8 %i.al, 8
  %i.an = icmp ne i8 %i.am, 0                     ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.an, i64 0, i64 %.126.i.i.i.i ; 2 uses
  %i.ao = icmp ne i64 %spec.select.i.i.i.i, 0
  %or.cond.i.i.i.i = or i1 %i.an, %i.ao
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
end_hunk_2
