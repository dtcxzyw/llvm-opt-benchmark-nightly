inline.NumInlined: 2736
inline.NumDeleted: 1010
begin_hunk_0_@_ZN6Assimp19Discreet3DSImporter19ParseHierarchyChunkEt:bb.a
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ss, ptr noundef nonnull @.str.15)
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit

bb.el:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.st = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 24 ; 2 uses
  %i.sv = load ptr, ptr %i.su, align 8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 10 ; 2 uses
  store ptr %i.sw, ptr %i.su, align 8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.st, i64 40
  %i.sy = load ptr, ptr %i.sx, align 8
  %i.sz = icmp ugt ptr %i.sw, %i.sy
  br i1 %i.sz, label %bb.em, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit225

bb.em:                                            ; preds = %bb.el
  %i.ta = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ta, ptr noundef nonnull @.str.40)
          to label %bb.en unwind label %bb.eo

bb.en:                                            ; preds = %bb.em
  call void @__cxa_throw(ptr nonnull %i.ta, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.eo:                                            ; preds = %bb.em
  %i.tb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ta) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit225: ; preds = %bb.el
  %i.tc = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 24 ; 2 uses
  %i.te = load ptr, ptr %i.td, align 8            ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 4 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tc, i64 40
  %i.th = load ptr, ptr %i.tg, align 8
  %i.ti = icmp ugt ptr %i.tf, %i.th
  br i1 %i.ti, label %bb.ep, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit226

bb.ep:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit225
  %i.tj = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.tj, ptr noundef nonnull @.str.39)
          to label %bb.eq unwind label %bb.er

bb.eq:                                            ; preds = %bb.ep
  call void @__cxa_throw(ptr nonnull %i.tj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.er:                                            ; preds = %bb.ep
  %i.tk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.tj) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit226: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit225
  %i.tl = load i32, ptr %i.te, align 1            ; 3 uses
  store ptr %i.tf, ptr %i.td, align 8
  %i.tm = load ptr, ptr %i.o, align 8             ; 4 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 112 ; 7 uses
  %i.to = zext i32 %i.tl to i64                   ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 128 ; 4 uses
  %i.tq = load ptr, ptr %i.tp, align 8
  %i.tr = load ptr, ptr %i.tn, align 8            ; 5 uses
  %i.ts = ptrtoint ptr %i.tq to i64
  %i.tt = ptrtoint ptr %i.tr to i64               ; 2 uses
  %i.tu = sub i64 %i.ts, %i.tt                    ; 2 uses
  %i.tv = ashr exact i64 %i.tu, 5
  %i.tw = icmp ult i64 %i.tv, %i.to
  br i1 %i.tw, label %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE11_M_allocateEm.exit.i: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit226
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tm, i64 120 ; 2 uses
  %i.ty = load ptr, ptr %i.tx, align 8            ; 3 uses
  %i.tz = ptrtoint ptr %i.ty to i64
  %i.ua = sub i64 %i.tz, %i.tt
  %i.ub = shl nuw nsw i64 %i.to, 5
  %i.uc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ub) #31 ; 4 uses
  %.not10.i.i.i.i227 = icmp eq ptr %i.tr, %i.ty
  br i1 %.not10.i.i.i.i227, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i228

.lr.ph.i.i.i.i228:                                ; preds = %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i228
  %.012.i.i.i.i229 = phi ptr [ %i.ue, %.lr.ph.i.i.i.i228 ], [ %i.uc, %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i230 = phi ptr [ %i.ud, %.lr.ph.i.i.i.i228 ], [ %i.tr, %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i229, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i230, i64 32, i1 false), !alias.scope !95
  %i.ud = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i230, i64 32 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i229, i64 32
  %.not.i.i.i.i231 = icmp eq ptr %i.ud, %i.ty
  br i1 %.not.i.i.i.i231, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i228, !llvm.loop !99

_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i228, %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE11_M_allocateEm.exit.i
  %.not.i8.i232 = icmp eq ptr %i.tr, null
  br i1 %.not.i8.i232, label %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.es

bb.es:                                            ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.tr, i64 noundef %i.tu) #29
  br label %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.es, %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.uc, ptr %i.tn, align 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.ua
  store ptr %i.uf, ptr %i.tx, align 8
  %i.ug = getelementptr inbounds nuw [32 x i8], ptr %i.uc, i64 %i.to
  store ptr %i.ug, ptr %i.tp, align 8
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE7reserveEm.exit

_ZNSt6vectorI9aiQuatKeySaIS0_EE7reserveEm.exit:   ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit226, %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE13_M_deallocateEPS0_m.exit.i
  %.not483 = icmp eq i32 %i.tl, 0
  br i1 %.not483, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %.lr.ph461

.lr.ph461:                                        ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE7reserveEm.exit
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tm, i64 120 ; 7 uses
  br label %bb.et

._crit_edge462:                                   ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit
  br i1 %.1145, label %bb.fq, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit

bb.et:                                            ; preds = %.lr.ph461, %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit
  %.0144460 = phi i1 [ false, %.lr.ph461 ], [ %.1145, %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %.0146459 = phi i32 [ 0, %.lr.ph461 ], [ %i.xt, %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit ]
  %i.ui = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 24 ; 2 uses
  %i.uk = load ptr, ptr %i.uj, align 8            ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 4 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ui, i64 40
  %i.un = load ptr, ptr %i.um, align 8
  %i.uo = icmp ugt ptr %i.ul, %i.un
  br i1 %i.uo, label %bb.eu, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit233

bb.eu:                                            ; preds = %bb.et
  %i.up = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.up, ptr noundef nonnull @.str.39)
          to label %bb.ev unwind label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  call void @__cxa_throw(ptr nonnull %i.up, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ew:                                            ; preds = %bb.eu
  %i.uq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.up) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit233: ; preds = %bb.et
  %i.ur = load i32, ptr %i.uk, align 1
  store ptr %i.ul, ptr %i.uj, align 8
  call void @_ZN6Assimp19Discreet3DSImporter11SkipTCBInfoEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  %i.us = uitofp i32 %i.ur to double              ; 3 uses
  %i.ut = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 24 ; 2 uses
  %i.uv = load ptr, ptr %i.uu, align 8            ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 4 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ut, i64 40
  %i.uy = load ptr, ptr %i.ux, align 8
  %i.uz = icmp ugt ptr %i.uw, %i.uy
  br i1 %i.uz, label %bb.ex, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit234

bb.ex:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit233
  %i.va = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.va, ptr noundef nonnull @.str.39)
          to label %bb.ey unwind label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  call void @__cxa_throw(ptr nonnull %i.va, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ez:                                            ; preds = %bb.ex
  %i.vb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.va) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit234: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI4Ev.exit233
  %i.vc = load float, ptr %i.uv, align 1
  store ptr %i.uw, ptr %i.uu, align 8
  %i.vd = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 24 ; 2 uses
  %i.vf = load ptr, ptr %i.ve, align 8            ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 4 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vd, i64 40
  %i.vi = load ptr, ptr %i.vh, align 8
  %i.vj = icmp ugt ptr %i.vg, %i.vi
  br i1 %i.vj, label %bb.fa, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit235

bb.fa:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit234
  %i.vk = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.vk, ptr noundef nonnull @.str.39)
          to label %bb.fb unwind label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  call void @__cxa_throw(ptr nonnull %i.vk, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.fc:                                            ; preds = %bb.fa
  %i.vl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.vk) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit235: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit234
  %i.vm = load float, ptr %i.vf, align 1          ; 2 uses
  store ptr %i.vg, ptr %i.ve, align 8
  %i.vn = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 24 ; 2 uses
  %i.vp = load ptr, ptr %i.vo, align 8            ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 4 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vn, i64 40
  %i.vs = load ptr, ptr %i.vr, align 8
  %i.vt = icmp ugt ptr %i.vq, %i.vs
  br i1 %i.vt, label %bb.fd, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit236

bb.fd:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit235
  %i.vu = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.vu, ptr noundef nonnull @.str.39)
          to label %bb.fe unwind label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  call void @__cxa_throw(ptr nonnull %i.vu, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ff:                                            ; preds = %bb.fd
  %i.vv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.vu) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit236: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit235
  %i.vw = load float, ptr %i.vp, align 1          ; 2 uses
  store ptr %i.vq, ptr %i.vo, align 8
  %i.vx = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 24 ; 2 uses
  %i.vz = load ptr, ptr %i.vy, align 8            ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 4 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vx, i64 40
  %i.wc = load ptr, ptr %i.wb, align 8
  %i.wd = icmp ugt ptr %i.wa, %i.wc
  br i1 %i.wd, label %bb.fg, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit237

bb.fg:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit236
  %i.we = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.we, ptr noundef nonnull @.str.39)
          to label %bb.fh unwind label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  call void @__cxa_throw(ptr nonnull %i.we, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.fi:                                            ; preds = %bb.fg
  %i.wf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.we) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit237: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit236
  %.sroa.0331.0.vec.insert = insertelement <2 x float> poison, float %i.vm, i64 0
  %.sroa.0331.4.vec.insert338 = insertelement <2 x float> %.sroa.0331.0.vec.insert, float %i.vw, i64 1 ; 2 uses
  %i.wg = load float, ptr %i.vz, align 1          ; 5 uses
  store ptr %i.wa, ptr %i.vy, align 8
  %i.wh = fcmp une float %i.vm, 0.000000e+00
  %i.wi = fcmp une float %i.vw, 0.000000e+00
  %or.cond5 = select i1 %i.wh, i1 true, i1 %i.wi
  %i.wj = fcmp une float %i.wg, 0.000000e+00
  %or.cond8 = or i1 %or.cond5, %i.wj
  %.sroa.0331.4.vec.insert = insertelement <2 x float> %.sroa.0331.4.vec.insert338, float 1.000000e+00, i64 1
  %.sroa.0331.2 = select i1 %or.cond8, <2 x float> %.sroa.0331.4.vec.insert338, <2 x float> %.sroa.0331.4.vec.insert ; 5 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %.sroa.0331.2, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0331.2, %.sroa.0331.2
  %5 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.wk = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract8.i, float %.sroa.0.0.vec.extract8.i, float %5)
  %i.wl = call noundef float @llvm.fmuladd.f32(float %i.wg, float %i.wg, float %i.wk) ; 2 uses
  %i.wm = fcmp oeq float %i.wl, 0.000000e+00
  br i1 %i.wm, label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit237
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.wl)
  %i.wn = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %6 = insertelement <2 x float> poison, float %i.wn, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x float> %.sroa.0331.2, %7
  %i.wo = fmul float %i.wg, %i.wn
  br label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit

_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit:    ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit237, %_ZN10aiVector3tIfEdVEf.exit.i.i
  %.sroa.7.0.i.a = phi float [ %i.wg, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit237 ], [ %i.wo, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %9 = phi <2 x float> [ %.sroa.0331.2, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit237 ], [ %8, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.wp = fmul float %i.vc, 5.000000e-01          ; 2 uses
  %i.wq = call noundef float @sinf(float noundef %i.wp) #28 ; 2 uses
  %i.wr = call noundef float @cosf(float noundef %i.wp) #28 ; 2 uses
  %10 = insertelement <2 x float> poison, float %i.wq, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x float> %9, %11                  ; 2 uses
  %i.ws = fmul float %.sroa.7.0.i.a, %i.wq        ; 2 uses
  %i.wt = load ptr, ptr %i.tn, align 8            ; 5 uses
  %i.wu = load ptr, ptr %i.uh, align 8            ; 10 uses
  %i.wv = icmp eq ptr %i.wt, %i.wu                ; 2 uses
  br i1 %i.wv, label %bb.fl, label %bb.fj

bb.fj:                                            ; preds = %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit
  %i.ww = getelementptr inbounds i8, ptr %i.wu, i64 -32
  %i.wx = load double, ptr %i.ww, align 8
  %i.wy = fcmp ult double %i.wx, %i.us
  br i1 %i.wy, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj, %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit
  %.1145 = phi i1 [ %.0144460, %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit ], [ true, %bb.fk ], [ %.0144460, %bb.fj ] ; 2 uses
  %i.wz = load ptr, ptr %i.tp, align 8
  %.not.i238 = icmp eq ptr %i.wu, %i.wz
  br i1 %.not.i238, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  store double %i.us, ptr %i.wu, align 8
  %.sroa.7344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  store float %i.wr, ptr %.sroa.7344.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wu, i64 12
  store <2 x float> %12, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.13351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wu, i64 20
  store float %i.ws, ptr %.sroa.13351.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wu, i64 24
  store i32 1, ptr %.sroa.15.0..sroa_idx, align 8
  %i.xa = load ptr, ptr %i.uh, align 8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 32 ; 2 uses
  store ptr %i.xb, ptr %i.uh, align 8
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit

bb.fn:                                            ; preds = %bb.fl
  %i.xc = ptrtoint ptr %i.wu to i64
  %i.xd = ptrtoint ptr %i.wt to i64
  %i.xe = sub i64 %i.xc, %i.xd                    ; 4 uses
  %i.xf = icmp eq i64 %i.xe, 9223372036854775776
  br i1 %i.xf, label %bb.fo, label %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.fo:                                            ; preds = %bb.fn
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #30
  unreachable

_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.fn
  %i.xg = ashr exact i64 %i.xe, 5                 ; 3 uses
  %.sroa.speculated.i.i.i239 = call i64 @llvm.umax.i64(i64 %i.xg, i64 1)
  %i.xh = add nsw i64 %.sroa.speculated.i.i.i239, %i.xg ; 2 uses
  %i.xi = icmp ult i64 %i.xh, %i.xg
  %i.xj = call i64 @llvm.umin.i64(i64 %i.xh, i64 288230376151711743)
  %i.xk = select i1 %i.xi, i64 288230376151711743, i64 %i.xj ; 3 uses
  %.not.i.i.i240 = icmp ne i64 %i.xk, 0
  call void @llvm.assume(i1 %.not.i.i.i240)
  %i.xl = shl nuw nsw i64 %i.xk, 5
  %i.xm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xl) #31 ; 5 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.xe ; 5 uses
  store double %i.us, ptr %i.xn, align 8
  %.sroa.7344.0..sroa_idx345 = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  store float %i.wr, ptr %.sroa.7344.0..sroa_idx345, align 8
  %.sroa.9.0..sroa_idx347 = getelementptr inbounds nuw i8, ptr %i.xn, i64 12
  store <2 x float> %12, ptr %.sroa.9.0..sroa_idx347, align 4
  %.sroa.13351.0..sroa_idx352 = getelementptr inbounds nuw i8, ptr %i.xn, i64 20
  store float %i.ws, ptr %.sroa.13351.0..sroa_idx352, align 4
  %.sroa.15.0..sroa_idx354 = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  store i32 1, ptr %.sroa.15.0..sroa_idx354, align 8
  br i1 %i.wv, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i242

.lr.ph.i.i.i.i.i242:                              ; preds = %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i242
  %.012.i.i.i.i.i243 = phi ptr [ %i.xp, %.lr.ph.i.i.i.i.i242 ], [ %i.xm, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i244 = phi ptr [ %i.xo, %.lr.ph.i.i.i.i.i242 ], [ %i.wt, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i243, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i244, i64 32, i1 false), !alias.scope !100
  %i.xo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i244, i64 32 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i243, i64 32 ; 2 uses
  %.not.i.i.i.i.i245 = icmp eq ptr %i.xo, %i.wu
  br i1 %.not.i.i.i.i.i245, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i242, !llvm.loop !99

_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i242, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i246 = phi ptr [ %i.xm, %_ZNKSt6vectorI9aiQuatKeySaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.xp, %.lr.ph.i.i.i.i.i242 ]
  %i.xq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i246, i64 32 ; 2 uses
  %.not.i23.i.i247 = icmp eq ptr %i.wt, null
  br i1 %.not.i23.i.i247, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.fp

bb.fp:                                            ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.wt, i64 noundef %i.xe) #29
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.fp, %_ZNSt6vectorI9aiQuatKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.xm, ptr %i.tn, align 8
  store ptr %i.xq, ptr %i.uh, align 8
  %i.xr = getelementptr inbounds nuw [32 x i8], ptr %i.xm, i64 %i.xk
  store ptr %i.xr, ptr %i.tp, align 8
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI9aiQuatKeySaIS0_EE9push_backERKS0_.exit: ; preds = %bb.fm, %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.xs = phi ptr [ %i.xb, %bb.fm ], [ %i.xq, %_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ]
  %i.xt = add nuw i32 %.0146459, 1                ; 2 uses
  %exitcond504.not = icmp eq i32 %i.xt, %i.tl
  br i1 %exitcond504.not, label %._crit_edge462, label %bb.et, !llvm.loop !104

bb.fq:                                            ; preds = %._crit_edge462
  %i.xu = load ptr, ptr %i.tn, align 8
  call void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %i.xu, ptr nonnull %i.xs)
  %i.xv = load ptr, ptr %i.tn, align 8            ; 2 uses
  %i.xw = load ptr, ptr %i.uh, align 8            ; 5 uses
  %i.xx = icmp eq ptr %i.xv, %i.xw
  br i1 %i.xx, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %.preheader.i.i.i248

.preheader.i.i.i248:                              ; preds = %bb.fq, %bb.fr
  %.sroa.010.0.i.i.i249 = phi ptr [ %i.xy, %bb.fr ], [ %i.xv, %bb.fq ] ; 5 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i249, i64 32 ; 3 uses
  %.not.i.i.i250 = icmp eq ptr %i.xy, %i.xw
  br i1 %.not.i.i.i250, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %bb.fr

bb.fr:                                            ; preds = %.preheader.i.i.i248
  %i.xz = load double, ptr %.sroa.010.0.i.i.i249, align 8
  %i.ya = load double, ptr %i.xy, align 8
  %i.yb = fcmp oeq double %i.xz, %i.ya
  br i1 %i.yb, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i, label %.preheader.i.i.i248, !llvm.loop !105

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i: ; preds = %bb.fr
  %i.yc = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i249, i64 64 ; 2 uses
  %.not20.i.i251 = icmp eq ptr %i.yc, %i.xw
  br i1 %.not20.i.i251, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEEPFbRKS2_S9_EET_SC_SC_T0_.exit, label %.lr.ph.i.i252

.lr.ph.i.i252:                                    ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i, %bb.ft
  %i.yd = phi ptr [ %i.yi, %bb.ft ], [ %i.yc, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i ] ; 3 uses
  %.sroa.0.021.i.i253 = phi ptr [ %.sroa.0.1.i.i254, %bb.ft ], [ %.sroa.010.0.i.i.i249, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i ] ; 3 uses
  %i.ye = load double, ptr %.sroa.0.021.i.i253, align 8
  %i.yf = load double, ptr %i.yd, align 8
  %i.yg = fcmp oeq double %i.ye, %i.yf
  br i1 %i.yg, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %.lr.ph.i.i252
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i253, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.yh, ptr noundef nonnull align 8 dereferenceable(28) %i.yd, i64 28, i1 false)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %.lr.ph.i.i252
  %.sroa.0.1.i.i254 = phi ptr [ %.sroa.0.021.i.i253, %.lr.ph.i.i252 ], [ %i.yh, %bb.fs ] ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yd, i64 32 ; 2 uses
  %.not.i.i255 = icmp eq ptr %i.yi, %i.xw
  br i1 %.not.i.i255, label %._crit_edge.i.i256.loopexit, label %.lr.ph.i.i252, !llvm.loop !106

._crit_edge.i.i256.loopexit:                      ; preds = %bb.ft
  %.pre507.pre = load ptr, ptr %i.uh, align 8
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEEPFbRKS2_S9_EET_SC_SC_T0_.exit

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEEPFbRKS2_S9_EET_SC_SC_T0_.exit: ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i, %._crit_edge.i.i256.loopexit
  %.pre507 = phi ptr [ %i.xw, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i ], [ %.pre507.pre, %._crit_edge.i.i256.loopexit ]
  %.sroa.0.0.lcssa.i.i257 = phi ptr [ %.sroa.010.0.i.i.i249, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS2_SB_EEEET_SF_SF_T0_.exit.i.i ], [ %.sroa.0.1.i.i254, %._crit_edge.i.i256.loopexit ]
  %i.yj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i257, i64 32 ; 2 uses
  %i.yk = icmp eq ptr %i.yj, %.pre507
  br i1 %i.yk, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit, label %_ZSt8_DestroyIP9aiQuatKeyS0_EvT_S2_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIP9aiQuatKeyS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEEPFbRKS2_S9_EET_SC_SC_T0_.exit
  %i.yl = load ptr, ptr %i.tn, align 8            ; 2 uses
  %i.ym = ptrtoint ptr %i.yj to i64
  %i.yn = ptrtoint ptr %i.yl to i64
  %i.yo = sub i64 %i.ym, %i.yn
  %i.yp = getelementptr inbounds i8, ptr %i.yl, i64 %i.yo
  store ptr %i.yp, ptr %i.uh, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EES7_.exit

bb.fu:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.yq = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 24 ; 2 uses
  %i.ys = load ptr, ptr %i.yr, align 8
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 10 ; 2 uses
  store ptr %i.yt, ptr %i.yr, align 8
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yq, i64 40
  %i.yv = load ptr, ptr %i.yu, align 8
  %i.yw = icmp ugt ptr %i.yt, %i.yv
  br i1 %i.yw, label %bb.fv, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit262

bb.fv:                                            ; preds = %bb.fu
  %i.yx = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.yx, ptr noundef nonnull @.str.40)
          to label %bb.fw unwind label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  call void @__cxa_throw(ptr nonnull %i.yx, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.fx:                                            ; preds = %bb.fv
  %i.yy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.yx) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit262: ; preds = %bb.fu
  %i.yz = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 24 ; 2 uses
  %i.zb = load ptr, ptr %i.za, align 8            ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 2 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yz, i64 40
  %i.ze = load ptr, ptr %i.zd, align 8
  %i.zf = icmp ugt ptr %i.zc, %i.ze
  br i1 %i.zf, label %bb.fy, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit263

bb.fy:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit262
  %i.zg = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.zg, ptr noundef nonnull @.str.39)
          to label %bb.fz unwind label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  call void @__cxa_throw(ptr nonnull %i.zg, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ga:                                            ; preds = %bb.fy
  %i.zh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.zg) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit263: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit262
  %i.zi = load i16, ptr %i.zb, align 1            ; 2 uses
  store ptr %i.zc, ptr %i.za, align 8
  %i.zj = sext i16 %i.zi to i32                   ; 2 uses
  %i.zk = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 24 ; 2 uses
  %i.zm = load ptr, ptr %i.zl, align 8
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 2 ; 2 uses
  store ptr %i.zn, ptr %i.zl, align 8
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zk, i64 40
  %i.zp = load ptr, ptr %i.zo, align 8
  %i.zq = icmp ugt ptr %i.zn, %i.zp
  br i1 %i.zq, label %bb.gb, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit264

bb.gb:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit263
  %i.zr = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.zr, ptr noundef nonnull @.str.40)
          to label %bb.gc unwind label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  call void @__cxa_throw(ptr nonnull %i.zr, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.gd:                                            ; preds = %bb.gb
  %i.zs = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.zr) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit264: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI2Ev.exit263
  %i.zt = load ptr, ptr %i.o, align 8             ; 4 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 160 ; 7 uses
  %i.zv = zext i32 %i.zj to i64                   ; 3 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zt, i64 176 ; 4 uses
  %i.zx = load ptr, ptr %i.zw, align 8
  %i.zy = load ptr, ptr %i.zu, align 8            ; 5 uses
  %i.zz = ptrtoint ptr %i.zx to i64
  %i.aaa = ptrtoint ptr %i.zy to i64              ; 2 uses
  %i.aab = sub i64 %i.zz, %i.aaa                  ; 2 uses
  %i.aac = sdiv exact i64 %i.aab, 24
  %i.aad = icmp ult i64 %i.aac, %i.zv
  br i1 %i.aad, label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i265, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit274

_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i265: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit264
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zt, i64 168 ; 2 uses
  %i.aaf = load ptr, ptr %i.aae, align 8          ; 3 uses
  %i.aag = ptrtoint ptr %i.aaf to i64
  %i.aah = sub i64 %i.aag, %i.aaa
  %i.aai = mul nuw nsw i64 %i.zv, 24
  %i.aaj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aai) #31 ; 4 uses
end_hunk_0
