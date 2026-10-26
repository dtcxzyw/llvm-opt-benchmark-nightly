Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/rdb?download=true
inline.NumInlined: 264
inline.NumDeleted: 16
begin_hunk_0_@rdbLoadObject:bb.a

bb.gw:                                            ; preds = %bb.gu
  %i.sw = icmp eq i64 %.1826, 1
  br i1 %i.sw, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.sx = load ptr, ptr %i.sk, align 8, !tbaa !87
  call void @quicklistAppendPlainNode(ptr noundef %i.sx, ptr noundef nonnull %i.ss, i64 noundef %i.su) #20
  br label %bb.hj, !llvm.loop !272

bb.gy:                                            ; preds = %bb.gw
  br i1 %i.sd, label %bb.gz, label %bb.hd

bb.gz:                                            ; preds = %bb.gy
  store ptr %i.ss, ptr %i.am, align 8, !tbaa !70
  br i1 %.0900.in, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.sy = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3104), align 8, !tbaa !295
  %i.sz = add nsw i64 %i.sy, 1
  store i64 %i.sz, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3104), align 8, !tbaa !295
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %i.ta = call i32 @lpValidateIntegrity(ptr noundef nonnull %i.ss, i64 noundef %i.su, i32 noundef %.0900, ptr noundef null, ptr noundef null) #20
  %.not1026 = icmp eq i32 %i.ta, 0
  br i1 %.not1026, label %bb.hc, label %._crit_edge1566

._crit_edge1566:                                  ; preds = %bb.hb
  %.pre1567 = load ptr, ptr %i.am, align 8, !tbaa !70
  br label %bb.hg

bb.hc:                                            ; preds = %bb.hb
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 2738, ptr noundef nonnull @.str.70)
  call void @decrRefCount(ptr noundef %i.sj) #20
  %i.tb = load ptr, ptr %i.am, align 8, !tbaa !70
  call void @zfree(ptr noundef %i.tb) #20
  br label %.thread1247

bb.hd:                                            ; preds = %bb.gy
  %i.tc = call ptr @lpNew(i64 noundef %i.su) #20
  store ptr %i.tc, ptr %i.am, align 8, !tbaa !70
  %i.td = call i32 @ziplistValidateIntegrity(ptr noundef nonnull %i.ss, i64 noundef %i.su, i32 noundef 1, ptr noundef nonnull @_ziplistEntryConvertAndValidate, ptr noundef nonnull %i.am) #20
  %.not1025 = icmp eq i32 %i.td, 0
  br i1 %.not1025, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 2748, ptr noundef nonnull @.str.71)
  call void @decrRefCount(ptr noundef %i.sj) #20
  call void @zfree(ptr noundef nonnull %i.ss) #20
  %i.te = load ptr, ptr %i.am, align 8, !tbaa !70
  call void @zfree(ptr noundef %i.te) #20
  br label %.thread1247

bb.hf:                                            ; preds = %bb.hd
  call void @zfree(ptr noundef nonnull %i.ss) #20
  %i.tf = load ptr, ptr %i.am, align 8, !tbaa !70
  %i.tg = call ptr @lpShrinkToFit(ptr noundef %i.tf) #20 ; 2 uses
  store ptr %i.tg, ptr %i.am, align 8, !tbaa !70
  br label %bb.hg

bb.hg:                                            ; preds = %._crit_edge1566, %bb.hf
  %i.th = phi ptr [ %.pre1567, %._crit_edge1566 ], [ %i.tg, %bb.hf ]
  %i.ti = call i64 @lpLength(ptr noundef %i.th) #20
  %i.tj = icmp eq i64 %i.ti, 0
  br i1 %i.tj, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.tk = load ptr, ptr %i.am, align 8, !tbaa !70
  call void @zfree(ptr noundef %i.tk) #20
  br label %bb.hj, !llvm.loop !272

bb.hi:                                            ; preds = %bb.hg
  %i.tl = load ptr, ptr %i.sk, align 8, !tbaa !87
  %i.tm = load ptr, ptr %i.am, align 8, !tbaa !70
  call void @quicklistAppendListpack(ptr noundef %i.tl, ptr noundef %i.tm) #20
  br label %bb.hj

.thread1247:                                      ; preds = %bb.he, %bb.hc, %bb.gv, %bb.gt, %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #20
  br label %.critedge1104

bb.hj:                                            ; preds = %bb.gx, %bb.hh, %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #20
  %.not1024 = icmp eq i64 %i.sl, 0
  br i1 %.not1024, label %._crit_edge1429, label %bb.gp

._crit_edge1429:                                  ; preds = %bb.hj, %bb.go
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !87
  %i.tp = call i64 @quicklistCount(ptr noundef %i.to) #20
  %i.tq = icmp eq i64 %i.tp, 0
  br i1 %i.tq, label %bb.hk, label %.thread1249

.thread1249:                                      ; preds = %._crit_edge1429
  call void @listTypeTryConversion(ptr noundef nonnull %i.sj, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  br label %.critedge1092

bb.hk:                                            ; preds = %._crit_edge1429
  call void @decrRefCount(ptr noundef nonnull %i.sj) #20
  br label %bb.nk

bb.hl:                                            ; preds = %bb.gm
  %i.tr = icmp eq i32 %0, 16
  switch i32 %0, label %bb.ni [
    i32 25, label %bb.hm
    i32 23, label %bb.hm
    i32 20, label %bb.hm
    i32 17, label %bb.hm
    i32 16, label %bb.hm
    i32 13, label %bb.hm
    i32 12, label %bb.hm
    i32 11, label %bb.hm
    i32 10, label %bb.hm
    i32 9, label %bb.hm
    i32 26, label %bb.js
    i32 21, label %bb.js
    i32 19, label %bb.js
    i32 15, label %bb.js
    i32 6, label %bb.mr
    i32 7, label %bb.ms
  ]

bb.hm:                                            ; preds = %bb.hl, %bb.hl, %bb.hl, %bb.hl, %bb.hl, %bb.hl, %bb.hl, %bb.hl, %bb.hl, %bb.hl
  %i.ts = icmp eq i32 %0, 25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #20
  br i1 %i.ts, label %bb.hn, label %.critedge1084

bb.hn:                                            ; preds = %bb.hm
  %i.tt = tail call i64 @rdbLoadMillisecondTime(ptr noundef %1, i32 poison) ; 0 uses
  %i.tu = getelementptr i8, ptr %1, i64 48
  %.val1121 = load i64, ptr %i.tu, align 8, !tbaa !72
  %i.tv = and i64 %.val1121, 1
  %.not1011 = icmp eq i64 %i.tv, 0
  br i1 %.not1011, label %.critedge1084, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  tail call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 0, i32 noundef 2793, ptr noundef nonnull @.str.72)
  br label %.thread1270

.critedge1084:                                    ; preds = %bb.hn, %bb.hm
  %i.tw = call ptr @rdbGenericLoadStringObjectUsable(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %i.ao, ptr noundef null) ; 24 uses
  %i.tx = icmp eq ptr %i.tw, null
  br i1 %i.tx, label %.thread1270, label %bb.hp

bb.hp:                                            ; preds = %.critedge1084
  %i.ty = call ptr @createObject(i32 noundef 0, ptr noundef nonnull %i.tw) #20 ; 63 uses
  switch i32 %0, label %bb.jr [
    i32 9, label %bb.hq
    i32 10, label %bb.hy
    i32 11, label %bb.ib
    i32 20, label %bb.ih
    i32 12, label %bb.io
    i32 17, label %bb.iv
    i32 13, label %bb.jb
    i32 16, label %bb.ji
    i32 23, label %bb.ji
    i32 25, label %bb.ji
  ]

bb.hq:                                            ; preds = %bb.hp
  %i.tz = load i64, ptr %i.ao, align 8, !tbaa !80
  %i.ua = call i32 @zipmapValidateIntegrity(ptr noundef nonnull %i.tw, i64 noundef %i.tz, i32 noundef 1) #20
  %.not1019 = icmp eq i32 %i.ua, 0
  br i1 %.not1019, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 2815, ptr noundef nonnull @.str.73)
  call void @zfree(ptr noundef nonnull %i.tw) #20
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store ptr null, ptr %i.ub, align 8, !tbaa !87
  call void @decrRefCount(ptr noundef %i.ty) #20
  br label %.thread1270

bb.hs:                                            ; preds = %bb.hq
  %i.uc = call ptr @lpNew(i64 noundef 0) #20      ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ty, i64 8 ; 4 uses
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !87
  %i.uf = call ptr @zipmapRewind(ptr noundef %i.ue) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #20
  %i.ug = call ptr @dictCreate(ptr noundef nonnull @hashDictType) #20 ; 3 uses
  %i.uh = call ptr @zipmapNext(ptr noundef %i.uf, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.as) #20 ; 2 uses
  %.not10201444 = icmp eq ptr %i.uh, null
  br i1 %.not10201444, label %._crit_edge1449, label %.lr.ph1448

.lr.ph1448:                                       ; preds = %bb.hs, %bb.hv
  %i.ui = phi ptr [ %i.vb, %bb.hv ], [ %i.uh, %bb.hs ]
  %.08191446 = phi i32 [ %.2821, %bb.hv ], [ 0, %bb.hs ]
  %.08231445 = phi ptr [ %i.va, %bb.hv ], [ %i.uc, %bb.hs ] ; 2 uses
  %i.uj = load i32, ptr %i.ar, align 4, !tbaa !18 ; 2 uses
  %spec.select1085 = call i32 @llvm.umax.i32(i32 %i.uj, i32 %.08191446)
  %i.uk = load i32, ptr %i.as, align 4, !tbaa !18
  %.2821 = call i32 @llvm.umax.i32(i32 %i.uk, i32 %spec.select1085) ; 2 uses
  %i.ul = load ptr, ptr %i.ap, align 8, !tbaa !70
  %i.um = zext i32 %i.uj to i64
  %i.un = call ptr @sdstrynewlen(ptr noundef %i.ul, i64 noundef %i.um) #20 ; 4 uses
  %.not1021 = icmp eq ptr %i.un, null
  br i1 %.not1021, label %bb.hx, label %bb.ht

bb.ht:                                            ; preds = %.lr.ph1448
  %i.uo = call i32 @dictAdd(ptr noundef %i.ug, ptr noundef nonnull %i.un, ptr noundef null) #20
  %.not1022 = icmp eq i32 %i.uo, 0
  br i1 %.not1022, label %bb.hu, label %bb.hx

bb.hu:                                            ; preds = %bb.ht
  %i.up = load i32, ptr %i.ar, align 4, !tbaa !18
  %i.uq = zext i32 %i.up to i64
  %i.ur = load i32, ptr %i.as, align 4, !tbaa !18
  %i.us = zext i32 %i.ur to i64
  %i.ut = add nuw nsw i64 %i.us, %i.uq
  %i.uu = call i32 @lpSafeToAdd(ptr noundef %.08231445, i64 noundef %i.ut) #20
  %.not1023 = icmp eq i32 %i.uu, 0
  br i1 %.not1023, label %bb.hx, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.uv = load ptr, ptr %i.ap, align 8, !tbaa !70
  %i.uw = load i32, ptr %i.ar, align 4, !tbaa !18
  %i.ux = call ptr @lpAppend(ptr noundef %.08231445, ptr noundef %i.uv, i32 noundef %i.uw) #20
  %i.uy = load ptr, ptr %i.aq, align 8, !tbaa !70
  %i.uz = load i32, ptr %i.as, align 4, !tbaa !18
  %i.va = call ptr @lpAppend(ptr noundef %i.ux, ptr noundef %i.uy, i32 noundef %i.uz) #20 ; 2 uses
  %i.vb = call ptr @zipmapNext(ptr noundef nonnull %i.ui, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.as) #20 ; 2 uses
  %.not1020 = icmp eq ptr %i.vb, null
  br i1 %.not1020, label %._crit_edge1449.loopexit, label %.lr.ph1448, !llvm.loop !273

._crit_edge1449.loopexit:                         ; preds = %bb.hv
  %i.vc = zext i32 %.2821 to i64
  br label %._crit_edge1449

._crit_edge1449:                                  ; preds = %._crit_edge1449.loopexit, %bb.hs
  %.0823.lcssa = phi ptr [ %i.uc, %bb.hs ], [ %i.va, %._crit_edge1449.loopexit ]
  %.0819.lcssa = phi i64 [ 0, %bb.hs ], [ %i.vc, %._crit_edge1449.loopexit ]
  call void @dictRelease(ptr noundef %i.ug) #20
  %i.vd = load ptr, ptr %i.ud, align 8, !tbaa !87
  call void @zfree(ptr noundef %i.vd) #20
  store ptr %.0823.lcssa, ptr %i.ud, align 8, !tbaa !87
  %i.ve = load i64, ptr %i.ty, align 8
  %i.vf = and i64 %i.ve, -256
  %i.vg = or disjoint i64 %i.vf, 180
  store i64 %i.vg, ptr %i.ty, align 8
  %i.vh = call i64 @hashTypeLength(ptr noundef %i.ty, i32 noundef 0) #20
  %i.vi = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7936), align 8, !tbaa !290
  %i.vj = icmp ugt i64 %i.vh, %i.vi
  %i.vk = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7944), align 8
  %i.vl = icmp ult i64 %i.vk, %.0819.lcssa
  %or.cond1090 = select i1 %i.vj, i1 true, i1 %i.vl
  br i1 %or.cond1090, label %bb.hw, label %.thread1252

bb.hw:                                            ; preds = %._crit_edge1449
  call void @hashTypeConvert(ptr noundef null, ptr noundef nonnull %i.ty, i32 noundef 2) #20
  br label %.thread1252

.thread1252:                                      ; preds = %bb.hw, %._crit_edge1449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #20
  br label %.thread1266

bb.hx:                                            ; preds = %.lr.ph1448, %bb.ht, %bb.hu
  %.lcssa = phi ptr [ null, %.lr.ph1448 ], [ %i.un, %bb.ht ], [ %i.un, %bb.hu ]
  %i.vm = load i32, ptr %i.ar, align 4, !tbaa !18
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 2839, ptr noundef nonnull @.str.74, i32 noundef %i.vm)
  call void @dictRelease(ptr noundef %i.ug) #20
  call void @sdsfree(ptr noundef %.lcssa) #20
  call void @zfree(ptr noundef nonnull %i.tw) #20
  store ptr null, ptr %i.ud, align 8, !tbaa !87
  call void @decrRefCount(ptr noundef %i.ty) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #20
  br label %.thread1270

bb.hy:                                            ; preds = %bb.hp
  %i.vn = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8032), align 8, !tbaa !284
  %i.vo = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8036), align 4, !tbaa !285
  %i.vp = call ptr @quicklistNew(i32 noundef %i.vn, i32 noundef %i.vo) #20 ; 5 uses
  %i.vq = load i64, ptr %i.ao, align 8, !tbaa !80
  %i.vr = call i32 @ziplistValidateIntegrity(ptr noundef nonnull %i.tw, i64 noundef %i.vq, i32 noundef 1, ptr noundef nonnull @_listZiplistEntryConvertAndValidate, ptr noundef %i.vp) #20
  %.not1018 = icmp eq i32 %i.vr, 0
  br i1 %.not1018, label %.thread1254.thread, label %bb.hz

.thread1254.thread:                               ; preds = %bb.hy
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 2873, ptr noundef nonnull @.str.75)
  call void @zfree(ptr noundef nonnull %i.tw) #20
  %i.vs = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store ptr null, ptr %i.vs, align 8, !tbaa !87
  call void @decrRefCount(ptr noundef %i.ty) #20
  call void @quicklistRelease(ptr noundef %i.vp) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #20
  br label %.critedge1104

bb.hz:                                            ; preds = %bb.hy
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !80
  %i.vv = icmp eq i64 %i.vu, 0
  call void @zfree(ptr noundef nonnull %i.tw) #20
  br i1 %i.vv, label %.thread1254.thread1289, label %bb.ia

.thread1254.thread1289:                           ; preds = %bb.hz
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store ptr null, ptr %i.vw, align 8, !tbaa !87
  call void @decrRefCount(ptr noundef %i.ty) #20
  call void @quicklistRelease(ptr noundef nonnull %i.vp) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #20
  br label %bb.nk

bb.ia:                                            ; preds = %bb.hz
  %i.vx = load i64, ptr %i.ty, align 8
  %i.vy = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store ptr %i.vp, ptr %i.vy, align 8, !tbaa !87
  %i.vz = and i64 %i.vx, -256
  %i.wa = or disjoint i64 %i.vz, 145
  store i64 %i.wa, ptr %i.ty, align 8
  br label %.thread1266

bb.ib:                                            ; preds = %bb.hp
  br i1 %.0900.in, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.wb = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3104), align 8, !tbaa !295
  %i.wc = add nsw i64 %i.wb, 1
  store i64 %i.wc, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3104), align 8, !tbaa !295
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %i.wd = load i64, ptr %i.ao, align 8, !tbaa !80
  %i.we = call i32 @intsetValidateIntegrity(ptr noundef nonnull %i.tw, i64 noundef %i.wd, i32 noundef %.0900) #20
  %.not1017 = icmp eq i32 %i.we, 0
  br i1 %.not1017, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 2898, ptr noundef nonnull @.str.76)
  call void @zfree(ptr noundef nonnull %i.tw) #20
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store ptr null, ptr %i.wf, align 8, !tbaa !87
  call void @decrRefCount(ptr noundef %i.ty) #20
  br label %.thread1270

bb.if:                                            ; preds = %bb.id
  %i.wg = load i64, ptr %i.ty, align 8
  %i.wh = and i64 %i.wg, -256
  %i.wi = or disjoint i64 %i.wh, 98
  store i64 %i.wi, ptr %i.ty, align 8
  %i.wj = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !87
  %i.wl = call i32 @intsetLen(ptr noundef %i.wk) #20
  %i.wm = zext i32 %i.wl to i64
  %i.wn = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7952), align 8, !tbaa !286
  %i.wo = icmp ult i64 %i.wn, %i.wm
  br i1 %i.wo, label %bb.ig, label %.thread1266

bb.ig:                                            ; preds = %bb.if
  call void @setTypeConvert(ptr noundef nonnull %i.ty, i32 noundef 2) #20
  br label %.thread1266

bb.ih:                                            ; preds = %bb.hp
  br i1 %.0900.in, label %.split906, label %.split

.split:                                           ; preds = %bb.ih
  %i.wp = load i64, ptr %i.ao, align 8, !tbaa !80
  %i.wq = call i32 @lpValidateIntegrity(ptr noundef nonnull %i.tw, i64 noundef %i.wp, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  br label %bb.ii

.split906:                                        ; preds = %bb.ih
  %i.wr = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3104), align 8, !tbaa !295
  %i.ws = add nsw i64 %i.wr, 1
  store i64 %i.ws, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3104), align 8, !tbaa !295
  %i.wt = load i64, ptr %i.ao, align 8, !tbaa !80
  %i.wu = call i32 @lpValidateIntegrityAndDups(ptr noundef nonnull %i.tw, i64 noundef %i.wt, i32 noundef 1, i32 noundef 1)
  br label %bb.ii

bb.ii:                                            ; preds = %.split, %.split906
  %phi.call = phi i32 [ %i.wq, %.split ], [ %i.wu, %.split906 ]
  %.not1016 = icmp eq i32 %phi.call, 0
  br i1 %.not1016, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 2912, ptr noundef nonnull @.str.77)
  call void @zfree(ptr noundef nonnull %i.tw) #20
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store ptr null, ptr %i.wv, align 8, !tbaa !87
  call void @decrRefCount(ptr noundef %i.ty) #20
  br label %.thread1270

bb.ik:                                            ; preds = %bb.ii
  %i.ww = load i64, ptr %i.ty, align 8
  %i.wx = and i64 %i.ww, -256
  %i.wy = or disjoint i64 %i.wx, 178
  store i64 %i.wy, ptr %i.ty, align 8
  %i.wz = call i64 @setTypeSize(ptr noundef %i.ty) #20
  %i.xa = icmp eq i64 %i.wz, 0
  br i1 %i.xa, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  call void @zfree(ptr noundef nonnull %i.tw) #20
  %i.xb = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store ptr null, ptr %i.xb, align 8, !tbaa !87
  br label %.thread1274

bb.im:                                            ; preds = %bb.ik
  %i.xc = call i64 @setTypeSize(ptr noundef nonnull %i.ty) #20
  %i.xd = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7960), align 8, !tbaa !287
  %i.xe = icmp ugt i64 %i.xc, %i.xd
  br i1 %i.xe, label %bb.in, label %.thread1266

bb.in:                                            ; preds = %bb.im
  call void @setTypeConvert(ptr noundef nonnull %i.ty, i32 noundef 2) #20
  br label %.thread1266

bb.io:                                            ; preds = %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #20
  %i.xf = load i64, ptr %i.ao, align 8, !tbaa !80 ; 2 uses
  %i.xg = call ptr @lpNew(i64 noundef %i.xf) #20
  store ptr %i.xg, ptr %i.at, align 8, !tbaa !70
  %i.xh = call i32 @ziplistPairsConvertAndValidateIntegrity(ptr noundef nonnull %i.tw, i64 noundef %i.xf, ptr noundef nonnull %i.at)
  %.not1015 = icmp eq i32 %i.xh, 0
  br i1 %.not1015, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 2934, ptr noundef nonnull @.str.78)
  %i.xi = load ptr, ptr %i.at, align 8, !tbaa !70
  call void @zfree(ptr noundef %i.xi) #20
  call void @zfree(ptr noundef nonnull %i.tw) #20
  %i.xj = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store ptr null, ptr %i.xj, align 8, !tbaa !87
  br label %bb.iu

bb.iq:                                            ; preds = %bb.io
  %i.xk = getelementptr inbounds nuw i8, ptr %i.ty, i64 8 ; 4 uses
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !87
  call void @zfree(ptr noundef %i.xl) #20
  %i.xm = load i64, ptr %i.ty, align 8
  %i.xn = load ptr, ptr %i.at, align 8, !tbaa !70
  store ptr %i.xn, ptr %i.xk, align 8, !tbaa !87
  %i.xo = and i64 %i.xm, -256
  %i.xp = or disjoint i64 %i.xo, 179
  store i64 %i.xp, ptr %i.ty, align 8
  %i.xq = call i64 @zsetLength(ptr noundef %i.ty) #20
  %i.xr = icmp eq i64 %i.xq, 0
  br i1 %i.xr, label %bb.iu, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.xs = call i64 @zsetLength(ptr noundef nonnull %i.ty) #20
  %i.xt = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7976), align 8, !tbaa !289
  %i.xu = icmp ugt i64 %i.xs, %i.xt
  br i1 %i.xu, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  call void @zsetConvert(ptr noundef nonnull %i.ty, i32 noundef 7) #20
  br label %.thread1258

bb.it:                                            ; preds = %bb.ir
  %i.xv = load ptr, ptr %i.xk, align 8, !tbaa !87
  %i.xw = call ptr @lpShrinkToFit(ptr noundef %i.xv) #20
  store ptr %i.xw, ptr %i.xk, align 8, !tbaa !87
  br label %.thread1258

.thread1258:                                      ; preds = %bb.it, %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #20
  br label %.thread1266

bb.iu:                                            ; preds = %bb.iq, %bb.ip
  %.25872 = phi i32 [ 1, %bb.ip ], [ 2, %bb.iq ]
  call void @decrRefCount(ptr noundef nonnull %i.ty) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #20
  br label %.thread1254

bb.iv:                                            ; preds = %bb.hp
  br i1 %.0900.in, label %.split909, label %.split907

.split907:                                        ; preds = %bb.iv
  %i.xx = load i64, ptr %i.ao, align 8, !tbaa !80
  %i.xy = call i32 @lpValidateIntegrity(ptr noundef nonnull %i.tw, i64 noundef %i.xx, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  br label %bb.iw

.split909:                                        ; preds = %bb.iv
  %i.xz = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3104), align 8, !tbaa !295
  %i.ya = add nsw i64 %i.xz, 1
  store i64 %i.ya, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3104), align 8, !tbaa !295
  %i.yb = load i64, ptr %i.ao, align 8, !tbaa !80
  %i.yc = call i32 @lpValidateIntegrityAndDups(ptr noundef nonnull %i.tw, i64 noundef %i.yb, i32 noundef 1, i32 noundef 2)
  br label %bb.iw

bb.iw:                                            ; preds = %.split907, %.split909
  %phi.call910 = phi i32 [ %i.xy, %.split907 ], [ %i.yc, %.split909 ]
  %.not1014 = icmp eq i32 %phi.call910, 0
  br i1 %.not1014, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 2960, ptr noundef nonnull @.str.79)
  call void @zfree(ptr noundef nonnull %i.tw) #20
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store ptr null, ptr %i.yd, align 8, !tbaa !87
  call void @decrRefCount(ptr noundef %i.ty) #20
  br label %.thread1270

bb.iy:                                            ; preds = %bb.iw
  %i.ye = load i64, ptr %i.ty, align 8
  %i.yf = and i64 %i.ye, -256
  %i.yg = or disjoint i64 %i.yf, 179
  store i64 %i.yg, ptr %i.ty, align 8
  %i.yh = call i64 @zsetLength(ptr noundef %i.ty) #20
  %i.yi = icmp eq i64 %i.yh, 0
  br i1 %i.yi, label %.thread1274, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.yj = call i64 @zsetLength(ptr noundef nonnull %i.ty) #20
  %i.yk = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7976), align 8, !tbaa !289
  %i.yl = icmp ugt i64 %i.yj, %i.yk
  br i1 %i.yl, label %bb.ja, label %.thread1266

bb.ja:                                            ; preds = %bb.iz
  call void @zsetConvert(ptr noundef nonnull %i.ty, i32 noundef 7) #20
  br label %.thread1266

bb.jb:                                            ; preds = %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #20
  %i.ym = load i64, ptr %i.ao, align 8, !tbaa !80 ; 2 uses
  %i.yn = call ptr @lpNew(i64 noundef %i.ym) #20
  store ptr %i.yn, ptr %i.au, align 8, !tbaa !70
  %i.yo = call i32 @ziplistPairsConvertAndValidateIntegrity(ptr noundef nonnull %i.tw, i64 noundef %i.ym, ptr noundef nonnull %i.au)
  %.not1013 = icmp eq i32 %i.yo, 0
  br i1 %.not1013, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 2980, ptr noundef nonnull @.str.80)
  %i.yp = load ptr, ptr %i.au, align 8, !tbaa !70
  call void @zfree(ptr noundef %i.yp) #20
  call void @zfree(ptr noundef nonnull %i.tw) #20
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store ptr null, ptr %i.yq, align 8, !tbaa !87
  br label %bb.jh

bb.jd:                                            ; preds = %bb.jb
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ty, i64 8 ; 4 uses
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !87
  call void @zfree(ptr noundef %i.ys) #20
  %i.yt = load ptr, ptr %i.au, align 8, !tbaa !70
  store ptr %i.yt, ptr %i.yr, align 8, !tbaa !87
  %i.yu = load i64, ptr %i.ty, align 8
  %i.yv = and i64 %i.yu, -256
  %i.yw = or disjoint i64 %i.yv, 180
  store i64 %i.yw, ptr %i.ty, align 8
  %i.yx = call i64 @hashTypeLength(ptr noundef %i.ty, i32 noundef 0) #20
  %i.yy = icmp eq i64 %i.yx, 0
  br i1 %i.yy, label %bb.jh, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.yz = call i64 @hashTypeLength(ptr noundef nonnull %i.ty, i32 noundef 0) #20
  %i.za = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7936), align 8, !tbaa !290
  %i.zb = icmp ugt i64 %i.yz, %i.za
  br i1 %i.zb, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  call void @hashTypeConvert(ptr noundef null, ptr noundef nonnull %i.ty, i32 noundef 2) #20
  br label %.thread1262

bb.jg:                                            ; preds = %bb.je
  %i.zc = load ptr, ptr %i.yr, align 8, !tbaa !87
  %i.zd = call ptr @lpShrinkToFit(ptr noundef %i.zc) #20
  store ptr %i.zd, ptr %i.yr, align 8, !tbaa !87
  br label %.thread1262

.thread1262:                                      ; preds = %bb.jg, %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #20
  br label %.thread1266

bb.jh:                                            ; preds = %bb.jd, %bb.jc
  %.26873 = phi i32 [ 1, %bb.jc ], [ 2, %bb.jd ]
  call void @decrRefCount(ptr noundef nonnull %i.ty) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #20
  br label %.thread1254

bb.ji:                                            ; preds = %bb.hp, %bb.hp, %bb.hp
  %i.ze = load i64, ptr %i.ty, align 8
  %i.zf = and i64 %i.ze, -16
  %i.zg = or disjoint i64 %i.zf, 4                ; 2 uses
  store i64 %i.zg, ptr %i.ty, align 8
  switch i32 %0, label %bb.jk [
    i32 25, label %bb.jj
    i32 23, label %bb.jj
  ]

bb.jj:                                            ; preds = %bb.ji, %bb.ji
  %i.zh = call ptr @listpackExCreate() #20        ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  store ptr %i.tw, ptr %i.zi, align 8, !tbaa !294
  %i.zj = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store ptr %i.zh, ptr %i.zj, align 8, !tbaa !87
  %i.zk = load i64, ptr %i.ty, align 8
  %i.zl = and i64 %i.zk, -241
  %i.zm = or disjoint i64 %i.zl, 192
  br label %bb.jl

bb.jk:                                            ; preds = %bb.ji
  %i.zn = and i64 %i.zg, -252
  %i.zo = or disjoint i64 %i.zn, 176
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj
  %storemerge = phi i64 [ %i.zo, %bb.jk ], [ %i.zm, %bb.jj ]
  store i64 %storemerge, ptr %i.ty, align 8
  br i1 %.0900.in, label %.split913, label %.split911

.split911:                                        ; preds = %bb.jl
  %i.zp = load i64, ptr %i.ao, align 8, !tbaa !80
  %i.zq = call i32 @lpValidateIntegrity(ptr noundef nonnull %i.tw, i64 noundef %i.zp, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  br label %bb.jm

.split913:                                        ; preds = %bb.jl
  %i.zr = select i1 %i.tr, i32 2, i32 3
  %i.zs = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3104), align 8, !tbaa !295
  %i.zt = add nsw i64 %i.zs, 1
  store i64 %i.zt, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3104), align 8, !tbaa !295
  %i.zu = load i64, ptr %i.ao, align 8, !tbaa !80
  %i.zv = call i32 @lpValidateIntegrityAndDups(ptr noundef nonnull %i.tw, i64 noundef %i.zu, i32 noundef 1, i32 noundef %i.zr)
  br label %bb.jm

bb.jm:                                            ; preds = %.split911, %.split913
  %phi.call914 = phi i32 [ %i.zq, %.split911 ], [ %i.zv, %.split913 ]
  %.not1012 = icmp eq i32 %phi.call914, 0
  br i1 %.not1012, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 3025, ptr noundef nonnull @.str.81)
  call void @decrRefCount(ptr noundef nonnull %i.ty) #20
  br label %.thread1270

bb.jo:                                            ; preds = %bb.jm
  %i.zw = call i64 @hashTypeLength(ptr noundef nonnull %i.ty, i32 noundef 0) #20
  %i.zx = icmp eq i64 %i.zw, 0
  br i1 %i.zx, label %.thread1274, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.zy = call i64 @hashTypeLength(ptr noundef nonnull %i.ty, i32 noundef 0) #20
  %i.zz = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7936), align 8, !tbaa !290
  %i.aaa = icmp ugt i64 %i.zy, %i.zz
  br i1 %i.aaa, label %bb.jq, label %.thread1266

bb.jq:                                            ; preds = %bb.jp
  call void @hashTypeConvert(ptr noundef null, ptr noundef nonnull %i.ty, i32 noundef 2) #20
  br label %.thread1266

bb.jr:                                            ; preds = %bb.hp
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 3044, ptr noundef nonnull @.str.82, i32 noundef %0)
  br label %.thread1266

.thread1266:                                      ; preds = %.thread1262, %.thread1258, %bb.ia, %.thread1252, %bb.jp, %bb.jq, %bb.iz, %bb.ja, %bb.im, %bb.in, %bb.if, %bb.ig, %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #20
  br label %.critedge1092

.thread1270:                                      ; preds = %bb.ho, %bb.jn, %.critedge1084, %bb.hx, %bb.hr, %bb.ie, %bb.ij, %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #20
  br label %.critedge1104

.thread1274:                                      ; preds = %bb.jo, %bb.iy, %bb.il
  call void @decrRefCount(ptr noundef nonnull %i.ty) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #20
  br label %bb.nk

.thread1254:                                      ; preds = %bb.jh, %bb.iu
  %.28875 = phi i32 [ %.25872, %bb.iu ], [ %.26873, %bb.jh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #20
  %cond = icmp ne i32 %.28875, 2
  %brmerge = or i1 %.not, %cond
  br i1 %brmerge, label %.critedge1104, label %bb.nl

bb.js:                                            ; preds = %bb.hl, %bb.hl, %bb.hl, %bb.hl
  %i.aab = tail call ptr @createStreamObject() #20 ; 37 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !87 ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #20
  %i.aae = call i32 @rdbLoadLenByRef(ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.w)
  %i.aaf = icmp eq i32 %i.aae, -1
  %i.aag = load i64, ptr %i.w, align 8            ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #20
  %i.aah = icmp eq i64 %i.aag, -1
  %i.aai = select i1 %i.aaf, i1 true, i1 %i.aah
  br i1 %i.aai, label %bb.jt, label %.preheader1297

.preheader1297:                                   ; preds = %bb.js
  %.not9851430 = icmp eq i64 %i.aag, 0
  br i1 %.not9851430, label %._crit_edge1432, label %.lr.ph1431

.lr.ph1431:                                       ; preds = %.preheader1297
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aad, i64 72 ; 2 uses
  br label %bb.ju

bb.jt:                                            ; preds = %bb.js
  tail call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 0, i32 noundef 3056, ptr noundef nonnull @.str.83)
  tail call void @decrRefCount(ptr noundef nonnull %i.aab) #20
  br label %.critedge1104

bb.ju:                                            ; preds = %.lr.ph1431, %bb.kh
  %.in1454 = phi i64 [ %i.aag, %.lr.ph1431 ], [ %i.aak, %bb.kh ]
  %i.aak = add i64 %.in1454, -1                   ; 2 uses
  %i.aal = call ptr @rdbGenericLoadStringObjectUsable(ptr noundef %1, i32 noundef 4, ptr noundef null, ptr noundef null) ; 8 uses
  %i.aam = icmp eq ptr %i.aal, null
  br i1 %i.aam, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 0, i32 noundef 3067, ptr noundef nonnull @.str.84)
  call void @decrRefCount(ptr noundef %i.aab) #20
  br label %.critedge1104

bb.jw:                                            ; preds = %bb.ju
  %i.aan = call fastcc i64 @sdslen(ptr noundef nonnull %i.aal)
  %.not1008 = icmp eq i64 %i.aan, 16
  br i1 %.not1008, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 3073, ptr noundef nonnull @.str.85)
  call void @sdsfree(ptr noundef nonnull %i.aal) #20
  call void @decrRefCount(ptr noundef %i.aab) #20
  br label %.critedge1104

bb.jy:                                            ; preds = %bb.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #20
  %i.aao = call ptr @rdbGenericLoadStringObjectUsable(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %i.av, ptr noundef null) ; 8 uses
  %i.aap = icmp eq ptr %i.aao, null
  br i1 %i.aap, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 0, i32 noundef 3084, ptr noundef nonnull @.str.86)
  call void @sdsfree(ptr noundef nonnull %i.aal) #20
  call void @decrRefCount(ptr noundef %i.aab) #20
  br label %.critedge1104.critedge

bb.ka:                                            ; preds = %bb.jy
  br i1 %.0900.in, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.aaq = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3104), align 8, !tbaa !295
  %i.aar = add nsw i64 %i.aaq, 1
  store i64 %i.aar, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3104), align 8, !tbaa !295
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %i.aas = load i64, ptr %i.av, align 8, !tbaa !80
  %i.aat = call i32 @streamValidateListpackIntegrity(ptr noundef nonnull %i.aao, i64 noundef %i.aas, i32 noundef %.0900) #20
  %.not1009 = icmp eq i32 %i.aat, 0
  br i1 %.not1009, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 3091, ptr noundef nonnull @.str.87)
  call void @sdsfree(ptr noundef nonnull %i.aal) #20
  call void @decrRefCount(ptr noundef %i.aab) #20
  call void @zfree(ptr noundef nonnull %i.aao) #20
  br label %.critedge1104.critedge

bb.ke:                                            ; preds = %bb.kc
  %i.aau = call ptr @lpFirst(ptr noundef nonnull %i.aao) #20
  %i.aav = icmp eq ptr %i.aau, null
  br i1 %i.aav, label %bb.kf, label %bb.kg

bb.kf:                                            ; preds = %bb.ke
  call void (i32, i32, ptr, ...) @rdbReportError(i32 noundef 1, i32 noundef 3103, ptr noundef nonnull @.str.88)
  call void @sdsfree(ptr noundef nonnull %i.aal) #20
  call void @decrRefCount(ptr noundef %i.aab) #20
  call void @zfree(ptr noundef nonnull %i.aao) #20
  br label %.critedge1104.critedge

bb.kg:                                            ; preds = %bb.ke
  %i.aaw = load ptr, ptr %i.aad, align 8, !tbaa !120
  %i.aax = call i32 @raxTryInsert(ptr noundef %i.aaw, ptr noundef nonnull %i.aal, i64 noundef 16, ptr noundef nonnull %i.aao, ptr noundef null) #20
  call void @sdsfree(ptr noundef nonnull %i.aal) #20
  %.not1010.not = icmp eq i32 %i.aax, 0
  br i1 %.not1010.not, label %.thread1277, label %bb.kh

.thread1277:                                      ; preds = %bb.kg
end_hunk_0
