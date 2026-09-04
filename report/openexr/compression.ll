Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/compression?download=true
inline.NumInlined: 100
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 129
begin_hunk_0_@deflate_compress_near_optimal:bb.a
  store i16 -32768, ptr %.1129.i225, align 2, !tbaa !45
  br label %bt_matchfinder_advance_one_byte.exit258

bt_matchfinder_advance_one_byte.exit258:          ; preds = %bb.u, %bb.ag, %bb.al
  %.0135.i211.idx = phi i64 [ %.1137.i.idx, %bb.u ], [ %.2138.i212.add, %bb.ag ], [ %.4.i.idx, %bb.al ] ; 4 uses
  %i.qj = icmp samesign ugt i64 %.0135.i211.idx, %.1166.idx
  br i1 %i.qj, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bt_matchfinder_advance_one_byte.exit258
  %.0135.i211.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.0135.i211.idx
  %i.qk = getelementptr inbounds i8, ptr %.0135.i211.ptr, i64 -4
  %i.ql = load i16, ptr %i.qk, align 2, !tbaa !58
  %i.qm = zext i16 %i.ql to i32
  br label %bb.an

bb.an:                                            ; preds = %bt_matchfinder_advance_one_byte.exit258, %bb.am, %adjust_max_and_nice_len.exit198
  %.sroa.9.2 = phi i32 [ %i.md, %bb.am ], [ %i.md, %bt_matchfinder_advance_one_byte.exit258 ], [ %.sroa.9.1, %adjust_max_and_nice_len.exit198 ] ; 2 uses
  %.sroa.0.2 = phi i32 [ %i.mb, %bb.am ], [ %i.mb, %bt_matchfinder_advance_one_byte.exit258 ], [ %.sroa.0.1, %adjust_max_and_nice_len.exit198 ] ; 2 uses
  %.2167.idx = phi i64 [ %.0135.i211.idx, %bb.am ], [ %.0135.i211.idx, %bt_matchfinder_advance_one_byte.exit258 ], [ %.1166.idx, %adjust_max_and_nice_len.exit198 ] ; 3 uses
  %.0156 = phi i32 [ %i.qm, %bb.am ], [ 0, %bt_matchfinder_advance_one_byte.exit258 ], [ 0, %adjust_max_and_nice_len.exit198 ] ; 6 uses
  %.2167.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.2167.idx ; 2 uses
  %.not = icmp ult ptr %.1, %.0159
  br i1 %.not, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not187 = icmp samesign ult i32 %.0156, %.0158
  br i1 %.not187, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.qn = icmp samesign ugt i32 %.0156, 8
  %i.qo = select i1 %i.qn, i64 9, i64 8
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.qo ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !16
  %i.qr = add i32 %i.qq, 1
  store i32 %i.qr, ptr %i.qp, align 4, !tbaa !16
  %i.qs = load i32, ptr %i.af, align 4, !tbaa !55
  %i.qt = add i32 %i.qs, 1
  store i32 %i.qt, ptr %i.af, align 4, !tbaa !55
  %i.qu = zext nneg i32 %.0156 to i64             ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.1, i64 %i.qu
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.qu ; 2 uses
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !36
  %i.qy = add i32 %i.qx, 1
  store i32 %i.qy, ptr %i.qw, align 4, !tbaa !36
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.qz = load i8, ptr %.1, align 1, !tbaa !36
  %i.ra = zext i8 %i.qz to i32                    ; 2 uses
  %i.rb = lshr i32 %i.ra, 5
  %i.rc = and i32 %i.rb, 6
  %i.rd = and i32 %i.ra, 1
  %i.re = or disjoint i32 %i.rc, %i.rd
  %i.rf = zext nneg i32 %i.re to i64
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.rf ; 2 uses
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !16
  %i.ri = add i32 %i.rh, 1
  store i32 %i.ri, ptr %i.rg, align 4, !tbaa !16
  %i.rj = load i32, ptr %i.af, align 4, !tbaa !55
  %i.rk = add i32 %i.rj, 1
  store i32 %i.rk, ptr %i.af, align 4, !tbaa !55
  %i.rl = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.an
  %.1160 = phi ptr [ %i.qv, %bb.ap ], [ %i.rl, %bb.aq ], [ %.0159, %bb.an ] ; 2 uses
  %gepdiff = sub nsw i64 %.2167.idx, %.1166.idx
  %i.rm = lshr exact i64 %gepdiff, 2
  %i.rn = trunc i64 %i.rm to i16
  store i16 %i.rn, ptr %.2167.ptr, align 2, !tbaa !58
  %i.ro = load i8, ptr %.1, align 1, !tbaa !36
  %i.rp = zext i8 %i.ro to i16
  %i.rq = getelementptr inbounds nuw i8, ptr %.2167.ptr, i64 2
  store i16 %i.rp, ptr %i.rq, align 2, !tbaa !59
  %i.rr = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %.2167.add = add nuw nsw i64 %.2167.idx, 4      ; 2 uses
  %i.rs = icmp samesign ult i32 %.0156, 3
  %.not188 = icmp ult i32 %.0156, %.5279
  %or.cond194 = select i1 %i.rs, i1 true, i1 %.not188
  br i1 %or.cond194, label %.loopexit304, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.rt = add nsw i32 %.0156, -1
  br label %bb.at

bb.at:                                            ; preds = %bt_matchfinder_advance_one_byte.exit, %bb.as
  %.2282 = phi i32 [ %.5285, %bb.as ], [ %.4284, %bt_matchfinder_advance_one_byte.exit ]
  %.2276 = phi i32 [ %.5279, %bb.as ], [ %.4278, %bt_matchfinder_advance_one_byte.exit ] ; 2 uses
  %.sroa.9.3 = phi i32 [ %.sroa.9.2, %bb.as ], [ %.sroa.9.4, %bt_matchfinder_advance_one_byte.exit ] ; 2 uses
  %.sroa.0.3 = phi i32 [ %.sroa.0.2, %bb.as ], [ %.sroa.0.4, %bt_matchfinder_advance_one_byte.exit ] ; 2 uses
  %.3178 = phi ptr [ %.2177, %bb.as ], [ %.4179, %bt_matchfinder_advance_one_byte.exit ]
  %.3172 = phi ptr [ %.2171, %bb.as ], [ %.4173, %bt_matchfinder_advance_one_byte.exit ] ; 2 uses
  %.3168.idx = phi i64 [ %.2167.add, %bb.as ], [ %.3168.add, %bt_matchfinder_advance_one_byte.exit ] ; 2 uses
  %.1157 = phi i32 [ %i.rt, %bb.as ], [ %i.wy, %bt_matchfinder_advance_one_byte.exit ]
  %.2 = phi ptr [ %i.rr, %bb.as ], [ %i.wx, %bt_matchfinder_advance_one_byte.exit ] ; 6 uses
  %.3168.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.3168.idx ; 2 uses
  %i.ru = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.rv = sub i64 %i.x, %i.ru                     ; 3 uses
  %i.rw = icmp eq ptr %.2, %.3172
  br i1 %i.rw, label %.preheader301, label %bb.au

.preheader301:                                    ; preds = %bb.at, %.preheader301
  %.015.i.i = phi i64 [ %i.sv, %.preheader301 ], [ 524288, %bb.at ]
  %.0.i.i199 = phi ptr [ %i.su, %.preheader301 ], [ %i.e, %bb.at ] ; 10 uses
  %i.rx = load <8 x i16>, ptr %.0.i.i199, align 16, !tbaa !36
  %i.ry = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.rx, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ry, ptr %.0.i.i199, align 16, !tbaa !36
  %i.rz = getelementptr inbounds nuw i8, ptr %.0.i.i199, i64 16 ; 2 uses
  %i.sa = load <8 x i16>, ptr %i.rz, align 16, !tbaa !36
  %i.sb = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.sa, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.sb, ptr %i.rz, align 16, !tbaa !36
  %i.sc = getelementptr inbounds nuw i8, ptr %.0.i.i199, i64 32 ; 2 uses
  %i.sd = load <8 x i16>, ptr %i.sc, align 16, !tbaa !36
  %i.se = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.sd, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.se, ptr %i.sc, align 16, !tbaa !36
  %i.sf = getelementptr inbounds nuw i8, ptr %.0.i.i199, i64 48 ; 2 uses
  %i.sg = load <8 x i16>, ptr %i.sf, align 16, !tbaa !36
  %i.sh = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.sg, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.sh, ptr %i.sf, align 16, !tbaa !36
  %i.si = getelementptr inbounds nuw i8, ptr %.0.i.i199, i64 64 ; 2 uses
  %i.sj = load <8 x i16>, ptr %i.si, align 16, !tbaa !36
  %i.sk = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.sj, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.sk, ptr %i.si, align 16, !tbaa !36
  %i.sl = getelementptr inbounds nuw i8, ptr %.0.i.i199, i64 80 ; 2 uses
  %i.sm = load <8 x i16>, ptr %i.sl, align 16, !tbaa !36
  %i.sn = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.sm, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.sn, ptr %i.sl, align 16, !tbaa !36
  %i.so = getelementptr inbounds nuw i8, ptr %.0.i.i199, i64 96 ; 2 uses
  %i.sp = load <8 x i16>, ptr %i.so, align 16, !tbaa !36
  %i.sq = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.sp, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.sq, ptr %i.so, align 16, !tbaa !36
  %i.sr = getelementptr inbounds nuw i8, ptr %.0.i.i199, i64 112 ; 2 uses
  %i.ss = load <8 x i16>, ptr %i.sr, align 16, !tbaa !36
  %i.st = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.ss, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.st, ptr %i.sr, align 16, !tbaa !36
  %i.su = getelementptr inbounds nuw i8, ptr %.0.i.i199, i64 128
  %i.sv = add nsw i64 %.015.i.i, -128             ; 2 uses
  %.not.i.i200.1 = icmp eq i64 %i.sv, 0
  br i1 %.not.i.i200.1, label %bt_matchfinder_slide_window.exit, label %.preheader301, !llvm.loop !1

bt_matchfinder_slide_window.exit:                 ; preds = %.preheader301
  %i.sw = tail call i64 @llvm.umin.i64(i64 %i.rv, i64 32768)
  %i.sx = getelementptr inbounds nuw i8, ptr %.2, i64 %i.sw
  br label %bb.au

bb.au:                                            ; preds = %bt_matchfinder_slide_window.exit, %bb.at
  %.4179 = phi ptr [ %.2, %bt_matchfinder_slide_window.exit ], [ %.3178, %bb.at ] ; 5 uses
  %.4173 = phi ptr [ %i.sx, %bt_matchfinder_slide_window.exit ], [ %.3172, %bb.at ] ; 2 uses
  %i.sy = icmp ult i64 %i.rv, 258
  br i1 %i.sy, label %bb.av, label %adjust_max_and_nice_len.exit, !prof !44

bb.av:                                            ; preds = %bb.au
  %i.sz = trunc nuw nsw i64 %i.rv to i32          ; 2 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %.2276, i32 %i.sz)
  br label %adjust_max_and_nice_len.exit

adjust_max_and_nice_len.exit:                     ; preds = %bb.au, %bb.av
  %.4284 = phi i32 [ %i.sz, %bb.av ], [ %.2282, %bb.au ] ; 3 uses
  %.4278 = phi i32 [ %..i, %bb.av ], [ %.2276, %bb.au ] ; 7 uses
  %i.ta = icmp ugt i32 %.4284, 4
  br i1 %i.ta, label %bb.aw, label %bt_matchfinder_advance_one_byte.exit

bb.aw:                                            ; preds = %adjust_max_and_nice_len.exit
  %i.tb = ptrtoint ptr %.4179 to i64
  %i.tc = sub i64 %i.ru, %i.tb                    ; 4 uses
  %i.td = load i32, ptr %i.ac, align 32, !tbaa !35
  %i.te = getelementptr inbounds i8, ptr %.4179, i64 %i.tc ; 9 uses
  %i.tf = trunc i64 %i.tc to i32
  %i.tg = add i32 %i.tf, -32768                   ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 1
  %.0.copyload.i.i = load i32, ptr %i.th, align 1 ; 2 uses
  %i.ti = and i32 %.0.copyload.i.i, 16777215
  %i.tj = mul i32 %i.ti, 506832829
  %i.tk = lshr i32 %i.tj, 16                      ; 4 uses
  %i.tl = mul i32 %.0.copyload.i.i, 506832829
  %i.tm = lshr i32 %i.tl, 16                      ; 4 uses
  %i.tn = zext nneg i32 %i.tk to i64
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.tn
  tail call void @llvm.prefetch.p0(ptr nonnull %i.to, i32 1, i32 3, i32 1)
  %i.tp = zext nneg i32 %i.tm to i64
  %i.tq = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.tp
  tail call void @llvm.prefetch.p0(ptr nonnull %i.tq, i32 1, i32 3, i32 1)
  %i.tr = zext nneg i32 %.sroa.0.3 to i64
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.tr ; 3 uses
  %i.tt = load i16, ptr %i.ts, align 4, !tbaa !45
  %i.tu = trunc i64 %i.tc to i16                  ; 2 uses
  store i16 %i.tu, ptr %i.ts, align 4, !tbaa !45
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 2
  store i16 %i.tt, ptr %i.tv, align 2, !tbaa !45
  %i.tw = zext nneg i32 %.sroa.9.3 to i64
  %i.tx = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.tw ; 2 uses
  %i.ty = load i16, ptr %i.tx, align 2, !tbaa !45
  %i.tz = sext i16 %i.ty to i32                   ; 2 uses
  store i16 %i.tu, ptr %i.tx, align 2, !tbaa !45
  %i.ua = shl i64 %i.tc, 1
  %i.ub = and i64 %i.ua, 65534                    ; 2 uses
  %i.uc = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.ub ; 2 uses
  %i.ud = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.ub
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 393218 ; 2 uses
  %.not.i205 = icmp slt i32 %i.tg, %i.tz
  br i1 %.not.i205, label %.preheader300, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i16 -32768, ptr %i.uc, align 2, !tbaa !45
  store i16 -32768, ptr %i.ue, align 2, !tbaa !45
  br label %bt_matchfinder_advance_one_byte.exit

.preheader300:                                    ; preds = %bb.aw, %bb.bl
  %.0134.i = phi i32 [ %i.wt, %bb.bl ], [ %i.td, %bb.aw ]
  %.0132.i = phi i32 [ %.1133.i, %bb.bl ], [ %i.tz, %bb.aw ] ; 4 uses
  %.0130.i = phi ptr [ %.1131.i, %bb.bl ], [ %i.uc, %bb.aw ] ; 3 uses
  %.0128.i = phi ptr [ %.1129.i, %bb.bl ], [ %i.ue, %bb.aw ] ; 3 uses
  %.0126.i = phi i32 [ %.1127.i, %bb.bl ], [ 0, %bb.aw ] ; 2 uses
  %.0124.i = phi i32 [ %.1125.i, %bb.bl ], [ 0, %bb.aw ] ; 2 uses
  %.0121.i = phi i32 [ %spec.select154.i, %bb.bl ], [ 0, %bb.aw ] ; 7 uses
  %i.uf = sext i32 %.0132.i to i64
  %i.ug = getelementptr inbounds i8, ptr %.4179, i64 %i.uf ; 8 uses
  %i.uh = zext nneg i32 %.0121.i to i64           ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.uh
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !36  ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.uh
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !36  ; 2 uses
  %i.um = icmp eq i8 %i.uj, %i.ul
  br i1 %i.um, label %bb.ay, label %bb.bi

bb.ay:                                            ; preds = %.preheader300
  %i.un = add nuw nsw i32 %.0121.i, 1             ; 4 uses
  %i.uo = sub nsw i32 %.4278, %i.un
  %i.up = icmp ugt i32 %i.uo, 31
  br i1 %i.up, label %bb.az, label %.preheader485, !prof !46

bb.az:                                            ; preds = %bb.ay
  %i.uq = zext nneg i32 %i.un to i64              ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.uq
  %.0.copyload.i163.i = load i64, ptr %i.ur, align 1 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.uq
  %.0.copyload.i162.i = load i64, ptr %i.us, align 1 ; 2 uses
  %i.ut = xor i64 %.0.copyload.i162.i, %.0.copyload.i163.i
  %.not.i.i208 = icmp eq i64 %.0.copyload.i163.i, %.0.copyload.i162.i
  br i1 %.not.i.i208, label %bb.ba, label %bb.bh

bb.ba:                                            ; preds = %bb.az
  %i.uu = add nuw nsw i32 %.0121.i, 9             ; 2 uses
  %i.uv = zext nneg i32 %i.uu to i64              ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.uv
  %.0.copyload.i161.i = load i64, ptr %i.uw, align 1 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.uv
  %.0.copyload.i160.i = load i64, ptr %i.ux, align 1 ; 2 uses
  %i.uy = xor i64 %.0.copyload.i160.i, %.0.copyload.i161.i
  %.not54.i.i = icmp eq i64 %.0.copyload.i161.i, %.0.copyload.i160.i
  br i1 %.not54.i.i, label %bb.bb, label %bb.bh

bb.bb:                                            ; preds = %bb.ba
  %i.uz = add nuw nsw i32 %.0121.i, 17            ; 2 uses
  %i.va = zext nneg i32 %i.uz to i64              ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.va
  %.0.copyload.i159.i = load i64, ptr %i.vb, align 1 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.va
  %.0.copyload.i158.i = load i64, ptr %i.vc, align 1 ; 2 uses
  %i.vd = xor i64 %.0.copyload.i158.i, %.0.copyload.i159.i
  %.not55.i.i = icmp eq i64 %.0.copyload.i159.i, %.0.copyload.i158.i
  br i1 %.not55.i.i, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.ve = add nuw nsw i32 %.0121.i, 25            ; 2 uses
  %i.vf = zext nneg i32 %i.ve to i64              ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.vf
  %.0.copyload.i157.i = load i64, ptr %i.vg, align 1 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.vf
  %.0.copyload.i156.i = load i64, ptr %i.vh, align 1 ; 2 uses
  %i.vi = xor i64 %.0.copyload.i156.i, %.0.copyload.i157.i
  %.not56.i.i = icmp eq i64 %.0.copyload.i157.i, %.0.copyload.i156.i
  br i1 %.not56.i.i, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.vj = add nuw nsw i32 %.0121.i, 33
  br label %.preheader485

.preheader485:                                    ; preds = %bb.bd, %bb.ay
  %.1.i.i.ph = phi i32 [ %i.un, %bb.ay ], [ %i.vj, %bb.bd ]
  br label %bb.be

bb.be:                                            ; preds = %.preheader485, %bb.bf
  %.1.i.i = phi i32 [ %i.vk, %bb.bf ], [ %.1.i.i.ph, %.preheader485 ] ; 5 uses
  %i.vk = add i32 %.1.i.i, 8                      ; 2 uses
  %.not57.i.i = icmp ugt i32 %i.vk, %.4278
  br i1 %.not57.i.i, label %.preheader, label %bb.bf

.preheader:                                       ; preds = %bb.be
  %i.vl = icmp ult i32 %.1.i.i, %.4278
  br i1 %i.vl, label %.lr.ph323.preheader, label %lz_extend.exit.i.thread

.lr.ph323.preheader:                              ; preds = %.preheader
  %i.vm = zext nneg i32 %.1.i.i to i64
  br label %.lr.ph323

bb.bf:                                            ; preds = %bb.be
  %i.vn = zext i32 %.1.i.i to i64                 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.vn
  %.0.copyload.i165.i = load i64, ptr %i.vo, align 1 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.vn
  %.0.copyload.i164.i = load i64, ptr %i.vp, align 1 ; 2 uses
  %.not58.i.i = icmp eq i64 %.0.copyload.i165.i, %.0.copyload.i164.i
  br i1 %.not58.i.i, label %bb.be, label %.loopexit, !llvm.loop !2

.lr.ph323:                                        ; preds = %.lr.ph323.preheader, %bb.bg
  %indvars.iv342 = phi i64 [ %i.vm, %.lr.ph323.preheader ], [ %indvars.iv.next343, %bb.bg ] ; 4 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ug, i64 %indvars.iv342
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !36
  %i.vs = getelementptr inbounds nuw i8, ptr %i.te, i64 %indvars.iv342
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !36
  %i.vu = icmp eq i8 %i.vr, %i.vt
  br i1 %i.vu, label %bb.bg, label %lz_extend.exit.i.loopexit

bb.bg:                                            ; preds = %.lr.ph323
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next343 to i32
  %exitcond345.not = icmp eq i32 %.4278, %lftr.wideiv
  br i1 %exitcond345.not, label %lz_extend.exit.i.thread, label %.lr.ph323, !llvm.loop !3

.loopexit:                                        ; preds = %bb.bf
  %i.vv = xor i64 %.0.copyload.i164.i, %.0.copyload.i165.i
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %.3.i.i = phi i32 [ %i.un, %bb.az ], [ %i.uu, %bb.ba ], [ %i.uz, %bb.bb ], [ %i.ve, %bb.bc ], [ %.1.i.i, %.loopexit ]
  %.0.i.i207 = phi i64 [ %i.ut, %bb.az ], [ %i.uy, %bb.ba ], [ %i.vd, %bb.bb ], [ %i.vi, %bb.bc ], [ %i.vv, %.loopexit ]
  %i.vw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0.i.i207, i1 true)
  %i.vx = trunc nuw nsw i64 %i.vw to i32
  %i.vy = lshr i32 %i.vx, 3
  %i.vz = add i32 %i.vy, %.3.i.i
  br label %lz_extend.exit.i

lz_extend.exit.i.loopexit:                        ; preds = %.lr.ph323
  %i.wa = trunc nuw i64 %indvars.iv342 to i32
  br label %lz_extend.exit.i

lz_extend.exit.i:                                 ; preds = %lz_extend.exit.i.loopexit, %bb.bh
  %.047.i.i = phi i32 [ %i.vz, %bb.bh ], [ %i.wa, %lz_extend.exit.i.loopexit ] ; 3 uses
  %.not148.i = icmp ult i32 %.047.i.i, %.4278
  br i1 %.not148.i, label %lz_extend.exit.i._crit_edge, label %lz_extend.exit.i.thread

lz_extend.exit.i._crit_edge:                      ; preds = %lz_extend.exit.i
  %.phi.trans.insert = zext nneg i32 %.047.i.i to i64 ; 2 uses
  %.phi.trans.insert346 = getelementptr inbounds nuw i8, ptr %i.ug, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert346, align 1, !tbaa !36
  %.phi.trans.insert348 = getelementptr inbounds nuw i8, ptr %i.te, i64 %.phi.trans.insert
  %.pre349 = load i8, ptr %.phi.trans.insert348, align 1, !tbaa !36
  br label %bb.bi

lz_extend.exit.i.thread:                          ; preds = %lz_extend.exit.i, %.preheader, %bb.bg
  %i.wb = shl nsw i32 %.0132.i, 1
  %i.wc = and i32 %i.wb, 65534
  %i.wd = zext nneg i32 %i.wc to i64              ; 2 uses
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.wd
  %i.wf = load i16, ptr %i.we, align 2, !tbaa !45
  store i16 %i.wf, ptr %.0130.i, align 2, !tbaa !45
  %i.wg = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.wd
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 393218
  %i.wi = load i16, ptr %i.wh, align 2, !tbaa !45
  store i16 %i.wi, ptr %.0128.i, align 2, !tbaa !45
  br label %bt_matchfinder_advance_one_byte.exit

bb.bi:                                            ; preds = %lz_extend.exit.i._crit_edge, %.preheader300
  %i.wj = phi i8 [ %.pre349, %lz_extend.exit.i._crit_edge ], [ %i.ul, %.preheader300 ]
  %i.wk = phi i8 [ %.pre, %lz_extend.exit.i._crit_edge ], [ %i.uj, %.preheader300 ]
  %.1122.i = phi i32 [ %.047.i.i, %lz_extend.exit.i._crit_edge ], [ %.0121.i, %.preheader300 ] ; 3 uses
  %i.wl = icmp ult i8 %i.wk, %i.wj
  %i.wm = trunc nsw i32 %.0132.i to i16           ; 2 uses
  %i.wn = shl nsw i32 %.0132.i, 1
  %i.wo = and i32 %i.wn, 65534
  %i.wp = zext nneg i32 %i.wo to i64              ; 2 uses
  br i1 %i.wl, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i16 %i.wm, ptr %.0130.i, align 2, !tbaa !45
  %i.wq = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.wp
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 393218 ; 2 uses
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  store i16 %i.wm, ptr %.0128.i, align 2, !tbaa !45
  %i.ws = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.wp ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0126.i.sink = phi i32 [ %.0126.i, %bb.bk ], [ %.0124.i, %bb.bj ]
  %.1133.in.i.in = phi ptr [ %i.ws, %bb.bk ], [ %i.wr, %bb.bj ]
  %.1131.i = phi ptr [ %.0130.i, %bb.bk ], [ %i.wr, %bb.bj ] ; 2 uses
  %.1129.i = phi ptr [ %i.ws, %bb.bk ], [ %.0128.i, %bb.bj ] ; 2 uses
  %.1127.i = phi i32 [ %.0126.i, %bb.bk ], [ %.1122.i, %bb.bj ]
  %.1125.i = phi i32 [ %.1122.i, %bb.bk ], [ %.0124.i, %bb.bj ]
  %spec.select154.i = tail call i32 @llvm.umin.i32(i32 %.0126.i.sink, i32 %.1122.i)
  %.1133.in.i = load i16, ptr %.1133.in.i.in, align 2, !tbaa !45
  %.1133.i = sext i16 %.1133.in.i to i32          ; 2 uses
  %.not149.i = icmp sge i32 %i.tg, %.1133.i
  %i.wt = add i32 %.0134.i, -1                    ; 2 uses
  %.not150.i = icmp eq i32 %i.wt, 0
  %or.cond155.i = select i1 %.not149.i, i1 true, i1 %.not150.i
  br i1 %or.cond155.i, label %bb.bm, label %.preheader300

bb.bm:                                            ; preds = %bb.bl
  store i16 -32768, ptr %.1131.i, align 2, !tbaa !45
  store i16 -32768, ptr %.1129.i, align 2, !tbaa !45
  br label %bt_matchfinder_advance_one_byte.exit

bt_matchfinder_advance_one_byte.exit:             ; preds = %bb.bm, %lz_extend.exit.i.thread, %bb.ax, %adjust_max_and_nice_len.exit
  %.sroa.9.4 = phi i32 [ %.sroa.9.3, %adjust_max_and_nice_len.exit ], [ %i.tm, %bb.ax ], [ %i.tm, %lz_extend.exit.i.thread ], [ %i.tm, %bb.bm ] ; 2 uses
  %.sroa.0.4 = phi i32 [ %.sroa.0.3, %adjust_max_and_nice_len.exit ], [ %i.tk, %bb.ax ], [ %i.tk, %lz_extend.exit.i.thread ], [ %i.tk, %bb.bm ] ; 2 uses
  store i16 0, ptr %.3168.ptr, align 2, !tbaa !58
  %i.wu = load i8, ptr %.2, align 1, !tbaa !36
  %i.wv = zext i8 %i.wu to i16
  %i.ww = getelementptr inbounds nuw i8, ptr %.3168.ptr, i64 2
  store i16 %i.wv, ptr %i.ww, align 2, !tbaa !59
  %i.wx = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %.3168.add = add nuw nsw i64 %.3168.idx, 4      ; 2 uses
  %i.wy = add nsw i32 %.1157, -1                  ; 2 uses
  %.not189 = icmp eq i32 %i.wy, 0
  br i1 %.not189, label %.loopexit304, label %bb.at, !llvm.loop !135

.loopexit304:                                     ; preds = %bt_matchfinder_advance_one_byte.exit, %bb.ar
  %.3283 = phi i32 [ %.5285, %bb.ar ], [ %.4284, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %.3277 = phi i32 [ %.5279, %bb.ar ], [ %.4278, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %.sroa.9.5 = phi i32 [ %.sroa.9.2, %bb.ar ], [ %.sroa.9.4, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %.sroa.0.5 = phi i32 [ %.sroa.0.2, %bb.ar ], [ %.sroa.0.4, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %.5180 = phi ptr [ %.2177, %bb.ar ], [ %.4179, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %.5174 = phi ptr [ %.2171, %bb.ar ], [ %.4173, %bt_matchfinder_advance_one_byte.exit ] ; 3 uses
  %.4.idx = phi i64 [ %.2167.add, %bb.ar ], [ %.3168.add, %bt_matchfinder_advance_one_byte.exit ] ; 5 uses
  %.3 = phi ptr [ %i.rr, %bb.ar ], [ %i.wx, %bt_matchfinder_advance_one_byte.exit ] ; 12 uses
  %.not190 = icmp ult ptr %.3, %.0.i
  %.not191 = icmp slt i64 %.4.idx, 6530368
  %or.cond195 = select i1 %.not190, i1 %.not191, i1 false
  br i1 %or.cond195, label %bb.bn, label %.thread

.thread:                                          ; preds = %.loopexit304
  %.4.ptr.le371 = getelementptr inbounds nuw i8, ptr %0, i64 %.4.idx
  br label %vector.ph

bb.bn:                                            ; preds = %.loopexit304
  %i.wz = load i32, ptr %i.af, align 4, !tbaa !55
  %i.xa = icmp ugt i32 %i.wz, 511
  br i1 %i.xa, label %bb.bo, label %deflate_near_optimal_merge_stats.exit.backedge

deflate_near_optimal_merge_stats.exit.backedge:   ; preds = %bb.bn, %bb.bo
  br label %deflate_near_optimal_merge_stats.exit

bb.bo:                                            ; preds = %bb.bn
  %i.xb = ptrtoint ptr %.3 to i64                 ; 2 uses
  %i.xc = sub i64 %i.xb, %i.dq                    ; 2 uses
  %i.xd = icmp sgt i64 %i.xc, 4999
  %i.xe = sub i64 %i.x, %i.xb
  %i.xf = icmp sgt i64 %i.xe, 4999
  %or.cond292 = select i1 %i.xd, i1 %i.xf, i1 false
  br i1 %or.cond292, label %bb.bp, label %deflate_near_optimal_merge_stats.exit.backedge

bb.bp:                                            ; preds = %bb.bo
  %i.xg = trunc i64 %i.xc to i32
  %i.xh = tail call fastcc zeroext i1 @do_end_block_check(ptr noundef nonnull %i.aa, i32 noundef %i.xg)
  br i1 %i.xh, label %bb.bq, label %vector.ph467

vector.ph467:                                     ; preds = %bb.bp
  %i.xi = load <4 x i32>, ptr %i.aa, align 4, !tbaa !16
  %i.xj = load <4 x i32>, ptr %i.ag, align 4, !tbaa !16
  %i.xk = add <4 x i32> %i.xj, %i.xi
  store <4 x i32> %i.xk, ptr %i.ag, align 4, !tbaa !16
  store <4 x i32> zeroinitializer, ptr %i.aa, align 4, !tbaa !16
  %i.xl = load <4 x i32>, ptr %i.ah, align 4, !tbaa !16
  %i.xm = load <4 x i32>, ptr %i.ai, align 4, !tbaa !16
  %i.xn = add <4 x i32> %i.xm, %i.xl
  store <4 x i32> %i.xn, ptr %i.ai, align 4, !tbaa !16
  store <4 x i32> zeroinitializer, ptr %i.ah, align 4, !tbaa !16
  %i.xo = load <2 x i32>, ptr %i.aj, align 4, !tbaa !16
  store i32 0, ptr %i.aj, align 4, !tbaa !16
  %i.xp = load <2 x i32>, ptr %i.ak, align 4, !tbaa !16
  %i.xq = add <2 x i32> %i.xp, %i.xo
  store <2 x i32> %i.xq, ptr %i.ak, align 4, !tbaa !16
  store i32 0, ptr %i.al, align 4, !tbaa !16
  %i.xr = load i32, ptr %i.af, align 4, !tbaa !55
  %i.xs = load i32, ptr %i.am, align 4, !tbaa !60
  %i.xt = add i32 %i.xs, %i.xr
  store i32 %i.xt, ptr %i.am, align 4, !tbaa !60
  store i32 0, ptr %i.af, align 4, !tbaa !55
  br label %vector.body468

vector.body468:                                   ; preds = %vector.body468, %vector.ph467
  %index469 = phi i64 [ 0, %vector.ph467 ], [ %index.next474.1, %vector.body468 ] ; 4 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index469 ; 3 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 16 ; 2 uses
  %wide.load470 = load <4 x i32>, ptr %i.xu, align 4, !tbaa !36
  %wide.load471 = load <4 x i32>, ptr %i.xv, align 4, !tbaa !36
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index469 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 16 ; 2 uses
  %wide.load472 = load <4 x i32>, ptr %i.xw, align 4, !tbaa !36
  %wide.load473 = load <4 x i32>, ptr %i.xx, align 4, !tbaa !36
  %i.xy = add <4 x i32> %wide.load472, %wide.load470
  %i.xz = add <4 x i32> %wide.load473, %wide.load471
  store <4 x i32> %i.xy, ptr %i.xw, align 4, !tbaa !36
  store <4 x i32> %i.xz, ptr %i.xx, align 4, !tbaa !36
  store <4 x i32> zeroinitializer, ptr %i.xu, align 4, !tbaa !36
  store <4 x i32> zeroinitializer, ptr %i.xv, align 4, !tbaa !36
  %index.next474 = or disjoint i64 %index469, 8   ; 2 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index.next474 ; 3 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 16 ; 2 uses
  %wide.load470.1 = load <4 x i32>, ptr %i.ya, align 4, !tbaa !36
  %wide.load471.1 = load <4 x i32>, ptr %i.yb, align 4, !tbaa !36
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index.next474 ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 16 ; 2 uses
  %wide.load472.1 = load <4 x i32>, ptr %i.yc, align 4, !tbaa !36
  %wide.load473.1 = load <4 x i32>, ptr %i.yd, align 4, !tbaa !36
  %i.ye = add <4 x i32> %wide.load472.1, %wide.load470.1
  %i.yf = add <4 x i32> %wide.load473.1, %wide.load471.1
  store <4 x i32> %i.ye, ptr %i.yc, align 4, !tbaa !36
  store <4 x i32> %i.yf, ptr %i.yd, align 4, !tbaa !36
  store <4 x i32> zeroinitializer, ptr %i.ya, align 4, !tbaa !36
  store <4 x i32> zeroinitializer, ptr %i.yb, align 4, !tbaa !36
  %index.next474.1 = add nuw nsw i64 %index469, 16 ; 2 uses
  %i.yg = icmp eq i64 %index.next474.1, 256
  br i1 %i.yg, label %scalar.ph466, label %vector.body468, !llvm.loop !136

scalar.ph466:                                     ; preds = %vector.body468
  %i.yh = load i32, ptr %i.de, align 4, !tbaa !36
  %i.yi = load i32, ptr %i.df, align 4, !tbaa !36
  %i.yj = add i32 %i.yi, %i.yh
  store i32 %i.yj, ptr %i.df, align 4, !tbaa !36
  store i32 0, ptr %i.de, align 4, !tbaa !36
  %i.yk = load i32, ptr %i.dg, align 4, !tbaa !36
  %i.yl = load i32, ptr %i.dh, align 4, !tbaa !36
  %i.ym = add i32 %i.yl, %i.yk
  store i32 %i.ym, ptr %i.dh, align 4, !tbaa !36
  store i32 0, ptr %i.dg, align 4, !tbaa !36
  %i.yn = load i32, ptr %i.di, align 4, !tbaa !36
  %i.yo = load i32, ptr %i.dj, align 4, !tbaa !36
  %i.yp = add i32 %i.yo, %i.yn
  store i32 %i.yp, ptr %i.dj, align 4, !tbaa !36
  store i32 0, ptr %i.di, align 4, !tbaa !36
  br label %deflate_near_optimal_merge_stats.exit.outer

bb.bq:                                            ; preds = %bb.bp
  %.4.ptr.le = getelementptr inbounds nuw i8, ptr %0, i64 %.4.idx ; 4 uses
  %.not420 = icmp eq ptr %.0163.ph, null
  br i1 %.not420, label %vector.ph, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.3.lcssa537.lcssa538 = ptrtoaddr ptr %.3 to i64
  %.0163.ph.lcssa534535 = ptrtoaddr ptr %.0163.ph to i64
  %i.yq = ptrtoint ptr %.0163.ph to i64           ; 2 uses
  %i.yr = ptrtoint ptr %.3 to i64
  %i.ys = sub i64 %i.yr, %i.yq
  %i.yt = trunc i64 %i.ys to i32                  ; 3 uses
  %i.yu = trunc i64 %.0163.ph.lcssa534535 to i32
  %i.yv = trunc i64 %.3.lcssa537.lcssa538 to i32
end_hunk_0
