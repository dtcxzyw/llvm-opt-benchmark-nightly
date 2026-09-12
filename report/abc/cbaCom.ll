Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaCom?download=true
inline.NumInlined: 318
inline.NumDeleted: 112
begin_hunk_0_@Cba_CommandRead:bb.a
  %i.afm = getelementptr i8, ptr %i.cb, i64 256
  %.val23.i108.i.i = load ptr, ptr %i.afm, align 8, !tbaa !36
  %i.afn = getelementptr i8, ptr %i.cb, i64 288
  %i.afo = getelementptr i8, ptr %i.di, i64 288
  br label %bb.jt

bb.jt:                                            ; preds = %bb.jx, %.lr.ph.i107.i.i
  %.val1928.i109.i.i = phi i32 [ %.val1925.i106.i.i, %.lr.ph.i107.i.i ], [ %.val19.i112.i.i, %bb.jx ] ; 3 uses
  %indvars.iv.i110.i.i = phi i64 [ 0, %.lr.ph.i107.i.i ], [ %indvars.iv.next.i113.i.i, %bb.jx ] ; 4 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %.val23.i108.i.i, i64 %indvars.iv.i110.i.i
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !9 ; 3 uses
  %i.afr = icmp sgt i32 %i.afq, 0
  %i.afs = icmp slt i32 %i.afq, %.val37.i.i
  %or.cond.i111.i.i = and i1 %i.afr, %i.afs
  br i1 %or.cond.i111.i.i, label %bb.ju, label %bb.jx

bb.ju:                                            ; preds = %bb.jt
  %.val.i114.i.i = load i32, ptr %i.aew, align 4, !tbaa !35
  %i.aft = sext i32 %.val.i114.i.i to i64
  %i.afu = icmp slt i64 %indvars.iv.i110.i.i, %i.aft
  br i1 %i.afu, label %bb.jv, label %bb.jx

bb.jv:                                            ; preds = %bb.ju
  %.val22.i115.i.i = load ptr, ptr %i.afn, align 8, !tbaa !36
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %.val22.i115.i.i, i64 %indvars.iv.i110.i.i
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !9 ; 2 uses
  %.not.i116.i.i = icmp eq i32 %i.afw, 0
  br i1 %.not.i116.i.i, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %.val24.i117.i.i = load ptr, ptr %i.afo, align 8, !tbaa !36
  %i.afx = zext nneg i32 %i.afq to i64
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %.val24.i117.i.i, i64 %i.afx
  store i32 %i.afw, ptr %i.afy, align 4, !tbaa !9
  %.val19.pre.i118.i.i = load i32, ptr %i.np, align 4, !tbaa !35
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv, %bb.ju, %bb.jt
  %.val19.i112.i.i = phi i32 [ %.val1928.i109.i.i, %bb.jt ], [ %.val1928.i109.i.i, %bb.ju ], [ %.val1928.i109.i.i, %bb.jv ], [ %.val19.pre.i118.i.i, %bb.jw ] ; 2 uses
  %indvars.iv.next.i113.i.i = add nuw nsw i64 %indvars.iv.i110.i.i, 1 ; 2 uses
  %i.afz = sext i32 %.val19.i112.i.i to i64
  %i.aga = icmp slt i64 %indvars.iv.next.i113.i.i, %i.afz
  br i1 %i.aga, label %bb.jt, label %Vec_IntRemapArray.exit122.i.i, !llvm.loop !73

Vec_IntRemapArray.exit122.i.i:                    ; preds = %bb.jx, %Vec_IntFill.exit.i105.i.i, %Vec_IntRemapArray.exit101.i.i
  %i.agb = getelementptr inbounds nuw i8, ptr %i.di, i64 232 ; 2 uses
  %i.agc = getelementptr i8, ptr %i.cb, i64 236   ; 2 uses
  %.val7.i.i.i = load i32, ptr %i.agc, align 4, !tbaa !35
  %i.agd = icmp sgt i32 %.val7.i.i.i, 0
  br i1 %i.agd, label %.lr.ph.i123.i.i, label %Vec_IntAppend.exit.i.i

.lr.ph.i123.i.i:                                  ; preds = %Vec_IntRemapArray.exit122.i.i
  %i.age = getelementptr i8, ptr %i.cb, i64 240
  %i.agf = getelementptr inbounds nuw i8, ptr %i.di, i64 236 ; 3 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.di, i64 240 ; 4 uses
  br label %bb.jy

bb.jy:                                            ; preds = %Vec_IntPush.exit.i.i.i, %.lr.ph.i123.i.i
  %indvars.iv.i124.i.i = phi i64 [ 0, %.lr.ph.i123.i.i ], [ %indvars.iv.next.i125.i.i, %Vec_IntPush.exit.i.i.i ] ; 2 uses
  %.val6.i.i.i = load ptr, ptr %i.age, align 8, !tbaa !36
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i.i, i64 %indvars.iv.i124.i.i
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !9
  %i.agj = load i32, ptr %i.agf, align 4, !tbaa !35 ; 7 uses
  %i.agk = load i32, ptr %i.agb, align 8, !tbaa !44
  %i.agl = icmp eq i32 %i.agj, %i.agk
  br i1 %i.agl, label %bb.jz, label %.Vec_IntPush.exit_crit_edge.i.i.i

.Vec_IntPush.exit_crit_edge.i.i.i:                ; preds = %bb.jy
  %.pre.i.i34.i = load ptr, ptr %i.agg, align 8, !tbaa !36
  br label %Vec_IntPush.exit.i.i.i

bb.jz:                                            ; preds = %bb.jy
  %i.agm = icmp slt i32 %i.agj, 16
  br i1 %i.agm, label %bb.ka, label %bb.kd

bb.ka:                                            ; preds = %bb.jz
  %i.agn = load ptr, ptr %i.agg, align 8, !tbaa !36 ; 2 uses
  %.not9.i.i.i127.i.i = icmp eq ptr %i.agn, null
  br i1 %.not9.i.i.i127.i.i, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.ago = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.agn, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i.i.i

bb.kc:                                            ; preds = %bb.ka
  %i.agp = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i.i.i.i

bb.kd:                                            ; preds = %bb.jz
  %i.agq = icmp samesign ult i32 %i.agj, 1073741823
  %i.agr = shl nuw nsw i32 %i.agj, 1
  %spec.select.i.i.i.i = select i1 %i.agq, i32 %i.agr, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i.i = icmp samesign ult i32 %i.agj, %spec.select.i.i.i.i
  %.pre10.i.i.i = load ptr, ptr %i.agg, align 8, !tbaa !36 ; 3 uses
  br i1 %.not.i9.i.i.i.i, label %bb.ke, label %Vec_IntPush.exit.i.i.i

bb.ke:                                            ; preds = %bb.kd
  %.not9.i10.i.i.i.i = icmp eq ptr %.pre10.i.i.i, null
  %i.ags = zext nneg i32 %spec.select.i.i.i.i to i64
  %i.agt = shl nuw nsw i64 %i.ags, 2              ; 2 uses
  br i1 %.not9.i10.i.i.i.i, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.agu = call ptr @realloc(ptr noundef nonnull %.pre10.i.i.i, i64 noundef %i.agt) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i.i.i

bb.kg:                                            ; preds = %bb.ke
  %i.agv = call noalias ptr @malloc(i64 noundef %i.agt) #22
  br label %Vec_IntGrow.exit11.sink.split.i.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i.i:            ; preds = %bb.kg, %bb.kf, %bb.kc, %bb.kb
  %i.agw = phi ptr [ %i.agp, %bb.kc ], [ %i.ago, %bb.kb ], [ %i.agu, %bb.kf ], [ %i.agv, %bb.kg ] ; 2 uses
  %spec.select.sink.i.i.i.i = phi i32 [ 16, %bb.kc ], [ 16, %bb.kb ], [ %spec.select.i.i.i.i, %bb.kf ], [ %spec.select.i.i.i.i, %bb.kg ]
  store ptr %i.agw, ptr %i.agg, align 8, !tbaa !36
  store i32 %spec.select.sink.i.i.i.i, ptr %i.agb, align 8, !tbaa !44
  %.pre11.i.i.i = load i32, ptr %i.agf, align 4, !tbaa !35
  br label %Vec_IntPush.exit.i.i.i

Vec_IntPush.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit11.sink.split.i.i.i.i, %bb.kd, %.Vec_IntPush.exit_crit_edge.i.i.i
  %i.agx = phi i32 [ %i.agj, %.Vec_IntPush.exit_crit_edge.i.i.i ], [ %i.agj, %bb.kd ], [ %.pre11.i.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i.i ] ; 2 uses
  %i.agy = phi ptr [ %.pre.i.i34.i, %.Vec_IntPush.exit_crit_edge.i.i.i ], [ %.pre10.i.i.i, %bb.kd ], [ %i.agw, %Vec_IntGrow.exit11.sink.split.i.i.i.i ]
  %i.agz = add nsw i32 %i.agx, 1
  store i32 %i.agz, ptr %i.agf, align 4, !tbaa !35
  %i.aha = sext i32 %i.agx to i64
  %i.ahb = getelementptr inbounds [4 x i8], ptr %i.agy, i64 %i.aha
  store i32 %i.agi, ptr %i.ahb, align 4, !tbaa !9
  %indvars.iv.next.i125.i.i = add nuw nsw i64 %indvars.iv.i124.i.i, 1 ; 2 uses
  %.val.i126.i.i = load i32, ptr %i.agc, align 4, !tbaa !35
  %i.ahc = sext i32 %.val.i126.i.i to i64
  %i.ahd = icmp slt i64 %indvars.iv.next.i125.i.i, %i.ahc
  br i1 %i.ahd, label %bb.jy, label %Vec_IntAppend.exit.i.i, !llvm.loop !74

Vec_IntAppend.exit.i.i:                           ; preds = %Vec_IntPush.exit.i.i.i, %Vec_IntRemapArray.exit122.i.i
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.cb, i64 392
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !48 ; 3 uses
  %.not.i33.i = icmp eq ptr %i.ahf, null
  br i1 %.not.i33.i, label %Cba_NtkDupAttrs.exit.i, label %bb.kh

bb.kh:                                            ; preds = %Vec_IntAppend.exit.i.i
  %i.ahg = getelementptr i8, ptr %i.ahf, i64 4    ; 2 uses
  %.val8.i.i.i = load i32, ptr %i.ahg, align 4, !tbaa !50 ; 3 uses
  %i.ahh = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 6 uses
  %i.ahi = add i32 %.val8.i.i.i, -1
  %or.cond.i.i.i.i = icmp ult i32 %i.ahi, 7
  %spec.store.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 8, i32 %.val8.i.i.i ; 4 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahh, i64 4 ; 2 uses
  store i32 0, ptr %i.ahj, align 4, !tbaa !22
  store i32 %spec.store.select.i.i.i.i, ptr %i.ahh, align 8, !tbaa !32
  %.not.i.i128.i.i = icmp eq i32 %spec.store.select.i.i.i.i, 0
  br i1 %.not.i.i128.i.i, label %Vec_PtrAlloc.exit.i.i.i, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.ahk = sext i32 %spec.store.select.i.i.i.i to i64
  %i.ahl = shl nsw i64 %i.ahk, 3
  %i.ahm = call noalias ptr @malloc(i64 noundef %i.ahl) #22
  br label %Vec_PtrAlloc.exit.i.i.i

Vec_PtrAlloc.exit.i.i.i:                          ; preds = %bb.ki, %bb.kh
  %.promoted16.i.i.i = phi ptr [ %i.ahm, %bb.ki ], [ null, %bb.kh ] ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahh, i64 8 ; 2 uses
  store ptr %.promoted16.i.i.i, ptr %i.ahn, align 8, !tbaa !31
  %i.aho = icmp sgt i32 %.val8.i.i.i, 0
  br i1 %i.aho, label %.lr.ph.i129.i.i, label %Cba_NtkDupAttrs.exit.i

.lr.ph.i129.i.i:                                  ; preds = %Vec_PtrAlloc.exit.i.i.i
  %i.ahp = getelementptr i8, ptr %i.ahf, i64 8
  br label %bb.kj

bb.kj:                                            ; preds = %Vec_PtrPush.exit.i.i.i, %.lr.ph.i129.i.i
  %indvars.iv19.i.i.i = phi i64 [ 0, %.lr.ph.i129.i.i ], [ %indvars.iv.next20.i.i.i, %Vec_PtrPush.exit.i.i.i ] ; 7 uses
  %storemerge17.i.i.i = phi ptr [ %.promoted16.i.i.i, %.lr.ph.i129.i.i ], [ %storemerge18.i.i.i, %Vec_PtrPush.exit.i.i.i ] ; 6 uses
  %spec.select.sink.i15.i.i.i = phi i32 [ %spec.store.select.i.i.i.i, %.lr.ph.i129.i.i ], [ %spec.select.sink.i14.i.i.i, %Vec_PtrPush.exit.i.i.i ] ; 4 uses
  %.val9.i.i.i = load ptr, ptr %i.ahp, align 8, !tbaa !51
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %.val9.i.i.i, i64 %indvars.iv19.i.i.i
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !33 ; 3 uses
  %i.ahs = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 4 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahr, i64 4
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !22 ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahs, i64 4
  store i32 %i.ahu, ptr %i.ahv, align 4, !tbaa !22
  %i.ahw = load i32, ptr %i.ahr, align 8, !tbaa !32 ; 3 uses
  store i32 %i.ahw, ptr %i.ahs, align 8, !tbaa !32
  %.not.i10.i.i.i = icmp eq i32 %i.ahw, 0
  br i1 %.not.i10.i.i.i, label %Vec_PtrDup.exit.i.i.i, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.ahx = sext i32 %i.ahw to i64
  %i.ahy = shl nsw i64 %i.ahx, 3
  %i.ahz = call noalias ptr @malloc(i64 noundef %i.ahy) #22
  br label %Vec_PtrDup.exit.i.i.i

Vec_PtrDup.exit.i.i.i:                            ; preds = %bb.kk, %bb.kj
  %i.aia = phi ptr [ %i.ahz, %bb.kk ], [ null, %bb.kj ] ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8
  store ptr %i.aia, ptr %i.aib, align 8, !tbaa !31
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !31
  %i.aie = sext i32 %i.ahu to i64
  %i.aif = shl nsw i64 %i.aie, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aia, ptr align 8 %i.aid, i64 %i.aif, i1 false)
  %i.aig = trunc nuw nsw i64 %indvars.iv19.i.i.i to i32
  %i.aih = icmp eq i32 %spec.select.sink.i15.i.i.i, %i.aig
  br i1 %i.aih, label %bb.kl, label %Vec_PtrPush.exit.i.i.i

bb.kl:                                            ; preds = %Vec_PtrDup.exit.i.i.i
  %i.aii = icmp samesign ult i64 %indvars.iv19.i.i.i, 16
  br i1 %i.aii, label %bb.km, label %bb.kp

bb.km:                                            ; preds = %bb.kl
  %.not9.i.i.i134.i.i = icmp eq ptr %storemerge17.i.i.i, null
  br i1 %.not9.i.i.i134.i.i, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.aij = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge17.i.i.i, i64 noundef 128) #23
  br label %Vec_PtrPush.exit.i.i.i

bb.ko:                                            ; preds = %bb.km
  %i.aik = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_PtrPush.exit.i.i.i

bb.kp:                                            ; preds = %bb.kl
  %i.ail = icmp samesign ult i64 %indvars.iv19.i.i.i, 1073741823
  %i.aim = shl nuw nsw i32 %spec.select.sink.i15.i.i.i, 1
  %spec.select.i.i133.i.i = select i1 %i.ail, i32 %i.aim, i32 2147483647 ; 3 uses
  %i.ain = zext nneg i32 %spec.select.i.i133.i.i to i64 ; 2 uses
  %.not.i10.i.i.i.i = icmp samesign ult i64 %indvars.iv19.i.i.i, %i.ain
  br i1 %.not.i10.i.i.i.i, label %bb.kq, label %Vec_PtrPush.exit.i.i.i

bb.kq:                                            ; preds = %bb.kp
  %.not9.i11.i.i.i.i = icmp eq ptr %storemerge17.i.i.i, null
  %i.aio = shl nuw nsw i64 %i.ain, 3              ; 2 uses
  br i1 %.not9.i11.i.i.i.i, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.aip = call ptr @realloc(ptr noundef nonnull %storemerge17.i.i.i, i64 noundef %i.aio) #23
  br label %Vec_PtrPush.exit.i.i.i

bb.ks:                                            ; preds = %bb.kq
  %i.aiq = call noalias ptr @malloc(i64 noundef %i.aio) #22
  br label %Vec_PtrPush.exit.i.i.i

Vec_PtrPush.exit.i.i.i:                           ; preds = %bb.ks, %bb.kr, %bb.kp, %bb.ko, %bb.kn, %Vec_PtrDup.exit.i.i.i
  %storemerge18.i.i.i = phi ptr [ %storemerge17.i.i.i, %Vec_PtrDup.exit.i.i.i ], [ %storemerge17.i.i.i, %bb.kp ], [ %i.aik, %bb.ko ], [ %i.aij, %bb.kn ], [ %i.aip, %bb.kr ], [ %i.aiq, %bb.ks ] ; 3 uses
  %spec.select.sink.i14.i.i.i = phi i32 [ %spec.select.sink.i15.i.i.i, %Vec_PtrDup.exit.i.i.i ], [ %spec.select.sink.i15.i.i.i, %bb.kp ], [ 16, %bb.ko ], [ 16, %bb.kn ], [ %spec.select.i.i133.i.i, %bb.kr ], [ %spec.select.i.i133.i.i, %bb.ks ] ; 2 uses
  %indvars.iv.next20.i.i.i = add nuw nsw i64 %indvars.iv19.i.i.i, 1 ; 3 uses
  %i.air = getelementptr inbounds nuw [8 x i8], ptr %storemerge18.i.i.i, i64 %indvars.iv19.i.i.i
  store ptr %i.ahs, ptr %i.air, align 8, !tbaa !33
  %.val.i132.i.i = load i32, ptr %i.ahg, align 4, !tbaa !50
  %i.ais = sext i32 %.val.i132.i.i to i64
  %i.ait = icmp slt i64 %indvars.iv.next20.i.i.i, %i.ais
  br i1 %i.ait, label %bb.kj, label %..critedge_crit_edge.i.i.i, !llvm.loop !75

..critedge_crit_edge.i.i.i:                       ; preds = %Vec_PtrPush.exit.i.i.i
  %i.aiu = trunc nuw nsw i64 %indvars.iv.next20.i.i.i to i32
  store i32 %i.aiu, ptr %i.ahj, align 4, !tbaa !22
  store i32 %spec.select.sink.i14.i.i.i, ptr %i.ahh, align 8
  store ptr %storemerge18.i.i.i, ptr %i.ahn, align 8
  br label %Cba_NtkDupAttrs.exit.i

Cba_NtkDupAttrs.exit.i:                           ; preds = %..critedge_crit_edge.i.i.i, %Vec_PtrAlloc.exit.i.i.i, %Vec_IntAppend.exit.i.i
  %i.aiv = phi ptr [ null, %Vec_IntAppend.exit.i.i ], [ %i.ahh, %Vec_PtrAlloc.exit.i.i.i ], [ %i.ahh, %..critedge_crit_edge.i.i.i ]
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.di, i64 392
  store ptr %i.aiv, ptr %i.aiw, align 8, !tbaa !48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val21.i = load i32, ptr %i.ah, align 4, !tbaa !22
  %i.aix = sext i32 %.val21.i to i64
  %.not.not.i = icmp slt i64 %indvars.iv.next.i, %i.aix
  br i1 %.not.not.i, label %Cba_ManNtk.exit.i, label %.critedge.loopexit.i, !llvm.loop !76

.critedge.loopexit.i:                             ; preds = %Cba_NtkDupAttrs.exit.i
  %.val.pre.i = load i32, ptr %i.bv, align 4, !tbaa !22
  %i.aiy = add nsw i32 %.val.pre.i, -1
  br label %Cba_ManDup.exit

Cba_ManDup.exit:                                  ; preds = %Cba_ManAlloc.exit.i, %.critedge.loopexit.i
  %.val.i = phi i32 [ %i.aiy, %.critedge.loopexit.i ], [ 0, %Cba_ManAlloc.exit.i ]
  store i32 %.val.i, ptr %i.bw, align 8, !tbaa !34
  call fastcc void @Cba_ManFree(ptr noundef nonnull %.037)
  br label %bb.kt

bb.kt:                                            ; preds = %Cba_ManDup.exit, %bb.u
  %.138 = phi ptr [ %i.au, %Cba_ManDup.exit ], [ %.037, %bb.u ]
  %i.aiz = getelementptr i8, ptr %0, i64 576      ; 2 uses
  %.val.i56 = load ptr, ptr %i.aiz, align 8, !tbaa !63 ; 2 uses
  %.not.i.i57 = icmp eq ptr %.val.i56, null
  br i1 %.not.i.i57, label %Cba_AbcUpdateMan.exit, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  call fastcc void @Cba_ManFree(ptr noundef nonnull %.val.i56)
  br label %Cba_AbcUpdateMan.exit

Cba_AbcUpdateMan.exit:                            ; preds = %bb.kt, %bb.ku
  store ptr %.138, ptr %i.aiz, align 8, !tbaa !63
  br label %bb.kw

bb.kv:                                            ; preds = %bb.b
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.24)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.25)
  %.not53 = icmp eq i32 %.035.ph, 0
  %i.aja = select i1 %.not53, ptr @.str.28, ptr @.str.27
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.aja)
  %.not54 = icmp eq i32 %.033.ph210, 0
  %i.ajb = select i1 %.not54, ptr @.str.28, ptr @.str.27
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.ajb)
  %.not55 = icmp eq i32 %.032, 0
  %i.ajc = select i1 %.not55, ptr @.str.28, ptr @.str.27
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.ajc)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.31)
  br label %bb.kw

bb.kw:                                            ; preds = %bb.n, %bb.o, %bb.kv, %Cba_AbcUpdateMan.exit, %bb.t, %.tail.thread, %bb.k, %bb.g
  %.0 = phi i32 [ 1, %bb.kv ], [ 0, %bb.g ], [ 0, %bb.k ], [ 0, %.tail.thread ], [ 0, %Cba_AbcUpdateMan.exit ], [ 0, %bb.t ], [ 0, %bb.o ], [ 0, %bb.n ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Cba_CommandWrite(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 576
  %.val = load ptr, ptr %i.a, align 8, !tbaa !63  ; 6 uses
  tail call void (...) @Extra_UtilGetoptReset() #19
  br label %.outer

.outer:                                           ; preds = %bb.c, %bb.a
  %.028.ph = phi i32 [ %i.c, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.0.ph = phi i32 [ %.0, %bb.c ], [ 0, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.d
  %.0 = phi i32 [ %i.d, %bb.d ], [ %.0.ph, %.outer ] ; 3 uses
  %i.b = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.39) #19
  switch i32 %i.b, label %bb.s [
    i32 -1, label %bb.e
    i32 99, label %bb.c
    i32 118, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = xor i32 %.028.ph, 1
  br label %.outer, !llvm.loop !78

bb.d:                                             ; preds = %bb.b
  %i.d = xor i32 %.0, 1
  br label %bb.b, !llvm.loop !78

bb.e:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.40)
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.f = load i32, ptr @globalUtilOptind, align 4, !tbaa !9 ; 3 uses
  %i.g = add nsw i32 %i.f, 1
  %i.h = icmp eq i32 %1, %i.g
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = sext i32 %i.f to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %2, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.l = icmp eq i32 %1, %i.f
  br i1 %i.l, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr i8, ptr %.val, i64 8
  %.val44 = load ptr, ptr %i.m, align 8, !tbaa !21 ; 2 uses
  %.not35 = icmp eq ptr %.val44, null
  br i1 %.not35, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.val42 = load ptr, ptr %.val, align 8, !tbaa !29
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.n = phi ptr [ %.val42, %bb.k ], [ %.val44, %bb.j ]
  %i.o = tail call ptr @Extra_FileNameGenericAppend(ptr noundef %i.n, ptr noundef nonnull @.str.41) #19 ; 2 uses
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef %i.o) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.t

bb.n:                                             ; preds = %bb.l, %bb.h
  %.030 = phi ptr [ %i.k, %bb.h ], [ %i.o, %bb.l ] ; 6 uses
  %i.q = tail call ptr @Extra_FileNameExtension(ptr noundef %.030) #19
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(5) @.str.20) #20
  %.not36 = icmp eq i32 %i.r, 0
  br i1 %.not36, label %bb.o, label %sub_0

bb.o:                                             ; preds = %bb.n
  tail call void @Cba_ManWriteBlif(ptr noundef %.030, ptr noundef nonnull %.val) #19
  br label %bb.t

sub_0:                                            ; preds = %bb.n
  %i.s = tail call ptr @Extra_FileNameExtension(ptr noundef %.030) #19 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %.not = icmp eq i8 %i.t, 118
  br i1 %.not, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.p, label %.tail.thread

bb.p:                                             ; preds = %.tail
  tail call void @Cba_ManWriteVerilog(ptr noundef %.030, ptr noundef nonnull %.val, i32 noundef %.028.ph) #19
  br label %bb.t

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.x = tail call ptr @Extra_FileNameExtension(ptr noundef %.030) #19
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(4) @.str.23) #20
  %.not38 = icmp eq i32 %i.y, 0
  br i1 %.not38, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.tail.thread
  tail call void @Cba_ManWriteCba(ptr noundef %.030, ptr noundef nonnull %.val) #19
  br label %bb.t

bb.r:                                             ; preds = %.tail.thread
  %puts39 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.45)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.46)
  %.not40 = icmp eq i32 %.028.ph, 0
  %i.z = select i1 %.not40, ptr @.str.28, ptr @.str.27
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.47, ptr noundef nonnull %i.z)
  %.not41 = icmp eq i32 %.0, 0
  %i.aa = select i1 %.not41, ptr @.str.28, ptr @.str.27
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.aa)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.31)
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.q, %bb.p, %bb.s, %bb.r, %bb.m, %bb.f
  %.031 = phi i32 [ 1, %bb.s ], [ 0, %bb.f ], [ 0, %bb.r ], [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.o ]
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Cba_CommandPs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 576
  %.val = load ptr, ptr %i.a, align 8, !tbaa !63  ; 23 uses
  tail call void (...) @Extra_UtilGetoptReset() #19
  br label %.outer
end_hunk_0
begin_hunk_1_@Abc_Print:bb.a
bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

declare ptr @Extra_FileGetSimilarName(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @Extra_FileNameExtension(ptr noundef) local_unnamed_addr #1

declare void @Prs_ManReadBlifTest(ptr noundef) local_unnamed_addr #1

declare void @Prs_ManReadVerilogTest(ptr noundef) local_unnamed_addr #1

declare ptr @Cba_ManReadBlif(ptr noundef) local_unnamed_addr #1

declare ptr @Cba_ManReadVerilog(ptr noundef) local_unnamed_addr #1

declare ptr @Cba_ManReadCba(ptr noundef) local_unnamed_addr #1

declare ptr @Cba_NtkCollectDfs(ptr noundef) local_unnamed_addr #1

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #1

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #5

declare ptr @Abc_NamRef(ptr noundef) local_unnamed_addr #1

declare ptr @Abc_NamStart(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @Extra_FileDesignName(ptr noundef) local_unnamed_addr #1

declare i32 @Abc_NamStrFindOrAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

declare ptr @Abc_NamStr(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Extra_FileNameGenericAppend(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Cba_ManWriteBlif(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Cba_ManWriteVerilog(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Cba_ManWriteCba(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Cba_NtkPrintStatsFull(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Cba_NtkPrintNodes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Cba_ManBoxNumRec_rec(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.a, align 8, !tbaa !43
  %i.b = sext i32 %.val to i64                    ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b ; 6 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !9
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.b ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !9
  store i32 0, ptr %i.c, align 4, !tbaa !9
  %i.g = getelementptr i8, ptr %0, i64 92         ; 2 uses
  %.val3034 = load i32, ptr %i.g, align 4, !tbaa !47
  %i.h = icmp sgt i32 %.val3034, 1
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 96
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.val31 = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %.val31, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1, !tbaa !38
  switch i8 %i.k, label %bb.f [
    i8 0, label %bb.g
    i8 3, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  %i.m = tail call fastcc i32 @Cba_ObjNtkId(ptr noundef nonnull %0, i32 noundef %i.l) ; 3 uses
  %.val.i = load ptr, ptr %0, align 8, !tbaa !45  ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %Cba_ManNtkIsOk.exit.i.i.i, label %Cba_ObjNtk.exit

Cba_ManNtkIsOk.exit.i.i.i:                        ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.val.i, i64 1564
  %.val.i.i.i.i = load i32, ptr %i.o, align 4, !tbaa !22
  %.not.i.i.i = icmp slt i32 %i.m, %.val.i.i.i.i
  br i1 %.not.i.i.i, label %bb.e, label %Cba_ObjNtk.exit

bb.e:                                             ; preds = %Cba_ManNtkIsOk.exit.i.i.i
  %i.p = getelementptr i8, ptr %.val.i, i64 1568
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.q = zext nneg i32 %i.m to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33
  br label %Cba_ObjNtk.exit

Cba_ObjNtk.exit:                                  ; preds = %bb.d, %Cba_ManNtkIsOk.exit.i.i.i, %bb.e
  %i.t = phi ptr [ %i.s, %bb.e ], [ null, %Cba_ManNtkIsOk.exit.i.i.i ], [ null, %bb.d ]
  tail call fastcc void @Cba_ManBoxNumRec_rec(ptr noundef %i.t, ptr noundef %1, ptr noundef %2)
  %i.u = tail call fastcc i32 @Cba_ObjNtkId(ptr noundef nonnull %0, i32 noundef %i.l)
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %1, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !9
  %i.y = load i32, ptr %i.c, align 4, !tbaa !9
  %i.z = add nsw i32 %i.y, %i.x
  store i32 %i.z, ptr %i.c, align 4, !tbaa !9
  %i.aa = tail call fastcc i32 @Cba_ObjNtkId(ptr noundef nonnull %0, i32 noundef %i.l)
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.ae = add nsw i32 %i.ad, 1
  %i.af = load i32, ptr %i.f, align 4, !tbaa !9
  %i.ag = add nsw i32 %i.ae, %i.af
  store i32 %i.ag, ptr %i.f, align 4, !tbaa !9
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !9
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.c, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %Cba_ObjNtk.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val30 = load i32, ptr %i.g, align 4, !tbaa !47
  %i.aj = sext i32 %.val30 to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.c, label %.loopexit, !llvm.loop !111

.loopexit:                                        ; preds = %bb.g, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Cba_ObjNtkId(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  %.val = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.val, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !38
  %.not = icmp eq i8 %i.d, 3
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 188        ; 3 uses
  %.val5 = load i32, ptr %i.e, align 4, !tbaa !35 ; 4 uses
  %i.f = icmp slt i32 %.val5, 1
  br i1 %i.f, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.h = add nuw nsw i32 %1, 1                    ; 4 uses
  %.not.i.not.i.i = icmp slt i32 %1, %.val5
  br i1 %.not.i.not.i.i, label %Cba_ObjFunc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.g, align 8, !tbaa !44   ; 4 uses
  %i.j = shl nsw i32 %i.i, 1                      ; 2 uses
  %.not.i.i = icmp slt i32 %1, %i.j
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.l, null
  %2 = sext i32 %i.h to i64
  %i.m = shl nuw nsw i64 %2, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @realloc(ptr noundef nonnull %i.l, i64 noundef %i.m) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.m) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi ptr [ %i.n, %bb.f ], [ %i.o, %bb.g ]
  store ptr %i.p, ptr %i.k, align 8, !tbaa !36
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.i:                                             ; preds = %bb.d
  %.not.i.i.not.i.i = icmp sgt i32 %i.i, %1
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = icmp slt i32 %i.i, 1073741823
  %spec.select.i.i.i = select i1 %i.q, i32 %i.j, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.i, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.k, label %Vec_IntGrow.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36   ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.s, null
  %i.t = zext nneg i32 %spec.select.i.i.i to i64
  %i.u = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = tail call ptr @realloc(ptr noundef nonnull %i.s, i64 noundef %i.u) #23
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.u) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.x = phi ptr [ %i.v, %bb.l ], [ %i.w, %bb.m ]
  store ptr %i.x, ptr %i.r, align 8, !tbaa !36
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.n, %bb.h
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.n ], [ %i.h, %bb.h ]
  store i32 %spec.select.sink.i.i.i, ptr %i.g, align 8, !tbaa !44
  %.pre.i.i = load i32, ptr %i.e, align 4, !tbaa !35
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.j, %bb.i
  %i.y = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %.val5, %bb.j ], [ %.val5, %bb.i ] ; 2 uses
  %.not3.i.i = icmp sgt i32 %i.y, %1
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ab = sext i32 %i.y to i64                    ; 2 uses
  %wide.trip.count.i.i.i = sext i32 %i.h to i64
  %i.ac = shl nsw i64 %i.ab, 2
  %scevgep.i.i = getelementptr i8, ptr %i.aa, i64 %i.ac
  %i.ad = sub nsw i64 %wide.trip.count.i.i.i, %i.ab
  %i.ae = shl nuw nsw i64 %i.ad, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.ae, i1 false), !tbaa !9
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.h, ptr %i.e, align 4, !tbaa !35
  br label %Cba_ObjFunc.exit

Cba_ObjFunc.exit:                                 ; preds = %bb.c, %._crit_edge.i.i.i
  %i.af = getelementptr i8, ptr %0, i64 192
  %.val.i.i = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.b
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.b, %Cba_ObjFunc.exit
  %i.ai = phi i32 [ %i.ah, %Cba_ObjFunc.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.ai
}

declare i32 @Abc_NamMemUsed(ptr noundef) local_unnamed_addr #1

declare ptr @Cba_ManBlast(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Abc_FrameUpdateGia(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Cba_ManInsertAbc(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Cba_ManInsertGia(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Cba_ManCollapse(ptr noundef) local_unnamed_addr #1

declare void @Cec_ManCecSetDefaultParams(ptr noundef) local_unnamed_addr #1

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #1

declare ptr @Gia_ManMiter(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Cec_ManVerify(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x double> @llvm.fmuladd.v16f64(<16 x double>, <16 x double>, <16 x double>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!5, !5, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 _ZTS10Abc_Nam_t_", !10, i64 0}
!14 = !{!"p1 _ZTS14Hash_IntMan_t_", !10, i64 0}
!15 = !{!"p1 int", !10, i64 0}
!16 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !15, i64 8}
!17 = !{!"any p2 pointer", !10, i64 0}
!18 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !17, i64 8}
!19 = !{!"Vec_Str_t_", !5, i64 0, !5, i64 4, !11, i64 8}
!20 = !{!"Cba_Man_t_", !11, i64 0, !11, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !14, i64 40, !16, i64 48, !16, i64 64, !16, i64 80, !16, i64 96, !4, i64 112, !4, i64 832, !4, i64 1192, !5, i64 1552, !18, i64 1560, !5, i64 1576, !19, i64 1584, !19, i64 1600, !10, i64 1616}
!21 = !{!20, !11, i64 8}
!22 = !{!18, !5, i64 4}
!23 = !{!20, !13, i64 16}
!24 = !{!20, !13, i64 24}
!25 = !{!20, !14, i64 40}
!26 = !{!"p1 _ZTS10Vec_Int_t_", !10, i64 0}
!27 = !{!"Hash_IntMan_t_", !26, i64 0, !26, i64 8, !5, i64 16}
!28 = !{!27, !5, i64 16}
!29 = !{!20, !11, i64 0}
!30 = !{!20, !13, i64 32}
!31 = !{!18, !17, i64 8}
!32 = !{!18, !5, i64 0}
!33 = !{!10, !10, i64 0}
!34 = !{!20, !5, i64 1552}
!35 = !{!16, !5, i64 4}
!36 = !{!16, !15, i64 8}
!37 = !{!19, !11, i64 8}
!38 = !{!4, !4, i64 0}
!39 = !{!"p1 _ZTS10Cba_Man_t_", !10, i64 0}
!40 = !{!"p1 _ZTS10Vec_Ptr_t_", !10, i64 0}
!41 = !{!"Cba_Ntk_t_", !39, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 20, !5, i64 20, !16, i64 24, !16, i64 40, !16, i64 56, !16, i64 72, !19, i64 88, !16, i64 104, !16, i64 120, !16, i64 136, !16, i64 152, !16, i64 168, !16, i64 184, !16, i64 200, !16, i64 216, !16, i64 232, !16, i64 248, !16, i64 264, !16, i64 280, !16, i64 296, !16, i64 312, !16, i64 328, !16, i64 344, !16, i64 360, !16, i64 376, !40, i64 392, !16, i64 400, !16, i64 416}
!42 = !{!41, !5, i64 12}
!43 = !{!41, !5, i64 8}
!44 = !{!16, !5, i64 0}
!45 = !{!41, !39, i64 0}
!46 = !{!19, !5, i64 0}
!47 = !{!19, !5, i64 4}
!48 = !{!41, !40, i64 392}
!49 = !{!"Vec_Vec_t_", !5, i64 0, !5, i64 4, !17, i64 8}
!50 = !{!49, !5, i64 4}
!51 = !{!49, !17, i64 8}
!52 = !{!"p1 _ZTS9st__table", !10, i64 0}
!53 = !{!"p1 _ZTS10Abc_Ntk_t_", !10, i64 0}
!54 = !{!"float", !4, i64 0}
!55 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!56 = !{!"double", !4, i64 0}
!57 = !{!"p1 _ZTS10Gia_Man_t_", !10, i64 0}
!58 = !{!"p1 _ZTS10Abc_Cex_t_", !10, i64 0}
!59 = !{!"p1 _ZTS10Vec_Wec_t_", !10, i64 0}
!60 = !{!"p1 _ZTS13Hsh_VecMan_t_", !10, i64 0}
!61 = !{!"p1 _ZTS9DdManager", !10, i64 0}
!62 = !{!"Abc_Frame_t_", !11, i64 0, !11, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !40, i64 40, !5, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !53, i64 112, !54, i64 120, !54, i64 124, !5, i64 128, !5, i64 132, !55, i64 136, !55, i64 144, !55, i64 152, !56, i64 160, !56, i64 168, !40, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !4, i64 208, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !11, i64 296, !54, i64 304, !26, i64 312, !5, i64 320, !57, i64 328, !57, i64 336, !57, i64 344, !57, i64 352, !57, i64 360, !5, i64 368, !5, i64 372, !5, i64 376, !5, i64 380, !5, i64 384, !5, i64 388, !58, i64 392, !58, i64 400, !40, i64 408, !40, i64 416, !26, i64 424, !26, i64 432, !5, i64 440, !5, i64 444, !40, i64 448, !40, i64 456, !40, i64 464, !11, i64 472, !10, i64 480, !10, i64 488, !10, i64 496, !10, i64 504, !10, i64 512, !10, i64 520, !10, i64 528, !10, i64 536, !10, i64 544, !26, i64 552, !10, i64 560, !10, i64 568, !10, i64 576, !10, i64 584, !13, i64 592, !59, i64 600, !60, i64 608, !61, i64 616, !57, i64 624, !57, i64 632, !26, i64 640, !26, i64 648, !26, i64 656, !26, i64 664, !15, i64 672, !15, i64 680, !10, i64 688, !15, i64 696, !10, i64 704}
!63 = !{!62, !10, i64 576}
!64 = distinct !{!64, !8}
!65 = distinct !{!65, !8}
!66 = distinct !{!66, !8}
!67 = distinct !{!67, !8}
!68 = distinct !{!68, !8}
!69 = distinct !{!69, !8}
!70 = distinct !{!70, !8}
!71 = distinct !{!71, !8}
!72 = distinct !{!72, !8}
!73 = distinct !{!73, !8}
!74 = distinct !{!74, !8}
!75 = distinct !{!75, !8}
!76 = distinct !{!76, !8}
!77 = !{!41, !5, i64 16}
!78 = distinct !{!78, !8}
!79 = distinct !{null}
!80 = distinct !{!80, !8}
!81 = distinct !{!81, !8}
!82 = distinct !{!82, !8}
!83 = distinct !{!83, !8, !87, !88}
!84 = distinct !{!84, !8, !88, !87}
!85 = distinct !{!85, !8, !87, !88}
!86 = distinct !{!86, !8, !88, !87}
!87 = !{!"llvm.loop.isvectorized", i32 1}
!88 = !{!"llvm.loop.unroll.runtime.disable"}
!89 = distinct !{!89, !8}
!90 = distinct !{!90, !8}
!91 = !{!62, !53, i64 56}
!92 = !{!62, !57, i64 328}
!93 = distinct !{!93, !8}
!94 = distinct !{!94, !8}
!95 = distinct !{!95, !8}
!96 = distinct !{!96, !8}
!97 = !{!"Cec_ParCec_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !11, i64 40, !11, i64 48, !40, i64 56}
!98 = !{!97, !5, i64 32}
!99 = !{!62, !5, i64 440}
!100 = distinct !{!100, !8}
!101 = distinct !{!101, !8}
!102 = distinct !{!102, !8}
!103 = !{!20, !17, i64 1568}
!104 = !{!27, !26, i64 8}
!105 = !{!27, !26, i64 0}
!106 = distinct !{!106, !"vprintf"}
end_hunk_1
