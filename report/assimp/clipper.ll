inline.NumInlined: 2352
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN10ClipperLib13ClipperOffset8DoOffsetEd:bb.a
  br i1 %i.is, label %bb.af, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i188

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i188: ; preds = %bb.ae
  %i.it = ashr exact i64 %i.ir, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i189 = tail call i64 @llvm.umax.i64(i64 %i.it, i64 1)
  %i.iu = add nsw i64 %.sroa.speculated.i.i.i.i189, %i.it ; 2 uses
  %i.iv = icmp ult i64 %i.iu, %i.it
  %i.iw = tail call i64 @llvm.umin.i64(i64 %i.iu, i64 576460752303423487)
  %i.ix = select i1 %i.iv, i64 576460752303423487, i64 %i.iw ; 3 uses
  %.not.i.i.i.i190 = icmp ne i64 %i.ix, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i190)
  %i.iy = shl nuw nsw i64 %i.ix, 4
  %i.iz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iy) #32 ; 5 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ir ; 2 uses
  store i64 %.0.i183, ptr %i.ja, align 8
  %.sroa.5437.0..sroa_idx438 = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store i64 %.0.i186, ptr %.sroa.5437.0..sroa_idx438, align 8
  %.not10.i.i.i.i.i.i191 = icmp eq ptr %i.io, %i.ia
  br i1 %.not10.i.i.i.i.i.i191, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i196, label %.lr.ph.i.i.i.i.i.i192

.lr.ph.i.i.i.i.i.i192:                            ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i188, %.lr.ph.i.i.i.i.i.i192
  %.012.i.i.i.i.i.i193 = phi ptr [ %i.jc, %.lr.ph.i.i.i.i.i.i192 ], [ %i.iz, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i188 ] ; 2 uses
  %.0911.i.i.i.i.i.i194 = phi ptr [ %i.jb, %.lr.ph.i.i.i.i.i.i192 ], [ %i.io, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i188 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i193, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i194, i64 16, i1 false), !alias.scope !195
  %i.jb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i194, i64 16 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i193, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i195 = icmp eq ptr %i.jb, %i.ia
  br i1 %.not.i.i.i.i.i.i195, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i196, label %.lr.ph.i.i.i.i.i.i192, !llvm.loop !66

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i196: ; preds = %.lr.ph.i.i.i.i.i.i192, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i188
  %.0.lcssa.i.i.i.i.i.i197 = phi ptr [ %i.iz, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i188 ], [ %i.jc, %.lr.ph.i.i.i.i.i.i192 ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i197, i64 16 ; 2 uses
  %.not.i23.i.i.i198 = icmp eq ptr %i.io, null
  br i1 %.not.i23.i.i.i198, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i199, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i196
  tail call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.ir) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i199

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i199: ; preds = %bb.ag, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i196
  store ptr %i.iz, ptr %i.ez, align 8
  store ptr %i.jd, ptr %i.fa, align 8
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %i.ix
  store ptr %i.je, ptr %i.ff, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit200

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit200: ; preds = %bb.ad, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i199
  %i.jf = phi ptr [ %i.in, %bb.ad ], [ %i.jd, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i199 ] ; 2 uses
  %i.jg = fcmp olt double %.0143494, 0.000000e+00
  br i1 %i.jg, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit200
  %i.jh = fcmp olt double %.0142495, 0.000000e+00 ; 2 uses
  %.0143. = select i1 %i.jh, double %.0143494, double -1.000000e+00
  %..0142 = select i1 %i.jh, double 1.000000e+00, double %.0142495
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit200
  %.1144 = phi double [ 1.000000e+00, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit200 ], [ %.0143., %bb.ah ]
  %.1 = phi double [ %.0142495, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit200 ], [ %..0142, %bb.ah ]
  %i.ji = add nuw nsw i32 %.0141496, 1            ; 2 uses
  %exitcond531.not = icmp eq i32 %i.ji, 4
  br i1 %exitcond531.not, label %.loopexit447, label %.preheader448, !llvm.loop !199

.loopexit447:                                     ; preds = %bb.ai, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit, %.preheader
  %i.jj = phi ptr [ %i.hl, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit ], [ %i.gb, %.preheader ], [ %i.jf, %bb.ai ] ; 2 uses
  %i.jk = load ptr, ptr %i.f, align 8             ; 6 uses
  %i.jl = load ptr, ptr %i.dt, align 8
  %.not.i201 = icmp eq ptr %i.jk, %i.jl
  br i1 %.not.i201, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %.loopexit447
  %i.jm = load ptr, ptr %i.ez, align 8            ; 2 uses
  %i.jn = ptrtoint ptr %i.jj to i64
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = sub i64 %i.jn, %i.jo                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jk, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i202 = icmp eq ptr %i.jj, %i.jm
  br i1 %.not.i.i.i.i.i202, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jq = icmp ugt i64 %i.jp, 9223372036854775792
  br i1 %i.jq, label %.noexc.i.i.i211, label %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i203, !prof !60

.noexc.i.i.i211:                                  ; preds = %bb.ak
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i203: ; preds = %bb.ak
  %i.jr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jp) #32
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i203, %bb.aj
  %i.js = phi ptr [ null, %bb.aj ], [ %i.jr, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i203 ] ; 5 uses
  store ptr %i.js, ptr %i.jk, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 2 uses
  store ptr %i.js, ptr %i.jt, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jp
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  store ptr %i.ju, ptr %i.jv, align 8
  %i.jw = load ptr, ptr %i.ez, align 8            ; 2 uses
  %i.jx = load ptr, ptr %i.fa, align 8            ; 2 uses
  %.not7.i.i.i.i.i.i204 = icmp eq ptr %i.jw, %i.jx
  br i1 %.not7.i.i.i.i.i.i204, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i209, label %.lr.ph.i.i.i.i.i.i205

.lr.ph.i.i.i.i.i.i205:                            ; preds = %bb.al, %.lr.ph.i.i.i.i.i.i205
  %.09.i.i.i.i.i.i206 = phi ptr [ %i.jz, %.lr.ph.i.i.i.i.i.i205 ], [ %i.js, %bb.al ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i207 = phi ptr [ %i.jy, %.lr.ph.i.i.i.i.i.i205 ], [ %i.jw, %bb.al ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i206, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i207, i64 16, i1 false)
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i207, i64 16 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i206, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i208 = icmp eq ptr %i.jy, %i.jx
  br i1 %.not.i.i.i.i.i.i208, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i209, label %.lr.ph.i.i.i.i.i.i205, !llvm.loop !61

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i209: ; preds = %.lr.ph.i.i.i.i.i.i205, %bb.al
  %.0.lcssa.i.i.i.i.i.i210 = phi ptr [ %i.js, %bb.al ], [ %i.jz, %.lr.ph.i.i.i.i.i.i205 ]
  store ptr %.0.lcssa.i.i.i.i.i.i210, ptr %i.jt, align 8
  %i.ka = load ptr, ptr %i.f, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  store ptr %i.kb, ptr %i.f, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit212

bb.am:                                            ; preds = %.loopexit447
  tail call void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.jk, ptr noundef nonnull align 8 dereferenceable(24) %i.ez)
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit212

bb.an:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit
  %i.kc = load ptr, ptr %i.fb, align 8            ; 8 uses
  %i.kd = load ptr, ptr %i.fc, align 8            ; 2 uses
  %.not.i.i213 = icmp eq ptr %i.kd, %i.kc
  br i1 %.not.i.i213, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN10ClipperLib11DoublePointES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN10ClipperLib11DoublePointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.an
  store ptr %i.kc, ptr %i.fc, align 8
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE5clearEv.exit

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE5clearEv.exit: ; preds = %bb.an, %_ZSt8_DestroyIPN10ClipperLib11DoublePointES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ke = phi ptr [ %i.kd, %bb.an ], [ %i.kc, %_ZSt8_DestroyIPN10ClipperLib11DoublePointES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 4 uses
  %sext = shl i64 %i.fs, 28                       ; 3 uses
  %i.kf = ashr exact i64 %sext, 32                ; 3 uses
  %i.kg = icmp ugt i64 %i.kf, 576460752303423487
  br i1 %i.kg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE5clearEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #31
  unreachable

bb.ap:                                            ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE5clearEv.exit
  %i.kh = load ptr, ptr %i.fd, align 8
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = ptrtoint ptr %i.kc to i64               ; 2 uses
  %i.kk = sub i64 %i.ki, %i.kj                    ; 2 uses
  %i.kl = ashr exact i64 %i.kk, 4
  %i.km = icmp ult i64 %i.kl, %i.kf
  br i1 %i.km, label %_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.ap
  %i.kn = ptrtoint ptr %i.ke to i64
  %i.ko = sub i64 %i.kn, %i.kj
  %i.kp = ashr exact i64 %sext, 28
  %i.kq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kp) #32 ; 4 uses
  %.not10.i.i.i.i214 = icmp eq ptr %i.kc, %i.ke
  br i1 %.not10.i.i.i.i214, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i215

.lr.ph.i.i.i.i215:                                ; preds = %_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i215
  %.012.i.i.i.i216 = phi ptr [ %i.ks, %.lr.ph.i.i.i.i215 ], [ %i.kq, %_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i217 = phi ptr [ %i.kr, %.lr.ph.i.i.i.i215 ], [ %i.kc, %_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i216, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i217, i64 16, i1 false), !alias.scope !200
  %i.kr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i217, i64 16 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i216, i64 16
  %.not.i.i.i.i218 = icmp eq ptr %i.kr, %i.ke
  br i1 %.not.i.i.i.i218, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i215, !llvm.loop !204

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i215, %_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i219 = icmp eq ptr %i.kc, null
  br i1 %.not.i8.i219, label %_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef %i.kk) #33
  br label %_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.aq, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.kq, ptr %i.fb, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.ko ; 2 uses
  store ptr %i.kt, ptr %i.fc, align 8
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %i.kq, i64 %i.kf
  store ptr %i.ku, ptr %i.fd, align 8
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE7reserveEm.exit: ; preds = %bb.ap, %_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.kv = phi ptr [ %i.ke, %bb.ap ], [ %i.kt, %_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %i.kw = add i32 %i.fu, -1                       ; 14 uses
  %i.kx = icmp sgt i32 %i.fu, 1                   ; 3 uses
  br i1 %i.kx, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE7reserveEm.exit
  %wide.trip.count = zext i32 %i.kw to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE7reserveEm.exit
  %i.ky = phi ptr [ %i.kv, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE7reserveEm.exit ], [ %i.mr, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit ] ; 11 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.fl, i64 76 ; 6 uses
  %i.la = load i32, ptr %i.kz, align 4
  %switch = icmp ult i32 %i.la, 2
  br i1 %switch, label %bb.av, label %bb.ba

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit
  %i.lb = phi ptr [ %i.kv, %.lr.ph.preheader ], [ %i.mr, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.lc = load ptr, ptr %i.ew, align 8            ; 2 uses
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %i.lc, i64 %indvars.iv ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.le = getelementptr inbounds nuw [16 x i8], ptr %i.lc, i64 %indvars.iv.next ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8            ; 2 uses
  %i.lg = load i64, ptr %i.ld, align 8            ; 2 uses
  %i.lh = icmp eq i64 %i.lf, %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lj = load i64, ptr %i.li, align 8            ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.ll = load i64, ptr %i.lk, align 8            ; 2 uses
  %i.lm = icmp eq i64 %i.lj, %i.ll
  %or.cond.i = select i1 %i.lh, i1 %i.lm, i1 false
  br i1 %or.cond.i, label %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph
  %i.ln = sub nsw i64 %i.lf, %i.lg
  %i.lo = sitofp i64 %i.ln to double              ; 3 uses
  %i.lp = sub nsw i64 %i.lj, %i.ll
  %i.lq = sitofp i64 %i.lp to double              ; 3 uses
  %i.lr = fmul nnan double %i.lq, %i.lq
  %i.ls = tail call double @llvm.fmuladd.f64(double %i.lo, double %i.lo, double %i.lr)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ls)
  %i.lt = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.lu = fmul double %i.lt, %i.lq
  %i.lv = fneg double %i.lo
  %i.lw = fmul double %i.lt, %i.lv
  br label %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit

_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit: ; preds = %.lr.ph, %._crit_edge.i
  %.sroa.3.0.i = phi double [ %i.lw, %._crit_edge.i ], [ 0.000000e+00, %.lr.ph ] ; 2 uses
  %.sroa.0.0.i = phi double [ %i.lu, %._crit_edge.i ], [ 0.000000e+00, %.lr.ph ] ; 2 uses
  %i.lx = load ptr, ptr %i.fd, align 8
  %.not.i.i220 = icmp eq ptr %i.lb, %i.lx
  br i1 %.not.i.i220, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit
  store double %.sroa.0.0.i, ptr %i.lb, align 8
  %.sroa.5432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store double %.sroa.3.0.i, ptr %.sroa.5432.0..sroa_idx, align 8
  %i.ly = load ptr, ptr %i.fc, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16 ; 2 uses
  store ptr %i.lz, ptr %i.fc, align 8
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit

bb.as:                                            ; preds = %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit
  %i.ma = load ptr, ptr %i.fb, align 8            ; 5 uses
  %i.mb = ptrtoint ptr %i.lb to i64
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = sub i64 %i.mb, %i.mc                    ; 4 uses
  %i.me = icmp eq i64 %i.md, 9223372036854775792
  br i1 %i.me, label %bb.at, label %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.as
  %i.mf = ashr exact i64 %i.md, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i221 = tail call i64 @llvm.umax.i64(i64 %i.mf, i64 1)
  %i.mg = add nsw i64 %.sroa.speculated.i.i.i.i221, %i.mf ; 2 uses
  %i.mh = icmp ult i64 %i.mg, %i.mf
  %i.mi = tail call i64 @llvm.umin.i64(i64 %i.mg, i64 576460752303423487)
  %i.mj = select i1 %i.mh, i64 576460752303423487, i64 %i.mi ; 3 uses
  %.not.i.i.i.i222 = icmp ne i64 %i.mj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i222)
  %i.mk = shl nuw nsw i64 %i.mj, 4
  %i.ml = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mk) #32 ; 5 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.md ; 2 uses
  store double %.sroa.0.0.i, ptr %i.mm, align 8
  %.sroa.5432.0..sroa_idx433 = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store double %.sroa.3.0.i, ptr %.sroa.5432.0..sroa_idx433, align 8
  %.not10.i.i.i.i.i.i223 = icmp eq ptr %i.ma, %i.lb
  br i1 %.not10.i.i.i.i.i.i223, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i224

.lr.ph.i.i.i.i.i.i224:                            ; preds = %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i224
  %.012.i.i.i.i.i.i225 = phi ptr [ %i.mo, %.lr.ph.i.i.i.i.i.i224 ], [ %i.ml, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i226 = phi ptr [ %i.mn, %.lr.ph.i.i.i.i.i.i224 ], [ %i.ma, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i225, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i226, i64 16, i1 false), !alias.scope !205
  %i.mn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i226, i64 16 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i225, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i227 = icmp eq ptr %i.mn, %i.lb
  br i1 %.not.i.i.i.i.i.i227, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i224, !llvm.loop !204

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i224, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i228 = phi ptr [ %i.ml, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.mo, %.lr.ph.i.i.i.i.i.i224 ]
  %i.mp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i228, i64 16 ; 2 uses
  %.not.i23.i.i.i229 = icmp eq ptr %i.ma, null
  br i1 %.not.i23.i.i.i229, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.md) #33
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.au, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.ml, ptr %i.fb, align 8
  store ptr %i.mp, ptr %i.fc, align 8
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %i.ml, i64 %i.mj
  store ptr %i.mq, ptr %i.fd, align 8
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.ar, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.mr = phi ptr [ %i.lz, %bb.ar ], [ %i.mp, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !209

bb.av:                                            ; preds = %._crit_edge
  %i.ms = sext i32 %i.kw to i64
  %i.mt = load ptr, ptr %i.ew, align 8            ; 3 uses
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %i.mt, i64 %i.ms ; 2 uses
  %i.mv = load i64, ptr %i.mt, align 8            ; 2 uses
  %i.mw = load i64, ptr %i.mu, align 8            ; 2 uses
  %i.mx = icmp eq i64 %i.mv, %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mz = load i64, ptr %i.my, align 8            ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.nb = load i64, ptr %i.na, align 8            ; 2 uses
  %i.nc = icmp eq i64 %i.mz, %i.nb
  %or.cond.i230 = select i1 %i.mx, i1 %i.nc, i1 false
  br i1 %or.cond.i230, label %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit237, label %._crit_edge.i231

._crit_edge.i231:                                 ; preds = %bb.av
  %i.nd = sub nsw i64 %i.mv, %i.mw
  %i.ne = sitofp i64 %i.nd to double              ; 3 uses
  %i.nf = sub nsw i64 %i.mz, %i.nb
  %i.ng = sitofp i64 %i.nf to double              ; 3 uses
  %i.nh = fmul nnan double %i.ng, %i.ng
  %i.ni = tail call double @llvm.fmuladd.f64(double %i.ne, double %i.ne, double %i.nh)
  %sqrt.i232 = tail call double @llvm.sqrt.f64(double %i.ni)
  %i.nj = fdiv double 1.000000e+00, %sqrt.i232    ; 2 uses
  %i.nk = fmul double %i.nj, %i.ng
  %i.nl = fneg double %i.ne
  %i.nm = fmul double %i.nj, %i.nl
  br label %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit237

_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit237: ; preds = %bb.av, %._crit_edge.i231
  %.sroa.3.0.i233 = phi double [ %i.nm, %._crit_edge.i231 ], [ 0.000000e+00, %bb.av ] ; 2 uses
  %.sroa.0.0.i234 = phi double [ %i.nk, %._crit_edge.i231 ], [ 0.000000e+00, %bb.av ] ; 2 uses
  %i.nn = load ptr, ptr %i.fd, align 8
  %.not.i.i238 = icmp eq ptr %i.ky, %i.nn
  br i1 %.not.i.i238, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit237
  store double %.sroa.0.0.i234, ptr %i.ky, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store double %.sroa.3.0.i233, ptr %.sroa.5.0..sroa_idx, align 8
  %i.no = load ptr, ptr %i.fc, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  store ptr %i.np, ptr %i.fc, align 8
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit251

bb.ax:                                            ; preds = %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit237
  %i.nq = load ptr, ptr %i.fb, align 8            ; 5 uses
  %i.nr = ptrtoint ptr %i.ky to i64
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = sub i64 %i.nr, %i.ns                    ; 4 uses
  %i.nu = icmp eq i64 %i.nt, 9223372036854775792
  br i1 %i.nu, label %bb.ay, label %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239: ; preds = %bb.ax
  %i.nv = ashr exact i64 %i.nt, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i240 = tail call i64 @llvm.umax.i64(i64 %i.nv, i64 1)
  %i.nw = add nsw i64 %.sroa.speculated.i.i.i.i240, %i.nv ; 2 uses
  %i.nx = icmp ult i64 %i.nw, %i.nv
  %i.ny = tail call i64 @llvm.umin.i64(i64 %i.nw, i64 576460752303423487)
  %i.nz = select i1 %i.nx, i64 576460752303423487, i64 %i.ny ; 3 uses
  %.not.i.i.i.i241 = icmp ne i64 %i.nz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i241)
  %i.oa = shl nuw nsw i64 %i.nz, 4
  %i.ob = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oa) #32 ; 5 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.nt ; 2 uses
  store double %.sroa.0.0.i234, ptr %i.oc, align 8
  %.sroa.5.0..sroa_idx428 = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  store double %.sroa.3.0.i233, ptr %.sroa.5.0..sroa_idx428, align 8
  %.not10.i.i.i.i.i.i242 = icmp eq ptr %i.nq, %i.ky
  br i1 %.not10.i.i.i.i.i.i242, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i247, label %.lr.ph.i.i.i.i.i.i243

.lr.ph.i.i.i.i.i.i243:                            ; preds = %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239, %.lr.ph.i.i.i.i.i.i243
  %.012.i.i.i.i.i.i244 = phi ptr [ %i.oe, %.lr.ph.i.i.i.i.i.i243 ], [ %i.ob, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239 ] ; 2 uses
  %.0911.i.i.i.i.i.i245 = phi ptr [ %i.od, %.lr.ph.i.i.i.i.i.i243 ], [ %i.nq, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i244, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i245, i64 16, i1 false), !alias.scope !210
  %i.od = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i245, i64 16 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i244, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i246 = icmp eq ptr %i.od, %i.ky
end_hunk_0
