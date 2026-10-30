Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaWriteVer?download=true
inline.NumInlined: 517
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 46
begin_hunk_0_@Cba_ManWriteVerilogNtk:bb.a

Vec_StrPush.exit.i1197:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1204, %bb.gg, %.Vec_StrPush.exit_crit_edge.i1195
  %i.tg = phi i32 [ %i.st, %.Vec_StrPush.exit_crit_edge.i1195 ], [ %i.st, %bb.gg ], [ %.pre9.i1206, %Vec_StrGrow.exit11.sink.split.i.i1204 ] ; 2 uses
  %i.th = phi ptr [ %.pre.i1196, %.Vec_StrPush.exit_crit_edge.i1195 ], [ %.pre8.i1202, %bb.gg ], [ %i.tf, %Vec_StrGrow.exit11.sink.split.i.i1204 ]
  %i.ti = add nsw i32 %i.tg, 1
  store i32 %i.ti, ptr %i.da, align 4, !tbaa !23
  %i.tj = sext i32 %i.tg to i64
  %i.tk = getelementptr inbounds i8, ptr %i.th, i64 %i.tj
  store i8 10, ptr %i.tk, align 1, !tbaa !20
  %i.tl = getelementptr i8, ptr %0, i64 92        ; 2 uses
  %.val8413057 = load i32, ptr %i.tl, align 4, !tbaa !23 ; 2 uses
  %i.tm = icmp sgt i32 %.val8413057, 1
  br i1 %i.tm, label %.lr.ph3062, label %.preheader

.lr.ph3062:                                       ; preds = %Vec_StrPush.exit.i1197
  %i.tn = getelementptr i8, ptr %0, i64 96        ; 3 uses
  %.not795 = icmp ne i32 %1, 0
  %i.to = getelementptr i8, ptr %0, i64 128       ; 12 uses
  %i.tp = getelementptr i8, ptr %0, i64 112       ; 42 uses
  %i.tq = getelementptr i8, ptr %0, i64 144       ; 33 uses
  %i.tr = getelementptr i8, ptr %0, i64 188       ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.tt = getelementptr i8, ptr %0, i64 192       ; 6 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 6 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 9 uses
  %i.tw = getelementptr i8, ptr %0, i64 208       ; 18 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 6 uses
  %i.tz = getelementptr i8, ptr %0, i64 272       ; 10 uses
  br label %bb.gk

.preheader:                                       ; preds = %Vec_StrPrintStr.exit1208, %Vec_StrPush.exit.i1197
  %.val8673063 = load i32, ptr %i.h, align 4, !tbaa !26
  %i.ua = icmp sgt i32 %.val8673063, 0
  br i1 %i.ua, label %.lr.ph3065, label %.lr.ph.i2953

.lr.ph3065:                                       ; preds = %.preheader
  %i.ub = getelementptr i8, ptr %0, i64 48
  %i.uc = getelementptr i8, ptr %0, i64 112
  %i.ud = getelementptr i8, ptr %0, i64 144
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.ug = getelementptr i8, ptr %0, i64 272       ; 5 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.uj = getelementptr i8, ptr %0, i64 208       ; 5 uses
  br label %bb.bpc

bb.gk:                                            ; preds = %.lr.ph3062, %Vec_StrPrintStr.exit1208
  %.val8413179 = phi i32 [ %.val8413057, %.lr.ph3062 ], [ %.val841, %Vec_StrPrintStr.exit1208 ]
  %indvars.iv3110 = phi i64 [ 1, %.lr.ph3062 ], [ %indvars.iv.next3111, %Vec_StrPrintStr.exit1208 ] ; 84 uses
  %.val972 = load ptr, ptr %i.tn, align 8, !tbaa !25
  %i.uk = getelementptr inbounds nuw i8, ptr %.val972, i64 %indvars.iv3110
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !20  ; 19 uses
  %i.um = add i8 %i.ul, -90
  %i.un = icmp ult i8 %i.um, -87
  %.not2990 = icmp eq i8 %i.ul, 88
  %or.cond = or i1 %.not2990, %i.un
  %.not2991 = icmp eq i8 %i.ul, 89
  %or.cond3004 = and i1 %.not795, %.not2991
  %or.cond3066 = or i1 %or.cond, %or.cond3004
  br i1 %or.cond3066, label %Vec_StrPrintStr.exit1208, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  switch i8 %i.ul, label %bb.oz [
    i8 3, label %bb.gm
    i8 82, label %bb.lw
    i8 79, label %bb.lw
    i8 77, label %bb.lw
  ]

bb.gm:                                            ; preds = %bb.gl
  %.val5.i.i = load i32, ptr %i.tr, align 4, !tbaa !26 ; 4 uses
  %i.uo = icmp slt i32 %.val5.i.i, 1
  %.pre3199 = add nuw nsw i64 %indvars.iv3110, 1  ; 13 uses
  br i1 %i.uo, label %Cba_ObjNtk.exit, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.up = zext nneg i32 %.val5.i.i to i64         ; 3 uses
  %.not.i.not.i.i.i.i = icmp samesign ult i64 %indvars.iv3110, %i.up
  br i1 %.not.i.not.i.i.i.i, label %Cba_ObjNtkId.exit.i, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.uq = load i32, ptr %i.ts, align 8, !tbaa !42 ; 4 uses
  %i.ur = shl nsw i32 %i.uq, 1                    ; 2 uses
  %i.us = sext i32 %i.ur to i64
  %.not.i.i.i.i = icmp slt i64 %indvars.iv3110, %i.us
  br i1 %.not.i.i.i.i, label %bb.gt, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ut = load ptr, ptr %i.tt, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.ut, null
  %i.uu = shl nuw nsw i64 %.pre3199, 2            ; 2 uses
  br i1 %.not9.i.i.i.i.i.i, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.uv = tail call ptr @realloc(ptr noundef nonnull %i.ut, i64 noundef %i.uu) #18
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gp
  %i.uw = tail call noalias ptr @malloc(i64 noundef %i.uu) #19
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.ux = phi ptr [ %i.uv, %bb.gq ], [ %i.uw, %bb.gr ]
  store ptr %i.ux, ptr %i.tt, align 8, !tbaa !27
  %i.uy = trunc nuw nsw i64 %.pre3199 to i32
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i

bb.gt:                                            ; preds = %bb.go
  %i.uz = sext i32 %i.uq to i64
  %.not.i.i.not.i.i.i.i = icmp slt i64 %indvars.iv3110, %i.uz
  br i1 %.not.i.i.not.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.va = icmp slt i32 %i.uq, 1073741823
  %spec.select.i.i.i.i.i = select i1 %i.va, i32 %i.ur, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i.i = icmp slt i32 %i.uq, %spec.select.i.i.i.i.i
  br i1 %.not.i22.i.i.i.i.i, label %bb.gv, label %Vec_IntGrow.exit.i.i.i.i.i

bb.gv:                                            ; preds = %bb.gu
  %i.vb = load ptr, ptr %i.tt, align 8, !tbaa !27 ; 2 uses
  %.not9.i23.i.i.i.i.i = icmp eq ptr %i.vb, null
  %i.vc = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.vd = shl nuw nsw i64 %i.vc, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i.i.i, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ve = tail call ptr @realloc(ptr noundef nonnull %i.vb, i64 noundef %i.vd) #18
  br label %bb.gy

bb.gx:                                            ; preds = %bb.gv
  %i.vf = tail call noalias ptr @malloc(i64 noundef %i.vd) #19
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.vg = phi ptr [ %i.ve, %bb.gw ], [ %i.vf, %bb.gx ]
  store ptr %i.vg, ptr %i.tt, align 8, !tbaa !27
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i.i:            ; preds = %bb.gy, %bb.gs
  %spec.select.sink.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %bb.gy ], [ %i.uy, %bb.gs ]
  store i32 %spec.select.sink.i.i.i.i.i, ptr %i.ts, align 8, !tbaa !42
  %.pre.i.i.i.i = load i32, ptr %i.tr, align 4, !tbaa !26 ; 2 uses
  %.pre3197 = sext i32 %.pre.i.i.i.i to i64
  br label %Vec_IntGrow.exit.i.i.i.i.i

Vec_IntGrow.exit.i.i.i.i.i:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i.i, %bb.gu, %bb.gt
  %.pre-phi3198 = phi i64 [ %.pre3197, %Vec_IntGrow.exit.sink.split.i.i.i.i.i ], [ %i.up, %bb.gu ], [ %i.up, %bb.gt ] ; 2 uses
  %i.vh = phi i32 [ %.pre.i.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i.i ], [ %.val5.i.i, %bb.gu ], [ %.val5.i.i, %bb.gt ]
  %.not3.i.i.i.i = icmp sgt i64 %.pre-phi3198, %indvars.iv3110
  br i1 %.not3.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %Vec_IntGrow.exit.i.i.i.i.i
  %i.vi = load ptr, ptr %i.tt, align 8, !tbaa !27
  %i.vj = shl nsw i64 %.pre-phi3198, 2
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.vi, i64 %i.vj
  %i.vk = trunc nuw nsw i64 %indvars.iv3110 to i32
  %i.vl = sub i32 %i.vk, %i.vh
  %i.vm = zext i32 %i.vl to i64
  %i.vn = shl nuw nsw i64 %i.vm, 2
  %i.vo = add nuw nsw i64 %i.vn, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i.i, i8 0, i64 %i.vo, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i.i
  %i.vp = trunc nuw nsw i64 %.pre3199 to i32
  store i32 %i.vp, ptr %i.tr, align 4, !tbaa !26
  br label %Cba_ObjNtkId.exit.i

Cba_ObjNtkId.exit.i:                              ; preds = %._crit_edge.i.i.i.i.i, %bb.gn
  %.val.i.i.i.i = load ptr, ptr %i.tt, align 8, !tbaa !27
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i, i64 %indvars.iv3110
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !28 ; 3 uses
  %.val.i1211 = load ptr, ptr %0, align 8, !tbaa !46 ; 2 uses
  %i.vs = icmp sgt i32 %i.vr, 0
  br i1 %i.vs, label %Cba_ManNtkIsOk.exit.i.i.i, label %Cba_ObjNtk.exit

Cba_ManNtkIsOk.exit.i.i.i:                        ; preds = %Cba_ObjNtkId.exit.i
  %i.vt = getelementptr i8, ptr %.val.i1211, i64 1564
  %.val.i.i.i2.i = load i32, ptr %i.vt, align 4, !tbaa !39
  %.not.i.i.i = icmp slt i32 %i.vr, %.val.i.i.i2.i
  br i1 %.not.i.i.i, label %bb.gz, label %Cba_ObjNtk.exit

bb.gz:                                            ; preds = %Cba_ManNtkIsOk.exit.i.i.i
  %i.vu = getelementptr i8, ptr %.val.i1211, i64 1568
  %.val.i.i.i = load ptr, ptr %i.vu, align 8, !tbaa !40
  %i.vv = zext nneg i32 %i.vr to i64
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.vv
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !41
  br label %Cba_ObjNtk.exit

Cba_ObjNtk.exit:                                  ; preds = %bb.gm, %Cba_ObjNtkId.exit.i, %Cba_ManNtkIsOk.exit.i.i.i, %bb.gz
  %i.vy = phi ptr [ %i.vx, %bb.gz ], [ null, %Cba_ObjNtkId.exit.i ], [ null, %Cba_ManNtkIsOk.exit.i.i.i ], [ null, %bb.gm ] ; 7 uses
  %.val970 = load ptr, ptr %i.to, align 8, !tbaa !27 ; 3 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %.val970, i64 %indvars.iv3110
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !28 ; 2 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %.val970, i64 %.pre3199
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !28
  %i.wd = icmp slt i32 %i.wa, %i.wc
  br i1 %i.wd, label %.lr.ph3027, label %.lr.ph.i1246

.lr.ph3027:                                       ; preds = %Cba_ObjNtk.exit
  %.val985 = load ptr, ptr %i.x, align 8, !tbaa !92
  br label %.lr.ph3027.a

.lr.ph3027.a:                                     ; preds = %.lr.ph3027, %Vec_StrPrintStr.exit1245
  %.val9693129 = phi ptr [ %.val970, %.lr.ph3027 ], [ %.val969, %Vec_StrPrintStr.exit1245 ]
  %.07753026 = phi i32 [ %i.wa, %.lr.ph3027 ], [ %i.yp, %Vec_StrPrintStr.exit1245 ] ; 5 uses
  %i.we = ashr i32 %.07753026, 5
  %i.wf = sext i32 %i.we to i64
  %i.wg = getelementptr inbounds [4 x i8], ptr %.val985, i64 %i.wf
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !28
  %i.wi = and i32 %.07753026, 31
  %i.wj = shl nuw i32 1, %i.wi
  %i.wk = and i32 %i.wh, %i.wj
  %.not828 = icmp eq i32 %i.wk, 0
  br i1 %.not828, label %.lr.ph.i1212, label %Vec_StrPrintStr.exit1245

.lr.ph.i1212:                                     ; preds = %.lr.ph3027.a, %Vec_StrPush.exit.i1217
  %indvars.iv.i1214 = phi i64 [ %indvars.iv.next.i1218, %Vec_StrPush.exit.i1217 ], [ 0, %.lr.ph3027.a ] ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr @.str.84, i64 %indvars.iv.i1214
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !20
  %i.wn = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.wo = load i32, ptr %i.b, align 8, !tbaa !24
  %i.wp = icmp eq i32 %i.wn, %i.wo
  br i1 %i.wp, label %bb.ha, label %.Vec_StrPush.exit_crit_edge.i1215

.Vec_StrPush.exit_crit_edge.i1215:                ; preds = %.lr.ph.i1212
  %.pre.i1216 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1217

bb.ha:                                            ; preds = %.lr.ph.i1212
  %i.wq = icmp slt i32 %i.wn, 16
  br i1 %i.wq, label %bb.hb, label %bb.he

bb.hb:                                            ; preds = %bb.ha
  %i.wr = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1227 = icmp eq ptr %i.wr, null
  br i1 %.not9.i.i.i1227, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.ws = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.wr, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1224

bb.hd:                                            ; preds = %bb.hb
  %i.wt = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1224

bb.he:                                            ; preds = %bb.ha
  %i.wu = icmp samesign ult i32 %i.wn, 1073741823
  %i.wv = shl nuw nsw i32 %i.wn, 1
  %spec.select.i.i1220 = select i1 %i.wu, i32 %i.wv, i32 2147483647 ; 4 uses
  %.not.i9.i.i1221 = icmp samesign ult i32 %i.wn, %spec.select.i.i1220
  %.pre8.i1222 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1221, label %bb.hf, label %Vec_StrPush.exit.i1217

bb.hf:                                            ; preds = %bb.he
  %.not9.i10.i.i1223 = icmp eq ptr %.pre8.i1222, null
  %i.ww = zext nneg i32 %spec.select.i.i1220 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1223, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.wx = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1222, i64 noundef %i.ww) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1224

bb.hh:                                            ; preds = %bb.hf
  %i.wy = tail call noalias ptr @malloc(i64 noundef %i.ww) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1224

Vec_StrGrow.exit11.sink.split.i.i1224:            ; preds = %bb.hh, %bb.hg, %bb.hd, %bb.hc
  %i.wz = phi ptr [ %i.wt, %bb.hd ], [ %i.ws, %bb.hc ], [ %i.wx, %bb.hg ], [ %i.wy, %bb.hh ] ; 2 uses
  %spec.select.sink.i.i1225 = phi i32 [ 16, %bb.hd ], [ 16, %bb.hc ], [ %spec.select.i.i1220, %bb.hg ], [ %spec.select.i.i1220, %bb.hh ]
  store ptr %i.wz, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1225, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1226 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1217

Vec_StrPush.exit.i1217:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1224, %bb.he, %.Vec_StrPush.exit_crit_edge.i1215
  %i.xa = phi i32 [ %i.wn, %.Vec_StrPush.exit_crit_edge.i1215 ], [ %i.wn, %bb.he ], [ %.pre9.i1226, %Vec_StrGrow.exit11.sink.split.i.i1224 ] ; 2 uses
  %i.xb = phi ptr [ %.pre.i1216, %.Vec_StrPush.exit_crit_edge.i1215 ], [ %.pre8.i1222, %bb.he ], [ %i.wz, %Vec_StrGrow.exit11.sink.split.i.i1224 ]
  %i.xc = add nsw i32 %i.xa, 1
  store i32 %i.xc, ptr %i.da, align 4, !tbaa !23
  %i.xd = sext i32 %i.xa to i64
  %i.xe = getelementptr inbounds i8, ptr %i.xb, i64 %i.xd
  store i8 %i.wm, ptr %i.xe, align 1, !tbaa !20
  %indvars.iv.next.i1218 = add nuw nsw i64 %indvars.iv.i1214, 1 ; 2 uses
  %exitcond.not.i1219 = icmp eq i64 %indvars.iv.next.i1218, 7
  br i1 %exitcond.not.i1219, label %Vec_StrPrintStr.exit1228, label %.lr.ph.i1212, !llvm.loop !2

Vec_StrPrintStr.exit1228:                         ; preds = %Vec_StrPush.exit.i1217
  tail call void @Cba_ManWriteFonRange(ptr noundef nonnull %0, i32 noundef %.07753026)
  tail call void @Cba_ManWriteFonName(ptr noundef nonnull %0, i32 noundef %.07753026, i32 noundef 0, i32 noundef 0)
  %i.xf = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.xg = load i32, ptr %i.b, align 8, !tbaa !24
  %i.xh = icmp eq i32 %i.xf, %i.xg
  br i1 %i.xh, label %bb.hi, label %.Vec_StrPush.exit_crit_edge.i1232

.Vec_StrPush.exit_crit_edge.i1232:                ; preds = %Vec_StrPrintStr.exit1228
  %.pre.i1233 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1234

bb.hi:                                            ; preds = %Vec_StrPrintStr.exit1228
  %i.xi = icmp slt i32 %i.xf, 16
  br i1 %i.xi, label %bb.hj, label %bb.hm

bb.hj:                                            ; preds = %bb.hi
  %i.xj = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1244 = icmp eq ptr %i.xj, null
  br i1 %.not9.i.i.i1244, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.xk = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.xj, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1241

bb.hl:                                            ; preds = %bb.hj
  %i.xl = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1241

bb.hm:                                            ; preds = %bb.hi
  %i.xm = icmp samesign ult i32 %i.xf, 1073741823
  %i.xn = shl nuw nsw i32 %i.xf, 1
  %spec.select.i.i1237 = select i1 %i.xm, i32 %i.xn, i32 2147483647 ; 4 uses
  %.not.i9.i.i1238 = icmp samesign ult i32 %i.xf, %spec.select.i.i1237
  %.pre8.i1239 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1238, label %bb.hn, label %Vec_StrPush.exit.i1234

bb.hn:                                            ; preds = %bb.hm
  %.not9.i10.i.i1240 = icmp eq ptr %.pre8.i1239, null
  %i.xo = zext nneg i32 %spec.select.i.i1237 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1240, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.xp = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1239, i64 noundef %i.xo) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1241

bb.hp:                                            ; preds = %bb.hn
  %i.xq = tail call noalias ptr @malloc(i64 noundef %i.xo) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1241

Vec_StrGrow.exit11.sink.split.i.i1241:            ; preds = %bb.hp, %bb.ho, %bb.hl, %bb.hk
  %i.xr = phi ptr [ %i.xl, %bb.hl ], [ %i.xk, %bb.hk ], [ %i.xp, %bb.ho ], [ %i.xq, %bb.hp ] ; 2 uses
  %spec.select.sink.i.i1242 = phi i32 [ 16, %bb.hl ], [ 16, %bb.hk ], [ %spec.select.i.i1237, %bb.ho ], [ %spec.select.i.i1237, %bb.hp ]
  store ptr %i.xr, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1242, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1243 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1234

Vec_StrPush.exit.i1234:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1241, %bb.hm, %.Vec_StrPush.exit_crit_edge.i1232
  %i.xs = phi i32 [ %i.xf, %.Vec_StrPush.exit_crit_edge.i1232 ], [ %i.xf, %bb.hm ], [ %.pre9.i1243, %Vec_StrGrow.exit11.sink.split.i.i1241 ] ; 2 uses
  %i.xt = phi ptr [ %.pre.i1233, %.Vec_StrPush.exit_crit_edge.i1232 ], [ %.pre8.i1239, %bb.hm ], [ %i.xr, %Vec_StrGrow.exit11.sink.split.i.i1241 ]
  %i.xu = add nsw i32 %i.xs, 1
  store i32 %i.xu, ptr %i.da, align 4, !tbaa !23
  %i.xv = sext i32 %i.xs to i64
  %i.xw = getelementptr inbounds i8, ptr %i.xt, i64 %i.xv
  store i8 59, ptr %i.xw, align 1, !tbaa !20
  %i.xx = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.xy = load i32, ptr %i.b, align 8, !tbaa !24
  %i.xz = icmp eq i32 %i.xx, %i.xy
  br i1 %i.xz, label %bb.hq, label %.Vec_StrPush.exit_crit_edge.i1232.1

.Vec_StrPush.exit_crit_edge.i1232.1:              ; preds = %Vec_StrPush.exit.i1234
  %.pre.i1233.1 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1234.1

bb.hq:                                            ; preds = %Vec_StrPush.exit.i1234
  %i.ya = icmp slt i32 %i.xx, 16
  br i1 %i.ya, label %bb.hv, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.yb = icmp samesign ult i32 %i.xx, 1073741823
  %i.yc = shl nuw nsw i32 %i.xx, 1
  %spec.select.i.i1237.1 = select i1 %i.yb, i32 %i.yc, i32 2147483647 ; 4 uses
  %.not.i9.i.i1238.1 = icmp samesign ult i32 %i.xx, %spec.select.i.i1237.1
  %.pre8.i1239.1 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1238.1, label %bb.hs, label %Vec_StrPush.exit.i1234.1

bb.hs:                                            ; preds = %bb.hr
  %.not9.i10.i.i1240.1 = icmp eq ptr %.pre8.i1239.1, null
  %i.yd = zext nneg i32 %spec.select.i.i1237.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1240.1, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.ye = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1239.1, i64 noundef %i.yd) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1241.1

bb.hu:                                            ; preds = %bb.hs
  %i.yf = tail call noalias ptr @malloc(i64 noundef %i.yd) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1241.1

bb.hv:                                            ; preds = %bb.hq
  %i.yg = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1244.1 = icmp eq ptr %i.yg, null
  br i1 %.not9.i.i.i1244.1, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.yh = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.yg, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1241.1

bb.hx:                                            ; preds = %bb.hv
  %i.yi = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1241.1

Vec_StrGrow.exit11.sink.split.i.i1241.1:          ; preds = %bb.hx, %bb.hw, %bb.hu, %bb.ht
  %i.yj = phi ptr [ %i.yi, %bb.hx ], [ %i.yh, %bb.hw ], [ %i.ye, %bb.ht ], [ %i.yf, %bb.hu ] ; 2 uses
  %spec.select.sink.i.i1242.1 = phi i32 [ 16, %bb.hx ], [ 16, %bb.hw ], [ %spec.select.i.i1237.1, %bb.ht ], [ %spec.select.i.i1237.1, %bb.hu ]
  store ptr %i.yj, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1242.1, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1243.1 = load i32, ptr %i.da, align 4, !tbaa !23
end_hunk_0
