inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_:bb.a
  %i.nv = call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.nu, ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef %6, i1 noundef zeroext %i.nt)
  br i1 %i.nv, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.nw = load ptr, ptr %i.dr, align 8, !tbaa !92
  %i.nx = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_114ImageCacheImpl9has_errorEv(ptr noundef nonnull align 64 dereferenceable(25240) %i.nw)
  br i1 %i.nx, label %bb.w, label %.loopexit2409

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #3
  %i.ny = load ptr, ptr %i.dr, align 8, !tbaa !92
  call void @_ZNK11OpenImageIO4v3_114ImageCacheImpl8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 64 dereferenceable(25240) %i.ny, i1 noundef zeroext true)
  invoke void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.53, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.nz = load ptr, ptr %32, align 8, !tbaa !30   ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.ee
  br i1 %i.oa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.ob = load i64, ptr %i.ee, align 8, !tbaa !34
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.oc) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #3
  br label %.loopexit2409

bb.y:                                             ; preds = %bb.w
  %i.od = landingpad { ptr, i32 }
          cleanup
  %i.oe = load ptr, ptr %32, align 8, !tbaa !30   ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.ee
  br i1 %i.of, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1139: ; preds = %bb.y
  %i.og = load i64, ptr %i.ee, align 8, !tbaa !34
  %i.oh = add i64 %i.og, 1
  call void @_ZdlPvm(ptr noundef %i.oe, i64 noundef %i.oh) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1139
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #3
  br label %bb.cf

bb.z:                                             ; preds = %bb.u
  %i.oi = load ptr, ptr %i.dt, align 8, !tbaa !326 ; 4 uses
  %.not2164 = icmp eq ptr %i.oi, null
  br i1 %.not2164, label %.loopexit2409, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 68
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !493
  %i.ol = sext i32 %i.ok to i64
  %i.om = sext i32 %.0333 to i64
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 72
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !481
  %i.op = sext i32 %i.oo to i64
  %i.oq = mul nsw i64 %i.op, %i.om
  %i.or = sext i32 %.0332 to i64
  %i.os = add nsw i64 %i.oq, %i.or
  %i.ot = mul i64 %i.os, %i.ol
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oi, i64 48
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !108
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.ot
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.dc ; 46 uses
  switch i8 %i.p, label %.preheader2184 [
    i8 2, label %.preheader2186
    i8 4, label %.preheader2180
    i8 10, label %.preheader2181
  ]

.preheader2186:                                   ; preds = %bb.aa
  %i.oy = load <4 x float>, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_17u8scaleE.0, align 16, !tbaa !34 ; 4 uses
  %i.oz = load i32, ptr %i.aw, align 4, !tbaa !325
  %i.pa = mul i32 %i.oz, %i.cz
  %i.pb = sext i32 %i.pa to i64
  %invariant.gep2412 = getelementptr i8, ptr %i.ox, i64 %i.eo
  br label %.preheader2179

.preheader2184:                                   ; preds = %bb.aa
  %i.pc = load i32, ptr %i.aw, align 4, !tbaa !325
  %i.pd = mul i32 %i.pc, %i.cz
  %i.pe = sext i32 %i.pd to i64                   ; 4 uses
  %i.pf = load <4 x float>, ptr %i.ox, align 1, !tbaa !34
  store <4 x float> %i.pf, ptr %31, align 16, !tbaa !34
  %i.pg = getelementptr inbounds i8, ptr %i.ox, i64 %i.eo
  %i.ph = load <4 x float>, ptr %i.pg, align 1, !tbaa !34
  store <4 x float> %i.ph, ptr %i.ej, align 16, !tbaa !34
  %i.pi = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2323.1
  %i.pj = load <4 x float>, ptr %i.pi, align 1, !tbaa !34
  store <4 x float> %i.pj, ptr %i.ek, align 16, !tbaa !34
  %i.pk = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2323.2
  %i.pl = load <4 x float>, ptr %i.pk, align 1, !tbaa !34
  store <4 x float> %i.pl, ptr %i.el, align 16, !tbaa !34
  %i.pm = getelementptr inbounds i8, ptr %i.ox, i64 %i.pe
  %i.pn = load <4 x float>, ptr %i.pm, align 1, !tbaa !34
  store <4 x float> %i.pn, ptr %i.eg, align 16, !tbaa !34
  %indvars.iv.next2323.12334 = add nsw i64 %i.pe, %i.eo ; 2 uses
  %i.po = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2323.12334
  %i.pp = load <4 x float>, ptr %i.po, align 1, !tbaa !34
  store <4 x float> %i.pp, ptr %i.ep, align 16, !tbaa !34
  %indvars.iv.next2323.1.1 = add nsw i64 %indvars.iv.next2323.12334, %i.eo ; 2 uses
  %i.pq = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2323.1.1
  %i.pr = load <4 x float>, ptr %i.pq, align 1, !tbaa !34
  store <4 x float> %i.pr, ptr %i.eq, align 16, !tbaa !34
  %i.ps = getelementptr i8, ptr %i.ox, i64 %indvars.iv.next2323.1.1
  %i.pt = getelementptr i8, ptr %i.ps, i64 %i.eo
  %i.pu = load <4 x float>, ptr %i.pt, align 1, !tbaa !34
  store <4 x float> %i.pu, ptr %i.er, align 16, !tbaa !34
  %indvars.iv.next2321.1 = shl nsw i64 %i.pe, 1   ; 2 uses
  %i.pv = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2321.1
  %i.pw = load <4 x float>, ptr %i.pv, align 1, !tbaa !34
  store <4 x float> %i.pw, ptr %i.eh, align 16, !tbaa !34
  %indvars.iv.next2323.22335 = add nsw i64 %indvars.iv.next2321.1, %i.eo ; 2 uses
  %i.px = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2323.22335
  %i.py = load <4 x float>, ptr %i.px, align 1, !tbaa !34
  store <4 x float> %i.py, ptr %i.es, align 16, !tbaa !34
  %indvars.iv.next2323.1.2 = add nsw i64 %indvars.iv.next2323.22335, %i.eo ; 2 uses
  %i.pz = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2323.1.2
  %i.qa = load <4 x float>, ptr %i.pz, align 1, !tbaa !34
  store <4 x float> %i.qa, ptr %i.et, align 16, !tbaa !34
  %i.qb = getelementptr i8, ptr %i.ox, i64 %indvars.iv.next2323.1.2
  %i.qc = getelementptr i8, ptr %i.qb, i64 %i.eo
  %i.qd = load <4 x float>, ptr %i.qc, align 1, !tbaa !34
  store <4 x float> %i.qd, ptr %i.eu, align 16, !tbaa !34
  %indvars.iv.next2321.2 = mul nsw i64 %i.pe, 3   ; 2 uses
  %i.qe = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2321.2
  %i.qf = load <4 x float>, ptr %i.qe, align 1, !tbaa !34
  store <4 x float> %i.qf, ptr %i.ei, align 16, !tbaa !34
  %indvars.iv.next2323.3 = add nsw i64 %indvars.iv.next2321.2, %i.eo ; 2 uses
  %i.qg = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2323.3
  %i.qh = load <4 x float>, ptr %i.qg, align 1, !tbaa !34
  store <4 x float> %i.qh, ptr %i.ev, align 16, !tbaa !34
  %indvars.iv.next2323.1.3 = add nsw i64 %indvars.iv.next2323.3, %i.eo ; 2 uses
  %i.qi = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2323.1.3
  %i.qj = load <4 x float>, ptr %i.qi, align 1, !tbaa !34
  store <4 x float> %i.qj, ptr %i.ew, align 16, !tbaa !34
  %i.qk = getelementptr i8, ptr %i.ox, i64 %indvars.iv.next2323.1.3
  %i.ql = getelementptr i8, ptr %i.qk, i64 %i.eo
  %i.qm = load <4 x float>, ptr %i.ql, align 1, !tbaa !34
  store <4 x float> %i.qm, ptr %i.ex, align 16, !tbaa !34
  br label %.loopexit2185

.preheader2179:                                   ; preds = %.preheader2186, %.preheader2179
  %indvars.iv2312 = phi i64 [ 0, %.preheader2186 ], [ %indvars.iv.next2313, %.preheader2179 ] ; 2 uses
  %indvars.iv2304 = phi i64 [ 0, %.preheader2186 ], [ %indvars.iv.next2305, %.preheader2179 ] ; 3 uses
  %i.qn = getelementptr inbounds nuw [64 x i8], ptr %31, i64 %indvars.iv2312 ; 4 uses
  %i.qo = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv2304
  %i.qp = load float, ptr %i.qo, align 1, !tbaa !34
  %i.qq = insertelement <4 x float> poison, float %i.qp, i64 0
  %i.qr = bitcast <4 x float> %i.qq to <16 x i8>
  %i.qs = shufflevector <16 x i8> %i.qr, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qt = bitcast <16 x i8> %i.qs to <8 x i16>
  %i.qu = shufflevector <8 x i16> %i.qt, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qv = bitcast <8 x i16> %i.qu to <4 x i32>
  %i.qw = uitofp nneg <4 x i32> %i.qv to <4 x float>
  %i.qx = fmul <4 x float> %i.oy, %i.qw
  store <4 x float> %i.qx, ptr %i.qn, align 16
  %indvars.iv.next2307 = add nsw i64 %indvars.iv2304, %i.eo ; 2 uses
  %i.qy = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2307
  %i.qz = load float, ptr %i.qy, align 1, !tbaa !34
  %i.ra = insertelement <4 x float> poison, float %i.qz, i64 0
  %i.rb = bitcast <4 x float> %i.ra to <16 x i8>
  %i.rc = shufflevector <16 x i8> %i.rb, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rd = bitcast <16 x i8> %i.rc to <8 x i16>
  %i.re = shufflevector <8 x i16> %i.rd, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rf = bitcast <8 x i16> %i.re to <4 x i32>
  %i.rg = uitofp nneg <4 x i32> %i.rf to <4 x float>
  %i.rh = fmul <4 x float> %i.oy, %i.rg
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  store <4 x float> %i.rh, ptr %i.ri, align 16
  %indvars.iv.next2307.1 = add nsw i64 %indvars.iv.next2307, %i.eo ; 2 uses
  %i.rj = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2307.1
  %i.rk = load float, ptr %i.rj, align 1, !tbaa !34
  %i.rl = insertelement <4 x float> poison, float %i.rk, i64 0
  %i.rm = bitcast <4 x float> %i.rl to <16 x i8>
  %i.rn = shufflevector <16 x i8> %i.rm, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ro = bitcast <16 x i8> %i.rn to <8 x i16>
  %i.rp = shufflevector <8 x i16> %i.ro, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rq = bitcast <8 x i16> %i.rp to <4 x i32>
  %i.rr = uitofp nneg <4 x i32> %i.rq to <4 x float>
  %i.rs = fmul <4 x float> %i.oy, %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qn, i64 32
  store <4 x float> %i.rs, ptr %i.rt, align 16
  %gep2413 = getelementptr i8, ptr %invariant.gep2412, i64 %indvars.iv.next2307.1
  %i.ru = load float, ptr %gep2413, align 1, !tbaa !34
  %i.rv = insertelement <4 x float> poison, float %i.ru, i64 0
  %i.rw = bitcast <4 x float> %i.rv to <16 x i8>
  %i.rx = shufflevector <16 x i8> %i.rw, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ry = bitcast <16 x i8> %i.rx to <8 x i16>
  %i.rz = shufflevector <8 x i16> %i.ry, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sa = bitcast <8 x i16> %i.rz to <4 x i32>
  %i.sb = uitofp nneg <4 x i32> %i.sa to <4 x float>
  %i.sc = fmul <4 x float> %i.oy, %i.sb
  %i.sd = getelementptr inbounds nuw i8, ptr %i.qn, i64 48
  store <4 x float> %i.sc, ptr %i.sd, align 16
  %indvars.iv.next2313 = add nuw nsw i64 %indvars.iv2312, 1 ; 2 uses
  %indvars.iv.next2305 = add i64 %indvars.iv2304, %i.pb
  %exitcond2317.not = icmp eq i64 %indvars.iv.next2313, 4
  br i1 %exitcond2317.not, label %.loopexit2185, label %.preheader2179, !llvm.loop !519

.preheader2180:                                   ; preds = %bb.aa
  %invariant.gep2410 = getelementptr i8, ptr %i.ox, i64 %i.eo ; 4 uses
  %i.se = load i32, ptr %i.aw, align 4, !tbaa !325
  %i.sf = mul i32 %i.se, %i.cz
  %i.sg = sext i32 %i.sf to i64                   ; 4 uses
  %i.sh = load <4 x float>, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_18u16scaleE.0, align 16, !tbaa !34 ; 16 uses
  %i.si = load <4 x i16>, ptr %i.ox, align 2, !tbaa !489
  %i.sj = uitofp <4 x i16> %i.si to <4 x float>
  %i.sk = fmul <4 x float> %i.sh, %i.sj
  store <4 x float> %i.sk, ptr %31, align 16
  %i.sl = getelementptr inbounds i8, ptr %i.ox, i64 %i.eo
  %i.sm = load <4 x i16>, ptr %i.sl, align 2, !tbaa !489
  %i.sn = uitofp <4 x i16> %i.sm to <4 x float>
  %i.so = fmul <4 x float> %i.sh, %i.sn
  store <4 x float> %i.so, ptr %i.fy, align 16
  %i.sp = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2291.1
  %i.sq = load <4 x i16>, ptr %i.sp, align 2, !tbaa !489
  %i.sr = uitofp <4 x i16> %i.sq to <4 x float>
  %i.ss = fmul <4 x float> %i.sh, %i.sr
  store <4 x float> %i.ss, ptr %i.fz, align 16
  %gep2411 = getelementptr i8, ptr %invariant.gep2410, i64 %indvars.iv.next2291.1
  %i.st = load <4 x i16>, ptr %gep2411, align 2, !tbaa !489
  %i.su = uitofp <4 x i16> %i.st to <4 x float>
  %i.sv = fmul <4 x float> %i.sh, %i.su
  store <4 x float> %i.sv, ptr %i.ga, align 16
  %i.sw = getelementptr inbounds i8, ptr %i.ox, i64 %i.sg
  %i.sx = load <4 x i16>, ptr %i.sw, align 2, !tbaa !489
  %i.sy = uitofp <4 x i16> %i.sx to <4 x float>
  %i.sz = fmul <4 x float> %i.sh, %i.sy
  store <4 x float> %i.sz, ptr %i.gb, align 16
  %indvars.iv.next2291.12431 = add nsw i64 %i.sg, %i.eo ; 2 uses
  %i.ta = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2291.12431
  %i.tb = load <4 x i16>, ptr %i.ta, align 2, !tbaa !489
  %i.tc = uitofp <4 x i16> %i.tb to <4 x float>
  %i.td = fmul <4 x float> %i.sh, %i.tc
  store <4 x float> %i.td, ptr %i.gc, align 16
  %indvars.iv.next2291.1.1 = add nsw i64 %indvars.iv.next2291.12431, %i.eo ; 2 uses
  %i.te = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2291.1.1
  %i.tf = load <4 x i16>, ptr %i.te, align 2, !tbaa !489
  %i.tg = uitofp <4 x i16> %i.tf to <4 x float>
  %i.th = fmul <4 x float> %i.sh, %i.tg
  store <4 x float> %i.th, ptr %i.gd, align 16
  %gep2411.1 = getelementptr i8, ptr %invariant.gep2410, i64 %indvars.iv.next2291.1.1
  %i.ti = load <4 x i16>, ptr %gep2411.1, align 2, !tbaa !489
  %i.tj = uitofp <4 x i16> %i.ti to <4 x float>
  %i.tk = fmul <4 x float> %i.sh, %i.tj
  store <4 x float> %i.tk, ptr %i.ge, align 16
  %indvars.iv.next2289.1 = shl nsw i64 %i.sg, 1   ; 2 uses
  %i.tl = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2289.1
  %i.tm = load <4 x i16>, ptr %i.tl, align 2, !tbaa !489
  %i.tn = uitofp <4 x i16> %i.tm to <4 x float>
  %i.to = fmul <4 x float> %i.sh, %i.tn
  store <4 x float> %i.to, ptr %i.gf, align 16
  %indvars.iv.next2291.2 = add nsw i64 %indvars.iv.next2289.1, %i.eo ; 2 uses
  %i.tp = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2291.2
  %i.tq = load <4 x i16>, ptr %i.tp, align 2, !tbaa !489
  %i.tr = uitofp <4 x i16> %i.tq to <4 x float>
  %i.ts = fmul <4 x float> %i.sh, %i.tr
  store <4 x float> %i.ts, ptr %i.gg, align 16
  %indvars.iv.next2291.1.2 = add nsw i64 %indvars.iv.next2291.2, %i.eo ; 2 uses
  %i.tt = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2291.1.2
  %i.tu = load <4 x i16>, ptr %i.tt, align 2, !tbaa !489
  %i.tv = uitofp <4 x i16> %i.tu to <4 x float>
  %i.tw = fmul <4 x float> %i.sh, %i.tv
  store <4 x float> %i.tw, ptr %i.gh, align 16
  %gep2411.2 = getelementptr i8, ptr %invariant.gep2410, i64 %indvars.iv.next2291.1.2
  %i.tx = load <4 x i16>, ptr %gep2411.2, align 2, !tbaa !489
  %i.ty = uitofp <4 x i16> %i.tx to <4 x float>
  %i.tz = fmul <4 x float> %i.sh, %i.ty
  store <4 x float> %i.tz, ptr %i.gi, align 16
  %indvars.iv.next2289.2 = mul nsw i64 %i.sg, 3   ; 2 uses
  %i.ua = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2289.2
  %i.ub = load <4 x i16>, ptr %i.ua, align 2, !tbaa !489
  %i.uc = uitofp <4 x i16> %i.ub to <4 x float>
  %i.ud = fmul <4 x float> %i.sh, %i.uc
  store <4 x float> %i.ud, ptr %i.gj, align 16
  %indvars.iv.next2291.3 = add nsw i64 %indvars.iv.next2289.2, %i.eo ; 2 uses
  %i.ue = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2291.3
  %i.uf = load <4 x i16>, ptr %i.ue, align 2, !tbaa !489
  %i.ug = uitofp <4 x i16> %i.uf to <4 x float>
  %i.uh = fmul <4 x float> %i.sh, %i.ug
  store <4 x float> %i.uh, ptr %i.gk, align 16
  %indvars.iv.next2291.1.3 = add nsw i64 %indvars.iv.next2291.3, %i.eo ; 2 uses
  %i.ui = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2291.1.3
  %i.uj = load <4 x i16>, ptr %i.ui, align 2, !tbaa !489
  %i.uk = uitofp <4 x i16> %i.uj to <4 x float>
  %i.ul = fmul <4 x float> %i.sh, %i.uk
  store <4 x float> %i.ul, ptr %i.gl, align 16
  %gep2411.3 = getelementptr i8, ptr %invariant.gep2410, i64 %indvars.iv.next2291.1.3
  %i.um = load <4 x i16>, ptr %gep2411.3, align 2, !tbaa !489
  %i.un = uitofp <4 x i16> %i.um to <4 x float>
  %i.uo = fmul <4 x float> %i.sh, %i.un
  store <4 x float> %i.uo, ptr %i.gm, align 16
  br label %.loopexit2185

.preheader2181:                                   ; preds = %bb.aa
  %invariant.gep = getelementptr i8, ptr %i.ox, i64 %i.eo ; 4 uses
  %i.up = load i32, ptr %i.aw, align 4, !tbaa !325
  %i.uq = mul i32 %i.up, %i.cz
  %i.ur = sext i32 %i.uq to i64                   ; 4 uses
  %i.us = load <4 x i16>, ptr %i.ox, align 2, !tbaa !489 ; 2 uses
  %i.ut = and <4 x i16> %i.us, splat (i16 32767)  ; 2 uses
  %i.uu = zext nneg <4 x i16> %i.ut to <4 x i32>
  %i.uv = shl nuw nsw <4 x i32> %i.uu, splat (i32 13)
  %i.uw = bitcast <4 x i32> %i.uv to <4 x float>
  %i.ux = fmul nnan <4 x float> %i.uw, splat (float f0x77800000)
  %i.uy = icmp samesign ugt <4 x i16> %i.ut, splat (i16 31743)
  %i.uz = select <4 x i1> %i.uy, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2424 = sext <4 x i16> %i.us to <4 x i32>
  %i.va = and <4 x i32> %.signext2424, splat (i32 -2147483648)
  %i.vb = or disjoint <4 x i32> %i.uz, %i.va
  %i.vc = bitcast <4 x float> %i.ux to <4 x i32>
  %i.vd = or <4 x i32> %i.vb, %i.vc
  store <4 x i32> %i.vd, ptr %31, align 16, !tbaa !34
  %i.ve = getelementptr inbounds i8, ptr %i.ox, i64 %i.eo
  %i.vf = load <4 x i16>, ptr %i.ve, align 2, !tbaa !489 ; 2 uses
  %i.vg = and <4 x i16> %i.vf, splat (i16 32767)  ; 2 uses
  %i.vh = zext nneg <4 x i16> %i.vg to <4 x i32>
  %i.vi = shl nuw nsw <4 x i32> %i.vh, splat (i32 13)
  %i.vj = bitcast <4 x i32> %i.vi to <4 x float>
  %i.vk = fmul nnan <4 x float> %i.vj, splat (float f0x77800000)
  %i.vl = icmp samesign ugt <4 x i16> %i.vg, splat (i16 31743)
  %i.vm = select <4 x i1> %i.vl, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2425 = sext <4 x i16> %i.vf to <4 x i32>
  %i.vn = and <4 x i32> %.signext2425, splat (i32 -2147483648)
  %i.vo = or disjoint <4 x i32> %i.vm, %i.vn
  %i.vp = bitcast <4 x float> %i.vk to <4 x i32>
  %i.vq = or <4 x i32> %i.vo, %i.vp
  store <4 x i32> %i.vq, ptr %i.fj, align 16, !tbaa !34
  %i.vr = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2275.1
  %i.vs = load <4 x i16>, ptr %i.vr, align 2, !tbaa !489 ; 2 uses
  %i.vt = and <4 x i16> %i.vs, splat (i16 32767)  ; 2 uses
  %i.vu = zext nneg <4 x i16> %i.vt to <4 x i32>
  %i.vv = shl nuw nsw <4 x i32> %i.vu, splat (i32 13)
  %i.vw = bitcast <4 x i32> %i.vv to <4 x float>
  %i.vx = fmul nnan <4 x float> %i.vw, splat (float f0x77800000)
  %i.vy = icmp samesign ugt <4 x i16> %i.vt, splat (i16 31743)
  %i.vz = select <4 x i1> %i.vy, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2426 = sext <4 x i16> %i.vs to <4 x i32>
  %i.wa = and <4 x i32> %.signext2426, splat (i32 -2147483648)
  %i.wb = or disjoint <4 x i32> %i.vz, %i.wa
  %i.wc = bitcast <4 x float> %i.vx to <4 x i32>
  %i.wd = or <4 x i32> %i.wb, %i.wc
  store <4 x i32> %i.wd, ptr %i.fk, align 16, !tbaa !34
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next2275.1
  %i.we = load <4 x i16>, ptr %gep, align 2, !tbaa !489 ; 2 uses
  %i.wf = and <4 x i16> %i.we, splat (i16 32767)  ; 2 uses
  %i.wg = zext nneg <4 x i16> %i.wf to <4 x i32>
  %i.wh = shl nuw nsw <4 x i32> %i.wg, splat (i32 13)
  %i.wi = bitcast <4 x i32> %i.wh to <4 x float>
  %i.wj = fmul nnan <4 x float> %i.wi, splat (float f0x77800000)
  %i.wk = icmp samesign ugt <4 x i16> %i.wf, splat (i16 31743)
  %i.wl = select <4 x i1> %i.wk, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2427 = sext <4 x i16> %i.we to <4 x i32>
  %i.wm = and <4 x i32> %.signext2427, splat (i32 -2147483648)
  %i.wn = or disjoint <4 x i32> %i.wl, %i.wm
  %i.wo = bitcast <4 x float> %i.wj to <4 x i32>
  %i.wp = or <4 x i32> %i.wn, %i.wo
  store <4 x i32> %i.wp, ptr %i.fl, align 16, !tbaa !34
  %i.wq = getelementptr inbounds i8, ptr %i.ox, i64 %i.ur
  %i.wr = load <4 x i16>, ptr %i.wq, align 2, !tbaa !489 ; 2 uses
  %i.ws = and <4 x i16> %i.wr, splat (i16 32767)  ; 2 uses
  %i.wt = zext nneg <4 x i16> %i.ws to <4 x i32>
  %i.wu = shl nuw nsw <4 x i32> %i.wt, splat (i32 13)
  %i.wv = bitcast <4 x i32> %i.wu to <4 x float>
  %i.ww = fmul nnan <4 x float> %i.wv, splat (float f0x77800000)
  %i.wx = icmp samesign ugt <4 x i16> %i.ws, splat (i16 31743)
  %i.wy = select <4 x i1> %i.wx, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2424.1 = sext <4 x i16> %i.wr to <4 x i32>
  %i.wz = and <4 x i32> %.signext2424.1, splat (i32 -2147483648)
  %i.xa = or disjoint <4 x i32> %i.wy, %i.wz
  %i.xb = bitcast <4 x float> %i.ww to <4 x i32>
  %i.xc = or <4 x i32> %i.xa, %i.xb
  store <4 x i32> %i.xc, ptr %i.fm, align 16, !tbaa !34
  %indvars.iv.next2275.12430 = add nsw i64 %i.ur, %i.eo ; 2 uses
  %i.xd = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2275.12430
  %i.xe = load <4 x i16>, ptr %i.xd, align 2, !tbaa !489 ; 2 uses
  %i.xf = and <4 x i16> %i.xe, splat (i16 32767)  ; 2 uses
  %i.xg = zext nneg <4 x i16> %i.xf to <4 x i32>
  %i.xh = shl nuw nsw <4 x i32> %i.xg, splat (i32 13)
  %i.xi = bitcast <4 x i32> %i.xh to <4 x float>
  %i.xj = fmul nnan <4 x float> %i.xi, splat (float f0x77800000)
  %i.xk = icmp samesign ugt <4 x i16> %i.xf, splat (i16 31743)
  %i.xl = select <4 x i1> %i.xk, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2425.1 = sext <4 x i16> %i.xe to <4 x i32>
  %i.xm = and <4 x i32> %.signext2425.1, splat (i32 -2147483648)
  %i.xn = or disjoint <4 x i32> %i.xl, %i.xm
  %i.xo = bitcast <4 x float> %i.xj to <4 x i32>
  %i.xp = or <4 x i32> %i.xn, %i.xo
  store <4 x i32> %i.xp, ptr %i.fn, align 16, !tbaa !34
  %indvars.iv.next2275.1.1 = add nsw i64 %indvars.iv.next2275.12430, %i.eo ; 2 uses
  %i.xq = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2275.1.1
  %i.xr = load <4 x i16>, ptr %i.xq, align 2, !tbaa !489 ; 2 uses
  %i.xs = and <4 x i16> %i.xr, splat (i16 32767)  ; 2 uses
  %i.xt = zext nneg <4 x i16> %i.xs to <4 x i32>
  %i.xu = shl nuw nsw <4 x i32> %i.xt, splat (i32 13)
  %i.xv = bitcast <4 x i32> %i.xu to <4 x float>
end_hunk_0
