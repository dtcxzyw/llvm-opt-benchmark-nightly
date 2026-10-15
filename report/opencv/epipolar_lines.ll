Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/epipolar_lines?download=true
inline.NumInlined: 550
inline.NumDeleted: 271
begin_hunk_0_@main:bb.a
  %i.sj = load ptr, ptr %60, align 8, !tbaa !163, !noalias !166 ; 2 uses
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !25
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
  %i.so = load i32, ptr %i.oy, align 4, !tbaa !152
  %i.sp = icmp slt i32 %i.so, 2
  br i1 %i.sp, label %bb.eg, label %bb.ec

bb.ec:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit300
  %i.sq = load i32, ptr %59, align 8, !tbaa !142
  %i.sr = and i32 %i.sq, 16384
  %i.ss = icmp ne i32 %i.sr, 0
  %i.st = load i32, ptr %i.oz, align 8
  %i.su = icmp eq i32 %i.st, 1
  %or.cond.i301 = select i1 %i.ss, i1 true, i1 %i.su
  %i.sv = load ptr, ptr %i.pb, align 8, !tbaa !153 ; 7 uses
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !109 ; 3 uses
  br i1 %or.cond.i301, label %bb.eh, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.sx = load i32, ptr %i.pa, align 4, !tbaa !143
  %.fr = freeze i32 %i.sx                         ; 4 uses
  %i.sy = icmp eq i32 %.fr, 1
  br i1 %i.sy, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.sz = load i64, ptr %i.pc, align 8, !tbaa !40
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sz
  br label %bb.ei

bb.ef:                                            ; preds = %bb.ed
  %i.tb = add i32 %.fr, 1
  %i.tc = icmp ult i32 %i.tb, 3
  %i.td = select i1 %i.tc, i32 %.fr, i32 0        ; 2 uses
  %i.te = mul nsw i32 %i.td, %.fr
  %i.tf = sub nsw i32 1, %i.te
  %i.tg = load i64, ptr %i.pc, align 8, !tbaa !40
  %i.th = sext i32 %i.td to i64
  %i.ti = mul i64 %i.tg, %i.th
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.ti
  %i.tk = sext i32 %i.tf to i64
  %i.tl = getelementptr inbounds [8 x i8], ptr %i.tj, i64 %i.tk
  br label %bb.ei

bb.eg:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit300
  %i.tm = load ptr, ptr %i.pb, align 8, !tbaa !153 ; 3 uses
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !109
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.tp = load double, ptr %i.to, align 8, !tbaa !109
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit308

bb.eh:                                            ; preds = %bb.ec
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !109
  %i.tt = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit308

bb.ei:                                            ; preds = %bb.ee, %bb.ef
  %.0.i304.ph.ph = phi ptr [ %i.ta, %bb.ee ], [ %i.tl, %bb.ef ]
  %i.tu = load double, ptr %.0.i304.ph.ph, align 8, !tbaa !109 ; 2 uses
  %i.tv = load i32, ptr %i.pa, align 4, !tbaa !143 ; 4 uses
  %i.tw = icmp eq i32 %i.tv, 1
  br i1 %i.tw, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.tx = load i64, ptr %i.pc, align 8, !tbaa !40
  %i.ty = shl i64 %i.tx, 1
  %i.tz = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.ty
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit308

bb.ek:                                            ; preds = %bb.ei
  %i.ua = sdiv i32 2, %i.tv                       ; 2 uses
  %i.ub = mul nsw i32 %i.ua, %i.tv                ; 0 uses
  %.recomposed613 = srem i32 2, %i.tv
  %i.uc = load i64, ptr %i.pc, align 8, !tbaa !40
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
  %i.uk = load double, ptr %.0.i307, align 8, !tbaa !109
  %i.ul = load i32, ptr %i.pd, align 4, !tbaa !152
  %i.um = icmp slt i32 %i.ul, 2
  br i1 %i.um, label %bb.ep, label %bb.el

bb.el:                                            ; preds = %_ZNK2cv3Mat2atIdEERKT_i.exit308
  %i.un = load i32, ptr %56, align 8, !tbaa !142
  %i.uo = and i32 %i.un, 16384
  %i.up = icmp ne i32 %i.uo, 0
  %i.uq = load i32, ptr %i.pe, align 8
  %i.ur = icmp eq i32 %i.uq, 1
  %or.cond.i309 = select i1 %i.up, i1 true, i1 %i.ur
  %i.us = load ptr, ptr %i.pg, align 8, !tbaa !153 ; 7 uses
  %i.ut = load double, ptr %i.us, align 8, !tbaa !109 ; 3 uses
  br i1 %or.cond.i309, label %bb.eq, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.uu = load i32, ptr %i.pf, align 4, !tbaa !143
  %.fr466 = freeze i32 %i.uu                      ; 4 uses
  %i.uv = icmp eq i32 %.fr466, 1
  br i1 %i.uv, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.uw = load i64, ptr %i.ph, align 8, !tbaa !40
  %i.ux = getelementptr inbounds nuw i8, ptr %i.us, i64 %i.uw
  br label %bb.er

bb.eo:                                            ; preds = %bb.em
  %i.uy = add i32 %.fr466, 1
  %i.uz = icmp ult i32 %i.uy, 3
  %i.va = select i1 %i.uz, i32 %.fr466, i32 0     ; 2 uses
  %i.vb = mul nsw i32 %i.va, %.fr466
  %i.vc = sub nsw i32 1, %i.vb
  %i.vd = load i64, ptr %i.ph, align 8, !tbaa !40
  %i.ve = sext i32 %i.va to i64
  %i.vf = mul i64 %i.vd, %i.ve
  %i.vg = getelementptr inbounds nuw i8, ptr %i.us, i64 %i.vf
  %i.vh = sext i32 %i.vc to i64
  %i.vi = getelementptr inbounds [8 x i8], ptr %i.vg, i64 %i.vh
  br label %bb.er

bb.ep:                                            ; preds = %_ZNK2cv3Mat2atIdEERKT_i.exit308
  %i.vj = load ptr, ptr %i.pg, align 8, !tbaa !153 ; 3 uses
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !109
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !109
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit317

bb.eq:                                            ; preds = %bb.el
  %i.vo = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !109
  %i.vq = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit317

bb.er:                                            ; preds = %bb.en, %bb.eo
  %.0.i313.ph.ph = phi ptr [ %i.ux, %bb.en ], [ %i.vi, %bb.eo ]
  %i.vr = load double, ptr %.0.i313.ph.ph, align 8, !tbaa !109 ; 2 uses
  %i.vs = load i32, ptr %i.pf, align 4, !tbaa !143 ; 4 uses
  %i.vt = icmp eq i32 %i.vs, 1
  br i1 %i.vt, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.vu = load i64, ptr %i.ph, align 8, !tbaa !40
  %i.vv = shl i64 %i.vu, 1
  %i.vw = getelementptr inbounds nuw i8, ptr %i.us, i64 %i.vv
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit317

bb.et:                                            ; preds = %bb.er
  %i.vx = sdiv i32 2, %i.vs                       ; 2 uses
  %i.vy = mul nsw i32 %i.vx, %i.vs                ; 0 uses
  %.recomposed614 = srem i32 2, %i.vs
  %i.vz = load i64, ptr %i.ph, align 8, !tbaa !40
  %i.wa = sext i32 %i.vx to i64
  %i.wb = mul i64 %i.vz, %i.wa
  %i.wc = getelementptr inbounds nuw i8, ptr %i.us, i64 %i.wb
  %i.wd = sext i32 %.recomposed614 to i64
  %i.we = getelementptr inbounds [8 x i8], ptr %i.wc, i64 %i.wd
  br label %_ZNK2cv3Mat2atIdEERKT_i.exit317

_ZNK2cv3Mat2atIdEERKT_i.exit317:                  ; preds = %bb.ep, %bb.eq, %bb.es, %bb.et
  %i.wf = phi double [ %i.vm, %bb.ep ], [ %i.vp, %bb.eq ], [ %i.vr, %bb.es ], [ %i.vr, %bb.et ] ; 2 uses
  %i.wg = phi double [ %i.vk, %bb.ep ], [ %i.ut, %bb.eq ], [ %i.ut, %bb.es ], [ %i.ut, %bb.et ] ; 2 uses
  %.0.i316 = phi ptr [ %i.vn, %bb.ep ], [ %i.vq, %bb.eq ], [ %i.vw, %bb.es ], [ %i.we, %bb.et ]
  %i.wh = load double, ptr %.0.i316, align 8, !tbaa !109
  %i.wi = insertelement <2 x double> poison, double %i.ui, i64 0
  %i.wj = insertelement <2 x double> %i.wi, double %i.wf, i64 1 ; 2 uses
  %i.wk = fmul <2 x double> %i.wj, %i.wj
  %i.wl = insertelement <2 x double> poison, double %i.uj, i64 0
  %i.wm = insertelement <2 x double> %i.wl, double %i.wg, i64 1 ; 2 uses
  %i.wn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wm, <2 x double> %i.wm, <2 x double> %i.wk) ; 3 uses
  %i.wo = extractelement <2 x double> %i.wn, i64 0
  %i.wp = call double @sqrt(double noundef %i.wo) #18 ; 3 uses
  %i.wq = extractelement <2 x double> %i.wn, i64 1 ; 2 uses
  %i.wr = fdiv double %i.wg, %i.wq
  %i.ws = insertelement <2 x double> poison, double %i.wh, i64 0
  %i.wt = insertelement <2 x double> %i.ws, double %i.wf, i64 1
  %i.wu = shufflevector <2 x double> %i.wn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wv = fdiv <2 x double> %i.wt, %i.wu          ; 3 uses
  %i.ww = add nsw i32 %.0143507, 1
  %i.wx = icmp slt i32 %.0143507, 300
  br i1 %i.wx, label %bb.eu, label %bb.fj

bb.eu:                                            ; preds = %_ZNK2cv3Mat2atIdEERKT_i.exit317
  %81 = insertelement <2 x double> poison, double %i.uk, i64 0
  %82 = insertelement <2 x double> %81, double %i.ui, i64 1
  %83 = insertelement <2 x double> poison, double %i.wp, i64 0
  %84 = shufflevector <2 x double> %83, <2 x double> poison, <2 x i32> zeroinitializer
  %85 = fdiv <2 x double> %82, %84                ; 3 uses
  %i.wy = fdiv double %i.uj, %i.wp
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #18
  store i64 0, ptr %i.pj, align 8
  store i32 50397184, ptr %63, align 8, !tbaa !90
  store ptr %14, ptr %i.pi, align 8, !tbaa !91
  %86 = load i32, ptr %i.pk, align 4, !tbaa !143
  %87 = sitofp i32 %86 to double                  ; 2 uses
  %88 = extractelement <2 x double> %85, i64 0
  %89 = call double @llvm.fmuladd.f64(double %i.wy, double %87, double %88)
  %90 = insertelement <2 x double> %85, double %89, i64 1
  %91 = fneg <2 x double> %90
  %92 = shufflevector <2 x double> %85, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %93 = fdiv <2 x double> %91, %92                ; 2 uses
  %94 = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %93)
  %.sroa.2.0.insert.ext.i = zext i32 %94 to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0440.0.vec.insert = insertelement <2 x double> poison, double %87, i64 0
  %i.wz = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %.sroa.0440.0.vec.insert)
  %95 = shufflevector <2 x double> %93, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.xa = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %95)
  %.sroa.2.0.insert.ext.i318 = zext i32 %i.xa to i64
  %.sroa.2.0.insert.shift.i319 = shl nuw i64 %.sroa.2.0.insert.ext.i318, 32
  %.sroa.0.0.insert.ext.i320 = zext i32 %i.wz to i64
  %.sroa.0.0.insert.insert.i321 = or disjoint i64 %.sroa.2.0.insert.shift.i319, %.sroa.0.0.insert.ext.i320
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %63, i64 %.sroa.2.0.insert.shift.i, i64 %.sroa.0.0.insert.insert.i321, ptr noundef nonnull align 8 dereferenceable(32) %55, i32 noundef 1, i32 noundef 8, i32 noundef 0)
          to label %bb.ev unwind label %bb.fh

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #18
  store i64 0, ptr %i.pm, align 8
  store i32 50397184, ptr %64, align 8, !tbaa !90
  store ptr %15, ptr %i.pl, align 8, !tbaa !91
  %i.xb = load i32, ptr %i.pn, align 4, !tbaa !143
  %i.xc = sitofp i32 %i.xb to double              ; 2 uses
  %i.xd = extractelement <2 x double> %i.wv, i64 0
  %i.xe = call double @llvm.fmuladd.f64(double %i.wr, double %i.xc, double %i.xd)
  %i.xf = insertelement <2 x double> %i.wv, double %i.xe, i64 1
  %i.xg = fneg <2 x double> %i.xf
  %i.xh = shufflevector <2 x double> %i.wv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.xi = fdiv <2 x double> %i.xg, %i.xh          ; 2 uses
  %i.xj = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.xi)
  %.sroa.2.0.insert.ext.i322 = zext i32 %i.xj to i64
  %.sroa.2.0.insert.shift.i323 = shl nuw i64 %.sroa.2.0.insert.ext.i322, 32
  %.sroa.0436.0.vec.insert = insertelement <2 x double> poison, double %i.xc, i64 0
  %i.xk = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %.sroa.0436.0.vec.insert)
  %i.xl = shufflevector <2 x double> %i.xi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.xm = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.xl)
  %.sroa.2.0.insert.ext.i326 = zext i32 %i.xm to i64
  %.sroa.2.0.insert.shift.i327 = shl nuw i64 %.sroa.2.0.insert.ext.i326, 32
  %.sroa.0.0.insert.ext.i328 = zext i32 %i.xk to i64
  %.sroa.0.0.insert.insert.i329 = or disjoint i64 %.sroa.2.0.insert.shift.i327, %.sroa.0.0.insert.ext.i328
  invoke void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %64, i64 %.sroa.2.0.insert.shift.i323, i64 %.sroa.0.0.insert.insert.i329, ptr noundef nonnull align 8 dereferenceable(32) %55, i32 noundef 1, i32 noundef 8, i32 noundef 0)
          to label %bb.ew unwind label %bb.fi

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #18
  br label %bb.fj

bb.ex:                                            ; preds = %bb.dw
  %i.xn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ey:                                            ; preds = %bb.dx
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ez:                                            ; preds = %.body294, %bb.ey
  %.pn194 = phi { ptr, i32 } [ %i.si, %.body294 ], [ %i.xo, %bb.ey ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %58) #18
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ex
  %.pn194.pn = phi { ptr, i32 } [ %.pn194, %bb.ez ], [ %i.xn, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18
  br label %bb.gb

bb.fb:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.xp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.fc:                                            ; preds = %bb.dz
  %i.xq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.fd:                                            ; preds = %bb.ea
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.fe:                                            ; preds = %.body298, %bb.fd
  %.pn197 = phi { ptr, i32 } [ %i.sn, %.body298 ], [ %i.xr, %bb.fd ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %62) #18
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fc
  %.pn197.pn = phi { ptr, i32 } [ %.pn197, %bb.fe ], [ %i.xq, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %61) #18
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fb
  %.pn197.pn.pn = phi { ptr, i32 } [ %.pn197.pn, %bb.ff ], [ %i.xp, %bb.fb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #18
  br label %bb.ga

bb.fh:                                            ; preds = %bb.eu
  %i.xs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #18
  br label %bb.fz

bb.fi:                                            ; preds = %bb.ev
  %i.xt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #18
  br label %bb.fz

bb.fj:                                            ; preds = %bb.ew, %_ZNK2cv3Mat2atIdEERKT_i.exit317
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #18
  store i64 0, ptr %i.pp, align 8
  store i32 50397184, ptr %65, align 8, !tbaa !90
  store ptr %14, ptr %i.po, align 8, !tbaa !91
  %i.xu = sext i32 %i.qc to i64                   ; 2 uses
  %i.xv = load ptr, ptr %34, align 8, !tbaa !106
  %i.xw = getelementptr inbounds nuw [16 x i8], ptr %i.xv, i64 %i.xu
  %i.xx = load <2 x double>, ptr %i.xw, align 8   ; 2 uses
  %i.xy = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.xx)
  %i.xz = shufflevector <2 x double> %i.xx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ya = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.xz)
  %.sroa.2.0.insert.ext.i330 = zext i32 %i.ya to i64
  %.sroa.2.0.insert.shift.i331 = shl nuw i64 %.sroa.2.0.insert.ext.i330, 32
  %.sroa.0.0.insert.ext.i332 = zext i32 %i.xy to i64
  %.sroa.0.0.insert.insert.i333 = or disjoint i64 %.sroa.2.0.insert.shift.i331, %.sroa.0.0.insert.ext.i332
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %65, i64 %.sroa.0.0.insert.insert.i333, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %55, i32 noundef -1, i32 noundef 8, i32 noundef 0)
          to label %bb.fk unwind label %bb.fq

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #18
  store i64 0, ptr %i.pr, align 8
  store i32 50397184, ptr %66, align 8, !tbaa !90
  store ptr %15, ptr %i.pq, align 8, !tbaa !91
  %i.yb = load ptr, ptr %35, align 8, !tbaa !106
  %i.yc = getelementptr inbounds nuw [16 x i8], ptr %i.yb, i64 %i.xu
  %i.yd = load <2 x double>, ptr %i.yc, align 8   ; 2 uses
  %i.ye = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.yd)
  %i.yf = shufflevector <2 x double> %i.yd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.yg = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.yf)
  %.sroa.2.0.insert.ext.i334 = zext i32 %i.yg to i64
  %.sroa.2.0.insert.shift.i335 = shl nuw i64 %.sroa.2.0.insert.ext.i334, 32
  %.sroa.0.0.insert.ext.i336 = zext i32 %i.ye to i64
  %.sroa.0.0.insert.insert.i337 = or disjoint i64 %.sroa.2.0.insert.shift.i335, %.sroa.0.0.insert.ext.i336
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %66, i64 %.sroa.0.0.insert.insert.i337, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %55, i32 noundef -1, i32 noundef 8, i32 noundef 0)
          to label %bb.fl unwind label %bb.fr

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !167
  store i64 9223372034707292160, ptr %4, align 8, !noalias !167
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !167
  store i32 %i.qc, ptr %5, align 4, !tbaa !156, !noalias !167
  store i32 %i.sd, ptr %i.ps, align 4, !tbaa !157, !noalias !167
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %67, ptr noundef nonnull align 8 dereferenceable(208) %41, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %bb.fm unwind label %bb.fs

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !167
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #18
  store i32 0, ptr %i.pt, align 8, !tbaa !87
  store i32 0, ptr %i.pu, align 4, !tbaa !88
  store i32 16842752, ptr %68, align 8, !tbaa !90
  store ptr %56, ptr %i.pv, align 8, !tbaa !91
  %i.yh = invoke noundef double @_ZNK2cv3Mat3dotERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %67, ptr noundef nonnull align 8 dereferenceable(24) %68)
          to label %bb.fn unwind label %bb.ft

bb.fn:                                            ; preds = %bb.fm
  %i.yi = call double @llvm.fabs.f64(double %i.yh)
  %i.yj = fdiv double %i.yi, %i.wq
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !168
  store i64 9223372034707292160, ptr %2, align 8, !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !168
  store i32 %i.qc, ptr %3, align 4, !tbaa !156, !noalias !168
  store i32 %i.sd, ptr %i.pw, align 4, !tbaa !157, !noalias !168
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %69, ptr noundef nonnull align 8 dereferenceable(208) %42, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %bb.fo unwind label %bb.fu

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #18
  store i32 0, ptr %i.px, align 8, !tbaa !87
  store i32 0, ptr %i.py, align 4, !tbaa !88
  store i32 16842752, ptr %70, align 8, !tbaa !90
  store ptr %59, ptr %i.pz, align 8, !tbaa !91
  %i.yk = invoke noundef double @_ZNK2cv3Mat3dotERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %69, ptr noundef nonnull align 8 dereferenceable(24) %70)
          to label %bb.fp unwind label %bb.fv

bb.fp:                                            ; preds = %bb.fo
  %i.yl = fdiv double %i.yk, %i.wp
  %i.ym = call double @llvm.fabs.f64(double %i.yl)
  %i.yn = fadd double %i.yj, %i.ym
  %i.yo = fmul double %i.yn, 5.000000e-01
  %i.yp = fadd double %.0139509, %i.yo
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %69) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %67) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #18
  %i.yq = add nsw i32 %.0141508, 1
end_hunk_0
