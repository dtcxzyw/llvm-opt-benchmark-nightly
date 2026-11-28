Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dnn_superres_benchmark_time?download=true
inline.NumInlined: 548
inline.NumDeleted: 261
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@main:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef 32) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  %i.wg = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !22 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 2 uses
  %i.wj = icmp eq ptr %i.wh, %i.wi
  br i1 %i.wj, label %_ZN2cv12dnn_superres15DnnSuperResImplD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i296: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit295
  %i.wk = load i64, ptr %i.wi, align 8, !tbaa !16
  %i.wl = add i64 %i.wk, 1
  call void @_ZdlPvm(ptr noundef %i.wh, i64 noundef %i.wl) #20
  br label %_ZN2cv12dnn_superres15DnnSuperResImplD2Ev.exit

_ZN2cv12dnn_superres15DnnSuperResImplD2Ev.exit:   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit295, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i296
  call void @_ZN2cv3dnn14dnn5_v202606053NetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(52) %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131

bb.dz:                                            ; preds = %bb.au
  %i.wm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  br label %bb.fc

bb.ea:                                            ; preds = %bb.av
  %i.wn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br label %bb.fb

bb.eb:                                            ; preds = %bb.aw
  %i.wo = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ec:                                            ; preds = %bb.ax, %bb.ay, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i, %.noexc134, %bb.bb, %bb.az
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit313

bb.ed:                                            ; preds = %bb.ba
  %i.wq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit313

bb.ee:                                            ; preds = %bb.bc
  %i.wr = landingpad { ptr, i32 }
          cleanup
  br label %.thread490

bb.ef:                                            ; preds = %.noexc345, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc343, %bb.bg, %bb.be, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.bd
  %i.ws = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wt = load ptr, ptr %34, align 8, !tbaa !22   ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.wv = icmp eq ptr %i.wt, %i.wu
  br i1 %i.wv, label %.thread490, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298: ; preds = %bb.ef
  %i.ww = load i64, ptr %i.wu, align 8, !tbaa !16
  %i.wx = add i64 %i.ww, 1
  call void @_ZdlPvm(ptr noundef %i.wt, i64 noundef %i.wx) #20
  br label %.thread490

.thread490:                                       ; preds = %bb.ef, %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298
  %.pn76 = phi { ptr, i32 } [ %i.wr, %bb.ee ], [ %i.ws, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298 ], [ %i.ws, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  br label %bb.ez

bb.eg:                                            ; preds = %.noexc356, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i351, %.noexc354, %bb.bl, %bb.bj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit163, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161, %.noexc158, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i151, %.noexc146, %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.30.0 = phi ptr [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.hr, %bb.bj ], [ %i.hr, %.noexc356 ], [ %i.hr, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i351 ], [ %i.hr, %.noexc354 ], [ %i.hr, %bb.bl ], [ %i.hr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit163 ], [ %i.hr, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161 ], [ %i.hr, %.noexc158 ], [ %i.fw, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i151 ], [ %i.fw, %.noexc146 ], [ %i.fw, %bb.bi ]
  %.sroa.0436.0 = phi ptr [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ho, %bb.bj ], [ %i.ho, %.noexc356 ], [ %i.ho, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i351 ], [ %i.ho, %.noexc354 ], [ %i.ho, %bb.bl ], [ %i.ho, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit163 ], [ %i.ho, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit161 ], [ %i.ho, %.noexc158 ], [ %i.fv, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i151 ], [ %i.fv, %.noexc146 ], [ %i.fv, %bb.bi ]
  %i.wy = landingpad { ptr, i32 }
          cleanup
  br label %.thread499

bb.eh:                                            ; preds = %bb.bh
  %i.wz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  br label %.thread499

bb.ei:                                            ; preds = %.noexc367, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i362, %.noexc365, %bb.bq, %bb.bo, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i180, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i175, %.noexc170, %bb.bn, %_ZNSolsEPFRSoS_E.exit167
  %.sroa.30.1 = phi ptr [ %i.hr, %_ZNSolsEPFRSoS_E.exit167 ], [ %i.jd, %bb.bo ], [ %i.jd, %.noexc367 ], [ %i.jd, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i362 ], [ %i.jd, %.noexc365 ], [ %i.jd, %bb.bq ], [ %i.jd, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %i.jd, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %i.jd, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i180 ], [ %i.hr, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i175 ], [ %i.hr, %.noexc170 ], [ %i.hr, %bb.bn ]
  %.sroa.0436.1 = phi ptr [ %i.ho, %_ZNSolsEPFRSoS_E.exit167 ], [ %i.jb, %bb.bo ], [ %i.jb, %.noexc367 ], [ %i.jb, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i362 ], [ %i.jb, %.noexc365 ], [ %i.jb, %bb.bq ], [ %i.jb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187 ], [ %i.jb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit185 ], [ %i.jb, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i180 ], [ %i.ho, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i175 ], [ %i.ho, %.noexc170 ], [ %i.ho, %bb.bn ]
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.ej:                                            ; preds = %bb.bm
  %i.xb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  br label %bb.ey

bb.ek:                                            ; preds = %.noexc378, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i373, %.noexc376, %bb.bv, %bb.bt, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit207, %.noexc194, %bb.bs, %_ZNSolsEPFRSoS_E.exit191
  %i.xc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.el:                                            ; preds = %bb.br
  %i.xd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  br label %bb.ex

bb.em:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %.035 = phi ptr [ %i.lj, %bb.by ], [ %i.li, %bb.bx ], [ %i.lh, %bb.bw ]
  %i.xe = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.en
  %i.xf = phi ptr [ %.035, %bb.em ], [ %i.xg, %bb.en ]
  %i.xg = getelementptr inbounds i8, ptr %i.xf, i64 -208 ; 3 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.xg) #18
  %i.xh = icmp eq ptr %i.xg, %45
  br i1 %i.xh, label %.loopexit, label %bb.en

.body217:                                         ; preds = %.body383, %bb.cf
  %i.xi = getelementptr inbounds nuw i8, ptr %45, i64 624
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.xi) #18
  %i.xj = getelementptr inbounds nuw i8, ptr %45, i64 416
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.xj) #18
  %i.xk = getelementptr inbounds nuw i8, ptr %45, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.xk) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %45) #18
  br label %.loopexit

.loopexit:                                        ; preds = %bb.en, %.body217, %.thread475
  %.pn87 = phi { ptr, i32 } [ %eh.lpad-body384, %.body217 ], [ %i.lg, %.thread475 ], [ %i.xe, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  br label %bb.ew

bb.eo:                                            ; preds = %_ZSt10_ConstructIN2cv3MatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.3
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %.thread477

.body231:                                         ; preds = %.thread610, %bb.ch
  %i.xm = phi { ptr, i32 } [ %i.na, %.thread610 ], [ %i.nf, %bb.ch ] ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %47, i64 96
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !22 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %47, i64 112 ; 2 uses
  %i.xq = icmp eq ptr %i.xo, %i.xp
  br i1 %i.xq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %.body231
  %i.xr = load i64, ptr %i.xp, align 8, !tbaa !16
  %i.xs = add i64 %i.xr, 1
  call void @_ZdlPvm(ptr noundef %i.xo, i64 noundef %i.xs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %.body231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301
  %i.xt = getelementptr inbounds nuw i8, ptr %47, i64 64
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !22 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %47, i64 80 ; 2 uses
  %i.xw = icmp eq ptr %i.xu, %i.xv
  br i1 %i.xw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
  %i.xx = load i64, ptr %i.xv, align 8, !tbaa !16
  %i.xy = add i64 %i.xx, 1
  call void @_ZdlPvm(ptr noundef %i.xu, i64 noundef %i.xy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301.1
  %i.xz = getelementptr inbounds nuw i8, ptr %47, i64 32
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !22 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %47, i64 48 ; 2 uses
  %i.yc = icmp eq ptr %i.ya, %i.yb
  br i1 %i.yc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303.1
  %i.yd = load i64, ptr %i.yb, align 8, !tbaa !16
  %i.ye = add i64 %i.yd, 1
  call void @_ZdlPvm(ptr noundef %i.ya, i64 noundef %i.ye) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301.2
  %i.yf = load ptr, ptr %47, align 8, !tbaa !22   ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.yh = icmp eq ptr %i.yf, %i.yg
  br i1 %i.yh, label %.thread477, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303.2
  %i.yi = load i64, ptr %i.yg, align 8, !tbaa !16
  %51 = add i64 %i.yi, 1
  call void @_ZdlPvm(ptr noundef %i.yf, i64 noundef %51) #20
  br label %.thread477

bb.ep:                                            ; preds = %.noexc.i224
  %i.yj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %47, i64 32
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !22 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %47, i64 48 ; 2 uses
  %i.yn = icmp eq ptr %i.yl, %i.ym
  br i1 %i.yn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304: ; preds = %bb.ep
  %i.yo = load i64, ptr %i.ym, align 8, !tbaa !16
  %i.yp = add i64 %i.yo, 1
  call void @_ZdlPvm(ptr noundef %i.yl, i64 noundef %i.yp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306: ; preds = %bb.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304
  %i.yq = load ptr, ptr %47, align 8, !tbaa !22   ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.ys = icmp eq ptr %i.yq, %i.yr
  br i1 %i.ys, label %.thread477, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304.1.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304.1.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306
  %52 = load i64, ptr %i.yr, align 8, !tbaa !16
  %i.yt = add i64 %52, 1
  call void @_ZdlPvm(ptr noundef %i.yq, i64 noundef %i.yt) #20
  br label %.thread477

.thread477:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304.1.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301.3, %bb.eo
  %.pn89.pn.pn.pn482 = phi { ptr, i32 } [ %i.xl, %bb.eo ], [ %i.xm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301.3 ], [ %i.yj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i304.1.a ], [ %i.xm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303.2 ], [ %i.yj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  br label %bb.ev

bb.eq:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.3
  %i.yu = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.er:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.yv = landingpad { ptr, i32 }
          cleanup
  br label %.body245

bb.es:                                            ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i
  %i.yw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit308

bb.et:                                            ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit
  %i.yx = landingpad { ptr, i32 }
          cleanup
  br label %.body254

.body254:                                         ; preds = %bb.et, %bb.du
  %eh.lpad-body255 = phi { ptr, i32 } [ %i.yx, %bb.et ], [ %.pn58.pn.pn.pn.pn.pn.i, %bb.du ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ov, i64 noundef 32) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit308

_ZNSt6vectorIdSaIdEED2Ev.exit308:                 ; preds = %.body254, %bb.es
  %.pn94 = phi { ptr, i32 } [ %i.yw, %bb.es ], [ %eh.lpad-body255, %.body254 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %50) #18
  br label %.body245

.body245:                                         ; preds = %bb.er, %bb.cm, %bb.cl, %_ZNSt6vectorIdSaIdEED2Ev.exit308
  %.pn94.pn = phi { ptr, i32 } [ %.pn94, %_ZNSt6vectorIdSaIdEED2Ev.exit308 ], [ %i.yv, %bb.er ], [ %i.ou, %bb.cm ], [ %i.ou, %bb.cl ]
  %i.yy = load ptr, ptr %49, align 8, !tbaa !22   ; 2 uses
  %i.yz = icmp eq ptr %i.yy, %i.oe
  br i1 %i.yz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %.body245
  %i.za = load i64, ptr %i.oe, align 8, !tbaa !16
  %i.zb = add i64 %i.za, 1
  call void @_ZdlPvm(ptr noundef %i.yy, i64 noundef %i.zb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311: ; preds = %.body245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %48) #18
  br label %bb.eu

bb.eu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, %bb.eq
  %.pn98 = phi { ptr, i32 } [ %i.yu, %bb.eq ], [ %.pn94.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %46) #18
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %.thread477
  %.pn98.pn = phi { ptr, i32 } [ %.pn98, %bb.eu ], [ %.pn89.pn.pn.pn482, %.thread477 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %44) #18
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %.loopexit
  %.pn98.pn.pn = phi { ptr, i32 } [ %.pn98.pn, %bb.ev ], [ %.pn87, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.el, %bb.ek
  %.pn98.pn.pn.pn = phi { ptr, i32 } [ %i.xc, %bb.ek ], [ %.pn98.pn.pn, %bb.ew ], [ %i.xd, %bb.el ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18
  br label %bb.ey

.thread499:                                       ; preds = %bb.eg, %bb.eh
  %.sroa.30.5.ph = phi ptr [ %i.fw, %bb.eh ], [ %.sroa.30.0, %bb.eg ]
  %.sroa.0436.5.ph = phi ptr [ %i.fv, %bb.eh ], [ %.sroa.0436.0, %bb.eg ]
  %.pn98.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.wz, %bb.eh ], [ %i.wy, %bb.eg ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ei, %bb.ej, %bb.ex
  %.sroa.30.4 = phi ptr [ %.sroa.30.1, %bb.ei ], [ %i.jd, %bb.ex ], [ %i.hr, %bb.ej ]
  %.sroa.0436.4 = phi ptr [ %.sroa.0436.1, %bb.ei ], [ %i.jb, %bb.ex ], [ %i.ho, %bb.ej ]
  %.pn98.pn.pn.pn.pn = phi { ptr, i32 } [ %i.xa, %bb.ei ], [ %.pn98.pn.pn.pn, %bb.ex ], [ %i.xb, %bb.ej ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.thread499, %.thread490
  %.pn98.pn.pn.pn.pn.pn.pn497 = phi { ptr, i32 } [ %.pn76, %.thread490 ], [ %.pn98.pn.pn.pn.pn, %bb.ey ], [ %.pn98.pn.pn.pn.pn.pn.ph, %.thread499 ]
  %.sroa.0436.6496 = phi ptr [ %i.fv, %.thread490 ], [ %.sroa.0436.4, %bb.ey ], [ %.sroa.0436.5.ph, %.thread499 ] ; 2 uses
  %.sroa.30.6495 = phi ptr [ %i.fw, %.thread490 ], [ %.sroa.30.4, %bb.ey ], [ %.sroa.30.5.ph, %.thread499 ]
  %i.zc = ptrtoint ptr %.sroa.30.6495 to i64
  %i.zd = ptrtoint ptr %.sroa.0436.6496 to i64
  %i.ze = sub i64 %i.zc, %i.zd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0436.6496, i64 noundef %i.ze) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit313

_ZNSt6vectorIdSaIdEED2Ev.exit313:                 ; preds = %bb.ed, %bb.ec, %bb.ez
  %.pn98.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.wp, %bb.ec ], [ %.pn98.pn.pn.pn.pn.pn.pn497, %bb.ez ], [ %i.wq, %bb.ed ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  call void @_ZN2cv12dnn_superres15DnnSuperResImplD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %30) #18
  br label %bb.fa

bb.fa:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit313, %bb.eb
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit313 ], [ %i.wo, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ea
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fa ], [ %i.wn, %bb.ea ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #18
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.dz
  %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fb ], [ %i.wm, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131: ; preds = %bb.ap, %_ZN2cv12dnn_superres15DnnSuperResImplD2Ev.exit
  %.029 = phi i32 [ 0, %_ZN2cv12dnn_superres15DnnSuperResImplD2Ev.exit ], [ -2, %bb.ap ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %i.zf = load ptr, ptr %23, align 8, !tbaa !22   ; 2 uses
  %i.zg = icmp eq ptr %i.zf, %i.bt
  br i1 %i.zg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131
  %i.zh = load i64, ptr %i.bt, align 8, !tbaa !16
  %i.zi = add i64 %i.zh, 1
  call void @_ZdlPvm(ptr noundef %i.zf, i64 noundef %i.zi) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  %i.zj = load ptr, ptr %22, align 8, !tbaa !22   ; 2 uses
  %i.zk = icmp eq ptr %i.zj, %i.bf
  br i1 %i.zk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316
  %i.zl = load i64, ptr %i.bf, align 8, !tbaa !16
  %i.zm = add i64 %i.zl, 1
  call void @_ZdlPvm(ptr noundef %i.zj, i64 noundef %i.zm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  %i.zn = load ptr, ptr %21, align 8, !tbaa !22   ; 2 uses
  %i.zo = icmp eq ptr %i.zn, %i.ar
  br i1 %i.zo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319
  %i.zp = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.zq = add i64 %i.zp, 1
  call void @_ZdlPvm(ptr noundef %i.zn, i64 noundef %i.zq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %bb.fe

.body:                                            ; preds = %bb.at, %bb.ao, %bb.fc
  %.pn110 = phi { ptr, i32 } [ %.pn98.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fc ], [ %i.eq, %bb.at ], [ %.pn.i, %bb.ao ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #18
  br label %bb.fd

bb.fd:                                            ; preds = %.body, %bb.as
  %.pn110.pn = phi { ptr, i32 } [ %.pn110, %.body ], [ %i.ep, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %i.zr = load ptr, ptr %23, align 8, !tbaa !22   ; 2 uses
  %i.zs = icmp eq ptr %i.zr, %i.bt
  br i1 %i.zs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %bb.fd
  %i.zt = load i64, ptr %i.bt, align 8, !tbaa !16
  %i.zu = add i64 %i.zt, 1
  call void @_ZdlPvm(ptr noundef %i.zr, i64 noundef %i.zu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323, %bb.ar
  %.pn110.pn.pn = phi { ptr, i32 } [ %i.eo, %bb.ar ], [ %.pn110.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323 ], [ %.pn110.pn, %bb.fd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  %i.zv = load ptr, ptr %22, align 8, !tbaa !22   ; 2 uses
  %i.zw = icmp eq ptr %i.zv, %i.bf
  br i1 %i.zw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325
  %i.zx = load i64, ptr %i.bf, align 8, !tbaa !16
  %i.zy = add i64 %i.zx, 1
  call void @_ZdlPvm(ptr noundef %i.zv, i64 noundef %i.zy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326, %bb.aq
  %.pn110.pn.pn.pn = phi { ptr, i32 } [ %i.en, %bb.aq ], [ %.pn110.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326 ], [ %.pn110.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  %i.zz = load ptr, ptr %21, align 8, !tbaa !22   ; 2 uses
end_hunk_0
