Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/spng?download=true
inline.NumInlined: 350
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@spng_decode_scanline:bb.a
  %i.su = trunc nuw i64 %indvars.iv.i.epil.init to i32
  %i.sv = shl i32 %i.su, 2                        ; 2 uses
  %i.sw = zext i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw i8, ptr %1, i64 %i.sw
  %i.sy = mul nuw nsw i64 %indvars.iv.i.epil.init, 3
  %i.sz = and i64 %i.sy, 4294967295
  %i.ta = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.sz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.sx, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ta, i64 3, i1 false)
  %i.tb = or disjoint i32 %i.sv, 3
  %i.tc = zext i32 %i.tb to i64
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 %i.tc
  store i8 -1, ptr %i.td, align 1, !tbaa !51
  br label %rgb8_row_to_rgba8.exit

rgb8_row_to_rgba8.exit.loopexit768.unr-lcssa:     ; preds = %.lr.ph42.i
  %lcmp.mod784.not = icmp eq i64 %xtraiter783, 0
  br i1 %lcmp.mod784.not, label %rgb8_row_to_rgba8.exit, label %.lr.ph42.i.epil.preheader

.lr.ph42.i.epil.preheader:                        ; preds = %rgb8_row_to_rgba8.exit.loopexit768.unr-lcssa, %.lr.ph42.i.preheader
  %indvars.iv46.i.epil.init = phi i64 [ 0, %.lr.ph42.i.preheader ], [ %indvars.iv.next47.i.1, %rgb8_row_to_rgba8.exit.loopexit768.unr-lcssa ] ; 2 uses
  %lcmp.mod785 = trunc i32 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod785)
  %i.te = shl nuw nsw i64 %indvars.iv46.i.epil.init, 2
  %i.tf = and i64 %i.te, 4294967292
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 %i.tf ; 4 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.jy, i64 %indvars.iv46.i.epil.init
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !51
  %i.tj = zext i8 %i.ti to i64
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.tj ; 4 uses
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !81
  store i8 %i.tl, ptr %i.tg, align 1, !tbaa !51
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 1
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !82
  %i.to = getelementptr inbounds nuw i8, ptr %i.tg, i64 1
  store i8 %i.tn, ptr %i.to, align 1, !tbaa !51
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tk, i64 2
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !83
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tg, i64 2
  store i8 %i.tq, ptr %i.tr, align 1, !tbaa !51
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tk, i64 3
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !84
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tg, i64 3
  store i8 %i.tt, ptr %i.tu, align 1, !tbaa !51
  br label %rgb8_row_to_rgba8.exit

rgb8_row_to_rgba8.exit.loopexit769.unr-lcssa:     ; preds = %.lr.ph.i309
  %lcmp.mod781.not = icmp eq i64 %xtraiter780, 0
  br i1 %lcmp.mod781.not, label %rgb8_row_to_rgba8.exit, label %.lr.ph.i309.epil.preheader

.lr.ph.i309.epil.preheader:                       ; preds = %rgb8_row_to_rgba8.exit.loopexit769.unr-lcssa, %.lr.ph.i309.preheader
  %indvars.iv.i310.epil.init = phi i64 [ 0, %.lr.ph.i309.preheader ], [ %indvars.iv.next.i311.1, %rgb8_row_to_rgba8.exit.loopexit769.unr-lcssa ] ; 2 uses
  %lcmp.mod782 = trunc i32 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod782)
  %i.tv = mul nuw nsw i64 %indvars.iv.i310.epil.init, 3
  %i.tw = and i64 %i.tv, 4294967295
  %i.tx = getelementptr inbounds nuw i8, ptr %1, i64 %i.tw ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.jy, i64 %indvars.iv.i310.epil.init
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !51
  %i.ua = zext i8 %i.tz to i64
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ua ; 3 uses
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !81
  store i8 %i.uc, ptr %i.tx, align 1, !tbaa !51
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 1
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !82
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tx, i64 1
  store i8 %i.ue, ptr %i.uf, align 1, !tbaa !51
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ub, i64 2
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !83
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tx, i64 2
  store i8 %i.uh, ptr %i.ui, align 1, !tbaa !51
  br label %rgb8_row_to_rgba8.exit

rgb8_row_to_rgba8.exit:                           ; preds = %expand_row.exit, %.lr.ph.i309.epil.preheader, %rgb8_row_to_rgba8.exit.loopexit769.unr-lcssa, %.lr.ph42.i.epil.preheader, %rgb8_row_to_rgba8.exit.loopexit768.unr-lcssa, %.lr.ph.i.epil.preheader, %rgb8_row_to_rgba8.exit.loopexit.unr-lcssa, %read_scanline.exit.thread356.rgb8_row_to_rgba8.exit_crit_edge, %bb.aw, %bb.an, %bb.ap, %bb.ao
  %.pre-phi = phi i16 [ %.pre503, %read_scanline.exit.thread356.rgb8_row_to_rgba8.exit_crit_edge ], [ %i.kb, %.lr.ph.i309.epil.preheader ], [ %i.kb, %.lr.ph42.i.epil.preheader ], [ %i.kb, %.lr.ph.i.epil.preheader ], [ %i.kb, %bb.ao ], [ %i.kb, %bb.aw ], [ %i.kb, %bb.an ], [ %i.kb, %bb.ap ], [ %i.kb, %rgb8_row_to_rgba8.exit.loopexit.unr-lcssa ], [ %i.kb, %rgb8_row_to_rgba8.exit.loopexit768.unr-lcssa ], [ %i.kb, %rgb8_row_to_rgba8.exit.loopexit769.unr-lcssa ], [ %i.kb, %expand_row.exit ]
  %.not301 = icmp eq i16 %.pre-phi, 0
  br i1 %.not301, label %rgb8_row_to_rgba8.exit.trns_row.exit_crit_edge, label %bb.bw

rgb8_row_to_rgba8.exit.trns_row.exit_crit_edge:   ; preds = %rgb8_row_to_rgba8.exit
  %.pre504 = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.z)
  %i.uj = icmp eq i32 %.pre504, 1
  br label %trns_row.exit

bb.bw:                                            ; preds = %rgb8_row_to_rgba8.exit
  %i.uk = load i32, ptr %i.fa, align 8, !tbaa !77 ; 4 uses
  %i.ul = load i8, ptr %i.o, align 4, !tbaa !53   ; 3 uses
  %i.um = zext i8 %i.ul to i32                    ; 8 uses
  %i.un = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.z)
  %i.uo = icmp eq i32 %i.un, 1
  br i1 %i.uo, label %.split.i, label %scale_row.exit

.split.i:                                         ; preds = %bb.bw
  %i.up = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.z, i1 true)
  switch i32 %i.up, label %trns_row.exit [
    i32 0, label %bb.bx
    i32 1, label %bb.cb
    i32 4, label %bb.cf
    i32 5, label %bb.cn
  ]

bb.bx:                                            ; preds = %.split.i
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 381
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !79
  %i.us = icmp ne i8 %i.ur, 0
  %or.cond.i = and i1 %.not443, %i.us
  br i1 %or.cond.i, label %.lr.ph129.i, label %trns_row.exit

.lr.ph129.i:                                      ; preds = %bb.bx
  %i.ut = zext i32 %i.uk to i64                   ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.ca, %.lr.ph129.i
  %.0128.i = phi i32 [ 0, %.lr.ph129.i ], [ %i.uv, %bb.ca ]
  %.069127.i = phi ptr [ %1, %.lr.ph129.i ], [ %i.ux, %bb.ca ] ; 2 uses
  %.075126.i = phi ptr [ %i.jy, %.lr.ph129.i ], [ %i.uw, %bb.ca ] ; 2 uses
  %bcmp86.i = tail call i32 @bcmp(ptr %.075126.i, ptr nonnull readonly %i.l, i64 %i.ut)
  %.not87.i = icmp eq i32 %bcmp86.i, 0
  br i1 %.not87.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.uu = getelementptr inbounds nuw i8, ptr %.069127.i, i64 3
  store i8 0, ptr %i.uu, align 1, !tbaa !51
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.uv = add nuw i32 %.0128.i, 1                 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.075126.i, i64 %i.ut
  %i.ux = getelementptr inbounds nuw i8, ptr %.069127.i, i64 4
  %exitcond144.not.i = icmp eq i32 %i.uv, %i.ae
  br i1 %exitcond144.not.i, label %trns_row.exit, label %bb.by, !llvm.loop !257

bb.cb:                                            ; preds = %.split.i
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 381
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !79
  %i.va = icmp ne i8 %i.uz, 0
  %or.cond130.i = and i1 %.not443, %i.va
  br i1 %or.cond130.i, label %.lr.ph125.i, label %trns_row.exit

.lr.ph125.i:                                      ; preds = %bb.cb
  %i.vb = zext i32 %i.uk to i64                   ; 2 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ce, %.lr.ph125.i
  %.1124.i = phi i32 [ 0, %.lr.ph125.i ], [ %i.vd, %bb.ce ]
  %.170123.i = phi ptr [ %1, %.lr.ph125.i ], [ %i.vf, %bb.ce ] ; 2 uses
  %.176122.i = phi ptr [ %i.jy, %.lr.ph125.i ], [ %i.ve, %bb.ce ] ; 2 uses
  %bcmp84.i = tail call i32 @bcmp(ptr %.176122.i, ptr nonnull readonly %i.l, i64 %i.vb)
  %.not85.i = icmp eq i32 %bcmp84.i, 0
  br i1 %.not85.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.vc = getelementptr inbounds nuw i8, ptr %.170123.i, i64 6
  store i16 0, ptr %i.vc, align 1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.vd = add nuw i32 %.1124.i, 1                 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %.176122.i, i64 %i.vb
  %i.vf = getelementptr inbounds nuw i8, ptr %.170123.i, i64 8
  %exitcond143.not.i = icmp eq i32 %i.vd, %i.ae
  br i1 %exitcond143.not.i, label %trns_row.exit, label %bb.cc, !llvm.loop !258

bb.cf:                                            ; preds = %.split.i
  %i.vg = icmp eq i8 %i.ul, 16
  br i1 %i.vg, label %.preheader101.i, label %bb.cj

.preheader101.i:                                  ; preds = %bb.cf
  br i1 %.not443, label %.lr.ph121.i, label %trns_row.exit

.lr.ph121.i:                                      ; preds = %.preheader101.i
  %i.vh = zext i32 %i.uk to i64                   ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ci, %.lr.ph121.i
  %.2120.i = phi i32 [ 0, %.lr.ph121.i ], [ %i.vj, %bb.ci ]
  %.271119.i = phi ptr [ %1, %.lr.ph121.i ], [ %i.vl, %bb.ci ] ; 2 uses
  %.277118.i = phi ptr [ %i.jy, %.lr.ph121.i ], [ %i.vk, %bb.ci ] ; 2 uses
  %bcmp82.i = tail call i32 @bcmp(ptr %.277118.i, ptr nonnull readonly %i.l, i64 %i.vh)
  %.not83.i = icmp eq i32 %bcmp82.i, 0
  br i1 %.not83.i, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.vi = getelementptr inbounds nuw i8, ptr %.271119.i, i64 1
  store i8 0, ptr %i.vi, align 1
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.vj = add nuw i32 %.2120.i, 1                 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.277118.i, i64 %i.vh
  %i.vl = getelementptr inbounds nuw i8, ptr %.271119.i, i64 2
  %exitcond142.not.i = icmp eq i32 %i.vj, %i.ae
  br i1 %exitcond142.not.i, label %trns_row.exit, label %bb.cg, !llvm.loop !259

bb.cj:                                            ; preds = %bb.cf
  %notmask.i.i = shl nsw i32 -1, %i.um
  %i.vm = trunc i32 %notmask.i.i to i8
  %i.vn = xor i8 %i.vm, -1                        ; 3 uses
  %i.vo = sub nsw i32 8, %i.um                    ; 4 uses
  br i1 %.not443, label %get_sample.exit.i.preheader, label %trns_row.exit

get_sample.exit.i.preheader:                      ; preds = %bb.cj
  %xtraiter798 = and i32 %i.ae, 1
  %i.vp = icmp eq i32 %i.ae, 1
  br i1 %i.vp, label %get_sample.exit.i.epil.preheader, label %get_sample.exit.i.preheader.new

get_sample.exit.i.preheader.new:                  ; preds = %get_sample.exit.i.preheader
  %unroll_iter801 = and i32 %i.ae, -2
  br label %get_sample.exit.i

get_sample.exit.i:                                ; preds = %bb.cm, %get_sample.exit.i.preheader.new
  %.372116.i = phi ptr [ %1, %get_sample.exit.i.preheader.new ], [ %i.wi, %bb.cm ] ; 3 uses
  %.sroa.592.0115.i = phi i32 [ %i.vo, %get_sample.exit.i.preheader.new ], [ %spec.select96.i.1, %bb.cm ] ; 2 uses
  %.sroa.1395.0114.i = phi ptr [ %i.jy, %get_sample.exit.i.preheader.new ], [ %spec.select.i.1, %bb.cm ] ; 2 uses
  %niter802 = phi i32 [ 0, %get_sample.exit.i.preheader.new ], [ %niter802.next.1, %bb.cm ]
  %3 = load i8, ptr %i.l, align 8, !tbaa !51
  %i.vq = load i8, ptr %.sroa.1395.0114.i, align 1, !tbaa !51
  %i.vr = sub i32 %.sroa.592.0115.i, %i.um        ; 2 uses
  %i.vs = icmp ugt i32 %i.vr, 7                   ; 2 uses
  %spec.select.idx.i = zext i1 %i.vs to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.sroa.1395.0114.i, i64 %spec.select.idx.i ; 2 uses
  %spec.select96.i = select i1 %i.vs, i32 %i.vo, i32 %i.vr ; 2 uses
  %i.vt = zext i8 %i.vq to i32
  %i.vu = lshr i32 %i.vt, %.sroa.592.0115.i
  %i.vv = trunc nuw i32 %i.vu to i8
  %i.vw = and i8 %i.vv, %i.vn
  %i.vx = icmp eq i8 %3, %i.vw
  br i1 %i.vx, label %bb.ck, label %get_sample.exit.i.1

bb.ck:                                            ; preds = %get_sample.exit.i
  %i.vy = getelementptr inbounds nuw i8, ptr %.372116.i, i64 1
  store i8 0, ptr %i.vy, align 1, !tbaa !51
  br label %get_sample.exit.i.1

get_sample.exit.i.1:                              ; preds = %bb.ck, %get_sample.exit.i
  %4 = load i8, ptr %i.l, align 8, !tbaa !51
  %i.vz = load i8, ptr %spec.select.i, align 1, !tbaa !51
  %i.wa = sub i32 %spec.select96.i, %i.um         ; 2 uses
  %i.wb = icmp ugt i32 %i.wa, 7                   ; 2 uses
  %spec.select.idx.i.1 = zext i1 %i.wb to i64
  %spec.select.i.1 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %spec.select.idx.i.1 ; 2 uses
  %spec.select96.i.1 = select i1 %i.wb, i32 %i.vo, i32 %i.wa ; 2 uses
  %i.wc = zext i8 %i.vz to i32
  %i.wd = lshr i32 %i.wc, %spec.select96.i
  %i.we = trunc nuw i32 %i.wd to i8
  %i.wf = and i8 %i.we, %i.vn
  %i.wg = icmp eq i8 %4, %i.wf
  br i1 %i.wg, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %get_sample.exit.i.1
  %i.wh = getelementptr inbounds nuw i8, ptr %.372116.i, i64 3
  store i8 0, ptr %i.wh, align 1, !tbaa !51
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %get_sample.exit.i.1
  %i.wi = getelementptr inbounds nuw i8, ptr %.372116.i, i64 4 ; 2 uses
  %niter802.next.1 = add nuw i32 %niter802, 2     ; 2 uses
  %niter802.ncmp.1 = icmp eq i32 %niter802.next.1, %unroll_iter801
  br i1 %niter802.ncmp.1, label %trns_row.exit.loopexit765.unr-lcssa, label %get_sample.exit.i, !llvm.loop !260

bb.cn:                                            ; preds = %.split.i
  %i.wj = icmp eq i8 %i.ul, 16
  br i1 %i.wj, label %.preheader104.i, label %bb.cr

.preheader104.i:                                  ; preds = %bb.cn
  br i1 %.not443, label %.lr.ph.i317, label %trns_row.exit

.lr.ph.i317:                                      ; preds = %.preheader104.i
  %i.wk = zext i32 %i.uk to i64
  br label %bb.co

bb.co:                                            ; preds = %bb.cq, %.lr.ph.i317
  %.4113.i = phi i32 [ 0, %.lr.ph.i317 ], [ %i.wq, %bb.cq ]
  %.473112.i = phi ptr [ %1, %.lr.ph.i317 ], [ %i.ws, %bb.cq ] ; 2 uses
  %.378111.i = phi ptr [ %i.jy, %.lr.ph.i317 ], [ %i.wr, %bb.cq ] ; 2 uses
  %i.wl = load i16, ptr %.378111.i, align 1
  %i.wm = load i16, ptr %i.l, align 1
  %i.wn = icmp ne i16 %i.wl, %i.wm
  %i.wo = zext i1 %i.wn to i32
  %.not.i318 = icmp eq i32 %i.wo, 0
  br i1 %.not.i318, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.wp = getelementptr inbounds nuw i8, ptr %.473112.i, i64 2
  store i16 0, ptr %i.wp, align 1
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.wq = add nuw i32 %.4113.i, 1                 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.378111.i, i64 %i.wk
  %i.ws = getelementptr inbounds nuw i8, ptr %.473112.i, i64 4
  %exitcond140.not.i = icmp eq i32 %i.wq, %i.ae
  br i1 %exitcond140.not.i, label %trns_row.exit, label %bb.co, !llvm.loop !261

bb.cr:                                            ; preds = %bb.cn
  %notmask.i88.i = shl nsw i32 -1, %i.um
  %i.wt = trunc i32 %notmask.i88.i to i8
  %i.wu = xor i8 %i.wt, -1                        ; 3 uses
  %i.wv = sub nsw i32 8, %i.um                    ; 4 uses
  br i1 %.not443, label %get_sample.exit89.i.preheader, label %trns_row.exit

get_sample.exit89.i.preheader:                    ; preds = %bb.cr
  %xtraiter793 = and i32 %i.ae, 1
  %i.ww = icmp eq i32 %i.ae, 1
  br i1 %i.ww, label %get_sample.exit89.i.epil.preheader, label %get_sample.exit89.i.preheader.new

get_sample.exit89.i.preheader.new:                ; preds = %get_sample.exit89.i.preheader
  %unroll_iter796 = and i32 %i.ae, -2
  br label %get_sample.exit89.i

get_sample.exit89.i:                              ; preds = %bb.cu, %get_sample.exit89.i.preheader.new
  %.574109.i = phi ptr [ %1, %get_sample.exit89.i.preheader.new ], [ %i.xp, %bb.cu ] ; 3 uses
  %.sroa.5.0108.i = phi i32 [ %i.wv, %get_sample.exit89.i.preheader.new ], [ %spec.select98.i.1, %bb.cu ] ; 2 uses
  %.sroa.13.0107.i = phi ptr [ %i.jy, %get_sample.exit89.i.preheader.new ], [ %spec.select97.i.1, %bb.cu ] ; 2 uses
  %niter797 = phi i32 [ 0, %get_sample.exit89.i.preheader.new ], [ %niter797.next.1, %bb.cu ]
  %5 = load i8, ptr %i.l, align 8, !tbaa !51
  %i.wx = load i8, ptr %.sroa.13.0107.i, align 1, !tbaa !51
  %i.wy = sub i32 %.sroa.5.0108.i, %i.um          ; 2 uses
  %i.wz = icmp ugt i32 %i.wy, 7                   ; 2 uses
  %spec.select97.idx.i = zext i1 %i.wz to i64
  %spec.select97.i = getelementptr inbounds nuw i8, ptr %.sroa.13.0107.i, i64 %spec.select97.idx.i ; 2 uses
  %spec.select98.i = select i1 %i.wz, i32 %i.wv, i32 %i.wy ; 2 uses
  %i.xa = zext i8 %i.wx to i32
  %i.xb = lshr i32 %i.xa, %.sroa.5.0108.i
  %i.xc = trunc nuw i32 %i.xb to i8
  %i.xd = and i8 %i.xc, %i.wu
  %i.xe = icmp eq i8 %5, %i.xd
  br i1 %i.xe, label %bb.cs, label %get_sample.exit89.i.1

bb.cs:                                            ; preds = %get_sample.exit89.i
  %i.xf = getelementptr inbounds nuw i8, ptr %.574109.i, i64 2
  store i16 0, ptr %i.xf, align 1
  br label %get_sample.exit89.i.1

get_sample.exit89.i.1:                            ; preds = %bb.cs, %get_sample.exit89.i
  %6 = load i8, ptr %i.l, align 8, !tbaa !51
  %i.xg = load i8, ptr %spec.select97.i, align 1, !tbaa !51
  %i.xh = sub i32 %spec.select98.i, %i.um         ; 2 uses
  %i.xi = icmp ugt i32 %i.xh, 7                   ; 2 uses
  %spec.select97.idx.i.1 = zext i1 %i.xi to i64
  %spec.select97.i.1 = getelementptr inbounds nuw i8, ptr %spec.select97.i, i64 %spec.select97.idx.i.1 ; 2 uses
  %spec.select98.i.1 = select i1 %i.xi, i32 %i.wv, i32 %i.xh ; 2 uses
  %i.xj = zext i8 %i.xg to i32
  %i.xk = lshr i32 %i.xj, %spec.select98.i
  %i.xl = trunc nuw i32 %i.xk to i8
  %i.xm = and i8 %i.xl, %i.wu
  %i.xn = icmp eq i8 %6, %i.xm
  br i1 %i.xn, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %get_sample.exit89.i.1
  %i.xo = getelementptr inbounds nuw i8, ptr %.574109.i, i64 6
  store i16 0, ptr %i.xo, align 1
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %get_sample.exit89.i.1
  %i.xp = getelementptr inbounds nuw i8, ptr %.574109.i, i64 8 ; 2 uses
  %niter797.next.1 = add nuw i32 %niter797, 2     ; 2 uses
  %niter797.ncmp.1 = icmp eq i32 %niter797.next.1, %unroll_iter796
  br i1 %niter797.ncmp.1, label %trns_row.exit.loopexit767.unr-lcssa, label %get_sample.exit89.i, !llvm.loop !262

trns_row.exit.loopexit765.unr-lcssa:              ; preds = %bb.cm
  %lcmp.mod799.not = icmp eq i32 %xtraiter798, 0
  br i1 %lcmp.mod799.not, label %trns_row.exit, label %get_sample.exit.i.epil.preheader

get_sample.exit.i.epil.preheader:                 ; preds = %trns_row.exit.loopexit765.unr-lcssa, %get_sample.exit.i.preheader
  %.372116.i.epil.init = phi ptr [ %1, %get_sample.exit.i.preheader ], [ %i.wi, %trns_row.exit.loopexit765.unr-lcssa ]
  %.sroa.592.0115.i.epil.init = phi i32 [ %i.vo, %get_sample.exit.i.preheader ], [ %spec.select96.i.1, %trns_row.exit.loopexit765.unr-lcssa ]
  %.sroa.1395.0114.i.epil.init = phi ptr [ %i.jy, %get_sample.exit.i.preheader ], [ %spec.select.i.1, %trns_row.exit.loopexit765.unr-lcssa ]
  %lcmp.mod800 = trunc i32 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod800)
  %7 = load i8, ptr %i.l, align 8, !tbaa !51
  %i.xq = load i8, ptr %.sroa.1395.0114.i.epil.init, align 1, !tbaa !51
  %i.xr = zext i8 %i.xq to i32
  %i.xs = lshr i32 %i.xr, %.sroa.592.0115.i.epil.init
  %i.xt = trunc nuw i32 %i.xs to i8
  %i.xu = and i8 %i.xt, %i.vn
  %i.xv = icmp eq i8 %7, %i.xu
  br i1 %i.xv, label %bb.cv, label %trns_row.exit

bb.cv:                                            ; preds = %get_sample.exit.i.epil.preheader
  %i.xw = getelementptr inbounds nuw i8, ptr %.372116.i.epil.init, i64 1
  store i8 0, ptr %i.xw, align 1, !tbaa !51
  br label %trns_row.exit

trns_row.exit.loopexit767.unr-lcssa:              ; preds = %bb.cu
  %lcmp.mod794.not = icmp eq i32 %xtraiter793, 0
  br i1 %lcmp.mod794.not, label %trns_row.exit, label %get_sample.exit89.i.epil.preheader

get_sample.exit89.i.epil.preheader:               ; preds = %trns_row.exit.loopexit767.unr-lcssa, %get_sample.exit89.i.preheader
  %.574109.i.epil.init = phi ptr [ %1, %get_sample.exit89.i.preheader ], [ %i.xp, %trns_row.exit.loopexit767.unr-lcssa ]
  %.sroa.5.0108.i.epil.init = phi i32 [ %i.wv, %get_sample.exit89.i.preheader ], [ %spec.select98.i.1, %trns_row.exit.loopexit767.unr-lcssa ]
  %.sroa.13.0107.i.epil.init = phi ptr [ %i.jy, %get_sample.exit89.i.preheader ], [ %spec.select97.i.1, %trns_row.exit.loopexit767.unr-lcssa ]
  %lcmp.mod795 = trunc i32 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod795)
  %8 = load i8, ptr %i.l, align 8, !tbaa !51
  %i.xx = load i8, ptr %.sroa.13.0107.i.epil.init, align 1, !tbaa !51
  %i.xy = zext i8 %i.xx to i32
  %i.xz = lshr i32 %i.xy, %.sroa.5.0108.i.epil.init
  %i.ya = trunc nuw i32 %i.xz to i8
  %i.yb = and i8 %i.ya, %i.wu
  %i.yc = icmp eq i8 %8, %i.yb
  br i1 %i.yc, label %bb.cw, label %trns_row.exit

bb.cw:                                            ; preds = %get_sample.exit89.i.epil.preheader
  %i.yd = getelementptr inbounds nuw i8, ptr %.574109.i.epil.init, i64 2
  store i16 0, ptr %i.yd, align 1
  br label %trns_row.exit

trns_row.exit:                                    ; preds = %trns_row.exit.loopexit767.unr-lcssa, %bb.cw, %get_sample.exit89.i.epil.preheader, %bb.cq, %trns_row.exit.loopexit765.unr-lcssa, %bb.cv, %get_sample.exit.i.epil.preheader, %bb.ci, %bb.ce, %bb.ca, %rgb8_row_to_rgba8.exit.trns_row.exit_crit_edge, %bb.cr, %.preheader104.i, %bb.cj, %.preheader101.i, %bb.cb, %bb.bx, %.split.i
  %.pre-phi505 = phi i1 [ %i.uj, %rgb8_row_to_rgba8.exit.trns_row.exit_crit_edge ], [ true, %trns_row.exit.loopexit765.unr-lcssa ], [ true, %bb.ci ], [ true, %bb.ce ], [ true, %bb.ca ], [ true, %.split.i ], [ true, %bb.cq ], [ true, %bb.cr ], [ true, %.preheader104.i ], [ true, %bb.cj ], [ true, %.preheader101.i ], [ true, %bb.cb ], [ true, %bb.bx ], [ true, %get_sample.exit.i.epil.preheader ], [ true, %bb.cv ], [ true, %get_sample.exit89.i.epil.preheader ], [ true, %bb.cw ], [ true, %trns_row.exit.loopexit767.unr-lcssa ]
  %i.ye = and i16 %.sroa.0.0.copyload, 16
  %.not302 = icmp ne i16 %i.ye, 0
  %or.cond372 = select i1 %.not302, i1 %.pre-phi505, i1 false
  br i1 %or.cond372, label %.split.i320, label %scale_row.exit

.split.i320:                                      ; preds = %trns_row.exit
  %i.yf = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.z, i1 true)
  switch i32 %i.yf, label %scale_row.exit [
    i32 0, label %.preheader.i327
    i32 1, label %.preheader244.i
    i32 2, label %.preheader246.i
    i32 6, label %.preheader248.i
    i32 4, label %.preheader250.i
  ]

.preheader250.i:                                  ; preds = %.split.i320
  br i1 %.not443, label %.lr.ph.i322, label %scale_row.exit

.lr.ph.i322:                                      ; preds = %.preheader250.i
  %i.yg = icmp eq i32 %spec.store.select, 8
  %wide.trip.count.i323 = zext i32 %i.ae to i64
  br label %bb.fj

.preheader248.i:                                  ; preds = %.split.i320
  br i1 %.not443, label %.lr.ph292.i, label %scale_row.exit

.lr.ph292.i:                                      ; preds = %.preheader248.i
  %i.yh = icmp eq i32 %spec.store.select, 8
  %wide.trip.count349.i = zext i32 %i.ae to i64
  br label %bb.fd

.preheader246.i:                                  ; preds = %.split.i320
  br i1 %.not443, label %.lr.ph294.i, label %scale_row.exit

.lr.ph294.i:                                      ; preds = %.preheader246.i
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 4377
  %i.yj = icmp eq i32 %spec.store.select, 8       ; 3 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 4378 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 4379
  %wide.trip.count354.i = zext i32 %i.ae to i64
  br label %bb.en

.preheader244.i:                                  ; preds = %.split.i320
  br i1 %.not443, label %.lr.ph296.i, label %scale_row.exit

.lr.ph296.i:                                      ; preds = %.preheader244.i
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 4377
  %i.yn = icmp eq i32 %spec.store.select, 16      ; 4 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 4378 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 4379
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 4380 ; 2 uses
  %wide.trip.count359.i = zext i32 %i.ae to i64
  br label %bb.ds

.preheader.i327:                                  ; preds = %.split.i320
  br i1 %.not443, label %.lr.ph298.i, label %scale_row.exit

.lr.ph298.i:                                      ; preds = %.preheader.i327
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 4377
  %i.ys = icmp eq i32 %spec.store.select, 8       ; 4 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 4378 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 4379
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 4380 ; 2 uses
  %wide.trip.count364.i = zext i32 %i.ae to i64
  br label %bb.cx

bb.cx:                                            ; preds = %sample_to_target.exit125.i, %.lr.ph298.i
  %indvars.iv361.i = phi i64 [ 0, %.lr.ph298.i ], [ %indvars.iv.next362.i, %sample_to_target.exit125.i ] ; 2 uses
  %i.yw = shl nuw nsw i64 %indvars.iv361.i, 2
  %i.yx = and i64 %i.yw, 4294967292
  %i.yy = getelementptr inbounds nuw i8, ptr %1, i64 %i.yx ; 5 uses
  %.sroa.017.0.copyload.i = load i8, ptr %i.yy, align 1 ; 4 uses
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yy, i64 1 ; 2 uses
  %.sroa.619.0.copyload.i = load i8, ptr %.sroa.619.0..sroa_idx.i, align 1 ; 4 uses
  %.sroa.822.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yy, i64 2 ; 2 uses
  %.sroa.822.0.copyload.i = load i8, ptr %.sroa.822.0..sroa_idx.i, align 1 ; 4 uses
  %.sroa.1025.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yy, i64 3 ; 2 uses
  %.sroa.1025.0.copyload.i = load i8, ptr %.sroa.1025.0..sroa_idx.i, align 1 ; 4 uses
  %i.yz = load i8, ptr %i.yr, align 1, !tbaa !86  ; 2 uses
  %i.za = zext i8 %i.yz to i32                    ; 5 uses
  %i.zb = icmp eq i32 %spec.store.select, %i.za
  br i1 %i.zb, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.zc = zext i8 %.sroa.017.0.copyload.i to i16
  br i1 %i.ys, label %sample_to_target.exit.thread.i, label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.zd = zext i8 %.sroa.017.0.copyload.i to i32
  %i.ze = sub nsw i32 %spec.store.select, %i.za
  %i.zf = lshr i32 %i.zd, %i.ze
  %i.zg = trunc nuw nsw i32 %i.zf to i16
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.031.i.i = phi i16 [ %i.zc, %bb.cy ], [ %i.zg, %bb.cz ] ; 2 uses
  %i.zh = icmp ugt i8 %i.yz, 8
  br i1 %i.zh, label %bb.db, label %.lr.ph.i.i328

.lr.ph.i.i328:                                    ; preds = %bb.da
  %.0.in40.i.i = sub nuw nsw i32 8, %i.za
  %i.zi = zext nneg i16 %.031.i.i to i32          ; 2 uses
  br label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.zj = zext nneg i16 %.031.i.i to i32
  %i.zk = add nsw i32 %i.za, -8
  %i.zl = lshr i32 %i.zj, %i.zk
  %i.zm = trunc nuw nsw i32 %i.zl to i8
  br label %sample_to_target.exit.i

bb.dc:                                            ; preds = %bb.dc, %.lr.ph.i.i328
  %i.zn = phi i32 [ %.0.in40.i.i, %.lr.ph.i.i328 ], [ %i.zr, %bb.dc ] ; 3 uses
  %.142.i.i = phi i8 [ 0, %.lr.ph.i.i328 ], [ %i.zq, %bb.dc ]
  %i.zo = shl nuw i32 %i.zi, %i.zn
  %i.zp = trunc i32 %i.zo to i8
  %i.zq = or i8 %.142.i.i, %i.zp                  ; 2 uses
  %.0.in.i.i = sub nsw i32 %i.zn, %i.za
  %sext.i.i = shl i32 %.0.in.i.i, 24
  %i.zr = ashr exact i32 %sext.i.i, 24            ; 3 uses
  %i.zs = icmp sgt i32 %i.zr, -1
  br i1 %i.zs, label %bb.dc, label %._crit_edge.i.i, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %bb.dc
  %.not.i.i329 = icmp eq i32 %i.zn, 0
  %i.zt = sub nsw i32 0, %i.zr
  %i.zu = lshr i32 %i.zi, %i.zt
  %i.zv = trunc nuw nsw i32 %i.zu to i8
  %i.zw = select i1 %.not.i.i329, i8 0, i8 %i.zv
  %.2.i.i = or i8 %i.zw, %i.zq
  br label %sample_to_target.exit.i

sample_to_target.exit.i:                          ; preds = %._crit_edge.i.i, %bb.db
  %.030.i.i = phi i8 [ %.2.i.i, %._crit_edge.i.i ], [ %i.zm, %bb.db ] ; 3 uses
  %i.zx = zext i8 %.sroa.619.0.copyload.i to i16  ; 2 uses
  %i.zy = load i8, ptr %i.yt, align 2, !tbaa !87
  %i.zz = zext i8 %i.zy to i32                    ; 2 uses
  %i.aaa = icmp eq i32 %spec.store.select, %i.zz
  br i1 %i.aaa, label %bb.dd, label %bb.de

sample_to_target.exit.thread.i:                   ; preds = %bb.cy
  %i.aab = zext i8 %.sroa.619.0.copyload.i to i16
  %i.aac = load i8, ptr %i.yt, align 2, !tbaa !87 ; 2 uses
  %i.aad = zext i8 %i.aac to i32
  %i.aae = icmp eq i8 %i.aac, 8
  br i1 %i.aae, label %sample_to_target.exit103.i, label %bb.de

bb.dd:                                            ; preds = %sample_to_target.exit.i
  br i1 %i.ys, label %sample_to_target.exit103.i, label %bb.df

bb.de:                                            ; preds = %sample_to_target.exit.thread.i, %sample_to_target.exit.i
  %i.aaf = phi i32 [ %i.aad, %sample_to_target.exit.thread.i ], [ %i.zz, %sample_to_target.exit.i ] ; 2 uses
  %i.aag = phi i16 [ %i.aab, %sample_to_target.exit.thread.i ], [ %i.zx, %sample_to_target.exit.i ]
  %i.aah = phi i8 [ %.sroa.017.0.copyload.i, %sample_to_target.exit.thread.i ], [ %.030.i.i, %sample_to_target.exit.i ]
  %i.aai = zext nneg i16 %i.aag to i32
  %i.aaj = sub nsw i32 %spec.store.select, %i.aaf
  %i.aak = lshr i32 %i.aai, %i.aaj
  %i.aal = trunc nuw nsw i32 %i.aak to i16
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.aam = phi i32 [ %spec.store.select, %bb.dd ], [ %i.aaf, %bb.de ] ; 4 uses
  %i.aan = phi i8 [ %.030.i.i, %bb.dd ], [ %i.aah, %bb.de ] ; 2 uses
  %.031.i93.i = phi i16 [ %i.zx, %bb.dd ], [ %i.aal, %bb.de ] ; 2 uses
  %i.aao = icmp samesign ugt i32 %i.aam, 8
  br i1 %i.aao, label %bb.dg, label %.lr.ph.i94.i

.lr.ph.i94.i:                                     ; preds = %bb.df
  %.0.in40.i95.i = sub nuw nsw i32 8, %i.aam
  %i.aap = zext nneg i16 %.031.i93.i to i32       ; 2 uses
  br label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.aaq = zext nneg i16 %.031.i93.i to i32
  %i.aar = add nsw i32 %i.aam, -8
  %i.aas = lshr i32 %i.aaq, %i.aar
  %i.aat = trunc nuw nsw i32 %i.aas to i8
  br label %sample_to_target.exit103.i

bb.dh:                                            ; preds = %bb.dh, %.lr.ph.i94.i
  %i.aau = phi i32 [ %.0.in40.i95.i, %.lr.ph.i94.i ], [ %i.aay, %bb.dh ] ; 3 uses
  %.142.i96.i = phi i8 [ 0, %.lr.ph.i94.i ], [ %i.aax, %bb.dh ]
  %i.aav = shl nuw i32 %i.aap, %i.aau
  %i.aaw = trunc i32 %i.aav to i8
  %i.aax = or i8 %.142.i96.i, %i.aaw              ; 2 uses
  %.0.in.i97.i = sub nsw i32 %i.aau, %i.aam
  %sext.i98.i = shl i32 %.0.in.i97.i, 24
  %i.aay = ashr exact i32 %sext.i98.i, 24         ; 3 uses
  %i.aaz = icmp sgt i32 %i.aay, -1
  br i1 %i.aaz, label %bb.dh, label %._crit_edge.i99.i, !llvm.loop !1

end_hunk_0
