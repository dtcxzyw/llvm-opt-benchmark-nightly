Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/import2ozz?download=true
inline.NumInlined: 212
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK3ozz9animation7offline11OzzImporter13BuildFilenameB5cxx11EPKcS4_:bb.a
  %i.aae = extractelement <32 x i1> %i.zc, i64 27
  br i1 %i.aae, label %pred.store.if1211, label %pred.store.continue1212

pred.store.if1211:                                ; preds = %pred.store.continue1210
  store i8 95, ptr %next.gep1151, align 1, !tbaa !46
  br label %pred.store.continue1212

pred.store.continue1212:                          ; preds = %pred.store.if1211, %pred.store.continue1210
  %i.aaf = extractelement <32 x i1> %i.zc, i64 28
  br i1 %i.aaf, label %pred.store.if1213, label %pred.store.continue1214

pred.store.if1213:                                ; preds = %pred.store.continue1212
  store i8 95, ptr %next.gep1152, align 1, !tbaa !46
  br label %pred.store.continue1214

pred.store.continue1214:                          ; preds = %pred.store.if1213, %pred.store.continue1212
  %i.aag = extractelement <32 x i1> %i.zc, i64 29
  br i1 %i.aag, label %pred.store.if1215, label %pred.store.continue1216

pred.store.if1215:                                ; preds = %pred.store.continue1214
  store i8 95, ptr %next.gep1153, align 1, !tbaa !46
  br label %pred.store.continue1216

pred.store.continue1216:                          ; preds = %pred.store.if1215, %pred.store.continue1214
  %i.aah = extractelement <32 x i1> %i.zc, i64 30
  br i1 %i.aah, label %pred.store.if1217, label %pred.store.continue1218

pred.store.if1217:                                ; preds = %pred.store.continue1216
  store i8 95, ptr %next.gep1154, align 1, !tbaa !46
  br label %pred.store.continue1218

pred.store.continue1218:                          ; preds = %pred.store.if1217, %pred.store.continue1216
  %i.aai = extractelement <32 x i1> %i.zc, i64 31
  br i1 %i.aai, label %pred.store.if1219, label %pred.store.continue1220

pred.store.if1219:                                ; preds = %pred.store.continue1218
  store i8 95, ptr %next.gep1155, align 1, !tbaa !46
  br label %pred.store.continue1220

pred.store.continue1220:                          ; preds = %pred.store.if1219, %pred.store.continue1218
  %index.next1221 = add nuw i64 %index1123, 32    ; 2 uses
  %i.aaj = icmp eq i64 %index.next1221, %n.vec1121
  br i1 %i.aaj, label %middle.block1222, label %vector.body1122, !llvm.loop !74

middle.block1222:                                 ; preds = %pred.store.continue1220
  %cmp.n1223 = icmp eq i64 %.pre82, %n.vec1121
  br i1 %cmp.n1223, label %.split.us, label %vec.epilog.iter.check1227

vec.epilog.iter.check1227:                        ; preds = %middle.block1222
  %min.epilog.iters.check1228 = icmp eq i64 %i.xv, 0
  br i1 %min.epilog.iters.check1228, label %.lr.ph.i.7.preheader, label %vec.epilog.ph1229, !prof !81

vec.epilog.ph1229:                                ; preds = %vector.main.loop.iter.check1118, %vec.epilog.iter.check1227
  %vec.epilog.resume.val1224 = phi i64 [ %n.vec1121, %vec.epilog.iter.check1227 ], [ 0, %vector.main.loop.iter.check1118 ]
  %n.vec1230 = and i64 %.pre82, -8                ; 3 uses
  %i.aak = getelementptr i8, ptr %.pre81, i64 %n.vec1230
  br label %vec.epilog.vector.body1231

vec.epilog.vector.body1231:                       ; preds = %pred.store.continue1257, %vec.epilog.ph1229
  %index1232 = phi i64 [ %vec.epilog.resume.val1224, %vec.epilog.ph1229 ], [ %index.next1258, %pred.store.continue1257 ] ; 9 uses
  %next.gep1233 = getelementptr i8, ptr %.pre81, i64 %index1232 ; 2 uses
  %i.aal = getelementptr i8, ptr %.pre81, i64 %index1232
  %next.gep1234 = getelementptr i8, ptr %i.aal, i64 1
  %i.aam = getelementptr i8, ptr %.pre81, i64 %index1232
  %next.gep1235 = getelementptr i8, ptr %i.aam, i64 2
  %i.aan = getelementptr i8, ptr %.pre81, i64 %index1232
  %next.gep1236 = getelementptr i8, ptr %i.aan, i64 3
  %i.aao = getelementptr i8, ptr %.pre81, i64 %index1232
  %next.gep1237 = getelementptr i8, ptr %i.aao, i64 4
  %i.aap = getelementptr i8, ptr %.pre81, i64 %index1232
  %next.gep1238 = getelementptr i8, ptr %i.aap, i64 5
  %i.aaq = getelementptr i8, ptr %.pre81, i64 %index1232
  %next.gep1239 = getelementptr i8, ptr %i.aaq, i64 6
  %i.aar = getelementptr i8, ptr %.pre81, i64 %index1232
  %next.gep1240 = getelementptr i8, ptr %i.aar, i64 7
  %wide.load1241 = load <8 x i8>, ptr %next.gep1233, align 1, !tbaa !46
  %i.aas = icmp eq <8 x i8> %wide.load1241, splat (i8 42) ; 8 uses
  %i.aat = extractelement <8 x i1> %i.aas, i64 0
  br i1 %i.aat, label %pred.store.if1242, label %pred.store.continue1243

pred.store.if1242:                                ; preds = %vec.epilog.vector.body1231
  store i8 95, ptr %next.gep1233, align 1, !tbaa !46
  br label %pred.store.continue1243

pred.store.continue1243:                          ; preds = %pred.store.if1242, %vec.epilog.vector.body1231
  %i.aau = extractelement <8 x i1> %i.aas, i64 1
  br i1 %i.aau, label %pred.store.if1244, label %pred.store.continue1245

pred.store.if1244:                                ; preds = %pred.store.continue1243
  store i8 95, ptr %next.gep1234, align 1, !tbaa !46
  br label %pred.store.continue1245

pred.store.continue1245:                          ; preds = %pred.store.if1244, %pred.store.continue1243
  %i.aav = extractelement <8 x i1> %i.aas, i64 2
  br i1 %i.aav, label %pred.store.if1246, label %pred.store.continue1247

pred.store.if1246:                                ; preds = %pred.store.continue1245
  store i8 95, ptr %next.gep1235, align 1, !tbaa !46
  br label %pred.store.continue1247

pred.store.continue1247:                          ; preds = %pred.store.if1246, %pred.store.continue1245
  %i.aaw = extractelement <8 x i1> %i.aas, i64 3
  br i1 %i.aaw, label %pred.store.if1248, label %pred.store.continue1249

pred.store.if1248:                                ; preds = %pred.store.continue1247
  store i8 95, ptr %next.gep1236, align 1, !tbaa !46
  br label %pred.store.continue1249

pred.store.continue1249:                          ; preds = %pred.store.if1248, %pred.store.continue1247
  %i.aax = extractelement <8 x i1> %i.aas, i64 4
  br i1 %i.aax, label %pred.store.if1250, label %pred.store.continue1251

pred.store.if1250:                                ; preds = %pred.store.continue1249
  store i8 95, ptr %next.gep1237, align 1, !tbaa !46
  br label %pred.store.continue1251

pred.store.continue1251:                          ; preds = %pred.store.if1250, %pred.store.continue1249
  %i.aay = extractelement <8 x i1> %i.aas, i64 5
  br i1 %i.aay, label %pred.store.if1252, label %pred.store.continue1253

pred.store.if1252:                                ; preds = %pred.store.continue1251
  store i8 95, ptr %next.gep1238, align 1, !tbaa !46
  br label %pred.store.continue1253

pred.store.continue1253:                          ; preds = %pred.store.if1252, %pred.store.continue1251
  %i.aaz = extractelement <8 x i1> %i.aas, i64 6
  br i1 %i.aaz, label %pred.store.if1254, label %pred.store.continue1255

pred.store.if1254:                                ; preds = %pred.store.continue1253
  store i8 95, ptr %next.gep1239, align 1, !tbaa !46
  br label %pred.store.continue1255

pred.store.continue1255:                          ; preds = %pred.store.if1254, %pred.store.continue1253
  %i.aba = extractelement <8 x i1> %i.aas, i64 7
  br i1 %i.aba, label %pred.store.if1256, label %pred.store.continue1257

pred.store.if1256:                                ; preds = %pred.store.continue1255
  store i8 95, ptr %next.gep1240, align 1, !tbaa !46
  br label %pred.store.continue1257

pred.store.continue1257:                          ; preds = %pred.store.if1256, %pred.store.continue1255
  %index.next1258 = add nuw i64 %index1232, 8     ; 2 uses
  %i.abb = icmp eq i64 %index.next1258, %n.vec1230
  br i1 %i.abb, label %vec.epilog.middle.block1259, label %vec.epilog.vector.body1231, !llvm.loop !75

vec.epilog.middle.block1259:                      ; preds = %pred.store.continue1257
  %cmp.n1260 = icmp eq i64 %.pre82, %n.vec1230
  br i1 %cmp.n1260, label %.split.us, label %.lr.ph.i.7.preheader

.lr.ph.i.7.preheader:                             ; preds = %iter.check1225, %vec.epilog.iter.check1227, %vec.epilog.middle.block1259
  %.sroa.02.07.i.7.ph = phi ptr [ %.pre81, %iter.check1225 ], [ %i.xw, %vec.epilog.iter.check1227 ], [ %i.aak, %vec.epilog.middle.block1259 ]
  br label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %.lr.ph.i.7.preheader, %bb.z
  %.sroa.02.07.i.7 = phi ptr [ %i.abe, %bb.z ], [ %.sroa.02.07.i.7.ph, %.lr.ph.i.7.preheader ] ; 3 uses
  %i.abc = load i8, ptr %.sroa.02.07.i.7, align 1, !tbaa !46
  %i.abd = icmp eq i8 %i.abc, 42
  br i1 %i.abd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.7
  store i8 95, ptr %.sroa.02.07.i.7, align 1, !tbaa !46
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i.7
  %i.abe = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.7, i64 1 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.abe, %i.xu
  br i1 %.not.i.7, label %.split.us, label %.lr.ph.i.7, !llvm.loop !76

bb.aa:                                            ; preds = %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.abg = load i64, ptr %i.abf, align 8, !tbaa !51 ; 3 uses
  %.not54 = icmp eq i64 %i.abg, 0
  br i1 %.not54, label %_ZStneIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit.thread53, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.aa
  %i.abh = load ptr, ptr %0, align 8, !tbaa !50   ; 2 uses
  %i.abi = call ptr @memchr(ptr noundef %i.abh, i32 noundef 42, i64 noundef %i.abg) #17 ; 2 uses
  %.not.i27 = icmp eq ptr %i.abi, null
  %i.abj = ptrtoint ptr %i.abi to i64
  %i.abk = ptrtoint ptr %i.abh to i64
  %i.abl = sub i64 %i.abj, %i.abk                 ; 2 uses
  %.not2263 = icmp eq i64 %i.abl, -1
  %or.cond = or i1 %.not.i27, %.not2263
  br i1 %or.cond, label %_ZStneIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit.thread53, label %.lr.ph

bb.ab:                                            ; preds = %.split.us
  %i.abm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ao

.lr.ph:                                           ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i30
  %i.abn = phi i64 [ %i.abt, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i30 ], [ %i.abg, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ] ; 3 uses
  %.064 = phi i64 [ %i.aby, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i30 ], [ %i.abl, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ] ; 4 uses
  %i.abo = icmp ugt i64 %.064, %i.abn
  br i1 %i.abo, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7replaceEmmPKcm.exit.i

bb.ac:                                            ; preds = %.lr.ph
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i64 noundef %.064, i64 noundef %i.abn) #18
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.ac
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7replaceEmmPKcm.exit.i: ; preds = %.lr.ph
  %i.abp = load i64, ptr %i.p, align 8, !tbaa !51
  %i.abq = load ptr, ptr %4, align 8, !tbaa !50
  %i.abr = icmp ne i64 %i.abn, %.064
  %spec.select.i.i.i = zext i1 %i.abr to i64
  %i.abs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.064, i64 noundef %spec.select.i.i.i, ptr noundef %i.abq, i64 noundef %i.abp)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7replaceEmmRKS6_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7replaceEmmRKS6_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7replaceEmmPKcm.exit.i
  %i.abt = load i64, ptr %i.abf, align 8, !tbaa !51 ; 3 uses
  %.not55 = icmp eq i64 %i.abt, 0
  br i1 %.not55, label %._crit_edge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i30

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i30:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7replaceEmmRKS6_.exit
  %i.abu = load ptr, ptr %0, align 8, !tbaa !50   ; 2 uses
  %i.abv = call ptr @memchr(ptr noundef %i.abu, i32 noundef 42, i64 noundef %i.abt) #17 ; 2 uses
  %.not.i31 = icmp eq ptr %i.abv, null
  %i.abw = ptrtoint ptr %i.abv to i64
  %i.abx = ptrtoint ptr %i.abu to i64
  %i.aby = sub i64 %i.abw, %i.abx                 ; 2 uses
  %.not22 = icmp eq i64 %i.aby, -1
  %or.cond118 = or i1 %.not.i31, %.not22
  br i1 %or.cond118, label %._crit_edge, label %.lr.ph, !llvm.loop !77

._crit_edge:                                      ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7replaceEmmRKS6_.exit
  %i.abz = load i64, ptr %i.p, align 8, !tbaa !51 ; 3 uses
  %i.aca = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #17
  %i.acb = icmp eq i64 %i.abz, %i.aca
  br i1 %i.acb, label %bb.ad, label %_ZStneIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit.thread

bb.ad:                                            ; preds = %._crit_edge
  %i.acc = icmp eq i64 %i.abz, 0
  br i1 %i.acc, label %_ZStneIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit.thread53, label %_ZStneIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit

_ZStneIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit: ; preds = %bb.ad
  %i.acd = load ptr, ptr %4, align 8, !tbaa !50
  %bcmp.i.i = call i32 @bcmp(ptr %i.acd, ptr nonnull %3, i64 %i.abz)
  %.not56 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not56, label %_ZStneIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit.thread53, label %_ZStneIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit.thread

_ZStneIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit.thread: ; preds = %._crit_edge, %_ZStneIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN3ozz3log3LogC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %6)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %_ZStneIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit.thread
  %i.ace = load ptr, ptr %6, align 8, !tbaa !16, !nonnull !17, !align !18 ; 4 uses
  %i.acf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ace, ptr noundef nonnull @.str.30, i64 noundef 15)
          to label %_ZN3ozz3log6LoggerlsIA16_cEERSoRKT_.exit unwind label %bb.aj ; 0 uses

_ZN3ozz3log6LoggerlsIA16_cEERSoRKT_.exit:         ; preds = %bb.ae
  %i.acg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #17
  %i.ach = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ace, ptr noundef nonnull %3, i64 noundef %i.acg)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN3ozz3log6LoggerlsIA16_cEERSoRKT_.exit
  %i.aci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ace, ptr noundef nonnull @.str.31, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.acj = load ptr, ptr %4, align 8, !tbaa !50
  %i.ack = load i64, ptr %i.p, align 8, !tbaa !51
  %i.acl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ace, ptr noundef %i.acj, i64 noundef %i.ack)
          to label %_ZStlsIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEERSt13basic_ostreamIT_T0_ES9_RKNSt7__cxx1112basic_stringIS6_S7_T1_EE.exit unwind label %bb.aj ; 4 uses

_ZStlsIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEERSt13basic_ostreamIT_T0_ES9_RKNSt7__cxx1112basic_stringIS6_S7_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39
  %i.acm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.acl, ptr noundef nonnull @.str.32, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZStlsIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEERSt13basic_ostreamIT_T0_ES9_RKNSt7__cxx1112basic_stringIS6_S7_T1_EE.exit
  %i.acn = load ptr, ptr %i.acl, align 8, !tbaa !23
  %i.aco = getelementptr i8, ptr %i.acn, i64 -24
  %i.acp = load i64, ptr %i.aco, align 8
  %i.acq = getelementptr inbounds i8, ptr %i.acl, i64 %i.acp
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 240
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !39 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.acs, null
  br i1 %.not.i.i.i, label %bb.af, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  invoke void @_ZSt16__throw_bad_castv() #18
          to label %.noexc44 unwind label %bb.aj

.noexc44:                                         ; preds = %bb.af
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 56
  %i.acu = load i8, ptr %i.act, align 8, !tbaa !45
  %.not.i1.i.i = icmp eq i8 %i.acu, 0
  br i1 %.not.i1.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acs, i64 67
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !46
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.acs)
          to label %.noexc45 unwind label %bb.aj

.noexc45:                                         ; preds = %bb.ah
  %i.acx = load ptr, ptr %i.acs, align 8, !tbaa !23
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 48
  %i.acz = load ptr, ptr %i.acy, align 8
  %i.ada = invoke noundef signext i8 %i.acz(ptr noundef nonnull align 8 dereferenceable(570) %i.acs, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.aj, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc45, %bb.ag
  %.0.i.i.i = phi i8 [ %i.acw, %bb.ag ], [ %i.ada, %.noexc45 ]
  %i.adb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.acl, i8 noundef signext %.0.i.i.i)
          to label %.noexc47 unwind label %bb.aj

.noexc47:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.adc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.adb)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.aj ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc47
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %_ZStneIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit.thread53

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE7replaceEmmPKcm.exit.i, %bb.ac
  %lpad.loopexit.split-lp1263 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ai:                                            ; preds = %_ZStneIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit.thread
  %i.add = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %.noexc47, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc45, %bb.ah, %bb.af, %_ZStlsIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEERSt13basic_ostreamIT_T0_ES9_RKNSt7__cxx1112basic_stringIS6_S7_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN3ozz3log6LoggerlsIA16_cEERSoRKT_.exit, %bb.ae
  %i.ade = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3ozz3log6LoggerD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %6) #17
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.ade, %bb.aj ], [ %i.add, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.an

_ZStneIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit.thread53: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.aa, %bb.ad, %_ZStneIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit, %_ZNSolsEPFRSoS_E.exit
  %i.adf = load ptr, ptr %4, align 8, !tbaa !50   ; 2 uses
  %i.adg = icmp eq ptr %i.adf, %i.a
  br i1 %i.adg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i.i: ; preds = %_ZStneIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit.thread53
  %i.adh = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.al unwind label %bb.am     ; 2 uses

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i.i
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !23
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 24
  %i.adk = load ptr, ptr %i.adj, align 8
  invoke void %i.adk(ptr noundef nonnull align 8 dereferenceable(8) %i.adh, ptr noundef %i.adf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i.i
  %i.adl = landingpad { ptr, i32 }
          catch ptr null
  %i.adm = extractvalue { ptr, i32 } %i.adl, 0
  call void @__clang_call_terminate(ptr %i.adm) #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev.exit: ; preds = %_ZStneIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS7_.exit.thread53, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.an:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ak
  %.pn24 = phi { ptr, i32 } [ %.pn, %bb.ak ], [ %lpad.loopexit.split-lp1263, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ab
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %bb.an ], [ %i.abm, %bb.ab ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn24.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEC2IS5_EEPKcRKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !48
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.35) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.g = add nuw i64 %i.c, 1
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %i.g, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_createERmm.exit.i unwind label %bb.h ; 2 uses

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_createERmm.exit.i: ; preds = %bb.g
  store ptr %i.k, ptr %0, align 8, !tbaa !50
  store i64 %i.c, ptr %i.a, align 8, !tbaa !46
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_createERmm.exit.i
  %i.n = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 2 uses
  switch i64 %i.c, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE12_M_constructIPKcEEvT_SA_St20forward_iterator_tag.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i
  %i.o = load i8, ptr %1, align 1, !tbaa !46
  store i8 %i.o, ptr %i.n, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE12_M_constructIPKcEEvT_SA_St20forward_iterator_tag.exit

bb.j:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE12_M_constructIPKcEEvT_SA_St20forward_iterator_tag.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE12_M_constructIPKcEEvT_SA_St20forward_iterator_tag.exit: ; preds = %._crit_edge.i, %bb.i, %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.p, align 8, !tbaa !51
  %i.q = load ptr, ptr %0, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.c
  store i8 0, ptr %i.r, align 1, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.a)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE10_M_disposeEv.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE10_M_disposeEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare noundef ptr @_ZN3ozz6memory17default_allocatorEv() local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !51   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #18
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !50     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !46
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
end_hunk_0
