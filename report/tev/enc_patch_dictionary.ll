Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_patch_dictionary?download=true
inline.NumInlined: 4484
inline.NumDeleted: 2596
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN3jxl23FindBestPatchDictionaryERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEb:bb.a
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.od ; 5 uses
  %i.op = getelementptr inbounds nuw [16 x i8], ptr %i.on, i64 %.0.i.i.i.us.i.3
  %.sroa.0148.0.insert.ext.us.i.3 = and i64 %.0332333.us.i.3, 4294967295
  %.sroa.0148.0.insert.insert.us.i.3 = or disjoint i64 %.sroa.0148.0.insert.ext.us.i.3, %i.jd ; 2 uses
  store i64 %.sroa.0148.0.insert.insert.us.i.3, ptr %i.oo, align 4, !tbaa !208, !noalias !660
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store i64 %.sroa.0148.0.insert.insert.us.i.3, ptr %i.oq, align 4, !tbaa !208, !noalias !660
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 16 ; 3 uses
  %i.os = load ptr, ptr %i.ii, align 8, !tbaa !687, !noalias !660 ; 2 uses
  %i.ot = load ptr, ptr %25, align 8, !tbaa !688, !noalias !660 ; 5 uses
  %.not13.i.i.i.i.us.i.3 = icmp eq ptr %i.os, %i.ot
  br i1 %.not13.i.i.i.i.us.i.3, label %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i.3, label %.lr.ph.i.i.i.i.us.i.3

.lr.ph.i.i.i.i.us.i.3:                            ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i.3, %.lr.ph.i.i.i.i.us.i.3
  %i.ou = phi ptr [ %i.ov, %.lr.ph.i.i.i.i.us.i.3 ], [ %i.oo, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i.3 ]
  %.sroa.18.014.i.i.i.i.us.i.3 = phi ptr [ %i.ow, %.lr.ph.i.i.i.i.us.i.3 ], [ %i.os, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i.3 ]
  %i.ov = getelementptr inbounds i8, ptr %i.ou, i64 -16 ; 3 uses
  %i.ow = getelementptr inbounds i8, ptr %.sroa.18.014.i.i.i.i.us.i.3, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ov, ptr noundef nonnull align 4 dereferenceable(16) %i.ow, i64 16, i1 false), !tbaa.struct !689, !noalias !660
  %.not.i.i.i.i.us.i.3 = icmp eq ptr %i.ow, %i.ot
  br i1 %.not.i.i.i.i.us.i.3, label %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i.3, label %.lr.ph.i.i.i.i.us.i.3, !llvm.loop !576

_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i.3: ; preds = %.lr.ph.i.i.i.i.us.i.3, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i.3
  %storemerge.i.i.us.i.3 = phi ptr [ %i.oo, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i.us.i.3 ], [ %i.ov, %.lr.ph.i.i.i.i.us.i.3 ]
  store ptr %storemerge.i.i.us.i.3, ptr %25, align 8, !tbaa !690, !noalias !660
  store ptr %i.or, ptr %i.ii, align 8, !tbaa !690, !noalias !660
  %i.ox = load ptr, ptr %i.hq, align 8, !tbaa !690, !noalias !660
  store ptr %i.op, ptr %i.hq, align 8, !tbaa !690, !noalias !660
  %.not.i5.i.i.us.i.3 = icmp eq ptr %i.ot, null
  br i1 %.not.i5.i.i.us.i.3, label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i.3, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i.3
  %i.oy = ptrtoint ptr %i.ox to i64
  %i.oz = ptrtoint ptr %i.ot to i64
  %i.pa = sub i64 %i.oy, %i.oz
  call void @_ZdlPvm(ptr noundef nonnull %i.ot, i64 noundef %i.pa) #21, !noalias !660
  br label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i.3

bb.al:                                            ; preds = %._crit_edge.us.i.2
  %.sroa.0148.0.insert.ext154.us.i.3 = and i64 %.0332333.us.i.3, 4294967295
  %.sroa.0148.0.insert.insert156.us.i.3 = or disjoint i64 %.sroa.0148.0.insert.ext154.us.i.3, %i.jd ; 2 uses
  store i64 %.sroa.0148.0.insert.insert156.us.i.3, ptr %i.nx, align 4, !tbaa !208, !noalias !660
  %i.pb = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store i64 %.sroa.0148.0.insert.insert156.us.i.3, ptr %i.pb, align 4, !tbaa !208, !noalias !660
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  br label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i.3

_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i.3: ; preds = %bb.al, %bb.ak, %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i.3
  %.0.i414.us.i.3 = phi ptr [ %i.pc, %bb.al ], [ %i.or, %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i.us.i.3 ], [ %i.or, %bb.ak ]
  store ptr %.0.i414.us.i.3, ptr %i.ii, align 8, !tbaa !687, !noalias !660
  %i.pd = shl i64 %.0332333.us.i.3, 32
  %i.pe = ashr exact i64 %i.pd, 32
  %i.pf = getelementptr i8, ptr %i.jg, i64 %i.pe
  store i8 1, ptr %i.pf, align 1, !tbaa !71, !noalias !660
  %i.pg = add nuw i64 %.0332333.us.i.3, 1         ; 2 uses
  %i.ph = icmp ult i64 %i.pg, %i.jl
  br i1 %i.ph, label %._crit_edge.us.i.2, label %._crit_edge.us.i.3, !llvm.loop !577

._crit_edge.us.i.3:                               ; preds = %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit.us.i.3
  %.pre558.i = load i64, ptr %i.b, align 8, !tbaa !102, !noalias !660
  br label %..loopexit251_crit_edge.split.us.i

._crit_edge341.i:                                 ; preds = %..loopexit251_crit_edge.split.us.i, %bb.z
  %i.pi = phi i64 [ %i.ij, %bb.z ], [ %i.kx, %..loopexit251_crit_edge.split.us.i ]
  %i.pj = phi i64 [ %i.ik, %bb.z ], [ %i.kx, %..loopexit251_crit_edge.split.us.i ]
  %i.pk = add nuw nsw i64 %.0291344.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.pk, %i.ie
  br i1 %exitcond.not.i, label %.loopexit253.i, label %bb.z, !llvm.loop !579

.split.us.i:                                      ; preds = %bb.aa, %bb.ad, %bb.ag, %bb.aj
  call void @_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %25) #22, !noalias !660
  unreachable

.split343.us.i:                                   ; preds = %_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i.us.i, %_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i.us.i.1, %_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i.us.i.2, %_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i.us.i.3
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #22, !noalias !660
  unreachable

.loopexit253.i:                                   ; preds = %._crit_edge341.i, %.preheader252.i, %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE7reserveEm.exit.i
  %i.pl = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 8 uses
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !687, !noalias !660
  %i.pn = load ptr, ptr %25, align 8, !tbaa !688, !noalias !660 ; 3 uses
  %.not482.i = icmp eq ptr %i.pm, %i.pn
  br i1 %.not482.i, label %._crit_edge.i, label %.lr.ph356.i

.loopexit250.i:                                   ; preds = %.split.us347.i
  %i.po = load ptr, ptr %i.pl, align 8, !tbaa !687, !noalias !660
  %i.pp = load ptr, ptr %25, align 8, !tbaa !688, !noalias !660 ; 3 uses
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = ptrtoint ptr %i.pp to i64
  %i.ps = sub i64 %i.pq, %i.pr
  %i.pt = ashr exact i64 %i.ps, 4
  %i.pu = icmp ult i64 %i.qx, %i.pt
  br i1 %i.pu, label %.lr.ph356.i, label %._crit_edge.i, !llvm.loop !580

.lr.ph356.i:                                      ; preds = %.loopexit253.i, %.loopexit250.i
  %i.pv = phi ptr [ %i.pp, %.loopexit250.i ], [ %i.pn, %.loopexit253.i ]
  %.0290355.i = phi i64 [ %i.qx, %.loopexit250.i ], [ 0, %.loopexit253.i ] ; 2 uses
  %i.pw = getelementptr inbounds nuw [16 x i8], ptr %i.pv, i64 %.0290355.i ; 3 uses
  %.sroa.0181.0.copyload.i = load i32, ptr %i.pw, align 4, !tbaa !208, !noalias !660 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !208, !noalias !660 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.py = load i64, ptr %i.px, align 4, !tbaa !208, !noalias !660 ; 6 uses
  %i.pz = ashr i64 %i.py, 32
  %i.qa = mul i64 %i.pz, %i.m                     ; 4 uses
  %sext244.i = shl i64 %i.py, 32                  ; 2 uses
  %i.qb = ashr exact i64 %sext244.i, 30           ; 3 uses
  %i.qc = sext i32 %.sroa.5.0.copyload.i to i64
  %i.qd = mul i64 %i.hl, %i.qc                    ; 3 uses
  %i.qe = sext i32 %.sroa.0181.0.copyload.i to i64 ; 3 uses
  %i.qf = load ptr, ptr %i.a, align 16, !tbaa !183, !noalias !660
  %i.qg = getelementptr [4 x i8], ptr %i.qf, i64 %i.qa
  %i.qh = getelementptr i8, ptr %i.qg, i64 %i.qb
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !106, !noalias !660
  %i.qj = getelementptr [4 x i8], ptr %i.hf, i64 %i.qd
  %i.qk = getelementptr [4 x i8], ptr %i.qj, i64 %i.qe
  store float %i.qi, ptr %i.qk, align 4, !tbaa !106, !noalias !660
  %i.ql = load ptr, ptr %i.p, align 8, !tbaa !183, !noalias !660
  %i.qm = getelementptr [4 x i8], ptr %i.ql, i64 %i.qa
  %i.qn = getelementptr i8, ptr %i.qm, i64 %i.qb
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !106, !noalias !660
  %i.qp = getelementptr [4 x i8], ptr %i.hh, i64 %i.qd
  %i.qq = getelementptr [4 x i8], ptr %i.qp, i64 %i.qe
  store float %i.qo, ptr %i.qq, align 4, !tbaa !106, !noalias !660
  %i.qr = load ptr, ptr %i.s, align 16, !tbaa !183, !noalias !660
  %i.qs = getelementptr [4 x i8], ptr %i.qr, i64 %i.qa
  %i.qt = getelementptr i8, ptr %i.qs, i64 %i.qb
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !106, !noalias !660
  %i.qv = getelementptr [4 x i8], ptr %i.hj, i64 %i.qd
  %i.qw = getelementptr [4 x i8], ptr %i.qv, i64 %i.qe
  store float %i.qu, ptr %i.qw, align 4, !tbaa !106, !noalias !660
  %.sroa.0132.0.extract.trunc.i = trunc i64 %i.py to i32
  %.sroa.8139.0.extract.shift.i = lshr i64 %i.py, 32
  %.sroa.8139.0.extract.trunc.i = trunc nuw i64 %.sroa.8139.0.extract.shift.i to i32
  %i.qx = add nuw i64 %.0290355.i, 1              ; 2 uses
  %i.qy = ashr exact i64 %sext244.i, 32
  %i.qz = add i64 %i.qa, %i.qy                    ; 3 uses
  br label %.preheader248.i

.preheader248.i:                                  ; preds = %.split.us347.i, %.lr.ph356.i
  %.0334354.i = phi i32 [ -1, %.lr.ph356.i ], [ %i.tv, %.split.us347.i ] ; 2 uses
  %i.ra = add nsw i32 %.0334354.i, %.sroa.0181.0.copyload.i
  %.fr.i = freeze i32 %i.ra                       ; 3 uses
  %i.rb = icmp slt i32 %.fr.i, 0
  %i.rc = zext nneg i32 %.fr.i to i64             ; 5 uses
  %invariant.gep.i = getelementptr i8, ptr %i.hn, i64 %i.rc
  %i.rd = sub nsw i32 %.fr.i, %.sroa.0132.0.extract.trunc.i
  %i.re = call i32 @llvm.abs.i32(i32 %i.rd, i1 true)
  br i1 %i.rb, label %.split.us347.i, label %.preheader248.split.i

.preheader248.split.i:                            ; preds = %.preheader248.i
  %.not358.i = icmp ugt i64 %i.x, %i.rc
  %.not358.fr.i = freeze i1 %.not358.i
  br i1 %.not358.fr.i, label %.preheader248.split.split.us.i, label %.split.us347.i

.preheader248.split.split.us.i:                   ; preds = %.preheader248.split.i, %bb.au
  %.0335346.us349.i = phi i32 [ %i.tu, %bb.au ], [ -1, %.preheader248.split.i ] ; 2 uses
  %i.rf = add nsw i32 %.0335346.us349.i, %.sroa.5.0.copyload.i ; 3 uses
  %i.rg = icmp slt i32 %i.rf, 0
  br i1 %i.rg, label %bb.au, label %bb.am

bb.am:                                            ; preds = %.preheader248.split.split.us.i
  %i.rh = zext nneg i32 %i.rf to i64              ; 5 uses
  %.not359.us.i = icmp ugt i64 %i.aa, %i.rh
  br i1 %.not359.us.i, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.ri = mul i64 %i.hp, %i.rh
  %gep.us.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.ri ; 2 uses
  %i.rj = load i8, ptr %gep.us.i, align 1, !tbaa !71, !noalias !660
  %.not360.us.i = icmp eq i8 %i.rj, 0
  br i1 %.not360.us.i, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.rk = sub nsw i32 %i.rf, %.sroa.8139.0.extract.trunc.i
  %i.rl = call i32 @llvm.abs.i32(i32 %i.rk, i1 true)
  %i.rm = add nuw nsw i32 %i.rl, %i.re
  %i.rn = icmp samesign ugt i32 %i.rm, 50
  br i1 %i.rn, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ro = load ptr, ptr %i.a, align 16, !tbaa !183, !noalias !660 ; 2 uses
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %i.qz
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !106, !noalias !660
  %i.rr = load ptr, ptr %i.p, align 8, !tbaa !183, !noalias !660 ; 2 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %i.qz
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !106, !noalias !660
  %i.ru = load ptr, ptr %i.s, align 16, !tbaa !183, !noalias !660 ; 2 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %i.qz
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !106, !noalias !660
  %i.rx = mul i64 %i.m, %i.rh
  %i.ry = add i64 %i.rx, %i.rc                    ; 3 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %i.ry
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !106, !noalias !660
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %i.ry
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !106, !noalias !660
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %i.ry
  %i.se = load float, ptr %i.sd, align 4, !tbaa !106, !noalias !660
  %i.sf = fsub float %i.rq, %i.sa
  %i.sg = call noundef float @llvm.fabs.f32(float %i.sf)
  %47 = call float @llvm.fmuladd.f32(float %i.sg, float %.sink2.i.i, float 0.000000e+00)
  %i.sh = fsub float %i.rt, %i.sc
  %i.si = call noundef float @llvm.fabs.f32(float %i.sh)
  %i.sj = call float @llvm.fmuladd.f32(float %i.si, float %.sink1.i.i, float %47)
  %i.sk = fsub float %i.rw, %i.se
  %i.sl = call noundef float @llvm.fabs.f32(float %i.sk)
  %i.sm = call float @llvm.fmuladd.f32(float %i.sl, float %.sink.i.i, float %i.sj)
  %i.sn = fcmp ugt float %i.sm, 8.000000e-01
  br i1 %i.sn, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.so = load ptr, ptr %i.pl, align 8, !tbaa !687, !noalias !660 ; 5 uses
  %i.sp = load ptr, ptr %i.hq, align 8, !tbaa !690, !noalias !660 ; 2 uses
  %i.sq = icmp ult ptr %i.so, %i.sp
  br i1 %i.sq, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.sr = load ptr, ptr %25, align 8, !tbaa !688, !noalias !660
  %i.ss = ptrtoint ptr %i.so to i64
  %i.st = ptrtoint ptr %i.sr to i64               ; 2 uses
  %i.su = sub i64 %i.ss, %i.st                    ; 2 uses
  %i.sv = ashr exact i64 %i.su, 4
  %i.sw = add nsw i64 %i.sv, 1                    ; 2 uses
  %i.sx = icmp ugt i64 %i.sw, 1152921504606846975
  br i1 %i.sx, label %.split351.us.i, label %_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i415.us.i

_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i415.us.i: ; preds = %bb.ar
  %i.sy = ptrtoint ptr %i.sp to i64
  %i.sz = sub i64 %i.sy, %i.st                    ; 2 uses
  %.not.i.i.i416.us.i = icmp ult i64 %i.sz, 9223372036854775792
  %i.ta = ashr exact i64 %i.sz, 3
  %.sroa.speculated.i.i.i417.us.i = call i64 @llvm.umax.i64(i64 %i.ta, i64 %i.sw)
  %.0.i.i.i418.us.i = select i1 %.not.i.i.i416.us.i, i64 %.sroa.speculated.i.i.i417.us.i, i64 1152921504606846975 ; 4 uses
  %i.tb = icmp ne i64 %.0.i.i.i418.us.i, 0
  call void @llvm.assume(i1 %i.tb)
  %i.tc = icmp ugt i64 %.0.i.i.i418.us.i, 1152921504606846975
  br i1 %i.tc, label %.split353.us.i, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i419.us.i

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i419.us.i: ; preds = %_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i415.us.i
  %i.td = shl nuw i64 %.0.i.i.i418.us.i, 4
  %i.te = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.td) #20, !noalias !660 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.su ; 5 uses
  %i.tg = getelementptr inbounds nuw [16 x i8], ptr %i.te, i64 %.0.i.i.i418.us.i
  %.sroa.9125.0.insert.shift.us.i = shl nuw nsw i64 %i.rh, 32
  %.sroa.0118.0.insert.insert.us.i = or disjoint i64 %.sroa.9125.0.insert.shift.us.i, %i.rc
  store i64 %.sroa.0118.0.insert.insert.us.i, ptr %i.tf, align 4, !tbaa !208, !noalias !660
  %i.th = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  store i64 %i.py, ptr %i.th, align 4, !tbaa !208, !noalias !660
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 16 ; 3 uses
  %i.tj = load ptr, ptr %i.pl, align 8, !tbaa !687, !noalias !660 ; 2 uses
  %i.tk = load ptr, ptr %25, align 8, !tbaa !688, !noalias !660 ; 5 uses
  %.not13.i.i.i.i420.us.i = icmp eq ptr %i.tj, %i.tk
  br i1 %.not13.i.i.i.i420.us.i, label %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i424.us.i, label %.lr.ph.i.i.i.i421.us.i

.lr.ph.i.i.i.i421.us.i:                           ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i419.us.i, %.lr.ph.i.i.i.i421.us.i
  %i.tl = phi ptr [ %i.tm, %.lr.ph.i.i.i.i421.us.i ], [ %i.tf, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i419.us.i ]
  %.sroa.18.014.i.i.i.i422.us.i = phi ptr [ %i.tn, %.lr.ph.i.i.i.i421.us.i ], [ %i.tj, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i419.us.i ]
  %i.tm = getelementptr inbounds i8, ptr %i.tl, i64 -16 ; 3 uses
  %i.tn = getelementptr inbounds i8, ptr %.sroa.18.014.i.i.i.i422.us.i, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.tm, ptr noundef nonnull align 4 dereferenceable(16) %i.tn, i64 16, i1 false), !tbaa.struct !689, !noalias !660
  %.not.i.i.i.i423.us.i = icmp eq ptr %i.tn, %i.tk
  br i1 %.not.i.i.i.i423.us.i, label %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i424.us.i, label %.lr.ph.i.i.i.i421.us.i, !llvm.loop !576

_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i424.us.i: ; preds = %.lr.ph.i.i.i.i421.us.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i419.us.i
  %storemerge.i.i425.us.i = phi ptr [ %i.tf, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairINS2_IiiEES3_EEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i.i.i419.us.i ], [ %i.tm, %.lr.ph.i.i.i.i421.us.i ]
  store ptr %storemerge.i.i425.us.i, ptr %25, align 8, !tbaa !690, !noalias !660
  store ptr %i.ti, ptr %i.pl, align 8, !tbaa !690, !noalias !660
  %i.to = load ptr, ptr %i.hq, align 8, !tbaa !690, !noalias !660
  store ptr %i.tg, ptr %i.hq, align 8, !tbaa !690, !noalias !660
  %.not.i5.i.i426.us.i = icmp eq ptr %i.tk, null
  br i1 %.not.i5.i.i426.us.i, label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit428.us.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i424.us.i
  %i.tp = ptrtoint ptr %i.to to i64
  %i.tq = ptrtoint ptr %i.tk to i64
  %i.tr = sub i64 %i.tp, %i.tq
  call void @_ZdlPvm(ptr noundef nonnull %i.tk, i64 noundef %i.tr) #21, !noalias !660
  br label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit428.us.i

bb.at:                                            ; preds = %bb.aq
  %.sroa.9125.0.insert.shift128.us.i = shl nuw nsw i64 %i.rh, 32
  %.sroa.0118.0.insert.insert124.us.i = or disjoint i64 %.sroa.9125.0.insert.shift128.us.i, %i.rc
  store i64 %.sroa.0118.0.insert.insert124.us.i, ptr %i.so, align 4, !tbaa !208, !noalias !660
  %i.ts = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  store i64 %i.py, ptr %i.ts, align 4, !tbaa !208, !noalias !660
  %i.tt = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  br label %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit428.us.i

_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit428.us.i: ; preds = %bb.at, %bb.as, %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i424.us.i
  %.0.i427.us.i = phi ptr [ %i.tt, %bb.at ], [ %i.ti, %_ZNSt3__114__split_bufferINS_4pairINS1_IiiEES2_EERNS_9allocatorIS3_EEE5clearB8nn180100Ev.exit.i.i.i424.us.i ], [ %i.ti, %bb.as ]
  store ptr %.0.i427.us.i, ptr %i.pl, align 8, !tbaa !687, !noalias !660
  store i8 1, ptr %gep.us.i, align 1, !tbaa !71, !noalias !660
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE12emplace_backIJRS2_S8_EEERS3_DpOT_.exit428.us.i, %bb.ap, %bb.ao, %bb.an, %bb.am, %.preheader248.split.split.us.i
  %i.tu = add nsw i32 %.0335346.us349.i, 1        ; 2 uses
  %exitcond515.not.i = icmp eq i32 %i.tu, 2
  br i1 %exitcond515.not.i, label %.split.us347.i, label %.preheader248.split.split.us.i, !llvm.loop !581

.split.us347.i:                                   ; preds = %bb.au, %.preheader248.split.i, %.preheader248.i
  %i.tv = add nsw i32 %.0334354.i, 1              ; 2 uses
  %exitcond516.not.i = icmp eq i32 %i.tv, 2
  br i1 %exitcond516.not.i, label %.loopexit250.i, label %.preheader248.i, !llvm.loop !582

.split351.us.i:                                   ; preds = %bb.ar
  call void @_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %25) #22, !noalias !660
  unreachable

.split353.us.i:                                   ; preds = %_ZNKSt3__16vectorINS_4pairINS1_IiiEES2_EENS_9allocatorIS3_EEE11__recommendB8nn180100Em.exit.i.i415.us.i
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #22, !noalias !660
  unreachable

._crit_edge.i:                                    ; preds = %.loopexit250.i, %.loopexit253.i
  %.lcssa323.i = phi ptr [ %i.pn, %.loopexit253.i ], [ %i.pp, %.loopexit250.i ]
  store ptr %.lcssa323.i, ptr %i.pl, align 8, !tbaa !687, !noalias !660
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19, !noalias !660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %26, i8 0, i64 56, i1 false), !noalias !660
  %.val387.i = load ptr, ptr %i.co, align 8, !tbaa !676, !noalias !660
  %.not239.not.i = icmp eq ptr %.val387.i, null   ; 4 uses
  br i1 %.not239.not.i, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %._crit_edge.i
  %i.tw = call i32 @_ZN3jxl19DumpPlaneNormalizedERKNS_14CompressParamsEPKcRKNS_5PlaneIhEE(ptr noundef nonnull align 8 dereferenceable(648) %i.c, ptr noundef nonnull @.str.38, ptr noundef nonnull align 8 dereferenceable(56) %22) #23, !noalias !660 ; 2 uses
  %i.tx = icmp eq i32 %i.tw, 0
  br i1 %i.tx, label %.critedge371.i, label %bb.ds

.critedge371.i:                                   ; preds = %bb.av
  br i1 %5, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.critedge371.i
  %i.ty = call i32 @_ZN3jxl12DumpXybImageERKNS_14CompressParamsEPKcRKNS_6Image3IfEE(ptr noundef nonnull align 8 dereferenceable(648) %i.c, ptr noundef nonnull @.str.40, ptr noundef nonnull align 8 dereferenceable(168) %24) #23, !noalias !660 ; 2 uses
  %i.tz = icmp eq i32 %i.ty, 0
  br i1 %i.tz, label %.critedge373.i, label %bb.ds

bb.ax:                                            ; preds = %.critedge371.i
  %i.ua = call i32 @_ZN3jxl9DumpImageERKNS_14CompressParamsEPKcRKNS_6Image3IfEE(ptr noundef nonnull align 8 dereferenceable(648) %i.c, ptr noundef nonnull @.str.40, ptr noundef nonnull align 8 dereferenceable(168) %24) #23, !noalias !660 ; 2 uses
  %i.ub = icmp eq i32 %i.ua, 0
  br i1 %i.ub, label %.critedge373.i, label %bb.ds

.critedge373.i:                                   ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19, !noalias !660
  call void @_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.230") align 8 %27, ptr noundef %i.j, i64 noundef %i.x, i64 noundef %i.aa, i64 noundef 0) #24, !noalias !660
  %i.uc = getelementptr inbounds nuw i8, ptr %27, i64 56 ; 2 uses
  %i.ud = load i32, ptr %i.uc, align 8, !tbaa !210, !noalias !660 ; 2 uses
  %i.ue = icmp eq i32 %i.ud, 0
  br i1 %i.ue, label %.critedge377.i, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.i

.critedge377.i:                                   ; preds = %.critedge373.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19, !noalias !660
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %28, ptr noundef nonnull align 8 dereferenceable(60) %27, i64 24, i1 false), !noalias !660
  %i.uf = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.uf, ptr noundef nonnull align 8 dereferenceable(24) %i.ug) #23, !noalias !660
  %i.uh = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %27, i64 48
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !192, !noalias !692
  store i64 %i.uj, ptr %i.uh, align 8, !tbaa !192, !alias.scope !691, !noalias !660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %26, ptr noundef nonnull align 8 dereferenceable(56) %28, i64 24, i1 false), !noalias !660
  %i.uk = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.ul = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.uk, ptr noundef nonnull align 8 dereferenceable(24) %i.uf) #23, !noalias !660 ; 0 uses
  %i.um = load i64, ptr %i.uh, align 8, !tbaa !192, !noalias !660
  %i.un = getelementptr inbounds nuw i8, ptr %26, i64 48
  store i64 %i.um, ptr %i.un, align 8, !tbaa !192, !noalias !660
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.uf) #23, !noalias !660
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19, !noalias !660
  %i.uo = load i32, ptr %26, align 8, !tbaa !193, !noalias !660
  %i.up = icmp eq i32 %i.uo, 0
  br i1 %i.up, label %_ZN3jxl13ZeroFillImageIfEEvPNS_5PlaneIT_EE.exit.i, label %.preheader.i429.i

.preheader.i429.i:                                ; preds = %.critedge377.i
  %i.uq = getelementptr inbounds nuw i8, ptr %26, i64 4 ; 2 uses
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !99, !noalias !660
  %.not.i430.i = icmp eq i32 %i.ur, 0
  br i1 %.not.i430.i, label %_ZN3jxl13ZeroFillImageIfEEvPNS_5PlaneIT_EE.exit.i, label %.lr.ph.i431.i

.lr.ph.i431.i:                                    ; preds = %.preheader.i429.i
  %i.us = getelementptr inbounds nuw i8, ptr %26, i64 40
  %i.ut = getelementptr inbounds nuw i8, ptr %26, i64 16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.lr.ph.i431.i
  %.07.i432.i = phi i64 [ 0, %.lr.ph.i431.i ], [ %i.vb, %bb.ay ] ; 2 uses
  %i.uu = load ptr, ptr %i.us, align 8, !tbaa !101, !noalias !660
  %i.uv = load i64, ptr %i.ut, align 8, !tbaa !100, !noalias !660
  %i.uw = mul i64 %i.uv, %.07.i432.i
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uu, i64 %i.uw ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ux, i64 64) ]
  %i.uy = load i32, ptr %26, align 8, !tbaa !193, !noalias !660
  %i.uz = zext i32 %i.uy to i64
  %i.va = shl nuw nsw i64 %i.uz, 2
  call void @llvm.memset.p0.i64(ptr align 64 %i.ux, i8 0, i64 %i.va, i1 false), !noalias !660
  %i.vb = add nuw nsw i64 %.07.i432.i, 1          ; 2 uses
  %i.vc = load i32, ptr %i.uq, align 4, !tbaa !99, !noalias !660
  %i.vd = zext i32 %i.vc to i64
  %i.ve = icmp samesign ult i64 %i.vb, %i.vd
  br i1 %i.ve, label %bb.ay, label %_ZN3jxl13ZeroFillImageIfEEvPNS_5PlaneIT_EE.exit.i, !llvm.loop !0

_ZN3jxl13ZeroFillImageIfEEvPNS_5PlaneIT_EE.exit.i: ; preds = %bb.ay, %.preheader.i429.i, %.critedge377.i
  %.pr.i = load i32, ptr %i.uc, align 8, !tbaa !210, !noalias !660
  %i.vf = icmp eq i32 %.pr.i, 0
end_hunk_0
begin_hunk_1_@_ZN3jxl23FindBestPatchDictionaryERKNS_6Image3IfEEPNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEb:bb.a
.lr.ph407.i:                                      ; preds = %.lr.ph407.i.preheader, %.loopexit.i
  %i.yl = phi ptr [ %i.ahp, %.loopexit.i ], [ %i.xf, %.lr.ph407.i.preheader ] ; 3 uses
  %i.ym = phi ptr [ %i.ahr, %.loopexit.i ], [ %.ph, %.lr.ph407.i.preheader ]
  %i.yn = phi ptr [ %i.ahs, %.loopexit.i ], [ %.ph1339, %.lr.ph407.i.preheader ] ; 2 uses
  %i.yo = phi ptr [ %i.aht, %.loopexit.i ], [ %.ph1340, %.lr.ph407.i.preheader ] ; 2 uses
  %i.yp = phi ptr [ %i.ahu, %.loopexit.i ], [ %.ph1341, %.lr.ph407.i.preheader ] ; 2 uses
  %i.yq = phi ptr [ %i.ahv, %.loopexit.i ], [ %.ph1342, %.lr.ph407.i.preheader ] ; 2 uses
  %i.yr = phi ptr [ %i.ahw, %.loopexit.i ], [ %i.xn, %.lr.ph407.i.preheader ] ; 8 uses
  %i.ys = phi ptr [ %i.ahq, %.loopexit.i ], [ %.ph1343, %.lr.ph407.i.preheader ]
  %.0304406.i = phi i1 [ %.6310.i, %.loopexit.i ], [ true, %.lr.ph407.i.preheader ] ; 2 uses
  %.0311405.i = phi i8 [ %.6317.i, %.loopexit.i ], [ 0, %.lr.ph407.i.preheader ] ; 2 uses
  %.0318404.i = phi i64 [ %.2320.i, %.loopexit.i ], [ %.0331461.i, %.lr.ph407.i.preheader ] ; 2 uses
  %.0321403.i = phi i64 [ %.2323.i, %.loopexit.i ], [ %.0331461.i, %.lr.ph407.i.preheader ] ; 2 uses
  %.0324402.i = phi i64 [ %.2326.i, %.loopexit.i ], [ %.0330453.i, %.lr.ph407.i.preheader ] ; 2 uses
  %.0327401.i = phi i64 [ %.2329.i, %.loopexit.i ], [ %.0330453.i, %.lr.ph407.i.preheader ] ; 2 uses
  %.sroa.083.0400.i = phi i32 [ %.sroa.083.6.i, %.loopexit.i ], [ 0, %.lr.ph407.i.preheader ] ; 2 uses
  %.sroa.685.0399.i = phi i32 [ %.sroa.685.6.i, %.loopexit.i ], [ 0, %.lr.ph407.i.preheader ] ; 2 uses
  %i.yt = getelementptr inbounds i8, ptr %i.ys, i64 -8 ; 3 uses
  %i.yu = load i64, ptr %i.yt, align 4, !tbaa !208, !noalias !660 ; 7 uses
  %.sroa.066.0.extract.trunc.i = trunc i64 %i.yu to i32
  %.sroa.9.0.extract.shift.i = lshr i64 %i.yu, 32 ; 7 uses
  %.sroa.9.0.extract.trunc.i = trunc nuw i64 %.sroa.9.0.extract.shift.i to i32 ; 5 uses
  store ptr %i.yt, ptr %i.wj, align 8, !tbaa !215, !noalias !660
  %i.yv = mul i64 %.sroa.9.0.extract.shift.i, %i.wh
  %i.yw = and i64 %i.yu, 4294967295               ; 3 uses
  %i.yx = getelementptr i8, ptr %i.wf, i64 %i.yv
  %i.yy = getelementptr i8, ptr %i.yx, i64 %i.yw  ; 2 uses
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !71, !noalias !660
  %.not354.i = icmp eq i8 %i.yz, 0
  br i1 %.not354.i, label %bb.bh, label %.loopexit.i, !llvm.loop !588

bb.bh:                                            ; preds = %.lr.ph407.i
  store i8 1, ptr %i.yy, align 1, !tbaa !71, !noalias !660
  %spec.select.i = call i64 @llvm.umin.i64(i64 %.0327401.i, i64 %i.yw)
  %.1325.i = call i64 @llvm.umax.i64(i64 %.0324402.i, i64 %i.yw)
  %.1322.i = call i64 @llvm.umin.i64(i64 %.0321403.i, i64 %.sroa.9.0.extract.shift.i)
  %.1319.i = call i64 @llvm.umax.i64(i64 %.0318404.i, i64 %.sroa.9.0.extract.shift.i)
  br i1 %.not239.not.i, label %bb.bo, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.za = load ptr, ptr %i.wi, align 8, !tbaa !215, !noalias !660 ; 6 uses
  %i.zb = load ptr, ptr %i.wl, align 8, !tbaa !219, !noalias !660 ; 2 uses
  %i.zc = icmp ult ptr %i.za, %i.zb
  br i1 %i.zc, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i64 %i.yu, ptr %i.za, align 4, !tbaa !208, !noalias !660
  %i.zd = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  br label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i

bb.bk:                                            ; preds = %bb.bi
  %i.ze = ptrtoint ptr %i.za to i64
  %i.zf = ptrtoint ptr %i.yr to i64               ; 2 uses
  %i.zg = sub i64 %i.ze, %i.zf                    ; 2 uses
  %i.zh = ashr exact i64 %i.zg, 3
  %i.zi = add nsw i64 %i.zh, 1                    ; 2 uses
  %i.zj = icmp ugt i64 %i.zi, 2305843009213693951
  br i1 %i.zj, label %bb.bl, label %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i448.i

bb.bl:                                            ; preds = %bb.bk
  call void @_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %31) #22, !noalias !660
  unreachable

_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i448.i: ; preds = %bb.bk
  %i.zk = ptrtoint ptr %i.zb to i64
  %i.zl = sub i64 %i.zk, %i.zf                    ; 3 uses
  %.not.i.i.i449.i = icmp ult i64 %i.zl, 9223372036854775800
  %i.zm = ashr exact i64 %i.zl, 2
  %.sroa.speculated.i.i.i450.i = call i64 @llvm.umax.i64(i64 %i.zm, i64 %i.zi)
  %.0.i.i.i451.i = select i1 %.not.i.i.i449.i, i64 %.sroa.speculated.i.i.i450.i, i64 2305843009213693951 ; 4 uses
  %i.zn = icmp ne i64 %.0.i.i.i451.i, 0
  call void @llvm.assume(i1 %i.zn)
  %i.zo = icmp ugt i64 %.0.i.i.i451.i, 2305843009213693951
  br i1 %i.zo, label %bb.bm, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i452.i

bb.bm:                                            ; preds = %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i448.i
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #22, !noalias !660
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i452.i: ; preds = %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i448.i
  %i.zp = shl nuw i64 %.0.i.i.i451.i, 3
  %i.zq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zp) #20, !noalias !660 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 %i.zg ; 4 uses
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.zq, i64 %.0.i.i.i451.i
  store i64 %i.yu, ptr %i.zr, align 4, !tbaa !208, !noalias !660
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zr, i64 8 ; 3 uses
  %.not13.i.i.i.i453.i = icmp eq ptr %i.za, %i.yr
  br i1 %.not13.i.i.i.i453.i, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i457.i, label %.lr.ph.i.i.i.i454.i

.lr.ph.i.i.i.i454.i:                              ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i452.i, %.lr.ph.i.i.i.i454.i
  %i.zu = phi ptr [ %i.zv, %.lr.ph.i.i.i.i454.i ], [ %i.zr, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i452.i ]
  %.sroa.18.014.i.i.i.i455.i = phi ptr [ %i.zw, %.lr.ph.i.i.i.i454.i ], [ %i.za, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i452.i ]
  %i.zv = getelementptr inbounds i8, ptr %i.zu, i64 -8 ; 3 uses
  %i.zw = getelementptr inbounds i8, ptr %.sroa.18.014.i.i.i.i455.i, i64 -8 ; 3 uses
  %i.zx = load i64, ptr %i.zw, align 4, !tbaa !208, !noalias !660
  store i64 %i.zx, ptr %i.zv, align 4, !tbaa !208, !noalias !660
  %.not.i.i.i.i456.i = icmp eq ptr %i.zw, %i.yr
  br i1 %.not.i.i.i.i456.i, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i457.i, label %.lr.ph.i.i.i.i454.i, !llvm.loop !1

_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i457.i: ; preds = %.lr.ph.i.i.i.i454.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i452.i
  %storemerge.i.i458.i = phi ptr [ %i.zr, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i452.i ], [ %i.zv, %.lr.ph.i.i.i.i454.i ] ; 5 uses
  store ptr %storemerge.i.i458.i, ptr %31, align 8, !tbaa !219, !noalias !660
  store ptr %i.zt, ptr %i.wi, align 8, !tbaa !219, !noalias !660
  store ptr %i.zs, ptr %i.wl, align 8, !tbaa !219, !noalias !660
  %.not.i4.i.i.i = icmp eq ptr %i.yr, null
  br i1 %.not.i4.i.i.i, label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i457.i
  call void @_ZdlPvm(ptr noundef nonnull %i.yr, i64 noundef %i.zl) #21, !noalias !660
  br label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i

_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i: ; preds = %bb.bn, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i457.i, %bb.bj
  %i.zy = phi ptr [ %i.yl, %bb.bj ], [ %storemerge.i.i458.i, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i457.i ], [ %storemerge.i.i458.i, %bb.bn ]
  %i.zz = phi ptr [ %i.yr, %bb.bj ], [ %storemerge.i.i458.i, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i457.i ], [ %storemerge.i.i458.i, %bb.bn ]
  %.0.i459.i = phi ptr [ %i.zd, %bb.bj ], [ %i.zt, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i457.i ], [ %i.zt, %bb.bn ]
  store ptr %.0.i459.i, ptr %i.wi, align 8, !tbaa !215, !noalias !660
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i, %bb.bh
  %i.aaa = phi ptr [ %i.zy, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i ], [ %i.yl, %bb.bh ]
  %i.aab = phi ptr [ %i.zz, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i ], [ %i.yr, %bb.bh ]
  %i.aac = add nsw i32 %.sroa.9.0.extract.trunc.i, -1 ; 2 uses
  %i.aad = icmp slt i32 %.sroa.9.0.extract.trunc.i, 1
  %i.aae = zext nneg i32 %i.aac to i64            ; 4 uses
  %.not356.us.i = icmp ugt i64 %i.aa, %i.aae
  %i.aaf = mul i64 %i.hp, %i.aae
  %i.aag = mul i64 %i.hl, %i.aae
  %.sroa.8.0.insert.shift.us.i = shl nuw nsw i64 %i.aae, 32 ; 2 uses
  %i.aah = icmp slt i64 %i.yu, 0
  %.not356.us.1.i = icmp ugt i64 %i.aa, %.sroa.9.0.extract.shift.i
  %i.aai = mul i64 %.sroa.9.0.extract.shift.i, %i.hp
  %i.aaj = mul i64 %.sroa.9.0.extract.shift.i, %i.hl
  %.sroa.8.0.insert.shift.us.1.i = and i64 %i.yu, 9223372032559808512 ; 2 uses
  %i.aak = add nsw i32 %.sroa.9.0.extract.trunc.i, 1 ; 2 uses
  %i.aal = icmp slt i32 %.sroa.9.0.extract.trunc.i, -1
  %i.aam = zext nneg i32 %i.aak to i64            ; 4 uses
  %.not356.us.2.i = icmp ugt i64 %i.aa, %i.aam
  %i.aan = mul i64 %i.hp, %i.aam
  %i.aao = mul i64 %i.hl, %i.aam
  %.sroa.8.0.insert.shift.us.2.i = shl nuw nsw i64 %i.aam, 32 ; 2 uses
  br label %.preheader245.i

.preheader245.i:                                  ; preds = %.split365.us.i, %bb.bo
  %i.aap = phi ptr [ %i.yn, %bb.bo ], [ %i.ahk, %.split365.us.i ] ; 7 uses
  %i.aaq = phi ptr [ %i.yo, %bb.bo ], [ %i.ahl, %.split365.us.i ] ; 7 uses
  %i.aar = phi ptr [ %i.yp, %bb.bo ], [ %i.ahm, %.split365.us.i ] ; 9 uses
  %i.aas = phi ptr [ %i.yq, %bb.bo ], [ %i.ahn, %.split365.us.i ] ; 6 uses
  %.0303397.i = phi i32 [ -1, %bb.bo ], [ %i.aho, %.split365.us.i ] ; 3 uses
  %.1305396.i = phi i1 [ %.0304406.i, %bb.bo ], [ %.us-phi368.i, %.split365.us.i ] ; 7 uses
  %.1312395.i = phi i8 [ %.0311405.i, %bb.bo ], [ %.us-phi367.i, %.split365.us.i ] ; 6 uses
  %.sroa.083.1394.i = phi i32 [ %.sroa.083.0400.i, %bb.bo ], [ %.us-phi366.i, %.split365.us.i ] ; 7 uses
  %.sroa.685.1393.i = phi i32 [ %.sroa.685.0399.i, %bb.bo ], [ %.us-phi.i, %.split365.us.i ] ; 7 uses
  %i.aat = add nsw i32 %.0303397.i, %.sroa.066.0.extract.trunc.i
  %.fr485.i = freeze i32 %i.aat                   ; 5 uses
  %i.aau = icmp slt i32 %.fr485.i, 0
  %i.aav = zext nneg i32 %.fr485.i to i64         ; 11 uses
  %invariant.gep363.i = getelementptr i8, ptr %i.hn, i64 %i.aav ; 3 uses
  br i1 %i.aau, label %.split365.us.i, label %.preheader245.split.i

.preheader245.split.i:                            ; preds = %.preheader245.i
  %.not355.i = icmp ugt i64 %i.x, %i.aav
  %.not355.fr.i = freeze i1 %.not355.i
  br i1 %.not355.fr.i, label %.preheader245.split.split.us.preheader.i, label %.split365.us.i

.preheader245.split.split.us.preheader.i:         ; preds = %.preheader245.split.i
  br i1 %i.aad, label %.preheader245.split.split.us.1.i, label %bb.bp

bb.bp:                                            ; preds = %.preheader245.split.split.us.preheader.i
  br i1 %.not356.us.i, label %bb.bq, label %.preheader245.split.split.us.1.i

bb.bq:                                            ; preds = %bb.bp
  %gep.us376.i = getelementptr i8, ptr %invariant.gep363.i, i64 %i.aaf
  %i.aaw = load i8, ptr %gep.us376.i, align 1, !tbaa !71, !noalias !660
  %.not357.us.i = icmp eq i8 %i.aaw, 0
  br i1 %.not357.us.i, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.aax = trunc nuw i8 %.1312395.i to i1
  br i1 %i.aax, label %bb.bs, label %.preheader245.split.split.us.1.i

bb.bs:                                            ; preds = %bb.br
  %i.aay = add i64 %i.aag, %i.aav                 ; 3 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.aay
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !106, !noalias !660
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.aay
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !106, !noalias !660
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.aay
  %i.abe = load float, ptr %i.abd, align 4, !tbaa !106, !noalias !660
  %i.abf = zext nneg i32 %.sroa.685.1393.i to i64
  %i.abg = mul i64 %i.hl, %i.abf
  %i.abh = zext nneg i32 %.sroa.083.1394.i to i64
  %i.abi = add i64 %i.abg, %i.abh                 ; 3 uses
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.abi
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !106, !noalias !660
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.abi
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !106, !noalias !660
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.abi
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !106, !noalias !660
  %i.abp = fsub float %i.aba, %i.abk
  %i.abq = call noundef float @llvm.fabs.f32(float %i.abp)
  %48 = call float @llvm.fmuladd.f32(float %i.abq, float %.sink2.i.i, float 0.000000e+00)
  %i.abr = fsub float %i.abc, %i.abm
  %i.abs = call noundef float @llvm.fabs.f32(float %i.abr)
  %i.abt = call float @llvm.fmuladd.f32(float %i.abs, float %.sink1.i.i, float %48)
  %i.abu = fsub float %i.abe, %i.abo
  %i.abv = call noundef float @llvm.fabs.f32(float %i.abu)
  %i.abw = call float @llvm.fmuladd.f32(float %i.abv, float %.sink.i.i, float %i.abt)
  %i.abx = fcmp ole float %i.abw, 3.000000e-02
  %spec.select380.us.i = select i1 %i.abx, i1 %.1305396.i, i1 false
  br label %.preheader245.split.split.us.1.i

bb.bt:                                            ; preds = %bb.bq
  %i.aby = load ptr, ptr %i.wj, align 8, !tbaa !215, !noalias !660 ; 6 uses
  %i.abz = icmp ult ptr %i.aby, %i.aar
  br i1 %i.abz, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.aca = load ptr, ptr %32, align 8, !tbaa !220, !noalias !660 ; 5 uses
  %i.acb = ptrtoint ptr %i.aby to i64
  %i.acc = ptrtoint ptr %i.aca to i64             ; 2 uses
  %i.acd = sub i64 %i.acb, %i.acc                 ; 2 uses
  %i.ace = ashr exact i64 %i.acd, 3
  %i.acf = add nsw i64 %i.ace, 1                  ; 2 uses
  %i.acg = icmp ugt i64 %i.acf, 2305843009213693951
  br i1 %i.acg, label %.split382.us.i, label %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i460.us.i

_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i460.us.i: ; preds = %bb.bu
  %i.ach = ptrtoint ptr %i.aar to i64
  %i.aci = sub i64 %i.ach, %i.acc                 ; 3 uses
  %.not.i.i.i461.us.i = icmp ult i64 %i.aci, 9223372036854775800
  %i.acj = ashr exact i64 %i.aci, 2
  %.sroa.speculated.i.i.i462.us.i = call i64 @llvm.umax.i64(i64 %i.acj, i64 %i.acf)
  %.0.i.i.i463.us.i = select i1 %.not.i.i.i461.us.i, i64 %.sroa.speculated.i.i.i462.us.i, i64 2305843009213693951 ; 4 uses
  %i.ack = icmp ne i64 %.0.i.i.i463.us.i, 0
  call void @llvm.assume(i1 %i.ack)
  %i.acl = icmp ugt i64 %.0.i.i.i463.us.i, 2305843009213693951
  br i1 %i.acl, label %.split384.us.i, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.i

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.i: ; preds = %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i460.us.i
  %i.acm = shl nuw i64 %.0.i.i.i463.us.i, 3
  %i.acn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acm) #20, !noalias !660 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 %i.acd ; 4 uses
  %i.acp = getelementptr inbounds nuw [8 x i8], ptr %i.acn, i64 %.0.i.i.i463.us.i ; 7 uses
  %.sroa.049.0.insert.insert.us.i = or disjoint i64 %.sroa.8.0.insert.shift.us.i, %i.aav
  store i64 %.sroa.049.0.insert.insert.us.i, ptr %i.aco, align 4, !tbaa !208, !noalias !660
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aco, i64 8 ; 2 uses
  %.not13.i.i.i.i465.us.i = icmp eq ptr %i.aby, %i.aca
  br i1 %.not13.i.i.i.i465.us.i, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.i, label %.lr.ph.i.i.i.i466.us.i

.lr.ph.i.i.i.i466.us.i:                           ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.i, %.lr.ph.i.i.i.i466.us.i
  %i.acr = phi ptr [ %i.acs, %.lr.ph.i.i.i.i466.us.i ], [ %i.aco, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.i ]
  %.sroa.18.014.i.i.i.i467.us.i = phi ptr [ %i.act, %.lr.ph.i.i.i.i466.us.i ], [ %i.aby, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.i ]
  %i.acs = getelementptr inbounds i8, ptr %i.acr, i64 -8 ; 3 uses
  %i.act = getelementptr inbounds i8, ptr %.sroa.18.014.i.i.i.i467.us.i, i64 -8 ; 3 uses
  %i.acu = load i64, ptr %i.act, align 4, !tbaa !208, !noalias !660
  store i64 %i.acu, ptr %i.acs, align 4, !tbaa !208, !noalias !660
  %.not.i.i.i.i468.us.i = icmp eq ptr %i.act, %i.aca
  br i1 %.not.i.i.i.i468.us.i, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.i, label %.lr.ph.i.i.i.i466.us.i, !llvm.loop !1

_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.i: ; preds = %.lr.ph.i.i.i.i466.us.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.i
  %storemerge.i.i470.us.i = phi ptr [ %i.aco, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.i ], [ %i.acs, %.lr.ph.i.i.i.i466.us.i ]
  store ptr %storemerge.i.i470.us.i, ptr %32, align 8, !tbaa !219, !noalias !660
  store ptr %i.acp, ptr %i.wk, align 8, !tbaa !219, !noalias !660
  %.not.i4.i.i471.us.i = icmp eq ptr %i.aca, null
  br i1 %.not.i4.i.i471.us.i, label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aca, i64 noundef %i.aci) #21, !noalias !660
  br label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.i

bb.bw:                                            ; preds = %bb.bt
  %.sroa.049.0.insert.insert56.us.i = or disjoint i64 %.sroa.8.0.insert.shift.us.i, %i.aav
  store i64 %.sroa.049.0.insert.insert56.us.i, ptr %i.aby, align 4, !tbaa !208, !noalias !660
  %i.acv = getelementptr inbounds nuw i8, ptr %i.aby, i64 8
  br label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.i

_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.i: ; preds = %bb.bw, %bb.bv, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.i
  %i.acw = phi ptr [ %i.aap, %bb.bw ], [ %i.acp, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.i ], [ %i.acp, %bb.bv ]
  %i.acx = phi ptr [ %i.aaq, %bb.bw ], [ %i.acp, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.i ], [ %i.acp, %bb.bv ]
  %i.acy = phi ptr [ %i.aar, %bb.bw ], [ %i.acp, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.i ], [ %i.acp, %bb.bv ] ; 2 uses
  %.0.i472.us.i = phi ptr [ %i.acv, %bb.bw ], [ %i.acq, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.i ], [ %i.acq, %bb.bv ]
  store ptr %.0.i472.us.i, ptr %i.wj, align 8, !tbaa !215, !noalias !660
  br label %.preheader245.split.split.us.1.i

.preheader245.split.split.us.1.i:                 ; preds = %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.i, %bb.bs, %bb.br, %bb.bp, %.preheader245.split.split.us.preheader.i
  %i.acz = phi ptr [ %i.aap, %bb.bs ], [ %i.aap, %.preheader245.split.split.us.preheader.i ], [ %i.aap, %bb.br ], [ %i.aap, %bb.bp ], [ %i.acw, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.i ] ; 6 uses
  %i.ada = phi ptr [ %i.aaq, %bb.bs ], [ %i.aaq, %.preheader245.split.split.us.preheader.i ], [ %i.aaq, %bb.br ], [ %i.aaq, %bb.bp ], [ %i.acx, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.i ] ; 8 uses
  %i.adb = phi ptr [ %i.aar, %bb.bs ], [ %i.aar, %.preheader245.split.split.us.preheader.i ], [ %i.aar, %bb.br ], [ %i.aar, %bb.bp ], [ %i.acy, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.i ] ; 5 uses
  %i.adc = phi ptr [ %i.aas, %bb.bs ], [ %i.aas, %.preheader245.split.split.us.preheader.i ], [ %i.aas, %bb.br ], [ %i.aas, %bb.bp ], [ %i.acy, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.i ] ; 5 uses
  %.sroa.685.5.us377.i = phi i32 [ %.sroa.685.1393.i, %bb.bs ], [ %.sroa.685.1393.i, %.preheader245.split.split.us.preheader.i ], [ %i.aac, %bb.br ], [ %.sroa.685.1393.i, %bb.bp ], [ %.sroa.685.1393.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.i ] ; 6 uses
  %.sroa.083.5.us378.i = phi i32 [ %.sroa.083.1394.i, %bb.bs ], [ %.sroa.083.1394.i, %.preheader245.split.split.us.preheader.i ], [ %.fr485.i, %bb.br ], [ %.sroa.083.1394.i, %bb.bp ], [ %.sroa.083.1394.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.i ] ; 6 uses
  %.5316.us379.i = phi i8 [ 1, %bb.bs ], [ %.1312395.i, %.preheader245.split.split.us.preheader.i ], [ 1, %bb.br ], [ %.1312395.i, %bb.bp ], [ %.1312395.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.i ] ; 5 uses
  %.5309.us380.i = phi i1 [ %spec.select380.us.i, %bb.bs ], [ %.1305396.i, %.preheader245.split.split.us.preheader.i ], [ %.1305396.i, %bb.br ], [ %.1305396.i, %bb.bp ], [ %.1305396.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.i ] ; 6 uses
  %or.cond15.us375.1.i = icmp eq i32 %.0303397.i, 0
  br i1 %or.cond15.us375.1.i, label %.preheader245.split.split.us.2.i, label %bb.bx

bb.bx:                                            ; preds = %.preheader245.split.split.us.1.i
  br i1 %i.aah, label %.preheader245.split.split.us.2.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  br i1 %.not356.us.1.i, label %bb.bz, label %.preheader245.split.split.us.2.i

bb.bz:                                            ; preds = %bb.by
  %gep.us376.1.i = getelementptr i8, ptr %invariant.gep363.i, i64 %i.aai
  %i.add = load i8, ptr %gep.us376.1.i, align 1, !tbaa !71, !noalias !660
  %.not357.us.1.i = icmp eq i8 %i.add, 0
  br i1 %.not357.us.1.i, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ade = trunc nuw i8 %.5316.us379.i to i1
  br i1 %i.ade, label %bb.cb, label %.preheader245.split.split.us.2.i

bb.cb:                                            ; preds = %bb.ca
  %i.adf = add i64 %i.aaj, %i.aav                 ; 3 uses
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.adf
  %i.adh = load float, ptr %i.adg, align 4, !tbaa !106, !noalias !660
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.adf
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !106, !noalias !660
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.adf
  %i.adl = load float, ptr %i.adk, align 4, !tbaa !106, !noalias !660
  %i.adm = zext nneg i32 %.sroa.685.5.us377.i to i64
  %i.adn = mul i64 %i.hl, %i.adm
  %i.ado = zext nneg i32 %.sroa.083.5.us378.i to i64
  %i.adp = add i64 %i.adn, %i.ado                 ; 3 uses
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.adp
  %i.adr = load float, ptr %i.adq, align 4, !tbaa !106, !noalias !660
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.adp
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !106, !noalias !660
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.adp
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !106, !noalias !660
  %i.adw = fsub float %i.adh, %i.adr
  %i.adx = call noundef float @llvm.fabs.f32(float %i.adw)
  %49 = call float @llvm.fmuladd.f32(float %i.adx, float %.sink2.i.i, float 0.000000e+00)
  %i.ady = fsub float %i.adj, %i.adt
  %i.adz = call noundef float @llvm.fabs.f32(float %i.ady)
  %i.aea = call float @llvm.fmuladd.f32(float %i.adz, float %.sink1.i.i, float %49)
  %i.aeb = fsub float %i.adl, %i.adv
  %i.aec = call noundef float @llvm.fabs.f32(float %i.aeb)
  %i.aed = call float @llvm.fmuladd.f32(float %i.aec, float %.sink.i.i, float %i.aea)
  %i.aee = fcmp ole float %i.aed, 3.000000e-02
  %spec.select380.us.1.i = select i1 %i.aee, i1 %.5309.us380.i, i1 false
  br label %.preheader245.split.split.us.2.i

bb.cc:                                            ; preds = %bb.bz
  %i.aef = load ptr, ptr %i.wj, align 8, !tbaa !215, !noalias !660 ; 6 uses
  %i.aeg = icmp ult ptr %i.aef, %i.ada
  br i1 %i.aeg, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.aeh = load ptr, ptr %32, align 8, !tbaa !220, !noalias !660 ; 5 uses
  %i.aei = ptrtoint ptr %i.aef to i64
  %i.aej = ptrtoint ptr %i.aeh to i64             ; 2 uses
  %i.aek = sub i64 %i.aei, %i.aej                 ; 2 uses
  %i.ael = ashr exact i64 %i.aek, 3
  %i.aem = add nsw i64 %i.ael, 1                  ; 2 uses
  %i.aen = icmp ugt i64 %i.aem, 2305843009213693951
  br i1 %i.aen, label %.split382.us.i, label %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i460.us.1.i

_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i460.us.1.i: ; preds = %bb.cd
  %i.aeo = ptrtoint ptr %i.ada to i64
  %i.aep = sub i64 %i.aeo, %i.aej                 ; 3 uses
  %.not.i.i.i461.us.1.i = icmp ult i64 %i.aep, 9223372036854775800
  %i.aeq = ashr exact i64 %i.aep, 2
  %.sroa.speculated.i.i.i462.us.1.i = call i64 @llvm.umax.i64(i64 %i.aeq, i64 %i.aem)
  %.0.i.i.i463.us.1.i = select i1 %.not.i.i.i461.us.1.i, i64 %.sroa.speculated.i.i.i462.us.1.i, i64 2305843009213693951 ; 4 uses
  %i.aer = icmp ne i64 %.0.i.i.i463.us.1.i, 0
  call void @llvm.assume(i1 %i.aer)
  %i.aes = icmp ugt i64 %.0.i.i.i463.us.1.i, 2305843009213693951
  br i1 %i.aes, label %.split384.us.i, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.1.i

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.1.i: ; preds = %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i460.us.1.i
  %i.aet = shl nuw i64 %.0.i.i.i463.us.1.i, 3
  %i.aeu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aet) #20, !noalias !660 ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 %i.aek ; 4 uses
  %i.aew = getelementptr inbounds nuw [8 x i8], ptr %i.aeu, i64 %.0.i.i.i463.us.1.i ; 5 uses
  %.sroa.049.0.insert.insert.us.1.i = or disjoint i64 %.sroa.8.0.insert.shift.us.1.i, %i.aav
  store i64 %.sroa.049.0.insert.insert.us.1.i, ptr %i.aev, align 4, !tbaa !208, !noalias !660
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aev, i64 8 ; 2 uses
  %.not13.i.i.i.i465.us.1.i = icmp eq ptr %i.aef, %i.aeh
  br i1 %.not13.i.i.i.i465.us.1.i, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.1.i, label %.lr.ph.i.i.i.i466.us.1.i

.lr.ph.i.i.i.i466.us.1.i:                         ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.1.i, %.lr.ph.i.i.i.i466.us.1.i
  %i.aey = phi ptr [ %i.aez, %.lr.ph.i.i.i.i466.us.1.i ], [ %i.aev, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.1.i ]
  %.sroa.18.014.i.i.i.i467.us.1.i = phi ptr [ %i.afa, %.lr.ph.i.i.i.i466.us.1.i ], [ %i.aef, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.1.i ]
  %i.aez = getelementptr inbounds i8, ptr %i.aey, i64 -8 ; 3 uses
  %i.afa = getelementptr inbounds i8, ptr %.sroa.18.014.i.i.i.i467.us.1.i, i64 -8 ; 3 uses
  %i.afb = load i64, ptr %i.afa, align 4, !tbaa !208, !noalias !660
  store i64 %i.afb, ptr %i.aez, align 4, !tbaa !208, !noalias !660
  %.not.i.i.i.i468.us.1.i = icmp eq ptr %i.afa, %i.aeh
  br i1 %.not.i.i.i.i468.us.1.i, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.1.i, label %.lr.ph.i.i.i.i466.us.1.i, !llvm.loop !1

_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.1.i: ; preds = %.lr.ph.i.i.i.i466.us.1.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.1.i
  %storemerge.i.i470.us.1.i = phi ptr [ %i.aev, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.1.i ], [ %i.aez, %.lr.ph.i.i.i.i466.us.1.i ]
  store ptr %storemerge.i.i470.us.1.i, ptr %32, align 8, !tbaa !219, !noalias !660
  store ptr %i.aew, ptr %i.wk, align 8, !tbaa !219, !noalias !660
  %.not.i4.i.i471.us.1.i = icmp eq ptr %i.aeh, null
  br i1 %.not.i4.i.i471.us.1.i, label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.1.i, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.1.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aeh, i64 noundef %i.aep) #21, !noalias !660
  br label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.1.i

bb.cf:                                            ; preds = %bb.cc
  %.sroa.049.0.insert.insert56.us.1.i = or disjoint i64 %.sroa.8.0.insert.shift.us.1.i, %i.aav
  store i64 %.sroa.049.0.insert.insert56.us.1.i, ptr %i.aef, align 4, !tbaa !208, !noalias !660
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aef, i64 8
  br label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.1.i

_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.1.i: ; preds = %bb.cf, %bb.ce, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.1.i
  %i.afd = phi ptr [ %i.acz, %bb.cf ], [ %i.aew, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.1.i ], [ %i.aew, %bb.ce ]
  %i.afe = phi ptr [ %i.ada, %bb.cf ], [ %i.aew, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.1.i ], [ %i.aew, %bb.ce ] ; 3 uses
  %.0.i472.us.1.i = phi ptr [ %i.afc, %bb.cf ], [ %i.aex, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.1.i ], [ %i.aex, %bb.ce ]
  store ptr %.0.i472.us.1.i, ptr %i.wj, align 8, !tbaa !215, !noalias !660
  br label %.preheader245.split.split.us.2.i

.preheader245.split.split.us.2.i:                 ; preds = %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.1.i, %bb.cb, %bb.ca, %bb.by, %bb.bx, %.preheader245.split.split.us.1.i
  %i.aff = phi ptr [ %i.acz, %.preheader245.split.split.us.1.i ], [ %i.acz, %bb.bx ], [ %i.acz, %bb.ca ], [ %i.acz, %bb.by ], [ %i.afd, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.1.i ], [ %i.acz, %bb.cb ] ; 7 uses
  %i.afg = phi ptr [ %i.ada, %.preheader245.split.split.us.1.i ], [ %i.ada, %bb.bx ], [ %i.ada, %bb.ca ], [ %i.ada, %bb.by ], [ %i.afe, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.1.i ], [ %i.ada, %bb.cb ] ; 4 uses
  %i.afh = phi ptr [ %i.adb, %.preheader245.split.split.us.1.i ], [ %i.adb, %bb.bx ], [ %i.adb, %bb.ca ], [ %i.adb, %bb.by ], [ %i.afe, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.1.i ], [ %i.adb, %bb.cb ] ; 4 uses
  %i.afi = phi ptr [ %i.adc, %.preheader245.split.split.us.1.i ], [ %i.adc, %bb.bx ], [ %i.adc, %bb.ca ], [ %i.adc, %bb.by ], [ %i.afe, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.1.i ], [ %i.adc, %bb.cb ] ; 4 uses
  %.sroa.685.5.us377.1.i = phi i32 [ %.sroa.685.5.us377.i, %.preheader245.split.split.us.1.i ], [ %.sroa.685.5.us377.i, %bb.bx ], [ %.sroa.9.0.extract.trunc.i, %bb.ca ], [ %.sroa.685.5.us377.i, %bb.by ], [ %.sroa.685.5.us377.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.1.i ], [ %.sroa.685.5.us377.i, %bb.cb ] ; 5 uses
  %.sroa.083.5.us378.1.i = phi i32 [ %.sroa.083.5.us378.i, %.preheader245.split.split.us.1.i ], [ %.sroa.083.5.us378.i, %bb.bx ], [ %.fr485.i, %bb.ca ], [ %.sroa.083.5.us378.i, %bb.by ], [ %.sroa.083.5.us378.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.1.i ], [ %.sroa.083.5.us378.i, %bb.cb ] ; 5 uses
  %.5316.us379.1.i = phi i8 [ %.5316.us379.i, %.preheader245.split.split.us.1.i ], [ %.5316.us379.i, %bb.bx ], [ 1, %bb.ca ], [ %.5316.us379.i, %bb.by ], [ %.5316.us379.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.1.i ], [ 1, %bb.cb ] ; 4 uses
  %.5309.us380.1.i = phi i1 [ %.5309.us380.i, %.preheader245.split.split.us.1.i ], [ %.5309.us380.i, %bb.bx ], [ %.5309.us380.i, %bb.ca ], [ %.5309.us380.i, %bb.by ], [ %.5309.us380.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.1.i ], [ %spec.select380.us.1.i, %bb.cb ] ; 5 uses
  br i1 %i.aal, label %.split365.us.i, label %bb.cg

bb.cg:                                            ; preds = %.preheader245.split.split.us.2.i
  br i1 %.not356.us.2.i, label %bb.ch, label %.split365.us.i

bb.ch:                                            ; preds = %bb.cg
  %gep.us376.2.i = getelementptr i8, ptr %invariant.gep363.i, i64 %i.aan
  %i.afj = load i8, ptr %gep.us376.2.i, align 1, !tbaa !71, !noalias !660
  %.not357.us.2.i = icmp eq i8 %i.afj, 0
  br i1 %.not357.us.2.i, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.afk = trunc nuw i8 %.5316.us379.1.i to i1
  br i1 %i.afk, label %bb.cj, label %.split365.us.i

bb.cj:                                            ; preds = %bb.ci
  %i.afl = add i64 %i.aao, %i.aav                 ; 3 uses
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.afl
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !106, !noalias !660
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.afl
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !106, !noalias !660
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.afl
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !106, !noalias !660
  %i.afs = zext nneg i32 %.sroa.685.5.us377.1.i to i64
  %i.aft = mul i64 %i.hl, %i.afs
  %i.afu = zext nneg i32 %.sroa.083.5.us378.1.i to i64
  %i.afv = add i64 %i.aft, %i.afu                 ; 3 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.afv
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !106, !noalias !660
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.afv
  %i.afz = load float, ptr %i.afy, align 4, !tbaa !106, !noalias !660
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.afv
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !106, !noalias !660
  %i.agc = fsub float %i.afn, %i.afx
  %i.agd = call noundef float @llvm.fabs.f32(float %i.agc)
  %50 = call float @llvm.fmuladd.f32(float %i.agd, float %.sink2.i.i, float 0.000000e+00)
  %i.age = fsub float %i.afp, %i.afz
  %i.agf = call noundef float @llvm.fabs.f32(float %i.age)
  %i.agg = call float @llvm.fmuladd.f32(float %i.agf, float %.sink1.i.i, float %50)
  %i.agh = fsub float %i.afr, %i.agb
  %i.agi = call noundef float @llvm.fabs.f32(float %i.agh)
  %i.agj = call float @llvm.fmuladd.f32(float %i.agi, float %.sink.i.i, float %i.agg)
  %i.agk = fcmp ole float %i.agj, 3.000000e-02
  %spec.select380.us.2.i = select i1 %i.agk, i1 %.5309.us380.1.i, i1 false
  br label %.split365.us.i

bb.ck:                                            ; preds = %bb.ch
  %i.agl = load ptr, ptr %i.wj, align 8, !tbaa !215, !noalias !660 ; 6 uses
  %i.agm = icmp ult ptr %i.agl, %i.aff
  br i1 %i.agm, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.agn = load ptr, ptr %32, align 8, !tbaa !220, !noalias !660 ; 5 uses
  %i.ago = ptrtoint ptr %i.agl to i64
  %i.agp = ptrtoint ptr %i.agn to i64             ; 2 uses
  %i.agq = sub i64 %i.ago, %i.agp                 ; 2 uses
  %i.agr = ashr exact i64 %i.agq, 3
  %i.ags = add nsw i64 %i.agr, 1                  ; 2 uses
  %i.agt = icmp ugt i64 %i.ags, 2305843009213693951
  br i1 %i.agt, label %.split382.us.i, label %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i460.us.2.i

_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i460.us.2.i: ; preds = %bb.cl
  %i.agu = ptrtoint ptr %i.aff to i64
  %i.agv = sub i64 %i.agu, %i.agp                 ; 3 uses
  %.not.i.i.i461.us.2.i = icmp ult i64 %i.agv, 9223372036854775800
  %i.agw = ashr exact i64 %i.agv, 2
  %.sroa.speculated.i.i.i462.us.2.i = call i64 @llvm.umax.i64(i64 %i.agw, i64 %i.ags)
  %.0.i.i.i463.us.2.i = select i1 %.not.i.i.i461.us.2.i, i64 %.sroa.speculated.i.i.i462.us.2.i, i64 2305843009213693951 ; 4 uses
  %i.agx = icmp ne i64 %.0.i.i.i463.us.2.i, 0
  call void @llvm.assume(i1 %i.agx)
  %i.agy = icmp ugt i64 %.0.i.i.i463.us.2.i, 2305843009213693951
  br i1 %i.agy, label %.split384.us.i, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.2.i

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.2.i: ; preds = %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i460.us.2.i
  %i.agz = shl nuw i64 %.0.i.i.i463.us.2.i, 3
  %i.aha = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agz) #20, !noalias !660 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 %i.agq ; 4 uses
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %i.aha, i64 %.0.i.i.i463.us.2.i ; 3 uses
  %.sroa.049.0.insert.insert.us.2.i = or disjoint i64 %.sroa.8.0.insert.shift.us.2.i, %i.aav
  store i64 %.sroa.049.0.insert.insert.us.2.i, ptr %i.ahb, align 4, !tbaa !208, !noalias !660
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8 ; 2 uses
  %.not13.i.i.i.i465.us.2.i = icmp eq ptr %i.agl, %i.agn
  br i1 %.not13.i.i.i.i465.us.2.i, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.2.i, label %.lr.ph.i.i.i.i466.us.2.i

.lr.ph.i.i.i.i466.us.2.i:                         ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.2.i, %.lr.ph.i.i.i.i466.us.2.i
  %i.ahe = phi ptr [ %i.ahf, %.lr.ph.i.i.i.i466.us.2.i ], [ %i.ahb, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.2.i ]
  %.sroa.18.014.i.i.i.i467.us.2.i = phi ptr [ %i.ahg, %.lr.ph.i.i.i.i466.us.2.i ], [ %i.agl, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.2.i ]
  %i.ahf = getelementptr inbounds i8, ptr %i.ahe, i64 -8 ; 3 uses
  %i.ahg = getelementptr inbounds i8, ptr %.sroa.18.014.i.i.i.i467.us.2.i, i64 -8 ; 3 uses
  %i.ahh = load i64, ptr %i.ahg, align 4, !tbaa !208, !noalias !660
  store i64 %i.ahh, ptr %i.ahf, align 4, !tbaa !208, !noalias !660
  %.not.i.i.i.i468.us.2.i = icmp eq ptr %i.ahg, %i.agn
  br i1 %.not.i.i.i.i468.us.2.i, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.2.i, label %.lr.ph.i.i.i.i466.us.2.i, !llvm.loop !1

_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.2.i: ; preds = %.lr.ph.i.i.i.i466.us.2.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.2.i
  %storemerge.i.i470.us.2.i = phi ptr [ %i.ahb, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i464.us.2.i ], [ %i.ahf, %.lr.ph.i.i.i.i466.us.2.i ]
  store ptr %storemerge.i.i470.us.2.i, ptr %32, align 8, !tbaa !219, !noalias !660
  store ptr %i.ahc, ptr %i.wk, align 8, !tbaa !219, !noalias !660
  %.not.i4.i.i471.us.2.i = icmp eq ptr %i.agn, null
  br i1 %.not.i4.i.i471.us.2.i, label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.2.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.2.i
  call void @_ZdlPvm(ptr noundef nonnull %i.agn, i64 noundef %i.agv) #21, !noalias !660
  br label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.2.i

bb.cn:                                            ; preds = %bb.ck
  %.sroa.049.0.insert.insert56.us.2.i = or disjoint i64 %.sroa.8.0.insert.shift.us.2.i, %i.aav
  store i64 %.sroa.049.0.insert.insert56.us.2.i, ptr %i.agl, align 4, !tbaa !208, !noalias !660
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agl, i64 8
  br label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.2.i

_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.2.i: ; preds = %bb.cn, %bb.cm, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.2.i
  %i.ahj = phi ptr [ %i.aff, %bb.cn ], [ %i.ahc, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.2.i ], [ %i.ahc, %bb.cm ] ; 4 uses
  %.0.i472.us.2.i = phi ptr [ %i.ahi, %bb.cn ], [ %i.ahd, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i469.us.2.i ], [ %i.ahd, %bb.cm ]
  store ptr %.0.i472.us.2.i, ptr %i.wj, align 8, !tbaa !215, !noalias !660
  br label %.split365.us.i

.split365.us.i:                                   ; preds = %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.2.i, %bb.cj, %bb.ci, %bb.cg, %.preheader245.split.split.us.2.i, %.preheader245.split.i, %.preheader245.i
  %i.ahk = phi ptr [ %i.aap, %.preheader245.split.i ], [ %i.aap, %.preheader245.i ], [ %i.aff, %bb.cj ], [ %i.aff, %.preheader245.split.split.us.2.i ], [ %i.aff, %bb.ci ], [ %i.aff, %bb.cg ], [ %i.ahj, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.2.i ] ; 2 uses
  %i.ahl = phi ptr [ %i.aaq, %.preheader245.split.i ], [ %i.aaq, %.preheader245.i ], [ %i.afg, %bb.cj ], [ %i.afg, %.preheader245.split.split.us.2.i ], [ %i.afg, %bb.ci ], [ %i.afg, %bb.cg ], [ %i.ahj, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.2.i ] ; 2 uses
  %i.ahm = phi ptr [ %i.aar, %.preheader245.split.i ], [ %i.aar, %.preheader245.i ], [ %i.afh, %bb.cj ], [ %i.afh, %.preheader245.split.split.us.2.i ], [ %i.afh, %bb.ci ], [ %i.afh, %bb.cg ], [ %i.ahj, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.2.i ] ; 2 uses
  %i.ahn = phi ptr [ %i.aas, %.preheader245.split.i ], [ %i.aas, %.preheader245.i ], [ %i.afi, %bb.cj ], [ %i.afi, %.preheader245.split.split.us.2.i ], [ %i.afi, %bb.ci ], [ %i.afi, %bb.cg ], [ %i.ahj, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.2.i ] ; 2 uses
  %.us-phi.i = phi i32 [ %.sroa.685.1393.i, %.preheader245.split.i ], [ %.sroa.685.1393.i, %.preheader245.i ], [ %.sroa.685.5.us377.1.i, %bb.cj ], [ %.sroa.685.5.us377.1.i, %.preheader245.split.split.us.2.i ], [ %i.aak, %bb.ci ], [ %.sroa.685.5.us377.1.i, %bb.cg ], [ %.sroa.685.5.us377.1.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.2.i ] ; 2 uses
  %.us-phi366.i = phi i32 [ %.sroa.083.1394.i, %.preheader245.split.i ], [ %.sroa.083.1394.i, %.preheader245.i ], [ %.sroa.083.5.us378.1.i, %bb.cj ], [ %.sroa.083.5.us378.1.i, %.preheader245.split.split.us.2.i ], [ %.fr485.i, %bb.ci ], [ %.sroa.083.5.us378.1.i, %bb.cg ], [ %.sroa.083.5.us378.1.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.2.i ] ; 2 uses
  %.us-phi367.i = phi i8 [ %.1312395.i, %.preheader245.split.i ], [ %.1312395.i, %.preheader245.i ], [ 1, %bb.cj ], [ %.5316.us379.1.i, %.preheader245.split.split.us.2.i ], [ 1, %bb.ci ], [ %.5316.us379.1.i, %bb.cg ], [ %.5316.us379.1.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.2.i ] ; 2 uses
  %.us-phi368.i = phi i1 [ %.1305396.i, %.preheader245.split.i ], [ %.1305396.i, %.preheader245.i ], [ %spec.select380.us.2.i, %bb.cj ], [ %.5309.us380.1.i, %.preheader245.split.split.us.2.i ], [ %.5309.us380.1.i, %bb.ci ], [ %.5309.us380.1.i, %bb.cg ], [ %.5309.us380.1.i, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit473.us.2.i ] ; 2 uses
  %i.aho = add nsw i32 %.0303397.i, 1             ; 2 uses
  %exitcond536.not.i = icmp eq i32 %i.aho, 2
  br i1 %exitcond536.not.i, label %.loopexit.loopexit.i, label %.preheader245.i, !llvm.loop !589

.split382.us.i:                                   ; preds = %bb.cl, %bb.cd, %bb.bu
  call void @_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %32) #22, !noalias !660
  unreachable

.split384.us.i:                                   ; preds = %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i460.us.2.i, %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i460.us.1.i, %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i460.us.i
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #22, !noalias !660
  unreachable

.loopexit.loopexit.i:                             ; preds = %.split365.us.i
  %.pre560.i = load ptr, ptr %32, align 8, !tbaa !220, !noalias !660
  %.pre561.i = load ptr, ptr %i.wj, align 8, !tbaa !215, !noalias !660
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.lr.ph407.i
  %i.ahp = phi ptr [ %i.yl, %.lr.ph407.i ], [ %i.aaa, %.loopexit.loopexit.i ] ; 15 uses
  %i.ahq = phi ptr [ %i.yt, %.lr.ph407.i ], [ %.pre561.i, %.loopexit.loopexit.i ] ; 2 uses
  %i.ahr = phi ptr [ %i.ym, %.lr.ph407.i ], [ %.pre560.i, %.loopexit.loopexit.i ] ; 32 uses
  %i.ahs = phi ptr [ %i.yn, %.lr.ph407.i ], [ %i.ahk, %.loopexit.loopexit.i ] ; 11 uses
  %i.aht = phi ptr [ %i.yo, %.lr.ph407.i ], [ %i.ahl, %.loopexit.loopexit.i ] ; 11 uses
  %i.ahu = phi ptr [ %i.yp, %.lr.ph407.i ], [ %i.ahm, %.loopexit.loopexit.i ] ; 11 uses
  %i.ahv = phi ptr [ %i.yq, %.lr.ph407.i ], [ %i.ahn, %.loopexit.loopexit.i ] ; 11 uses
  %i.ahw = phi ptr [ %i.yr, %.lr.ph407.i ], [ %i.aab, %.loopexit.loopexit.i ] ; 9 uses
  %.sroa.685.6.i = phi i32 [ %.sroa.685.0399.i, %.lr.ph407.i ], [ %.us-phi.i, %.loopexit.loopexit.i ] ; 2 uses
  %.sroa.083.6.i = phi i32 [ %.sroa.083.0400.i, %.lr.ph407.i ], [ %.us-phi366.i, %.loopexit.loopexit.i ] ; 2 uses
  %.2329.i = phi i64 [ %.0327401.i, %.lr.ph407.i ], [ %spec.select.i, %.loopexit.loopexit.i ] ; 10 uses
  %.2326.i = phi i64 [ %.0324402.i, %.lr.ph407.i ], [ %.1325.i, %.loopexit.loopexit.i ] ; 7 uses
  %.2323.i = phi i64 [ %.0321403.i, %.lr.ph407.i ], [ %.1322.i, %.loopexit.loopexit.i ] ; 10 uses
  %.2320.i = phi i64 [ %.0318404.i, %.lr.ph407.i ], [ %.1319.i, %.loopexit.loopexit.i ] ; 7 uses
  %.6317.i = phi i8 [ %.0311405.i, %.lr.ph407.i ], [ %.us-phi367.i, %.loopexit.loopexit.i ] ; 2 uses
  %.6310.i = phi i1 [ %.0304406.i, %.lr.ph407.i ], [ %.us-phi368.i, %.loopexit.loopexit.i ] ; 2 uses
  %i.ahx = icmp eq ptr %i.ahr, %i.ahq
  br i1 %i.ahx, label %._crit_edge408.i, label %.lr.ph407.i

._crit_edge408.i:                                 ; preds = %.loopexit.i
  %i.ahy = trunc nuw i8 %.6317.i to i1
  %i.ahz = select i1 %i.ahy, i1 %.6310.i, i1 false
  %i.aia = zext nneg i32 %.sroa.685.6.i to i64
  %i.aib = mul i64 %i.hl, %i.aia
  %i.aic = zext nneg i32 %.sroa.083.6.i to i64
  br i1 %i.ahz, label %bb.co, label %.loopexit246.i

bb.co:                                            ; preds = %._crit_edge408.i
  %i.aid = sub i64 %.2326.i, %.2329.i             ; 2 uses
  %i.aie = icmp ugt i64 %i.aid, 31
  br i1 %i.aie, label %.loopexit246.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aif = sub i64 %.2320.i, %.2323.i             ; 2 uses
  %i.aig = icmp ugt i64 %i.aif, 31
  br i1 %i.aig, label %.loopexit246.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.aih = add i64 %i.aib, %i.aic                 ; 3 uses
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.aih
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !106, !noalias !660 ; 3 uses
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.aih
  %i.ail = load float, ptr %i.aik, align 4, !tbaa !106, !noalias !660 ; 3 uses
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.aih
  %i.ain = load float, ptr %i.aim, align 4, !tbaa !106, !noalias !660 ; 3 uses
  %i.aio = trunc i64 %.2323.i to i32              ; 3 uses
  %i.aip = call i32 @llvm.smax.i32(i32 %i.aio, i32 2)
  %.sroa.speculated41.i = add nsw i32 %i.aip, -2
  %i.aiq = zext nneg i32 %.sroa.speculated41.i to i64 ; 2 uses
  %i.air = add i64 %.2320.i, 3
  %.sroa.speculated37.i = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.air) ; 2 uses
  %i.ais = icmp ugt i64 %.sroa.speculated37.i, %i.aiq
  br i1 %i.ais, label %.lr.ph426.i, label %.loopexit246.i

.lr.ph426.i:                                      ; preds = %bb.cq
  %i.ait = trunc i64 %.2329.i to i32              ; 3 uses
  %i.aiu = call i32 @llvm.smax.i32(i32 %i.ait, i32 2) ; 2 uses
  %.sroa.speculated31.i = add nsw i32 %i.aiu, -2
  %i.aiv = zext nneg i32 %.sroa.speculated31.i to i64 ; 4 uses
  %i.aiw = add i64 %.2326.i, 3
  %.sroa.speculated27.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.aiw) ; 3 uses
  %i.aix = icmp ugt i64 %.sroa.speculated27.i, %i.aiv
  %i.aiy = load ptr, ptr %i.a, align 16, !noalias !660 ; 2 uses
  %i.aiz = load ptr, ptr %i.p, align 8, !noalias !660 ; 2 uses
  %i.aja = load ptr, ptr %i.s, align 16, !noalias !660 ; 2 uses
  br i1 %i.aix, label %.lr.ph420.us.i.preheader, label %.loopexit246.i

.lr.ph420.us.i.preheader:                         ; preds = %.lr.ph426.i
  %i.ajb = zext nneg i32 %i.aiu to i64
  %i.ajc = add nuw nsw i64 %.sroa.speculated27.i, 2
  %i.ajd = sub nsw i64 %i.ajc, %i.ajb             ; 3 uses
  %min.iters.check = icmp ult i64 %i.ajd, 8
  %n.vec = and i64 %i.ajd, -8                     ; 3 uses
  %i.aje = add nsw i64 %n.vec, %i.aiv
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aij, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1161 = insertelement <4 x float> poison, float %i.ail, i64 0
  %broadcast.splat1162 = shufflevector <4 x float> %broadcast.splatinsert1161, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1165 = insertelement <4 x float> poison, float %i.ain, i64 0
  %broadcast.splat1166 = shufflevector <4 x float> %broadcast.splatinsert1165, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.ajd, %n.vec
  br label %.lr.ph420.us.i

.lr.ph420.us.i:                                   ; preds = %.lr.ph420.us.i.preheader, %._crit_edge421.us.i
  %.0298424.us.i = phi i64 [ %i.ala, %._crit_edge421.us.i ], [ %i.aiq, %.lr.ph420.us.i.preheader ] ; 2 uses
  %.0299423.us.i = phi i1 [ %spec.select381.us.i.lcssa, %._crit_edge421.us.i ], [ false, %.lr.ph420.us.i.preheader ] ; 2 uses
  %i.ajf = mul i64 %.0298424.us.i, %i.m           ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph420.us.i
  %invariant.op = add i64 %i.aiv, %i.ajf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ake, %vector.body ]
  %vec.phi1169 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.akf, %vector.body ]
  %.reass = add i64 %index, %invariant.op         ; 3 uses
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %.reass ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 16
  %wide.load = load <4 x float>, ptr %i.ajg, align 4, !tbaa !106, !noalias !660
  %wide.load1170 = load <4 x float>, ptr %i.ajh, align 4, !tbaa !106, !noalias !660
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.aiz, i64 %.reass ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %wide.load1171 = load <4 x float>, ptr %i.aji, align 4, !tbaa !106, !noalias !660
  %wide.load1172 = load <4 x float>, ptr %i.ajj, align 4, !tbaa !106, !noalias !660
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %.reass ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 16
  %wide.load1173 = load <4 x float>, ptr %i.ajk, align 4, !tbaa !106, !noalias !660
  %wide.load1174 = load <4 x float>, ptr %i.ajl, align 4, !tbaa !106, !noalias !660
  %i.ajm = fsub <4 x float> %broadcast.splat, %wide.load
  %i.ajn = fsub <4 x float> %broadcast.splat, %wide.load1170
  %i.ajo = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ajm)
  %i.ajp = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ajn)
  %51 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajo, <4 x float> %broadcast.splat1160, <4 x float> zeroinitializer)
  %52 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajp, <4 x float> %broadcast.splat1160, <4 x float> zeroinitializer)
  %i.ajq = fsub <4 x float> %broadcast.splat1162, %wide.load1171
  %i.ajr = fsub <4 x float> %broadcast.splat1162, %wide.load1172
  %i.ajs = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ajq)
  %i.ajt = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ajr)
  %i.aju = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajs, <4 x float> %broadcast.splat1164, <4 x float> %51)
  %i.ajv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajt, <4 x float> %broadcast.splat1164, <4 x float> %52)
  %i.ajw = fsub <4 x float> %broadcast.splat1166, %wide.load1173
  %i.ajx = fsub <4 x float> %broadcast.splat1166, %wide.load1174
  %i.ajy = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ajw)
  %i.ajz = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ajx)
  %i.aka = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajy, <4 x float> %broadcast.splat1168, <4 x float> %i.aju)
  %i.akb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajz, <4 x float> %broadcast.splat1168, <4 x float> %i.ajv)
  %i.akc = fcmp ole <4 x float> %i.aka, splat (float 3.000000e-02)
  %i.akd = fcmp ole <4 x float> %i.akb, splat (float 3.000000e-02)
  %i.ake = or <4 x i1> %vec.phi, %i.akc           ; 2 uses
  %i.akf = or <4 x i1> %vec.phi1169, %i.akd       ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.akg = icmp eq i64 %index.next, %n.vec
  br i1 %i.akg, label %middle.block, label %vector.body, !llvm.loop !590

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.akf, %i.ake
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.akh = bitcast <4 x i1> %bin.rdx.fr to i4
  %i.aki = icmp ne i4 %i.akh, 0
  %rdx.select = select i1 %i.aki, i1 true, i1 %.0299423.us.i ; 2 uses
  br i1 %cmp.n, label %._crit_edge421.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph420.us.i, %middle.block
  %.0297418.us.i.ph = phi i64 [ %i.aiv, %.lr.ph420.us.i ], [ %i.aje, %middle.block ]
  %.1300417.us.i.ph = phi i1 [ %.0299423.us.i, %.lr.ph420.us.i ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0297418.us.i = phi i64 [ %i.akz, %scalar.ph ], [ %.0297418.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.1300417.us.i = phi i1 [ %spec.select381.us.i, %scalar.ph ], [ %.1300417.us.i.ph, %scalar.ph.preheader ]
  %i.akj = add i64 %.0297418.us.i, %i.ajf         ; 3 uses
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr %i.aiy, i64 %i.akj
  %i.akl = load float, ptr %i.akk, align 4, !tbaa !106, !noalias !660
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %i.aiz, i64 %i.akj
  %i.akn = load float, ptr %i.akm, align 4, !tbaa !106, !noalias !660
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %i.aja, i64 %i.akj
  %i.akp = load float, ptr %i.ako, align 4, !tbaa !106, !noalias !660
  %i.akq = fsub float %i.aij, %i.akl
  %i.akr = call noundef float @llvm.fabs.f32(float %i.akq)
  %53 = call float @llvm.fmuladd.f32(float %i.akr, float %.sink2.i.i, float 0.000000e+00)
  %i.aks = fsub float %i.ail, %i.akn
  %i.akt = call noundef float @llvm.fabs.f32(float %i.aks)
  %i.aku = call float @llvm.fmuladd.f32(float %i.akt, float %.sink1.i.i, float %53)
  %i.akv = fsub float %i.ain, %i.akp
  %i.akw = call noundef float @llvm.fabs.f32(float %i.akv)
  %i.akx = call float @llvm.fmuladd.f32(float %i.akw, float %.sink.i.i, float %i.aku)
  %i.aky = fcmp ole float %i.akx, 3.000000e-02
  %spec.select381.us.i = select i1 %i.aky, i1 true, i1 %.1300417.us.i ; 2 uses
  %i.akz = add nuw nsw i64 %.0297418.us.i, 1      ; 2 uses
  %exitcond537.not.i = icmp eq i64 %i.akz, %.sroa.speculated27.i
  br i1 %exitcond537.not.i, label %._crit_edge421.us.i, label %scalar.ph, !llvm.loop !591

._crit_edge421.us.i:                              ; preds = %scalar.ph, %middle.block
  %spec.select381.us.i.lcssa = phi i1 [ %rdx.select, %middle.block ], [ %spec.select381.us.i, %scalar.ph ] ; 2 uses
  %i.ala = add nuw nsw i64 %.0298424.us.i, 1      ; 2 uses
  %exitcond538.not.i = icmp eq i64 %i.ala, %.sroa.speculated37.i
  br i1 %exitcond538.not.i, label %._crit_edge427.i, label %.lr.ph420.us.i, !llvm.loop !592

._crit_edge427.i:                                 ; preds = %._crit_edge421.us.i
  br i1 %spec.select381.us.i.lcssa, label %bb.cr, label %.loopexit246.i

bb.cr:                                            ; preds = %._crit_edge427.i
  %i.alb = load ptr, ptr %i.wm, align 8, !tbaa !203, !noalias !660 ; 4 uses
  %i.alc = load ptr, ptr %i.wn, align 8, !tbaa !204, !noalias !660
  %i.ald = icmp ult ptr %i.alb, %i.alc
  br i1 %i.ald, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  call void @_ZN3jxl14QuantizedPatchC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %i.alb) #24, !noalias !660
  %i.ale = getelementptr inbounds nuw i8, ptr %i.alb, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ale, i8 0, i64 24, i1 false), !noalias !660
  %i.alf = getelementptr inbounds nuw i8, ptr %i.alb, i64 184
  br label %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE12emplace_backIJEEERS8_DpOT_.exit.i

bb.ct:                                            ; preds = %bb.cr
  %i.alg = call noundef ptr @_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE24__emplace_back_slow_pathIJEEEPS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13) #24, !noalias !660
  br label %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE12emplace_backIJEEERS8_DpOT_.exit.i

_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE12emplace_backIJEEERS8_DpOT_.exit.i: ; preds = %bb.ct, %bb.cs
  %.0.i475.i = phi ptr [ %i.alf, %bb.cs ], [ %i.alg, %bb.ct ] ; 4 uses
  store ptr %.0.i475.i, ptr %i.wm, align 8, !tbaa !203, !noalias !660
  %i.alh = getelementptr inbounds i8, ptr %.0.i475.i, i64 -24 ; 4 uses
  %i.ali = getelementptr inbounds i8, ptr %.0.i475.i, i64 -16 ; 4 uses
  %i.alj = load ptr, ptr %i.ali, align 8, !tbaa !215, !noalias !660 ; 5 uses
  %i.alk = getelementptr inbounds i8, ptr %.0.i475.i, i64 -8 ; 3 uses
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !219, !noalias !660 ; 2 uses
  %i.alm = icmp ult ptr %i.alj, %i.all
  br i1 %i.alm, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE12emplace_backIJEEERS8_DpOT_.exit.i
  store i32 %i.ait, ptr %i.alj, align 4, !tbaa !217, !noalias !660
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alj, i64 4
  store i32 %i.aio, ptr %i.aln, align 4, !tbaa !218, !noalias !660
  %i.alo = getelementptr inbounds nuw i8, ptr %i.alj, i64 8
  br label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit489.i

bb.cv:                                            ; preds = %_ZNSt3__16vectorINS_4pairIN3jxl14QuantizedPatchENS0_INS1_IjjEENS_9allocatorIS4_EEEEEENS5_IS8_EEE12emplace_backIJEEERS8_DpOT_.exit.i
  %i.alp = load ptr, ptr %i.alh, align 8, !tbaa !220, !noalias !660
  %i.alq = ptrtoint ptr %i.alj to i64
  %i.alr = ptrtoint ptr %i.alp to i64             ; 2 uses
  %i.als = sub i64 %i.alq, %i.alr                 ; 2 uses
  %i.alt = ashr exact i64 %i.als, 3
  %i.alu = add nsw i64 %i.alt, 1                  ; 2 uses
  %i.alv = icmp ugt i64 %i.alu, 2305843009213693951
  br i1 %i.alv, label %bb.cw, label %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i476.i

bb.cw:                                            ; preds = %bb.cv
  call void @_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.alh) #22, !noalias !660
  unreachable

_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i476.i: ; preds = %bb.cv
  %i.alw = ptrtoint ptr %i.all to i64
  %i.alx = sub i64 %i.alw, %i.alr                 ; 2 uses
  %.not.i.i.i477.i = icmp ult i64 %i.alx, 9223372036854775800
  %i.aly = ashr exact i64 %i.alx, 2
  %.sroa.speculated.i.i.i478.i = call i64 @llvm.umax.i64(i64 %i.aly, i64 %i.alu)
  %.0.i.i.i479.i = select i1 %.not.i.i.i477.i, i64 %.sroa.speculated.i.i.i478.i, i64 2305843009213693951 ; 4 uses
  %i.alz = icmp ne i64 %.0.i.i.i479.i, 0
  call void @llvm.assume(i1 %i.alz)
  %i.ama = icmp ugt i64 %.0.i.i.i479.i, 2305843009213693951
  br i1 %i.ama, label %bb.cx, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i

bb.cx:                                            ; preds = %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i476.i
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #22, !noalias !660
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i: ; preds = %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i476.i
  %i.amb = shl nuw i64 %.0.i.i.i479.i, 3
  %i.amc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amb) #20, !noalias !660 ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.als ; 5 uses
  %i.ame = getelementptr inbounds nuw [8 x i8], ptr %i.amc, i64 %.0.i.i.i479.i
  store i32 %i.ait, ptr %i.amd, align 4, !tbaa !217, !noalias !660
  %i.amf = getelementptr inbounds nuw i8, ptr %i.amd, i64 4
  store i32 %i.aio, ptr %i.amf, align 4, !tbaa !218, !noalias !660
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amd, i64 8 ; 3 uses
  %i.amh = load ptr, ptr %i.ali, align 8, !tbaa !215, !noalias !660 ; 2 uses
  %i.ami = load ptr, ptr %i.alh, align 8, !tbaa !220, !noalias !660 ; 5 uses
  %.not13.i.i.i.i481.i = icmp eq ptr %i.amh, %i.ami
  br i1 %.not13.i.i.i.i481.i, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i485.i, label %.lr.ph.i.i.i.i482.i

.lr.ph.i.i.i.i482.i:                              ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i, %.lr.ph.i.i.i.i482.i
  %i.amj = phi ptr [ %i.amk, %.lr.ph.i.i.i.i482.i ], [ %i.amd, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i ]
  %.sroa.18.014.i.i.i.i483.i = phi ptr [ %i.aml, %.lr.ph.i.i.i.i482.i ], [ %i.amh, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i ]
  %i.amk = getelementptr inbounds i8, ptr %i.amj, i64 -8 ; 3 uses
  %i.aml = getelementptr inbounds i8, ptr %.sroa.18.014.i.i.i.i483.i, i64 -8 ; 3 uses
  %i.amm = load i64, ptr %i.aml, align 4, !tbaa !208, !noalias !660
  store i64 %i.amm, ptr %i.amk, align 4, !tbaa !208, !noalias !660
  %.not.i.i.i.i484.i = icmp eq ptr %i.aml, %i.ami
  br i1 %.not.i.i.i.i484.i, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i485.i, label %.lr.ph.i.i.i.i482.i, !llvm.loop !1

_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i485.i: ; preds = %.lr.ph.i.i.i.i482.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i
  %storemerge.i.i486.i = phi ptr [ %i.amd, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i480.i ], [ %i.amk, %.lr.ph.i.i.i.i482.i ]
  store ptr %storemerge.i.i486.i, ptr %i.alh, align 8, !tbaa !219, !noalias !660
  store ptr %i.amg, ptr %i.ali, align 8, !tbaa !219, !noalias !660
  %i.amn = load ptr, ptr %i.alk, align 8, !tbaa !219, !noalias !660
  store ptr %i.ame, ptr %i.alk, align 8, !tbaa !219, !noalias !660
  %.not.i5.i.i487.i = icmp eq ptr %i.ami, null
  br i1 %.not.i5.i.i487.i, label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit489.i, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i485.i
  %i.amo = ptrtoint ptr %i.amn to i64
  %i.amp = ptrtoint ptr %i.ami to i64
  %i.amq = sub i64 %i.amo, %i.amp
  call void @_ZdlPvm(ptr noundef nonnull %i.ami, i64 noundef %i.amq) #21, !noalias !660
  br label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit489.i

_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit489.i: ; preds = %bb.cy, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i485.i, %bb.cu
  %.0.i488.i = phi ptr [ %i.alo, %bb.cu ], [ %i.amg, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i485.i ], [ %i.amg, %bb.cy ]
  store ptr %.0.i488.i, ptr %i.ali, align 8, !tbaa !215, !noalias !660
  %i.amr = load ptr, ptr %i.wm, align 8, !tbaa !203, !noalias !660 ; 10 uses
  %i.ams = getelementptr inbounds i8, ptr %i.amr, i64 -184 ; 4 uses
  %i.amt = add nuw nsw i64 %i.aid, 1
  store i64 %i.amt, ptr %i.ams, align 8, !tbaa !222, !noalias !660
  %i.amu = add nuw nsw i64 %i.aif, 1
  %i.amv = getelementptr inbounds i8, ptr %i.amr, i64 -176
  store i64 %i.amu, ptr %i.amv, align 8, !tbaa !223, !noalias !660
  %.not352436.i = icmp ugt i64 %.2323.i, %.2320.i
  %i.amw = getelementptr inbounds i8, ptr %i.amr, i64 -96
  %i.amx = getelementptr inbounds i8, ptr %i.amr, i64 -168
  br i1 %.not352436.i, label %.split445.us.thread.i, label %.preheader.lr.ph.preheader.i

.preheader.lr.ph.preheader.i:                     ; preds = %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12emplace_backIJjjEEERS2_DpOT_.exit489.i
  %.not353430.i = icmp ugt i64 %.2329.i, %.2326.i
  %i.amy = getelementptr inbounds i8, ptr %i.amr, i64 -72
  %i.amz = getelementptr inbounds i8, ptr %i.amr, i64 -144
  br i1 %.not353430.i, label %.split445.us.thread.i, label %.preheader.i

.split445.us.i:                                   ; preds = %._crit_edge434.2.i
  %i.ana = icmp samesign ult i32 %.sroa.speculated.2.i, 2
  br i1 %i.ana, label %.split445.us.i..split445.us.thread.i_crit_edge, label %bb.dd

.split445.us.i..split445.us.thread.i_crit_edge:   ; preds = %.split445.us.i
  %.pre = load ptr, ptr %i.wm, align 8, !tbaa !203, !noalias !660
  br label %.split445.us.thread.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.preheader.i, %._crit_edge434.i
  %.0295438.i = phi i64 [ %i.aov, %._crit_edge434.i ], [ %.2323.i, %.preheader.lr.ph.preheader.i ] ; 3 uses
  %.1437.i = phi i32 [ %.sroa.speculated.i, %._crit_edge434.i ], [ 0, %.preheader.lr.ph.preheader.i ]
  %i.anb = sub i64 %.0295438.i, %.2323.i
  %i.anc = mul i64 %.0295438.i, %i.m
  br label %bb.db

.preheader.1.i:                                   ; preds = %._crit_edge434.i, %._crit_edge434.1.i
  %.0295438.1.i = phi i64 [ %i.anx, %._crit_edge434.1.i ], [ %.2323.i, %._crit_edge434.i ] ; 3 uses
  %.1437.1.i = phi i32 [ %.sroa.speculated.1.i, %._crit_edge434.1.i ], [ %.sroa.speculated.i, %._crit_edge434.i ]
  %i.and = sub i64 %.0295438.1.i, %.2323.i
  %i.ane = mul i64 %.0295438.1.i, %i.m
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cz, %.preheader.1.i
  %.0294432.1.i = phi i64 [ %.2329.i, %.preheader.1.i ], [ %i.anw, %bb.cz ] ; 3 uses
  %.2431.1.i = phi i32 [ %.1437.1.i, %.preheader.1.i ], [ %.sroa.speculated.1.i, %bb.cz ]
  %i.anf = load i64, ptr %i.ams, align 8, !tbaa !222, !noalias !660
  %i.ang = mul i64 %i.anf, %i.and
  %i.anh = sub i64 %.0294432.1.i, %.2329.i
  %i.ani = add i64 %i.ang, %i.anh                 ; 2 uses
  %i.anj = load ptr, ptr %i.a, align 16, !tbaa !183, !noalias !660
  %i.ank = getelementptr [4 x i8], ptr %i.anj, i64 %i.ane
  %i.anl = getelementptr [4 x i8], ptr %i.ank, i64 %.0294432.1.i
  %i.anm = load float, ptr %i.anl, align 4, !tbaa !106, !noalias !660
  %i.ann = fsub float %i.anm, %i.aij              ; 2 uses
  %i.ano = load ptr, ptr %i.amw, align 8, !tbaa !224, !noalias !660
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %i.ano, i64 %i.ani
  store float %i.ann, ptr %i.anp, align 4, !tbaa !106, !noalias !660
  %i.anq = fdiv float %i.ann, %.sink5.i.i
  %i.anr = fptosi float %i.anq to i32             ; 2 uses
  %i.ans = trunc i32 %i.anr to i8
  %i.ant = load ptr, ptr %i.amx, align 8, !tbaa !228, !noalias !660
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 %i.ani
  store i8 %i.ans, ptr %i.anu, align 1, !tbaa !71, !noalias !660
  %i.anv = call i32 @llvm.abs.i32(i32 %i.anr, i1 true)
  %.sroa.speculated.1.i = call i32 @llvm.smax.i32(i32 %.2431.1.i, i32 %i.anv) ; 3 uses
  %i.anw = add i64 %.0294432.1.i, 1               ; 2 uses
  %.not353.1.i = icmp ugt i64 %i.anw, %.2326.i
  br i1 %.not353.1.i, label %._crit_edge434.1.i, label %bb.cz, !llvm.loop !593

._crit_edge434.1.i:                               ; preds = %bb.cz
  %i.anx = add i64 %.0295438.1.i, 1               ; 2 uses
  %.not352.1.i = icmp ugt i64 %i.anx, %.2320.i
  br i1 %.not352.1.i, label %._crit_edge439.1.i, label %.preheader.1.i, !llvm.loop !594
end_hunk_1
