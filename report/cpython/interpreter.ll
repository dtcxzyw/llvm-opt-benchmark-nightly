Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/interpreter?download=true
inline.NumInlined: 2198
inline.NumDeleted: 126
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Test_EvalFrame:bb.a
  %i.aox = zext nneg i32 %i.aov to i64
  br label %.lr.ph12135

.lr.ph12135:                                      ; preds = %.lr.ph12135.preheader, %PyStackRef_CLOSE.exit10620
  %indvars.iv13228 = phi i64 [ %i.aox, %.lr.ph12135.preheader ], [ %indvars.iv.next13229, %PyStackRef_CLOSE.exit10620 ] ; 3 uses
  %i.aoy = getelementptr [8 x i8], ptr %i.aof, i64 %indvars.iv13228 ; 2 uses
  %.sroa.03606.0.copyload = load i64, ptr %i.aoy, align 8, !tbaa !30 ; 2 uses
  store i64 1, ptr %i.aoy, align 8, !tbaa !30
  %i.aoz = and i64 %.sroa.03606.0.copyload, 1
  %.not.not.i10619 = icmp eq i64 %i.aoz, 0
  br i1 %.not.not.i10619, label %bb.jj, label %PyStackRef_CLOSE.exit10620

bb.jj:                                            ; preds = %.lr.ph12135
  %i.apa = inttoptr i64 %.sroa.03606.0.copyload to ptr ; 3 uses
  %i.apb = load i32, ptr %i.apa, align 8, !tbaa !30
  %i.apc = add i32 %i.apb, -1                     ; 2 uses
  store i32 %i.apc, ptr %i.apa, align 8, !tbaa !30
  %i.apd = icmp eq i32 %i.apc, 0
  br i1 %i.apd, label %bb.jk, label %PyStackRef_CLOSE.exit10620

bb.jk:                                            ; preds = %bb.jj
  call void @_Py_Dealloc(ptr noundef nonnull %i.apa) #8
  br label %PyStackRef_CLOSE.exit10620

PyStackRef_CLOSE.exit10620:                       ; preds = %.lr.ph12135, %bb.jj, %bb.jk
  %indvars.iv.next13229 = add nsw i64 %indvars.iv13228, -1
  %i.ape = icmp sgt i64 %indvars.iv13228, 0
  br i1 %i.ape, label %.lr.ph12135, label %._crit_edge12136.loopexit, !llvm.loop !69

._crit_edge12136.loopexit:                        ; preds = %PyStackRef_CLOSE.exit10620
  %.4.val10278.pre = load ptr, ptr %i.aou, align 8, !tbaa !50
  br label %._crit_edge12136

._crit_edge12136:                                 ; preds = %._crit_edge12136.loopexit, %bb.ji
  %.4.val10278 = phi ptr [ %.4.val10278.pre, %._crit_edge12136.loopexit ], [ %.4.val1003611565, %bb.ji ]
  %i.apf = getelementptr [8 x i8], ptr %.4.val10278, i64 %i.aoe ; 3 uses
  %i.apg = icmp eq ptr %i.aot, null
  br i1 %i.apg, label %.loopexit.loopexit, label %bb.jl

bb.jl:                                            ; preds = %._crit_edge12136
  %i.aph = ptrtoint ptr %i.aot to i64
  store i64 %i.aph, ptr %i.apf, align 8, !tbaa !30
  %i.api = getelementptr i8, ptr %i.apf, i64 8
  %i.apj = load i16, ptr %i.aoc, align 2, !tbaa !101 ; 2 uses
  %.sroa.23601.0.extract.shift = lshr i16 %i.apj, 8
  %.sroa.23601.0.extract.trunc = zext nneg i16 %.sroa.23601.0.extract.shift to i32
  %i.apk = and i16 %i.apj, 255
  %i.apl = zext nneg i16 %i.apk to i64
  br label %.backedge.backedge

bb.jm:                                            ; preds = %.backedge
  %i.apm = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.apm, align 8, !tbaa !33
  %i.apn = getelementptr i8, ptr %.32, i64 2      ; 3 uses
  %i.apo = sub i32 0, %.09034
  %i.app = sext i32 %i.apo to i64                 ; 3 uses
  %i.apq = getelementptr [8 x i8], ptr %.4.val1003611565, i64 %i.app
  %i.apr = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1003611565, ptr %i.apr, align 8, !tbaa !50
  %i.aps = call ptr @_Py_BuildString_StackRefSteal(ptr noundef %i.apq, i32 noundef %.09034) #8 ; 3 uses
  %.4.val10277 = load ptr, ptr %i.apr, align 8, !tbaa !50 ; 3 uses
  %i.apt = icmp eq ptr %i.aps, null
  br i1 %i.apt, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  %i.apu = getelementptr [8 x i8], ptr %.4.val10277, i64 %i.app
  br label %.loopexit

bb.jo:                                            ; preds = %bb.jm
  %i.apv = getelementptr i8, ptr %i.aps, i64 6
  %i.apw = load i16, ptr %i.apv, align 2, !tbaa !30
  %i.apx = and i16 %i.apw, 1
  %i.apy = ptrtoint ptr %i.aps to i64
  %i.apz = zext nneg i16 %i.apx to i64
  %i.aqa = or i64 %i.apz, %i.apy
  %i.aqb = getelementptr [8 x i8], ptr %.4.val10277, i64 %i.app
  store i64 %i.aqa, ptr %i.aqb, align 8, !tbaa !30
  %i.aqc = sub i32 1, %.09034
  %i.aqd = sext i32 %i.aqc to i64
  %i.aqe = getelementptr [8 x i8], ptr %.4.val10277, i64 %i.aqd
  %i.aqf = load i16, ptr %i.apn, align 2, !tbaa !101 ; 2 uses
  %.sroa.23594.0.extract.shift = lshr i16 %i.aqf, 8
  %.sroa.23594.0.extract.trunc = zext nneg i16 %.sroa.23594.0.extract.shift to i32
  %i.aqg = and i16 %i.aqf, 255
  %i.aqh = zext nneg i16 %i.aqg to i64
  br label %.backedge.backedge

bb.jp:                                            ; preds = %.backedge
  %i.aqi = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.aqi, align 8, !tbaa !33
  %i.aqj = getelementptr i8, ptr %.32, i64 2      ; 3 uses
  %i.aqk = getelementptr i8, ptr %.4.val1003611565, i64 -8
  %.sroa.03589.0.copyload = load i64, ptr %i.aqk, align 8, !tbaa !30 ; 3 uses
  %i.aql = getelementptr i8, ptr %.4.val1003611565, i64 -16
  %.sroa.03591.0.copyload = load i64, ptr %i.aql, align 8, !tbaa !30 ; 3 uses
  %i.aqm = and i64 %.sroa.03591.0.copyload, -2
  %i.aqn = inttoptr i64 %i.aqm to ptr
  %i.aqo = and i64 %.sroa.03589.0.copyload, -2
  %i.aqp = inttoptr i64 %i.aqo to ptr
  %i.aqq = getelementptr i8, ptr %.4, i64 64      ; 6 uses
  store ptr %.4.val1003611565, ptr %i.aqq, align 8, !tbaa !50
  %i.aqr = call ptr @_PyTemplate_Build(ptr noundef %i.aqn, ptr noundef %i.aqp) #8 ; 3 uses
  %.4.val10276 = load ptr, ptr %i.aqq, align 8, !tbaa !50
  %i.aqs = getelementptr i8, ptr %.4.val10276, i64 -8
  store ptr %i.aqs, ptr %i.aqq, align 8, !tbaa !50
  %i.aqt = and i64 %.sroa.03589.0.copyload, 1
  %.not.not.i10621 = icmp eq i64 %i.aqt, 0
  br i1 %.not.not.i10621, label %bb.jq, label %PyStackRef_CLOSE.exit10622

bb.jq:                                            ; preds = %bb.jp
  %i.aqu = inttoptr i64 %.sroa.03589.0.copyload to ptr ; 3 uses
  %i.aqv = load i32, ptr %i.aqu, align 8, !tbaa !30
  %i.aqw = add i32 %i.aqv, -1                     ; 2 uses
  store i32 %i.aqw, ptr %i.aqu, align 8, !tbaa !30
  %i.aqx = icmp eq i32 %i.aqw, 0
  br i1 %i.aqx, label %bb.jr, label %PyStackRef_CLOSE.exit10622

bb.jr:                                            ; preds = %bb.jq
  call void @_Py_Dealloc(ptr noundef nonnull %i.aqu) #8
  br label %PyStackRef_CLOSE.exit10622

PyStackRef_CLOSE.exit10622:                       ; preds = %bb.jp, %bb.jq, %bb.jr
  %.4.val10275 = load ptr, ptr %i.aqq, align 8, !tbaa !50
  %i.aqy = getelementptr i8, ptr %.4.val10275, i64 -8
  store ptr %i.aqy, ptr %i.aqq, align 8, !tbaa !50
  %i.aqz = and i64 %.sroa.03591.0.copyload, 1
  %.not.not.i10623 = icmp eq i64 %i.aqz, 0
  br i1 %.not.not.i10623, label %bb.js, label %PyStackRef_CLOSE.exit10624

bb.js:                                            ; preds = %PyStackRef_CLOSE.exit10622
  %i.ara = inttoptr i64 %.sroa.03591.0.copyload to ptr ; 3 uses
  %i.arb = load i32, ptr %i.ara, align 8, !tbaa !30
  %i.arc = add i32 %i.arb, -1                     ; 2 uses
  store i32 %i.arc, ptr %i.ara, align 8, !tbaa !30
  %i.ard = icmp eq i32 %i.arc, 0
  br i1 %i.ard, label %bb.jt, label %PyStackRef_CLOSE.exit10624

bb.jt:                                            ; preds = %bb.js
  call void @_Py_Dealloc(ptr noundef nonnull %i.ara) #8
  br label %PyStackRef_CLOSE.exit10624

PyStackRef_CLOSE.exit10624:                       ; preds = %PyStackRef_CLOSE.exit10622, %bb.js, %bb.jt
  %.4.val10274 = load ptr, ptr %i.aqq, align 8, !tbaa !50 ; 3 uses
  %i.are = icmp eq ptr %i.aqr, null
  br i1 %i.are, label %.loopexit.loopexit, label %bb.ju

bb.ju:                                            ; preds = %PyStackRef_CLOSE.exit10624
  %i.arf = getelementptr i8, ptr %i.aqr, i64 6
  %i.arg = load i16, ptr %i.arf, align 2, !tbaa !30
  %i.arh = and i16 %i.arg, 1
  %i.ari = ptrtoint ptr %i.aqr to i64
  %i.arj = zext nneg i16 %i.arh to i64
  %i.ark = or i64 %i.arj, %i.ari
  store i64 %i.ark, ptr %.4.val10274, align 8, !tbaa !30
  %i.arl = getelementptr i8, ptr %.4.val10274, i64 8
  %i.arm = load i16, ptr %i.aqj, align 2, !tbaa !101 ; 2 uses
  %.sroa.23582.0.extract.shift = lshr i16 %i.arm, 8
  %.sroa.23582.0.extract.trunc = zext nneg i16 %.sroa.23582.0.extract.shift to i32
  %i.arn = and i16 %i.arm, 255
  %i.aro = zext nneg i16 %i.arn to i64
  br label %.backedge.backedge

bb.jv:                                            ; preds = %.backedge
  %i.arp = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.arp, align 8, !tbaa !33
  %i.arq = getelementptr i8, ptr %.32, i64 2      ; 3 uses
  %i.arr = sub i32 0, %.09034
  %i.ars = sext i32 %i.arr to i64
  %i.art = getelementptr [8 x i8], ptr %.4.val1003611565, i64 %i.ars ; 2 uses
  %i.aru = sext i32 %.09034 to i64
  %i.arv = call ptr @_PyTuple_FromStackRefStealOnSuccess(ptr noundef %i.art, i64 noundef %i.aru) #8 ; 2 uses
  %i.arw = icmp eq ptr %i.arv, null
  br i1 %i.arw, label %.loopexit.loopexit, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.arx = ptrtoint ptr %i.arv to i64
  store i64 %i.arx, ptr %i.art, align 8, !tbaa !30
  %i.ary = sub i32 1, %.09034
  %i.arz = sext i32 %i.ary to i64
  %i.asa = getelementptr [8 x i8], ptr %.4.val1003611565, i64 %i.arz
  %i.asb = load i16, ptr %i.arq, align 2, !tbaa !101 ; 2 uses
  %.sroa.23575.0.extract.shift = lshr i16 %i.asb, 8
  %.sroa.23575.0.extract.trunc = zext nneg i16 %.sroa.23575.0.extract.shift to i32
  %i.asc = and i16 %i.asb, 255
  %i.asd = zext nneg i16 %i.asc to i64
  br label %.backedge.backedge

bb.jx:                                            ; preds = %.backedge
  %i.ase = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.ase, align 8, !tbaa !33
  call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.Test_EvalFrame, ptr noundef nonnull @.str.1) #7
  unreachable

bb.jy:                                            ; preds = %.backedge
  %i.asf = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.asf, align 8, !tbaa !33
  %i.asg = getelementptr i8, ptr %.32, i64 8
  br label %_PyThreadState_HasStackSpace.exit10638.thread

_PyThreadState_HasStackSpace.exit10638.thread:    ; preds = %bb.vh, %bb.lr, %bb.kv, %bb.wj, %bb.wi, %bb.wc, %bb.wb, %bb.vv, %bb.vu, %bb.vp, %bb.vo, %bb.vn, %bb.vm, %bb.vi, %_PyThreadState_HasStackSpace.exit10803, %bb.vg, %bb.vf, %bb.ve, %bb.vd, %bb.uz, %bb.up, %bb.uo, %bb.un, %bb.um, %bb.ul, %bb.ue, %bb.ud, %bb.uc, %bb.ub, %bb.ua, %bb.tw, %bb.tv, %bb.tu, %bb.tt, %bb.tp, %bb.to, %bb.tn, %bb.tm, %bb.tc, %bb.tb, %bb.ta, %bb.ss, %bb.sr, %bb.qi, %bb.qh, %bb.nb, %bb.na, %bb.mz, %bb.my, %bb.mu, %bb.mt, %bb.mp, %bb.mo, %bb.mk, %bb.mj, %PyStackRef_CLOSE.exit10663, %bb.lx, %bb.lw, %bb.lv, %bb.lu, %bb.ls, %_PyThreadState_HasStackSpace.exit10655, %bb.lq, %bb.lp, %PyStackRef_CLOSE.exit10653, %bb.lh, %bb.lg, %bb.lf, %_PyThreadState_HasStackSpace.exit10638, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.jy
  %.69046 = phi ptr [ %.4.val1003611565, %bb.jy ], [ %.4.val1003611565, %bb.kr ], [ %.4.val1003611565, %bb.ku ], [ %.4.val1003611565, %_PyThreadState_HasStackSpace.exit10638 ], [ %.4.val1003611565, %bb.kt ], [ %.4.val1003611565, %bb.ks ], [ %.4.val1003611565, %bb.lf ], [ %.4.val1003611565, %bb.lh ], [ %.4.val10262, %bb.lp ], [ %.4.val10262, %bb.lq ], [ %.4.val10262, %bb.ls ], [ %.4.val10262, %_PyThreadState_HasStackSpace.exit10655 ], [ %.4.val10262, %PyStackRef_CLOSE.exit10653 ], [ %.4.val1003611565, %bb.lg ], [ %.4.val1003611565, %bb.lu ], [ %.4.val1003611565, %bb.lv ], [ %.4.val10260, %PyStackRef_CLOSE.exit10663 ], [ %.4.val1003611565, %bb.lx ], [ %.4.val1003611565, %bb.lw ], [ %.4.val1003611565, %bb.mk ], [ %.4.val1003611565, %bb.mj ], [ %.4.val1003611565, %bb.mp ], [ %.4.val1003611565, %bb.mo ], [ %.4.val1003611565, %bb.mu ], [ %.4.val1003611565, %bb.mt ], [ %.4.val1003611565, %bb.my ], [ %.4.val1003611565, %bb.na ], [ %.4.val1003611565, %bb.nb ], [ %.4.val1003611565, %bb.mz ], [ %.4.val1003611565, %bb.qi ], [ %.4.val1003611565, %bb.qh ], [ %.4.val1003611565, %bb.ss ], [ %.4.val1003611565, %bb.sr ], [ %.4.val1003611565, %bb.ta ], [ %.4.val1003611565, %bb.tb ], [ %.4.val1003611565, %bb.tc ], [ %.4.val1003611565, %bb.tm ], [ %.4.val1003611565, %bb.to ], [ %.4.val1003611565, %bb.tp ], [ %.4.val1003611565, %bb.tn ], [ %.4.val1003611565, %bb.tt ], [ %.4.val1003611565, %bb.tv ], [ %.4.val1003611565, %bb.tw ], [ %.4.val1003611565, %bb.tu ], [ %.4.val1003611565, %bb.ua ], [ %.4.val1003611565, %bb.ud ], [ %.4.val1003611565, %bb.ue ], [ %.4.val1003611565, %bb.uc ], [ %.4.val1003611565, %bb.ub ], [ %.4.val1003611565, %bb.ul ], [ %.4.val1003611565, %bb.un ], [ %.4.val1003611565, %bb.uo ], [ %.4.val1003611565, %bb.up ], [ %.4.val1003611565, %bb.um ], [ %.4.val1003611565, %bb.uz ], [ %.4.val1003611565, %bb.vh ], [ %.4.val1003611565, %bb.vd ], [ %.4.val1003611565, %bb.vf ], [ %.4.val1003611565, %bb.vg ], [ %.4.val1003611565, %bb.vi ], [ %.4.val1003611565, %_PyThreadState_HasStackSpace.exit10803 ], [ %.4.val1003611565, %bb.ve ], [ %.4.val1003611565, %bb.vm ], [ %.4.val1003611565, %bb.vo ], [ %.4.val1003611565, %bb.vp ], [ %.4.val1003611565, %bb.vn ], [ %.4.val1003611565, %bb.vv ], [ %.4.val1003611565, %bb.vu ], [ %.4.val1003611565, %bb.wc ], [ %.4.val1003611565, %bb.wb ], [ %.4.val1003611565, %bb.wj ], [ %.4.val1003611565, %bb.wi ], [ %.4.val10262, %bb.lr ], [ %.4.val1003611565, %bb.kv ] ; 6 uses
  %.19036 = phi ptr [ %i.asg, %bb.jy ], [ %i.avv, %bb.kr ], [ %i.avv, %bb.ku ], [ %i.avv, %_PyThreadState_HasStackSpace.exit10638 ], [ %i.avv, %bb.kt ], [ %i.avv, %bb.ks ], [ %i.azj, %bb.lf ], [ %i.azj, %bb.lh ], [ %i.azj, %bb.lp ], [ %i.azj, %bb.lq ], [ %i.azj, %bb.ls ], [ %i.azj, %_PyThreadState_HasStackSpace.exit10655 ], [ %i.azj, %PyStackRef_CLOSE.exit10653 ], [ %i.azj, %bb.lg ], [ %i.bdo, %bb.lu ], [ %i.bdo, %bb.lv ], [ %i.bdo, %PyStackRef_CLOSE.exit10663 ], [ %i.bdo, %bb.lx ], [ %i.bdo, %bb.lw ], [ %i.bgk, %bb.mk ], [ %i.bgk, %bb.mj ], [ %i.bhx, %bb.mp ], [ %i.bhx, %bb.mo ], [ %i.bjj, %bb.mu ], [ %i.bjj, %bb.mt ], [ %i.bkv, %bb.my ], [ %i.bkv, %bb.na ], [ %i.bkv, %bb.nb ], [ %i.bkv, %bb.mz ], [ %i.bzh, %bb.qi ], [ %i.bzh, %bb.qh ], [ %i.clu, %bb.ss ], [ %i.clu, %bb.sr ], [ %i.cnj, %bb.ta ], [ %i.cnj, %bb.tb ], [ %i.cnj, %bb.tc ], [ %i.cpd, %bb.tm ], [ %i.cpd, %bb.to ], [ %i.cpd, %bb.tp ], [ %i.cpd, %bb.tn ], [ %i.cra, %bb.tt ], [ %i.cra, %bb.tv ], [ %i.cra, %bb.tw ], [ %i.cra, %bb.tu ], [ %i.csx, %bb.ua ], [ %i.csx, %bb.ud ], [ %i.csx, %bb.ue ], [ %i.csx, %bb.uc ], [ %i.csx, %bb.ub ], [ %i.cvd, %bb.ul ], [ %i.cvd, %bb.un ], [ %i.cvd, %bb.uo ], [ %i.cvd, %bb.up ], [ %i.cvd, %bb.um ], [ %i.cxx, %bb.uz ], [ %i.czi, %bb.vh ], [ %i.czi, %bb.vd ], [ %i.czi, %bb.vf ], [ %i.czi, %bb.vg ], [ %i.czi, %bb.vi ], [ %i.czi, %_PyThreadState_HasStackSpace.exit10803 ], [ %i.czi, %bb.ve ], [ %i.ddo, %bb.vm ], [ %i.ddo, %bb.vo ], [ %i.ddo, %bb.vp ], [ %i.ddo, %bb.vn ], [ %i.dfl, %bb.vv ], [ %i.dfl, %bb.vu ], [ %i.dgq, %bb.wc ], [ %i.dgq, %bb.wb ], [ %i.dhv, %bb.wj ], [ %i.dhv, %bb.wi ], [ %i.azj, %bb.lr ], [ %i.avv, %bb.kv ] ; 5 uses
  %i.ash = xor i32 %.09034, -1
  %i.asi = sext i32 %i.ash to i64                 ; 4 uses
  %i.asj = getelementptr [8 x i8], ptr %.69046, i64 %i.asi ; 2 uses
  %.sroa.03552.0.copyload = load i64, ptr %i.asj, align 8, !tbaa !30 ; 5 uses
  %i.ask = sub i32 -2, %.09034
  %i.asl = sext i32 %i.ask to i64                 ; 6 uses
  %i.asm = getelementptr [8 x i8], ptr %.69046, i64 %i.asl ; 2 uses
  %.sroa.03559.0.copyload = load i64, ptr %i.asm, align 8, !tbaa !30 ; 7 uses
  %i.asn = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %.val10341 = load i16, ptr %i.asn, align 2, !tbaa !101 ; 2 uses
  %i.aso = icmp ult i16 %.val10341, 7
  br i1 %i.aso, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %_PyThreadState_HasStackSpace.exit10638.thread
  %i.asp = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.69046, ptr %i.asp, align 8, !tbaa !50
  %i.asq = icmp ne i64 %.sroa.03552.0.copyload, 1
  %i.asr = zext i1 %i.asq to i32
  %i.ass = add i32 %.09034, %i.asr
  call void @_Py_Specialize_Call(i64 %.sroa.03559.0.copyload, i64 %.sroa.03552.0.copyload, ptr noundef nonnull %.32, i32 noundef %i.ass) #8
  %.4.val10273 = load ptr, ptr %i.asp, align 8, !tbaa !50
  %i.ast = load i8, ptr %.32, align 2, !tbaa !30
  %i.asu = zext i8 %i.ast to i64
  br label %.backedge.backedge

bb.ka:                                            ; preds = %_PyThreadState_HasStackSpace.exit10638.thread
  %i.asv = add i16 %.val10341, -8
  store i16 %i.asv, ptr %i.asn, align 2, !tbaa !101
  %i.asw = and i64 %.sroa.03559.0.copyload, 3
  %i.asx = icmp eq i64 %i.asw, 3
  br i1 %i.asx, label %PyStackRef_TYPE.exit.thread, label %PyStackRef_TYPE.exit

PyStackRef_TYPE.exit:                             ; preds = %bb.ka
  %6 = and i64 %.sroa.03559.0.copyload, -2
  %7 = inttoptr i64 %6 to ptr                     ; 3 uses
  %8 = getelementptr i8, ptr %7, i64 8
  %.val.i10625 = load ptr, ptr %8, align 8, !tbaa !43
  %i.asy = icmp eq ptr %.val.i10625, @PyMethod_Type
  %i.asz = icmp eq i64 %.sroa.03552.0.copyload, 1
  %or.cond = select i1 %i.asy, i1 %i.asz, i1 false
  br i1 %or.cond, label %bb.kb, label %PyStackRef_TYPE.exit.thread

bb.kb:                                            ; preds = %PyStackRef_TYPE.exit
  %i.ata = getelementptr i8, ptr %7, i64 24
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !197 ; 4 uses
  %i.atc = load i32, ptr %i.atb, align 8, !tbaa !30 ; 2 uses
  %.not.i10627 = icmp sgt i32 %i.atc, -1
  br i1 %.not.i10627, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.atd = ptrtoint ptr %i.atb to i64
  %i.ate = or i64 %i.atd, 1
  br label %_PyStackRef_FromPyObjectNew.exit10629

bb.kd:                                            ; preds = %bb.kb
  %i.atf = add nuw i32 %i.atc, 1
  store i32 %i.atf, ptr %i.atb, align 8, !tbaa !30
  %i.atg = ptrtoint ptr %i.atb to i64
  br label %_PyStackRef_FromPyObjectNew.exit10629

_PyStackRef_FromPyObjectNew.exit10629:            ; preds = %bb.kc, %bb.kd
  %.sroa.0.0.i10628 = phi i64 [ %i.ate, %bb.kc ], [ %i.atg, %bb.kd ] ; 2 uses
  %i.ath = getelementptr i8, ptr %7, i64 16
  %i.ati = load ptr, ptr %i.ath, align 8, !tbaa !198 ; 4 uses
  %i.atj = load i32, ptr %i.ati, align 8, !tbaa !30 ; 2 uses
  %.not.i10630 = icmp sgt i32 %i.atj, -1
  br i1 %.not.i10630, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10629
  %i.atk = ptrtoint ptr %i.ati to i64
  %i.atl = or i64 %i.atk, 1
  br label %_PyStackRef_FromPyObjectNew.exit10632

bb.kf:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10629
  %i.atm = add nuw i32 %i.atj, 1
  store i32 %i.atm, ptr %i.ati, align 8, !tbaa !30
  %i.atn = ptrtoint ptr %i.ati to i64
  br label %_PyStackRef_FromPyObjectNew.exit10632

_PyStackRef_FromPyObjectNew.exit10632:            ; preds = %bb.ke, %bb.kf
  %.sroa.0.0.i10631 = phi i64 [ %i.atl, %bb.ke ], [ %i.atn, %bb.kf ] ; 2 uses
  store i64 %.sroa.0.0.i10631, ptr %i.asm, align 8, !tbaa !30
  store i64 %.sroa.0.0.i10628, ptr %i.asj, align 8, !tbaa !30
  %i.ato = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.69046, ptr %i.ato, align 8, !tbaa !50
  %i.atp = and i64 %.sroa.03559.0.copyload, 1
  %.not.not.i10633 = icmp eq i64 %i.atp, 0
  br i1 %.not.not.i10633, label %bb.kg, label %PyStackRef_CLOSE.exit10634

bb.kg:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10632
  %i.atq = inttoptr i64 %.sroa.03559.0.copyload to ptr ; 3 uses
  %i.atr = load i32, ptr %i.atq, align 8, !tbaa !30
  %i.ats = add i32 %i.atr, -1                     ; 2 uses
  store i32 %i.ats, ptr %i.atq, align 8, !tbaa !30
  %i.att = icmp eq i32 %i.ats, 0
  br i1 %i.att, label %bb.kh, label %PyStackRef_CLOSE.exit10634

bb.kh:                                            ; preds = %bb.kg
  call void @_Py_Dealloc(ptr noundef nonnull %i.atq) #8
  br label %PyStackRef_CLOSE.exit10634

PyStackRef_CLOSE.exit10634:                       ; preds = %_PyStackRef_FromPyObjectNew.exit10632, %bb.kg, %bb.kh
  %.4.val10272 = load ptr, ptr %i.ato, align 8, !tbaa !50
  br label %PyStackRef_TYPE.exit.thread

PyStackRef_TYPE.exit.thread:                      ; preds = %bb.ka, %PyStackRef_CLOSE.exit10634, %PyStackRef_TYPE.exit
  %.sroa.03552.0 = phi i64 [ %.sroa.0.0.i10628, %PyStackRef_CLOSE.exit10634 ], [ %.sroa.03552.0.copyload, %PyStackRef_TYPE.exit ], [ %.sroa.03552.0.copyload, %bb.ka ] ; 3 uses
  %.sroa.03559.0 = phi i64 [ %.sroa.0.0.i10631, %PyStackRef_CLOSE.exit10634 ], [ %.sroa.03559.0.copyload, %PyStackRef_TYPE.exit ], [ %.sroa.03559.0.copyload, %bb.ka ] ; 5 uses
  %.79047 = phi ptr [ %.4.val10272, %PyStackRef_CLOSE.exit10634 ], [ %.69046, %PyStackRef_TYPE.exit ], [ %.69046, %bb.ka ] ; 7 uses
  %i.atu = sub i32 0, %.09034
  %i.atv = sext i32 %i.atu to i64
  %i.atw = getelementptr [8 x i8], ptr %.79047, i64 %i.atv
  %i.atx = and i64 %.sroa.03559.0, -2
  %i.aty = inttoptr i64 %i.atx to ptr             ; 4 uses
  %i.atz = icmp ne i64 %.sroa.03552.0, 1          ; 2 uses
  %.09081.idx = select i1 %i.atz, i64 -8, i64 0
  %.09081 = getelementptr i8, ptr %i.atw, i64 %.09081.idx ; 2 uses
  %i.aua = zext i1 %i.atz to i32
  %.09080 = add i32 %.09034, %i.aua               ; 2 uses
  %i.aub = getelementptr i8, ptr %i.aty, i64 8
  %.val9887 = load ptr, ptr %i.aub, align 8, !tbaa !43
  %i.auc = icmp eq ptr %.val9887, @PyFunction_Type
  br i1 %i.auc, label %bb.ki, label %bb.ko

bb.ki:                                            ; preds = %PyStackRef_TYPE.exit.thread
  %i.aud = load ptr, ptr %i.lty, align 8, !tbaa !32
  %i.aue = getelementptr i8, ptr %i.aud, i64 8568
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !177
  %.not9691 = icmp eq ptr %i.auf, null
  br i1 %.not9691, label %bb.kj, label %bb.ko

bb.kj:                                            ; preds = %bb.ki
  %i.aug = getelementptr i8, ptr %i.aty, i64 136
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !199
  %i.aui = icmp eq ptr %i.auh, @_PyFunction_Vectorcall
  br i1 %i.aui, label %bb.kk, label %bb.ko

bb.kk:                                            ; preds = %bb.kj
  %i.auj = getelementptr i8, ptr %i.aty, i64 48
  %.val10364 = load ptr, ptr %i.auj, align 8, !tbaa !54
  %i.auk = getelementptr i8, ptr %.val10364, i64 48
  %i.aul = load i32, ptr %i.auk, align 8, !tbaa !39
  %i.aum = and i32 %i.aul, 1
  %.not9692 = icmp eq i32 %i.aum, 0
  br i1 %.not9692, label %bb.kl, label %_Py_NewRef.exit

bb.kl:                                            ; preds = %bb.kk
  %i.aun = getelementptr i8, ptr %i.aty, i64 16
  %.val10399 = load ptr, ptr %i.aun, align 8, !tbaa !200 ; 4 uses
  %i.auo = load i32, ptr %.val10399, align 8, !tbaa !30 ; 2 uses
  %i.aup = icmp ugt i32 %i.auo, -1073741825
  br i1 %i.aup, label %_Py_NewRef.exit, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.auq = add nuw i32 %i.auo, 1
  store i32 %i.auq, ptr %.val10399, align 8, !tbaa !30
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.km, %bb.kl, %bb.kk
  %i.aur = phi ptr [ null, %bb.kk ], [ %.val10399, %bb.kl ], [ %.val10399, %bb.km ]
  %i.aus = getelementptr [8 x i8], ptr %.79047, i64 %i.asl
  store i64 %.sroa.03559.0, ptr %i.aus, align 8, !tbaa !30
  %i.aut = getelementptr [8 x i8], ptr %.79047, i64 %i.asi
  store i64 %.sroa.03552.0, ptr %i.aut, align 8, !tbaa !30
  %i.auu = getelementptr i8, ptr %.4, i64 64      ; 3 uses
  store ptr %.79047, ptr %i.auu, align 8, !tbaa !50
  %i.auv = sext i32 %.09080 to i64
  %i.auw = call ptr @_PyEvalFramePushAndInit(ptr noundef nonnull %0, i64 %.sroa.03559.0, ptr noundef %i.aur, ptr noundef %.09081, i64 noundef %i.auv, ptr noundef null, ptr noundef nonnull %.4) #8 ; 2 uses
  %.4.val10271 = load ptr, ptr %i.auu, align 8, !tbaa !50
  %i.aux = getelementptr [8 x i8], ptr %.4.val10271, i64 %i.asl ; 2 uses
  %i.auy = icmp eq ptr %i.auw, null
  br i1 %i.auy, label %.loopexit, label %bb.kn

bb.kn:                                            ; preds = %_Py_NewRef.exit
  %i.auz = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.auz, align 8, !tbaa !59
  store ptr %i.aux, ptr %i.auu, align 8, !tbaa !50
  br label %.sink.split

bb.ko:                                            ; preds = %bb.kj, %bb.ki, %PyStackRef_TYPE.exit.thread
  %i.ava = getelementptr [8 x i8], ptr %.79047, i64 %i.asl
  store i64 %.sroa.03559.0, ptr %i.ava, align 8, !tbaa !30
  %i.avb = getelementptr [8 x i8], ptr %.79047, i64 %i.asi
  store i64 %.sroa.03552.0, ptr %i.avb, align 8, !tbaa !30
  %i.avc = getelementptr i8, ptr %.4, i64 64      ; 4 uses
  store ptr %.79047, ptr %i.avc, align 8, !tbaa !50
  %i.avd = call ptr @_Py_VectorCallInstrumentation_StackRefSteal(i64 %.sroa.03559.0, ptr noundef %.09081, i32 noundef %.09080, i64 1, i1 noundef zeroext false, ptr noundef nonnull %.4, ptr noundef nonnull %.32, ptr noundef %0) #8 ; 3 uses
  %.4.val10270 = load ptr, ptr %i.avc, align 8, !tbaa !50 ; 3 uses
  %i.ave = icmp eq ptr %i.avd, null
  br i1 %i.ave, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %bb.ko
  %i.avf = getelementptr [8 x i8], ptr %.4.val10270, i64 %i.asl
  br label %.loopexit

bb.kq:                                            ; preds = %bb.ko
  %i.avg = getelementptr i8, ptr %i.avd, i64 6
  %i.avh = load i16, ptr %i.avg, align 2, !tbaa !30
  %i.avi = and i16 %i.avh, 1
  %i.avj = ptrtoint ptr %i.avd to i64
  %i.avk = zext nneg i16 %i.avi to i64
  %i.avl = or i64 %i.avk, %i.avj
  %i.avm = getelementptr [8 x i8], ptr %.4.val10270, i64 %i.asl
  store i64 %i.avl, ptr %i.avm, align 8, !tbaa !30
  %i.avn = getelementptr [8 x i8], ptr %.4.val10270, i64 %i.asi ; 2 uses
  store ptr %i.avn, ptr %i.avc, align 8, !tbaa !50
  %i.avo = load atomic i64, ptr %i.ltx monotonic, align 8
  %i.avp = and i64 %i.avo, 255
  %.not.i10635 = icmp eq i64 %i.avp, 0
  br i1 %.not.i10635, label %check_periodics.exit.thread, label %check_periodics.exit

check_periodics.exit:                             ; preds = %bb.kq
  %i.avq = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #8
  %.4.val10269 = load ptr, ptr %i.avc, align 8, !tbaa !50 ; 2 uses
  %.not9693 = icmp eq i32 %i.avq, 0
  br i1 %.not9693, label %check_periodics.exit.thread, label %.loopexit.loopexit

check_periodics.exit.thread:                      ; preds = %bb.kq, %check_periodics.exit
  %.4.val1026911476 = phi ptr [ %.4.val10269, %check_periodics.exit ], [ %i.avn, %bb.kq ]
  %i.avr = load i16, ptr %.19036, align 2, !tbaa !101 ; 2 uses
  %.sroa.23521.0.extract.shift = lshr i16 %i.avr, 8
  %.sroa.23521.0.extract.trunc = zext nneg i16 %.sroa.23521.0.extract.shift to i32
  %i.avs = and i16 %i.avr, 255
  %i.avt = zext nneg i16 %i.avs to i64
  br label %.backedge.backedge

bb.kr:                                            ; preds = %.backedge
  %i.avu = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.avu, align 8, !tbaa !33
  %i.avv = getelementptr i8, ptr %.32, i64 8      ; 8 uses
  %i.avw = load ptr, ptr %i.lty, align 8, !tbaa !32
  %i.avx = getelementptr i8, ptr %i.avw, i64 8568
  %i.avy = load ptr, ptr %i.avx, align 8, !tbaa !177
  %.not9591 = icmp eq ptr %i.avy, null
  br i1 %.not9591, label %bb.ks, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.ks:                                            ; preds = %bb.kr
  %i.avz = xor i32 %.09034, -1
  %i.awa = sext i32 %i.avz to i64                 ; 2 uses
  %i.awb = getelementptr [8 x i8], ptr %.4.val1003611565, i64 %i.awa
  %.sroa.03512.0.copyload = load i64, ptr %i.awb, align 8, !tbaa !30
  %i.awc = sub i32 -2, %.09034
  %i.awd = sext i32 %i.awc to i64                 ; 3 uses
  %i.awe = getelementptr [8 x i8], ptr %.4.val1003611565, i64 %i.awd
  %.sroa.03515.0.copyload = load i64, ptr %i.awe, align 8, !tbaa !30 ; 3 uses
  %i.awf = getelementptr i8, ptr %.32, i64 4
  %.val10427 = load i32, ptr %i.awf, align 2
  %i.awg = and i64 %.sroa.03515.0.copyload, -2
  %i.awh = inttoptr i64 %i.awg to ptr             ; 4 uses
  %i.awi = icmp eq i64 %.sroa.03512.0.copyload, 1
  br i1 %i.awi, label %bb.kt, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.kt:                                            ; preds = %bb.ks
  %i.awj = getelementptr i8, ptr %i.awh, i64 8
  %.val10433 = load ptr, ptr %i.awj, align 8, !tbaa !43
  %i.awk = getelementptr i8, ptr %.val10433, i64 168
  %.val10433.val = load i64, ptr %i.awk, align 8, !tbaa !178
  %i.awl = and i64 %.val10433.val, 2147483648
  %.not11623 = icmp eq i64 %i.awl, 0
  br i1 %.not11623, label %_PyThreadState_HasStackSpace.exit10638.thread, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.awm = getelementptr i8, ptr %i.awh, i64 384
  %i.awn = load i32, ptr %i.awm, align 8, !tbaa !201
  %.not9593 = icmp eq i32 %i.awn, %.val10427
  br i1 %.not9593, label %bb.kv, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.kv:                                            ; preds = %bb.ku
  %i.awo = getelementptr i8, ptr %i.awh, i64 928
  %i.awp = load ptr, ptr %i.awo, align 8, !tbaa !202 ; 5 uses
  %i.awq = load ptr, ptr %i.lud, align 8, !tbaa !53 ; 2 uses
  %.not.i10637 = icmp eq ptr %i.awq, null
  br i1 %.not.i10637, label %_PyThreadState_HasStackSpace.exit10638.thread, label %_PyThreadState_HasStackSpace.exit10638

_PyThreadState_HasStackSpace.exit10638:           ; preds = %bb.kv
  %i.awr = getelementptr i8, ptr %i.awp, i64 48
  %i.aws = load ptr, ptr %i.awr, align 8, !tbaa !54
  %i.awt = getelementptr i8, ptr %i.aws, i64 76
  %i.awu = load i32, ptr %i.awt, align 4, !tbaa !55
  %i.awv = add i32 %i.awu, %i.luf
  %i.aww = sext i32 %i.awv to i64
  %i.awx = load ptr, ptr %i.lue, align 8, !tbaa !190
  %i.awy = ptrtoint ptr %i.awx to i64
  %i.awz = ptrtoint ptr %i.awq to i64
  %i.axa = sub i64 %i.awy, %i.awz
  %i.axb = ashr exact i64 %i.axa, 3
  %i.axc = icmp sgt i64 %i.axb, %i.aww
  br i1 %i.axc, label %bb.kw, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.kw:                                            ; preds = %_PyThreadState_HasStackSpace.exit10638
  %i.axd = getelementptr i8, ptr %.4, i64 64      ; 10 uses
  store ptr %.4.val1003611565, ptr %i.axd, align 8, !tbaa !50
  %i.axe = call ptr @PyType_GenericAlloc(ptr noundef nonnull %i.awh, i64 noundef 0) #8 ; 3 uses
  %.4.val10268 = load ptr, ptr %i.axd, align 8, !tbaa !50 ; 4 uses
  %i.axf = icmp eq ptr %i.axe, null
  br i1 %i.axf, label %.loopexit.loopexit, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.axg = getelementptr i8, ptr %i.axe, i64 6
  %i.axh = load i16, ptr %i.axg, align 2, !tbaa !30
  %i.axi = and i16 %i.axh, 1
  %i.axj = ptrtoint ptr %i.axe to i64
  %i.axk = zext nneg i16 %i.axi to i64
  %i.axl = or i64 %i.axk, %i.axj                  ; 4 uses
  %i.axm = load i32, ptr %i.awp, align 8, !tbaa !30 ; 2 uses
  %.not.i10639 = icmp sgt i32 %i.axm, -1
  br i1 %.not.i10639, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
end_hunk_0
begin_hunk_1_@Test_EvalFrame:bb.a
  %.sroa.23148.0.extract.trunc = zext nneg i16 %.sroa.23148.0.extract.shift to i32
  %i.bxv = and i16 %i.bxu, 255
  %i.bxw = zext nneg i16 %i.bxv to i64
  br label %.backedge.backedge

bb.qb:                                            ; preds = %.backedge
  %i.bxx = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.bxx, align 8, !tbaa !33
  %i.bxy = getelementptr i8, ptr %.32, i64 2      ; 3 uses
  %i.bxz = getelementptr i8, ptr %.4.val1003611565, i64 -8 ; 2 uses
  %.sroa.03139.0.copyload = load i64, ptr %i.bxz, align 8, !tbaa !30 ; 3 uses
  %i.bya = getelementptr i8, ptr %.4.val1003611565, i64 -16 ; 2 uses
  %.sroa.03143.0.copyload = load i64, ptr %i.bya, align 8, !tbaa !30 ; 3 uses
  %i.byb = and i64 %.sroa.03139.0.copyload, -2
  %i.byc = inttoptr i64 %i.byb to ptr
  %i.byd = and i64 %.sroa.03143.0.copyload, -2
  %i.bye = inttoptr i64 %i.byd to ptr
  %i.byf = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1003611565, ptr %i.byf, align 8, !tbaa !50
  %i.byg = sext i32 %.09034 to i64
  %i.byh = getelementptr [16 x i8], ptr @_PyIntrinsics_BinaryFunctions, i64 %i.byg
  %i.byi = load ptr, ptr %i.byh, align 8, !tbaa !215
  %i.byj = call ptr %i.byi(ptr noundef %0, ptr noundef %i.bye, ptr noundef %i.byc) #8 ; 3 uses
  store i64 1, ptr %i.bxz, align 8, !tbaa !30
  %i.byk = and i64 %.sroa.03139.0.copyload, 1
  %.not.not.i10723 = icmp eq i64 %i.byk, 0
  br i1 %.not.not.i10723, label %bb.qc, label %PyStackRef_CLOSE.exit10724

bb.qc:                                            ; preds = %bb.qb
  %i.byl = inttoptr i64 %.sroa.03139.0.copyload to ptr ; 3 uses
  %i.bym = load i32, ptr %i.byl, align 8, !tbaa !30
  %i.byn = add i32 %i.bym, -1                     ; 2 uses
  store i32 %i.byn, ptr %i.byl, align 8, !tbaa !30
  %i.byo = icmp eq i32 %i.byn, 0
  br i1 %i.byo, label %bb.qd, label %PyStackRef_CLOSE.exit10724

bb.qd:                                            ; preds = %bb.qc
  call void @_Py_Dealloc(ptr noundef nonnull %i.byl) #8
  br label %PyStackRef_CLOSE.exit10724

PyStackRef_CLOSE.exit10724:                       ; preds = %bb.qb, %bb.qc, %bb.qd
  store i64 1, ptr %i.bya, align 8, !tbaa !30
  %i.byp = and i64 %.sroa.03143.0.copyload, 1
  %.not.not.i10725 = icmp eq i64 %i.byp, 0
  br i1 %.not.not.i10725, label %bb.qe, label %PyStackRef_CLOSE.exit10726

bb.qe:                                            ; preds = %PyStackRef_CLOSE.exit10724
  %i.byq = inttoptr i64 %.sroa.03143.0.copyload to ptr ; 3 uses
  %i.byr = load i32, ptr %i.byq, align 8, !tbaa !30
  %i.bys = add i32 %i.byr, -1                     ; 2 uses
  store i32 %i.bys, ptr %i.byq, align 8, !tbaa !30
  %i.byt = icmp eq i32 %i.bys, 0
  br i1 %i.byt, label %bb.qf, label %PyStackRef_CLOSE.exit10726

bb.qf:                                            ; preds = %bb.qe
  call void @_Py_Dealloc(ptr noundef nonnull %i.byq) #8
  br label %PyStackRef_CLOSE.exit10726

PyStackRef_CLOSE.exit10726:                       ; preds = %PyStackRef_CLOSE.exit10724, %bb.qe, %bb.qf
  %.4.val10222 = load ptr, ptr %i.byf, align 8, !tbaa !50 ; 2 uses
  %i.byu = getelementptr i8, ptr %.4.val10222, i64 -16 ; 2 uses
  %i.byv = icmp eq ptr %i.byj, null
  br i1 %i.byv, label %.loopexit.loopexit, label %bb.qg

bb.qg:                                            ; preds = %PyStackRef_CLOSE.exit10726
  %i.byw = getelementptr i8, ptr %i.byj, i64 6
  %i.byx = load i16, ptr %i.byw, align 2, !tbaa !30
  %i.byy = and i16 %i.byx, 1
  %i.byz = ptrtoint ptr %i.byj to i64
  %i.bza = zext nneg i16 %i.byy to i64
  %i.bzb = or i64 %i.bza, %i.byz
  store i64 %i.bzb, ptr %i.byu, align 8, !tbaa !30
  %i.bzc = getelementptr i8, ptr %.4.val10222, i64 -8
  %i.bzd = load i16, ptr %i.bxy, align 2, !tbaa !101 ; 2 uses
  %.sroa.23129.0.extract.shift = lshr i16 %i.bzd, 8
  %.sroa.23129.0.extract.trunc = zext nneg i16 %.sroa.23129.0.extract.shift to i32
  %i.bze = and i16 %i.bzd, 255
  %i.bzf = zext nneg i16 %i.bze to i64
  br label %.backedge.backedge

bb.qh:                                            ; preds = %.backedge
  %i.bzg = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.bzg, align 8, !tbaa !33
  %i.bzh = getelementptr i8, ptr %.32, i64 8      ; 5 uses
  %i.bzi = getelementptr i8, ptr %.4.val1003611565, i64 -24
  %.sroa.03127.0.copyload = load i64, ptr %i.bzi, align 8, !tbaa !30
  %i.bzj = icmp eq i64 %.sroa.03127.0.copyload, 1
  br i1 %i.bzj, label %bb.qi, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.qi:                                            ; preds = %bb.qh
  %i.bzk = getelementptr i8, ptr %.4.val1003611565, i64 -32
  %.sroa.03125.0.copyload = load i64, ptr %i.bzk, align 8, !tbaa !30 ; 3 uses
  %i.bzl = and i64 %.sroa.03125.0.copyload, -2
  %i.bzm = inttoptr i64 %i.bzl to ptr
  %i.bzn = load ptr, ptr %i.lty, align 8, !tbaa !32
  %i.bzo = getelementptr i8, ptr %i.bzn, i64 223296
  %i.bzp = load ptr, ptr %i.bzo, align 8, !tbaa !216
  %.not9567 = icmp eq ptr %i.bzp, %i.bzm
  br i1 %.not9567, label %bb.qj, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.qj:                                            ; preds = %bb.qi
  %i.bzq = getelementptr i8, ptr %.4.val1003611565, i64 -8
  %.sroa.03121.0.copyload = load i64, ptr %i.bzq, align 8, !tbaa !30 ; 3 uses
  %i.bzr = getelementptr i8, ptr %.4.val1003611565, i64 -16
  %.sroa.03123.0.copyload = load i64, ptr %i.bzr, align 8, !tbaa !30 ; 3 uses
  %i.bzs = and i64 %.sroa.03123.0.copyload, -2
  %i.bzt = inttoptr i64 %i.bzs to ptr
  %i.bzu = and i64 %.sroa.03121.0.copyload, -2
  %i.bzv = inttoptr i64 %i.bzu to ptr
  %i.bzw = getelementptr i8, ptr %.4, i64 64      ; 8 uses
  store ptr %.4.val1003611565, ptr %i.bzw, align 8, !tbaa !50
  %i.bzx = call i32 @PyObject_IsInstance(ptr noundef %i.bzt, ptr noundef %i.bzv) #8 ; 2 uses
  %.4.val10221 = load ptr, ptr %i.bzw, align 8, !tbaa !50 ; 2 uses
  %i.bzy = icmp slt i32 %i.bzx, 0
  br i1 %i.bzy, label %.loopexit.loopexit, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.bzz = getelementptr i8, ptr %.4.val10221, i64 -8
  store ptr %i.bzz, ptr %i.bzw, align 8, !tbaa !50
  %i.caa = and i64 %.sroa.03121.0.copyload, 1
  %.not.not.i10727 = icmp eq i64 %i.caa, 0
  br i1 %.not.not.i10727, label %bb.ql, label %PyStackRef_CLOSE.exit10728

bb.ql:                                            ; preds = %bb.qk
  %i.cab = inttoptr i64 %.sroa.03121.0.copyload to ptr ; 3 uses
  %i.cac = load i32, ptr %i.cab, align 8, !tbaa !30
  %i.cad = add i32 %i.cac, -1                     ; 2 uses
  store i32 %i.cad, ptr %i.cab, align 8, !tbaa !30
  %i.cae = icmp eq i32 %i.cad, 0
  br i1 %i.cae, label %bb.qm, label %PyStackRef_CLOSE.exit10728

bb.qm:                                            ; preds = %bb.ql
  call void @_Py_Dealloc(ptr noundef nonnull %i.cab) #8
  br label %PyStackRef_CLOSE.exit10728

PyStackRef_CLOSE.exit10728:                       ; preds = %bb.qk, %bb.ql, %bb.qm
  %.4.val10220 = load ptr, ptr %i.bzw, align 8, !tbaa !50
  %i.caf = getelementptr i8, ptr %.4.val10220, i64 -8
  store ptr %i.caf, ptr %i.bzw, align 8, !tbaa !50
  %i.cag = and i64 %.sroa.03123.0.copyload, 1
  %.not.not.i10729 = icmp eq i64 %i.cag, 0
  br i1 %.not.not.i10729, label %bb.qn, label %PyStackRef_CLOSE.exit10730

bb.qn:                                            ; preds = %PyStackRef_CLOSE.exit10728
  %i.cah = inttoptr i64 %.sroa.03123.0.copyload to ptr ; 3 uses
  %i.cai = load i32, ptr %i.cah, align 8, !tbaa !30
  %i.caj = add i32 %i.cai, -1                     ; 2 uses
  store i32 %i.caj, ptr %i.cah, align 8, !tbaa !30
  %i.cak = icmp eq i32 %i.caj, 0
  br i1 %i.cak, label %bb.qo, label %PyStackRef_CLOSE.exit10730

bb.qo:                                            ; preds = %bb.qn
  call void @_Py_Dealloc(ptr noundef nonnull %i.cah) #8
  br label %PyStackRef_CLOSE.exit10730

PyStackRef_CLOSE.exit10730:                       ; preds = %PyStackRef_CLOSE.exit10728, %bb.qn, %bb.qo
  %.4.val10219 = load ptr, ptr %i.bzw, align 8, !tbaa !50
  %i.cal = getelementptr i8, ptr %.4.val10219, i64 -16
  store ptr %i.cal, ptr %i.bzw, align 8, !tbaa !50
  %i.cam = and i64 %.sroa.03125.0.copyload, 1
  %.not.not.i10731 = icmp eq i64 %i.cam, 0
  br i1 %.not.not.i10731, label %bb.qp, label %PyStackRef_CLOSE.exit10732

bb.qp:                                            ; preds = %PyStackRef_CLOSE.exit10730
  %i.can = inttoptr i64 %.sroa.03125.0.copyload to ptr ; 3 uses
  %i.cao = load i32, ptr %i.can, align 8, !tbaa !30
  %i.cap = add i32 %i.cao, -1                     ; 2 uses
  store i32 %i.cap, ptr %i.can, align 8, !tbaa !30
  %i.caq = icmp eq i32 %i.cap, 0
  br i1 %i.caq, label %bb.qq, label %PyStackRef_CLOSE.exit10732

bb.qq:                                            ; preds = %bb.qp
  call void @_Py_Dealloc(ptr noundef nonnull %i.can) #8
  br label %PyStackRef_CLOSE.exit10732

PyStackRef_CLOSE.exit10732:                       ; preds = %PyStackRef_CLOSE.exit10730, %bb.qp, %bb.qq
  %.4.val10218 = load ptr, ptr %i.bzw, align 8, !tbaa !50 ; 2 uses
  %.not9568 = icmp eq i32 %i.bzx, 0
  %. = select i1 %.not9568, i64 ptrtoint (ptr @_Py_FalseStruct to i64), i64 ptrtoint (ptr @_Py_TrueStruct to i64)
  %.sroa.03120.0 = or disjoint i64 %., 1
  store i64 %.sroa.03120.0, ptr %.4.val10218, align 8, !tbaa !30
  %i.car = getelementptr i8, ptr %.4.val10218, i64 8
  %i.cas = load i16, ptr %i.bzh, align 2, !tbaa !101 ; 2 uses
  %.sroa.23111.0.extract.shift = lshr i16 %i.cas, 8
  %.sroa.23111.0.extract.trunc = zext nneg i16 %.sroa.23111.0.extract.shift to i32
  %i.cat = and i16 %i.cas, 255
  %i.cau = zext nneg i16 %i.cat to i64
  br label %.backedge.backedge

bb.qr:                                            ; preds = %.backedge
  %i.cav = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.cav, align 8, !tbaa !33
  %i.caw = getelementptr i8, ptr %.32, i64 8
  br label %bb.qs

bb.qs:                                            ; preds = %bb.sk, %bb.sj, %bb.si, %bb.sh, %bb.sd, %bb.rq, %bb.rp, %bb.ro, %bb.rn, %bb.qr
  %.39038 = phi ptr [ %i.caw, %bb.qr ], [ %i.cet, %bb.rn ], [ %i.cet, %bb.ro ], [ %i.cet, %bb.rq ], [ %i.cet, %bb.rp ], [ %i.chz, %bb.sd ], [ %i.cjl, %bb.si ], [ %i.cjl, %bb.sh ], [ %i.cjl, %bb.sj ], [ %i.cjl, %bb.sk ] ; 4 uses
  %i.cax = sub i32 -2, %.09034
  %i.cay = sext i32 %i.cax to i64                 ; 4 uses
  %i.caz = getelementptr [8 x i8], ptr %.4.val1003611565, i64 %i.cay ; 2 uses
  %.sroa.03089.0.copyload = load i64, ptr %i.caz, align 8, !tbaa !30 ; 4 uses
  %i.cba = sub i32 -3, %.09034
  %i.cbb = sext i32 %i.cba to i64                 ; 6 uses
  %i.cbc = getelementptr [8 x i8], ptr %.4.val1003611565, i64 %i.cbb ; 2 uses
  %.sroa.03095.0.copyload = load i64, ptr %i.cbc, align 8, !tbaa !30 ; 7 uses
  %i.cbd = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %.val10339 = load i16, ptr %i.cbd, align 2, !tbaa !101 ; 2 uses
  %i.cbe = icmp ult i16 %.val10339, 7
  br i1 %i.cbe, label %bb.qt, label %bb.qu

bb.qt:                                            ; preds = %bb.qs
  %i.cbf = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1003611565, ptr %i.cbf, align 8, !tbaa !50
  %i.cbg = icmp ne i64 %.sroa.03089.0.copyload, 1
  %i.cbh = zext i1 %i.cbg to i32
  %i.cbi = add i32 %.09034, %i.cbh
  call void @_Py_Specialize_CallKw(i64 %.sroa.03095.0.copyload, ptr noundef nonnull %.32, i32 noundef %i.cbi) #8
  %.4.val10217 = load ptr, ptr %i.cbf, align 8, !tbaa !50
  %i.cbj = load i8, ptr %.32, align 2, !tbaa !30
  %i.cbk = zext i8 %i.cbj to i64
  br label %.backedge.backedge

bb.qu:                                            ; preds = %bb.qs
  %i.cbl = add i16 %.val10339, -8
  store i16 %i.cbl, ptr %i.cbd, align 2, !tbaa !101
  %i.cbm = and i64 %.sroa.03095.0.copyload, 3
  %i.cbn = icmp eq i64 %i.cbm, 3
  br i1 %i.cbn, label %PyStackRef_TYPE.exit10735.thread, label %PyStackRef_TYPE.exit10735

PyStackRef_TYPE.exit10735:                        ; preds = %bb.qu
  %9 = and i64 %.sroa.03095.0.copyload, -2
  %10 = inttoptr i64 %9 to ptr                    ; 3 uses
  %11 = getelementptr i8, ptr %10, i64 8
  %.val.i10733 = load ptr, ptr %11, align 8, !tbaa !43
  %i.cbo = icmp eq ptr %.val.i10733, @PyMethod_Type
  %i.cbp = icmp eq i64 %.sroa.03089.0.copyload, 1
  %or.cond3 = select i1 %i.cbo, i1 %i.cbp, i1 false
  br i1 %or.cond3, label %bb.qv, label %PyStackRef_TYPE.exit10735.thread

bb.qv:                                            ; preds = %PyStackRef_TYPE.exit10735
  %i.cbq = getelementptr i8, ptr %10, i64 24
  %i.cbr = load ptr, ptr %i.cbq, align 8, !tbaa !197 ; 4 uses
  %i.cbs = load i32, ptr %i.cbr, align 8, !tbaa !30 ; 2 uses
  %.not.i10736 = icmp sgt i32 %i.cbs, -1
  br i1 %.not.i10736, label %bb.qx, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.cbt = ptrtoint ptr %i.cbr to i64
  %i.cbu = or i64 %i.cbt, 1
  br label %_PyStackRef_FromPyObjectNew.exit10738

bb.qx:                                            ; preds = %bb.qv
  %i.cbv = add nuw i32 %i.cbs, 1
  store i32 %i.cbv, ptr %i.cbr, align 8, !tbaa !30
  %i.cbw = ptrtoint ptr %i.cbr to i64
  br label %_PyStackRef_FromPyObjectNew.exit10738

_PyStackRef_FromPyObjectNew.exit10738:            ; preds = %bb.qw, %bb.qx
  %.sroa.0.0.i10737 = phi i64 [ %i.cbu, %bb.qw ], [ %i.cbw, %bb.qx ] ; 2 uses
  %i.cbx = getelementptr i8, ptr %10, i64 16
  %i.cby = load ptr, ptr %i.cbx, align 8, !tbaa !198 ; 4 uses
  %i.cbz = load i32, ptr %i.cby, align 8, !tbaa !30 ; 2 uses
  %.not.i10739 = icmp sgt i32 %i.cbz, -1
  br i1 %.not.i10739, label %bb.qz, label %bb.qy

bb.qy:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10738
  %i.cca = ptrtoint ptr %i.cby to i64
  %i.ccb = or i64 %i.cca, 1
  br label %_PyStackRef_FromPyObjectNew.exit10741

bb.qz:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10738
  %i.ccc = add nuw i32 %i.cbz, 1
  store i32 %i.ccc, ptr %i.cby, align 8, !tbaa !30
  %i.ccd = ptrtoint ptr %i.cby to i64
  br label %_PyStackRef_FromPyObjectNew.exit10741

_PyStackRef_FromPyObjectNew.exit10741:            ; preds = %bb.qy, %bb.qz
  %.sroa.0.0.i10740 = phi i64 [ %i.ccb, %bb.qy ], [ %i.ccd, %bb.qz ] ; 2 uses
  store i64 %.sroa.0.0.i10740, ptr %i.cbc, align 8, !tbaa !30
  store i64 %.sroa.0.0.i10737, ptr %i.caz, align 8, !tbaa !30
  %i.cce = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1003611565, ptr %i.cce, align 8, !tbaa !50
  %i.ccf = and i64 %.sroa.03095.0.copyload, 1
  %.not.not.i10742 = icmp eq i64 %i.ccf, 0
  br i1 %.not.not.i10742, label %bb.ra, label %PyStackRef_CLOSE.exit10743

bb.ra:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10741
  %i.ccg = inttoptr i64 %.sroa.03095.0.copyload to ptr ; 3 uses
  %i.cch = load i32, ptr %i.ccg, align 8, !tbaa !30
  %i.cci = add i32 %i.cch, -1                     ; 2 uses
  store i32 %i.cci, ptr %i.ccg, align 8, !tbaa !30
  %i.ccj = icmp eq i32 %i.cci, 0
  br i1 %i.ccj, label %bb.rb, label %PyStackRef_CLOSE.exit10743

bb.rb:                                            ; preds = %bb.ra
  call void @_Py_Dealloc(ptr noundef nonnull %i.ccg) #8
  br label %PyStackRef_CLOSE.exit10743

PyStackRef_CLOSE.exit10743:                       ; preds = %_PyStackRef_FromPyObjectNew.exit10741, %bb.ra, %bb.rb
  %.4.val10216 = load ptr, ptr %i.cce, align 8, !tbaa !50
  br label %PyStackRef_TYPE.exit10735.thread

PyStackRef_TYPE.exit10735.thread:                 ; preds = %bb.qu, %PyStackRef_CLOSE.exit10743, %PyStackRef_TYPE.exit10735
  %.sroa.03089.0 = phi i64 [ %.sroa.0.0.i10737, %PyStackRef_CLOSE.exit10743 ], [ %.sroa.03089.0.copyload, %PyStackRef_TYPE.exit10735 ], [ %.sroa.03089.0.copyload, %bb.qu ] ; 3 uses
  %.sroa.03095.0 = phi i64 [ %.sroa.0.0.i10740, %PyStackRef_CLOSE.exit10743 ], [ %.sroa.03095.0.copyload, %PyStackRef_TYPE.exit10735 ], [ %.sroa.03095.0.copyload, %bb.qu ] ; 5 uses
  %.139053 = phi ptr [ %.4.val10216, %PyStackRef_CLOSE.exit10743 ], [ %.4.val1003611565, %PyStackRef_TYPE.exit10735 ], [ %.4.val1003611565, %bb.qu ] ; 8 uses
  %i.cck = getelementptr i8, ptr %.139053, i64 -8
  %.sroa.03085.0.copyload = load i64, ptr %i.cck, align 8, !tbaa !30 ; 4 uses
  %i.ccl = xor i32 %.09034, -1
  %i.ccm = sext i32 %i.ccl to i64
  %i.ccn = getelementptr [8 x i8], ptr %.139053, i64 %i.ccm
  %i.cco = and i64 %.sroa.03095.0, -2
  %i.ccp = inttoptr i64 %i.cco to ptr             ; 4 uses
  %i.ccq = and i64 %.sroa.03085.0.copyload, -2
  %i.ccr = inttoptr i64 %i.ccq to ptr             ; 2 uses
  %i.ccs = icmp ne i64 %.sroa.03089.0, 1          ; 2 uses
  %.09094.idx = select i1 %i.ccs, i64 -8, i64 0
  %.09094 = getelementptr i8, ptr %i.ccn, i64 %.09094.idx ; 2 uses
  %i.cct = zext i1 %i.ccs to i32
  %.09093 = add i32 %.09034, %i.cct               ; 2 uses
  %i.ccu = getelementptr i8, ptr %i.ccr, i64 16
  %.val10386 = load i64, ptr %i.ccu, align 8, !tbaa !63
  %i.ccv = getelementptr i8, ptr %i.ccp, i64 8
  %.val9881 = load ptr, ptr %i.ccv, align 8, !tbaa !43
  %i.ccw = icmp eq ptr %.val9881, @PyFunction_Type
  br i1 %i.ccw, label %bb.rc, label %bb.rk

bb.rc:                                            ; preds = %PyStackRef_TYPE.exit10735.thread
  %i.ccx = load ptr, ptr %i.lty, align 8, !tbaa !32
  %i.ccy = getelementptr i8, ptr %i.ccx, i64 8568
  %i.ccz = load ptr, ptr %i.ccy, align 8, !tbaa !177
  %.not9689 = icmp eq ptr %i.ccz, null
  br i1 %.not9689, label %bb.rd, label %bb.rk

bb.rd:                                            ; preds = %bb.rc
  %i.cda = getelementptr i8, ptr %i.ccp, i64 136
  %i.cdb = load ptr, ptr %i.cda, align 8, !tbaa !199
  %i.cdc = icmp eq ptr %i.cdb, @_PyFunction_Vectorcall
  br i1 %i.cdc, label %bb.re, label %bb.rk

bb.re:                                            ; preds = %bb.rd
  %i.cdd = trunc i64 %.val10386 to i32
  %i.cde = sub i32 %.09093, %i.cdd
  %i.cdf = getelementptr i8, ptr %i.ccp, i64 48
  %.val10360 = load ptr, ptr %i.cdf, align 8, !tbaa !54
  %i.cdg = getelementptr i8, ptr %.val10360, i64 48
  %i.cdh = load i32, ptr %i.cdg, align 8, !tbaa !39
  %i.cdi = and i32 %i.cdh, 1
  %.not9690 = icmp eq i32 %i.cdi, 0
  br i1 %.not9690, label %bb.rf, label %_Py_NewRef.exit10744

bb.rf:                                            ; preds = %bb.re
  %i.cdj = getelementptr i8, ptr %i.ccp, i64 16
  %.val10395 = load ptr, ptr %i.cdj, align 8, !tbaa !200 ; 4 uses
  %i.cdk = load i32, ptr %.val10395, align 8, !tbaa !30 ; 2 uses
  %i.cdl = icmp ugt i32 %i.cdk, -1073741825
  br i1 %i.cdl, label %_Py_NewRef.exit10744, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.cdm = add nuw i32 %i.cdk, 1
  store i32 %i.cdm, ptr %.val10395, align 8, !tbaa !30
  br label %_Py_NewRef.exit10744

_Py_NewRef.exit10744:                             ; preds = %bb.rg, %bb.rf, %bb.re
  %i.cdn = phi ptr [ null, %bb.re ], [ %.val10395, %bb.rf ], [ %.val10395, %bb.rg ]
  %i.cdo = getelementptr [8 x i8], ptr %.139053, i64 %i.cbb
  store i64 %.sroa.03095.0, ptr %i.cdo, align 8, !tbaa !30
  %i.cdp = getelementptr [8 x i8], ptr %.139053, i64 %i.cay
  store i64 %.sroa.03089.0, ptr %i.cdp, align 8, !tbaa !30
  %i.cdq = getelementptr i8, ptr %.4, i64 64      ; 4 uses
  store ptr %.139053, ptr %i.cdq, align 8, !tbaa !50
  %i.cdr = sext i32 %i.cde to i64
  %i.cds = call ptr @_PyEvalFramePushAndInit(ptr noundef nonnull %0, i64 %.sroa.03095.0, ptr noundef %i.cdn, ptr noundef %.09094, i64 noundef %i.cdr, ptr noundef nonnull %i.ccr, ptr noundef nonnull %.4) #8 ; 2 uses
  %.4.val10215 = load ptr, ptr %i.cdq, align 8, !tbaa !50
  %i.cdt = getelementptr [8 x i8], ptr %.4.val10215, i64 %i.cbb
  store ptr %i.cdt, ptr %i.cdq, align 8, !tbaa !50
  %i.cdu = and i64 %.sroa.03085.0.copyload, 1
  %.not.not.i10745 = icmp eq i64 %i.cdu, 0
  br i1 %.not.not.i10745, label %bb.rh, label %PyStackRef_CLOSE.exit10746

bb.rh:                                            ; preds = %_Py_NewRef.exit10744
  %i.cdv = inttoptr i64 %.sroa.03085.0.copyload to ptr ; 3 uses
  %i.cdw = load i32, ptr %i.cdv, align 8, !tbaa !30
  %i.cdx = add i32 %i.cdw, -1                     ; 2 uses
  store i32 %i.cdx, ptr %i.cdv, align 8, !tbaa !30
  %i.cdy = icmp eq i32 %i.cdx, 0
  br i1 %i.cdy, label %bb.ri, label %PyStackRef_CLOSE.exit10746

bb.ri:                                            ; preds = %bb.rh
  call void @_Py_Dealloc(ptr noundef nonnull %i.cdv) #8
  br label %PyStackRef_CLOSE.exit10746

PyStackRef_CLOSE.exit10746:                       ; preds = %_Py_NewRef.exit10744, %bb.rh, %bb.ri
  %.4.val10214 = load ptr, ptr %i.cdq, align 8, !tbaa !50
  %i.cdz = icmp eq ptr %i.cds, null
  br i1 %i.cdz, label %.loopexit, label %bb.rj

bb.rj:                                            ; preds = %PyStackRef_CLOSE.exit10746
  %i.cea = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.cea, align 8, !tbaa !59
  br label %.sink.split

bb.rk:                                            ; preds = %bb.rd, %bb.rc, %PyStackRef_TYPE.exit10735.thread
  %i.ceb = getelementptr [8 x i8], ptr %.139053, i64 %i.cbb
  store i64 %.sroa.03095.0, ptr %i.ceb, align 8, !tbaa !30
  %i.cec = getelementptr [8 x i8], ptr %.139053, i64 %i.cay
  store i64 %.sroa.03089.0, ptr %i.cec, align 8, !tbaa !30
  %i.ced = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.139053, ptr %i.ced, align 8, !tbaa !50
  %i.cee = call ptr @_Py_VectorCallInstrumentation_StackRefSteal(i64 %.sroa.03095.0, ptr noundef %.09094, i32 noundef %.09093, i64 %.sroa.03085.0.copyload, i1 noundef zeroext false, ptr noundef nonnull %.4, ptr noundef nonnull %.32, ptr noundef %0) #8 ; 3 uses
  %.4.val10213 = load ptr, ptr %i.ced, align 8, !tbaa !50 ; 3 uses
  %i.cef = icmp eq ptr %i.cee, null
  br i1 %i.cef, label %bb.rl, label %bb.rm

bb.rl:                                            ; preds = %bb.rk
  %i.ceg = getelementptr [8 x i8], ptr %.4.val10213, i64 %i.cbb
  br label %.loopexit

bb.rm:                                            ; preds = %bb.rk
  %i.ceh = getelementptr i8, ptr %i.cee, i64 6
  %i.cei = load i16, ptr %i.ceh, align 2, !tbaa !30
  %i.cej = and i16 %i.cei, 1
  %i.cek = ptrtoint ptr %i.cee to i64
  %i.cel = zext nneg i16 %i.cej to i64
  %i.cem = or i64 %i.cel, %i.cek
  %i.cen = getelementptr [8 x i8], ptr %.4.val10213, i64 %i.cbb
  store i64 %i.cem, ptr %i.cen, align 8, !tbaa !30
  %i.ceo = getelementptr [8 x i8], ptr %.4.val10213, i64 %i.cay
  %i.cep = load i16, ptr %.39038, align 2, !tbaa !101 ; 2 uses
  %.sroa.23053.0.extract.shift = lshr i16 %i.cep, 8
  %.sroa.23053.0.extract.trunc = zext nneg i16 %.sroa.23053.0.extract.shift to i32
  %i.ceq = and i16 %i.cep, 255
  %i.cer = zext nneg i16 %i.ceq to i64
  br label %.backedge.backedge

bb.rn:                                            ; preds = %.backedge
  %i.ces = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.ces, align 8, !tbaa !33
  %i.cet = getelementptr i8, ptr %.32, i64 8      ; 5 uses
  %i.ceu = load ptr, ptr %i.lty, align 8, !tbaa !32
  %i.cev = getelementptr i8, ptr %i.ceu, i64 8568
  %i.cew = load ptr, ptr %i.cev, align 8, !tbaa !177
  %.not9564 = icmp eq ptr %i.cew, null
  br i1 %.not9564, label %bb.ro, label %bb.qs

bb.ro:                                            ; preds = %bb.rn
  %i.cex = sub i32 -2, %.09034
  %i.cey = sext i32 %i.cex to i64                 ; 2 uses
  %i.cez = getelementptr [8 x i8], ptr %.4.val1003611565, i64 %i.cey ; 2 uses
  %.sroa.03042.0.copyload = load i64, ptr %i.cez, align 8, !tbaa !30
  %i.cfa = sub i32 -3, %.09034
  %i.cfb = sext i32 %i.cfa to i64
  %i.cfc = getelementptr [8 x i8], ptr %.4.val1003611565, i64 %i.cfb ; 2 uses
  %.sroa.03044.0.copyload = load i64, ptr %i.cfc, align 8, !tbaa !30 ; 3 uses
  %i.cfd = getelementptr i8, ptr %.32, i64 4
  %.val10424 = load i32, ptr %i.cfd, align 2
  %i.cfe = and i64 %.sroa.03044.0.copyload, -2
  %i.cff = inttoptr i64 %i.cfe to ptr             ; 3 uses
  %i.cfg = getelementptr i8, ptr %i.cff, i64 8
  %.val9880 = load ptr, ptr %i.cfg, align 8, !tbaa !43
  %.not9565 = icmp eq ptr %.val9880, @PyMethod_Type
  br i1 %.not9565, label %bb.rp, label %bb.qs

bb.rp:                                            ; preds = %bb.ro
  %i.cfh = getelementptr i8, ptr %i.cff, i64 16   ; 2 uses
  %i.cfi = load ptr, ptr %i.cfh, align 8, !tbaa !198 ; 3 uses
  %i.cfj = getelementptr i8, ptr %i.cfi, i64 8
  %i.cfk = load ptr, ptr %i.cfj, align 8, !tbaa !43
  %i.cfl = icmp eq ptr %i.cfk, @PyFunction_Type
  br i1 %i.cfl, label %bb.rq, label %bb.qs

bb.rq:                                            ; preds = %bb.rp
  %i.cfm = getelementptr i8, ptr %i.cfi, i64 144
  %i.cfn = load i32, ptr %i.cfm, align 8, !tbaa !189
  %i.cfo = icmp eq i32 %i.cfn, %.val10424
  %i.cfp = icmp eq i64 %.sroa.03042.0.copyload, 1
  %or.cond13 = select i1 %i.cfo, i1 %i.cfp, i1 false
  br i1 %or.cond13, label %bb.rr, label %bb.qs

bb.rr:                                            ; preds = %bb.rq
  %i.cfq = getelementptr i8, ptr %i.cff, i64 24
  %i.cfr = load ptr, ptr %i.cfq, align 8, !tbaa !197 ; 4 uses
  %i.cfs = load i32, ptr %i.cfr, align 8, !tbaa !30 ; 2 uses
  %.not.i10747 = icmp sgt i32 %i.cfs, -1
  br i1 %.not.i10747, label %bb.rt, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  %i.cft = ptrtoint ptr %i.cfr to i64
  %i.cfu = or i64 %i.cft, 1
  br label %_PyStackRef_FromPyObjectNew.exit10749

bb.rt:                                            ; preds = %bb.rr
  %i.cfv = add nuw i32 %i.cfs, 1
  store i32 %i.cfv, ptr %i.cfr, align 8, !tbaa !30
  %i.cfw = ptrtoint ptr %i.cfr to i64
  %.pre13239 = load ptr, ptr %i.cfh, align 8, !tbaa !198
  br label %_PyStackRef_FromPyObjectNew.exit10749

_PyStackRef_FromPyObjectNew.exit10749:            ; preds = %bb.rs, %bb.rt
  %i.cfx = phi ptr [ %i.cfi, %bb.rs ], [ %.pre13239, %bb.rt ] ; 4 uses
  %.sroa.0.0.i10748 = phi i64 [ %i.cfu, %bb.rs ], [ %i.cfw, %bb.rt ] ; 2 uses
  %i.cfy = load i32, ptr %i.cfx, align 8, !tbaa !30 ; 2 uses
  %.not.i10750 = icmp sgt i32 %i.cfy, -1
  br i1 %.not.i10750, label %bb.rv, label %bb.ru

bb.ru:                                            ; preds = %_PyStackRef_FromPyObjectNew.exit10749
end_hunk_1
begin_hunk_2_@Test_EvalFrame:bb.a
  store i64 %i.fcg, ptr %i.fch, align 8, !tbaa !30
  %i.fci = and i64 %.sroa.02090.0.copyload, 1
  %.not.not.i10957 = icmp eq i64 %i.fci, 0
  br i1 %.not.not.i10957, label %bb.ahc, label %PyStackRef_CLOSE.exit10958

bb.ahc:                                           ; preds = %bb.ahb
  %i.fcj = inttoptr i64 %.sroa.02090.0.copyload to ptr ; 3 uses
  %i.fck = load i32, ptr %i.fcj, align 8, !tbaa !30
  %i.fcl = add i32 %i.fck, -1                     ; 2 uses
  store i32 %i.fcl, ptr %i.fcj, align 8, !tbaa !30
  %i.fcm = icmp eq i32 %i.fcl, 0
  br i1 %i.fcm, label %bb.ahd, label %PyStackRef_CLOSE.exit10958

bb.ahd:                                           ; preds = %bb.ahc
  call void @_Py_Dealloc(ptr noundef nonnull %i.fcj) #8
  br label %PyStackRef_CLOSE.exit10958

PyStackRef_CLOSE.exit10958:                       ; preds = %bb.ahb, %bb.ahc, %bb.ahd
  %.4.val10104 = load ptr, ptr %i.fby, align 8, !tbaa !50
  br label %bb.ahe

bb.ahe:                                           ; preds = %bb.agz, %bb.agx, %PyStackRef_CLOSE.exit10958
  %.sroa.02086.0 = phi i64 [ %i.fcg, %PyStackRef_CLOSE.exit10958 ], [ %.sroa.02090.0.copyload, %bb.agx ], [ %.sroa.02090.0.copyload, %bb.agz ]
  %.199059 = phi ptr [ %.4.val10104, %PyStackRef_CLOSE.exit10958 ], [ %.4.val1003611565, %bb.agx ], [ %.4.val1003611565, %bb.agz ] ; 2 uses
  %i.fcn = getelementptr i8, ptr %.199059, i64 -8
  store i64 %.sroa.02086.0, ptr %i.fcn, align 8, !tbaa !30
  %i.fco = load i16, ptr %i.fbj, align 2, !tbaa !101 ; 2 uses
  %.sroa.22078.0.extract.shift = lshr i16 %i.fco, 8
  %.sroa.22078.0.extract.trunc = zext nneg i16 %.sroa.22078.0.extract.shift to i32
  %i.fcp = and i16 %i.fco, 255
  %i.fcq = zext nneg i16 %i.fcp to i64
  br label %.backedge.backedge

bb.ahf:                                           ; preds = %.backedge
  %i.fcr = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.fcr, align 8, !tbaa !33
  %i.fcs = getelementptr i8, ptr %.32, i64 2      ; 3 uses
  %i.fct = getelementptr i8, ptr %.4.val1003611565, i64 -8
  %.sroa.02074.0.copyload = load i64, ptr %i.fct, align 8, !tbaa !30
  %.4.val9808 = load i64, ptr %.4, align 8
  %i.fcu = and i64 %.4.val9808, -2
  %i.fcv = inttoptr i64 %i.fcu to ptr
  %i.fcw = getelementptr i8, ptr %i.fcv, i64 32
  %i.fcx = load ptr, ptr %i.fcw, align 8, !tbaa !227
  %i.fcy = getelementptr i8, ptr %i.fcx, i64 32
  %i.fcz = sext i32 %.09034 to i64
  %i.fda = getelementptr [8 x i8], ptr %i.fcy, i64 %i.fcz
  %i.fdb = load ptr, ptr %i.fda, align 8, !tbaa !51 ; 2 uses
  %i.fdc = and i64 %.sroa.02074.0.copyload, -2
  %i.fdd = inttoptr i64 %i.fdc to ptr             ; 3 uses
  %i.fde = getelementptr i8, ptr %i.fdd, i64 8
  %i.fdf = load ptr, ptr %i.fde, align 8, !tbaa !43
  %i.fdg = icmp eq ptr %i.fdf, @PyLazyImport_Type
  %i.fdh = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1003611565, ptr %i.fdh, align 8, !tbaa !50
  br i1 %i.fdg, label %bb.ahg, label %bb.ahh

bb.ahg:                                           ; preds = %bb.ahf
  %i.fdi = call ptr @_PyEval_LazyImportFrom(ptr noundef %0, ptr noundef nonnull %.4, ptr noundef nonnull %i.fdd, ptr noundef %i.fdb) #8
  br label %bb.ahi

bb.ahh:                                           ; preds = %bb.ahf
  %i.fdj = call ptr @_PyEval_ImportFrom(ptr noundef %0, ptr noundef nonnull %i.fdd, ptr noundef %i.fdb) #8
  br label %bb.ahi

bb.ahi:                                           ; preds = %bb.ahh, %bb.ahg
  %.09120 = phi ptr [ %i.fdi, %bb.ahg ], [ %i.fdj, %bb.ahh ] ; 3 uses
  %.209060 = load ptr, ptr %i.fdh, align 8, !tbaa !50 ; 3 uses
  %i.fdk = icmp eq ptr %.09120, null
  br i1 %i.fdk, label %.loopexit.loopexit, label %bb.ahj

bb.ahj:                                           ; preds = %bb.ahi
  %i.fdl = getelementptr i8, ptr %.09120, i64 6
  %i.fdm = load i16, ptr %i.fdl, align 2, !tbaa !30
  %i.fdn = and i16 %i.fdm, 1
  %i.fdo = ptrtoint ptr %.09120 to i64
  %i.fdp = zext nneg i16 %i.fdn to i64
  %i.fdq = or i64 %i.fdp, %i.fdo
  store i64 %i.fdq, ptr %.209060, align 8, !tbaa !30
  %i.fdr = getelementptr i8, ptr %.209060, i64 8
  %i.fds = load i16, ptr %i.fcs, align 2, !tbaa !101 ; 2 uses
  %.sroa.22067.0.extract.shift = lshr i16 %i.fds, 8
  %.sroa.22067.0.extract.trunc = zext nneg i16 %.sroa.22067.0.extract.shift to i32
  %i.fdt = and i16 %i.fds, 255
  %i.fdu = zext nneg i16 %i.fdt to i64
  br label %.backedge.backedge

bb.ahk:                                           ; preds = %.backedge
  %i.fdv = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.fdv, align 8, !tbaa !33
  %i.fdw = getelementptr i8, ptr %.32, i64 2      ; 3 uses
  %i.fdx = getelementptr i8, ptr %.4.val1003611565, i64 -8
  %.sroa.02056.0.copyload = load i64, ptr %i.fdx, align 8, !tbaa !30 ; 3 uses
  %i.fdy = getelementptr i8, ptr %.4.val1003611565, i64 -16
  %.sroa.02061.0.copyload = load i64, ptr %i.fdy, align 8, !tbaa !30 ; 3 uses
  %.4.val9807 = load i64, ptr %.4, align 8
  %i.fdz = and i64 %.4.val9807, -2
  %i.fea = inttoptr i64 %i.fdz to ptr
  %i.feb = getelementptr i8, ptr %i.fea, i64 32
  %i.fec = load ptr, ptr %i.feb, align 8, !tbaa !227
  %i.fed = getelementptr i8, ptr %i.fec, i64 32
  %i.fee = ashr i32 %.09034, 2
  %i.fef = sext i32 %i.fee to i64
  %i.feg = getelementptr [8 x i8], ptr %i.fed, i64 %i.fef
  %i.feh = load ptr, ptr %i.feg, align 8, !tbaa !51 ; 2 uses
  %i.fei = and i32 %.09034, 2
  %.not9677 = icmp eq i32 %i.fei, 0
  %i.fej = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1003611565, ptr %i.fej, align 8, !tbaa !50
  %i.fek = getelementptr i8, ptr %.4, i64 32
  %i.fel = load ptr, ptr %i.fek, align 8, !tbaa !244 ; 2 uses
  %i.fem = getelementptr i8, ptr %.4, i64 24
  %i.fen = load ptr, ptr %i.fem, align 8, !tbaa !231 ; 2 uses
  %i.feo = getelementptr i8, ptr %.4, i64 40
  %i.fep = load ptr, ptr %i.feo, align 8, !tbaa !56 ; 2 uses
  %i.feq = and i64 %.sroa.02056.0.copyload, -2
  %i.fer = inttoptr i64 %i.feq to ptr             ; 2 uses
  %i.fes = and i64 %.sroa.02061.0.copyload, -2
  %i.fet = inttoptr i64 %i.fes to ptr             ; 2 uses
  br i1 %.not9677, label %bb.ahl, label %bb.ahm

bb.ahl:                                           ; preds = %bb.ahk
  %i.feu = and i32 %.09034, 1
  %i.fev = call ptr @_PyEval_LazyImportName(ptr noundef %0, ptr noundef %i.fel, ptr noundef %i.fen, ptr noundef %i.fep, ptr noundef %i.feh, ptr noundef %i.fer, ptr noundef %i.fet, i32 noundef %i.feu) #8
  br label %bb.ahn

bb.ahm:                                           ; preds = %bb.ahk
  %i.few = call ptr @_PyEval_ImportName(ptr noundef %0, ptr noundef %i.fel, ptr noundef %i.fen, ptr noundef %i.fep, ptr noundef %i.feh, ptr noundef %i.fer, ptr noundef %i.fet) #8
  br label %bb.ahn

bb.ahn:                                           ; preds = %bb.ahm, %bb.ahl
  %.09121 = phi ptr [ %i.few, %bb.ahm ], [ %i.fev, %bb.ahl ] ; 3 uses
  %.219061 = load ptr, ptr %i.fej, align 8, !tbaa !50 ; 2 uses
  %i.fex = getelementptr i8, ptr %.4, i64 64
  %i.fey = getelementptr i8, ptr %.219061, i64 -8
  store i64 1, ptr %i.fey, align 8, !tbaa !30
  %i.fez = and i64 %.sroa.02056.0.copyload, 1
  %.not.not.i10959 = icmp eq i64 %i.fez, 0
  br i1 %.not.not.i10959, label %bb.aho, label %PyStackRef_CLOSE.exit10960

bb.aho:                                           ; preds = %bb.ahn
  %i.ffa = inttoptr i64 %.sroa.02056.0.copyload to ptr ; 3 uses
  %i.ffb = load i32, ptr %i.ffa, align 8, !tbaa !30
  %i.ffc = add i32 %i.ffb, -1                     ; 2 uses
  store i32 %i.ffc, ptr %i.ffa, align 8, !tbaa !30
  %i.ffd = icmp eq i32 %i.ffc, 0
  br i1 %i.ffd, label %bb.ahp, label %PyStackRef_CLOSE.exit10960

bb.ahp:                                           ; preds = %bb.aho
  call void @_Py_Dealloc(ptr noundef nonnull %i.ffa) #8
  br label %PyStackRef_CLOSE.exit10960

PyStackRef_CLOSE.exit10960:                       ; preds = %bb.ahn, %bb.aho, %bb.ahp
  %i.ffe = getelementptr i8, ptr %.219061, i64 -16
  store i64 1, ptr %i.ffe, align 8, !tbaa !30
  %i.fff = and i64 %.sroa.02061.0.copyload, 1
  %.not.not.i10961 = icmp eq i64 %i.fff, 0
  br i1 %.not.not.i10961, label %bb.ahq, label %PyStackRef_CLOSE.exit10962

bb.ahq:                                           ; preds = %PyStackRef_CLOSE.exit10960
  %i.ffg = inttoptr i64 %.sroa.02061.0.copyload to ptr ; 3 uses
  %i.ffh = load i32, ptr %i.ffg, align 8, !tbaa !30
  %i.ffi = add i32 %i.ffh, -1                     ; 2 uses
  store i32 %i.ffi, ptr %i.ffg, align 8, !tbaa !30
  %i.ffj = icmp eq i32 %i.ffi, 0
  br i1 %i.ffj, label %bb.ahr, label %PyStackRef_CLOSE.exit10962

bb.ahr:                                           ; preds = %bb.ahq
  call void @_Py_Dealloc(ptr noundef nonnull %i.ffg) #8
  br label %PyStackRef_CLOSE.exit10962

PyStackRef_CLOSE.exit10962:                       ; preds = %PyStackRef_CLOSE.exit10960, %bb.ahq, %bb.ahr
  %.4.val10099 = load ptr, ptr %i.fex, align 8, !tbaa !50 ; 2 uses
  %i.ffk = getelementptr i8, ptr %.4.val10099, i64 -16 ; 2 uses
  %i.ffl = icmp eq ptr %.09121, null
  br i1 %i.ffl, label %.loopexit.loopexit, label %bb.ahs

bb.ahs:                                           ; preds = %PyStackRef_CLOSE.exit10962
  %i.ffm = getelementptr i8, ptr %.09121, i64 6
  %i.ffn = load i16, ptr %i.ffm, align 2, !tbaa !30
  %i.ffo = and i16 %i.ffn, 1
  %i.ffp = ptrtoint ptr %.09121 to i64
  %i.ffq = zext nneg i16 %i.ffo to i64
  %i.ffr = or i64 %i.ffq, %i.ffp
  store i64 %i.ffr, ptr %i.ffk, align 8, !tbaa !30
  %i.ffs = getelementptr i8, ptr %.4.val10099, i64 -8
  %i.fft = load i16, ptr %i.fdw, align 2, !tbaa !101 ; 2 uses
  %.sroa.22046.0.extract.shift = lshr i16 %i.fft, 8
  %.sroa.22046.0.extract.trunc = zext nneg i16 %.sroa.22046.0.extract.shift to i32
  %i.ffu = and i16 %i.fft, 255
  %i.ffv = zext nneg i16 %i.ffu to i64
  br label %.backedge.backedge

bb.aht:                                           ; preds = %.backedge
  %i.ffw = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.ffw, align 8, !tbaa !33
  %i.ffx = getelementptr i8, ptr %.32, i64 8      ; 6 uses
  %i.ffy = xor i32 %.09034, -1
  %i.ffz = sext i32 %i.ffy to i64                 ; 4 uses
  %i.fga = getelementptr [8 x i8], ptr %.4.val1003611565, i64 %i.ffz ; 2 uses
  %.sroa.02029.0.copyload = load i64, ptr %i.fga, align 8, !tbaa !30 ; 3 uses
  %i.fgb = sub i32 -2, %.09034
  %i.fgc = sext i32 %i.fgb to i64                 ; 6 uses
  %i.fgd = getelementptr [8 x i8], ptr %.4.val1003611565, i64 %i.fgc ; 2 uses
  %.sroa.02034.0.copyload = load i64, ptr %i.fgd, align 8, !tbaa !30 ; 6 uses
  %i.fge = and i64 %.sroa.02034.0.copyload, 3
  %i.fgf = icmp eq i64 %i.fge, 3
  br i1 %i.fgf, label %PyStackRef_TYPE.exit10965.thread, label %PyStackRef_TYPE.exit10965

PyStackRef_TYPE.exit10965:                        ; preds = %bb.aht
  %12 = and i64 %.sroa.02034.0.copyload, -2
  %13 = inttoptr i64 %12 to ptr                   ; 3 uses
  %14 = getelementptr i8, ptr %13, i64 8
  %.val.i10963 = load ptr, ptr %14, align 8, !tbaa !43
  %i.fgg = icmp eq ptr %.val.i10963, @PyMethod_Type
  %i.fgh = icmp eq i64 %.sroa.02029.0.copyload, 1
  %or.cond7 = select i1 %i.fgg, i1 %i.fgh, i1 false
  br i1 %or.cond7, label %bb.ahu, label %PyStackRef_TYPE.exit10965.thread

bb.ahu:                                           ; preds = %PyStackRef_TYPE.exit10965
  %i.fgi = getelementptr i8, ptr %13, i64 24
  %i.fgj = load ptr, ptr %i.fgi, align 8, !tbaa !197 ; 4 uses
  %i.fgk = load i32, ptr %i.fgj, align 8, !tbaa !30 ; 2 uses
  %.not.i10966 = icmp sgt i32 %i.fgk, -1
  br i1 %.not.i10966, label %bb.ahw, label %bb.ahv

bb.ahv:                                           ; preds = %bb.ahu
  %i.fgl = ptrtoint ptr %i.fgj to i64
  %i.fgm = or i64 %i.fgl, 1
  br label %_PyStackRef_FromPyObjectNew.exit10968

bb.ahw:                                           ; preds = %bb.ahu
  %i.fgn = add nuw i32 %i.fgk, 1
  store i32 %i.fgn, ptr %i.fgj, align 8, !tbaa !30
  %i.fgo = ptrtoint ptr %i.fgj to i64
  br label %_PyStackRef_FromPyObjectNew.exit10968

_PyStackRef_FromPyObjectNew.exit10968:            ; preds = %bb.ahv, %bb.ahw
  %.sroa.0.0.i10967 = phi i64 [ %i.fgm, %bb.ahv ], [ %i.fgo, %bb.ahw ] ; 2 uses
  %i.fgp = getelementptr i8, ptr %13, i64 16
  %i.fgq = load ptr, ptr %i.fgp, align 8, !tbaa !198 ; 4 uses
  %i.fgr = load i32, ptr %i.fgq, align 8, !tbaa !30 ; 2 uses
  %.not.i10969 = icmp sgt i32 %i.fgr, -1
  br i1 %.not.i10969, label %bb.ahy, label %bb.ahx

bb.ahx:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit10968
  %i.fgs = ptrtoint ptr %i.fgq to i64
  %i.fgt = or i64 %i.fgs, 1
  br label %_PyStackRef_FromPyObjectNew.exit10971

bb.ahy:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit10968
  %i.fgu = add nuw i32 %i.fgr, 1
  store i32 %i.fgu, ptr %i.fgq, align 8, !tbaa !30
  %i.fgv = ptrtoint ptr %i.fgq to i64
  br label %_PyStackRef_FromPyObjectNew.exit10971

_PyStackRef_FromPyObjectNew.exit10971:            ; preds = %bb.ahx, %bb.ahy
  %.sroa.0.0.i10970 = phi i64 [ %i.fgt, %bb.ahx ], [ %i.fgv, %bb.ahy ] ; 2 uses
  store i64 %.sroa.0.0.i10970, ptr %i.fgd, align 8, !tbaa !30
  store i64 %.sroa.0.0.i10967, ptr %i.fga, align 8, !tbaa !30
  %i.fgw = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1003611565, ptr %i.fgw, align 8, !tbaa !50
  %i.fgx = and i64 %.sroa.02034.0.copyload, 1
  %.not.not.i10972 = icmp eq i64 %i.fgx, 0
  br i1 %.not.not.i10972, label %bb.ahz, label %PyStackRef_CLOSE.exit10973

bb.ahz:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit10971
  %i.fgy = inttoptr i64 %.sroa.02034.0.copyload to ptr ; 3 uses
  %i.fgz = load i32, ptr %i.fgy, align 8, !tbaa !30
  %i.fha = add i32 %i.fgz, -1                     ; 2 uses
  store i32 %i.fha, ptr %i.fgy, align 8, !tbaa !30
  %i.fhb = icmp eq i32 %i.fha, 0
  br i1 %i.fhb, label %bb.aia, label %PyStackRef_CLOSE.exit10973

bb.aia:                                           ; preds = %bb.ahz
  call void @_Py_Dealloc(ptr noundef nonnull %i.fgy) #8
  br label %PyStackRef_CLOSE.exit10973

PyStackRef_CLOSE.exit10973:                       ; preds = %_PyStackRef_FromPyObjectNew.exit10971, %bb.ahz, %bb.aia
  %.4.val10098 = load ptr, ptr %i.fgw, align 8, !tbaa !50
  br label %PyStackRef_TYPE.exit10965.thread

PyStackRef_TYPE.exit10965.thread:                 ; preds = %bb.aht, %PyStackRef_CLOSE.exit10973, %PyStackRef_TYPE.exit10965
  %.sroa.02029.0 = phi i64 [ %.sroa.0.0.i10967, %PyStackRef_CLOSE.exit10973 ], [ %.sroa.02029.0.copyload, %PyStackRef_TYPE.exit10965 ], [ %.sroa.02029.0.copyload, %bb.aht ] ; 3 uses
  %.sroa.02034.0 = phi i64 [ %.sroa.0.0.i10970, %PyStackRef_CLOSE.exit10973 ], [ %.sroa.02034.0.copyload, %PyStackRef_TYPE.exit10965 ], [ %.sroa.02034.0.copyload, %bb.aht ] ; 2 uses
  %.229062 = phi ptr [ %.4.val10098, %PyStackRef_CLOSE.exit10973 ], [ %.4.val1003611565, %PyStackRef_TYPE.exit10965 ], [ %.4.val1003611565, %bb.aht ] ; 4 uses
  %i.fhc = sub i32 0, %.09034
  %i.fhd = sext i32 %i.fhc to i64                 ; 2 uses
  %i.fhe = getelementptr [8 x i8], ptr %.229062, i64 %i.fhd
  %.not9430 = icmp eq i64 %.sroa.02029.0, 1
  %i.fhf = and i64 %.sroa.02034.0, -2
  %i.fhg = inttoptr i64 %i.fhf to ptr
  br i1 %.not9430, label %bb.aic, label %bb.aib

bb.aib:                                           ; preds = %PyStackRef_TYPE.exit10965.thread
  %i.fhh = and i64 %.sroa.02029.0, -2
  %i.fhi = inttoptr i64 %i.fhh to ptr
  br label %bb.aie

bb.aic:                                           ; preds = %PyStackRef_TYPE.exit10965.thread
  %.not9431 = icmp eq i32 %.09034, 0
  br i1 %.not9431, label %bb.aie, label %bb.aid

bb.aid:                                           ; preds = %bb.aic
  %i.fhj = load i64, ptr %i.fhe, align 8
  %i.fhk = and i64 %i.fhj, -2
  %i.fhl = inttoptr i64 %i.fhk to ptr
  br label %bb.aie

bb.aie:                                           ; preds = %bb.aic, %bb.aid, %bb.aib
  %.09122 = phi ptr [ %i.fhi, %bb.aib ], [ %i.fhl, %bb.aid ], [ @_PyInstrumentation_MISSING, %bb.aic ]
  %i.fhm = getelementptr [8 x i8], ptr %.229062, i64 %i.fgc
  store i64 %.sroa.02034.0, ptr %i.fhm, align 8, !tbaa !30
  %i.fhn = getelementptr [8 x i8], ptr %.229062, i64 %i.ffz
  store i64 %.sroa.02029.0, ptr %i.fhn, align 8, !tbaa !30
  %i.fho = getelementptr i8, ptr %.4, i64 64      ; 8 uses
  store ptr %.229062, ptr %i.fho, align 8, !tbaa !50
  %i.fhp = call i32 @_Py_call_instrumentation_2args(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef %i.fhg, ptr noundef %.09122) #8
  %.4.val10097 = load ptr, ptr %i.fho, align 8, !tbaa !50 ; 5 uses
  %.not9432 = icmp eq i32 %i.fhp, 0
  br i1 %.not9432, label %bb.aif, label %.loopexit.loopexit

bb.aif:                                           ; preds = %bb.aie
  %i.fhq = getelementptr [8 x i8], ptr %.4.val10097, i64 %i.fhd
  %i.fhr = getelementptr [8 x i8], ptr %.4.val10097, i64 %i.ffz
  %.sroa.02029.0.copyload2031 = load i64, ptr %i.fhr, align 8, !tbaa !30
  %i.fhs = getelementptr [8 x i8], ptr %.4.val10097, i64 %i.fgc
  %.sroa.02034.0.copyload2037 = load i64, ptr %i.fhs, align 8, !tbaa !30 ; 3 uses
  %i.fht = and i64 %.sroa.02034.0.copyload2037, -2
  %i.fhu = inttoptr i64 %i.fht to ptr             ; 4 uses
  %i.fhv = icmp ne i64 %.sroa.02029.0.copyload2031, 1 ; 2 uses
  %.09124.idx = select i1 %i.fhv, i64 -8, i64 0
  %.09124 = getelementptr i8, ptr %i.fhq, i64 %.09124.idx ; 2 uses
  %i.fhw = zext i1 %i.fhv to i32
  %.09123 = add i32 %.09034, %i.fhw               ; 2 uses
  %i.fhx = getelementptr i8, ptr %i.fhu, i64 8
  %.val9863 = load ptr, ptr %i.fhx, align 8, !tbaa !43
  %i.fhy = icmp eq ptr %.val9863, @PyFunction_Type
  br i1 %i.fhy, label %bb.aig, label %bb.aim

bb.aig:                                           ; preds = %bb.aif
  %i.fhz = load ptr, ptr %i.lty, align 8, !tbaa !32
  %i.fia = getelementptr i8, ptr %i.fhz, i64 8568
  %i.fib = load ptr, ptr %i.fia, align 8, !tbaa !177
  %.not9433 = icmp eq ptr %i.fib, null
  br i1 %.not9433, label %bb.aih, label %bb.aim

bb.aih:                                           ; preds = %bb.aig
  %i.fic = getelementptr i8, ptr %i.fhu, i64 136
  %i.fid = load ptr, ptr %i.fic, align 8, !tbaa !199
  %i.fie = icmp eq ptr %i.fid, @_PyFunction_Vectorcall
  br i1 %i.fie, label %bb.aii, label %bb.aim

bb.aii:                                           ; preds = %bb.aih
  %i.fif = getelementptr i8, ptr %i.fhu, i64 48
  %.val10356 = load ptr, ptr %i.fif, align 8, !tbaa !54
  %i.fig = getelementptr i8, ptr %.val10356, i64 48
  %i.fih = load i32, ptr %i.fig, align 8, !tbaa !39
  %i.fii = and i32 %i.fih, 1
  %.not9434 = icmp eq i32 %i.fii, 0
  br i1 %.not9434, label %bb.aij, label %_Py_NewRef.exit10974

bb.aij:                                           ; preds = %bb.aii
  %i.fij = getelementptr i8, ptr %i.fhu, i64 16
  %.val10391 = load ptr, ptr %i.fij, align 8, !tbaa !200 ; 4 uses
  %i.fik = load i32, ptr %.val10391, align 8, !tbaa !30 ; 2 uses
  %i.fil = icmp ugt i32 %i.fik, -1073741825
  br i1 %i.fil, label %_Py_NewRef.exit10974, label %bb.aik

bb.aik:                                           ; preds = %bb.aij
  %i.fim = add nuw i32 %i.fik, 1
  store i32 %i.fim, ptr %.val10391, align 8, !tbaa !30
  br label %_Py_NewRef.exit10974

_Py_NewRef.exit10974:                             ; preds = %bb.aik, %bb.aij, %bb.aii
  %i.fin = phi ptr [ null, %bb.aii ], [ %.val10391, %bb.aij ], [ %.val10391, %bb.aik ]
  store ptr %.4.val10097, ptr %i.fho, align 8, !tbaa !50
  %i.fio = sext i32 %.09123 to i64
  %i.fip = call ptr @_PyEvalFramePushAndInit(ptr noundef nonnull %0, i64 %.sroa.02034.0.copyload2037, ptr noundef %i.fin, ptr noundef %.09124, i64 noundef %i.fio, ptr noundef null, ptr noundef nonnull %.4) #8 ; 2 uses
  %.4.val10096 = load ptr, ptr %i.fho, align 8, !tbaa !50
  %i.fiq = getelementptr [8 x i8], ptr %.4.val10096, i64 %i.fgc ; 2 uses
  %i.fir = icmp eq ptr %i.fip, null
  br i1 %i.fir, label %.loopexit, label %bb.ail

bb.ail:                                           ; preds = %_Py_NewRef.exit10974
  %i.fis = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.fis, align 8, !tbaa !59
  store ptr %i.fiq, ptr %i.fho, align 8, !tbaa !50
  br label %.sink.split

bb.aim:                                           ; preds = %bb.aih, %bb.aig, %bb.aif
  %i.fit = call ptr @_Py_VectorCallInstrumentation_StackRefSteal(i64 %.sroa.02034.0.copyload2037, ptr noundef %.09124, i32 noundef %.09123, i64 1, i1 noundef zeroext true, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef %0) #8 ; 3 uses
  %.4.val10095 = load ptr, ptr %i.fho, align 8, !tbaa !50 ; 3 uses
  %i.fiu = icmp eq ptr %i.fit, null
  br i1 %i.fiu, label %bb.ain, label %bb.aio

bb.ain:                                           ; preds = %bb.aim
  %i.fiv = getelementptr [8 x i8], ptr %.4.val10095, i64 %i.fgc
  br label %.loopexit

bb.aio:                                           ; preds = %bb.aim
  %i.fiw = getelementptr i8, ptr %i.fit, i64 6
  %i.fix = load i16, ptr %i.fiw, align 2, !tbaa !30
  %i.fiy = and i16 %i.fix, 1
  %i.fiz = ptrtoint ptr %i.fit to i64
  %i.fja = zext nneg i16 %i.fiy to i64
  %i.fjb = or i64 %i.fja, %i.fiz
  %i.fjc = getelementptr [8 x i8], ptr %.4.val10095, i64 %i.fgc
  store i64 %i.fjb, ptr %i.fjc, align 8, !tbaa !30
  %i.fjd = getelementptr [8 x i8], ptr %.4.val10095, i64 %i.ffz ; 2 uses
  store ptr %i.fjd, ptr %i.fho, align 8, !tbaa !50
  %i.fje = load atomic i64, ptr %i.ltx monotonic, align 8
  %i.fjf = and i64 %i.fje, 255
  %.not.i10975 = icmp eq i64 %i.fjf, 0
  br i1 %.not.i10975, label %check_periodics.exit10977.thread, label %check_periodics.exit10977

check_periodics.exit10977:                        ; preds = %bb.aio
  %i.fjg = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #8
  %.4.val10094 = load ptr, ptr %i.fho, align 8, !tbaa !50 ; 2 uses
  %.not9435 = icmp eq i32 %i.fjg, 0
  br i1 %.not9435, label %check_periodics.exit10977.thread, label %.loopexit.loopexit

check_periodics.exit10977.thread:                 ; preds = %bb.aio, %check_periodics.exit10977
  %.4.val1009411546 = phi ptr [ %.4.val10094, %check_periodics.exit10977 ], [ %i.fjd, %bb.aio ]
  %i.fjh = load i16, ptr %i.ffx, align 2, !tbaa !101 ; 2 uses
  %.sroa.21991.0.extract.shift = lshr i16 %i.fjh, 8
  %.sroa.21991.0.extract.trunc = zext nneg i16 %.sroa.21991.0.extract.shift to i32
  %i.fji = and i16 %i.fjh, 255
  %i.fjj = zext nneg i16 %i.fji to i64
  br label %.backedge.backedge

bb.aip:                                           ; preds = %.backedge
  %i.fjk = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.fjk, align 8, !tbaa !33
  %i.fjl = getelementptr i8, ptr %.32, i64 4      ; 7 uses
  %i.fjm = getelementptr i8, ptr %.4.val1003611565, i64 -16
  %.sroa.01981.0.copyload = load i64, ptr %i.fjm, align 8, !tbaa !30 ; 4 uses
  %i.fjn = getelementptr i8, ptr %.4.val1003611565, i64 -32
  %.sroa.01985.0.copyload = load i64, ptr %i.fjn, align 8, !tbaa !30 ; 4 uses
  %i.fjo = and i64 %.sroa.01981.0.copyload, -2
  %i.fjp = inttoptr i64 %i.fjo to ptr             ; 4 uses
  %i.fjq = getelementptr i8, ptr %i.fjp, i64 8
  %i.fjr = load ptr, ptr %i.fjq, align 8, !tbaa !43
  %i.fjs = icmp eq ptr %i.fjr, @PyTuple_Type
  br i1 %i.fjs, label %._crit_edge13269, label %bb.aiq

._crit_edge13269:                                 ; preds = %bb.aip
  %.pre13275 = and i64 %.sroa.01985.0.copyload, -2
  %.pre13277 = inttoptr i64 %.pre13275 to ptr
  br label %bb.aiv

bb.aiq:                                           ; preds = %bb.aip
  %i.fjt = getelementptr i8, ptr %.4, i64 64      ; 5 uses
  store ptr %.4.val1003611565, ptr %i.fjt, align 8, !tbaa !50
  %i.fju = and i64 %.sroa.01985.0.copyload, -2
  %i.fjv = inttoptr i64 %i.fju to ptr             ; 2 uses
  %i.fjw = call i32 @_Py_Check_ArgsIterable(ptr noundef %0, ptr noundef %i.fjv, ptr noundef nonnull %i.fjp) #8
  %.4.val10093 = load ptr, ptr %i.fjt, align 8, !tbaa !50
  %i.fjx = icmp slt i32 %i.fjw, 0
  br i1 %i.fjx, label %.loopexit.loopexit, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  %i.fjy = call ptr @PySequence_Tuple(ptr noundef nonnull %i.fjp) #8 ; 4 uses
  %.4.val10092 = load ptr, ptr %i.fjt, align 8, !tbaa !50 ; 3 uses
  %i.fjz = icmp eq ptr %i.fjy, null
  br i1 %i.fjz, label %.loopexit.loopexit, label %bb.ais

bb.ais:                                           ; preds = %bb.air
  %i.fka = getelementptr i8, ptr %i.fjy, i64 6
  %i.fkb = load i16, ptr %i.fka, align 2, !tbaa !30
  %i.fkc = and i16 %i.fkb, 1
  %i.fkd = ptrtoint ptr %i.fjy to i64
  %i.fke = zext nneg i16 %i.fkc to i64
  %i.fkf = or i64 %i.fke, %i.fkd                  ; 2 uses
  %i.fkg = getelementptr i8, ptr %.4.val10092, i64 -16
  store i64 %i.fkf, ptr %i.fkg, align 8, !tbaa !30
  store ptr %.4.val10092, ptr %i.fjt, align 8, !tbaa !50
  %i.fkh = and i64 %.sroa.01981.0.copyload, 1
  %.not.not.i10978 = icmp eq i64 %i.fkh, 0
  br i1 %.not.not.i10978, label %bb.ait, label %PyStackRef_CLOSE.exit10979

bb.ait:                                           ; preds = %bb.ais
  %i.fki = inttoptr i64 %.sroa.01981.0.copyload to ptr ; 3 uses
  %i.fkj = load i32, ptr %i.fki, align 8, !tbaa !30
  %i.fkk = add i32 %i.fkj, -1                     ; 2 uses
  store i32 %i.fkk, ptr %i.fki, align 8, !tbaa !30
  %i.fkl = icmp eq i32 %i.fkk, 0
  br i1 %i.fkl, label %bb.aiu, label %PyStackRef_CLOSE.exit10979

bb.aiu:                                           ; preds = %bb.ait
  call void @_Py_Dealloc(ptr noundef nonnull %i.fki) #8
  br label %PyStackRef_CLOSE.exit10979

PyStackRef_CLOSE.exit10979:                       ; preds = %bb.ais, %bb.ait, %bb.aiu
  %.4.val10091 = load ptr, ptr %i.fjt, align 8, !tbaa !50
  br label %bb.aiv

bb.aiv:                                           ; preds = %._crit_edge13269, %PyStackRef_CLOSE.exit10979
  %.pre-phi13278 = phi ptr [ %.pre13277, %._crit_edge13269 ], [ %i.fjv, %PyStackRef_CLOSE.exit10979 ] ; 5 uses
  %.pre-phi13263 = phi ptr [ %i.fjp, %._crit_edge13269 ], [ %i.fjy, %PyStackRef_CLOSE.exit10979 ] ; 3 uses
  %.sroa.01981.0 = phi i64 [ %.sroa.01981.0.copyload, %._crit_edge13269 ], [ %i.fkf, %PyStackRef_CLOSE.exit10979 ] ; 3 uses
  %.239063 = phi ptr [ %.4.val1003611565, %._crit_edge13269 ], [ %.4.val10091, %PyStackRef_CLOSE.exit10979 ] ; 3 uses
  %i.fkm = getelementptr i8, ptr %.239063, i64 -8
  %.sroa.01966.0.copyload = load i64, ptr %i.fkm, align 8, !tbaa !30 ; 3 uses
  %i.fkn = and i64 %.sroa.01966.0.copyload, -2
  %i.fko = inttoptr i64 %i.fkn to ptr
  %i.fkp = getelementptr i8, ptr %.pre-phi13263, i64 16
  %.val10382 = load i64, ptr %i.fkp, align 8, !tbaa !63
  %i.fkq = icmp sgt i64 %.val10382, 0
  br i1 %i.fkq, label %bb.aiw, label %bb.aix

bb.aiw:                                           ; preds = %bb.aiv
  %i.fkr = getelementptr i8, ptr %.pre-phi13263, i64 32
  %i.fks = load ptr, ptr %i.fkr, align 8, !tbaa !51
  br label %bb.aix

bb.aix:                                           ; preds = %bb.aiv, %bb.aiw
  %i.fkt = phi ptr [ %i.fks, %bb.aiw ], [ @_PyInstrumentation_MISSING, %bb.aiv ] ; 3 uses
  %i.fku = getelementptr i8, ptr %.239063, i64 -16
  store i64 %.sroa.01981.0, ptr %i.fku, align 8, !tbaa !30
  %i.fkv = getelementptr i8, ptr %.4, i64 64      ; 11 uses
  store ptr %.239063, ptr %i.fkv, align 8, !tbaa !50
  %i.fkw = call i32 @_Py_call_instrumentation_2args(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef %.pre-phi13278, ptr noundef %i.fkt) #8
  %.4.val10090 = load ptr, ptr %i.fkv, align 8, !tbaa !50
  %.not9626 = icmp eq i32 %i.fkw, 0
  br i1 %.not9626, label %bb.aiy, label %.loopexit.loopexit

bb.aiy:                                           ; preds = %bb.aix
  %i.fkx = call ptr @PyObject_Call(ptr noundef %.pre-phi13278, ptr noundef nonnull %.pre-phi13263, ptr noundef %i.fko) #8 ; 8 uses
  %i.fky = getelementptr i8, ptr %.pre-phi13278, i64 8
  %i.fkz = load ptr, ptr %i.fky, align 8, !tbaa !43 ; 2 uses
  %i.fla = icmp eq ptr %i.fkz, @PyFunction_Type
  %i.flb = icmp eq ptr %i.fkz, @PyMethod_Type
  %or.cond9744 = or i1 %i.fla, %i.flb
  br i1 %or.cond9744, label %bb.ajh, label %bb.aiz

bb.aiz:                                           ; preds = %bb.aiy
  %i.flc = icmp eq ptr %i.fkx, null
  br i1 %i.flc, label %bb.aja, label %bb.ajb

bb.aja:                                           ; preds = %bb.aiz
  call void @_Py_call_instrumentation_exc2(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef nonnull %.pre-phi13278, ptr noundef %i.fkt) #8
  br label %bb.ajh

bb.ajb:                                           ; preds = %bb.aiz
  %i.fld = call i32 @_Py_call_instrumentation_2args(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef nonnull %.pre-phi13278, ptr noundef %i.fkt) #8
  %i.fle = icmp slt i32 %i.fld, 0
  br i1 %i.fle, label %bb.ajc, label %bb.ajh

bb.ajc:                                           ; preds = %bb.ajb
  %i.flf = load i32, ptr %i.fkx, align 8, !tbaa !30 ; 2 uses
  %.not9627 = icmp sgt i32 %i.flf, -1
  br i1 %.not9627, label %bb.ajd, label %bb.ajh

bb.ajd:                                           ; preds = %bb.ajc
  %i.flg = add nsw i32 %i.flf, -1                 ; 2 uses
  store i32 %i.flg, ptr %i.fkx, align 8, !tbaa !30
  %i.flh = icmp eq i32 %i.flg, 0
  br i1 %i.flh, label %bb.aje, label %bb.ajh

bb.aje:                                           ; preds = %bb.ajd
  %i.fli = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !41 ; 2 uses
  %.not9628 = icmp eq ptr %i.fli, null
  br i1 %.not9628, label %bb.ajg, label %bb.ajf

bb.ajf:                                           ; preds = %bb.aje
  %i.flj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !42
  %i.flk = call i32 %i.fli(ptr noundef nonnull %i.fkx, i32 noundef 1, ptr noundef %i.flj) #8 ; 0 uses
  br label %bb.ajg

bb.ajg:                                           ; preds = %bb.aje, %bb.ajf
  %i.fll = getelementptr i8, ptr %i.fkx, i64 8
  %.val9862 = load ptr, ptr %i.fll, align 8, !tbaa !43
  %i.flm = getelementptr i8, ptr %.val9862, i64 48
  %i.fln = load ptr, ptr %i.flm, align 8, !tbaa !49
  call void %i.fln(ptr noundef nonnull %i.fkx) #8
  br label %bb.ajh

bb.ajh:                                           ; preds = %bb.ajc, %bb.ajg, %bb.ajd, %bb.aiy, %bb.ajb, %bb.aja
  %.19172 = phi ptr [ %i.fkx, %bb.aiy ], [ %i.fkx, %bb.ajb ], [ null, %bb.aja ], [ null, %bb.ajd ], [ null, %bb.ajg ], [ null, %bb.ajc ] ; 3 uses
  %.249064 = load ptr, ptr %i.fkv, align 8, !tbaa !50
  %i.flo = getelementptr i8, ptr %.249064, i64 -8
  store ptr %i.flo, ptr %i.fkv, align 8, !tbaa !50
  %i.flp = and i64 %.sroa.01966.0.copyload, 1
  %.not.not.i10980 = icmp eq i64 %i.flp, 0
  br i1 %.not.not.i10980, label %bb.aji, label %PyStackRef_XCLOSE.exit10981

bb.aji:                                           ; preds = %bb.ajh
  %i.flq = inttoptr i64 %.sroa.01966.0.copyload to ptr ; 3 uses
  %i.flr = load i32, ptr %i.flq, align 8, !tbaa !30
  %i.fls = add i32 %i.flr, -1                     ; 2 uses
  store i32 %i.fls, ptr %i.flq, align 8, !tbaa !30
  %i.flt = icmp eq i32 %i.fls, 0
  br i1 %i.flt, label %bb.ajj, label %PyStackRef_XCLOSE.exit10981

bb.ajj:                                           ; preds = %bb.aji
  call void @_Py_Dealloc(ptr noundef nonnull %i.flq) #8
  br label %PyStackRef_XCLOSE.exit10981

PyStackRef_XCLOSE.exit10981:                      ; preds = %bb.ajh, %bb.aji, %bb.ajj
  %.4.val10085 = load ptr, ptr %i.fkv, align 8, !tbaa !50
  %i.flu = getelementptr i8, ptr %.4.val10085, i64 -8
  store ptr %i.flu, ptr %i.fkv, align 8, !tbaa !50
  %i.flv = and i64 %.sroa.01981.0, 1
  %.not.not.i10982 = icmp eq i64 %i.flv, 0
  br i1 %.not.not.i10982, label %bb.ajk, label %PyStackRef_CLOSE.exit10983

bb.ajk:                                           ; preds = %PyStackRef_XCLOSE.exit10981
  %i.flw = inttoptr i64 %.sroa.01981.0 to ptr     ; 3 uses
  %i.flx = load i32, ptr %i.flw, align 8, !tbaa !30
  %i.fly = add i32 %i.flx, -1                     ; 2 uses
  store i32 %i.fly, ptr %i.flw, align 8, !tbaa !30
  %i.flz = icmp eq i32 %i.fly, 0
  br i1 %i.flz, label %bb.ajl, label %PyStackRef_CLOSE.exit10983

bb.ajl:                                           ; preds = %bb.ajk
  call void @_Py_Dealloc(ptr noundef nonnull %i.flw) #8
  br label %PyStackRef_CLOSE.exit10983

PyStackRef_CLOSE.exit10983:                       ; preds = %PyStackRef_XCLOSE.exit10981, %bb.ajk, %bb.ajl
  %.4.val10084 = load ptr, ptr %i.fkv, align 8, !tbaa !50
  %i.fma = getelementptr i8, ptr %.4.val10084, i64 -16
  store ptr %i.fma, ptr %i.fkv, align 8, !tbaa !50
  %i.fmb = and i64 %.sroa.01985.0.copyload, 1
  %.not.not.i10984 = icmp eq i64 %i.fmb, 0
  br i1 %.not.not.i10984, label %bb.ajm, label %PyStackRef_CLOSE.exit10985

bb.ajm:                                           ; preds = %PyStackRef_CLOSE.exit10983
  %i.fmc = inttoptr i64 %.sroa.01985.0.copyload to ptr ; 3 uses
  %i.fmd = load i32, ptr %i.fmc, align 8, !tbaa !30
  %i.fme = add i32 %i.fmd, -1                     ; 2 uses
  store i32 %i.fme, ptr %i.fmc, align 8, !tbaa !30
  %i.fmf = icmp eq i32 %i.fme, 0
  br i1 %i.fmf, label %bb.ajn, label %PyStackRef_CLOSE.exit10985

bb.ajn:                                           ; preds = %bb.ajm
  call void @_Py_Dealloc(ptr noundef nonnull %i.fmc) #8
  br label %PyStackRef_CLOSE.exit10985

PyStackRef_CLOSE.exit10985:                       ; preds = %PyStackRef_CLOSE.exit10983, %bb.ajm, %bb.ajn
  %.4.val10083 = load ptr, ptr %i.fkv, align 8, !tbaa !50 ; 3 uses
  %i.fmg = icmp eq ptr %.19172, null
  br i1 %i.fmg, label %.loopexit.loopexit, label %bb.ajo

bb.ajo:                                           ; preds = %PyStackRef_CLOSE.exit10985
  %i.fmh = getelementptr i8, ptr %.19172, i64 6
  %i.fmi = load i16, ptr %i.fmh, align 2, !tbaa !30
  %i.fmj = and i16 %i.fmi, 1
  %i.fmk = ptrtoint ptr %.19172 to i64
  %i.fml = zext nneg i16 %i.fmj to i64
  %i.fmm = or i64 %i.fml, %i.fmk
  store i64 %i.fmm, ptr %.4.val10083, align 8, !tbaa !30
  %i.fmn = getelementptr i8, ptr %.4.val10083, i64 8 ; 2 uses
  store ptr %i.fmn, ptr %i.fkv, align 8, !tbaa !50
  %i.fmo = load atomic i64, ptr %i.ltx monotonic, align 8
  %i.fmp = and i64 %i.fmo, 255
  %.not.i10986 = icmp eq i64 %i.fmp, 0
  br i1 %.not.i10986, label %check_periodics.exit10988.thread, label %check_periodics.exit10988

check_periodics.exit10988:                        ; preds = %bb.ajo
  %i.fmq = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #8
  %.4.val10082 = load ptr, ptr %i.fkv, align 8, !tbaa !50 ; 2 uses
  %.not9629 = icmp eq i32 %i.fmq, 0
  br i1 %.not9629, label %check_periodics.exit10988.thread, label %.loopexit.loopexit

check_periodics.exit10988.thread:                 ; preds = %bb.ajo, %check_periodics.exit10988
  %.4.val1008211550 = phi ptr [ %.4.val10082, %check_periodics.exit10988 ], [ %i.fmn, %bb.ajo ]
  %i.fmr = load i16, ptr %i.fjl, align 2, !tbaa !101 ; 2 uses
  %.sroa.21910.0.extract.shift = lshr i16 %i.fmr, 8
  %.sroa.21910.0.extract.trunc = zext nneg i16 %.sroa.21910.0.extract.shift to i32
  %i.fms = and i16 %i.fmr, 255
  %i.fmt = zext nneg i16 %i.fms to i64
  br label %.backedge.backedge

bb.ajp:                                           ; preds = %.backedge
  %i.fmu = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.fmu, align 8, !tbaa !33
  %i.fmv = getelementptr i8, ptr %.32, i64 8      ; 5 uses
  %i.fmw = sub i32 -2, %.09034
  %i.fmx = sext i32 %i.fmw to i64                 ; 3 uses
  %i.fmy = getelementptr [8 x i8], ptr %.4.val1003611565, i64 %i.fmx ; 2 uses
  %.sroa.01892.0.copyload = load i64, ptr %i.fmy, align 8, !tbaa !30 ; 3 uses
  %i.fmz = sub i32 -3, %.09034
  %i.fna = sext i32 %i.fmz to i64                 ; 5 uses
  %i.fnb = getelementptr [8 x i8], ptr %.4.val1003611565, i64 %i.fna ; 2 uses
  %.sroa.01898.0.copyload = load i64, ptr %i.fnb, align 8, !tbaa !30 ; 6 uses
  %i.fnc = and i64 %.sroa.01898.0.copyload, 3
  %i.fnd = icmp eq i64 %i.fnc, 3
  br i1 %i.fnd, label %PyStackRef_TYPE.exit10991.thread, label %PyStackRef_TYPE.exit10991

PyStackRef_TYPE.exit10991:                        ; preds = %bb.ajp
  %15 = and i64 %.sroa.01898.0.copyload, -2
  %16 = inttoptr i64 %15 to ptr                   ; 3 uses
  %17 = getelementptr i8, ptr %16, i64 8
  %.val.i10989 = load ptr, ptr %17, align 8, !tbaa !43
  %i.fne = icmp eq ptr %.val.i10989, @PyMethod_Type
  %i.fnf = icmp eq i64 %.sroa.01892.0.copyload, 1
  %or.cond9 = select i1 %i.fne, i1 %i.fnf, i1 false
  br i1 %or.cond9, label %bb.ajq, label %PyStackRef_TYPE.exit10991.thread

bb.ajq:                                           ; preds = %PyStackRef_TYPE.exit10991
  %i.fng = getelementptr i8, ptr %16, i64 24
  %i.fnh = load ptr, ptr %i.fng, align 8, !tbaa !197 ; 4 uses
  %i.fni = load i32, ptr %i.fnh, align 8, !tbaa !30 ; 2 uses
  %.not.i10992 = icmp sgt i32 %i.fni, -1
  br i1 %.not.i10992, label %bb.ajs, label %bb.ajr

bb.ajr:                                           ; preds = %bb.ajq
  %i.fnj = ptrtoint ptr %i.fnh to i64
  %i.fnk = or i64 %i.fnj, 1
  br label %_PyStackRef_FromPyObjectNew.exit10994

bb.ajs:                                           ; preds = %bb.ajq
  %i.fnl = add nuw i32 %i.fni, 1
  store i32 %i.fnl, ptr %i.fnh, align 8, !tbaa !30
  %i.fnm = ptrtoint ptr %i.fnh to i64
  br label %_PyStackRef_FromPyObjectNew.exit10994

_PyStackRef_FromPyObjectNew.exit10994:            ; preds = %bb.ajr, %bb.ajs
  %.sroa.0.0.i10993 = phi i64 [ %i.fnk, %bb.ajr ], [ %i.fnm, %bb.ajs ] ; 2 uses
  %i.fnn = getelementptr i8, ptr %16, i64 16
  %i.fno = load ptr, ptr %i.fnn, align 8, !tbaa !198 ; 4 uses
  %i.fnp = load i32, ptr %i.fno, align 8, !tbaa !30 ; 2 uses
  %.not.i10995 = icmp sgt i32 %i.fnp, -1
  br i1 %.not.i10995, label %bb.aju, label %bb.ajt

bb.ajt:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit10994
  %i.fnq = ptrtoint ptr %i.fno to i64
  %i.fnr = or i64 %i.fnq, 1
  br label %_PyStackRef_FromPyObjectNew.exit10997

bb.aju:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit10994
  %i.fns = add nuw i32 %i.fnp, 1
  store i32 %i.fns, ptr %i.fno, align 8, !tbaa !30
  %i.fnt = ptrtoint ptr %i.fno to i64
  br label %_PyStackRef_FromPyObjectNew.exit10997

_PyStackRef_FromPyObjectNew.exit10997:            ; preds = %bb.ajt, %bb.aju
  %.sroa.0.0.i10996 = phi i64 [ %i.fnr, %bb.ajt ], [ %i.fnt, %bb.aju ] ; 2 uses
  store i64 %.sroa.0.0.i10996, ptr %i.fnb, align 8, !tbaa !30
  store i64 %.sroa.0.0.i10993, ptr %i.fmy, align 8, !tbaa !30
  %i.fnu = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1003611565, ptr %i.fnu, align 8, !tbaa !50
  %i.fnv = and i64 %.sroa.01898.0.copyload, 1
  %.not.not.i10998 = icmp eq i64 %i.fnv, 0
  br i1 %.not.not.i10998, label %bb.ajv, label %PyStackRef_CLOSE.exit10999

bb.ajv:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit10997
  %i.fnw = inttoptr i64 %.sroa.01898.0.copyload to ptr ; 3 uses
  %i.fnx = load i32, ptr %i.fnw, align 8, !tbaa !30
  %i.fny = add i32 %i.fnx, -1                     ; 2 uses
  store i32 %i.fny, ptr %i.fnw, align 8, !tbaa !30
  %i.fnz = icmp eq i32 %i.fny, 0
  br i1 %i.fnz, label %bb.ajw, label %PyStackRef_CLOSE.exit10999

bb.ajw:                                           ; preds = %bb.ajv
  call void @_Py_Dealloc(ptr noundef nonnull %i.fnw) #8
  br label %PyStackRef_CLOSE.exit10999

PyStackRef_CLOSE.exit10999:                       ; preds = %_PyStackRef_FromPyObjectNew.exit10997, %bb.ajv, %bb.ajw
  %.4.val10081 = load ptr, ptr %i.fnu, align 8, !tbaa !50
  br label %PyStackRef_TYPE.exit10991.thread

PyStackRef_TYPE.exit10991.thread:                 ; preds = %bb.ajp, %PyStackRef_CLOSE.exit10999, %PyStackRef_TYPE.exit10991
  %.sroa.01892.0 = phi i64 [ %.sroa.0.0.i10993, %PyStackRef_CLOSE.exit10999 ], [ %.sroa.01892.0.copyload, %PyStackRef_TYPE.exit10991 ], [ %.sroa.01892.0.copyload, %bb.ajp ] ; 3 uses
  %.sroa.01898.0 = phi i64 [ %.sroa.0.0.i10996, %PyStackRef_CLOSE.exit10999 ], [ %.sroa.01898.0.copyload, %PyStackRef_TYPE.exit10991 ], [ %.sroa.01898.0.copyload, %bb.ajp ] ; 4 uses
  %.259065 = phi ptr [ %.4.val10081, %PyStackRef_CLOSE.exit10999 ], [ %.4.val1003611565, %PyStackRef_TYPE.exit10991 ], [ %.4.val1003611565, %bb.ajp ] ; 4 uses
  %i.foa = xor i32 %.09034, -1
  %i.fob = sext i32 %i.foa to i64                 ; 2 uses
  %i.foc = getelementptr [8 x i8], ptr %.259065, i64 %i.fob ; 2 uses
  %.not9621 = icmp ne i64 %.sroa.01892.0, 1       ; 3 uses
  br i1 %.not9621, label %bb.ajx, label %bb.ajy

bb.ajx:                                           ; preds = %PyStackRef_TYPE.exit10991.thread
  %i.fod = and i64 %.sroa.01892.0, -2
  %i.foe = inttoptr i64 %i.fod to ptr
  br label %bb.aka

bb.ajy:                                           ; preds = %PyStackRef_TYPE.exit10991.thread
  %.not9622 = icmp eq ptr %i.foc, null
  br i1 %.not9622, label %bb.aka, label %bb.ajz

bb.ajz:                                           ; preds = %bb.ajy
  %i.fof = load i64, ptr %i.foc, align 8
  %i.fog = and i64 %i.fof, -2
  %i.foh = inttoptr i64 %i.fog to ptr
  br label %bb.aka

bb.aka:                                           ; preds = %bb.ajy, %bb.ajz, %bb.ajx
  %.09125 = phi ptr [ %i.foe, %bb.ajx ], [ %i.foh, %bb.ajz ], [ @_PyInstrumentation_MISSING, %bb.ajy ]
  %i.foi = and i64 %.sroa.01898.0, -2
  %i.foj = inttoptr i64 %i.foi to ptr             ; 5 uses
  %i.fok = getelementptr [8 x i8], ptr %.259065, i64 %i.fna
  store i64 %.sroa.01898.0, ptr %i.fok, align 8, !tbaa !30
  %i.fol = getelementptr [8 x i8], ptr %.259065, i64 %i.fmx
  store i64 %.sroa.01892.0, ptr %i.fol, align 8, !tbaa !30
  %i.fom = getelementptr i8, ptr %.4, i64 64      ; 7 uses
  store ptr %.259065, ptr %i.fom, align 8, !tbaa !50
  %i.fon = call i32 @_Py_call_instrumentation_2args(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef %i.foj, ptr noundef %.09125) #8
  %.4.val10080 = load ptr, ptr %i.fom, align 8, !tbaa !50 ; 4 uses
  %.not9623 = icmp eq i32 %i.fon, 0
  br i1 %.not9623, label %bb.akb, label %.loopexit.loopexit

bb.akb:                                           ; preds = %bb.aka
  %i.foo = getelementptr i8, ptr %.4.val10080, i64 -8
  %.sroa.01886.0.copyload = load i64, ptr %i.foo, align 8, !tbaa !30 ; 4 uses
  %i.fop = getelementptr [8 x i8], ptr %.4.val10080, i64 %i.fob
  %i.foq = and i64 %.sroa.01886.0.copyload, -2
  %i.for = inttoptr i64 %i.foq to ptr             ; 2 uses
  %.09127.idx = select i1 %.not9621, i64 -8, i64 0
  %.09127 = getelementptr i8, ptr %i.fop, i64 %.09127.idx ; 2 uses
  %i.fos = zext i1 %.not9621 to i32
  %.09126 = add i32 %.09034, %i.fos               ; 2 uses
  %i.fot = getelementptr i8, ptr %i.for, i64 16
  %.val10381 = load i64, ptr %i.fot, align 8, !tbaa !63
  %i.fou = getelementptr i8, ptr %i.foj, i64 8
  %.val9861 = load ptr, ptr %i.fou, align 8, !tbaa !43
  %i.fov = icmp eq ptr %.val9861, @PyFunction_Type
  br i1 %i.fov, label %bb.akc, label %bb.akk

bb.akc:                                           ; preds = %bb.akb
  %i.fow = load ptr, ptr %i.lty, align 8, !tbaa !32
  %i.fox = getelementptr i8, ptr %i.fow, i64 8568
  %i.foy = load ptr, ptr %i.fox, align 8, !tbaa !177
  %.not9624 = icmp eq ptr %i.foy, null
  br i1 %.not9624, label %bb.akd, label %bb.akk

bb.akd:                                           ; preds = %bb.akc
  %i.foz = getelementptr i8, ptr %i.foj, i64 136
  %i.fpa = load ptr, ptr %i.foz, align 8, !tbaa !199
  %i.fpb = icmp eq ptr %i.fpa, @_PyFunction_Vectorcall
  br i1 %i.fpb, label %bb.ake, label %bb.akk

bb.ake:                                           ; preds = %bb.akd
  %i.fpc = trunc i64 %.val10381 to i32
  %i.fpd = sub i32 %.09126, %i.fpc
  %i.fpe = getelementptr i8, ptr %i.foj, i64 48
  %.val10355 = load ptr, ptr %i.fpe, align 8, !tbaa !54
  %i.fpf = getelementptr i8, ptr %.val10355, i64 48
  %i.fpg = load i32, ptr %i.fpf, align 8, !tbaa !39
  %i.fph = and i32 %i.fpg, 1
  %.not9625 = icmp eq i32 %i.fph, 0
  br i1 %.not9625, label %bb.akf, label %_Py_NewRef.exit11000

bb.akf:                                           ; preds = %bb.ake
  %i.fpi = getelementptr i8, ptr %i.foj, i64 16
  %.val10390 = load ptr, ptr %i.fpi, align 8, !tbaa !200 ; 4 uses
  %i.fpj = load i32, ptr %.val10390, align 8, !tbaa !30 ; 2 uses
  %i.fpk = icmp ugt i32 %i.fpj, -1073741825
  br i1 %i.fpk, label %_Py_NewRef.exit11000, label %bb.akg

bb.akg:                                           ; preds = %bb.akf
  %i.fpl = add nuw i32 %i.fpj, 1
  store i32 %i.fpl, ptr %.val10390, align 8, !tbaa !30
  br label %_Py_NewRef.exit11000

_Py_NewRef.exit11000:                             ; preds = %bb.akg, %bb.akf, %bb.ake
  %i.fpm = phi ptr [ null, %bb.ake ], [ %.val10390, %bb.akf ], [ %.val10390, %bb.akg ]
  store ptr %.4.val10080, ptr %i.fom, align 8, !tbaa !50
  %i.fpn = sext i32 %i.fpd to i64
  %i.fpo = call ptr @_PyEvalFramePushAndInit(ptr noundef nonnull %0, i64 %.sroa.01898.0, ptr noundef %i.fpm, ptr noundef %.09127, i64 noundef %i.fpn, ptr noundef nonnull %i.for, ptr noundef nonnull %.4) #8 ; 2 uses
  %.4.val10079 = load ptr, ptr %i.fom, align 8, !tbaa !50
  %i.fpp = getelementptr [8 x i8], ptr %.4.val10079, i64 %i.fna
  store ptr %i.fpp, ptr %i.fom, align 8, !tbaa !50
  %i.fpq = and i64 %.sroa.01886.0.copyload, 1
  %.not.not.i11001 = icmp eq i64 %i.fpq, 0
  br i1 %.not.not.i11001, label %bb.akh, label %PyStackRef_CLOSE.exit11002

bb.akh:                                           ; preds = %_Py_NewRef.exit11000
  %i.fpr = inttoptr i64 %.sroa.01886.0.copyload to ptr ; 3 uses
  %i.fps = load i32, ptr %i.fpr, align 8, !tbaa !30
  %i.fpt = add i32 %i.fps, -1                     ; 2 uses
  store i32 %i.fpt, ptr %i.fpr, align 8, !tbaa !30
  %i.fpu = icmp eq i32 %i.fpt, 0
  br i1 %i.fpu, label %bb.aki, label %PyStackRef_CLOSE.exit11002

bb.aki:                                           ; preds = %bb.akh
  call void @_Py_Dealloc(ptr noundef nonnull %i.fpr) #8
  br label %PyStackRef_CLOSE.exit11002

PyStackRef_CLOSE.exit11002:                       ; preds = %_Py_NewRef.exit11000, %bb.akh, %bb.aki
  %.4.val10078 = load ptr, ptr %i.fom, align 8, !tbaa !50
  %i.fpv = icmp eq ptr %i.fpo, null
  br i1 %i.fpv, label %.loopexit, label %bb.akj

bb.akj:                                           ; preds = %PyStackRef_CLOSE.exit11002
  %i.fpw = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.fpw, align 8, !tbaa !59
  br label %.sink.split

bb.akk:                                           ; preds = %bb.akd, %bb.akc, %bb.akb
  %i.fpx = call ptr @_Py_VectorCallInstrumentation_StackRefSteal(i64 %.sroa.01898.0, ptr noundef %.09127, i32 noundef %.09126, i64 %.sroa.01886.0.copyload, i1 noundef zeroext true, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef %0) #8 ; 3 uses
  %.4.val10077 = load ptr, ptr %i.fom, align 8, !tbaa !50 ; 3 uses
  %i.fpy = icmp eq ptr %i.fpx, null
  br i1 %i.fpy, label %bb.akl, label %bb.akm

bb.akl:                                           ; preds = %bb.akk
  %i.fpz = getelementptr [8 x i8], ptr %.4.val10077, i64 %i.fna
  br label %.loopexit

bb.akm:                                           ; preds = %bb.akk
  %i.fqa = getelementptr i8, ptr %i.fpx, i64 6
  %i.fqb = load i16, ptr %i.fqa, align 2, !tbaa !30
  %i.fqc = and i16 %i.fqb, 1
  %i.fqd = ptrtoint ptr %i.fpx to i64
  %i.fqe = zext nneg i16 %i.fqc to i64
  %i.fqf = or i64 %i.fqe, %i.fqd
  %i.fqg = getelementptr [8 x i8], ptr %.4.val10077, i64 %i.fna
  store i64 %i.fqf, ptr %i.fqg, align 8, !tbaa !30
  %i.fqh = getelementptr [8 x i8], ptr %.4.val10077, i64 %i.fmx
  %i.fqi = load i16, ptr %i.fmv, align 2, !tbaa !101 ; 2 uses
  %.sroa.21853.0.extract.shift = lshr i16 %i.fqi, 8
  %.sroa.21853.0.extract.trunc = zext nneg i16 %.sroa.21853.0.extract.shift to i32
  %i.fqj = and i16 %i.fqi, 255
  %i.fqk = zext nneg i16 %i.fqj to i64
  br label %.backedge.backedge

bb.akn:                                           ; preds = %.backedge
  %i.fql = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.fql, align 8, !tbaa !33
  %i.fqm = getelementptr i8, ptr %.32, i64 2      ; 3 uses
  %i.fqn = load i32, ptr %i.ltu, align 8, !tbaa !245
  %.not9420 = icmp eq i32 %i.fqn, 0
  br i1 %.not9420, label %bb.ako, label %bb.akq

bb.ako:                                           ; preds = %bb.akn
  %i.fqo = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1003611565, ptr %i.fqo, align 8, !tbaa !50
  %i.fqp = sext i32 %.09034 to i64
  %i.fqq = sub nsw i64 0, %i.fqp
  %i.fqr = getelementptr [2 x i8], ptr %i.fqm, i64 %i.fqq
  %i.fqs = call ptr @_Py_call_instrumentation_jump(ptr noundef %.32, ptr noundef nonnull %0, i32 noundef 9, ptr noundef nonnull %.4, ptr noundef %i.fqr, ptr noundef %i.fqm) #8 ; 2 uses
  %.4.val10076 = load ptr, ptr %i.fqo, align 8, !tbaa !50 ; 2 uses
  %i.fqt = icmp eq ptr %i.fqs, null
  br i1 %i.fqt, label %bb.akp, label %bb.akq

bb.akp:                                           ; preds = %bb.ako
  %i.fqu = getelementptr i8, ptr %.32, i64 4
  br label %.loopexit

bb.akq:                                           ; preds = %bb.akn, %bb.ako
  %.269066 = phi ptr [ %.4.val10076, %bb.ako ], [ %.4.val1003611565, %bb.akn ] ; 3 uses
  %.7 = phi ptr [ %i.fqs, %bb.ako ], [ %i.fqm, %bb.akn ] ; 8 uses
  %i.fqv = getelementptr i8, ptr %.269066, i64 -8
  %.sroa.01840.0.copyload = load i64, ptr %i.fqv, align 8, !tbaa !30 ; 3 uses
  %i.fqw = getelementptr i8, ptr %.269066, i64 -16
  %.sroa.01844.0.copyload = load i64, ptr %i.fqw, align 8, !tbaa !30 ; 2 uses
  %i.fqx = and i64 %.sroa.01840.0.copyload, -2
  %i.fqy = inttoptr i64 %i.fqx to ptr             ; 4 uses
  %i.fqz = getelementptr i8, ptr %.4, i64 64      ; 4 uses
  store ptr %.269066, ptr %i.fqz, align 8, !tbaa !50
  %i.fra = load ptr, ptr @PyExc_StopAsyncIteration, align 8, !tbaa !51
  %i.frb = call i32 @PyErr_GivenExceptionMatches(ptr noundef %i.fqy, ptr noundef %i.fra) #8
  %.4.val10075 = load ptr, ptr %i.fqz, align 8, !tbaa !50 ; 3 uses
  %.not9421 = icmp eq i32 %i.frb, 0
  br i1 %.not9421, label %bb.akw, label %bb.akr

bb.akr:                                           ; preds = %bb.akq
  %i.frc = getelementptr i8, ptr %.4.val10075, i64 -8
  store i64 1, ptr %i.frc, align 8, !tbaa !30
  %i.frd = and i64 %.sroa.01840.0.copyload, 1
  %.not.not.i11003 = icmp eq i64 %i.frd, 0
  br i1 %.not.not.i11003, label %bb.aks, label %PyStackRef_CLOSE.exit11004

bb.aks:                                           ; preds = %bb.akr
  %i.fre = inttoptr i64 %.sroa.01840.0.copyload to ptr ; 3 uses
  %i.frf = load i32, ptr %i.fre, align 8, !tbaa !30
end_hunk_2
begin_hunk_3_@Test_EvalFrame:bb.a
  %i.iwt = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.iwu = load i16, ptr %i.iwt, align 2, !tbaa !101 ; 2 uses
  %.sroa.2819.0.extract.shift = lshr i16 %i.iwu, 8
  %.sroa.2819.0.extract.trunc = zext nneg i16 %.sroa.2819.0.extract.shift to i32
  %i.iwv = and i16 %i.iwu, 255
  %i.iww = zext nneg i16 %i.iwv to i64
  br label %.backedge.backedge

bb.bdi:                                           ; preds = %.backedge
  %i.iwx = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.iwx, align 8, !tbaa !33
  %i.iwy = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.iwz = load i16, ptr %i.iwy, align 2, !tbaa !101 ; 2 uses
  %.sroa.2817.0.extract.shift = lshr i16 %i.iwz, 8
  %.sroa.2817.0.extract.trunc = zext nneg i16 %.sroa.2817.0.extract.shift to i32
  %i.ixa = and i16 %i.iwz, 255
  %i.ixb = zext nneg i16 %i.ixa to i64
  br label %.backedge.backedge

bb.bdj:                                           ; preds = %.backedge
  %i.ixc = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.ixc, align 8, !tbaa !33
  %i.ixd = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.ixe = getelementptr i8, ptr %.4.val1003611565, i64 -8
  %.sroa.0814.0.copyload = load i64, ptr %i.ixe, align 8, !tbaa !30 ; 4 uses
  %i.ixf = load ptr, ptr %i.lua, align 8, !tbaa !235 ; 2 uses
  %i.ixg = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1003611565, ptr %i.ixg, align 8, !tbaa !50
  %i.ixh = load ptr, ptr %i.ixf, align 8, !tbaa !51 ; 6 uses
  %i.ixi = icmp eq i64 %.sroa.0814.0.copyload, %i.aa
  br i1 %i.ixi, label %PyStackRef_AsPyObjectSteal.exit11233, label %bb.bdk

bb.bdk:                                           ; preds = %bb.bdj
  %i.ixj = and i64 %.sroa.0814.0.copyload, 1
  %.not.not.i11231 = icmp eq i64 %i.ixj, 0
  br i1 %.not.not.i11231, label %bb.bdl, label %bb.bdm

bb.bdl:                                           ; preds = %bb.bdk
  %i.ixk = inttoptr i64 %.sroa.0814.0.copyload to ptr
  br label %PyStackRef_AsPyObjectSteal.exit11233

bb.bdm:                                           ; preds = %bb.bdk
  %i.ixl = and i64 %.sroa.0814.0.copyload, -2
  %i.ixm = inttoptr i64 %i.ixl to ptr             ; 4 uses
  %i.ixn = load i32, ptr %i.ixm, align 8, !tbaa !30 ; 2 uses
  %i.ixo = icmp ugt i32 %i.ixn, -1073741825
  br i1 %i.ixo, label %PyStackRef_AsPyObjectSteal.exit11233, label %bb.bdn

bb.bdn:                                           ; preds = %bb.bdm
  %i.ixp = add nuw i32 %i.ixn, 1
  store i32 %i.ixp, ptr %i.ixm, align 8, !tbaa !30
  br label %PyStackRef_AsPyObjectSteal.exit11233

PyStackRef_AsPyObjectSteal.exit11233:             ; preds = %bb.bdn, %bb.bdm, %bb.bdl, %bb.bdj
  %i.ixq = phi ptr [ null, %bb.bdj ], [ %i.ixk, %bb.bdl ], [ %i.ixm, %bb.bdm ], [ %i.ixm, %bb.bdn ]
  store ptr %i.ixq, ptr %i.ixf, align 8, !tbaa !51
  %.not9713 = icmp eq ptr %i.ixh, null
  br i1 %.not9713, label %bb.bdt, label %bb.bdo

bb.bdo:                                           ; preds = %PyStackRef_AsPyObjectSteal.exit11233
  %i.ixr = load i32, ptr %i.ixh, align 8, !tbaa !30 ; 2 uses
  %.not9714 = icmp sgt i32 %i.ixr, -1
  br i1 %.not9714, label %bb.bdp, label %bb.bdt

bb.bdp:                                           ; preds = %bb.bdo
  %i.ixs = add nsw i32 %i.ixr, -1                 ; 2 uses
  store i32 %i.ixs, ptr %i.ixh, align 8, !tbaa !30
  %i.ixt = icmp eq i32 %i.ixs, 0
  br i1 %i.ixt, label %bb.bdq, label %bb.bdt

bb.bdq:                                           ; preds = %bb.bdp
  %i.ixu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !41 ; 2 uses
  %.not9715 = icmp eq ptr %i.ixu, null
  br i1 %.not9715, label %bb.bds, label %bb.bdr

bb.bdr:                                           ; preds = %bb.bdq
  %i.ixv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !42
  %i.ixw = call i32 %i.ixu(ptr noundef nonnull %i.ixh, i32 noundef 1, ptr noundef %i.ixv) #8 ; 0 uses
  br label %bb.bds

bb.bds:                                           ; preds = %bb.bdq, %bb.bdr
  %i.ixx = getelementptr i8, ptr %i.ixh, i64 8
  %.val9836 = load ptr, ptr %i.ixx, align 8, !tbaa !43
  %i.ixy = getelementptr i8, ptr %.val9836, i64 48
  %i.ixz = load ptr, ptr %i.ixy, align 8, !tbaa !49
  call void %i.ixz(ptr noundef nonnull %i.ixh) #8
  br label %bb.bdt

bb.bdt:                                           ; preds = %bb.bdo, %bb.bds, %bb.bdp, %PyStackRef_AsPyObjectSteal.exit11233
  %.4.val9972 = load ptr, ptr %i.ixg, align 8, !tbaa !50
  %i.iya = getelementptr i8, ptr %.4.val9972, i64 -8
  %i.iyb = load i16, ptr %i.ixd, align 2, !tbaa !101 ; 2 uses
  %.sroa.2797.0.extract.shift = lshr i16 %i.iyb, 8
  %.sroa.2797.0.extract.trunc = zext nneg i16 %.sroa.2797.0.extract.shift to i32
  %i.iyc = and i16 %i.iyb, 255
  %i.iyd = zext nneg i16 %i.iyc to i64
  br label %.backedge.backedge

bb.bdu:                                           ; preds = %.backedge
  %i.iye = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.iye, align 8, !tbaa !33
  %i.iyf = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.iyg = getelementptr i8, ptr %.4.val1003611565, i64 -16 ; 2 uses
  %.sroa.0795.0.copyload = load i64, ptr %i.iyg, align 8, !tbaa !30 ; 2 uses
  %i.iyh = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %i.iyg, ptr %i.iyh, align 8, !tbaa !50
  %i.iyi = and i64 %.sroa.0795.0.copyload, 1
  %.not.not.i11234 = icmp eq i64 %i.iyi, 0
  br i1 %.not.not.i11234, label %bb.bdv, label %PyStackRef_CLOSE.exit11235

bb.bdv:                                           ; preds = %bb.bdu
  %i.iyj = inttoptr i64 %.sroa.0795.0.copyload to ptr ; 3 uses
  %i.iyk = load i32, ptr %i.iyj, align 8, !tbaa !30
  %i.iyl = add i32 %i.iyk, -1                     ; 2 uses
  store i32 %i.iyl, ptr %i.iyj, align 8, !tbaa !30
  %i.iym = icmp eq i32 %i.iyl, 0
  br i1 %i.iym, label %bb.bdw, label %PyStackRef_CLOSE.exit11235

bb.bdw:                                           ; preds = %bb.bdv
  call void @_Py_Dealloc(ptr noundef nonnull %i.iyj) #8
  br label %PyStackRef_CLOSE.exit11235

PyStackRef_CLOSE.exit11235:                       ; preds = %bb.bdu, %bb.bdv, %bb.bdw
  %.4.val9971 = load ptr, ptr %i.iyh, align 8, !tbaa !50
  %i.iyn = load i16, ptr %i.iyf, align 2, !tbaa !101 ; 2 uses
  %.sroa.2793.0.extract.shift = lshr i16 %i.iyn, 8
  %.sroa.2793.0.extract.trunc = zext nneg i16 %.sroa.2793.0.extract.shift to i32
  %i.iyo = and i16 %i.iyn, 255
  %i.iyp = zext nneg i16 %i.iyo to i64
  br label %.backedge.backedge

bb.bdx:                                           ; preds = %.backedge
  %i.iyq = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.iyq, align 8, !tbaa !33
  %i.iyr = getelementptr i8, ptr %.32, i64 4      ; 2 uses
  %i.iys = getelementptr i8, ptr %.4.val1003611565, i64 -8 ; 2 uses
  %.sroa.0789.0.copyload = load i64, ptr %i.iys, align 8, !tbaa !30
  %i.iyt = icmp eq i64 %.sroa.0789.0.copyload, %i.ltw ; 2 uses
  %i.iyu = zext i1 %i.iyt to i16
  %i.iyv = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.iyw = load i16, ptr %i.iyv, align 2, !tbaa !30
  %i.iyx = shl i16 %i.iyw, 1
  %i.iyy = or disjoint i16 %i.iyx, %i.iyu
  store i16 %i.iyy, ptr %i.iyv, align 2, !tbaa !30
  br i1 %i.iyt, label %bb.bdz, label %bb.bdy

bb.bdy:                                           ; preds = %bb.bdx
  %i.iyz = load i8, ptr %i.iyr, align 2, !tbaa !30
  %i.iza = icmp eq i8 %i.iyz, 28
  %i.izb = zext i1 %i.iza to i32
  br label %bb.bdz

bb.bdz:                                           ; preds = %bb.bdx, %bb.bdy
  %i.izc = phi i32 [ %i.izb, %bb.bdy ], [ %.09034, %bb.bdx ]
  %i.izd = sext i32 %i.izc to i64
  %i.ize = getelementptr [2 x i8], ptr %i.iyr, i64 %i.izd ; 2 uses
  %i.izf = load i16, ptr %i.ize, align 2, !tbaa !101 ; 2 uses
  %.sroa.2786.0.extract.shift = lshr i16 %i.izf, 8
  %.sroa.2786.0.extract.trunc = zext nneg i16 %.sroa.2786.0.extract.shift to i32
  %i.izg = and i16 %i.izf, 255
  %i.izh = zext nneg i16 %i.izg to i64
  br label %.backedge.backedge

bb.bea:                                           ; preds = %.backedge
  %i.izi = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.izi, align 8, !tbaa !33
  %i.izj = getelementptr i8, ptr %.32, i64 4      ; 2 uses
  %i.izk = getelementptr i8, ptr %.4.val1003611565, i64 -8 ; 2 uses
  %.sroa.0780.0.copyload = load i64, ptr %i.izk, align 8, !tbaa !30 ; 3 uses
  %i.izl = icmp eq i64 %.sroa.0780.0.copyload, %i.aa
  br i1 %i.izl, label %.thread13709, label %bb.beb

.thread13709:                                     ; preds = %bb.bea
  %i.izm = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.izn = load i16, ptr %i.izm, align 2, !tbaa !30
  %i.izo = shl i16 %i.izn, 1
  %i.izp = or disjoint i16 %i.izo, 1
  store i16 %i.izp, ptr %i.izm, align 2, !tbaa !30
  br label %bb.bef

bb.beb:                                           ; preds = %bb.bea
  %i.izq = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1003611565, ptr %i.izq, align 8, !tbaa !50
  store i64 %i.ltw, ptr %i.izk, align 8, !tbaa !30
  %i.izr = and i64 %.sroa.0780.0.copyload, 1
  %.not.not.i11236 = icmp eq i64 %i.izr, 0
  br i1 %.not.not.i11236, label %bb.bec, label %bb.bee

bb.bec:                                           ; preds = %bb.beb
  %i.izs = inttoptr i64 %.sroa.0780.0.copyload to ptr ; 3 uses
  %i.izt = load i32, ptr %i.izs, align 8, !tbaa !30
  %i.izu = add i32 %i.izt, -1                     ; 2 uses
  store i32 %i.izu, ptr %i.izs, align 8, !tbaa !30
  %i.izv = icmp eq i32 %i.izu, 0
  br i1 %i.izv, label %bb.bed, label %bb.bee

bb.bed:                                           ; preds = %bb.bec
  call void @_Py_Dealloc(ptr noundef nonnull %i.izs) #8
  br label %bb.bee

bb.bee:                                           ; preds = %bb.beb, %bb.bec, %bb.bed
  %.4.val9970 = load ptr, ptr %i.izq, align 8, !tbaa !50
  %i.izw = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.izx = load i16, ptr %i.izw, align 2, !tbaa !30
  %i.izy = shl i16 %i.izx, 1
  store i16 %i.izy, ptr %i.izw, align 2, !tbaa !30
  %18 = load i8, ptr %i.izj, align 2, !tbaa !30
  %19 = icmp eq i8 %18, 28
  %20 = zext i1 %19 to i32
  br label %bb.bef

bb.bef:                                           ; preds = %.thread13709, %bb.bee
  %.5213711 = phi ptr [ %.4.val9970, %bb.bee ], [ %.4.val1003611565, %.thread13709 ]
  %21 = phi i32 [ %20, %bb.bee ], [ %.09034, %.thread13709 ]
  %i.izz = sext i32 %21 to i64
  %i.jaa = getelementptr [2 x i8], ptr %i.izj, i64 %i.izz ; 2 uses
  %i.jab = getelementptr i8, ptr %.5213711, i64 -8
  %i.jac = load i16, ptr %i.jaa, align 2, !tbaa !101 ; 2 uses
  %.sroa.2772.0.extract.shift = lshr i16 %i.jac, 8
  %.sroa.2772.0.extract.trunc = zext nneg i16 %.sroa.2772.0.extract.shift to i32
  %i.jad = and i16 %i.jac, 255
  %i.jae = zext nneg i16 %i.jad to i64
  br label %.backedge.backedge

bb.beg:                                           ; preds = %.backedge
  %i.jaf = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jaf, align 8, !tbaa !33
  %i.jag = getelementptr i8, ptr %.32, i64 4      ; 2 uses
  %i.jah = getelementptr i8, ptr %.4.val1003611565, i64 -8 ; 2 uses
  %.sroa.0766.0.copyload = load i64, ptr %i.jah, align 8, !tbaa !30 ; 3 uses
  %i.jai = icmp eq i64 %.sroa.0766.0.copyload, %i.aa
  br i1 %i.jai, label %bb.bek, label %bb.beh

bb.beh:                                           ; preds = %bb.beg
  %i.jaj = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %.4.val1003611565, ptr %i.jaj, align 8, !tbaa !50
  store i64 %i.ltw, ptr %i.jah, align 8, !tbaa !30
  %i.jak = and i64 %.sroa.0766.0.copyload, 1
  %.not.not.i11238 = icmp eq i64 %i.jak, 0
  br i1 %.not.not.i11238, label %bb.bei, label %.thread13712

bb.bei:                                           ; preds = %bb.beh
  %i.jal = inttoptr i64 %.sroa.0766.0.copyload to ptr ; 3 uses
  %i.jam = load i32, ptr %i.jal, align 8, !tbaa !30
  %i.jan = add i32 %i.jam, -1                     ; 2 uses
  store i32 %i.jan, ptr %i.jal, align 8, !tbaa !30
  %i.jao = icmp eq i32 %i.jan, 0
  br i1 %i.jao, label %bb.bej, label %.thread13712

bb.bej:                                           ; preds = %bb.bei
  call void @_Py_Dealloc(ptr noundef nonnull %i.jal) #8
  br label %.thread13712

.thread13712:                                     ; preds = %bb.bej, %bb.bei, %bb.beh
  %.4.val9969 = load ptr, ptr %i.jaj, align 8, !tbaa !50
  %i.jap = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jaq = load i16, ptr %i.jap, align 2, !tbaa !30
  %i.jar = shl i16 %i.jaq, 1
  %i.jas = or disjoint i16 %i.jar, 1
  store i16 %i.jas, ptr %i.jap, align 2, !tbaa !30
  br label %bb.bel

bb.bek:                                           ; preds = %bb.beg
  %i.jat = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jau = load i16, ptr %i.jat, align 2, !tbaa !30
  %i.jav = shl i16 %i.jau, 1
  store i16 %i.jav, ptr %i.jat, align 2, !tbaa !30
  %22 = load i8, ptr %i.jag, align 2, !tbaa !30
  %23 = icmp eq i8 %22, 28
  %24 = zext i1 %23 to i32
  br label %bb.bel

bb.bel:                                           ; preds = %.thread13712, %bb.bek
  %.5313715 = phi ptr [ %.4.val1003611565, %bb.bek ], [ %.4.val9969, %.thread13712 ]
  %25 = phi i32 [ %24, %bb.bek ], [ %.09034, %.thread13712 ]
  %i.jaw = sext i32 %25 to i64
  %i.jax = getelementptr [2 x i8], ptr %i.jag, i64 %i.jaw ; 2 uses
  %i.jay = getelementptr i8, ptr %.5313715, i64 -8
  %i.jaz = load i16, ptr %i.jax, align 2, !tbaa !101 ; 2 uses
  %.sroa.2758.0.extract.shift = lshr i16 %i.jaz, 8
  %.sroa.2758.0.extract.trunc = zext nneg i16 %.sroa.2758.0.extract.shift to i32
  %i.jba = and i16 %i.jaz, 255
  %i.jbb = zext nneg i16 %i.jba to i64
  br label %.backedge.backedge

bb.bem:                                           ; preds = %.backedge
  %i.jbc = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jbc, align 8, !tbaa !33
  %i.jbd = getelementptr i8, ptr %.32, i64 4      ; 2 uses
  %i.jbe = getelementptr i8, ptr %.4.val1003611565, i64 -8 ; 2 uses
  %.sroa.0754.0.copyload = load i64, ptr %i.jbe, align 8, !tbaa !30
  %i.jbf = icmp eq i64 %.sroa.0754.0.copyload, %i.ltv ; 2 uses
  %i.jbg = zext i1 %i.jbf to i16
  %i.jbh = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jbi = load i16, ptr %i.jbh, align 2, !tbaa !30
  %i.jbj = shl i16 %i.jbi, 1
  %i.jbk = or disjoint i16 %i.jbj, %i.jbg
  store i16 %i.jbk, ptr %i.jbh, align 2, !tbaa !30
  br i1 %i.jbf, label %bb.beo, label %bb.ben

bb.ben:                                           ; preds = %bb.bem
  %i.jbl = load i8, ptr %i.jbd, align 2, !tbaa !30
  %i.jbm = icmp eq i8 %i.jbl, 28
  %i.jbn = zext i1 %i.jbm to i32
  br label %bb.beo

bb.beo:                                           ; preds = %bb.bem, %bb.ben
  %i.jbo = phi i32 [ %i.jbn, %bb.ben ], [ %.09034, %bb.bem ]
  %i.jbp = sext i32 %i.jbo to i64
  %i.jbq = getelementptr [2 x i8], ptr %i.jbd, i64 %i.jbp ; 2 uses
  %i.jbr = load i16, ptr %i.jbq, align 2, !tbaa !101 ; 2 uses
  %.sroa.2751.0.extract.shift = lshr i16 %i.jbr, 8
  %.sroa.2751.0.extract.trunc = zext nneg i16 %.sroa.2751.0.extract.shift to i32
  %i.jbs = and i16 %i.jbr, 255
  %i.jbt = zext nneg i16 %i.jbs to i64
  br label %.backedge.backedge

bb.bep:                                           ; preds = %.backedge
  %i.jbu = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jbu, align 8, !tbaa !33
  %i.jbv = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jbw = getelementptr i8, ptr %.4.val1003611565, i64 -8 ; 2 uses
  %.sroa.0749.0.copyload = load i64, ptr %i.jbw, align 8, !tbaa !30 ; 2 uses
  %i.jbx = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %i.jbw, ptr %i.jbx, align 8, !tbaa !50
  %i.jby = and i64 %.sroa.0749.0.copyload, 1
  %.not.not.i11240 = icmp eq i64 %i.jby, 0
  br i1 %.not.not.i11240, label %bb.beq, label %PyStackRef_XCLOSE.exit11241

bb.beq:                                           ; preds = %bb.bep
  %i.jbz = inttoptr i64 %.sroa.0749.0.copyload to ptr ; 3 uses
  %i.jca = load i32, ptr %i.jbz, align 8, !tbaa !30
  %i.jcb = add i32 %i.jca, -1                     ; 2 uses
  store i32 %i.jcb, ptr %i.jbz, align 8, !tbaa !30
  %i.jcc = icmp eq i32 %i.jcb, 0
  br i1 %i.jcc, label %bb.ber, label %PyStackRef_XCLOSE.exit11241

bb.ber:                                           ; preds = %bb.beq
  call void @_Py_Dealloc(ptr noundef nonnull %i.jbz) #8
  br label %PyStackRef_XCLOSE.exit11241

PyStackRef_XCLOSE.exit11241:                      ; preds = %bb.bep, %bb.beq, %bb.ber
  %.4.val9968 = load ptr, ptr %i.jbx, align 8, !tbaa !50
  %i.jcd = load i16, ptr %i.jbv, align 2, !tbaa !101 ; 2 uses
  %.sroa.2748.0.extract.shift = lshr i16 %i.jcd, 8
  %.sroa.2748.0.extract.trunc = zext nneg i16 %.sroa.2748.0.extract.shift to i32
  %i.jce = and i16 %i.jcd, 255
  %i.jcf = zext nneg i16 %i.jce to i64
  br label %.backedge.backedge

bb.bes:                                           ; preds = %.backedge
  %i.jcg = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jcg, align 8, !tbaa !33
  %i.jch = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  %i.jci = getelementptr i8, ptr %.4.val1003611565, i64 -8 ; 2 uses
  %.sroa.0745.0.copyload = load i64, ptr %i.jci, align 8, !tbaa !30 ; 2 uses
  %i.jcj = load ptr, ptr %i.lua, align 8, !tbaa !235 ; 2 uses
  %i.jck = load ptr, ptr %i.jcj, align 8, !tbaa !278 ; 3 uses
  %.not9712 = icmp eq ptr %i.jck, null
  br i1 %.not9712, label %bb.beu, label %bb.bet

bb.bet:                                           ; preds = %bb.bes
  %i.jcl = getelementptr i8, ptr %i.jck, i64 6
  %i.jcm = load i16, ptr %i.jcl, align 2, !tbaa !30
  %i.jcn = and i16 %i.jcm, 1
  %i.jco = ptrtoint ptr %i.jck to i64
  %i.jcp = zext nneg i16 %i.jcn to i64
  %i.jcq = or i64 %i.jcp, %i.jco
  br label %bb.beu

bb.beu:                                           ; preds = %bb.bes, %bb.bet
  %.sroa.0744.0 = phi i64 [ %i.jcq, %bb.bet ], [ %i.aa, %bb.bes ]
  %i.jcr = and i64 %.sroa.0745.0.copyload, -2
  %i.jcs = inttoptr i64 %i.jcr to ptr             ; 3 uses
  %i.jct = load i32, ptr %i.jcs, align 8, !tbaa !30 ; 2 uses
  %i.jcu = icmp ugt i32 %i.jct, -1073741825
  br i1 %i.jcu, label %_Py_NewRef.exit11242, label %bb.bev

bb.bev:                                           ; preds = %bb.beu
  %i.jcv = add nuw i32 %i.jct, 1
  store i32 %i.jcv, ptr %i.jcs, align 8, !tbaa !30
  br label %_Py_NewRef.exit11242

_Py_NewRef.exit11242:                             ; preds = %bb.beu, %bb.bev
  store ptr %i.jcs, ptr %i.jcj, align 8, !tbaa !278
  store i64 %.sroa.0744.0, ptr %i.jci, align 8, !tbaa !30
  store i64 %.sroa.0745.0.copyload, ptr %.4.val1003611565, align 8, !tbaa !30
  %i.jcw = getelementptr i8, ptr %.4.val1003611565, i64 8
  %i.jcx = load i16, ptr %i.jch, align 2, !tbaa !101 ; 2 uses
  %.sroa.2736.0.extract.shift = lshr i16 %i.jcx, 8
  %.sroa.2736.0.extract.trunc = zext nneg i16 %.sroa.2736.0.extract.shift to i32
  %i.jcy = and i16 %i.jcx, 255
  %i.jcz = zext nneg i16 %i.jcy to i64
  br label %.backedge.backedge

bb.bew:                                           ; preds = %.backedge
  %i.jda = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jda, align 8, !tbaa !33
  %i.jdb = getelementptr i8, ptr %.32, i64 2      ; 2 uses
  store i64 1, ptr %.4.val1003611565, align 8, !tbaa !30
  %i.jdc = getelementptr i8, ptr %.4.val1003611565, i64 8
  %i.jdd = load i16, ptr %i.jdb, align 2, !tbaa !101 ; 2 uses
  %.sroa.2732.0.extract.shift = lshr i16 %i.jdd, 8
  %.sroa.2732.0.extract.trunc = zext nneg i16 %.sroa.2732.0.extract.shift to i32
  %i.jde = and i16 %i.jdd, 255
  %i.jdf = zext nneg i16 %i.jde to i64
  br label %.backedge.backedge

bb.bex:                                           ; preds = %.backedge
  %i.jdg = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.jdg, align 8, !tbaa !33
  %i.jdh = getelementptr i8, ptr %.32, i64 2      ; 7 uses
  %i.jdi = sub i32 0, %.09034
  %i.jdj = sext i32 %i.jdi to i64
  %i.jdk = getelementptr [8 x i8], ptr %.4.val1003611565, i64 %i.jdj ; 5 uses
  %i.jdl = icmp eq i32 %.09034, 2
  br i1 %i.jdl, label %bb.bey, label %PyStackRef_AsPyObjectSteal.exit11245

bb.bey:                                           ; preds = %bb.bex
  %i.jdm = getelementptr i8, ptr %i.jdk, i64 8
  %i.jdn = load i64, ptr %i.jdm, align 8          ; 3 uses
  %i.jdo = and i64 %i.jdn, 1
  %.not.not.i11243 = icmp eq i64 %i.jdo, 0
  br i1 %.not.not.i11243, label %bb.bez, label %bb.bfa

bb.bez:                                           ; preds = %bb.bey
  %i.jdp = inttoptr i64 %i.jdn to ptr
  br label %PyStackRef_AsPyObjectSteal.exit11245.thread

bb.bfa:                                           ; preds = %bb.bey
  %i.jdq = and i64 %i.jdn, -2
  %i.jdr = inttoptr i64 %i.jdq to ptr             ; 4 uses
  %i.jds = load i32, ptr %i.jdr, align 8, !tbaa !30 ; 2 uses
  %i.jdt = icmp ugt i32 %i.jds, -1073741825
  br i1 %i.jdt, label %PyStackRef_AsPyObjectSteal.exit11245.thread, label %bb.bfb

bb.bfb:                                           ; preds = %bb.bfa
  %i.jdu = add nuw i32 %i.jds, 1
  store i32 %i.jdu, ptr %i.jdr, align 8, !tbaa !30
  br label %PyStackRef_AsPyObjectSteal.exit11245.thread

PyStackRef_AsPyObjectSteal.exit11245:             ; preds = %bb.bex
  %i.jdv = icmp sgt i32 %.09034, 0
  br i1 %i.jdv, label %PyStackRef_AsPyObjectSteal.exit11245.thread, label %PyStackRef_AsPyObjectSteal.exit11248.thread11584

PyStackRef_AsPyObjectSteal.exit11248.thread11584: ; preds = %PyStackRef_AsPyObjectSteal.exit11245
  %i.jdw = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %i.jdk, ptr %i.jdw, align 8, !tbaa !50
  br label %bb.bfe

PyStackRef_AsPyObjectSteal.exit11245.thread:      ; preds = %bb.bez, %bb.bfa, %bb.bfb, %PyStackRef_AsPyObjectSteal.exit11245
  %i.jdx = phi ptr [ null, %PyStackRef_AsPyObjectSteal.exit11245 ], [ %i.jdr, %bb.bfb ], [ %i.jdr, %bb.bfa ], [ %i.jdp, %bb.bez ] ; 22 uses
  %i.jdy = load i64, ptr %i.jdk, align 8          ; 4 uses
  %i.jdz = and i64 %i.jdy, 1
  %.not.not.i11246 = icmp eq i64 %i.jdz, 0
  br i1 %.not.not.i11246, label %PyStackRef_AsPyObjectSteal.exit11248, label %bb.bfc

bb.bfc:                                           ; preds = %PyStackRef_AsPyObjectSteal.exit11245.thread
  %i.jea = and i64 %i.jdy, -2
  %i.jeb = inttoptr i64 %i.jea to ptr             ; 3 uses
  %i.jec = load i32, ptr %i.jeb, align 8, !tbaa !30 ; 2 uses
  %i.jed = icmp ugt i32 %i.jec, -1073741825
  br i1 %i.jed, label %PyStackRef_AsPyObjectSteal.exit11248.thread, label %bb.bfd

bb.bfd:                                           ; preds = %bb.bfc
  %i.jee = add nuw i32 %i.jec, 1
  store i32 %i.jee, ptr %i.jeb, align 8, !tbaa !30
  br label %PyStackRef_AsPyObjectSteal.exit11248.thread

PyStackRef_AsPyObjectSteal.exit11248.thread:      ; preds = %bb.bfc, %bb.bfd
  %i.jef = getelementptr i8, ptr %.4, i64 64      ; 2 uses
  store ptr %i.jdk, ptr %i.jef, align 8, !tbaa !50
  br label %bb.bfi

PyStackRef_AsPyObjectSteal.exit11248:             ; preds = %PyStackRef_AsPyObjectSteal.exit11245.thread
  %i.jeg = inttoptr i64 %i.jdy to ptr
  %i.jeh = getelementptr i8, ptr %.4, i64 64      ; 3 uses
  store ptr %i.jdk, ptr %i.jeh, align 8, !tbaa !50
end_hunk_3
begin_hunk_4_@Test_EvalFrame:bb.a

bb.bvs:                                           ; preds = %bb.bvr
  %i.lra = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !41 ; 2 uses
  %.not22.i.i11448 = icmp eq ptr %i.lra, null
  br i1 %.not22.i.i11448, label %bb.bvu, label %bb.bvt

bb.bvt:                                           ; preds = %bb.bvs
  %i.lrb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !42
  %i.lrc = call i32 %i.lra(ptr noundef nonnull %i.lqu, i32 noundef 1, ptr noundef %i.lrb) #8, !inline_history !84 ; 0 uses
  br label %bb.bvu

bb.bvu:                                           ; preds = %bb.bvt, %bb.bvs
  %i.lrd = getelementptr i8, ptr %i.lqu, i64 8
  %.val23.i.i11449 = load ptr, ptr %i.lrd, align 8, !tbaa !43
  %i.lre = getelementptr i8, ptr %.val23.i.i11449, i64 48
  %i.lrf = load ptr, ptr %i.lre, align 8, !tbaa !49
  call void %i.lrf(ptr noundef nonnull %i.lqu) #8, !inline_history !84
  br label %monitor_unwind.exit

bb.bvv:                                           ; preds = %bb.bvj
  %i.lrg = load i32, ptr %i.o, align 4, !tbaa !10
  %i.lrh = sext i32 %i.lrg to i64
  %i.lri = getelementptr [8 x i8], ptr %i.lpz, i64 %i.lrh ; 2 uses
  %i.lrj = load ptr, ptr %i.lpf, align 8, !tbaa !50 ; 3 uses
  %i.lrk = icmp ugt ptr %i.lrj, %i.lri
  br i1 %i.lrk, label %.lr.ph12714, label %._crit_edge12715

.lr.ph12714:                                      ; preds = %bb.bvv, %PyStackRef_XCLOSE.exit11453
  %i.lrl = phi ptr [ %i.lrs, %PyStackRef_XCLOSE.exit11453 ], [ %i.lrj, %bb.bvv ]
  %i.lrm = getelementptr i8, ptr %i.lrl, i64 -8   ; 2 uses
  store ptr %i.lrm, ptr %i.lpf, align 8, !tbaa !50
  %.sroa.0.0.copyload.i11451 = load i64, ptr %i.lrm, align 8, !tbaa !30 ; 2 uses
  %i.lrn = and i64 %.sroa.0.0.copyload.i11451, 1
  %.not.not.i11452 = icmp eq i64 %i.lrn, 0
  br i1 %.not.not.i11452, label %bb.bvw, label %PyStackRef_XCLOSE.exit11453

bb.bvw:                                           ; preds = %.lr.ph12714
  %i.lro = inttoptr i64 %.sroa.0.0.copyload.i11451 to ptr ; 3 uses
  %i.lrp = load i32, ptr %i.lro, align 8, !tbaa !30
  %i.lrq = add i32 %i.lrp, -1                     ; 2 uses
  store i32 %i.lrq, ptr %i.lro, align 8, !tbaa !30
  %i.lrr = icmp eq i32 %i.lrq, 0
  br i1 %i.lrr, label %bb.bvx, label %PyStackRef_XCLOSE.exit11453

bb.bvx:                                           ; preds = %bb.bvw
  call void @_Py_Dealloc(ptr noundef nonnull %i.lro) #8
  br label %PyStackRef_XCLOSE.exit11453

PyStackRef_XCLOSE.exit11453:                      ; preds = %.lr.ph12714, %bb.bvw, %bb.bvx
  %i.lrs = load ptr, ptr %i.lpf, align 8, !tbaa !50 ; 3 uses
  %i.lrt = icmp ugt ptr %i.lrs, %i.lri
  br i1 %i.lrt, label %.lr.ph12714, label %._crit_edge12715, !llvm.loop !85

._crit_edge12715:                                 ; preds = %PyStackRef_XCLOSE.exit11453, %bb.bvv
  %.lcssa = phi ptr [ %i.lrj, %bb.bvv ], [ %i.lrs, %PyStackRef_XCLOSE.exit11453 ]
  %i.lru = load i32, ptr %i.q, align 4, !tbaa !10
  %.not9398 = icmp eq i32 %i.lru, 0
  br i1 %.not9398, label %bb.bvz, label %bb.bvy

bb.bvy:                                           ; preds = %._crit_edge12715
  %i.lrv = load ptr, ptr %i.lpg, align 8, !tbaa !33
  %.1.val10449 = load i64, ptr %.1.ph, align 8
  %i.lrw = and i64 %.1.val10449, 8589934590
  %i.lrx = ptrtoint ptr %i.lrv to i64
  %.neg11630 = add i64 %i.lrx, 8589934384
  %i.lry = sub i64 %.neg11630, %i.lrw
  %sext = shl i64 %i.lry, 31
  %i.lrz = ashr exact i64 %sext, 30
  %i.lsa = or i64 %i.lrz, 3
  store i64 %i.lsa, ptr %.lcssa, align 8, !tbaa !30
  %i.lsb = load ptr, ptr %i.lpf, align 8, !tbaa !50
  %i.lsc = getelementptr i8, ptr %i.lsb, i64 8
  store ptr %i.lsc, ptr %i.lpf, align 8, !tbaa !50
  br label %bb.bvz

bb.bvz:                                           ; preds = %bb.bvy, %._crit_edge12715
  %i.lsd = call ptr @_PyErr_GetRaisedException(ptr noundef %0) #8 ; 3 uses
  %i.lse = getelementptr i8, ptr %i.lsd, i64 6
  %i.lsf = load i16, ptr %i.lse, align 2, !tbaa !30
  %i.lsg = and i16 %i.lsf, 1
  %i.lsh = ptrtoint ptr %i.lsd to i64
  %i.lsi = zext nneg i16 %i.lsg to i64
  %i.lsj = or i64 %i.lsi, %i.lsh
  %i.lsk = load ptr, ptr %i.lpf, align 8, !tbaa !50
  store i64 %i.lsj, ptr %i.lsk, align 8, !tbaa !30
  %i.lsl = load ptr, ptr %i.lpf, align 8, !tbaa !50
  %i.lsm = getelementptr i8, ptr %i.lsl, i64 8
  store ptr %i.lsm, ptr %i.lpf, align 8, !tbaa !50
  %.1.val10448 = load i64, ptr %.1.ph, align 8
  %i.lsn = and i64 %.1.val10448, -2
  %i.lso = inttoptr i64 %i.lsn to ptr
  %i.lsp = getelementptr i8, ptr %i.lso, i64 208
  %i.lsq = load i32, ptr %i.p, align 4, !tbaa !10
  %i.lsr = sext i32 %i.lsq to i64
  %i.lss = getelementptr [2 x i8], ptr %i.lsp, i64 %i.lsr ; 3 uses
  %.val.i11454 = load ptr, ptr %i.lph, align 8, !tbaa !32
  %i.lst = getelementptr i8, ptr %.val.i11454, i64 223468
  %i.lsu = load i8, ptr %i.lst, align 1, !tbaa !30
  %i.lsv = icmp eq i8 %i.lsu, 0
  br i1 %i.lsv, label %.preheader11633.loopexit, label %monitor_handled.exit

monitor_handled.exit:                             ; preds = %bb.bvz
  %i.lsw = call i32 @_Py_call_instrumentation_arg(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull %.1.ph, ptr noundef %i.lss, ptr noundef nonnull %i.lsd) #8
  %i.lsx = icmp slt i32 %i.lsw, 0
  br i1 %i.lsx, label %bb.bvj, label %.preheader11633.loopexit

monitor_unwind.exit:                              ; preds = %bb.bvu, %bb.bvr, %bb.bvq, %bb.bvp, %bb.bvn, %._crit_edge12720, %_Py_EnterRecursivePy.exit11456
  %.2 = phi ptr [ %.3, %_Py_EnterRecursivePy.exit11456 ], [ %.1.ph, %._crit_edge12720 ], [ %.1.ph, %bb.bvn ], [ %.1.ph, %bb.bvp ], [ %.1.ph, %bb.bvq ], [ %.1.ph, %bb.bvr ], [ %.1.ph, %bb.bvu ] ; 2 uses
  %i.lsy = getelementptr i8, ptr %0, i64 52       ; 2 uses
  %i.lsz = load i32, ptr %i.lsy, align 4, !tbaa !100
  %i.lta = add i32 %i.lsz, 1
  store i32 %i.lta, ptr %i.lsy, align 4, !tbaa !100
  %i.ltb = getelementptr i8, ptr %.2, i64 8
  %i.ltc = load ptr, ptr %i.ltb, align 8, !tbaa !31 ; 7 uses
  store ptr %i.ltc, ptr %i.ai, align 8, !tbaa !98
  call void @_PyEval_FrameClearAndPop(ptr noundef nonnull %0, ptr noundef %.2) #8
  %i.ltd = getelementptr i8, ptr %i.ltc, i64 72
  store i16 0, ptr %i.ltd, align 8, !tbaa !59
  %i.lte = getelementptr i8, ptr %i.ltc, i64 74
  %i.ltf = load i8, ptr %i.lte, align 2, !tbaa !60
  %i.ltg = icmp eq i8 %i.ltf, 3
  br i1 %i.ltg, label %bb.bwa, label %bb.bwb

bb.bwa:                                           ; preds = %monitor_unwind.exit
  %i.lth = getelementptr i8, ptr %i.ltc, i64 8
  %i.lti = load ptr, ptr %i.lth, align 8, !tbaa !31
  store ptr %i.lti, ptr %i.ai, align 8, !tbaa !98
  br label %PyStackRef_AsPyObjectSteal.exit11052

bb.bwb:                                           ; preds = %monitor_unwind.exit
  %i.ltj = getelementptr i8, ptr %i.ltc, i64 56
  %i.ltk = load ptr, ptr %i.ltj, align 8, !tbaa !33
  %i.ltl = getelementptr i8, ptr %i.ltc, i64 64
  %.val9891 = load ptr, ptr %i.ltl, align 8, !tbaa !50
  br label %.loopexit

.sink.split:                                      ; preds = %bb.kn, %bb.po, %bb.rj, %bb.ail, %bb.akj, %_PyStackRef_FromPyObjectNew.exit11104, %PyStackRef_MakeHeapSafe.exit11283
  %.sink14225 = phi ptr [ %i.jsi, %PyStackRef_MakeHeapSafe.exit11283 ], [ %i.gxf, %_PyStackRef_FromPyObjectNew.exit11104 ], [ %i.fpo, %bb.akj ], [ %i.fip, %bb.ail ], [ %i.cds, %bb.rj ], [ %i.bvf, %bb.po ], [ %i.auw, %bb.kn ] ; 2 uses
  store ptr %.sink14225, ptr %i.ai, align 8, !tbaa !98
  br label %bb.bwc

bb.bwc:                                           ; preds = %.sink.split, %_Py_EnterRecursiveCallTstate.exit.thread
  %.3 = phi ptr [ %1, %_Py_EnterRecursiveCallTstate.exit.thread ], [ %.sink14225, %.sink.split ] ; 4 uses
  %i.ltm = getelementptr i8, ptr %0, i64 52       ; 2 uses
  %i.ltn = load i32, ptr %i.ltm, align 4, !tbaa !100 ; 2 uses
  %i.lto = add i32 %i.ltn, -1
  store i32 %i.lto, ptr %i.ltm, align 4, !tbaa !100
  %i.ltp = icmp slt i32 %i.ltn, 1
  br i1 %i.ltp, label %_Py_EnterRecursivePy.exit11456, label %_Py_EnterRecursivePy.exit11456.thread

_Py_EnterRecursivePy.exit11456:                   ; preds = %bb.bwc
  %i.ltq = call i32 @_Py_CheckRecursiveCallPy(ptr noundef nonnull %0) #8
  %.not11612 = icmp eq i32 %i.ltq, 0
  br i1 %.not11612, label %_Py_EnterRecursivePy.exit11456.thread, label %monitor_unwind.exit

_Py_EnterRecursivePy.exit11456.thread:            ; preds = %bb.bwc, %_Py_EnterRecursivePy.exit11456
  %i.ltr = getelementptr i8, ptr %.3, i64 56
  %i.lts = load ptr, ptr %i.ltr, align 8, !tbaa !33
  %i.ltt = getelementptr i8, ptr %.3, i64 64
  br label %.preheader11633

.preheader11633.loopexit:                         ; preds = %bb.bvz, %monitor_handled.exit
  br label %.preheader11633

.preheader11633:                                  ; preds = %.preheader11633.loopexit, %_Py_EnterRecursivePy.exit11456.thread
  %.65.ph.in = phi ptr [ %i.ltt, %_Py_EnterRecursivePy.exit11456.thread ], [ %i.lpf, %.preheader11633.loopexit ]
  %.32.ph = phi ptr [ %i.lts, %_Py_EnterRecursivePy.exit11456.thread ], [ %i.lss, %.preheader11633.loopexit ] ; 2 uses
  %.4.ph = phi ptr [ %.3, %_Py_EnterRecursivePy.exit11456.thread ], [ %.1.ph, %.preheader11633.loopexit ]
  %.09034.ph.in.in = load i16, ptr %.32.ph, align 2, !tbaa !101 ; 2 uses
  %.pn.in = and i16 %.09034.ph.in.in, 255
  %.pn = zext nneg i16 %.pn.in to i64
  %.09034.ph.in = lshr i16 %.09034.ph.in.in, 8
  %.09034.ph = zext nneg i16 %.09034.ph.in to i32
  %.65.ph = load ptr, ptr %.65.ph.in, align 8, !tbaa !50
  %i.ltu = getelementptr i8, ptr %0, i64 64       ; 13 uses
  %i.ltv = or disjoint i64 ptrtoint (ptr @_Py_TrueStruct to i64), 1 ; 4 uses
  %i.ltw = or disjoint i64 ptrtoint (ptr @_Py_FalseStruct to i64), 1 ; 7 uses
  %i.ltx = getelementptr i8, ptr %0, i64 24       ; 26 uses
  %i.lty = getelementptr i8, ptr %0, i64 16       ; 31 uses
  %i.ltz = getelementptr i8, ptr %0, i64 52       ; 39 uses
  %i.lua = getelementptr i8, ptr %0, i64 136      ; 10 uses
  %i.lub = getelementptr i8, ptr %0, i64 1000     ; 2 uses
  %i.luc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.lud = getelementptr i8, ptr %0, i64 256      ; 15 uses
  %i.lue = getelementptr i8, ptr %0, i64 264      ; 6 uses
  %i.luf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_Py_InitCleanup, i64 76), align 4 ; 2 uses
  %i.lug = sext i32 %i.luf to i64
  %i.luh = load i32, ptr @_Py_InitCleanup, align 8
  %.not.i.i10644 = icmp sgt i32 %i.luh, -1
  %i.lui = or disjoint i64 ptrtoint (ptr @_Py_InitCleanup to i64), 1
  %.sroa.0.0.i.i = select i1 %.not.i.i10644, i64 ptrtoint (ptr @_Py_InitCleanup to i64), i64 %i.lui
  %i.luj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_Py_InitCleanup, i64 72), align 8
  %i.luk = sext i32 %i.luj to i64
  %i.lul = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.lum = getelementptr i8, ptr %0, i64 128      ; 2 uses
  %i.lun = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.luo = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.lup = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.luq = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.lur = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  br label %.backedge

bb.bwd:                                           ; preds = %_Py_EnterRecursivePy.exit
  %i.lus = load i32, ptr %i.an, align 4, !tbaa !100
  %i.lut = add i32 %i.lus, 1
  store i32 %i.lut, ptr %i.an, align 4, !tbaa !100
  %i.luu = load ptr, ptr %i.al, align 8, !tbaa !31 ; 3 uses
  store ptr %i.luu, ptr %i.ai, align 8, !tbaa !98
  call void @_PyEval_FrameClearAndPop(ptr noundef nonnull %0, ptr noundef nonnull %1) #8
  %i.luv = getelementptr i8, ptr %i.luu, i64 72
  store i16 0, ptr %i.luv, align 8, !tbaa !59
  %i.luw = getelementptr i8, ptr %i.luu, i64 8
  %i.lux = load ptr, ptr %i.luw, align 8, !tbaa !31
  store ptr %i.lux, ptr %i.ai, align 8, !tbaa !98
  br label %PyStackRef_AsPyObjectSteal.exit11052

PyStackRef_AsPyObjectSteal.exit11052:             ; preds = %bb.aqc, %bb.aqb, %bb.aqa, %bb.bwd, %bb.bwa, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.bwd ], [ null, %bb.bwa ], [ %i.glp, %bb.aqa ], [ %i.glr, %bb.aqb ], [ %i.glr, %bb.aqc ]
  ret ptr %.0

.backedge:                                        ; preds = %.backedge.backedge, %.preheader11633
  %.4.val1003611565 = phi ptr [ %.65.ph, %.preheader11633 ], [ %.4.val1003611565.be, %.backedge.backedge ] ; 740 uses
  %.32 = phi ptr [ %.32.ph, %.preheader11633 ], [ %.32.be, %.backedge.backedge ] ; 635 uses
  %.09034 = phi i32 [ %.09034.ph, %.preheader11633 ], [ %.09034.be, %.backedge.backedge ] ; 282 uses
  %.4 = phi ptr [ %.4.ph, %.preheader11633 ], [ %.4.be, %.backedge.backedge ] ; 962 uses
  %.pn.pn = phi i64 [ %.pn, %.preheader11633 ], [ %.pn.pn.be, %.backedge.backedge ]
  %.4.val100361156514716 = ptrtoaddr ptr %.4.val1003611565 to i64
  %.in = getelementptr [8 x i8], ptr @Test_EvalFrame.opcode_targets_table, i64 %.pn.pn
  %i.luy = load ptr, ptr %.in, align 8, !tbaa !91
  indirectbr ptr %i.luy, [label %bb.jx, label %bb.hh, label %bb.jp, label %bb.bl, label %bb.os, label %bb.wp, label %bb.xd, label %bb.xh, label %bb.acg, label %bb.ads, label %bb.adv, label %bb.adz, label %bb.aed, label %bb.aej, label %bb.afq, label %bb.agg, label %bb.agm, label %bb.bil, label %bb.agt, label %bb.agw, label %bb.apz, label %bb.avv, label %bb.azb, label %bb.bcg, label %bb.bdb, label %bb.bdd, label %bb.bdf, label %bb.bdh, label %bb.bdi, label %bb.bdj, label %bb.bdu, label %bb.bep, label %bb.bes, label %bb.bew, label %bb.bix, label %bb.bjc, label %bb.bke, label %bb.bou, label %bb.bpn, label %bb.brf, label %bb.bsk, label %bb.bso, label %bb.bss, label %bb.buv, label %bb.m, label %bb.ic, label %bb.il, label %bb.in, label %bb.iq, label %bb.jg, label %bb.jm, label %bb.jv, label %bb.jy, label %bb.px, label %bb.qb, label %bb.qr, label %bb.yb, label %bb.zz, label %bb.aaw, label %bb.aba, label %bb.abc, label %bb.abg, label %bb.abk, label %bb.abs, label %bb.abx, label %bb.acb, label %bb.acm, label %bb.act, label %bb.adc, label %bb.aec, label %bb.aep, label %bb.agi, label %bb.ahf, label %bb.ahk, label %bb.aqd, label %bb.aqi, label %bb.aqm, label %bb.aqo, label %bb.aqp, label %bb.aqu, label %bb.arf, label %bb.avz, label %bb.awc, label %bb.awd, label %bb.awh, label %bb.awj, label %bb.awk, label %bb.awl, label %bb.awm, label %bb.awq, label %bb.awt, label %bb.axa, label %bb.ayc, label %bb.azg, label %bb.bai, label %bb.baj, label %bb.ban, label %bb.bcc, label %bb.bck, label %bb.bcs, label %bb.bdx, label %bb.bea, label %bb.beg, label %bb.bem, label %bb.bex, label %bb.bhx, label %bb.bje, label %bb.bkw, label %bb.blb, label %bb.blf, label %bb.blj, label %bb.bnm, label %bb.bnt, label %bb.bnw, label %bb.boa, label %bb.bof, label %bb.boj, label %bb.bre, label %bb.bst, label %bb.btd, label %bb.bvd, label %bb.bvf, label %bb.bsj, label %bb.ady, label %bb.ami, label %bb.alz, label %bb.aip, label %bb.ajp, label %bb.bim, label %bb.u, label %bb.ag, label %bb.as, label %bb.be, label %bb.cf, label %bb.cr, label %bb.dd, label %bb.dl, label %bb.dv, label %bb.eh, label %bb.ep, label %bb.fb, label %bb.fn, label %bb.gj, label %bb.gv, label %bb.kr, label %bb.lf, label %bb.lu, label %bb.mj, label %bb.mo, label %bb.mt, label %bb.my, label %bb.ni, label %bb.ny, label %bb.qh, label %bb.rn, label %bb.sd, label %bb.sh, label %bb.sr, label %bb.ta, label %bb.tm, label %bb.tt, label %bb.ua, label %bb.ul, label %bb.uz, label %bb.vd, label %bb.vm, label %bb.vu, label %bb.wb, label %bb.wi, label %bb.ys, label %bb.zd, label %bb.zo, label %bb.aai, label %bb.aap, label %bb.aev, label %bb.aez, label %bb.aff, label %bb.afk, label %bb.aql, label %bb.aqn, label %bb.arn, label %bb.arw, label %bb.asg, label %bb.asr, label %bb.atb, label %bb.atg, label %bb.atk, label %bb.atq, label %bb.aua, label %bb.aug, label %bb.auo, label %bb.auz, label %bb.avi, label %bb.ayj, label %bb.ayt, label %bb.bbg, label %bb.bbq, label %bb.biv, label %bb.bjz, label %bb.bls, label %bb.bmh, label %bb.bmu, label %bb.bpx, label %bb.bql, label %bb.brl, label %bb.brp, label %bb.brr, label %bb.brx, label %bb.bsb, label %bb.bsd, label %bb.btq, label %bb.bub, label %bb.bum, label %bb.aht, label %bb.amr, label %bb.akn, label %bb.apu, label %bb.apr, label %bb.apk, label %bb.aow, label %bb.aon, label %bb.aoh, label %bb.ape, label %bb.anx, label %bb.amd, label %bb.alv, label %bb.alp, label %bb.alk, label %bb.aoa, label %bb.alg]
}

declare void @_PyEval_FrameClearAndPop(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_Py_Instrument(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Specialize_BinaryOp(i64, i64, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #1

declare void @_PyFloat_ExactDealloc(ptr noundef) local_unnamed_addr #1

declare i64 @_PyCompactLong_Add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_PyLong_ExactDealloc(ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_Concat(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_PyUnicode_ExactDealloc(ptr noundef) local_unnamed_addr #1

declare void @PyUnicode_Append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @_PyCompactLong_Multiply(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyDict_GetItemRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_PyErr_SetKeyError(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @_PyFrame_PushUnchecked(ptr nofree noundef captures(none) %0, i64 %1, i32 noundef %2, ptr noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = and i64 %1, -2
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 7 uses
  %i.e = getelementptr i8, ptr %0, i64 256        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 14 uses
  %i.g = getelementptr i8, ptr %i.d, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !55
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [8 x i8], ptr %i.f, i64 %i.i
  store ptr %i.j, ptr %i.e, align 8, !tbaa !53
  %i.k = getelementptr i8, ptr %i.f, i64 8
  store ptr %3, ptr %i.k, align 8, !tbaa !31
  %i.l = getelementptr i8, ptr %i.f, i64 16
  store i64 %1, ptr %i.l, align 8, !tbaa !30
  %i.m = load i32, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = or i64 %i.n, 1
  br label %_PyStackRef_FromPyObjectNew.exit.i

bb.c:                                             ; preds = %bb.a
  %i.p = add nuw i32 %i.m, 1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !30
  %i.q = ptrtoint ptr %i.d to i64
  br label %_PyStackRef_FromPyObjectNew.exit.i

_PyStackRef_FromPyObjectNew.exit.i:               ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.b ], [ %i.q, %bb.c ]
  store i64 %.sroa.0.0.i.i, ptr %i.f, align 8, !tbaa !30
  %i.r = getelementptr i8, ptr %i.b, i64 16
  %i.s = getelementptr i8, ptr %i.f, i64 24
  %i.t = load <2 x ptr>, ptr %i.r, align 8, !tbaa !51
  store <2 x ptr> %i.t, ptr %i.s, align 8, !tbaa !51
  %i.u = getelementptr i8, ptr %i.f, i64 40
  store ptr null, ptr %i.u, align 8, !tbaa !56
  %i.v = getelementptr i8, ptr %i.f, i64 80       ; 2 uses
  %i.w = getelementptr i8, ptr %i.d, i64 72       ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !57   ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.f, i64 64
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !50
  %i.ab = getelementptr i8, ptr %i.f, i64 48
  store ptr null, ptr %i.ab, align 8, !tbaa !58
  %i.ac = getelementptr i8, ptr %i.d, i64 208
  %i.ad = getelementptr i8, ptr %i.f, i64 56
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !33
  %i.ae = getelementptr i8, ptr %i.f, i64 72
  store i16 0, ptr %i.ae, align 8, !tbaa !59
  %i.af = getelementptr i8, ptr %i.f, i64 74
  store i8 0, ptr %i.af, align 2, !tbaa !60
  %i.ag = getelementptr i8, ptr %i.f, i64 75
  store i8 0, ptr %i.ag, align 1, !tbaa !61
  %i.ah = icmp slt i32 %2, %i.x
  br i1 %i.ah, label %.lr.ph.preheader.i, label %_PyFrame_Initialize.exit

.lr.ph.preheader.i:                               ; preds = %_PyStackRef_FromPyObjectNew.exit.i
  %i.ai = sext i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.ai, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv.i
  store i64 1, ptr %i.aj, align 8, !tbaa !30
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ak = load i32, ptr %i.w, align 8, !tbaa !57
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next.i, %i.al
  br i1 %i.am, label %.lr.ph.i, label %_PyFrame_Initialize.exit, !llvm.loop !0

_PyFrame_Initialize.exit:                         ; preds = %.lr.ph.i, %_PyStackRef_FromPyObjectNew.exit.i
  ret ptr %i.f
}

declare ptr @_PyList_SliceSubscript(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @_PyCompactLong_Subtract(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyList_BinarySlice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyTuple_BinarySlice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyUnicode_BinarySlice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PySlice_New(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_GetItem(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyInterpolation_Build(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyList_FromStackRefStealOnSuccess(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @_Py_BuildMap_StackRefSteal(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PySet_New(ptr noundef) local_unnamed_addr #1

declare i32 @_PySet_AddTakeRef(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_Py_BuildString_StackRefSteal(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_PyTemplate_Build(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyTuple_FromStackRefStealOnSuccess(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Py_FatalErrorFunc(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_Py_Specialize_Call(i64, i64, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_PyFunction_Vectorcall(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare ptr @_PyEvalFramePushAndInit(ptr noundef, i64, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_Py_VectorCallInstrumentation_StackRefSteal(i64, ptr noundef, i32 noundef, i64, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyType_GenericAlloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @_Py_CallBuiltinClass_StackRefSteal(i64, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_Py_BuiltinCallFast_StackRefSteal(i64, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_Py_BuiltinCallFastWithKeywords_StackRefSteal(i64, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_Py_Check_ArgsIterable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PySequence_Tuple(ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_Call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyEvalFramePushAndInit_Ex(ptr noundef, i64, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Specialize_CallFunctionEx(i64, ptr noundef) local_unnamed_addr #1

declare i32 @_Py_call_instrumentation_2args(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_call_instrumentation_exc2(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_IsInstance(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Specialize_CallKw(i64, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_Py_VectorCall_StackRefSteal(i64, ptr noundef, i32 noundef, i64) local_unnamed_addr #1

declare i64 @PyObject_Size(ptr noundef) local_unnamed_addr #1

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #1

declare ptr @_PyCallMethodDescriptorFast_StackRefSteal(i64, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_PyCallMethodDescriptorFastWithKeywords_StackRefSteal(i64, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PyObject_Str(ptr noundef) local_unnamed_addr #1

end_hunk_4
