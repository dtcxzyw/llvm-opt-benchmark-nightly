Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/ceval?download=true
inline.NumInlined: 2622
inline.NumDeleted: 159
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_PyEval_EvalFrameDefault:bb.a
  %i.aps = zext nneg i32 %i.apq to i64
  br label %.lr.ph12263

.lr.ph12263:                                      ; preds = %.lr.ph12263.preheader, %PyStackRef_CLOSE.exit10622
  %indvars.iv13382 = phi i64 [ %i.aps, %.lr.ph12263.preheader ], [ %indvars.iv.next13383, %PyStackRef_CLOSE.exit10622 ] ; 3 uses
  %i.apt = getelementptr [8 x i8], ptr %i.apa, i64 %indvars.iv13382 ; 2 uses
  %.sroa.03606.0.copyload = load i64, ptr %i.apt, align 8, !tbaa !124 ; 2 uses
  store i64 1, ptr %i.apt, align 8, !tbaa !124
  %i.apu = and i64 %.sroa.03606.0.copyload, 1
  %.not.not.i10621 = icmp eq i64 %i.apu, 0
  br i1 %.not.not.i10621, label %bb.jr, label %PyStackRef_CLOSE.exit10622

bb.jr:                                            ; preds = %.lr.ph12263
  %i.apv = inttoptr i64 %.sroa.03606.0.copyload to ptr ; 3 uses
  %i.apw = load i32, ptr %i.apv, align 8, !tbaa !124
  %i.apx = add i32 %i.apw, -1                     ; 2 uses
  store i32 %i.apx, ptr %i.apv, align 8, !tbaa !124
  %i.apy = icmp eq i32 %i.apx, 0
  br i1 %i.apy, label %bb.js, label %PyStackRef_CLOSE.exit10622

bb.js:                                            ; preds = %bb.jr
  call void @_Py_Dealloc(ptr noundef nonnull %i.apv) #21
  br label %PyStackRef_CLOSE.exit10622

PyStackRef_CLOSE.exit10622:                       ; preds = %.lr.ph12263, %bb.jr, %bb.js
  %indvars.iv.next13383 = add nsw i64 %indvars.iv13382, -1
  %i.apz = icmp sgt i64 %indvars.iv13382, 0
  br i1 %i.apz, label %.lr.ph12263, label %._crit_edge12264.loopexit, !llvm.loop !267

._crit_edge12264.loopexit:                        ; preds = %PyStackRef_CLOSE.exit10622
  %.4.val10304.pre = load ptr, ptr %i.app, align 8, !tbaa !165
  br label %._crit_edge12264

._crit_edge12264:                                 ; preds = %._crit_edge12264.loopexit, %bb.jq
  %.4.val10304 = phi ptr [ %.4.val10304.pre, %._crit_edge12264.loopexit ], [ %.4.val1006211642, %bb.jq ]
  %i.aqa = getelementptr [8 x i8], ptr %.4.val10304, i64 %i.aoz ; 3 uses
  %i.aqb = icmp eq ptr %i.apo, null
  br i1 %i.aqb, label %_PyEval_FormatExcUnbound.exit.loopexit, label %bb.jt

bb.jt:                                            ; preds = %._crit_edge12264
  %i.aqc = ptrtoint ptr %i.apo to i64
  store i64 %i.aqc, ptr %i.aqa, align 8, !tbaa !124
  %i.aqd = getelementptr i8, ptr %i.aqa, i64 8
  %i.aqe = load i16, ptr %i.aox, align 2, !tbaa !291 ; 2 uses
  %.sroa.23601.0.extract.shift = lshr i16 %i.aqe, 8
  %.sroa.23601.0.extract.trunc = zext nneg i16 %.sroa.23601.0.extract.shift to i32
  %i.aqf = and i16 %i.aqe, 255
  %i.aqg = zext nneg i16 %i.aqf to i64
  br label %.backedge.backedge

bb.ju:                                            ; preds = %.backedge
  %i.aqh = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.aqh, align 8, !tbaa !163
  %i.aqi = getelementptr i8, ptr %.32, i64 2      ; 3 uses
  %i.aqj = sub i32 0, %.09034
  %i.aqk = sext i32 %i.aqj to i64                 ; 3 uses
  %i.aql = getelementptr [8 x i8], ptr %.4.val1006211642, i64 %i.aqk
  %i.aqm = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1006211642, ptr %i.aqm, align 8, !tbaa !165
  %i.aqn = call ptr @_Py_BuildString_StackRefSteal(ptr noundef %i.aql, i32 noundef %.09034) ; 3 uses
  %.4.val10303 = load ptr, ptr %i.aqm, align 8, !tbaa !165 ; 3 uses
  %i.aqo = icmp eq ptr %i.aqn, null
  br i1 %i.aqo, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  %i.aqp = getelementptr [8 x i8], ptr %.4.val10303, i64 %i.aqk
  br label %_PyEval_FormatExcUnbound.exit

bb.jw:                                            ; preds = %bb.ju
  %i.aqq = getelementptr i8, ptr %i.aqn, i64 6
  %i.aqr = load i16, ptr %i.aqq, align 2, !tbaa !124
  %i.aqs = and i16 %i.aqr, 1
  %i.aqt = ptrtoint ptr %i.aqn to i64
  %i.aqu = zext nneg i16 %i.aqs to i64
  %i.aqv = or i64 %i.aqu, %i.aqt
  %i.aqw = getelementptr [8 x i8], ptr %.4.val10303, i64 %i.aqk
  store i64 %i.aqv, ptr %i.aqw, align 8, !tbaa !124
  %i.aqx = sub i32 1, %.09034
  %i.aqy = sext i32 %i.aqx to i64
  %i.aqz = getelementptr [8 x i8], ptr %.4.val10303, i64 %i.aqy
  %i.ara = load i16, ptr %i.aqi, align 2, !tbaa !291 ; 2 uses
  %.sroa.23594.0.extract.shift = lshr i16 %i.ara, 8
  %.sroa.23594.0.extract.trunc = zext nneg i16 %.sroa.23594.0.extract.shift to i32
  %i.arb = and i16 %i.ara, 255
  %i.arc = zext nneg i16 %i.arb to i64
  br label %.backedge.backedge

bb.jx:                                            ; preds = %.backedge
  %i.ard = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.ard, align 8, !tbaa !163
  %i.are = getelementptr i8, ptr %.32, i64 2      ; 3 uses
  %i.arf = getelementptr i8, ptr %.4.val1006211642, i64 -8
  %.sroa.03589.0.copyload = load i64, ptr %i.arf, align 8, !tbaa !124 ; 3 uses
  %i.arg = getelementptr i8, ptr %.4.val1006211642, i64 -16
  %.sroa.03591.0.copyload = load i64, ptr %i.arg, align 8, !tbaa !124 ; 3 uses
  %i.arh = and i64 %.sroa.03591.0.copyload, -2
  %i.ari = inttoptr i64 %i.arh to ptr
  %i.arj = and i64 %.sroa.03589.0.copyload, -2
  %i.ark = inttoptr i64 %i.arj to ptr
  %i.arl = getelementptr i8, ptr %.4, i64 64      ; 6 uses
  store ptr %.4.val1006211642, ptr %i.arl, align 8, !tbaa !165
  %i.arm = call ptr @_PyTemplate_Build(ptr noundef %i.ari, ptr noundef %i.ark) #21 ; 3 uses
  %.4.val10302 = load ptr, ptr %i.arl, align 8, !tbaa !165
  %i.arn = getelementptr i8, ptr %.4.val10302, i64 -8
  store ptr %i.arn, ptr %i.arl, align 8, !tbaa !165
  %i.aro = and i64 %.sroa.03589.0.copyload, 1
  %.not.not.i10623 = icmp eq i64 %i.aro, 0
  br i1 %.not.not.i10623, label %bb.jy, label %PyStackRef_CLOSE.exit10624

bb.jy:                                            ; preds = %bb.jx
  %i.arp = inttoptr i64 %.sroa.03589.0.copyload to ptr ; 3 uses
  %i.arq = load i32, ptr %i.arp, align 8, !tbaa !124
  %i.arr = add i32 %i.arq, -1                     ; 2 uses
  store i32 %i.arr, ptr %i.arp, align 8, !tbaa !124
  %i.ars = icmp eq i32 %i.arr, 0
  br i1 %i.ars, label %bb.jz, label %PyStackRef_CLOSE.exit10624

bb.jz:                                            ; preds = %bb.jy
  call void @_Py_Dealloc(ptr noundef nonnull %i.arp) #21
  br label %PyStackRef_CLOSE.exit10624

PyStackRef_CLOSE.exit10624:                       ; preds = %bb.jx, %bb.jy, %bb.jz
  %.4.val10301 = load ptr, ptr %i.arl, align 8, !tbaa !165
  %i.art = getelementptr i8, ptr %.4.val10301, i64 -8
  store ptr %i.art, ptr %i.arl, align 8, !tbaa !165
  %i.aru = and i64 %.sroa.03591.0.copyload, 1
  %.not.not.i10625 = icmp eq i64 %i.aru, 0
  br i1 %.not.not.i10625, label %bb.ka, label %PyStackRef_CLOSE.exit10626

bb.ka:                                            ; preds = %PyStackRef_CLOSE.exit10624
  %i.arv = inttoptr i64 %.sroa.03591.0.copyload to ptr ; 3 uses
  %i.arw = load i32, ptr %i.arv, align 8, !tbaa !124
  %i.arx = add i32 %i.arw, -1                     ; 2 uses
  store i32 %i.arx, ptr %i.arv, align 8, !tbaa !124
  %i.ary = icmp eq i32 %i.arx, 0
  br i1 %i.ary, label %bb.kb, label %PyStackRef_CLOSE.exit10626

bb.kb:                                            ; preds = %bb.ka
  call void @_Py_Dealloc(ptr noundef nonnull %i.arv) #21
  br label %PyStackRef_CLOSE.exit10626

PyStackRef_CLOSE.exit10626:                       ; preds = %PyStackRef_CLOSE.exit10624, %bb.ka, %bb.kb
  %.4.val10300 = load ptr, ptr %i.arl, align 8, !tbaa !165 ; 3 uses
  %i.arz = icmp eq ptr %i.arm, null
  br i1 %i.arz, label %_PyEval_FormatExcUnbound.exit.loopexit, label %bb.kc

bb.kc:                                            ; preds = %PyStackRef_CLOSE.exit10626
  %i.asa = getelementptr i8, ptr %i.arm, i64 6
  %i.asb = load i16, ptr %i.asa, align 2, !tbaa !124
  %i.asc = and i16 %i.asb, 1
  %i.asd = ptrtoint ptr %i.arm to i64
  %i.ase = zext nneg i16 %i.asc to i64
  %i.asf = or i64 %i.ase, %i.asd
  store i64 %i.asf, ptr %.4.val10300, align 8, !tbaa !124
  %i.asg = getelementptr i8, ptr %.4.val10300, i64 8
  %i.ash = load i16, ptr %i.are, align 2, !tbaa !291 ; 2 uses
  %.sroa.23582.0.extract.shift = lshr i16 %i.ash, 8
  %.sroa.23582.0.extract.trunc = zext nneg i16 %.sroa.23582.0.extract.shift to i32
  %i.asi = and i16 %i.ash, 255
  %i.asj = zext nneg i16 %i.asi to i64
  br label %.backedge.backedge

bb.kd:                                            ; preds = %.backedge
  %i.ask = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.ask, align 8, !tbaa !163
  %i.asl = getelementptr i8, ptr %.32, i64 2      ; 3 uses
  %i.asm = sub i32 0, %.09034
  %i.asn = sext i32 %i.asm to i64
  %i.aso = getelementptr [8 x i8], ptr %.4.val1006211642, i64 %i.asn ; 2 uses
  %i.asp = sext i32 %.09034 to i64
  %i.asq = call ptr @_PyTuple_FromStackRefStealOnSuccess(ptr noundef %i.aso, i64 noundef %i.asp) #21 ; 2 uses
  %i.asr = icmp eq ptr %i.asq, null
  br i1 %i.asr, label %_PyEval_FormatExcUnbound.exit.loopexit, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.ass = ptrtoint ptr %i.asq to i64
  store i64 %i.ass, ptr %i.aso, align 8, !tbaa !124
  %i.ast = sub i32 1, %.09034
  %i.asu = sext i32 %i.ast to i64
  %i.asv = getelementptr [8 x i8], ptr %.4.val1006211642, i64 %i.asu
  %i.asw = load i16, ptr %i.asl, align 2, !tbaa !291 ; 2 uses
  %.sroa.23575.0.extract.shift = lshr i16 %i.asw, 8
  %.sroa.23575.0.extract.trunc = zext nneg i16 %.sroa.23575.0.extract.shift to i32
  %i.asx = and i16 %i.asw, 255
  %i.asy = zext nneg i16 %i.asx to i64
  br label %.backedge.backedge

bb.kf:                                            ; preds = %.backedge
  %i.asz = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.asz, align 8, !tbaa !163
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._PyEval_EvalFrameDefault, ptr noundef nonnull @.str.21) #23
  unreachable

bb.kg:                                            ; preds = %.backedge
  %i.ata = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.ata, align 8, !tbaa !163
  %i.atb = getelementptr i8, ptr %.32, i64 8
  br label %_PyThreadState_HasStackSpace.exit10640.thread

_PyThreadState_HasStackSpace.exit10640.thread:    ; preds = %bb.vs, %bb.lz, %bb.ld, %bb.wu, %bb.wt, %bb.wn, %bb.wm, %bb.wg, %bb.wf, %bb.wa, %bb.vz, %bb.vy, %bb.vx, %bb.vt, %_PyThreadState_HasStackSpace.exit10819, %bb.vr, %bb.vq, %bb.vp, %bb.vo, %bb.vk, %bb.va, %bb.uz, %bb.uy, %bb.ux, %bb.uw, %bb.up, %bb.uo, %bb.un, %bb.um, %bb.ul, %bb.uh, %bb.ug, %bb.uf, %bb.ue, %bb.ua, %bb.tz, %bb.ty, %bb.tx, %bb.tn, %bb.tm, %bb.tl, %bb.td, %bb.tc, %bb.qt, %bb.qs, %bb.nj, %bb.ni, %bb.nh, %bb.ng, %bb.nc, %bb.nb, %bb.mx, %bb.mw, %bb.ms, %bb.mr, %PyStackRef_CLOSE.exit10665, %bb.mf, %bb.me, %bb.md, %bb.mc, %bb.ma, %_PyThreadState_HasStackSpace.exit10657, %bb.ly, %bb.lx, %PyStackRef_CLOSE.exit10655, %bb.lp, %bb.lo, %bb.ln, %_PyThreadState_HasStackSpace.exit10640, %bb.lc, %bb.lb, %bb.la, %bb.kz, %bb.kg
  %.69046 = phi ptr [ %.4.val1006211642, %bb.kg ], [ %.4.val1006211642, %bb.kz ], [ %.4.val1006211642, %bb.lc ], [ %.4.val1006211642, %_PyThreadState_HasStackSpace.exit10640 ], [ %.4.val1006211642, %bb.lb ], [ %.4.val1006211642, %bb.la ], [ %.4.val1006211642, %bb.ln ], [ %.4.val1006211642, %bb.lp ], [ %.4.val10288, %bb.lx ], [ %.4.val10288, %bb.ly ], [ %.4.val10288, %bb.ma ], [ %.4.val10288, %_PyThreadState_HasStackSpace.exit10657 ], [ %.4.val10288, %PyStackRef_CLOSE.exit10655 ], [ %.4.val1006211642, %bb.lo ], [ %.4.val1006211642, %bb.mc ], [ %.4.val1006211642, %bb.md ], [ %.4.val10286, %PyStackRef_CLOSE.exit10665 ], [ %.4.val1006211642, %bb.mf ], [ %.4.val1006211642, %bb.me ], [ %.4.val1006211642, %bb.ms ], [ %.4.val1006211642, %bb.mr ], [ %.4.val1006211642, %bb.mx ], [ %.4.val1006211642, %bb.mw ], [ %.4.val1006211642, %bb.nc ], [ %.4.val1006211642, %bb.nb ], [ %.4.val1006211642, %bb.ng ], [ %.4.val1006211642, %bb.ni ], [ %.4.val1006211642, %bb.nj ], [ %.4.val1006211642, %bb.nh ], [ %.4.val1006211642, %bb.qt ], [ %.4.val1006211642, %bb.qs ], [ %.4.val1006211642, %bb.td ], [ %.4.val1006211642, %bb.tc ], [ %.4.val1006211642, %bb.tl ], [ %.4.val1006211642, %bb.tm ], [ %.4.val1006211642, %bb.tn ], [ %.4.val1006211642, %bb.tx ], [ %.4.val1006211642, %bb.tz ], [ %.4.val1006211642, %bb.ua ], [ %.4.val1006211642, %bb.ty ], [ %.4.val1006211642, %bb.ue ], [ %.4.val1006211642, %bb.ug ], [ %.4.val1006211642, %bb.uh ], [ %.4.val1006211642, %bb.uf ], [ %.4.val1006211642, %bb.ul ], [ %.4.val1006211642, %bb.uo ], [ %.4.val1006211642, %bb.up ], [ %.4.val1006211642, %bb.un ], [ %.4.val1006211642, %bb.um ], [ %.4.val1006211642, %bb.uw ], [ %.4.val1006211642, %bb.uy ], [ %.4.val1006211642, %bb.uz ], [ %.4.val1006211642, %bb.va ], [ %.4.val1006211642, %bb.ux ], [ %.4.val1006211642, %bb.vk ], [ %.4.val1006211642, %bb.vs ], [ %.4.val1006211642, %bb.vo ], [ %.4.val1006211642, %bb.vq ], [ %.4.val1006211642, %bb.vr ], [ %.4.val1006211642, %bb.vt ], [ %.4.val1006211642, %_PyThreadState_HasStackSpace.exit10819 ], [ %.4.val1006211642, %bb.vp ], [ %.4.val1006211642, %bb.vx ], [ %.4.val1006211642, %bb.vz ], [ %.4.val1006211642, %bb.wa ], [ %.4.val1006211642, %bb.vy ], [ %.4.val1006211642, %bb.wg ], [ %.4.val1006211642, %bb.wf ], [ %.4.val1006211642, %bb.wn ], [ %.4.val1006211642, %bb.wm ], [ %.4.val1006211642, %bb.wu ], [ %.4.val1006211642, %bb.wt ], [ %.4.val10288, %bb.lz ], [ %.4.val1006211642, %bb.ld ] ; 6 uses
  %.19036 = phi ptr [ %i.atb, %bb.kg ], [ %i.awq, %bb.kz ], [ %i.awq, %bb.lc ], [ %i.awq, %_PyThreadState_HasStackSpace.exit10640 ], [ %i.awq, %bb.lb ], [ %i.awq, %bb.la ], [ %i.bae, %bb.ln ], [ %i.bae, %bb.lp ], [ %i.bae, %bb.lx ], [ %i.bae, %bb.ly ], [ %i.bae, %bb.ma ], [ %i.bae, %_PyThreadState_HasStackSpace.exit10657 ], [ %i.bae, %PyStackRef_CLOSE.exit10655 ], [ %i.bae, %bb.lo ], [ %i.bej, %bb.mc ], [ %i.bej, %bb.md ], [ %i.bej, %PyStackRef_CLOSE.exit10665 ], [ %i.bej, %bb.mf ], [ %i.bej, %bb.me ], [ %i.bhf, %bb.ms ], [ %i.bhf, %bb.mr ], [ %i.bis, %bb.mx ], [ %i.bis, %bb.mw ], [ %i.bke, %bb.nc ], [ %i.bke, %bb.nb ], [ %i.blq, %bb.ng ], [ %i.blq, %bb.ni ], [ %i.blq, %bb.nj ], [ %i.blq, %bb.nh ], [ %i.cax, %bb.qt ], [ %i.cax, %bb.qs ], [ %i.cnk, %bb.td ], [ %i.cnk, %bb.tc ], [ %i.coz, %bb.tl ], [ %i.coz, %bb.tm ], [ %i.coz, %bb.tn ], [ %i.cqt, %bb.tx ], [ %i.cqt, %bb.tz ], [ %i.cqt, %bb.ua ], [ %i.cqt, %bb.ty ], [ %i.csq, %bb.ue ], [ %i.csq, %bb.ug ], [ %i.csq, %bb.uh ], [ %i.csq, %bb.uf ], [ %i.cun, %bb.ul ], [ %i.cun, %bb.uo ], [ %i.cun, %bb.up ], [ %i.cun, %bb.un ], [ %i.cun, %bb.um ], [ %i.cwt, %bb.uw ], [ %i.cwt, %bb.uy ], [ %i.cwt, %bb.uz ], [ %i.cwt, %bb.va ], [ %i.cwt, %bb.ux ], [ %i.czn, %bb.vk ], [ %i.day, %bb.vs ], [ %i.day, %bb.vo ], [ %i.day, %bb.vq ], [ %i.day, %bb.vr ], [ %i.day, %bb.vt ], [ %i.day, %_PyThreadState_HasStackSpace.exit10819 ], [ %i.day, %bb.vp ], [ %i.dfe, %bb.vx ], [ %i.dfe, %bb.vz ], [ %i.dfe, %bb.wa ], [ %i.dfe, %bb.vy ], [ %i.dhb, %bb.wg ], [ %i.dhb, %bb.wf ], [ %i.dig, %bb.wn ], [ %i.dig, %bb.wm ], [ %i.djl, %bb.wu ], [ %i.djl, %bb.wt ], [ %i.bae, %bb.lz ], [ %i.awq, %bb.ld ] ; 5 uses
  %i.atc = xor i32 %.09034, -1
  %i.atd = sext i32 %i.atc to i64                 ; 4 uses
  %i.ate = getelementptr [8 x i8], ptr %.69046, i64 %i.atd ; 2 uses
  %.sroa.03552.0.copyload = load i64, ptr %i.ate, align 8, !tbaa !124 ; 5 uses
  %i.atf = sub i32 -2, %.09034
  %i.atg = sext i32 %i.atf to i64                 ; 6 uses
  %i.ath = getelementptr [8 x i8], ptr %.69046, i64 %i.atg ; 2 uses
  %.sroa.03559.0.copyload = load i64, ptr %i.ath, align 8, !tbaa !124 ; 7 uses
  %i.ati = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %.val10367 = load i16, ptr %i.ati, align 2, !tbaa !291 ; 2 uses
  %i.atj = icmp ult i16 %.val10367, 7
  br i1 %i.atj, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %_PyThreadState_HasStackSpace.exit10640.thread
  %i.atk = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.69046, ptr %i.atk, align 8, !tbaa !165
  %i.atl = icmp ne i64 %.sroa.03552.0.copyload, 1
  %i.atm = zext i1 %i.atl to i32
  %i.atn = add i32 %.09034, %i.atm
  call void @_Py_Specialize_Call(i64 %.sroa.03559.0.copyload, i64 %.sroa.03552.0.copyload, ptr noundef nonnull %.32, i32 noundef %i.atn) #21
  %.4.val10299 = load ptr, ptr %i.atk, align 8, !tbaa !165
  %i.ato = load i8, ptr %.32, align 2, !tbaa !124
  %i.atp = zext i8 %i.ato to i64
  br label %.backedge.backedge

bb.ki:                                            ; preds = %_PyThreadState_HasStackSpace.exit10640.thread
  %i.atq = add i16 %.val10367, -8
  store i16 %i.atq, ptr %i.ati, align 2, !tbaa !291
  %i.atr = and i64 %.sroa.03559.0.copyload, 3
  %i.ats = icmp eq i64 %i.atr, 3
  br i1 %i.ats, label %PyStackRef_TYPE.exit.thread, label %PyStackRef_TYPE.exit

PyStackRef_TYPE.exit:                             ; preds = %bb.ki
  %7 = and i64 %.sroa.03559.0.copyload, -2
  %8 = inttoptr i64 %7 to ptr                     ; 3 uses
  %9 = getelementptr i8, ptr %8, i64 8
  %.val.i10627 = load ptr, ptr %9, align 8, !tbaa !125
  %i.att = icmp eq ptr %.val.i10627, @PyMethod_Type
  %i.atu = icmp eq i64 %.sroa.03552.0.copyload, 1
  %or.cond = select i1 %i.att, i1 %i.atu, i1 false
  br i1 %or.cond, label %bb.kj, label %PyStackRef_TYPE.exit.thread

bb.kj:                                            ; preds = %PyStackRef_TYPE.exit
  %i.atv = getelementptr i8, ptr %8, i64 24
  %i.atw = load ptr, ptr %i.atv, align 8, !tbaa !308 ; 4 uses
  %i.atx = load i32, ptr %i.atw, align 8, !tbaa !124 ; 2 uses
  %.not.i10629 = icmp sgt i32 %i.atx, -1
  br i1 %.not.i10629, label %bb.kl, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.aty = ptrtoint ptr %i.atw to i64
  %i.atz = or i64 %i.aty, 1
  br label %_PyStackRef_FromPyObjectNew.exit10631

bb.kl:                                            ; preds = %bb.kj
  %i.aua = add nuw i32 %i.atx, 1
  store i32 %i.aua, ptr %i.atw, align 8, !tbaa !124
  %i.aub = ptrtoint ptr %i.atw to i64
  br label %_PyStackRef_FromPyObjectNew.exit10631

_PyStackRef_FromPyObjectNew.exit10631:            ; preds = %bb.kk, %bb.kl
  %.sroa.0.0.i10630 = phi i64 [ %i.atz, %bb.kk ], [ %i.aub, %bb.kl ] ; 2 uses
  %i.auc = getelementptr i8, ptr %8, i64 16
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !188 ; 4 uses
  %i.aue = load i32, ptr %i.aud, align 8, !tbaa !124 ; 2 uses
  %.not.i10632 = icmp sgt i32 %i.aue, -1
  br i1 %.not.i10632, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10631
  %i.auf = ptrtoint ptr %i.aud to i64
  %i.aug = or i64 %i.auf, 1
  br label %_PyStackRef_FromPyObjectNew.exit10634

bb.kn:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10631
  %i.auh = add nuw i32 %i.aue, 1
  store i32 %i.auh, ptr %i.aud, align 8, !tbaa !124
  %i.aui = ptrtoint ptr %i.aud to i64
  br label %_PyStackRef_FromPyObjectNew.exit10634

_PyStackRef_FromPyObjectNew.exit10634:            ; preds = %bb.km, %bb.kn
  %.sroa.0.0.i10633 = phi i64 [ %i.aug, %bb.km ], [ %i.aui, %bb.kn ] ; 2 uses
  store i64 %.sroa.0.0.i10633, ptr %i.ath, align 8, !tbaa !124
  store i64 %.sroa.0.0.i10630, ptr %i.ate, align 8, !tbaa !124
  %i.auj = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.69046, ptr %i.auj, align 8, !tbaa !165
  %i.auk = and i64 %.sroa.03559.0.copyload, 1
  %.not.not.i10635 = icmp eq i64 %i.auk, 0
  br i1 %.not.not.i10635, label %bb.ko, label %PyStackRef_CLOSE.exit10636

bb.ko:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10634
  %i.aul = inttoptr i64 %.sroa.03559.0.copyload to ptr ; 3 uses
  %i.aum = load i32, ptr %i.aul, align 8, !tbaa !124
  %i.aun = add i32 %i.aum, -1                     ; 2 uses
  store i32 %i.aun, ptr %i.aul, align 8, !tbaa !124
  %i.auo = icmp eq i32 %i.aun, 0
  br i1 %i.auo, label %bb.kp, label %PyStackRef_CLOSE.exit10636

bb.kp:                                            ; preds = %bb.ko
  call void @_Py_Dealloc(ptr noundef nonnull %i.aul) #21
  br label %PyStackRef_CLOSE.exit10636

PyStackRef_CLOSE.exit10636:                       ; preds = %_PyStackRef_FromPyObjectNew.exit10634, %bb.ko, %bb.kp
  %.4.val10298 = load ptr, ptr %i.auj, align 8, !tbaa !165
  br label %PyStackRef_TYPE.exit.thread

PyStackRef_TYPE.exit.thread:                      ; preds = %bb.ki, %PyStackRef_CLOSE.exit10636, %PyStackRef_TYPE.exit
  %.sroa.03552.0 = phi i64 [ %.sroa.0.0.i10630, %PyStackRef_CLOSE.exit10636 ], [ %.sroa.03552.0.copyload, %PyStackRef_TYPE.exit ], [ %.sroa.03552.0.copyload, %bb.ki ] ; 3 uses
  %.sroa.03559.0 = phi i64 [ %.sroa.0.0.i10633, %PyStackRef_CLOSE.exit10636 ], [ %.sroa.03559.0.copyload, %PyStackRef_TYPE.exit ], [ %.sroa.03559.0.copyload, %bb.ki ] ; 5 uses
  %.79047 = phi ptr [ %.4.val10298, %PyStackRef_CLOSE.exit10636 ], [ %.69046, %PyStackRef_TYPE.exit ], [ %.69046, %bb.ki ] ; 7 uses
  %i.aup = sub i32 0, %.09034
  %i.auq = sext i32 %i.aup to i64
  %i.aur = getelementptr [8 x i8], ptr %.79047, i64 %i.auq
  %i.aus = and i64 %.sroa.03559.0, -2
  %i.aut = inttoptr i64 %i.aus to ptr             ; 4 uses
  %i.auu = icmp ne i64 %.sroa.03552.0, 1          ; 2 uses
  %.09081.idx = select i1 %i.auu, i64 -8, i64 0
  %.09081 = getelementptr i8, ptr %i.aur, i64 %.09081.idx ; 2 uses
  %i.auv = zext i1 %i.auu to i32
  %.09080 = add i32 %.09034, %i.auv               ; 2 uses
  %i.auw = getelementptr i8, ptr %i.aut, i64 8
  %.val9860 = load ptr, ptr %i.auw, align 8, !tbaa !125
  %i.aux = icmp eq ptr %.val9860, @PyFunction_Type
  br i1 %i.aux, label %bb.kq, label %bb.kw

bb.kq:                                            ; preds = %PyStackRef_TYPE.exit.thread
  %i.auy = load ptr, ptr %i.lzr, align 8, !tbaa !147
  %i.auz = getelementptr i8, ptr %i.auy, i64 8568
  %i.ava = load ptr, ptr %i.auz, align 8, !tbaa !148
  %.not9691 = icmp eq ptr %i.ava, null
  br i1 %.not9691, label %bb.kr, label %bb.kw

bb.kr:                                            ; preds = %bb.kq
  %i.avb = getelementptr i8, ptr %i.aut, i64 136
  %i.avc = load ptr, ptr %i.avb, align 8, !tbaa !309
  %i.avd = icmp eq ptr %i.avc, @_PyFunction_Vectorcall
  br i1 %i.avd, label %bb.ks, label %bb.kw

bb.ks:                                            ; preds = %bb.kr
  %i.ave = getelementptr i8, ptr %i.aut, i64 48
  %.val10389 = load ptr, ptr %i.ave, align 8, !tbaa !174
  %i.avf = getelementptr i8, ptr %.val10389, i64 48
  %i.avg = load i32, ptr %i.avf, align 8, !tbaa !164
  %i.avh = and i32 %i.avg, 1
  %.not9692 = icmp eq i32 %i.avh, 0
  br i1 %.not9692, label %bb.kt, label %_Py_NewRef.exit

bb.kt:                                            ; preds = %bb.ks
  %i.avi = getelementptr i8, ptr %i.aut, i64 16
  %.val10408 = load ptr, ptr %i.avi, align 8, !tbaa !310 ; 4 uses
  %i.avj = load i32, ptr %.val10408, align 8, !tbaa !124 ; 2 uses
  %i.avk = icmp ugt i32 %i.avj, -1073741825
  br i1 %i.avk, label %_Py_NewRef.exit, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.avl = add nuw i32 %i.avj, 1
  store i32 %i.avl, ptr %.val10408, align 8, !tbaa !124
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.ku, %bb.kt, %bb.ks
  %i.avm = phi ptr [ null, %bb.ks ], [ %.val10408, %bb.kt ], [ %.val10408, %bb.ku ]
  %i.avn = getelementptr [8 x i8], ptr %.79047, i64 %i.atg
  store i64 %.sroa.03559.0, ptr %i.avn, align 8, !tbaa !124
  %i.avo = getelementptr [8 x i8], ptr %.79047, i64 %i.atd
  store i64 %.sroa.03552.0, ptr %i.avo, align 8, !tbaa !124
  %i.avp = getelementptr i8, ptr %.4, i64 64      ; 3 uses
  store ptr %.79047, ptr %i.avp, align 8, !tbaa !165
  %i.avq = sext i32 %.09080 to i64
  %i.avr = call ptr @_PyEvalFramePushAndInit(ptr noundef nonnull %0, i64 %.sroa.03559.0, ptr noundef %i.avm, ptr noundef %.09081, i64 noundef %i.avq, ptr noundef null, ptr noundef nonnull %.4) ; 2 uses
  %.4.val10297 = load ptr, ptr %i.avp, align 8, !tbaa !165
  %i.avs = getelementptr [8 x i8], ptr %.4.val10297, i64 %i.atg ; 2 uses
  %i.avt = icmp eq ptr %i.avr, null
  br i1 %i.avt, label %_PyEval_FormatExcUnbound.exit, label %bb.kv

bb.kv:                                            ; preds = %_Py_NewRef.exit
  %i.avu = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.avu, align 8, !tbaa !179
  store ptr %i.avs, ptr %i.avp, align 8, !tbaa !165
  br label %.sink.split

bb.kw:                                            ; preds = %bb.kr, %bb.kq, %PyStackRef_TYPE.exit.thread
  %i.avv = getelementptr [8 x i8], ptr %.79047, i64 %i.atg
  store i64 %.sroa.03559.0, ptr %i.avv, align 8, !tbaa !124
  %i.avw = getelementptr [8 x i8], ptr %.79047, i64 %i.atd
  store i64 %.sroa.03552.0, ptr %i.avw, align 8, !tbaa !124
  %i.avx = getelementptr i8, ptr %.4, i64 64      ; 4 uses
  store ptr %.79047, ptr %i.avx, align 8, !tbaa !165
  %i.avy = call ptr @_Py_VectorCallInstrumentation_StackRefSteal(i64 %.sroa.03559.0, ptr noundef %.09081, i32 noundef %.09080, i64 1, i1 noundef zeroext false, ptr noundef nonnull %.4, ptr noundef nonnull %.32, ptr noundef %0) ; 3 uses
  %.4.val10296 = load ptr, ptr %i.avx, align 8, !tbaa !165 ; 3 uses
  %i.avz = icmp eq ptr %i.avy, null
  br i1 %i.avz, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  %i.awa = getelementptr [8 x i8], ptr %.4.val10296, i64 %i.atg
  br label %_PyEval_FormatExcUnbound.exit

bb.ky:                                            ; preds = %bb.kw
  %i.awb = getelementptr i8, ptr %i.avy, i64 6
  %i.awc = load i16, ptr %i.awb, align 2, !tbaa !124
  %i.awd = and i16 %i.awc, 1
  %i.awe = ptrtoint ptr %i.avy to i64
  %i.awf = zext nneg i16 %i.awd to i64
  %i.awg = or i64 %i.awf, %i.awe
  %i.awh = getelementptr [8 x i8], ptr %.4.val10296, i64 %i.atg
  store i64 %i.awg, ptr %i.awh, align 8, !tbaa !124
  %i.awi = getelementptr [8 x i8], ptr %.4.val10296, i64 %i.atd ; 2 uses
  store ptr %i.awi, ptr %i.avx, align 8, !tbaa !165
  %i.awj = load atomic i64, ptr %i.lzq monotonic, align 8
  %i.awk = and i64 %i.awj, 255
  %.not.i10637 = icmp eq i64 %i.awk, 0
  br i1 %.not.i10637, label %check_periodics.exit.thread, label %check_periodics.exit

check_periodics.exit:                             ; preds = %bb.ky
  %i.awl = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #21
  %.4.val10295 = load ptr, ptr %i.avx, align 8, !tbaa !165 ; 2 uses
  %.not9693 = icmp eq i32 %i.awl, 0
  br i1 %.not9693, label %check_periodics.exit.thread, label %_PyEval_FormatExcUnbound.exit.loopexit

check_periodics.exit.thread:                      ; preds = %bb.ky, %check_periodics.exit
  %.4.val1029511543 = phi ptr [ %.4.val10295, %check_periodics.exit ], [ %i.awi, %bb.ky ]
  %i.awm = load i16, ptr %.19036, align 2, !tbaa !291 ; 2 uses
  %.sroa.23521.0.extract.shift = lshr i16 %i.awm, 8
  %.sroa.23521.0.extract.trunc = zext nneg i16 %.sroa.23521.0.extract.shift to i32
  %i.awn = and i16 %i.awm, 255
  %i.awo = zext nneg i16 %i.awn to i64
  br label %.backedge.backedge

bb.kz:                                            ; preds = %.backedge
  %i.awp = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.awp, align 8, !tbaa !163
  %i.awq = getelementptr i8, ptr %.32, i64 8      ; 8 uses
  %i.awr = load ptr, ptr %i.lzr, align 8, !tbaa !147
  %i.aws = getelementptr i8, ptr %i.awr, i64 8568
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !148
  %.not9591 = icmp eq ptr %i.awt, null
  br i1 %.not9591, label %bb.la, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.la:                                            ; preds = %bb.kz
  %i.awu = xor i32 %.09034, -1
  %i.awv = sext i32 %i.awu to i64                 ; 2 uses
  %i.aww = getelementptr [8 x i8], ptr %.4.val1006211642, i64 %i.awv
  %.sroa.03512.0.copyload = load i64, ptr %i.aww, align 8, !tbaa !124
  %i.awx = sub i32 -2, %.09034
  %i.awy = sext i32 %i.awx to i64                 ; 3 uses
  %i.awz = getelementptr [8 x i8], ptr %.4.val1006211642, i64 %i.awy
  %.sroa.03515.0.copyload = load i64, ptr %i.awz, align 8, !tbaa !124 ; 3 uses
  %i.axa = getelementptr i8, ptr %.32, i64 4
  %.val10436 = load i32, ptr %i.axa, align 2
  %i.axb = and i64 %.sroa.03515.0.copyload, -2
  %i.axc = inttoptr i64 %i.axb to ptr             ; 4 uses
  %i.axd = icmp eq i64 %.sroa.03512.0.copyload, 1
  br i1 %i.axd, label %bb.lb, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.lb:                                            ; preds = %bb.la
  %i.axe = getelementptr i8, ptr %i.axc, i64 8
  %.val9873 = load ptr, ptr %i.axe, align 8, !tbaa !125
  %i.axf = getelementptr i8, ptr %.val9873, i64 168
  %.val9873.val = load i64, ptr %i.axf, align 8, !tbaa !130
  %i.axg = and i64 %.val9873.val, 2147483648
  %.not11697 = icmp eq i64 %i.axg, 0
  br i1 %.not11697, label %_PyThreadState_HasStackSpace.exit10640.thread, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.axh = getelementptr i8, ptr %i.axc, i64 384
  %i.axi = load i32, ptr %i.axh, align 8, !tbaa !311
  %.not9593 = icmp eq i32 %i.axi, %.val10436
  br i1 %.not9593, label %bb.ld, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.ld:                                            ; preds = %bb.lc
  %i.axj = getelementptr i8, ptr %i.axc, i64 928
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !312 ; 5 uses
  %i.axl = load ptr, ptr %i.lzw, align 8, !tbaa !173 ; 2 uses
  %.not.i10639 = icmp eq ptr %i.axl, null
  br i1 %.not.i10639, label %_PyThreadState_HasStackSpace.exit10640.thread, label %_PyThreadState_HasStackSpace.exit10640

_PyThreadState_HasStackSpace.exit10640:           ; preds = %bb.ld
  %i.axm = getelementptr i8, ptr %i.axk, i64 48
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !174
  %i.axo = getelementptr i8, ptr %i.axn, i64 76
  %i.axp = load i32, ptr %i.axo, align 4, !tbaa !175
  %i.axq = add i32 %i.axp, %i.lzy
  %i.axr = sext i32 %i.axq to i64
  %i.axs = load ptr, ptr %i.lzx, align 8, !tbaa !307
  %i.axt = ptrtoint ptr %i.axs to i64
  %i.axu = ptrtoint ptr %i.axl to i64
  %i.axv = sub i64 %i.axt, %i.axu
  %i.axw = ashr exact i64 %i.axv, 3
  %i.axx = icmp sgt i64 %i.axw, %i.axr
  br i1 %i.axx, label %bb.le, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.le:                                            ; preds = %_PyThreadState_HasStackSpace.exit10640
  %i.axy = getelementptr i8, ptr %.4, i64 64      ; 10 uses
  store ptr %.4.val1006211642, ptr %i.axy, align 8, !tbaa !165
  %i.axz = call ptr @PyType_GenericAlloc(ptr noundef nonnull %i.axc, i64 noundef 0) #21 ; 3 uses
  %.4.val10294 = load ptr, ptr %i.axy, align 8, !tbaa !165 ; 4 uses
  %i.aya = icmp eq ptr %i.axz, null
  br i1 %i.aya, label %_PyEval_FormatExcUnbound.exit.loopexit, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.ayb = getelementptr i8, ptr %i.axz, i64 6
  %i.ayc = load i16, ptr %i.ayb, align 2, !tbaa !124
  %i.ayd = and i16 %i.ayc, 1
  %i.aye = ptrtoint ptr %i.axz to i64
  %i.ayf = zext nneg i16 %i.ayd to i64
  %i.ayg = or i64 %i.ayf, %i.aye                  ; 4 uses
  %i.ayh = load i32, ptr %i.axk, align 8, !tbaa !124 ; 2 uses
  %.not.i10641 = icmp sgt i32 %i.ayh, -1
  br i1 %.not.i10641, label %bb.lh, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
end_hunk_0
begin_hunk_1_@_PyEval_EvalFrameDefault:bb.a
  %.sroa.23148.0.extract.trunc = zext nneg i16 %.sroa.23148.0.extract.shift to i32
  %i.bzl = and i16 %i.bzk, 255
  %i.bzm = zext nneg i16 %i.bzl to i64
  br label %.backedge.backedge

bb.qm:                                            ; preds = %.backedge
  %i.bzn = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.bzn, align 8, !tbaa !163
  %i.bzo = getelementptr i8, ptr %.32, i64 2      ; 3 uses
  %i.bzp = getelementptr i8, ptr %.4.val1006211642, i64 -8 ; 2 uses
  %.sroa.03139.0.copyload = load i64, ptr %i.bzp, align 8, !tbaa !124 ; 3 uses
  %i.bzq = getelementptr i8, ptr %.4.val1006211642, i64 -16 ; 2 uses
  %.sroa.03143.0.copyload = load i64, ptr %i.bzq, align 8, !tbaa !124 ; 3 uses
  %i.bzr = and i64 %.sroa.03139.0.copyload, -2
  %i.bzs = inttoptr i64 %i.bzr to ptr
  %i.bzt = and i64 %.sroa.03143.0.copyload, -2
  %i.bzu = inttoptr i64 %i.bzt to ptr
  %i.bzv = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1006211642, ptr %i.bzv, align 8, !tbaa !165
  %i.bzw = sext i32 %.09034 to i64
  %i.bzx = getelementptr [16 x i8], ptr @_PyIntrinsics_BinaryFunctions, i64 %i.bzw
  %i.bzy = load ptr, ptr %i.bzx, align 8, !tbaa !314
  %i.bzz = call ptr %i.bzy(ptr noundef %0, ptr noundef %i.bzu, ptr noundef %i.bzs) #21 ; 3 uses
  store i64 1, ptr %i.bzp, align 8, !tbaa !124
  %i.caa = and i64 %.sroa.03139.0.copyload, 1
  %.not.not.i10739 = icmp eq i64 %i.caa, 0
  br i1 %.not.not.i10739, label %bb.qn, label %PyStackRef_CLOSE.exit10740

bb.qn:                                            ; preds = %bb.qm
  %i.cab = inttoptr i64 %.sroa.03139.0.copyload to ptr ; 3 uses
  %i.cac = load i32, ptr %i.cab, align 8, !tbaa !124
  %i.cad = add i32 %i.cac, -1                     ; 2 uses
  store i32 %i.cad, ptr %i.cab, align 8, !tbaa !124
  %i.cae = icmp eq i32 %i.cad, 0
  br i1 %i.cae, label %bb.qo, label %PyStackRef_CLOSE.exit10740

bb.qo:                                            ; preds = %bb.qn
  call void @_Py_Dealloc(ptr noundef nonnull %i.cab) #21
  br label %PyStackRef_CLOSE.exit10740

PyStackRef_CLOSE.exit10740:                       ; preds = %bb.qm, %bb.qn, %bb.qo
  store i64 1, ptr %i.bzq, align 8, !tbaa !124
  %i.caf = and i64 %.sroa.03143.0.copyload, 1
  %.not.not.i10741 = icmp eq i64 %i.caf, 0
  br i1 %.not.not.i10741, label %bb.qp, label %PyStackRef_CLOSE.exit10742

bb.qp:                                            ; preds = %PyStackRef_CLOSE.exit10740
  %i.cag = inttoptr i64 %.sroa.03143.0.copyload to ptr ; 3 uses
  %i.cah = load i32, ptr %i.cag, align 8, !tbaa !124
  %i.cai = add i32 %i.cah, -1                     ; 2 uses
  store i32 %i.cai, ptr %i.cag, align 8, !tbaa !124
  %i.caj = icmp eq i32 %i.cai, 0
  br i1 %i.caj, label %bb.qq, label %PyStackRef_CLOSE.exit10742

bb.qq:                                            ; preds = %bb.qp
  call void @_Py_Dealloc(ptr noundef nonnull %i.cag) #21
  br label %PyStackRef_CLOSE.exit10742

PyStackRef_CLOSE.exit10742:                       ; preds = %PyStackRef_CLOSE.exit10740, %bb.qp, %bb.qq
  %.4.val10248 = load ptr, ptr %i.bzv, align 8, !tbaa !165 ; 2 uses
  %i.cak = getelementptr i8, ptr %.4.val10248, i64 -16 ; 2 uses
  %i.cal = icmp eq ptr %i.bzz, null
  br i1 %i.cal, label %_PyEval_FormatExcUnbound.exit.loopexit, label %bb.qr

bb.qr:                                            ; preds = %PyStackRef_CLOSE.exit10742
  %i.cam = getelementptr i8, ptr %i.bzz, i64 6
  %i.can = load i16, ptr %i.cam, align 2, !tbaa !124
  %i.cao = and i16 %i.can, 1
  %i.cap = ptrtoint ptr %i.bzz to i64
  %i.caq = zext nneg i16 %i.cao to i64
  %i.car = or i64 %i.caq, %i.cap
  store i64 %i.car, ptr %i.cak, align 8, !tbaa !124
  %i.cas = getelementptr i8, ptr %.4.val10248, i64 -8
  %i.cat = load i16, ptr %i.bzo, align 2, !tbaa !291 ; 2 uses
  %.sroa.23129.0.extract.shift = lshr i16 %i.cat, 8
  %.sroa.23129.0.extract.trunc = zext nneg i16 %.sroa.23129.0.extract.shift to i32
  %i.cau = and i16 %i.cat, 255
  %i.cav = zext nneg i16 %i.cau to i64
  br label %.backedge.backedge

bb.qs:                                            ; preds = %.backedge
  %i.caw = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.caw, align 8, !tbaa !163
  %i.cax = getelementptr i8, ptr %.32, i64 8      ; 5 uses
  %i.cay = getelementptr i8, ptr %.4.val1006211642, i64 -24
  %.sroa.03127.0.copyload = load i64, ptr %i.cay, align 8, !tbaa !124
  %i.caz = icmp eq i64 %.sroa.03127.0.copyload, 1
  br i1 %i.caz, label %bb.qt, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.qt:                                            ; preds = %bb.qs
  %i.cba = getelementptr i8, ptr %.4.val1006211642, i64 -32
  %.sroa.03125.0.copyload = load i64, ptr %i.cba, align 8, !tbaa !124 ; 3 uses
  %i.cbb = and i64 %.sroa.03125.0.copyload, -2
  %i.cbc = inttoptr i64 %i.cbb to ptr
  %i.cbd = load ptr, ptr %i.lzr, align 8, !tbaa !147
  %i.cbe = getelementptr i8, ptr %i.cbd, i64 223296
  %i.cbf = load ptr, ptr %i.cbe, align 8, !tbaa !315
  %.not9567 = icmp eq ptr %i.cbf, %i.cbc
  br i1 %.not9567, label %bb.qu, label %_PyThreadState_HasStackSpace.exit10640.thread

bb.qu:                                            ; preds = %bb.qt
  %i.cbg = getelementptr i8, ptr %.4.val1006211642, i64 -8
  %.sroa.03121.0.copyload = load i64, ptr %i.cbg, align 8, !tbaa !124 ; 3 uses
  %i.cbh = getelementptr i8, ptr %.4.val1006211642, i64 -16
  %.sroa.03123.0.copyload = load i64, ptr %i.cbh, align 8, !tbaa !124 ; 3 uses
  %i.cbi = and i64 %.sroa.03123.0.copyload, -2
  %i.cbj = inttoptr i64 %i.cbi to ptr
  %i.cbk = and i64 %.sroa.03121.0.copyload, -2
  %i.cbl = inttoptr i64 %i.cbk to ptr
  %i.cbm = getelementptr i8, ptr %.4, i64 64      ; 8 uses
  store ptr %.4.val1006211642, ptr %i.cbm, align 8, !tbaa !165
  %i.cbn = call i32 @PyObject_IsInstance(ptr noundef %i.cbj, ptr noundef %i.cbl) #21 ; 2 uses
  %.4.val10247 = load ptr, ptr %i.cbm, align 8, !tbaa !165 ; 2 uses
  %i.cbo = icmp slt i32 %i.cbn, 0
  br i1 %i.cbo, label %_PyEval_FormatExcUnbound.exit.loopexit, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.cbp = getelementptr i8, ptr %.4.val10247, i64 -8
  store ptr %i.cbp, ptr %i.cbm, align 8, !tbaa !165
  %i.cbq = and i64 %.sroa.03121.0.copyload, 1
  %.not.not.i10743 = icmp eq i64 %i.cbq, 0
  br i1 %.not.not.i10743, label %bb.qw, label %PyStackRef_CLOSE.exit10744

bb.qw:                                            ; preds = %bb.qv
  %i.cbr = inttoptr i64 %.sroa.03121.0.copyload to ptr ; 3 uses
  %i.cbs = load i32, ptr %i.cbr, align 8, !tbaa !124
  %i.cbt = add i32 %i.cbs, -1                     ; 2 uses
  store i32 %i.cbt, ptr %i.cbr, align 8, !tbaa !124
  %i.cbu = icmp eq i32 %i.cbt, 0
  br i1 %i.cbu, label %bb.qx, label %PyStackRef_CLOSE.exit10744

bb.qx:                                            ; preds = %bb.qw
  call void @_Py_Dealloc(ptr noundef nonnull %i.cbr) #21
  br label %PyStackRef_CLOSE.exit10744

PyStackRef_CLOSE.exit10744:                       ; preds = %bb.qv, %bb.qw, %bb.qx
  %.4.val10246 = load ptr, ptr %i.cbm, align 8, !tbaa !165
  %i.cbv = getelementptr i8, ptr %.4.val10246, i64 -8
  store ptr %i.cbv, ptr %i.cbm, align 8, !tbaa !165
  %i.cbw = and i64 %.sroa.03123.0.copyload, 1
  %.not.not.i10745 = icmp eq i64 %i.cbw, 0
  br i1 %.not.not.i10745, label %bb.qy, label %PyStackRef_CLOSE.exit10746

bb.qy:                                            ; preds = %PyStackRef_CLOSE.exit10744
  %i.cbx = inttoptr i64 %.sroa.03123.0.copyload to ptr ; 3 uses
  %i.cby = load i32, ptr %i.cbx, align 8, !tbaa !124
  %i.cbz = add i32 %i.cby, -1                     ; 2 uses
  store i32 %i.cbz, ptr %i.cbx, align 8, !tbaa !124
  %i.cca = icmp eq i32 %i.cbz, 0
  br i1 %i.cca, label %bb.qz, label %PyStackRef_CLOSE.exit10746

bb.qz:                                            ; preds = %bb.qy
  call void @_Py_Dealloc(ptr noundef nonnull %i.cbx) #21
  br label %PyStackRef_CLOSE.exit10746

PyStackRef_CLOSE.exit10746:                       ; preds = %PyStackRef_CLOSE.exit10744, %bb.qy, %bb.qz
  %.4.val10245 = load ptr, ptr %i.cbm, align 8, !tbaa !165
  %i.ccb = getelementptr i8, ptr %.4.val10245, i64 -16
  store ptr %i.ccb, ptr %i.cbm, align 8, !tbaa !165
  %i.ccc = and i64 %.sroa.03125.0.copyload, 1
  %.not.not.i10747 = icmp eq i64 %i.ccc, 0
  br i1 %.not.not.i10747, label %bb.ra, label %PyStackRef_CLOSE.exit10748

bb.ra:                                            ; preds = %PyStackRef_CLOSE.exit10746
  %i.ccd = inttoptr i64 %.sroa.03125.0.copyload to ptr ; 3 uses
  %i.cce = load i32, ptr %i.ccd, align 8, !tbaa !124
  %i.ccf = add i32 %i.cce, -1                     ; 2 uses
  store i32 %i.ccf, ptr %i.ccd, align 8, !tbaa !124
  %i.ccg = icmp eq i32 %i.ccf, 0
  br i1 %i.ccg, label %bb.rb, label %PyStackRef_CLOSE.exit10748

bb.rb:                                            ; preds = %bb.ra
  call void @_Py_Dealloc(ptr noundef nonnull %i.ccd) #21
  br label %PyStackRef_CLOSE.exit10748

PyStackRef_CLOSE.exit10748:                       ; preds = %PyStackRef_CLOSE.exit10746, %bb.ra, %bb.rb
  %.4.val10244 = load ptr, ptr %i.cbm, align 8, !tbaa !165 ; 2 uses
  %.not9568 = icmp eq i32 %i.cbn, 0
  %. = select i1 %.not9568, i64 ptrtoint (ptr @_Py_FalseStruct to i64), i64 ptrtoint (ptr @_Py_TrueStruct to i64)
  %.sroa.03120.0 = or disjoint i64 %., 1
  store i64 %.sroa.03120.0, ptr %.4.val10244, align 8, !tbaa !124
  %i.cch = getelementptr i8, ptr %.4.val10244, i64 8
  %i.cci = load i16, ptr %i.cax, align 2, !tbaa !291 ; 2 uses
  %.sroa.23111.0.extract.shift = lshr i16 %i.cci, 8
  %.sroa.23111.0.extract.trunc = zext nneg i16 %.sroa.23111.0.extract.shift to i32
  %i.ccj = and i16 %i.cci, 255
  %i.cck = zext nneg i16 %i.ccj to i64
  br label %.backedge.backedge

bb.rc:                                            ; preds = %.backedge
  %i.ccl = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.ccl, align 8, !tbaa !163
  %i.ccm = getelementptr i8, ptr %.32, i64 8
  br label %bb.rd

bb.rd:                                            ; preds = %bb.sv, %bb.su, %bb.st, %bb.ss, %bb.so, %bb.sb, %bb.sa, %bb.rz, %bb.ry, %bb.rc
  %.39038 = phi ptr [ %i.ccm, %bb.rc ], [ %i.cgj, %bb.ry ], [ %i.cgj, %bb.rz ], [ %i.cgj, %bb.sb ], [ %i.cgj, %bb.sa ], [ %i.cjp, %bb.so ], [ %i.clb, %bb.st ], [ %i.clb, %bb.ss ], [ %i.clb, %bb.su ], [ %i.clb, %bb.sv ] ; 4 uses
  %i.ccn = sub i32 -2, %.09034
  %i.cco = sext i32 %i.ccn to i64                 ; 4 uses
  %i.ccp = getelementptr [8 x i8], ptr %.4.val1006211642, i64 %i.cco ; 2 uses
  %.sroa.03089.0.copyload = load i64, ptr %i.ccp, align 8, !tbaa !124 ; 4 uses
  %i.ccq = sub i32 -3, %.09034
  %i.ccr = sext i32 %i.ccq to i64                 ; 6 uses
  %i.ccs = getelementptr [8 x i8], ptr %.4.val1006211642, i64 %i.ccr ; 2 uses
  %.sroa.03095.0.copyload = load i64, ptr %i.ccs, align 8, !tbaa !124 ; 7 uses
  %i.cct = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %.val10365 = load i16, ptr %i.cct, align 2, !tbaa !291 ; 2 uses
  %i.ccu = icmp ult i16 %.val10365, 7
  br i1 %i.ccu, label %bb.re, label %bb.rf

bb.re:                                            ; preds = %bb.rd
  %i.ccv = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1006211642, ptr %i.ccv, align 8, !tbaa !165
  %i.ccw = icmp ne i64 %.sroa.03089.0.copyload, 1
  %i.ccx = zext i1 %i.ccw to i32
  %i.ccy = add i32 %.09034, %i.ccx
  call void @_Py_Specialize_CallKw(i64 %.sroa.03095.0.copyload, ptr noundef nonnull %.32, i32 noundef %i.ccy) #21
  %.4.val10243 = load ptr, ptr %i.ccv, align 8, !tbaa !165
  %i.ccz = load i8, ptr %.32, align 2, !tbaa !124
  %i.cda = zext i8 %i.ccz to i64
  br label %.backedge.backedge

bb.rf:                                            ; preds = %bb.rd
  %i.cdb = add i16 %.val10365, -8
  store i16 %i.cdb, ptr %i.cct, align 2, !tbaa !291
  %i.cdc = and i64 %.sroa.03095.0.copyload, 3
  %i.cdd = icmp eq i64 %i.cdc, 3
  br i1 %i.cdd, label %PyStackRef_TYPE.exit10751.thread, label %PyStackRef_TYPE.exit10751

PyStackRef_TYPE.exit10751:                        ; preds = %bb.rf
  %10 = and i64 %.sroa.03095.0.copyload, -2
  %11 = inttoptr i64 %10 to ptr                   ; 3 uses
  %12 = getelementptr i8, ptr %11, i64 8
  %.val.i10749 = load ptr, ptr %12, align 8, !tbaa !125
  %i.cde = icmp eq ptr %.val.i10749, @PyMethod_Type
  %i.cdf = icmp eq i64 %.sroa.03089.0.copyload, 1
  %or.cond3 = select i1 %i.cde, i1 %i.cdf, i1 false
  br i1 %or.cond3, label %bb.rg, label %PyStackRef_TYPE.exit10751.thread

bb.rg:                                            ; preds = %PyStackRef_TYPE.exit10751
  %i.cdg = getelementptr i8, ptr %11, i64 24
  %i.cdh = load ptr, ptr %i.cdg, align 8, !tbaa !308 ; 4 uses
  %i.cdi = load i32, ptr %i.cdh, align 8, !tbaa !124 ; 2 uses
  %.not.i10752 = icmp sgt i32 %i.cdi, -1
  br i1 %.not.i10752, label %bb.ri, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.cdj = ptrtoint ptr %i.cdh to i64
  %i.cdk = or i64 %i.cdj, 1
  br label %_PyStackRef_FromPyObjectNew.exit10754

bb.ri:                                            ; preds = %bb.rg
  %i.cdl = add nuw i32 %i.cdi, 1
  store i32 %i.cdl, ptr %i.cdh, align 8, !tbaa !124
  %i.cdm = ptrtoint ptr %i.cdh to i64
  br label %_PyStackRef_FromPyObjectNew.exit10754

_PyStackRef_FromPyObjectNew.exit10754:            ; preds = %bb.rh, %bb.ri
  %.sroa.0.0.i10753 = phi i64 [ %i.cdk, %bb.rh ], [ %i.cdm, %bb.ri ] ; 2 uses
  %i.cdn = getelementptr i8, ptr %11, i64 16
  %i.cdo = load ptr, ptr %i.cdn, align 8, !tbaa !188 ; 4 uses
  %i.cdp = load i32, ptr %i.cdo, align 8, !tbaa !124 ; 2 uses
  %.not.i10755 = icmp sgt i32 %i.cdp, -1
  br i1 %.not.i10755, label %bb.rk, label %bb.rj

bb.rj:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10754
  %i.cdq = ptrtoint ptr %i.cdo to i64
  %i.cdr = or i64 %i.cdq, 1
  br label %_PyStackRef_FromPyObjectNew.exit10757

bb.rk:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10754
  %i.cds = add nuw i32 %i.cdp, 1
  store i32 %i.cds, ptr %i.cdo, align 8, !tbaa !124
  %i.cdt = ptrtoint ptr %i.cdo to i64
  br label %_PyStackRef_FromPyObjectNew.exit10757

_PyStackRef_FromPyObjectNew.exit10757:            ; preds = %bb.rj, %bb.rk
  %.sroa.0.0.i10756 = phi i64 [ %i.cdr, %bb.rj ], [ %i.cdt, %bb.rk ] ; 2 uses
  store i64 %.sroa.0.0.i10756, ptr %i.ccs, align 8, !tbaa !124
  store i64 %.sroa.0.0.i10753, ptr %i.ccp, align 8, !tbaa !124
  %i.cdu = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1006211642, ptr %i.cdu, align 8, !tbaa !165
  %i.cdv = and i64 %.sroa.03095.0.copyload, 1
  %.not.not.i10758 = icmp eq i64 %i.cdv, 0
  br i1 %.not.not.i10758, label %bb.rl, label %PyStackRef_CLOSE.exit10759

bb.rl:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10757
  %i.cdw = inttoptr i64 %.sroa.03095.0.copyload to ptr ; 3 uses
  %i.cdx = load i32, ptr %i.cdw, align 8, !tbaa !124
  %i.cdy = add i32 %i.cdx, -1                     ; 2 uses
  store i32 %i.cdy, ptr %i.cdw, align 8, !tbaa !124
  %i.cdz = icmp eq i32 %i.cdy, 0
  br i1 %i.cdz, label %bb.rm, label %PyStackRef_CLOSE.exit10759

bb.rm:                                            ; preds = %bb.rl
  call void @_Py_Dealloc(ptr noundef nonnull %i.cdw) #21
  br label %PyStackRef_CLOSE.exit10759

PyStackRef_CLOSE.exit10759:                       ; preds = %_PyStackRef_FromPyObjectNew.exit10757, %bb.rl, %bb.rm
  %.4.val10242 = load ptr, ptr %i.cdu, align 8, !tbaa !165
  br label %PyStackRef_TYPE.exit10751.thread

PyStackRef_TYPE.exit10751.thread:                 ; preds = %bb.rf, %PyStackRef_CLOSE.exit10759, %PyStackRef_TYPE.exit10751
  %.sroa.03089.0 = phi i64 [ %.sroa.0.0.i10753, %PyStackRef_CLOSE.exit10759 ], [ %.sroa.03089.0.copyload, %PyStackRef_TYPE.exit10751 ], [ %.sroa.03089.0.copyload, %bb.rf ] ; 3 uses
  %.sroa.03095.0 = phi i64 [ %.sroa.0.0.i10756, %PyStackRef_CLOSE.exit10759 ], [ %.sroa.03095.0.copyload, %PyStackRef_TYPE.exit10751 ], [ %.sroa.03095.0.copyload, %bb.rf ] ; 5 uses
  %.139053 = phi ptr [ %.4.val10242, %PyStackRef_CLOSE.exit10759 ], [ %.4.val1006211642, %PyStackRef_TYPE.exit10751 ], [ %.4.val1006211642, %bb.rf ] ; 8 uses
  %i.cea = getelementptr i8, ptr %.139053, i64 -8
  %.sroa.03085.0.copyload = load i64, ptr %i.cea, align 8, !tbaa !124 ; 4 uses
  %i.ceb = xor i32 %.09034, -1
  %i.cec = sext i32 %i.ceb to i64
  %i.ced = getelementptr [8 x i8], ptr %.139053, i64 %i.cec
  %i.cee = and i64 %.sroa.03095.0, -2
  %i.cef = inttoptr i64 %i.cee to ptr             ; 4 uses
  %i.ceg = and i64 %.sroa.03085.0.copyload, -2
  %i.ceh = inttoptr i64 %i.ceg to ptr             ; 2 uses
  %i.cei = icmp ne i64 %.sroa.03089.0, 1          ; 2 uses
  %.09094.idx = select i1 %i.cei, i64 -8, i64 0
  %.09094 = getelementptr i8, ptr %i.ced, i64 %.09094.idx ; 2 uses
  %i.cej = zext i1 %i.cei to i32
  %.09093 = add i32 %.09034, %i.cej               ; 2 uses
  %i.cek = getelementptr i8, ptr %i.ceh, i64 16
  %.val9785 = load i64, ptr %i.cek, align 8, !tbaa !123
  %i.cel = getelementptr i8, ptr %i.cef, i64 8
  %.val9854 = load ptr, ptr %i.cel, align 8, !tbaa !125
  %i.cem = icmp eq ptr %.val9854, @PyFunction_Type
  br i1 %i.cem, label %bb.rn, label %bb.rv

bb.rn:                                            ; preds = %PyStackRef_TYPE.exit10751.thread
  %i.cen = load ptr, ptr %i.lzr, align 8, !tbaa !147
  %i.ceo = getelementptr i8, ptr %i.cen, i64 8568
  %i.cep = load ptr, ptr %i.ceo, align 8, !tbaa !148
  %.not9689 = icmp eq ptr %i.cep, null
  br i1 %.not9689, label %bb.ro, label %bb.rv

bb.ro:                                            ; preds = %bb.rn
  %i.ceq = getelementptr i8, ptr %i.cef, i64 136
  %i.cer = load ptr, ptr %i.ceq, align 8, !tbaa !309
  %i.ces = icmp eq ptr %i.cer, @_PyFunction_Vectorcall
  br i1 %i.ces, label %bb.rp, label %bb.rv

bb.rp:                                            ; preds = %bb.ro
  %i.cet = trunc i64 %.val9785 to i32
  %i.ceu = sub i32 %.09093, %i.cet
  %i.cev = getelementptr i8, ptr %i.cef, i64 48
  %.val10385 = load ptr, ptr %i.cev, align 8, !tbaa !174
  %i.cew = getelementptr i8, ptr %.val10385, i64 48
  %i.cex = load i32, ptr %i.cew, align 8, !tbaa !164
  %i.cey = and i32 %i.cex, 1
  %.not9690 = icmp eq i32 %i.cey, 0
  br i1 %.not9690, label %bb.rq, label %_Py_NewRef.exit10760

bb.rq:                                            ; preds = %bb.rp
  %i.cez = getelementptr i8, ptr %i.cef, i64 16
  %.val10404 = load ptr, ptr %i.cez, align 8, !tbaa !310 ; 4 uses
  %i.cfa = load i32, ptr %.val10404, align 8, !tbaa !124 ; 2 uses
  %i.cfb = icmp ugt i32 %i.cfa, -1073741825
  br i1 %i.cfb, label %_Py_NewRef.exit10760, label %bb.rr

bb.rr:                                            ; preds = %bb.rq
  %i.cfc = add nuw i32 %i.cfa, 1
  store i32 %i.cfc, ptr %.val10404, align 8, !tbaa !124
  br label %_Py_NewRef.exit10760

_Py_NewRef.exit10760:                             ; preds = %bb.rr, %bb.rq, %bb.rp
  %i.cfd = phi ptr [ null, %bb.rp ], [ %.val10404, %bb.rq ], [ %.val10404, %bb.rr ]
  %i.cfe = getelementptr [8 x i8], ptr %.139053, i64 %i.ccr
  store i64 %.sroa.03095.0, ptr %i.cfe, align 8, !tbaa !124
  %i.cff = getelementptr [8 x i8], ptr %.139053, i64 %i.cco
  store i64 %.sroa.03089.0, ptr %i.cff, align 8, !tbaa !124
  %i.cfg = getelementptr i8, ptr %.4, i64 64      ; 4 uses
  store ptr %.139053, ptr %i.cfg, align 8, !tbaa !165
  %i.cfh = sext i32 %i.ceu to i64
  %i.cfi = call ptr @_PyEvalFramePushAndInit(ptr noundef nonnull %0, i64 %.sroa.03095.0, ptr noundef %i.cfd, ptr noundef %.09094, i64 noundef %i.cfh, ptr noundef nonnull %i.ceh, ptr noundef nonnull %.4) ; 2 uses
  %.4.val10241 = load ptr, ptr %i.cfg, align 8, !tbaa !165
  %i.cfj = getelementptr [8 x i8], ptr %.4.val10241, i64 %i.ccr
  store ptr %i.cfj, ptr %i.cfg, align 8, !tbaa !165
  %i.cfk = and i64 %.sroa.03085.0.copyload, 1
  %.not.not.i10761 = icmp eq i64 %i.cfk, 0
  br i1 %.not.not.i10761, label %bb.rs, label %PyStackRef_CLOSE.exit10762

bb.rs:                                            ; preds = %_Py_NewRef.exit10760
  %i.cfl = inttoptr i64 %.sroa.03085.0.copyload to ptr ; 3 uses
  %i.cfm = load i32, ptr %i.cfl, align 8, !tbaa !124
  %i.cfn = add i32 %i.cfm, -1                     ; 2 uses
  store i32 %i.cfn, ptr %i.cfl, align 8, !tbaa !124
  %i.cfo = icmp eq i32 %i.cfn, 0
  br i1 %i.cfo, label %bb.rt, label %PyStackRef_CLOSE.exit10762

bb.rt:                                            ; preds = %bb.rs
  call void @_Py_Dealloc(ptr noundef nonnull %i.cfl) #21
  br label %PyStackRef_CLOSE.exit10762

PyStackRef_CLOSE.exit10762:                       ; preds = %_Py_NewRef.exit10760, %bb.rs, %bb.rt
  %.4.val10240 = load ptr, ptr %i.cfg, align 8, !tbaa !165
  %i.cfp = icmp eq ptr %i.cfi, null
  br i1 %i.cfp, label %_PyEval_FormatExcUnbound.exit, label %bb.ru

bb.ru:                                            ; preds = %PyStackRef_CLOSE.exit10762
  %i.cfq = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.cfq, align 8, !tbaa !179
  br label %.sink.split

bb.rv:                                            ; preds = %bb.ro, %bb.rn, %PyStackRef_TYPE.exit10751.thread
  %i.cfr = getelementptr [8 x i8], ptr %.139053, i64 %i.ccr
  store i64 %.sroa.03095.0, ptr %i.cfr, align 8, !tbaa !124
  %i.cfs = getelementptr [8 x i8], ptr %.139053, i64 %i.cco
  store i64 %.sroa.03089.0, ptr %i.cfs, align 8, !tbaa !124
  %i.cft = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.139053, ptr %i.cft, align 8, !tbaa !165
  %i.cfu = call ptr @_Py_VectorCallInstrumentation_StackRefSteal(i64 %.sroa.03095.0, ptr noundef %.09094, i32 noundef %.09093, i64 %.sroa.03085.0.copyload, i1 noundef zeroext false, ptr noundef nonnull %.4, ptr noundef nonnull %.32, ptr noundef %0) ; 3 uses
  %.4.val10239 = load ptr, ptr %i.cft, align 8, !tbaa !165 ; 3 uses
  %i.cfv = icmp eq ptr %i.cfu, null
  br i1 %i.cfv, label %bb.rw, label %bb.rx

bb.rw:                                            ; preds = %bb.rv
  %i.cfw = getelementptr [8 x i8], ptr %.4.val10239, i64 %i.ccr
  br label %_PyEval_FormatExcUnbound.exit

bb.rx:                                            ; preds = %bb.rv
  %i.cfx = getelementptr i8, ptr %i.cfu, i64 6
  %i.cfy = load i16, ptr %i.cfx, align 2, !tbaa !124
  %i.cfz = and i16 %i.cfy, 1
  %i.cga = ptrtoint ptr %i.cfu to i64
  %i.cgb = zext nneg i16 %i.cfz to i64
  %i.cgc = or i64 %i.cgb, %i.cga
  %i.cgd = getelementptr [8 x i8], ptr %.4.val10239, i64 %i.ccr
  store i64 %i.cgc, ptr %i.cgd, align 8, !tbaa !124
  %i.cge = getelementptr [8 x i8], ptr %.4.val10239, i64 %i.cco
  %i.cgf = load i16, ptr %.39038, align 2, !tbaa !291 ; 2 uses
  %.sroa.23053.0.extract.shift = lshr i16 %i.cgf, 8
  %.sroa.23053.0.extract.trunc = zext nneg i16 %.sroa.23053.0.extract.shift to i32
  %i.cgg = and i16 %i.cgf, 255
  %i.cgh = zext nneg i16 %i.cgg to i64
  br label %.backedge.backedge

bb.ry:                                            ; preds = %.backedge
  %i.cgi = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.cgi, align 8, !tbaa !163
  %i.cgj = getelementptr i8, ptr %.32, i64 8      ; 5 uses
  %i.cgk = load ptr, ptr %i.lzr, align 8, !tbaa !147
  %i.cgl = getelementptr i8, ptr %i.cgk, i64 8568
  %i.cgm = load ptr, ptr %i.cgl, align 8, !tbaa !148
  %.not9564 = icmp eq ptr %i.cgm, null
  br i1 %.not9564, label %bb.rz, label %bb.rd

bb.rz:                                            ; preds = %bb.ry
  %i.cgn = sub i32 -2, %.09034
  %i.cgo = sext i32 %i.cgn to i64                 ; 2 uses
  %i.cgp = getelementptr [8 x i8], ptr %.4.val1006211642, i64 %i.cgo ; 2 uses
  %.sroa.03042.0.copyload = load i64, ptr %i.cgp, align 8, !tbaa !124
  %i.cgq = sub i32 -3, %.09034
  %i.cgr = sext i32 %i.cgq to i64
  %i.cgs = getelementptr [8 x i8], ptr %.4.val1006211642, i64 %i.cgr ; 2 uses
  %.sroa.03044.0.copyload = load i64, ptr %i.cgs, align 8, !tbaa !124 ; 3 uses
  %i.cgt = getelementptr i8, ptr %.32, i64 4
  %.val10433 = load i32, ptr %i.cgt, align 2
  %i.cgu = and i64 %.sroa.03044.0.copyload, -2
  %i.cgv = inttoptr i64 %i.cgu to ptr             ; 3 uses
  %i.cgw = getelementptr i8, ptr %i.cgv, i64 8
  %.val9853 = load ptr, ptr %i.cgw, align 8, !tbaa !125
  %.not9565 = icmp eq ptr %.val9853, @PyMethod_Type
  br i1 %.not9565, label %bb.sa, label %bb.rd

bb.sa:                                            ; preds = %bb.rz
  %i.cgx = getelementptr i8, ptr %i.cgv, i64 16   ; 2 uses
  %i.cgy = load ptr, ptr %i.cgx, align 8, !tbaa !188 ; 3 uses
  %i.cgz = getelementptr i8, ptr %i.cgy, i64 8
  %i.cha = load ptr, ptr %i.cgz, align 8, !tbaa !125
  %i.chb = icmp eq ptr %i.cha, @PyFunction_Type
  br i1 %i.chb, label %bb.sb, label %bb.rd

bb.sb:                                            ; preds = %bb.sa
  %i.chc = getelementptr i8, ptr %i.cgy, i64 144
  %i.chd = load i32, ptr %i.chc, align 8, !tbaa !306
  %i.che = icmp eq i32 %i.chd, %.val10433
  %i.chf = icmp eq i64 %.sroa.03042.0.copyload, 1
  %or.cond13 = select i1 %i.che, i1 %i.chf, i1 false
  br i1 %or.cond13, label %bb.sc, label %bb.rd

bb.sc:                                            ; preds = %bb.sb
  %i.chg = getelementptr i8, ptr %i.cgv, i64 24
  %i.chh = load ptr, ptr %i.chg, align 8, !tbaa !308 ; 4 uses
  %i.chi = load i32, ptr %i.chh, align 8, !tbaa !124 ; 2 uses
  %.not.i10763 = icmp sgt i32 %i.chi, -1
  br i1 %.not.i10763, label %bb.se, label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  %i.chj = ptrtoint ptr %i.chh to i64
  %i.chk = or i64 %i.chj, 1
  br label %_PyStackRef_FromPyObjectNew.exit10765

bb.se:                                            ; preds = %bb.sc
  %i.chl = add nuw i32 %i.chi, 1
  store i32 %i.chl, ptr %i.chh, align 8, !tbaa !124
  %i.chm = ptrtoint ptr %i.chh to i64
  %.pre13393 = load ptr, ptr %i.cgx, align 8, !tbaa !188
  br label %_PyStackRef_FromPyObjectNew.exit10765

_PyStackRef_FromPyObjectNew.exit10765:            ; preds = %bb.sd, %bb.se
  %i.chn = phi ptr [ %i.cgy, %bb.sd ], [ %.pre13393, %bb.se ] ; 4 uses
  %.sroa.0.0.i10764 = phi i64 [ %i.chk, %bb.sd ], [ %i.chm, %bb.se ] ; 2 uses
  %i.cho = load i32, ptr %i.chn, align 8, !tbaa !124 ; 2 uses
  %.not.i10766 = icmp sgt i32 %i.cho, -1
  br i1 %.not.i10766, label %bb.sg, label %bb.sf

bb.sf:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10765
end_hunk_1
begin_hunk_2_@_PyEval_EvalFrameDefault:bb.a
  store i64 %i.fex, ptr %i.fey, align 8, !tbaa !124
  %i.fez = and i64 %.sroa.02090.0.copyload, 1
  %.not.not.i10978 = icmp eq i64 %i.fez, 0
  br i1 %.not.not.i10978, label %bb.ahs, label %PyStackRef_CLOSE.exit10979

bb.ahs:                                           ; preds = %bb.ahr
  %i.ffa = inttoptr i64 %.sroa.02090.0.copyload to ptr ; 3 uses
  %i.ffb = load i32, ptr %i.ffa, align 8, !tbaa !124
  %i.ffc = add i32 %i.ffb, -1                     ; 2 uses
  store i32 %i.ffc, ptr %i.ffa, align 8, !tbaa !124
  %i.ffd = icmp eq i32 %i.ffc, 0
  br i1 %i.ffd, label %bb.aht, label %PyStackRef_CLOSE.exit10979

bb.aht:                                           ; preds = %bb.ahs
  call void @_Py_Dealloc(ptr noundef nonnull %i.ffa) #21
  br label %PyStackRef_CLOSE.exit10979

PyStackRef_CLOSE.exit10979:                       ; preds = %bb.ahr, %bb.ahs, %bb.aht
  %.4.val10130 = load ptr, ptr %i.fep, align 8, !tbaa !165
  br label %bb.ahu

bb.ahu:                                           ; preds = %bb.ahp, %bb.ahn, %PyStackRef_CLOSE.exit10979
  %.sroa.02086.0 = phi i64 [ %i.fex, %PyStackRef_CLOSE.exit10979 ], [ %.sroa.02090.0.copyload, %bb.ahn ], [ %.sroa.02090.0.copyload, %bb.ahp ]
  %.199059 = phi ptr [ %.4.val10130, %PyStackRef_CLOSE.exit10979 ], [ %.4.val1006211642, %bb.ahn ], [ %.4.val1006211642, %bb.ahp ] ; 2 uses
  %i.ffe = getelementptr i8, ptr %.199059, i64 -8
  store i64 %.sroa.02086.0, ptr %i.ffe, align 8, !tbaa !124
  %i.fff = load i16, ptr %i.fea, align 2, !tbaa !291 ; 2 uses
  %.sroa.22078.0.extract.shift = lshr i16 %i.fff, 8
  %.sroa.22078.0.extract.trunc = zext nneg i16 %.sroa.22078.0.extract.shift to i32
  %i.ffg = and i16 %i.fff, 255
  %i.ffh = zext nneg i16 %i.ffg to i64
  br label %.backedge.backedge

bb.ahv:                                           ; preds = %.backedge
  %i.ffi = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.ffi, align 8, !tbaa !163
  %i.ffj = getelementptr i8, ptr %.32, i64 2      ; 3 uses
  %i.ffk = getelementptr i8, ptr %.4.val1006211642, i64 -8
  %.sroa.02074.0.copyload = load i64, ptr %i.ffk, align 8, !tbaa !124
  %.4.val9908 = load i64, ptr %.4, align 8
  %i.ffl = and i64 %.4.val9908, -2
  %i.ffm = inttoptr i64 %i.ffl to ptr
  %i.ffn = getelementptr i8, ptr %i.ffm, i64 32
  %i.ffo = load ptr, ptr %i.ffn, align 8, !tbaa !324
  %i.ffp = getelementptr i8, ptr %i.ffo, i64 32
  %i.ffq = sext i32 %.09034 to i64
  %i.ffr = getelementptr [8 x i8], ptr %i.ffp, i64 %i.ffq
  %i.ffs = load ptr, ptr %i.ffr, align 8, !tbaa !120 ; 2 uses
  %i.fft = and i64 %.sroa.02074.0.copyload, -2
  %i.ffu = inttoptr i64 %i.fft to ptr             ; 3 uses
  %i.ffv = getelementptr i8, ptr %i.ffu, i64 8
  %i.ffw = load ptr, ptr %i.ffv, align 8, !tbaa !125
  %i.ffx = icmp eq ptr %i.ffw, @PyLazyImport_Type
  %i.ffy = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1006211642, ptr %i.ffy, align 8, !tbaa !165
  br i1 %i.ffx, label %bb.ahw, label %bb.ahx

bb.ahw:                                           ; preds = %bb.ahv
  %i.ffz = call ptr @_PyEval_LazyImportFrom(ptr poison, ptr noundef nonnull %.4, ptr noundef nonnull %i.ffu, ptr noundef %i.ffs)
  br label %bb.ahy

bb.ahx:                                           ; preds = %bb.ahv
  %i.fga = call ptr @_PyEval_ImportFrom(ptr noundef %0, ptr noundef nonnull %i.ffu, ptr noundef %i.ffs)
  br label %bb.ahy

bb.ahy:                                           ; preds = %bb.ahx, %bb.ahw
  %.09120 = phi ptr [ %i.ffz, %bb.ahw ], [ %i.fga, %bb.ahx ] ; 3 uses
  %.209060 = load ptr, ptr %i.ffy, align 8, !tbaa !165 ; 3 uses
  %i.fgb = icmp eq ptr %.09120, null
  br i1 %i.fgb, label %_PyEval_FormatExcUnbound.exit.loopexit, label %bb.ahz

bb.ahz:                                           ; preds = %bb.ahy
  %i.fgc = getelementptr i8, ptr %.09120, i64 6
  %i.fgd = load i16, ptr %i.fgc, align 2, !tbaa !124
  %i.fge = and i16 %i.fgd, 1
  %i.fgf = ptrtoint ptr %.09120 to i64
  %i.fgg = zext nneg i16 %i.fge to i64
  %i.fgh = or i64 %i.fgg, %i.fgf
  store i64 %i.fgh, ptr %.209060, align 8, !tbaa !124
  %i.fgi = getelementptr i8, ptr %.209060, i64 8
  %i.fgj = load i16, ptr %i.ffj, align 2, !tbaa !291 ; 2 uses
  %.sroa.22067.0.extract.shift = lshr i16 %i.fgj, 8
  %.sroa.22067.0.extract.trunc = zext nneg i16 %.sroa.22067.0.extract.shift to i32
  %i.fgk = and i16 %i.fgj, 255
  %i.fgl = zext nneg i16 %i.fgk to i64
  br label %.backedge.backedge

bb.aia:                                           ; preds = %.backedge
  %i.fgm = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.fgm, align 8, !tbaa !163
  %i.fgn = getelementptr i8, ptr %.32, i64 2      ; 3 uses
  %i.fgo = getelementptr i8, ptr %.4.val1006211642, i64 -8
  %.sroa.02056.0.copyload = load i64, ptr %i.fgo, align 8, !tbaa !124 ; 3 uses
  %i.fgp = getelementptr i8, ptr %.4.val1006211642, i64 -16
  %.sroa.02061.0.copyload = load i64, ptr %i.fgp, align 8, !tbaa !124 ; 3 uses
  %.4.val9907 = load i64, ptr %.4, align 8
  %i.fgq = and i64 %.4.val9907, -2
  %i.fgr = inttoptr i64 %i.fgq to ptr
  %i.fgs = getelementptr i8, ptr %i.fgr, i64 32
  %i.fgt = load ptr, ptr %i.fgs, align 8, !tbaa !324
  %i.fgu = getelementptr i8, ptr %i.fgt, i64 32
  %i.fgv = ashr i32 %.09034, 2
  %i.fgw = sext i32 %i.fgv to i64
  %i.fgx = getelementptr [8 x i8], ptr %i.fgu, i64 %i.fgw
  %i.fgy = load ptr, ptr %i.fgx, align 8, !tbaa !120 ; 2 uses
  %i.fgz = and i32 %.09034, 2
  %.not9677 = icmp eq i32 %i.fgz, 0
  %i.fha = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1006211642, ptr %i.fha, align 8, !tbaa !165
  %i.fhb = getelementptr i8, ptr %.4, i64 32
  %i.fhc = load ptr, ptr %i.fhb, align 8, !tbaa !202 ; 2 uses
  %i.fhd = getelementptr i8, ptr %.4, i64 24
  %i.fhe = load ptr, ptr %i.fhd, align 8, !tbaa !195 ; 2 uses
  %i.fhf = getelementptr i8, ptr %.4, i64 40
  %i.fhg = load ptr, ptr %i.fhf, align 8, !tbaa !176 ; 2 uses
  %i.fhh = and i64 %.sroa.02056.0.copyload, -2
  %i.fhi = inttoptr i64 %i.fhh to ptr             ; 2 uses
  %i.fhj = and i64 %.sroa.02061.0.copyload, -2
  %i.fhk = inttoptr i64 %i.fhj to ptr             ; 2 uses
  br i1 %.not9677, label %bb.aib, label %bb.aic

bb.aib:                                           ; preds = %bb.aia
  %i.fhl = and i32 %.09034, 1
  %i.fhm = call ptr @_PyEval_LazyImportName(ptr noundef %0, ptr noundef %i.fhc, ptr noundef %i.fhe, ptr noundef %i.fhg, ptr noundef %i.fgy, ptr noundef %i.fhi, ptr noundef %i.fhk, i32 noundef %i.fhl)
  br label %bb.aid

bb.aic:                                           ; preds = %bb.aia
  %i.fhn = call ptr @_PyEval_ImportName(ptr noundef %0, ptr noundef %i.fhc, ptr noundef %i.fhe, ptr noundef %i.fhg, ptr noundef %i.fgy, ptr noundef %i.fhi, ptr noundef %i.fhk)
  br label %bb.aid

bb.aid:                                           ; preds = %bb.aic, %bb.aib
  %.09121 = phi ptr [ %i.fhn, %bb.aic ], [ %i.fhm, %bb.aib ] ; 3 uses
  %.219061 = load ptr, ptr %i.fha, align 8, !tbaa !165 ; 2 uses
  %i.fho = getelementptr i8, ptr %.4, i64 64
  %i.fhp = getelementptr i8, ptr %.219061, i64 -8
  store i64 1, ptr %i.fhp, align 8, !tbaa !124
  %i.fhq = and i64 %.sroa.02056.0.copyload, 1
  %.not.not.i10980 = icmp eq i64 %i.fhq, 0
  br i1 %.not.not.i10980, label %bb.aie, label %PyStackRef_CLOSE.exit10981

bb.aie:                                           ; preds = %bb.aid
  %i.fhr = inttoptr i64 %.sroa.02056.0.copyload to ptr ; 3 uses
  %i.fhs = load i32, ptr %i.fhr, align 8, !tbaa !124
  %i.fht = add i32 %i.fhs, -1                     ; 2 uses
  store i32 %i.fht, ptr %i.fhr, align 8, !tbaa !124
  %i.fhu = icmp eq i32 %i.fht, 0
  br i1 %i.fhu, label %bb.aif, label %PyStackRef_CLOSE.exit10981

bb.aif:                                           ; preds = %bb.aie
  call void @_Py_Dealloc(ptr noundef nonnull %i.fhr) #21
  br label %PyStackRef_CLOSE.exit10981

PyStackRef_CLOSE.exit10981:                       ; preds = %bb.aid, %bb.aie, %bb.aif
  %i.fhv = getelementptr i8, ptr %.219061, i64 -16
  store i64 1, ptr %i.fhv, align 8, !tbaa !124
  %i.fhw = and i64 %.sroa.02061.0.copyload, 1
  %.not.not.i10982 = icmp eq i64 %i.fhw, 0
  br i1 %.not.not.i10982, label %bb.aig, label %PyStackRef_CLOSE.exit10983

bb.aig:                                           ; preds = %PyStackRef_CLOSE.exit10981
  %i.fhx = inttoptr i64 %.sroa.02061.0.copyload to ptr ; 3 uses
  %i.fhy = load i32, ptr %i.fhx, align 8, !tbaa !124
  %i.fhz = add i32 %i.fhy, -1                     ; 2 uses
  store i32 %i.fhz, ptr %i.fhx, align 8, !tbaa !124
  %i.fia = icmp eq i32 %i.fhz, 0
  br i1 %i.fia, label %bb.aih, label %PyStackRef_CLOSE.exit10983

bb.aih:                                           ; preds = %bb.aig
  call void @_Py_Dealloc(ptr noundef nonnull %i.fhx) #21
  br label %PyStackRef_CLOSE.exit10983

PyStackRef_CLOSE.exit10983:                       ; preds = %PyStackRef_CLOSE.exit10981, %bb.aig, %bb.aih
  %.4.val10125 = load ptr, ptr %i.fho, align 8, !tbaa !165 ; 2 uses
  %i.fib = getelementptr i8, ptr %.4.val10125, i64 -16 ; 2 uses
  %i.fic = icmp eq ptr %.09121, null
  br i1 %i.fic, label %_PyEval_FormatExcUnbound.exit.loopexit, label %bb.aii

bb.aii:                                           ; preds = %PyStackRef_CLOSE.exit10983
  %i.fid = getelementptr i8, ptr %.09121, i64 6
  %i.fie = load i16, ptr %i.fid, align 2, !tbaa !124
  %i.fif = and i16 %i.fie, 1
  %i.fig = ptrtoint ptr %.09121 to i64
  %i.fih = zext nneg i16 %i.fif to i64
  %i.fii = or i64 %i.fih, %i.fig
  store i64 %i.fii, ptr %i.fib, align 8, !tbaa !124
  %i.fij = getelementptr i8, ptr %.4.val10125, i64 -8
  %i.fik = load i16, ptr %i.fgn, align 2, !tbaa !291 ; 2 uses
  %.sroa.22046.0.extract.shift = lshr i16 %i.fik, 8
  %.sroa.22046.0.extract.trunc = zext nneg i16 %.sroa.22046.0.extract.shift to i32
  %i.fil = and i16 %i.fik, 255
  %i.fim = zext nneg i16 %i.fil to i64
  br label %.backedge.backedge

bb.aij:                                           ; preds = %.backedge
  %i.fin = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.fin, align 8, !tbaa !163
  %i.fio = getelementptr i8, ptr %.32, i64 8      ; 6 uses
  %i.fip = xor i32 %.09034, -1
  %i.fiq = sext i32 %i.fip to i64                 ; 4 uses
  %i.fir = getelementptr [8 x i8], ptr %.4.val1006211642, i64 %i.fiq ; 2 uses
  %.sroa.02029.0.copyload = load i64, ptr %i.fir, align 8, !tbaa !124 ; 3 uses
  %i.fis = sub i32 -2, %.09034
  %i.fit = sext i32 %i.fis to i64                 ; 6 uses
  %i.fiu = getelementptr [8 x i8], ptr %.4.val1006211642, i64 %i.fit ; 2 uses
  %.sroa.02034.0.copyload = load i64, ptr %i.fiu, align 8, !tbaa !124 ; 6 uses
  %i.fiv = and i64 %.sroa.02034.0.copyload, 3
  %i.fiw = icmp eq i64 %i.fiv, 3
  br i1 %i.fiw, label %PyStackRef_TYPE.exit10986.thread, label %PyStackRef_TYPE.exit10986

PyStackRef_TYPE.exit10986:                        ; preds = %bb.aij
  %13 = and i64 %.sroa.02034.0.copyload, -2
  %14 = inttoptr i64 %13 to ptr                   ; 3 uses
  %15 = getelementptr i8, ptr %14, i64 8
  %.val.i10984 = load ptr, ptr %15, align 8, !tbaa !125
  %i.fix = icmp eq ptr %.val.i10984, @PyMethod_Type
  %i.fiy = icmp eq i64 %.sroa.02029.0.copyload, 1
  %or.cond7 = select i1 %i.fix, i1 %i.fiy, i1 false
  br i1 %or.cond7, label %bb.aik, label %PyStackRef_TYPE.exit10986.thread

bb.aik:                                           ; preds = %PyStackRef_TYPE.exit10986
  %i.fiz = getelementptr i8, ptr %14, i64 24
  %i.fja = load ptr, ptr %i.fiz, align 8, !tbaa !308 ; 4 uses
  %i.fjb = load i32, ptr %i.fja, align 8, !tbaa !124 ; 2 uses
  %.not.i10987 = icmp sgt i32 %i.fjb, -1
  br i1 %.not.i10987, label %bb.aim, label %bb.ail

bb.ail:                                           ; preds = %bb.aik
  %i.fjc = ptrtoint ptr %i.fja to i64
  %i.fjd = or i64 %i.fjc, 1
  br label %_PyStackRef_FromPyObjectNew.exit10989

bb.aim:                                           ; preds = %bb.aik
  %i.fje = add nuw i32 %i.fjb, 1
  store i32 %i.fje, ptr %i.fja, align 8, !tbaa !124
  %i.fjf = ptrtoint ptr %i.fja to i64
  br label %_PyStackRef_FromPyObjectNew.exit10989

_PyStackRef_FromPyObjectNew.exit10989:            ; preds = %bb.ail, %bb.aim
  %.sroa.0.0.i10988 = phi i64 [ %i.fjd, %bb.ail ], [ %i.fjf, %bb.aim ] ; 2 uses
  %i.fjg = getelementptr i8, ptr %14, i64 16
  %i.fjh = load ptr, ptr %i.fjg, align 8, !tbaa !188 ; 4 uses
  %i.fji = load i32, ptr %i.fjh, align 8, !tbaa !124 ; 2 uses
  %.not.i10990 = icmp sgt i32 %i.fji, -1
  br i1 %.not.i10990, label %bb.aio, label %bb.ain

bb.ain:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit10989
  %i.fjj = ptrtoint ptr %i.fjh to i64
  %i.fjk = or i64 %i.fjj, 1
  br label %_PyStackRef_FromPyObjectNew.exit10992

bb.aio:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit10989
  %i.fjl = add nuw i32 %i.fji, 1
  store i32 %i.fjl, ptr %i.fjh, align 8, !tbaa !124
  %i.fjm = ptrtoint ptr %i.fjh to i64
  br label %_PyStackRef_FromPyObjectNew.exit10992

_PyStackRef_FromPyObjectNew.exit10992:            ; preds = %bb.ain, %bb.aio
  %.sroa.0.0.i10991 = phi i64 [ %i.fjk, %bb.ain ], [ %i.fjm, %bb.aio ] ; 2 uses
  store i64 %.sroa.0.0.i10991, ptr %i.fiu, align 8, !tbaa !124
  store i64 %.sroa.0.0.i10988, ptr %i.fir, align 8, !tbaa !124
  %i.fjn = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1006211642, ptr %i.fjn, align 8, !tbaa !165
  %i.fjo = and i64 %.sroa.02034.0.copyload, 1
  %.not.not.i10993 = icmp eq i64 %i.fjo, 0
  br i1 %.not.not.i10993, label %bb.aip, label %PyStackRef_CLOSE.exit10994

bb.aip:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit10992
  %i.fjp = inttoptr i64 %.sroa.02034.0.copyload to ptr ; 3 uses
  %i.fjq = load i32, ptr %i.fjp, align 8, !tbaa !124
  %i.fjr = add i32 %i.fjq, -1                     ; 2 uses
  store i32 %i.fjr, ptr %i.fjp, align 8, !tbaa !124
  %i.fjs = icmp eq i32 %i.fjr, 0
  br i1 %i.fjs, label %bb.aiq, label %PyStackRef_CLOSE.exit10994

bb.aiq:                                           ; preds = %bb.aip
  call void @_Py_Dealloc(ptr noundef nonnull %i.fjp) #21
  br label %PyStackRef_CLOSE.exit10994

PyStackRef_CLOSE.exit10994:                       ; preds = %_PyStackRef_FromPyObjectNew.exit10992, %bb.aip, %bb.aiq
  %.4.val10124 = load ptr, ptr %i.fjn, align 8, !tbaa !165
  br label %PyStackRef_TYPE.exit10986.thread

PyStackRef_TYPE.exit10986.thread:                 ; preds = %bb.aij, %PyStackRef_CLOSE.exit10994, %PyStackRef_TYPE.exit10986
  %.sroa.02029.0 = phi i64 [ %.sroa.0.0.i10988, %PyStackRef_CLOSE.exit10994 ], [ %.sroa.02029.0.copyload, %PyStackRef_TYPE.exit10986 ], [ %.sroa.02029.0.copyload, %bb.aij ] ; 3 uses
  %.sroa.02034.0 = phi i64 [ %.sroa.0.0.i10991, %PyStackRef_CLOSE.exit10994 ], [ %.sroa.02034.0.copyload, %PyStackRef_TYPE.exit10986 ], [ %.sroa.02034.0.copyload, %bb.aij ] ; 2 uses
  %.229062 = phi ptr [ %.4.val10124, %PyStackRef_CLOSE.exit10994 ], [ %.4.val1006211642, %PyStackRef_TYPE.exit10986 ], [ %.4.val1006211642, %bb.aij ] ; 4 uses
  %i.fjt = sub i32 0, %.09034
  %i.fju = sext i32 %i.fjt to i64                 ; 2 uses
  %i.fjv = getelementptr [8 x i8], ptr %.229062, i64 %i.fju
  %.not9430 = icmp eq i64 %.sroa.02029.0, 1
  %i.fjw = and i64 %.sroa.02034.0, -2
  %i.fjx = inttoptr i64 %i.fjw to ptr
  br i1 %.not9430, label %bb.ais, label %bb.air

bb.air:                                           ; preds = %PyStackRef_TYPE.exit10986.thread
  %i.fjy = and i64 %.sroa.02029.0, -2
  %i.fjz = inttoptr i64 %i.fjy to ptr
  br label %bb.aiu

bb.ais:                                           ; preds = %PyStackRef_TYPE.exit10986.thread
  %.not9431 = icmp eq i32 %.09034, 0
  br i1 %.not9431, label %bb.aiu, label %bb.ait

bb.ait:                                           ; preds = %bb.ais
  %i.fka = load i64, ptr %i.fjv, align 8
  %i.fkb = and i64 %i.fka, -2
  %i.fkc = inttoptr i64 %i.fkb to ptr
  br label %bb.aiu

bb.aiu:                                           ; preds = %bb.ais, %bb.ait, %bb.air
  %.09122 = phi ptr [ %i.fjz, %bb.air ], [ %i.fkc, %bb.ait ], [ @_PyInstrumentation_MISSING, %bb.ais ]
  %i.fkd = getelementptr [8 x i8], ptr %.229062, i64 %i.fit
  store i64 %.sroa.02034.0, ptr %i.fkd, align 8, !tbaa !124
  %i.fke = getelementptr [8 x i8], ptr %.229062, i64 %i.fiq
  store i64 %.sroa.02029.0, ptr %i.fke, align 8, !tbaa !124
  %i.fkf = getelementptr i8, ptr %.4, i64 64      ; 8 uses
  store ptr %.229062, ptr %i.fkf, align 8, !tbaa !165
  %i.fkg = call i32 @_Py_call_instrumentation_2args(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef %i.fjx, ptr noundef %.09122) #21
  %.4.val10123 = load ptr, ptr %i.fkf, align 8, !tbaa !165 ; 5 uses
  %.not9432 = icmp eq i32 %i.fkg, 0
  br i1 %.not9432, label %bb.aiv, label %_PyEval_FormatExcUnbound.exit.loopexit

bb.aiv:                                           ; preds = %bb.aiu
  %i.fkh = getelementptr [8 x i8], ptr %.4.val10123, i64 %i.fju
  %i.fki = getelementptr [8 x i8], ptr %.4.val10123, i64 %i.fiq
  %.sroa.02029.0.copyload2031 = load i64, ptr %i.fki, align 8, !tbaa !124
  %i.fkj = getelementptr [8 x i8], ptr %.4.val10123, i64 %i.fit
  %.sroa.02034.0.copyload2037 = load i64, ptr %i.fkj, align 8, !tbaa !124 ; 3 uses
  %i.fkk = and i64 %.sroa.02034.0.copyload2037, -2
  %i.fkl = inttoptr i64 %i.fkk to ptr             ; 4 uses
  %i.fkm = icmp ne i64 %.sroa.02029.0.copyload2031, 1 ; 2 uses
  %.09124.idx = select i1 %i.fkm, i64 -8, i64 0
  %.09124 = getelementptr i8, ptr %i.fkh, i64 %.09124.idx ; 2 uses
  %i.fkn = zext i1 %i.fkm to i32
  %.09123 = add i32 %.09034, %i.fkn               ; 2 uses
  %i.fko = getelementptr i8, ptr %i.fkl, i64 8
  %.val9836 = load ptr, ptr %i.fko, align 8, !tbaa !125
  %i.fkp = icmp eq ptr %.val9836, @PyFunction_Type
  br i1 %i.fkp, label %bb.aiw, label %bb.ajc

bb.aiw:                                           ; preds = %bb.aiv
  %i.fkq = load ptr, ptr %i.lzr, align 8, !tbaa !147
  %i.fkr = getelementptr i8, ptr %i.fkq, i64 8568
  %i.fks = load ptr, ptr %i.fkr, align 8, !tbaa !148
  %.not9433 = icmp eq ptr %i.fks, null
  br i1 %.not9433, label %bb.aix, label %bb.ajc

bb.aix:                                           ; preds = %bb.aiw
  %i.fkt = getelementptr i8, ptr %i.fkl, i64 136
  %i.fku = load ptr, ptr %i.fkt, align 8, !tbaa !309
  %i.fkv = icmp eq ptr %i.fku, @_PyFunction_Vectorcall
  br i1 %i.fkv, label %bb.aiy, label %bb.ajc

bb.aiy:                                           ; preds = %bb.aix
  %i.fkw = getelementptr i8, ptr %i.fkl, i64 48
  %.val10381 = load ptr, ptr %i.fkw, align 8, !tbaa !174
  %i.fkx = getelementptr i8, ptr %.val10381, i64 48
  %i.fky = load i32, ptr %i.fkx, align 8, !tbaa !164
  %i.fkz = and i32 %i.fky, 1
  %.not9434 = icmp eq i32 %i.fkz, 0
  br i1 %.not9434, label %bb.aiz, label %_Py_NewRef.exit10995

bb.aiz:                                           ; preds = %bb.aiy
  %i.fla = getelementptr i8, ptr %i.fkl, i64 16
  %.val10400 = load ptr, ptr %i.fla, align 8, !tbaa !310 ; 4 uses
  %i.flb = load i32, ptr %.val10400, align 8, !tbaa !124 ; 2 uses
  %i.flc = icmp ugt i32 %i.flb, -1073741825
  br i1 %i.flc, label %_Py_NewRef.exit10995, label %bb.aja

bb.aja:                                           ; preds = %bb.aiz
  %i.fld = add nuw i32 %i.flb, 1
  store i32 %i.fld, ptr %.val10400, align 8, !tbaa !124
  br label %_Py_NewRef.exit10995

_Py_NewRef.exit10995:                             ; preds = %bb.aja, %bb.aiz, %bb.aiy
  %i.fle = phi ptr [ null, %bb.aiy ], [ %.val10400, %bb.aiz ], [ %.val10400, %bb.aja ]
  store ptr %.4.val10123, ptr %i.fkf, align 8, !tbaa !165
  %i.flf = sext i32 %.09123 to i64
  %i.flg = call ptr @_PyEvalFramePushAndInit(ptr noundef nonnull %0, i64 %.sroa.02034.0.copyload2037, ptr noundef %i.fle, ptr noundef %.09124, i64 noundef %i.flf, ptr noundef null, ptr noundef nonnull %.4) ; 2 uses
  %.4.val10122 = load ptr, ptr %i.fkf, align 8, !tbaa !165
  %i.flh = getelementptr [8 x i8], ptr %.4.val10122, i64 %i.fit ; 2 uses
  %i.fli = icmp eq ptr %i.flg, null
  br i1 %i.fli, label %_PyEval_FormatExcUnbound.exit, label %bb.ajb

bb.ajb:                                           ; preds = %_Py_NewRef.exit10995
  %i.flj = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.flj, align 8, !tbaa !179
  store ptr %i.flh, ptr %i.fkf, align 8, !tbaa !165
  br label %.sink.split

bb.ajc:                                           ; preds = %bb.aix, %bb.aiw, %bb.aiv
  %i.flk = call ptr @_Py_VectorCallInstrumentation_StackRefSteal(i64 %.sroa.02034.0.copyload2037, ptr noundef %.09124, i32 noundef %.09123, i64 1, i1 noundef zeroext true, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef %0) ; 3 uses
  %.4.val10121 = load ptr, ptr %i.fkf, align 8, !tbaa !165 ; 3 uses
  %i.fll = icmp eq ptr %i.flk, null
  br i1 %i.fll, label %bb.ajd, label %bb.aje

bb.ajd:                                           ; preds = %bb.ajc
  %i.flm = getelementptr [8 x i8], ptr %.4.val10121, i64 %i.fit
  br label %_PyEval_FormatExcUnbound.exit

bb.aje:                                           ; preds = %bb.ajc
  %i.fln = getelementptr i8, ptr %i.flk, i64 6
  %i.flo = load i16, ptr %i.fln, align 2, !tbaa !124
  %i.flp = and i16 %i.flo, 1
  %i.flq = ptrtoint ptr %i.flk to i64
  %i.flr = zext nneg i16 %i.flp to i64
  %i.fls = or i64 %i.flr, %i.flq
  %i.flt = getelementptr [8 x i8], ptr %.4.val10121, i64 %i.fit
  store i64 %i.fls, ptr %i.flt, align 8, !tbaa !124
  %i.flu = getelementptr [8 x i8], ptr %.4.val10121, i64 %i.fiq ; 2 uses
  store ptr %i.flu, ptr %i.fkf, align 8, !tbaa !165
  %i.flv = load atomic i64, ptr %i.lzq monotonic, align 8
  %i.flw = and i64 %i.flv, 255
  %.not.i10996 = icmp eq i64 %i.flw, 0
  br i1 %.not.i10996, label %check_periodics.exit10998.thread, label %check_periodics.exit10998

check_periodics.exit10998:                        ; preds = %bb.aje
  %i.flx = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #21
  %.4.val10120 = load ptr, ptr %i.fkf, align 8, !tbaa !165 ; 2 uses
  %.not9435 = icmp eq i32 %i.flx, 0
  br i1 %.not9435, label %check_periodics.exit10998.thread, label %_PyEval_FormatExcUnbound.exit.loopexit

check_periodics.exit10998.thread:                 ; preds = %bb.aje, %check_periodics.exit10998
  %.4.val1012011621 = phi ptr [ %.4.val10120, %check_periodics.exit10998 ], [ %i.flu, %bb.aje ]
  %i.fly = load i16, ptr %i.fio, align 2, !tbaa !291 ; 2 uses
  %.sroa.21991.0.extract.shift = lshr i16 %i.fly, 8
  %.sroa.21991.0.extract.trunc = zext nneg i16 %.sroa.21991.0.extract.shift to i32
  %i.flz = and i16 %i.fly, 255
  %i.fma = zext nneg i16 %i.flz to i64
  br label %.backedge.backedge

bb.ajf:                                           ; preds = %.backedge
  %i.fmb = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.fmb, align 8, !tbaa !163
  %i.fmc = getelementptr i8, ptr %.32, i64 4      ; 7 uses
  %i.fmd = getelementptr i8, ptr %.4.val1006211642, i64 -16
  %.sroa.01981.0.copyload = load i64, ptr %i.fmd, align 8, !tbaa !124 ; 4 uses
  %i.fme = getelementptr i8, ptr %.4.val1006211642, i64 -32
  %.sroa.01985.0.copyload = load i64, ptr %i.fme, align 8, !tbaa !124 ; 3 uses
  %i.fmf = and i64 %.sroa.01981.0.copyload, -2
  %i.fmg = inttoptr i64 %i.fmf to ptr             ; 5 uses
  %i.fmh = getelementptr i8, ptr %i.fmg, i64 8
  %i.fmi = load ptr, ptr %i.fmh, align 8, !tbaa !125 ; 2 uses
  %i.fmj = icmp eq ptr %i.fmi, @PyTuple_Type
  br i1 %i.fmj, label %bb.ajm, label %bb.ajg

bb.ajg:                                           ; preds = %bb.ajf
  %i.fmk = getelementptr i8, ptr %.4, i64 64      ; 5 uses
  store ptr %.4.val1006211642, ptr %i.fmk, align 8, !tbaa !165
  %i.fml = getelementptr i8, ptr %i.fmi, i64 216
  %i.fmm = load ptr, ptr %i.fml, align 8, !tbaa !190
  %i.fmn = icmp eq ptr %i.fmm, null
  br i1 %i.fmn, label %bb.ajh, label %bb.aji

bb.ajh:                                           ; preds = %bb.ajg
  %i.fmo = call i32 @PySequence_Check(ptr noundef nonnull %i.fmg) #21
  %.not.i11001 = icmp eq i32 %i.fmo, 0
  br i1 %.not.i11001, label %_Py_Check_ArgsIterable.exit11003, label %bb.aji

_Py_Check_ArgsIterable.exit11003:                 ; preds = %bb.ajh
  %i.fmp = getelementptr i8, ptr %i.fmg, i64 8
  %i.fmq = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !120
  %.val.i11002 = load ptr, ptr %i.fmp, align 8, !tbaa !125
  %i.fmr = getelementptr i8, ptr %.val.i11002, i64 24
  %i.fms = load ptr, ptr %i.fmr, align 8, !tbaa !137
  %i.fmt = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef %0, ptr noundef %i.fmq, ptr noundef nonnull @.str.31, ptr noundef %i.fms) #21 ; 0 uses
  %.4.val10119 = load ptr, ptr %i.fmk, align 8, !tbaa !165
  br label %_PyEval_FormatExcUnbound.exit

bb.aji:                                           ; preds = %bb.ajh, %bb.ajg
  %i.fmu = call ptr @PySequence_Tuple(ptr noundef nonnull %i.fmg) #21 ; 4 uses
  %.4.val10118 = load ptr, ptr %i.fmk, align 8, !tbaa !165 ; 3 uses
  %i.fmv = icmp eq ptr %i.fmu, null
  br i1 %i.fmv, label %_PyEval_FormatExcUnbound.exit.loopexit, label %bb.ajj

bb.ajj:                                           ; preds = %bb.aji
  %i.fmw = getelementptr i8, ptr %i.fmu, i64 6
  %i.fmx = load i16, ptr %i.fmw, align 2, !tbaa !124
  %i.fmy = and i16 %i.fmx, 1
  %i.fmz = ptrtoint ptr %i.fmu to i64
  %i.fna = zext nneg i16 %i.fmy to i64
  %i.fnb = or i64 %i.fna, %i.fmz                  ; 2 uses
  %i.fnc = getelementptr i8, ptr %.4.val10118, i64 -16
  store i64 %i.fnb, ptr %i.fnc, align 8, !tbaa !124
  store ptr %.4.val10118, ptr %i.fmk, align 8, !tbaa !165
  %i.fnd = and i64 %.sroa.01981.0.copyload, 1
end_hunk_2
begin_hunk_3_@_PyEval_EvalFrameDefault:bb.a
  %i.fne = inttoptr i64 %.sroa.01981.0.copyload to ptr ; 3 uses
  %i.fnf = load i32, ptr %i.fne, align 8, !tbaa !124
  %i.fng = add i32 %i.fnf, -1                     ; 2 uses
  store i32 %i.fng, ptr %i.fne, align 8, !tbaa !124
  %i.fnh = icmp eq i32 %i.fng, 0
  br i1 %i.fnh, label %bb.ajl, label %PyStackRef_CLOSE.exit11005

bb.ajl:                                           ; preds = %bb.ajk
  call void @_Py_Dealloc(ptr noundef nonnull %i.fne) #21
  br label %PyStackRef_CLOSE.exit11005

PyStackRef_CLOSE.exit11005:                       ; preds = %bb.ajj, %bb.ajk, %bb.ajl
  %.4.val10117 = load ptr, ptr %i.fmk, align 8, !tbaa !165
  br label %bb.ajm

bb.ajm:                                           ; preds = %PyStackRef_CLOSE.exit11005, %bb.ajf
  %.pre-phi13419 = phi ptr [ %i.fmu, %PyStackRef_CLOSE.exit11005 ], [ %i.fmg, %bb.ajf ] ; 3 uses
  %.sroa.01981.0 = phi i64 [ %i.fnb, %PyStackRef_CLOSE.exit11005 ], [ %.sroa.01981.0.copyload, %bb.ajf ] ; 3 uses
  %.239063 = phi ptr [ %.4.val10117, %PyStackRef_CLOSE.exit11005 ], [ %.4.val1006211642, %bb.ajf ] ; 3 uses
  %i.fni = getelementptr i8, ptr %.239063, i64 -8
  %.sroa.01966.0.copyload = load i64, ptr %i.fni, align 8, !tbaa !124 ; 3 uses
  %i.fnj = and i64 %.sroa.01985.0.copyload, -2
  %i.fnk = inttoptr i64 %i.fnj to ptr             ; 5 uses
  %i.fnl = and i64 %.sroa.01966.0.copyload, -2
  %i.fnm = inttoptr i64 %i.fnl to ptr
  %i.fnn = getelementptr i8, ptr %.pre-phi13419, i64 16
  %.val9781 = load i64, ptr %i.fnn, align 8, !tbaa !123
  %i.fno = icmp sgt i64 %.val9781, 0
  br i1 %i.fno, label %bb.ajn, label %bb.ajo

bb.ajn:                                           ; preds = %bb.ajm
  %i.fnp = getelementptr i8, ptr %.pre-phi13419, i64 32
  %i.fnq = load ptr, ptr %i.fnp, align 8, !tbaa !120
  br label %bb.ajo

bb.ajo:                                           ; preds = %bb.ajm, %bb.ajn
  %i.fnr = phi ptr [ %i.fnq, %bb.ajn ], [ @_PyInstrumentation_MISSING, %bb.ajm ] ; 3 uses
  %i.fns = getelementptr i8, ptr %.239063, i64 -16
  store i64 %.sroa.01981.0, ptr %i.fns, align 8, !tbaa !124
  %i.fnt = getelementptr i8, ptr %.4, i64 64      ; 11 uses
  store ptr %.239063, ptr %i.fnt, align 8, !tbaa !165
  %i.fnu = call i32 @_Py_call_instrumentation_2args(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef %i.fnk, ptr noundef %i.fnr) #21
  %.4.val10116 = load ptr, ptr %i.fnt, align 8, !tbaa !165
  %.not9626 = icmp eq i32 %i.fnu, 0
  br i1 %.not9626, label %bb.ajp, label %_PyEval_FormatExcUnbound.exit.loopexit

bb.ajp:                                           ; preds = %bb.ajo
  %i.fnv = call ptr @PyObject_Call(ptr noundef %i.fnk, ptr noundef nonnull %.pre-phi13419, ptr noundef %i.fnm) #21 ; 8 uses
  %i.fnw = getelementptr i8, ptr %i.fnk, i64 8
  %i.fnx = load ptr, ptr %i.fnw, align 8, !tbaa !125 ; 2 uses
  %i.fny = icmp eq ptr %i.fnx, @PyFunction_Type
  %i.fnz = icmp eq ptr %i.fnx, @PyMethod_Type
  %or.cond9744 = or i1 %i.fny, %i.fnz
  br i1 %or.cond9744, label %bb.ajy, label %bb.ajq

bb.ajq:                                           ; preds = %bb.ajp
  %i.foa = icmp eq ptr %i.fnv, null
  br i1 %i.foa, label %bb.ajr, label %bb.ajs

bb.ajr:                                           ; preds = %bb.ajq
  call void @_Py_call_instrumentation_exc2(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef nonnull %i.fnk, ptr noundef %i.fnr) #21
  br label %bb.ajy

bb.ajs:                                           ; preds = %bb.ajq
  %i.fob = call i32 @_Py_call_instrumentation_2args(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef nonnull %i.fnk, ptr noundef %i.fnr) #21
  %i.foc = icmp slt i32 %i.fob, 0
  br i1 %i.foc, label %bb.ajt, label %bb.ajy

bb.ajt:                                           ; preds = %bb.ajs
  %i.fod = load i32, ptr %i.fnv, align 8, !tbaa !124 ; 2 uses
  %.not9627 = icmp sgt i32 %i.fod, -1
  br i1 %.not9627, label %bb.aju, label %bb.ajy

bb.aju:                                           ; preds = %bb.ajt
  %i.foe = add nsw i32 %i.fod, -1                 ; 2 uses
  store i32 %i.foe, ptr %i.fnv, align 8, !tbaa !124
  %i.fof = icmp eq i32 %i.foe, 0
  br i1 %i.fof, label %bb.ajv, label %bb.ajy

bb.ajv:                                           ; preds = %bb.aju
  %i.fog = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !134 ; 2 uses
  %.not9628 = icmp eq ptr %i.fog, null
  br i1 %.not9628, label %bb.ajx, label %bb.ajw

bb.ajw:                                           ; preds = %bb.ajv
  %i.foh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !135
  %i.foi = call i32 %i.fog(ptr noundef nonnull %i.fnv, i32 noundef 1, ptr noundef %i.foh) #21 ; 0 uses
  br label %bb.ajx

bb.ajx:                                           ; preds = %bb.ajv, %bb.ajw
  %i.foj = getelementptr i8, ptr %i.fnv, i64 8
  %.val9835 = load ptr, ptr %i.foj, align 8, !tbaa !125
  %i.fok = getelementptr i8, ptr %.val9835, i64 48
  %i.fol = load ptr, ptr %i.fok, align 8, !tbaa !136
  call void %i.fol(ptr noundef nonnull %i.fnv) #21
  br label %bb.ajy

bb.ajy:                                           ; preds = %bb.ajt, %bb.ajx, %bb.aju, %bb.ajp, %bb.ajs, %bb.ajr
  %.19172 = phi ptr [ %i.fnv, %bb.ajp ], [ %i.fnv, %bb.ajs ], [ null, %bb.ajr ], [ null, %bb.aju ], [ null, %bb.ajx ], [ null, %bb.ajt ] ; 3 uses
  %.249064 = load ptr, ptr %i.fnt, align 8, !tbaa !165
  %i.fom = getelementptr i8, ptr %.249064, i64 -8
  store ptr %i.fom, ptr %i.fnt, align 8, !tbaa !165
  %i.fon = and i64 %.sroa.01966.0.copyload, 1
  %.not.not.i11006 = icmp eq i64 %i.fon, 0
  br i1 %.not.not.i11006, label %bb.ajz, label %PyStackRef_XCLOSE.exit11007

bb.ajz:                                           ; preds = %bb.ajy
  %i.foo = inttoptr i64 %.sroa.01966.0.copyload to ptr ; 3 uses
  %i.fop = load i32, ptr %i.foo, align 8, !tbaa !124
  %i.foq = add i32 %i.fop, -1                     ; 2 uses
  store i32 %i.foq, ptr %i.foo, align 8, !tbaa !124
  %i.for = icmp eq i32 %i.foq, 0
  br i1 %i.for, label %bb.aka, label %PyStackRef_XCLOSE.exit11007

bb.aka:                                           ; preds = %bb.ajz
  call void @_Py_Dealloc(ptr noundef nonnull %i.foo) #21
  br label %PyStackRef_XCLOSE.exit11007

PyStackRef_XCLOSE.exit11007:                      ; preds = %bb.ajy, %bb.ajz, %bb.aka
  %.4.val10111 = load ptr, ptr %i.fnt, align 8, !tbaa !165
  %i.fos = getelementptr i8, ptr %.4.val10111, i64 -8
  store ptr %i.fos, ptr %i.fnt, align 8, !tbaa !165
  %i.fot = and i64 %.sroa.01981.0, 1
  %.not.not.i11008 = icmp eq i64 %i.fot, 0
  br i1 %.not.not.i11008, label %bb.akb, label %PyStackRef_CLOSE.exit11009

bb.akb:                                           ; preds = %PyStackRef_XCLOSE.exit11007
  %i.fou = inttoptr i64 %.sroa.01981.0 to ptr     ; 3 uses
  %i.fov = load i32, ptr %i.fou, align 8, !tbaa !124
  %i.fow = add i32 %i.fov, -1                     ; 2 uses
  store i32 %i.fow, ptr %i.fou, align 8, !tbaa !124
  %i.fox = icmp eq i32 %i.fow, 0
  br i1 %i.fox, label %bb.akc, label %PyStackRef_CLOSE.exit11009

bb.akc:                                           ; preds = %bb.akb
  call void @_Py_Dealloc(ptr noundef nonnull %i.fou) #21
  br label %PyStackRef_CLOSE.exit11009

PyStackRef_CLOSE.exit11009:                       ; preds = %PyStackRef_XCLOSE.exit11007, %bb.akb, %bb.akc
  %.4.val10110 = load ptr, ptr %i.fnt, align 8, !tbaa !165
  %i.foy = getelementptr i8, ptr %.4.val10110, i64 -16
  store ptr %i.foy, ptr %i.fnt, align 8, !tbaa !165
  %i.foz = and i64 %.sroa.01985.0.copyload, 1
  %.not.not.i11010 = icmp eq i64 %i.foz, 0
  br i1 %.not.not.i11010, label %bb.akd, label %PyStackRef_CLOSE.exit11011

bb.akd:                                           ; preds = %PyStackRef_CLOSE.exit11009
  %i.fpa = inttoptr i64 %.sroa.01985.0.copyload to ptr ; 3 uses
  %i.fpb = load i32, ptr %i.fpa, align 8, !tbaa !124
  %i.fpc = add i32 %i.fpb, -1                     ; 2 uses
  store i32 %i.fpc, ptr %i.fpa, align 8, !tbaa !124
  %i.fpd = icmp eq i32 %i.fpc, 0
  br i1 %i.fpd, label %bb.ake, label %PyStackRef_CLOSE.exit11011

bb.ake:                                           ; preds = %bb.akd
  call void @_Py_Dealloc(ptr noundef nonnull %i.fpa) #21
  br label %PyStackRef_CLOSE.exit11011

PyStackRef_CLOSE.exit11011:                       ; preds = %PyStackRef_CLOSE.exit11009, %bb.akd, %bb.ake
  %.4.val10109 = load ptr, ptr %i.fnt, align 8, !tbaa !165 ; 3 uses
  %i.fpe = icmp eq ptr %.19172, null
  br i1 %i.fpe, label %_PyEval_FormatExcUnbound.exit.loopexit, label %bb.akf

bb.akf:                                           ; preds = %PyStackRef_CLOSE.exit11011
  %i.fpf = getelementptr i8, ptr %.19172, i64 6
  %i.fpg = load i16, ptr %i.fpf, align 2, !tbaa !124
  %i.fph = and i16 %i.fpg, 1
  %i.fpi = ptrtoint ptr %.19172 to i64
  %i.fpj = zext nneg i16 %i.fph to i64
  %i.fpk = or i64 %i.fpj, %i.fpi
  store i64 %i.fpk, ptr %.4.val10109, align 8, !tbaa !124
  %i.fpl = getelementptr i8, ptr %.4.val10109, i64 8 ; 2 uses
  store ptr %i.fpl, ptr %i.fnt, align 8, !tbaa !165
  %i.fpm = load atomic i64, ptr %i.lzq monotonic, align 8
  %i.fpn = and i64 %i.fpm, 255
  %.not.i11012 = icmp eq i64 %i.fpn, 0
  br i1 %.not.i11012, label %check_periodics.exit11014.thread, label %check_periodics.exit11014

check_periodics.exit11014:                        ; preds = %bb.akf
  %i.fpo = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #21
  %.4.val10108 = load ptr, ptr %i.fnt, align 8, !tbaa !165 ; 2 uses
  %.not9629 = icmp eq i32 %i.fpo, 0
  br i1 %.not9629, label %check_periodics.exit11014.thread, label %_PyEval_FormatExcUnbound.exit.loopexit

check_periodics.exit11014.thread:                 ; preds = %bb.akf, %check_periodics.exit11014
  %.4.val1010811627 = phi ptr [ %.4.val10108, %check_periodics.exit11014 ], [ %i.fpl, %bb.akf ]
  %i.fpp = load i16, ptr %i.fmc, align 2, !tbaa !291 ; 2 uses
  %.sroa.21910.0.extract.shift = lshr i16 %i.fpp, 8
  %.sroa.21910.0.extract.trunc = zext nneg i16 %.sroa.21910.0.extract.shift to i32
  %i.fpq = and i16 %i.fpp, 255
  %i.fpr = zext nneg i16 %i.fpq to i64
  br label %.backedge.backedge

bb.akg:                                           ; preds = %.backedge
  %i.fps = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.fps, align 8, !tbaa !163
  %i.fpt = getelementptr i8, ptr %.32, i64 8      ; 5 uses
  %i.fpu = sub i32 -2, %.09034
  %i.fpv = sext i32 %i.fpu to i64                 ; 3 uses
  %i.fpw = getelementptr [8 x i8], ptr %.4.val1006211642, i64 %i.fpv ; 2 uses
  %.sroa.01892.0.copyload = load i64, ptr %i.fpw, align 8, !tbaa !124 ; 3 uses
  %i.fpx = sub i32 -3, %.09034
  %i.fpy = sext i32 %i.fpx to i64                 ; 5 uses
  %i.fpz = getelementptr [8 x i8], ptr %.4.val1006211642, i64 %i.fpy ; 2 uses
  %.sroa.01898.0.copyload = load i64, ptr %i.fpz, align 8, !tbaa !124 ; 6 uses
  %i.fqa = and i64 %.sroa.01898.0.copyload, 3
  %i.fqb = icmp eq i64 %i.fqa, 3
  br i1 %i.fqb, label %PyStackRef_TYPE.exit11017.thread, label %PyStackRef_TYPE.exit11017

PyStackRef_TYPE.exit11017:                        ; preds = %bb.akg
  %16 = and i64 %.sroa.01898.0.copyload, -2
  %17 = inttoptr i64 %16 to ptr                   ; 3 uses
  %18 = getelementptr i8, ptr %17, i64 8
  %.val.i11015 = load ptr, ptr %18, align 8, !tbaa !125
  %i.fqc = icmp eq ptr %.val.i11015, @PyMethod_Type
  %i.fqd = icmp eq i64 %.sroa.01892.0.copyload, 1
  %or.cond9 = select i1 %i.fqc, i1 %i.fqd, i1 false
  br i1 %or.cond9, label %bb.akh, label %PyStackRef_TYPE.exit11017.thread

bb.akh:                                           ; preds = %PyStackRef_TYPE.exit11017
  %i.fqe = getelementptr i8, ptr %17, i64 24
  %i.fqf = load ptr, ptr %i.fqe, align 8, !tbaa !308 ; 4 uses
  %i.fqg = load i32, ptr %i.fqf, align 8, !tbaa !124 ; 2 uses
  %.not.i11018 = icmp sgt i32 %i.fqg, -1
  br i1 %.not.i11018, label %bb.akj, label %bb.aki

bb.aki:                                           ; preds = %bb.akh
  %i.fqh = ptrtoint ptr %i.fqf to i64
  %i.fqi = or i64 %i.fqh, 1
  br label %_PyStackRef_FromPyObjectNew.exit11020

bb.akj:                                           ; preds = %bb.akh
  %i.fqj = add nuw i32 %i.fqg, 1
  store i32 %i.fqj, ptr %i.fqf, align 8, !tbaa !124
  %i.fqk = ptrtoint ptr %i.fqf to i64
  br label %_PyStackRef_FromPyObjectNew.exit11020

_PyStackRef_FromPyObjectNew.exit11020:            ; preds = %bb.aki, %bb.akj
  %.sroa.0.0.i11019 = phi i64 [ %i.fqi, %bb.aki ], [ %i.fqk, %bb.akj ] ; 2 uses
  %i.fql = getelementptr i8, ptr %17, i64 16
  %i.fqm = load ptr, ptr %i.fql, align 8, !tbaa !188 ; 4 uses
  %i.fqn = load i32, ptr %i.fqm, align 8, !tbaa !124 ; 2 uses
  %.not.i11021 = icmp sgt i32 %i.fqn, -1
  br i1 %.not.i11021, label %bb.akl, label %bb.akk

bb.akk:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit11020
  %i.fqo = ptrtoint ptr %i.fqm to i64
  %i.fqp = or i64 %i.fqo, 1
  br label %_PyStackRef_FromPyObjectNew.exit11023

bb.akl:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit11020
  %i.fqq = add nuw i32 %i.fqn, 1
  store i32 %i.fqq, ptr %i.fqm, align 8, !tbaa !124
  %i.fqr = ptrtoint ptr %i.fqm to i64
  br label %_PyStackRef_FromPyObjectNew.exit11023

_PyStackRef_FromPyObjectNew.exit11023:            ; preds = %bb.akk, %bb.akl
  %.sroa.0.0.i11022 = phi i64 [ %i.fqp, %bb.akk ], [ %i.fqr, %bb.akl ] ; 2 uses
  store i64 %.sroa.0.0.i11022, ptr %i.fpz, align 8, !tbaa !124
  store i64 %.sroa.0.0.i11019, ptr %i.fpw, align 8, !tbaa !124
  %i.fqs = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1006211642, ptr %i.fqs, align 8, !tbaa !165
  %i.fqt = and i64 %.sroa.01898.0.copyload, 1
  %.not.not.i11024 = icmp eq i64 %i.fqt, 0
  br i1 %.not.not.i11024, label %bb.akm, label %PyStackRef_CLOSE.exit11025

bb.akm:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit11023
  %i.fqu = inttoptr i64 %.sroa.01898.0.copyload to ptr ; 3 uses
  %i.fqv = load i32, ptr %i.fqu, align 8, !tbaa !124
  %i.fqw = add i32 %i.fqv, -1                     ; 2 uses
  store i32 %i.fqw, ptr %i.fqu, align 8, !tbaa !124
  %i.fqx = icmp eq i32 %i.fqw, 0
  br i1 %i.fqx, label %bb.akn, label %PyStackRef_CLOSE.exit11025

bb.akn:                                           ; preds = %bb.akm
  call void @_Py_Dealloc(ptr noundef nonnull %i.fqu) #21
  br label %PyStackRef_CLOSE.exit11025

PyStackRef_CLOSE.exit11025:                       ; preds = %_PyStackRef_FromPyObjectNew.exit11023, %bb.akm, %bb.akn
  %.4.val10107 = load ptr, ptr %i.fqs, align 8, !tbaa !165
  br label %PyStackRef_TYPE.exit11017.thread

PyStackRef_TYPE.exit11017.thread:                 ; preds = %bb.akg, %PyStackRef_CLOSE.exit11025, %PyStackRef_TYPE.exit11017
  %.sroa.01892.0 = phi i64 [ %.sroa.0.0.i11019, %PyStackRef_CLOSE.exit11025 ], [ %.sroa.01892.0.copyload, %PyStackRef_TYPE.exit11017 ], [ %.sroa.01892.0.copyload, %bb.akg ] ; 3 uses
  %.sroa.01898.0 = phi i64 [ %.sroa.0.0.i11022, %PyStackRef_CLOSE.exit11025 ], [ %.sroa.01898.0.copyload, %PyStackRef_TYPE.exit11017 ], [ %.sroa.01898.0.copyload, %bb.akg ] ; 4 uses
  %.259065 = phi ptr [ %.4.val10107, %PyStackRef_CLOSE.exit11025 ], [ %.4.val1006211642, %PyStackRef_TYPE.exit11017 ], [ %.4.val1006211642, %bb.akg ] ; 4 uses
  %i.fqy = xor i32 %.09034, -1
  %i.fqz = sext i32 %i.fqy to i64                 ; 2 uses
  %i.fra = getelementptr [8 x i8], ptr %.259065, i64 %i.fqz ; 2 uses
  %.not9621 = icmp ne i64 %.sroa.01892.0, 1       ; 3 uses
  br i1 %.not9621, label %bb.ako, label %bb.akp

bb.ako:                                           ; preds = %PyStackRef_TYPE.exit11017.thread
  %i.frb = and i64 %.sroa.01892.0, -2
  %i.frc = inttoptr i64 %i.frb to ptr
  br label %bb.akr

bb.akp:                                           ; preds = %PyStackRef_TYPE.exit11017.thread
  %.not9622 = icmp eq ptr %i.fra, null
  br i1 %.not9622, label %bb.akr, label %bb.akq

bb.akq:                                           ; preds = %bb.akp
  %i.frd = load i64, ptr %i.fra, align 8
  %i.fre = and i64 %i.frd, -2
  %i.frf = inttoptr i64 %i.fre to ptr
  br label %bb.akr

bb.akr:                                           ; preds = %bb.akp, %bb.akq, %bb.ako
  %.09125 = phi ptr [ %i.frc, %bb.ako ], [ %i.frf, %bb.akq ], [ @_PyInstrumentation_MISSING, %bb.akp ]
  %i.frg = and i64 %.sroa.01898.0, -2
  %i.frh = inttoptr i64 %i.frg to ptr             ; 5 uses
  %i.fri = getelementptr [8 x i8], ptr %.259065, i64 %i.fpy
  store i64 %.sroa.01898.0, ptr %i.fri, align 8, !tbaa !124
  %i.frj = getelementptr [8 x i8], ptr %.259065, i64 %i.fpv
  store i64 %.sroa.01892.0, ptr %i.frj, align 8, !tbaa !124
  %i.frk = getelementptr i8, ptr %.4, i64 64      ; 7 uses
  store ptr %.259065, ptr %i.frk, align 8, !tbaa !165
  %i.frl = call i32 @_Py_call_instrumentation_2args(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef %i.frh, ptr noundef %.09125) #21
  %.4.val10106 = load ptr, ptr %i.frk, align 8, !tbaa !165 ; 4 uses
  %.not9623 = icmp eq i32 %i.frl, 0
  br i1 %.not9623, label %bb.aks, label %_PyEval_FormatExcUnbound.exit.loopexit

bb.aks:                                           ; preds = %bb.akr
  %i.frm = getelementptr i8, ptr %.4.val10106, i64 -8
  %.sroa.01886.0.copyload = load i64, ptr %i.frm, align 8, !tbaa !124 ; 4 uses
  %i.frn = getelementptr [8 x i8], ptr %.4.val10106, i64 %i.fqz
  %i.fro = and i64 %.sroa.01886.0.copyload, -2
  %i.frp = inttoptr i64 %i.fro to ptr             ; 2 uses
  %.09127.idx = select i1 %.not9621, i64 -8, i64 0
  %.09127 = getelementptr i8, ptr %i.frn, i64 %.09127.idx ; 2 uses
  %i.frq = zext i1 %.not9621 to i32
  %.09126 = add i32 %.09034, %i.frq               ; 2 uses
  %i.frr = getelementptr i8, ptr %i.frp, i64 16
  %.val9780 = load i64, ptr %i.frr, align 8, !tbaa !123
  %i.frs = getelementptr i8, ptr %i.frh, i64 8
  %.val9834 = load ptr, ptr %i.frs, align 8, !tbaa !125
  %i.frt = icmp eq ptr %.val9834, @PyFunction_Type
  br i1 %i.frt, label %bb.akt, label %bb.alb

bb.akt:                                           ; preds = %bb.aks
  %i.fru = load ptr, ptr %i.lzr, align 8, !tbaa !147
  %i.frv = getelementptr i8, ptr %i.fru, i64 8568
  %i.frw = load ptr, ptr %i.frv, align 8, !tbaa !148
  %.not9624 = icmp eq ptr %i.frw, null
  br i1 %.not9624, label %bb.aku, label %bb.alb

bb.aku:                                           ; preds = %bb.akt
  %i.frx = getelementptr i8, ptr %i.frh, i64 136
  %i.fry = load ptr, ptr %i.frx, align 8, !tbaa !309
  %i.frz = icmp eq ptr %i.fry, @_PyFunction_Vectorcall
  br i1 %i.frz, label %bb.akv, label %bb.alb

bb.akv:                                           ; preds = %bb.aku
  %i.fsa = trunc i64 %.val9780 to i32
  %i.fsb = sub i32 %.09126, %i.fsa
  %i.fsc = getelementptr i8, ptr %i.frh, i64 48
  %.val10380 = load ptr, ptr %i.fsc, align 8, !tbaa !174
  %i.fsd = getelementptr i8, ptr %.val10380, i64 48
  %i.fse = load i32, ptr %i.fsd, align 8, !tbaa !164
  %i.fsf = and i32 %i.fse, 1
  %.not9625 = icmp eq i32 %i.fsf, 0
  br i1 %.not9625, label %bb.akw, label %_Py_NewRef.exit11026

bb.akw:                                           ; preds = %bb.akv
  %i.fsg = getelementptr i8, ptr %i.frh, i64 16
  %.val10399 = load ptr, ptr %i.fsg, align 8, !tbaa !310 ; 4 uses
  %i.fsh = load i32, ptr %.val10399, align 8, !tbaa !124 ; 2 uses
  %i.fsi = icmp ugt i32 %i.fsh, -1073741825
  br i1 %i.fsi, label %_Py_NewRef.exit11026, label %bb.akx

bb.akx:                                           ; preds = %bb.akw
  %i.fsj = add nuw i32 %i.fsh, 1
  store i32 %i.fsj, ptr %.val10399, align 8, !tbaa !124
  br label %_Py_NewRef.exit11026

_Py_NewRef.exit11026:                             ; preds = %bb.akx, %bb.akw, %bb.akv
  %i.fsk = phi ptr [ null, %bb.akv ], [ %.val10399, %bb.akw ], [ %.val10399, %bb.akx ]
  store ptr %.4.val10106, ptr %i.frk, align 8, !tbaa !165
  %i.fsl = sext i32 %i.fsb to i64
  %i.fsm = call ptr @_PyEvalFramePushAndInit(ptr noundef nonnull %0, i64 %.sroa.01898.0, ptr noundef %i.fsk, ptr noundef %.09127, i64 noundef %i.fsl, ptr noundef nonnull %i.frp, ptr noundef nonnull %.4) ; 2 uses
  %.4.val10105 = load ptr, ptr %i.frk, align 8, !tbaa !165
  %i.fsn = getelementptr [8 x i8], ptr %.4.val10105, i64 %i.fpy
  store ptr %i.fsn, ptr %i.frk, align 8, !tbaa !165
  %i.fso = and i64 %.sroa.01886.0.copyload, 1
  %.not.not.i11027 = icmp eq i64 %i.fso, 0
  br i1 %.not.not.i11027, label %bb.aky, label %PyStackRef_CLOSE.exit11028

bb.aky:                                           ; preds = %_Py_NewRef.exit11026
  %i.fsp = inttoptr i64 %.sroa.01886.0.copyload to ptr ; 3 uses
  %i.fsq = load i32, ptr %i.fsp, align 8, !tbaa !124
  %i.fsr = add i32 %i.fsq, -1                     ; 2 uses
  store i32 %i.fsr, ptr %i.fsp, align 8, !tbaa !124
  %i.fss = icmp eq i32 %i.fsr, 0
  br i1 %i.fss, label %bb.akz, label %PyStackRef_CLOSE.exit11028

bb.akz:                                           ; preds = %bb.aky
  call void @_Py_Dealloc(ptr noundef nonnull %i.fsp) #21
  br label %PyStackRef_CLOSE.exit11028

PyStackRef_CLOSE.exit11028:                       ; preds = %_Py_NewRef.exit11026, %bb.aky, %bb.akz
  %.4.val10104 = load ptr, ptr %i.frk, align 8, !tbaa !165
  %i.fst = icmp eq ptr %i.fsm, null
  br i1 %i.fst, label %_PyEval_FormatExcUnbound.exit, label %bb.ala

bb.ala:                                           ; preds = %PyStackRef_CLOSE.exit11028
  %i.fsu = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.fsu, align 8, !tbaa !179
  br label %.sink.split

bb.alb:                                           ; preds = %bb.aku, %bb.akt, %bb.aks
  %i.fsv = call ptr @_Py_VectorCallInstrumentation_StackRefSteal(i64 %.sroa.01898.0, ptr noundef %.09127, i32 noundef %.09126, i64 %.sroa.01886.0.copyload, i1 noundef zeroext true, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef %0) ; 3 uses
  %.4.val10103 = load ptr, ptr %i.frk, align 8, !tbaa !165 ; 3 uses
  %i.fsw = icmp eq ptr %i.fsv, null
  br i1 %i.fsw, label %bb.alc, label %bb.ald

bb.alc:                                           ; preds = %bb.alb
  %i.fsx = getelementptr [8 x i8], ptr %.4.val10103, i64 %i.fpy
  br label %_PyEval_FormatExcUnbound.exit

bb.ald:                                           ; preds = %bb.alb
  %i.fsy = getelementptr i8, ptr %i.fsv, i64 6
  %i.fsz = load i16, ptr %i.fsy, align 2, !tbaa !124
  %i.fta = and i16 %i.fsz, 1
  %i.ftb = ptrtoint ptr %i.fsv to i64
  %i.ftc = zext nneg i16 %i.fta to i64
  %i.ftd = or i64 %i.ftc, %i.ftb
  %i.fte = getelementptr [8 x i8], ptr %.4.val10103, i64 %i.fpy
  store i64 %i.ftd, ptr %i.fte, align 8, !tbaa !124
  %i.ftf = getelementptr [8 x i8], ptr %.4.val10103, i64 %i.fpv
  %i.ftg = load i16, ptr %i.fpt, align 2, !tbaa !291 ; 2 uses
  %.sroa.21853.0.extract.shift = lshr i16 %i.ftg, 8
  %.sroa.21853.0.extract.trunc = zext nneg i16 %.sroa.21853.0.extract.shift to i32
  %i.fth = and i16 %i.ftg, 255
  %i.fti = zext nneg i16 %i.fth to i64
  br label %.backedge.backedge

bb.ale:                                           ; preds = %.backedge
  %i.ftj = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.ftj, align 8, !tbaa !163
  %i.ftk = getelementptr i8, ptr %.32, i64 2      ; 3 uses
  %i.ftl = load i32, ptr %i.lzn, align 8, !tbaa !203
  %.not9420 = icmp eq i32 %i.ftl, 0
  br i1 %.not9420, label %bb.alf, label %bb.alh

bb.alf:                                           ; preds = %bb.ale
  %i.ftm = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1006211642, ptr %i.ftm, align 8, !tbaa !165
  %i.ftn = sext i32 %.09034 to i64
  %i.fto = sub nsw i64 0, %i.ftn
  %i.ftp = getelementptr [2 x i8], ptr %i.ftk, i64 %i.fto
  %i.ftq = call ptr @_Py_call_instrumentation_jump(ptr noundef %.32, ptr noundef nonnull %0, i32 noundef 9, ptr noundef nonnull %.4, ptr noundef %i.ftp, ptr noundef %i.ftk) #21 ; 2 uses
  %.4.val10102 = load ptr, ptr %i.ftm, align 8, !tbaa !165 ; 2 uses
  %i.ftr = icmp eq ptr %i.ftq, null
  br i1 %i.ftr, label %bb.alg, label %bb.alh

bb.alg:                                           ; preds = %bb.alf
  %i.fts = getelementptr i8, ptr %.32, i64 4
  br label %_PyEval_FormatExcUnbound.exit

bb.alh:                                           ; preds = %bb.ale, %bb.alf
  %.269066 = phi ptr [ %.4.val10102, %bb.alf ], [ %.4.val1006211642, %bb.ale ] ; 3 uses
  %.7 = phi ptr [ %i.ftq, %bb.alf ], [ %i.ftk, %bb.ale ] ; 8 uses
  %i.ftt = getelementptr i8, ptr %.269066, i64 -8
  %.sroa.01840.0.copyload = load i64, ptr %i.ftt, align 8, !tbaa !124 ; 3 uses
  %i.ftu = getelementptr i8, ptr %.269066, i64 -16
  %.sroa.01844.0.copyload = load i64, ptr %i.ftu, align 8, !tbaa !124 ; 2 uses
  %i.ftv = and i64 %.sroa.01840.0.copyload, -2
  %i.ftw = inttoptr i64 %i.ftv to ptr             ; 4 uses
  %i.ftx = getelementptr i8, ptr %.4, i64 64      ; 4 uses
  store ptr %.269066, ptr %i.ftx, align 8, !tbaa !165
  %i.fty = load ptr, ptr @PyExc_StopAsyncIteration, align 8, !tbaa !120
  %i.ftz = call i32 @PyErr_GivenExceptionMatches(ptr noundef %i.ftw, ptr noundef %i.fty) #21
  %.4.val10101 = load ptr, ptr %i.ftx, align 8, !tbaa !165 ; 3 uses
  %.not9421 = icmp eq i32 %i.ftz, 0
  br i1 %.not9421, label %bb.aln, label %bb.ali

bb.ali:                                           ; preds = %bb.alh
  %i.fua = getelementptr i8, ptr %.4.val10101, i64 -8
  store i64 1, ptr %i.fua, align 8, !tbaa !124
  %i.fub = and i64 %.sroa.01840.0.copyload, 1
  %.not.not.i11029 = icmp eq i64 %i.fub, 0
  br i1 %.not.not.i11029, label %bb.alj, label %PyStackRef_CLOSE.exit11030

bb.alj:                                           ; preds = %bb.ali
  %i.fuc = inttoptr i64 %.sroa.01840.0.copyload to ptr ; 3 uses
  %i.fud = load i32, ptr %i.fuc, align 8, !tbaa !124
end_hunk_3
begin_hunk_4_@_PyEval_EvalFrameDefault:bb.a
  %i.jas = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jat = load i16, ptr %i.jas, align 2, !tbaa !291 ; 2 uses
  %.sroa.2819.0.extract.shift = lshr i16 %i.jat, 8
  %.sroa.2819.0.extract.trunc = zext nneg i16 %.sroa.2819.0.extract.shift to i32
  %i.jau = and i16 %i.jat, 255
  %i.jav = zext nneg i16 %i.jau to i64
  br label %.backedge.backedge

bb.bec:                                           ; preds = %.backedge
  %i.jaw = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jaw, align 8, !tbaa !163
  %i.jax = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jay = load i16, ptr %i.jax, align 2, !tbaa !291 ; 2 uses
  %.sroa.2817.0.extract.shift = lshr i16 %i.jay, 8
  %.sroa.2817.0.extract.trunc = zext nneg i16 %.sroa.2817.0.extract.shift to i32
  %i.jaz = and i16 %i.jay, 255
  %i.jba = zext nneg i16 %i.jaz to i64
  br label %.backedge.backedge

bb.bed:                                           ; preds = %.backedge
  %i.jbb = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jbb, align 8, !tbaa !163
  %i.jbc = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jbd = getelementptr i8, ptr %.4.val1006211642, i64 -8
  %.sroa.0814.0.copyload = load i64, ptr %i.jbd, align 8, !tbaa !124 ; 4 uses
  %i.jbe = load ptr, ptr %i.lzt, align 8, !tbaa !198 ; 2 uses
  %i.jbf = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1006211642, ptr %i.jbf, align 8, !tbaa !165
  %i.jbg = load ptr, ptr %i.jbe, align 8, !tbaa !120 ; 6 uses
  %i.jbh = icmp eq i64 %.sroa.0814.0.copyload, %i.au
  br i1 %i.jbh, label %PyStackRef_AsPyObjectSteal.exit11282, label %bb.bee

bb.bee:                                           ; preds = %bb.bed
  %i.jbi = and i64 %.sroa.0814.0.copyload, 1
  %.not.not.i11280 = icmp eq i64 %i.jbi, 0
  br i1 %.not.not.i11280, label %bb.bef, label %bb.beg

bb.bef:                                           ; preds = %bb.bee
  %i.jbj = inttoptr i64 %.sroa.0814.0.copyload to ptr
  br label %PyStackRef_AsPyObjectSteal.exit11282

bb.beg:                                           ; preds = %bb.bee
  %i.jbk = and i64 %.sroa.0814.0.copyload, -2
  %i.jbl = inttoptr i64 %i.jbk to ptr             ; 4 uses
  %i.jbm = load i32, ptr %i.jbl, align 8, !tbaa !124 ; 2 uses
  %i.jbn = icmp ugt i32 %i.jbm, -1073741825
  br i1 %i.jbn, label %PyStackRef_AsPyObjectSteal.exit11282, label %bb.beh

bb.beh:                                           ; preds = %bb.beg
  %i.jbo = add nuw i32 %i.jbm, 1
  store i32 %i.jbo, ptr %i.jbl, align 8, !tbaa !124
  br label %PyStackRef_AsPyObjectSteal.exit11282

PyStackRef_AsPyObjectSteal.exit11282:             ; preds = %bb.beh, %bb.beg, %bb.bef, %bb.bed
  %i.jbp = phi ptr [ null, %bb.bed ], [ %i.jbj, %bb.bef ], [ %i.jbl, %bb.beg ], [ %i.jbl, %bb.beh ]
  store ptr %i.jbp, ptr %i.jbe, align 8, !tbaa !120
  %.not9713 = icmp eq ptr %i.jbg, null
  br i1 %.not9713, label %bb.ben, label %bb.bei

bb.bei:                                           ; preds = %PyStackRef_AsPyObjectSteal.exit11282
  %i.jbq = load i32, ptr %i.jbg, align 8, !tbaa !124 ; 2 uses
  %.not9714 = icmp sgt i32 %i.jbq, -1
  br i1 %.not9714, label %bb.bej, label %bb.ben

bb.bej:                                           ; preds = %bb.bei
  %i.jbr = add nsw i32 %i.jbq, -1                 ; 2 uses
  store i32 %i.jbr, ptr %i.jbg, align 8, !tbaa !124
  %i.jbs = icmp eq i32 %i.jbr, 0
  br i1 %i.jbs, label %bb.bek, label %bb.ben

bb.bek:                                           ; preds = %bb.bej
  %i.jbt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !134 ; 2 uses
  %.not9715 = icmp eq ptr %i.jbt, null
  br i1 %.not9715, label %bb.bem, label %bb.bel

bb.bel:                                           ; preds = %bb.bek
  %i.jbu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !135
  %i.jbv = call i32 %i.jbt(ptr noundef nonnull %i.jbg, i32 noundef 1, ptr noundef %i.jbu) #21 ; 0 uses
  br label %bb.bem

bb.bem:                                           ; preds = %bb.bek, %bb.bel
  %i.jbw = getelementptr i8, ptr %i.jbg, i64 8
  %.val9809 = load ptr, ptr %i.jbw, align 8, !tbaa !125
  %i.jbx = getelementptr i8, ptr %.val9809, i64 48
  %i.jby = load ptr, ptr %i.jbx, align 8, !tbaa !136
  call void %i.jby(ptr noundef nonnull %i.jbg) #21
  br label %bb.ben

bb.ben:                                           ; preds = %bb.bei, %bb.bem, %bb.bej, %PyStackRef_AsPyObjectSteal.exit11282
  %.4.val9998 = load ptr, ptr %i.jbf, align 8, !tbaa !165
  %i.jbz = getelementptr i8, ptr %.4.val9998, i64 -8
  %i.jca = load i16, ptr %i.jbc, align 2, !tbaa !291 ; 2 uses
  %.sroa.2797.0.extract.shift = lshr i16 %i.jca, 8
  %.sroa.2797.0.extract.trunc = zext nneg i16 %.sroa.2797.0.extract.shift to i32
  %i.jcb = and i16 %i.jca, 255
  %i.jcc = zext nneg i16 %i.jcb to i64
  br label %.backedge.backedge

bb.beo:                                           ; preds = %.backedge
  %i.jcd = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jcd, align 8, !tbaa !163
  %i.jce = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jcf = getelementptr i8, ptr %.4.val1006211642, i64 -16 ; 2 uses
  %.sroa.0795.0.copyload = load i64, ptr %i.jcf, align 8, !tbaa !124 ; 2 uses
  %i.jcg = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %i.jcf, ptr %i.jcg, align 8, !tbaa !165
  %i.jch = and i64 %.sroa.0795.0.copyload, 1
  %.not.not.i11283 = icmp eq i64 %i.jch, 0
  br i1 %.not.not.i11283, label %bb.bep, label %PyStackRef_CLOSE.exit11284

bb.bep:                                           ; preds = %bb.beo
  %i.jci = inttoptr i64 %.sroa.0795.0.copyload to ptr ; 3 uses
  %i.jcj = load i32, ptr %i.jci, align 8, !tbaa !124
  %i.jck = add i32 %i.jcj, -1                     ; 2 uses
  store i32 %i.jck, ptr %i.jci, align 8, !tbaa !124
  %i.jcl = icmp eq i32 %i.jck, 0
  br i1 %i.jcl, label %bb.beq, label %PyStackRef_CLOSE.exit11284

bb.beq:                                           ; preds = %bb.bep
  call void @_Py_Dealloc(ptr noundef nonnull %i.jci) #21
  br label %PyStackRef_CLOSE.exit11284

PyStackRef_CLOSE.exit11284:                       ; preds = %bb.beo, %bb.bep, %bb.beq
  %.4.val9997 = load ptr, ptr %i.jcg, align 8, !tbaa !165
  %i.jcm = load i16, ptr %i.jce, align 2, !tbaa !291 ; 2 uses
  %.sroa.2793.0.extract.shift = lshr i16 %i.jcm, 8
  %.sroa.2793.0.extract.trunc = zext nneg i16 %.sroa.2793.0.extract.shift to i32
  %i.jcn = and i16 %i.jcm, 255
  %i.jco = zext nneg i16 %i.jcn to i64
  br label %.backedge.backedge

bb.ber:                                           ; preds = %.backedge
  %i.jcp = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jcp, align 8, !tbaa !163
  %i.jcq = getelementptr i8, ptr %.32, i64 4      ; 2 uses
  %i.jcr = getelementptr i8, ptr %.4.val1006211642, i64 -8 ; 2 uses
  %.sroa.0789.0.copyload = load i64, ptr %i.jcr, align 8, !tbaa !124
  %i.jcs = icmp eq i64 %.sroa.0789.0.copyload, %i.lzp ; 2 uses
  %i.jct = zext i1 %i.jcs to i16
  %i.jcu = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jcv = load i16, ptr %i.jcu, align 2, !tbaa !124
  %i.jcw = shl i16 %i.jcv, 1
  %i.jcx = or disjoint i16 %i.jcw, %i.jct
  store i16 %i.jcx, ptr %i.jcu, align 2, !tbaa !124
  br i1 %i.jcs, label %bb.bet, label %bb.bes

bb.bes:                                           ; preds = %bb.ber
  %i.jcy = load i8, ptr %i.jcq, align 2, !tbaa !124
  %i.jcz = icmp eq i8 %i.jcy, 28
  %i.jda = zext i1 %i.jcz to i32
  br label %bb.bet

bb.bet:                                           ; preds = %bb.ber, %bb.bes
  %i.jdb = phi i32 [ %i.jda, %bb.bes ], [ %.09034, %bb.ber ]
  %i.jdc = sext i32 %i.jdb to i64
  %i.jdd = getelementptr [2 x i8], ptr %i.jcq, i64 %i.jdc ; 2 uses
  %i.jde = load i16, ptr %i.jdd, align 2, !tbaa !291 ; 2 uses
  %.sroa.2786.0.extract.shift = lshr i16 %i.jde, 8
  %.sroa.2786.0.extract.trunc = zext nneg i16 %.sroa.2786.0.extract.shift to i32
  %i.jdf = and i16 %i.jde, 255
  %i.jdg = zext nneg i16 %i.jdf to i64
  br label %.backedge.backedge

bb.beu:                                           ; preds = %.backedge
  %i.jdh = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jdh, align 8, !tbaa !163
  %i.jdi = getelementptr i8, ptr %.32, i64 4      ; 2 uses
  %i.jdj = getelementptr i8, ptr %.4.val1006211642, i64 -8 ; 2 uses
  %.sroa.0780.0.copyload = load i64, ptr %i.jdj, align 8, !tbaa !124 ; 3 uses
  %i.jdk = icmp eq i64 %.sroa.0780.0.copyload, %i.au
  br i1 %i.jdk, label %.thread13859, label %bb.bev

.thread13859:                                     ; preds = %bb.beu
  %i.jdl = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jdm = load i16, ptr %i.jdl, align 2, !tbaa !124
  %i.jdn = shl i16 %i.jdm, 1
  %i.jdo = or disjoint i16 %i.jdn, 1
  store i16 %i.jdo, ptr %i.jdl, align 2, !tbaa !124
  br label %bb.bez

bb.bev:                                           ; preds = %bb.beu
  %i.jdp = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1006211642, ptr %i.jdp, align 8, !tbaa !165
  store i64 %i.lzp, ptr %i.jdj, align 8, !tbaa !124
  %i.jdq = and i64 %.sroa.0780.0.copyload, 1
  %.not.not.i11285 = icmp eq i64 %i.jdq, 0
  br i1 %.not.not.i11285, label %bb.bew, label %bb.bey

bb.bew:                                           ; preds = %bb.bev
  %i.jdr = inttoptr i64 %.sroa.0780.0.copyload to ptr ; 3 uses
  %i.jds = load i32, ptr %i.jdr, align 8, !tbaa !124
  %i.jdt = add i32 %i.jds, -1                     ; 2 uses
  store i32 %i.jdt, ptr %i.jdr, align 8, !tbaa !124
  %i.jdu = icmp eq i32 %i.jdt, 0
  br i1 %i.jdu, label %bb.bex, label %bb.bey

bb.bex:                                           ; preds = %bb.bew
  call void @_Py_Dealloc(ptr noundef nonnull %i.jdr) #21
  br label %bb.bey

bb.bey:                                           ; preds = %bb.bev, %bb.bew, %bb.bex
  %.4.val9996 = load ptr, ptr %i.jdp, align 8, !tbaa !165
  %i.jdv = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jdw = load i16, ptr %i.jdv, align 2, !tbaa !124
  %i.jdx = shl i16 %i.jdw, 1
  store i16 %i.jdx, ptr %i.jdv, align 2, !tbaa !124
  %19 = load i8, ptr %i.jdi, align 2, !tbaa !124
  %20 = icmp eq i8 %19, 28
  %21 = zext i1 %20 to i32
  br label %bb.bez

bb.bez:                                           ; preds = %.thread13859, %bb.bey
  %.5213861 = phi ptr [ %.4.val9996, %bb.bey ], [ %.4.val1006211642, %.thread13859 ]
  %22 = phi i32 [ %21, %bb.bey ], [ %.09034, %.thread13859 ]
  %i.jdy = sext i32 %22 to i64
  %i.jdz = getelementptr [2 x i8], ptr %i.jdi, i64 %i.jdy ; 2 uses
  %i.jea = getelementptr i8, ptr %.5213861, i64 -8
  %i.jeb = load i16, ptr %i.jdz, align 2, !tbaa !291 ; 2 uses
  %.sroa.2772.0.extract.shift = lshr i16 %i.jeb, 8
  %.sroa.2772.0.extract.trunc = zext nneg i16 %.sroa.2772.0.extract.shift to i32
  %i.jec = and i16 %i.jeb, 255
  %i.jed = zext nneg i16 %i.jec to i64
  br label %.backedge.backedge

bb.bfa:                                           ; preds = %.backedge
  %i.jee = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jee, align 8, !tbaa !163
  %i.jef = getelementptr i8, ptr %.32, i64 4      ; 2 uses
  %i.jeg = getelementptr i8, ptr %.4.val1006211642, i64 -8 ; 2 uses
  %.sroa.0766.0.copyload = load i64, ptr %i.jeg, align 8, !tbaa !124 ; 3 uses
  %i.jeh = icmp eq i64 %.sroa.0766.0.copyload, %i.au
  br i1 %i.jeh, label %bb.bfe, label %bb.bfb

bb.bfb:                                           ; preds = %bb.bfa
  %i.jei = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1006211642, ptr %i.jei, align 8, !tbaa !165
  store i64 %i.lzp, ptr %i.jeg, align 8, !tbaa !124
  %i.jej = and i64 %.sroa.0766.0.copyload, 1
  %.not.not.i11287 = icmp eq i64 %i.jej, 0
  br i1 %.not.not.i11287, label %bb.bfc, label %.thread13862

bb.bfc:                                           ; preds = %bb.bfb
  %i.jek = inttoptr i64 %.sroa.0766.0.copyload to ptr ; 3 uses
  %i.jel = load i32, ptr %i.jek, align 8, !tbaa !124
  %i.jem = add i32 %i.jel, -1                     ; 2 uses
  store i32 %i.jem, ptr %i.jek, align 8, !tbaa !124
  %i.jen = icmp eq i32 %i.jem, 0
  br i1 %i.jen, label %bb.bfd, label %.thread13862

bb.bfd:                                           ; preds = %bb.bfc
  call void @_Py_Dealloc(ptr noundef nonnull %i.jek) #21
  br label %.thread13862

.thread13862:                                     ; preds = %bb.bfd, %bb.bfc, %bb.bfb
  %.4.val9995 = load ptr, ptr %i.jei, align 8, !tbaa !165
  %i.jeo = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jep = load i16, ptr %i.jeo, align 2, !tbaa !124
  %i.jeq = shl i16 %i.jep, 1
  %i.jer = or disjoint i16 %i.jeq, 1
  store i16 %i.jer, ptr %i.jeo, align 2, !tbaa !124
  br label %bb.bff

bb.bfe:                                           ; preds = %bb.bfa
  %i.jes = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jet = load i16, ptr %i.jes, align 2, !tbaa !124
  %i.jeu = shl i16 %i.jet, 1
  store i16 %i.jeu, ptr %i.jes, align 2, !tbaa !124
  %23 = load i8, ptr %i.jef, align 2, !tbaa !124
  %24 = icmp eq i8 %23, 28
  %25 = zext i1 %24 to i32
  br label %bb.bff

bb.bff:                                           ; preds = %.thread13862, %bb.bfe
  %.5313865 = phi ptr [ %.4.val1006211642, %bb.bfe ], [ %.4.val9995, %.thread13862 ]
  %26 = phi i32 [ %25, %bb.bfe ], [ %.09034, %.thread13862 ]
  %i.jev = sext i32 %26 to i64
  %i.jew = getelementptr [2 x i8], ptr %i.jef, i64 %i.jev ; 2 uses
  %i.jex = getelementptr i8, ptr %.5313865, i64 -8
  %i.jey = load i16, ptr %i.jew, align 2, !tbaa !291 ; 2 uses
  %.sroa.2758.0.extract.shift = lshr i16 %i.jey, 8
  %.sroa.2758.0.extract.trunc = zext nneg i16 %.sroa.2758.0.extract.shift to i32
  %i.jez = and i16 %i.jey, 255
  %i.jfa = zext nneg i16 %i.jez to i64
  br label %.backedge.backedge

bb.bfg:                                           ; preds = %.backedge
  %i.jfb = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jfb, align 8, !tbaa !163
  %i.jfc = getelementptr i8, ptr %.32, i64 4      ; 2 uses
  %i.jfd = getelementptr i8, ptr %.4.val1006211642, i64 -8 ; 2 uses
  %.sroa.0754.0.copyload = load i64, ptr %i.jfd, align 8, !tbaa !124
  %i.jfe = icmp eq i64 %.sroa.0754.0.copyload, %i.lzo ; 2 uses
  %i.jff = zext i1 %i.jfe to i16
  %i.jfg = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jfh = load i16, ptr %i.jfg, align 2, !tbaa !124
  %i.jfi = shl i16 %i.jfh, 1
  %i.jfj = or disjoint i16 %i.jfi, %i.jff
  store i16 %i.jfj, ptr %i.jfg, align 2, !tbaa !124
  br i1 %i.jfe, label %bb.bfi, label %bb.bfh

bb.bfh:                                           ; preds = %bb.bfg
  %i.jfk = load i8, ptr %i.jfc, align 2, !tbaa !124
  %i.jfl = icmp eq i8 %i.jfk, 28
  %i.jfm = zext i1 %i.jfl to i32
  br label %bb.bfi

bb.bfi:                                           ; preds = %bb.bfg, %bb.bfh
  %i.jfn = phi i32 [ %i.jfm, %bb.bfh ], [ %.09034, %bb.bfg ]
  %i.jfo = sext i32 %i.jfn to i64
  %i.jfp = getelementptr [2 x i8], ptr %i.jfc, i64 %i.jfo ; 2 uses
  %i.jfq = load i16, ptr %i.jfp, align 2, !tbaa !291 ; 2 uses
  %.sroa.2751.0.extract.shift = lshr i16 %i.jfq, 8
  %.sroa.2751.0.extract.trunc = zext nneg i16 %.sroa.2751.0.extract.shift to i32
  %i.jfr = and i16 %i.jfq, 255
  %i.jfs = zext nneg i16 %i.jfr to i64
  br label %.backedge.backedge

bb.bfj:                                           ; preds = %.backedge
  %i.jft = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jft, align 8, !tbaa !163
  %i.jfu = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jfv = getelementptr i8, ptr %.4.val1006211642, i64 -8 ; 2 uses
  %.sroa.0749.0.copyload = load i64, ptr %i.jfv, align 8, !tbaa !124 ; 2 uses
  %i.jfw = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %i.jfv, ptr %i.jfw, align 8, !tbaa !165
  %i.jfx = and i64 %.sroa.0749.0.copyload, 1
  %.not.not.i11289 = icmp eq i64 %i.jfx, 0
  br i1 %.not.not.i11289, label %bb.bfk, label %PyStackRef_XCLOSE.exit11290

bb.bfk:                                           ; preds = %bb.bfj
  %i.jfy = inttoptr i64 %.sroa.0749.0.copyload to ptr ; 3 uses
  %i.jfz = load i32, ptr %i.jfy, align 8, !tbaa !124
  %i.jga = add i32 %i.jfz, -1                     ; 2 uses
  store i32 %i.jga, ptr %i.jfy, align 8, !tbaa !124
  %i.jgb = icmp eq i32 %i.jga, 0
  br i1 %i.jgb, label %bb.bfl, label %PyStackRef_XCLOSE.exit11290

bb.bfl:                                           ; preds = %bb.bfk
  call void @_Py_Dealloc(ptr noundef nonnull %i.jfy) #21
  br label %PyStackRef_XCLOSE.exit11290

PyStackRef_XCLOSE.exit11290:                      ; preds = %bb.bfj, %bb.bfk, %bb.bfl
  %.4.val9994 = load ptr, ptr %i.jfw, align 8, !tbaa !165
  %i.jgc = load i16, ptr %i.jfu, align 2, !tbaa !291 ; 2 uses
  %.sroa.2748.0.extract.shift = lshr i16 %i.jgc, 8
  %.sroa.2748.0.extract.trunc = zext nneg i16 %.sroa.2748.0.extract.shift to i32
  %i.jgd = and i16 %i.jgc, 255
  %i.jge = zext nneg i16 %i.jgd to i64
  br label %.backedge.backedge

bb.bfm:                                           ; preds = %.backedge
  %i.jgf = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jgf, align 8, !tbaa !163
  %i.jgg = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jgh = getelementptr i8, ptr %.4.val1006211642, i64 -8 ; 2 uses
  %.sroa.0745.0.copyload = load i64, ptr %i.jgh, align 8, !tbaa !124 ; 2 uses
  %i.jgi = load ptr, ptr %i.lzt, align 8, !tbaa !198 ; 2 uses
  %i.jgj = load ptr, ptr %i.jgi, align 8, !tbaa !357 ; 3 uses
  %.not9712 = icmp eq ptr %i.jgj, null
  br i1 %.not9712, label %bb.bfo, label %bb.bfn

bb.bfn:                                           ; preds = %bb.bfm
  %i.jgk = getelementptr i8, ptr %i.jgj, i64 6
  %i.jgl = load i16, ptr %i.jgk, align 2, !tbaa !124
  %i.jgm = and i16 %i.jgl, 1
  %i.jgn = ptrtoint ptr %i.jgj to i64
  %i.jgo = zext nneg i16 %i.jgm to i64
  %i.jgp = or i64 %i.jgo, %i.jgn
  br label %bb.bfo

bb.bfo:                                           ; preds = %bb.bfm, %bb.bfn
  %.sroa.0744.0 = phi i64 [ %i.jgp, %bb.bfn ], [ %i.au, %bb.bfm ]
  %i.jgq = and i64 %.sroa.0745.0.copyload, -2
  %i.jgr = inttoptr i64 %i.jgq to ptr             ; 3 uses
  %i.jgs = load i32, ptr %i.jgr, align 8, !tbaa !124 ; 2 uses
  %i.jgt = icmp ugt i32 %i.jgs, -1073741825
  br i1 %i.jgt, label %_Py_NewRef.exit11291, label %bb.bfp

bb.bfp:                                           ; preds = %bb.bfo
  %i.jgu = add nuw i32 %i.jgs, 1
  store i32 %i.jgu, ptr %i.jgr, align 8, !tbaa !124
  br label %_Py_NewRef.exit11291

_Py_NewRef.exit11291:                             ; preds = %bb.bfo, %bb.bfp
  store ptr %i.jgr, ptr %i.jgi, align 8, !tbaa !357
  store i64 %.sroa.0744.0, ptr %i.jgh, align 8, !tbaa !124
  store i64 %.sroa.0745.0.copyload, ptr %.4.val1006211642, align 8, !tbaa !124
  %i.jgv = getelementptr i8, ptr %.4.val1006211642, i64 8
  %i.jgw = load i16, ptr %i.jgg, align 2, !tbaa !291 ; 2 uses
  %.sroa.2736.0.extract.shift = lshr i16 %i.jgw, 8
  %.sroa.2736.0.extract.trunc = zext nneg i16 %.sroa.2736.0.extract.shift to i32
  %i.jgx = and i16 %i.jgw, 255
  %i.jgy = zext nneg i16 %i.jgx to i64
  br label %.backedge.backedge

bb.bfq:                                           ; preds = %.backedge
  %i.jgz = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jgz, align 8, !tbaa !163
  %i.jha = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  store i64 1, ptr %.4.val1006211642, align 8, !tbaa !124
  %i.jhb = getelementptr i8, ptr %.4.val1006211642, i64 8
  %i.jhc = load i16, ptr %i.jha, align 2, !tbaa !291 ; 2 uses
  %.sroa.2732.0.extract.shift = lshr i16 %i.jhc, 8
  %.sroa.2732.0.extract.trunc = zext nneg i16 %.sroa.2732.0.extract.shift to i32
  %i.jhd = and i16 %i.jhc, 255
  %i.jhe = zext nneg i16 %i.jhd to i64
  br label %.backedge.backedge

bb.bfr:                                           ; preds = %.backedge
  %i.jhf = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jhf, align 8, !tbaa !163
  %i.jhg = getelementptr i8, ptr %.32, i64 2      ; 7 uses
  %i.jhh = sub i32 0, %.09034
  %i.jhi = sext i32 %i.jhh to i64
  %i.jhj = getelementptr [8 x i8], ptr %.4.val1006211642, i64 %i.jhi ; 5 uses
  %i.jhk = icmp eq i32 %.09034, 2
  br i1 %i.jhk, label %bb.bfs, label %PyStackRef_AsPyObjectSteal.exit11294

bb.bfs:                                           ; preds = %bb.bfr
  %i.jhl = getelementptr i8, ptr %i.jhj, i64 8
  %i.jhm = load i64, ptr %i.jhl, align 8          ; 3 uses
  %i.jhn = and i64 %i.jhm, 1
  %.not.not.i11292 = icmp eq i64 %i.jhn, 0
  br i1 %.not.not.i11292, label %bb.bft, label %bb.bfu

bb.bft:                                           ; preds = %bb.bfs
  %i.jho = inttoptr i64 %i.jhm to ptr
  br label %PyStackRef_AsPyObjectSteal.exit11294.thread

bb.bfu:                                           ; preds = %bb.bfs
  %i.jhp = and i64 %i.jhm, -2
  %i.jhq = inttoptr i64 %i.jhp to ptr             ; 4 uses
  %i.jhr = load i32, ptr %i.jhq, align 8, !tbaa !124 ; 2 uses
  %i.jhs = icmp ugt i32 %i.jhr, -1073741825
  br i1 %i.jhs, label %PyStackRef_AsPyObjectSteal.exit11294.thread, label %bb.bfv

bb.bfv:                                           ; preds = %bb.bfu
  %i.jht = add nuw i32 %i.jhr, 1
  store i32 %i.jht, ptr %i.jhq, align 8, !tbaa !124
  br label %PyStackRef_AsPyObjectSteal.exit11294.thread

PyStackRef_AsPyObjectSteal.exit11294:             ; preds = %bb.bfr
  %i.jhu = icmp sgt i32 %.09034, 0
  br i1 %i.jhu, label %PyStackRef_AsPyObjectSteal.exit11294.thread, label %PyStackRef_AsPyObjectSteal.exit11297.thread11661

PyStackRef_AsPyObjectSteal.exit11297.thread11661: ; preds = %PyStackRef_AsPyObjectSteal.exit11294
  %i.jhv = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %i.jhj, ptr %i.jhv, align 8, !tbaa !165
  br label %bb.bfy

PyStackRef_AsPyObjectSteal.exit11294.thread:      ; preds = %bb.bft, %bb.bfu, %bb.bfv, %PyStackRef_AsPyObjectSteal.exit11294
  %i.jhw = phi ptr [ null, %PyStackRef_AsPyObjectSteal.exit11294 ], [ %i.jhq, %bb.bfv ], [ %i.jhq, %bb.bfu ], [ %i.jho, %bb.bft ] ; 22 uses
  %i.jhx = load i64, ptr %i.jhj, align 8          ; 4 uses
  %i.jhy = and i64 %i.jhx, 1
  %.not.not.i11295 = icmp eq i64 %i.jhy, 0
  br i1 %.not.not.i11295, label %PyStackRef_AsPyObjectSteal.exit11297, label %bb.bfw

bb.bfw:                                           ; preds = %PyStackRef_AsPyObjectSteal.exit11294.thread
  %i.jhz = and i64 %i.jhx, -2
  %i.jia = inttoptr i64 %i.jhz to ptr             ; 3 uses
  %i.jib = load i32, ptr %i.jia, align 8, !tbaa !124 ; 2 uses
  %i.jic = icmp ugt i32 %i.jib, -1073741825
  br i1 %i.jic, label %PyStackRef_AsPyObjectSteal.exit11297.thread, label %bb.bfx

bb.bfx:                                           ; preds = %bb.bfw
  %i.jid = add nuw i32 %i.jib, 1
  store i32 %i.jid, ptr %i.jia, align 8, !tbaa !124
  br label %PyStackRef_AsPyObjectSteal.exit11297.thread

PyStackRef_AsPyObjectSteal.exit11297.thread:      ; preds = %bb.bfw, %bb.bfx
  %i.jie = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %i.jhj, ptr %i.jie, align 8, !tbaa !165
  br label %bb.bgc

PyStackRef_AsPyObjectSteal.exit11297:             ; preds = %PyStackRef_AsPyObjectSteal.exit11294.thread
  %i.jif = inttoptr i64 %i.jhx to ptr
  %i.jig = getelementptr i8, ptr %.4, i64 64      ; 3 uses
  store ptr %i.jhj, ptr %i.jig, align 8, !tbaa !165
end_hunk_4
begin_hunk_5_@_PyEval_EvalFrameDefault:bb.a
bb.bxe:                                           ; preds = %bb.bws
  %i.lws = load i32, ptr %i.p, align 4, !tbaa !16
  %i.lwt = sext i32 %i.lws to i64
  %i.lwu = getelementptr [8 x i8], ptr %i.lvl, i64 %i.lwt ; 2 uses
  %i.lwv = load ptr, ptr %i.lur, align 8, !tbaa !165 ; 3 uses
  %i.lww = icmp ugt ptr %i.lwv, %i.lwu
  br i1 %i.lww, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.bxe, %PyStackRef_XCLOSE.exit11517
  %i.lwx = phi ptr [ %i.lxe, %PyStackRef_XCLOSE.exit11517 ], [ %i.lwv, %bb.bxe ]
  %i.lwy = getelementptr i8, ptr %i.lwx, i64 -8   ; 2 uses
  store ptr %i.lwy, ptr %i.lur, align 8, !tbaa !165
  %.sroa.0.0.copyload.i11515 = load i64, ptr %i.lwy, align 8, !tbaa !124 ; 2 uses
  %i.lwz = and i64 %.sroa.0.0.copyload.i11515, 1
  %.not.not.i11516 = icmp eq i64 %i.lwz, 0
  br i1 %.not.not.i11516, label %bb.bxf, label %PyStackRef_XCLOSE.exit11517

bb.bxf:                                           ; preds = %.lr.ph
  %i.lxa = inttoptr i64 %.sroa.0.0.copyload.i11515 to ptr ; 3 uses
  %i.lxb = load i32, ptr %i.lxa, align 8, !tbaa !124
  %i.lxc = add i32 %i.lxb, -1                     ; 2 uses
  store i32 %i.lxc, ptr %i.lxa, align 8, !tbaa !124
  %i.lxd = icmp eq i32 %i.lxc, 0
  br i1 %i.lxd, label %bb.bxg, label %PyStackRef_XCLOSE.exit11517

bb.bxg:                                           ; preds = %bb.bxf
  call void @_Py_Dealloc(ptr noundef nonnull %i.lxa) #21
  br label %PyStackRef_XCLOSE.exit11517

PyStackRef_XCLOSE.exit11517:                      ; preds = %.lr.ph, %bb.bxf, %bb.bxg
  %i.lxe = load ptr, ptr %i.lur, align 8, !tbaa !165 ; 3 uses
  %i.lxf = icmp ugt ptr %i.lxe, %i.lwu
  br i1 %i.lxf, label %.lr.ph, label %._crit_edge, !llvm.loop !283

._crit_edge:                                      ; preds = %PyStackRef_XCLOSE.exit11517, %bb.bxe
  %.lcssa12238 = phi ptr [ %i.lwv, %bb.bxe ], [ %i.lxe, %PyStackRef_XCLOSE.exit11517 ]
  %i.lxg = load i32, ptr %i.r, align 4, !tbaa !16
  %.not9398 = icmp eq i32 %i.lxg, 0
  br i1 %.not9398, label %bb.bxi, label %bb.bxh

bb.bxh:                                           ; preds = %._crit_edge
  %i.lxh = load ptr, ptr %i.lus, align 8, !tbaa !163
  %.1.val10452 = load i64, ptr %.1.ph, align 8
  %i.lxi = and i64 %.1.val10452, 8589934590
  %i.lxj = ptrtoint ptr %i.lxh to i64
  %.neg11700 = add i64 %i.lxj, 8589934384
  %i.lxk = sub i64 %.neg11700, %i.lxi
  %sext = shl i64 %i.lxk, 31
  %i.lxl = ashr exact i64 %sext, 30
  %i.lxm = or i64 %i.lxl, 3
  store i64 %i.lxm, ptr %.lcssa12238, align 8, !tbaa !124
  %i.lxn = load ptr, ptr %i.lur, align 8, !tbaa !165
  %i.lxo = getelementptr i8, ptr %i.lxn, i64 8
  store ptr %i.lxo, ptr %i.lur, align 8, !tbaa !165
  br label %bb.bxi

bb.bxi:                                           ; preds = %bb.bxh, %._crit_edge
  %i.lxp = call ptr @_PyErr_GetRaisedException(ptr noundef %0) #21 ; 3 uses
  %i.lxq = getelementptr i8, ptr %i.lxp, i64 6
  %i.lxr = load i16, ptr %i.lxq, align 2, !tbaa !124
  %i.lxs = and i16 %i.lxr, 1
  %i.lxt = ptrtoint ptr %i.lxp to i64
  %i.lxu = zext nneg i16 %i.lxs to i64
  %i.lxv = or i64 %i.lxu, %i.lxt
  %i.lxw = load ptr, ptr %i.lur, align 8, !tbaa !165
  store i64 %i.lxv, ptr %i.lxw, align 8, !tbaa !124
  %i.lxx = load ptr, ptr %i.lur, align 8, !tbaa !165
  %i.lxy = getelementptr i8, ptr %i.lxx, i64 8
  store ptr %i.lxy, ptr %i.lur, align 8, !tbaa !165
  %.1.val10451 = load i64, ptr %.1.ph, align 8
  %i.lxz = and i64 %.1.val10451, -2
  %i.lya = inttoptr i64 %i.lxz to ptr
  %i.lyb = getelementptr i8, ptr %i.lya, i64 208
  %i.lyc = load i32, ptr %i.q, align 4, !tbaa !16
  %i.lyd = sext i32 %i.lyc to i64
  %i.lye = getelementptr [2 x i8], ptr %i.lyb, i64 %i.lyd ; 4 uses
  %.val.i11518 = load ptr, ptr %i.lut, align 8, !tbaa !147
  %i.lyf = getelementptr i8, ptr %.val.i11518, i64 223468
  %i.lyg = load i8, ptr %i.lyf, align 1, !tbaa !124
  %i.lyh = icmp eq i8 %i.lyg, 0
  br i1 %i.lyh, label %.preheader11706, label %monitor_handled.exit

monitor_handled.exit:                             ; preds = %bb.bxi
  %i.lyi = call i32 @_Py_call_instrumentation_arg(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull %.1.ph, ptr noundef %i.lye, ptr noundef nonnull %i.lxp) #21
  %i.lyj = icmp slt i32 %i.lyi, 0
  br i1 %i.lyj, label %bb.bws, label %.preheader11706

monitor_unwind.exit:                              ; preds = %_Py_EnterRecursivePy.exit11521, %bb.bxd, %bb.bxa, %bb.bwz, %bb.bwy, %bb.bww, %._crit_edge12827
  %.2 = phi ptr [ %.3, %_Py_EnterRecursivePy.exit11521 ], [ %.1.ph, %._crit_edge12827 ], [ %.1.ph, %bb.bww ], [ %.1.ph, %bb.bwy ], [ %.1.ph, %bb.bwz ], [ %.1.ph, %bb.bxa ], [ %.1.ph, %bb.bxd ] ; 2 uses
  %i.lyk = getelementptr i8, ptr %0, i64 52       ; 2 uses
  %i.lyl = load i32, ptr %i.lyk, align 4, !tbaa !111
  %i.lym = add i32 %i.lyl, 1
  store i32 %i.lym, ptr %i.lyk, align 4, !tbaa !111
  %i.lyn = getelementptr i8, ptr %.2, i64 8
  %i.lyo = load ptr, ptr %i.lyn, align 8, !tbaa !162 ; 7 uses
  store ptr %i.lyo, ptr %i.ba, align 8, !tbaa !161
  call void @_PyEval_FrameClearAndPop(ptr noundef nonnull %0, ptr noundef %.2)
  %i.lyp = getelementptr i8, ptr %i.lyo, i64 72
  store i16 0, ptr %i.lyp, align 8, !tbaa !179
  %i.lyq = getelementptr i8, ptr %i.lyo, i64 74
  %i.lyr = load i8, ptr %i.lyq, align 2, !tbaa !180
  %i.lys = icmp eq i8 %i.lyr, 3
  br i1 %i.lys, label %bb.bxj, label %bb.bxk

bb.bxj:                                           ; preds = %monitor_unwind.exit
  %i.lyt = getelementptr i8, ptr %i.lyo, i64 8
  %i.lyu = load ptr, ptr %i.lyt, align 8, !tbaa !162
  store ptr %i.lyu, ptr %i.ba, align 8, !tbaa !161
  br label %PyStackRef_AsPyObjectSteal.exit11078

bb.bxk:                                           ; preds = %monitor_unwind.exit
  %i.lyv = getelementptr i8, ptr %i.lyo, i64 56
  %i.lyw = load ptr, ptr %i.lyv, align 8, !tbaa !163
  %i.lyx = getelementptr i8, ptr %i.lyo, i64 64
  %.val9917 = load ptr, ptr %i.lyx, align 8, !tbaa !165
  br label %_PyEval_FormatExcUnbound.exit

.sink.split:                                      ; preds = %bb.kv, %bb.pz, %bb.ru, %bb.ajb, %bb.ala, %_PyStackRef_FromPyObjectNew.exit11131, %PyStackRef_MakeHeapSafe.exit11334
  %.sink14426 = phi ptr [ %i.jwf, %PyStackRef_MakeHeapSafe.exit11334 ], [ %i.hai, %_PyStackRef_FromPyObjectNew.exit11131 ], [ %i.fsm, %bb.ala ], [ %i.flg, %bb.ajb ], [ %i.cfi, %bb.ru ], [ %i.bwv, %bb.pz ], [ %i.avr, %bb.kv ] ; 2 uses
  store ptr %.sink14426, ptr %i.ba, align 8, !tbaa !161
  br label %bb.bxl

bb.bxl:                                           ; preds = %.sink.split, %_Py_EnterRecursiveCallTstate.exit.thread
  %.3 = phi ptr [ %1, %_Py_EnterRecursiveCallTstate.exit.thread ], [ %.sink14426, %.sink.split ] ; 4 uses
  %i.lyy = getelementptr i8, ptr %0, i64 52       ; 2 uses
  %i.lyz = load i32, ptr %i.lyy, align 4, !tbaa !111 ; 2 uses
  %i.lza = add i32 %i.lyz, -1                     ; 3 uses
  store i32 %i.lza, ptr %i.lyy, align 4, !tbaa !111
  %i.lzb = icmp slt i32 %i.lyz, 1
  br i1 %i.lzb, label %bb.bxm, label %bb.bxq

bb.bxm:                                           ; preds = %bb.bxl
  %i.lzc = getelementptr i8, ptr %0, i64 60       ; 4 uses
  %i.lzd = load i32, ptr %i.lzc, align 4, !tbaa !121
  %.not.i.i11520 = icmp eq i32 %i.lzd, 0
  br i1 %.not.i.i11520, label %bb.bxp, label %bb.bxn

bb.bxn:                                           ; preds = %bb.bxm
  %i.lze = icmp slt i32 %i.lza, -50
  br i1 %i.lze, label %bb.bxo, label %bb.bxq

bb.bxo:                                           ; preds = %bb.bxn
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__._Py_CheckRecursiveCallPy, ptr noundef nonnull @.str.19) #23
  unreachable

bb.bxp:                                           ; preds = %bb.bxm
  %i.lzf = icmp slt i32 %i.lza, 1
  br i1 %i.lzf, label %_Py_EnterRecursivePy.exit11521, label %bb.bxq

_Py_EnterRecursivePy.exit11521:                   ; preds = %bb.bxp
  store i32 1, ptr %i.lzc, align 4, !tbaa !121
  %i.lzg = load ptr, ptr @PyExc_RecursionError, align 8, !tbaa !120
  %i.lzh = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %0, ptr noundef %i.lzg, ptr noundef nonnull @.str.20) #21 ; 0 uses
  %i.lzi = load i32, ptr %i.lzc, align 4, !tbaa !121
  %i.lzj = add i32 %i.lzi, -1
  store i32 %i.lzj, ptr %i.lzc, align 4, !tbaa !121
  br label %monitor_unwind.exit

bb.bxq:                                           ; preds = %bb.bxl, %bb.bxp, %bb.bxn
  %i.lzk = getelementptr i8, ptr %.3, i64 56
  %i.lzl = load ptr, ptr %i.lzk, align 8, !tbaa !163
  %i.lzm = getelementptr i8, ptr %.3, i64 64
  br label %.preheader11706

.preheader11706:                                  ; preds = %monitor_handled.exit, %bb.bxi, %bb.bxq
  %.65.ph.in = phi ptr [ %i.lzm, %bb.bxq ], [ %i.lur, %bb.bxi ], [ %i.lur, %monitor_handled.exit ]
  %.32.ph = phi ptr [ %i.lzl, %bb.bxq ], [ %i.lye, %bb.bxi ], [ %i.lye, %monitor_handled.exit ] ; 2 uses
  %.4.ph = phi ptr [ %.3, %bb.bxq ], [ %.1.ph, %bb.bxi ], [ %.1.ph, %monitor_handled.exit ]
  %.09034.ph.in.in = load i16, ptr %.32.ph, align 2, !tbaa !291 ; 2 uses
  %.pn.in = and i16 %.09034.ph.in.in, 255
  %.pn = zext nneg i16 %.pn.in to i64
  %.09034.ph.in = lshr i16 %.09034.ph.in.in, 8
  %.09034.ph = zext nneg i16 %.09034.ph.in to i32
  %.65.ph = load ptr, ptr %.65.ph.in, align 8, !tbaa !165
  %i.lzn = getelementptr i8, ptr %0, i64 64       ; 13 uses
  %i.lzo = or disjoint i64 ptrtoint (ptr @_Py_TrueStruct to i64), 1 ; 4 uses
  %i.lzp = or disjoint i64 ptrtoint (ptr @_Py_FalseStruct to i64), 1 ; 7 uses
  %i.lzq = getelementptr i8, ptr %0, i64 24       ; 26 uses
  %i.lzr = getelementptr i8, ptr %0, i64 16       ; 32 uses
  %i.lzs = getelementptr i8, ptr %0, i64 52       ; 39 uses
  %i.lzt = getelementptr i8, ptr %0, i64 136      ; 10 uses
  %i.lzu = getelementptr i8, ptr %0, i64 1000     ; 2 uses
  %i.lzv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.lzw = getelementptr i8, ptr %0, i64 256      ; 15 uses
  %i.lzx = getelementptr i8, ptr %0, i64 264      ; 6 uses
  %i.lzy = load i32, ptr getelementptr inbounds nuw (i8, ptr @_Py_InitCleanup, i64 76), align 4 ; 2 uses
  %i.lzz = sext i32 %i.lzy to i64
  %i.maa = load i32, ptr @_Py_InitCleanup, align 8
  %.not.i.i10646 = icmp sgt i32 %i.maa, -1
  %i.mab = or disjoint i64 ptrtoint (ptr @_Py_InitCleanup to i64), 1
  %.sroa.0.0.i.i = select i1 %.not.i.i10646, i64 ptrtoint (ptr @_Py_InitCleanup to i64), i64 %i.mab
  %i.mac = load i32, ptr getelementptr inbounds nuw (i8, ptr @_Py_InitCleanup, i64 72), align 8
  %i.mad = sext i32 %i.mac to i64
  %i.mae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.maf = getelementptr i8, ptr %0, i64 128      ; 5 uses
  %i.mag = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.mah = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.mai = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.maj = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.mak = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  br label %.backedge

bb.bxr:                                           ; preds = %bb.k
  store i32 1, ptr %i.bj, align 4, !tbaa !121
  %i.mal = load ptr, ptr @PyExc_RecursionError, align 8, !tbaa !120
  %i.mam = call ptr (ptr, ptr, ptr, ...) @_PyErr_Format(ptr noundef nonnull %0, ptr noundef %i.mal, ptr noundef nonnull @.str.20) #21 ; 0 uses
  %i.man = load i32, ptr %i.bj, align 4, !tbaa !121
  %i.mao = add i32 %i.man, -1
  store i32 %i.mao, ptr %i.bj, align 4, !tbaa !121
  %i.map = load i32, ptr %i.bf, align 4, !tbaa !111
  %i.maq = add i32 %i.map, 1
  store i32 %i.maq, ptr %i.bf, align 4, !tbaa !111
  %i.mar = load ptr, ptr %i.bd, align 8, !tbaa !162 ; 3 uses
  store ptr %i.mar, ptr %i.ba, align 8, !tbaa !161
  call void @_PyEval_FrameClearAndPop(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.mas = getelementptr i8, ptr %i.mar, i64 72
  store i16 0, ptr %i.mas, align 8, !tbaa !179
  %i.mat = getelementptr i8, ptr %i.mar, i64 8
  %i.mau = load ptr, ptr %i.mat, align 8, !tbaa !162
  store ptr %i.mau, ptr %i.ba, align 8, !tbaa !161
  br label %PyStackRef_AsPyObjectSteal.exit11078

PyStackRef_AsPyObjectSteal.exit11078:             ; preds = %bb.aqt, %bb.aqs, %bb.aqr, %bb.bxr, %bb.bxj, %bb.f
  %.0 = phi ptr [ null, %bb.f ], [ null, %bb.bxr ], [ null, %bb.bxj ], [ %i.gol, %bb.aqr ], [ %i.gon, %bb.aqs ], [ %i.gon, %bb.aqt ]
  ret ptr %.0

.backedge:                                        ; preds = %.backedge.backedge, %.preheader11706
  %.4.val1006211642 = phi ptr [ %.65.ph, %.preheader11706 ], [ %.4.val1006211642.be, %.backedge.backedge ] ; 741 uses
  %.32 = phi ptr [ %.32.ph, %.preheader11706 ], [ %.32.be, %.backedge.backedge ] ; 635 uses
  %.09034 = phi i32 [ %.09034.ph, %.preheader11706 ], [ %.09034.be, %.backedge.backedge ] ; 282 uses
  %.4 = phi ptr [ %.4.ph, %.preheader11706 ], [ %.4.be, %.backedge.backedge ] ; 971 uses
  %.pn.pn = phi i64 [ %.pn, %.preheader11706 ], [ %.pn.pn.be, %.backedge.backedge ]
  %.4.val100621164214964 = ptrtoaddr ptr %.4.val1006211642 to i64
  %.in = getelementptr [8 x i8], ptr @_PyEval_EvalFrameDefault.opcode_targets_table, i64 %.pn.pn
  %i.mav = load ptr, ptr %.in, align 8, !tbaa !115
  indirectbr ptr %i.mav, [label %bb.kf, label %bb.hp, label %bb.jx, label %bb.bt, label %bb.pc, label %bb.xa, label %bb.xo, label %bb.xx, label %bb.acw, label %bb.aei, label %bb.ael, label %bb.aep, label %bb.aet, label %bb.aez, label %bb.agg, label %bb.agw, label %bb.ahc, label %bb.bjf, label %bb.ahj, label %bb.ahm, label %bb.aqq, label %bb.awp, label %bb.azv, label %bb.bda, label %bb.bdv, label %bb.bdx, label %bb.bdz, label %bb.beb, label %bb.bec, label %bb.bed, label %bb.beo, label %bb.bfj, label %bb.bfm, label %bb.bfq, label %bb.bjr, label %bb.bjw, label %bb.blf, label %bb.bpv, label %bb.bqo, label %bb.bsg, label %bb.btl, label %bb.btp, label %bb.btt, label %bb.bvw, label %bb.u, label %bb.ik, label %bb.it, label %bb.iv, label %bb.iy, label %bb.jo, label %bb.ju, label %bb.kd, label %bb.kg, label %bb.qi, label %bb.qm, label %bb.rc, label %bb.yr, label %bb.aap, label %bb.abm, label %bb.abq, label %bb.abs, label %bb.abw, label %bb.aca, label %bb.aci, label %bb.acn, label %bb.acr, label %bb.adc, label %bb.adj, label %bb.ads, label %bb.aes, label %bb.aff, label %bb.agy, label %bb.ahv, label %bb.aia, label %bb.aqu, label %bb.aqz, label %bb.ard, label %bb.arf, label %bb.arg, label %bb.arl, label %bb.arw, label %bb.awt, label %bb.aww, label %bb.awx, label %bb.axb, label %bb.axd, label %bb.axe, label %bb.axf, label %bb.axg, label %bb.axk, label %bb.axn, label %bb.axu, label %bb.ayw, label %bb.baa, label %bb.bbc, label %bb.bbd, label %bb.bbh, label %bb.bcw, label %bb.bde, label %bb.bdm, label %bb.ber, label %bb.beu, label %bb.bfa, label %bb.bfg, label %bb.bfr, label %bb.bir, label %bb.bjy, label %bb.blx, label %bb.bmc, label %bb.bmg, label %bb.bmk, label %bb.bon, label %bb.bou, label %bb.box, label %bb.bpb, label %bb.bpg, label %bb.bpk, label %bb.bsf, label %bb.btu, label %bb.bue, label %bb.bwe, label %bb.bwg, label %bb.btk, label %bb.aeo, label %bb.amz, label %bb.amq, label %bb.ajf, label %bb.akg, label %bb.bjg, label %bb.ac, label %bb.ao, label %bb.ba, label %bb.bm, label %bb.cn, label %bb.cz, label %bb.dl, label %bb.dt, label %bb.ed, label %bb.ep, label %bb.ex, label %bb.fj, label %bb.fv, label %bb.gr, label %bb.hd, label %bb.kz, label %bb.ln, label %bb.mc, label %bb.mr, label %bb.mw, label %bb.nb, label %bb.ng, label %bb.nq, label %bb.oh, label %bb.qs, label %bb.ry, label %bb.so, label %bb.ss, label %bb.tc, label %bb.tl, label %bb.tx, label %bb.ue, label %bb.ul, label %bb.uw, label %bb.vk, label %bb.vo, label %bb.vx, label %bb.wf, label %bb.wm, label %bb.wt, label %bb.zi, label %bb.zt, label %bb.aae, label %bb.aay, label %bb.abf, label %bb.afl, label %bb.afp, label %bb.afv, label %bb.aga, label %bb.arc, label %bb.are, label %bb.ash, label %bb.asq, label %bb.ata, label %bb.atl, label %bb.atv, label %bb.aua, label %bb.aue, label %bb.auk, label %bb.auu, label %bb.ava, label %bb.avi, label %bb.avt, label %bb.awc, label %bb.azd, label %bb.azn, label %bb.bca, label %bb.bck, label %bb.bjp, label %bb.bla, label %bb.bmt, label %bb.bni, label %bb.bnv, label %bb.bqy, label %bb.brm, label %bb.bsm, label %bb.bsq, label %bb.bss, label %bb.bsy, label %bb.btc, label %bb.bte, label %bb.bur, label %bb.bvc, label %bb.bvn, label %bb.aij, label %bb.ani, label %bb.ale, label %bb.aql, label %bb.aqi, label %bb.aqb, label %bb.apn, label %bb.ape, label %bb.aoy, label %bb.apv, label %bb.aoo, label %bb.amu, label %bb.amm, label %bb.amg, label %bb.amb, label %bb.aor, label %bb.alx]
}

; Function Attrs: nounwind uwtable
define dso_local void @_PyEval_FrameClearAndPop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !363  ; 2 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = icmp eq ptr %i.b, %1
  %or.cond = and i1 %.not, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161
  store ptr %i.e, ptr %i.a, align 8, !tbaa !363
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %1, i64 74
  %i.g = load i8, ptr %i.f, align 2, !tbaa !180
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @_PyFrame_ClearExceptCode(ptr noundef nonnull %1) #21
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !124 ; 2 uses
  store i64 1, ptr %1, align 8, !tbaa !124
  %i.i = and i64 %.sroa.0.0.copyload.i, 1
  %.not.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.not.i.i, label %bb.e, label %clear_thread_frame.exit

bb.e:                                             ; preds = %bb.d
  %i.j = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !124
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !124
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %clear_thread_frame.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #21
  br label %clear_thread_frame.exit

clear_thread_frame.exit:                          ; preds = %bb.d, %bb.e, %bb.f
  tail call void @_PyThreadState_PopFrame(ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %1, i64 -5
  store i8 5, ptr %i.n, align 1, !tbaa !197
  %i.o = getelementptr i8, ptr %1, i64 -32        ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 -24        ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !199
  %i.r = getelementptr i8, ptr %0, i64 136
  store ptr %i.q, ptr %i.r, align 8, !tbaa !198
  store ptr null, ptr %i.p, align 8, !tbaa !199
  %i.s = getelementptr i8, ptr %1, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !162
  tail call void @_PyFrame_ClearExceptCode(ptr noundef nonnull %1) #21
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !120  ; 4 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %clear_gen_frame.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.o, align 8, !tbaa !120
  %i.u = load i32, ptr %i.t, align 8, !tbaa !124  ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.u, -1
  br i1 %.not.i.i.i, label %bb.i, label %clear_gen_frame.exit

bb.i:                                             ; preds = %bb.h
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.t, align 8, !tbaa !124
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %clear_gen_frame.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.t) #21
  br label %clear_gen_frame.exit

clear_gen_frame.exit:                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %i.x = getelementptr i8, ptr %0, i64 1000
  store i32 0, ptr %i.x, align 8, !tbaa !205
  br label %bb.k

bb.k:                                             ; preds = %clear_gen_frame.exit, %clear_thread_frame.exit
  ret void
}

declare i32 @_Py_Instrument(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Py_Specialize_BinaryOp(i64, i64, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #3

declare void @_PyFloat_ExactDealloc(ptr noundef) local_unnamed_addr #3

declare i64 @_PyCompactLong_Add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_PyLong_ExactDealloc(ptr noundef) local_unnamed_addr #3

declare ptr @PyUnicode_Concat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_PyUnicode_ExactDealloc(ptr noundef) local_unnamed_addr #3

declare void @PyUnicode_Append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @_PyCompactLong_Multiply(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PyDict_GetItemRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_PyErr_SetKeyError(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @_PyFrame_PushUnchecked(ptr nofree noundef captures(none) %0, i64 %1, i32 noundef %2, ptr noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = and i64 %1, -2
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !174  ; 7 uses
  %i.e = getelementptr i8, ptr %0, i64 256        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !173  ; 14 uses
  %i.g = getelementptr i8, ptr %i.d, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !175
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [8 x i8], ptr %i.f, i64 %i.i
  store ptr %i.j, ptr %i.e, align 8, !tbaa !173
  %i.k = getelementptr i8, ptr %i.f, i64 8
  store ptr %3, ptr %i.k, align 8, !tbaa !162
  %i.l = getelementptr i8, ptr %i.f, i64 16
  store i64 %1, ptr %i.l, align 8, !tbaa !124
  %i.m = load i32, ptr %i.d, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = or i64 %i.n, 1
  br label %_PyStackRef_FromPyObjectNew.exit.i

bb.c:                                             ; preds = %bb.a
  %i.p = add nuw i32 %i.m, 1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !124
  %i.q = ptrtoint ptr %i.d to i64
  br label %_PyStackRef_FromPyObjectNew.exit.i

_PyStackRef_FromPyObjectNew.exit.i:               ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.b ], [ %i.q, %bb.c ]
  store i64 %.sroa.0.0.i.i, ptr %i.f, align 8, !tbaa !124
  %i.r = getelementptr i8, ptr %i.b, i64 16
  %i.s = getelementptr i8, ptr %i.f, i64 24
  %i.t = load <2 x ptr>, ptr %i.r, align 8, !tbaa !120
  store <2 x ptr> %i.t, ptr %i.s, align 8, !tbaa !120
  %i.u = getelementptr i8, ptr %i.f, i64 40
  store ptr null, ptr %i.u, align 8, !tbaa !176
  %i.v = getelementptr i8, ptr %i.f, i64 80       ; 2 uses
  %i.w = getelementptr i8, ptr %i.d, i64 72       ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !177  ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.f, i64 64
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !165
  %i.ab = getelementptr i8, ptr %i.f, i64 48
  store ptr null, ptr %i.ab, align 8, !tbaa !178
  %i.ac = getelementptr i8, ptr %i.d, i64 208
  %i.ad = getelementptr i8, ptr %i.f, i64 56
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !163
  %i.ae = getelementptr i8, ptr %i.f, i64 72
  store i16 0, ptr %i.ae, align 8, !tbaa !179
  %i.af = getelementptr i8, ptr %i.f, i64 74
  store i8 0, ptr %i.af, align 2, !tbaa !180
  %i.ag = getelementptr i8, ptr %i.f, i64 75
  store i8 0, ptr %i.ag, align 1, !tbaa !181
  %i.ah = icmp slt i32 %2, %i.x
  br i1 %i.ah, label %.lr.ph.preheader.i, label %_PyFrame_Initialize.exit

.lr.ph.preheader.i:                               ; preds = %_PyStackRef_FromPyObjectNew.exit.i
  %i.ai = sext i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.ai, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv.i
  store i64 1, ptr %i.aj, align 8, !tbaa !124
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ak = load i32, ptr %i.w, align 8, !tbaa !177
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next.i, %i.al
  br i1 %i.am, label %.lr.ph.i, label %_PyFrame_Initialize.exit, !llvm.loop !1

_PyFrame_Initialize.exit:                         ; preds = %.lr.ph.i, %_PyStackRef_FromPyObjectNew.exit.i
  ret ptr %i.f
}

end_hunk_5
