inline.NumInlined: 296
inline.NumDeleted: 155
begin_hunk_0_@_ZN6Assimp33GetPostProcessingStepInstanceListERSt6vectorIPNS_11BaseProcessESaIS2_EE:bb.a
  invoke void @_ZN6Assimp23LimitBoneWeightsProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(29) %i.yd)
          to label %bb.fo unwind label %bb.gw

bb.fo:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit268
  %i.ye = load ptr, ptr %i.q, align 8             ; 3 uses
  %i.yf = load ptr, ptr %i.a, align 8
  %.not.i.i269 = icmp eq ptr %i.ye, %i.yf
  br i1 %.not.i.i269, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  store ptr %i.yd, ptr %i.ye, align 8
  %i.yg = load ptr, ptr %i.q, align 8
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  store ptr %i.yh, ptr %i.q, align 8
  br label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit276

bb.fq:                                            ; preds = %bb.fo
  %i.yi = load ptr, ptr %0, align 8               ; 4 uses
  %i.yj = ptrtoint ptr %i.ye to i64
  %i.yk = ptrtoint ptr %i.yi to i64
  %i.yl = sub i64 %i.yj, %i.yk                    ; 6 uses
  %i.ym = icmp eq i64 %i.yl, 9223372036854775800
  br i1 %i.ym, label %bb.fr, label %_ZNKSt6vectorIPN6Assimp11BaseProcessESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i270

bb.fr:                                            ; preds = %bb.fq
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorIPN6Assimp11BaseProcessESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i270: ; preds = %bb.fq
  %i.yn = ashr exact i64 %i.yl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i271 = tail call i64 @llvm.umax.i64(i64 %i.yn, i64 1)
  %i.yo = add nsw i64 %.sroa.speculated.i.i.i.i271, %i.yn ; 2 uses
  %i.yp = icmp ult i64 %i.yo, %i.yn
  %i.yq = tail call i64 @llvm.umin.i64(i64 %i.yo, i64 1152921504606846975)
  %i.yr = select i1 %i.yp, i64 1152921504606846975, i64 %i.yq ; 3 uses
  %.not.i.i.i.i272 = icmp ne i64 %i.yr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i272)
  %i.ys = shl nuw nsw i64 %i.yr, 3
  %i.yt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ys) #18 ; 4 uses
  %i.yu = getelementptr inbounds i8, ptr %i.yt, i64 %i.yl ; 2 uses
  store ptr %i.yd, ptr %i.yu, align 8
  %i.yv = icmp sgt i64 %i.yl, 0
  br i1 %i.yv, label %bb.fs, label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i273

bb.fs:                                            ; preds = %_ZNKSt6vectorIPN6Assimp11BaseProcessESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i270
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yt, ptr align 8 %i.yi, i64 %i.yl, i1 false)
  br label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i273

_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i273: ; preds = %bb.fs, %_ZNKSt6vectorIPN6Assimp11BaseProcessESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i270
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  %.not.i17.i.i.i274 = icmp eq ptr %i.yi, null
  br i1 %.not.i17.i.i.i274, label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i275, label %bb.ft

bb.ft:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i273
  tail call void @_ZdlPvm(ptr noundef nonnull %i.yi, i64 noundef %i.yl) #19
  br label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i275

_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i275: ; preds = %bb.ft, %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i273
  store ptr %i.yt, ptr %0, align 8
  store ptr %i.yw, ptr %i.q, align 8
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %i.yr
  store ptr %i.yx, ptr %i.a, align 8
  br label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit276

_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit276: ; preds = %bb.fp, %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i275
  %i.yy = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 4 uses
  invoke void @_ZN6Assimp27ImproveCacheLocalityProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.yy)
          to label %bb.fu unwind label %bb.gx

bb.fu:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit276
  %i.yz = load ptr, ptr %i.q, align 8             ; 3 uses
  %i.za = load ptr, ptr %i.a, align 8
  %.not.i.i277 = icmp eq ptr %i.yz, %i.za
  br i1 %.not.i.i277, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  store ptr %i.yy, ptr %i.yz, align 8
  %i.zb = load ptr, ptr %i.q, align 8
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  store ptr %i.zc, ptr %i.q, align 8
  br label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit284

bb.fw:                                            ; preds = %bb.fu
  %i.zd = load ptr, ptr %0, align 8               ; 4 uses
  %i.ze = ptrtoint ptr %i.yz to i64
  %i.zf = ptrtoint ptr %i.zd to i64
  %i.zg = sub i64 %i.ze, %i.zf                    ; 6 uses
  %i.zh = icmp eq i64 %i.zg, 9223372036854775800
  br i1 %i.zh, label %bb.fx, label %_ZNKSt6vectorIPN6Assimp11BaseProcessESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i278

bb.fx:                                            ; preds = %bb.fw
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorIPN6Assimp11BaseProcessESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i278: ; preds = %bb.fw
  %i.zi = ashr exact i64 %i.zg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i279 = tail call i64 @llvm.umax.i64(i64 %i.zi, i64 1)
  %i.zj = add nsw i64 %.sroa.speculated.i.i.i.i279, %i.zi ; 2 uses
  %i.zk = icmp ult i64 %i.zj, %i.zi
  %i.zl = tail call i64 @llvm.umin.i64(i64 %i.zj, i64 1152921504606846975)
  %i.zm = select i1 %i.zk, i64 1152921504606846975, i64 %i.zl ; 3 uses
  %.not.i.i.i.i280 = icmp ne i64 %i.zm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i280)
  %i.zn = shl nuw nsw i64 %i.zm, 3
  %i.zo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zn) #18 ; 4 uses
  %i.zp = getelementptr inbounds i8, ptr %i.zo, i64 %i.zg ; 2 uses
  store ptr %i.yy, ptr %i.zp, align 8
  %i.zq = icmp sgt i64 %i.zg, 0
  br i1 %i.zq, label %bb.fy, label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i281

bb.fy:                                            ; preds = %_ZNKSt6vectorIPN6Assimp11BaseProcessESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i278
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zo, ptr align 8 %i.zd, i64 %i.zg, i1 false)
  br label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i281

_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i281: ; preds = %bb.fy, %_ZNKSt6vectorIPN6Assimp11BaseProcessESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i278
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %.not.i17.i.i.i282 = icmp eq ptr %i.zd, null
  br i1 %.not.i17.i.i.i282, label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i283, label %bb.fz

bb.fz:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i281
  tail call void @_ZdlPvm(ptr noundef nonnull %i.zd, i64 noundef %i.zg) #19
  br label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i283

_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i283: ; preds = %bb.fz, %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i281
  store ptr %i.zo, ptr %0, align 8
  store ptr %i.zr, ptr %i.q, align 8
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %i.zm
  store ptr %i.zs, ptr %i.a, align 8
  br label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit284

_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit284: ; preds = %bb.fv, %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i283
  %i.zt = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 4 uses
  tail call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.zt) #20
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp23GenBoundingBoxesProcessE, i64 16), ptr %i.zt, align 8
  %i.zu = load ptr, ptr %i.q, align 8             ; 3 uses
  %i.zv = load ptr, ptr %i.a, align 8
  %.not.i.i285 = icmp eq ptr %i.zu, %i.zv
  br i1 %.not.i.i285, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit284
  store ptr %i.zt, ptr %i.zu, align 8
  %i.zw = load ptr, ptr %i.q, align 8
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 8
  store ptr %i.zx, ptr %i.q, align 8
  br label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit292

bb.gb:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit284
  %i.zy = load ptr, ptr %0, align 8               ; 4 uses
  %i.zz = ptrtoint ptr %i.zu to i64
  %i.aaa = ptrtoint ptr %i.zy to i64
  %i.aab = sub i64 %i.zz, %i.aaa                  ; 6 uses
  %i.aac = icmp eq i64 %i.aab, 9223372036854775800
  br i1 %i.aac, label %bb.gc, label %_ZNKSt6vectorIPN6Assimp11BaseProcessESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i286

bb.gc:                                            ; preds = %bb.gb
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorIPN6Assimp11BaseProcessESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i286: ; preds = %bb.gb
  %i.aad = ashr exact i64 %i.aab, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i287 = tail call i64 @llvm.umax.i64(i64 %i.aad, i64 1)
  %i.aae = add nsw i64 %.sroa.speculated.i.i.i.i287, %i.aad ; 2 uses
  %i.aaf = icmp ult i64 %i.aae, %i.aad
  %i.aag = tail call i64 @llvm.umin.i64(i64 %i.aae, i64 1152921504606846975)
  %i.aah = select i1 %i.aaf, i64 1152921504606846975, i64 %i.aag ; 3 uses
  %.not.i.i.i.i288 = icmp ne i64 %i.aah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i288)
  %i.aai = shl nuw nsw i64 %i.aah, 3
  %i.aaj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aai) #18 ; 4 uses
  %i.aak = getelementptr inbounds i8, ptr %i.aaj, i64 %i.aab ; 2 uses
  store ptr %i.zt, ptr %i.aak, align 8
  %i.aal = icmp sgt i64 %i.aab, 0
  br i1 %i.aal, label %bb.gd, label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i289

bb.gd:                                            ; preds = %_ZNKSt6vectorIPN6Assimp11BaseProcessESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i286
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aaj, ptr align 8 %i.zy, i64 %i.aab, i1 false)
  br label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i289

_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i289: ; preds = %bb.gd, %_ZNKSt6vectorIPN6Assimp11BaseProcessESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i286
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  %.not.i17.i.i.i290 = icmp eq ptr %i.zy, null
  br i1 %.not.i17.i.i.i290, label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i291, label %bb.ge

bb.ge:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i289
  tail call void @_ZdlPvm(ptr noundef nonnull %i.zy, i64 noundef %i.aab) #19
  br label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i291

_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i291: ; preds = %bb.ge, %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i289
  store ptr %i.aaj, ptr %0, align 8
  store ptr %i.aam, ptr %i.q, align 8
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %i.aah
  store ptr %i.aan, ptr %i.a, align 8
  br label %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit292

_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit292: ; preds = %bb.ga, %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i291
  ret void

bb.gf:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit
  %i.aao = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 24) #19
  br label %bb.gy

bb.gg:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit52
  %i.aap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef 40) #19
  br label %bb.gy

bb.gh:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit60
  %i.aaq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 56) #19
  br label %bb.gy

bb.gi:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit76
  %i.aar = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef 32) #19
  br label %bb.gy

bb.gj:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit84
  %i.aas = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef 144) #19
  br label %bb.gy

bb.gk:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit108
  %i.aat = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef 32) #19
  br label %bb.gy

bb.gl:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit124
  %i.aau = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jm, i64 noundef 96) #19
  br label %bb.gy

bb.gm:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit140
  %i.aav = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef 32) #19
  br label %bb.gy

bb.gn:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit148
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef 32) #19
  br label %bb.gy

bb.go:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit156
  %i.aax = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef 32) #19
  br label %bb.gy

bb.gp:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit164
  %i.aay = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.nn, i64 noundef 120) #19
  br label %bb.gy

bb.gq:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit180
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.pd, i64 noundef 56) #19
  br label %bb.gy

bb.gr:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit188
  %i.aba = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.py, i64 noundef 32) #19
  br label %bb.gy

bb.gs:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit220
  %i.abb = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.th, i64 noundef 32) #19
  br label %bb.gy

bb.gt:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit228
  %i.abc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.uc, i64 noundef 32) #19
  br label %bb.gy

bb.gu:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit252
  %i.abd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.wn, i64 noundef 32) #19
  br label %bb.gy

bb.gv:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit260
  %i.abe = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.xi, i64 noundef 64) #19
  br label %bb.gy

bb.gw:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit268
  %i.abf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.yd, i64 noundef 32) #19
  br label %bb.gy

bb.gx:                                            ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EE9push_backEOS2_.exit276
  %i.abg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.yy, i64 noundef 32) #19
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf
  %.pn = phi { ptr, i32 } [ %i.abg, %bb.gx ], [ %i.abf, %bb.gw ], [ %i.abe, %bb.gv ], [ %i.abd, %bb.gu ], [ %i.abc, %bb.gt ], [ %i.abb, %bb.gs ], [ %i.aba, %bb.gr ], [ %i.aaz, %bb.gq ], [ %i.aay, %bb.gp ], [ %i.aax, %bb.go ], [ %i.aaw, %bb.gn ], [ %i.aav, %bb.gm ], [ %i.aau, %bb.gl ], [ %i.aat, %bb.gk ], [ %i.aas, %bb.gj ], [ %i.aar, %bb.gi ], [ %i.aaq, %bb.gh ], [ %i.aap, %bb.gg ], [ %i.aao, %bb.gf ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN6Assimp14FlipUVsProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN6Assimp15RemoveVCProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

declare void @_ZN6Assimp26RemoveRedundantMatsProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #4

declare void @_ZN6Assimp20FindInstancesProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(25)) unnamed_addr #4

declare void @_ZN6Assimp20OptimizeGraphProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #4

declare void @_ZN6Assimp12ScaleProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #4

declare void @_ZN6Assimp20PretransformVerticesC1Ev(ptr noundef nonnull align 8 dereferenceable(93)) unnamed_addr #4

declare void @_ZN6Assimp22FindDegeneratesProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #4

declare void @_ZN6Assimp18SortByPTypeProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #4

declare void @_ZN6Assimp22FindInvalidDataProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(29)) unnamed_addr #4

declare void @_ZN6Assimp21OptimizeMeshesProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #4

declare void @_ZN6Assimp23SplitByBoneCountProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #4

declare void @_ZN6Assimp32SplitLargeMeshesProcess_TriangleC1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #4

declare void @_ZN6Assimp23GenVertexNormalsProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(31)) unnamed_addr #4

declare void @_ZN6Assimp19CalcTangentsProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare void @_ZN6Assimp30SplitLargeMeshesProcess_VertexC1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #4

declare void @_ZN6Assimp13DeboneProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #4

declare void @_ZN6Assimp23LimitBoneWeightsProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(29)) unnamed_addr #4

declare void @_ZN6Assimp27ImproveCacheLocalityProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp25ComputeSpatialSortProcessD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6Assimp25ComputeSpatialSortProcess8IsActiveEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp ne ptr %i.b, null
  %i.d = and i32 %1, 35
  %i.e = icmp ne i32 %i.d, 0
  %i.f = and i1 %i.e, %i.c
  ret i1 %i.f
}

declare noundef zeroext i1 @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare void @_ZN6Assimp11BaseProcess15SetupPropertiesEPKNS_8ImporterE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp25ComputeSpatialSortProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.36", align 1 ; 4 uses
  %i.a = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull @.str)
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt6vectorISt4pairIN6Assimp11SpatialSortEfESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.e, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.f = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #18 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp21SharedPostProcessInfo9THeapDataISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEE, i64 16), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.b, ptr %i.l, align 8
  call void @_Z21SetGenericPropertyPtrIN6Assimp21SharedPostProcessInfo4BaseEEvRSt3mapIjPT_St4lessIjESaISt4pairIKjS5_EEEPKcS5_Pb(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.k, ptr noundef null)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #19
  resume { ptr, i32 } %i.m

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.sroa.0.017 = phi ptr [ %i.g, %.lr.ph ], [ %i.w, %bb.d ] ; 3 uses
  %i.n = load ptr, ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.t = load i32, ptr %i.s, align 4
  call void @_ZN6Assimp11SpatialSort4FillEPK10aiVector3tIfEjjb(ptr noundef nonnull align 8 dereferenceable(49) %.sroa.0.017, ptr noundef %i.r, i32 noundef %i.t, i32 noundef 12, i1 noundef zeroext true)
  %i.u = call noundef float @_ZN6Assimp22ComputePositionEpsilonEPK6aiMesh(ptr noundef %i.p)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 56
  store float %i.u, ptr %i.v, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 64
  %i.x = load i32, ptr %i.c, align 8
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %bb.d, label %._crit_edge, !llvm.loop !3
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIN6Assimp11SpatialSortEfESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 144115188075855871
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorISt4pairIN6Assimp11SpatialSortEfESaIS3_EE17_S_check_init_lenEmRKS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
  unreachable

_ZNSt6vectorISt4pairIN6Assimp11SpatialSortEfESaIS3_EE17_S_check_init_lenEmRKS4_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseISt4pairIN6Assimp11SpatialSortEfESaIS3_EEC2EmRKS4_.exit.thread, label %_ZNSt12_Vector_baseISt4pairIN6Assimp11SpatialSortEfESaIS3_EEC2EmRKS4_.exit

_ZNSt12_Vector_baseISt4pairIN6Assimp11SpatialSortEfESaIS3_EEC2EmRKS4_.exit.thread: ; preds = %_ZNSt6vectorISt4pairIN6Assimp11SpatialSortEfESaIS3_EE17_S_check_init_lenEmRKS4_.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseISt4pairIN6Assimp11SpatialSortEfESaIS3_EEC2EmRKS4_.exit: ; preds = %_ZNSt6vectorISt4pairIN6Assimp11SpatialSortEfESaIS3_EE17_S_check_init_lenEmRKS4_.exit
  %i.c = shl nuw nsw i64 %1, 6
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #18 ; 5 uses
  store ptr %i.d, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseISt4pairIN6Assimp11SpatialSortEfESaIS3_EEC2EmRKS4_.exit, %bb.c
  %.014.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.d, %_ZNSt12_Vector_baseISt4pairIN6Assimp11SpatialSortEfESaIS3_EEC2EmRKS4_.exit ] ; 4 uses
  %.01013.i.i.i.i = phi i64 [ %i.i, %bb.c ], [ %1, %_ZNSt12_Vector_baseISt4pairIN6Assimp11SpatialSortEfESaIS3_EEC2EmRKS4_.exit ]
  invoke void @_ZN6Assimp11SpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(60) %.014.i.i.i.i)
end_hunk_0
