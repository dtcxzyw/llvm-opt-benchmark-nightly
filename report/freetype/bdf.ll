Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/bdf?download=true
inline.NumInlined: 52
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@BDF_Face_Init:bb.a

bb.az:                                            ; preds = %bb.ay
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !43
  switch i8 %i.fx, label %.thread129.i [
    i8 66, label %bb.ba
    i8 98, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.fy = load i64, ptr %i.em, align 8, !tbaa !142
  %i.fz = or i64 %i.fy, 2
  store i64 %i.fz, ptr %i.em, align 8, !tbaa !142
  br label %.thread129.i

.thread129.i:                                     ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax, %bdf_get_font_property.exit115.i, %bb.aw
  %.not112.1.i = phi i1 [ true, %bb.ax ], [ false, %bb.ba ], [ true, %bb.az ], [ true, %bb.ay ], [ true, %bdf_get_font_property.exit115.i ], [ true, %bb.aw ]
  %.sroa.7.0.ph.i = phi ptr [ null, %bb.ax ], [ @.str.111, %bb.ba ], [ null, %bb.az ], [ null, %bb.ay ], [ null, %bdf_get_font_property.exit115.i ], [ null, %bb.aw ] ; 2 uses
  %.pr168.i = load i64, ptr %i.eo, align 8, !tbaa !64
  %i.ga = icmp eq i64 %.pr168.i, 0
  br i1 %i.ga, label %bdf_get_font_property.exit121.thread.thread.i, label %bb.bb

bb.bb:                                            ; preds = %.thread129.i
  %i.gb = load ptr, ptr %i.er, align 8, !tbaa !65
  %i.gc = call ptr @ft_hash_str_lookup(ptr noundef nonnull @.str.81, ptr noundef %i.gb) #18 ; 2 uses
  %.not.i116.i = icmp eq ptr %i.gc, null
  br i1 %.not.i116.i, label %.thread135.i, label %bdf_get_font_property.exit118.i

bdf_get_font_property.exit118.i:                  ; preds = %bb.bb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.el, i64 144
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !66 ; 2 uses
  %i.gf = load i64, ptr %i.gc, align 8, !tbaa !67
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.ge, i64 %i.gf ; 2 uses
  %.not103.i = icmp eq ptr %i.ge, null
  br i1 %.not103.i, label %.thread135.i, label %bb.bc

bb.bc:                                            ; preds = %bdf_get_font_property.exit118.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !71
  %i.gj = icmp eq i32 %i.gi, 1
  br i1 %i.gj, label %bb.bd, label %.thread135.i

bb.bd:                                            ; preds = %bb.bc
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !43 ; 3 uses
  %.not104.i = icmp eq ptr %i.gl, null
  br i1 %.not104.i, label %.thread135.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !43
  switch i8 %i.gm, label %bb.bf [
    i8 0, label %.thread135.i
    i8 78, label %.thread135.i
    i8 110, label %.thread135.i
  ]

bb.bf:                                            ; preds = %bb.be
  br label %.thread135.i

.thread135.i:                                     ; preds = %bb.bf, %bb.be, %bb.be, %bb.be, %bb.bd, %bb.bc, %bdf_get_font_property.exit118.i, %bb.bb
  %.sroa.13.0.ph.ph.i = phi ptr [ null, %bdf_get_font_property.exit118.i ], [ null, %bb.bd ], [ %i.gl, %bb.bf ], [ null, %bb.be ], [ null, %bb.be ], [ null, %bb.be ], [ null, %bb.bc ], [ null, %bb.bb ] ; 9 uses
  %.pr173.pr.i = load i64, ptr %i.eo, align 8, !tbaa !64
  %i.gn = icmp eq i64 %.pr173.pr.i, 0
  br i1 %i.gn, label %bdf_get_font_property.exit121.thread.thread.i, label %bb.bg

bb.bg:                                            ; preds = %.thread135.i
  %i.go = load ptr, ptr %i.er, align 8, !tbaa !65
  %i.gp = call ptr @ft_hash_str_lookup(ptr noundef nonnull @.str.29, ptr noundef %i.go) #18 ; 2 uses
  %.not.i119.i = icmp eq ptr %i.gp, null
  br i1 %.not.i119.i, label %bdf_get_font_property.exit121.thread.thread.i, label %bdf_get_font_property.exit121.i

bdf_get_font_property.exit121.i:                  ; preds = %bb.bg
  %i.gq = getelementptr inbounds nuw i8, ptr %i.el, i64 144
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !66 ; 2 uses
  %i.gs = load i64, ptr %i.gp, align 8, !tbaa !67
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.gs ; 2 uses
  %.not106.i = icmp eq ptr %i.gr, null
  br i1 %.not106.i, label %bdf_get_font_property.exit121.thread.thread.i, label %bb.bh

bb.bh:                                            ; preds = %bdf_get_font_property.exit121.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !71
  %i.gw = icmp eq i32 %i.gv, 1
  br i1 %i.gw, label %bb.bi, label %bdf_get_font_property.exit121.thread.thread.i

bb.bi:                                            ; preds = %bb.bh
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !43 ; 4 uses
  %.not107.i = icmp eq ptr %i.gy, null
  br i1 %.not107.i, label %bdf_get_font_property.exit121.thread.thread.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !43
  switch i8 %i.gz, label %bdf_get_font_property.exit121.thread.i [
    i8 0, label %bdf_get_font_property.exit121.thread.thread.i
    i8 78, label %bdf_get_font_property.exit121.thread.thread.i
    i8 110, label %bdf_get_font_property.exit121.thread.thread.i
  ]

bdf_get_font_property.exit121.thread.i:           ; preds = %bb.bj
  %i.ha = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gy) #19 ; 2 uses
  %i.hb = add i64 %i.ha, 1
  br label %bdf_get_font_property.exit121.thread.thread.i

bdf_get_font_property.exit121.thread.thread.i:    ; preds = %bdf_get_font_property.exit121.thread.i, %bb.bj, %bb.bj, %bb.bj, %bb.bi, %bb.bh, %bdf_get_font_property.exit121.i, %bb.bg, %.thread135.i, %.thread129.i
  %.sroa.13.1185.i = phi ptr [ %.sroa.13.0.ph.ph.i, %bdf_get_font_property.exit121.thread.i ], [ null, %.thread129.i ], [ %.sroa.13.0.ph.ph.i, %bb.bh ], [ %.sroa.13.0.ph.ph.i, %bb.bj ], [ %.sroa.13.0.ph.ph.i, %bb.bj ], [ %.sroa.13.0.ph.ph.i, %bb.bj ], [ %.sroa.13.0.ph.ph.i, %bb.bi ], [ %.sroa.13.0.ph.ph.i, %bdf_get_font_property.exit121.i ], [ %.sroa.13.0.ph.ph.i, %bb.bg ], [ %.sroa.13.0.ph.ph.i, %.thread135.i ] ; 2 uses
  %.sroa.0147.0182.i = phi ptr [ %i.gy, %bdf_get_font_property.exit121.thread.i ], [ null, %.thread129.i ], [ null, %bb.bh ], [ null, %bb.bj ], [ null, %bb.bj ], [ null, %bb.bj ], [ null, %bb.bi ], [ null, %bdf_get_font_property.exit121.i ], [ null, %bb.bg ], [ null, %.thread135.i ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.ha, %bdf_get_font_property.exit121.thread.i ], [ 0, %.thread129.i ], [ 0, %bb.bh ], [ 0, %bb.bj ], [ 0, %bb.bj ], [ 0, %bb.bj ], [ 0, %bb.bi ], [ 0, %bdf_get_font_property.exit121.i ], [ 0, %bb.bg ], [ 0, %.thread135.i ] ; 2 uses
  %.179.i = phi i64 [ %i.hb, %bdf_get_font_property.exit121.thread.i ], [ 0, %.thread129.i ], [ 0, %bb.bh ], [ 0, %bb.bj ], [ 0, %bb.bj ], [ 0, %bb.bj ], [ 0, %bb.bi ], [ 0, %bdf_get_font_property.exit121.i ], [ 0, %bb.bg ], [ 0, %.thread135.i ] ; 2 uses
  br i1 %.not112.1.i, label %bdf_get_font_property.exit121.thread.thread.thread.i, label %bb.bk

bb.bk:                                            ; preds = %bdf_get_font_property.exit121.thread.thread.i
  %i.hc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.7.0.ph.i) #19 ; 2 uses
  %i.hd = add i64 %.179.i, 1
  %i.he = add i64 %i.hd, %i.hc
  br label %bdf_get_font_property.exit121.thread.thread.thread.i

bdf_get_font_property.exit121.thread.thread.thread.i: ; preds = %bb.bk, %bdf_get_font_property.exit121.thread.thread.i, %.thread.i253
  %.not112.1204.i = phi i1 [ true, %bdf_get_font_property.exit121.thread.thread.i ], [ false, %bb.bk ], [ true, %.thread.i253 ] ; 2 uses
  %.sroa.0.0203.i = phi i64 [ %.sroa.0.0.i, %bdf_get_font_property.exit121.thread.thread.i ], [ %.sroa.0.0.i, %bb.bk ], [ 0, %.thread.i253 ]
  %.sroa.0147.0182202.i = phi ptr [ %.sroa.0147.0182.i, %bdf_get_font_property.exit121.thread.thread.i ], [ %.sroa.0147.0182.i, %bb.bk ], [ null, %.thread.i253 ]
  %.sroa.7.1183201.i = phi ptr [ null, %bdf_get_font_property.exit121.thread.thread.i ], [ %.sroa.7.0.ph.i, %bb.bk ], [ null, %.thread.i253 ] ; 2 uses
  %.sroa.13.1185199.i = phi ptr [ %.sroa.13.1185.i, %bdf_get_font_property.exit121.thread.thread.i ], [ %.sroa.13.1185.i, %bb.bk ], [ null, %.thread.i253 ] ; 4 uses
  %.sroa.6.0.i = phi i64 [ 0, %bdf_get_font_property.exit121.thread.thread.i ], [ %i.hc, %bb.bk ], [ 0, %.thread.i253 ] ; 2 uses
  %.179.1.i = phi i64 [ %.179.i, %bdf_get_font_property.exit121.thread.thread.i ], [ %i.he, %bb.bk ], [ 0, %.thread.i253 ] ; 2 uses
  %.not112.2.i = icmp eq ptr %.sroa.10.0.ph.i, null ; 3 uses
  br i1 %.not112.2.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bdf_get_font_property.exit121.thread.thread.thread.i
  %i.hf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.10.0.ph.i) #19 ; 2 uses
  %i.hg = add i64 %.179.1.i, 1
  %i.hh = add i64 %i.hg, %i.hf
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bdf_get_font_property.exit121.thread.thread.thread.i
  %.sroa.9.0.i = phi i64 [ 0, %bdf_get_font_property.exit121.thread.thread.thread.i ], [ %i.hf, %bb.bl ] ; 2 uses
  %.179.2.i = phi i64 [ %.179.1.i, %bdf_get_font_property.exit121.thread.thread.thread.i ], [ %i.hh, %bb.bl ] ; 2 uses
  %.not112.3.i = icmp eq ptr %.sroa.13.1185199.i, null ; 3 uses
  br i1 %.not112.3.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.13.1185199.i) #19 ; 2 uses
  %i.hj = add i64 %.179.2.i, 1
  %i.hk = add i64 %i.hj, %i.hi
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.sroa.12.0.i = phi i64 [ 0, %bb.bm ], [ %i.hi, %bb.bn ] ; 2 uses
  %.179.3.i = phi i64 [ %.179.2.i, %bb.bm ], [ %i.hk, %bb.bn ] ; 2 uses
  %i.hl = icmp eq i64 %.179.3.i, 0
  br i1 %i.hl, label %bb.bp, label %.thread244.i

bb.bp:                                            ; preds = %bb.bo
  br label %.thread244.i

.thread244.i:                                     ; preds = %bb.bp, %bb.bo, %bb.aq, %bb.ap
  %.sroa.12.0273.i = phi i64 [ %.sroa.12.0.i, %bb.bo ], [ %.sroa.12.0.i, %bb.bp ], [ 0, %bb.ap ], [ 0, %bb.aq ] ; 11 uses
  %.not112.2221234271.i = phi i1 [ %.not112.2.i, %bb.bo ], [ %.not112.2.i, %bb.bp ], [ true, %bb.ap ], [ true, %bb.aq ]
  %.sroa.6.0220235269.i = phi i64 [ %.sroa.6.0.i, %bb.bo ], [ %.sroa.6.0.i, %bb.bp ], [ 0, %bb.ap ], [ 0, %bb.aq ] ; 2 uses
  %.sroa.13.1185199219236267.i = phi ptr [ %.sroa.13.1185199.i, %bb.bo ], [ %.sroa.13.1185199.i, %bb.bp ], [ null, %bb.ap ], [ null, %bb.aq ]
  %.sroa.10.1184200218237265.i = phi ptr [ %.sroa.10.0.ph.i, %bb.bo ], [ %.sroa.10.0.ph.i, %bb.bp ], [ null, %bb.ap ], [ null, %bb.aq ]
  %.sroa.7.1183201217238263.i = phi ptr [ %.sroa.7.1183201.i, %bb.bo ], [ %.sroa.7.1183201.i, %bb.bp ], [ null, %bb.ap ], [ null, %bb.aq ]
  %.not112.1204214241261.i = phi i1 [ %.not112.1204.i, %bb.bo ], [ %.not112.1204.i, %bb.bp ], [ true, %bb.ap ], [ true, %bb.aq ]
  %.sroa.9.0242259.i = phi i64 [ %.sroa.9.0.i, %bb.bo ], [ %.sroa.9.0.i, %bb.bp ], [ 0, %bb.ap ], [ 0, %bb.aq ] ; 2 uses
  %.not112.3243257.i = phi i1 [ %.not112.3.i, %bb.bo ], [ %.not112.3.i, %bb.bp ], [ true, %bb.ap ], [ true, %bb.aq ]
  %.sroa.0147.1.i = phi ptr [ %.sroa.0147.0182202.i, %bb.bo ], [ @.str.112, %bb.bp ], [ @.str.112, %bb.ap ], [ @.str.112, %bb.aq ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0203.i, %bb.bo ], [ 7, %bb.bp ], [ 7, %bb.ap ], [ 7, %bb.aq ] ; 11 uses
  %.280.i = phi i64 [ %.179.3.i, %bb.bo ], [ 8, %bb.bp ], [ 8, %bb.ap ], [ 8, %bb.aq ]
  %i.hm = call ptr @ft_mem_qalloc(ptr noundef %i.ek, i64 noundef %.280.i, ptr noundef nonnull %i.a) #18 ; 45 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !72
  %i.ho = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  %.not109.i = icmp eq i32 %i.ho, 0
  br i1 %.not109.i, label %.preheader.preheader.i, label %bdf_interpret_style.exit.thread

bdf_interpret_style.exit.thread:                  ; preds = %.thread244.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.critedge246

.preheader.preheader.i:                           ; preds = %.thread244.i
  %.not110.i = icmp eq ptr %.sroa.0147.1.i, null
  br i1 %.not110.i, label %.preheader.1.i, label %bb.bq

bb.bq:                                            ; preds = %.preheader.preheader.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hm, ptr nonnull align 1 %.sroa.0147.1.i, i64 %.sroa.0.1.i, i1 false)
  %.not145.i = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %.not145.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %bb.bq
  %min.iters.check = icmp ult i64 %.sroa.0.1.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check421 = icmp ult i64 %.sroa.0.1.i, 32
  br i1 %min.iters.check421, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hp = and i64 %.sroa.0.1.i, 24
  %n.vec = and i64 %.sroa.0.1.i, -32              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue484
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue484 ] ; 33 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %wide.load = load <16 x i8>, ptr %i.hq, align 1, !tbaa !43
  %wide.load422 = load <16 x i8>, ptr %i.hr, align 1, !tbaa !43
  %i.hs = icmp eq <16 x i8> %wide.load, splat (i8 32) ; 16 uses
  %i.ht = icmp eq <16 x i8> %wide.load422, splat (i8 32) ; 16 uses
  %i.hu = extractelement <16 x i1> %i.hs, i64 0
  br i1 %i.hu, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 45, ptr %i.hq, align 1, !tbaa !43
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.hv = extractelement <16 x i1> %i.hs, i64 1
  br i1 %i.hv, label %pred.store.if423, label %pred.store.continue424

pred.store.if423:                                 ; preds = %pred.store.continue
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  store i8 45, ptr %i.hx, align 1, !tbaa !43
  br label %pred.store.continue424

pred.store.continue424:                           ; preds = %pred.store.if423, %pred.store.continue
  %i.hy = extractelement <16 x i1> %i.hs, i64 2
  br i1 %i.hy, label %pred.store.if425, label %pred.store.continue426

pred.store.if425:                                 ; preds = %pred.store.continue424
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 2
  store i8 45, ptr %i.ia, align 1, !tbaa !43
  br label %pred.store.continue426

pred.store.continue426:                           ; preds = %pred.store.if425, %pred.store.continue424
  %i.ib = extractelement <16 x i1> %i.hs, i64 3
  br i1 %i.ib, label %pred.store.if427, label %pred.store.continue428

pred.store.if427:                                 ; preds = %pred.store.continue426
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 3
  store i8 45, ptr %i.id, align 1, !tbaa !43
  br label %pred.store.continue428

pred.store.continue428:                           ; preds = %pred.store.if427, %pred.store.continue426
  %i.ie = extractelement <16 x i1> %i.hs, i64 4
  br i1 %i.ie, label %pred.store.if429, label %pred.store.continue430

pred.store.if429:                                 ; preds = %pred.store.continue428
  %i.if = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  store i8 45, ptr %i.ig, align 1, !tbaa !43
  br label %pred.store.continue430

pred.store.continue430:                           ; preds = %pred.store.if429, %pred.store.continue428
  %i.ih = extractelement <16 x i1> %i.hs, i64 5
  br i1 %i.ih, label %pred.store.if431, label %pred.store.continue432

pred.store.if431:                                 ; preds = %pred.store.continue430
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 5
  store i8 45, ptr %i.ij, align 1, !tbaa !43
  br label %pred.store.continue432

pred.store.continue432:                           ; preds = %pred.store.if431, %pred.store.continue430
  %i.ik = extractelement <16 x i1> %i.hs, i64 6
  br i1 %i.ik, label %pred.store.if433, label %pred.store.continue434

pred.store.if433:                                 ; preds = %pred.store.continue432
  %i.il = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 6
  store i8 45, ptr %i.im, align 1, !tbaa !43
  br label %pred.store.continue434

pred.store.continue434:                           ; preds = %pred.store.if433, %pred.store.continue432
  %i.in = extractelement <16 x i1> %i.hs, i64 7
  br i1 %i.in, label %pred.store.if435, label %pred.store.continue436

pred.store.if435:                                 ; preds = %pred.store.continue434
  %i.io = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 7
  store i8 45, ptr %i.ip, align 1, !tbaa !43
  br label %pred.store.continue436

pred.store.continue436:                           ; preds = %pred.store.if435, %pred.store.continue434
  %i.iq = extractelement <16 x i1> %i.hs, i64 8
  br i1 %i.iq, label %pred.store.if437, label %pred.store.continue438

pred.store.if437:                                 ; preds = %pred.store.continue436
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i8 45, ptr %i.is, align 1, !tbaa !43
  br label %pred.store.continue438

pred.store.continue438:                           ; preds = %pred.store.if437, %pred.store.continue436
  %i.it = extractelement <16 x i1> %i.hs, i64 9
  br i1 %i.it, label %pred.store.if439, label %pred.store.continue440

pred.store.if439:                                 ; preds = %pred.store.continue438
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 9
  store i8 45, ptr %i.iv, align 1, !tbaa !43
  br label %pred.store.continue440

pred.store.continue440:                           ; preds = %pred.store.if439, %pred.store.continue438
  %i.iw = extractelement <16 x i1> %i.hs, i64 10
  br i1 %i.iw, label %pred.store.if441, label %pred.store.continue442

pred.store.if441:                                 ; preds = %pred.store.continue440
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 10
  store i8 45, ptr %i.iy, align 1, !tbaa !43
  br label %pred.store.continue442

pred.store.continue442:                           ; preds = %pred.store.if441, %pred.store.continue440
  %i.iz = extractelement <16 x i1> %i.hs, i64 11
  br i1 %i.iz, label %pred.store.if443, label %pred.store.continue444

pred.store.if443:                                 ; preds = %pred.store.continue442
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 11
  store i8 45, ptr %i.jb, align 1, !tbaa !43
  br label %pred.store.continue444

pred.store.continue444:                           ; preds = %pred.store.if443, %pred.store.continue442
  %i.jc = extractelement <16 x i1> %i.hs, i64 12
  br i1 %i.jc, label %pred.store.if445, label %pred.store.continue446

pred.store.if445:                                 ; preds = %pred.store.continue444
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  store i8 45, ptr %i.je, align 1, !tbaa !43
  br label %pred.store.continue446

pred.store.continue446:                           ; preds = %pred.store.if445, %pred.store.continue444
  %i.jf = extractelement <16 x i1> %i.hs, i64 13
  br i1 %i.jf, label %pred.store.if447, label %pred.store.continue448

pred.store.if447:                                 ; preds = %pred.store.continue446
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 13
  store i8 45, ptr %i.jh, align 1, !tbaa !43
  br label %pred.store.continue448

pred.store.continue448:                           ; preds = %pred.store.if447, %pred.store.continue446
  %i.ji = extractelement <16 x i1> %i.hs, i64 14
  br i1 %i.ji, label %pred.store.if449, label %pred.store.continue450

pred.store.if449:                                 ; preds = %pred.store.continue448
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 14
  store i8 45, ptr %i.jk, align 1, !tbaa !43
  br label %pred.store.continue450

pred.store.continue450:                           ; preds = %pred.store.if449, %pred.store.continue448
  %i.jl = extractelement <16 x i1> %i.hs, i64 15
  br i1 %i.jl, label %pred.store.if451, label %pred.store.continue452

pred.store.if451:                                 ; preds = %pred.store.continue450
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 15
  store i8 45, ptr %i.jn, align 1, !tbaa !43
  br label %pred.store.continue452

pred.store.continue452:                           ; preds = %pred.store.if451, %pred.store.continue450
  %i.jo = extractelement <16 x i1> %i.ht, i64 0
  br i1 %i.jo, label %pred.store.if453, label %pred.store.continue454

pred.store.if453:                                 ; preds = %pred.store.continue452
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  store i8 45, ptr %i.jq, align 1, !tbaa !43
  br label %pred.store.continue454

pred.store.continue454:                           ; preds = %pred.store.if453, %pred.store.continue452
  %i.jr = extractelement <16 x i1> %i.ht, i64 1
  br i1 %i.jr, label %pred.store.if455, label %pred.store.continue456

pred.store.if455:                                 ; preds = %pred.store.continue454
  %i.js = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 17
  store i8 45, ptr %i.jt, align 1, !tbaa !43
  br label %pred.store.continue456

pred.store.continue456:                           ; preds = %pred.store.if455, %pred.store.continue454
  %i.ju = extractelement <16 x i1> %i.ht, i64 2
  br i1 %i.ju, label %pred.store.if457, label %pred.store.continue458

pred.store.if457:                                 ; preds = %pred.store.continue456
  %i.jv = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 18
  store i8 45, ptr %i.jw, align 1, !tbaa !43
  br label %pred.store.continue458

pred.store.continue458:                           ; preds = %pred.store.if457, %pred.store.continue456
  %i.jx = extractelement <16 x i1> %i.ht, i64 3
  br i1 %i.jx, label %pred.store.if459, label %pred.store.continue460

pred.store.if459:                                 ; preds = %pred.store.continue458
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index
end_hunk_0
begin_hunk_1_@BDF_Face_Init:bb.a
  %cmp.n = icmp eq i64 %.sroa.0.1.i, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !145

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec485 = and i64 %.sroa.0.1.i, -8            ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue503, %vec.epilog.ph
  %index486 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next504, %pred.store.continue503 ] ; 9 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index486 ; 2 uses
  %wide.load487 = load <8 x i8>, ptr %i.ll, align 1, !tbaa !43
  %i.lm = icmp eq <8 x i8> %wide.load487, splat (i8 32) ; 8 uses
  %i.ln = extractelement <8 x i1> %i.lm, i64 0
  br i1 %i.ln, label %pred.store.if488, label %pred.store.continue489

pred.store.if488:                                 ; preds = %vec.epilog.vector.body
  store i8 45, ptr %i.ll, align 1, !tbaa !43
  br label %pred.store.continue489

pred.store.continue489:                           ; preds = %pred.store.if488, %vec.epilog.vector.body
  %i.lo = extractelement <8 x i1> %i.lm, i64 1
  br i1 %i.lo, label %pred.store.if490, label %pred.store.continue491

pred.store.if490:                                 ; preds = %pred.store.continue489
  %i.lp = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index486
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 1
  store i8 45, ptr %i.lq, align 1, !tbaa !43
  br label %pred.store.continue491

pred.store.continue491:                           ; preds = %pred.store.if490, %pred.store.continue489
  %i.lr = extractelement <8 x i1> %i.lm, i64 2
  br i1 %i.lr, label %pred.store.if492, label %pred.store.continue493

pred.store.if492:                                 ; preds = %pred.store.continue491
  %i.ls = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index486
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 2
  store i8 45, ptr %i.lt, align 1, !tbaa !43
  br label %pred.store.continue493

pred.store.continue493:                           ; preds = %pred.store.if492, %pred.store.continue491
  %i.lu = extractelement <8 x i1> %i.lm, i64 3
  br i1 %i.lu, label %pred.store.if494, label %pred.store.continue495

pred.store.if494:                                 ; preds = %pred.store.continue493
  %i.lv = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index486
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 3
  store i8 45, ptr %i.lw, align 1, !tbaa !43
  br label %pred.store.continue495

pred.store.continue495:                           ; preds = %pred.store.if494, %pred.store.continue493
  %i.lx = extractelement <8 x i1> %i.lm, i64 4
  br i1 %i.lx, label %pred.store.if496, label %pred.store.continue497

pred.store.if496:                                 ; preds = %pred.store.continue495
  %i.ly = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index486
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  store i8 45, ptr %i.lz, align 1, !tbaa !43
  br label %pred.store.continue497

pred.store.continue497:                           ; preds = %pred.store.if496, %pred.store.continue495
  %i.ma = extractelement <8 x i1> %i.lm, i64 5
  br i1 %i.ma, label %pred.store.if498, label %pred.store.continue499

pred.store.if498:                                 ; preds = %pred.store.continue497
  %i.mb = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index486
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 5
  store i8 45, ptr %i.mc, align 1, !tbaa !43
  br label %pred.store.continue499

pred.store.continue499:                           ; preds = %pred.store.if498, %pred.store.continue497
  %i.md = extractelement <8 x i1> %i.lm, i64 6
  br i1 %i.md, label %pred.store.if500, label %pred.store.continue501

pred.store.if500:                                 ; preds = %pred.store.continue499
  %i.me = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index486
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 6
  store i8 45, ptr %i.mf, align 1, !tbaa !43
  br label %pred.store.continue501

pred.store.continue501:                           ; preds = %pred.store.if500, %pred.store.continue499
  %i.mg = extractelement <8 x i1> %i.lm, i64 7
  br i1 %i.mg, label %pred.store.if502, label %pred.store.continue503

pred.store.if502:                                 ; preds = %pred.store.continue501
  %i.mh = getelementptr inbounds nuw i8, ptr %i.hm, i64 %index486
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 7
  store i8 45, ptr %i.mi, align 1, !tbaa !43
  br label %pred.store.continue503

pred.store.continue503:                           ; preds = %pred.store.if502, %pred.store.continue501
  %index.next504 = add nuw i64 %index486, 8       ; 2 uses
  %i.mj = icmp eq i64 %index.next504, %n.vec485
  br i1 %i.mj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !127

vec.epilog.middle.block:                          ; preds = %pred.store.continue503
  %cmp.n505 = icmp eq i64 %.sroa.0.1.i, %n.vec485
  br i1 %cmp.n505, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0142.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec485, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.bs
  %.0142.i = phi i64 [ %i.mn, %bb.bs ], [ %.0142.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.0142.i ; 2 uses
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !43
  %i.mm = icmp eq i8 %i.ml, 32
  br i1 %i.mm, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.lr.ph.i
  store i8 45, ptr %i.mk, align 1, !tbaa !43
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.lr.ph.i
  %i.mn = add nuw i64 %.0142.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.mn, %.sroa.0.1.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !128

.loopexit.i:                                      ; preds = %bb.bs, %middle.block, %vec.epilog.middle.block, %bb.bq
  %i.mo = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.sroa.0.1.i
  br label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.loopexit.i, %.preheader.preheader.i
  %.2.i = phi ptr [ %i.mo, %.loopexit.i ], [ %i.hm, %.preheader.preheader.i ] ; 5 uses
  br i1 %.not112.1204214241261.i, label %.preheader.2.i, label %bb.bt

bb.bt:                                            ; preds = %.preheader.1.i
  %i.mp = load ptr, ptr %i.hn, align 8, !tbaa !72
  %.not111.1.i = icmp eq ptr %.2.i, %i.mp
  br i1 %.not111.1.i, label %.loopexit.1.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mq = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  store i8 32, ptr %.2.i, align 1, !tbaa !43
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %bb.bu, %bb.bt
  %.1.1.i = phi ptr [ %i.mq, %bb.bu ], [ %.2.i, %bb.bt ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1.1.i, ptr nonnull align 1 %.sroa.7.1183201217238263.i, i64 %.sroa.6.0220235269.i, i1 false)
  %i.mr = getelementptr inbounds nuw i8, ptr %.1.1.i, i64 %.sroa.6.0220235269.i
  br label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.loopexit.1.i, %.preheader.1.i
  %.2.1.i = phi ptr [ %i.mr, %.loopexit.1.i ], [ %.2.i, %.preheader.1.i ] ; 5 uses
  br i1 %.not112.2221234271.i, label %.preheader.3.i, label %bb.bv

bb.bv:                                            ; preds = %.preheader.2.i
  %i.ms = load ptr, ptr %i.hn, align 8, !tbaa !72
  %.not111.2.i = icmp eq ptr %.2.1.i, %i.ms
  br i1 %.not111.2.i, label %.loopexit.2.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.mt = getelementptr inbounds nuw i8, ptr %.2.1.i, i64 1
  store i8 32, ptr %.2.1.i, align 1, !tbaa !43
  br label %.loopexit.2.i

.loopexit.2.i:                                    ; preds = %bb.bw, %bb.bv
  %.1.2.i = phi ptr [ %i.mt, %bb.bw ], [ %.2.1.i, %bb.bv ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1.2.i, ptr nonnull align 1 %.sroa.10.1184200218237265.i, i64 %.sroa.9.0242259.i, i1 false)
  %i.mu = getelementptr inbounds nuw i8, ptr %.1.2.i, i64 %.sroa.9.0242259.i
  br label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.loopexit.2.i, %.preheader.2.i
  %.2.2.i = phi ptr [ %i.mu, %.loopexit.2.i ], [ %.2.1.i, %.preheader.2.i ] ; 5 uses
  br i1 %.not112.3243257.i, label %bdf_interpret_style.exit, label %bb.bx

bb.bx:                                            ; preds = %.preheader.3.i
  %i.mv = load ptr, ptr %i.hn, align 8, !tbaa !72
  %.not111.3.i = icmp eq ptr %.2.2.i, %i.mv
  br i1 %.not111.3.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mw = getelementptr inbounds nuw i8, ptr %.2.2.i, i64 1
  store i8 32, ptr %.2.2.i, align 1, !tbaa !43
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.1.3.i = phi ptr [ %i.mw, %bb.by ], [ %.2.2.i, %bb.bx ] ; 43 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1.3.i, ptr nonnull align 1 %.sroa.13.1185199219236267.i, i64 %.sroa.12.0273.i, i1 false)
  %.not145.3.i = icmp eq i64 %.sroa.12.0273.i, 0
  br i1 %.not145.3.i, label %.loopexit.3.i, label %iter.check583

iter.check583:                                    ; preds = %bb.bz
  %min.iters.check506 = icmp ult i64 %.sroa.12.0273.i, 8
  br i1 %min.iters.check506, label %.lr.ph.3.i.preheader, label %vector.main.loop.iter.check507

vector.main.loop.iter.check507:                   ; preds = %iter.check583
  %min.iters.check508 = icmp ult i64 %.sroa.12.0273.i, 32
  br i1 %min.iters.check508, label %vec.epilog.ph587, label %vector.ph509

vector.ph509:                                     ; preds = %vector.main.loop.iter.check507
  %i.mx = and i64 %.sroa.12.0273.i, 24
  %n.vec510 = and i64 %.sroa.12.0273.i, -32       ; 4 uses
  br label %vector.body511

vector.body511:                                   ; preds = %vector.ph509, %pred.store.continue578
  %index512 = phi i64 [ 0, %vector.ph509 ], [ %index.next579, %pred.store.continue578 ] ; 33 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %wide.load513 = load <16 x i8>, ptr %i.my, align 1, !tbaa !43
  %wide.load514 = load <16 x i8>, ptr %i.mz, align 1, !tbaa !43
  %i.na = icmp eq <16 x i8> %wide.load513, splat (i8 32) ; 16 uses
  %i.nb = icmp eq <16 x i8> %wide.load514, splat (i8 32) ; 16 uses
  %i.nc = extractelement <16 x i1> %i.na, i64 0
  br i1 %i.nc, label %pred.store.if515, label %pred.store.continue516

pred.store.if515:                                 ; preds = %vector.body511
  store i8 45, ptr %i.my, align 1, !tbaa !43
  br label %pred.store.continue516

pred.store.continue516:                           ; preds = %pred.store.if515, %vector.body511
  %i.nd = extractelement <16 x i1> %i.na, i64 1
  br i1 %i.nd, label %pred.store.if517, label %pred.store.continue518

pred.store.if517:                                 ; preds = %pred.store.continue516
  %i.ne = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 1
  store i8 45, ptr %i.nf, align 1, !tbaa !43
  br label %pred.store.continue518

pred.store.continue518:                           ; preds = %pred.store.if517, %pred.store.continue516
  %i.ng = extractelement <16 x i1> %i.na, i64 2
  br i1 %i.ng, label %pred.store.if519, label %pred.store.continue520

pred.store.if519:                                 ; preds = %pred.store.continue518
  %i.nh = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 2
  store i8 45, ptr %i.ni, align 1, !tbaa !43
  br label %pred.store.continue520

pred.store.continue520:                           ; preds = %pred.store.if519, %pred.store.continue518
  %i.nj = extractelement <16 x i1> %i.na, i64 3
  br i1 %i.nj, label %pred.store.if521, label %pred.store.continue522

pred.store.if521:                                 ; preds = %pred.store.continue520
  %i.nk = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 3
  store i8 45, ptr %i.nl, align 1, !tbaa !43
  br label %pred.store.continue522

pred.store.continue522:                           ; preds = %pred.store.if521, %pred.store.continue520
  %i.nm = extractelement <16 x i1> %i.na, i64 4
  br i1 %i.nm, label %pred.store.if523, label %pred.store.continue524

pred.store.if523:                                 ; preds = %pred.store.continue522
  %i.nn = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  store i8 45, ptr %i.no, align 1, !tbaa !43
  br label %pred.store.continue524

pred.store.continue524:                           ; preds = %pred.store.if523, %pred.store.continue522
  %i.np = extractelement <16 x i1> %i.na, i64 5
  br i1 %i.np, label %pred.store.if525, label %pred.store.continue526

pred.store.if525:                                 ; preds = %pred.store.continue524
  %i.nq = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 5
  store i8 45, ptr %i.nr, align 1, !tbaa !43
  br label %pred.store.continue526

pred.store.continue526:                           ; preds = %pred.store.if525, %pred.store.continue524
  %i.ns = extractelement <16 x i1> %i.na, i64 6
  br i1 %i.ns, label %pred.store.if527, label %pred.store.continue528

pred.store.if527:                                 ; preds = %pred.store.continue526
  %i.nt = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 6
  store i8 45, ptr %i.nu, align 1, !tbaa !43
  br label %pred.store.continue528

pred.store.continue528:                           ; preds = %pred.store.if527, %pred.store.continue526
  %i.nv = extractelement <16 x i1> %i.na, i64 7
  br i1 %i.nv, label %pred.store.if529, label %pred.store.continue530

pred.store.if529:                                 ; preds = %pred.store.continue528
  %i.nw = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 7
  store i8 45, ptr %i.nx, align 1, !tbaa !43
  br label %pred.store.continue530

pred.store.continue530:                           ; preds = %pred.store.if529, %pred.store.continue528
  %i.ny = extractelement <16 x i1> %i.na, i64 8
  br i1 %i.ny, label %pred.store.if531, label %pred.store.continue532

pred.store.if531:                                 ; preds = %pred.store.continue530
  %i.nz = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  store i8 45, ptr %i.oa, align 1, !tbaa !43
  br label %pred.store.continue532

pred.store.continue532:                           ; preds = %pred.store.if531, %pred.store.continue530
  %i.ob = extractelement <16 x i1> %i.na, i64 9
  br i1 %i.ob, label %pred.store.if533, label %pred.store.continue534

pred.store.if533:                                 ; preds = %pred.store.continue532
  %i.oc = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 9
  store i8 45, ptr %i.od, align 1, !tbaa !43
  br label %pred.store.continue534

pred.store.continue534:                           ; preds = %pred.store.if533, %pred.store.continue532
  %i.oe = extractelement <16 x i1> %i.na, i64 10
  br i1 %i.oe, label %pred.store.if535, label %pred.store.continue536

pred.store.if535:                                 ; preds = %pred.store.continue534
  %i.of = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 10
  store i8 45, ptr %i.og, align 1, !tbaa !43
  br label %pred.store.continue536

pred.store.continue536:                           ; preds = %pred.store.if535, %pred.store.continue534
  %i.oh = extractelement <16 x i1> %i.na, i64 11
  br i1 %i.oh, label %pred.store.if537, label %pred.store.continue538

pred.store.if537:                                 ; preds = %pred.store.continue536
  %i.oi = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 11
  store i8 45, ptr %i.oj, align 1, !tbaa !43
  br label %pred.store.continue538

pred.store.continue538:                           ; preds = %pred.store.if537, %pred.store.continue536
  %i.ok = extractelement <16 x i1> %i.na, i64 12
  br i1 %i.ok, label %pred.store.if539, label %pred.store.continue540

pred.store.if539:                                 ; preds = %pred.store.continue538
  %i.ol = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 12
  store i8 45, ptr %i.om, align 1, !tbaa !43
  br label %pred.store.continue540

pred.store.continue540:                           ; preds = %pred.store.if539, %pred.store.continue538
  %i.on = extractelement <16 x i1> %i.na, i64 13
  br i1 %i.on, label %pred.store.if541, label %pred.store.continue542

pred.store.if541:                                 ; preds = %pred.store.continue540
  %i.oo = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 13
  store i8 45, ptr %i.op, align 1, !tbaa !43
  br label %pred.store.continue542

pred.store.continue542:                           ; preds = %pred.store.if541, %pred.store.continue540
  %i.oq = extractelement <16 x i1> %i.na, i64 14
  br i1 %i.oq, label %pred.store.if543, label %pred.store.continue544

pred.store.if543:                                 ; preds = %pred.store.continue542
  %i.or = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 14
  store i8 45, ptr %i.os, align 1, !tbaa !43
  br label %pred.store.continue544

pred.store.continue544:                           ; preds = %pred.store.if543, %pred.store.continue542
  %i.ot = extractelement <16 x i1> %i.na, i64 15
  br i1 %i.ot, label %pred.store.if545, label %pred.store.continue546

pred.store.if545:                                 ; preds = %pred.store.continue544
  %i.ou = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 15
  store i8 45, ptr %i.ov, align 1, !tbaa !43
  br label %pred.store.continue546

pred.store.continue546:                           ; preds = %pred.store.if545, %pred.store.continue544
  %i.ow = extractelement <16 x i1> %i.nb, i64 0
  br i1 %i.ow, label %pred.store.if547, label %pred.store.continue548

pred.store.if547:                                 ; preds = %pred.store.continue546
  %i.ox = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  store i8 45, ptr %i.oy, align 1, !tbaa !43
  br label %pred.store.continue548

pred.store.continue548:                           ; preds = %pred.store.if547, %pred.store.continue546
  %i.oz = extractelement <16 x i1> %i.nb, i64 1
  br i1 %i.oz, label %pred.store.if549, label %pred.store.continue550

pred.store.if549:                                 ; preds = %pred.store.continue548
  %i.pa = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 17
  store i8 45, ptr %i.pb, align 1, !tbaa !43
  br label %pred.store.continue550

pred.store.continue550:                           ; preds = %pred.store.if549, %pred.store.continue548
  %i.pc = extractelement <16 x i1> %i.nb, i64 2
  br i1 %i.pc, label %pred.store.if551, label %pred.store.continue552

pred.store.if551:                                 ; preds = %pred.store.continue550
  %i.pd = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 18
  store i8 45, ptr %i.pe, align 1, !tbaa !43
  br label %pred.store.continue552

pred.store.continue552:                           ; preds = %pred.store.if551, %pred.store.continue550
  %i.pf = extractelement <16 x i1> %i.nb, i64 3
  br i1 %i.pf, label %pred.store.if553, label %pred.store.continue554

pred.store.if553:                                 ; preds = %pred.store.continue552
  %i.pg = getelementptr inbounds nuw i8, ptr %.1.3.i, i64 %index512
end_hunk_1
