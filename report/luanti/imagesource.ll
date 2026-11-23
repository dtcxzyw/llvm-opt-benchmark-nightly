Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/imagesource?download=true
inline.NumInlined: 1740
inline.NumDeleted: 374
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN11ImageSource13generateImageESt17basic_string_viewIcSt11char_traitsIcEERSt3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessIS8_ESaIS8_EE:bb.a
bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ir = phi i64 [ %.pre169, %bb.bn ], [ %i.im, %bb.bm ]
  %i.is = phi ptr [ %.pre.i102, %bb.bn ], [ %i.ij, %bb.bm ] ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 %i.ir
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 240
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !93 ; 6 uses
  %.not.i.i.i128 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i128, label %bb.bp, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i129

bb.bp:                                            ; preds = %bb.bo
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i129: ; preds = %bb.bo
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 56
  %i.ix = load i8, ptr %i.iw, align 8, !tbaa !99
  %.not.i1.i.i130 = icmp eq i8 %i.ix, 0
  br i1 %.not.i1.i.i130, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i129
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 67
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !33
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit132

bb.br:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i129
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.iv)
  %i.ja = load ptr, ptr %i.iv, align 8, !tbaa !41
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 48
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = call noundef signext i8 %i.jc(ptr noundef nonnull align 8 dereferenceable(570) %i.iv, i8 noundef signext 10), !inline_history !4
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit132

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit132: ; preds = %bb.bq, %bb.br
  %.0.i.i.i131 = phi i8 [ %i.iz, %bb.bq ], [ %i.jd, %bb.br ]
  %i.je = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.is, i8 noundef signext %.0.i.i.i131)
  %i.jf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.je) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit103

bb.bs:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit91
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !101
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !102
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %bb.bu, label %_ZN11StreamProxylsEPFRSoS0_E.exit103

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.not.i104 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i104, label %_ZTW11errorstream.exit105, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit105

_ZTW11errorstream.exit105:                        ; preds = %bb.bu, %bb.bv
  %i.jm = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !75, !nonnull !76, !align !77 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !41
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = call noundef zeroext i1 %i.jp(ptr noundef nonnull align 8 dereferenceable(8) %i.jn), !inline_history !187
  %.v.i106 = select i1 %i.jq, i64 976, i64 984
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.v.i106 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.83, ptr %i.b, align 8, !tbaa !78
  %i.js = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.jt = load ptr, ptr %i.jr, align 8, !tbaa !79 ; 5 uses
  %.not.i107 = icmp eq ptr %i.jt, null
  br i1 %.not.i107, label %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit112, label %bb.bw

bb.bw:                                            ; preds = %_ZTW11errorstream.exit105
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !41
  %i.jv = getelementptr i8, ptr %i.ju, i64 -24
  %i.jw = load i64, ptr %i.jv, align 8
  %i.jx = getelementptr inbounds i8, ptr %i.jt, i64 %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !86
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.jt)
  %.pre.i108 = load ptr, ptr %i.jr, align 8, !tbaa !79
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.kb = phi ptr [ %.pre.i108, %bb.bx ], [ %i.jt, %bb.bw ]
  %i.kc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kb, ptr noundef %2, i64 noundef %1) ; 0 uses
  br label %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit112

_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit112: ; preds = %_ZTW11errorstream.exit105, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.82, ptr %i.a, align 8, !tbaa !78
  %i.kd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jr, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !79 ; 5 uses
  %.not.i113 = icmp eq ptr %i.ke, null
  br i1 %.not.i113, label %_ZN11StreamProxylsEPFRSoS0_E.exit115, label %bb.bz

bb.bz:                                            ; preds = %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit112
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !41
  %i.kg = getelementptr i8, ptr %i.kf, i64 -24
  %i.kh = load i64, ptr %i.kg, align 8            ; 2 uses
  %i.ki = getelementptr inbounds i8, ptr %i.ke, i64 %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !86
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ke)
  %.pre.i114 = load ptr, ptr %i.kd, align 8, !tbaa !79 ; 2 uses
  %.pre164 = load ptr, ptr %.pre.i114, align 8, !tbaa !41
  %.phi.trans.insert165 = getelementptr i8, ptr %.pre164, i64 -24
  %.pre166 = load i64, ptr %.phi.trans.insert165, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.km = phi i64 [ %.pre166, %bb.ca ], [ %i.kh, %bb.bz ]
  %i.kn = phi ptr [ %.pre.i114, %bb.ca ], [ %i.ke, %bb.bz ] ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 %i.km
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 240
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !93 ; 6 uses
  %.not.i.i.i133 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i.i133, label %bb.cc, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i134

bb.cc:                                            ; preds = %bb.cb
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i134: ; preds = %bb.cb
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 56
  %i.ks = load i8, ptr %i.kr, align 8, !tbaa !99
  %.not.i1.i.i135 = icmp eq i8 %i.ks, 0
  br i1 %.not.i1.i.i135, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i134
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 67
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !33
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit137

bb.ce:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i134
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.kq)
  %i.kv = load ptr, ptr %i.kq, align 8, !tbaa !41
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 48
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = call noundef signext i8 %i.kx(ptr noundef nonnull align 8 dereferenceable(570) %i.kq, i8 noundef signext 10), !inline_history !4
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit137

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit137: ; preds = %bb.cd, %bb.ce
  %.0.i.i.i136 = phi i8 [ %i.ku, %bb.cd ], [ %i.ky, %bb.ce ]
  %i.kz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.kn, i8 noundef signext %.0.i.i.i136)
  %i.la = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kz) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit115

_ZN11StreamProxylsEPFRSoS0_E.exit115:             ; preds = %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit112, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit137
  %i.lb = load ptr, ptr %i.hq, align 8, !tbaa !41
  %i.lc = getelementptr i8, ptr %i.lb, i64 -24
  %i.ld = load i64, ptr %i.lc, align 8
  %i.le = getelementptr inbounds i8, ptr %i.hq, i64 %i.ld ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !43
  %i.lh = add nsw i32 %i.lg, -1                   ; 2 uses
  store i32 %i.lh, ptr %i.lf, align 8, !tbaa !43
  %.not.i116 = icmp eq i32 %i.lh, 0
  br i1 %.not.i116, label %bb.cf, label %_ZN11StreamProxylsEPFRSoS0_E.exit103

bb.cf:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit115
  %i.li = load ptr, ptr %i.le, align 8, !tbaa !41
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr noundef nonnull align 8 dereferenceable(12) %i.le) #23, !inline_history !0
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit103

_ZN11StreamProxylsEPFRSoS0_E.exit103:             ; preds = %bb.cf, %_ZN11StreamProxylsEPFRSoS0_E.exit115, %bb.bt, %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit100, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit132, %_ZN11StreamProxylsEPFRSoS0_E.exit72
  %.2 = phi ptr [ null, %_ZN11StreamProxylsEPFRSoS0_E.exit72 ], [ null, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit132 ], [ null, %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit100 ], [ %i.hq, %bb.bt ], [ null, %_ZN11StreamProxylsEPFRSoS0_E.exit115 ], [ null, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit122, %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit56, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit, %_ZN11StreamProxylsEPFRSoS0_E.exit103
  %.3 = phi ptr [ null, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %.2, %_ZN11StreamProxylsEPFRSoS0_E.exit103 ], [ null, %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit ], [ null, %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit56 ], [ null, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit122 ]
  ret ptr %.3
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @_ZL15blit_with_alphaILb0EEvPN5video6IImageES2_N4core8vector2dIiEENS4_IjEE(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #7 {
bb.a:
  tail call fastcc void @_ZL16blit_with_alpha2ILb0EEvPN5video6IImageES2_N4core8vector2dIiEES5_NS4_IjEE(ptr noundef %0, ptr noundef %1, i64 0, i64 %2, i64 %3)
  ret void
}

declare noundef zeroext i1 @_Z16parseColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEbh(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL8brightenPN5video6IImageE(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %1 = alloca %"class.video::SColor", align 4     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 4, !tbaa !108 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !108 ; 2 uses
  %.not = icmp eq i32 %.sroa.4.0.copyload, 0
  br i1 %.not, label %._crit_edge15.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not16 = icmp eq i32 %.sroa.0.0.copyload, 0
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 1
  br i1 %.not16, label %._crit_edge15.split, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.01114 = phi i32 [ %i.b, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %i.b = add nuw i32 %.01114, 1                   ; 2 uses
  %exitcond16.not = icmp eq i32 %i.b, %.sroa.4.0.copyload
  br i1 %exitcond16.not, label %._crit_edge15.split, label %.preheader, !llvm.loop !188

bb.b:                                             ; preds = %.preheader, %bb.b
  %.013 = phi i32 [ 0, %.preheader ], [ %i.s, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.c = load ptr, ptr %0, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call i32 %i.e(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.013, i32 noundef %.01114) ; 2 uses
  store i32 %i.f, ptr %1, align 4
  %i.g = lshr i32 %i.f, 16
  %i.h = and i32 %i.g, 255
  %i.i = uitofp nsz nneg i32 %i.h to float
  %i.j = call nsz float @llvm.fmuladd.f32(float %i.i, float 5.000000e-01, float 1.275000e+02)
  %i.k = fptoui float %i.j to i32
  %4 = trunc i32 %i.k to i8
  store i8 %4, ptr %2, align 2, !tbaa !104
  %5 = load i32, ptr %1, align 4, !tbaa !104
  %i.l = lshr i32 %5, 8
  %i.m = and i32 %i.l, 255
  %i.n = uitofp nsz nneg i32 %i.m to float
  %6 = call nsz float @llvm.fmuladd.f32(float %i.n, float 5.000000e-01, float 1.275000e+02)
  %i.o = fptoui float %6 to i32
  %7 = trunc i32 %i.o to i8
  store i8 %7, ptr %3, align 1, !tbaa !104
  %8 = load i32, ptr %1, align 4, !tbaa !104
  %9 = and i32 %8, 255
  %10 = uitofp nsz nneg i32 %9 to float
  %11 = call nsz float @llvm.fmuladd.f32(float %10, float 5.000000e-01, float 1.275000e+02)
  %12 = fptoui float %11 to i32
  %13 = trunc i32 %12 to i8
  store i8 %13, ptr %1, align 4, !tbaa !104
  %i.p = load ptr, ptr %0, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.013, i32 noundef %.01114, ptr noundef nonnull align 4 dereferenceable(4) %1, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.s = add nuw i32 %.013, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %.sroa.0.0.copyload
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !189

._crit_edge15.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 8) i32 @_ZL19parseImageTransformSt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr nofree readonly captures(none) %1) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [8 x %"class.std::__cxx11::basic_string"], align 16 ; 66 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 16, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !44
  store i8 0, ptr %i.a, align 16, !tbaa !33
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr %i.c, ptr %.ptr.1, align 16, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.d, align 8, !tbaa !44
  store i8 0, ptr %i.c, align 16, !tbaa !33
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  store ptr %i.e, ptr %.ptr.2, align 16, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 0, ptr %i.f, align 8, !tbaa !44
  store i8 0, ptr %i.e, align 16, !tbaa !33
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  store ptr %i.g, ptr %.ptr.3, align 16, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 0, ptr %i.h, align 8, !tbaa !44
  store i8 0, ptr %i.g, align 16, !tbaa !33
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  store ptr %i.i, ptr %.ptr.4, align 16, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i64 0, ptr %i.j, align 8, !tbaa !44
  store i8 0, ptr %i.i, align 16, !tbaa !33
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  store ptr %i.k, ptr %.ptr.5, align 16, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i64 0, ptr %i.l, align 8, !tbaa !44
  store i8 0, ptr %i.k, align 16, !tbaa !33
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  store ptr %i.m, ptr %.ptr.6, align 16, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i64 0, ptr %i.n, align 8, !tbaa !44
  store i8 0, ptr %i.m, align 16, !tbaa !33
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  store ptr %i.o, ptr %.ptr.7, align 16, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 232
  store i64 0, ptr %i.p, align 8, !tbaa !44
  store i8 0, ptr %i.o, align 16, !tbaa !33
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.92, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !44
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.ptr.1, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull @.str.93, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit51 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !44
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.ptr.2, i64 noundef 0, i64 noundef %i.v, ptr noundef nonnull @.str.94, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit52 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit51
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.y = load i64, ptr %i.x, align 8, !tbaa !44
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.ptr.3, i64 noundef 0, i64 noundef %i.y, ptr noundef nonnull @.str.95, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit53 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit52
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.ptr.4, i64 noundef 0, i64 noundef %i.ab, ptr noundef nonnull @.str.96, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit54 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit53
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !44
  %i.af = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.ptr.6, i64 noundef 0, i64 noundef %i.ae, ptr noundef nonnull @.str.97, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit55.preheader unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit55.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit54
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %.thread76, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit55.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit55
  %.034102 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit55 ] ; 4 uses
  %.044101 = phi i64 [ 0, %.preheader.lr.ph ], [ %.3.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit55 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.044101 ; 2 uses
  %i.aj = sub nuw i64 %0, %.044101
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.c:                                             ; preds = %.preheader, %.critedge.thread
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %.critedge.thread ] ; 4 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.am = load i8, ptr %i.ai, align 1, !tbaa !33
  %i.an = or disjoint i64 %indvars.iv, 48
  %i.ao = sext i8 %i.am to i64
  %i.ap = icmp eq i64 %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit55, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !44 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ar) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  store ptr %i.ag, ptr %3, align 8, !tbaa !61, !alias.scope !194
  store i64 0, ptr %i.ah, align 8, !tbaa !44, !alias.scope !194
  store i8 0, ptr %i.ag, align 8, !tbaa !33, !alias.scope !194
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %.sroa.speculated.i, i8 noundef signext 0)
          to label %.lr.ph.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %3, align 8, !tbaa !32, !alias.scope !194 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ag
  br i1 %i.av, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.aw = load i64, ptr %i.ag, align 8, !tbaa !33, !alias.scope !194
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #22
  br label %.body

.lr.ph.i:                                         ; preds = %bb.e, %_Z10my_tolowerc.exit.i
  %.07.i = phi i64 [ %i.bg, %_Z10my_tolowerc.exit.i ], [ 0, %bb.e ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.07.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !33, !noalias !194 ; 3 uses
  %i.ba = icmp slt i8 %i.az, 0
  br i1 %i.ba, label %_Z10my_tolowerc.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.bb = zext nneg i8 %i.az to i32
  %i.bc = call i32 @tolower(i32 noundef %i.bb) #26
  %i.bd = trunc i32 %i.bc to i8
  br label %_Z10my_tolowerc.exit.i

_Z10my_tolowerc.exit.i:                           ; preds = %bb.g, %.lr.ph.i
  %.0.i.i = phi i8 [ %i.bd, %bb.g ], [ %i.az, %.lr.ph.i ]
  %i.be = load ptr, ptr %3, align 8, !tbaa !32, !alias.scope !194
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.07.i
  store i8 %.0.i.i, ptr %i.bf, align 1, !tbaa !33
  %i.bg = add nuw i64 %.07.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bg, %.sroa.speculated.i
  br i1 %exitcond.not.i, label %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit, label %.lr.ph.i, !llvm.loop !192

_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit: ; preds = %_Z10my_tolowerc.exit.i
  %i.bh = load i64, ptr %i.ah, align 8, !tbaa !44 ; 4 uses
  %i.bi = load i64, ptr %i.aq, align 8, !tbaa !44
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.h, label %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit
  %.pre = load ptr, ptr %3, align 8, !tbaa !32
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.h:                                             ; preds = %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit
  %i.bk = icmp eq i64 %i.bh, 0
  %.pre113 = load ptr, ptr %3, align 8, !tbaa !32 ; 3 uses
  br i1 %i.bk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.al, align 16, !tbaa !32
  %bcmp.i = call i32 @bcmp(ptr %.pre113, ptr %i.bl, i64 %i.bh)
  %i.bm = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.h, %bb.i
  %i.bn = phi ptr [ %.pre113, %bb.h ], [ %.pre, %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre113, %bb.i ] ; 2 uses
  %i.bo = phi i1 [ true, %bb.h ], [ false, %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.bm, %bb.i ]
  %i.bp = icmp eq ptr %i.bn, %i.ag
  br i1 %i.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bq = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bq)
end_hunk_0
begin_hunk_1_@_ZN13BaseExceptionD0Ev:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13BaseException4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  ret ptr %i.b
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #14

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZL24createInventoryCubeImagePN5video6IImageES1_S1_ENK3$_2clES1_fssssssSt16initializer_listIN4core8vector2dIsEEE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(41) %0, ptr noundef nonnull %1, float noundef nofpclass(nan inf zero sub nnorm) %2, i16 noundef signext range(i16 -4, 1) %3, i16 noundef signext %4, i16 noundef signext range(i16 -2, 3) %5, i16 noundef signext range(i16 2, 6) %6, i16 noundef signext %7, ptr nofree readonly captures(address) %.0.val, i64 %.8.val) unnamed_addr #7 align 2 {
bb.a:
  %8 = alloca %"class.core::dimension2d", align 4 ; 5 uses
  %i.a = fmul nnan nsz float %2, 2.560000e+02
  %i.b = fptoui float %i.a to i32
  %i.c = tail call noundef i32 @llvm.umin.i32(i32 %i.b, i32 256) ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !41
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !43
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 4, !tbaa !108 ; 3 uses
  %i.l = load i32, ptr %0, align 8, !tbaa !234    ; 3 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload.i, %i.l
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !108
  %i.o = icmp ne i32 %.sroa.4.0.copyload.i, %.sroa.0.0.copyload.i
  %i.p = icmp ne i32 %i.n, 3
  %or.cond.i = or i1 %i.p, %i.o
  br i1 %or.cond.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !235  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i32 %i.l, ptr %8, align 4, !tbaa !101
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.l, ptr %i.s, align 4, !tbaa !102
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 600
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(8) %8), !inline_history !229 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.x = load ptr, ptr %1, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef %i.w), !inline_history !229
  %i.aa = load ptr, ptr %1, align 8, !tbaa !41
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %1, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !43
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !43
  %.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i, label %bb.d, label %_ZNK17IReferenceCounted4dropEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #23, !inline_history !230
  br label %_ZNK17IReferenceCounted4dropEv.exit.i

_ZNK17IReferenceCounted4dropEv.exit.i:            ; preds = %bb.d, %bb.c
  %.pre.i = load i32, ptr %0, align 8, !tbaa !234
  br label %bb.e

bb.e:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit.i, %bb.b
  %.07 = phi ptr [ %i.w, %_ZNK17IReferenceCounted4dropEv.exit.i ], [ %1, %bb.b ] ; 4 uses
  %i.ak = phi i32 [ %.pre.i, %_ZNK17IReferenceCounted4dropEv.exit.i ], [ %.sroa.0.0.copyload.i, %bb.b ]
  %i.al = getelementptr inbounds nuw i8, ptr %.07, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !123
  %i.an = shl i32 %i.ak, 2
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %"_ZZL24createInventoryCubeImagePN5video6IImageES1_S1_ENK3$_0clERS1_.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, i32 noundef 225, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL24createInventoryCubeImagePN5video6IImageES1_S1_ENK3$_0clERS1_") #25
  unreachable

"_ZZL24createInventoryCubeImagePN5video6IImageES1_S1_ENK3$_0clERS1_.exit": ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !128 ; 2 uses
  %.not17 = icmp eq i32 %i.aq, 0
  br i1 %.not17, label %._crit_edge16, label %.preheader.preheader

.preheader.preheader:                             ; preds = %"_ZZL24createInventoryCubeImagePN5video6IImageES1_S1_ENK3$_0clERS1_.exit"
  %i.ar = shl nuw nsw i32 %i.c, 8
  %.idx = shl i64 %.8.val, 2                      ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx
  %.not8 = icmp eq i64 %.8.val, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !124
  %i.ay = add i64 %.idx, -4                       ; 2 uses
  %i.az = and i64 %i.ay, 4
  %lcmp.mod.not.not = icmp eq i64 %i.az, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.bc = icmp eq i64 %i.ay, 0
  br label %.lr.ph12

.lr.ph12:                                         ; preds = %._crit_edge13, %.preheader.preheader
  %i.bd = phi i32 [ %i.bx, %._crit_edge13 ], [ %i.aq, %.preheader.preheader ] ; 2 uses
  %.02915 = phi i16 [ %i.by, %._crit_edge13 ], [ 0, %.preheader.preheader ] ; 3 uses
  %.03014 = phi ptr [ %.1.lcssa, %._crit_edge13 ], [ %i.ax, %.preheader.preheader ] ; 2 uses
  %i.be = mul i16 %.02915, %3
  %i.bf = add i16 %i.be, %4
  %i.bg = mul i16 %.02915, %6
  %i.bh = add i16 %i.bg, %7
  br i1 %.not8, label %.lr.ph12.split.us, label %.lr.ph12.split

.lr.ph12.split.us:                                ; preds = %.lr.ph12, %.lr.ph12.split.us
  %.02811.us = phi i16 [ %i.bj, %.lr.ph12.split.us ], [ 0, %.lr.ph12 ]
  %.110.us = phi ptr [ %i.bi, %.lr.ph12.split.us ], [ %.03014, %.lr.ph12 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.110.us, i64 4 ; 2 uses
  %i.bj = add i16 %.02811.us, 1                   ; 2 uses
  %i.bk = zext i16 %i.bj to i32
  %i.bl = icmp ugt i32 %i.bd, %i.bk
  br i1 %i.bl, label %.lr.ph12.split.us, label %._crit_edge13, !llvm.loop !231

.lr.ph12.split:                                   ; preds = %.lr.ph12
  %i.bm = load ptr, ptr %i.at, align 8, !tbaa !129 ; 3 uses
  br label %.lr.ph

._crit_edge16:                                    ; preds = %._crit_edge13, %"_ZZL24createInventoryCubeImagePN5video6IImageES1_S1_ENK3$_0clERS1_.exit"
  %i.bn = load ptr, ptr %.07, align 8, !tbaa !41
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds i8, ptr %.07, i64 %i.bp ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !43
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !43
  %.not.i.i33 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i33, label %bb.g, label %"_ZZL24createInventoryCubeImagePN5video6IImageES1_S1_ENK3$_1clES1_.exit"

bb.g:                                             ; preds = %._crit_edge16
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !41
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(12) %i.bq) #23, !inline_history !232
  br label %"_ZZL24createInventoryCubeImagePN5video6IImageES1_S1_ENK3$_1clES1_.exit"

"_ZZL24createInventoryCubeImagePN5video6IImageES1_S1_ENK3$_1clES1_.exit": ; preds = %._crit_edge16, %bb.g
  ret void

._crit_edge13:                                    ; preds = %._crit_edge, %.lr.ph12.split.us
  %i.bx = phi i32 [ %i.bd, %.lr.ph12.split.us ], [ %i.df, %._crit_edge ] ; 2 uses
  %.1.lcssa = phi ptr [ %i.bi, %.lr.ph12.split.us ], [ %i.dc, %._crit_edge ]
  %i.by = add i16 %.02915, 1                      ; 2 uses
  %i.bz = zext i16 %i.by to i32
  %i.ca = icmp samesign ugt i32 %i.bx, %i.bz
  br i1 %i.ca, label %.lr.ph12, label %._crit_edge16, !llvm.loop !233

.lr.ph:                                           ; preds = %.lr.ph12.split, %._crit_edge
  %.02811 = phi i16 [ 0, %.lr.ph12.split ], [ %i.dd, %._crit_edge ] ; 3 uses
  %.110 = phi ptr [ %.03014, %.lr.ph12.split ], [ %i.dc, %._crit_edge ] ; 2 uses
  %i.cb = load i32, ptr %.110, align 4, !tbaa !108 ; 4 uses
  %.sroa.10.0.extract.shift = and i32 %i.cb, -16777216
  %i.cc = lshr i32 %i.cb, 16
  %i.cd = and i32 %i.cc, 255
  %i.ce = mul nuw nsw i32 %i.ar, %i.cd
  %i.cf = and i32 %i.ce, 33488896
  %i.cg = lshr i32 %i.cb, 8
  %i.ch = and i32 %i.cg, 255
  %i.ci = mul nuw nsw i32 %i.ch, %i.c
  %i.cj = and i32 %i.ci, 130816
  %i.ck = and i32 %i.cb, 255
  %i.cl = mul nuw nsw i32 %i.ck, %i.c
  %i.cm = lshr i32 %i.cl, 8
  %9 = shl i16 %.02811, 2
  %10 = add i16 %i.bf, %9
  %11 = mul i16 %.02811, %5
  %12 = add i16 %i.bh, %11
  %invariant.op = or i32 %i.cf, %i.cj
  %.sroa.9.0.insert.insert37 = or disjoint i32 %i.cm, %.sroa.10.0.extract.shift
  %.sroa.0.0.insert.insert.reass = or i32 %.sroa.9.0.insert.insert37, %invariant.op ; 3 uses
  %i.cn = sext i16 %12 to i32                     ; 3 uses
  %i.co = sext i16 %10 to i32                     ; 3 uses
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.cp = load i16, ptr %i.ba, align 2, !tbaa !239
  %i.cq = sext i16 %i.cp to i32
  %i.cr = add nsw i32 %i.cq, %i.cn
  %i.cs = load i32, ptr %i.au, align 8, !tbaa !130
  %i.ct = mul i32 %i.cr, %i.cs
  %i.cu = load i16, ptr %.0.val, align 2, !tbaa !240
  %i.cv = sext i16 %i.cu to i32
  %i.cw = add nsw i32 %i.cv, %i.co
  %i.cx = add i32 %i.cw, %i.ct
  %i.cy = load i32, ptr %i.av, align 4, !tbaa !131
  %i.cz = add i32 %i.cx, %i.cy
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.da
  store i32 %.sroa.0.0.insert.insert.reass, ptr %i.db, align 4, !tbaa !108
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.09.unr = phi ptr [ %.0.val, %.lr.ph ], [ %i.bb, %.prol.loopexit.unr-lcssa ]
  br i1 %i.bc, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %i.dc = getelementptr inbounds nuw i8, ptr %.110, i64 4 ; 2 uses
  %i.dd = add i16 %.02811, 1                      ; 2 uses
  %i.de = zext i16 %i.dd to i32
  %i.df = load i32, ptr %i.ap, align 8, !tbaa !128 ; 2 uses
  %i.dg = icmp ugt i32 %i.df, %i.de
  br i1 %i.dg, label %.lr.ph, label %._crit_edge13, !llvm.loop !231

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.09 = phi ptr [ %i.ek, %.lr.ph.new ], [ %.09.unr, %.prol.loopexit ] ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.09, i64 2
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !239
  %i.dj = sext i16 %i.di to i32
  %i.dk = add nsw i32 %i.dj, %i.cn
  %i.dl = load i32, ptr %i.au, align 8, !tbaa !130
  %i.dm = mul i32 %i.dk, %i.dl
  %i.dn = load i16, ptr %.09, align 2, !tbaa !240
  %i.do = sext i16 %i.dn to i32
  %i.dp = add nsw i32 %i.do, %i.co
  %i.dq = add i32 %i.dp, %i.dm
  %i.dr = load i32, ptr %i.av, align 4, !tbaa !131
  %i.ds = add i32 %i.dq, %i.dr
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.dt
  store i32 %.sroa.0.0.insert.insert.reass, ptr %i.du, align 4, !tbaa !108
  %i.dv = getelementptr inbounds nuw i8, ptr %.09, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %.09, i64 6
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !239
  %i.dy = sext i16 %i.dx to i32
  %i.dz = add nsw i32 %i.dy, %i.cn
  %i.ea = load i32, ptr %i.au, align 8, !tbaa !130
  %i.eb = mul i32 %i.dz, %i.ea
  %i.ec = load i16, ptr %i.dv, align 2, !tbaa !240
  %i.ed = sext i16 %i.ec to i32
  %i.ee = add nsw i32 %i.ed, %i.co
  %i.ef = add i32 %i.ee, %i.eb
  %i.eg = load i32, ptr %i.av, align 4, !tbaa !131
  %i.eh = add i32 %i.ef, %i.eg
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ei
  store i32 %.sroa.0.0.insert.insert.reass, ptr %i.ej, align 4, !tbaa !108
  %i.ek = getelementptr inbounds nuw i8, ptr %.09, i64 8 ; 2 uses
  %.not.1 = icmp eq ptr %i.ek, %i.as
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.new
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan.f32(float) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tan.f32(float) #17

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5video6IImageEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !132
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !21 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5video6IImageEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5video6IImageEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !21 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5video6IImageEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !241

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !44
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5video6IImageEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !21 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5video6IImageEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !241

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !44
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #24
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !36   ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !133 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5video6IImageEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !135 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !44
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5video6IImageEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8, !tbaa !21 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5video6IImageEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.us.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !135 ; 2 uses
  %i.ao = urem i64 %i.an, %i.x
  %.not19.us.i.i = icmp eq i64 %i.ao, %i.y
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5video6IImageEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !8

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.ap = phi i64 [ %i.az, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ac, %bb.e ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ar = icmp eq i64 %i.t, %i.ap
  br i1 %i.ar, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !44
  %i.au = icmp eq i64 %.fr22.i.i, %i.at
  br i1 %i.au, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !32
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.af, ptr %i.av, i64 %.fr22.i.i)
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5video6IImageEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ax = load ptr, ptr %.0.i.i, align 8, !tbaa !21 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ax, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5video6IImageEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !135 ; 2 uses
  %i.ba = urem i64 %i.az, %i.x
  %.not19.i.i = icmp eq i64 %i.ba, %i.y
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5video6IImageEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !8

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5video6IImageEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISC_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5video6IImageEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISC_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIcEaSIcEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !44
  store i8 0, ptr %i.a, align 8, !tbaa !33
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  %i.c = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZN4core6stringIcE5clearEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !33
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #22
  br label %_ZN4core6stringIcE5clearEb.exit

_ZN4core6stringIcE5clearEb.exit:                  ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !32
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_:bb.a
  %.029 = load ptr, ptr %.in, align 8, !tbaa !252 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !251

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !253
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !44   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !44   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !32
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #23 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !61
  %i.d = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.f, ptr %i.a, align 8, !tbaa !103
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !32
  %i.i = load i64, ptr %i.a, align 8, !tbaa !103
  store i64 %i.i, ptr %i.c, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !33
  store i8 %i.k, ptr %i.j, align 1, !tbaa !33
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #23 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #22
  invoke void @__cxa_rethrow() #25
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !44
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #24
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare extern_weak void @_ZTH10infostream() #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #17

declare extern_weak void @_ZTH11errorstream() #5

declare extern_weak void @_ZTH13warningstream() #5

declare extern_weak void @_ZTH11tracestream() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { builtin allocsize(0) }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!3 = distinct !{null}
!4 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null, null}
!5 = distinct !{null, null}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{!8, !34}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !18, i64 0}
!20 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"any p2 pointer", !18, i64 0}
!23 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !22, i64 0}
!24 = !{!"long", !14, i64 0}
!25 = !{!"float", !14, i64 0}
!26 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !25, i64 0, !24, i64 8}
!27 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5video6IImageEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !23, i64 0, !24, i64 8, !20, i64 16, !24, i64 24, !26, i64 32, !19, i64 48}
!28 = !{!27, !19, i64 16}
!29 = !{!"p1 omnipotent char", !18, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !29, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0, !24, i64 8, !14, i64 16}
!32 = !{!31, !29, i64 0}
!33 = !{!14, !14, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!27, !23, i64 0}
!36 = !{!27, !24, i64 8}
!37 = !{!"p1 _ZTSN5video6IImageE", !18, i64 0}
!38 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5video6IImageEE", !31, i64 0, !37, i64 32}
!39 = !{!38, !37, i64 32}
!40 = !{!"vtable pointer", !13, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"_ZTS17IReferenceCounted", !15, i64 8}
!43 = !{!42, !15, i64 8}
!44 = !{!31, !24, i64 8}
!45 = !{i8 0, i8 2}
!46 = !{!"p1 _ZTS15RenderingEngine", !18, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"_ZTSN5video6SColorE", !15, i64 0}
!49 = !{!"p1 _ZTS13RenderingCore", !18, i64 0}
!50 = !{!"_ZTSSt10_Head_baseILm0EP13RenderingCoreLb0EE", !49, i64 0}
!51 = !{!"_ZTSSt11_Tuple_implILm0EJP13RenderingCoreSt14default_deleteIS0_EEE", !50, i64 0}
!52 = !{!"_ZTSSt5tupleIJP13RenderingCoreSt14default_deleteIS0_EEE", !51, i64 0}
!53 = !{!"_ZTSSt15__uniq_ptr_implI13RenderingCoreSt14default_deleteIS0_EE", !52, i64 0}
!54 = !{!"_ZTSSt15__uniq_ptr_dataI13RenderingCoreSt14default_deleteIS0_ELb1ELb1EE", !53, i64 0}
!55 = !{!"_ZTSSt10unique_ptrI13RenderingCoreSt14default_deleteIS0_EE", !54, i64 0}
!56 = !{!"p1 _ZTS14IrrlichtDevice", !18, i64 0}
!57 = !{!"p1 _ZTSN5video12IVideoDriverE", !18, i64 0}
!58 = !{!"p1 _ZTS15MyEventReceiver", !18, i64 0}
!59 = !{!"_ZTS15RenderingEngine", !48, i64 0, !48, i64 4, !55, i64 8, !56, i64 16, !57, i64 24, !58, i64 32}
!60 = !{!59, !56, i64 16}
!61 = !{!30, !29, i64 0}
!62 = !{!37, !37, i64 0}
!63 = !{!"p1 _ZTS9LogTarget", !18, i64 0}
!64 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!65 = !{!"_ZTSSt6locale", !64, i64 0}
!66 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !65, i64 56}
!67 = !{!"_ZTSSt14_Function_base", !14, i64 0, !18, i64 16}
!68 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !67, i64 0, !18, i64 24}
!69 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !66, i64 0, !68, i64 64, !15, i64 96, !14, i64 100}
!70 = !{!"_ZTS17DummyStreamBuffer", !66, i64 0}
!71 = !{!"_ZTSSo"}
!72 = !{!"p1 _ZTSSo", !18, i64 0}
!73 = !{!"_ZTS11StreamProxy", !72, i64 0}
!74 = !{!"_ZTS9LogStream", !63, i64 0, !69, i64 8, !70, i64 368, !71, i64 432, !71, i64 704, !73, i64 976, !73, i64 984}
!75 = !{!74, !63, i64 0}
!76 = !{}
!77 = !{i64 8}
!78 = !{!29, !29, i64 0}
!79 = !{!73, !72, i64 0}
!80 = !{!"_ZTSSt13_Ios_Fmtflags", !14, i64 0}
!81 = !{!"_ZTSSt12_Ios_Iostate", !14, i64 0}
!82 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!83 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !24, i64 8}
!84 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!85 = !{!"_ZTSSt8ios_base", !24, i64 8, !24, i64 16, !80, i64 24, !81, i64 28, !81, i64 32, !82, i64 40, !83, i64 48, !14, i64 64, !15, i64 192, !84, i64 200, !65, i64 208}
!86 = !{!85, !81, i64 32}
!87 = !{!"bool", !14, i64 0}
!88 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 0}
!89 = !{!"p1 _ZTSSt5ctypeIcE", !18, i64 0}
!90 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!91 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!92 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !85, i64 0, !72, i64 216, !14, i64 224, !87, i64 225, !88, i64 232, !89, i64 240, !90, i64 248, !91, i64 256}
!93 = !{!92, !89, i64 240}
!94 = !{!"_ZTSNSt6locale5facetE", !15, i64 8}
!95 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!96 = !{!"p1 int", !18, i64 0}
!97 = !{!"p1 short", !18, i64 0}
!98 = !{!"_ZTSSt5ctypeIcE", !94, i64 0, !95, i64 16, !87, i64 24, !96, i64 32, !96, i64 40, !97, i64 48, !14, i64 56, !14, i64 57, !14, i64 313, !14, i64 569}
!99 = !{!98, !14, i64 56}
!100 = !{!"_ZTSN4core11dimension2dIjEE", !15, i64 0, !15, i64 4}
!101 = !{!100, !15, i64 0}
!102 = !{!100, !15, i64 4}
!103 = !{!24, !24, i64 0}
!104 = !{!48, !15, i64 0}
!105 = !{!"_ZTSN4core8vector2dIiEE", !15, i64 0, !15, i64 4}
!106 = !{!105, !15, i64 0}
!107 = !{!105, !15, i64 4}
!108 = !{!15, !15, i64 0}
!109 = !{!"_ZTS11BasicStrfndIcE", !31, i64 0, !24, i64 32}
!110 = !{!109, !24, i64 32}
!111 = !{!"_ZTSN5video13ECOLOR_FORMATE", !14, i64 0}
!112 = !{!"_ZTSN5video6IImageE", !111, i64 8, !100, i64 12, !29, i64 24, !15, i64 32, !15, i64 36, !87, i64 40}
!113 = !{!112, !111, i64 8}
!114 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5video6IImageESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE", !27, i64 0}
!115 = !{!"_ZTS16SourceImageCache", !114, i64 0}
!116 = !{!"_ZTS11ImageSource", !87, i64 0, !87, i64 1, !87, i64 2, !87, i64 3, !115, i64 8}
!117 = !{!116, !87, i64 0}
!118 = !{!116, !87, i64 2}
!119 = !{!116, !87, i64 1}
!120 = !{!116, !87, i64 3}
!121 = !{!"p1 _ZTS8Settings", !18, i64 0}
!122 = !{!121, !121, i64 0}
!123 = !{!112, !15, i64 36}
!124 = !{!112, !29, i64 24}
!125 = !{!"_ZTSZL24createInventoryCubeImagePN5video6IImageES1_S1_E3$_0", !15, i64 0, !57, i64 8}
!126 = !{!"_ZTSZL24createInventoryCubeImagePN5video6IImageES1_S1_E3$_1"}
!127 = !{!"_ZTSZL24createInventoryCubeImagePN5video6IImageES1_S1_E3$_2", !125, i64 0, !15, i64 16, !96, i64 24, !15, i64 32, !15, i64 36, !126, i64 40}
!128 = !{!127, !15, i64 16}
!129 = !{!127, !96, i64 24}
!130 = !{!127, !15, i64 32}
!131 = !{!127, !15, i64 36}
!132 = !{!27, !24, i64 24}
!133 = !{!19, !19, i64 0}
!134 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !24, i64 0}
!135 = !{!134, !24, i64 0}
!136 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!137 = !{!136, !136, i64 0}
!138 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5video6IImageEELb1EEEEEE", !18, i64 0}
!139 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5video6IImageEELb1EEE", !18, i64 0}
!140 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5video6IImageEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !138, i64 0, !139, i64 8}
!141 = !{!140, !139, i64 8}
!142 = !{!"_ZTSSt14_Rb_tree_color", !14, i64 0}
!143 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!144 = !{!"_ZTSSt18_Rb_tree_node_base", !142, i64 0, !143, i64 8, !143, i64 16, !143, i64 24}
!145 = !{!"_ZTSSt15_Rb_tree_header", !144, i64 0, !24, i64 32}
!146 = distinct !{!146, !34}
!147 = distinct !{null}
!148 = distinct !{null}
!149 = distinct !{null}
!150 = distinct !{null}
!151 = distinct !{null}
!152 = distinct !{null}
!153 = distinct !{null, null, null}
!154 = distinct !{!154, !34}
!155 = distinct !{!155, !34}
!156 = distinct !{null, null}
!157 = distinct !{!157, !34}
!158 = distinct !{null}
!159 = distinct !{null}
!160 = distinct !{null}
!161 = distinct !{null}
!162 = distinct !{!162, !34}
!163 = distinct !{!163, !34}
!164 = distinct !{!164, !34}
!165 = distinct !{!165, !34}
!166 = distinct !{!166, !34}
end_hunk_2
