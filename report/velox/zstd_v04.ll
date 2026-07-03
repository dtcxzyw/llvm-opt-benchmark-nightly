inline.NumInlined: 323
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@ZSTD_decompressBlock_internal:bb.a
  %i.ry = shl i64 %.sroa.0.6.i, %i.rx
  %i.rz = lshr i64 %i.ry, 1
  %i.sa = and i32 %i.rv, 63
  %i.sb = xor i32 %i.sa, 63
  %i.sc = zext nneg i32 %i.sb to i64
  %i.sd = lshr i64 %i.rz, %i.sc
  %i.se = add i32 %.sroa.20.8.i, %i.rv            ; 2 uses
  %i.sf = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.sg = add nuw i64 %i.sd, %i.sf
  %i.sh = zext i8 %.sroa.4.0.copyload.i.i.i to i64
  %.not.i99.i = icmp eq i8 %.sroa.4.0.copyload.i.i.i, 0
  %.sroa.speculated.i = select i1 %.not.i99.i, i64 %.sroa.78.0191.i, i64 %.sroa.5.0187.i
  %i.si = icmp eq i8 %.sroa.4.0.copyload.i.i.i, 63
  br i1 %i.si, label %bb.bm, label %bb.br

bb.bm:                                            ; preds = %bb.bl
  %i.sj = icmp ult ptr %.sroa.81.0193.i, %i.dv
  br i1 %i.sj, label %bb.bn, label %.thread.i101.i

bb.bn:                                            ; preds = %bb.bm
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.81.0193.i, i64 1 ; 3 uses
  %i.sl = load i8, ptr %.sroa.81.0193.i, align 1, !tbaa !9 ; 2 uses
  %i.sm = zext i8 %i.sl to i64
  %.not77.i.i = icmp eq i8 %i.sl, -1
  br i1 %.not77.i.i, label %bb.bo, label %.thread.i101.i

.thread.i101.i:                                   ; preds = %bb.bn, %bb.bm
  %i.sn = phi i64 [ %i.sm, %bb.bn ], [ 0, %bb.bm ]
  %.063105.i.i = phi ptr [ %i.sk, %bb.bn ], [ %.sroa.81.0193.i, %bb.bm ]
  %narrow.i.i = add nuw nsw i64 %i.sn, 63
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.81.0193.i, i64 4 ; 2 uses
  %.not78.i.i = icmp ugt ptr %i.so, %i.dv
  br i1 %.not78.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.063.val.i.i = load i16, ptr %i.sk, align 1
  %i.sp = getelementptr i8, ptr %.sroa.81.0193.i, i64 3
  %.063.val88.i.i = load i8, ptr %i.sp, align 1, !tbaa !9
  %i.sq = zext i16 %.063.val.i.i to i64
  %i.sr = zext i8 %.063.val88.i.i to i64
  %i.ss = shl nuw nsw i64 %i.sr, 16
  %i.st = or disjoint i64 %i.ss, %i.sq
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %.thread.i101.i
  %.164.i.i = phi ptr [ %.063105.i.i, %.thread.i101.i ], [ %i.so, %bb.bp ], [ %i.sk, %bb.bo ] ; 2 uses
  %.0.shrunk.i.i = phi i64 [ %narrow.i.i, %.thread.i101.i ], [ %i.st, %bb.bp ], [ 63, %bb.bo ]
  %.not79.i.i = icmp ult ptr %.164.i.i, %i.dv
  %spec.select.i.i = select i1 %.not79.i.i, ptr %.164.i.i, ptr %i.qk
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bl
  %.3.i.i = phi ptr [ %spec.select.i.i, %bb.bq ], [ %.sroa.81.0193.i, %bb.bl ] ; 7 uses
  %.1.i.i = phi i64 [ %.0.shrunk.i.i, %bb.bq ], [ %i.sh, %bb.bl ] ; 11 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %.sroa.68.0196.i ; 3 uses
  %.sroa.0.0.copyload.i89.i.i = load i16, ptr %i.su, align 2, !tbaa !58
  %.sroa.4.0..sroa_idx.i90.i.i = getelementptr inbounds nuw i8, ptr %i.su, i64 2
  %.sroa.4.0.copyload.i91.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i90.i.i, align 2, !tbaa !9 ; 3 uses
  %.sroa.5.0..sroa_idx.i92.i.i = getelementptr inbounds nuw i8, ptr %i.su, i64 3
  %.sroa.5.0.copyload.i93.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i92.i.i, align 1, !tbaa !9
  %i.sv = zext i8 %.sroa.5.0.copyload.i93.i.i to i32 ; 2 uses
  %i.sw = and i32 %i.se, 63
  %i.sx = zext nneg i32 %i.sw to i64
  %i.sy = shl i64 %.sroa.0.6.i, %i.sx
  %i.sz = lshr i64 %i.sy, 1
  %i.ta = and i32 %i.sv, 63
  %i.tb = xor i32 %i.ta, 63
  %i.tc = zext nneg i32 %i.tb to i64
  %i.td = lshr i64 %i.sz, %i.tc
  %i.te = add i32 %i.se, %i.sv                    ; 2 uses
  %i.tf = zext i16 %.sroa.0.0.copyload.i89.i.i to i64
  %i.tg = add nuw i64 %i.td, %i.tf
  %i.th = zext i8 %.sroa.4.0.copyload.i91.i.i to i32 ; 2 uses
  %i.ti = add nsw i32 %i.th, -1
  %i.tj = icmp eq i8 %.sroa.4.0.copyload.i91.i.i, 0 ; 2 uses
  %spec.store.select.i.i = select i1 %i.tj, i32 0, i32 %i.ti ; 2 uses
  %i.tk = zext i8 %.sroa.4.0.copyload.i91.i.i to i64
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_decodeSequence.offsetPrefix, i64 %i.tk
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !3
  %i.tn = add i32 %i.te, %spec.store.select.i.i   ; 2 uses
  %.not80.i.i = icmp eq i64 %.1.i.i, 0
  %i.to = zext i1 %.not80.i.i to i32
  %i.tp = or i32 %i.th, %i.to
  %.not81.i.i = icmp eq i32 %i.tp, 0
  %spec.select.i = select i1 %.not81.i.i, i64 %.sroa.78.0191.i, i64 %.sroa.5.0187.i
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %.sroa.73.0195.i ; 3 uses
  %.sroa.0.0.copyload.i96.i.i = load i16, ptr %i.tq, align 2, !tbaa !58
  %.sroa.4.0..sroa_idx.i97.i.i = getelementptr inbounds nuw i8, ptr %i.tq, i64 2
  %.sroa.4.0.copyload.i98.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i97.i.i, align 2, !tbaa !9 ; 2 uses
  %.sroa.5.0..sroa_idx.i99.i.i = getelementptr inbounds nuw i8, ptr %i.tq, i64 3
  %.sroa.5.0.copyload.i100.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i99.i.i, align 1, !tbaa !9
  %i.tr = zext i8 %.sroa.5.0.copyload.i100.i.i to i32 ; 2 uses
  %i.ts = and i32 %i.tn, 63
  %i.tt = zext nneg i32 %i.ts to i64
  %i.tu = shl i64 %.sroa.0.6.i, %i.tt
  %i.tv = lshr i64 %i.tu, 1
  %i.tw = and i32 %i.tr, 63
  %i.tx = xor i32 %i.tw, 63
  %i.ty = zext nneg i32 %i.tx to i64
  %i.tz = lshr i64 %i.tv, %i.ty
  %i.ua = add i32 %i.tn, %i.tr                    ; 2 uses
  %i.ub = zext i16 %.sroa.0.0.copyload.i96.i.i to i64
  %i.uc = add nuw i64 %i.tz, %i.ub
  %i.ud = zext i8 %.sroa.4.0.copyload.i98.i.i to i64
  %i.ue = icmp eq i8 %.sroa.4.0.copyload.i98.i.i, 127
  br i1 %i.ue, label %bb.bs, label %ZSTD_decodeSequence.exit.i

bb.bs:                                            ; preds = %bb.br
  %i.uf = icmp ult ptr %.3.i.i, %i.dv
  br i1 %i.uf, label %bb.bt, label %.thread106.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.ug = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1 ; 3 uses
  %i.uh = load i8, ptr %.3.i.i, align 1, !tbaa !9 ; 2 uses
  %i.ui = zext i8 %i.uh to i64
  %.not82.i.i = icmp eq i8 %i.uh, -1
  br i1 %.not82.i.i, label %bb.bu, label %.thread106.i.i

.thread106.i.i:                                   ; preds = %bb.bt, %bb.bs
  %i.uj = phi i64 [ %i.ui, %bb.bt ], [ 0, %bb.bs ]
  %.4109.i.i = phi ptr [ %i.ug, %bb.bt ], [ %.3.i.i, %bb.bs ]
  %narrow84.i.i = add nuw nsw i64 %i.uj, 127
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.uk = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 4 ; 2 uses
  %.not83.i.i = icmp ugt ptr %i.uk, %i.dv
  br i1 %.not83.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.4.val.i.i = load i16, ptr %i.ug, align 1
  %i.ul = getelementptr i8, ptr %.3.i.i, i64 3
  %.4.val87.i.i = load i8, ptr %i.ul, align 1, !tbaa !9
  %i.um = zext i16 %.4.val.i.i to i64
  %i.un = zext i8 %.4.val87.i.i to i64
  %i.uo = shl nuw nsw i64 %i.un, 16
  %i.up = or disjoint i64 %i.uo, %i.um
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %.thread106.i.i
  %.5.i.i = phi ptr [ %.4109.i.i, %.thread106.i.i ], [ %i.uk, %bb.bv ], [ %i.ug, %bb.bu ] ; 2 uses
  %.061.shrunk.i.i = phi i64 [ %narrow84.i.i, %.thread106.i.i ], [ %i.up, %bb.bv ], [ 127, %bb.bu ]
  %.not85.i.i = icmp ult ptr %.5.i.i, %i.dv
  %spec.select86.i.i = select i1 %.not85.i.i, ptr %.5.i.i, ptr %i.qk
  br label %ZSTD_decodeSequence.exit.i

ZSTD_decodeSequence.exit.i:                       ; preds = %bb.bw, %bb.br
  %.7.i100.i = phi ptr [ %spec.select86.i.i, %bb.bw ], [ %.3.i.i, %bb.br ]
  %.162.i.i = phi i64 [ %.061.shrunk.i.i, %bb.bw ], [ %i.ud, %bb.br ] ; 4 uses
  %i.uq = and i32 %i.te, 63
  %i.ur = zext nneg i32 %i.uq to i64
  %i.us = shl i64 %.sroa.0.6.i, %i.ur
  %i.ut = lshr i64 %i.us, 1
  %i.uu = and i32 %spec.store.select.i.i, 63
  %i.uv = xor i32 %i.uu, 63
  %i.uw = zext nneg i32 %i.uv to i64
  %i.ux = lshr i64 %i.ut, %i.uw
  %i.uy = zext i32 %i.tm to i64
  %i.uz = add nuw i64 %i.ux, %i.uy
  %.060.i.i = select i1 %i.tj, i64 %.sroa.speculated.i, i64 %i.uz ; 18 uses
  %i.va = add nuw nsw i64 %.162.i.i, 4            ; 4 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.063198.i, i64 %.1.i.i ; 8 uses
  %i.vc = add nuw nsw i64 %i.va, %.1.i.i          ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.063198.i, i64 %i.vc ; 6 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %.0135194.i, i64 %.1.i.i ; 2 uses
  %i.vf = sub i64 0, %.060.i.i
  %i.vg = getelementptr inbounds i8, ptr %i.vb, i64 %i.vf ; 2 uses
  %i.vh = ptrtoint ptr %.063198.i to i64          ; 10 uses
  %i.vi = sub i64 %i.qm, %i.vh
  %i.vj = icmp ugt i64 %i.vc, %i.vi
  br i1 %i.vj, label %ZSTD_decompressSequences.exit, label %bb.bx

bb.bx:                                            ; preds = %ZSTD_decodeSequence.exit.i
  %i.vk = ptrtoint ptr %.0135194.i to i64         ; 2 uses
  %i.vl = sub i64 %i.qn, %i.vk
  %i.vm = icmp ugt i64 %.1.i.i, %i.vl
  br i1 %i.vm, label %ZSTD_decompressSequences.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.vn = icmp ugt ptr %i.vb, %i.ql
  %i.vo = icmp ugt ptr %i.vd, %i.cj
  %or.cond.i.i18 = select i1 %i.vn, i1 true, i1 %i.vo
  br i1 %or.cond.i.i18, label %ZSTD_decompressSequences.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.vp = icmp ugt ptr %i.ve, %i.ck
  br i1 %i.vp, label %ZSTD_decompressSequences.exit, label %.preheader123.i.i.preheader

.preheader123.i.i.preheader:                      ; preds = %bb.bz
  %i.vq = add i64 %.1.i.i, %i.vh
  %i.vr = add i64 %i.vh, 8
  %umax194 = tail call i64 @llvm.umax.i64(i64 %i.vq, i64 %i.vr)
  %i.vs = xor i64 %i.vh, -1
  %i.vt = add i64 %umax194, %i.vs                 ; 2 uses
  %i.vu = lshr i64 %i.vt, 3
  %i.vv = add nuw nsw i64 %i.vu, 1                ; 2 uses
  %min.iters.check196 = icmp ult i64 %i.vt, 24
  %i.vw = sub i64 %i.vk, %i.vh
  %diff.check193 = icmp ugt i64 %i.vw, -32
  %or.cond213 = or i1 %min.iters.check196, %diff.check193
  br i1 %or.cond213, label %.preheader123.i.i.preheader218, label %vector.ph197

vector.ph197:                                     ; preds = %.preheader123.i.i.preheader
  %n.vec199 = and i64 %i.vv, 4611686018427387900  ; 3 uses
  %i.vx = shl i64 %n.vec199, 3                    ; 2 uses
  %i.vy = getelementptr i8, ptr %.063198.i, i64 %i.vx
  %i.vz = getelementptr i8, ptr %.0135194.i, i64 %i.vx
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph197
  %index201 = phi i64 [ 0, %vector.ph197 ], [ %index.next206, %vector.body200 ] ; 2 uses
  %i.wa = shl i64 %index201, 3                    ; 2 uses
  %next.gep202 = getelementptr i8, ptr %.063198.i, i64 %i.wa ; 2 uses
  %next.gep203 = getelementptr i8, ptr %.0135194.i, i64 %i.wa ; 2 uses
  %i.wb = getelementptr i8, ptr %next.gep203, i64 16
  %wide.load204 = load <2 x i64>, ptr %next.gep203, align 1
  %wide.load205 = load <2 x i64>, ptr %i.wb, align 1
  %i.wc = getelementptr i8, ptr %next.gep202, i64 16
  store <2 x i64> %wide.load204, ptr %next.gep202, align 1
  store <2 x i64> %wide.load205, ptr %i.wc, align 1
  %index.next206 = add nuw i64 %index201, 4       ; 2 uses
  %i.wd = icmp eq i64 %index.next206, %n.vec199
  br i1 %i.wd, label %middle.block207, label %vector.body200, !llvm.loop !59

middle.block207:                                  ; preds = %vector.body200
  %cmp.n208 = icmp eq i64 %i.vv, %n.vec199
  br i1 %cmp.n208, label %ZSTD_wildcopy.exit.i.i, label %.preheader123.i.i.preheader218

.preheader123.i.i.preheader218:                   ; preds = %.preheader123.i.i.preheader, %middle.block207
  %.09.i.i.i.ph = phi ptr [ %.063198.i, %.preheader123.i.i.preheader ], [ %i.vy, %middle.block207 ]
  %.0.i.i.i.ph = phi ptr [ %.0135194.i, %.preheader123.i.i.preheader ], [ %i.vz, %middle.block207 ]
  br label %.preheader123.i.i

.preheader123.i.i:                                ; preds = %.preheader123.i.i.preheader218, %.preheader123.i.i
  %.09.i.i.i = phi ptr [ %i.we, %.preheader123.i.i ], [ %.09.i.i.i.ph, %.preheader123.i.i.preheader218 ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.wf, %.preheader123.i.i ], [ %.0.i.i.i.ph, %.preheader123.i.i.preheader218 ] ; 2 uses
  %.0.val.i.i.i = load i64, ptr %.0.i.i.i, align 1
  store i64 %.0.val.i.i.i, ptr %.09.i.i.i, align 1
  %i.we = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.wg = icmp ult ptr %i.we, %i.vb
  br i1 %i.wg, label %.preheader123.i.i, label %ZSTD_wildcopy.exit.i.i, !llvm.loop !62

ZSTD_wildcopy.exit.i.i:                           ; preds = %.preheader123.i.i, %middle.block207
  %i.wh = ptrtoint ptr %i.vb to i64               ; 2 uses
  %i.wi = sub i64 %i.wh, %i.qo                    ; 5 uses
  %i.wj = icmp ugt i64 %.060.i.i, %i.wi
  br i1 %i.wj, label %bb.ca, label %.thread.i102.i

bb.ca:                                            ; preds = %ZSTD_wildcopy.exit.i.i
  %i.wk = sub i64 %i.wh, %i.qp
  %i.wl = icmp ugt i64 %.060.i.i, %i.wk
  br i1 %i.wl, label %ZSTD_decompressSequences.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.wm = ptrtoint ptr %i.vg to i64
  %.neg.i.i = sub i64 %i.wm, %i.qo                ; 3 uses
  %i.wn = getelementptr inbounds i8, ptr %i.cs, i64 %.neg.i.i ; 2 uses
  %i.wo = add nsw i64 %i.va, %.neg.i.i            ; 3 uses
  %.not.i107.i = icmp sgt i64 %i.wo, 0
  br i1 %.not.i107.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.vb, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.wn, i64 %i.va, i1 false)
  br label %ZSTD_execSequence.exit.i

bb.cd:                                            ; preds = %bb.cb
  %gepdiff.i108.i = sub nsw i64 0, %.neg.i.i      ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.vb, ptr readonly align 1 %i.wn, i64 %gepdiff.i108.i, i1 false)
  %i.wp = getelementptr inbounds nuw i8, ptr %i.vb, i64 %gepdiff.i108.i ; 7 uses
  %i.wq = icmp ule ptr %i.wp, %i.ql
  %i.wr = icmp samesign ugt i64 %i.wo, 3
  %or.cond.not.i.i = select i1 %i.wq, i1 %i.wr, i1 false
  br i1 %or.cond.not.i.i, label %.thread.i102.i, label %iter.check175

iter.check175:                                    ; preds = %bb.cd
  %i.ws = add nsw i64 %.162.i.i, 4
  %i.wt = add nsw i64 %i.ws, %.1.i.i
  %i.wu = add i64 %i.wt, %i.vh
  %i.wv = add i64 %i.qz, %.060.i.i
  %umax155 = tail call i64 @llvm.umax.i64(i64 %i.wu, i64 %i.wv)
  %i.ww = add i64 %.060.i.i, %i.qo
  %i.wx = sub i64 %umax155, %i.ww                 ; 7 uses
  %min.iters.check157 = icmp ult i64 %i.wx, 4
  %diff.check154 = icmp ult i64 %.060.i.i, 32
  %or.cond214 = select i1 %min.iters.check157, i1 true, i1 %diff.check154
  br i1 %or.cond214, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check158

vector.main.loop.iter.check158:                   ; preds = %iter.check175
  %min.iters.check159 = icmp ult i64 %i.wx, 32
  br i1 %min.iters.check159, label %vec.epilog.ph179, label %vector.ph160

vector.ph160:                                     ; preds = %vector.main.loop.iter.check158
  %n.mod.vf161 = and i64 %i.wx, 28
  %n.vec162 = and i64 %i.wx, -32                  ; 5 uses
  %i.wy = getelementptr i8, ptr %i.wp, i64 %n.vec162
  %i.wz = getelementptr i8, ptr %i.co, i64 %n.vec162
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph160
  %index164 = phi i64 [ 0, %vector.ph160 ], [ %index.next169, %vector.body163 ] ; 3 uses
  %next.gep165 = getelementptr i8, ptr %i.wp, i64 %index164 ; 2 uses
  %next.gep166 = getelementptr i8, ptr %i.co, i64 %index164 ; 2 uses
  %i.xa = getelementptr i8, ptr %next.gep166, i64 16
  %wide.load167 = load <16 x i8>, ptr %next.gep166, align 1, !tbaa !9
  %wide.load168 = load <16 x i8>, ptr %i.xa, align 1, !tbaa !9
  %i.xb = getelementptr i8, ptr %next.gep165, i64 16
  store <16 x i8> %wide.load167, ptr %next.gep165, align 1, !tbaa !9
  store <16 x i8> %wide.load168, ptr %i.xb, align 1, !tbaa !9
  %index.next169 = add nuw i64 %index164, 32      ; 2 uses
  %i.xc = icmp eq i64 %index.next169, %n.vec162
  br i1 %i.xc, label %middle.block170, label %vector.body163, !llvm.loop !63

middle.block170:                                  ; preds = %vector.body163
  %cmp.n171 = icmp eq i64 %i.wx, %n.vec162
  br i1 %cmp.n171, label %ZSTD_execSequence.exit.i, label %vec.epilog.iter.check177

vec.epilog.iter.check177:                         ; preds = %middle.block170
  %min.epilog.iters.check178 = icmp eq i64 %n.mod.vf161, 0
  br i1 %min.epilog.iters.check178, label %.lr.ph.i.i.preheader, label %vec.epilog.ph179, !prof !64

vec.epilog.ph179:                                 ; preds = %vector.main.loop.iter.check158, %vec.epilog.iter.check177
  %vec.epilog.resume.val172 = phi i64 [ %n.vec162, %vec.epilog.iter.check177 ], [ 0, %vector.main.loop.iter.check158 ]
  %n.vec181 = and i64 %i.wx, -4                   ; 4 uses
  %i.xd = getelementptr i8, ptr %i.wp, i64 %n.vec181
  %i.xe = getelementptr i8, ptr %i.co, i64 %n.vec181
  br label %vec.epilog.vector.body182

vec.epilog.vector.body182:                        ; preds = %vec.epilog.vector.body182, %vec.epilog.ph179
  %index183 = phi i64 [ %vec.epilog.resume.val172, %vec.epilog.ph179 ], [ %index.next187, %vec.epilog.vector.body182 ] ; 3 uses
  %next.gep184 = getelementptr i8, ptr %i.wp, i64 %index183
  %next.gep185 = getelementptr i8, ptr %i.co, i64 %index183
  %wide.load186 = load <4 x i8>, ptr %next.gep185, align 1, !tbaa !9
  store <4 x i8> %wide.load186, ptr %next.gep184, align 1, !tbaa !9
  %index.next187 = add nuw i64 %index183, 4       ; 2 uses
  %i.xf = icmp eq i64 %index.next187, %n.vec181
  br i1 %i.xf, label %vec.epilog.middle.block188, label %vec.epilog.vector.body182, !llvm.loop !65

vec.epilog.middle.block188:                       ; preds = %vec.epilog.vector.body182
  %cmp.n189 = icmp eq i64 %i.wx, %n.vec181
  br i1 %cmp.n189, label %ZSTD_execSequence.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check175, %vec.epilog.iter.check177, %vec.epilog.middle.block188
  %.089125.i.i.ph = phi ptr [ %i.wp, %iter.check175 ], [ %i.wy, %vec.epilog.iter.check177 ], [ %i.xd, %vec.epilog.middle.block188 ]
  %.092124.i.i.ph = phi ptr [ %i.co, %iter.check175 ], [ %i.wz, %vec.epilog.iter.check177 ], [ %i.xe, %vec.epilog.middle.block188 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.089125.i.i = phi ptr [ %i.xi, %.lr.ph.i.i ], [ %.089125.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.092124.i.i = phi ptr [ %i.xg, %.lr.ph.i.i ], [ %.092124.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.092124.i.i, i64 1
  %i.xh = load i8, ptr %.092124.i.i, align 1, !tbaa !9
  %i.xi = getelementptr inbounds nuw i8, ptr %.089125.i.i, i64 1 ; 2 uses
  store i8 %i.xh, ptr %.089125.i.i, align 1, !tbaa !9
  %i.xj = icmp ult ptr %i.xi, %i.vd
  br i1 %i.xj, label %.lr.ph.i.i, label %ZSTD_execSequence.exit.i, !llvm.loop !66

.thread.i102.i:                                   ; preds = %bb.cd, %ZSTD_wildcopy.exit.i.i
  %i.xk = phi i64 [ %i.wo, %bb.cd ], [ %i.va, %ZSTD_wildcopy.exit.i.i ]
  %.294.i.i = phi ptr [ %i.co, %bb.cd ], [ %i.vg, %ZSTD_wildcopy.exit.i.i ] ; 7 uses
  %.2.i103.i = phi ptr [ %i.wp, %bb.cd ], [ %i.vb, %ZSTD_wildcopy.exit.i.i ] ; 8 uses
  %i.xl = icmp ult i64 %.060.i.i, 8
  br i1 %i.xl, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.thread.i102.i
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_execSequence.dec64table, i64 %.060.i.i
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !3
  %i.xo = load i8, ptr %.294.i.i, align 1, !tbaa !9
  store i8 %i.xo, ptr %.2.i103.i, align 1, !tbaa !9
  %i.xp = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 1
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !9
  %i.xr = getelementptr inbounds nuw i8, ptr %.2.i103.i, i64 1
  store i8 %i.xq, ptr %i.xr, align 1, !tbaa !9
  %i.xs = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 2
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !9
  %i.xu = getelementptr inbounds nuw i8, ptr %.2.i103.i, i64 2
  store i8 %i.xt, ptr %i.xu, align 1, !tbaa !9
  %i.xv = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 3
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !9
  %i.xx = getelementptr inbounds nuw i8, ptr %.2.i103.i, i64 3
  store i8 %i.xw, ptr %i.xx, align 1, !tbaa !9
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_execSequence.dec32table, i64 %.060.i.i
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !3
  %i.ya = sext i32 %i.xz to i64
  %i.yb = getelementptr inbounds i8, ptr %.294.i.i, i64 %i.ya ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.2.i103.i, i64 4
  %.val.i106.i = load i32, ptr %i.yb, align 1
  store i32 %.val.i106.i, ptr %i.yc, align 1
  %i.yd = sext i32 %i.xn to i64
  %i.ye = sub nsw i64 0, %i.yd
  %i.yf = getelementptr inbounds i8, ptr %i.yb, i64 %i.ye
  br label %bb.cg

bb.cf:                                            ; preds = %.thread.i102.i
  %.294.val.i.i = load i64, ptr %.294.i.i, align 1
  store i64 %.294.val.i.i, ptr %.2.i103.i, align 1
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.395.i.i = phi ptr [ %i.yf, %bb.ce ], [ %.294.i.i, %bb.cf ] ; 2 uses
  %.395.i.i114 = ptrtoaddr ptr %.395.i.i to i64   ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.2.i103.i, i64 8 ; 11 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.395.i.i, i64 8 ; 10 uses
  %i.yi = icmp ugt ptr %i.vd, %i.qq
  br i1 %i.yi, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.yj = icmp ult ptr %i.yg, %i.ql
  br i1 %i.yj, label %.preheader.i.preheader, label %bb.ci

.preheader.i.preheader:                           ; preds = %bb.ch
  %umax116 = tail call i64 @llvm.umax.i64(i64 %.060.i.i, i64 %i.wi) ; 2 uses
  %i.yk = add i64 %i.qw, %umax116
  %umax117 = tail call i64 @llvm.umax.i64(i64 %i.qr, i64 %i.yk)
  %i.yl = add i64 %umax117, -9
  %i.ym = add i64 %umax116, %i.qo
  %i.yn = sub i64 %i.yl, %i.ym                    ; 2 uses
  %i.yo = lshr i64 %i.yn, 3
  %i.yp = add nuw nsw i64 %i.yo, 1                ; 2 uses
  %min.iters.check118 = icmp ult i64 %i.yn, 72
  br i1 %min.iters.check118, label %.preheader.i.preheader215, label %vector.memcheck112

vector.memcheck112:                               ; preds = %.preheader.i.preheader
  %i.yq = sub i64 %.1.i.i, %i.qo
  %i.yr = add i64 %i.yq, %i.vh
  %umax113 = tail call i64 @llvm.umax.i64(i64 %.060.i.i, i64 %i.yr)
  %i.ys = add i64 %umax113, %i.qo
  %i.yt = sub i64 %.395.i.i114, %i.ys
  %diff.check115 = icmp ugt i64 %i.yt, -32
  br i1 %diff.check115, label %.preheader.i.preheader215, label %vector.ph119

vector.ph119:                                     ; preds = %vector.memcheck112
  %n.vec121 = and i64 %i.yp, 4611686018427387900  ; 3 uses
  %i.yu = shl i64 %n.vec121, 3                    ; 2 uses
  %i.yv = getelementptr i8, ptr %i.yg, i64 %i.yu
  %i.yw = getelementptr i8, ptr %i.yh, i64 %i.yu
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph119
  %index123 = phi i64 [ 0, %vector.ph119 ], [ %index.next128, %vector.body122 ] ; 2 uses
  %i.yx = shl i64 %index123, 3                    ; 2 uses
  %next.gep124 = getelementptr i8, ptr %i.yg, i64 %i.yx ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.yh, i64 %i.yx ; 2 uses
  %i.yy = getelementptr i8, ptr %next.gep125, i64 16
  %wide.load126 = load <2 x i64>, ptr %next.gep125, align 1
  %wide.load127 = load <2 x i64>, ptr %i.yy, align 1
  %i.yz = getelementptr i8, ptr %next.gep124, i64 16
  store <2 x i64> %wide.load126, ptr %next.gep124, align 1
  store <2 x i64> %wide.load127, ptr %i.yz, align 1
  %index.next128 = add nuw i64 %index123, 4       ; 2 uses
  %i.za = icmp eq i64 %index.next128, %n.vec121
  br i1 %i.za, label %middle.block129, label %vector.body122, !llvm.loop !67

middle.block129:                                  ; preds = %vector.body122
  %cmp.n130 = icmp eq i64 %i.yp, %n.vec121
  br i1 %cmp.n130, label %ZSTD_wildcopy.exit114.i.i, label %.preheader.i.preheader215

.preheader.i.preheader215:                        ; preds = %vector.memcheck112, %.preheader.i.preheader, %middle.block129
  %.09.i111.i.i.ph = phi ptr [ %i.yg, %vector.memcheck112 ], [ %i.yg, %.preheader.i.preheader ], [ %i.yv, %middle.block129 ]
  %.0.i112.i.i.ph = phi ptr [ %i.yh, %vector.memcheck112 ], [ %i.yh, %.preheader.i.preheader ], [ %i.yw, %middle.block129 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader215, %.preheader.i
  %.09.i111.i.i = phi ptr [ %i.zb, %.preheader.i ], [ %.09.i111.i.i.ph, %.preheader.i.preheader215 ] ; 2 uses
  %.0.i112.i.i = phi ptr [ %i.zc, %.preheader.i ], [ %.0.i112.i.i.ph, %.preheader.i.preheader215 ] ; 2 uses
  %.0.val.i113.i.i = load i64, ptr %.0.i112.i.i, align 1
  store i64 %.0.val.i113.i.i, ptr %.09.i111.i.i, align 1
  %i.zb = getelementptr inbounds nuw i8, ptr %.09.i111.i.i, i64 8 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.0.i112.i.i, i64 8
  %i.zd = icmp ult ptr %i.zb, %i.ql
  br i1 %i.zd, label %.preheader.i, label %ZSTD_wildcopy.exit114.i.i, !llvm.loop !68

ZSTD_wildcopy.exit114.i.i:                        ; preds = %.preheader.i, %middle.block129
  %i.ze = ptrtoint ptr %i.yg to i64
  %i.zf = sub i64 %i.qr, %i.ze
  %i.zg = getelementptr inbounds i8, ptr %i.yh, i64 %i.zf
  br label %bb.ci

bb.ci:                                            ; preds = %ZSTD_wildcopy.exit114.i.i, %bb.ch
  %.496.i.i = phi ptr [ %i.zg, %ZSTD_wildcopy.exit114.i.i ], [ %i.yh, %bb.ch ] ; 7 uses
  %.3.i105.i = phi ptr [ %i.ql, %ZSTD_wildcopy.exit114.i.i ], [ %i.yg, %bb.ch ] ; 7 uses
  %.496.i.i95 = ptrtoaddr ptr %.496.i.i to i64
  %i.zh = icmp ult ptr %.3.i105.i, %i.vd
  br i1 %i.zh, label %iter.check, label %ZSTD_execSequence.exit.i

iter.check:                                       ; preds = %bb.ci
  %i.zi = add nsw i64 %.162.i.i, 4
  %i.zj = add nsw i64 %i.zi, %.1.i.i
  %i.zk = add i64 %i.zj, %i.vh
  %umax96 = tail call i64 @llvm.umax.i64(i64 %.060.i.i, i64 %i.wi)
  %i.zl = add i64 %i.qv, %umax96
  %umax97 = tail call i64 @llvm.umax.i64(i64 %i.qr, i64 %i.zl)
  %i.zm = sub i64 %i.zk, %umax97                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.zm, 4
  br i1 %min.iters.check, label %.lr.ph128.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.zn = sub i64 %.1.i.i, %i.qo
  %i.zo = add i64 %i.zn, %i.vh
  %umax = tail call i64 @llvm.umax.i64(i64 %.060.i.i, i64 %i.zo)
  %i.zp = add i64 %i.qu, %umax
  %umax94 = tail call i64 @llvm.umax.i64(i64 %i.qt, i64 %i.zp)
  %i.zq = sub i64 %.496.i.i95, %umax94
  %diff.check = icmp ugt i64 %i.zq, -32
  br i1 %diff.check, label %.lr.ph128.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check98 = icmp ult i64 %i.zm, 32
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.zm, 28
  %n.vec = and i64 %i.zm, -32                     ; 5 uses
  %i.zr = getelementptr i8, ptr %.3.i105.i, i64 %n.vec
  %i.zs = getelementptr i8, ptr %.496.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.3.i105.i, i64 %index ; 2 uses
  %next.gep99 = getelementptr i8, ptr %.496.i.i, i64 %index ; 2 uses
  %i.zt = getelementptr i8, ptr %next.gep99, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep99, align 1, !tbaa !9
  %wide.load100 = load <16 x i8>, ptr %i.zt, align 1, !tbaa !9
  %i.zu = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !9
  store <16 x i8> %wide.load100, ptr %i.zu, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.zv = icmp eq i64 %index.next, %n.vec
  br i1 %i.zv, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zm, %n.vec
  br i1 %cmp.n, label %ZSTD_execSequence.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph128.i.i.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec103 = and i64 %i.zm, -4                   ; 4 uses
  %i.zw = getelementptr i8, ptr %.3.i105.i, i64 %n.vec103
  %i.zx = getelementptr i8, ptr %.496.i.i, i64 %n.vec103
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index104 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next108, %vec.epilog.vector.body ] ; 3 uses
  %next.gep105 = getelementptr i8, ptr %.3.i105.i, i64 %index104
  %next.gep106 = getelementptr i8, ptr %.496.i.i, i64 %index104
  %wide.load107 = load <4 x i8>, ptr %next.gep106, align 1, !tbaa !9
  store <4 x i8> %wide.load107, ptr %next.gep105, align 1, !tbaa !9
  %index.next108 = add nuw i64 %index104, 4       ; 2 uses
  %i.zy = icmp eq i64 %index.next108, %n.vec103
  br i1 %i.zy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n109 = icmp eq i64 %i.zm, %n.vec103
  br i1 %cmp.n109, label %ZSTD_execSequence.exit.i, label %.lr.ph128.i.i.preheader

.lr.ph128.i.i.preheader:                          ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.4127.i.i.ph = phi ptr [ %.3.i105.i, %iter.check ], [ %.3.i105.i, %vector.memcheck ], [ %i.zr, %vec.epilog.iter.check ], [ %i.zw, %vec.epilog.middle.block ]
  %.5126.i.i.ph = phi ptr [ %.496.i.i, %iter.check ], [ %.496.i.i, %vector.memcheck ], [ %i.zs, %vec.epilog.iter.check ], [ %i.zx, %vec.epilog.middle.block ]
  br label %.lr.ph128.i.i

.lr.ph128.i.i:                                    ; preds = %.lr.ph128.i.i.preheader, %.lr.ph128.i.i
  %.4127.i.i = phi ptr [ %i.aab, %.lr.ph128.i.i ], [ %.4127.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %.5126.i.i = phi ptr [ %i.zz, %.lr.ph128.i.i ], [ %.5126.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.5126.i.i, i64 1
  %i.aaa = load i8, ptr %.5126.i.i, align 1, !tbaa !9
  %i.aab = getelementptr inbounds nuw i8, ptr %.4127.i.i, i64 1 ; 2 uses
  store i8 %i.aaa, ptr %.4127.i.i, align 1, !tbaa !9
  %i.aac = icmp ult ptr %i.aab, %i.vd
  br i1 %i.aac, label %.lr.ph128.i.i, label %ZSTD_execSequence.exit.i, !llvm.loop !71

bb.cj:                                            ; preds = %bb.cg
  %i.aad = getelementptr i8, ptr %.2.i103.i, i64 %i.xk
  %i.aae = add i64 %i.qx, %.162.i.i
  %umin = tail call i64 @llvm.umin.i64(i64 %.060.i.i, i64 %i.wi)
  %i.aaf = add i64 %i.aae, %umin
  %umax135 = tail call i64 @llvm.umax.i64(i64 %.060.i.i, i64 %i.wi) ; 3 uses
  %i.aag = add i64 %i.aaf, %umax135
  %i.aah = sub i64 %i.aag, %.060.i.i
  %i.aai = add i64 %i.qy, %umax135
  %umax136 = tail call i64 @llvm.umax.i64(i64 %i.aah, i64 %i.aai)
  %i.aaj = add i64 %umax136, -9
  %i.aak = add i64 %umax135, %i.qo
  %i.aal = sub i64 %i.aaj, %i.aak                 ; 2 uses
  %i.aam = lshr i64 %i.aal, 3
  %i.aan = add nuw nsw i64 %i.aam, 1              ; 2 uses
  %min.iters.check138 = icmp ult i64 %i.aal, 72
  br i1 %min.iters.check138, label %scalar.ph137.preheader, label %vector.memcheck132

vector.memcheck132:                               ; preds = %bb.cj
  %i.aao = sub i64 %.1.i.i, %i.qo
  %i.aap = add i64 %i.aao, %i.vh
  %umax133 = tail call i64 @llvm.umax.i64(i64 %.060.i.i, i64 %i.aap)
  %i.aaq = add i64 %umax133, %i.qo
  %i.aar = sub i64 %.395.i.i114, %i.aaq
  %diff.check134 = icmp ugt i64 %i.aar, -32
  br i1 %diff.check134, label %scalar.ph137.preheader, label %vector.ph139

vector.ph139:                                     ; preds = %vector.memcheck132
  %n.vec141 = and i64 %i.aan, 4611686018427387900 ; 3 uses
  %i.aas = shl i64 %n.vec141, 3                   ; 2 uses
  %i.aat = getelementptr i8, ptr %i.yg, i64 %i.aas
  %i.aau = getelementptr i8, ptr %i.yh, i64 %i.aas
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph139
  %index143 = phi i64 [ 0, %vector.ph139 ], [ %index.next148, %vector.body142 ] ; 2 uses
  %i.aav = shl i64 %index143, 3                   ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.yg, i64 %i.aav ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.yh, i64 %i.aav ; 2 uses
  %i.aaw = getelementptr i8, ptr %next.gep145, i64 16
  %wide.load146 = load <2 x i64>, ptr %next.gep145, align 1
  %wide.load147 = load <2 x i64>, ptr %i.aaw, align 1
  %i.aax = getelementptr i8, ptr %next.gep144, i64 16
  store <2 x i64> %wide.load146, ptr %next.gep144, align 1
  store <2 x i64> %wide.load147, ptr %i.aax, align 1
  %index.next148 = add nuw i64 %index143, 4       ; 2 uses
  %i.aay = icmp eq i64 %index.next148, %n.vec141
  br i1 %i.aay, label %middle.block149, label %vector.body142, !llvm.loop !72

middle.block149:                                  ; preds = %vector.body142
  %cmp.n150 = icmp eq i64 %i.aan, %n.vec141
  br i1 %cmp.n150, label %ZSTD_execSequence.exit.i, label %scalar.ph137.preheader

scalar.ph137.preheader:                           ; preds = %vector.memcheck132, %bb.cj, %middle.block149
  %.09.i115.i.i.ph = phi ptr [ %i.yg, %vector.memcheck132 ], [ %i.yg, %bb.cj ], [ %i.aat, %middle.block149 ]
  %.0.i116.i.i.ph = phi ptr [ %i.yh, %vector.memcheck132 ], [ %i.yh, %bb.cj ], [ %i.aau, %middle.block149 ]
  br label %scalar.ph137

scalar.ph137:                                     ; preds = %scalar.ph137.preheader, %scalar.ph137
  %.09.i115.i.i = phi ptr [ %i.aaz, %scalar.ph137 ], [ %.09.i115.i.i.ph, %scalar.ph137.preheader ] ; 2 uses
  %.0.i116.i.i = phi ptr [ %i.aba, %scalar.ph137 ], [ %.0.i116.i.i.ph, %scalar.ph137.preheader ] ; 2 uses
  %.0.val.i117.i.i = load i64, ptr %.0.i116.i.i, align 1
  store i64 %.0.val.i117.i.i, ptr %.09.i115.i.i, align 1
  %i.aaz = getelementptr inbounds nuw i8, ptr %.09.i115.i.i, i64 8 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.0.i116.i.i, i64 8
  %i.abb = icmp ult ptr %i.aaz, %i.aad
  br i1 %i.abb, label %scalar.ph137, label %ZSTD_execSequence.exit.i, !llvm.loop !73

ZSTD_execSequence.exit.i:                         ; preds = %.lr.ph.i.i, %scalar.ph137, %.lr.ph128.i.i, %middle.block170, %vec.epilog.middle.block188, %middle.block149, %middle.block, %vec.epilog.middle.block, %bb.ci, %bb.cc
  %i.abc = icmp ugt i32 %i.ua, 64
  br i1 %i.abc, label %ZSTD_decompressSequences.exit, label %bb.bh

BIT_reloadDStream.exit.thread.i:                  ; preds = %BIT_reloadDStream.exit.i
  %i.abd = icmp eq i32 %.sroa.20.8.i, 64
  %i.abe = icmp eq ptr %.sroa.42110.8.i, %.786120.i.i
  %or.cond.i19 = and i1 %i.abd, %i.abe
  br i1 %or.cond.i19, label %bb.ck, label %ZSTD_decompressSequences.exit

bb.ck:                                            ; preds = %BIT_reloadDStream.exit.thread.i
  %i.abf = ptrtoint ptr %.0135194.i to i64
  %i.abg = sub i64 %i.qn, %i.abf                  ; 2 uses
  %i.abh = icmp ugt ptr %.0135194.i, %i.ck
  br i1 %i.abh, label %ZSTD_decompressSequences.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.abi = getelementptr inbounds nuw i8, ptr %.063198.i, i64 %i.abg ; 3 uses
  %i.abj = icmp ugt ptr %i.abi, %i.cj
  br i1 %i.abj, label %ZSTD_decompressSequences.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.not74.i = icmp eq ptr %i.ck, %.0135194.i
  br i1 %.not74.i, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.not75.i = icmp eq ptr %.063198.i, %.0135194.i
  br i1 %.not75.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.063198.i, ptr align 1 %.0135194.i, i64 %i.abg, i1 false)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm
  %.467.i = phi ptr [ %i.abi, %bb.co ], [ %i.abi, %bb.cn ], [ %.063198.i, %bb.cm ]
  %i.abk = ptrtoint ptr %.467.i to i64
  %i.abl = ptrtoint ptr %1 to i64
  %i.abm = sub i64 %i.abk, %i.abl
  br label %ZSTD_decompressSequences.exit

ZSTD_decompressSequences.exit:                    ; preds = %ZSTD_execSequence.exit.i, %bb.ca, %bb.bz, %bb.by, %bb.bx, %ZSTD_decodeSequence.exit.i, %bb.k, %bb.b, %bb.n, %bb.cp, %bb.cl, %bb.ck, %BIT_reloadDStream.exit.thread.i, %FSE_initDState.exit96.i, %FSE_initDState.exit87.i, %BIT_initDStream.exit.i, %bb.av, %bb.an, %bb.al, %ZSTD_decodeSeqHeaders.exit.i, %ZSTD_decodeSeqHeaders.exit.thread.i, %ZSTD_decodeLiteralsBlock.exit.thread28, %bb.a
  %.0 = phi i64 [ -20, %bb.n ], [ -20, %bb.a ], [ -20, %ZSTD_decodeLiteralsBlock.exit.thread28 ], [ %.7.i.ph.i, %ZSTD_decodeSeqHeaders.exit.thread.i ], [ %i.abm, %bb.cp ], [ %i.lc, %ZSTD_decodeSeqHeaders.exit.i ], [ -20, %bb.an ], [ -20, %BIT_initDStream.exit.i ], [ -20, %bb.ck ], [ -70, %bb.cl ], [ -20, %BIT_reloadDStream.exit.thread.i ], [ -20, %bb.al ], [ -20, %bb.av ], [ -20, %FSE_initDState.exit96.i ], [ -20, %FSE_initDState.exit87.i ], [ -20, %bb.k ], [ -20, %bb.b ], [ -20, %ZSTD_execSequence.exit.i ], [ -70, %ZSTD_decodeSequence.exit.i ], [ -20, %bb.ca ], [ -20, %bb.bz ], [ -70, %bb.by ], [ -20, %bb.bx ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @HUF_decompress4X2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #12 {
bb.a:
  %4 = alloca %struct.BIT_DStream_t, align 8      ; 18 uses
  %5 = alloca %struct.BIT_DStream_t, align 8      ; 18 uses
  %6 = alloca %struct.BIT_DStream_t, align 8      ; 18 uses
  %7 = alloca %struct.BIT_DStream_t, align 8      ; 12 uses
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca [17 x i32], align 16              ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca [4097 x i16], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8194) %i.e, i8 0, i64 8194, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 0, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 24 uses
  %i.g = call fastcc i64 @HUF_readStats(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.c, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.h = icmp ult i64 %i.g, -119
  br i1 %i.h, label %bb.b, label %HUF_readDTableX2.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.c, align 4, !tbaa !3    ; 12 uses
  %i.j = icmp ugt i32 %i.i, 12
  br i1 %i.j, label %HUF_readDTableX2.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = trunc nuw nsw i32 %i.i to i16
  store i16 %i.k, ptr %i.e, align 16, !tbaa !58
  %.not3738.i = icmp eq i32 %i.i, 0
  br i1 %.not3738.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.l = zext nneg i32 %i.i to i64                ; 2 uses
  %xtraiter = and i64 %i.l, 1
  %i.m = icmp eq i32 %i.i, 1
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.l, 14
  br label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader.i.loopexit.unr-lcssa ]
  %.03439.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ac, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod128 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.epil.init
  store i32 %.03439.i.epil.init, ptr %i.n, align 4, !tbaa !3
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i.epil.preheader, %.preheader.i.loopexit.unr-lcssa, %bb.c
  %i.o = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %HUF_readDTableX2.exit.thread23, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.preheader.i
  %i.p = trunc nuw nsw i32 %i.i to i8
  %i.q = add nuw nsw i8 %i.p, 1
  %wide.trip.count54.i = zext i32 %i.o to i64
  br label %bb.d

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %.03439.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ac, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = trunc i64 %indvars.iv.i to i32
  %i.u = add nsw i32 %i.t, -1
  %i.v = shl i32 %i.s, %i.u
  %i.w = add i32 %i.v, %.03439.i                  ; 2 uses
  store i32 %.03439.i, ptr %i.r, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = trunc i64 %indvars.iv.next.i to i32
  %i.aa = add i32 %i.z, -1
  %i.ab = shl i32 %i.y, %i.aa
  %i.ac = add i32 %i.ab, %i.w                     ; 2 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !74

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph44.i
  %indvars.iv51.i = phi i64 [ 0, %.lr.ph44.i ], [ %indvars.iv.next52.i, %._crit_edge.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv51.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9   ; 3 uses
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = ashr i32 %i.ag, 1
  %i.ai = trunc i64 %indvars.iv51.i to i8         ; 3 uses
  %i.aj = sub i8 %i.q, %i.ae                      ; 3 uses
  %i.ak = zext i8 %i.ae to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3  ; 3 uses
  %i.an = add i32 %i.ah, %i.am                    ; 3 uses
  %i.ao = icmp ult i32 %i.am, %i.an
  br i1 %i.ao, label %iter.check, label %._crit_edge.i
end_hunk_0
begin_hunk_1_@HUF_decompress4X4:bb.a

.lr.ph87.preheader.i:                             ; preds = %.preheader80.i
  %i.u = zext i32 %.066.lcssa.i to i64            ; 2 uses
  %xtraiter = and i64 %i.u, 3                     ; 3 uses
  %i.v = icmp ult i32 %.066.lcssa.i, 4
  br i1 %i.v, label %.lr.ph87.i.epil.preheader, label %.lr.ph87.preheader.i.new

.lr.ph87.preheader.i.new:                         ; preds = %.lr.ph87.preheader.i
  %unroll_iter = and i64 %i.u, 4294967292
  br label %.lr.ph87.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %.not79.i = icmp eq i64 %i.w, 0
  br i1 %.not79.i, label %HUF_readDTableX4.exit.thread, label %.lr.ph, !llvm.loop !90

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i114 = phi i64 [ %i.w, %.lr.ph.i ], [ %i.p, %.lr.ph.i.preheader ]
  %i.w = add nsw i64 %indvars.iv.i114, -1         ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i, label %.preheader80.loopexit.i, !llvm.loop !90

.lr.ph87.i:                                       ; preds = %.lr.ph87.i, %.lr.ph87.preheader.i.new
  %indvars.iv109.i = phi i64 [ 1, %.lr.ph87.preheader.i.new ], [ %indvars.iv.next110.i.3, %.lr.ph87.i ] ; 6 uses
  %.07185.i = phi i32 [ 0, %.lr.ph87.preheader.i.new ], [ %i.ao, %.lr.ph87.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph87.preheader.i.new ], [ %niter.next.3, %.lr.ph87.i ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv109.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = add i32 %i.ab, %.07185.i                ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv109.i
  store i32 %.07185.i, ptr %i.ad, align 4, !tbaa !3
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next110.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = add i32 %i.af, %i.ac                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next110.i
  store i32 %i.ac, ptr %i.ah, align 4, !tbaa !3
  %indvars.iv.next110.i.1 = add nuw nsw i64 %indvars.iv109.i, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next110.i.1
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = add i32 %i.aj, %i.ag                    ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next110.i.1
  store i32 %i.ag, ptr %i.al, align 4, !tbaa !3
  %indvars.iv.next110.i.2 = add nuw nsw i64 %indvars.iv109.i, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next110.i.2
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = add i32 %i.an, %i.ak                    ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next110.i.2
  store i32 %i.ak, ptr %i.ap, align 4, !tbaa !3
  %indvars.iv.next110.i.3 = add nuw nsw i64 %indvars.iv109.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph87.i, !llvm.loop !91

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph87.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph87.i.epil.preheader

.lr.ph87.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph87.preheader.i
  %indvars.iv109.i.epil.init = phi i64 [ 1, %.lr.ph87.preheader.i ], [ %indvars.iv.next110.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.07185.i.epil.init = phi i32 [ 0, %.lr.ph87.preheader.i ], [ %i.ao, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod174 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod174)
  br label %.lr.ph87.i.epil

.lr.ph87.i.epil:                                  ; preds = %.lr.ph87.i.epil, %.lr.ph87.i.epil.preheader
  %indvars.iv109.i.epil = phi i64 [ %indvars.iv109.i.epil.init, %.lr.ph87.i.epil.preheader ], [ %indvars.iv.next110.i.epil, %.lr.ph87.i.epil ] ; 3 uses
  %.07185.i.epil = phi i32 [ %.07185.i.epil.init, %.lr.ph87.i.epil.preheader ], [ %i.as, %.lr.ph87.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph87.i.epil.preheader ], [ %epil.iter.next, %.lr.ph87.i.epil ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv109.i.epil
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = add i32 %i.ar, %.07185.i.epil           ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv109.i.epil
  store i32 %.07185.i.epil, ptr %i.at, align 4, !tbaa !3
  %indvars.iv.next110.i.epil = add nuw nsw i64 %indvars.iv109.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph87.i.epil, !llvm.loop !92

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph87.i.epil, %.preheader80.i
  %.071.lcssa.i = phi i32 [ 0, %.preheader80.i ], [ %i.ao, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.as, %.lr.ph87.i.epil ] ; 5 uses
  store i32 %.071.lcssa.i, ptr %i.j, align 4, !tbaa !3
  %i.au = load i32, ptr %i.h, align 4, !tbaa !3   ; 4 uses
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %._crit_edge92.i, label %.lr.ph91.preheader.i

.lr.ph91.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count115.i = zext i32 %i.au to i64   ; 2 uses
  %xtraiter175 = and i64 %wide.trip.count115.i, 1
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %.lr.ph91.i.epil.preheader, label %.lr.ph91.preheader.i.new

.lr.ph91.preheader.i.new:                         ; preds = %.lr.ph91.preheader.i
  %unroll_iter179 = and i64 %wide.trip.count115.i, 4294967294
  br label %.lr.ph91.i

.lr.ph91.i:                                       ; preds = %.lr.ph91.i, %.lr.ph91.preheader.i.new
  %indvars.iv112.i = phi i64 [ 0, %.lr.ph91.preheader.i.new ], [ %indvars.iv.next113.i.1, %.lr.ph91.i ] ; 4 uses
  %niter180 = phi i64 [ 0, %.lr.ph91.preheader.i.new ], [ %niter180.next.1, %.lr.ph91.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv112.i
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !9   ; 2 uses
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3  ; 2 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !3
  %i.bc = trunc i64 %indvars.iv112.i to i8
  %i.bd = zext i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bd ; 2 uses
  store i8 %i.bc, ptr %i.be, align 2, !tbaa !85
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.ax, ptr %i.bf, align 1, !tbaa !87
  %indvars.iv.next113.i = or disjoint i64 %indvars.iv112.i, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next113.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !9   ; 2 uses
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3  ; 2 uses
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !3
  %i.bm = trunc i64 %indvars.iv.next113.i to i8
  %i.bn = zext i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bn ; 2 uses
  store i8 %i.bm, ptr %i.bo, align 2, !tbaa !85
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store i8 %i.bh, ptr %i.bp, align 1, !tbaa !87
  %indvars.iv.next113.i.1 = add nuw nsw i64 %indvars.iv112.i, 2 ; 2 uses
  %niter180.next.1 = add i64 %niter180, 2         ; 2 uses
  %niter180.ncmp.1 = icmp eq i64 %niter180.next.1, %unroll_iter179
  br i1 %niter180.ncmp.1, label %._crit_edge92.i.loopexit.unr-lcssa, label %.lr.ph91.i, !llvm.loop !94

._crit_edge92.i.loopexit.unr-lcssa:               ; preds = %.lr.ph91.i
  %lcmp.mod177.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod177.not, label %._crit_edge92.i, label %.lr.ph91.i.epil.preheader

.lr.ph91.i.epil.preheader:                        ; preds = %._crit_edge92.i.loopexit.unr-lcssa, %.lr.ph91.preheader.i
  %indvars.iv112.i.epil.init = phi i64 [ 0, %.lr.ph91.preheader.i ], [ %indvars.iv.next113.i.1, %._crit_edge92.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod178 = trunc i32 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv112.i.epil.init
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !9   ; 2 uses
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3  ; 2 uses
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !3
  %i.bw = trunc i64 %indvars.iv112.i.epil.init to i8
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bx ; 2 uses
  store i8 %i.bw, ptr %i.by, align 2, !tbaa !85
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %i.br, ptr %i.bz, align 1, !tbaa !87
  br label %._crit_edge92.i

._crit_edge92.i:                                  ; preds = %.lr.ph91.i.epil.preheader, %._crit_edge92.i.loopexit.unr-lcssa, %._crit_edge.i
  store i32 0, ptr %i.j, align 4, !tbaa !3
  %i.ca = add nuw nsw i32 %i.n, 1                 ; 3 uses
  %i.cb = sub nsw i32 %i.ca, %.066.lcssa.i        ; 4 uses
  br i1 %.not7584.i, label %._crit_edge106.split.i, label %.lr.ph97.preheader.i

.lr.ph97.preheader.i:                             ; preds = %._crit_edge92.i
  %i.cc = add nuw nsw i32 %.066.lcssa.i, 1        ; 2 uses
  %wide.trip.count120.i = zext nneg i32 %i.cc to i64 ; 2 uses
  %i.cd = zext i32 %.066.lcssa.i to i64           ; 2 uses
  %xtraiter181 = and i64 %i.cd, 1
  %i.ce = icmp eq i32 %i.cc, 2
  br i1 %i.ce, label %.lr.ph97.i.epil.preheader, label %.lr.ph97.preheader.i.new

.lr.ph97.preheader.i.new:                         ; preds = %.lr.ph97.preheader.i
  %unroll_iter185 = and i64 %i.cd, 4294967294
  %invariant.op = sub i32 11, %i.n
  %invariant.op201 = sub i32 11, %i.n
  br label %.lr.ph97.i

.preheader.i.unr-lcssa:                           ; preds = %.lr.ph97.i
  %lcmp.mod183.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod183.not, label %.preheader.i, label %.lr.ph97.i.epil.preheader

.lr.ph97.i.epil.preheader:                        ; preds = %.preheader.i.unr-lcssa, %.lr.ph97.preheader.i
  %indvars.iv117.i.epil.init = phi i64 [ 1, %.lr.ph97.preheader.i ], [ %indvars.iv.next118.i.1, %.preheader.i.unr-lcssa ]
  %.07094.i.epil.init = phi i32 [ 0, %.lr.ph97.preheader.i ], [ %i.cu, %.preheader.i.unr-lcssa ]
  %lcmp.mod184 = trunc i32 %.066.lcssa.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv117.i.epil.init
  store i32 %.07094.i.epil.init, ptr %i.cf, align 4, !tbaa !3
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.lr.ph97.i.epil.preheader
  %i.cg = sub nsw i32 12, %i.cb                   ; 2 uses
  %.not77103.i = icmp ugt i32 %i.cb, %i.cg
  br i1 %.not77103.i, label %._crit_edge106.split.i, label %.lr.ph101.i.preheader

.lr.ph101.i.preheader:                            ; preds = %.preheader.i
  %i.ch = zext i32 %.066.lcssa.i to i64
  %i.ci = zext i32 %.066.lcssa.i to i64           ; 2 uses
  %min.iters.check = icmp ult i32 %.066.lcssa.i, 8
  %n.vec = and i64 %i.ci, 4294967288              ; 3 uses
  %i.cj = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.ci
  br label %.lr.ph101.i

.lr.ph97.i:                                       ; preds = %.lr.ph97.i, %.lr.ph97.preheader.i.new
  %indvars.iv117.i = phi i64 [ 1, %.lr.ph97.preheader.i.new ], [ %indvars.iv.next118.i.1, %.lr.ph97.i ] ; 5 uses
  %.07094.i = phi i32 [ 0, %.lr.ph97.preheader.i.new ], [ %i.cu, %.lr.ph97.i ] ; 2 uses
  %niter186 = phi i64 [ 0, %.lr.ph97.preheader.i.new ], [ %niter186.next.1, %.lr.ph97.i ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv117.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = trunc nuw nsw i64 %indvars.iv117.i to i32
  %.reass.reass = add i32 %i.cm, %invariant.op
  %i.cn = shl i32 %i.cl, %.reass.reass
  %i.co = add i32 %i.cn, %.07094.i                ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv117.i
  store i32 %.07094.i, ptr %i.cp, align 4, !tbaa !3
  %indvars.iv.next118.i = add nuw nsw i64 %indvars.iv117.i, 1 ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next118.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = trunc nuw nsw i64 %indvars.iv.next118.i to i32
  %.reass.1.reass = add i32 %i.cs, %invariant.op201
  %i.ct = shl i32 %i.cr, %.reass.1.reass
  %i.cu = add i32 %i.ct, %i.co                    ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next118.i
  store i32 %i.co, ptr %i.cv, align 4, !tbaa !3
  %indvars.iv.next118.i.1 = add nuw nsw i64 %indvars.iv117.i, 2 ; 2 uses
  %niter186.next.1 = add nuw i64 %niter186, 2     ; 2 uses
  %niter186.ncmp.1 = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %niter186.ncmp.1, label %.preheader.i.unr-lcssa, label %.lr.ph97.i, !llvm.loop !95

.lr.ph101.i:                                      ; preds = %.lr.ph101.i.preheader, %._crit_edge102.i
  %.068104.i = phi i32 [ %i.ec, %._crit_edge102.i ], [ %i.cb, %.lr.ph101.i.preheader ] ; 9 uses
  %9 = zext i32 %.068104.i to i64
  %10 = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %9 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %.lr.ph101.i.a

.lr.ph101.i.a:                                    ; preds = %.lr.ph101.i
  %i.cw = zext i32 %.068104.i to i64
  %11 = mul nuw nsw i64 %i.cw, 68
  %12 = add nsw i64 %11, -1
  %diff.check = icmp ult i64 %12, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph101.i.a
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.068104.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = or disjoint i64 %index, 1               ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load = load <4 x i32>, ptr %i.cy, align 4, !tbaa !3
  %wide.load115 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !3
  %i.da = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.db = lshr <4 x i32> %wide.load115, %broadcast.splat
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.cx ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <4 x i32> %i.da, ptr %i.dc, align 4, !tbaa !3
  store <4 x i32> %i.db, ptr %i.dd, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge102.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph101.i.a, %.lr.ph101.i, %middle.block
  %indvars.iv122.i.ph = phi i64 [ 1, %.lr.ph101.i.a ], [ 1, %.lr.ph101.i ], [ %i.cj, %middle.block ] ; 4 uses
  %i.df = sub nsw i64 %wide.trip.count120.i, %indvars.iv122.i.ph
  %i.dg = sub nsw i64 %i.ch, %indvars.iv122.i.ph
  %xtraiter187 = and i64 %i.df, 3                 ; 2 uses
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv122.i.prol = phi i64 [ %indvars.iv.next123.i.prol, %scalar.ph.prol ], [ %indvars.iv122.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv122.i.prol
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dj = lshr i32 %i.di, %.068104.i
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv122.i.prol
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !3
  %indvars.iv.next123.i.prol = add nuw nsw i64 %indvars.iv122.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter187
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !97

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv122.i.unr = phi i64 [ %indvars.iv122.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next123.i.prol, %scalar.ph.prol ]
  %i.dl = icmp ult i64 %i.dg, 3
  br i1 %i.dl, label %._crit_edge102.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i.3, %scalar.ph ], [ %indvars.iv122.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv122.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.do = lshr i32 %i.dn, %.068104.i
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv122.i
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !3
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next123.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = lshr i32 %i.dr, %.068104.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next123.i
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !3
  %indvars.iv.next123.i.1 = add nuw nsw i64 %indvars.iv122.i, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next123.i.1
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = lshr i32 %i.dv, %.068104.i
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next123.i.1
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !3
  %indvars.iv.next123.i.2 = add nuw nsw i64 %indvars.iv122.i, 3 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next123.i.2
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = lshr i32 %i.dz, %.068104.i
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next123.i.2
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !3
  %indvars.iv.next123.i.3 = add nuw nsw i64 %indvars.iv122.i, 4 ; 2 uses
  %exitcond126.not.i.3 = icmp eq i64 %indvars.iv.next123.i.3, %wide.trip.count120.i
  br i1 %exitcond126.not.i.3, label %._crit_edge102.i, label %scalar.ph, !llvm.loop !98

._crit_edge102.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ec = add i32 %.068104.i, 1                   ; 2 uses
  %.not77.i = icmp ugt i32 %i.ec, %i.cg
  br i1 %.not77.i, label %._crit_edge106.split.i, label %.lr.ph101.i, !llvm.loop !99

._crit_edge106.split.i:                           ; preds = %._crit_edge102.i, %.preheader.i, %._crit_edge92.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ed = add nsw i32 %i.n, -11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(68) %i.f, i64 68, i1 false)
  %.not56.i.i = icmp eq i32 %.071.lcssa.i, 0
  br i1 %.not56.i.i, label %HUF_readDTableX4.exit, label %.lr.ph55.preheader.i.i

.lr.ph55.preheader.i.i:                           ; preds = %._crit_edge106.split.i
  %wide.trip.count61.i.i = zext i32 %.071.lcssa.i to i64
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph55.preheader.i.i
  %indvars.iv58.i.i = phi i64 [ 0, %.lr.ph55.preheader.i.i ], [ %indvars.iv.next59.i.i, %.loopexit.i.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %indvars.iv58.i.i ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 2, !tbaa !85
  %i.eg = zext i8 %i.ef to i32                    ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !87  ; 2 uses
  %i.ej = zext i8 %i.ei to i32
  %i.ek = sub nsw i32 %i.ca, %i.ej                ; 6 uses
  %i.el = zext i8 %i.ei to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3  ; 5 uses
  %i.eo = sub nsw i32 12, %i.ek                   ; 3 uses
  %i.ep = shl nuw i32 1, %i.eo                    ; 2 uses
  %.not.i.i = icmp ult i32 %i.eo, %i.cb
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph55.i.i
  %i.eq = add nsw i32 %i.ed, %i.ek                ; 2 uses
  %spec.store.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.eq, i32 1)
  %i.er = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3  ; 3 uses
  %i.eu = zext i32 %i.en to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.eu ; 4 uses
  %i.ew = zext i32 %i.ek to i64
  %i.ex = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %i.ew
  %i.ey = zext i32 %i.et to i64
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.ey
  %i.fa = sub i32 %.071.lcssa.i, %i.et
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(68) %i.ex, i64 68, i1 false)
  %i.fb = icmp sgt i32 %i.eq, 1
  br i1 %i.fb, label %bb.d, label %.loopexit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.er
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3  ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %.sroa.6.0.insert.ext42.i.i.i = shl nsw i32 %i.ek, 16
  %.sroa.6.0.insert.shift43.i.i.i = and i32 %.sroa.6.0.insert.ext42.i.i.i, 16711680
  %.sroa.6.0.insert.insert45.i.i.i = or disjoint i32 %.sroa.6.0.insert.shift43.i.i.i, %i.eg
  %.sroa.0.0.insert.insert40.i.i.i = or disjoint i32 %.sroa.6.0.insert.insert45.i.i.i, 16777216 ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.fd to i64  ; 3 uses
  %min.iters.check144 = icmp ult i32 %i.fd, 8
  br i1 %min.iters.check144, label %scalar.ph143.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %.lr.ph.i.i.i
  %n.vec147 = and i64 %wide.trip.count.i.i.i, 4294967288 ; 3 uses
  %broadcast.splatinsert148 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert40.i.i.i, i64 0
  %broadcast.splat149 = shufflevector <4 x i32> %broadcast.splatinsert148, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph145
  %index151 = phi i64 [ 0, %vector.ph145 ], [ %index.next152, %vector.body150 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index151 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <4 x i32> %broadcast.splat149, ptr %i.fe, align 4
  store <4 x i32> %broadcast.splat149, ptr %i.ff, align 4
  %index.next152 = add nuw i64 %index151, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next152, %n.vec147
  br i1 %i.fg, label %middle.block153, label %vector.body150, !llvm.loop !100

middle.block153:                                  ; preds = %vector.body150
  %cmp.n154 = icmp eq i64 %n.vec147, %wide.trip.count.i.i.i
  br i1 %cmp.n154, label %.loopexit.i.i.i, label %scalar.ph143.preheader

scalar.ph143.preheader:                           ; preds = %.lr.ph.i.i.i, %middle.block153
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec147, %middle.block153 ]
  br label %scalar.ph143

scalar.ph143:                                     ; preds = %scalar.ph143.preheader, %scalar.ph143
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph143 ], [ %indvars.iv.i.i.i.ph, %scalar.ph143.preheader ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.i.i.i
  store i32 %.sroa.0.0.insert.insert40.i.i.i, ptr %i.fh, align 4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %scalar.ph143, !llvm.loop !101

.loopexit.i.i.i:                                  ; preds = %scalar.ph143, %middle.block153, %bb.d, %bb.c
  %.not54.i.i.i = icmp eq i32 %.071.lcssa.i, %i.et
  br i1 %.not54.i.i.i, label %HUF_fillDTableX4Level2.exit.i.i, label %.lr.ph53.preheader.i.i.i

.lr.ph53.preheader.i.i.i:                         ; preds = %.loopexit.i.i.i
  %wide.trip.count59.i.i.i = zext i32 %i.fa to i64
  %invariant.op.i.i = or disjoint i32 %i.eg, 33554432
  br label %.lr.ph53.i.i.i

.lr.ph53.i.i.i:                                   ; preds = %.loopexit, %.lr.ph53.preheader.i.i.i
  %indvars.iv56.i.i.i = phi i64 [ 0, %.lr.ph53.preheader.i.i.i ], [ %indvars.iv.next57.i.i.i, %.loopexit ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %indvars.iv56.i.i.i ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !85
  %i.fk = zext i8 %i.fj to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !87  ; 2 uses
  %i.fn = zext i8 %i.fm to i32
  %i.fo = sub nsw i32 %i.ca, %i.fn                ; 2 uses
  %i.fp = sub nsw i32 %i.eo, %i.fo
  %i.fq = shl nuw i32 1, %i.fp
  %i.fr = zext i8 %i.fm to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fr ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3  ; 9 uses
  %i.fu = add i32 %i.fq, %i.ft                    ; 4 uses
  %i.fv = shl nuw nsw i32 %i.fk, 8
  %i.fw = add nsw i32 %i.fo, %i.ek
  %.sroa.6.0.insert.ext.i.i.i = shl nsw i32 %i.fw, 16
  %.sroa.6.0.insert.shift.i.i.i = and i32 %.sroa.6.0.insert.ext.i.i.i, 16711680
  %i.fx = or disjoint i32 %.sroa.6.0.insert.shift.i.i.i, %i.fv
  %.sroa.0.0.insert.insert.i.reass.i.i = or disjoint i32 %i.fx, %invariant.op.i.i ; 2 uses
  %i.fy = add i32 %i.ft, 1
  %umax129 = tail call i32 @llvm.umax.i32(i32 %i.fu, i32 %i.fy)
  %i.fz = sub i32 %umax129, %i.ft                 ; 3 uses
  %min.iters.check131 = icmp ult i32 %i.fz, 16
  br i1 %min.iters.check131, label %scalar.ph130.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph53.i.i.i
  %i.ga = add i32 %i.ft, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.fu, i32 %i.ga)
  %i.gb = add i32 %umax, -1
  %i.gc = icmp ult i32 %i.gb, %i.ft
  br i1 %i.gc, label %scalar.ph130.preheader, label %vector.ph132

vector.ph132:                                     ; preds = %vector.scevcheck
  %n.vec134 = and i32 %i.fz, -8                   ; 3 uses
  %i.gd = add i32 %i.ft, %n.vec134
  %broadcast.splatinsert135 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert.i.reass.i.i, i64 0
  %broadcast.splat136 = shufflevector <4 x i32> %broadcast.splatinsert135, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph132
  %index138 = phi i32 [ 0, %vector.ph132 ], [ %index.next139, %vector.body137 ] ; 2 uses
  %i.ge = add i32 %i.ft, %index138
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.gf ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store <4 x i32> %broadcast.splat136, ptr %i.gg, align 4
  store <4 x i32> %broadcast.splat136, ptr %i.gh, align 4
  %index.next139 = add nuw i32 %index138, 8       ; 2 uses
  %i.gi = icmp eq i32 %index.next139, %n.vec134
  br i1 %i.gi, label %middle.block140, label %vector.body137, !llvm.loop !102

middle.block140:                                  ; preds = %vector.body137
  %cmp.n141 = icmp eq i32 %i.fz, %n.vec134
  br i1 %cmp.n141, label %.loopexit, label %scalar.ph130.preheader

scalar.ph130.preheader:                           ; preds = %vector.scevcheck, %.lr.ph53.i.i.i, %middle.block140
  %.034.i.i.i.ph = phi i32 [ %i.ft, %vector.scevcheck ], [ %i.ft, %.lr.ph53.i.i.i ], [ %i.gd, %middle.block140 ]
  br label %scalar.ph130

scalar.ph130:                                     ; preds = %scalar.ph130.preheader, %scalar.ph130
  %.034.i.i.i = phi i32 [ %i.gj, %scalar.ph130 ], [ %.034.i.i.i.ph, %scalar.ph130.preheader ] ; 2 uses
  %i.gj = add i32 %.034.i.i.i, 1                  ; 2 uses
  %i.gk = zext i32 %.034.i.i.i to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.gk
  store i32 %.sroa.0.0.insert.insert.i.reass.i.i, ptr %i.gl, align 4
  %i.gm = icmp ult i32 %i.gj, %i.fu
  br i1 %i.gm, label %scalar.ph130, label %.loopexit, !llvm.loop !103

.loopexit:                                        ; preds = %scalar.ph130, %middle.block140
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !3
  %indvars.iv.next57.i.i.i = add nuw nsw i64 %indvars.iv56.i.i.i, 1 ; 2 uses
  %exitcond60.not.i.i.i = icmp eq i64 %indvars.iv.next57.i.i.i, %wide.trip.count59.i.i.i
  br i1 %exitcond60.not.i.i.i, label %HUF_fillDTableX4Level2.exit.i.i, label %.lr.ph53.i.i.i, !llvm.loop !104

HUF_fillDTableX4Level2.exit.i.i:                  ; preds = %.loopexit, %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.pre.i.i = add i32 %i.ep, %i.en
  br label %.loopexit.i.i

bb.e:                                             ; preds = %.lr.ph55.i.i
  %i.gn = add i32 %i.ep, %i.en                    ; 5 uses
  %i.go = icmp ult i32 %i.en, %i.gn
  br i1 %i.go, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %.sroa.4.0.insert.ext.i.i = shl nsw i32 %i.ek, 16
  %.sroa.4.0.insert.shift.i.i = and i32 %.sroa.4.0.insert.ext.i.i, 16711680
  %.sroa.4.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.shift.i.i, %i.eg
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.4.0.insert.insert.i.i, 16777216 ; 2 uses
  %i.gp = zext i32 %i.en to i64                   ; 4 uses
  %wide.trip.count.i.i = zext i32 %i.gn to i64    ; 2 uses
  %i.gq = sub nsw i64 %wide.trip.count.i.i, %i.gp ; 3 uses
  %min.iters.check117 = icmp ult i64 %i.gq, 8
  br i1 %min.iters.check117, label %scalar.ph116.preheader, label %vector.ph118

end_hunk_1
