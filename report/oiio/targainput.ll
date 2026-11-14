Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/targainput?download=true
inline.NumInlined: 3090
inline.NumDeleted: 897
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN11OpenImageIO4v3_18TGAInput7readimgEv:bb.a
bb.bl:                                            ; preds = %.lr.ph386, %._crit_edge
  %i.rh = phi i32 [ %i.ra, %.lr.ph386 ], [ %i.rn, %._crit_edge ]
  %i.ri = phi i32 [ %i.rc, %.lr.ph386 ], [ %i.ro, %._crit_edge ] ; 3 uses
  %i.rj = phi ptr [ %.pre452, %.lr.ph386 ], [ %i.rp, %._crit_edge ] ; 2 uses
  %.096384 = phi i64 [ 0, %.lr.ph386 ], [ %i.rq, %._crit_edge ] ; 2 uses
  %i.rk = mul nsw i64 %.096384, %i.rf
  %i.rl = getelementptr inbounds i8, ptr %i.rj, i64 %i.rk ; 2 uses
  %i.rm = icmp sgt i32 %i.ri, 1
  br i1 %i.rm, label %.lr.ph383, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph383
  %.pre451 = load ptr, ptr %i.m, align 8, !tbaa !157
  %.pre453 = load i32, ptr %i.qz, align 8, !tbaa !232
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.bl
  %i.rn = phi i32 [ %.pre453, %._crit_edge.loopexit ], [ %i.rh, %bb.bl ] ; 2 uses
  %i.ro = phi i32 [ %i.se, %._crit_edge.loopexit ], [ %i.ri, %bb.bl ]
  %i.rp = phi ptr [ %.pre451, %._crit_edge.loopexit ], [ %i.rj, %bb.bl ]
  %i.rq = add nuw nsw i64 %.096384, 1             ; 2 uses
  %i.rr = sext i32 %i.rn to i64
  %i.rs = icmp slt i64 %i.rq, %i.rr
  br i1 %i.rs, label %bb.bl, label %._crit_edge387, !llvm.loop !472

.lr.ph383:                                        ; preds = %bb.bl, %.lr.ph383
  %i.rt = phi i32 [ %i.se, %.lr.ph383 ], [ %i.ri, %bb.bl ]
  %.095382 = phi i64 [ %i.sd, %.lr.ph383 ], [ 0, %bb.bl ] ; 3 uses
  %i.ru = load i32, ptr %i.qx, align 4, !tbaa !209
  %i.rv = sext i32 %i.ru to i64                   ; 2 uses
  %i.rw = mul nsw i64 %.095382, %i.rv
  %i.rx = getelementptr inbounds i8, ptr %i.rl, i64 %i.rw ; 2 uses
  %i.ry = add nsw i32 %i.rt, -1
  %i.rz = sext i32 %i.ry to i64
  %i.sa = sub nsw i64 %i.rz, %.095382
  %i.sb = mul nsw i64 %i.sa, %i.rv
  %i.sc = getelementptr inbounds i8, ptr %i.rl, i64 %i.sb ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0, ptr align 1 %i.rx, i64 %i.rg, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rx, ptr align 1 %i.sc, i64 %i.rg, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sc, ptr nonnull align 4 %.sroa.0, i64 %i.rg, i1 false)
  %i.sd = add nuw nsw i64 %.095382, 1             ; 2 uses
  %i.se = load i32, ptr %i.qy, align 4, !tbaa !480 ; 3 uses
  %i.sf = sdiv i32 %i.se, 2
  %i.sg = sext i32 %i.sf to i64
  %i.sh = icmp slt i64 %i.sd, %i.sg
  br i1 %i.sh, label %.lr.ph383, label %._crit_edge.loopexit, !llvm.loop !473

bb.bm:                                            ; preds = %._crit_edge387, %bb.bj
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.sj = load i32, ptr %i.si, align 8, !tbaa !211
  %.not147 = icmp eq i32 %i.sj, -1
  br i1 %.not147, label %.loopexit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.sl = load i8, ptr %i.sk, align 8, !tbaa !212, !range !213, !noundef !214
  %i.sm = trunc nuw i8 %i.sl to i1
  br i1 %i.sm, label %.loopexit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !198
  %.not148 = icmp eq i32 %i.so, 4
  br i1 %.not148, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 298
  %i.sq = load i16, ptr %i.sp, align 2, !tbaa !199
  %i.sr = icmp eq i16 %i.sq, 1
  %i.ss = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160) %i.n) #30 ; 4 uses
  %i.st = icmp sgt i64 %i.ss, 0                   ; 3 uses
  br i1 %i.st, label %.lr.ph390, label %._crit_edge391

.lr.ph390:                                        ; preds = %bb.bp
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !209
  %i.sw = sext i32 %i.sv to i64
  %i.sx = load i32, ptr %i.si, align 8, !tbaa !211
  %i.sy = sext i32 %i.sx to i64
  %i.sz = load ptr, ptr %i.m, align 8, !tbaa !157
  %invariant.gep = getelementptr i8, ptr %i.sz, i64 %i.sy
  br label %bb.br

bb.bq:                                            ; preds = %bb.br
  %i.ta = add nuw nsw i64 %.0388, 1               ; 2 uses
  %exitcond407.not = icmp eq i64 %i.ta, %i.ss
  br i1 %exitcond407.not, label %._crit_edge391, label %bb.br, !llvm.loop !474

bb.br:                                            ; preds = %.lr.ph390, %bb.bq
  %.0388 = phi i64 [ 0, %.lr.ph390 ], [ %i.ta, %bb.bq ] ; 2 uses
  %i.tb = mul nsw i64 %.0388, %i.sw
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.tb
  %i.tc = load i8, ptr %gep, align 1, !tbaa !156
  %.not149 = icmp eq i8 %i.tc, 0
  br i1 %.not149, label %bb.bq, label %.critedge158

._crit_edge391:                                   ; preds = %bb.bq, %bb.bp
  br i1 %i.sr, label %.loopexit, label %.critedge158

.critedge158:                                     ; preds = %bb.br, %._crit_edge391
  store ptr @.str.36, ptr %1, align 8, !tbaa !202
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 10, ptr %i.td, align 8, !tbaa !203
  %i.te = invoke noundef float @_ZNK11OpenImageIO4v3_19ImageSpec19get_float_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEf(ptr noundef nonnull align 8 dereferenceable(160) %i.n, ptr noundef nonnull dead_on_return %1, float noundef 1.000000e+00)
          to label %bb.bs unwind label %bb.cb     ; 2 uses

bb.bs:                                            ; preds = %.critedge158
  %i.tf = load ptr, ptr %i.m, align 8, !tbaa !157 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !209 ; 8 uses
  %i.ti = load i32, ptr %i.si, align 8, !tbaa !211 ; 4 uses
  %i.tj = fcmp oeq float %i.te, 1.000000e+00
  br i1 %i.tj, label %.preheader58.i, label %.preheader59.i

.preheader59.i:                                   ; preds = %bb.bs
  br i1 %i.st, label %.lr.ph64.i, label %.loopexit

.lr.ph64.i:                                       ; preds = %.preheader59.i
  %i.tk = sext i32 %i.ti to i64
  %i.tl = icmp sgt i32 %i.th, 0
  %i.tm = sext i32 %i.th to i64
  br i1 %i.tl, label %.lr.ph.preheader.i190, label %.loopexit

.lr.ph.preheader.i190:                            ; preds = %.lr.ph64.i
  %i.tn = zext i32 %i.ti to i64                   ; 3 uses
  %wide.trip.count.i191 = zext nneg i32 %i.th to i64 ; 2 uses
  %xtraiter536 = and i64 %wide.trip.count.i191, 1
  %i.to = icmp eq i32 %i.th, 1
  %unroll_iter540 = and i64 %wide.trip.count.i191, 2147483646
  %lcmp.mod538.not = icmp eq i64 %xtraiter536, 0
  %lcmp.mod539 = trunc i32 %i.th to i1
  br label %.lr.ph.i192

.preheader58.i:                                   ; preds = %bb.bs
  br i1 %i.st, label %.preheader.lr.ph.i, label %.loopexit

.preheader.lr.ph.i:                               ; preds = %.preheader58.i
  %i.tp = icmp sgt i32 %i.th, 0
  %i.tq = sext i32 %i.ti to i64
  %i.tr = sext i32 %i.th to i64
  br i1 %i.tp, label %.preheader.preheader.i, label %.loopexit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.ts = zext i32 %i.ti to i64
  %wide.trip.count76.i = zext nneg i32 %i.th to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge67.i, %.preheader.preheader.i
  %.03769.i = phi ptr [ %i.tv, %._crit_edge67.i ], [ %i.tf, %.preheader.preheader.i ] ; 3 uses
  %.03968.i = phi i64 [ %i.tu, %._crit_edge67.i ], [ 0, %.preheader.preheader.i ]
  %i.tt = getelementptr inbounds i8, ptr %.03769.i, i64 %i.tq
  br label %bb.bt

._crit_edge67.i:                                  ; preds = %bb.bv
  %i.tu = add nuw nsw i64 %.03968.i, 1            ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.03769.i, i64 %i.tr
  %exitcond78.not.i = icmp eq i64 %i.tu, %i.ss
  br i1 %exitcond78.not.i, label %.loopexit, label %.preheader.i, !llvm.loop !475

bb.bt:                                            ; preds = %bb.bv, %.preheader.i
  %indvars.iv73.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next74.i, %bb.bv ] ; 3 uses
  %.not43.i = icmp eq i64 %indvars.iv73.i, %i.ts
  br i1 %.not43.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.tw = getelementptr inbounds nuw i8, ptr %.03769.i, i64 %indvars.iv73.i ; 2 uses
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !156
  %i.ty = zext i8 %i.tx to i16
  %i.tz = load i8, ptr %i.tt, align 1, !tbaa !156
  %i.ua = zext i8 %i.tz to i16
  %i.ub = mul nuw i16 %i.ua, %i.ty
  %i.uc = udiv i16 %i.ub, 255
  %i.ud = trunc nuw i16 %i.uc to i8
  store i8 %i.ud, ptr %i.tw, align 1, !tbaa !156
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next74.i, %wide.trip.count76.i
  br i1 %exitcond77.not.i, label %._crit_edge67.i, label %bb.bt, !llvm.loop !476

.lr.ph.i192:                                      ; preds = %._crit_edge.i196, %.lr.ph.preheader.i190
  %.03663.i = phi i64 [ %i.wj, %._crit_edge.i196 ], [ 0, %.lr.ph.preheader.i190 ]
  %.162.i = phi ptr [ %i.wk, %._crit_edge.i196 ], [ %i.tf, %.lr.ph.preheader.i190 ] ; 5 uses
  %i.ue = getelementptr inbounds i8, ptr %.162.i, i64 %i.tk
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !156
  %i.ug = uitofp i8 %i.uf to float
  %i.uh = fmul nnan float %i.ug, f0x3B808081      ; 2 uses
  %.inv.i = fcmp oge float %i.uh, f0x00800000
  %.0.i.i = select i1 %.inv.i, float %i.uh, float f0x00800000 ; 2 uses
  %i.ui = fcmp ogt float %.0.i.i, f0x7F7FFFFF
  %i.uj = bitcast float %.0.i.i to i32
  %i.uk = select i1 %i.ui, i32 2139095039, i32 %i.uj ; 2 uses
  %i.ul = lshr i32 %i.uk, 23
  %i.um = add nsw i32 %i.ul, -127
  %i.un = and i32 %i.uk, 8388607
  %i.uo = or disjoint i32 %i.un, 1065353216
  %i.up = bitcast i32 %i.uo to float
  %i.uq = fadd float %i.up, -1.000000e+00         ; 9 uses
  %i.ur = fmul float %i.uq, %i.uq                 ; 2 uses
  %i.us = fmul float %i.ur, %i.ur
  %i.ut = fmul contract float %i.uq, f0x3C188B0D
  %i.uu = fsub contract float f0x3D5541C9, %i.ut
  %i.uv = fmul contract float %i.uq, f0x3EF5162D
  %i.uw = fadd contract float %i.uv, f0xBF389E54
  %i.ux = fmul contract float %i.uq, %i.uu
  %i.uy = fadd contract float %i.ux, f0xBE0CD4FD
  %i.uz = fmul contract float %i.uq, %i.uy
  %i.va = fadd contract float %i.uz, f0x3E77ADBD
  %i.vb = fmul contract float %i.uq, %i.va
  %i.vc = fadd contract float %i.vb, f0xBEB1D206
  %i.vd = fmul contract float %i.uq, %i.uw
  %i.ve = fadd contract float %i.vd, f0x3FB8AA10
  %i.vf = fmul float %i.uq, %i.ve
  %i.vg = call float @llvm.fmuladd.f32(float %i.us, float %i.vc, float %i.vf)
  %i.vh = sitofp i32 %i.um to float
  %i.vi = fadd float %i.vg, %i.vh
  %i.vj = fmul float %i.te, %i.vi                 ; 2 uses
  %.inv57.i = fcmp oge float %i.vj, -1.260000e+02
  %.0.i44.i = select i1 %.inv57.i, float %i.vj, float -1.260000e+02 ; 2 uses
  %i.vk = fcmp ogt float %.0.i44.i, 1.260000e+02
  %.1.i45.i = select i1 %i.vk, float 1.260000e+02, float %.0.i44.i ; 2 uses
  %i.vl = fptosi float %.1.i45.i to i32           ; 2 uses
  %i.vm = sitofp i32 %i.vl to float
  %i.vn = fsub float %i.vm, %.1.i45.i
  %i.vo = fadd float %i.vn, 1.000000e+00
  %i.vp = fsub float 1.000000e+00, %i.vo          ; 5 uses
  %i.vq = fmul contract float %i.vp, f0x3AAEC44E
  %i.vr = fadd contract float %i.vq, f0x3C20BB9A
  %i.vs = fmul contract float %i.vp, %i.vr
  %i.vt = fadd contract float %i.vs, f0x3D636733
  %i.vu = fmul contract float %i.vp, %i.vt
  %i.vv = fadd contract float %i.vu, f0x3E75F192
  %i.vw = fmul contract float %i.vp, %i.vv
  %i.vx = fadd contract float %i.vw, f0x3F3171F1
  %i.vy = fmul contract float %i.vp, %i.vx
  %i.vz = fadd contract float %i.vy, 1.000000e+00
  %i.wa = bitcast float %i.vz to i32
  %i.wb = shl i32 %i.vl, 23
  %i.wc = add i32 %i.wb, %i.wa
  %i.wd = bitcast i32 %i.wc to float              ; 3 uses
  br i1 %i.to, label %.epil.preheader, label %.lr.ph.i192.new

._crit_edge.i196.unr-lcssa:                       ; preds = %bb.ca
  br i1 %lcmp.mod538.not, label %._crit_edge.i196, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i196.unr-lcssa, %.lr.ph.i192
  %indvars.iv.i193.epil.init = phi i64 [ 0, %.lr.ph.i192 ], [ %indvars.iv.next.i194.1, %._crit_edge.i196.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod539)
  %.not.i.epil = icmp eq i64 %indvars.iv.i193.epil.init, %i.tn
  br i1 %.not.i.epil, label %._crit_edge.i196, label %bb.bw

bb.bw:                                            ; preds = %.epil.preheader
  %i.we = getelementptr inbounds nuw i8, ptr %.162.i, i64 %indvars.iv.i193.epil.init ; 2 uses
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !156
  %i.wg = uitofp i8 %i.wf to float
  %i.wh = fmul float %i.wd, %i.wg
  %i.wi = fptoui float %i.wh to i8
  store i8 %i.wi, ptr %i.we, align 1, !tbaa !156
  br label %._crit_edge.i196

._crit_edge.i196:                                 ; preds = %.epil.preheader, %bb.bw, %._crit_edge.i196.unr-lcssa
  %i.wj = add nuw nsw i64 %.03663.i, 1            ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.162.i, i64 %i.tm
  %exitcond72.not.i = icmp eq i64 %i.wj, %i.ss
  br i1 %exitcond72.not.i, label %.loopexit, label %.lr.ph.i192, !llvm.loop !477

.lr.ph.i192.new:                                  ; preds = %.lr.ph.i192, %bb.ca
  %indvars.iv.i193 = phi i64 [ %indvars.iv.next.i194.1, %bb.ca ], [ 0, %.lr.ph.i192 ] ; 4 uses
  %niter541 = phi i64 [ %niter541.next.1, %bb.ca ], [ 0, %.lr.ph.i192 ]
  %.not.i = icmp eq i64 %indvars.iv.i193, %i.tn
  br i1 %.not.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i192.new
  %i.wl = getelementptr inbounds nuw i8, ptr %.162.i, i64 %indvars.iv.i193 ; 2 uses
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !156
  %i.wn = uitofp i8 %i.wm to float
  %i.wo = fmul float %i.wd, %i.wn
  %i.wp = fptoui float %i.wo to i8
  store i8 %i.wp, ptr %i.wl, align 1, !tbaa !156
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.lr.ph.i192.new
  %indvars.iv.next.i194 = or disjoint i64 %indvars.iv.i193, 1 ; 2 uses
  %.not.i.1 = icmp eq i64 %indvars.iv.next.i194, %i.tn
  br i1 %.not.i.1, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.wq = getelementptr inbounds nuw i8, ptr %.162.i, i64 %indvars.iv.next.i194 ; 2 uses
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !156
  %i.ws = uitofp i8 %i.wr to float
  %i.wt = fmul float %i.wd, %i.ws
  %i.wu = fptoui float %i.wt to i8
  store i8 %i.wu, ptr %i.wq, align 1, !tbaa !156
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %indvars.iv.next.i194.1 = add nuw nsw i64 %indvars.iv.i193, 2 ; 2 uses
  %niter541.next.1 = add i64 %niter541, 2         ; 2 uses
  %niter541.ncmp.1 = icmp eq i64 %niter541.next.1, %unroll_iter540
  br i1 %niter541.ncmp.1, label %._crit_edge.i196.unr-lcssa, label %.lr.ph.i192.new, !llvm.loop !478

bb.cb:                                            ; preds = %.critedge158
  %i.wv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.loopexit.split-lp336.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn150 = phi { ptr, i32 } [ %i.wv, %bb.cb ], [ %lpad.loopexit.split-lp504, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp512, %.loopexit.split-lp336.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0201)
  br label %bb.cd

.loopexit:                                        ; preds = %._crit_edge.i196, %._crit_edge67.i, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175.thread307, %._crit_edge391, %bb.bo, %bb.bn, %bb.bm, %.preheader59.i, %.lr.ph64.i, %.preheader58.i, %.preheader.lr.ph.i
  %.9 = phi i1 [ false, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit175.thread307 ], [ false, %_ZN11OpenImageIO4v3_18TGAInput12decode_pixelEPhS2_S2_iim.exit ], [ true, %._crit_edge391 ], [ true, %bb.bm ], [ true, %bb.bo ], [ true, %bb.bn ], [ true, %.preheader59.i ], [ true, %.lr.ph64.i ], [ true, %.preheader58.i ], [ true, %.preheader.lr.ph.i ], [ true, %._crit_edge67.i ], [ true, %._crit_edge.i196 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0201)
  %.not.i197 = icmp eq ptr %.sroa.0289.1, null
  br i1 %.not.i197, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.h, %.loopexit
  %.10324 = phi i1 [ %.9, %.loopexit ], [ false, %bb.h ]
  %.sroa.0289.2323 = phi ptr [ %.sroa.0289.1, %.loopexit ], [ %i.aj, %bb.h ]
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0289.2323) #29
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.cd:                                            ; preds = %bb.cc, %bb.i
  %.sroa.0289.3 = phi ptr [ %.sroa.0289.1, %bb.cc ], [ %.sroa.0289.0, %bb.i ] ; 2 uses
  %.pn150.pn = phi { ptr, i32 } [ %.pn150, %bb.cc ], [ %i.ao, %bb.i ] ; 2 uses
  %.not.i198 = icmp eq ptr %.sroa.0289.3, null
  br i1 %.not.i198, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit200, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i199

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i199: ; preds = %bb.cd
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0289.3) #29
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit200

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i, %.loopexit, %bb.e
  %.11 = phi i1 [ false, %bb.e ], [ %.9, %.loopexit ], [ %.10324, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i ]
  ret i1 %.11

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit200: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i199, %bb.cd, %bb.f, %bb.c
  %.merged = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %i.t, %bb.c ], [ %.pn150.pn, %bb.cd ], [ %.pn150.pn, %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i199 ]
  resume { ptr, i32 } %.merged

bb.ce:                                            ; preds = %bb.f
  %i.ww = landingpad { ptr, i32 }
          catch ptr null
  %i.wx = extractvalue { ptr, i32 } %i.ww, 0
  tail call void @__clang_call_terminate(ptr %i.wx) #33
  unreachable
}

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #11

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiiiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !485 {
bb.a:
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.114", align 16 ; 8 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30, !noalias !486
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !486
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.b = load i32, ptr %2, align 4, !tbaa !45, !noalias !488
  store i32 %i.b, ptr %6, align 16, !tbaa !156, !alias.scope !487, !noalias !486
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !45, !noalias !488
  store i32 %i.d, ptr %i.c, align 16, !tbaa !156, !alias.scope !487, !noalias !486
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.f = load i32, ptr %4, align 4, !tbaa !45, !noalias !488
  store i32 %i.f, ptr %i.e, align 16, !tbaa !156, !alias.scope !487, !noalias !486
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.h = load ptr, ptr %5, align 8, !tbaa !200, !noalias !486
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !155, !noalias !486
  store ptr %i.h, ptr %i.g, align 16, !tbaa !156, !noalias !486
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %i.j, ptr %i.k, align 8, !tbaa !156, !noalias !486
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull %1, i64 %i.a, i64 53521, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !486
  %i.l = load ptr, ptr %8, align 8, !tbaa !200
  store ptr %i.l, ptr %7, align 8, !tbaa !202
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !155
  store i64 %i.o, ptr %i.m, align 8, !tbaa !203
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %8, align 8, !tbaa !200    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.s = load i64, ptr %i.q, align 8, !tbaa !156
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_0
