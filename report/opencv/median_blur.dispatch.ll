Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/median_blur.dispatch?download=true
inline.NumInlined: 1467
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN2cv12cpu_baseline10medianBlurERKNS_3MatERS1_i:bb.a
  %i.for = call i32 @llvm.umax.i32(i32 %i.fnu, i32 %i.fke)
  %i.fos = call i32 @llvm.umin.i32(i32 %i.for, i32 %i.foq)
  %i.fot = call i32 @llvm.umax.i32(i32 %i.fns, i32 %i.fkc)
  %i.fou = call i32 @llvm.umin.i32(i32 %i.foa, i32 %i.fjr)
  %i.fov = call i32 @llvm.umin.i32(i32 %i.fot, i32 %i.fou)
  %i.fow = call i32 @llvm.umin.i32(i32 %i.fnw, i32 %i.fkg)
  %i.fox = call i32 @llvm.umax.i32(i32 %i.fov, i32 %i.fow)
  %i.foy = call i32 @llvm.umin.i32(i32 %i.fos, i32 %i.fox)
  %i.foz = call i32 @llvm.umax.i32(i32 %i.fon, i32 %i.foy)
  %i.fpa = getelementptr inbounds [2 x i8], ptr %.33351211.i, i64 %indvars.iv1247.i
  %i.fpb = trunc nuw i32 %i.foz to i16
  store i16 %i.fpb, ptr %i.fpa, align 2, !tbaa !124
  %indvars.iv.next1248.i = add nsw i64 %indvars.iv1247.i, 1 ; 3 uses
  %i.fpc = icmp slt i64 %indvars.iv.next1248.i, %i.eey
  br i1 %i.fpc, label %.lr.ph1208.i, label %.loopexit1203.loopexit.i, !llvm.loop !59

bb.js:                                            ; preds = %._crit_edge.i76
  %i.fpd = getelementptr inbounds i8, ptr %.33351211.i, i64 %i.eev
  %exitcond1254.not.i = icmp eq i64 %indvars.iv.next1251.i, %wide.trip.count1253.i
  br i1 %exitcond1254.not.i, label %.loopexit.i69, label %bb.jr, !llvm.loop !60

.loopexit.i69:                                    ; preds = %bb.js, %.loopexit1496, %bb.jn, %.loopexit, %bb.jq, %bb.jp, %bb.jl, %bb.jj, %bb.jh
  %i.fpe = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.fpf = load i32, ptr %i.fpe, align 8, !tbaa !30
  %.not.i.i70 = icmp eq i32 %i.fpf, 0
  br i1 %.not.i.i70, label %_ZN2cv12cpu_baseline12_GLOBAL__N_118medianBlur_SortNetINS1_9MinMax16uES3_EEvRKNS_3MatERS4_i.exit, label %bb.jt

bb.jt:                                            ; preds = %.loopexit.i69
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %24)
          to label %_ZN2cv12cpu_baseline12_GLOBAL__N_118medianBlur_SortNetINS1_9MinMax16uES3_EEvRKNS_3MatERS4_i.exit unwind label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.fpg = landingpad { ptr, i32 }
          catch ptr null
  %i.fph = extractvalue { ptr, i32 } %i.fpg, 0
  call void @__clang_call_terminate(ptr %i.fph) #16
  unreachable

_ZN2cv12cpu_baseline12_GLOBAL__N_118medianBlur_SortNetINS1_9MinMax16uES3_EEvRKNS_3MatERS4_i.exit: ; preds = %.loopexit.i69, %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  br label %bb.py

bb.jv:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %21, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_118medianBlur_SortNetINS1_9MinMax16sES3_EEvRKNS_3MatERS4_iE25__cv_trace_location_fn626)
          to label %.noexc267 unwind label %bb.g

.noexc267:                                        ; preds = %bb.jv
  %i.fpi = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.fpj = load ptr, ptr %i.fpi, align 8, !tbaa !120 ; 11 uses
  %i.fpk = ptrtoaddr ptr %i.fpj to i64            ; 8 uses
  %i.fpl = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.fpm = load ptr, ptr %i.i, align 8, !tbaa !120 ; 5 uses
  %i.fpn = ptrtoaddr ptr %i.fpm to i64            ; 11 uses
  %i.fpo = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fpp = load i64, ptr %i.fpl, align 8, !tbaa !21
  %i.fpq = lshr i64 %i.fpp, 1                     ; 3 uses
  %i.fpr = trunc i64 %i.fpq to i32                ; 4 uses
  %i.fps = load i64, ptr %i.fpo, align 8, !tbaa !21
  %i.fpt = lshr i64 %i.fps, 1                     ; 3 uses
  %i.fpu = trunc i64 %i.fpt to i32                ; 2 uses
  %i.fpv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fpw = load i32, ptr %i.fpv, align 8, !tbaa !22 ; 6 uses
  %i.fpx = icmp slt i32 %i.fpw, 3
  br i1 %i.fpx, label %bb.jz, label %bb.jw

bb.jw:                                            ; preds = %.noexc267
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %.noexc.i138 unwind label %bb.kf

.noexc.i138:                                      ; preds = %bb.jw
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.17, i32 noundef 109) #14
          to label %bb.jx unwind label %bb.jy

bb.jx:                                            ; preds = %.noexc.i138
  unreachable

bb.jy:                                            ; preds = %.noexc.i138
  %i.fpy = landingpad { ptr, i32 }
          cleanup
  %i.fpz = load ptr, ptr %19, align 8, !tbaa !25  ; 2 uses
  %i.fqa = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fqb = icmp eq ptr %i.fpz, %i.fqa
  br i1 %i.fqb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139: ; preds = %bb.jy
  %i.fqc = load i64, ptr %i.fqa, align 8, !tbaa !26
  %i.fqd = add i64 %i.fqc, 1
  call void @_ZdlPvm(ptr noundef %i.fpz, i64 noundef %i.fqd) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i140: ; preds = %bb.jy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  br label %.body.i136

bb.jz:                                            ; preds = %.noexc267
  %i.fqe = icmp sgt i32 %i.fpw, 0
  br i1 %i.fqe, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %i.fqf = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.fqg = icmp eq i32 %i.fpw, 2
  %i.fqh = zext i1 %i.fqg to i64
  %i.fqi = getelementptr inbounds nuw [4 x i8], ptr %i.fqf, i64 %i.fqh
  %i.fqj = load i32, ptr %i.fqi, align 4, !tbaa !27
  br label %bb.kc

bb.kb:                                            ; preds = %bb.jz
  %i.fqk = icmp eq i32 %i.fpw, 0
  %i.fql = zext i1 %i.fqk to i32
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %i.fqm = phi i32 [ %i.fqj, %bb.ka ], [ %i.fql, %bb.kb ] ; 6 uses
  %i.fqn = icmp eq i32 %i.fpw, 2
  %i.fqo = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.fqp = load i32, ptr %i.fqo, align 4
  %i.fqq = icmp sgt i32 %i.fpw, -1
  %i.fqr = zext i1 %i.fqq to i32
  %i.fqs = select i1 %i.fqn, i32 %i.fqp, i32 %i.fqr ; 10 uses
  %i.fqt = load i32, ptr %29, align 8, !tbaa !16
  %i.fqu = lshr i32 %i.fqt, 5                     ; 3 uses
  %i.fqv = and i32 %i.fqu, 127                    ; 5 uses
  %i.fqw = add nuw nsw i32 %i.fqv, 1              ; 18 uses
  switch i32 %2, label %.loopexit.i143 [
    i32 3, label %bb.kd
    i32 5, label %bb.kj
  ]

bb.kd:                                            ; preds = %bb.kc
  %i.fqx = icmp eq i32 %i.fqm, 1
  %i.fqy = icmp eq i32 %i.fqs, 1                  ; 4 uses
  %or.cond.i215 = or i1 %i.fqx, %i.fqy
  br i1 %or.cond.i215, label %bb.ke, label %bb.kg

bb.ke:                                            ; preds = %bb.kd
  %i.fqz = add nsw i32 %i.fqs, %i.fqm             ; 2 uses
  %i.fra = select i1 %i.fqy, i32 %i.fqw, i32 %i.fpr ; 2 uses
  %i.frb = icmp sgt i32 %i.fqz, 1
  br i1 %i.frb, label %.preheader.lr.ph.i254, label %.loopexit.i143

.preheader.lr.ph.i254:                            ; preds = %bb.ke
  %i.frc = select i1 %i.fqy, i32 %i.fqw, i32 %i.fpu
  %i.frd = sub nsw i32 %i.fpr, %i.fqw
  %i.fre = sub nsw i32 0, %i.fra
  %i.frf = add nsw i32 %i.fqz, -2                 ; 2 uses
  %narrow1196.i255 = select i1 %i.fqy, i32 0, i32 %i.frd
  %i.frg = sext i32 %narrow1196.i255 to i64
  %i.frh = sext i32 %i.frc to i64                 ; 2 uses
  %wide.trip.count1277.i256 = zext nneg i32 %i.fqw to i64 ; 3 uses
  %i.fri = shl nsw i64 %i.frh, 1
  %min.iters.check1236 = icmp samesign ult i32 %i.fqv, 7
  %n.vec1238 = and i64 %wide.trip.count1277.i256, 248 ; 4 uses
  %i.frj = shl nuw nsw i64 %n.vec1238, 1
  %cmp.n1247 = icmp eq i64 %n.vec1238, %wide.trip.count1277.i256
  br label %.preheader.i257

.preheader.i257:                                  ; preds = %.loopexit1497, %.preheader.lr.ph.i254
  %indvar1227 = phi i64 [ %indvar.next1228, %.loopexit1497 ], [ 0, %.preheader.lr.ph.i254 ] ; 2 uses
  %.01235.i258 = phi ptr [ %i.fst, %.loopexit1497 ], [ %i.fpj, %.preheader.lr.ph.i254 ] ; 5 uses
  %.03321234.i259 = phi ptr [ %i.fsu, %.loopexit1497 ], [ %i.fpm, %.preheader.lr.ph.i254 ] ; 3 uses
  %.03361233.i260 = phi i32 [ %i.fss, %.loopexit1497 ], [ 0, %.preheader.lr.ph.i254 ] ; 4 uses
  %.not362.i261 = icmp eq i32 %.03361233.i260, 0
  %i.frk = select i1 %.not362.i261, i32 0, i32 %i.fre
  %i.frl = sext i32 %i.frk to i64                 ; 3 uses
  %i.frm = icmp slt i32 %.03361233.i260, %i.frf
  %i.frn = select i1 %i.frm, i32 %i.fra, i32 0
  %i.fro = sext i32 %i.frn to i64                 ; 3 uses
  br i1 %min.iters.check1236, label %scalar.ph1235.preheader, label %vector.memcheck1226

vector.memcheck1226:                              ; preds = %.preheader.i257
  %.01235.i2581229 = ptrtoaddr ptr %.01235.i258 to i64 ; 2 uses
  %i.frp = mul i64 %i.fri, %indvar1227
  %i.frq = add i64 %i.frp, %i.fpn                 ; 2 uses
  %i.frr = sub i64 %i.frq, %.01235.i2581229       ; 2 uses
  %i.frs = shl nsw i64 %i.fro, 1
  %i.frt = sub i64 %i.frs, %i.frr
  %diff.check1230 = icmp ugt i64 %i.frt, -16
  %i.fru = add i64 %i.frr, -1
  %diff.check1231 = icmp ult i64 %i.fru, 15
  %conflict.rdx1232 = or i1 %diff.check1230, %diff.check1231
  %i.frv = shl nsw i64 %i.frl, 1
  %i.frw = add i64 %i.frv, %.01235.i2581229
  %i.frx = sub i64 %i.frw, %i.frq
  %diff.check1233 = icmp ugt i64 %i.frx, -16
  %conflict.rdx1234 = or i1 %conflict.rdx1232, %diff.check1233
  br i1 %conflict.rdx1234, label %scalar.ph1235.preheader, label %vector.ph1237

vector.ph1237:                                    ; preds = %vector.memcheck1226
  %i.fry = getelementptr i8, ptr %.01235.i258, i64 %i.frj ; 2 uses
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1237
  %index1240 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1245, %vector.body1239 ] ; 3 uses
  %i.frz = shl i64 %index1240, 1
  %next.gep1241 = getelementptr i8, ptr %.01235.i258, i64 %i.frz ; 3 uses
  %i.fsa = getelementptr inbounds [2 x i8], ptr %next.gep1241, i64 %i.frl
  %wide.load1242 = load <8 x i16>, ptr %i.fsa, align 2, !tbaa !124
  %38 = sext <8 x i16> %wide.load1242 to <8 x i32> ; 2 uses
  %wide.load1243 = load <8 x i16>, ptr %next.gep1241, align 2, !tbaa !124
  %39 = sext <8 x i16> %wide.load1243 to <8 x i32> ; 2 uses
  %i.fsb = getelementptr inbounds [2 x i8], ptr %next.gep1241, i64 %i.fro
  %wide.load1244 = load <8 x i16>, ptr %i.fsb, align 2, !tbaa !124
  %40 = sext <8 x i16> %wide.load1244 to <8 x i32>
  %41 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %39, <8 x i32> %38)
  %42 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %39, <8 x i32> %38)
  %43 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %40, <8 x i32> %42)
  %44 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %43, <8 x i32> %41)
  %45 = trunc nsw <8 x i32> %44 to <8 x i16>
  %i.fsc = getelementptr inbounds nuw [2 x i8], ptr %.03321234.i259, i64 %index1240
  store <8 x i16> %45, ptr %i.fsc, align 2, !tbaa !124
  %index.next1245 = add nuw i64 %index1240, 8     ; 2 uses
  %i.fsd = icmp eq i64 %index.next1245, %n.vec1238
  br i1 %i.fsd, label %middle.block1246, label %vector.body1239, !llvm.loop !61

middle.block1246:                                 ; preds = %vector.body1239
  br i1 %cmp.n1247, label %.loopexit1497, label %scalar.ph1235.preheader

scalar.ph1235.preheader:                          ; preds = %vector.memcheck1226, %.preheader.i257, %middle.block1246
  %indvars.iv1274.i262.ph = phi i64 [ 0, %vector.memcheck1226 ], [ 0, %.preheader.i257 ], [ %n.vec1238, %middle.block1246 ]
  %.11232.i263.ph = phi ptr [ %.01235.i258, %vector.memcheck1226 ], [ %.01235.i258, %.preheader.i257 ], [ %i.fry, %middle.block1246 ]
  br label %scalar.ph1235

scalar.ph1235:                                    ; preds = %scalar.ph1235.preheader, %scalar.ph1235
  %indvars.iv1274.i262 = phi i64 [ %indvars.iv.next1275.i264, %scalar.ph1235 ], [ %indvars.iv1274.i262.ph, %scalar.ph1235.preheader ] ; 2 uses
  %.11232.i263 = phi ptr [ %i.fsq, %scalar.ph1235 ], [ %.11232.i263.ph, %scalar.ph1235.preheader ] ; 4 uses
  %i.fse = getelementptr inbounds [2 x i8], ptr %.11232.i263, i64 %i.frl
  %i.fsf = load i16, ptr %i.fse, align 2, !tbaa !124
  %i.fsg = sext i16 %i.fsf to i32                 ; 2 uses
  %i.fsh = load i16, ptr %.11232.i263, align 2, !tbaa !124
  %i.fsi = sext i16 %i.fsh to i32                 ; 2 uses
  %i.fsj = getelementptr inbounds [2 x i8], ptr %.11232.i263, i64 %i.fro
  %i.fsk = load i16, ptr %i.fsj, align 2, !tbaa !124
  %i.fsl = sext i16 %i.fsk to i32
  %i.fsm = call i32 @llvm.smin.i32(i32 %i.fsi, i32 %i.fsg)
  %.sroa.speculated.i.i = call i32 @llvm.smax.i32(i32 %i.fsi, i32 %i.fsg)
  %i.fsn = call i32 @llvm.smin.i32(i32 %i.fsl, i32 %.sroa.speculated.i.i)
  %.sroa.speculated.i397.i = call i32 @llvm.smax.i32(i32 %i.fsn, i32 %i.fsm)
  %i.fso = trunc nsw i32 %.sroa.speculated.i397.i to i16
  %i.fsp = getelementptr inbounds nuw [2 x i8], ptr %.03321234.i259, i64 %indvars.iv1274.i262
  store i16 %i.fso, ptr %i.fsp, align 2, !tbaa !124
  %indvars.iv.next1275.i264 = add nuw nsw i64 %indvars.iv1274.i262, 1 ; 2 uses
  %i.fsq = getelementptr inbounds nuw i8, ptr %.11232.i263, i64 2 ; 2 uses
  %exitcond1278.not.i265 = icmp eq i64 %indvars.iv.next1275.i264, %wide.trip.count1277.i256
  br i1 %exitcond1278.not.i265, label %.loopexit1497, label %scalar.ph1235, !llvm.loop !62

bb.kf:                                            ; preds = %bb.jw
  %i.fsr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i136

.body.i136:                                       ; preds = %bb.kf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i140
  %eh.lpad-body.i137 = phi { ptr, i32 } [ %i.fsr, %bb.kf ], [ %i.fpy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i140 ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %.body

.loopexit1497:                                    ; preds = %scalar.ph1235, %middle.block1246
  %.lcssa901 = phi ptr [ %i.fry, %middle.block1246 ], [ %i.fsq, %scalar.ph1235 ]
  %i.fss = add nuw nsw i32 %.03361233.i260, 1
  %i.fst = getelementptr inbounds [2 x i8], ptr %.lcssa901, i64 %i.frg
  %i.fsu = getelementptr inbounds [2 x i8], ptr %.03321234.i259, i64 %i.frh
  %exitcond1279.not.i266 = icmp eq i32 %.03361233.i260, %i.frf
  %indvar.next1228 = add i64 %indvar1227, 1
  br i1 %exitcond1279.not.i266, label %.loopexit.i143, label %.preheader.i257, !llvm.loop !63

bb.kg:                                            ; preds = %bb.kd
  %i.fsv = mul i32 %i.fqw, %i.fqm                 ; 3 uses
  %i.fsw = icmp sgt i32 %i.fqs, 0
  br i1 %i.fsw, label %.lr.ph1230.i216, label %.loopexit.i143

.lr.ph1230.i216:                                  ; preds = %bb.kg
  %sext359.i217 = shl i64 %i.fpq, 32              ; 4 uses
  %i.fsx = ashr exact i64 %sext359.i217, 32       ; 4 uses
  %i.fsy = add nsw i32 %i.fqs, -1                 ; 2 uses
  %i.fsz = sub i32 %i.fsv, %i.fqw                 ; 2 uses
  %i.fta = zext nneg i32 %i.fqw to i64            ; 9 uses
  %i.ftb = sub nsw i64 0, %i.fta                  ; 6 uses
  %sext360.i218 = shl i64 %i.fpt, 32
  %i.ftc = ashr exact i64 %sext360.i218, 31       ; 3 uses
  %i.ftd = zext nneg i32 %i.fqv to i64
  %i.fte = sext i32 %i.fsz to i64                 ; 3 uses
  %wide.trip.count1272.i219 = zext nneg i32 %i.fqs to i64
  %i.ftf = add i64 %i.fpn, -2
  %i.ftg = and i32 %i.fqu, 127
  %i.fth = zext nneg i32 %i.ftg to i64            ; 2 uses
  %i.fti = sext i32 %i.fsy to i64
  %i.ftj = ashr exact i64 %sext359.i217, 31
  %i.ftk = shl nuw nsw i64 %i.fth, 1              ; 2 uses
  %i.ftl = add i64 %i.ftk, %i.fpn
  %i.ftm = add i64 %i.ftl, 2
  %i.ftn = add i64 %i.fpn, -2
  %i.fto = sub i64 %i.fpn, %i.fpk                 ; 2 uses
  %i.ftp = sub i64 %i.ftm, %i.fpk                 ; 2 uses
  %i.ftq = add i64 %i.ftk, %i.fpk
  %i.ftr = sub i64 %i.ftn, %i.ftq                 ; 2 uses
  %i.fts = ashr exact i64 %sext359.i217, 31
  %i.ftt = sub nsw i64 %i.ftc, %i.fts
  %i.ftu = ashr exact i64 %sext359.i217, 31
  %invariant.op1639 = add i64 %i.ftr, -1
  %invariant.op1641 = add i64 %i.fto, -1
  %invariant.op1643 = add i64 %i.ftp, -1
  br label %bb.kh

bb.kh:                                            ; preds = %bb.ki, %.lr.ph1230.i216
  %indvars.iv1269.i220 = phi i64 [ 0, %.lr.ph1230.i216 ], [ %indvars.iv.next1270.i223, %bb.ki ] ; 7 uses
  %.13331228.i221 = phi ptr [ %i.fpm, %.lr.ph1230.i216 ], [ %i.fzr, %bb.ki ] ; 4 uses
  %i.ftv = mul i64 %i.ftc, %indvars.iv1269.i220   ; 4 uses
  %i.ftw = add nuw i64 %indvars.iv1269.i220, 1
  %smin1188 = call i64 @llvm.smin.i64(i64 %i.ftw, i64 %i.fti) ; 2 uses
  %i.ftx = mul i64 %i.fsx, %smin1188
  %i.fty = add i64 %i.ftx, %i.fth
  %i.ftz = shl i64 %i.fty, 1
  %i.fua = add i64 %i.ftf, %i.ftv
  %i.fub = add i64 %i.ftz, %i.fpk
  %i.fuc = add i64 %i.fto, %i.ftv                 ; 2 uses
  %i.fud = mul i64 %i.ftj, %smin1188              ; 2 uses
  %i.fue = add i64 %i.ftp, %i.ftv                 ; 2 uses
  %i.fuf = mul i64 %i.ftt, %indvars.iv1269.i220   ; 3 uses
  %i.fug = add i64 %i.ftr, %i.ftv
  %i.fuh = trunc i64 %indvars.iv1269.i220 to i32
  %smax1200 = call i32 @llvm.smax.i32(i32 %i.fuh, i32 1)
  %i.fui = zext nneg i32 %smax1200 to i64
  %i.fuj = add nsw i64 %i.fui, -1
  %i.fuk = mul i64 %i.ftu, %i.fuj                 ; 3 uses
  %i.ful = trunc nuw nsw i64 %indvars.iv1269.i220 to i32
  %i.fum = call i32 @llvm.smax.i32(i32 %i.ful, i32 1)
  %.sroa.speculated1179.i222 = add nsw i32 %i.fum, -1
  %i.fun = zext nneg i32 %.sroa.speculated1179.i222 to i64
  %i.fuo = mul nsw i64 %i.fsx, %i.fun
  %i.fup = getelementptr inbounds nuw [2 x i8], ptr %i.fpj, i64 %i.fuo ; 5 uses
  %i.fuq = mul nsw i64 %indvars.iv1269.i220, %i.fsx
  %i.fur = getelementptr inbounds nuw [2 x i8], ptr %i.fpj, i64 %i.fuq ; 5 uses
  %indvars.iv.next1270.i223 = add nuw nsw i64 %indvars.iv1269.i220, 1 ; 3 uses
  %i.fus = trunc nuw nsw i64 %indvars.iv.next1270.i223 to i32
  %.sroa.speculated1174.i224 = call i32 @llvm.smin.i32(i32 %i.fsy, i32 %i.fus)
  %i.fut = sext i32 %.sroa.speculated1174.i224 to i64
  %i.fuu = mul nsw i64 %i.fsx, %i.fut
  %i.fuv = getelementptr inbounds nuw [2 x i8], ptr %i.fpj, i64 %i.fuu ; 5 uses
  %i.fuw = sub i64 %i.fub, %i.fua
  %i.fux = sub i64 %i.fud, %i.fuc
  %i.fuy = sub i64 %i.fud, %i.fue
  %.reass1640 = add i64 %i.fuf, %invariant.op1639
  %.reass1642 = add i64 %i.fuf, %invariant.op1641
  %.reass1644 = add i64 %i.fuf, %invariant.op1643
  %diff.check1198 = icmp ult i64 %.reass1644, 15
  %i.fuz = sub i64 %i.fuk, %i.fug
  %i.fva = sub i64 %i.fuk, %i.fuc
  %i.fvb = sub i64 %i.fuk, %i.fue
  %diff.check1189 = icmp ugt i64 %i.fuw, -16
  %diff.check1190 = icmp ugt i64 %i.fux, -16
  %diff.check1192 = icmp ugt i64 %i.fuy, -16
  %diff.check1194 = icmp ult i64 %.reass1640, 15
  %diff.check1196 = icmp ult i64 %.reass1642, 15
  %diff.check1201 = icmp ugt i64 %i.fuz, -16
  %diff.check1203 = icmp ugt i64 %i.fva, -16
  %diff.check1205 = icmp ugt i64 %i.fvb, -16
  %i.fvc = insertelement <6 x i1> poison, i1 %diff.check1189, i64 0
  %i.fvd = insertelement <6 x i1> %i.fvc, i1 %diff.check1190, i64 1
  %i.fve = insertelement <6 x i1> %i.fvd, i1 %diff.check1192, i64 2
  %i.fvf = insertelement <6 x i1> %i.fve, i1 %diff.check1201, i64 3
  %i.fvg = insertelement <6 x i1> %i.fvf, i1 %diff.check1203, i64 4
  %i.fvh = insertelement <6 x i1> %i.fvg, i1 %diff.check1205, i64 5
  %i.fvi = insertelement <8 x i1> poison, i1 %diff.check1194, i64 0
  %i.fvj = insertelement <8 x i1> %i.fvi, i1 %diff.check1196, i64 1
  %i.fvk = shufflevector <6 x i1> %i.fvh, <6 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.fvl = shufflevector <8 x i1> %i.fvk, <8 x i1> %i.fvj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.fvm = bitcast <8 x i1> %i.fvl to i8
  %i.fvn = icmp ne i8 %i.fvm, 0
  %op.rdx1514 = or i1 %i.fvn, %diff.check1198
  br label %.loopexit1198.i230

.loopexit1198.loopexit.i245:                      ; preds = %.lr.ph1225.i233, %middle.block1223
  %indvars.iv.next1267.i244.lcssa = phi i64 [ %i.fxu, %middle.block1223 ], [ %indvars.iv.next1267.i244, %.lr.ph1225.i233 ]
  %i.fvo = trunc nsw i64 %indvars.iv.next1267.i244.lcssa to i32
  br label %.loopexit1198.i230.backedge

.loopexit1198.i230:                               ; preds = %.loopexit1198.i230.backedge, %bb.kh
  %.1343.i225 = phi i32 [ 0, %bb.kh ], [ %.1343.i225.be, %.loopexit1198.i230.backedge ] ; 3 uses
  %.0340.i226 = phi i32 [ %i.fqw, %bb.kh ], [ %i.fsv, %.loopexit1198.i230.backedge ] ; 4 uses
  %i.fvp = icmp slt i32 %.1343.i225, %.0340.i226
  br i1 %i.fvp, label %.lr.ph1221.preheader.i247, label %._crit_edge1222.i227

.lr.ph1221.preheader.i247:                        ; preds = %.loopexit1198.i230
  %i.fvq = sext i32 %.1343.i225 to i64
  %wide.trip.count1264.i248 = sext i32 %.0340.i226 to i64
  br label %.lr.ph1221.i249

.lr.ph1221.i249:                                  ; preds = %.lr.ph1221.i249, %.lr.ph1221.preheader.i247
  %indvars.iv1261.i250 = phi i64 [ %i.fvq, %.lr.ph1221.preheader.i247 ], [ %indvars.iv.next1262.i252, %.lr.ph1221.i249 ] ; 9 uses
  %.not361.not.i251 = icmp sgt i64 %indvars.iv1261.i250, %i.ftd
  %i.fvr = select i1 %.not361.not.i251, i64 %i.fta, i64 0
  %i.fvs = sub nsw i64 %indvars.iv1261.i250, %i.fvr ; 3 uses
  %i.fvt = icmp slt i64 %indvars.iv1261.i250, %i.fte
  %i.fvu = select i1 %i.fvt, i64 %i.fta, i64 0
  %i.fvv = add nsw i64 %i.fvu, %indvars.iv1261.i250 ; 3 uses
  %i.fvw = getelementptr inbounds [2 x i8], ptr %i.fup, i64 %i.fvs
  %i.fvx = load i16, ptr %i.fvw, align 2, !tbaa !124
  %i.fvy = sext i16 %i.fvx to i32                 ; 2 uses
  %i.fvz = getelementptr inbounds [2 x i8], ptr %i.fup, i64 %indvars.iv1261.i250
  %i.fwa = load i16, ptr %i.fvz, align 2, !tbaa !124
  %i.fwb = sext i16 %i.fwa to i32                 ; 2 uses
  %i.fwc = getelementptr inbounds [2 x i8], ptr %i.fup, i64 %i.fvv
  %i.fwd = load i16, ptr %i.fwc, align 2, !tbaa !124
  %i.fwe = sext i16 %i.fwd to i32                 ; 2 uses
  %i.fwf = getelementptr inbounds [2 x i8], ptr %i.fur, i64 %i.fvs
  %i.fwg = load i16, ptr %i.fwf, align 2, !tbaa !124
  %i.fwh = sext i16 %i.fwg to i32                 ; 2 uses
  %i.fwi = getelementptr inbounds [2 x i8], ptr %i.fur, i64 %indvars.iv1261.i250
  %i.fwj = load i16, ptr %i.fwi, align 2, !tbaa !124
  %i.fwk = sext i16 %i.fwj to i32                 ; 2 uses
  %i.fwl = getelementptr inbounds [2 x i8], ptr %i.fur, i64 %i.fvv
  %i.fwm = load i16, ptr %i.fwl, align 2, !tbaa !124
  %i.fwn = sext i16 %i.fwm to i32                 ; 2 uses
  %i.fwo = getelementptr inbounds [2 x i8], ptr %i.fuv, i64 %i.fvs
  %i.fwp = load i16, ptr %i.fwo, align 2, !tbaa !124
  %i.fwq = sext i16 %i.fwp to i32                 ; 2 uses
  %i.fwr = getelementptr inbounds [2 x i8], ptr %i.fuv, i64 %indvars.iv1261.i250
  %i.fws = load i16, ptr %i.fwr, align 2, !tbaa !124
  %i.fwt = sext i16 %i.fws to i32                 ; 2 uses
  %i.fwu = getelementptr inbounds [2 x i8], ptr %i.fuv, i64 %i.fvv
  %i.fwv = load i16, ptr %i.fwu, align 2, !tbaa !124
  %i.fww = sext i16 %i.fwv to i32                 ; 2 uses
  %i.fwx = call i32 @llvm.smin.i32(i32 %i.fwe, i32 %i.fwb) ; 2 uses
  %.sroa.speculated.i399.i = call i32 @llvm.smax.i32(i32 %i.fwe, i32 %i.fwb) ; 2 uses
  %i.fwy = call i32 @llvm.smin.i32(i32 %i.fwn, i32 %i.fwk) ; 2 uses
  %.sroa.speculated.i400.i = call i32 @llvm.smax.i32(i32 %i.fwn, i32 %i.fwk) ; 2 uses
  %i.fwz = call i32 @llvm.smin.i32(i32 %i.fww, i32 %i.fwt) ; 2 uses
  %.sroa.speculated.i401.i = call i32 @llvm.smax.i32(i32 %i.fww, i32 %i.fwt) ; 2 uses
  %i.fxa = call i32 @llvm.smin.i32(i32 %i.fwx, i32 %i.fvy)
  %.sroa.speculated.i402.i = call i32 @llvm.smax.i32(i32 %i.fwx, i32 %i.fvy) ; 2 uses
  %i.fxb = call i32 @llvm.smin.i32(i32 %i.fwy, i32 %i.fwh)
  %.sroa.speculated.i403.i = call i32 @llvm.smax.i32(i32 %i.fwy, i32 %i.fwh) ; 2 uses
  %i.fxc = call i32 @llvm.smin.i32(i32 %i.fwz, i32 %i.fwq)
  %.sroa.speculated.i404.i = call i32 @llvm.smax.i32(i32 %i.fwz, i32 %i.fwq) ; 2 uses
  %i.fxd = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i399.i, i32 %.sroa.speculated.i402.i)
  %.sroa.speculated.i405.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i399.i, i32 %.sroa.speculated.i402.i)
  %i.fxe = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i400.i, i32 %.sroa.speculated.i403.i) ; 2 uses
  %.sroa.speculated.i406.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i400.i, i32 %.sroa.speculated.i403.i)
  %i.fxf = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i401.i, i32 %.sroa.speculated.i404.i) ; 2 uses
  %.sroa.speculated.i407.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i401.i, i32 %.sroa.speculated.i404.i)
  %.sroa.speculated.i408.i = call i32 @llvm.smax.i32(i32 %i.fxb, i32 %i.fxa)
  %i.fxg = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i407.i, i32 %.sroa.speculated.i406.i)
  %i.fxh = call i32 @llvm.smin.i32(i32 %i.fxf, i32 %i.fxe)
  %.sroa.speculated.i410.i = call i32 @llvm.smax.i32(i32 %i.fxf, i32 %i.fxe)
  %.sroa.speculated.i411.i = call i32 @llvm.smax.i32(i32 %i.fxc, i32 %.sroa.speculated.i408.i)
  %.sroa.speculated.i412.i = call i32 @llvm.smax.i32(i32 %i.fxh, i32 %i.fxd)
  %i.fxi = call i32 @llvm.smin.i32(i32 %i.fxg, i32 %.sroa.speculated.i405.i) ; 2 uses
  %i.fxj = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i410.i, i32 %.sroa.speculated.i412.i) ; 2 uses
  %i.fxk = call i32 @llvm.smin.i32(i32 %i.fxi, i32 %i.fxj)
  %.sroa.speculated.i415.i = call i32 @llvm.smax.i32(i32 %i.fxi, i32 %i.fxj)
  %.sroa.speculated.i416.i = call i32 @llvm.smax.i32(i32 %i.fxk, i32 %.sroa.speculated.i411.i)
  %i.fxl = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i415.i, i32 %.sroa.speculated.i416.i)
  %i.fxm = trunc nsw i32 %i.fxl to i16
  %i.fxn = getelementptr inbounds [2 x i8], ptr %.13331228.i221, i64 %indvars.iv1261.i250
  store i16 %i.fxm, ptr %i.fxn, align 2, !tbaa !124
  %indvars.iv.next1262.i252 = add nsw i64 %indvars.iv1261.i250, 1 ; 2 uses
  %exitcond1265.not.i253 = icmp eq i64 %indvars.iv.next1262.i252, %wide.trip.count1264.i248
  br i1 %exitcond1265.not.i253, label %._crit_edge1222.i227, label %.lr.ph1221.i249, !llvm.loop !64

._crit_edge1222.i227:                             ; preds = %.lr.ph1221.i249, %.loopexit1198.i230
  %.2344.lcssa.i228 = phi i32 [ %.1343.i225, %.loopexit1198.i230 ], [ %.0340.i226, %.lr.ph1221.i249 ] ; 3 uses
  %i.fxo = icmp eq i32 %.0340.i226, %i.fsv
  br i1 %i.fxo, label %bb.ki, label %.preheader1197.i229

.preheader1197.i229:                              ; preds = %._crit_edge1222.i227
  %i.fxp = icmp slt i32 %.2344.lcssa.i228, %i.fsz
  br i1 %i.fxp, label %.lr.ph1225.preheader.i232, label %.loopexit1198.i230.backedge

.loopexit1198.i230.backedge:                      ; preds = %.preheader1197.i229, %.loopexit1198.loopexit.i245
  %.1343.i225.be = phi i32 [ %.2344.lcssa.i228, %.preheader1197.i229 ], [ %i.fvo, %.loopexit1198.loopexit.i245 ]
  br label %.loopexit1198.i230, !llvm.loop !65

.lr.ph1225.preheader.i232:                        ; preds = %.preheader1197.i229
  %i.fxq = sext i32 %.2344.lcssa.i228 to i64      ; 5 uses
  %i.fxr = add nsw i64 %i.fxq, 1
  %i.fxs = call i64 @llvm.smax.i64(i64 %i.fte, i64 %i.fxr)
  %i.fxt = sub i64 %i.fxs, %i.fxq                 ; 3 uses
  %min.iters.check1208 = icmp ult i64 %i.fxt, 8
  %brmerge1660 = select i1 %min.iters.check1208, i1 true, i1 %op.rdx1514
  br i1 %brmerge1660, label %.lr.ph1225.i233.preheader, label %vector.ph1209

vector.ph1209:                                    ; preds = %.lr.ph1225.preheader.i232
  %n.vec1210 = and i64 %i.fxt, -8                 ; 3 uses
  %i.fxu = add i64 %n.vec1210, %i.fxq             ; 2 uses
  br label %vector.body1211

vector.body1211:                                  ; preds = %vector.body1211, %vector.ph1209
  %index1212 = phi i64 [ 0, %vector.ph1209 ], [ %index.next1222, %vector.body1211 ] ; 2 uses
  %i.fxv = add i64 %index1212, %i.fxq             ; 4 uses
  %i.fxw = getelementptr inbounds [2 x i8], ptr %i.fup, i64 %i.fxv ; 3 uses
  %i.fxx = getelementptr inbounds [2 x i8], ptr %i.fxw, i64 %i.ftb
  %wide.load1213 = load <8 x i16>, ptr %i.fxx, align 2, !tbaa !124
  %46 = sext <8 x i16> %wide.load1213 to <8 x i32> ; 2 uses
  %wide.load1214 = load <8 x i16>, ptr %i.fxw, align 2, !tbaa !124
  %47 = sext <8 x i16> %wide.load1214 to <8 x i32> ; 2 uses
  %i.fxy = getelementptr inbounds nuw [2 x i8], ptr %i.fxw, i64 %i.fta
  %wide.load1215 = load <8 x i16>, ptr %i.fxy, align 2, !tbaa !124
  %48 = sext <8 x i16> %wide.load1215 to <8 x i32> ; 2 uses
  %i.fxz = getelementptr inbounds [2 x i8], ptr %i.fur, i64 %i.fxv ; 3 uses
  %i.fya = getelementptr inbounds [2 x i8], ptr %i.fxz, i64 %i.ftb
  %wide.load1216 = load <8 x i16>, ptr %i.fya, align 2, !tbaa !124
  %49 = sext <8 x i16> %wide.load1216 to <8 x i32> ; 2 uses
  %wide.load1217 = load <8 x i16>, ptr %i.fxz, align 2, !tbaa !124
  %50 = sext <8 x i16> %wide.load1217 to <8 x i32> ; 2 uses
  %i.fyb = getelementptr inbounds nuw [2 x i8], ptr %i.fxz, i64 %i.fta
  %wide.load1218 = load <8 x i16>, ptr %i.fyb, align 2, !tbaa !124
  %51 = sext <8 x i16> %wide.load1218 to <8 x i32> ; 2 uses
  %i.fyc = getelementptr inbounds [2 x i8], ptr %i.fuv, i64 %i.fxv ; 3 uses
  %i.fyd = getelementptr inbounds [2 x i8], ptr %i.fyc, i64 %i.ftb
  %wide.load1219 = load <8 x i16>, ptr %i.fyd, align 2, !tbaa !124
  %52 = sext <8 x i16> %wide.load1219 to <8 x i32> ; 2 uses
  %wide.load1220 = load <8 x i16>, ptr %i.fyc, align 2, !tbaa !124
  %53 = sext <8 x i16> %wide.load1220 to <8 x i32> ; 2 uses
  %i.fye = getelementptr inbounds nuw [2 x i8], ptr %i.fyc, i64 %i.fta
  %wide.load1221 = load <8 x i16>, ptr %i.fye, align 2, !tbaa !124
  %54 = sext <8 x i16> %wide.load1221 to <8 x i32> ; 2 uses
  %55 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %48, <8 x i32> %47) ; 2 uses
  %56 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %48, <8 x i32> %47) ; 2 uses
  %57 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %51, <8 x i32> %50) ; 2 uses
  %58 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %51, <8 x i32> %50) ; 2 uses
  %59 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %54, <8 x i32> %53) ; 2 uses
  %60 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %54, <8 x i32> %53) ; 2 uses
  %61 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %55, <8 x i32> %46)
  %62 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %55, <8 x i32> %46) ; 2 uses
  %63 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %57, <8 x i32> %49)
  %64 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %57, <8 x i32> %49) ; 2 uses
  %65 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %59, <8 x i32> %52)
  %66 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %59, <8 x i32> %52) ; 2 uses
  %67 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %56, <8 x i32> %62)
  %68 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %56, <8 x i32> %62)
  %69 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %58, <8 x i32> %64) ; 2 uses
  %70 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %58, <8 x i32> %64)
  %71 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %60, <8 x i32> %66) ; 2 uses
  %72 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %60, <8 x i32> %66)
  %73 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %63, <8 x i32> %61)
  %74 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %72, <8 x i32> %70)
  %75 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %71, <8 x i32> %69)
  %76 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %71, <8 x i32> %69)
  %77 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %65, <8 x i32> %73)
  %78 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %75, <8 x i32> %67)
  %79 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %74, <8 x i32> %68) ; 2 uses
  %80 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %76, <8 x i32> %78) ; 2 uses
  %81 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %79, <8 x i32> %80)
  %82 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %79, <8 x i32> %80)
  %83 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %81, <8 x i32> %77)
  %84 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %82, <8 x i32> %83)
  %i.fyf = getelementptr inbounds [2 x i8], ptr %.13331228.i221, i64 %i.fxv
  %85 = trunc nsw <8 x i32> %84 to <8 x i16>
  store <8 x i16> %85, ptr %i.fyf, align 2, !tbaa !124
  %index.next1222 = add nuw i64 %index1212, 8     ; 2 uses
  %i.fyg = icmp eq i64 %index.next1222, %n.vec1210
  br i1 %i.fyg, label %middle.block1223, label %vector.body1211, !llvm.loop !66

middle.block1223:                                 ; preds = %vector.body1211
  %cmp.n1224 = icmp eq i64 %i.fxt, %n.vec1210
  br i1 %cmp.n1224, label %.loopexit1198.loopexit.i245, label %.lr.ph1225.i233.preheader

.lr.ph1225.i233.preheader:                        ; preds = %.lr.ph1225.preheader.i232, %middle.block1223
  %indvars.iv1266.i234.ph = phi i64 [ %i.fxu, %middle.block1223 ], [ %i.fxq, %.lr.ph1225.preheader.i232 ]
  br label %.lr.ph1225.i233

.lr.ph1225.i233:                                  ; preds = %.lr.ph1225.i233.preheader, %.lr.ph1225.i233
  %indvars.iv1266.i234 = phi i64 [ %indvars.iv.next1267.i244, %.lr.ph1225.i233 ], [ %indvars.iv1266.i234.ph, %.lr.ph1225.i233.preheader ] ; 5 uses
  %i.fyh = getelementptr inbounds [2 x i8], ptr %i.fup, i64 %indvars.iv1266.i234 ; 3 uses
  %i.fyi = getelementptr inbounds [2 x i8], ptr %i.fyh, i64 %i.ftb
  %.val370.i235 = load i16, ptr %i.fyi, align 2, !tbaa !124
  %i.fyj = sext i16 %.val370.i235 to i32          ; 2 uses
  %.val369.i236 = load i16, ptr %i.fyh, align 2, !tbaa !124
  %i.fyk = sext i16 %.val369.i236 to i32          ; 2 uses
  %i.fyl = getelementptr inbounds nuw [2 x i8], ptr %i.fyh, i64 %i.fta
  %.val368.i237 = load i16, ptr %i.fyl, align 2, !tbaa !124
  %i.fym = sext i16 %.val368.i237 to i32          ; 2 uses
  %i.fyn = getelementptr inbounds [2 x i8], ptr %i.fur, i64 %indvars.iv1266.i234 ; 3 uses
  %i.fyo = getelementptr inbounds [2 x i8], ptr %i.fyn, i64 %i.ftb
  %.val367.i238 = load i16, ptr %i.fyo, align 2, !tbaa !124
  %i.fyp = sext i16 %.val367.i238 to i32          ; 2 uses
  %.val366.i239 = load i16, ptr %i.fyn, align 2, !tbaa !124
  %i.fyq = sext i16 %.val366.i239 to i32          ; 2 uses
  %i.fyr = getelementptr inbounds nuw [2 x i8], ptr %i.fyn, i64 %i.fta
  %.val365.i240 = load i16, ptr %i.fyr, align 2, !tbaa !124
  %i.fys = sext i16 %.val365.i240 to i32          ; 2 uses
  %i.fyt = getelementptr inbounds [2 x i8], ptr %i.fuv, i64 %indvars.iv1266.i234 ; 3 uses
  %i.fyu = getelementptr inbounds [2 x i8], ptr %i.fyt, i64 %i.ftb
  %.val364.i241 = load i16, ptr %i.fyu, align 2, !tbaa !124
  %i.fyv = sext i16 %.val364.i241 to i32          ; 2 uses
  %.val363.i242 = load i16, ptr %i.fyt, align 2, !tbaa !124
  %i.fyw = sext i16 %.val363.i242 to i32          ; 2 uses
  %i.fyx = getelementptr inbounds nuw [2 x i8], ptr %i.fyt, i64 %i.fta
  %.val.i243 = load i16, ptr %i.fyx, align 2, !tbaa !124
  %i.fyy = sext i16 %.val.i243 to i32             ; 2 uses
  %i.fyz = call i32 @llvm.smin.i32(i32 %i.fym, i32 %i.fyk) ; 2 uses
  %.sroa.speculated.i418.i = call i32 @llvm.smax.i32(i32 %i.fym, i32 %i.fyk) ; 2 uses
  %i.fza = call i32 @llvm.smin.i32(i32 %i.fys, i32 %i.fyq) ; 2 uses
  %.sroa.speculated.i419.i = call i32 @llvm.smax.i32(i32 %i.fys, i32 %i.fyq) ; 2 uses
  %i.fzb = call i32 @llvm.smin.i32(i32 %i.fyy, i32 %i.fyw) ; 2 uses
  %.sroa.speculated.i420.i = call i32 @llvm.smax.i32(i32 %i.fyy, i32 %i.fyw) ; 2 uses
  %i.fzc = call i32 @llvm.smin.i32(i32 %i.fyz, i32 %i.fyj)
  %.sroa.speculated.i421.i = call i32 @llvm.smax.i32(i32 %i.fyz, i32 %i.fyj) ; 2 uses
  %i.fzd = call i32 @llvm.smin.i32(i32 %i.fza, i32 %i.fyp)
  %.sroa.speculated.i422.i = call i32 @llvm.smax.i32(i32 %i.fza, i32 %i.fyp) ; 2 uses
  %i.fze = call i32 @llvm.smin.i32(i32 %i.fzb, i32 %i.fyv)
  %.sroa.speculated.i423.i = call i32 @llvm.smax.i32(i32 %i.fzb, i32 %i.fyv) ; 2 uses
  %i.fzf = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i418.i, i32 %.sroa.speculated.i421.i)
  %.sroa.speculated.i424.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i418.i, i32 %.sroa.speculated.i421.i)
  %i.fzg = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i419.i, i32 %.sroa.speculated.i422.i) ; 2 uses
  %.sroa.speculated.i425.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i419.i, i32 %.sroa.speculated.i422.i)
  %i.fzh = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i420.i, i32 %.sroa.speculated.i423.i) ; 2 uses
  %.sroa.speculated.i426.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i420.i, i32 %.sroa.speculated.i423.i)
  %.sroa.speculated.i427.i = call i32 @llvm.smax.i32(i32 %i.fzd, i32 %i.fzc)
  %i.fzi = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i426.i, i32 %.sroa.speculated.i425.i)
  %i.fzj = call i32 @llvm.smin.i32(i32 %i.fzh, i32 %i.fzg)
  %.sroa.speculated.i429.i = call i32 @llvm.smax.i32(i32 %i.fzh, i32 %i.fzg)
  %.sroa.speculated.i430.i = call i32 @llvm.smax.i32(i32 %i.fze, i32 %.sroa.speculated.i427.i)
  %.sroa.speculated.i431.i = call i32 @llvm.smax.i32(i32 %i.fzj, i32 %i.fzf)
  %i.fzk = call i32 @llvm.smin.i32(i32 %i.fzi, i32 %.sroa.speculated.i424.i) ; 2 uses
  %i.fzl = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i429.i, i32 %.sroa.speculated.i431.i) ; 2 uses
  %i.fzm = call i32 @llvm.smin.i32(i32 %i.fzk, i32 %i.fzl)
  %.sroa.speculated.i434.i = call i32 @llvm.smax.i32(i32 %i.fzk, i32 %i.fzl)
  %.sroa.speculated.i435.i = call i32 @llvm.smax.i32(i32 %i.fzm, i32 %.sroa.speculated.i430.i)
  %i.fzn = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i434.i, i32 %.sroa.speculated.i435.i)
  %i.fzo = getelementptr inbounds [2 x i8], ptr %.13331228.i221, i64 %indvars.iv1266.i234
  %i.fzp = trunc nsw i32 %i.fzn to i16
  store i16 %i.fzp, ptr %i.fzo, align 2, !tbaa !124
  %indvars.iv.next1267.i244 = add nsw i64 %indvars.iv1266.i234, 1 ; 3 uses
  %i.fzq = icmp slt i64 %indvars.iv.next1267.i244, %i.fte
  br i1 %i.fzq, label %.lr.ph1225.i233, label %.loopexit1198.loopexit.i245, !llvm.loop !67

bb.ki:                                            ; preds = %._crit_edge1222.i227
  %i.fzr = getelementptr inbounds i8, ptr %.13331228.i221, i64 %i.ftc
  %exitcond1273.not.i246 = icmp eq i64 %indvars.iv.next1270.i223, %wide.trip.count1272.i219
  br i1 %exitcond1273.not.i246, label %.loopexit.i143, label %bb.kh, !llvm.loop !68

bb.kj:                                            ; preds = %bb.kc
  %i.fzs = icmp eq i32 %i.fqm, 1
  %i.fzt = icmp eq i32 %i.fqs, 1                  ; 4 uses
  %or.cond5.i142 = or i1 %i.fzs, %i.fzt
  br i1 %or.cond5.i142, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.fzu = add nsw i32 %i.fqs, %i.fqm             ; 3 uses
  %i.fzv = select i1 %i.fzt, i32 %i.fqw, i32 %i.fpr ; 3 uses
  %i.fzw = icmp sgt i32 %i.fzu, 1
  br i1 %i.fzw, label %.preheader1200.lr.ph.i202, label %.loopexit.i143

.preheader1200.lr.ph.i202:                        ; preds = %bb.kk
  %i.fzx = select i1 %i.fzt, i32 %i.fqw, i32 %i.fpu
  %i.fzy = sub nsw i32 %i.fpr, %i.fqw
  %i.fzz = sub nsw i32 0, %i.fzv                  ; 2 uses
  %i.gaa = shl nsw i32 %i.fzz, 1
  %i.gab = add nsw i32 %i.fzu, -2                 ; 2 uses
  %i.gac = add nsw i32 %i.fzu, -3
  %i.gad = shl nsw i32 %i.fzv, 1
  %narrow.i203 = select i1 %i.fzt, i32 0, i32 %i.fzy
  %i.gae = sext i32 %narrow.i203 to i64
  %i.gaf = sext i32 %i.fzx to i64                 ; 2 uses
  %wide.trip.count1258.i204 = zext nneg i32 %i.fqw to i64 ; 3 uses
  %i.gag = shl nsw i64 %i.gaf, 1
  %min.iters.check1171 = icmp samesign ult i32 %i.fqv, 7
  %n.vec1173 = and i64 %wide.trip.count1258.i204, 248 ; 4 uses
  %i.gah = shl nuw nsw i64 %n.vec1173, 1
  %cmp.n1184 = icmp eq i64 %n.vec1173, %wide.trip.count1258.i204
  br label %.preheader1200.i205

.preheader1200.i205:                              ; preds = %.loopexit1498, %.preheader1200.lr.ph.i202
  %indvar1158 = phi i64 [ %indvar.next1159, %.loopexit1498 ], [ 0, %.preheader1200.lr.ph.i202 ] ; 2 uses
  %.21218.i206 = phi ptr [ %i.gcn, %.loopexit1498 ], [ %i.fpj, %.preheader1200.lr.ph.i202 ] ; 5 uses
  %.23341217.i207 = phi ptr [ %i.gco, %.loopexit1498 ], [ %i.fpm, %.preheader1200.lr.ph.i202 ] ; 3 uses
  %.23381216.i208 = phi i32 [ %i.gcm, %.loopexit1498 ], [ 0, %.preheader1200.lr.ph.i202 ] ; 6 uses
  %.not358.i209 = icmp eq i32 %.23381216.i208, 0
  %i.gai = select i1 %.not358.i209, i32 0, i32 %i.fzz ; 2 uses
  %i.gaj = icmp samesign ugt i32 %.23381216.i208, 1
  %i.gak = select i1 %i.gaj, i32 %i.gaa, i32 %i.gai
  %i.gal = icmp slt i32 %.23381216.i208, %i.gab
  %i.gam = select i1 %i.gal, i32 %i.fzv, i32 0    ; 2 uses
  %i.gan = icmp slt i32 %.23381216.i208, %i.gac
  %i.gao = select i1 %i.gan, i32 %i.gad, i32 %i.gam
  %i.gap = sext i32 %i.gak to i64                 ; 3 uses
  %i.gaq = sext i32 %i.gai to i64                 ; 3 uses
  %i.gar = sext i32 %i.gam to i64                 ; 3 uses
  %i.gas = sext i32 %i.gao to i64                 ; 3 uses
  br i1 %min.iters.check1171, label %scalar.ph1170.preheader, label %vector.memcheck1157

vector.memcheck1157:                              ; preds = %.preheader1200.i205
  %.21218.i2061160 = ptrtoaddr ptr %.21218.i206 to i64 ; 3 uses
  %i.gat = mul i64 %i.gag, %indvar1158
  %i.gau = add i64 %i.gat, %i.fpn                 ; 3 uses
  %i.gav = sub i64 %i.gau, %.21218.i2061160       ; 2 uses
  %i.gaw = shl nsw i64 %i.gas, 1
  %i.gax = sub i64 %i.gaw, %i.gav
  %diff.check1161 = icmp ugt i64 %i.gax, -16
  %i.gay = shl nsw i64 %i.gar, 1
  %i.gaz = sub i64 %i.gay, %i.gav
  %diff.check1162 = icmp ugt i64 %i.gaz, -16
  %conflict.rdx1163 = or i1 %diff.check1161, %diff.check1162
  %i.gba = sub i64 %i.gau, %.21218.i2061160       ; 2 uses
  %i.gbb = add i64 %i.gba, -1
  %diff.check1164 = icmp ult i64 %i.gbb, 15
  %conflict.rdx1165 = or i1 %conflict.rdx1163, %diff.check1164
  %i.gbc = shl nsw i64 %i.gaq, 1
  %i.gbd = sub i64 %i.gbc, %i.gba
  %diff.check1166 = icmp ugt i64 %i.gbd, -16
  %conflict.rdx1167 = or i1 %conflict.rdx1165, %diff.check1166
  %i.gbe = shl nsw i64 %i.gap, 1
  %i.gbf = add i64 %i.gbe, %.21218.i2061160
  %i.gbg = sub i64 %i.gbf, %i.gau
  %diff.check1168 = icmp ugt i64 %i.gbg, -16
  %conflict.rdx1169 = or i1 %conflict.rdx1167, %diff.check1168
  br i1 %conflict.rdx1169, label %scalar.ph1170.preheader, label %vector.ph1172

vector.ph1172:                                    ; preds = %vector.memcheck1157
  %i.gbh = getelementptr i8, ptr %.21218.i206, i64 %i.gah ; 2 uses
  br label %vector.body1174

vector.body1174:                                  ; preds = %vector.body1174, %vector.ph1172
  %index1175 = phi i64 [ 0, %vector.ph1172 ], [ %index.next1182, %vector.body1174 ] ; 3 uses
  %i.gbi = shl i64 %index1175, 1
  %next.gep1176 = getelementptr i8, ptr %.21218.i206, i64 %i.gbi ; 5 uses
  %i.gbj = getelementptr inbounds [2 x i8], ptr %next.gep1176, i64 %i.gap
  %wide.load1177 = load <8 x i16>, ptr %i.gbj, align 2, !tbaa !124
  %86 = sext <8 x i16> %wide.load1177 to <8 x i32> ; 2 uses
  %i.gbk = getelementptr inbounds [2 x i8], ptr %next.gep1176, i64 %i.gaq
  %wide.load1178 = load <8 x i16>, ptr %i.gbk, align 2, !tbaa !124
  %87 = sext <8 x i16> %wide.load1178 to <8 x i32> ; 2 uses
  %wide.load1179 = load <8 x i16>, ptr %next.gep1176, align 2, !tbaa !124
  %88 = sext <8 x i16> %wide.load1179 to <8 x i32> ; 2 uses
  %i.gbl = getelementptr inbounds [2 x i8], ptr %next.gep1176, i64 %i.gar
  %wide.load1180 = load <8 x i16>, ptr %i.gbl, align 2, !tbaa !124
  %89 = sext <8 x i16> %wide.load1180 to <8 x i32> ; 2 uses
  %i.gbm = getelementptr inbounds [2 x i8], ptr %next.gep1176, i64 %i.gas
  %wide.load1181 = load <8 x i16>, ptr %i.gbm, align 2, !tbaa !124
  %90 = sext <8 x i16> %wide.load1181 to <8 x i32> ; 2 uses
  %91 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %87, <8 x i32> %86)
  %92 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %87, <8 x i32> %86)
  %93 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %90, <8 x i32> %89) ; 2 uses
  %94 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %90, <8 x i32> %89) ; 2 uses
  %95 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %93, <8 x i32> %88)
  %96 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %93, <8 x i32> %88) ; 2 uses
  %97 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %94, <8 x i32> %96)
  %98 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %94, <8 x i32> %96)
  %99 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %95, <8 x i32> %91)
  %100 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %98, <8 x i32> %99)
  %101 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %97, <8 x i32> %92)
  %102 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %100, <8 x i32> %101)
  %103 = trunc nsw <8 x i32> %102 to <8 x i16>
  %i.gbn = getelementptr inbounds nuw [2 x i8], ptr %.23341217.i207, i64 %index1175
  store <8 x i16> %103, ptr %i.gbn, align 2, !tbaa !124
  %index.next1182 = add nuw i64 %index1175, 8     ; 2 uses
  %i.gbo = icmp eq i64 %index.next1182, %n.vec1173
  br i1 %i.gbo, label %middle.block1183, label %vector.body1174, !llvm.loop !69

middle.block1183:                                 ; preds = %vector.body1174
  br i1 %cmp.n1184, label %.loopexit1498, label %scalar.ph1170.preheader

scalar.ph1170.preheader:                          ; preds = %vector.memcheck1157, %.preheader1200.i205, %middle.block1183
  %indvars.iv1255.i210.ph = phi i64 [ 0, %vector.memcheck1157 ], [ 0, %.preheader1200.i205 ], [ %n.vec1173, %middle.block1183 ]
  %.31215.i211.ph = phi ptr [ %.21218.i206, %vector.memcheck1157 ], [ %.21218.i206, %.preheader1200.i205 ], [ %i.gbh, %middle.block1183 ]
  br label %scalar.ph1170

scalar.ph1170:                                    ; preds = %scalar.ph1170.preheader, %scalar.ph1170
  %indvars.iv1255.i210 = phi i64 [ %indvars.iv.next1256.i212, %scalar.ph1170 ], [ %indvars.iv1255.i210.ph, %scalar.ph1170.preheader ] ; 2 uses
  %.31215.i211 = phi ptr [ %i.gcl, %scalar.ph1170 ], [ %.31215.i211.ph, %scalar.ph1170.preheader ] ; 6 uses
  %i.gbp = getelementptr inbounds [2 x i8], ptr %.31215.i211, i64 %i.gap
  %i.gbq = load i16, ptr %i.gbp, align 2, !tbaa !124
  %i.gbr = sext i16 %i.gbq to i32                 ; 2 uses
  %i.gbs = getelementptr inbounds [2 x i8], ptr %.31215.i211, i64 %i.gaq
  %i.gbt = load i16, ptr %i.gbs, align 2, !tbaa !124
  %i.gbu = sext i16 %i.gbt to i32                 ; 2 uses
  %i.gbv = load i16, ptr %.31215.i211, align 2, !tbaa !124
  %i.gbw = sext i16 %i.gbv to i32                 ; 2 uses
  %i.gbx = getelementptr inbounds [2 x i8], ptr %.31215.i211, i64 %i.gar
  %i.gby = load i16, ptr %i.gbx, align 2, !tbaa !124
  %i.gbz = sext i16 %i.gby to i32                 ; 2 uses
  %i.gca = getelementptr inbounds [2 x i8], ptr %.31215.i211, i64 %i.gas
  %i.gcb = load i16, ptr %i.gca, align 2, !tbaa !124
  %i.gcc = sext i16 %i.gcb to i32                 ; 2 uses
  %i.gcd = call i32 @llvm.smin.i32(i32 %i.gbu, i32 %i.gbr)
  %.sroa.speculated.i437.i = call i32 @llvm.smax.i32(i32 %i.gbu, i32 %i.gbr)
  %i.gce = call i32 @llvm.smin.i32(i32 %i.gcc, i32 %i.gbz) ; 2 uses
  %.sroa.speculated.i438.i = call i32 @llvm.smax.i32(i32 %i.gcc, i32 %i.gbz) ; 2 uses
  %i.gcf = call i32 @llvm.smin.i32(i32 %i.gce, i32 %i.gbw)
  %.sroa.speculated.i439.i = call i32 @llvm.smax.i32(i32 %i.gce, i32 %i.gbw) ; 2 uses
  %i.gcg = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i438.i, i32 %.sroa.speculated.i439.i)
  %.sroa.speculated.i440.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i438.i, i32 %.sroa.speculated.i439.i)
  %.sroa.speculated.i441.i = call i32 @llvm.smax.i32(i32 %i.gcf, i32 %i.gcd)
  %i.gch = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i440.i, i32 %.sroa.speculated.i441.i)
  %i.gci = call i32 @llvm.smin.i32(i32 %i.gcg, i32 %.sroa.speculated.i437.i)
  %.sroa.speculated.i444.i = call i32 @llvm.smax.i32(i32 %i.gch, i32 %i.gci)
  %i.gcj = trunc nsw i32 %.sroa.speculated.i444.i to i16
  %i.gck = getelementptr inbounds nuw [2 x i8], ptr %.23341217.i207, i64 %indvars.iv1255.i210
  store i16 %i.gcj, ptr %i.gck, align 2, !tbaa !124
  %indvars.iv.next1256.i212 = add nuw nsw i64 %indvars.iv1255.i210, 1 ; 2 uses
  %i.gcl = getelementptr inbounds nuw i8, ptr %.31215.i211, i64 2 ; 2 uses
  %exitcond1259.not.i213 = icmp eq i64 %indvars.iv.next1256.i212, %wide.trip.count1258.i204
  br i1 %exitcond1259.not.i213, label %.loopexit1498, label %scalar.ph1170, !llvm.loop !70

.loopexit1498:                                    ; preds = %scalar.ph1170, %middle.block1183
  %.lcssa902 = phi ptr [ %i.gbh, %middle.block1183 ], [ %i.gcl, %scalar.ph1170 ]
  %i.gcm = add nuw nsw i32 %.23381216.i208, 1
  %i.gcn = getelementptr inbounds [2 x i8], ptr %.lcssa902, i64 %i.gae
  %i.gco = getelementptr inbounds [2 x i8], ptr %.23341217.i207, i64 %i.gaf
  %exitcond1260.not.i214 = icmp eq i32 %.23381216.i208, %i.gab
  %indvar.next1159 = add i64 %indvar1158, 1
  br i1 %exitcond1260.not.i214, label %.loopexit.i143, label %.preheader1200.i205, !llvm.loop !71

bb.kl:                                            ; preds = %bb.kj
  %i.gcp = mul i32 %i.fqw, %i.fqm                 ; 4 uses
  %i.gcq = icmp sgt i32 %i.fqs, 0
  br i1 %i.gcq, label %.lr.ph1213.i145, label %.loopexit.i143

.lr.ph1213.i145:                                  ; preds = %bb.kl
  %sext.i146 = shl i64 %i.fpq, 32                 ; 3 uses
  %i.gcr = ashr exact i64 %sext.i146, 32          ; 7 uses
  %i.gcs = add nsw i32 %i.fqs, -1                 ; 3 uses
  %i.gct = shl nuw nsw i32 %i.fqw, 1              ; 5 uses
  %i.gcu = sub nsw i32 %i.gcp, %i.fqw
  %i.gcv = sub i32 %i.gcp, %i.gct                 ; 2 uses
  %i.gcw = zext nneg i32 %i.gct to i64            ; 12 uses
  %i.gcx = sub nsw i64 0, %i.gcw                  ; 10 uses
  %i.gcy = zext nneg i32 %i.fqw to i64            ; 11 uses
  %i.gcz = sub nsw i64 0, %i.gcy                  ; 10 uses
  %sext356.i147 = shl i64 %i.fpt, 32
  %i.gda = ashr exact i64 %sext356.i147, 31       ; 3 uses
  %i.gdb = zext nneg i32 %i.fqv to i64
  %i.gdc = sext i32 %i.gcu to i64
  %i.gdd = sext i32 %i.gcv to i64                 ; 3 uses
  %wide.trip.count1253.i148 = zext nneg i32 %i.fqs to i64
  %i.gde = and i32 %i.fqu, 127
  %i.gdf = ashr exact i64 %sext.i146, 31
  %i.gdg = sub nsw i64 %i.gda, %i.gdf
  %i.gdh = insertelement <4 x i64> poison, i64 %sext.i146, i64 0
  %i.gdi = ashr exact <4 x i64> %i.gdh, <i64 31, i64 poison, i64 poison, i64 poison>
  %i.gdj = shufflevector <4 x i64> %i.gdi, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.gdk = add i64 %i.fpn, -4
  %i.gdl = add i64 %i.fpn, -2                     ; 2 uses
  %i.gdm = zext nneg i32 %i.gde to i64            ; 4 uses
  %i.gdn = sext i32 %i.gcs to i64                 ; 2 uses
  %i.gdo = shl nuw nsw i64 %i.gdm, 2              ; 2 uses
  %i.gdp = add i64 %i.gdo, %i.fpk
  %i.gdq = sub i64 %i.gdk, %i.gdp                 ; 2 uses
  %i.gdr = shl nuw nsw i64 %i.gdm, 1              ; 3 uses
  %i.gds = add i64 %i.gdr, %i.fpn
  %i.gdt = insertelement <3 x i64> poison, i64 %i.gdl, i64 0
  %i.gdu = insertelement <3 x i64> %i.gdt, i64 %i.fpn, i64 1
  %i.gdv = insertelement <3 x i64> %i.gdu, i64 %i.gds, i64 2
  %i.gdw = insertelement <3 x i64> <i64 poison, i64 0, i64 -2>, i64 %i.fpk, i64 0 ; 2 uses
  %i.gdx = sub i64 %i.gdl, %i.fpk                 ; 2 uses
  %i.gdy = sub i64 %i.gdx, %i.gdr
  %i.gdz = shufflevector <3 x i64> %i.gdw, <3 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %i.gea = insertelement <2 x i64> %i.gdz, i64 %i.gdr, i64 0
  %i.geb = shufflevector <2 x i64> %i.gea, <2 x i64> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %i.gec = add <3 x i64> %i.gdw, %i.geb
  %i.ged = sub <3 x i64> %i.gdv, %i.gec           ; 2 uses
  %i.gee = add i64 %i.gdo, %i.fpn
  %i.gef = add i64 %i.gee, 4
  %i.geg = sub i64 %i.gef, %i.fpk                 ; 2 uses
  %i.geh = shufflevector <3 x i64> %i.ged, <3 x i64> poison, <2 x i32> <i32 1, i32 2>
  %invariant.op1631 = add i64 %i.gdq, -1
  %invariant.op1633 = add i64 %i.gdy, -1
  %invariant.op1635 = add <2 x i64> %i.geh, splat (i64 -1)
  %invariant.op1637 = add i64 %i.geg, -1
  br label %bb.km

bb.km:                                            ; preds = %bb.kn, %.lr.ph1213.i145
  %indvars.iv1250.i149 = phi i64 [ 0, %.lr.ph1213.i145 ], [ %indvars.iv.next1251.i153, %bb.kn ] ; 8 uses
  %.33351211.i150 = phi ptr [ %i.fpm, %.lr.ph1213.i145 ], [ %i.gwu, %bb.kn ] ; 4 uses
  %i.gei = mul i64 %i.gda, %indvars.iv1250.i149   ; 4 uses
  %i.gej = add i64 %i.gdq, %i.gei                 ; 4 uses
  %i.gek = shl i64 %indvars.iv1250.i149, 32
  %sext1501 = add i64 %i.gek, 8589934592
  %i.gel = mul i64 %i.gdg, %indvars.iv1250.i149   ; 4 uses
  %i.gem = trunc i64 %indvars.iv1250.i149 to i32
  %i.gen = add i64 %i.gdx, %i.gei                 ; 2 uses
  %i.geo = ashr exact i64 %sext1501, 32
  %smin1069 = call i64 @llvm.smin.i64(i64 %i.geo, i64 %i.gdn) ; 2 uses
  %i.gep = add nuw i64 %indvars.iv1250.i149, 1
  %smin1071 = call i64 @llvm.smin.i64(i64 %i.gep, i64 %i.gdn) ; 2 uses
  %i.geq = insertelement <2 x i32> poison, i32 %i.gem, i64 0
  %i.ger = shufflevector <2 x i32> %i.geq, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ges = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ger, <2 x i32> <i32 2, i32 1>)
  %i.get = zext nneg <2 x i32> %i.ges to <2 x i64>
  %i.geu = add nsw <2 x i64> %i.get, <i64 -2, i64 -1>
  %i.gev = insertelement <4 x i64> poison, i64 %smin1069, i64 1
  %i.gew = insertelement <4 x i64> %i.gev, i64 %smin1071, i64 2
  %i.gex = shufflevector <2 x i64> %i.geu, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gey = shufflevector <4 x i64> %i.gex, <4 x i64> %i.gew, <4 x i32> <i32 0, i32 5, i32 6, i32 1>
  %i.gez = mul <4 x i64> %i.gdj, %i.gey           ; 6 uses
  %i.gfa = shufflevector <4 x i64> %i.gez, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gfb = mul i64 %i.gcr, %smin1069
  %i.gfc = add i64 %i.gfb, %i.gdm
  %i.gfd = shl i64 %i.gfc, 1
  %i.gfe = mul i64 %i.gcr, %smin1071
  %i.gff = add i64 %i.gfe, %i.gdm
  %i.gfg = shl i64 %i.gff, 1
  %i.gfh = insertelement <3 x i64> poison, i64 %i.gei, i64 0
  %i.gfi = shufflevector <3 x i64> %i.gfh, <3 x i64> poison, <3 x i32> zeroinitializer
  %i.gfj = add <3 x i64> %i.ged, %i.gfi           ; 3 uses
  %i.gfk = shufflevector <3 x i64> %i.gfj, <3 x i64> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2>
  %i.gfl = insertelement <2 x i64> poison, i64 %i.gel, i64 0
  %i.gfm = shufflevector <2 x i64> %i.gfl, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.gfn = add i64 %i.geg, %i.gei                 ; 2 uses
  %i.gfo = trunc i64 %indvars.iv1250.i149 to i32  ; 3 uses
  %i.gfp = call i32 @llvm.smax.i32(i32 %i.gfo, i32 2)
  %.sroa.speculated1028.i151 = add nsw i32 %i.gfp, -2
  %i.gfq = zext nneg i32 %.sroa.speculated1028.i151 to i64
  %i.gfr = mul nsw i64 %i.gcr, %i.gfq
  %i.gfs = getelementptr inbounds nuw [2 x i8], ptr %i.fpj, i64 %i.gfr ; 7 uses
  %i.gft = call i32 @llvm.smax.i32(i32 %i.gfo, i32 1)
  %.sroa.speculated1023.i152 = add nsw i32 %i.gft, -1
  %i.gfu = zext nneg i32 %.sroa.speculated1023.i152 to i64
  %i.gfv = mul nsw i64 %i.gcr, %i.gfu
  %i.gfw = getelementptr inbounds nuw [2 x i8], ptr %i.fpj, i64 %i.gfv ; 7 uses
  %i.gfx = mul nsw i64 %indvars.iv1250.i149, %i.gcr
  %i.gfy = getelementptr inbounds nuw [2 x i8], ptr %i.fpj, i64 %i.gfx ; 7 uses
  %indvars.iv.next1251.i153 = add nuw nsw i64 %indvars.iv1250.i149, 1 ; 3 uses
  %i.gfz = trunc nuw nsw i64 %indvars.iv.next1251.i153 to i32
  %.sroa.speculated1018.i154 = call i32 @llvm.smin.i32(i32 %i.gcs, i32 %i.gfz)
  %i.gga = sext i32 %.sroa.speculated1018.i154 to i64
  %i.ggb = mul nsw i64 %i.gcr, %i.gga
  %i.ggc = getelementptr inbounds nuw [2 x i8], ptr %i.fpj, i64 %i.ggb ; 7 uses
  %i.ggd = add i32 %i.gfo, 2
  %.sroa.speculated.i155 = call i32 @llvm.smin.i32(i32 %i.gcs, i32 %i.ggd)
  %i.gge = sext i32 %.sroa.speculated.i155 to i64
  %i.ggf = mul nsw i64 %i.gcr, %i.gge
  %i.ggg = getelementptr inbounds nuw [2 x i8], ptr %i.fpj, i64 %i.ggf ; 7 uses
  %i.ggh = extractelement <4 x i64> %i.gez, i64 0 ; 2 uses
  %i.ggi = extractelement <4 x i64> %i.gez, i64 1
  %i.ggj = extractelement <4 x i64> %i.gez, i64 2
  %i.ggk = extractelement <4 x i64> %i.gez, i64 3 ; 2 uses
  %i.ggl = extractelement <3 x i64> %i.gfj, i64 0
  %i.ggm = shufflevector <3 x i64> %i.gfj, <3 x i64> poison, <2 x i32> <i32 2, i32 poison>
  %i.ggn = insertelement <2 x i64> %i.ggm, i64 %i.gfn, i64 1
  %i.ggo = shufflevector <2 x i64> %i.ggn, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ggp = sub i64 %i.ggi, %i.gej
  %i.ggq = sub i64 %i.ggj, %i.gej
  %.reass1632 = add i64 %i.gel, %invariant.op1631
  %i.ggr = sub i64 %i.ggk, %i.gej
  %i.ggs = sub i64 %i.ggh, %i.gej
  %i.ggt = sub i64 %i.gfd, %i.gen
  %i.ggu = sub i64 %i.gfg, %i.gen
  %.reass1634 = add i64 %i.gel, %invariant.op1633
  %i.ggv = sub i64 %i.ggk, %i.ggl
  %i.ggw = sub <8 x i64> %i.gfa, %i.gfk
  %.reass1636 = add <2 x i64> %i.gfm, %invariant.op1635
  %diff.check1070 = icmp ugt i64 %i.ggp, -16
  %diff.check1072 = icmp ugt i64 %i.ggq, -16
  %diff.check1077 = icmp ugt i64 %i.ggr, -16
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline10medianBlurERKNS_3MatERS1_i:bb.a
  %.sroa.speculated.i469.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i467.i, i32 %i.gmh) ; 2 uses
  %i.gmj = call i32 @llvm.smin.i32(i32 %i.gmf, i32 %i.gmc) ; 2 uses
  %.sroa.speculated.i470.i = call i32 @llvm.smax.i32(i32 %i.gmf, i32 %i.gmc) ; 2 uses
  %i.gmk = call i32 @llvm.smin.i32(i32 %i.gmi, i32 %i.gmj) ; 2 uses
  %.sroa.speculated.i471.i = call i32 @llvm.smax.i32(i32 %i.gmi, i32 %i.gmj) ; 2 uses
  %i.gml = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i470.i, i32 %.sroa.speculated.i469.i) ; 2 uses
  %.sroa.speculated.i472.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i470.i, i32 %.sroa.speculated.i469.i) ; 2 uses
  %i.gmm = call i32 @llvm.smin.i32(i32 %i.gmg, i32 %i.glu)
  %.sroa.speculated.i473.i = call i32 @llvm.smax.i32(i32 %i.gmg, i32 %i.glu) ; 2 uses
  %i.gmn = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i472.i, i32 %.sroa.speculated.i460.i) ; 2 uses
  %.sroa.speculated.i474.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i472.i, i32 %.sroa.speculated.i460.i) ; 2 uses
  %i.gmo = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i473.i, i32 %i.gmn) ; 2 uses
  %.sroa.speculated.i475.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i473.i, i32 %i.gmn) ; 2 uses
  %i.gmp = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i471.i, i32 %.sroa.speculated.i459.i) ; 2 uses
  %.sroa.speculated.i476.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i471.i, i32 %.sroa.speculated.i459.i) ; 2 uses
  %i.gmq = call i32 @llvm.smin.i32(i32 %i.gmo, i32 %i.gmp) ; 2 uses
  %.sroa.speculated.i477.i = call i32 @llvm.smax.i32(i32 %i.gmo, i32 %i.gmp) ; 2 uses
  %i.gmr = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i476.i, i32 %.sroa.speculated.i475.i) ; 2 uses
  %.sroa.speculated.i478.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i476.i, i32 %.sroa.speculated.i475.i) ; 2 uses
  %i.gms = call i32 @llvm.smin.i32(i32 %i.gmk, i32 %i.gly) ; 2 uses
  %.sroa.speculated.i479.i = call i32 @llvm.smax.i32(i32 %i.gmk, i32 %i.gly) ; 2 uses
  %i.gmt = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i468.i, i32 %.sroa.speculated.i456.i) ; 2 uses
  %.sroa.speculated.i480.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i468.i, i32 %.sroa.speculated.i456.i)
  %i.gmu = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i479.i, i32 %i.gmt) ; 2 uses
  %.sroa.speculated.i481.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i479.i, i32 %i.gmt) ; 2 uses
  %i.gmv = call i32 @llvm.smin.i32(i32 %i.gml, i32 %i.glz) ; 2 uses
  %.sroa.speculated.i482.i = call i32 @llvm.smax.i32(i32 %i.gml, i32 %i.glz) ; 2 uses
  %i.gmw = call i32 @llvm.smin.i32(i32 %i.gmu, i32 %i.gmv) ; 2 uses
  %.sroa.speculated.i483.i = call i32 @llvm.smax.i32(i32 %i.gmu, i32 %i.gmv) ; 2 uses
  %i.gmx = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i482.i, i32 %.sroa.speculated.i481.i) ; 2 uses
  %.sroa.speculated.i484.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i482.i, i32 %.sroa.speculated.i481.i) ; 2 uses
  %i.gmy = call i32 @llvm.smin.i32(i32 %i.gmq, i32 %i.gms)
  %.sroa.speculated.i485.i = call i32 @llvm.smax.i32(i32 %i.gmq, i32 %i.gms)
  %i.gmz = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i477.i, i32 %i.gmw)
  %.sroa.speculated.i486.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i477.i, i32 %i.gmw)
  %i.gna = call i32 @llvm.smin.i32(i32 %i.gmr, i32 %.sroa.speculated.i483.i)
  %.sroa.speculated.i487.i = call i32 @llvm.smax.i32(i32 %i.gmr, i32 %.sroa.speculated.i483.i)
  %i.gnb = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i478.i, i32 %i.gmx)
  %.sroa.speculated.i488.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i478.i, i32 %i.gmx)
  %i.gnc = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i474.i, i32 %.sroa.speculated.i484.i)
  %.sroa.speculated.i489.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i474.i, i32 %.sroa.speculated.i484.i)
  %i.gnd = call i32 @llvm.smin.i32(i32 %i.gkj, i32 %i.gkg) ; 2 uses
  %.sroa.speculated.i490.i = call i32 @llvm.smax.i32(i32 %i.gkj, i32 %i.gkg) ; 2 uses
  %i.gne = call i32 @llvm.smin.i32(i32 %i.gnd, i32 %i.gkd) ; 2 uses
  %.sroa.speculated.i491.i = call i32 @llvm.smax.i32(i32 %i.gnd, i32 %i.gkd) ; 2 uses
  %i.gnf = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i490.i, i32 %.sroa.speculated.i491.i) ; 2 uses
  %.sroa.speculated.i492.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i490.i, i32 %.sroa.speculated.i491.i) ; 2 uses
  %i.gng = call i32 @llvm.smin.i32(i32 %i.gks, i32 %i.gkp) ; 2 uses
  %.sroa.speculated.i493.i = call i32 @llvm.smax.i32(i32 %i.gks, i32 %i.gkp) ; 2 uses
  %i.gnh = call i32 @llvm.smin.i32(i32 %i.gng, i32 %i.gkm) ; 2 uses
  %.sroa.speculated.i494.i = call i32 @llvm.smax.i32(i32 %i.gng, i32 %i.gkm) ; 2 uses
  %i.gni = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i493.i, i32 %.sroa.speculated.i494.i) ; 2 uses
  %.sroa.speculated.i495.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i493.i, i32 %.sroa.speculated.i494.i) ; 2 uses
  %i.gnj = call i32 @llvm.smin.i32(i32 %i.gnh, i32 %i.gne) ; 2 uses
  %.sroa.speculated.i496.i = call i32 @llvm.smax.i32(i32 %i.gnh, i32 %i.gne) ; 2 uses
  %i.gnk = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i495.i, i32 %.sroa.speculated.i492.i) ; 2 uses
  %.sroa.speculated.i497.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i495.i, i32 %.sroa.speculated.i492.i) ; 2 uses
  %i.gnl = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i496.i, i32 %i.gnk) ; 2 uses
  %.sroa.speculated.i498.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i496.i, i32 %i.gnk) ; 2 uses
  %i.gnm = call i32 @llvm.smin.i32(i32 %i.gni, i32 %i.gnf) ; 2 uses
  %.sroa.speculated.i499.i = call i32 @llvm.smax.i32(i32 %i.gni, i32 %i.gnf) ; 2 uses
  %i.gnn = call i32 @llvm.smin.i32(i32 %i.gnl, i32 %i.gnm) ; 2 uses
  %.sroa.speculated.i500.i = call i32 @llvm.smax.i32(i32 %i.gnl, i32 %i.gnm) ; 2 uses
  %i.gno = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i499.i, i32 %.sroa.speculated.i498.i) ; 2 uses
  %.sroa.speculated.i501.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i499.i, i32 %.sroa.speculated.i498.i) ; 2 uses
  %i.gnp = call i32 @llvm.smin.i32(i32 %i.glb, i32 %i.gky) ; 2 uses
  %.sroa.speculated.i502.i = call i32 @llvm.smax.i32(i32 %i.glb, i32 %i.gky) ; 2 uses
  %i.gnq = call i32 @llvm.smin.i32(i32 %i.gnp, i32 %i.gkv) ; 2 uses
  %.sroa.speculated.i503.i = call i32 @llvm.smax.i32(i32 %i.gnp, i32 %i.gkv) ; 2 uses
  %i.gnr = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i502.i, i32 %.sroa.speculated.i503.i) ; 2 uses
  %.sroa.speculated.i504.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i502.i, i32 %.sroa.speculated.i503.i) ; 2 uses
  %i.gns = call i32 @llvm.smin.i32(i32 %i.glh, i32 %i.gle) ; 2 uses
  %.sroa.speculated.i505.i = call i32 @llvm.smax.i32(i32 %i.glh, i32 %i.gle) ; 2 uses
  %i.gnt = call i32 @llvm.smin.i32(i32 %i.gln, i32 %i.glk) ; 2 uses
  %.sroa.speculated.i506.i = call i32 @llvm.smax.i32(i32 %i.gln, i32 %i.glk) ; 2 uses
  %i.gnu = call i32 @llvm.smin.i32(i32 %i.gnt, i32 %i.gns) ; 2 uses
  %.sroa.speculated.i507.i = call i32 @llvm.smax.i32(i32 %i.gnt, i32 %i.gns) ; 2 uses
  %i.gnv = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i506.i, i32 %.sroa.speculated.i505.i) ; 2 uses
  %.sroa.speculated.i508.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i506.i, i32 %.sroa.speculated.i505.i) ; 2 uses
  %i.gnw = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i507.i, i32 %i.gnv) ; 2 uses
  %.sroa.speculated.i509.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i507.i, i32 %i.gnv) ; 2 uses
  %i.gnx = call i32 @llvm.smin.i32(i32 %i.gnu, i32 %i.gnq) ; 2 uses
  %.sroa.speculated.i510.i = call i32 @llvm.smax.i32(i32 %i.gnu, i32 %i.gnq) ; 2 uses
  %i.gny = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i509.i, i32 %.sroa.speculated.i504.i) ; 2 uses
  %.sroa.speculated.i511.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i509.i, i32 %.sroa.speculated.i504.i) ; 2 uses
  %i.gnz = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i510.i, i32 %i.gny) ; 2 uses
  %.sroa.speculated.i512.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i510.i, i32 %i.gny) ; 2 uses
  %i.goa = call i32 @llvm.smin.i32(i32 %i.gnw, i32 %i.gnr) ; 2 uses
  %.sroa.speculated.i513.i = call i32 @llvm.smax.i32(i32 %i.gnw, i32 %i.gnr) ; 2 uses
  %i.gob = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i508.i, i32 %.sroa.speculated.i513.i) ; 2 uses
  %.sroa.speculated.i514.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i508.i, i32 %.sroa.speculated.i513.i) ; 2 uses
  %i.goc = call i32 @llvm.smin.i32(i32 %i.gnz, i32 %i.goa) ; 2 uses
  %.sroa.speculated.i515.i = call i32 @llvm.smax.i32(i32 %i.gnz, i32 %i.goa) ; 2 uses
  %i.god = call i32 @llvm.smin.i32(i32 %i.gob, i32 %.sroa.speculated.i512.i) ; 2 uses
  %.sroa.speculated.i516.i = call i32 @llvm.smax.i32(i32 %i.gob, i32 %.sroa.speculated.i512.i) ; 2 uses
  %i.goe = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i514.i, i32 %.sroa.speculated.i511.i) ; 2 uses
  %.sroa.speculated.i517.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i514.i, i32 %.sroa.speculated.i511.i) ; 2 uses
  %i.gof = call i32 @llvm.smin.i32(i32 %i.gnx, i32 %i.gnj)
  %.sroa.speculated.i518.i = call i32 @llvm.smax.i32(i32 %i.gnx, i32 %i.gnj) ; 2 uses
  %i.gog = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i516.i, i32 %.sroa.speculated.i501.i) ; 2 uses
  %.sroa.speculated.i519.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i516.i, i32 %.sroa.speculated.i501.i) ; 2 uses
  %i.goh = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i518.i, i32 %i.gog) ; 2 uses
  %.sroa.speculated.i520.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i518.i, i32 %i.gog) ; 2 uses
  %i.goi = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i515.i, i32 %.sroa.speculated.i500.i) ; 2 uses
  %.sroa.speculated.i521.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i515.i, i32 %.sroa.speculated.i500.i) ; 2 uses
  %i.goj = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i517.i, i32 %.sroa.speculated.i521.i) ; 2 uses
  %.sroa.speculated.i522.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i517.i, i32 %.sroa.speculated.i521.i) ; 2 uses
  %i.gok = call i32 @llvm.smin.i32(i32 %i.goh, i32 %i.goi) ; 2 uses
  %.sroa.speculated.i523.i = call i32 @llvm.smax.i32(i32 %i.goh, i32 %i.goi) ; 2 uses
  %i.gol = call i32 @llvm.smin.i32(i32 %i.goj, i32 %.sroa.speculated.i520.i) ; 2 uses
  %.sroa.speculated.i524.i = call i32 @llvm.smax.i32(i32 %i.goj, i32 %.sroa.speculated.i520.i) ; 2 uses
  %i.gom = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i522.i, i32 %.sroa.speculated.i519.i) ; 2 uses
  %.sroa.speculated.i525.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i522.i, i32 %.sroa.speculated.i519.i) ; 2 uses
  %i.gon = call i32 @llvm.smin.i32(i32 %i.goc, i32 %i.gnn) ; 2 uses
  %.sroa.speculated.i526.i = call i32 @llvm.smax.i32(i32 %i.goc, i32 %i.gnn) ; 2 uses
  %i.goo = call i32 @llvm.smin.i32(i32 %i.goe, i32 %.sroa.speculated.i497.i) ; 2 uses
  %.sroa.speculated.i527.i = call i32 @llvm.smax.i32(i32 %i.goe, i32 %.sroa.speculated.i497.i) ; 2 uses
  %i.gop = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i526.i, i32 %i.goo) ; 2 uses
  %.sroa.speculated.i528.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i526.i, i32 %i.goo) ; 2 uses
  %i.goq = call i32 @llvm.smin.i32(i32 %i.god, i32 %i.gno) ; 2 uses
  %.sroa.speculated.i529.i = call i32 @llvm.smax.i32(i32 %i.god, i32 %i.gno) ; 2 uses
  %i.gor = call i32 @llvm.smin.i32(i32 %i.gop, i32 %i.goq) ; 2 uses
  %.sroa.speculated.i530.i = call i32 @llvm.smax.i32(i32 %i.gop, i32 %i.goq) ; 2 uses
  %i.gos = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i529.i, i32 %.sroa.speculated.i528.i) ; 2 uses
  %.sroa.speculated.i531.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i529.i, i32 %.sroa.speculated.i528.i) ; 2 uses
  %i.got = call i32 @llvm.smin.i32(i32 %i.gok, i32 %i.gon)
  %.sroa.speculated.i532.i = call i32 @llvm.smax.i32(i32 %i.gok, i32 %i.gon)
  %i.gou = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i523.i, i32 %i.gor)
  %.sroa.speculated.i533.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i523.i, i32 %i.gor)
  %i.gov = call i32 @llvm.smin.i32(i32 %i.gol, i32 %.sroa.speculated.i530.i)
  %.sroa.speculated.i534.i = call i32 @llvm.smax.i32(i32 %i.gol, i32 %.sroa.speculated.i530.i)
  %i.gow = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i524.i, i32 %i.gos)
  %.sroa.speculated.i535.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i524.i, i32 %i.gos)
  %i.gox = call i32 @llvm.smin.i32(i32 %i.gom, i32 %.sroa.speculated.i531.i)
  %.sroa.speculated.i536.i = call i32 @llvm.smax.i32(i32 %i.gom, i32 %.sroa.speculated.i531.i)
  %i.goy = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i525.i, i32 %.sroa.speculated.i527.i)
  %.sroa.speculated.i537.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i525.i, i32 %.sroa.speculated.i527.i)
  %.sroa.speculated.i538.i = call i32 @llvm.smax.i32(i32 %i.gof, i32 %i.gmm)
  %i.goz = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i535.i, i32 %.sroa.speculated.i488.i)
  %.sroa.speculated.i540.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i538.i, i32 %i.goz)
  %.sroa.speculated.i541.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i533.i, i32 %.sroa.speculated.i486.i)
  %i.gpa = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i537.i, i32 %.sroa.speculated.i541.i)
  %i.gpb = call i32 @llvm.smin.i32(i32 %i.gpa, i32 %.sroa.speculated.i540.i)
  %.sroa.speculated.i544.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i532.i, i32 %.sroa.speculated.i485.i)
  %i.gpc = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i536.i, i32 %.sroa.speculated.i489.i)
  %i.gpd = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i544.i, i32 %i.gpc)
  %i.gpe = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i534.i, i32 %.sroa.speculated.i487.i)
  %.sroa.speculated.i548.i = call i32 @llvm.smax.i32(i32 %i.gpd, i32 %i.gpe)
  %.sroa.speculated.i549.i = call i32 @llvm.smax.i32(i32 %i.gpb, i32 %.sroa.speculated.i548.i)
  %.sroa.speculated.i550.i = call i32 @llvm.smax.i32(i32 %i.got, i32 %i.gmy)
  %i.gpf = call i32 @llvm.smin.i32(i32 %i.gox, i32 %i.gnc)
  %.sroa.speculated.i552.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i550.i, i32 %i.gpf)
  %.sroa.speculated.i553.i = call i32 @llvm.smax.i32(i32 %i.gov, i32 %i.gna)
  %i.gpg = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i553.i, i32 %.sroa.speculated.i552.i)
  %.sroa.speculated.i555.i = call i32 @llvm.smax.i32(i32 %i.gou, i32 %i.gmz)
  %i.gph = call i32 @llvm.smin.i32(i32 %i.goy, i32 %.sroa.speculated.i480.i)
  %i.gpi = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i555.i, i32 %i.gph)
  %i.gpj = call i32 @llvm.smin.i32(i32 %i.gow, i32 %i.gnb)
  %.sroa.speculated.i559.i = call i32 @llvm.smax.i32(i32 %i.gpi, i32 %i.gpj)
  %i.gpk = call i32 @llvm.smin.i32(i32 %i.gpg, i32 %.sroa.speculated.i559.i)
  %.sroa.speculated.i561.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i549.i, i32 %i.gpk)
  %i.gpl = trunc nsw i32 %.sroa.speculated.i561.i to i16
  %i.gpm = getelementptr inbounds [2 x i8], ptr %.33351211.i150, i64 %indvars.iv.i197
  store i16 %i.gpl, ptr %i.gpm, align 2, !tbaa !124
  %indvars.iv.next.i200 = add nsw i64 %indvars.iv.i197, 1 ; 2 uses
  %exitcond.not.i201 = icmp eq i64 %indvars.iv.next.i200, %wide.trip.count.i195
  br i1 %exitcond.not.i201, label %._crit_edge.i158, label %.lr.ph.i196, !llvm.loop !72

._crit_edge.i158:                                 ; preds = %.lr.ph.i196, %.loopexit1203.i161
  %.7.lcssa.i159 = phi i32 [ %.6.i156, %.loopexit1203.i161 ], [ %.0331.i157, %.lr.ph.i196 ] ; 3 uses
  %i.gpn = icmp eq i32 %.0331.i157, %i.gcp
  br i1 %i.gpn, label %bb.kn, label %.preheader1202.i160

.preheader1202.i160:                              ; preds = %._crit_edge.i158
  %i.gpo = icmp slt i32 %.7.lcssa.i159, %i.gcv
  br i1 %i.gpo, label %.lr.ph1208.preheader.i163, label %.loopexit1203.i161.backedge

.loopexit1203.i161.backedge:                      ; preds = %.preheader1202.i160, %.loopexit1203.loopexit.i192
  %.6.i156.be = phi i32 [ %.7.lcssa.i159, %.preheader1202.i160 ], [ %i.ghz, %.loopexit1203.loopexit.i192 ]
  br label %.loopexit1203.i161, !llvm.loop !73

.lr.ph1208.preheader.i163:                        ; preds = %.preheader1202.i160
  %i.gpp = sext i32 %.7.lcssa.i159 to i64         ; 5 uses
  %i.gpq = add nsw i64 %i.gpp, 1
  %i.gpr = call i64 @llvm.smax.i64(i64 %i.gdd, i64 %i.gpq)
  %i.gps = sub i64 %i.gpr, %i.gpp                 ; 3 uses
  %min.iters.check1123 = icmp ult i64 %i.gps, 8
  %brmerge1661 = select i1 %min.iters.check1123, i1 true, i1 %op.rdx1525
  br i1 %brmerge1661, label %.lr.ph1208.i164.preheader, label %vector.ph1124

vector.ph1124:                                    ; preds = %.lr.ph1208.preheader.i163
  %n.vec1125 = and i64 %i.gps, -8                 ; 3 uses
  %i.gpt = add i64 %n.vec1125, %i.gpp             ; 2 uses
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %vector.ph1124
  %index1127 = phi i64 [ 0, %vector.ph1124 ], [ %index.next1153, %vector.body1126 ] ; 2 uses
  %i.gpu = add i64 %index1127, %i.gpp             ; 6 uses
  %i.gpv = getelementptr inbounds [2 x i8], ptr %i.gfs, i64 %i.gpu ; 5 uses
  %i.gpw = getelementptr inbounds [2 x i8], ptr %i.gpv, i64 %i.gcx
  %wide.load1128 = load <8 x i16>, ptr %i.gpw, align 2, !tbaa !124
  %104 = sext <8 x i16> %wide.load1128 to <8 x i32> ; 2 uses
  %i.gpx = getelementptr inbounds [2 x i8], ptr %i.gfw, i64 %i.gpu ; 5 uses
  %i.gpy = getelementptr inbounds [2 x i8], ptr %i.gpx, i64 %i.gcx
  %wide.load1129 = load <8 x i16>, ptr %i.gpy, align 2, !tbaa !124
  %105 = sext <8 x i16> %wide.load1129 to <8 x i32> ; 2 uses
  %i.gpz = getelementptr inbounds [2 x i8], ptr %i.gfy, i64 %i.gpu ; 5 uses
  %i.gqa = getelementptr inbounds [2 x i8], ptr %i.gpz, i64 %i.gcx
  %wide.load1130 = load <8 x i16>, ptr %i.gqa, align 2, !tbaa !124
  %106 = sext <8 x i16> %wide.load1130 to <8 x i32> ; 2 uses
  %i.gqb = getelementptr inbounds [2 x i8], ptr %i.ggc, i64 %i.gpu ; 5 uses
  %i.gqc = getelementptr inbounds [2 x i8], ptr %i.gqb, i64 %i.gcx
  %wide.load1131 = load <8 x i16>, ptr %i.gqc, align 2, !tbaa !124
  %107 = sext <8 x i16> %wide.load1131 to <8 x i32> ; 2 uses
  %i.gqd = getelementptr inbounds [2 x i8], ptr %i.ggg, i64 %i.gpu ; 5 uses
  %i.gqe = getelementptr inbounds [2 x i8], ptr %i.gqd, i64 %i.gcx
  %wide.load1132 = load <8 x i16>, ptr %i.gqe, align 2, !tbaa !124
  %108 = sext <8 x i16> %wide.load1132 to <8 x i32> ; 2 uses
  %i.gqf = getelementptr inbounds [2 x i8], ptr %i.gpv, i64 %i.gcz
  %wide.load1133 = load <8 x i16>, ptr %i.gqf, align 2, !tbaa !124
  %109 = sext <8 x i16> %wide.load1133 to <8 x i32> ; 2 uses
  %i.gqg = getelementptr inbounds [2 x i8], ptr %i.gpx, i64 %i.gcz
  %wide.load1134 = load <8 x i16>, ptr %i.gqg, align 2, !tbaa !124
  %110 = sext <8 x i16> %wide.load1134 to <8 x i32> ; 2 uses
  %i.gqh = getelementptr inbounds [2 x i8], ptr %i.gpz, i64 %i.gcz
  %wide.load1135 = load <8 x i16>, ptr %i.gqh, align 2, !tbaa !124
  %111 = sext <8 x i16> %wide.load1135 to <8 x i32> ; 2 uses
  %i.gqi = getelementptr inbounds [2 x i8], ptr %i.gqb, i64 %i.gcz
  %wide.load1136 = load <8 x i16>, ptr %i.gqi, align 2, !tbaa !124
  %112 = sext <8 x i16> %wide.load1136 to <8 x i32> ; 2 uses
  %i.gqj = getelementptr inbounds [2 x i8], ptr %i.gqd, i64 %i.gcz
  %wide.load1137 = load <8 x i16>, ptr %i.gqj, align 2, !tbaa !124
  %113 = sext <8 x i16> %wide.load1137 to <8 x i32> ; 2 uses
  %wide.load1138 = load <8 x i16>, ptr %i.gpv, align 2, !tbaa !124
  %114 = sext <8 x i16> %wide.load1138 to <8 x i32> ; 2 uses
  %wide.load1139 = load <8 x i16>, ptr %i.gpx, align 2, !tbaa !124
  %115 = sext <8 x i16> %wide.load1139 to <8 x i32> ; 2 uses
  %wide.load1140 = load <8 x i16>, ptr %i.gpz, align 2, !tbaa !124
  %116 = sext <8 x i16> %wide.load1140 to <8 x i32> ; 2 uses
  %wide.load1141 = load <8 x i16>, ptr %i.gqb, align 2, !tbaa !124
  %117 = sext <8 x i16> %wide.load1141 to <8 x i32> ; 2 uses
  %wide.load1142 = load <8 x i16>, ptr %i.gqd, align 2, !tbaa !124
  %118 = sext <8 x i16> %wide.load1142 to <8 x i32> ; 2 uses
  %i.gqk = getelementptr inbounds nuw [2 x i8], ptr %i.gpv, i64 %i.gcy
  %wide.load1143 = load <8 x i16>, ptr %i.gqk, align 2, !tbaa !124
  %119 = sext <8 x i16> %wide.load1143 to <8 x i32> ; 2 uses
  %i.gql = getelementptr inbounds nuw [2 x i8], ptr %i.gpx, i64 %i.gcy
  %wide.load1144 = load <8 x i16>, ptr %i.gql, align 2, !tbaa !124
  %120 = sext <8 x i16> %wide.load1144 to <8 x i32> ; 2 uses
  %i.gqm = getelementptr inbounds nuw [2 x i8], ptr %i.gpz, i64 %i.gcy
  %wide.load1145 = load <8 x i16>, ptr %i.gqm, align 2, !tbaa !124
  %121 = sext <8 x i16> %wide.load1145 to <8 x i32> ; 2 uses
  %i.gqn = getelementptr inbounds nuw [2 x i8], ptr %i.gqb, i64 %i.gcy
  %wide.load1146 = load <8 x i16>, ptr %i.gqn, align 2, !tbaa !124
  %122 = sext <8 x i16> %wide.load1146 to <8 x i32> ; 2 uses
  %i.gqo = getelementptr inbounds nuw [2 x i8], ptr %i.gqd, i64 %i.gcy
  %wide.load1147 = load <8 x i16>, ptr %i.gqo, align 2, !tbaa !124
  %123 = sext <8 x i16> %wide.load1147 to <8 x i32> ; 2 uses
  %i.gqp = getelementptr inbounds nuw [2 x i8], ptr %i.gpv, i64 %i.gcw
  %wide.load1148 = load <8 x i16>, ptr %i.gqp, align 2, !tbaa !124
  %124 = sext <8 x i16> %wide.load1148 to <8 x i32> ; 2 uses
  %i.gqq = getelementptr inbounds nuw [2 x i8], ptr %i.gpx, i64 %i.gcw
  %wide.load1149 = load <8 x i16>, ptr %i.gqq, align 2, !tbaa !124
  %125 = sext <8 x i16> %wide.load1149 to <8 x i32> ; 2 uses
  %i.gqr = getelementptr inbounds nuw [2 x i8], ptr %i.gpz, i64 %i.gcw
  %wide.load1150 = load <8 x i16>, ptr %i.gqr, align 2, !tbaa !124
  %126 = sext <8 x i16> %wide.load1150 to <8 x i32> ; 2 uses
  %i.gqs = getelementptr inbounds nuw [2 x i8], ptr %i.gqb, i64 %i.gcw
  %wide.load1151 = load <8 x i16>, ptr %i.gqs, align 2, !tbaa !124
  %127 = sext <8 x i16> %wide.load1151 to <8 x i32> ; 2 uses
  %i.gqt = getelementptr inbounds nuw [2 x i8], ptr %i.gqd, i64 %i.gcw
  %wide.load1152 = load <8 x i16>, ptr %i.gqt, align 2, !tbaa !124
  %128 = sext <8 x i16> %wide.load1152 to <8 x i32> ; 2 uses
  %129 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %114, <8 x i32> %109) ; 2 uses
  %130 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %114, <8 x i32> %109) ; 2 uses
  %131 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %129, <8 x i32> %104) ; 2 uses
  %132 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %129, <8 x i32> %104) ; 2 uses
  %133 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %130, <8 x i32> %132) ; 2 uses
  %134 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %130, <8 x i32> %132) ; 2 uses
  %135 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %105, <8 x i32> %124) ; 2 uses
  %136 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %105, <8 x i32> %124) ; 2 uses
  %137 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %135, <8 x i32> %119) ; 2 uses
  %138 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %135, <8 x i32> %119) ; 2 uses
  %139 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %136, <8 x i32> %138) ; 2 uses
  %140 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %136, <8 x i32> %138) ; 2 uses
  %141 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %137, <8 x i32> %131) ; 2 uses
  %142 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %137, <8 x i32> %131) ; 2 uses
  %143 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %140, <8 x i32> %134) ; 2 uses
  %144 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %140, <8 x i32> %134) ; 2 uses
  %145 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %142, <8 x i32> %143) ; 2 uses
  %146 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %142, <8 x i32> %143) ; 2 uses
  %147 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %139, <8 x i32> %133) ; 2 uses
  %148 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %139, <8 x i32> %133) ; 2 uses
  %149 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %145, <8 x i32> %147) ; 2 uses
  %150 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %145, <8 x i32> %147) ; 2 uses
  %151 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %148, <8 x i32> %146) ; 2 uses
  %152 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %148, <8 x i32> %146) ; 2 uses
  %153 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %120, <8 x i32> %115) ; 2 uses
  %154 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %120, <8 x i32> %115) ; 2 uses
  %155 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %153, <8 x i32> %110) ; 2 uses
  %156 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %153, <8 x i32> %110) ; 2 uses
  %157 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %154, <8 x i32> %156) ; 2 uses
  %158 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %154, <8 x i32> %156) ; 2 uses
  %159 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %111, <8 x i32> %106) ; 2 uses
  %160 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %111, <8 x i32> %106) ; 2 uses
  %161 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %159, <8 x i32> %125) ; 2 uses
  %162 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %159, <8 x i32> %125) ; 2 uses
  %163 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %160, <8 x i32> %162) ; 2 uses
  %164 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %160, <8 x i32> %162) ; 2 uses
  %165 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %161, <8 x i32> %155) ; 2 uses
  %166 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %161, <8 x i32> %155) ; 2 uses
  %167 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %164, <8 x i32> %158) ; 2 uses
  %168 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %164, <8 x i32> %158) ; 2 uses
  %169 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %166, <8 x i32> %167) ; 2 uses
  %170 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %166, <8 x i32> %167) ; 2 uses
  %171 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %163, <8 x i32> %157) ; 2 uses
  %172 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %163, <8 x i32> %157) ; 2 uses
  %173 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %169, <8 x i32> %171) ; 2 uses
  %174 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %169, <8 x i32> %171) ; 2 uses
  %175 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %172, <8 x i32> %170) ; 2 uses
  %176 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %172, <8 x i32> %170) ; 2 uses
  %177 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %165, <8 x i32> %141)
  %178 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %165, <8 x i32> %141) ; 2 uses
  %179 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %176, <8 x i32> %152) ; 2 uses
  %180 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %176, <8 x i32> %152) ; 2 uses
  %181 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %178, <8 x i32> %179) ; 2 uses
  %182 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %178, <8 x i32> %179) ; 2 uses
  %183 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %174, <8 x i32> %150) ; 2 uses
  %184 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %174, <8 x i32> %150) ; 2 uses
  %185 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %181, <8 x i32> %183) ; 2 uses
  %186 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %181, <8 x i32> %183) ; 2 uses
  %187 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %184, <8 x i32> %182) ; 2 uses
  %188 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %184, <8 x i32> %182) ; 2 uses
  %189 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %173, <8 x i32> %149) ; 2 uses
  %190 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %173, <8 x i32> %149) ; 2 uses
  %191 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %168, <8 x i32> %144) ; 2 uses
  %192 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %168, <8 x i32> %144)
  %193 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %190, <8 x i32> %191) ; 2 uses
  %194 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %190, <8 x i32> %191) ; 2 uses
  %195 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %175, <8 x i32> %151) ; 2 uses
  %196 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %175, <8 x i32> %151) ; 2 uses
  %197 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %193, <8 x i32> %195) ; 2 uses
  %198 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %193, <8 x i32> %195) ; 2 uses
  %199 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %196, <8 x i32> %194) ; 2 uses
  %200 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %196, <8 x i32> %194) ; 2 uses
  %201 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %185, <8 x i32> %189)
  %202 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %185, <8 x i32> %189)
  %203 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %186, <8 x i32> %197)
  %204 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %186, <8 x i32> %197)
  %205 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %187, <8 x i32> %198)
  %206 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %187, <8 x i32> %198)
  %207 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %188, <8 x i32> %199)
  %208 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %188, <8 x i32> %199)
  %209 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %180, <8 x i32> %200)
  %210 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %180, <8 x i32> %200)
  %211 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %126, <8 x i32> %121) ; 2 uses
  %212 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %126, <8 x i32> %121) ; 2 uses
  %213 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %211, <8 x i32> %116) ; 2 uses
  %214 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %211, <8 x i32> %116) ; 2 uses
  %215 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %212, <8 x i32> %214) ; 2 uses
  %216 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %212, <8 x i32> %214) ; 2 uses
  %217 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %117, <8 x i32> %112) ; 2 uses
  %218 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %117, <8 x i32> %112) ; 2 uses
  %219 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %217, <8 x i32> %107) ; 2 uses
  %220 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %217, <8 x i32> %107) ; 2 uses
  %221 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %218, <8 x i32> %220) ; 2 uses
  %222 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %218, <8 x i32> %220) ; 2 uses
  %223 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %219, <8 x i32> %213) ; 2 uses
  %224 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %219, <8 x i32> %213) ; 2 uses
  %225 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %222, <8 x i32> %216) ; 2 uses
  %226 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %222, <8 x i32> %216) ; 2 uses
  %227 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %224, <8 x i32> %225) ; 2 uses
  %228 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %224, <8 x i32> %225) ; 2 uses
  %229 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %221, <8 x i32> %215) ; 2 uses
  %230 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %221, <8 x i32> %215) ; 2 uses
  %231 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %227, <8 x i32> %229) ; 2 uses
  %232 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %227, <8 x i32> %229) ; 2 uses
  %233 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %230, <8 x i32> %228) ; 2 uses
  %234 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %230, <8 x i32> %228) ; 2 uses
  %235 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %108, <8 x i32> %127) ; 2 uses
  %236 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %108, <8 x i32> %127) ; 2 uses
  %237 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %235, <8 x i32> %122) ; 2 uses
  %238 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %235, <8 x i32> %122) ; 2 uses
  %239 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %236, <8 x i32> %238) ; 2 uses
  %240 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %236, <8 x i32> %238) ; 2 uses
  %241 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %118, <8 x i32> %113) ; 2 uses
  %242 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %118, <8 x i32> %113) ; 2 uses
  %243 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %128, <8 x i32> %123) ; 2 uses
  %244 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %128, <8 x i32> %123) ; 2 uses
  %245 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %243, <8 x i32> %241) ; 2 uses
  %246 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %243, <8 x i32> %241) ; 2 uses
  %247 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %244, <8 x i32> %242) ; 2 uses
  %248 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %244, <8 x i32> %242) ; 2 uses
  %249 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %246, <8 x i32> %247) ; 2 uses
  %250 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %246, <8 x i32> %247) ; 2 uses
  %251 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %245, <8 x i32> %237) ; 2 uses
  %252 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %245, <8 x i32> %237) ; 2 uses
  %253 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %250, <8 x i32> %240) ; 2 uses
  %254 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %250, <8 x i32> %240) ; 2 uses
  %255 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %252, <8 x i32> %253) ; 2 uses
  %256 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %252, <8 x i32> %253) ; 2 uses
  %257 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %249, <8 x i32> %239) ; 2 uses
  %258 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %249, <8 x i32> %239) ; 2 uses
  %259 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %248, <8 x i32> %258) ; 2 uses
  %260 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %248, <8 x i32> %258) ; 2 uses
  %261 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %255, <8 x i32> %257) ; 2 uses
  %262 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %255, <8 x i32> %257) ; 2 uses
  %263 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %259, <8 x i32> %256) ; 2 uses
  %264 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %259, <8 x i32> %256) ; 2 uses
  %265 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %260, <8 x i32> %254) ; 2 uses
  %266 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %260, <8 x i32> %254) ; 2 uses
  %267 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %251, <8 x i32> %223)
  %268 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %251, <8 x i32> %223) ; 2 uses
  %269 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %264, <8 x i32> %234) ; 2 uses
  %270 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %264, <8 x i32> %234) ; 2 uses
  %271 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %268, <8 x i32> %269) ; 2 uses
  %272 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %268, <8 x i32> %269) ; 2 uses
  %273 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %262, <8 x i32> %232) ; 2 uses
  %274 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %262, <8 x i32> %232) ; 2 uses
  %275 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %266, <8 x i32> %274) ; 2 uses
  %276 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %266, <8 x i32> %274) ; 2 uses
  %277 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %271, <8 x i32> %273) ; 2 uses
  %278 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %271, <8 x i32> %273) ; 2 uses
  %279 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %275, <8 x i32> %272) ; 2 uses
  %280 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %275, <8 x i32> %272) ; 2 uses
  %281 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %276, <8 x i32> %270) ; 2 uses
  %282 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %276, <8 x i32> %270) ; 2 uses
  %283 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %261, <8 x i32> %231) ; 2 uses
  %284 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %261, <8 x i32> %231) ; 2 uses
  %285 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %265, <8 x i32> %226) ; 2 uses
  %286 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %265, <8 x i32> %226) ; 2 uses
  %287 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %284, <8 x i32> %285) ; 2 uses
  %288 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %284, <8 x i32> %285) ; 2 uses
  %289 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %263, <8 x i32> %233) ; 2 uses
  %290 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %263, <8 x i32> %233) ; 2 uses
  %291 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %287, <8 x i32> %289) ; 2 uses
  %292 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %287, <8 x i32> %289) ; 2 uses
  %293 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %290, <8 x i32> %288) ; 2 uses
  %294 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %290, <8 x i32> %288) ; 2 uses
  %295 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %277, <8 x i32> %283)
  %296 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %277, <8 x i32> %283)
  %297 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %278, <8 x i32> %291)
  %298 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %278, <8 x i32> %291)
  %299 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %279, <8 x i32> %292)
  %300 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %279, <8 x i32> %292)
  %301 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %280, <8 x i32> %293)
  %302 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %280, <8 x i32> %293)
  %303 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %281, <8 x i32> %294)
  %304 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %281, <8 x i32> %294)
  %305 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %282, <8 x i32> %286)
  %306 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %282, <8 x i32> %286)
  %307 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %267, <8 x i32> %177)
  %308 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %302, <8 x i32> %208)
  %309 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %307, <8 x i32> %308)
  %310 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %298, <8 x i32> %204)
  %311 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %306, <8 x i32> %310)
  %312 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %311, <8 x i32> %309)
  %313 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %296, <8 x i32> %202)
  %314 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %304, <8 x i32> %210)
  %315 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %313, <8 x i32> %314)
  %316 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %300, <8 x i32> %206)
  %317 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %315, <8 x i32> %316)
  %318 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %312, <8 x i32> %317)
  %319 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %295, <8 x i32> %201)
  %320 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %303, <8 x i32> %209)
  %321 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %319, <8 x i32> %320)
  %322 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %299, <8 x i32> %205)
  %323 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %322, <8 x i32> %321)
  %324 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %297, <8 x i32> %203)
  %325 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %305, <8 x i32> %192)
  %326 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %324, <8 x i32> %325)
  %327 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %301, <8 x i32> %207)
  %328 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %326, <8 x i32> %327)
  %329 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %323, <8 x i32> %328)
  %330 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %318, <8 x i32> %329)
  %i.gqu = getelementptr inbounds [2 x i8], ptr %.33351211.i150, i64 %i.gpu
  %331 = trunc nsw <8 x i32> %330 to <8 x i16>
  store <8 x i16> %331, ptr %i.gqu, align 2, !tbaa !124
  %index.next1153 = add nuw i64 %index1127, 8     ; 2 uses
  %i.gqv = icmp eq i64 %index.next1153, %n.vec1125
  br i1 %i.gqv, label %middle.block1154, label %vector.body1126, !llvm.loop !74

middle.block1154:                                 ; preds = %vector.body1126
  %cmp.n1155 = icmp eq i64 %i.gps, %n.vec1125
  br i1 %cmp.n1155, label %.loopexit1203.loopexit.i192, label %.lr.ph1208.i164.preheader

.lr.ph1208.i164.preheader:                        ; preds = %.lr.ph1208.preheader.i163, %middle.block1154
  %indvars.iv1247.i165.ph = phi i64 [ %i.gpt, %middle.block1154 ], [ %i.gpp, %.lr.ph1208.preheader.i163 ]
  br label %.lr.ph1208.i164

.lr.ph1208.i164:                                  ; preds = %.lr.ph1208.i164.preheader, %.lr.ph1208.i164
  %indvars.iv1247.i165 = phi i64 [ %indvars.iv.next1248.i191, %.lr.ph1208.i164 ], [ %indvars.iv1247.i165.ph, %.lr.ph1208.i164.preheader ] ; 7 uses
  %i.gqw = getelementptr inbounds [2 x i8], ptr %i.gfs, i64 %indvars.iv1247.i165 ; 5 uses
  %i.gqx = getelementptr inbounds [2 x i8], ptr %i.gqw, i64 %i.gcx
  %.val395.i166 = load i16, ptr %i.gqx, align 2, !tbaa !124
  %i.gqy = sext i16 %.val395.i166 to i32          ; 2 uses
  %i.gqz = getelementptr inbounds [2 x i8], ptr %i.gfw, i64 %indvars.iv1247.i165 ; 5 uses
  %i.gra = getelementptr inbounds [2 x i8], ptr %i.gqz, i64 %i.gcx
  %.val394.i167 = load i16, ptr %i.gra, align 2, !tbaa !124
  %i.grb = sext i16 %.val394.i167 to i32          ; 2 uses
  %i.grc = getelementptr inbounds [2 x i8], ptr %i.gfy, i64 %indvars.iv1247.i165 ; 5 uses
  %i.grd = getelementptr inbounds [2 x i8], ptr %i.grc, i64 %i.gcx
  %.val393.i168 = load i16, ptr %i.grd, align 2, !tbaa !124
  %i.gre = sext i16 %.val393.i168 to i32          ; 2 uses
  %i.grf = getelementptr inbounds [2 x i8], ptr %i.ggc, i64 %indvars.iv1247.i165 ; 5 uses
  %i.grg = getelementptr inbounds [2 x i8], ptr %i.grf, i64 %i.gcx
  %.val392.i169 = load i16, ptr %i.grg, align 2, !tbaa !124
  %i.grh = sext i16 %.val392.i169 to i32          ; 2 uses
  %i.gri = getelementptr inbounds [2 x i8], ptr %i.ggg, i64 %indvars.iv1247.i165 ; 5 uses
  %i.grj = getelementptr inbounds [2 x i8], ptr %i.gri, i64 %i.gcx
  %.val391.i170 = load i16, ptr %i.grj, align 2, !tbaa !124
  %i.grk = sext i16 %.val391.i170 to i32          ; 2 uses
  %i.grl = getelementptr inbounds [2 x i8], ptr %i.gqw, i64 %i.gcz
  %.val390.i171 = load i16, ptr %i.grl, align 2, !tbaa !124
  %i.grm = sext i16 %.val390.i171 to i32          ; 2 uses
  %i.grn = getelementptr inbounds [2 x i8], ptr %i.gqz, i64 %i.gcz
  %.val389.i172 = load i16, ptr %i.grn, align 2, !tbaa !124
  %i.gro = sext i16 %.val389.i172 to i32          ; 2 uses
  %i.grp = getelementptr inbounds [2 x i8], ptr %i.grc, i64 %i.gcz
  %.val388.i173 = load i16, ptr %i.grp, align 2, !tbaa !124
  %i.grq = sext i16 %.val388.i173 to i32          ; 2 uses
  %i.grr = getelementptr inbounds [2 x i8], ptr %i.grf, i64 %i.gcz
  %.val387.i174 = load i16, ptr %i.grr, align 2, !tbaa !124
  %i.grs = sext i16 %.val387.i174 to i32          ; 2 uses
  %i.grt = getelementptr inbounds [2 x i8], ptr %i.gri, i64 %i.gcz
  %.val386.i175 = load i16, ptr %i.grt, align 2, !tbaa !124
  %i.gru = sext i16 %.val386.i175 to i32          ; 2 uses
  %.val385.i176 = load i16, ptr %i.gqw, align 2, !tbaa !124
  %i.grv = sext i16 %.val385.i176 to i32          ; 2 uses
  %.val384.i177 = load i16, ptr %i.gqz, align 2, !tbaa !124
  %i.grw = sext i16 %.val384.i177 to i32          ; 2 uses
  %.val383.i178 = load i16, ptr %i.grc, align 2, !tbaa !124
  %i.grx = sext i16 %.val383.i178 to i32          ; 2 uses
  %.val382.i179 = load i16, ptr %i.grf, align 2, !tbaa !124
  %i.gry = sext i16 %.val382.i179 to i32          ; 2 uses
  %.val381.i180 = load i16, ptr %i.gri, align 2, !tbaa !124
  %i.grz = sext i16 %.val381.i180 to i32          ; 2 uses
  %i.gsa = getelementptr inbounds nuw [2 x i8], ptr %i.gqw, i64 %i.gcy
  %.val380.i181 = load i16, ptr %i.gsa, align 2, !tbaa !124
  %i.gsb = sext i16 %.val380.i181 to i32          ; 2 uses
  %i.gsc = getelementptr inbounds nuw [2 x i8], ptr %i.gqz, i64 %i.gcy
  %.val379.i182 = load i16, ptr %i.gsc, align 2, !tbaa !124
  %i.gsd = sext i16 %.val379.i182 to i32          ; 2 uses
  %i.gse = getelementptr inbounds nuw [2 x i8], ptr %i.grc, i64 %i.gcy
  %.val378.i183 = load i16, ptr %i.gse, align 2, !tbaa !124
  %i.gsf = sext i16 %.val378.i183 to i32          ; 2 uses
  %i.gsg = getelementptr inbounds nuw [2 x i8], ptr %i.grf, i64 %i.gcy
  %.val377.i184 = load i16, ptr %i.gsg, align 2, !tbaa !124
  %i.gsh = sext i16 %.val377.i184 to i32          ; 2 uses
  %i.gsi = getelementptr inbounds nuw [2 x i8], ptr %i.gri, i64 %i.gcy
  %.val376.i185 = load i16, ptr %i.gsi, align 2, !tbaa !124
  %i.gsj = sext i16 %.val376.i185 to i32          ; 2 uses
  %i.gsk = getelementptr inbounds nuw [2 x i8], ptr %i.gqw, i64 %i.gcw
  %.val375.i186 = load i16, ptr %i.gsk, align 2, !tbaa !124
  %i.gsl = sext i16 %.val375.i186 to i32          ; 2 uses
  %i.gsm = getelementptr inbounds nuw [2 x i8], ptr %i.gqz, i64 %i.gcw
  %.val374.i187 = load i16, ptr %i.gsm, align 2, !tbaa !124
  %i.gsn = sext i16 %.val374.i187 to i32          ; 2 uses
  %i.gso = getelementptr inbounds nuw [2 x i8], ptr %i.grc, i64 %i.gcw
  %.val373.i188 = load i16, ptr %i.gso, align 2, !tbaa !124
  %i.gsp = sext i16 %.val373.i188 to i32          ; 2 uses
  %i.gsq = getelementptr inbounds nuw [2 x i8], ptr %i.grf, i64 %i.gcw
  %.val372.i189 = load i16, ptr %i.gsq, align 2, !tbaa !124
  %i.gsr = sext i16 %.val372.i189 to i32          ; 2 uses
  %i.gss = getelementptr inbounds nuw [2 x i8], ptr %i.gri, i64 %i.gcw
  %.val371.i190 = load i16, ptr %i.gss, align 2, !tbaa !124
  %i.gst = sext i16 %.val371.i190 to i32          ; 2 uses
  %i.gsu = call i32 @llvm.smin.i32(i32 %i.grv, i32 %i.grm) ; 2 uses
  %.sroa.speculated.i562.i = call i32 @llvm.smax.i32(i32 %i.grv, i32 %i.grm) ; 2 uses
  %i.gsv = call i32 @llvm.smin.i32(i32 %i.gsu, i32 %i.gqy) ; 2 uses
  %.sroa.speculated.i563.i = call i32 @llvm.smax.i32(i32 %i.gsu, i32 %i.gqy) ; 2 uses
  %i.gsw = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i562.i, i32 %.sroa.speculated.i563.i) ; 2 uses
  %.sroa.speculated.i564.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i562.i, i32 %.sroa.speculated.i563.i) ; 2 uses
  %i.gsx = call i32 @llvm.smin.i32(i32 %i.grb, i32 %i.gsl) ; 2 uses
  %.sroa.speculated.i565.i = call i32 @llvm.smax.i32(i32 %i.grb, i32 %i.gsl) ; 2 uses
  %i.gsy = call i32 @llvm.smin.i32(i32 %i.gsx, i32 %i.gsb) ; 2 uses
  %.sroa.speculated.i566.i = call i32 @llvm.smax.i32(i32 %i.gsx, i32 %i.gsb) ; 2 uses
  %i.gsz = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i565.i, i32 %.sroa.speculated.i566.i) ; 2 uses
  %.sroa.speculated.i567.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i565.i, i32 %.sroa.speculated.i566.i) ; 2 uses
  %i.gta = call i32 @llvm.smin.i32(i32 %i.gsy, i32 %i.gsv) ; 2 uses
  %.sroa.speculated.i568.i = call i32 @llvm.smax.i32(i32 %i.gsy, i32 %i.gsv) ; 2 uses
  %i.gtb = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i567.i, i32 %.sroa.speculated.i564.i) ; 2 uses
  %.sroa.speculated.i569.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i567.i, i32 %.sroa.speculated.i564.i) ; 2 uses
  %i.gtc = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i568.i, i32 %i.gtb) ; 2 uses
  %.sroa.speculated.i570.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i568.i, i32 %i.gtb) ; 2 uses
  %i.gtd = call i32 @llvm.smin.i32(i32 %i.gsz, i32 %i.gsw) ; 2 uses
  %.sroa.speculated.i571.i = call i32 @llvm.smax.i32(i32 %i.gsz, i32 %i.gsw) ; 2 uses
  %i.gte = call i32 @llvm.smin.i32(i32 %i.gtc, i32 %i.gtd) ; 2 uses
  %.sroa.speculated.i572.i = call i32 @llvm.smax.i32(i32 %i.gtc, i32 %i.gtd) ; 2 uses
  %i.gtf = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i571.i, i32 %.sroa.speculated.i570.i) ; 2 uses
  %.sroa.speculated.i573.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i571.i, i32 %.sroa.speculated.i570.i) ; 2 uses
  %i.gtg = call i32 @llvm.smin.i32(i32 %i.gsd, i32 %i.grw) ; 2 uses
  %.sroa.speculated.i574.i = call i32 @llvm.smax.i32(i32 %i.gsd, i32 %i.grw) ; 2 uses
  %i.gth = call i32 @llvm.smin.i32(i32 %i.gtg, i32 %i.gro) ; 2 uses
  %.sroa.speculated.i575.i = call i32 @llvm.smax.i32(i32 %i.gtg, i32 %i.gro) ; 2 uses
  %i.gti = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i574.i, i32 %.sroa.speculated.i575.i) ; 2 uses
  %.sroa.speculated.i576.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i574.i, i32 %.sroa.speculated.i575.i) ; 2 uses
  %i.gtj = call i32 @llvm.smin.i32(i32 %i.grq, i32 %i.gre) ; 2 uses
  %.sroa.speculated.i577.i = call i32 @llvm.smax.i32(i32 %i.grq, i32 %i.gre) ; 2 uses
  %i.gtk = call i32 @llvm.smin.i32(i32 %i.gtj, i32 %i.gsn) ; 2 uses
  %.sroa.speculated.i578.i = call i32 @llvm.smax.i32(i32 %i.gtj, i32 %i.gsn) ; 2 uses
  %i.gtl = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i577.i, i32 %.sroa.speculated.i578.i) ; 2 uses
  %.sroa.speculated.i579.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i577.i, i32 %.sroa.speculated.i578.i) ; 2 uses
  %i.gtm = call i32 @llvm.smin.i32(i32 %i.gtk, i32 %i.gth) ; 2 uses
  %.sroa.speculated.i580.i = call i32 @llvm.smax.i32(i32 %i.gtk, i32 %i.gth) ; 2 uses
  %i.gtn = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i579.i, i32 %.sroa.speculated.i576.i) ; 2 uses
  %.sroa.speculated.i581.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i579.i, i32 %.sroa.speculated.i576.i) ; 2 uses
  %i.gto = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i580.i, i32 %i.gtn) ; 2 uses
  %.sroa.speculated.i582.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i580.i, i32 %i.gtn) ; 2 uses
  %i.gtp = call i32 @llvm.smin.i32(i32 %i.gtl, i32 %i.gti) ; 2 uses
  %.sroa.speculated.i583.i = call i32 @llvm.smax.i32(i32 %i.gtl, i32 %i.gti) ; 2 uses
  %i.gtq = call i32 @llvm.smin.i32(i32 %i.gto, i32 %i.gtp) ; 2 uses
  %.sroa.speculated.i584.i = call i32 @llvm.smax.i32(i32 %i.gto, i32 %i.gtp) ; 2 uses
  %i.gtr = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i583.i, i32 %.sroa.speculated.i582.i) ; 2 uses
  %.sroa.speculated.i585.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i583.i, i32 %.sroa.speculated.i582.i) ; 2 uses
  %i.gts = call i32 @llvm.smin.i32(i32 %i.gtm, i32 %i.gta)
  %.sroa.speculated.i586.i = call i32 @llvm.smax.i32(i32 %i.gtm, i32 %i.gta) ; 2 uses
  %i.gtt = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i585.i, i32 %.sroa.speculated.i573.i) ; 2 uses
  %.sroa.speculated.i587.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i585.i, i32 %.sroa.speculated.i573.i) ; 2 uses
  %i.gtu = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i586.i, i32 %i.gtt) ; 2 uses
  %.sroa.speculated.i588.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i586.i, i32 %i.gtt) ; 2 uses
  %i.gtv = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i584.i, i32 %.sroa.speculated.i572.i) ; 2 uses
  %.sroa.speculated.i589.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i584.i, i32 %.sroa.speculated.i572.i) ; 2 uses
  %i.gtw = call i32 @llvm.smin.i32(i32 %i.gtu, i32 %i.gtv) ; 2 uses
  %.sroa.speculated.i590.i = call i32 @llvm.smax.i32(i32 %i.gtu, i32 %i.gtv) ; 2 uses
  %i.gtx = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i589.i, i32 %.sroa.speculated.i588.i) ; 2 uses
  %.sroa.speculated.i591.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i589.i, i32 %.sroa.speculated.i588.i) ; 2 uses
  %i.gty = call i32 @llvm.smin.i32(i32 %i.gtq, i32 %i.gte) ; 2 uses
  %.sroa.speculated.i592.i = call i32 @llvm.smax.i32(i32 %i.gtq, i32 %i.gte) ; 2 uses
  %i.gtz = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i581.i, i32 %.sroa.speculated.i569.i) ; 2 uses
  %.sroa.speculated.i593.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i581.i, i32 %.sroa.speculated.i569.i)
  %i.gua = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i592.i, i32 %i.gtz) ; 2 uses
  %.sroa.speculated.i594.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i592.i, i32 %i.gtz) ; 2 uses
  %i.gub = call i32 @llvm.smin.i32(i32 %i.gtr, i32 %i.gtf) ; 2 uses
  %.sroa.speculated.i595.i = call i32 @llvm.smax.i32(i32 %i.gtr, i32 %i.gtf) ; 2 uses
  %i.guc = call i32 @llvm.smin.i32(i32 %i.gua, i32 %i.gub) ; 2 uses
  %.sroa.speculated.i596.i = call i32 @llvm.smax.i32(i32 %i.gua, i32 %i.gub) ; 2 uses
  %i.gud = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i595.i, i32 %.sroa.speculated.i594.i) ; 2 uses
  %.sroa.speculated.i597.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i595.i, i32 %.sroa.speculated.i594.i) ; 2 uses
  %i.gue = call i32 @llvm.smin.i32(i32 %i.gtw, i32 %i.gty)
  %.sroa.speculated.i598.i = call i32 @llvm.smax.i32(i32 %i.gtw, i32 %i.gty)
  %i.guf = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i590.i, i32 %i.guc)
  %.sroa.speculated.i599.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i590.i, i32 %i.guc)
  %i.gug = call i32 @llvm.smin.i32(i32 %i.gtx, i32 %.sroa.speculated.i596.i)
  %.sroa.speculated.i600.i = call i32 @llvm.smax.i32(i32 %i.gtx, i32 %.sroa.speculated.i596.i)
  %i.guh = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i591.i, i32 %i.gud)
  %.sroa.speculated.i601.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i591.i, i32 %i.gud)
  %i.gui = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i587.i, i32 %.sroa.speculated.i597.i)
  %.sroa.speculated.i602.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i587.i, i32 %.sroa.speculated.i597.i)
  %i.guj = call i32 @llvm.smin.i32(i32 %i.gsp, i32 %i.gsf) ; 2 uses
  %.sroa.speculated.i603.i = call i32 @llvm.smax.i32(i32 %i.gsp, i32 %i.gsf) ; 2 uses
  %i.guk = call i32 @llvm.smin.i32(i32 %i.guj, i32 %i.grx) ; 2 uses
  %.sroa.speculated.i604.i = call i32 @llvm.smax.i32(i32 %i.guj, i32 %i.grx) ; 2 uses
  %i.gul = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i603.i, i32 %.sroa.speculated.i604.i) ; 2 uses
  %.sroa.speculated.i605.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i603.i, i32 %.sroa.speculated.i604.i) ; 2 uses
  %i.gum = call i32 @llvm.smin.i32(i32 %i.gry, i32 %i.grs) ; 2 uses
  %.sroa.speculated.i606.i = call i32 @llvm.smax.i32(i32 %i.gry, i32 %i.grs) ; 2 uses
  %i.gun = call i32 @llvm.smin.i32(i32 %i.gum, i32 %i.grh) ; 2 uses
  %.sroa.speculated.i607.i = call i32 @llvm.smax.i32(i32 %i.gum, i32 %i.grh) ; 2 uses
  %i.guo = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i606.i, i32 %.sroa.speculated.i607.i) ; 2 uses
  %.sroa.speculated.i608.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i606.i, i32 %.sroa.speculated.i607.i) ; 2 uses
  %i.gup = call i32 @llvm.smin.i32(i32 %i.gun, i32 %i.guk) ; 2 uses
  %.sroa.speculated.i609.i = call i32 @llvm.smax.i32(i32 %i.gun, i32 %i.guk) ; 2 uses
  %i.guq = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i608.i, i32 %.sroa.speculated.i605.i) ; 2 uses
  %.sroa.speculated.i610.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i608.i, i32 %.sroa.speculated.i605.i) ; 2 uses
  %i.gur = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i609.i, i32 %i.guq) ; 2 uses
  %.sroa.speculated.i611.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i609.i, i32 %i.guq) ; 2 uses
  %i.gus = call i32 @llvm.smin.i32(i32 %i.guo, i32 %i.gul) ; 2 uses
  %.sroa.speculated.i612.i = call i32 @llvm.smax.i32(i32 %i.guo, i32 %i.gul) ; 2 uses
  %i.gut = call i32 @llvm.smin.i32(i32 %i.gur, i32 %i.gus) ; 2 uses
  %.sroa.speculated.i613.i = call i32 @llvm.smax.i32(i32 %i.gur, i32 %i.gus) ; 2 uses
  %i.guu = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i612.i, i32 %.sroa.speculated.i611.i) ; 2 uses
  %.sroa.speculated.i614.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i612.i, i32 %.sroa.speculated.i611.i) ; 2 uses
  %i.guv = call i32 @llvm.smin.i32(i32 %i.grk, i32 %i.gsr) ; 2 uses
  %.sroa.speculated.i615.i = call i32 @llvm.smax.i32(i32 %i.grk, i32 %i.gsr) ; 2 uses
  %i.guw = call i32 @llvm.smin.i32(i32 %i.guv, i32 %i.gsh) ; 2 uses
  %.sroa.speculated.i616.i = call i32 @llvm.smax.i32(i32 %i.guv, i32 %i.gsh) ; 2 uses
  %i.gux = call i32 @llvm.smin.i32(i32 %.sroa.speculated.i615.i, i32 %.sroa.speculated.i616.i) ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2cv10medianBlurERKNS_11_InputArrayERKNS_12_OutputArrayEi:bb.a
bb.ab:                                            ; preds = %bb.aa
  %i.ak = icmp eq i32 %i.ab, 2
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ak, i64 88, i64 84
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %10, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.al = load i32, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !27
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.am = icmp eq i32 %i.ab, 0
  %i.an = zext i1 %i.am to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ao = phi i32 [ %i.al, %bb.ab ], [ %i.an, %bb.ac ]
  %i.ap = icmp eq i32 %i.ab, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 84
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp sgt i32 %i.ab, -1
  %i.at = zext i1 %i.as to i32
  %i.au = select i1 %i.ap, i32 %i.ar, i32 %i.at
  %.sroa.2.0.insert.ext.i = zext i32 %i.au to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ao to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.av = load i32, ptr %10, align 8, !tbaa !16
  %i.aw = and i32 %i.av, 4095
  invoke void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %.sroa.0.0.insert.insert.i, i32 noundef %i.aw, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.ax = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc43 unwind label %bb.aj

.noexc43:                                         ; preds = %bb.ae
  %i.ay = icmp eq i32 %i.ax, 65536
  br i1 %i.ay, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.noexc43
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !19, !noalias !142
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %i.ba)
          to label %bb.ak unwind label %bb.aj

bb.ag:                                            ; preds = %.noexc43
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.ak unwind label %bb.aj

bb.ah:                                            ; preds = %bb.w, %bb.v, %bb.u
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ai:                                            ; preds = %bb.x, %bb.ad
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aj:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ak:                                            ; preds = %bb.ag, %bb.af
  invoke void @_ZN2cv12cpu_baseline10medianBlurERKNS_3MatERS1_i(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef %2)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.ap

bb.am:                                            ; preds = %bb.ak
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #13
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.pn28.pn.pn = phi { ptr, i32 } [ %i.be, %bb.am ], [ %i.bd, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %.body

.body:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.an
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn, %bb.an ], [ %i.bc, %bb.ai ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #13
  br label %bb.ao

bb.ao:                                            ; preds = %.body, %bb.ah
  %.pn28.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn.pn, %.body ], [ %i.bb, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.as

bb.ap:                                            ; preds = %bb.t, %bb.al
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !30
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #16
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void

bb.as:                                            ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.b, %bb.c ], [ %.pn28.pn.pn.pn.pn, %bb.ao ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  resume { ptr, i32 } %.pn34.pn
}

declare noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef i32 @_ZNK2cv11_InputArray4dimsEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv11_InputArray6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umax.v8i32(<8 x i32>, <8 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umin.v4i16(<4 x i16>, <4 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"p1 _ZTSN2cv12MatAllocatorE", !8, i64 0}
!11 = !{!"p1 _ZTSN2cv8UMatDataE", !8, i64 0}
!12 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!13 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !12, i64 4, !5, i64 8, !4, i64 12}
!14 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!15 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !10, i64 56, !11, i64 64, !13, i64 72, !14, i64 128}
!16 = !{!15, !5, i64 0}
!17 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!18 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !8, i64 8, !17, i64 16}
!19 = !{!18, !8, i64 8}
!20 = !{!"long", !4, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!13, !5, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !20, i64 8, !4, i64 16}
!25 = !{!24, !9, i64 0}
!26 = !{!4, !4, i64 0}
!27 = !{!5, !5, i64 0}
!28 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !8, i64 0}
!29 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !28, i64 0, !5, i64 8}
!30 = !{!29, !5, i64 8}
!31 = !{!23, !9, i64 0}
!32 = !{!24, !20, i64 8}
!33 = distinct !{!33, !122}
!34 = distinct !{!34, !122}
!35 = distinct !{!35, !122}
!36 = distinct !{!36, !122}
!37 = distinct !{!37, !122}
!38 = distinct !{!38, !122}
!39 = distinct !{!39, !122}
!40 = distinct !{!40, !122}
!41 = distinct !{!41, !122}
!42 = distinct !{!42, !122}
!43 = distinct !{!43, !122}
!44 = distinct !{!44, !122}
!45 = distinct !{!45, !122, !126, !127}
!46 = distinct !{!46, !122, !126}
!47 = distinct !{!47, !122}
!48 = distinct !{!48, !122}
!49 = distinct !{!49, !122}
!50 = distinct !{!50, !122, !126, !127}
!51 = distinct !{!51, !122, !126}
!52 = distinct !{!52, !122}
!53 = distinct !{!53, !122, !126, !127}
!54 = distinct !{!54, !122, !126}
!55 = distinct !{!55, !122}
!56 = distinct !{!56, !122}
!57 = distinct !{!57, !122}
!58 = distinct !{!58, !122, !126, !127}
!59 = distinct !{!59, !122, !126}
!60 = distinct !{!60, !122}
!61 = distinct !{!61, !122, !126, !127}
!62 = distinct !{!62, !122, !126}
!63 = distinct !{!63, !122}
!64 = distinct !{!64, !122}
!65 = distinct !{!65, !122}
!66 = distinct !{!66, !122, !126, !127}
!67 = distinct !{!67, !122, !126}
!68 = distinct !{!68, !122}
!69 = distinct !{!69, !122, !126, !127}
!70 = distinct !{!70, !122, !126}
!71 = distinct !{!71, !122}
!72 = distinct !{!72, !122}
!73 = distinct !{!73, !122}
!74 = distinct !{!74, !122, !126, !127}
!75 = distinct !{!75, !122, !126}
!76 = distinct !{!76, !122}
!77 = distinct !{!77, !122, !126, !127}
!78 = distinct !{!78, !122, !126}
!79 = distinct !{!79, !122}
!80 = distinct !{!80, !122}
!81 = distinct !{!81, !122}
!82 = distinct !{!82, !122, !126, !127}
!83 = distinct !{!83, !122, !126}
!84 = distinct !{!84, !122}
!85 = distinct !{!85, !122, !126, !127}
!86 = distinct !{!86, !122, !126}
!87 = distinct !{!87, !122}
!88 = distinct !{!88, !122}
!89 = distinct !{!89, !122}
!90 = distinct !{!90, !122, !126, !127}
!91 = distinct !{!91, !122, !126}
!92 = distinct !{!92, !122}
!93 = distinct !{!93, !122}
!94 = distinct !{!94, !122}
!95 = distinct !{!95, !122}
!96 = distinct !{!96, !122}
!97 = distinct !{!97, !122}
!98 = distinct !{!98, !122}
!99 = distinct !{!99, !122}
!100 = distinct !{!100, !122}
!101 = distinct !{!101, !122}
!102 = distinct !{!102, !122}
!103 = distinct !{!103, !122}
!104 = distinct !{!104, !122}
!105 = distinct !{!105, !122}
!106 = distinct !{!106, !122}
!107 = distinct !{!107, !122}
!108 = distinct !{!108, i1 false, !"LVerDomain"}
!109 = distinct !{!109, !108}
!110 = distinct !{!110, !122, !126, !127}
!111 = distinct !{!111, !108}
!112 = distinct !{!112, !136}
!113 = distinct !{!113, !122, !126}
!114 = distinct !{!114, !122}
!115 = distinct !{!115, !122}
!116 = distinct !{!116, !122}
!117 = distinct !{!117, !122}
!118 = distinct !{!118, !122}
!119 = distinct !{!119, !122}
!120 = !{!15, !9, i64 24}
!121 = !{!18, !5, i64 0}
!122 = !{!"llvm.loop.mustprogress"}
!123 = !{!"short", !4, i64 0}
!124 = !{!123, !123, i64 0}
!125 = !{!"branch_weights", i32 4, i32 12}
!126 = !{!"llvm.loop.isvectorized", i32 1}
!127 = !{!"llvm.loop.unroll.runtime.disable"}
!128 = !{!"float", !4, i64 0}
!129 = !{!128, !128, i64 0}
!130 = !{!17, !5, i64 0}
!131 = !{!17, !5, i64 4}
!132 = !{!15, !5, i64 8}
!133 = !{!15, !5, i64 12}
!134 = !{!109}
!135 = !{!111}
!136 = !{!"llvm.loop.unroll.disable"}
!137 = distinct !{!137, i1 false, !"_ZNK2cv11_InputArray6getMatEi"}
!138 = distinct !{!138, !137, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!139 = distinct !{!139, i1 false, !"_ZNK2cv11_InputArray6getMatEi"}
!140 = distinct !{!140, !139, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!141 = !{!138}
!142 = !{!140}
end_hunk_2
