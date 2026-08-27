Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaQbf?download=true
inline.NumInlined: 596
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@Gia_Gen2CreateMiter:bb.a

bb.ar:                                            ; preds = %bb.ap
  %i.el = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i174

bb.as:                                            ; preds = %bb.ao
  %i.em = icmp samesign ult i32 %i.ef, 1073741823
  %i.en = shl nuw nsw i32 %i.ef, 1
  %spec.select.i171 = select i1 %i.em, i32 %i.en, i32 2147483647 ; 4 uses
  %.not.i9.i172 = icmp samesign ult i32 %i.ef, %spec.select.i171
  %.pre315 = load ptr, ptr %i.ao, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i9.i172, label %bb.at, label %Vec_IntPush.exit178

bb.at:                                            ; preds = %bb.as
  %.not9.i10.i173 = icmp eq ptr %.pre315, null
  %i.eo = zext nneg i32 %spec.select.i171 to i64
  %i.ep = shl nuw nsw i64 %i.eo, 2                ; 2 uses
  br i1 %.not9.i10.i173, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eq = tail call ptr @realloc(ptr noundef nonnull %.pre315, i64 noundef %i.ep) #30
  br label %Vec_IntGrow.exit11.sink.split.i174

bb.av:                                            ; preds = %bb.at
  %i.er = tail call noalias ptr @malloc(i64 noundef %i.ep) #28
  br label %Vec_IntGrow.exit11.sink.split.i174

Vec_IntGrow.exit11.sink.split.i174:               ; preds = %bb.au, %bb.av, %bb.aq, %bb.ar
  %storemerge240 = phi ptr [ %i.el, %bb.ar ], [ %i.ek, %bb.aq ], [ %i.eq, %bb.au ], [ %i.er, %bb.av ] ; 2 uses
  %spec.select.sink.i175 = phi i32 [ 16, %bb.ar ], [ 16, %bb.aq ], [ %spec.select.i171, %bb.au ], [ %spec.select.i171, %bb.av ]
  store ptr %storemerge240, ptr %i.ao, align 8, !tbaa !12
  store i32 %spec.select.sink.i175, ptr %i.ah, align 8, !tbaa !8
  %.pre316 = load i32, ptr %i.aj, align 4, !tbaa !13
  br label %Vec_IntPush.exit178

Vec_IntPush.exit178:                              ; preds = %.Vec_IntPush.exit178_crit_edge, %bb.as, %Vec_IntGrow.exit11.sink.split.i174
  %i.es = phi i32 [ %i.ef, %.Vec_IntPush.exit178_crit_edge ], [ %i.ef, %bb.as ], [ %.pre316, %Vec_IntGrow.exit11.sink.split.i174 ] ; 2 uses
  %i.et = phi ptr [ %.pre314, %.Vec_IntPush.exit178_crit_edge ], [ %.pre315, %bb.as ], [ %storemerge240, %Vec_IntGrow.exit11.sink.split.i174 ]
  %i.eu = add nsw i32 %i.es, 1
  store i32 %i.eu, ptr %i.aj, align 4, !tbaa !13
  %i.ev = sext i32 %i.es to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.ev
  store i32 %i.ee, ptr %i.ew, align 4, !tbaa !14
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.val127, i64 %indvars.iv290
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !14
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.val126, i64 %indvars.iv290
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !14
  %i.fb = tail call i32 @Gia_ManHashAnd(ptr noundef nonnull %i.ap, i32 noundef %i.ey, i32 noundef %i.fa) #29
  %i.fc = xor i32 %i.fb, 1
  %i.fd = load i32, ptr %i.aj, align 4, !tbaa !13 ; 7 uses
  %i.fe = load i32, ptr %i.ah, align 8, !tbaa !8
  %i.ff = icmp eq i32 %i.fd, %i.fe
  br i1 %i.ff, label %bb.aw, label %Vec_IntPush.exit178.Vec_IntPush.exit186_crit_edge

Vec_IntPush.exit178.Vec_IntPush.exit186_crit_edge: ; preds = %Vec_IntPush.exit178
  %.pre317 = load ptr, ptr %i.ao, align 8, !tbaa !12
  br label %Vec_IntPush.exit186

bb.aw:                                            ; preds = %Vec_IntPush.exit178
  %i.fg = icmp slt i32 %i.fd, 16
  br i1 %i.fg, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.fh = load ptr, ptr %i.ao, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i184 = icmp eq ptr %i.fh, null
  br i1 %.not9.i.i184, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fi = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.fh, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i182

bb.az:                                            ; preds = %bb.ax
  %i.fj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i182

bb.ba:                                            ; preds = %bb.aw
  %i.fk = icmp samesign ult i32 %i.fd, 1073741823
  %i.fl = shl nuw nsw i32 %i.fd, 1
  %spec.select.i179 = select i1 %i.fk, i32 %i.fl, i32 2147483647 ; 4 uses
  %.not.i9.i180 = icmp samesign ult i32 %i.fd, %spec.select.i179
  %.pre318 = load ptr, ptr %i.ao, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i9.i180, label %bb.bb, label %Vec_IntPush.exit186

bb.bb:                                            ; preds = %bb.ba
  %.not9.i10.i181 = icmp eq ptr %.pre318, null
  %i.fm = zext nneg i32 %spec.select.i179 to i64
  %i.fn = shl nuw nsw i64 %i.fm, 2                ; 2 uses
  br i1 %.not9.i10.i181, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fo = tail call ptr @realloc(ptr noundef nonnull %.pre318, i64 noundef %i.fn) #30
  br label %Vec_IntGrow.exit11.sink.split.i182

bb.bd:                                            ; preds = %bb.bb
  %i.fp = tail call noalias ptr @malloc(i64 noundef %i.fn) #28
  br label %Vec_IntGrow.exit11.sink.split.i182

Vec_IntGrow.exit11.sink.split.i182:               ; preds = %bb.bc, %bb.bd, %bb.ay, %bb.az
  %storemerge241 = phi ptr [ %i.fj, %bb.az ], [ %i.fi, %bb.ay ], [ %i.fo, %bb.bc ], [ %i.fp, %bb.bd ] ; 2 uses
  %spec.select.sink.i183 = phi i32 [ 16, %bb.az ], [ 16, %bb.ay ], [ %spec.select.i179, %bb.bc ], [ %spec.select.i179, %bb.bd ]
  store ptr %storemerge241, ptr %i.ao, align 8, !tbaa !12
  store i32 %spec.select.sink.i183, ptr %i.ah, align 8, !tbaa !8
  %.pre319 = load i32, ptr %i.aj, align 4, !tbaa !13
  br label %Vec_IntPush.exit186

Vec_IntPush.exit186:                              ; preds = %Vec_IntPush.exit178.Vec_IntPush.exit186_crit_edge, %bb.ba, %Vec_IntGrow.exit11.sink.split.i182
  %i.fq = phi i32 [ %i.fd, %Vec_IntPush.exit178.Vec_IntPush.exit186_crit_edge ], [ %i.fd, %bb.ba ], [ %.pre319, %Vec_IntGrow.exit11.sink.split.i182 ] ; 2 uses
  %i.fr = phi ptr [ %.pre317, %Vec_IntPush.exit178.Vec_IntPush.exit186_crit_edge ], [ %.pre318, %bb.ba ], [ %storemerge241, %Vec_IntGrow.exit11.sink.split.i182 ]
  %i.fs = add nsw i32 %i.fq, 1
  store i32 %i.fs, ptr %i.aj, align 4, !tbaa !13
  %i.ft = sext i32 %i.fq to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.ft
  store i32 %i.fc, ptr %i.fu, align 4, !tbaa !14
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next291, %wide.trip.count293
  br i1 %exitcond294.not, label %._crit_edge258, label %bb.an, !llvm.loop !63

._crit_edge258:                                   ; preds = %Vec_IntPush.exit186, %._crit_edge
  %i.fv = tail call i32 @Gia_ManHashDualMiter(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ah) #29 ; 2 uses
  %.not = icmp eq i32 %0, 31
  br i1 %.not, label %._crit_edge281, label %.lr.ph280

.lr.ph280:                                        ; preds = %._crit_edge258
  %i.fw = add i32 %1, -1
  %or.cond.i187 = icmp ult i32 %i.fw, 15
  %spec.store.select.i188 = select i1 %or.cond.i187, i32 16, i32 %1 ; 5 uses
  %.not.i189 = icmp eq i32 %spec.store.select.i188, 0 ; 2 uses
  %i.fx = sext i32 %spec.store.select.i188 to i64
  %i.fy = shl nsw i64 %i.fx, 2                    ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %wide.trip.count303 = zext nneg i32 %1 to i64
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph280, %Vec_IntFree.exit221
  %.0278 = phi i32 [ %i.fv, %.lr.ph280 ], [ %.1.lcssa379, %Vec_IntFree.exit221 ] ; 4 uses
  %.5277 = phi i32 [ 0, %.lr.ph280 ], [ %i.jg, %Vec_IntFree.exit221 ] ; 3 uses
  %i.fz = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 2 uses
  store i32 0, ptr %i.ga, align 4, !tbaa !13
  store i32 %spec.store.select.i188, ptr %i.fz, align 8, !tbaa !8
  br i1 %.not.i189, label %Vec_IntAlloc.exit190, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gb = tail call noalias ptr @malloc(i64 noundef %i.fy) #28
  br label %Vec_IntAlloc.exit190

Vec_IntAlloc.exit190:                             ; preds = %bb.be, %bb.bf
  %.promoted265 = phi ptr [ %i.gb, %bb.bf ], [ null, %bb.be ] ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 3 uses
  store ptr %.promoted265, ptr %i.gc, align 8, !tbaa !12
  %i.gd = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 10 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4 ; 9 uses
  store i32 0, ptr %i.ge, align 4, !tbaa !13
  store i32 %spec.store.select.i188, ptr %i.gd, align 8, !tbaa !8
  br i1 %.not.i189, label %Vec_IntAlloc.exit194, label %bb.bg

bb.bg:                                            ; preds = %Vec_IntAlloc.exit190
  %i.gf = tail call noalias ptr @malloc(i64 noundef %i.fy) #28
  br label %Vec_IntAlloc.exit194

Vec_IntAlloc.exit194:                             ; preds = %Vec_IntAlloc.exit190, %bb.bg
  %i.gg = phi ptr [ %i.gf, %bb.bg ], [ null, %Vec_IntAlloc.exit190 ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 7 uses
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !12
  br i1 %i.dz, label %.lr.ph260, label %.thread

.lr.ph260:                                        ; preds = %Vec_IntAlloc.exit194, %Vec_IntPush.exit202
  %indvars.iv295 = phi i64 [ %indvars.iv.next296, %Vec_IntPush.exit202 ], [ 0, %Vec_IntAlloc.exit194 ] ; 7 uses
  %storemerge239266 = phi ptr [ %storemerge239267, %Vec_IntPush.exit202 ], [ %.promoted265, %Vec_IntAlloc.exit194 ] ; 6 uses
  %spec.select.sink.i199264 = phi i32 [ %spec.select.sink.i199263, %Vec_IntPush.exit202 ], [ %spec.store.select.i188, %Vec_IntAlloc.exit194 ] ; 3 uses
  %.0115259 = phi i32 [ %i.ha, %Vec_IntPush.exit202 ], [ 0, %Vec_IntAlloc.exit194 ] ; 2 uses
  %i.gi = shl i32 %.0115259, %0
  %i.gj = add nsw i32 %i.gi, %.5277
  %.val125 = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %.val125, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !14
  %i.gn = trunc nsw i64 %indvars.iv295 to i32
  %i.go = icmp eq i32 %spec.select.sink.i199264, %i.gn
  br i1 %i.go, label %bb.bh, label %Vec_IntPush.exit202

bb.bh:                                            ; preds = %.lr.ph260
  %i.gp = icmp samesign ult i64 %indvars.iv295, 16
  br i1 %i.gp, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %.not9.i.i200 = icmp eq ptr %storemerge239266, null
  br i1 %.not9.i.i200, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gq = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge239266, i64 noundef 64) #30
  br label %Vec_IntPush.exit202

bb.bk:                                            ; preds = %bb.bi
  %i.gr = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit202

bb.bl:                                            ; preds = %bb.bh
  %i.gs = icmp samesign ult i64 %indvars.iv295, 1073741823
  %indvars.iv295.tr = trunc i64 %indvars.iv295 to i32
  %i.gt = shl nsw i32 %indvars.iv295.tr, 1
  %spec.select.i195 = select i1 %i.gs, i32 %i.gt, i32 2147483647 ; 4 uses
  %i.gu = sext i32 %spec.select.i195 to i64
  %.not.i9.i196 = icmp samesign ult i64 %indvars.iv295, %i.gu
  br i1 %.not.i9.i196, label %bb.bm, label %Vec_IntPush.exit202

bb.bm:                                            ; preds = %bb.bl
  %.not9.i10.i197 = icmp eq ptr %storemerge239266, null
  %i.gv = zext nneg i32 %spec.select.i195 to i64
  %i.gw = shl nuw nsw i64 %i.gv, 2                ; 2 uses
  br i1 %.not9.i10.i197, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gx = tail call ptr @realloc(ptr noundef nonnull %storemerge239266, i64 noundef %i.gw) #30
  br label %Vec_IntPush.exit202

bb.bo:                                            ; preds = %bb.bm
  %i.gy = tail call noalias ptr @malloc(i64 noundef %i.gw) #28
  br label %Vec_IntPush.exit202

Vec_IntPush.exit202:                              ; preds = %bb.bk, %bb.bj, %bb.bo, %bb.bn, %.lr.ph260, %bb.bl
  %storemerge239267 = phi ptr [ %storemerge239266, %.lr.ph260 ], [ %storemerge239266, %bb.bl ], [ %i.gr, %bb.bk ], [ %i.gq, %bb.bj ], [ %i.gx, %bb.bn ], [ %i.gy, %bb.bo ] ; 5 uses
  %spec.select.sink.i199263 = phi i32 [ %spec.select.sink.i199264, %.lr.ph260 ], [ %spec.select.sink.i199264, %bb.bl ], [ 16, %bb.bk ], [ 16, %bb.bj ], [ %spec.select.i195, %bb.bn ], [ %spec.select.i195, %bb.bo ] ; 2 uses
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %storemerge239267, i64 %indvars.iv295
  store i32 %i.gm, ptr %i.gz, align 4, !tbaa !14
  %i.ha = add nuw nsw i32 %.0115259, 1            ; 2 uses
  %exitcond298.not = icmp eq i32 %i.ha, %1
  br i1 %exitcond298.not, label %bb.bp, label %.lr.ph260, !llvm.loop !64

bb.bp:                                            ; preds = %Vec_IntPush.exit202
  %i.hb = trunc nsw i64 %indvars.iv.next296 to i32
  store i32 %i.hb, ptr %i.ga, align 4, !tbaa !13
  store i32 %spec.select.sink.i199263, ptr %i.fz, align 8
  store ptr %storemerge239267, ptr %i.gc, align 8
  %i.hc = add nuw nsw i32 %.5277, 1               ; 4 uses
  %i.hd = icmp slt i32 %i.hc, %i.a
  br i1 %i.hd, label %.lr.ph270.us, label %._crit_edge276.thread

.thread:                                          ; preds = %Vec_IntAlloc.exit194
  %i.he = add nuw nsw i32 %.5277, 1               ; 4 uses
  %i.hf = icmp slt i32 %i.he, %i.a
  br i1 %i.hf, label %.lr.ph275.split, label %._crit_edge276

.lr.ph270.us:                                     ; preds = %bb.bp, %._crit_edge271.us
  %.1273.us = phi i32 [ %i.iw, %._crit_edge271.us ], [ %.0278, %bb.bp ]
  %.0117272.us = phi i32 [ %i.ix, %._crit_edge271.us ], [ %i.hc, %bb.bp ] ; 2 uses
  store i32 0, ptr %i.ge, align 4, !tbaa !13
  br label %bb.bq

thread-pre-split:                                 ; preds = %Vec_IntPush.exit218.us
  %.pr = load i32, ptr %i.ge, align 4, !tbaa !13
  br label %bb.bq

bb.bq:                                            ; preds = %thread-pre-split, %.lr.ph270.us
  %i.hg = phi i32 [ %.pr, %thread-pre-split ], [ 0, %.lr.ph270.us ] ; 7 uses
  %indvars.iv300 = phi i64 [ %indvars.iv.next301, %thread-pre-split ], [ 0, %.lr.ph270.us ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %storemerge239267, i64 %indvars.iv300
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !14
  %i.hj = load i32, ptr %i.gd, align 8, !tbaa !8
  %i.hk = icmp eq i32 %i.hg, %i.hj
  br i1 %i.hk, label %bb.br, label %.Vec_IntPush.exit210.us_crit_edge

.Vec_IntPush.exit210.us_crit_edge:                ; preds = %bb.bq
  %.pre321 = load ptr, ptr %i.gh, align 8, !tbaa !12
  br label %Vec_IntPush.exit210.us

bb.br:                                            ; preds = %bb.bq
  %i.hl = icmp slt i32 %i.hg, 16
  br i1 %i.hl, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hm = icmp samesign ult i32 %i.hg, 1073741823
  %i.hn = shl nuw nsw i32 %i.hg, 1
  %spec.select.i203.us = select i1 %i.hm, i32 %i.hn, i32 2147483647 ; 4 uses
  %.not.i9.i204.us = icmp samesign ult i32 %i.hg, %spec.select.i203.us
  %.pre322 = load ptr, ptr %i.gh, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i9.i204.us, label %bb.bt, label %Vec_IntPush.exit210.us

bb.bt:                                            ; preds = %bb.bs
  %.not9.i10.i205.us = icmp eq ptr %.pre322, null
  %i.ho = zext nneg i32 %spec.select.i203.us to i64
  %i.hp = shl nuw nsw i64 %i.ho, 2                ; 2 uses
  br i1 %.not9.i10.i205.us, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hq = tail call ptr @realloc(ptr noundef nonnull %.pre322, i64 noundef %i.hp) #30
  br label %Vec_IntGrow.exit11.sink.split.i206.us

bb.bv:                                            ; preds = %bb.bt
  %i.hr = tail call noalias ptr @malloc(i64 noundef %i.hp) #28
  br label %Vec_IntGrow.exit11.sink.split.i206.us

bb.bw:                                            ; preds = %bb.br
  %i.hs = load ptr, ptr %i.gh, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i208.us = icmp eq ptr %i.hs, null
  br i1 %.not9.i.i208.us, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ht = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hs, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i206.us

bb.by:                                            ; preds = %bb.bw
  %i.hu = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i206.us

Vec_IntGrow.exit11.sink.split.i206.us:            ; preds = %bb.by, %bb.bx, %bb.bv, %bb.bu
  %storemerge.us = phi ptr [ %i.hu, %bb.by ], [ %i.ht, %bb.bx ], [ %i.hq, %bb.bu ], [ %i.hr, %bb.bv ] ; 2 uses
  %spec.select.sink.i207.us = phi i32 [ 16, %bb.by ], [ 16, %bb.bx ], [ %spec.select.i203.us, %bb.bu ], [ %spec.select.i203.us, %bb.bv ]
  store ptr %storemerge.us, ptr %i.gh, align 8, !tbaa !12
  store i32 %spec.select.sink.i207.us, ptr %i.gd, align 8, !tbaa !8
  %.pre323 = load i32, ptr %i.ge, align 4, !tbaa !13
  br label %Vec_IntPush.exit210.us

Vec_IntPush.exit210.us:                           ; preds = %.Vec_IntPush.exit210.us_crit_edge, %Vec_IntGrow.exit11.sink.split.i206.us, %bb.bs
  %i.hv = phi i32 [ %i.hg, %.Vec_IntPush.exit210.us_crit_edge ], [ %.pre323, %Vec_IntGrow.exit11.sink.split.i206.us ], [ %i.hg, %bb.bs ] ; 2 uses
  %i.hw = phi ptr [ %.pre321, %.Vec_IntPush.exit210.us_crit_edge ], [ %storemerge.us, %Vec_IntGrow.exit11.sink.split.i206.us ], [ %.pre322, %bb.bs ] ; 4 uses
  %i.hx = add nsw i32 %i.hv, 1
  store i32 %i.hx, ptr %i.ge, align 4, !tbaa !13
  %i.hy = sext i32 %i.hv to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.hy
  store i32 %i.hi, ptr %i.hz, align 4, !tbaa !14
  %i.ia = trunc nuw nsw i64 %indvars.iv300 to i32
  %i.ib = shl i32 %i.ia, %0
  %i.ic = add nsw i32 %i.ib, %.0117272.us
  %.val.us = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %.val.us, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !14
  %i.ig = load i32, ptr %i.ge, align 4, !tbaa !13 ; 7 uses
  %i.ih = load i32, ptr %i.gd, align 8, !tbaa !8
  %i.ii = icmp eq i32 %i.ig, %i.ih
  br i1 %i.ii, label %bb.bz, label %Vec_IntPush.exit218.us

bb.bz:                                            ; preds = %Vec_IntPush.exit210.us
  %i.ij = icmp slt i32 %i.ig, 16
  br i1 %i.ij, label %Vec_IntGrow.exit11.sink.split.i214.us, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ik = icmp samesign ult i32 %i.ig, 1073741823
  %i.il = shl nuw nsw i32 %i.ig, 1
  %spec.select.i211.us = select i1 %i.ik, i32 %i.il, i32 2147483647 ; 3 uses
  %.not.i9.i212.us = icmp samesign ult i32 %i.ig, %spec.select.i211.us
  br i1 %.not.i9.i212.us, label %bb.cb, label %Vec_IntPush.exit218.us

bb.cb:                                            ; preds = %bb.ca
  %i.im = zext nneg i32 %spec.select.i211.us to i64
  %i.in = shl nuw nsw i64 %i.im, 2
  br label %Vec_IntGrow.exit11.sink.split.i214.us

Vec_IntGrow.exit11.sink.split.i214.us:            ; preds = %bb.bz, %bb.cb
  %.sink = phi i64 [ %i.in, %bb.cb ], [ 64, %bb.bz ]
  %spec.select.sink.i215.us = phi i32 [ %spec.select.i211.us, %bb.cb ], [ 16, %bb.bz ]
  %i.io = tail call ptr @realloc(ptr noundef nonnull %i.hw, i64 noundef %.sink) #30 ; 2 uses
  store ptr %i.io, ptr %i.gh, align 8, !tbaa !12
  store i32 %spec.select.sink.i215.us, ptr %i.gd, align 8, !tbaa !8
  %.pre324 = load i32, ptr %i.ge, align 4, !tbaa !13
  br label %Vec_IntPush.exit218.us

Vec_IntPush.exit218.us:                           ; preds = %Vec_IntGrow.exit11.sink.split.i214.us, %bb.ca, %Vec_IntPush.exit210.us
  %i.ip = phi i32 [ %.pre324, %Vec_IntGrow.exit11.sink.split.i214.us ], [ %i.ig, %bb.ca ], [ %i.ig, %Vec_IntPush.exit210.us ] ; 2 uses
  %i.iq = phi ptr [ %i.io, %Vec_IntGrow.exit11.sink.split.i214.us ], [ %i.hw, %bb.ca ], [ %i.hw, %Vec_IntPush.exit210.us ]
  %i.ir = add nsw i32 %i.ip, 1
  store i32 %i.ir, ptr %i.ge, align 4, !tbaa !13
  %i.is = sext i32 %i.ip to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.is
  store i32 %i.if, ptr %i.it, align 4, !tbaa !14
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1 ; 2 uses
  %exitcond304.not = icmp eq i64 %indvars.iv.next301, %wide.trip.count303
  br i1 %exitcond304.not, label %._crit_edge271.us, label %thread-pre-split, !llvm.loop !65

._crit_edge271.us:                                ; preds = %Vec_IntPush.exit218.us
  %i.iu = tail call i32 @Gia_ManHashDualMiter(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.gd) #29
  %i.iv = xor i32 %i.iu, 1
  %i.iw = tail call i32 @Gia_ManHashOr(ptr noundef nonnull %i.ap, i32 noundef %.1273.us, i32 noundef %i.iv) #29 ; 2 uses
  %i.ix = add nuw nsw i32 %.0117272.us, 1         ; 2 uses
  %exitcond305.not = icmp eq i32 %i.ix, %i.a
  br i1 %exitcond305.not, label %._crit_edge276.loopexit, label %.lr.ph270.us, !llvm.loop !66

.lr.ph275.split:                                  ; preds = %.thread, %.lr.ph275.split
  %.1273 = phi i32 [ %i.ja, %.lr.ph275.split ], [ %.0278, %.thread ]
  %.0117272 = phi i32 [ %i.jb, %.lr.ph275.split ], [ %i.he, %.thread ]
  store i32 0, ptr %i.ge, align 4, !tbaa !13
  %i.iy = tail call i32 @Gia_ManHashDualMiter(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.gd) #29
  %i.iz = xor i32 %i.iy, 1
  %i.ja = tail call i32 @Gia_ManHashOr(ptr noundef nonnull %i.ap, i32 noundef %.1273, i32 noundef %i.iz) #29 ; 2 uses
  %i.jb = add nuw i32 %.0117272, 1                ; 2 uses
  %exitcond299.not = icmp eq i32 %i.jb, %i.a
  br i1 %exitcond299.not, label %._crit_edge276, label %.lr.ph275.split, !llvm.loop !66

._crit_edge276.loopexit:                          ; preds = %._crit_edge271.us
  %.pre325 = load ptr, ptr %i.gc, align 8, !tbaa !12
  br label %._crit_edge276

._crit_edge276:                                   ; preds = %.lr.ph275.split, %.thread, %._crit_edge276.loopexit
  %i.jc = phi i32 [ %i.he, %.thread ], [ %i.hc, %._crit_edge276.loopexit ], [ %i.he, %.lr.ph275.split ] ; 2 uses
  %i.jd = phi ptr [ %.promoted265, %.thread ], [ %.pre325, %._crit_edge276.loopexit ], [ %.promoted265, %.lr.ph275.split ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0278, %.thread ], [ %i.iw, %._crit_edge276.loopexit ], [ %i.ja, %.lr.ph275.split ] ; 2 uses
  %.not.i219 = icmp eq ptr %i.jd, null
  br i1 %.not.i219, label %Vec_IntFree.exit, label %._crit_edge276.thread

end_hunk_0
begin_hunk_1_@Gia_Gen2CodePrint:bb.a
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i101
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !70
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.i101
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !70
  %.not.i102 = icmp eq i64 %i.fj, %i.fl
  br i1 %.not.i102, label %bb.t, label %Abc_TtEqual.exit

Abc_TtEqual.exit:                                 ; preds = %bb.t, %.lr.ph.i100, %bb.s
  %i.fm = phi ptr [ @.str.22, %bb.s ], [ @.str.22, %bb.t ], [ @.str.23, %.lr.ph.i100 ]
  %i.fn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull %i.fm) ; 0 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %.not72 = icmp eq ptr %i.by, null
  br i1 %.not72, label %bb.v, label %bb.u

bb.u:                                             ; preds = %Abc_TtEqual.exit
  call void @free(ptr noundef nonnull %i.by) #29
  br label %bb.v

bb.v:                                             ; preds = %Abc_TtEqual.exit, %bb.u
  %.not73 = icmp eq ptr %i.dr, null
  br i1 %.not73, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.dr) #29
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.not74 = icmp eq ptr %i.dq, null
  br i1 %.not74, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef nonnull %i.dq) #29
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.not75 = icmp eq ptr %i.bo, null
  br i1 %.not75, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.bo) #29
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.fo = add nuw nsw i32 %.0121, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fo, 16
  br i1 %exitcond.not, label %bb.ac, label %.lr.ph117.preheader, !llvm.loop !78

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

declare void @Extra_PrintBinary(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @Gia_Gen2CodeTest() local_unnamed_addr #0 {
Vec_IntFree.exit:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 16, ptr %i.a, align 8, !tbaa !8
  %i.c = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !12
  %i.e = tail call i64 @time(ptr noundef null) #29
  %i.f = trunc i64 %i.e to i32
  tail call void @srand(i32 noundef %i.f) #29
  %i.g = tail call i32 @rand() #29
  %i.h = and i32 %i.g, 1
  store i32 %i.h, ptr %i.c, align 4, !tbaa !14
  %i.i = tail call i32 @rand() #29
  %i.j = and i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.j, ptr %i.k, align 4, !tbaa !14
  %i.l = tail call i32 @rand() #29
  %i.m = and i32 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.m, ptr %i.n, align 4, !tbaa !14
  %i.o = tail call i32 @rand() #29
  %i.p = and i32 %i.o, 1
  store i32 4, ptr %i.b, align 4, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.p, ptr %i.q, align 4, !tbaa !14
  tail call void @Gia_Gen2CodePrint(i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.a)
  tail call void @free(ptr noundef nonnull %i.c) #29
  tail call void @free(ptr noundef nonnull %i.a) #29
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Gia_ManSatEnum(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #29
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %7, align 8, !tbaa !79
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !81
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.i = call ptr @Mf_ManGenerateCnf(ptr noundef %0, i32 noundef 8, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #29 ; 3 uses
  %i.j = call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.i, i32 noundef 1, i32 noundef 0) #29 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !82
  %i.m = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %.val74 = load i32, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr i8, ptr %0, i64 64         ; 4 uses
  %.val75 = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.o = getelementptr i8, ptr %.val75, i64 4
  %.val75.val = load i32, ptr %i.o, align 4, !tbaa !13
  call void @Cnf_DataFree(ptr noundef %i.i) #29
  %.val72 = load i32, ptr %i.m, align 8, !tbaa !22
  %.val73 = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.p = getelementptr i8, ptr %.val73, i64 4
  %.val73.val = load i32, ptr %i.p, align 4, !tbaa !13
  %i.q = sub nsw i32 %.val73.val, %.val72         ; 2 uses
  %i.r = add i32 %i.q, -1
  %or.cond.i = icmp ult i32 %i.r, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.q ; 3 uses
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.s = sext i32 %spec.store.select.i to i64
  %i.t = shl nsw i64 %i.s, 2
  %i.u = call noalias ptr @malloc(i64 noundef %i.t) #28
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %Abc_Clock.exit, %bb.c
  %i.v = phi ptr [ %i.u, %bb.c ], [ null, %Abc_Clock.exit ]
  %i.w = sext i32 %1 to i64
  %.neg = add i32 %.val74, %i.l
  %i.x = sub i32 %.neg, %.val75.val
  %i.y = getelementptr i8, ptr %i.j, i64 328
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  %.not63 = icmp eq i32 %2, 0                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = sext i32 %2 to i64                      ; 2 uses
  %i.ab = sext i32 %i.x to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.t, %Vec_IntAlloc.exit
  %.val77120 = phi ptr [ %i.v, %Vec_IntAlloc.exit ], [ %.val77128, %bb.t ] ; 5 uses
  %.promoted96 = phi i32 [ %spec.store.select.i, %Vec_IntAlloc.exit ], [ %.promoted96116132, %bb.t ] ; 3 uses
  %.055 = phi i32 [ 1, %Vec_IntAlloc.exit ], [ %i.bw, %bb.t ] ; 3 uses
  %.053 = phi i32 [ 0, %Vec_IntAlloc.exit ], [ %i.ad, %bb.t ] ; 3 uses
  %i.ac = call i32 @sat_solver_solve(ptr noundef %i.j, ptr noundef null, ptr noundef null, i64 noundef %i.w, i64 noundef 0, i64 noundef 0, i64 noundef 0) #29 ; 2 uses
  switch i32 %i.ac, label %bb.e [
    i32 -1, label %.loopexit.loopexit
    i32 0, label %.loopexit
  ]

bb.e:                                             ; preds = %bb.d
  %i.ad = add nuw nsw i32 %.053, 1                ; 3 uses
  %.val7092 = load i32, ptr %i.m, align 8, !tbaa !22
  %.val7193 = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.ae = getelementptr i8, ptr %.val7193, i64 4
  %.val71.val94 = load i32, ptr %i.ae, align 4, !tbaa !13
  %i.af = icmp sgt i32 %.val71.val94, %.val7092
  br i1 %i.af, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.e, %Vec_IntPush.exit
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %Vec_IntPush.exit ], [ 0, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %bb.e ] ; 7 uses
  %storemerge100 = phi ptr [ %storemerge101, %Vec_IntPush.exit ], [ %.val77120, %bb.e ] ; 6 uses
  %spec.select.sink.i98 = phi i32 [ %spec.select.sink.i97, %Vec_IntPush.exit ], [ %.promoted96, %bb.e ] ; 3 uses
  %i.ag = add nsw i64 %indvars.iv107, %i.ab       ; 2 uses
  %.val78 = load ptr, ptr %i.y, align 8, !tbaa !87
  %i.ah = getelementptr inbounds [4 x i8], ptr %.val78, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !14
  %i.aj = icmp eq i32 %i.ai, 1
  %i.ak = zext i1 %i.aj to i32
  %.tr = trunc i64 %i.ag to i32
  %i.al = shl nsw i32 %.tr, 1
  %i.am = or disjoint i32 %i.al, %i.ak
  %i.an = trunc nsw i64 %indvars.iv to i32
  %i.ao = icmp eq i32 %spec.select.sink.i98, %i.an
  br i1 %i.ao, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ap = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.ap, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i = icmp eq ptr %storemerge100, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge100, i64 noundef 64) #30
  br label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.g
  %i.ar = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.f
  %i.as = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.at = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.as, i32 %i.at, i32 2147483647 ; 4 uses
  %i.au = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.au
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %.not9.i10.i = icmp eq ptr %storemerge100, null
  %i.av = zext nneg i32 %spec.select.i to i64
  %i.aw = shl nuw nsw i64 %i.av, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = call ptr @realloc(ptr noundef nonnull %storemerge100, i64 noundef %i.aw) #30
  br label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.k
  %i.ay = call noalias ptr @malloc(i64 noundef %i.aw) #28
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.i, %bb.h, %bb.m, %bb.l, %.lr.ph, %bb.j
  %storemerge101 = phi ptr [ %storemerge100, %.lr.ph ], [ %storemerge100, %bb.j ], [ %i.ar, %bb.i ], [ %i.aq, %bb.h ], [ %i.ax, %bb.l ], [ %i.ay, %bb.m ] ; 5 uses
  %spec.select.sink.i97 = phi i32 [ %spec.select.sink.i98, %.lr.ph ], [ %spec.select.sink.i98, %bb.j ], [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i, %bb.l ], [ %spec.select.i, %bb.m ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %storemerge101, i64 %indvars.iv
  store i32 %i.am, ptr %i.az, align 4, !tbaa !14
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %.val70 = load i32, ptr %i.m, align 8, !tbaa !22
  %.val71 = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.ba = getelementptr i8, ptr %.val71, i64 4
  %.val71.val = load i32, ptr %i.ba, align 4, !tbaa !13
  %i.bb = sub nsw i32 %.val71.val, %.val70
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next108, %i.bc
  br i1 %i.bd, label %.lr.ph, label %bb.n, !llvm.loop !97

bb.n:                                             ; preds = %Vec_IntPush.exit
  br i1 %.not, label %bb.p, label %.lr.ph104

.thread:                                          ; preds = %bb.e
  br i1 %.not, label %bb.p, label %.thread133

.thread133:                                       ; preds = %.thread
  %i.be = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %.055) ; 0 uses
  br label %.critedge

.lr.ph104:                                        ; preds = %bb.n
  %i.bf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %.055) ; 0 uses
  %wide.trip.count = and i64 %indvars.iv.next, 4294967295
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph104, %bb.o
  %indvars.iv112 = phi i64 [ 0, %.lr.ph104 ], [ %indvars.iv.next113, %bb.o ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %storemerge101, i64 %indvars.iv112
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !14
  %i.bi = and i32 %i.bh, 1
  %i.bj = xor i32 %i.bi, 1
  %i.bk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.bj) ; 0 uses
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.o, !llvm.loop !98

.critedge:                                        ; preds = %bb.o, %.thread133
  %.val77127139 = phi ptr [ %.val77120, %.thread133 ], [ %storemerge101, %bb.o ]
  %.val129138 = phi i64 [ 0, %.thread133 ], [ %indvars.iv.next, %bb.o ]
  %.promoted96116131137 = phi i32 [ %.promoted96, %.thread133 ], [ %spec.select.sink.i97, %bb.o ]
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %.thread, %.critedge, %bb.n
  %.promoted96116132 = phi i32 [ %.promoted96, %.thread ], [ %.promoted96116131137, %.critedge ], [ %spec.select.sink.i97, %bb.n ]
  %.val130 = phi i64 [ 0, %.thread ], [ %.val129138, %.critedge ], [ %indvars.iv.next, %bb.n ]
  %.val77128 = phi ptr [ %.val77120, %.thread ], [ %.val77127139, %.critedge ], [ %storemerge101, %bb.n ] ; 5 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %.val77128, i64 %.val130
  %i.bm = call i32 @sat_solver_addclause(ptr noundef %i.j, ptr noundef %.val77128, ptr noundef %i.bl) #29
  %.not62 = icmp eq i32 %i.bm, 0
  br i1 %.not62, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not63, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.bn = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #29
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %Abc_Clock.exit80, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = load i64, ptr %6, align 8, !tbaa !79
  %i.bq = mul nsw i64 %i.bp, 1000000
  %i.br = load i64, ptr %i.z, align 8, !tbaa !81
  %i.bs = sdiv i64 %i.br, 1000
  %i.bt = add nsw i64 %i.bs, %i.bq
  br label %Abc_Clock.exit80

Abc_Clock.exit80:                                 ; preds = %bb.r, %bb.s
  %.0.i79 = phi i64 [ %i.bt, %bb.s ], [ -1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.bu = sub nsw i64 %.0.i79, %.0.i
  %i.bv = sdiv i64 %i.bu, 1000000
  %.not64 = icmp slt i64 %i.bv, %i.aa
  br i1 %.not64, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %Abc_Clock.exit80, %bb.q
  %i.bw = add nuw nsw i32 %.055, 1
  br label %bb.d

.loopexit.loopexit:                               ; preds = %bb.d
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %Abc_Clock.exit80, %bb.d, %.loopexit.loopexit
  %i.bx = phi ptr [ %.val77120, %bb.d ], [ %.val77128, %bb.p ], [ %.val77128, %Abc_Clock.exit80 ], [ %.val77120, %.loopexit.loopexit ] ; 2 uses
  %.154.ph = phi i32 [ %.053, %bb.d ], [ %i.ad, %bb.p ], [ %i.ad, %Abc_Clock.exit80 ], [ %.053, %.loopexit.loopexit ] ; 3 uses
  %i.by = phi i1 [ false, %bb.d ], [ true, %bb.p ], [ false, %Abc_Clock.exit80 ], [ true, %.loopexit.loopexit ]
  %.1.ph = phi i32 [ %i.ac, %bb.d ], [ 1, %bb.p ], [ 0, %Abc_Clock.exit80 ], [ 1, %.loopexit.loopexit ]
  call void @sat_solver_delete(ptr noundef %i.j) #29
  %.not.i81 = icmp eq ptr %i.bx, null
  br i1 %.not.i81, label %Vec_IntFree.exit, label %bb.u

bb.u:                                             ; preds = %.loopexit
  call void @free(ptr noundef nonnull %i.bx) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.loopexit, %bb.u
  br i1 %.not63, label %bb.y, label %bb.v

bb.v:                                             ; preds = %Vec_IntFree.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.bz = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #29
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %Abc_Clock.exit83, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = load i64, ptr %5, align 8, !tbaa !79
  %i.cc = mul nsw i64 %i.cb, 1000000
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !81
  %i.cf = sdiv i64 %i.ce, 1000
  %i.cg = add nsw i64 %i.cf, %i.cc
  br label %Abc_Clock.exit83

Abc_Clock.exit83:                                 ; preds = %bb.v, %bb.w
  %.0.i82 = phi i64 [ %i.cg, %bb.w ], [ -1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.ch = sub nsw i64 %.0.i82, %.0.i
  %i.ci = sdiv i64 %i.ch, 1000000
  %.not67 = icmp slt i64 %i.ci, %i.aa
  br i1 %.not67, label %bb.y, label %bb.x

bb.x:                                             ; preds = %Abc_Clock.exit83
  %i.cj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %.154.ph, i32 noundef %2) ; 0 uses
  br label %bb.ab

bb.y:                                             ; preds = %Abc_Clock.exit83, %Vec_IntFree.exit
  %i.ck = icmp eq i32 %1, 0
  %or.cond = or i1 %i.ck, %i.by
  br i1 %or.cond, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %.154.ph, i32 noundef %1) ; 0 uses
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.cm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %.154.ph) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.cn = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #29
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %Abc_Clock.exit85, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = load i64, ptr %4, align 8, !tbaa !79
  %i.cq = mul nsw i64 %i.cp, 1000000
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !81
  %i.ct = sdiv i64 %i.cs, 1000
  %i.cu = add nsw i64 %i.ct, %i.cq
  br label %Abc_Clock.exit85

Abc_Clock.exit85:                                 ; preds = %bb.ab, %bb.ac
  %.0.i84 = phi i64 [ %i.cu, %bb.ac ], [ -1, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.cv = sub nsw i64 %.0.i84, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.29)
  %i.cw = sitofp i64 %i.cv to double
  %i.cx = fdiv double %i.cw, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.59, double noundef %i.cx)
  ret i32 %.1.ph
}

declare ptr @Mf_ManGenerateCnf(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @Cnf_DataWriteIntoSolver(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @Cnf_DataFree(ptr noundef) local_unnamed_addr #4

declare i32 @sat_solver_solve(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @sat_solver_addclause(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4
end_hunk_1
begin_hunk_2_@Gia_QbfVerify:bb.a
.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.val26 = phi i64 [ %i.ar, %.critedge.loopexit ], [ 0, %bb.a ]
  %i.as = phi ptr [ %.pre41, %.critedge.loopexit ], [ %i.b, %bb.a ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !113
  %i.av = getelementptr i8, ptr %i.as, i64 8
  %.val24 = load ptr, ptr %i.av, align 8, !tbaa !12 ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %.val24, i64 %.val26
  %i.ax = tail call i32 @sat_solver_solve(ptr noundef %i.au, ptr noundef %.val24, ptr noundef %i.aw, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #29
  %i.ay = icmp eq i32 %i.ax, 1                    ; 2 uses
  br i1 %i.ay, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.critedge
  store i32 0, ptr %i.d, align 4, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !110
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph39, label %.loopexit

.lr.ph39:                                         ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph39, %Vec_IntPush.exit35
  %.138 = phi i32 [ 0, %.lr.ph39 ], [ %i.cj, %Vec_IntPush.exit35 ] ; 2 uses
  %i.bf = load ptr, ptr %i.at, align 8, !tbaa !113
  %i.bg = load i32, ptr %i.bc, align 4, !tbaa !112
  %i.bh = load i32, ptr %i.bd, align 8, !tbaa !109
  %i.bi = add i32 %i.bg, %.138
  %i.bj = add i32 %i.bi, %i.bh
  %i.bk = getelementptr i8, ptr %i.bf, i64 328
  %.val25 = load ptr, ptr %i.bk, align 8, !tbaa !87
  %i.bl = sext i32 %i.bj to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %.val25, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !14
  %i.bo = icmp eq i32 %i.bn, 1
  %i.bp = zext i1 %i.bo to i32
  %i.bq = load i32, ptr %i.d, align 4, !tbaa !13  ; 7 uses
  %i.br = load i32, ptr %1, align 8, !tbaa !8
  %i.bs = icmp eq i32 %i.bq, %i.br
  br i1 %i.bs, label %bb.n, label %.Vec_IntPush.exit35_crit_edge

.Vec_IntPush.exit35_crit_edge:                    ; preds = %bb.m
  %.pre43 = load ptr, ptr %i.be, align 8, !tbaa !12
  br label %Vec_IntPush.exit35

bb.n:                                             ; preds = %bb.m
  %i.bt = icmp slt i32 %i.bq, 16
  br i1 %i.bt, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bu = load ptr, ptr %i.be, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i33 = icmp eq ptr %i.bu, null
  br i1 %.not9.i.i33, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bu, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i31

bb.q:                                             ; preds = %bb.o
  %i.bw = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i31

bb.r:                                             ; preds = %bb.n
  %i.bx = icmp samesign ult i32 %i.bq, 1073741823
  %i.by = shl nuw nsw i32 %i.bq, 1
  %spec.select.i28 = select i1 %i.bx, i32 %i.by, i32 2147483647 ; 4 uses
  %.not.i9.i29 = icmp samesign ult i32 %i.bq, %spec.select.i28
  %.pre44 = load ptr, ptr %i.be, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i9.i29, label %bb.s, label %Vec_IntPush.exit35

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i30 = icmp eq ptr %.pre44, null
  %i.bz = zext nneg i32 %spec.select.i28 to i64
  %i.ca = shl nuw nsw i64 %i.bz, 2                ; 2 uses
  br i1 %.not9.i10.i30, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = tail call ptr @realloc(ptr noundef nonnull %.pre44, i64 noundef %i.ca) #30
  br label %Vec_IntGrow.exit11.sink.split.i31

bb.u:                                             ; preds = %bb.s
  %i.cc = tail call noalias ptr @malloc(i64 noundef %i.ca) #28
  br label %Vec_IntGrow.exit11.sink.split.i31

Vec_IntGrow.exit11.sink.split.i31:                ; preds = %bb.t, %bb.u, %bb.p, %bb.q
  %i.cd = phi ptr [ %i.bw, %bb.q ], [ %i.bv, %bb.p ], [ %i.cb, %bb.t ], [ %i.cc, %bb.u ] ; 2 uses
  %spec.select.sink.i32 = phi i32 [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i28, %bb.t ], [ %spec.select.i28, %bb.u ]
  store ptr %i.cd, ptr %i.be, align 8, !tbaa !12
  store i32 %spec.select.sink.i32, ptr %1, align 8, !tbaa !8
  %.pre45 = load i32, ptr %i.d, align 4, !tbaa !13
  br label %Vec_IntPush.exit35

Vec_IntPush.exit35:                               ; preds = %.Vec_IntPush.exit35_crit_edge, %bb.r, %Vec_IntGrow.exit11.sink.split.i31
  %i.ce = phi i32 [ %i.bq, %.Vec_IntPush.exit35_crit_edge ], [ %i.bq, %bb.r ], [ %.pre45, %Vec_IntGrow.exit11.sink.split.i31 ] ; 2 uses
  %i.cf = phi ptr [ %.pre43, %.Vec_IntPush.exit35_crit_edge ], [ %.pre44, %bb.r ], [ %i.cd, %Vec_IntGrow.exit11.sink.split.i31 ]
  %i.cg = add nsw i32 %i.ce, 1
  store i32 %i.cg, ptr %i.d, align 4, !tbaa !13
  %i.ch = sext i32 %i.ce to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.ch
  store i32 %i.bp, ptr %i.ci, align 4, !tbaa !14
  %i.cj = add nuw nsw i32 %.138, 1                ; 2 uses
  %i.ck = load i32, ptr %i.az, align 4, !tbaa !110
  %i.cl = icmp slt i32 %i.cj, %i.ck
  br i1 %i.cl, label %bb.m, label %.loopexit, !llvm.loop !142

.loopexit:                                        ; preds = %Vec_IntPush.exit35, %bb.l, %.critedge
  %i.cm = zext i1 %i.ay to i32
  ret i32 %i.cm
}

; Function Attrs: nounwind uwtable
define void @Gia_QbfAddSpecialConstr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.e = and i64 %indvars.iv, 3
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  store i32 0, ptr %i.i, align 4, !tbaa !14
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.j = shl i32 %indvars.iv.tr, 1
  %i.k = or disjoint i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 4, !tbaa !14
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.m = call i32 @sat_solver_addclause(ptr noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d) #29 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 44
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !143

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_QbfLearnConstraint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35) ; 0 uses
  %i.c = getelementptr i8, ptr %1, i64 4          ; 4 uses
  %.val6.i = load i32, ptr %i.c, align 4, !tbaa !13
  %i.d = icmp sgt i32 %.val6.i, 0
  br i1 %i.d, label %.lr.ph.i, label %Vec_IntPrintBinary.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %.val5.i = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.val5.i, i64 %indvars.iv.i
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.i) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i = load i32, ptr %i.c, align 4, !tbaa !13
  %i.k = sext i32 %.val.i to i64
  %i.l = icmp slt i64 %indvars.iv.next.i, %i.k
  br i1 %i.l, label %bb.b, label %Vec_IntPrintBinary.exit, !llvm.loop !140

Vec_IntPrintBinary.exit:                          ; preds = %bb.b, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.val23 = load i32, ptr %i.c, align 4, !tbaa !13
  %i.m = icmp sgt i32 %.val23, 0
  br i1 %i.m, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntPrintBinary.exit
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %.val15 = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val15, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.t = shl nuw i32 %indvars.iv.tr, 1
  %i.u = add nsw i32 %i.s, %i.t
  store i32 %i.u, ptr %i.a, align 4, !tbaa !14
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !114
  %i.w = call i32 @sat_solver_solve(ptr noundef %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %i.p, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #29
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  %i.y = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %i.x) ; 0 uses
  %.not = icmp eq i32 %i.w, 1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !14
  %i.aa = xor i32 %i.z, 1
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !14
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !114
  %i.ac = call i32 @sat_solver_addclause(ptr noundef %i.ab, ptr noundef nonnull %i.a, ptr noundef nonnull %i.p) #29 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !119
  call void @Gia_QbfOnePattern(ptr noundef nonnull %0, ptr noundef %i.ad)
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !119 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 4      ; 2 uses
  %.val6.i16 = load i32, ptr %i.af, align 4, !tbaa !13
  %i.ag = icmp sgt i32 %.val6.i16, 0
  br i1 %i.ag, label %.lr.ph.i17, label %Vec_IntPrintBinary.exit22

.lr.ph.i17:                                       ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i17
  %indvars.iv.i18 = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next.i20, %bb.f ] ; 2 uses
  %.val5.i19 = load ptr, ptr %i.ah, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val5.i19, i64 %indvars.iv.i18
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !14
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.al) ; 0 uses
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i18, 1 ; 2 uses
  %.val.i21 = load i32, ptr %i.af, align 4, !tbaa !13
  %i.an = sext i32 %.val.i21 to i64
  %i.ao = icmp slt i64 %indvars.iv.next.i20, %i.an
  br i1 %i.ao, label %bb.f, label %Vec_IntPrintBinary.exit22, !llvm.loop !140

Vec_IntPrintBinary.exit22:                        ; preds = %bb.f, %bb.e
  %putchar14 = call i32 @putchar(i32 10)          ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %Vec_IntPrintBinary.exit22, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.c, align 4, !tbaa !13
  %i.ap = sext i32 %.val to i64
  %i.aq = icmp slt i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %bb.c, label %.critedge, !llvm.loop !144

.critedge:                                        ; preds = %bb.g, %Vec_IntPrintBinary.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @Gia_QbfSolve(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %11 = alloca %struct.timespec, align 8          ; 5 uses
  %12 = alloca %struct.timespec, align 8          ; 5 uses
  %13 = alloca %struct.timespec, align 8          ; 5 uses
  %14 = alloca %struct.timespec, align 8          ; 5 uses
  %15 = alloca %struct.timespec, align 8          ; 5 uses
  %16 = alloca %struct.timespec, align 8          ; 5 uses
  %i.a = tail call ptr @Gia_QbfAlloc(ptr noundef %0, i32 noundef %1, i32 noundef %6, i32 noundef %7, i32 noundef %9) ; 21 uses
  %.not = icmp eq i32 %9, 0                       ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val142 = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !109
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !110
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %.val3.i = load i32, ptr %i.j, align 4, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %.val.i = load i32, ptr %i.m, align 4, !tbaa !13
  %i.n = add i32 %.val.i, %.val3.i
  %i.o = xor i32 %i.n, -1
  %i.p = add i32 %i.g, %i.o
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, ptr noundef %.val142, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.p) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !117  ; 16 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !8
  %.not.i.i = icmp slt i32 %i.t, %1
  br i1 %.not.i.i, label %bb.d, label %Vec_IntGrow.exit.i

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.v, null
  %i.w = sext i32 %1 to i64
  %i.x = shl nsw i64 %i.w, 2                      ; 2 uses
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = tail call ptr @realloc(ptr noundef nonnull %i.v, i64 noundef %i.x) #30
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.x) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = phi ptr [ %i.y, %bb.e ], [ %i.z, %bb.f ]
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !12
  store i32 %1, ptr %i.s, align 8, !tbaa !8
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.g, %bb.c
  %i.ab = icmp sgt i32 %1, 0
  br i1 %i.ab, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !12
  %i.ae = zext nneg i32 %1 to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 0, i64 %i.af, i1 false), !tbaa !14
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %Vec_IntGrow.exit.i, %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 8 uses
  store i32 %1, ptr %i.ag, align 4, !tbaa !13
  %i.ah = tail call i32 @Gia_QbfVerify(ptr noundef nonnull %i.a, ptr noundef nonnull %i.s)
  %.not121185.not = icmp eq i32 %i.ah, 0
  br i1 %.not121185.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %Vec_IntFill.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !118
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ao = sext i32 %3 to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %.not126 = icmp ne i32 %2, 0
  %.not127 = icmp eq i32 %4, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.at = sext i32 %4 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.ab
  %.0113186 = phi i32 [ 0, %.lr.ph ], [ %i.bv, %bb.ab ] ; 4 uses
  %i.au = call ptr @Gia_QbfCofactor(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.s, ptr noundef %i.aj) ; 4 uses
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !116 ; 2 uses
  %.not122 = icmp eq ptr %i.av, null              ; 2 uses
  br i1 %.not122, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = call i32 @Gia_QbfAddCofactorC(ptr noundef nonnull %i.a, ptr noundef %i.au)
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !115
  %.not123 = icmp eq ptr %i.ax, null
  br i1 %.not123, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = call i32 @Gia_QbfAddCofactorG(ptr noundef nonnull %i.a, ptr noundef %i.au)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.az = call i32 @Gia_QbfAddCofactor(ptr noundef nonnull %i.a, ptr noundef %i.au)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %i.ba = phi i32 [ %i.aw, %bb.i ], [ %i.ay, %bb.k ], [ %i.az, %bb.l ]
  call void @Gia_ManStop(ptr noundef %i.au) #29
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %.thread169, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.bc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %16) #29
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %Abc_Clock.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = load i64, ptr %16, align 8, !tbaa !79
end_hunk_2
begin_hunk_3_@Gia_ManGenSolver:bb.a
  %i.fk = shl nuw nsw i32 %i.ff, 1
  %i.fl = or disjoint i32 %i.fk, %i.fi            ; 2 uses
  %i.fm = xor i32 %i.fl, 1
  store i32 %i.fm, ptr %i.eq, align 4, !tbaa !14
  %i.fn = call i32 @sat_solver_addclause(ptr noundef %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.er) #29
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %sat_solver_add_buffer.exit148, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fp = or disjoint i32 %i.fj, 1
  store i32 %i.fp, ptr %i.c, align 4, !tbaa !14
  store i32 %i.fl, ptr %i.eq, align 4, !tbaa !14
  %i.fq = call i32 @sat_solver_addclause(ptr noundef %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull %i.er) #29 ; 0 uses
  br label %sat_solver_add_buffer.exit148

sat_solver_add_buffer.exit148:                    ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %.val120 = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.fr = ptrtoint ptr %.val120 to i64
  %i.fs = sub i64 %i.fc, %i.fr
  %i.ft = sdiv exact i64 %i.fs, 12
  %i.fu = trunc i64 %i.ft to i32                  ; 2 uses
  %i.fv = add nsw i32 %.val117, %i.fu
  %.val3.i149 = load i64, ptr %i.fb, align 4
  %i.fw = trunc i64 %.val3.i149 to i32            ; 2 uses
  %i.fx = and i32 %i.fw, 536870911
  %i.fy = sub i32 %.val117, %i.fx
  %i.fz = add i32 %i.fy, %i.fu
  %i.ga = lshr i32 %i.fw, 29
  %i.gb = and i32 %i.ga, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.gc = shl nsw i32 %i.fv, 1                    ; 2 uses
  store i32 %i.gc, ptr %i.b, align 4, !tbaa !14
  %i.gd = shl nsw i32 %i.fz, 1
  %i.ge = or disjoint i32 %i.gd, %i.gb            ; 2 uses
  %i.gf = xor i32 %i.ge, 1
  store i32 %i.gf, ptr %i.es, align 4, !tbaa !14
  %i.gg = call i32 @sat_solver_addclause(ptr noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.et) #29
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %sat_solver_add_buffer.exit152, label %bb.u

bb.u:                                             ; preds = %sat_solver_add_buffer.exit148
  %i.gi = or disjoint i32 %i.gc, 1
  store i32 %i.gi, ptr %i.b, align 4, !tbaa !14
  store i32 %i.ge, ptr %i.es, align 4, !tbaa !14
  %i.gj = call i32 @sat_solver_addclause(ptr noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.et) #29 ; 0 uses
  br label %sat_solver_add_buffer.exit152

sat_solver_add_buffer.exit152:                    ; preds = %sat_solver_add_buffer.exit148, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %.val119 = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.gk = ptrtoint ptr %.val119 to i64
  %i.gl = sub i64 %i.fc, %i.gk
  %i.gm = sdiv exact i64 %i.gl, 12
  %i.gn = trunc i64 %i.gm to i32                  ; 2 uses
  %i.go = add nsw i32 %.val117, %i.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.gp = shl nsw i32 %i.go, 1                    ; 2 uses
  store i32 %i.gp, ptr %i.a, align 4, !tbaa !14
  %i.gq = shl nsw i32 %i.gn, 1                    ; 2 uses
  %i.gr = or disjoint i32 %i.gq, 1
  store i32 %i.gr, ptr %i.eu, align 4, !tbaa !14
  %i.gs = call i32 @sat_solver_addclause(ptr noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ev) #29
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %sat_solver_add_buffer.exit155, label %bb.v

bb.v:                                             ; preds = %sat_solver_add_buffer.exit152
  %i.gu = or disjoint i32 %i.gp, 1
  store i32 %i.gu, ptr %i.a, align 4, !tbaa !14
  store i32 %i.gq, ptr %i.eu, align 4, !tbaa !14
  %i.gv = call i32 @sat_solver_addclause(ptr noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ev) #29 ; 0 uses
  br label %sat_solver_add_buffer.exit155

sat_solver_add_buffer.exit155:                    ; preds = %sat_solver_add_buffer.exit152, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.pre195 = load ptr, ptr %i.em, align 8, !tbaa !46
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %sat_solver_add_buffer.exit155
  %i.gw = phi ptr [ %i.ew, %bb.r ], [ %.pre195, %sat_solver_add_buffer.exit155 ] ; 2 uses
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 4
  %.val = load i32, ptr %i.gx, align 4, !tbaa !13
  %i.gy = sext i32 %.val to i64
  %i.gz = icmp slt i64 %indvars.iv.next190, %i.gy
  br i1 %i.gz, label %bb.q, label %.critedge8, !llvm.loop !157

.critedge8:                                       ; preds = %bb.q, %bb.w, %.critedge6
  ret ptr %i.h
}

declare void @Gia_ManIncrementTravId(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManGenCombs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #29
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %6, align 8, !tbaa !79
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !81
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.i = call ptr @Gia_ManGenSolver(ptr noundef %0, ptr noundef %1, i32 noundef %2) ; 4 uses
  %i.j = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 4 uses
  store i32 0, ptr %i.k, align 4, !tbaa !13
  store i32 100, ptr %i.j, align 8, !tbaa !8
  %i.l = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #28 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !12
  %i.n = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 4 uses
  store i32 0, ptr %i.o, align 4, !tbaa !13
  store i32 1000, ptr %i.n, align 8, !tbaa !8
  %i.p = call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #28
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 6 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !12
  %i.r = getelementptr i8, ptr %1, i64 4          ; 5 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %i.t = getelementptr i8, ptr %i.i, i64 328      ; 2 uses
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit86, %Abc_Clock.exit
  %.val74131 = phi ptr [ %i.l, %Abc_Clock.exit ], [ %.val74, %Abc_Clock.exit86 ] ; 4 uses
  %i.v = phi i32 [ 1000, %Abc_Clock.exit ], [ %i.bt, %Abc_Clock.exit86 ]
  %i.w = phi i32 [ 0, %Abc_Clock.exit ], [ %i.bu, %Abc_Clock.exit86 ]
  %.promoted106 = phi i32 [ 100, %Abc_Clock.exit ], [ %.promoted106122, %Abc_Clock.exit86 ] ; 2 uses
  %.057115 = phi i32 [ 0, %Abc_Clock.exit ], [ %i.ct, %Abc_Clock.exit86 ] ; 2 uses
  %i.x = call i32 @sat_solver_solve(ptr noundef %i.i, ptr noundef null, ptr noundef null, i64 noundef 1000000, i64 noundef 0, i64 noundef 0, i64 noundef 0) #29
  switch i32 %i.x, label %bb.d [
    i32 -1, label %.thread.loopexit
    i32 0, label %.thread
  ]

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.k, align 4, !tbaa !13
  %.val68101 = load i32, ptr %i.r, align 4, !tbaa !13
  %i.y = icmp sgt i32 %.val68101, 0
  br i1 %i.y, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.d
  %.val76.pre = load ptr, ptr %i.t, align 8, !tbaa !87
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %.val76 = phi ptr [ %.val76.pre, %.lr.ph ], [ %.val75, %Vec_IntPush.exit ]
  %indvars.iv117 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next118, %Vec_IntPush.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %storemerge99110 = phi ptr [ %.val74131, %.lr.ph ], [ %storemerge99111, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i108 = phi i32 [ %.promoted106, %.lr.ph ], [ %spec.select.sink.i107, %Vec_IntPush.exit ] ; 3 uses
  %.055103 = phi i32 [ 0, %.lr.ph ], [ %.156, %Vec_IntPush.exit ]
  %.val72 = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val72, i64 %indvars.iv117
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !14  ; 2 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %.val76, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !14
  %i.ae = icmp eq i32 %i.ad, 1
  %i.af = zext i1 %i.ae to i32
  %i.ag = shl nsw i32 %i.aa, 1
  %i.ah = or disjoint i32 %i.ag, %i.af
  %i.ai = trunc nsw i64 %indvars.iv to i32
  %i.aj = icmp eq i32 %spec.select.sink.i108, %i.ai
  br i1 %i.aj, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.ak, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i = icmp eq ptr %storemerge99110, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge99110, i64 noundef 64) #30
  br label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.g
  %i.am = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.f
  %i.an = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ao = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.an, i32 %i.ao, i32 2147483647 ; 4 uses
  %i.ap = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.ap
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %.not9.i10.i = icmp eq ptr %storemerge99110, null
  %i.aq = zext nneg i32 %spec.select.i to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = call ptr @realloc(ptr noundef nonnull %storemerge99110, i64 noundef %i.ar) #30
  br label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.k
  %i.at = call noalias ptr @malloc(i64 noundef %i.ar) #28
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.i, %bb.h, %bb.m, %bb.l, %bb.e, %bb.j
  %storemerge99111 = phi ptr [ %storemerge99110, %bb.e ], [ %storemerge99110, %bb.j ], [ %i.am, %bb.i ], [ %i.al, %bb.h ], [ %i.as, %bb.l ], [ %i.at, %bb.m ] ; 4 uses
  %spec.select.sink.i107 = phi i32 [ %spec.select.sink.i108, %bb.e ], [ %spec.select.sink.i108, %bb.j ], [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i, %bb.l ], [ %spec.select.i, %bb.m ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %storemerge99111, i64 %indvars.iv
  store i32 %i.ah, ptr %i.au, align 4, !tbaa !14
  %.val75 = load ptr, ptr %i.t, align 8, !tbaa !87 ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %.val75, i64 %i.ab
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !14
  %.not100 = icmp eq i32 %i.aw, 1
  %.val68.pre = load i32, ptr %i.r, align 4, !tbaa !13 ; 2 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv117 to i32
  %i.ay = xor i32 %i.ax, -1
  %i.az = add i32 %.val68.pre, %i.ay
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = select i1 %.not100, i32 %i.ba, i32 0
  %.156 = or i32 %.055103, %i.bb                  ; 2 uses
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.bc = sext i32 %.val68.pre to i64
  %i.bd = icmp slt i64 %indvars.iv.next118, %i.bc
  br i1 %i.bd, label %bb.e, label %..critedge_crit_edge, !llvm.loop !158

..critedge_crit_edge:                             ; preds = %Vec_IntPush.exit
  %i.be = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.be, ptr %i.k, align 4, !tbaa !13
  store i32 %spec.select.sink.i107, ptr %i.j, align 8
  store ptr %storemerge99111, ptr %i.m, align 8
  %.pre = load i32, ptr %i.o, align 4, !tbaa !13
  %.pre126 = load i32, ptr %i.n, align 8, !tbaa !8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.d
  %.val74 = phi ptr [ %storemerge99111, %..critedge_crit_edge ], [ %.val74131, %bb.d ] ; 5 uses
  %i.bf = phi i32 [ %.pre126, %..critedge_crit_edge ], [ %i.v, %bb.d ] ; 7 uses
  %i.bg = phi i32 [ %.pre, %..critedge_crit_edge ], [ %i.w, %bb.d ] ; 3 uses
  %.promoted106122 = phi i32 [ %spec.select.sink.i107, %..critedge_crit_edge ], [ %.promoted106, %bb.d ]
  %.055.lcssa = phi i32 [ %.156, %..critedge_crit_edge ], [ 0, %bb.d ] ; 2 uses
  %i.bh = icmp eq i32 %i.bg, %i.bf
  br i1 %i.bh, label %bb.n, label %.critedge.Vec_IntPush.exit84_crit_edge

.critedge.Vec_IntPush.exit84_crit_edge:           ; preds = %.critedge
  %.pre127 = load ptr, ptr %i.q, align 8, !tbaa !12
  br label %Vec_IntPush.exit84

bb.n:                                             ; preds = %.critedge
  %i.bi = icmp slt i32 %i.bf, 16
  br i1 %i.bi, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr %i.q, align 8, !tbaa !12  ; 2 uses
  %.not9.i.i82 = icmp eq ptr %i.bj, null
  br i1 %.not9.i.i82, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bj, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i80

bb.q:                                             ; preds = %bb.o
  %i.bl = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i80

bb.r:                                             ; preds = %bb.n
  %i.bm = icmp samesign ult i32 %i.bf, 1073741823
  %i.bn = shl nuw nsw i32 %i.bf, 1
  %spec.select.i77 = select i1 %i.bm, i32 %i.bn, i32 2147483647 ; 4 uses
  %.not.i9.i78 = icmp samesign ult i32 %i.bf, %spec.select.i77
  %.pre128 = load ptr, ptr %i.q, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i9.i78, label %bb.s, label %Vec_IntPush.exit84

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i79 = icmp eq ptr %.pre128, null
  %i.bo = zext nneg i32 %spec.select.i77 to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2                ; 2 uses
  br i1 %.not9.i10.i79, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = call ptr @realloc(ptr noundef nonnull %.pre128, i64 noundef %i.bp) #30
  br label %Vec_IntGrow.exit11.sink.split.i80

bb.u:                                             ; preds = %bb.s
  %i.br = call noalias ptr @malloc(i64 noundef %i.bp) #28
  br label %Vec_IntGrow.exit11.sink.split.i80

Vec_IntGrow.exit11.sink.split.i80:                ; preds = %bb.t, %bb.u, %bb.p, %bb.q
  %storemerge = phi ptr [ %i.bl, %bb.q ], [ %i.bk, %bb.p ], [ %i.bq, %bb.t ], [ %i.br, %bb.u ] ; 2 uses
  %spec.select.sink.i81 = phi i32 [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i77, %bb.t ], [ %spec.select.i77, %bb.u ] ; 2 uses
  store ptr %storemerge, ptr %i.q, align 8, !tbaa !12
  store i32 %spec.select.sink.i81, ptr %i.n, align 8, !tbaa !8
  br label %Vec_IntPush.exit84

Vec_IntPush.exit84:                               ; preds = %.critedge.Vec_IntPush.exit84_crit_edge, %bb.r, %Vec_IntGrow.exit11.sink.split.i80
  %i.bs = phi ptr [ %.pre127, %.critedge.Vec_IntPush.exit84_crit_edge ], [ %.pre128, %bb.r ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i80 ]
  %i.bt = phi i32 [ %i.bf, %.critedge.Vec_IntPush.exit84_crit_edge ], [ %i.bf, %bb.r ], [ %spec.select.sink.i81, %Vec_IntGrow.exit11.sink.split.i80 ]
  %i.bu = add nsw i32 %i.bg, 1                    ; 2 uses
  store i32 %i.bu, ptr %i.o, align 4, !tbaa !13
  %i.bv = sext i32 %i.bg to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bv
  store i32 %.055.lcssa, ptr %i.bw, align 4, !tbaa !14
  br i1 %.not, label %bb.y, label %bb.v

bb.v:                                             ; preds = %Vec_IntPush.exit84
  %i.bx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %.057115) ; 0 uses
  %.val66112 = load i32, ptr %i.r, align 4, !tbaa !13 ; 2 uses
  %i.by = icmp sgt i32 %.val66112, 0
  br i1 %i.by, label %.lr.ph114, label %.critedge2

.lr.ph114:                                        ; preds = %bb.v, %bb.x
  %.val65129 = phi i32 [ %.val66, %bb.x ], [ %.val66112, %bb.v ]
  %.159113 = phi i32 [ %i.cf, %bb.x ], [ 0, %bb.v ] ; 3 uses
  %i.bz = icmp eq i32 %.159113, %2
  br i1 %i.bz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph114
  %putchar62 = call i32 @putchar(i32 32)          ; 0 uses
  %.val65.pre = load i32, ptr %i.r, align 4, !tbaa !13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph114
  %.val65 = phi i32 [ %.val65.pre, %bb.w ], [ %.val65129, %.lr.ph114 ]
  %i.ca = xor i32 %.159113, -1
  %i.cb = add i32 %.val65, %i.ca
  %i.cc = lshr i32 %.055.lcssa, %i.cb
  %i.cd = and i32 %i.cc, 1
  %i.ce = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.cd) ; 0 uses
  %i.cf = add nuw nsw i32 %.159113, 1             ; 2 uses
  %.val66 = load i32, ptr %i.r, align 4, !tbaa !13 ; 2 uses
  %i.cg = icmp slt i32 %i.cf, %.val66
  br i1 %i.cg, label %.lr.ph114, label %.critedge2, !llvm.loop !159

.critedge2:                                       ; preds = %bb.x, %bb.v
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %.critedge2, %Vec_IntPush.exit84
  %.val = load i32, ptr %i.k, align 4, !tbaa !13
  %i.ch = sext i32 %.val to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %.val74, i64 %i.ch
  %i.cj = call i32 @sat_solver_addclause(ptr noundef %i.i, ptr noundef %.val74, ptr noundef %i.ci) #29
  %.not61 = icmp eq i32 %i.cj, 0
  br i1 %.not61, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.ck = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #29
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %Abc_Clock.exit86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = load i64, ptr %5, align 8, !tbaa !79
  %i.cn = mul nsw i64 %i.cm, 1000000
  %i.co = load i64, ptr %i.u, align 8, !tbaa !81
  %i.cp = sdiv i64 %i.co, 1000
  %i.cq = add nsw i64 %i.cp, %i.cn
  br label %Abc_Clock.exit86

Abc_Clock.exit86:                                 ; preds = %bb.z, %bb.aa
  %.0.i85 = phi i64 [ %i.cq, %bb.aa ], [ -1, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.cr = sub nsw i64 %.0.i85, %.0.i
  %i.cs = icmp sgt i64 %i.cr, 599999999
  %i.ct = add nuw nsw i32 %.057115, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ct, 1000000
  %or.cond = select i1 %i.cs, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.thread, label %bb.c, !llvm.loop !160

.thread.loopexit:                                 ; preds = %bb.c
  br label %.thread

.thread:                                          ; preds = %Abc_Clock.exit86, %bb.y, %bb.c, %.thread.loopexit
  %i.cu = phi ptr [ %.val74131, %bb.c ], [ %.val74, %Abc_Clock.exit86 ], [ %.val74, %bb.y ], [ %.val74131, %.thread.loopexit ] ; 2 uses
  %i.cv = phi i1 [ true, %bb.c ], [ true, %Abc_Clock.exit86 ], [ false, %bb.y ], [ false, %.thread.loopexit ]
  %.val69 = load i32, ptr %i.o, align 4, !tbaa !13
  %.val70 = load ptr, ptr %i.q, align 8, !tbaa !12 ; 3 uses
  %i.cw = sext i32 %.val69 to i64
  call void @qsort(ptr noundef %.val70, i64 noundef %i.cw, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #29
  %.not.i = icmp eq ptr %i.cu, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.ab

bb.ab:                                            ; preds = %.thread
  call void @free(ptr noundef nonnull %i.cu) #29
  br label %Vec_IntFree.exit
end_hunk_3
begin_hunk_4_@Gia_ManGenRelMiter:bb.a
  %.0.lcssa = phi i32 [ 0, %.critedge6 ], [ %.1, %bb.aq ], [ %.0219, %bb.an ]
  %i.gm = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.v, i32 noundef %.0.lcssa) ; 0 uses
  %.val = load i32, ptr %i.p, align 4, !tbaa !13  ; 2 uses
  %i.gn = icmp sgt i32 %.val, 0
  br i1 %i.gn, label %.lr.ph225, label %.critedge12

.lr.ph225:                                        ; preds = %.critedge10
  %.val143 = load ptr, ptr %i.u, align 8, !tbaa !12
  %wide.trip.count253 = zext nneg i32 %.val to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph225, %bb.ar
  %indvars.iv250 = phi i64 [ 0, %.lr.ph225 ], [ %indvars.iv.next251, %bb.ar ] ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.val143, i64 %indvars.iv250
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !14
  %i.gq = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.v, i32 noundef %i.gp) ; 0 uses
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %exitcond254.not = icmp eq i64 %indvars.iv.next251, %wide.trip.count253
  br i1 %exitcond254.not, label %.critedge12, label %bb.ar, !llvm.loop !213

.critedge12:                                      ; preds = %bb.ar, %.critedge10
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !12 ; 2 uses
  %.not.i185 = icmp eq ptr %i.gs, null
  br i1 %.not.i185, label %Vec_IntFree.exit, label %bb.as

bb.as:                                            ; preds = %.critedge12
  tail call void @free(ptr noundef nonnull %i.gs) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge12, %bb.as
  tail call void @free(ptr noundef nonnull %i.f) #29
  %i.gt = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !12 ; 2 uses
  %.not.i186 = icmp eq ptr %i.gu, null
  br i1 %.not.i186, label %Vec_IntFree.exit187, label %bb.at

bb.at:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.gu) #29
  br label %Vec_IntFree.exit187

Vec_IntFree.exit187:                              ; preds = %Vec_IntFree.exit, %bb.at
  tail call void @free(ptr noundef nonnull %i.g) #29
  %.not.i188 = icmp eq ptr %i.ao, null
  br i1 %.not.i188, label %Vec_IntFree.exit189, label %bb.au

bb.au:                                            ; preds = %Vec_IntFree.exit187
  tail call void @free(ptr noundef nonnull %i.ao) #29
  br label %Vec_IntFree.exit189

Vec_IntFree.exit189:                              ; preds = %Vec_IntFree.exit187, %bb.au
  %i.gv = load ptr, ptr %i.u, align 8, !tbaa !12  ; 2 uses
  %.not.i190 = icmp eq ptr %i.gv, null
  br i1 %.not.i190, label %Vec_IntFree.exit191, label %bb.av

bb.av:                                            ; preds = %Vec_IntFree.exit189
  tail call void @free(ptr noundef nonnull %i.gv) #29
  br label %Vec_IntFree.exit191

Vec_IntFree.exit191:                              ; preds = %Vec_IntFree.exit189, %bb.av
  tail call void @free(ptr noundef nonnull %i.n) #29
  %i.gw = tail call ptr @Gia_ManCleanup(ptr noundef nonnull %i.v) #29 ; 2 uses
  tail call void @Gia_ManStop(ptr noundef nonnull %i.v) #29
  %i.gx = getelementptr i8, ptr %0, i64 16
  %.val157 = load i32, ptr %i.gx, align 8, !tbaa !22
  tail call void @Gia_ManSetRegNum(ptr noundef %i.gw, i32 noundef %.val157) #29
  ret ptr %i.gw
}

declare i32 @Gia_ManHashXor(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @Gia_ManSetRegNum(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define void @Gia_ManPrintRelMinterm(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.a ]  ; 3 uses
  %i.b = icmp eq i32 %.09, %1
  %i.c = select i1 %i.b, ptr @.str.50, ptr @.str.54
  %i.d = xor i32 %.09, -1
  %i.e = add nsw i32 %2, %i.d
  %i.f = lshr i32 %0, %i.e
  %i.g = and i32 %i.f, 1
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef nonnull %i.c, i32 noundef %i.g) ; 0 uses
  %i.i = add nuw nsw i32 %.09, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.i, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !214
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManGenIoCombs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #29
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %5, align 8, !tbaa !79
  %.neg146 = mul i64 %i.d, -1000000
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !81
  %.neg = sdiv i64 %i.f, -1000
  %.neg147 = add i64 %.neg, %.neg146
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg147, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.g = call ptr @Gia_ManGenRelMiter(ptr noundef %0, ptr noundef %1, i32 noundef %2) ; 2 uses
  %i.h = call ptr @Mf_ManGenerateCnf(ptr noundef %i.g, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29 ; 3 uses
  %i.i = call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.h, i32 noundef 1, i32 noundef 0) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 2, ptr %i.a, align 4, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = call i32 @sat_solver_addclause(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.j) #29 ; 0 uses
  %i.l = getelementptr i8, ptr %1, i64 4          ; 4 uses
  %.val93 = load i32, ptr %i.l, align 4, !tbaa !13 ; 4 uses
  %i.m = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 4 uses
  %i.n = add i32 %.val93, -1
  %or.cond.i = icmp ult i32 %i.n, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val93 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 3 uses
  store i32 0, ptr %i.o, align 4, !tbaa !13
  store i32 %spec.store.select.i, ptr %i.m, align 8, !tbaa !8
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.p = sext i32 %spec.store.select.i to i64
  %i.q = shl nsw i64 %i.p, 2
  %i.r = call noalias ptr @malloc(i64 noundef %i.q) #28
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %Abc_Clock.exit, %bb.c
  %.promoted158 = phi ptr [ %i.r, %bb.c ], [ null, %Abc_Clock.exit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %.promoted158, ptr %i.s, align 8, !tbaa !12
  %i.t = icmp sgt i32 %.val93, 0
  br i1 %i.t, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntAlloc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %storemerge151159 = phi ptr [ %.promoted158, %.lr.ph ], [ %storemerge151160, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i157 = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %spec.select.sink.i156, %Vec_IntPush.exit ] ; 3 uses
  %.val92154 = phi i32 [ %.val93, %.lr.ph ], [ %.val92, %Vec_IntPush.exit ]
  %.080153 = phi i32 [ 0, %.lr.ph ], [ %i.ao, %Vec_IntPush.exit ] ; 4 uses
  %i.v = icmp slt i32 %.080153, %2
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw nsw i32 %.080153, 2
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = load i32, ptr %i.u, align 8, !tbaa !82
  %i.y = sub i32 %.080153, %.val92154
  %i.z = add i32 %i.y, %i.x
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = phi i32 [ %i.w, %bb.e ], [ %i.z, %bb.f ]
  %i.ab = trunc nsw i64 %indvars.iv to i32
  %i.ac = icmp eq i32 %spec.select.sink.i157, %i.ab
  br i1 %i.ac, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.ad, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %storemerge151159, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge151159, i64 noundef 64) #30
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.i
  %i.af = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.h
  %i.ag = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ah = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.ag, i32 %i.ah, i32 2147483647 ; 4 uses
  %i.ai = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.ai
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %storemerge151159, null
  %i.aj = zext nneg i32 %spec.select.i to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = call ptr @realloc(ptr noundef nonnull %storemerge151159, i64 noundef %i.ak) #30
  br label %Vec_IntPush.exit

bb.o:                                             ; preds = %bb.m
  %i.am = call noalias ptr @malloc(i64 noundef %i.ak) #28
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.k, %bb.j, %bb.o, %bb.n, %bb.g, %bb.l
  %storemerge151160 = phi ptr [ %storemerge151159, %bb.g ], [ %storemerge151159, %bb.l ], [ %i.af, %bb.k ], [ %i.ae, %bb.j ], [ %i.al, %bb.n ], [ %i.am, %bb.o ] ; 3 uses
  %spec.select.sink.i156 = phi i32 [ %spec.select.sink.i157, %bb.g ], [ %spec.select.sink.i157, %bb.l ], [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %storemerge151160, i64 %indvars.iv
  store i32 %i.aa, ptr %i.an, align 4, !tbaa !14
  %i.ao = add nuw nsw i32 %.080153, 1             ; 2 uses
  %.val92 = load i32, ptr %i.l, align 4, !tbaa !13 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %.val92
  br i1 %i.ap, label %bb.d, label %..critedge_crit_edge, !llvm.loop !215

..critedge_crit_edge:                             ; preds = %Vec_IntPush.exit
  %i.aq = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.aq, ptr %i.o, align 4, !tbaa !13
  store i32 %spec.select.sink.i156, ptr %i.m, align 8
  store ptr %storemerge151160, ptr %i.s, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %Vec_IntAlloc.exit
  %i.ar = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 4 uses
  store i32 0, ptr %i.as, align 4, !tbaa !13
  store i32 100, ptr %i.ar, align 8, !tbaa !8
  %i.at = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #28 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !12
  %i.av = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 6 uses
  store i32 0, ptr %i.aw, align 4, !tbaa !13
  store i32 1000, ptr %i.av, align 8, !tbaa !8
  %i.ax = call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 11 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !12
  %i.az = getelementptr i8, ptr %i.i, i64 328     ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.p

bb.p:                                             ; preds = %Abc_Clock.exit120, %.critedge
  %.val99206 = phi ptr [ %i.at, %.critedge ], [ %.val99, %Abc_Clock.exit120 ] ; 4 uses
  %i.bb = phi i32 [ 1000, %.critedge ], [ %i.cx, %Abc_Clock.exit120 ]
  %i.bc = phi i32 [ 0, %.critedge ], [ %i.cy, %Abc_Clock.exit120 ]
  %.promoted166 = phi i32 [ 100, %.critedge ], [ %.promoted166199, %Abc_Clock.exit120 ] ; 2 uses
  %.079172 = phi i32 [ 0, %.critedge ], [ %i.dn, %Abc_Clock.exit120 ]
  %i.bd = call i32 @sat_solver_solve(ptr noundef %i.i, ptr noundef null, ptr noundef null, i64 noundef 1000000, i64 noundef 0, i64 noundef 0, i64 noundef 0) #29
  switch i32 %i.bd, label %bb.q [
    i32 -1, label %.thread.loopexit
    i32 0, label %.thread
  ]

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.as, align 4, !tbaa !13
  %.val90 = load i32, ptr %i.o, align 4, !tbaa !13 ; 2 uses
  %i.be = icmp sgt i32 %.val90, 0
  br i1 %i.be, label %.lr.ph163, label %.critedge2

.lr.ph163:                                        ; preds = %bb.q
  %.val96 = load ptr, ptr %i.s, align 8, !tbaa !12
  %wide.trip.count = zext nneg i32 %.val90 to i64
  %.val101.pre = load ptr, ptr %i.az, align 8, !tbaa !87
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph163, %bb.ab
  %.val101 = phi ptr [ %.val101.pre, %.lr.ph163 ], [ %.val100, %bb.ab ]
  %indvars.iv183 = phi i64 [ 0, %.lr.ph163 ], [ %indvars.iv.next184, %bb.ab ] ; 3 uses
  %indvars.iv181 = phi i64 [ 0, %.lr.ph163 ], [ %indvars.iv.next182, %bb.ab ] ; 7 uses
  %storemerge149170 = phi ptr [ %.val99206, %.lr.ph163 ], [ %storemerge149171, %bb.ab ] ; 6 uses
  %spec.select.sink.i107168 = phi i32 [ %.promoted166, %.lr.ph163 ], [ %spec.select.sink.i107167, %bb.ab ] ; 3 uses
  %.077162 = phi i32 [ 0, %.lr.ph163 ], [ %.178, %bb.ab ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val96, i64 %indvars.iv183
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !14 ; 2 uses
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %.val101, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !14
  %i.bk = icmp eq i32 %i.bj, 1
  %i.bl = zext i1 %i.bk to i32
  %i.bm = shl nsw i32 %i.bg, 1
  %i.bn = or disjoint i32 %i.bm, %i.bl
  %i.bo = trunc nsw i64 %indvars.iv181 to i32
  %i.bp = icmp eq i32 %spec.select.sink.i107168, %i.bo
  br i1 %i.bp, label %bb.s, label %Vec_IntPush.exit110

bb.s:                                             ; preds = %bb.r
  %i.bq = icmp samesign ult i64 %indvars.iv181, 16
  br i1 %i.bq, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %.not9.i.i108 = icmp eq ptr %storemerge149170, null
  br i1 %.not9.i.i108, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge149170, i64 noundef 64) #30
  br label %Vec_IntPush.exit110

bb.v:                                             ; preds = %bb.t
  %i.bs = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit110

bb.w:                                             ; preds = %bb.s
  %i.bt = icmp samesign ult i64 %indvars.iv181, 1073741823
  %indvars.iv181.tr = trunc i64 %indvars.iv181 to i32
  %i.bu = shl nsw i32 %indvars.iv181.tr, 1
  %spec.select.i103 = select i1 %i.bt, i32 %i.bu, i32 2147483647 ; 4 uses
  %i.bv = sext i32 %spec.select.i103 to i64
  %.not.i9.i104 = icmp samesign ult i64 %indvars.iv181, %i.bv
  br i1 %.not.i9.i104, label %bb.x, label %Vec_IntPush.exit110

bb.x:                                             ; preds = %bb.w
  %.not9.i10.i105 = icmp eq ptr %storemerge149170, null
  %i.bw = zext nneg i32 %spec.select.i103 to i64
  %i.bx = shl nuw nsw i64 %i.bw, 2                ; 2 uses
  br i1 %.not9.i10.i105, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = call ptr @realloc(ptr noundef nonnull %storemerge149170, i64 noundef %i.bx) #30
  br label %Vec_IntPush.exit110

bb.z:                                             ; preds = %bb.x
  %i.bz = call noalias ptr @malloc(i64 noundef %i.bx) #28
  br label %Vec_IntPush.exit110

Vec_IntPush.exit110:                              ; preds = %bb.v, %bb.u, %bb.z, %bb.y, %bb.r, %bb.w
  %storemerge149171 = phi ptr [ %storemerge149170, %bb.r ], [ %storemerge149170, %bb.w ], [ %i.bs, %bb.v ], [ %i.br, %bb.u ], [ %i.by, %bb.y ], [ %i.bz, %bb.z ] ; 4 uses
  %spec.select.sink.i107167 = phi i32 [ %spec.select.sink.i107168, %bb.r ], [ %spec.select.sink.i107168, %bb.w ], [ 16, %bb.v ], [ 16, %bb.u ], [ %spec.select.i103, %bb.y ], [ %spec.select.i103, %bb.z ] ; 3 uses
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %storemerge149171, i64 %indvars.iv181
  store i32 %i.bn, ptr %i.ca, align 4, !tbaa !14
  %.val100 = load ptr, ptr %i.az, align 8, !tbaa !87 ; 2 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %.val100, i64 %i.bh
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !14
  %.not150 = icmp eq i32 %i.cc, 1
  br i1 %.not150, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %Vec_IntPush.exit110
  %.val89 = load i32, ptr %i.l, align 4, !tbaa !13
  %i.cd = trunc nuw nsw i64 %indvars.iv183 to i32
  %i.ce = xor i32 %i.cd, -1
  %i.cf = add i32 %.val89, %i.ce
  %i.cg = shl nuw i32 1, %i.cf
  %i.ch = or i32 %i.cg, %.077162
  br label %bb.ab

bb.ab:                                            ; preds = %Vec_IntPush.exit110, %bb.aa
  %.178 = phi i32 [ %i.ch, %bb.aa ], [ %.077162, %Vec_IntPush.exit110 ] ; 2 uses
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count
  br i1 %exitcond.not, label %..critedge2_crit_edge, label %bb.r, !llvm.loop !216

..critedge2_crit_edge:                            ; preds = %bb.ab
  %i.ci = trunc nsw i64 %indvars.iv.next182 to i32
  store i32 %i.ci, ptr %i.as, align 4, !tbaa !13
  store i32 %spec.select.sink.i107167, ptr %i.ar, align 8
  store ptr %storemerge149171, ptr %i.au, align 8
  %.pre = load i32, ptr %i.aw, align 4, !tbaa !13
  %.pre203 = load i32, ptr %i.av, align 8, !tbaa !8
  br label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %bb.q
  %.val99 = phi ptr [ %storemerge149171, %..critedge2_crit_edge ], [ %.val99206, %bb.q ] ; 5 uses
  %i.cj = phi i32 [ %.pre203, %..critedge2_crit_edge ], [ %i.bb, %bb.q ] ; 7 uses
  %i.ck = phi i32 [ %.pre, %..critedge2_crit_edge ], [ %i.bc, %bb.q ] ; 3 uses
  %.promoted166199 = phi i32 [ %spec.select.sink.i107167, %..critedge2_crit_edge ], [ %.promoted166, %bb.q ]
  %.077.lcssa = phi i32 [ %.178, %..critedge2_crit_edge ], [ 0, %bb.q ]
  %i.cl = icmp eq i32 %i.ck, %i.cj
  br i1 %i.cl, label %bb.ac, label %.critedge2.Vec_IntPush.exit118_crit_edge

.critedge2.Vec_IntPush.exit118_crit_edge:         ; preds = %.critedge2
  %.pre204 = load ptr, ptr %i.ay, align 8, !tbaa !12
  br label %Vec_IntPush.exit118

bb.ac:                                            ; preds = %.critedge2
  %i.cm = icmp slt i32 %i.cj, 16
  br i1 %i.cm, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.cn = load ptr, ptr %i.ay, align 8, !tbaa !12 ; 2 uses
  %.not9.i.i116 = icmp eq ptr %i.cn, null
  br i1 %.not9.i.i116, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.co = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cn, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i114

bb.af:                                            ; preds = %bb.ad
  %i.cp = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i114

bb.ag:                                            ; preds = %bb.ac
  %i.cq = icmp samesign ult i32 %i.cj, 1073741823
  %i.cr = shl nuw nsw i32 %i.cj, 1
  %spec.select.i111 = select i1 %i.cq, i32 %i.cr, i32 2147483647 ; 4 uses
  %.not.i9.i112 = icmp samesign ult i32 %i.cj, %spec.select.i111
  %.pre205 = load ptr, ptr %i.ay, align 8, !tbaa !12 ; 3 uses
  br i1 %.not.i9.i112, label %bb.ah, label %Vec_IntPush.exit118

bb.ah:                                            ; preds = %bb.ag
  %.not9.i10.i113 = icmp eq ptr %.pre205, null
  %i.cs = zext nneg i32 %spec.select.i111 to i64
  %i.ct = shl nuw nsw i64 %i.cs, 2                ; 2 uses
  br i1 %.not9.i10.i113, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cu = call ptr @realloc(ptr noundef nonnull %.pre205, i64 noundef %i.ct) #30
  br label %Vec_IntGrow.exit11.sink.split.i114

bb.aj:                                            ; preds = %bb.ah
  %i.cv = call noalias ptr @malloc(i64 noundef %i.ct) #28
  br label %Vec_IntGrow.exit11.sink.split.i114

Vec_IntGrow.exit11.sink.split.i114:               ; preds = %bb.ai, %bb.aj, %bb.ae, %bb.af
  %storemerge = phi ptr [ %i.cp, %bb.af ], [ %i.co, %bb.ae ], [ %i.cu, %bb.ai ], [ %i.cv, %bb.aj ] ; 2 uses
  %spec.select.sink.i115 = phi i32 [ 16, %bb.af ], [ 16, %bb.ae ], [ %spec.select.i111, %bb.ai ], [ %spec.select.i111, %bb.aj ] ; 2 uses
  store ptr %storemerge, ptr %i.ay, align 8, !tbaa !12
  store i32 %spec.select.sink.i115, ptr %i.av, align 8, !tbaa !8
  br label %Vec_IntPush.exit118

Vec_IntPush.exit118:                              ; preds = %.critedge2.Vec_IntPush.exit118_crit_edge, %bb.ag, %Vec_IntGrow.exit11.sink.split.i114
  %i.cw = phi ptr [ %.pre204, %.critedge2.Vec_IntPush.exit118_crit_edge ], [ %.pre205, %bb.ag ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i114 ]
  %i.cx = phi i32 [ %i.cj, %.critedge2.Vec_IntPush.exit118_crit_edge ], [ %i.cj, %bb.ag ], [ %spec.select.sink.i115, %Vec_IntGrow.exit11.sink.split.i114 ]
  %i.cy = add nsw i32 %i.ck, 1                    ; 2 uses
  store i32 %i.cy, ptr %i.aw, align 4, !tbaa !13
  %i.cz = sext i32 %i.ck to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cz
  store i32 %.077.lcssa, ptr %i.da, align 4, !tbaa !14
  %.val88 = load i32, ptr %i.as, align 4, !tbaa !13
  %i.db = sext i32 %.val88 to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %.val99, i64 %i.db
  %i.dd = call i32 @sat_solver_addclause(ptr noundef %i.i, ptr noundef %.val99, ptr noundef %i.dc) #29
  %.not = icmp eq i32 %i.dd, 0
  br i1 %.not, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %Vec_IntPush.exit118
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.de = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #29
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %Abc_Clock.exit120, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dg = load i64, ptr %4, align 8, !tbaa !79
  %i.dh = mul nsw i64 %i.dg, 1000000
  %i.di = load i64, ptr %i.ba, align 8, !tbaa !81
  %i.dj = sdiv i64 %i.di, 1000
  %i.dk = add nsw i64 %i.dj, %i.dh
  br label %Abc_Clock.exit120

Abc_Clock.exit120:                                ; preds = %bb.ak, %bb.al
  %.0.i119 = phi i64 [ %i.dk, %bb.al ], [ -1, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.dl = add i64 %.0.i119, %.0.i.neg
  %i.dm = icmp sgt i64 %i.dl, 599999999
  %i.dn = add nuw nsw i32 %.079172, 1             ; 2 uses
  %exitcond188.not = icmp eq i32 %i.dn, 1000000
  %or.cond = select i1 %i.dm, i1 true, i1 %exitcond188.not
  br i1 %or.cond, label %.thread, label %bb.p, !llvm.loop !217

.thread.loopexit:                                 ; preds = %bb.p
  br label %.thread

.thread:                                          ; preds = %Abc_Clock.exit120, %Vec_IntPush.exit118, %bb.p, %.thread.loopexit
  %i.do = phi ptr [ %.val99206, %bb.p ], [ %.val99, %Abc_Clock.exit120 ], [ %.val99, %Vec_IntPush.exit118 ], [ %.val99206, %.thread.loopexit ] ; 2 uses
  %i.dp = phi i1 [ true, %bb.p ], [ true, %Abc_Clock.exit120 ], [ false, %Vec_IntPush.exit118 ], [ false, %.thread.loopexit ]
  %.val87 = load i32, ptr %i.l, align 4, !tbaa !13 ; 2 uses
  %i.dq = shl nuw i32 1, %.val87                  ; 3 uses
  %spec.store.select.i.i = call i32 @llvm.umax.i32(i32 %i.dq, i32 16)
  %i.dr = sext i32 %spec.store.select.i.i to i64
  %i.ds = shl nsw i64 %i.dr, 2
  %i.dt = call noalias ptr @malloc(i64 noundef %i.ds) #28 ; 9 uses
  %.not.i121 = icmp eq ptr %i.dt, null            ; 2 uses
  br i1 %.not.i121, label %Vec_IntStart.exit, label %bb.am

bb.am:                                            ; preds = %.thread
  %i.du = sext i32 %i.dq to i64
  %i.dv = shl nsw i64 %i.du, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dt, i8 0, i64 %i.dv, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %.thread, %bb.am
  %.val86 = load i32, ptr %i.aw, align 4, !tbaa !13 ; 3 uses
  %i.dw = icmp sgt i32 %.val86, 0
  br i1 %i.dw, label %.lr.ph174, label %.critedge4

.lr.ph174:                                        ; preds = %Vec_IntStart.exit
  %.val95 = load ptr, ptr %i.ay, align 8, !tbaa !12 ; 5 uses
  %wide.trip.count192 = zext nneg i32 %.val86 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count192, 3      ; 3 uses
  %i.dx = icmp ult i32 %.val86, 4
  br i1 %i.dx, label %.epil.preheader, label %.lr.ph174.new

.lr.ph174.new:                                    ; preds = %.lr.ph174
  %unroll_iter = and i64 %wide.trip.count192, 2147483644
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.lr.ph174.new
  %indvars.iv189 = phi i64 [ 0, %.lr.ph174.new ], [ %indvars.iv.next190.3, %bb.an ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph174.new ], [ %niter.next.3, %bb.an ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.val95, i64 %indvars.iv189
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !14
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.ea
  store i32 1, ptr %i.eb, align 4, !tbaa !14
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.val95, i64 %indvars.iv189
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
end_hunk_4
