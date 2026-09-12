Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaDup?download=true
inline.NumInlined: 4042
inline.NumDeleted: 213
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 46
begin_hunk_0_@Gia_ManDupTopAnd_iter:bb.a
  tail call void @free(ptr noundef nonnull %i.by) #35
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.x, %bb.y
  tail call void @free(ptr noundef nonnull %i.a) #35
  %.not.i188 = icmp eq ptr %i.bx, null
  br i1 %.not.i188, label %Vec_IntFree.exit189, label %bb.z

bb.z:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.bx) #35
  br label %Vec_IntFree.exit189

Vec_IntFree.exit189:                              ; preds = %Vec_IntFree.exit, %bb.z
  tail call void @free(ptr noundef nonnull %i.e) #35
  %i.bz = tail call ptr @Gia_ManDupNormalize(ptr noundef nonnull %0, i32 noundef 0) #35
  br label %bb.cr

.lr.ph266:                                        ; preds = %.preheader, %bb.bm
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %bb.bm ], [ 0, %.preheader ] ; 2 uses
  %storemerge257270 = phi ptr [ %storemerge257271, %bb.bm ], [ %.pre299, %.preheader ] ; 7 uses
  %.val151263 = phi i32 [ %.val151.pr, %bb.bm ], [ %.val152.pre, %.preheader ] ; 7 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %storemerge257270, i64 %indvars.iv282
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !30 ; 3 uses
  %.val158 = load ptr, ptr %i.i, align 8, !tbaa !49 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [12 x i8], ptr %.val158, i64 %i.cc ; 3 uses
  %.not128 = icmp eq ptr %.val158, null
  br i1 %.not128, label %.critedge2.thread.sink.split, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph266
  %.val168 = load i64, ptr %i.cd, align 4         ; 2 uses
  %i.ce = and i64 %.val168, 2684354559
  %narrow.i190.not = icmp eq i64 %i.ce, 2684354559
  br i1 %narrow.i190.not, label %bb.ab, label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  %i.cf = shl nsw i32 %i.cb, 1
  %i.cg = load i32, ptr %i.f, align 4, !tbaa !28  ; 7 uses
  %i.ch = load i32, ptr %i.e, align 8, !tbaa !58
  %i.ci = icmp eq i32 %i.cg, %i.ch
  br i1 %i.ci, label %bb.ac, label %.Vec_IntPush.exit198_crit_edge

.Vec_IntPush.exit198_crit_edge:                   ; preds = %bb.ab
  %.pre297 = load ptr, ptr %i.h, align 8, !tbaa !29
  br label %Vec_IntPush.exit198

bb.ac:                                            ; preds = %bb.ab
  %i.cj = icmp slt i32 %i.cg, 16
  br i1 %i.cj, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !29  ; 2 uses
  %.not9.i.i196 = icmp eq ptr %i.ck, null
  br i1 %.not9.i.i196, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cl = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ck, i64 noundef 64) #34
  br label %Vec_IntGrow.exit11.sink.split.i194

bb.af:                                            ; preds = %bb.ad
  %i.cm = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i194

bb.ag:                                            ; preds = %bb.ac
  %i.cn = icmp samesign ult i32 %i.cg, 1073741823
  %i.co = shl nuw nsw i32 %i.cg, 1
  %spec.select.i191 = select i1 %i.cn, i32 %i.co, i32 2147483647 ; 4 uses
  %.not.i9.i192 = icmp samesign ult i32 %i.cg, %spec.select.i191
  %.pre298 = load ptr, ptr %i.h, align 8, !tbaa !29 ; 3 uses
  br i1 %.not.i9.i192, label %bb.ah, label %Vec_IntPush.exit198

bb.ah:                                            ; preds = %bb.ag
  %.not9.i10.i193 = icmp eq ptr %.pre298, null
  %i.cp = zext nneg i32 %spec.select.i191 to i64
  %i.cq = shl nuw nsw i64 %i.cp, 2                ; 2 uses
  br i1 %.not9.i10.i193, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cr = tail call ptr @realloc(ptr noundef nonnull %.pre298, i64 noundef %i.cq) #34
  br label %Vec_IntGrow.exit11.sink.split.i194

bb.aj:                                            ; preds = %bb.ah
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.cq) #33
  br label %Vec_IntGrow.exit11.sink.split.i194

Vec_IntGrow.exit11.sink.split.i194:               ; preds = %bb.ai, %bb.aj, %bb.ae, %bb.af
  %storemerge253 = phi ptr [ %i.cm, %bb.af ], [ %i.cl, %bb.ae ], [ %i.cr, %bb.ai ], [ %i.cs, %bb.aj ] ; 2 uses
  %spec.select.sink.i195 = phi i32 [ 16, %bb.af ], [ 16, %bb.ae ], [ %spec.select.i191, %bb.ai ], [ %spec.select.i191, %bb.aj ]
  store ptr %storemerge253, ptr %i.h, align 8, !tbaa !29
  store i32 %spec.select.sink.i195, ptr %i.e, align 8, !tbaa !58
  br label %Vec_IntPush.exit198

Vec_IntPush.exit198:                              ; preds = %.Vec_IntPush.exit198_crit_edge, %bb.ag, %Vec_IntGrow.exit11.sink.split.i194
  %i.ct = phi ptr [ %.pre297, %.Vec_IntPush.exit198_crit_edge ], [ %.pre298, %bb.ag ], [ %storemerge253, %Vec_IntGrow.exit11.sink.split.i194 ]
  %i.cu = add nsw i32 %i.cg, 1
  store i32 %i.cu, ptr %i.f, align 4, !tbaa !28
  br label %bb.bm

bb.ak:                                            ; preds = %bb.aa
  %i.cv = trunc i64 %.val168 to i32               ; 2 uses
  %i.cw = and i32 %i.cv, 536870912
  %.not142 = icmp eq i32 %i.cw, 0
  %i.cx = and i32 %i.cv, 536870911
  %i.cy = sub nsw i32 %i.cb, %i.cx                ; 2 uses
  br i1 %.not142, label %bb.au, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cz = shl nsw i32 %i.cy, 1
  %i.da = or disjoint i32 %i.cz, 1
  %i.db = load i32, ptr %i.f, align 4, !tbaa !28  ; 7 uses
  %i.dc = load i32, ptr %i.e, align 8, !tbaa !58
  %i.dd = icmp eq i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.am, label %.Vec_IntPush.exit207_crit_edge

.Vec_IntPush.exit207_crit_edge:                   ; preds = %bb.al
  %.pre293 = load ptr, ptr %i.h, align 8, !tbaa !29
  br label %Vec_IntPush.exit207

bb.am:                                            ; preds = %bb.al
  %i.de = icmp slt i32 %i.db, 16
  br i1 %i.de, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.df = load ptr, ptr %i.h, align 8, !tbaa !29  ; 2 uses
  %.not9.i.i205 = icmp eq ptr %i.df, null
  br i1 %.not9.i.i205, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dg = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.df, i64 noundef 64) #34
  br label %Vec_IntGrow.exit11.sink.split.i203

bb.ap:                                            ; preds = %bb.an
  %i.dh = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i203

bb.aq:                                            ; preds = %bb.am
  %i.di = icmp samesign ult i32 %i.db, 1073741823
  %i.dj = shl nuw nsw i32 %i.db, 1
  %spec.select.i200 = select i1 %i.di, i32 %i.dj, i32 2147483647 ; 4 uses
  %.not.i9.i201 = icmp samesign ult i32 %i.db, %spec.select.i200
  %.pre294 = load ptr, ptr %i.h, align 8, !tbaa !29 ; 3 uses
  br i1 %.not.i9.i201, label %bb.ar, label %Vec_IntPush.exit207

bb.ar:                                            ; preds = %bb.aq
  %.not9.i10.i202 = icmp eq ptr %.pre294, null
  %i.dk = zext nneg i32 %spec.select.i200 to i64
  %i.dl = shl nuw nsw i64 %i.dk, 2                ; 2 uses
  br i1 %.not9.i10.i202, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dm = tail call ptr @realloc(ptr noundef nonnull %.pre294, i64 noundef %i.dl) #34
  br label %Vec_IntGrow.exit11.sink.split.i203

bb.at:                                            ; preds = %bb.ar
  %i.dn = tail call noalias ptr @malloc(i64 noundef %i.dl) #33
  br label %Vec_IntGrow.exit11.sink.split.i203

Vec_IntGrow.exit11.sink.split.i203:               ; preds = %bb.as, %bb.at, %bb.ao, %bb.ap
  %storemerge254 = phi ptr [ %i.dh, %bb.ap ], [ %i.dg, %bb.ao ], [ %i.dm, %bb.as ], [ %i.dn, %bb.at ] ; 2 uses
  %spec.select.sink.i204 = phi i32 [ 16, %bb.ap ], [ 16, %bb.ao ], [ %spec.select.i200, %bb.as ], [ %spec.select.i200, %bb.at ]
  store ptr %storemerge254, ptr %i.h, align 8, !tbaa !29
  store i32 %spec.select.sink.i204, ptr %i.e, align 8, !tbaa !58
  br label %Vec_IntPush.exit207

Vec_IntPush.exit207:                              ; preds = %.Vec_IntPush.exit207_crit_edge, %bb.aq, %Vec_IntGrow.exit11.sink.split.i203
  %i.do = phi ptr [ %.pre293, %.Vec_IntPush.exit207_crit_edge ], [ %.pre294, %bb.aq ], [ %storemerge254, %Vec_IntGrow.exit11.sink.split.i203 ]
  %i.dp = add nsw i32 %i.db, 1
  store i32 %i.dp, ptr %i.f, align 4, !tbaa !28
  br label %bb.ay

bb.au:                                            ; preds = %bb.ak
  %i.dq = load i32, ptr %i.a, align 8, !tbaa !58
  %i.dr = icmp eq i32 %.val151263, %i.dq
  br i1 %i.dr, label %bb.av, label %Vec_IntPush.exit216

bb.av:                                            ; preds = %bb.au
  %i.ds = icmp slt i32 %.val151263, 16
  br i1 %i.ds, label %Vec_IntGrow.exit11.sink.split.i212, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dt = icmp samesign ult i32 %.val151263, 1073741823
  %i.du = shl nuw nsw i32 %.val151263, 1
  %spec.select.i209 = select i1 %i.dt, i32 %i.du, i32 2147483647 ; 3 uses
  %.not.i9.i210 = icmp samesign ult i32 %.val151263, %spec.select.i209
  br i1 %.not.i9.i210, label %bb.ax, label %Vec_IntPush.exit216

bb.ax:                                            ; preds = %bb.aw
  %i.dv = zext nneg i32 %spec.select.i209 to i64
  %i.dw = shl nuw nsw i64 %i.dv, 2
  br label %Vec_IntGrow.exit11.sink.split.i212

Vec_IntGrow.exit11.sink.split.i212:               ; preds = %bb.av, %bb.ax
  %.sink339 = phi i64 [ %i.dw, %bb.ax ], [ 64, %bb.av ]
  %spec.select.sink.i213 = phi i32 [ %spec.select.i209, %bb.ax ], [ 16, %bb.av ]
  %i.dx = tail call ptr @realloc(ptr noundef nonnull %storemerge257270, i64 noundef %.sink339) #34
  store i32 %spec.select.sink.i213, ptr %i.a, align 8, !tbaa !58
  br label %Vec_IntPush.exit216

Vec_IntPush.exit216:                              ; preds = %bb.au, %bb.aw, %Vec_IntGrow.exit11.sink.split.i212
  %storemerge257269 = phi ptr [ %storemerge257270, %bb.au ], [ %storemerge257270, %bb.aw ], [ %i.dx, %Vec_IntGrow.exit11.sink.split.i212 ] ; 2 uses
  %i.dy = add nuw nsw i32 %.val151263, 1
  store i32 %i.dy, ptr %i.b, align 4, !tbaa !28
  br label %bb.ay

bb.ay:                                            ; preds = %Vec_IntPush.exit216, %Vec_IntPush.exit207
  %.val151263.sink = phi i32 [ %.val151263, %Vec_IntPush.exit216 ], [ %i.db, %Vec_IntPush.exit207 ]
  %storemerge257269.sink = phi ptr [ %storemerge257269, %Vec_IntPush.exit216 ], [ %i.do, %Vec_IntPush.exit207 ]
  %.sink340 = phi i32 [ %i.cy, %Vec_IntPush.exit216 ], [ %i.da, %Vec_IntPush.exit207 ]
  %storemerge257268 = phi ptr [ %storemerge257269, %Vec_IntPush.exit216 ], [ %storemerge257270, %Vec_IntPush.exit207 ] ; 4 uses
  %i.dz = sext i32 %.val151263.sink to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %storemerge257269.sink, i64 %i.dz
  store i32 %.sink340, ptr %i.ea, align 4, !tbaa !30
  %.val171 = load i64, ptr %i.cd, align 4         ; 2 uses
  %i.eb = and i64 %.val171, 2305843009213693952
  %.not143 = icmp eq i64 %i.eb, 0
  %.val178 = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.ec = ptrtoint ptr %i.cd to i64
  %i.ed = ptrtoint ptr %.val178 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = sdiv exact i64 %i.ee, 12
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = lshr i64 %.val171, 32
  %i.ei = trunc nuw i64 %i.eh to i32
  %i.ej = and i32 %i.ei, 536870911
  %i.ek = sub nsw i32 %i.eg, %i.ej                ; 2 uses
  br i1 %.not143, label %bb.bi, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.el = shl nsw i32 %i.ek, 1
  %i.em = or disjoint i32 %i.el, 1
  %i.en = load i32, ptr %i.f, align 4, !tbaa !28  ; 7 uses
  %i.eo = load i32, ptr %i.e, align 8, !tbaa !58
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.ba, label %.Vec_IntPush.exit225_crit_edge

.Vec_IntPush.exit225_crit_edge:                   ; preds = %bb.az
  %.pre295 = load ptr, ptr %i.h, align 8, !tbaa !29
  br label %Vec_IntPush.exit225

bb.ba:                                            ; preds = %bb.az
  %i.eq = icmp slt i32 %i.en, 16
  br i1 %i.eq, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.er = load ptr, ptr %i.h, align 8, !tbaa !29  ; 2 uses
  %.not9.i.i223 = icmp eq ptr %i.er, null
  br i1 %.not9.i.i223, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.es = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.er, i64 noundef 64) #34
  br label %Vec_IntGrow.exit11.sink.split.i221

bb.bd:                                            ; preds = %bb.bb
  %i.et = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i221

bb.be:                                            ; preds = %bb.ba
  %i.eu = icmp samesign ult i32 %i.en, 1073741823
  %i.ev = shl nuw nsw i32 %i.en, 1
  %spec.select.i218 = select i1 %i.eu, i32 %i.ev, i32 2147483647 ; 4 uses
  %.not.i9.i219 = icmp samesign ult i32 %i.en, %spec.select.i218
  %.pre296 = load ptr, ptr %i.h, align 8, !tbaa !29 ; 3 uses
  br i1 %.not.i9.i219, label %bb.bf, label %Vec_IntPush.exit225

bb.bf:                                            ; preds = %bb.be
  %.not9.i10.i220 = icmp eq ptr %.pre296, null
  %i.ew = zext nneg i32 %spec.select.i218 to i64
  %i.ex = shl nuw nsw i64 %i.ew, 2                ; 2 uses
  br i1 %.not9.i10.i220, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ey = tail call ptr @realloc(ptr noundef nonnull %.pre296, i64 noundef %i.ex) #34
  br label %Vec_IntGrow.exit11.sink.split.i221

bb.bh:                                            ; preds = %bb.bf
  %i.ez = tail call noalias ptr @malloc(i64 noundef %i.ex) #33
  br label %Vec_IntGrow.exit11.sink.split.i221

Vec_IntGrow.exit11.sink.split.i221:               ; preds = %bb.bg, %bb.bh, %bb.bc, %bb.bd
  %storemerge256 = phi ptr [ %i.et, %bb.bd ], [ %i.es, %bb.bc ], [ %i.ey, %bb.bg ], [ %i.ez, %bb.bh ] ; 2 uses
  %spec.select.sink.i222 = phi i32 [ 16, %bb.bd ], [ 16, %bb.bc ], [ %spec.select.i218, %bb.bg ], [ %spec.select.i218, %bb.bh ]
  store ptr %storemerge256, ptr %i.h, align 8, !tbaa !29
  store i32 %spec.select.sink.i222, ptr %i.e, align 8, !tbaa !58
  br label %Vec_IntPush.exit225

Vec_IntPush.exit225:                              ; preds = %.Vec_IntPush.exit225_crit_edge, %bb.be, %Vec_IntGrow.exit11.sink.split.i221
  %i.fa = phi ptr [ %.pre295, %.Vec_IntPush.exit225_crit_edge ], [ %.pre296, %bb.be ], [ %storemerge256, %Vec_IntGrow.exit11.sink.split.i221 ]
  %i.fb = add nsw i32 %i.en, 1
  store i32 %i.fb, ptr %i.f, align 4, !tbaa !28
  br label %bb.bm

bb.bi:                                            ; preds = %bb.ay
  %i.fc = load i32, ptr %i.b, align 4, !tbaa !28  ; 7 uses
  %i.fd = load i32, ptr %i.a, align 8, !tbaa !58
  %i.fe = icmp eq i32 %i.fc, %i.fd
  br i1 %i.fe, label %bb.bj, label %Vec_IntPush.exit234

bb.bj:                                            ; preds = %bb.bi
  %i.ff = icmp slt i32 %i.fc, 16
  br i1 %i.ff, label %Vec_IntGrow.exit11.sink.split.i230, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fg = icmp samesign ult i32 %i.fc, 1073741823
  %i.fh = shl nuw nsw i32 %i.fc, 1
  %spec.select.i227 = select i1 %i.fg, i32 %i.fh, i32 2147483647 ; 3 uses
  %.not.i9.i228 = icmp samesign ult i32 %i.fc, %spec.select.i227
  br i1 %.not.i9.i228, label %bb.bl, label %Vec_IntPush.exit234

bb.bl:                                            ; preds = %bb.bk
  %i.fi = zext nneg i32 %spec.select.i227 to i64
  %i.fj = shl nuw nsw i64 %i.fi, 2
  br label %Vec_IntGrow.exit11.sink.split.i230

Vec_IntGrow.exit11.sink.split.i230:               ; preds = %bb.bj, %bb.bl
  %.sink343 = phi i64 [ %i.fj, %bb.bl ], [ 64, %bb.bj ]
  %spec.select.sink.i231 = phi i32 [ %spec.select.i227, %bb.bl ], [ 16, %bb.bj ]
  %i.fk = tail call ptr @realloc(ptr noundef nonnull %storemerge257268, i64 noundef %.sink343) #34
  store i32 %spec.select.sink.i231, ptr %i.a, align 8, !tbaa !58
  br label %Vec_IntPush.exit234

Vec_IntPush.exit234:                              ; preds = %bb.bi, %bb.bk, %Vec_IntGrow.exit11.sink.split.i230
  %storemerge257272 = phi ptr [ %storemerge257268, %bb.bi ], [ %storemerge257268, %bb.bk ], [ %i.fk, %Vec_IntGrow.exit11.sink.split.i230 ] ; 2 uses
  %i.fl = add nsw i32 %i.fc, 1
  store i32 %i.fl, ptr %i.b, align 4, !tbaa !28
  br label %bb.bm

bb.bm:                                            ; preds = %Vec_IntPush.exit225, %Vec_IntPush.exit234, %Vec_IntPush.exit198
  %.sink348 = phi i32 [ %i.en, %Vec_IntPush.exit225 ], [ %i.fc, %Vec_IntPush.exit234 ], [ %i.cg, %Vec_IntPush.exit198 ]
  %.sink346 = phi ptr [ %i.fa, %Vec_IntPush.exit225 ], [ %storemerge257272, %Vec_IntPush.exit234 ], [ %i.ct, %Vec_IntPush.exit198 ]
  %.sink344 = phi i32 [ %i.em, %Vec_IntPush.exit225 ], [ %i.ek, %Vec_IntPush.exit234 ], [ %i.cf, %Vec_IntPush.exit198 ]
  %storemerge257271 = phi ptr [ %storemerge257268, %Vec_IntPush.exit225 ], [ %storemerge257272, %Vec_IntPush.exit234 ], [ %storemerge257270, %Vec_IntPush.exit198 ] ; 2 uses
  %i.fm = sext i32 %.sink348 to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %.sink346, i64 %i.fm
  store i32 %.sink344, ptr %i.fn, align 4, !tbaa !30
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %.val151.pr = load i32, ptr %i.b, align 4, !tbaa !28 ; 2 uses
  %i.fo = sext i32 %.val151.pr to i64
  %i.fp = icmp slt i64 %indvars.iv.next283, %i.fo
  br i1 %i.fp, label %.lr.ph266, label %.critedge2.thread.sink.split, !llvm.loop !392

.critedge2:                                       ; preds = %.preheader
  %.not.i235 = icmp eq ptr %.pre299, null
  br i1 %.not.i235, label %Vec_IntFree.exit236, label %.critedge2.thread

.critedge2.thread.sink.split:                     ; preds = %.lr.ph266, %bb.bm
  %storemerge257271.lcssa.sink = phi ptr [ %storemerge257271, %bb.bm ], [ %storemerge257270, %.lr.ph266 ] ; 2 uses
  store ptr %storemerge257271.lcssa.sink, ptr %i.d, align 8
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %.critedge2.thread.sink.split, %.critedge2
  %i.fq = phi ptr [ %.pre299, %.critedge2 ], [ %storemerge257271.lcssa.sink, %.critedge2.thread.sink.split ]
  tail call void @free(ptr noundef nonnull %i.fq) #35
  br label %Vec_IntFree.exit236

Vec_IntFree.exit236:                              ; preds = %.critedge2, %.critedge2.thread
  tail call void @free(ptr noundef nonnull %i.a) #35
  %i.fr = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %.val162 = load i32, ptr %i.fr, align 8, !tbaa !54 ; 3 uses
  %i.fs = sext i32 %.val162 to i64                ; 3 uses
  %i.ft = shl nsw i64 %i.fs, 2                    ; 2 uses
  %i.fu = tail call noalias ptr @malloc(i64 noundef %i.ft) #33 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fu, i8 -1, i64 %i.ft, i1 false)
  %i.fv = tail call noalias ptr @malloc(i64 noundef %i.fs) #33 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fv, i8 -1, i64 %i.fs, i1 false)
  %.val150 = load i32, ptr %i.f, align 4, !tbaa !28 ; 2 uses
  %i.fw = icmp sgt i32 %.val150, 0
  br i1 %i.fw, label %.lr.ph275, label %.critedge4

.lr.ph275:                                        ; preds = %Vec_IntFree.exit236
  %.val154 = load ptr, ptr %i.h, align 8, !tbaa !29 ; 2 uses
  %.val157 = load ptr, ptr %i.i, align 8, !tbaa !49
  %wide.trip.count = zext nneg i32 %.val150 to i64
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph275, %bb.bs
  %indvars.iv285 = phi i64 [ 0, %.lr.ph275 ], [ %indvars.iv.next286, %bb.bs ] ; 2 uses
  %.0274 = phi i32 [ 0, %.lr.ph275 ], [ %.1, %bb.bs ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.val154, i64 %indvars.iv285
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !30 ; 4 uses
  %i.fz = ashr i32 %i.fy, 1
  %i.ga = sext i32 %i.fz to i64                   ; 2 uses
  %i.gb = getelementptr inbounds [12 x i8], ptr %.val157, i64 %i.ga
  %.val167 = load i64, ptr %i.gb, align 4         ; 2 uses
  %i.gc = and i64 %.val167, 2684354559
  %narrow.i237.not = icmp eq i64 %i.gc, 2684354559
  br i1 %narrow.i237.not, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.gd = and i32 %i.fy, 1
  %i.ge = xor i32 %i.gd, 1
  %i.gf = lshr i64 %.val167, 32
  %i.gg = and i64 %i.gf, 536870911
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.gg
  store i32 %i.ge, ptr %i.gh, align 4, !tbaa !30
  %i.gi = add nsw i32 %.0274, 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.1 = phi i32 [ %i.gi, %bb.bo ], [ %.0274, %bb.bn ] ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.fv, i64 %i.ga ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !95  ; 2 uses
end_hunk_0
begin_hunk_1_@Gia_ManIsoStrashReduce:bb.a
  %storemerge.i = phi ptr [ %i.z, %bb.h ], [ %i.y, %bb.g ], [ %i.ae, %bb.k ], [ %i.af, %bb.l ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i.i, %bb.k ], [ %spec.select.i.i, %bb.l ] ; 2 uses
  store ptr %storemerge.i, ptr %i.k, align 8, !tbaa !29
  store i32 %spec.select.sink.i.i, ptr %i.d, align 8, !tbaa !58
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.i, %bb.d
  %i.ag = phi ptr [ %i.n, %bb.d ], [ %i.n, %bb.i ], [ %storemerge.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 3 uses
  %i.ah = phi i32 [ %i.p, %bb.d ], [ %i.p, %bb.i ], [ %spec.select.sink.i.i, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.ai = add nsw i32 %i.q, 1                     ; 2 uses
  store i32 %i.ai, ptr %i.f, align 4, !tbaa !28
  %i.aj = sext i32 %i.q to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.aj
  store i32 %i.v, ptr %i.ak, align 4, !tbaa !30
  %.val11.pre.i = load i32, ptr %i.c, align 4, !tbaa !108
  br label %bb.m

bb.m:                                             ; preds = %Vec_IntPush.exit.i, %bb.c
  %.val11.i = phi i32 [ %.val1116.i, %bb.c ], [ %.val11.pre.i, %Vec_IntPush.exit.i ] ; 2 uses
  %.val18.pr = phi ptr [ %i.n, %bb.c ], [ %i.ag, %Vec_IntPush.exit.i ] ; 2 uses
  %i.al = phi ptr [ %i.o, %bb.c ], [ %i.ag, %Vec_IntPush.exit.i ]
  %i.am = phi i32 [ %i.p, %bb.c ], [ %i.ah, %Vec_IntPush.exit.i ]
  %i.an = phi i32 [ %i.q, %bb.c ], [ %i.ai, %Vec_IntPush.exit.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ao = sext i32 %.val11.i to i64
  %i.ap = icmp slt i64 %indvars.iv.next.i, %i.ao
  br i1 %i.ap, label %bb.c, label %Vec_WecCollectFirsts.exitthread-pre-split, !llvm.loop !572

Vec_WecCollectFirsts.exitthread-pre-split:        ; preds = %bb.m
  %.val.pre = load i32, ptr %i.f, align 4, !tbaa !28
  br label %Vec_WecCollectFirsts.exit

Vec_WecCollectFirsts.exit:                        ; preds = %Vec_WecCollectFirsts.exitthread-pre-split, %Vec_IntAlloc.exit.i
  %.val = phi i32 [ %.val.pre, %Vec_WecCollectFirsts.exitthread-pre-split ], [ 0, %Vec_IntAlloc.exit.i ]
  %.val18 = phi ptr [ %.val18.pr, %Vec_WecCollectFirsts.exitthread-pre-split ], [ %i.j, %Vec_IntAlloc.exit.i ] ; 3 uses
  %i.aq = tail call ptr @Gia_ManDupCones(ptr noundef %0, ptr noundef %.val18, i32 noundef %.val, i32 noundef 0)
  %.not.i = icmp eq ptr %.val18, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.n

bb.n:                                             ; preds = %Vec_WecCollectFirsts.exit
  tail call void @free(ptr noundef nonnull %.val18) #35
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_WecCollectFirsts.exit, %bb.n
  tail call void @free(ptr noundef nonnull %i.d) #35
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !106 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.i.i = load ptr, ptr %i.at, align 8, !tbaa !107 ; 3 uses
  br i1 %i.as, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %Vec_IntFree.exit
  %i.au = zext nneg i32 %i.ar to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.p
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.p ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.ax, null
  br i1 %.not15.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.ax) #35
  store ptr null, ptr %i.aw, align 8, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i, %i.au
  br i1 %exitcond.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %Vec_IntFree.exit
  %.not.i.i19 = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i19, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.p, %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %.pre.i.i) #35
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.a) #35
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %Vec_WecPrint.exit, label %bb.q

bb.q:                                             ; preds = %Vec_WecFree.exit
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %.val1922.i = load i32, ptr %i.c, align 4, !tbaa !108 ; 2 uses
  %i.ay = icmp sgt i32 %.val1922.i, 0
  br i1 %i.ay, label %.lr.ph24.i, label %Vec_WecPrint.exit

.lr.ph24.i:                                       ; preds = %bb.q
  %i.az = getelementptr i8, ptr %i.b, i64 8
  %.val18.i = load ptr, ptr %i.az, align 8, !tbaa !107
  %i.ba = zext nneg i32 %.val1922.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %.lr.ph24.i
  %indvars.iv26.i = phi i64 [ 0, %.lr.ph24.i ], [ %indvars.iv.next27.i, %bb.u ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.val18.i, i64 %indvars.iv26.i ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 4      ; 3 uses
  %.val16.i = load i32, ptr %i.bc, align 4, !tbaa !28
  %i.bd = icmp eq i32 %.val16.i, 1
  br i1 %i.bd, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = trunc nuw nsw i64 %indvars.iv26.i to i32
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.99, i32 noundef %i.be) ; 0 uses
  %.val20.i = load i32, ptr %i.bc, align 4, !tbaa !28
  %i.bg = icmp sgt i32 %.val20.i, 0
  br i1 %i.bg, label %.lr.ph.i20, label %.critedge2.i

.lr.ph.i20:                                       ; preds = %bb.s
  %i.bh = getelementptr i8, ptr %i.bb, i64 8
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i20
  %indvars.iv.i21 = phi i64 [ 0, %.lr.ph.i20 ], [ %indvars.iv.next.i22, %bb.t ] ; 2 uses
  %.val17.i = load ptr, ptr %i.bh, align 8, !tbaa !29
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.val17.i, i64 %indvars.iv.i21
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !30
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %i.bj) ; 0 uses
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 2 uses
  %.val.i23 = load i32, ptr %i.bc, align 4, !tbaa !28
  %i.bl = sext i32 %.val.i23 to i64
  %i.bm = icmp slt i64 %indvars.iv.next.i22, %i.bl
  br i1 %i.bm, label %bb.t, label %.critedge2.i, !llvm.loop !573

.critedge2.i:                                     ; preds = %bb.t, %bb.s
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.critedge2.i, %bb.r
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next27.i, %i.ba
  br i1 %exitcond44.not, label %Vec_WecPrint.exit, label %bb.r, !llvm.loop !574

Vec_WecPrint.exit:                                ; preds = %bb.u, %bb.q, %Vec_WecFree.exit
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %bb.ah, label %bb.v

bb.v:                                             ; preds = %Vec_WecPrint.exit
  %.val9.i24 = load i32, ptr %i.c, align 4, !tbaa !108 ; 3 uses
  %i.bn = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 5 uses
  %i.bo = add i32 %.val9.i24, -1
  %or.cond.i.i25 = icmp ult i32 %i.bo, 7
  %spec.store.select.i.i26 = select i1 %or.cond.i.i25, i32 8, i32 %.val9.i24 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  store i32 0, ptr %i.bp, align 4, !tbaa !77
  store i32 %spec.store.select.i.i26, ptr %i.bn, align 8, !tbaa !78
  %.not.i.i27 = icmp eq i32 %spec.store.select.i.i26, 0
  br i1 %.not.i.i27, label %Vec_PtrAlloc.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = sext i32 %spec.store.select.i.i26 to i64
  %i.br = shl nsw i64 %i.bq, 3
  %i.bs = tail call noalias ptr @malloc(i64 noundef %i.br) #33
  br label %Vec_PtrAlloc.exit.i

Vec_PtrAlloc.exit.i:                              ; preds = %bb.w, %bb.v
  %.promoted16.i = phi ptr [ %i.bs, %bb.w ], [ null, %bb.v ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  store ptr %.promoted16.i, ptr %i.bt, align 8, !tbaa !79
  %i.bu = icmp sgt i32 %.val9.i24, 0
  br i1 %i.bu, label %.lr.ph.i28, label %Vec_WecConvertToVecPtr.exit

.lr.ph.i28:                                       ; preds = %Vec_PtrAlloc.exit.i
  %i.bv = getelementptr i8, ptr %i.b, i64 8
  br label %bb.x

bb.x:                                             ; preds = %Vec_PtrPush.exit.i, %.lr.ph.i28
  %indvars.iv19.i = phi i64 [ 0, %.lr.ph.i28 ], [ %indvars.iv.next20.i, %Vec_PtrPush.exit.i ] ; 7 uses
  %storemerge17.i = phi ptr [ %.promoted16.i, %.lr.ph.i28 ], [ %storemerge18.i, %Vec_PtrPush.exit.i ] ; 6 uses
  %spec.select.sink.i15.i = phi i32 [ %spec.store.select.i.i26, %.lr.ph.i28 ], [ %spec.select.sink.i14.i, %Vec_PtrPush.exit.i ] ; 4 uses
  %.val.i30 = load ptr, ptr %i.bv, align 8, !tbaa !107
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %.val.i30, i64 %indvars.iv19.i ; 2 uses
  %i.bx = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !28 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !28
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !58
  %.not.i10.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i10.i, label %Vec_IntDup.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = sext i32 %i.bz to i64
  %i.cc = shl nsw i64 %i.cb, 2                    ; 2 uses
  %i.cd = tail call noalias ptr @malloc(i64 noundef %i.cc) #33
  br label %Vec_IntDup.exit.i

Vec_IntDup.exit.i:                                ; preds = %bb.y, %bb.x
  %.pre-phi12.i.i = phi i64 [ %i.cc, %bb.y ], [ 0, %bb.x ]
  %i.ce = phi ptr [ %i.cd, %bb.y ], [ null, %bb.x ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !29
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.ch, i64 %.pre-phi12.i.i, i1 false)
  %i.ci = trunc nuw nsw i64 %indvars.iv19.i to i32
  %i.cj = icmp eq i32 %spec.select.sink.i15.i, %i.ci
  br i1 %i.cj, label %bb.z, label %Vec_PtrPush.exit.i

bb.z:                                             ; preds = %Vec_IntDup.exit.i
  %i.ck = icmp samesign ult i64 %indvars.iv19.i, 16
  br i1 %i.ck, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %.not9.i.i.i33 = icmp eq ptr %storemerge17.i, null
  br i1 %.not9.i.i.i33, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge17.i, i64 noundef 128) #34
  br label %Vec_PtrPush.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.cm = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #33
  br label %Vec_PtrPush.exit.i

bb.ad:                                            ; preds = %bb.z
  %i.cn = icmp samesign ult i64 %indvars.iv19.i, 1073741823
  %i.co = shl nuw nsw i32 %spec.select.sink.i15.i, 1
  %spec.select.i.i32 = select i1 %i.cn, i32 %i.co, i32 2147483647 ; 3 uses
  %i.cp = zext nneg i32 %spec.select.i.i32 to i64 ; 2 uses
  %.not.i10.i.i = icmp samesign ult i64 %indvars.iv19.i, %i.cp
  br i1 %.not.i10.i.i, label %bb.ae, label %Vec_PtrPush.exit.i

bb.ae:                                            ; preds = %bb.ad
  %.not9.i11.i.i = icmp eq ptr %storemerge17.i, null
  %i.cq = shl nuw nsw i64 %i.cp, 3                ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cr = tail call ptr @realloc(ptr noundef nonnull %storemerge17.i, i64 noundef %i.cq) #34
  br label %Vec_PtrPush.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.cq) #33
  br label %Vec_PtrPush.exit.i

Vec_PtrPush.exit.i:                               ; preds = %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.ab, %Vec_IntDup.exit.i
  %storemerge18.i = phi ptr [ %storemerge17.i, %Vec_IntDup.exit.i ], [ %storemerge17.i, %bb.ad ], [ %i.cm, %bb.ac ], [ %i.cl, %bb.ab ], [ %i.cr, %bb.af ], [ %i.cs, %bb.ag ] ; 3 uses
  %spec.select.sink.i14.i = phi i32 [ %spec.select.sink.i15.i, %Vec_IntDup.exit.i ], [ %spec.select.sink.i15.i, %bb.ad ], [ 16, %bb.ac ], [ 16, %bb.ab ], [ %spec.select.i.i32, %bb.af ], [ %spec.select.i.i32, %bb.ag ] ; 2 uses
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %storemerge18.i, i64 %indvars.iv19.i
  store ptr %i.bx, ptr %i.ct, align 8, !tbaa !80
  %.val8.i = load i32, ptr %i.c, align 4, !tbaa !108
  %i.cu = sext i32 %.val8.i to i64
  %i.cv = icmp slt i64 %indvars.iv.next20.i, %i.cu
  br i1 %i.cv, label %bb.x, label %..critedge_crit_edge.i, !llvm.loop !575

..critedge_crit_edge.i:                           ; preds = %Vec_PtrPush.exit.i
  %i.cw = trunc nuw nsw i64 %indvars.iv.next20.i to i32
  store i32 %i.cw, ptr %i.bp, align 4, !tbaa !77
  store i32 %spec.select.sink.i14.i, ptr %i.bn, align 8
  store ptr %storemerge18.i, ptr %i.bt, align 8
  br label %Vec_WecConvertToVecPtr.exit

Vec_WecConvertToVecPtr.exit:                      ; preds = %Vec_PtrAlloc.exit.i, %..critedge_crit_edge.i
  store ptr %i.bn, ptr %1, align 8, !tbaa !111
  br label %bb.ah

bb.ah:                                            ; preds = %Vec_WecConvertToVecPtr.exit, %Vec_WecPrint.exit
  %i.cx = load i32, ptr %i.b, align 8, !tbaa !106 ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i.i34 = load ptr, ptr %i.cz, align 8, !tbaa !107 ; 3 uses
  br i1 %i.cy, label %.lr.ph.i.i38.preheader, label %._crit_edge.i.i35

.lr.ph.i.i38.preheader:                           ; preds = %bb.ah
  %i.da = zext nneg i32 %i.cx to i64
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38.preheader, %bb.aj
  %indvars.iv.i.i39 = phi i64 [ %indvars.iv.next.i.i42, %bb.aj ], [ 0, %.lr.ph.i.i38.preheader ] ; 2 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i34, i64 %indvars.iv.i.i39
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !29 ; 2 uses
  %.not15.i.i40 = icmp eq ptr %i.dd, null
  br i1 %.not15.i.i40, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i38
  tail call void @free(ptr noundef nonnull %i.dd) #35
  store ptr null, ptr %i.dc, align 8, !tbaa !29
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i.i38
  %indvars.iv.next.i.i42 = add nuw nsw i64 %indvars.iv.i.i39, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next.i.i42, %i.da
  br i1 %exitcond45.not, label %._crit_edge.thread.i.i37, label %.lr.ph.i.i38, !llvm.loop !7

._crit_edge.i.i35:                                ; preds = %bb.ah
  %.not.i.i36 = icmp eq ptr %.pre.i.i34, null
  br i1 %.not.i.i36, label %Vec_WecFree.exit43, label %._crit_edge.thread.i.i37

._crit_edge.thread.i.i37:                         ; preds = %bb.aj, %._crit_edge.i.i35
  tail call void @free(ptr noundef nonnull %.pre.i.i34) #35
  br label %Vec_WecFree.exit43

Vec_WecFree.exit43:                               ; preds = %._crit_edge.i.i35, %._crit_edge.thread.i.i37
  tail call void @free(ptr noundef nonnull %i.b) #35
  ret ptr %i.aq
}

; Function Attrs: nounwind uwtable
define ptr @Gia_ManDupDemiter(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 8 uses
  %.val111 = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val112 = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.c = getelementptr i8, ptr %.val112, i64 8
  %.val112.val = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.d = load i32, ptr %.val112.val, align 4, !tbaa !30
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [12 x i8], ptr %.val111, i64 %i.e ; 4 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 5 uses
  store i32 0, ptr %i.h, align 4, !tbaa !28
  store i32 100, ptr %i.g, align 8, !tbaa !58
  %i.i = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #33
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !29
  %i.k = load i64, ptr %i.f, align 4
  %i.l = and i64 %i.k, 536870911
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds [12 x i8], ptr %i.f, i64 %i.m
  tail call void @Gia_ManDupWithConstrCollectAnd_rec(ptr noundef %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.g, i32 noundef 1)
  %.val105 = load i64, ptr %i.f, align 4
  %i.o = and i64 %.val105, 536870912
  %.not = icmp eq i64 %i.o, 0
  %i.p = select i1 %.not, ptr @.str.34, ptr @.str.33
  %.val94 = load i32, ptr %i.h, align 4, !tbaa !28
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull %i.p, i32 noundef %.val94) ; 0 uses
  %i.r = tail call i32 @Gia_ManLevelNum(ptr noundef %0) #35 ; 0 uses
  %.val93127 = load i32, ptr %i.h, align 4, !tbaa !28 ; 3 uses
  %i.s = icmp sgt i32 %.val93127, 0
  br i1 %i.s, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr i8, ptr %0, i64 160
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Gia_ObjLevelId.exit
  %.val93171 = phi i32 [ %.val93127, %.lr.ph ], [ %.val93, %Gia_ObjLevelId.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Gia_ObjLevelId.exit ] ; 2 uses
  %.val96 = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val96, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !30
  %i.w = ashr i32 %i.v, 1                         ; 6 uses
  %.val117 = load ptr, ptr %i.t, align 8, !tbaa !101 ; 7 uses
  %i.x = add nsw i32 %i.w, 1                      ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val117, i64 4 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !28   ; 4 uses
  %.not.i.not.i.i = icmp slt i32 %i.w, %i.z
  br i1 %.not.i.not.i.i, label %Gia_ObjLevelId.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %.val117, align 8, !tbaa !58 ; 4 uses
  %i.ab = shl nsw i32 %i.aa, 1                    ; 2 uses
  %.not.i.i = icmp slt i32 %i.w, %i.ab
  %.not.i.i.not.i.i = icmp sgt i32 %i.aa, %i.w    ; 2 uses
  br i1 %.not.i.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.val117, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ad, null
  %i.ae = sext i32 %i.x to i64
  %i.af = shl nsw i64 %i.ae, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call ptr @realloc(ptr noundef nonnull %i.ad, i64 noundef %i.af) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.af) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = phi ptr [ %i.ag, %bb.f ], [ %i.ah, %bb.g ]
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !29
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.i:                                             ; preds = %bb.c
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp slt i32 %i.aa, 1073741823
  %spec.select.i.i.i = select i1 %i.aj, i32 %i.ab, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.aa, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.k, label %Vec_IntGrow.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.val117, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !29 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.al, null
  %i.am = sext i32 %spec.select.i.i.i to i64
  %i.an = shl nuw nsw i64 %i.am, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call ptr @realloc(ptr noundef nonnull %i.al, i64 noundef %i.an) #34
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.an) #33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = phi ptr [ %i.ao, %bb.l ], [ %i.ap, %bb.m ]
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !29
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.n, %bb.h
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.n ], [ %i.x, %bb.h ]
  store i32 %spec.select.sink.i.i.i, ptr %.val117, align 8, !tbaa !58
  %.pre.i.i = load i32, ptr %i.y, align 4, !tbaa !28
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.j, %bb.i, %bb.d
  %i.ar = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.z, %bb.j ], [ %i.z, %bb.i ], [ %i.z, %bb.d ] ; 2 uses
  %.not3.i.i = icmp sgt i32 %i.ar, %i.w
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val117, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !29
  %i.au = sext i32 %i.ar to i64                   ; 2 uses
  %wide.trip.count.i.i.i = sext i32 %i.x to i64
  %i.av = shl nsw i64 %i.au, 2
  %scevgep.i.i = getelementptr i8, ptr %i.at, i64 %i.av
  %i.aw = sub nsw i64 %wide.trip.count.i.i.i, %i.au
  %i.ax = shl nuw nsw i64 %i.aw, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.ax, i1 false), !tbaa !30
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.x, ptr %i.y, align 4, !tbaa !28
  %.val93.pre = load i32, ptr %i.h, align 4, !tbaa !28
  br label %Gia_ObjLevelId.exit

Gia_ObjLevelId.exit:                              ; preds = %bb.b, %._crit_edge.i.i.i
  %.val93 = phi i32 [ %.val93171, %bb.b ], [ %.val93.pre, %._crit_edge.i.i.i ] ; 3 uses
  %i.ay = getelementptr i8, ptr %.val117, i64 8
  %.val.i.i = load ptr, ptr %i.ay, align 8, !tbaa !29
  %i.az = sext i32 %i.w to i64                    ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !30
end_hunk_1
begin_hunk_2_@Gia_ManDupCofs:bb.a
  %indvars.iv187 = phi i64 [ 0, %.lr.ph164.split.new ], [ %indvars.iv.next188.1, %bb.j ] ; 4 uses
  %niter223 = phi i64 [ 0, %.lr.ph164.split.new ], [ %niter223.next.1, %bb.j ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.val138.val, i64 %indvars.iv187
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !30
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [12 x i8], ptr %.val137, i64 %i.du ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 4            ; 2 uses
  %i.dx = and i64 %i.dw, 536870911
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = getelementptr inbounds [12 x i8], ptr %i.dv, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !51
  %i.ec = trunc i64 %i.dw to i32
  %i.ed = lshr i32 %i.ec, 29
  %i.ee = and i32 %i.ed, 1
  %i.ef = xor i32 %i.ee, %i.eb
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv187
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !30
  %indvars.iv.next188 = or disjoint i64 %indvars.iv187, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.val138.val, i64 %indvars.iv.next188
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !30
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [12 x i8], ptr %.val137, i64 %i.ej ; 2 uses
  %i.el = load i64, ptr %i.ek, align 4            ; 2 uses
  %i.em = and i64 %i.el, 536870911
  %i.en = sub nsw i64 0, %i.em
  %i.eo = getelementptr inbounds [12 x i8], ptr %i.ek, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !51
  %i.er = trunc i64 %i.el to i32
  %i.es = lshr i32 %i.er, 29
  %i.et = and i32 %i.es, 1
  %i.eu = xor i32 %i.et, %i.eq
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next188
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !30
  %indvars.iv.next188.1 = add nuw nsw i64 %indvars.iv187, 2 ; 2 uses
  %niter223.next.1 = add i64 %niter223, 2         ; 2 uses
  %niter223.ncmp.1.not = icmp eq i64 %niter223.next.1, %unroll_iter222
  br i1 %niter223.ncmp.1.not, label %.critedge6.loopexit.unr-lcssa, label %bb.j, !llvm.loop !715

.critedge6.loopexit.unr-lcssa:                    ; preds = %bb.j
  %lcmp.mod220.not = icmp eq i64 %xtraiter218, 0
  br i1 %lcmp.mod220.not, label %.critedge6, label %.epil.preheader217

.epil.preheader217:                               ; preds = %.critedge6.loopexit.unr-lcssa, %.lr.ph164.split
  %indvars.iv187.epil.init = phi i64 [ 0, %.lr.ph164.split ], [ %indvars.iv.next188.1, %.critedge6.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod221 = trunc i32 %i.dq to i1
  tail call void @llvm.assume(i1 %lcmp.mod221)
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.val138.val, i64 %indvars.iv187.epil.init
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !30
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [12 x i8], ptr %.val137, i64 %i.ey ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 4            ; 2 uses
  %i.fb = and i64 %i.fa, 536870911
  %i.fc = sub nsw i64 0, %i.fb
  %i.fd = getelementptr inbounds [12 x i8], ptr %i.ez, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !51
  %i.fg = trunc i64 %i.fa to i32
  %i.fh = lshr i32 %i.fg, 29
  %i.fi = and i32 %i.fh, 1
  %i.fj = xor i32 %i.fi, %i.ff
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv187.epil.init
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !30
  br label %.critedge6

.critedge6:                                       ; preds = %.epil.preheader217, %.critedge6.loopexit.unr-lcssa, %.lr.ph164, %.critedge4
  %i.fl = icmp sgt i32 %i.b, 1
  br i1 %i.fl, label %.lr.ph177, label %.preheader

.lr.ph177:                                        ; preds = %.critedge6
  %i.fm = getelementptr i8, ptr %i.m, i64 8
  %.val145 = load ptr, ptr %i.fm, align 8, !tbaa !107
  %i.fn = getelementptr i8, ptr %1, i64 8
  br label %bb.k

.preheader:                                       ; preds = %.critedge10, %.critedge6
  %i.fo = icmp sgt i32 %i.e, 0
  br i1 %i.fo, label %.lr.ph179, label %.critedge12

.lr.ph179:                                        ; preds = %.preheader
  %wide.trip.count200 = zext nneg i32 %i.e to i64
  br label %bb.q

bb.k:                                             ; preds = %.lr.ph177, %.critedge10
  %i.fp = phi ptr [ %i.dm, %.lr.ph177 ], [ %i.hr, %.critedge10 ]
  %.0176 = phi i32 [ 0, %.lr.ph177 ], [ %i.fr, %.critedge10 ] ; 2 uses
  %.0101175 = phi i32 [ 1, %.lr.ph177 ], [ %i.iq, %.critedge10 ] ; 3 uses
  %i.fq = lshr i32 %.0101175, 1
  %i.fr = xor i32 %i.fq, %.0101175                ; 4 uses
  %i.fs = xor i32 %i.fr, %.0176                   ; 2 uses
  %i.ft = icmp eq i32 %i.fs, 1
  br i1 %i.ft, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fu = icmp eq i32 %.0176, %i.fr
  %i.fv = add i32 %i.fs, -1
  %i.fw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fv, i1 true)
  %i.fx = sub nuw nsw i32 32, %i.fw
  %.09.i = select i1 %i.fu, i32 0, i32 %i.fx
  %i.fy = zext nneg i32 %.09.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.fz = phi i64 [ %i.fy, %bb.l ], [ 0, %bb.k ]  ; 2 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %.val145, i64 %i.fz ; 2 uses
  %.val124 = load ptr, ptr %i.fn, align 8, !tbaa !29
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.val124, i64 %i.fz
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !30
  %.val143 = load ptr, ptr %i.v, align 8, !tbaa !49
  %.val144 = load ptr, ptr %i.x, align 8, !tbaa !56
  %i.gd = getelementptr i8, ptr %.val144, i64 8
  %.val144.val = load ptr, ptr %i.gd, align 8, !tbaa !29
  %i.ge = sext i32 %i.gc to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %.val144.val, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !30
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [12 x i8], ptr %.val143, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !51
  %i.gl = xor i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !51
  %i.gm = getelementptr i8, ptr %i.ga, i64 4      ; 2 uses
  %.val117166 = load i32, ptr %i.gm, align 4, !tbaa !28
  %i.gn = icmp sgt i32 %.val117166, 0
  br i1 %i.gn, label %.lr.ph168, label %.critedge8

.lr.ph168:                                        ; preds = %bb.m
  %i.go = getelementptr i8, ptr %i.ga, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph168, %bb.o
  %indvars.iv190 = phi i64 [ 0, %.lr.ph168 ], [ %indvars.iv.next191, %bb.o ] ; 2 uses
  %.val126 = load ptr, ptr %i.v, align 8, !tbaa !49 ; 2 uses
  %.not113 = icmp eq ptr %.val126, null
  br i1 %.not113, label %.critedge8.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val123 = load ptr, ptr %i.go, align 8, !tbaa !29
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.val123, i64 %indvars.iv190
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !30
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [12 x i8], ptr %.val126, i64 %i.gr ; 4 uses
  %i.gt = load i64, ptr %i.gs, align 4            ; 4 uses
  %i.gu = and i64 %i.gt, 536870911
  %i.gv = sub nsw i64 0, %i.gu
  %i.gw = getelementptr inbounds [12 x i8], ptr %i.gs, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !51
  %i.gz = trunc i64 %i.gt to i32
  %i.ha = lshr i32 %i.gz, 29
  %i.hb = and i32 %i.ha, 1
  %i.hc = xor i32 %i.hb, %i.gy
  %i.hd = lshr i64 %i.gt, 32
  %i.he = and i64 %i.hd, 536870911
  %i.hf = sub nsw i64 0, %i.he
  %i.hg = getelementptr inbounds [12 x i8], ptr %i.gs, i64 %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !51
  %i.hj = lshr i64 %i.gt, 61
  %i.hk = trunc nuw nsw i64 %i.hj to i32
  %i.hl = and i32 %i.hk, 1
  %i.hm = xor i32 %i.hl, %i.hi
  %i.hn = tail call i32 @Gia_ManHashAnd(ptr noundef nonnull %i.o, i32 noundef %i.hc, i32 noundef %i.hm) #35
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !51
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %.val117 = load i32, ptr %i.gm, align 4, !tbaa !28
  %i.hp = sext i32 %.val117 to i64
  %i.hq = icmp slt i64 %indvars.iv.next191, %i.hp
  br i1 %i.hq, label %bb.n, label %.critedge8.loopexit, !llvm.loop !716

.critedge8.loopexit:                              ; preds = %bb.o, %bb.n
  %.pre204 = load ptr, ptr %i.c, align 8, !tbaa !57
  br label %.critedge8

.critedge8:                                       ; preds = %.critedge8.loopexit, %bb.m
  %i.hr = phi ptr [ %.pre204, %.critedge8.loopexit ], [ %i.fp, %bb.m ] ; 3 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 4      ; 2 uses
  %.val116170 = load i32, ptr %i.hs, align 4, !tbaa !28 ; 2 uses
  %i.ht = icmp sgt i32 %.val116170, 0
  br i1 %i.ht, label %.lr.ph173, label %.critedge10

.lr.ph173:                                        ; preds = %.critedge8
  %.val135 = load ptr, ptr %i.v, align 8, !tbaa !49 ; 2 uses
  %.not114 = icmp eq ptr %.val135, null
  br i1 %.not114, label %.critedge10, label %.lr.ph173.split

.lr.ph173.split:                                  ; preds = %.lr.ph173
  %i.hu = getelementptr i8, ptr %i.hr, i64 8
  %.val136.val = load ptr, ptr %i.hu, align 8, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph173.split, %bb.p
  %indvars.iv193 = phi i64 [ 0, %.lr.ph173.split ], [ %indvars.iv.next194, %bb.p ] ; 3 uses
  %.val116172 = phi i32 [ %.val116170, %.lr.ph173.split ], [ %.val116, %bb.p ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.val136.val, i64 %indvars.iv193
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !30
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [12 x i8], ptr %.val135, i64 %i.hx ; 2 uses
  %i.hz = mul nuw nsw i32 %.val116172, %i.fr
  %i.ia = trunc nuw nsw i64 %indvars.iv193 to i32
  %i.ib = add nsw i32 %i.hz, %i.ia
  %i.ic = load i64, ptr %i.hy, align 4            ; 2 uses
  %i.id = and i64 %i.ic, 536870911
  %i.ie = sub nsw i64 0, %i.id
  %i.if = getelementptr inbounds [12 x i8], ptr %i.hy, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !51
  %i.ii = trunc i64 %i.ic to i32
  %i.ij = lshr i32 %i.ii, 29
  %i.ik = and i32 %i.ij, 1
  %i.il = xor i32 %i.ik, %i.ih
  %i.im = sext i32 %i.ib to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.im
  store i32 %i.il, ptr %i.in, align 4, !tbaa !30
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %.val116 = load i32, ptr %i.hs, align 4, !tbaa !28 ; 2 uses
  %i.io = sext i32 %.val116 to i64
  %i.ip = icmp slt i64 %indvars.iv.next194, %i.io
  br i1 %i.ip, label %bb.p, label %.critedge10, !llvm.loop !717

.critedge10:                                      ; preds = %bb.p, %.lr.ph173, %.critedge8
  %i.iq = add nuw nsw i32 %.0101175, 1            ; 2 uses
  %exitcond196.not = icmp eq i32 %i.iq, %i.b
  br i1 %exitcond196.not, label %.preheader, label %bb.k, !llvm.loop !718

bb.q:                                             ; preds = %.lr.ph179, %bb.q
  %indvars.iv197 = phi i64 [ 0, %.lr.ph179 ], [ %indvars.iv.next198, %bb.q ] ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv197
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !30
  %i.it = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.o, i32 noundef %i.is) ; 0 uses
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next198, %wide.trip.count200
  br i1 %exitcond201.not, label %.critedge12.thread, label %bb.q, !llvm.loop !719

.critedge12:                                      ; preds = %.preheader
  %.not.i148 = icmp eq ptr %i.l, null
  br i1 %.not.i148, label %Vec_IntFree.exit, label %.critedge12.thread

.critedge12.thread:                               ; preds = %bb.q, %.critedge12
  tail call void @free(ptr noundef nonnull %i.l) #35
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge12, %.critedge12.thread
  %i.iu = load i32, ptr %i.m, align 8, !tbaa !106 ; 2 uses
  %i.iv = icmp sgt i32 %i.iu, 0
  %i.iw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.pre.i.i = load ptr, ptr %i.iw, align 8, !tbaa !107 ; 3 uses
  br i1 %i.iv, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %Vec_IntFree.exit
  %i.ix = zext nneg i32 %i.iu to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.s
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.s ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !29 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.ja, null
  br i1 %.not15.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.ja) #35
  store ptr null, ptr %i.iz, align 8, !tbaa !29
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next.i.i, %i.ix
  br i1 %exitcond202.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %Vec_IntFree.exit
  %.not.i.i149 = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i149, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.s, %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %.pre.i.i) #35
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.m) #35
  %i.jb = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.o) #35
  tail call void @Gia_ManStop(ptr noundef nonnull %i.o) #35
  ret ptr %i.jb
}

; Function Attrs: nounwind uwtable
define ptr @Gia_ManDupUnCofs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val110 = load i32, ptr %i.a, align 4, !tbaa !28 ; 9 uses
  %i.b = shl nuw i32 1, %.val110                  ; 10 uses
  %i.c = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %.val129 = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.d = getelementptr i8, ptr %.val129, i64 4
  %.val129.val = load i32, ptr %i.d, align 4, !tbaa !28 ; 2 uses
  %i.e = sdiv i32 %.val129.val, %i.b              ; 3 uses
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 7 uses
  %i.g = add i32 %.val110, -1
  %or.cond.i.i = icmp ult i32 %i.g, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val110 ; 3 uses
  %i.h = getelementptr i8, ptr %i.f, i64 4        ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %i.i, align 8, !tbaa !29
  store i32 %.val110, ptr %i.h, align 4, !tbaa !28
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.j = sext i32 %spec.store.select.i.i to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #33 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !29
  store i32 %.val110, ptr %i.h, align 4, !tbaa !28
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %Vec_IntStartFull.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.n = sext i32 %.val110 to i64
  %i.o = shl nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.l, i8 -1, i64 %i.o, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val120 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.l, %bb.b ]
  %i.p = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val121 = load i32, ptr %i.p, align 8, !tbaa !54
  %i.q = add nsw i32 %.val129.val, %.val121
  %i.r = tail call ptr @Gia_ManStart(i32 noundef %i.q) #35 ; 8 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !60     ; 3 uses
  %.not.i131 = icmp eq ptr %i.s, null
  br i1 %.not.i131, label %Abc_UtilStrsav.exit, label %bb.c

bb.c:                                             ; preds = %Vec_IntStartFull.exit
  %i.t = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.s) #36
  %i.u = add i64 %i.t, 1
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #33 ; 2 uses
  %i.w = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull readonly dereferenceable(1) %i.s) #35 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %Vec_IntStartFull.exit, %bb.c
  %i.x = phi ptr [ %i.v, %bb.c ], [ null, %Vec_IntStartFull.exit ]
  store ptr %i.x, ptr %i.r, align 8, !tbaa !60
  tail call void @Gia_ManFillValue(ptr noundef nonnull %0) #35
  %i.y = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %.val126 = load ptr, ptr %i.y, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw i8, ptr %.val126, i64 8
  store i32 0, ptr %i.z, align 4, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %.val109154 = load i32, ptr %i.ac, align 4, !tbaa !28
  %i.ad = icmp sgt i32 %.val109154, 0
  br i1 %i.ad, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_UtilStrsav.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %Vec_IntFind.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntFind.exit.thread ] ; 3 uses
  %i.af = phi ptr [ %i.ab, %.lr.ph ], [ %i.av, %Vec_IntFind.exit.thread ]
  %.val122 = load ptr, ptr %i.y, align 8, !tbaa !49 ; 2 uses
  %.not = icmp eq ptr %.val122, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %.val123.val = load ptr, ptr %i.ag, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val123.val, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !30
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [12 x i8], ptr %.val122, i64 %i.aj
  %i.al = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.r) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 %i.al, ptr %i.am, align 4, !tbaa !51
  %i.an = load i32, ptr %i.a, align 4, !tbaa !28  ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i, label %Vec_IntFind.exit.thread

.lr.ph.i:                                         ; preds = %bb.e
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !29
  %wide.trip.count.i = zext nneg i32 %i.an to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !30
  %i.as = zext i32 %i.ar to i64
  %i.at = icmp eq i64 %indvars.iv, %i.as
  br i1 %i.at, label %Vec_IntFind.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_2
begin_hunk_3_@Gia_ManDupUnpipeline:bb.a
  br i1 %.not.i23.i, label %Vec_PtrAlloc.exit.i, label %bb.p

bb.p:                                             ; preds = %Vec_BitCount.exit.i
  %i.dw = sext i32 %spec.store.select.i.i126 to i64
  %i.dx = shl nsw i64 %i.dw, 3
  %i.dy = call noalias ptr @malloc(i64 noundef %i.dx) #33
  br label %Vec_PtrAlloc.exit.i

Vec_PtrAlloc.exit.i:                              ; preds = %bb.p, %Vec_BitCount.exit.i
  %i.dz = phi ptr [ %i.dy, %bb.p ], [ null, %Vec_BitCount.exit.i ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !79
  %i.eb = icmp sgt i32 %i.ce, 0
  br i1 %i.eb, label %.lr.ph.i, label %Gia_ManDupUnpipelineNamesUsed.exit

.lr.ph.i:                                         ; preds = %Vec_PtrAlloc.exit.i
  %i.ec = getelementptr i8, ptr %i.cc, i64 4
  %i.ed = getelementptr i8, ptr %i.cc, i64 8
  %wide.trip.count.i = zext nneg i32 %i.ce to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.ab, %.lr.ph.i
  %i.ee = phi ptr [ %i.dz, %.lr.ph.i ], [ %i.fo, %bb.ab ] ; 3 uses
  %i.ef = phi ptr [ %i.dz, %.lr.ph.i ], [ %i.fp, %bb.ab ] ; 5 uses
  %i.eg = phi i32 [ %spec.store.select.i.i126, %.lr.ph.i ], [ %i.fq, %bb.ab ] ; 8 uses
  %i.eh = phi i32 [ 0, %.lr.ph.i ], [ %i.fr, %bb.ab ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ab ] ; 5 uses
  %.val22.i = load ptr, ptr %i.t, align 8, !tbaa !137
  %i.ei = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ej = lshr i64 %indvars.iv.i, 5
  %i.ek = and i64 %i.ej, 134217727
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.val22.i, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !30
  %i.en = and i32 %i.ei, 31
  %i.eo = shl nuw i32 1, %i.en
  %i.ep = and i32 %i.eo, %i.em
  %.not.i127 = icmp eq i32 %i.ep, 0
  br i1 %.not.i127, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i = load i32, ptr %i.ec, align 4, !tbaa !77
  %i.eq = sext i32 %.val.i to i64
  %i.er = icmp slt i64 %indvars.iv.i, %i.eq
  br i1 %i.er, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %.val19.i = load ptr, ptr %i.ed, align 8, !tbaa !79
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.val19.i, i64 %indvars.iv.i
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !80 ; 3 uses
  %.not18.i = icmp eq ptr %i.et, null
  br i1 %.not18.i, label %.thread.i, label %Abc_UtilStrsav.exit.i

Abc_UtilStrsav.exit.i:                            ; preds = %bb.s
  %i.eu = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.et) #36
  %i.ev = add i64 %i.eu, 1
  %i.ew = call noalias ptr @malloc(i64 noundef %i.ev) #33 ; 2 uses
  %i.ex = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ew, ptr noundef nonnull readonly dereferenceable(1) %i.et) #35 ; 0 uses
  br label %.thread.i

.thread.i:                                        ; preds = %Abc_UtilStrsav.exit.i, %bb.s, %bb.r
  %i.ey = phi ptr [ %i.ew, %Abc_UtilStrsav.exit.i ], [ null, %bb.s ], [ null, %bb.r ]
  %i.ez = icmp eq i32 %i.eh, %i.eg
  br i1 %i.ez, label %bb.t, label %Vec_PtrPush.exit.i

bb.t:                                             ; preds = %.thread.i
  %i.fa = icmp slt i32 %i.eg, 16
  br i1 %i.fa, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %.not9.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not9.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fb = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ef, i64 noundef 128) #34
  br label %Vec_PtrGrow.exit12.sink.split.i.i

bb.w:                                             ; preds = %bb.u
  %i.fc = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #33
  br label %Vec_PtrGrow.exit12.sink.split.i.i

bb.x:                                             ; preds = %bb.t
  %i.fd = icmp samesign ult i32 %i.eg, 1073741823
  %i.fe = shl nuw nsw i32 %i.eg, 1
  %spec.select.i.i = select i1 %i.fd, i32 %i.fe, i32 2147483647 ; 4 uses
  %.not.i10.i.i = icmp samesign ult i32 %i.eg, %spec.select.i.i
  br i1 %.not.i10.i.i, label %bb.y, label %Vec_PtrPush.exit.i

bb.y:                                             ; preds = %bb.x
  %.not9.i11.i.i = icmp eq ptr %i.ef, null
  %i.ff = zext nneg i32 %spec.select.i.i to i64
  %i.fg = shl nuw nsw i64 %i.ff, 3                ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fh = call ptr @realloc(ptr noundef nonnull %i.ef, i64 noundef %i.fg) #34
  br label %Vec_PtrGrow.exit12.sink.split.i.i

bb.aa:                                            ; preds = %bb.y
  %i.fi = call noalias ptr @malloc(i64 noundef %i.fg) #33
  br label %Vec_PtrGrow.exit12.sink.split.i.i

Vec_PtrGrow.exit12.sink.split.i.i:                ; preds = %bb.aa, %bb.z, %bb.w, %bb.v
  %storemerge.i = phi ptr [ %i.fc, %bb.w ], [ %i.fb, %bb.v ], [ %i.fh, %bb.z ], [ %i.fi, %bb.aa ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.w ], [ 16, %bb.v ], [ %spec.select.i.i, %bb.z ], [ %spec.select.i.i, %bb.aa ] ; 2 uses
  store ptr %storemerge.i, ptr %i.ea, align 8, !tbaa !79
  store i32 %spec.select.sink.i.i, ptr %i.dt, align 8, !tbaa !78
  br label %Vec_PtrPush.exit.i

Vec_PtrPush.exit.i:                               ; preds = %Vec_PtrGrow.exit12.sink.split.i.i, %bb.x, %.thread.i
  %i.fj = phi ptr [ %i.ee, %.thread.i ], [ %i.ee, %bb.x ], [ %storemerge.i, %Vec_PtrGrow.exit12.sink.split.i.i ] ; 3 uses
  %i.fk = phi i32 [ %i.eg, %.thread.i ], [ %i.eg, %bb.x ], [ %spec.select.sink.i.i, %Vec_PtrGrow.exit12.sink.split.i.i ]
  %i.fl = add nsw i32 %i.eh, 1                    ; 2 uses
  store i32 %i.fl, ptr %i.dv, align 4, !tbaa !77
  %i.fm = sext i32 %i.eh to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.fm
  store ptr %i.ey, ptr %i.fn, align 8, !tbaa !80
  br label %bb.ab

bb.ab:                                            ; preds = %Vec_PtrPush.exit.i, %bb.q
  %i.fo = phi ptr [ %i.ee, %bb.q ], [ %i.fj, %Vec_PtrPush.exit.i ]
  %i.fp = phi ptr [ %i.ef, %bb.q ], [ %i.fj, %Vec_PtrPush.exit.i ]
  %i.fq = phi i32 [ %i.eg, %bb.q ], [ %i.fk, %Vec_PtrPush.exit.i ]
  %i.fr = phi i32 [ %i.eh, %bb.q ], [ %i.fl, %Vec_PtrPush.exit.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Gia_ManDupUnpipelineNamesUsed.exit.loopexit, label %bb.q, !llvm.loop !827

Gia_ManDupUnpipelineNamesUsed.exit.loopexit:      ; preds = %bb.ab
  %.val108.pre = load i32, ptr %i.b, align 8, !tbaa !62
  br label %Gia_ManDupUnpipelineNamesUsed.exit

Gia_ManDupUnpipelineNamesUsed.exit:               ; preds = %Gia_ManDupUnpipelineNamesUsed.exit.loopexit, %Abc_UtilStrsav.exit123, %Vec_PtrAlloc.exit.i
  %.val108 = phi i32 [ %.val102, %Abc_UtilStrsav.exit123 ], [ %.val102, %Vec_PtrAlloc.exit.i ], [ %.val108.pre, %Gia_ManDupUnpipelineNamesUsed.exit.loopexit ]
  %.015.i = phi ptr [ null, %Abc_UtilStrsav.exit123 ], [ %i.dt, %Vec_PtrAlloc.exit.i ], [ %i.dt, %Gia_ManDupUnpipelineNamesUsed.exit.loopexit ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bj, i64 640
  store ptr %.015.i, ptr %i.fs, align 8, !tbaa !74
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !81 ; 3 uses
  %.val109 = load ptr, ptr %i.ae, align 8, !tbaa !57
  %i.fv = getelementptr i8, ptr %.val109, i64 4
  %.val109.val = load i32, ptr %i.fv, align 4, !tbaa !28
  %i.fw = sub nsw i32 %.val109.val, %.val108      ; 5 uses
  %i.fx = icmp eq ptr %i.fu, null
  br i1 %i.fx, label %Gia_ManDupUnpipelineNames.exit, label %bb.ac

bb.ac:                                            ; preds = %Gia_ManDupUnpipelineNamesUsed.exit
  %i.fy = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 6 uses
  %i.fz = add i32 %i.fw, -1
  %or.cond.i.i128 = icmp ult i32 %i.fz, 7
  %spec.store.select.i.i129 = select i1 %or.cond.i.i128, i32 8, i32 %i.fw ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 4 ; 2 uses
  store i32 0, ptr %i.ga, align 4, !tbaa !77
  store i32 %spec.store.select.i.i129, ptr %i.fy, align 8, !tbaa !78
  %.not.i.i130 = icmp eq i32 %spec.store.select.i.i129, 0
  br i1 %.not.i.i130, label %Vec_PtrAlloc.exit.i131, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gb = sext i32 %spec.store.select.i.i129 to i64
  %i.gc = shl nsw i64 %i.gb, 3
  %i.gd = call noalias ptr @malloc(i64 noundef %i.gc) #33
  br label %Vec_PtrAlloc.exit.i131

Vec_PtrAlloc.exit.i131:                           ; preds = %bb.ad, %bb.ac
  %.promoted23.i = phi ptr [ %i.gd, %bb.ad ], [ null, %bb.ac ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  store ptr %.promoted23.i, ptr %i.ge, align 8, !tbaa !79
  %i.gf = icmp sgt i32 %i.fw, 0
  br i1 %i.gf, label %.lr.ph.i132, label %Gia_ManDupUnpipelineNames.exit

.lr.ph.i132:                                      ; preds = %Vec_PtrAlloc.exit.i131
  %i.gg = getelementptr i8, ptr %i.fu, i64 4
  %i.gh = getelementptr i8, ptr %i.fu, i64 8
  %wide.trip.count.i133 = zext nneg i32 %i.fw to i64
  br label %bb.ae

bb.ae:                                            ; preds = %Vec_PtrPush.exit.i137, %.lr.ph.i132
  %indvars.iv26.i = phi i64 [ 0, %.lr.ph.i132 ], [ %indvars.iv.next27.i, %Vec_PtrPush.exit.i137 ] ; 8 uses
  %storemerge24.i = phi ptr [ %.promoted23.i, %.lr.ph.i132 ], [ %storemerge25.i, %Vec_PtrPush.exit.i137 ] ; 6 uses
  %spec.select.sink.i22.i = phi i32 [ %spec.store.select.i.i129, %.lr.ph.i132 ], [ %spec.select.sink.i21.i, %Vec_PtrPush.exit.i137 ] ; 4 uses
  %.val.i135 = load i32, ptr %i.gg, align 4, !tbaa !77
  %i.gi = sext i32 %.val.i135 to i64
  %i.gj = icmp slt i64 %indvars.iv26.i, %i.gi
  br i1 %i.gj, label %bb.af, label %.thread.i136

bb.af:                                            ; preds = %bb.ae
  %.val16.i = load ptr, ptr %i.gh, align 8, !tbaa !79
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.val16.i, i64 %indvars.iv26.i
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !80 ; 3 uses
  %.not.i144 = icmp eq ptr %i.gl, null
  br i1 %.not.i144, label %.thread.i136, label %Abc_UtilStrsav.exit.i145

Abc_UtilStrsav.exit.i145:                         ; preds = %bb.af
  %i.gm = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.gl) #36
  %i.gn = add i64 %i.gm, 1
  %i.go = call noalias ptr @malloc(i64 noundef %i.gn) #33 ; 2 uses
  %i.gp = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.go, ptr noundef nonnull readonly dereferenceable(1) %i.gl) #35 ; 0 uses
  br label %.thread.i136

.thread.i136:                                     ; preds = %Abc_UtilStrsav.exit.i145, %bb.af, %bb.ae
  %i.gq = phi ptr [ %i.go, %Abc_UtilStrsav.exit.i145 ], [ null, %bb.af ], [ null, %bb.ae ]
  %i.gr = trunc nuw nsw i64 %indvars.iv26.i to i32
  %i.gs = icmp eq i32 %spec.select.sink.i22.i, %i.gr
  br i1 %i.gs, label %bb.ag, label %Vec_PtrPush.exit.i137

bb.ag:                                            ; preds = %.thread.i136
  %i.gt = icmp samesign ult i64 %indvars.iv26.i, 16
  br i1 %i.gt, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %.not9.i.i.i143 = icmp eq ptr %storemerge24.i, null
  br i1 %.not9.i.i.i143, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gu = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge24.i, i64 noundef 128) #34
  br label %Vec_PtrPush.exit.i137

bb.aj:                                            ; preds = %bb.ah
  %i.gv = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #33
  br label %Vec_PtrPush.exit.i137

bb.ak:                                            ; preds = %bb.ag
  %i.gw = icmp samesign ult i64 %indvars.iv26.i, 1073741823
  %i.gx = shl nuw nsw i32 %spec.select.sink.i22.i, 1
  %spec.select.i.i140 = select i1 %i.gw, i32 %i.gx, i32 2147483647 ; 3 uses
  %i.gy = zext nneg i32 %spec.select.i.i140 to i64 ; 2 uses
  %.not.i10.i.i141 = icmp samesign ult i64 %indvars.iv26.i, %i.gy
  br i1 %.not.i10.i.i141, label %bb.al, label %Vec_PtrPush.exit.i137

bb.al:                                            ; preds = %bb.ak
  %.not9.i11.i.i142 = icmp eq ptr %storemerge24.i, null
  %i.gz = shl nuw nsw i64 %i.gy, 3                ; 2 uses
  br i1 %.not9.i11.i.i142, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ha = call ptr @realloc(ptr noundef nonnull %storemerge24.i, i64 noundef %i.gz) #34
  br label %Vec_PtrPush.exit.i137

bb.an:                                            ; preds = %bb.al
  %i.hb = call noalias ptr @malloc(i64 noundef %i.gz) #33
  br label %Vec_PtrPush.exit.i137

Vec_PtrPush.exit.i137:                            ; preds = %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ai, %.thread.i136
  %storemerge25.i = phi ptr [ %storemerge24.i, %.thread.i136 ], [ %storemerge24.i, %bb.ak ], [ %i.gv, %bb.aj ], [ %i.gu, %bb.ai ], [ %i.ha, %bb.am ], [ %i.hb, %bb.an ] ; 3 uses
  %spec.select.sink.i21.i = phi i32 [ %spec.select.sink.i22.i, %.thread.i136 ], [ %spec.select.sink.i22.i, %bb.ak ], [ 16, %bb.aj ], [ 16, %bb.ai ], [ %spec.select.i.i140, %bb.am ], [ %spec.select.i.i140, %bb.an ] ; 2 uses
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %storemerge25.i, i64 %indvars.iv26.i
  store ptr %i.gq, ptr %i.hc, align 8, !tbaa !80
  %exitcond.not.i139 = icmp eq i64 %indvars.iv.next27.i, %wide.trip.count.i133
  br i1 %exitcond.not.i139, label %..loopexit_crit_edge.i, label %bb.ae, !llvm.loop !828

..loopexit_crit_edge.i:                           ; preds = %Vec_PtrPush.exit.i137
  store i32 %i.fw, ptr %i.ga, align 4, !tbaa !77
  store i32 %spec.select.sink.i21.i, ptr %i.fy, align 8
  store ptr %storemerge25.i, ptr %i.ge, align 8
  br label %Gia_ManDupUnpipelineNames.exit

Gia_ManDupUnpipelineNames.exit:                   ; preds = %Gia_ManDupUnpipelineNamesUsed.exit, %Vec_PtrAlloc.exit.i131, %..loopexit_crit_edge.i
  %.013.i = phi ptr [ null, %Gia_ManDupUnpipelineNamesUsed.exit ], [ %i.fy, %..loopexit_crit_edge.i ], [ %i.fy, %Vec_PtrAlloc.exit.i131 ]
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bj, i64 648
  store ptr %.013.i, ptr %i.hd, align 8, !tbaa !81
  call void @Gia_ManHashAlloc(ptr noundef nonnull %i.bj) #35
  %.val100159 = load i32, ptr %i.b, align 8, !tbaa !62 ; 3 uses
  %.val101160 = load ptr, ptr %i.e, align 8, !tbaa !56 ; 2 uses
  %i.he = getelementptr i8, ptr %.val101160, i64 4
  %.val101.val161 = load i32, ptr %i.he, align 4, !tbaa !28
  %i.hf = icmp sgt i32 %.val101.val161, %.val100159
  br i1 %i.hf, label %.lr.ph165, label %.critedge2

.lr.ph165:                                        ; preds = %Gia_ManDupUnpipelineNames.exit, %bb.aq
  %.val101188 = phi ptr [ %.val101, %bb.aq ], [ %.val101160, %Gia_ManDupUnpipelineNames.exit ] ; 2 uses
  %.val100186 = phi i32 [ %.val100, %bb.aq ], [ %.val100159, %Gia_ManDupUnpipelineNames.exit ] ; 2 uses
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %bb.aq ], [ 0, %Gia_ManDupUnpipelineNames.exit ] ; 4 uses
  %.0163 = phi i32 [ %.1, %bb.aq ], [ 0, %Gia_ManDupUnpipelineNames.exit ] ; 3 uses
  %.val90 = load ptr, ptr %i.ad, align 8, !tbaa !49
  %i.hg = getelementptr i8, ptr %.val101188, i64 8
  %.val91.val = load ptr, ptr %i.hg, align 8, !tbaa !29
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.val91.val, i64 %indvars.iv178
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !30
  %.not81 = icmp eq ptr %.val90, null
  br i1 %.not81, label %.critedge2, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph165
  %.val114 = load ptr, ptr %i.t, align 8, !tbaa !137
  %i.hj = trunc nuw nsw i64 %indvars.iv178 to i32
  %i.hk = lshr i64 %indvars.iv178, 5
  %i.hl = and i64 %i.hk, 134217727
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.val114, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !30
  %i.ho = and i32 %i.hj, 31
  %i.hp = shl nuw i32 1, %i.ho
  %i.hq = and i32 %i.hn, %i.hp
  %.not84 = icmp eq i32 %i.hq, 0
  br i1 %.not84, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hr = call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.bj)
  %.val = load ptr, ptr %i.bi, align 8, !tbaa !29
  %i.hs = sext i32 %i.hi to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.hs
  store i32 %i.hr, ptr %i.ht, align 4, !tbaa !30
  %i.hu = add nsw i32 %.0163, 1
  %.val100.pre = load i32, ptr %i.b, align 8, !tbaa !62
  %.val101.pre = load ptr, ptr %i.e, align 8, !tbaa !56
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %.val101 = phi ptr [ %.val101.pre, %bb.ap ], [ %.val101188, %bb.ao ] ; 2 uses
  %.val100 = phi i32 [ %.val100.pre, %bb.ap ], [ %.val100186, %bb.ao ] ; 3 uses
  %.1 = phi i32 [ %i.hu, %bb.ap ], [ %.0163, %bb.ao ] ; 2 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %i.hv = getelementptr i8, ptr %.val101, i64 4
  %.val101.val = load i32, ptr %i.hv, align 4, !tbaa !28
  %i.hw = sub nsw i32 %.val101.val, %.val100
  %i.hx = sext i32 %i.hw to i64
  %i.hy = icmp slt i64 %indvars.iv.next179, %i.hx
  br i1 %i.hy, label %.lr.ph165, label %.critedge2, !llvm.loop !829

.critedge2:                                       ; preds = %.lr.ph165, %bb.aq, %Gia_ManDupUnpipelineNames.exit
  %.val106168 = phi i32 [ %.val100159, %Gia_ManDupUnpipelineNames.exit ], [ %.val100, %bb.aq ], [ %.val100186, %.lr.ph165 ]
  %.0.lcssa = phi i32 [ 0, %Gia_ManDupUnpipelineNames.exit ], [ %.1, %bb.aq ], [ %.0163, %.lr.ph165 ]
  %.val107169 = load ptr, ptr %i.ae, align 8, !tbaa !57 ; 2 uses
  %i.hz = getelementptr i8, ptr %.val107169, i64 4
  %.val107.val170 = load i32, ptr %i.hz, align 4, !tbaa !28
  %i.ia = icmp sgt i32 %.val107.val170, %.val106168
  br i1 %i.ia, label %.lr.ph173, label %.critedge4

.lr.ph173:                                        ; preds = %.critedge2, %bb.as
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %bb.as ], [ 0, %.critedge2 ] ; 2 uses
  %.val107172 = phi ptr [ %.val107, %bb.as ], [ %.val107169, %.critedge2 ]
  %.val93 = load ptr, ptr %i.ad, align 8, !tbaa !49 ; 2 uses
  %i.ib = getelementptr i8, ptr %.val107172, i64 8
  %.val94.val = load ptr, ptr %i.ib, align 8, !tbaa !29
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.val94.val, i64 %indvars.iv181
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !30 ; 2 uses
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [12 x i8], ptr %.val93, i64 %i.ie ; 2 uses
  %.not82 = icmp eq ptr %.val93, null
  br i1 %.not82, label %.critedge4, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph173
  %.val3.i146 = load i64, ptr %i.if, align 4
  %i.ig = trunc i64 %.val3.i146 to i32
  %i.ih = and i32 %i.ig, 536870911
  %i.ii = sub nsw i32 %i.id, %i.ih
  %i.ij = call fastcc i32 @Gia_ManDupUnpipeline_rec(ptr noundef nonnull %i.bj, ptr noundef nonnull %0, ptr noundef nonnull %i.az, i32 noundef %i.ii, ptr noundef %i.a) ; 2 uses
  %i.ik = icmp slt i32 %i.ij, 0
  br i1 %i.ik, label %.critedge4, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val97 = load i64, ptr %i.if, align 4
  %i.il = trunc i64 %.val97 to i32
  %i.im = lshr i32 %i.il, 29
  %i.in = and i32 %i.im, 1
  %i.io = xor i32 %i.in, %i.ij
  %i.ip = call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.bj, i32 noundef %i.io) ; 0 uses
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %.val106 = load i32, ptr %i.b, align 8, !tbaa !62
  %.val107 = load ptr, ptr %i.ae, align 8, !tbaa !57 ; 2 uses
  %i.iq = getelementptr i8, ptr %.val107, i64 4
  %.val107.val = load i32, ptr %i.iq, align 4, !tbaa !28
  %i.ir = sub nsw i32 %.val107.val, %.val106
  %i.is = sext i32 %i.ir to i64
  %i.it = icmp slt i64 %indvars.iv.next182, %i.is
  br i1 %i.it, label %.lr.ph173, label %.critedge4, !llvm.loop !830

.critedge4:                                       ; preds = %.lr.ph173, %bb.ar, %bb.as, %.critedge2
  call void @Gia_ManHashStop(ptr noundef nonnull %i.bj) #35
  %i.iu = load ptr, ptr %i.bi, align 8, !tbaa !29 ; 2 uses
  %.not.i147 = icmp eq ptr %i.iu, null
  br i1 %.not.i147, label %Vec_IntFree.exit, label %bb.at

bb.at:                                            ; preds = %.critedge4
  call void @free(ptr noundef nonnull %i.iu) #35
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge4, %bb.at
  call void @free(ptr noundef nonnull %i.az) #35
  %i.iv = load ptr, ptr %i.t, align 8, !tbaa !137 ; 2 uses
  %.not.i148 = icmp eq ptr %i.iv, null
  br i1 %.not.i148, label %Vec_BitFree.exit149, label %bb.au

bb.au:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.iv) #35
  br label %Vec_BitFree.exit149

Vec_BitFree.exit149:                              ; preds = %Vec_IntFree.exit, %bb.au
  call void @free(ptr noundef nonnull %i.m) #35
  call void @Gia_ManSetRegNum(ptr noundef nonnull %i.bj, i32 noundef 0) #35
  %.not83 = icmp eq i32 %1, 0
  br i1 %.not83, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %Vec_BitFree.exit149
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.83, i32 noundef %.val99, i32 noundef %.0.lcssa)
  br label %bb.aw

bb.aw:                                            ; preds = %Vec_BitFree.exit149, %bb.av, %Vec_BitFree.exit, %bb.b
  %.075 = phi ptr [ %i.d, %bb.b ], [ null, %Vec_BitFree.exit ], [ %i.bj, %bb.av ], [ %i.bj, %Vec_BitFree.exit149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret ptr %.075
}

end_hunk_3
