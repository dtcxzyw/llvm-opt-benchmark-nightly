Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/epipolar_lines?download=true
inline.NumInlined: 550
inline.NumDeleted: 271
begin_hunk_0_@main:bb.a
          to label %bb.dy unwind label %bb.ey

bb.dy:                                            ; preds = %bb.dx
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %56) #18
  %i.se = load ptr, ptr %57, align 8, !tbaa !141, !noalias !147 ; 2 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !30
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 24
  %i.sh = load ptr, ptr %i.sg, align 8
  invoke void %i.sh(ptr noundef nonnull align 8 dereferenceable(8) %i.se, ptr noundef nonnull align 8 dereferenceable(688) %57, ptr noundef nonnull align 8 dereferenceable(208) %56, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body294

.body294:                                         ; preds = %bb.dy
  %i.si = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %56) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %57) #18
  br label %bb.ez

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.dy
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.oo) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.op) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.oq) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %58) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #18
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %61, ptr noundef nonnull align 8 dereferenceable(208) %37)
          to label %bb.dz unwind label %bb.fb

bb.dz:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !150
  store i64 9223372034707292160, ptr %6, align 8, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !150
  store i32 %i.qc, ptr %7, align 4, !tbaa !138, !noalias !150
  store i32 %i.sd, ptr %i.or, align 4, !tbaa !140, !noalias !150
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %62, ptr noundef nonnull align 8 dereferenceable(208) %42, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.ea unwind label %bb.fc

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !150
  invoke void @_ZN2cvmlERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %60, ptr noundef nonnull align 8 dereferenceable(688) %61, ptr noundef nonnull align 8 dereferenceable(208) %62)
          to label %bb.eb unwind label %bb.fd

bb.eb:                                            ; preds = %bb.ea
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %59) #18
  %i.sj = load ptr, ptr %60, align 8, !tbaa !141, !noalias !153 ; 2 uses
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !30
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 24
  %i.sm = load ptr, ptr %i.sl, align 8
  invoke void %i.sm(ptr noundef nonnull align 8 dereferenceable(8) %i.sj, ptr noundef nonnull align 8 dereferenceable(688) %60, ptr noundef nonnull align 8 dereferenceable(208) %59, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit300 unwind label %.body298

.body298:                                         ; preds = %bb.eb
  %i.sn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %59) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %60) #18
  br label %bb.fe

_ZNK2cv7MatExprcvNS_3MatEEv.exit300:              ; preds = %bb.eb
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.os) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ot) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ou) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %62) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ov) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ow) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ox) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #18
  %i.so = load i32, ptr %i.oy, align 4, !tbaa !132
  %i.sp = icmp slt i32 %i.so, 2
  br i1 %i.sp, label %bb.eg, label %bb.ec

bb.ec:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit300
  %i.sq = load i32, ptr %59, align 8, !tbaa !120
  %i.sr = and i32 %i.sq, 16384
  %i.ss = icmp ne i32 %i.sr, 0
  %i.st = load i32, ptr %i.oz, align 8
  %i.su = icmp eq i32 %i.st, 1
  %or.cond.i301 = select i1 %i.ss, i1 true, i1 %i.su
  %i.sv = load ptr, ptr %i.pb, align 8, !tbaa !133 ; 7 uses
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !70 ; 3 uses
  br i1 %or.cond.i301, label %bb.eh, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.sx = load i32, ptr %i.pa, align 4, !tbaa !121
  %.fr = freeze i32 %i.sx                         ; 4 uses
  %i.sy = icmp eq i32 %.fr, 1
  br i1 %i.sy, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.sz = load i64, ptr %i.pc, align 8, !tbaa !134
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sz
  br label %bb.ei

bb.ef:                                            ; preds = %bb.ed
  %i.tb = add i32 %.fr, 1
  %i.tc = icmp ult i32 %i.tb, 3
  %i.td = select i1 %i.tc, i32 %.fr, i32 0        ; 2 uses
  %i.te = mul nsw i32 %i.td, %.fr
  %i.tf = sub nsw i32 1, %i.te
  %i.tg = load i64, ptr %i.pc, align 8, !tbaa !134
  %i.th = sext i32 %i.td to i64
  %i.ti = mul i64 %i.tg, %i.th
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.ti
  %i.tk = sext i32 %i.tf to i64
  %i.tl = getelementptr inbounds [8 x i8], ptr %i.tj, i64 %i.tk
  br label %bb.ei

bb.eg:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit300
  %i.tm = load ptr, ptr %i.pb, align 8, !tbaa !133 ; 3 uses
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !70
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.tp = load double, ptr %i.to, align 8, !tbaa !70
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit308

bb.eh:                                            ; preds = %bb.ec
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !70
  %i.tt = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit308

bb.ei:                                            ; preds = %bb.ee, %bb.ef
  %.0.i304.ph.ph = phi ptr [ %i.ta, %bb.ee ], [ %i.tl, %bb.ef ]
  %i.tu = load double, ptr %.0.i304.ph.ph, align 8, !tbaa !70 ; 2 uses
  %i.tv = load i32, ptr %i.pa, align 4, !tbaa !121 ; 4 uses
  %i.tw = icmp eq i32 %i.tv, 1
  br i1 %i.tw, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.tx = load i64, ptr %i.pc, align 8, !tbaa !134
  %i.ty = shl i64 %i.tx, 1
  %i.tz = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.ty
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit308

bb.ek:                                            ; preds = %bb.ei
  %i.ua = sdiv i32 2, %i.tv                       ; 2 uses
  %i.ub = mul nsw i32 %i.ua, %i.tv                ; 0 uses
  %.recomposed613 = srem i32 2, %i.tv
  %i.uc = load i64, ptr %i.pc, align 8, !tbaa !134
  %i.ud = sext i32 %i.ua to i64
  %i.ue = mul i64 %i.uc, %i.ud
  %i.uf = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.ue
  %i.ug = sext i32 %.recomposed613 to i64
  %i.uh = getelementptr inbounds [8 x i8], ptr %i.uf, i64 %i.ug
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit308

_ZNK2cv3Mat2atIdEERKT_i.exit308:                  ; preds = %bb.eg, %bb.eh, %bb.ej, %bb.ek
  %i.ui = phi double [ %i.tp, %bb.eg ], [ %i.ts, %bb.eh ], [ %i.tu, %bb.ej ], [ %i.tu, %bb.ek ] ; 2 uses
  %i.uj = phi double [ %i.tn, %bb.eg ], [ %i.sw, %bb.eh ], [ %i.sw, %bb.ej ], [ %i.sw, %bb.ek ] ; 2 uses
  %.0.i307 = phi ptr [ %i.tq, %bb.eg ], [ %i.tt, %bb.eh ], [ %i.tz, %bb.ej ], [ %i.uh, %bb.ek ]
  %i.uk = load double, ptr %.0.i307, align 8, !tbaa !70
  %i.ul = load i32, ptr %i.pd, align 4, !tbaa !132
  %i.um = icmp slt i32 %i.ul, 2
  br i1 %i.um, label %bb.ep, label %bb.el

bb.el:                                            ; preds = %_ZNK2cv3Mat2atIdEERKT_i.exit308
  %i.un = load i32, ptr %56, align 8, !tbaa !120
  %i.uo = and i32 %i.un, 16384
  %i.up = icmp ne i32 %i.uo, 0
  %i.uq = load i32, ptr %i.pe, align 8
  %i.ur = icmp eq i32 %i.uq, 1
  %or.cond.i309 = select i1 %i.up, i1 true, i1 %i.ur
  %i.us = load ptr, ptr %i.pg, align 8, !tbaa !133 ; 7 uses
  %i.ut = load double, ptr %i.us, align 8, !tbaa !70 ; 3 uses
  br i1 %or.cond.i309, label %bb.eq, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.uu = load i32, ptr %i.pf, align 4, !tbaa !121
  %.fr466 = freeze i32 %i.uu                      ; 4 uses
  %i.uv = icmp eq i32 %.fr466, 1
  br i1 %i.uv, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.uw = load i64, ptr %i.ph, align 8, !tbaa !134
  %i.ux = getelementptr inbounds nuw i8, ptr %i.us, i64 %i.uw
  br label %bb.er

bb.eo:                                            ; preds = %bb.em
  %i.uy = add i32 %.fr466, 1
  %i.uz = icmp ult i32 %i.uy, 3
  %i.va = select i1 %i.uz, i32 %.fr466, i32 0     ; 2 uses
  %i.vb = mul nsw i32 %i.va, %.fr466
  %i.vc = sub nsw i32 1, %i.vb
  %i.vd = load i64, ptr %i.ph, align 8, !tbaa !134
  %i.ve = sext i32 %i.va to i64
  %i.vf = mul i64 %i.vd, %i.ve
  %i.vg = getelementptr inbounds nuw i8, ptr %i.us, i64 %i.vf
  %i.vh = sext i32 %i.vc to i64
  %i.vi = getelementptr inbounds [8 x i8], ptr %i.vg, i64 %i.vh
  br label %bb.er

bb.ep:                                            ; preds = %_ZNK2cv3Mat2atIdEERKT_i.exit308
  %i.vj = load ptr, ptr %i.pg, align 8, !tbaa !133 ; 3 uses
  %81 = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %82 = load double, ptr %81, align 8, !tbaa !70
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !70
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit317

bb.eq:                                            ; preds = %bb.el
  %i.vm = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.vn = load double, ptr %i.vm, align 8, !tbaa !70
  %i.vo = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit317

bb.er:                                            ; preds = %bb.en, %bb.eo
  %.0.i313.ph.ph = phi ptr [ %i.ux, %bb.en ], [ %i.vi, %bb.eo ]
  %i.vp = load double, ptr %.0.i313.ph.ph, align 8, !tbaa !70 ; 2 uses
  %i.vq = load i32, ptr %i.pf, align 4, !tbaa !121 ; 4 uses
  %i.vr = icmp eq i32 %i.vq, 1
  br i1 %i.vr, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.vs = load i64, ptr %i.ph, align 8, !tbaa !134
  %i.vt = shl i64 %i.vs, 1
  %i.vu = getelementptr inbounds nuw i8, ptr %i.us, i64 %i.vt
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit317

bb.et:                                            ; preds = %bb.er
  %i.vv = sdiv i32 2, %i.vq                       ; 2 uses
  %i.vw = mul nsw i32 %i.vv, %i.vq                ; 0 uses
  %.recomposed614 = srem i32 2, %i.vq
  %i.vx = load i64, ptr %i.ph, align 8, !tbaa !134
  %i.vy = sext i32 %i.vv to i64
  %i.vz = mul i64 %i.vx, %i.vy
  %i.wa = getelementptr inbounds nuw i8, ptr %i.us, i64 %i.vz
  %i.wb = sext i32 %.recomposed614 to i64
  %i.wc = getelementptr inbounds [8 x i8], ptr %i.wa, i64 %i.wb
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit317

_ZNK2cv3Mat2atIdEERKT_i.exit317:                  ; preds = %bb.ep, %bb.eq, %bb.es, %bb.et
  %i.wd = phi double [ %82, %bb.ep ], [ %i.vn, %bb.eq ], [ %i.vp, %bb.es ], [ %i.vp, %bb.et ] ; 2 uses
  %i.we = phi double [ %i.vk, %bb.ep ], [ %i.ut, %bb.eq ], [ %i.ut, %bb.es ], [ %i.ut, %bb.et ] ; 2 uses
  %.0.i316 = phi ptr [ %i.vl, %bb.ep ], [ %i.vo, %bb.eq ], [ %i.vu, %bb.es ], [ %i.wc, %bb.et ]
  %i.wf = load double, ptr %.0.i316, align 8, !tbaa !70
  %i.wg = insertelement <2 x double> poison, double %i.ui, i64 0
  %i.wh = insertelement <2 x double> %i.wg, double %i.wd, i64 1 ; 2 uses
  %i.wi = fmul <2 x double> %i.wh, %i.wh
  %i.wj = insertelement <2 x double> poison, double %i.uj, i64 0
  %i.wk = insertelement <2 x double> %i.wj, double %i.we, i64 1 ; 2 uses
  %i.wl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wk, <2 x double> %i.wk, <2 x double> %i.wi) ; 3 uses
  %i.wm = extractelement <2 x double> %i.wl, i64 0
  %sqrt = call double @llvm.sqrt.f64(double %i.wm) ; 4 uses
  %83 = shufflevector <2 x double> %i.wl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %84 = insertelement <2 x double> poison, double %i.we, i64 0
  %i.wn = insertelement <2 x double> %84, double %i.wd, i64 1
  %85 = fdiv <2 x double> %i.wn, %83              ; 2 uses
  %86 = extractelement <2 x double> %i.wl, i64 1  ; 2 uses
  %87 = fdiv double %i.wf, %86                    ; 2 uses
  %i.wo = add nsw i32 %.0143507, 1
  %i.wp = icmp slt i32 %.0143507, 300
  br i1 %i.wp, label %bb.eu, label %bb.fj

bb.eu:                                            ; preds = %_ZNK2cv3Mat2atIdEERKT_i.exit317
  %i.wq = fdiv double %i.uk, %sqrt                ; 2 uses
  %i.wr = fdiv double %i.ui, %sqrt                ; 2 uses
  %i.ws = fdiv double %i.uj, %sqrt
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #18
  store i64 0, ptr %i.pj, align 8
  store i32 50397184, ptr %63, align 8, !tbaa !27
  store ptr %14, ptr %i.pi, align 8, !tbaa !29
  %i.wt = fneg double %i.wq
  %i.wu = fdiv double %i.wt, %i.wr
  %i.wv = insertelement <2 x double> poison, double %i.wu, i64 0
  %i.ww = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.wv)
  %.sroa.2.0.insert.ext.i = zext i32 %i.ww to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %i.wx = load i32, ptr %i.pk, align 4, !tbaa !121
  %i.wy = sitofp i32 %i.wx to double              ; 2 uses
  %i.wz = call double @llvm.fmuladd.f64(double %i.ws, double %i.wy, double %i.wq)
  %i.xa = fneg double %i.wz
  %i.xb = fdiv double %i.xa, %i.wr
  %.sroa.0440.0.vec.insert = insertelement <2 x double> poison, double %i.wy, i64 0
  %i.xc = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %.sroa.0440.0.vec.insert)
  %i.xd = insertelement <2 x double> poison, double %i.xb, i64 0
  %i.xe = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.xd)
  %.sroa.2.0.insert.ext.i318 = zext i32 %i.xe to i64
  %.sroa.2.0.insert.shift.i319 = shl nuw i64 %.sroa.2.0.insert.ext.i318, 32
  %.sroa.0.0.insert.ext.i320 = zext i32 %i.xc to i64
  %.sroa.0.0.insert.insert.i321 = or disjoint i64 %.sroa.2.0.insert.shift.i319, %.sroa.0.0.insert.ext.i320
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %63, i64 %.sroa.2.0.insert.shift.i, i64 %.sroa.0.0.insert.insert.i321, ptr noundef nonnull align 8 dereferenceable(32) %55, i32 noundef 1, i32 noundef 8, i32 noundef 0)
          to label %bb.ev unwind label %bb.fh

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #18
  store i64 0, ptr %i.pm, align 8
  store i32 50397184, ptr %64, align 8, !tbaa !27
  store ptr %15, ptr %i.pl, align 8, !tbaa !29
  %i.xf = load i32, ptr %i.pn, align 4, !tbaa !121
  %i.xg = sitofp i32 %i.xf to double              ; 2 uses
  %i.xh = extractelement <2 x double> %85, i64 0
  %i.xi = call double @llvm.fmuladd.f64(double %i.xh, double %i.xg, double %87)
  %88 = insertelement <2 x double> poison, double %87, i64 0
  %i.xj = insertelement <2 x double> %88, double %i.xi, i64 1
  %i.xk = fneg <2 x double> %i.xj
  %i.xl = shufflevector <2 x double> %85, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.xm = fdiv <2 x double> %i.xk, %i.xl          ; 2 uses
  %i.xn = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.xm)
  %.sroa.2.0.insert.ext.i322 = zext i32 %i.xn to i64
  %.sroa.2.0.insert.shift.i323 = shl nuw i64 %.sroa.2.0.insert.ext.i322, 32
  %.sroa.0436.0.vec.insert = insertelement <2 x double> poison, double %i.xg, i64 0
  %i.xo = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %.sroa.0436.0.vec.insert)
  %i.xp = shufflevector <2 x double> %i.xm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.xq = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.xp)
  %.sroa.2.0.insert.ext.i326 = zext i32 %i.xq to i64
  %.sroa.2.0.insert.shift.i327 = shl nuw i64 %.sroa.2.0.insert.ext.i326, 32
  %.sroa.0.0.insert.ext.i328 = zext i32 %i.xo to i64
  %.sroa.0.0.insert.insert.i329 = or disjoint i64 %.sroa.2.0.insert.shift.i327, %.sroa.0.0.insert.ext.i328
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %64, i64 %.sroa.2.0.insert.shift.i323, i64 %.sroa.0.0.insert.insert.i329, ptr noundef nonnull align 8 dereferenceable(32) %55, i32 noundef 1, i32 noundef 8, i32 noundef 0)
          to label %bb.ew unwind label %bb.fi

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #18
  br label %bb.fj

bb.ex:                                            ; preds = %bb.dw
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ey:                                            ; preds = %bb.dx
  %i.xs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ez:                                            ; preds = %.body294, %bb.ey
  %.pn194 = phi { ptr, i32 } [ %i.si, %.body294 ], [ %i.xs, %bb.ey ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %58) #18
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ex
  %.pn194.pn = phi { ptr, i32 } [ %.pn194, %bb.ez ], [ %i.xr, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  br label %bb.gb

bb.fb:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.xt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.fc:                                            ; preds = %bb.dz
  %i.xu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.fd:                                            ; preds = %bb.ea
  %i.xv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.fe:                                            ; preds = %.body298, %bb.fd
  %.pn197 = phi { ptr, i32 } [ %i.sn, %.body298 ], [ %i.xv, %bb.fd ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %62) #18
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fc
  %.pn197.pn = phi { ptr, i32 } [ %.pn197, %bb.fe ], [ %i.xu, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %61) #18
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fb
  %.pn197.pn.pn = phi { ptr, i32 } [ %.pn197.pn, %bb.ff ], [ %i.xt, %bb.fb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #18
  br label %bb.ga

bb.fh:                                            ; preds = %bb.eu
  %i.xw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #18
  br label %bb.fz

bb.fi:                                            ; preds = %bb.ev
  %i.xx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #18
  br label %bb.fz

bb.fj:                                            ; preds = %bb.ew, %_ZNK2cv3Mat2atIdEERKT_i.exit317
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #18
  store i64 0, ptr %i.pp, align 8
  store i32 50397184, ptr %65, align 8, !tbaa !27
  store ptr %14, ptr %i.po, align 8, !tbaa !29
  %i.xy = sext i32 %i.qc to i64                   ; 2 uses
  %i.xz = load ptr, ptr %34, align 8, !tbaa !65
  %i.ya = getelementptr inbounds nuw [16 x i8], ptr %i.xz, i64 %i.xy
  %i.yb = load <2 x double>, ptr %i.ya, align 8   ; 2 uses
  %i.yc = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.yb)
  %i.yd = shufflevector <2 x double> %i.yb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ye = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.yd)
  %.sroa.2.0.insert.ext.i330 = zext i32 %i.ye to i64
  %.sroa.2.0.insert.shift.i331 = shl nuw i64 %.sroa.2.0.insert.ext.i330, 32
  %.sroa.0.0.insert.ext.i332 = zext i32 %i.yc to i64
  %.sroa.0.0.insert.insert.i333 = or disjoint i64 %.sroa.2.0.insert.shift.i331, %.sroa.0.0.insert.ext.i332
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %65, i64 %.sroa.0.0.insert.insert.i333, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %55, i32 noundef -1, i32 noundef 8, i32 noundef 0)
          to label %bb.fk unwind label %bb.fq

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #18
  store i64 0, ptr %i.pr, align 8
  store i32 50397184, ptr %66, align 8, !tbaa !27
  store ptr %15, ptr %i.pq, align 8, !tbaa !29
  %i.yf = load ptr, ptr %35, align 8, !tbaa !65
  %i.yg = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %i.xy
  %i.yh = load <2 x double>, ptr %i.yg, align 8   ; 2 uses
  %i.yi = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.yh)
  %i.yj = shufflevector <2 x double> %i.yh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.yk = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.yj)
  %.sroa.2.0.insert.ext.i334 = zext i32 %i.yk to i64
  %.sroa.2.0.insert.shift.i335 = shl nuw i64 %.sroa.2.0.insert.ext.i334, 32
  %.sroa.0.0.insert.ext.i336 = zext i32 %i.yi to i64
  %.sroa.0.0.insert.insert.i337 = or disjoint i64 %.sroa.2.0.insert.shift.i335, %.sroa.0.0.insert.ext.i336
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %66, i64 %.sroa.0.0.insert.insert.i337, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %55, i32 noundef -1, i32 noundef 8, i32 noundef 0)
          to label %bb.fl unwind label %bb.fr

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !156
  store i64 9223372034707292160, ptr %4, align 8, !noalias !156
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !156
  store i32 %i.qc, ptr %5, align 4, !tbaa !138, !noalias !156
  store i32 %i.sd, ptr %i.ps, align 4, !tbaa !140, !noalias !156
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %67, ptr noundef nonnull align 8 dereferenceable(208) %41, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %bb.fm unwind label %bb.fs

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !156
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #18
  store i32 0, ptr %i.pt, align 8, !tbaa !24
  store i32 0, ptr %i.pu, align 4, !tbaa !26
  store i32 16842752, ptr %68, align 8, !tbaa !27
  store ptr %56, ptr %i.pv, align 8, !tbaa !29
  %i.yl = invoke noundef double @_ZNK2cv3Mat3dotERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %67, ptr noundef nonnull align 8 dereferenceable(24) %68)
          to label %bb.fn unwind label %bb.ft

bb.fn:                                            ; preds = %bb.fm
  %i.ym = call double @llvm.fabs.f64(double %i.yl)
  %i.yn = fdiv double %i.ym, %86
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !159
  store i64 9223372034707292160, ptr %2, align 8, !noalias !159
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !159
  store i32 %i.qc, ptr %3, align 4, !tbaa !138, !noalias !159
  store i32 %i.sd, ptr %i.pw, align 4, !tbaa !140, !noalias !159
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %69, ptr noundef nonnull align 8 dereferenceable(208) %42, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %bb.fo unwind label %bb.fu

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !159
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #18
  store i32 0, ptr %i.px, align 8, !tbaa !24
  store i32 0, ptr %i.py, align 4, !tbaa !26
  store i32 16842752, ptr %70, align 8, !tbaa !27
  store ptr %59, ptr %i.pz, align 8, !tbaa !29
  %i.yo = invoke noundef double @_ZNK2cv3Mat3dotERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %69, ptr noundef nonnull align 8 dereferenceable(24) %70)
          to label %bb.fp unwind label %bb.fv

bb.fp:                                            ; preds = %bb.fo
  %i.yp = fdiv double %i.yo, %sqrt
  %i.yq = call double @llvm.fabs.f64(double %i.yp)
  %i.yr = fadd double %i.yn, %i.yq
  %i.ys = fmul double %i.yr, 5.000000e-01
  %i.yt = fadd double %.0139509, %i.ys
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %69) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %67) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #18
  %i.yu = add nsw i32 %.0141508, 1
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %59) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %56) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #18
  br label %bb.gc

bb.fq:                                            ; preds = %bb.fj
  %i.yv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #18
  br label %bb.fz

bb.fr:                                            ; preds = %bb.fk
  %i.yw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #18
  br label %bb.fz

bb.fs:                                            ; preds = %bb.fl
  %i.yx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.ft:                                            ; preds = %bb.fm
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fu:                                            ; preds = %bb.fn
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.fv:                                            ; preds = %bb.fo
  %i.za = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %69) #18
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.pn211.pn = phi { ptr, i32 } [ %i.za, %bb.fv ], [ %i.yz, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #18
  br label %bb.fx

bb.fx:                                            ; preds = %bb.ft, %bb.fw
  %.pn211.pn.pn.pn = phi { ptr, i32 } [ %i.yy, %bb.ft ], [ %.pn211.pn, %bb.fw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %67) #18
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fs
  %.pn211.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn211.pn.pn.pn, %bb.fx ], [ %i.yx, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #18
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fr, %bb.fq, %bb.fi, %bb.fh
  %.pn211.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn211.pn.pn.pn.pn, %bb.fy ], [ %i.yw, %bb.fr ], [ %i.yv, %bb.fq ], [ %i.xx, %bb.fi ], [ %i.xw, %bb.fh ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %59) #18
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fg
  %.pn211.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn211.pn.pn.pn.pn.pn, %bb.fz ], [ %.pn197.pn.pn, %bb.fg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %56) #18
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fa
  %.pn211.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn211.pn.pn.pn.pn.pn.pn, %bb.ga ], [ %.pn194.pn, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #18
  br label %bb.hg

bb.gc:                                            ; preds = %bb.fp, %_ZN2cv3Mat2atIhEERT_i.exit
  %.sroa.0449.1 = phi i64 [ %.sroa.0449.0505, %_ZN2cv3Mat2atIhEERT_i.exit ], [ %i.ry, %bb.fp ]
  %.1144 = phi i32 [ %.0143507, %_ZN2cv3Mat2atIhEERT_i.exit ], [ %i.wo, %bb.fp ]
  %.1142 = phi i32 [ %.0141508, %_ZN2cv3Mat2atIhEERT_i.exit ], [ %i.yu, %bb.fp ] ; 2 uses
  %.1140 = phi double [ %.0139509, %_ZN2cv3Mat2atIhEERT_i.exit ], [ %i.yt, %bb.fp ] ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %.sroa.0445.0506, i64 4 ; 2 uses
  %.not465 = icmp eq ptr %i.zb, %i.od
  br i1 %.not465, label %._crit_edge512, label %bb.dp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291: ; preds = %._crit_edge512
  %i.zc = sitofp i32 %.0141.lcssa to double
  %i.zd = fdiv double %.0139.lcssa, %i.zc
  %i.ze = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.zd)
          to label %_ZNSolsEd.exit unwind label %bb.gx ; 2 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit291
  %i.zf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ze, ptr noundef nonnull @.str.6, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344 unwind label %bb.gx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344: ; preds = %_ZNSolsEd.exit
  %i.zg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ze, i32 noundef %.0141.lcssa)
          to label %bb.gd unwind label %bb.gx

bb.gd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344
  %i.zh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zg, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %bb.ge unwind label %bb.gx     ; 0 uses

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #18
  %i.zi = getelementptr inbounds nuw i8, ptr %71, i64 16
  store i32 0, ptr %i.zi, align 8, !tbaa !24
  %i.zj = getelementptr inbounds nuw i8, ptr %71, i64 20
  store i32 0, ptr %i.zj, align 4, !tbaa !26
  store i32 16842752, ptr %71, align 8, !tbaa !27
  %i.zk = getelementptr inbounds nuw i8, ptr %71, i64 8
  store ptr %14, ptr %i.zk, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #18
  %i.zl = getelementptr inbounds nuw i8, ptr %72, i64 16
  store i32 0, ptr %i.zl, align 8, !tbaa !24
  %i.zm = getelementptr inbounds nuw i8, ptr %72, i64 20
  store i32 0, ptr %i.zm, align 4, !tbaa !26
  store i32 16842752, ptr %72, align 8, !tbaa !27
  %i.zn = getelementptr inbounds nuw i8, ptr %72, i64 8
  store ptr %15, ptr %i.zn, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #18
  %i.zo = getelementptr inbounds nuw i8, ptr %73, i64 8
  %i.zp = getelementptr inbounds nuw i8, ptr %73, i64 16
  store i64 0, ptr %i.zp, align 8
  store i32 33619968, ptr %73, align 8, !tbaa !27
  store ptr %14, ptr %i.zo, align 8, !tbaa !29
  invoke void @_ZN2cv7hconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %71, ptr noundef nonnull align 8 dereferenceable(24) %72, ptr noundef nonnull align 8 dereferenceable(24) %73)
          to label %bb.gf unwind label %bb.gy

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #18
  %i.zq = getelementptr inbounds nuw i8, ptr %74, i64 16
  store i32 0, ptr %i.zq, align 8, !tbaa !24
  %i.zr = getelementptr inbounds nuw i8, ptr %74, i64 20
  store i32 0, ptr %i.zr, align 4, !tbaa !26
  store i32 16842752, ptr %74, align 8, !tbaa !27
  %i.zs = getelementptr inbounds nuw i8, ptr %74, i64 8
  store ptr %14, ptr %i.zs, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #18
  %i.zt = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.zu = getelementptr inbounds nuw i8, ptr %75, i64 16
  store i64 0, ptr %i.zu, align 8
  store i32 33619968, ptr %75, align 8, !tbaa !27
  store ptr %14, ptr %i.zt, align 8, !tbaa !29
  %i.zv = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.zw = load <2 x i32>, ptr %i.zv, align 8, !tbaa !57
  %i.zx = sitofp <2 x i32> %i.zw to <2 x double>  ; 2 uses
  %i.zy = fmul nnan <2 x double> %i.zx, splat (double 9.600000e+05)
  %i.zz = shufflevector <2 x double> %i.zx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aaa = fdiv <2 x double> %i.zy, %i.zz         ; 2 uses
  %i.aab = extractelement <2 x double> %i.aaa, i64 1
  %i.aac = call double @sqrt(double noundef %i.aab) #18
  %i.aad = fptosi double %i.aac to i32
  %i.aae = extractelement <2 x double> %i.aaa, i64 0
  %i.aaf = call double @sqrt(double noundef %i.aae) #18
  %i.aag = fptosi double %i.aaf to i32
  %.sroa.2.0.insert.ext = zext i32 %i.aag to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0435.0.insert.ext = zext i32 %i.aad to i64
  %.sroa.0435.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0435.0.insert.ext
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(24) %75, i64 %.sroa.0435.0.insert.insert, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 1)
          to label %.noexc.i unwind label %bb.gz

.noexc.i:                                         ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #18
end_hunk_0
