Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/game?download=true
inline.NumInlined: 6214
inline.NumDeleted: 2423
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4Game13nodePlacementERK14ItemDefinitionRK9ItemStackRKN4core8vector3dIsEESA_RK12PointedThingPK12NodeMetadata:bb.a

bb.as:                                            ; preds = %bb.ar
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.is)
  %.pre.i326 = load ptr, ptr %i.iq, align 8, !tbaa !194
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ja = phi ptr [ %.pre.i326, %bb.as ], [ %i.is, %bb.ar ]
  %i.jb = load ptr, ptr %i.el, align 8, !tbaa !165
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !167
  %i.je = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ja, ptr noundef %i.jb, i64 noundef %i.jd) ; 0 uses
  br label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit327

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit327: ; preds = %_ZTW11errorstream.exit, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @.str.185, ptr %i.e, align 8, !tbaa !158
  %i.jf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.iq, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !194 ; 5 uses
  %.not.i328 = icmp eq ptr %i.jg, null
  br i1 %.not.i328, label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit330, label %bb.au

bb.au:                                            ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit327
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !9
  %i.ji = getelementptr i8, ptr %i.jh, i64 -24
  %i.jj = load i64, ptr %i.ji, align 8
  %i.jk = getelementptr inbounds i8, ptr %i.jg, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !195
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.jg)
  %.pre.i329 = load ptr, ptr %i.jf, align 8, !tbaa !194
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.jo = phi ptr [ %.pre.i329, %bb.av ], [ %i.jg, %bb.au ]
  %i.jp = load ptr, ptr %i.k, align 8, !tbaa !165
  %i.jq = load i64, ptr %i.da, align 8, !tbaa !167
  %i.jr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jo, ptr noundef %i.jp, i64 noundef %i.jq) ; 0 uses
  br label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit330

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit330: ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit327, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.186, ptr %i.d, align 8, !tbaa !158
  %i.js = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !194 ; 5 uses
  %.not.i331 = icmp eq ptr %i.jt, null
  br i1 %.not.i331, label %_ZN11StreamProxylsEPFRSoS0_E.exit333, label %bb.ax

bb.ax:                                            ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit330
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !9
  %i.jv = getelementptr i8, ptr %i.ju, i64 -24
  %i.jw = load i64, ptr %i.jv, align 8            ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %i.jt, i64 %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !195
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.jt)
  %.pre.i332 = load ptr, ptr %i.js, align 8, !tbaa !194 ; 2 uses
  %.pre593 = load ptr, ptr %.pre.i332, align 8, !tbaa !9
  %.phi.trans.insert594 = getelementptr i8, ptr %.pre593, i64 -24
  %.pre595 = load i64, ptr %.phi.trans.insert594, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.kb = phi i64 [ %.pre595, %bb.ay ], [ %i.jw, %bb.ax ]
  %i.kc = phi ptr [ %.pre.i332, %bb.ay ], [ %i.jt, %bb.ax ] ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 %i.kb
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 240
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !202 ; 6 uses
  %.not.i.i.i464 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i464, label %bb.ba, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i465

bb.ba:                                            ; preds = %bb.az
  call void @_ZSt16__throw_bad_castv() #37
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i465: ; preds = %bb.az
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 56
  %i.kh = load i8, ptr %i.kg, align 8, !tbaa !208
  %.not.i1.i.i466 = icmp eq i8 %i.kh, 0
  br i1 %.not.i1.i.i466, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i465
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 67
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !17
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit468

bb.bc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i465
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.kf)
  %i.kk = load ptr, ptr %i.kf, align 8, !tbaa !9
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 48
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = call noundef signext i8 %i.km(ptr noundef nonnull align 8 dereferenceable(570) %i.kf, i8 noundef signext 10), !inline_history !213
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit468

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit468: ; preds = %bb.bb, %bb.bc
  %.0.i.i.i467 = phi i8 [ %i.kj, %bb.bb ], [ %i.kn, %bb.bc ]
  %i.ko = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.kc, i8 noundef signext %.0.i.i.i467)
  %i.kp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ko) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit333

_ZN11StreamProxylsEPFRSoS0_E.exit333:             ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit330, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit468
  %i.kq = load ptr, ptr %i.l, align 8, !tbaa !249
  call void @_ZN6Client8interactE14InteractActionRK12PointedThing(ptr noundef nonnull align 8 dereferenceable(1674) %i.kq, i8 noundef zeroext 3, ptr noundef nonnull align 4 dereferenceable(64) %5)
  br label %bb.ei

bb.bd:                                            ; preds = %bb.ao
  %i.kr = load i16, ptr %i.j, align 2, !tbaa !807 ; 2 uses
  %i.ks = zext i16 %i.kr to i64                   ; 2 uses
  %i.kt = load ptr, ptr %i.dg, align 8, !tbaa !281
  %i.ku = load ptr, ptr %i.df, align 8, !tbaa !278 ; 3 uses
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = sdiv exact i64 %i.kx, 2080
  %i.kz = icmp ugt i64 %i.ky, %i.ks
  br i1 %i.kz, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.la = getelementptr inbounds nuw [2080 x i8], ptr %i.ku, i64 %i.ks ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !167
  %i.ld = icmp eq i64 %i.lc, 0
  br i1 %i.ld, label %bb.bf, label %_ZNK14NodeDefManager3getEt.exit

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.le = getelementptr inbounds nuw i8, ptr %i.ku, i64 260000
  br label %_ZNK14NodeDefManager3getEt.exit

_ZNK14NodeDefManager3getEt.exit:                  ; preds = %bb.be, %bb.bf
  %i.lf = phi ptr [ %i.le, %bb.bf ], [ %i.la, %bb.be ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  store i16 %i.kr, ptr %9, align 4, !tbaa !1547
  %i.lg = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i8 0, ptr %i.lg, align 2, !tbaa !1548
  %i.lh = getelementptr inbounds nuw i8, ptr %9, i64 3 ; 6 uses
  store i8 0, ptr %i.lh, align 1, !tbaa !1549
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 976
  %i.lj = load i16, ptr %i.li, align 8            ; 2 uses
  %i.lk = and i16 %i.lj, 256
  %.not = icmp eq i16 %i.lk, 0                    ; 2 uses
  br i1 %.not, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit
  %.sroa.0526.0.extract.trunc = trunc i16 %i.lj to i8
  br label %._crit_edge.i.i356.sink.split

bb.bh:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 97
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !1550
  switch i8 %i.lm, label %._crit_edge.i.i356 [
    i8 4, label %bb.bi
    i8 10, label %bb.bi
    i8 3, label %bb.bs
    i8 9, label %bb.bs
    i8 13, label %bb.bs
    i8 14, label %bb.bs
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bh
  %i.ln = load i16, ptr %3, align 2, !tbaa !1014
  %i.lo = load i16, ptr %4, align 2, !tbaa !1014  ; 2 uses
  %i.lp = sub i16 %i.ln, %i.lo                    ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !1015
  %i.ls = load i16, ptr %.sroa.13.0..sroa_idx, align 2, !tbaa !1015
  %i.lt = sub i16 %i.lr, %i.ls                    ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !1016
  %i.lw = load i16, ptr %.sroa.19.0..sroa_idx, align 2, !tbaa !1016 ; 2 uses
  %i.lx = sub i16 %i.lv, %i.lw                    ; 2 uses
  %i.ly = call i16 @llvm.abs.i16(i16 %i.lt, i1 false)
  %i.lz = call i16 @llvm.abs.i16(i16 %i.lp, i1 false) ; 2 uses
  %i.ma = call i16 @llvm.abs.i16(i16 %i.lx, i1 false) ; 2 uses
  %i.mb = call i16 @llvm.umax.i16(i16 %i.ma, i16 %i.lz)
  %i.mc = icmp ult i16 %i.mb, %i.ly
  br i1 %i.mc, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  %.sroa.789.0.extract.trunc.lobit = lshr i16 %i.lt, 15
  %i.md = trunc nuw nsw i16 %.sroa.789.0.extract.trunc.lobit to i8 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 978
  %i.mf = load i8, ptr %i.me, align 2, !tbaa !1551, !range !305, !noundef !191
  %i.mg = trunc nuw i8 %i.mf to i1
  br i1 %i.mg, label %bb.bk, label %._crit_edge.i.i356.sink.split

bb.bk:                                            ; preds = %bb.bj
  %i.mh = load ptr, ptr %i.l, align 8, !tbaa !249
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 224
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !577 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 604
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 612
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !60
  %.sroa.22.0.copyload.i.a = load float, ptr %i.mk, align 4
  %19 = insertelement <2 x float> poison, float %.sroa.22.0.copyload.i.a, i64 0
  %i.ml = insertelement <2 x float> %19, float %.sroa.22.0.copyload.i, i64 1
  %i.mm = fdiv nsz <2 x float> %i.ml, splat (float 1.000000e+01)
  %i.mn = insertelement <2 x i16> poison, i16 %i.lo, i64 0
  %i.mo = insertelement <2 x i16> %i.mn, i16 %i.lw, i64 1
  %i.mp = sitofp <2 x i16> %i.mo to <2 x float>
  %i.mq = fsub nsz <2 x float> %i.mp, %i.mm       ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lf, i64 98
  %i.ms = load i8, ptr %i.mr, align 2, !tbaa !1552
  switch i8 %i.ms, label %bb.bn [
    i8 7, label %bb.bl
    i8 8, label %bb.bm
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.mt = extractelement <2 x float> %i.mq, i64 0 ; 2 uses
  %i.mu = fcmp nsz olt float %i.mt, 0.000000e+00
  %i.mv = extractelement <2 x float> %i.mq, i64 1 ; 2 uses
  %i.mw = fcmp nsz ogt float %i.mv, 0.000000e+00
  %or.cond = select i1 %i.mu, i1 %i.mw, i1 false
  %i.mx = fcmp nsz ogt float %i.mt, 0.000000e+00
  %i.my = fcmp nsz olt float %i.mv, 0.000000e+00
  %i.mz = select i1 %i.mx, i1 %i.my, i1 false
  %i.na = select i1 %or.cond, i1 true, i1 %i.mz
  %i.nb = icmp slt i16 %i.lt, 1
  %spec.select = xor i1 %i.nb, %i.na
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  %i.nc = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mq) ; 2 uses
  %i.nd = extractelement <2 x float> %i.nc, i64 0
  %i.ne = extractelement <2 x float> %i.nc, i64 1
  %i.nf = fcmp nsz olt float %i.nd, %i.ne
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bk
  %i.ng = call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mq) ; 2 uses
  %i.nh = extractelement <2 x float> %i.ng, i64 0
  %i.ni = extractelement <2 x float> %i.ng, i64 1
  %i.nj = fcmp nsz ogt float %i.nh, %i.ni
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bl, %bb.bn, %bb.bm
  %.0249.in = phi i1 [ %i.nj, %bb.bn ], [ %i.nf, %bb.bm ], [ %spec.select, %bb.bl ]
  %i.nk = or disjoint i8 %i.md, 6
  %.0247 = select i1 %.0249.in, i8 %i.nk, i8 %i.md
  br label %._crit_edge.i.i356.sink.split

bb.bp:                                            ; preds = %bb.bi
  %i.nl = icmp ult i16 %i.ma, %i.lz
  br i1 %i.nl, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nm = icmp slt i16 %i.lp, 0
  %i.nn = select i1 %i.nm, i8 3, i8 2
  br label %._crit_edge.i.i356.sink.split

bb.br:                                            ; preds = %bb.bp
  %i.no = icmp slt i16 %i.lx, 0
  %i.np = select i1 %i.no, i8 5, i8 4
  br label %._crit_edge.i.i356.sink.split

bb.bs:                                            ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh
  %i.nq = load ptr, ptr %i.l, align 8, !tbaa !249
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 224
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !577 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 604
  %.sroa.01.0.copyload.i344 = load <2 x float>, ptr %i.nt, align 4
  %.sroa.22.0..sroa_idx.i345 = getelementptr inbounds nuw i8, ptr %i.ns, i64 612
  %.sroa.22.0.copyload.i346 = load float, ptr %.sroa.22.0..sroa_idx.i345, align 4, !tbaa !60
  %i.nu = call i48 @_Z10floatToIntN4core8vector3dIfEEf(<2 x float> %.sroa.01.0.copyload.i344, float %.sroa.22.0.copyload.i346, float noundef 1.000000e+01) ; 2 uses
  %.sroa.0517.0.extract.trunc = trunc i48 %i.nu to i16
  %.sroa.5519.0.extract.shift = lshr i48 %i.nu, 32
  %.sroa.5519.0.extract.trunc = trunc nuw i48 %.sroa.5519.0.extract.shift to i16
  %i.nv = load i16, ptr %3, align 2, !tbaa !1014
  %i.nw = sub i16 %i.nv, %.sroa.0517.0.extract.trunc ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !1016
  %i.nz = sub i16 %i.ny, %.sroa.5519.0.extract.trunc ; 2 uses
  %i.oa = call i16 @llvm.abs.i16(i16 %i.nw, i1 false)
  %i.ob = call i16 @llvm.abs.i16(i16 %i.nz, i1 false)
  %i.oc = icmp ult i16 %i.ob, %i.oa
  br i1 %i.oc, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.od = icmp slt i16 %i.nw, 0
  %i.oe = select i1 %i.od, i8 3, i8 1
  br label %._crit_edge.i.i356.sink.split

bb.bu:                                            ; preds = %bb.bs
  %i.of = icmp slt i16 %i.nz, 0
  %i.og = select i1 %i.of, i8 2, i8 0
  br label %._crit_edge.i.i356.sink.split

._crit_edge.i.i356.sink.split:                    ; preds = %bb.bj, %bb.bo, %bb.bg, %bb.bq, %bb.br, %bb.bu, %bb.bt
  %.sink = phi i8 [ %i.oe, %bb.bt ], [ %i.og, %bb.bu ], [ %.sroa.0526.0.extract.trunc, %bb.bg ], [ %i.np, %bb.br ], [ %i.nn, %bb.bq ], [ %.0247, %bb.bo ], [ %i.md, %bb.bj ]
  store i8 %.sink, ptr %i.lh, align 1, !tbaa !1549
  br label %._crit_edge.i.i356

._crit_edge.i.i356:                               ; preds = %._crit_edge.i.i356.sink.split, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.oh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.oh, ptr %10, align 8, !tbaa !162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.oh, ptr noundef nonnull align 1 dereferenceable(13) @.str.187, i64 13, i1 false)
  %i.oi = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 13, ptr %i.oi, align 8, !tbaa !167
  %i.oj = getelementptr inbounds nuw i8, ptr %10, i64 29
  store i8 0, ptr %i.oj, align 1, !tbaa !17
  %i.ok = getelementptr inbounds nuw i8, ptr %i.lf, i64 40
  %i.ol = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ok, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc360 unwind label %bb.bx ; 2 uses

.noexc360:                                        ; preds = %._crit_edge.i.i356
  %i.om = icmp eq ptr %i.ol, null
  br i1 %i.om, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, label %bb.bv

bb.bv:                                            ; preds = %.noexc360
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 40
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !1553
  br label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit: ; preds = %bb.bv, %.noexc360
  %.0.i = phi i32 [ %i.oo, %bb.bv ], [ 0, %.noexc360 ]
  %i.op = load ptr, ptr %10, align 8, !tbaa !165  ; 2 uses
  %i.oq = icmp eq ptr %i.op, %i.oh
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit
  %i.or = load i64, ptr %i.oh, align 8, !tbaa !17
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.op, i64 noundef %i.os) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i361
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  switch i32 %.0.i, label %bb.cb [
    i32 0, label %.critedge281
    i32 3, label %bb.bw
    i32 4, label %bb.by
    i32 2, label %bb.bz
  ]

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %i.ot = add i16 %.sroa.13.0, -1
  br label %bb.ce

bb.bx:                                            ; preds = %._crit_edge.i.i356
  %i.ou = landingpad { ptr, i32 }
          cleanup
  %i.ov = load ptr, ptr %10, align 8, !tbaa !165  ; 2 uses
  %i.ow = icmp eq ptr %i.ov, %i.oh
  br i1 %i.ow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371: ; preds = %bb.bx
  %i.ox = load i64, ptr %i.oh, align 8, !tbaa !17
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.eh

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %i.oz = add i16 %.sroa.13.0, 1
  br label %bb.ce

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %i.pa = getelementptr inbounds nuw i8, ptr %i.lf, i64 97
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !1550
  switch i8 %i.pb, label %bb.ce [
    i8 3, label %bb.ca
    i8 9, label %bb.ca
    i8 13, label %bb.ca
    i8 14, label %bb.ca
  ]

bb.ca:                                            ; preds = %bb.bz, %bb.bz, %bb.bz, %bb.bz
  %i.pc = call noundef zeroext i8 @_ZNK7MapNode10getFaceDirEPK14NodeDefManagerb(ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull %i.r, i1 noundef zeroext false)
  %i.pd = zext i8 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [6 x i8], ptr @facedir_dirs, i64 %i.pd ; 3 uses
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !1014
  %i.pg = add i16 %i.pf, %.sroa.0531.0
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 2
  %i.pi = load i16, ptr %i.ph, align 2, !tbaa !1015
  %i.pj = add i16 %i.pi, %.sroa.13.0
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !1016
  %i.pm = add i16 %i.pl, %.sroa.19.0
  br label %bb.ce

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit363
  %i.pn = getelementptr inbounds nuw i8, ptr %i.lf, i64 97
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !1550
  switch i8 %i.po, label %bb.cd [
    i8 4, label %bb.cc
    i8 10, label %bb.cc
  ]

bb.cc:                                            ; preds = %bb.cb, %bb.cb
  %i.pp = call i48 @_ZNK7MapNode17getWallMountedDirEPK14NodeDefManager(ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull %i.r) ; 3 uses
  %.sroa.0486.0.extract.trunc = trunc i48 %i.pp to i16
end_hunk_0
