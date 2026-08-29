Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioJsonc?download=true
inline.NumInlined: 266
inline.NumDeleted: 53
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Jsonc_ReadNetwork:bb.a
  %i.aaw = load i64, ptr %i.aav, align 4
  %i.aax = and i64 %i.aaw, 4294967295
  %i.aay = icmp eq i64 %i.aax, 3
  %.sroa.2.0.extract.shift.i.i796.mask.i = and i64 %i.aau, -4294967296
  %i.aaz = icmp eq i64 %.sroa.2.0.extract.shift.i.i796.mask.i, 30064771072
  %or.cond1049.i = select i1 %i.aay, i1 %i.aaz, i1 false
  br i1 %or.cond1049.i, label %Jsonc_StringEqual.exit.i800.i, label %Jsonc_StringEqual.exit.thread.i797.i

Jsonc_StringEqual.exit.i800.i:                    ; preds = %.lr.ph.i792.i
  %i.aba = and i64 %i.aau, 4294967295
  %i.abb = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.aba
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 1
  %i.abd = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.abc, ptr noundef nonnull readonly dereferenceable(6) @.str.75, i64 noundef 5) #29
  %.not19.i801.i = icmp eq i32 %i.abd, 0
  br i1 %.not19.i801.i, label %bb.fe, label %Jsonc_StringEqual.exit.thread.i797.i

Jsonc_StringEqual.exit.thread.i797.i:             ; preds = %Jsonc_StringEqual.exit.i800.i, %.lr.ph.i792.i
  %indvars.iv.next.i798.i = add nuw nsw i64 %indvars.iv.i794.i, 1 ; 2 uses
  %exitcond.not.i799.i = icmp eq i64 %indvars.iv.next.i798.i, %wide.trip.count.i660.i
  br i1 %exitcond.not.i799.i, label %Jsonc_ObjectLookup.exit821.thread.i, label %.lr.ph.i792.i, !llvm.loop !96

bb.fe:                                            ; preds = %Jsonc_StringEqual.exit.i800.i
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aat, i64 24
  %i.abf = load i64, ptr %i.abe, align 4          ; 2 uses
  %i.abg = and i64 %i.abf, 4294967295
  %.not.i803.i = icmp eq i64 %i.abg, 5
  br i1 %.not.i803.i, label %bb.ff, label %Jsonc_ObjectLookup.exit821.thread.i

bb.ff:                                            ; preds = %bb.fe
  %.sroa.2.8.extract.shift.i.i805.i = lshr i64 %i.abf, 32 ; 3 uses
  %i.abh = icmp ne i64 %.sroa.2.8.extract.shift.i.i805.i, 4294967295
  %.sroa.2.8.extract.trunc.i.i806.i = trunc nuw i64 %.sroa.2.8.extract.shift.i.i805.i to i32
  %.not.i.i807.i = icmp ugt i32 %i.ri, %.sroa.2.8.extract.trunc.i.i806.i
  %or.cond1617.i = select i1 %i.abh, i1 %.not.i.i807.i, i1 false
  br i1 %or.cond1617.i, label %.preheader.i809.i, label %Jsonc_ObjectLookup.exit821.thread.i

.preheader.i809.i:                                ; preds = %bb.ff
  %i.abi = getelementptr inbounds nuw [16 x i8], ptr %i.rj, i64 %.sroa.2.8.extract.shift.i.i805.i ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  %i.abk = load i32, ptr %i.abj, align 8, !tbaa !29 ; 2 uses
  %.not21.i810.i = icmp eq i32 %i.abk, 0
  br i1 %.not21.i810.i, label %Jsonc_ObjectLookup.exit821.thread.i, label %.lr.ph.i811.i

.lr.ph.i811.i:                                    ; preds = %.preheader.i809.i
  %i.abl = load ptr, ptr %i.abi, align 8, !tbaa !17
  %wide.trip.count.i812.i = zext i32 %i.abk to i64
  br label %bb.fg

bb.fg:                                            ; preds = %Jsonc_StringEqual.exit.thread.i816.i, %.lr.ph.i811.i
  %indvars.iv.i813.i = phi i64 [ 0, %.lr.ph.i811.i ], [ %indvars.iv.next.i817.i, %Jsonc_StringEqual.exit.thread.i816.i ] ; 2 uses
  %i.abm = getelementptr inbounds nuw [32 x i8], ptr %i.abl, i64 %indvars.iv.i813.i ; 4 uses
  %i.abn = load i64, ptr %i.abm, align 4          ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.abp = load i64, ptr %i.abo, align 4
  %i.abq = and i64 %i.abp, 4294967295
  %i.abr = icmp eq i64 %i.abq, 3
  %.sroa.2.0.extract.shift.i.i815.mask.i = and i64 %i.abn, -4294967296
  %i.abs = icmp eq i64 %.sroa.2.0.extract.shift.i.i815.mask.i, 25769803776
  %or.cond1050.i = select i1 %i.abr, i1 %i.abs, i1 false
  br i1 %or.cond1050.i, label %Jsonc_StringEqual.exit.i819.i, label %Jsonc_StringEqual.exit.thread.i816.i

Jsonc_StringEqual.exit.i819.i:                    ; preds = %bb.fg
  %i.abt = and i64 %i.abn, 4294967295
  %i.abu = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.abt
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 1
  %i.abw = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.abv, ptr noundef nonnull readonly dereferenceable(5) @.str.71, i64 noundef 4) #29
  %.not19.i820.i = icmp eq i32 %i.abw, 0
  br i1 %.not19.i820.i, label %bb.fh, label %Jsonc_StringEqual.exit.thread.i816.i

Jsonc_StringEqual.exit.thread.i816.i:             ; preds = %Jsonc_StringEqual.exit.i819.i, %bb.fg
  %indvars.iv.next.i817.i = add nuw nsw i64 %indvars.iv.i813.i, 1 ; 2 uses
  %exitcond.not.i818.i = icmp eq i64 %indvars.iv.next.i817.i, %wide.trip.count.i812.i
  br i1 %exitcond.not.i818.i, label %Jsonc_ObjectLookup.exit821.thread.i, label %bb.fg, !llvm.loop !96

bb.fh:                                            ; preds = %Jsonc_StringEqual.exit.i819.i
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  %i.aby = load i64, ptr %i.abx, align 4          ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abm, i64 24
  %i.aca = load i64, ptr %i.abz, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.acb = and i64 %i.aca, 4294967295
  %.not.i822.i = icmp eq i64 %i.acb, 2
  br i1 %.not.i822.i, label %bb.fi, label %Jsonc_ParseInt.exit825.thread.i

bb.fi:                                            ; preds = %bb.fh
  %.sroa.2.0.extract.shift.i824.i = lshr i64 %i.aby, 32 ; 3 uses
  %i.acc = add nuw nsw i64 %.sroa.2.0.extract.shift.i824.i, 1
  %i.acd = and i64 %i.acc, 4294967295
  %i.ace = tail call noalias ptr @malloc(i64 noundef %i.acd) #27 ; 4 uses
  %i.acf = and i64 %i.aby, 4294967295
  %i.acg = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.acf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ace, ptr align 1 %i.acg, i64 %.sroa.2.0.extract.shift.i824.i, i1 false)
  %i.ach = getelementptr inbounds nuw i8, ptr %i.ace, i64 %.sroa.2.0.extract.shift.i824.i
  store i8 0, ptr %i.ach, align 1, !tbaa !17
  %i.aci = call i64 @strtol(ptr noundef %i.ace, ptr noundef nonnull %i.a, i32 noundef 10) #25 ; 2 uses
  tail call void @free(ptr noundef %i.ace) #25
  %i.acj = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.ack = icmp eq ptr %i.acj, null
  br i1 %i.ack, label %Jsonc_ParseInt.exit825.thread.i, label %bb.fj

Jsonc_ParseInt.exit825.thread.i:                  ; preds = %bb.fi, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %Jsonc_ObjectLookup.exit821.thread.i

Jsonc_ObjectLookup.exit821.thread.i:              ; preds = %.preheader.i809.i, %bb.ff, %bb.fe, %Jsonc_StringEqual.exit.thread.i797.i, %Jsonc_StringEqual.exit.thread.i816.i, %Jsonc_ParseInt.exit825.thread.i
  %.val441.i = load i32, ptr %i.qg, align 4, !tbaa !66
  %i.acl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, i32 noundef %.val441.i) ; 0 uses
  br label %.thread950.i

bb.fj:                                            ; preds = %bb.fi
  %i.acm = trunc i64 %i.aci to i32                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.acn = icmp slt i32 %i.acm, 0
  br i1 %i.acn, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %.val440.i = load i32, ptr %i.cz, align 4, !tbaa !66
  %.not384.i = icmp sgt i32 %.val440.i, %i.acm
  br i1 %.not384.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %.val439.i = load i32, ptr %i.qg, align 4, !tbaa !66
  %i.aco = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %.val439.i, i32 noundef %i.acm) ; 0 uses
  br label %.thread950.i

bb.fm:                                            ; preds = %bb.fk
  %.val432.i = load ptr, ptr %i.rh, align 8, !tbaa !65
  %i.acp = and i64 %i.aci, 2147483647
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %.val432.i, i64 %i.acp
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !20 ; 2 uses
  %i.acs = icmp slt i32 %i.acr, 0
  br i1 %i.acs, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %.val438.i = load i32, ptr %i.qg, align 4, !tbaa !66
  %i.act = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, i32 noundef %.val438.i, i32 noundef %i.acm) ; 0 uses
  br label %.thread950.i

bb.fo:                                            ; preds = %bb.fm
  tail call fastcc void @Vec_IntPush(ptr noundef nonnull %i.qe, i32 noundef %i.acr)
  br label %Jsonc_StringEqual.exit783.thread.i

Jsonc_StringEqual.exit783.thread.i:               ; preds = %Jsonc_StringEqual.exit779.i, %Jsonc_StringEqual.exit779.tail.i, %bb.fo, %Jsonc_StringEqual.exit783.tail.i, %._crit_edge1174.i, %Jsonc_StringEqual.exit673.i, %bb.de, %Jsonc_ObjectLookup.exit669.i
  %indvars.iv.next1356.i = add nuw nsw i64 %indvars.iv1355.i, 1 ; 2 uses
  %i.acu = load i32, ptr %i.cv, align 8, !tbaa !29
  %i.acv = sext i32 %i.acu to i64
  %i.acw = icmp slt i64 %indvars.iv.next1356.i, %i.acv
  br i1 %i.acw, label %Jsonc_GetContainer.exit.i656.i, label %._crit_edge1177.i, !llvm.loop !109

._crit_edge1177.i:                                ; preds = %Jsonc_StringEqual.exit783.thread.i, %Vec_IntPush.exit650.i
  %.val437.i = load i32, ptr %i.qg, align 4, !tbaa !66 ; 2 uses
  %.not378.i = icmp eq i32 %.val437.i, %.0319.lcssa1493.i
  br i1 %.not378.i, label %.preheader1051.i, label %bb.fp

.preheader1051.i:                                 ; preds = %._crit_edge1177.i
  %i.acx = icmp sgt i32 %.0319.lcssa1493.i, 0
  br i1 %i.acx, label %.lr.ph1179.i, label %.critedge.i

.lr.ph1179.i:                                     ; preds = %.preheader1051.i
  %.val431.i = load ptr, ptr %i.ql, align 8, !tbaa !65
  %.promoted.i = load i32, ptr %i.pu, align 4, !tbaa !66
  %.promoted1181.i = load i32, ptr %i.ps, align 8, !tbaa !64
  %.promoted1184.i = load ptr, ptr %i.pz, align 8, !tbaa !65
  %i.acy = sext i32 %.promoted.i to i64
  %wide.trip.count1365.i = zext nneg i32 %.0319.lcssa1493.i to i64
  br label %bb.fq

bb.fp:                                            ; preds = %._crit_edge1177.i
  %i.acz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef %.0319.lcssa1493.i, i32 noundef %.val437.i) ; 0 uses
  br label %.thread950.i

bb.fq:                                            ; preds = %Vec_IntPush.exit833.i, %.lr.ph1179.i
  %indvars.iv1360.i = phi i64 [ 0, %.lr.ph1179.i ], [ %indvars.iv.next1361.i, %Vec_IntPush.exit833.i ] ; 2 uses
  %indvars.iv1358.i = phi i64 [ %i.acy, %.lr.ph1179.i ], [ %indvars.iv.next1359.i, %Vec_IntPush.exit833.i ] ; 6 uses
  %storemerge10181185.i = phi ptr [ %.promoted1184.i, %.lr.ph1179.i ], [ %storemerge10181186.i, %Vec_IntPush.exit833.i ] ; 6 uses
  %spec.select.sink.i8301183.i = phi i32 [ %.promoted1181.i, %.lr.ph1179.i ], [ %spec.select.sink.i8301182.i, %Vec_IntPush.exit833.i ] ; 4 uses
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %.val431.i, i64 %indvars.iv1360.i
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !20
  %i.adc = trunc nsw i64 %indvars.iv1358.i to i32
  %i.add = icmp eq i32 %spec.select.sink.i8301183.i, %i.adc
  br i1 %i.add, label %bb.fr, label %Vec_IntPush.exit833.i

bb.fr:                                            ; preds = %bb.fq
  %i.ade = icmp slt i64 %indvars.iv1358.i, 16
  br i1 %i.ade, label %bb.fs, label %bb.fv

bb.fs:                                            ; preds = %bb.fr
  %.not9.i.i831.i = icmp eq ptr %storemerge10181185.i, null
  br i1 %.not9.i.i831.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.adf = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge10181185.i, i64 noundef 64) #26
  br label %Vec_IntPush.exit833.i

bb.fu:                                            ; preds = %bb.fs
  %i.adg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntPush.exit833.i

bb.fv:                                            ; preds = %bb.fr
  %i.adh = icmp samesign ult i64 %indvars.iv1358.i, 1073741823
  %i.adi = shl nsw i32 %spec.select.sink.i8301183.i, 1
  %spec.select.i826.i = select i1 %i.adh, i32 %i.adi, i32 2147483647 ; 4 uses
  %i.adj = sext i32 %spec.select.i826.i to i64
  %.not.i9.i827.i = icmp samesign ult i64 %indvars.iv1358.i, %i.adj
  br i1 %.not.i9.i827.i, label %bb.fw, label %Vec_IntPush.exit833.i

bb.fw:                                            ; preds = %bb.fv
  %.not9.i10.i828.i = icmp eq ptr %storemerge10181185.i, null
  %i.adk = zext nneg i32 %spec.select.i826.i to i64
  %i.adl = shl nuw nsw i64 %i.adk, 2              ; 2 uses
  br i1 %.not9.i10.i828.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.adm = tail call ptr @realloc(ptr noundef nonnull %storemerge10181185.i, i64 noundef %i.adl) #26
  br label %Vec_IntPush.exit833.i

bb.fy:                                            ; preds = %bb.fw
  %i.adn = tail call noalias ptr @malloc(i64 noundef %i.adl) #27
  br label %Vec_IntPush.exit833.i

Vec_IntPush.exit833.i:                            ; preds = %bb.fy, %bb.fx, %bb.fv, %bb.fu, %bb.ft, %bb.fq
  %storemerge10181186.i = phi ptr [ %storemerge10181185.i, %bb.fq ], [ %storemerge10181185.i, %bb.fv ], [ %i.adg, %bb.fu ], [ %i.adf, %bb.ft ], [ %i.adm, %bb.fx ], [ %i.adn, %bb.fy ] ; 3 uses
  %spec.select.sink.i8301182.i = phi i32 [ %spec.select.sink.i8301183.i, %bb.fq ], [ %spec.select.sink.i8301183.i, %bb.fv ], [ 16, %bb.fu ], [ 16, %bb.ft ], [ %spec.select.i826.i, %bb.fx ], [ %spec.select.i826.i, %bb.fy ] ; 2 uses
  %indvars.iv.next1359.i = add nsw i64 %indvars.iv1358.i, 1 ; 2 uses
  %i.ado = getelementptr inbounds [4 x i8], ptr %storemerge10181186.i, i64 %indvars.iv1358.i
  store i32 %i.adb, ptr %i.ado, align 4, !tbaa !20
  %indvars.iv.next1361.i = add nuw nsw i64 %indvars.iv1360.i, 1 ; 2 uses
  %exitcond1366.not.i = icmp eq i64 %indvars.iv.next1361.i, %wide.trip.count1365.i
  br i1 %exitcond1366.not.i, label %..critedge_crit_edge.i, label %bb.fq, !llvm.loop !110

..critedge_crit_edge.i:                           ; preds = %Vec_IntPush.exit833.i
  %i.adp = trunc nsw i64 %indvars.iv.next1359.i to i32
  store i32 %i.adp, ptr %i.pu, align 4, !tbaa !66
  store i32 %spec.select.sink.i8301182.i, ptr %i.ps, align 8
  store ptr %storemerge10181186.i, ptr %i.pz, align 8
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %.preheader1051.i
  tail call fastcc void @Jsonc_AppendPortNames(ptr noundef %i.qa, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.ed)
  tail call fastcc void @Jsonc_AppendPortNames(ptr noundef %i.qa, ptr noundef nonnull %i.ek, ptr noundef nonnull %i.er)
  %.val445.i = load i32, ptr %i.qb, align 4, !tbaa !103 ; 3 uses
  %i.adq = sub i32 0, %.val445.i
  %i.adr = and i32 %i.adq, 3                      ; 2 uses
  %.not1257.i = icmp eq i32 %i.adr, 0
  %.val446.pre.i = load ptr, ptr %i.qd, align 8, !tbaa !106 ; 2 uses
  br i1 %.not1257.i, label %bb.gi, label %.lr.ph1188.i

.lr.ph1188.i:                                     ; preds = %.critedge.i
  %.promoted1192.i = load i32, ptr %i.qa, align 8, !tbaa !105
  %i.ads = sext i32 %.val445.i to i64
  br label %bb.fz

bb.fz:                                            ; preds = %Vec_StrPush.exit.i, %.lr.ph1188.i
  %indvars.iv1367.i = phi i64 [ %i.ads, %.lr.ph1188.i ], [ %indvars.iv.next1368.i, %Vec_StrPush.exit.i ] ; 6 uses
  %storemerge10171196.i = phi ptr [ %.val446.pre.i, %.lr.ph1188.i ], [ %storemerge10171197.i, %Vec_StrPush.exit.i ] ; 6 uses
  %spec.select.sink.i8371194.i = phi i32 [ %.promoted1192.i, %.lr.ph1188.i ], [ %spec.select.sink.i8371193.i, %Vec_StrPush.exit.i ] ; 4 uses
  %.43331187.i = phi i32 [ 0, %.lr.ph1188.i ], [ %i.aef, %Vec_StrPush.exit.i ]
  %i.adt = trunc nsw i64 %indvars.iv1367.i to i32
  %i.adu = icmp eq i32 %spec.select.sink.i8371194.i, %i.adt
  br i1 %i.adu, label %bb.ga, label %Vec_StrPush.exit.i

bb.ga:                                            ; preds = %bb.fz
  %i.adv = icmp slt i64 %indvars.iv1367.i, 16
  br i1 %i.adv, label %bb.gb, label %bb.ge

bb.gb:                                            ; preds = %bb.ga
  %.not9.i.i838.i = icmp eq ptr %storemerge10171196.i, null
  br i1 %.not9.i.i838.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.adw = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %storemerge10171196.i, i64 noundef 16) #26
  br label %Vec_StrPush.exit.i

bb.gd:                                            ; preds = %bb.gb
  %i.adx = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27
  br label %Vec_StrPush.exit.i

bb.ge:                                            ; preds = %bb.ga
  %i.ady = icmp samesign ult i64 %indvars.iv1367.i, 1073741823
  %i.adz = shl nsw i32 %spec.select.sink.i8371194.i, 1
  %spec.select.i834.i = select i1 %i.ady, i32 %i.adz, i32 2147483647 ; 4 uses
  %i.aea = sext i32 %spec.select.i834.i to i64
  %.not.i9.i835.i = icmp samesign ult i64 %indvars.iv1367.i, %i.aea
  br i1 %.not.i9.i835.i, label %bb.gf, label %Vec_StrPush.exit.i

bb.gf:                                            ; preds = %bb.ge
  %.not9.i10.i836.i = icmp eq ptr %storemerge10171196.i, null
  %i.aeb = zext nneg i32 %spec.select.i834.i to i64 ; 2 uses
  br i1 %.not9.i10.i836.i, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.aec = tail call ptr @realloc(ptr noundef nonnull %storemerge10171196.i, i64 noundef %i.aeb) #26
  br label %Vec_StrPush.exit.i

bb.gh:                                            ; preds = %bb.gf
  %i.aed = tail call noalias ptr @malloc(i64 noundef %i.aeb) #27
  br label %Vec_StrPush.exit.i

Vec_StrPush.exit.i:                               ; preds = %bb.gh, %bb.gg, %bb.ge, %bb.gd, %bb.gc, %bb.fz
  %storemerge10171197.i = phi ptr [ %storemerge10171196.i, %bb.fz ], [ %storemerge10171196.i, %bb.ge ], [ %i.adx, %bb.gd ], [ %i.adw, %bb.gc ], [ %i.aec, %bb.gg ], [ %i.aed, %bb.gh ] ; 4 uses
  %spec.select.sink.i8371193.i = phi i32 [ %spec.select.sink.i8371194.i, %bb.fz ], [ %spec.select.sink.i8371194.i, %bb.ge ], [ 16, %bb.gd ], [ 16, %bb.gc ], [ %spec.select.i834.i, %bb.gg ], [ %spec.select.i834.i, %bb.gh ] ; 2 uses
  %indvars.iv.next1368.i = add nsw i64 %indvars.iv1367.i, 1 ; 2 uses
  %i.aee = getelementptr inbounds i8, ptr %storemerge10171197.i, i64 %indvars.iv1367.i
  store i8 0, ptr %i.aee, align 1, !tbaa !17
  %i.aef = add nuw nsw i32 %.43331187.i, 1        ; 2 uses
  %exitcond1370.not.i = icmp eq i32 %i.aef, %i.adr
  br i1 %exitcond1370.not.i, label %._crit_edge1189.i, label %bb.fz, !llvm.loop !111

._crit_edge1189.i:                                ; preds = %Vec_StrPush.exit.i
  %i.aeg = trunc nsw i64 %indvars.iv.next1368.i to i32 ; 2 uses
  store i32 %i.aeg, ptr %i.qb, align 4, !tbaa !103
  store i32 %spec.select.sink.i8371193.i, ptr %i.qa, align 8
  store ptr %storemerge10171197.i, ptr %i.qd, align 8
  br label %bb.gi

bb.gi:                                            ; preds = %._crit_edge1189.i, %.critedge.i
  %.val446.i = phi ptr [ %storemerge10171197.i, %._crit_edge1189.i ], [ %.val446.pre.i, %.critedge.i ]
  %.val444.i = phi i32 [ %i.aeg, %._crit_edge1189.i ], [ %.val445.i, %.critedge.i ] ; 2 uses
  %i.aeh = icmp sgt i32 %.val444.i, 3
  br i1 %i.aeh, label %.lr.ph1200.i, label %.loopexit.i

.lr.ph1200.i:                                     ; preds = %bb.gi
  %i.aei = lshr i32 %.val444.i, 2
  %.promoted1201.i = load i32, ptr %i.pu, align 4, !tbaa !66
  %.promoted1203.i = load i32, ptr %i.ps, align 8, !tbaa !64
  %.promoted1206.i = load ptr, ptr %i.pz, align 8, !tbaa !65
  %i.aej = sext i32 %.promoted1201.i to i64
  %wide.trip.count1378.i = zext nneg i32 %i.aei to i64
  br label %bb.gj

bb.gj:                                            ; preds = %Vec_IntPush.exit846.i, %.lr.ph1200.i
  %indvars.iv1373.i = phi i64 [ 0, %.lr.ph1200.i ], [ %indvars.iv.next1374.i, %Vec_IntPush.exit846.i ] ; 2 uses
  %indvars.iv1371.i = phi i64 [ %i.aej, %.lr.ph1200.i ], [ %indvars.iv.next1372.i, %Vec_IntPush.exit846.i ] ; 6 uses
  %storemerge1207.i = phi ptr [ %.promoted1206.i, %.lr.ph1200.i ], [ %storemerge1208.i, %Vec_IntPush.exit846.i ] ; 6 uses
  %spec.select.sink.i8431205.i = phi i32 [ %.promoted1203.i, %.lr.ph1200.i ], [ %spec.select.sink.i8431204.i, %Vec_IntPush.exit846.i ] ; 4 uses
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %.val446.i, i64 %indvars.iv1373.i
  %i.ael = load i32, ptr %i.aek, align 4, !tbaa !20
  %i.aem = trunc nsw i64 %indvars.iv1371.i to i32
  %i.aen = icmp eq i32 %spec.select.sink.i8431205.i, %i.aem
  br i1 %i.aen, label %bb.gk, label %Vec_IntPush.exit846.i

bb.gk:                                            ; preds = %bb.gj
  %i.aeo = icmp slt i64 %indvars.iv1371.i, 16
  br i1 %i.aeo, label %bb.gl, label %bb.go

bb.gl:                                            ; preds = %bb.gk
  %.not9.i.i844.i = icmp eq ptr %storemerge1207.i, null
  br i1 %.not9.i.i844.i, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.aep = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge1207.i, i64 noundef 64) #26
  br label %Vec_IntPush.exit846.i

bb.gn:                                            ; preds = %bb.gl
  %i.aeq = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntPush.exit846.i

bb.go:                                            ; preds = %bb.gk
  %i.aer = icmp samesign ult i64 %indvars.iv1371.i, 1073741823
  %i.aes = shl nsw i32 %spec.select.sink.i8431205.i, 1
  %spec.select.i839.i = select i1 %i.aer, i32 %i.aes, i32 2147483647 ; 4 uses
  %i.aet = sext i32 %spec.select.i839.i to i64
  %.not.i9.i840.i = icmp samesign ult i64 %indvars.iv1371.i, %i.aet
  br i1 %.not.i9.i840.i, label %bb.gp, label %Vec_IntPush.exit846.i

bb.gp:                                            ; preds = %bb.go
  %.not9.i10.i841.i = icmp eq ptr %storemerge1207.i, null
  %i.aeu = zext nneg i32 %spec.select.i839.i to i64
  %i.aev = shl nuw nsw i64 %i.aeu, 2              ; 2 uses
  br i1 %.not9.i10.i841.i, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.aew = tail call ptr @realloc(ptr noundef nonnull %storemerge1207.i, i64 noundef %i.aev) #26
  br label %Vec_IntPush.exit846.i

bb.gr:                                            ; preds = %bb.gp
  %i.aex = tail call noalias ptr @malloc(i64 noundef %i.aev) #27
  br label %Vec_IntPush.exit846.i

Vec_IntPush.exit846.i:                            ; preds = %bb.gr, %bb.gq, %bb.go, %bb.gn, %bb.gm, %bb.gj
  %storemerge1208.i = phi ptr [ %storemerge1207.i, %bb.gj ], [ %storemerge1207.i, %bb.go ], [ %i.aeq, %bb.gn ], [ %i.aep, %bb.gm ], [ %i.aew, %bb.gq ], [ %i.aex, %bb.gr ] ; 3 uses
  %spec.select.sink.i8431204.i = phi i32 [ %spec.select.sink.i8431205.i, %bb.gj ], [ %spec.select.sink.i8431205.i, %bb.go ], [ 16, %bb.gn ], [ 16, %bb.gm ], [ %spec.select.i839.i, %bb.gq ], [ %spec.select.i839.i, %bb.gr ] ; 2 uses
  %indvars.iv.next1372.i = add nsw i64 %indvars.iv1371.i, 1 ; 2 uses
  %i.aey = getelementptr inbounds [4 x i8], ptr %storemerge1208.i, i64 %indvars.iv1371.i
  store i32 %i.ael, ptr %i.aey, align 4, !tbaa !20
  %indvars.iv.next1374.i = add nuw nsw i64 %indvars.iv1373.i, 1 ; 2 uses
  %exitcond1379.not.i = icmp eq i64 %indvars.iv.next1374.i, %wide.trip.count1378.i
  br i1 %exitcond1379.not.i, label %..loopexit_crit_edge.i, label %bb.gj, !llvm.loop !112

.thread950.i:                                     ; preds = %bb.fp, %bb.fn, %bb.fl, %Jsonc_ObjectLookup.exit821.thread.i, %bb.fc, %bb.ey, %bb.et, %bb.em, %bb.eg, %bb.ed, %bb.dy, %Jsonc_StringDup.exit723.thread.i, %Jsonc_ObjectLookup.exit711.thread.i, %bb.cu, %Jsonc_StringDup.exit610.thread.i, %Jsonc_StringDup.exit571.thread.i, %bb.aw, %Jsonc_ObjectLookup.exit554.thread.i
  %.0914.ph.i = phi ptr [ null, %bb.cu ], [ %i.qe, %bb.fc ], [ %i.qe, %bb.fp ], [ null, %Jsonc_ObjectLookup.exit554.thread.i ], [ null, %Jsonc_StringDup.exit571.thread.i ], [ null, %bb.aw ], [ null, %Jsonc_StringDup.exit610.thread.i ], [ %i.qe, %Jsonc_ObjectLookup.exit711.thread.i ], [ %i.qe, %Jsonc_StringDup.exit723.thread.i ], [ %i.qe, %bb.dy ], [ %i.qe, %bb.ed ], [ %i.qe, %bb.eg ], [ %i.qe, %bb.em ], [ %i.qe, %bb.et ], [ %i.qe, %bb.ey ], [ %i.qe, %bb.fn ], [ %i.qe, %bb.fl ], [ %i.qe, %Jsonc_ObjectLookup.exit821.thread.i ] ; 2 uses
  %.0336.ph.i = phi ptr [ null, %bb.cu ], [ %i.ps, %bb.fc ], [ %i.ps, %bb.fp ], [ null, %Jsonc_ObjectLookup.exit554.thread.i ], [ null, %Jsonc_StringDup.exit571.thread.i ], [ null, %bb.aw ], [ null, %Jsonc_StringDup.exit610.thread.i ], [ %i.ps, %Jsonc_ObjectLookup.exit711.thread.i ], [ %i.ps, %Jsonc_StringDup.exit723.thread.i ], [ %i.ps, %bb.dy ], [ %i.ps, %bb.ed ], [ %i.ps, %bb.eg ], [ %i.ps, %bb.em ], [ %i.ps, %bb.et ], [ %i.ps, %bb.ey ], [ %i.ps, %bb.fn ], [ %i.ps, %bb.fl ], [ %i.ps, %Jsonc_ObjectLookup.exit821.thread.i ] ; 2 uses
  %.0335.ph.i = phi ptr [ null, %bb.cu ], [ %i.qa, %bb.fc ], [ %i.qa, %bb.fp ], [ null, %Jsonc_ObjectLookup.exit554.thread.i ], [ null, %Jsonc_StringDup.exit571.thread.i ], [ null, %bb.aw ], [ null, %Jsonc_StringDup.exit610.thread.i ], [ %i.qa, %Jsonc_ObjectLookup.exit711.thread.i ], [ %i.qa, %Jsonc_StringDup.exit723.thread.i ], [ %i.qa, %bb.dy ], [ %i.qa, %bb.ed ], [ %i.qa, %bb.eg ], [ %i.qa, %bb.em ], [ %i.qa, %bb.et ], [ %i.qa, %bb.ey ], [ %i.qa, %bb.fn ], [ %i.qa, %bb.fl ], [ %i.qa, %Jsonc_ObjectLookup.exit821.thread.i ] ; 2 uses
  %.not412.i = icmp eq ptr %.0119473, null
  br i1 %.not412.i, label %.loopexit.i, label %bb.gs

bb.gs:                                            ; preds = %.thread950.i
  tail call void @free(ptr noundef nonnull %.0119473) #25
  br label %.loopexit.i

..loopexit_crit_edge.i:                           ; preds = %Vec_IntPush.exit846.i
  %i.aez = trunc nsw i64 %indvars.iv.next1372.i to i32
  store i32 %i.aez, ptr %i.pu, align 4, !tbaa !66
  store i32 %spec.select.sink.i8431204.i, ptr %i.ps, align 8
  store ptr %storemerge1208.i, ptr %i.pz, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %..loopexit_crit_edge.i, %bb.gs, %.thread950.i, %bb.gi
  %.1120 = phi ptr [ null, %.thread950.i ], [ null, %bb.gs ], [ %.0119473, %..loopexit_crit_edge.i ], [ %.0119473, %bb.gi ] ; 2 uses
  %i.afa = phi i1 [ false, %.thread950.i ], [ false, %bb.gs ], [ true, %..loopexit_crit_edge.i ], [ true, %bb.gi ]
  %i.afb = phi i1 [ true, %.thread950.i ], [ true, %bb.gs ], [ false, %..loopexit_crit_edge.i ], [ false, %bb.gi ]
  %.03351012.i = phi ptr [ %.0335.ph.i, %.thread950.i ], [ %.0335.ph.i, %bb.gs ], [ %i.qa, %..loopexit_crit_edge.i ], [ %i.qa, %bb.gi ] ; 3 uses
  %.03361010.i = phi ptr [ %.0336.ph.i, %.thread950.i ], [ %.0336.ph.i, %bb.gs ], [ %i.ps, %..loopexit_crit_edge.i ], [ %i.ps, %bb.gi ] ; 4 uses
  %.09141008.i = phi ptr [ %.0914.ph.i, %.thread950.i ], [ %.0914.ph.i, %bb.gs ], [ %i.qe, %..loopexit_crit_edge.i ], [ %i.qe, %bb.gi ] ; 3 uses
  %i.afc = icmp eq ptr %.09141008.i, null
  br i1 %i.afc, label %Vec_IntFreeP.exit.i, label %bb.gt

bb.gt:                                            ; preds = %.loopexit.i
  %i.afd = getelementptr inbounds nuw i8, ptr %.09141008.i, i64 8
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !65 ; 2 uses
  %.not.i847.i = icmp eq ptr %i.afe, null
  br i1 %.not.i847.i, label %bb.gu, label %.thread.i848.i

.thread.i848.i:                                   ; preds = %bb.gt
  tail call void @free(ptr noundef nonnull %i.afe) #25
  br label %bb.gu

bb.gu:                                            ; preds = %.thread.i848.i, %bb.gt
  tail call void @free(ptr noundef nonnull %.09141008.i) #25
  br label %Vec_IntFreeP.exit.i

Vec_IntFreeP.exit.i:                              ; preds = %bb.gu, %.loopexit.i
  %i.aff = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !65 ; 2 uses
  %.not.i849.i = icmp eq ptr %i.afg, null
  br i1 %.not.i849.i, label %bb.gv, label %.thread.i850.i

.thread.i850.i:                                   ; preds = %Vec_IntFreeP.exit.i
  tail call void @free(ptr noundef nonnull %i.afg) #25
  br label %bb.gv

bb.gv:                                            ; preds = %.thread.i850.i, %Vec_IntFreeP.exit.i
  tail call void @free(ptr noundef nonnull %i.cx) #25
  %i.afh = load ptr, ptr %i.do, align 8, !tbaa !65 ; 2 uses
  %.not.i852.i = icmp eq ptr %i.afh, null
  br i1 %.not.i852.i, label %bb.gw, label %.thread.i853.i

.thread.i853.i:                                   ; preds = %bb.gv
  tail call void @free(ptr noundef nonnull %i.afh) #25
  br label %bb.gw

bb.gw:                                            ; preds = %.thread.i853.i, %bb.gv
  tail call void @free(ptr noundef nonnull %i.di) #25
  %i.afi = load ptr, ptr %i.dv, align 8, !tbaa !65 ; 2 uses
  %.not.i855.i = icmp eq ptr %i.afi, null
  br i1 %.not.i855.i, label %bb.gx, label %.thread.i856.i

.thread.i856.i:                                   ; preds = %bb.gw
  tail call void @free(ptr noundef nonnull %i.afi) #25
  br label %bb.gx

bb.gx:                                            ; preds = %.thread.i856.i, %bb.gw
  tail call void @free(ptr noundef nonnull %i.dp) #25
  %i.afj = load ptr, ptr %i.ej, align 8, !tbaa !65 ; 2 uses
  %.not.i858.i = icmp eq ptr %i.afj, null
  br i1 %.not.i858.i, label %bb.gy, label %.thread.i859.i

.thread.i859.i:                                   ; preds = %bb.gx
  tail call void @free(ptr noundef nonnull %i.afj) #25
  br label %bb.gy

bb.gy:                                            ; preds = %.thread.i859.i, %bb.gx
  tail call void @free(ptr noundef nonnull %i.ed) #25
  %i.afk = load ptr, ptr %i.ex, align 8, !tbaa !65 ; 2 uses
  %.not.i861.i = icmp eq ptr %i.afk, null
  br i1 %.not.i861.i, label %Vec_IntFreeP.exit863.i, label %.thread.i862.i

.thread.i862.i:                                   ; preds = %bb.gy
  tail call void @free(ptr noundef nonnull %i.afk) #25
  br label %Vec_IntFreeP.exit863.i

Vec_IntFreeP.exit863.i:                           ; preds = %.thread.i862.i, %bb.gy
  tail call void @free(ptr noundef nonnull %i.er) #25
  %.not413.i = icmp eq ptr %.03351012.i, null
  br i1 %.not413.i, label %bb.hb, label %bb.gz

bb.gz:                                            ; preds = %Vec_IntFreeP.exit863.i
  %i.afl = getelementptr inbounds nuw i8, ptr %.03351012.i, i64 8
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !106 ; 2 uses
  %.not.i864.i = icmp eq ptr %i.afm, null
  br i1 %.not.i864.i, label %Vec_StrFree.exit.i, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  tail call void @free(ptr noundef nonnull %i.afm) #25
  br label %Vec_StrFree.exit.i

Vec_StrFree.exit.i:                               ; preds = %bb.ha, %bb.gz
  tail call void @free(ptr noundef nonnull %.03351012.i) #25
  br label %bb.hb

bb.hb:                                            ; preds = %Vec_StrFree.exit.i, %Vec_IntFreeP.exit863.i
  br i1 %i.afa, label %bb.he, label %.preheader.i87

.preheader.i87:                                   ; preds = %bb.hb
  %.val4251209.i = load i32, ptr %i.ez, align 4, !tbaa !61 ; 2 uses
  %i.afn = icmp sgt i32 %.val4251209.i, 0
  br i1 %i.afn, label %.lr.ph1211.preheader.i, label %.critedge9.i

.lr.ph1211.preheader.i:                           ; preds = %.preheader.i87
  %.val428.pre.i = load ptr, ptr %i.fe, align 8, !tbaa !68
  %i.afo = zext nneg i32 %.val4251209.i to i64
  br label %.lr.ph1211.i

.lr.ph1211.i:                                     ; preds = %bb.hd, %.lr.ph1211.preheader.i
  %indvars.iv1380.i = phi i64 [ 0, %.lr.ph1211.preheader.i ], [ %indvars.iv.next1381.i, %bb.hd ] ; 2 uses
  %i.afp = getelementptr inbounds nuw [8 x i8], ptr %.val428.pre.i, i64 %indvars.iv1380.i
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !69 ; 2 uses
  %.not415.i = icmp eq ptr %i.afq, null
  br i1 %.not415.i, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %.lr.ph1211.i
  tail call void @free(ptr noundef nonnull %i.afq) #25
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %.lr.ph1211.i
  %indvars.iv.next1381.i = add nuw nsw i64 %indvars.iv1380.i, 1 ; 2 uses
  %exitcond362.not = icmp eq i64 %indvars.iv.next1381.i, %i.afo
  br i1 %exitcond362.not, label %.critedge9.i, label %.lr.ph1211.i, !llvm.loop !113

.critedge9.i:                                     ; preds = %bb.hd, %.preheader.i87
  tail call fastcc void @Vec_PtrFree(ptr noundef nonnull %i.ey)
  br label %bb.he

bb.he:                                            ; preds = %bb.hb, %.critedge9.i
  %.0122 = phi ptr [ null, %.critedge9.i ], [ %i.ey, %bb.hb ] ; 2 uses
  %.val424.i = load i32, ptr %i.dx, align 4, !tbaa !61 ; 2 uses
  %i.afr = icmp sgt i32 %.val424.i, 0
  %.pre1407.i = load ptr, ptr %i.ec, align 8, !tbaa !68 ; 3 uses
  br i1 %i.afr, label %.lr.ph1214.i, label %.critedge11.i

.lr.ph1214.i:                                     ; preds = %bb.he
  %wide.trip.count1386.i = zext nneg i32 %.val424.i to i64
  br label %bb.hf

bb.hf:                                            ; preds = %bb.hh, %.lr.ph1214.i
  %indvars.iv1383.i = phi i64 [ 0, %.lr.ph1214.i ], [ %indvars.iv.next1384.i, %bb.hh ] ; 2 uses
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %.pre1407.i, i64 %indvars.iv1383.i
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !69 ; 2 uses
  %.not419.i = icmp eq ptr %i.aft, null
  br i1 %.not419.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  tail call void @free(ptr noundef nonnull %i.aft) #25
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %indvars.iv.next1384.i = add nuw nsw i64 %indvars.iv1383.i, 1 ; 2 uses
  %exitcond1387.not.i = icmp eq i64 %indvars.iv.next1384.i, %wide.trip.count1386.i
  br i1 %exitcond1387.not.i, label %.critedge11.thread.i, label %bb.hf, !llvm.loop !114

end_hunk_0
