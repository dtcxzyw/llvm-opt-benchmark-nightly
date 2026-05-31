inline.NumInlined: 9143
inline.NumDeleted: 3321
begin_hunk_0_@_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE18parse_basic_escapeEv:bb.a
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jt, i64 360 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !20403
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = ptrtoint ptr %i.jz to i64               ; 2 uses
  %reass.sub118 = sub i64 %i.kc, %i.kd
  %i.ke = add i64 %reass.sub118, 7
  %i.kf = and i64 %i.ke, -8                       ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %i.jz, i64 %i.kf ; 2 uses
  store ptr %i.kg, ptr %i.ka, align 8, !tbaa !20403
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !20404 ; 3 uses
  %.not.i78 = icmp eq ptr %i.ki, null
  br i1 %.not.i78, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kj = ptrtoint ptr %i.ki to i64
  %.neg.i79 = sub i64 %i.kd, %i.kj
  %i.kk = add i64 %.neg.i79, %i.kf
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !19747
  %.pre.i80 = load ptr, ptr %0, align 8, !tbaa !20384 ; 2 uses
  %.phi.trans.insert.i81 = getelementptr inbounds nuw i8, ptr %.pre.i80, i64 360
  %.pre5.i82 = load ptr, ptr %.phi.trans.insert.i81, align 8, !tbaa !20403
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.km = phi ptr [ %.pre5.i82, %bb.bk ], [ %i.kg, %bb.bj ] ; 2 uses
  %i.kn = phi ptr [ %.pre.i80, %bb.bk ], [ %i.jt, %bb.bj ] ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 344 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !20405
  %i.kq = ptrtoint ptr %i.kp to i64               ; 2 uses
  %i.kr = ptrtoint ptr %i.km to i64               ; 2 uses
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = icmp ult i64 %i.ks, 16
  br i1 %i.kt, label %bb.bm, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit87

bb.bm:                                            ; preds = %bb.bl
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kn, i64 352 ; 3 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !20380 ; 2 uses
  %i.kw = ptrtoint ptr %i.kv to i64               ; 2 uses
  %i.kx = sub i64 %i.kr, %i.kw                    ; 3 uses
  %i.ky = add i64 %i.kx, 16
  %.not.i.i.i83 = icmp eq ptr %i.kv, null
  %i.kz = sub i64 %i.kq, %i.kw
  %i.la = select i1 %.not.i.i.i83, i64 1024, i64 %i.kz
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %bb.bm
  %.0.i.i.i84 = phi i64 [ %i.la, %bb.bm ], [ %i.lc, %bb.bn ] ; 3 uses
  %i.lb = icmp ult i64 %.0.i.i.i84, %i.ky
  %i.lc = shl i64 %.0.i.i.i84, 1
  br i1 %i.lb, label %bb.bn, label %bb.bo, !llvm.loop !20406

bb.bo:                                            ; preds = %bb.bn
  %i.ld = add i64 %.0.i.i.i84, 7
  %i.le = and i64 %i.ld, -8                       ; 2 uses
  %i.lf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.le) #47 ; 4 uses
  %i.lg = load ptr, ptr %i.ku, align 8, !tbaa !20380 ; 3 uses
  %.not14.i.i.i85 = icmp eq ptr %i.lg, null
  br i1 %.not14.i.i.i85, label %_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i86, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lf, ptr nonnull align 1 %i.lg, i64 %i.kx, i1 false)
  br label %_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i86

_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i86: ; preds = %bb.bp, %bb.bo
  tail call void @_ZdlPv(ptr noundef %i.lg) #41
  store ptr %i.lf, ptr %i.ku, align 8, !tbaa !20380
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.kx
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.le
  store ptr %i.li, ptr %i.ko, align 8, !tbaa !20405
  br label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit87

_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit87: ; preds = %bb.bl, %_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i86
  %i.lj = phi ptr [ %i.lh, %_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i86 ], [ %i.km, %bb.bl ] ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kn, i64 360
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  store ptr %i.ll, ptr %i.lk, align 8, !tbaa !20403
  store ptr %i.lj, ptr %i.kh, align 8, !tbaa !20404
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store i64 0, ptr %i.lm, align 8, !tbaa !19747
  %i.ln = load ptr, ptr %i.kh, align 8, !tbaa !20404
  store i32 9, ptr %i.ln, align 8, !tbaa !20407
  br label %.thread

bb.bq:                                            ; preds = %bb.bi
  %i.lo = tail call noundef zeroext i1 @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13parse_literalEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  br label %.thread

bb.br:                                            ; preds = %bb.e
  %i.lp = load ptr, ptr %0, align 8, !tbaa !20384 ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !20385
  %i.ls = and i32 %i.lr, 4096
  %.not = icmp eq i32 %i.ls, 0
  br i1 %.not, label %bb.bz, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lt = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.lt, ptr %i.a, align 8, !tbaa !20397
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 352
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !20380 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lp, i64 360 ; 2 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !20403
  %i.ly = ptrtoint ptr %i.lx to i64
  %i.lz = ptrtoint ptr %i.lv to i64               ; 2 uses
  %reass.sub = sub i64 %i.ly, %i.lz
  %i.ma = add i64 %reass.sub, 7
  %i.mb = and i64 %i.ma, -8                       ; 2 uses
  %i.mc = getelementptr inbounds i8, ptr %i.lv, i64 %i.mb ; 2 uses
  store ptr %i.mc, ptr %i.lw, align 8, !tbaa !20403
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !20404 ; 3 uses
  %.not.i89 = icmp eq ptr %i.me, null
  br i1 %.not.i89, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mf = ptrtoint ptr %i.me to i64
  %.neg.i90 = sub i64 %i.lz, %i.mf
  %i.mg = add i64 %.neg.i90, %i.mb
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  store i64 %i.mg, ptr %i.mh, align 8, !tbaa !19747
  %.pre.i91 = load ptr, ptr %0, align 8, !tbaa !20384 ; 2 uses
  %.phi.trans.insert.i92 = getelementptr inbounds nuw i8, ptr %.pre.i91, i64 360
  %.pre5.i93 = load ptr, ptr %.phi.trans.insert.i92, align 8, !tbaa !20403
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.mi = phi ptr [ %.pre5.i93, %bb.bt ], [ %i.mc, %bb.bs ] ; 2 uses
  %i.mj = phi ptr [ %.pre.i91, %bb.bt ], [ %i.lp, %bb.bs ] ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 344 ; 2 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !20405
  %i.mm = ptrtoint ptr %i.ml to i64               ; 2 uses
  %i.mn = ptrtoint ptr %i.mi to i64               ; 2 uses
  %i.mo = sub i64 %i.mm, %i.mn
  %i.mp = icmp ult i64 %i.mo, 16
  br i1 %i.mp, label %bb.bv, label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit98

bb.bv:                                            ; preds = %bb.bu
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mj, i64 352 ; 3 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !20380 ; 2 uses
  %i.ms = ptrtoint ptr %i.mr to i64               ; 2 uses
  %i.mt = sub i64 %i.mn, %i.ms                    ; 3 uses
  %i.mu = add i64 %i.mt, 16
  %.not.i.i.i94 = icmp eq ptr %i.mr, null
  %i.mv = sub i64 %i.mm, %i.ms
  %i.mw = select i1 %.not.i.i.i94, i64 1024, i64 %i.mv
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %bb.bv
  %.0.i.i.i95 = phi i64 [ %i.mw, %bb.bv ], [ %i.my, %bb.bw ] ; 3 uses
  %i.mx = icmp ult i64 %.0.i.i.i95, %i.mu
  %i.my = shl i64 %.0.i.i.i95, 1
  br i1 %i.mx, label %bb.bw, label %bb.bx, !llvm.loop !20406

bb.bx:                                            ; preds = %bb.bw
  %i.mz = add i64 %.0.i.i.i95, 7
  %i.na = and i64 %i.mz, -8                       ; 2 uses
  %i.nb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.na) #47 ; 4 uses
  %i.nc = load ptr, ptr %i.mq, align 8, !tbaa !20380 ; 3 uses
  %.not14.i.i.i96 = icmp eq ptr %i.nc, null
  br i1 %.not14.i.i.i96, label %_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i97, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nb, ptr nonnull align 1 %i.nc, i64 %i.mt, i1 false)
  br label %_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i97

_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i97: ; preds = %bb.by, %bb.bx
  tail call void @_ZdlPv(ptr noundef %i.nc) #41
  store ptr %i.nb, ptr %i.mq, align 8, !tbaa !20380
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.mt
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.na
  store ptr %i.ne, ptr %i.mk, align 8, !tbaa !20405
  br label %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit98

_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit98: ; preds = %bb.bu, %_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i97
  %i.nf = phi ptr [ %i.nd, %_ZN5boost13re_detail_50011raw_storage6resizeEm.exit.i.i97 ], [ %i.mi, %bb.bu ] ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mj, i64 360
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  store ptr %i.nh, ptr %i.ng, align 8, !tbaa !20403
  store ptr %i.nf, ptr %i.md, align 8, !tbaa !20404
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store i64 0, ptr %i.ni, align 8, !tbaa !19747
  %i.nj = load ptr, ptr %i.md, align 8, !tbaa !20404
  store i32 10, ptr %i.nj, align 8, !tbaa !20407
  br label %.thread

bb.bz:                                            ; preds = %bb.br
  %i.nk = tail call noundef zeroext i1 @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13parse_literalEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  br label %.thread

bb.ca:                                            ; preds = %bb.e
  %i.nl = load ptr, ptr %0, align 8, !tbaa !20384
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 40
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !20385
  %i.no = and i32 %i.nn, 4096
  %.not33 = icmp eq i32 %i.no, 0
  br i1 %.not33, label %bb.cq, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %6 = sext i8 %i.ac to i32
  %7 = add nsw i32 %6, -67                        ; 2 uses
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 30)
  switch i32 %8, label %bb.cq [
    i32 13, label %.critedge
    i32 5, label %bb.cc
    i32 12, label %bb.cj
    i32 4, label %bb.ck
    i32 8, label %bb.cl
    i32 0, label %bb.cl
  ]

.critedge:                                        ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.np = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.np, align 8, !tbaa !20039
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.nq, align 8, !tbaa !20044
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.np, ptr %i.nr, align 8, !tbaa !20045
  %i.ns = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.np, ptr %i.ns, align 8, !tbaa !20046
  %i.nt = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.nu = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  store i32 0, ptr %i.nu, align 8, !tbaa !20039
  %i.nv = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr null, ptr %i.nv, align 8, !tbaa !20044
  %i.nw = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nt, i8 0, i64 32, i1 false)
  store ptr %i.nu, ptr %i.nw, align 8, !tbaa !20045
  %i.nx = getelementptr inbounds nuw i8, ptr %3, i64 120
  store ptr %i.nu, ptr %i.nx, align 8, !tbaa !20046
  %i.ny = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 0, ptr %i.ny, align 8, !tbaa !20047
  %i.nz = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i8 0, ptr %i.nz, align 8, !tbaa !20477
  %i.oa = getelementptr inbounds nuw i8, ptr %3, i64 73
  store i8 0, ptr %i.oa, align 1, !tbaa !20489
  %i.ob = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i32 0, ptr %i.ob, align 8, !tbaa !20490
  br label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.oc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.oc, align 8, !tbaa !20039
  %i.od = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.od, align 8, !tbaa !20044
  %i.oe = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.oc, ptr %i.oe, align 8, !tbaa !20045
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.oc, ptr %i.of, align 8, !tbaa !20046
  %i.og = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.oh = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  store i32 0, ptr %i.oh, align 8, !tbaa !20039
  %i.oi = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr null, ptr %i.oi, align 8, !tbaa !20044
  %i.oj = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.og, i8 0, i64 32, i1 false)
  store ptr %i.oh, ptr %i.oj, align 8, !tbaa !20045
  %i.ok = getelementptr inbounds nuw i8, ptr %3, i64 120
  store ptr %i.oh, ptr %i.ok, align 8, !tbaa !20046
  %i.ol = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 0, ptr %i.ol, align 8, !tbaa !20047
  %i.om = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.on = getelementptr inbounds nuw i8, ptr %3, i64 73
  store i8 0, ptr %i.on, align 1, !tbaa !20489
  %i.oo = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i32 0, ptr %i.oo, align 8, !tbaa !20490
  store i8 1, ptr %i.om, align 8, !tbaa !20477
  br label %bb.cd

bb.cd:                                            ; preds = %.critedge, %bb.cc
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !20422
  %i.or = getelementptr inbounds nuw i8, ptr %3, i64 76
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !20491
  %i.os = getelementptr inbounds nuw i8, ptr %3, i64 84
  store i8 0, ptr %i.os, align 4, !tbaa !20492
  %i.ot = invoke noundef ptr @_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10append_setERKNS0_14basic_char_setIcS5_EE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(136) %3)
          to label %bb.ce unwind label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.ou = icmp ne ptr %i.ot, null                 ; 2 uses
  %i.ov = load ptr, ptr %i.a, align 8, !tbaa !20397 ; 2 uses
  br i1 %i.ou, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !20396
  %i.oy = ptrtoint ptr %i.ov to i64
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = sub i64 %i.oy, %i.oz
  invoke void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 4, i64 noundef %i.pa)
          to label %bb.ci unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cd
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13re_detail_50014basic_char_setIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %common.resume

bb.ch:                                            ; preds = %bb.ce
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ov, i64 1
  store ptr %i.pc, ptr %i.a, align 8, !tbaa !20397
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cf, %bb.ch
  call void @_ZN5boost13re_detail_50014basic_char_setIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %.thread

bb.cj:                                            ; preds = %bb.cb
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cb
  %.1 = phi i1 [ false, %bb.cj ], [ true, %bb.cb ]
  %i.pd = tail call noundef zeroext i1 @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14add_emacs_codeEb(ptr noundef nonnull align 8 dereferenceable(216) %0, i1 noundef zeroext %.1)
  br label %.thread

bb.cl:                                            ; preds = %bb.cb, %bb.cb
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !20396
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.257, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.cm unwind label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.pg = ptrtoint ptr %i.c to i64
  %i.ph = ptrtoint ptr %i.pf to i64
  %i.pi = sub i64 %i.pg, %i.ph
  invoke void @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 5, i64 noundef %i.pi, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.cn unwind label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.pj = load ptr, ptr %4, align 8, !tbaa !19733 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.pl = icmp eq ptr %i.pj, %i.pk
  br i1 %i.pl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.cn
  %i.pm = load i64, ptr %i.pk, align 8, !tbaa !19747
  %i.pn = add i64 %i.pm, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pn) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %.thread

bb.co:                                            ; preds = %bb.cl
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

bb.cp:                                            ; preds = %bb.cm
  %i.pp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pq = load ptr, ptr %4, align 8, !tbaa !19733 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ps = icmp eq ptr %i.pq, %i.pr
  br i1 %i.ps, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.cp
  %i.pt = load i64, ptr %i.pr, align 8, !tbaa !19747
  %i.pu = add i64 %i.pt, 1
  call void @_ZdlPvm(ptr noundef %i.pq, i64 noundef %i.pu) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %bb.co
  %.pn34 = phi { ptr, i32 } [ %i.po, %bb.co ], [ %i.pp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.pp, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %common.resume

bb.cq:                                            ; preds = %bb.cb, %bb.ca
  %i.pv = tail call noundef zeroext i1 @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE13parse_literalEv(ptr noundef nonnull align 8 dereferenceable(216) %0)
  br label %.thread

.thread:                                          ; preds = %bb.ck, %bb.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %bb.f, %bb.h, %bb.i, %bb.k, %bb.l, %bb.n, %bb.o, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.v, %bb.x, %bb.e, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit98, %bb.bz, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit87, %bb.bq, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit76, %bb.bh, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit65, %bb.ay, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit54, %bb.ap, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit, %bb.ag, %bb.cq, %bb.w, %_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl.exit
  %.319 = phi i1 [ false, %_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl.exit ], [ false, %bb.e ], [ %i.nk, %bb.bz ], [ %i.ai, %bb.f ], [ %i.ci, %bb.x ], [ %i.ao, %bb.h ], [ %i.ap, %bb.i ], [ %i.av, %bb.k ], [ %i.aw, %bb.l ], [ %i.bb, %bb.n ], [ %i.bd, %bb.o ], [ %i.bi, %bb.q ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cg, %bb.v ], [ %i.pv, %bb.cq ], [ %i.ch, %bb.w ], [ true, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit ], [ %i.ee, %bb.ag ], [ true, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit54 ], [ %i.ga, %bb.ap ], [ true, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit65 ], [ %i.hw, %bb.ay ], [ true, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit76 ], [ %i.js, %bb.bh ], [ true, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit87 ], [ %i.lo, %bb.bq ], [ true, %_ZN5boost13re_detail_50019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeEm.exit98 ], [ %i.pd, %bb.ck ], [ %i.ou, %bb.ci ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ]
  ret i1 %.319
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14add_emacs_codeEb(ptr noundef nonnull align 8 dereferenceable(216) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.boost::re_detail_500::basic_char_set", align 8 ; 48 uses
  %6 = alloca %"struct.boost::re_detail_500::digraph", align 1 ; 6 uses
  %7 = alloca %"struct.boost::re_detail_500::digraph", align 1 ; 6 uses
  %8 = alloca %"struct.boost::re_detail_500::digraph", align 1 ; 6 uses
  %9 = alloca %"struct.boost::re_detail_500::digraph", align 1 ; 6 uses
  %10 = alloca %"struct.boost::re_detail_500::digraph", align 1 ; 6 uses
  %11 = alloca %"struct.boost::re_detail_500::digraph", align 1 ; 6 uses
  %12 = alloca %"struct.boost::re_detail_500::digraph", align 1 ; 6 uses
  %13 = alloca %"struct.boost::re_detail_500::digraph", align 1 ; 6 uses
  %14 = alloca %"struct.boost::re_detail_500::digraph", align 1 ; 6 uses
  %15 = alloca %"struct.boost::re_detail_500::digraph", align 1 ; 6 uses
  %16 = alloca %"struct.boost::re_detail_500::digraph", align 1 ; 6 uses
  %17 = alloca %"struct.boost::re_detail_500::digraph", align 1 ; 6 uses
  %18 = alloca %"struct.boost::re_detail_500::digraph", align 1 ; 6 uses
  %19 = alloca %"struct.boost::re_detail_500::digraph", align 1 ; 6 uses
  %20 = alloca %"struct.boost::re_detail_500::digraph", align 1 ; 6 uses
  %21 = alloca %"struct.boost::re_detail_500::digraph", align 1 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN5folly15RegexMatchCache5purgeENSt6chrono10time_pointINS_6chrono19coarse_steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE:bb.a
  %i.j = icmp eq ptr %.sroa.029.1, %.sroa.933.1
  br i1 %i.j, label %._crit_edge, label %.lr.ph67

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.sroa.029.063 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.029.1, %.lr.ph.backedge ] ; 9 uses
  %.sroa.933.062 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.933.1, %.lr.ph.backedge ] ; 9 uses
  %.sroa.14.061 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.14.1, %.lr.ph.backedge ] ; 3 uses
  %.sroa.9.060 = phi i64 [ %i.h, %.lr.ph.preheader ], [ %.sroa.9.060.be, %.lr.ph.backedge ] ; 3 uses
  %.sroa.026.059 = phi ptr [ %i.i, %.lr.ph.preheader ], [ %.sroa.026.059.be, %.lr.ph.backedge ] ; 3 uses
  %i.k = load ptr, ptr %.sroa.026.059, align 8, !tbaa !19808 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load atomic i64, ptr %i.l monotonic, align 8
  %.not39 = icmp sgt i64 %i.m, %1
  br i1 %.not39, label %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE9push_backERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %.sroa.933.062, %.sroa.14.061
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.933.062, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.933.062, i64 32
  br label %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = ptrtoint ptr %.sroa.933.062 to i64
  %i.p = ptrtoint ptr %.sroa.029.063 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775776
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.105) #44
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.s = ashr exact i64 %i.q, 5                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 288230376151711743)
  %i.w = select i1 %i.u, i64 288230376151711743, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 5
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #45
          to label %.noexc16 unwind label %.loopexit ; 5 uses

.noexc16:                                         ; preds = %_ZNKSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.029.063, %.sroa.933.062
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc16, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.y, %.noexc16 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %.sroa.029.063, %.noexc16 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !alias.scope !21993
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %.sroa.933.062
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !21997

_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc16
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %.noexc16 ], [ %i.ab, %.lr.ph.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i23.i.i = icmp eq ptr %.sroa.029.063, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.063, i64 noundef %i.q) #42
  br label %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %i.w
  br label %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE9push_backERKS1_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.c, %.lr.ph
  %.sroa.14.1 = phi ptr [ %.sroa.14.061, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.14.061, %bb.c ] ; 3 uses
  %.sroa.933.1 = phi ptr [ %.sroa.933.062, %.lr.ph ], [ %i.ac, %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.029.1 = phi ptr [ %.sroa.029.063, %.lr.ph ], [ %i.y, %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.029.063, %bb.c ] ; 7 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.026.059, i64 -16
  %.neg.i.i.i = mul nsw i64 %.sroa.9.060, -8
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %.neg.i.i.i ; 2 uses
  %.not19.i6.i = icmp eq i64 %.sroa.9.060, 0
  br i1 %.not19.i6.i, label %.critedge.i.i.preheader, label %thread-pre-split.i

.critedge.i.i.preheader:                          ; preds = %bb.g, %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE9push_backERKS1_.exit
  br label %.critedge.i.i

bb.g:                                             ; preds = %thread-pre-split.i
  %.not19.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not19.i.i, label %.critedge.i.i.preheader, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE9push_backERKS1_.exit, %bb.g
  %i.ag = phi i64 [ %i.ai, %bb.g ], [ %.sroa.9.060, %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE9push_backERKS1_.exit ]
  %i.ah = phi ptr [ %i.aj, %bb.g ], [ %.sroa.026.059, %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EE9push_backERKS1_.exit ]
  %i.ai = add nsw i64 %i.ag, -1                   ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !19747
  %.not.i17 = icmp eq i8 %i.al, 0
  br i1 %.not.i17, label %bb.g, label %.lr.ph.backedge, !prof !19748, !llvm.loop !19856

.critedge.i.i:                                    ; preds = %.critedge.i.i.preheader, %bb.h
  %.017.i.i = phi ptr [ %i.ap, %bb.h ], [ %i.af, %.critedge.i.i.preheader ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 14
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19747
  %i.ao = and i8 %i.an, 15
  %.not2.i = icmp eq i8 %i.ao, 0
  br i1 %.not2.i, label %bb.h, label %.preheader, !prof !19751

bb.h:                                             ; preds = %.critedge.i.i
  %i.ap = getelementptr inbounds i8, ptr %.017.i.i, i64 -128 ; 3 uses
  %i.aq = load <16 x i8>, ptr %i.ap, align 16, !tbaa !19747
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = and i16 %i.as, 16383                    ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.017.i.i, i64 -256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.au, i32 0, i32 3, i32 1)
  %.not3.i = icmp eq i16 %i.at, 0
  br i1 %.not3.i, label %.critedge.i.i, label %bb.i, !prof !19748, !llvm.loop !19857

bb.i:                                             ; preds = %bb.h
  %i.av = zext nneg i16 %i.at to i32
  %i.aw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.av, i1 true)
  %i.ax = xor i32 %i.aw, 31
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = icmp ne ptr %i.ap, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds i8, ptr %.017.i.i, i64 -112
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  br label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %thread-pre-split.i, %bb.i
  %.sroa.9.060.be = phi i64 [ %i.ay, %bb.i ], [ %i.ai, %thread-pre-split.i ]
  %.sroa.026.059.be = phi ptr [ %i.bb, %bb.i ], [ %i.aj, %thread-pre-split.i ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.k, %.preheader
  %.not.i.i.i18 = icmp eq ptr %.sroa.029.1, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bc = ptrtoint ptr %.sroa.14.1 to i64
  %i.bd = ptrtoint ptr %.sroa.029.1 to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.1, i64 noundef %i.be) #42
  br label %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EED2Ev.exit

_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EED2Ev.exit: ; preds = %bb.a, %._crit_edge, %bb.j
  ret void

.lr.ph67:                                         ; preds = %.preheader, %bb.k
  %.sroa.021.066 = phi ptr [ %i.bf, %bb.k ], [ %.sroa.029.1, %.preheader ] ; 2 uses
  invoke void @_ZN5folly15RegexMatchCache10eraseRegexERKNS_18RegexMatchCacheKeyE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021.066)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.lr.ph67
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.021.066, i64 32 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %.sroa.933.1
  br i1 %i.bg, label %._crit_edge, label %.lr.ph67

bb.l:                                             ; preds = %.lr.ph67
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.l
  %.sroa.14.056 = phi ptr [ %.sroa.14.1, %bb.l ], [ %.sroa.933.062, %.loopexit ], [ %.sroa.933.062, %.loopexit.split-lp ]
  %.sroa.029.050 = phi ptr [ %.sroa.029.1, %bb.l ], [ %.sroa.029.063, %.loopexit ], [ %.sroa.029.063, %.loopexit.split-lp ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i19 = icmp eq ptr %.sroa.029.050, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EED2Ev.exit20, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = ptrtoint ptr %.sroa.14.056 to i64
  %i.bj = ptrtoint ptr %.sroa.029.050 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.050, i64 noundef %i.bk) #42
  br label %_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EED2Ev.exit20

_ZNSt6vectorIN5folly18RegexMatchCacheKeyESaIS1_EED2Ev.exit20: ; preds = %bb.m, %bb.n
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #39

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #38

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #38

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { cold noreturn }
attributes #21 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #23 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind }
attributes #27 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #28 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #30 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #33 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #34 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #35 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #36 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #37 = { mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #38 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #41 = { nounwind }
attributes #42 = { builtin nounwind }
attributes #43 = { noreturn nounwind }
attributes #44 = { noreturn }
attributes #45 = { builtin allocsize(0) }
attributes #46 = { nounwind willreturn memory(read) }
attributes #47 = { allocsize(0) }
attributes #48 = { cold }
attributes #49 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTSN5folly15RegexMatchCache24ConsistencyReportMatcher5stateE", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !10, i64 0}
!16 = !DISubprogram(name: "lookup", linkageName: "_ZNK5folly15RegexMatchCache6KeyMap6lookupERKNS_18RegexMatchCacheKeyE", scope: !18, file: !17, line: 568, type: !19727, scopeLine: 568, containingType: !18, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!17 = !DIFile(filename: "_deps/folly-src/folly/container/RegexMatchCache.h", directory: "/opt-bench/work/velox/velox/build", checksumkind: CSK_MD5, checksum: "6ba36902fea81d139369a3e26e512a03")
!18 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "KeyMap", scope: !19, file: !17, line: 561, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN5folly15RegexMatchCache6KeyMapE")
!19 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RegexMatchCache", scope: !20, file: !17, line: 479, size: 1344, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !21, identifier: "_ZTSN5folly15RegexMatchCacheE")
!20 = !DINamespace(name: "folly", scope: null)
!21 = !{!22, !3770, !7823, !9131, !10303, !11384, !11388, !11389, !11390, !11883, !12293, !12297, !19676, !19681, !19684, !19685, !19688, !19691, !19692, !19695, !19696, !19703, !19717, !19720, !19723, !19724}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "regexVector_", scope: !19, file: !17, line: 511, baseType: !23, size: 576)
!23 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RegexMatchCacheIndexedVector<const folly::RegexMatchCacheKey *>", scope: !20, file: !17, line: 289, size: 576, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !24, templateParams: !3768, identifier: "_ZTSN5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEEE")
!24 = !{!25, !683, !2452, !3702, !3707, !3710, !3713, !3752, !3755, !3758, !3761, !3764}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "free_", scope: !23, file: !17, line: 371, baseType: !26, size: 192)
!26 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<unsigned long, std::allocator<unsigned long> >", scope: !28, file: !27, line: 428, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !29, templateParams: !681, identifier: "_ZTSSt6vectorImSaImEE")
!27 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/stl_vector.h", directory: "", checksumkind: CSK_MD5, checksum: "514164964ac06e2061e9e779d8cf420e")
!28 = !DINamespace(name: "std", scope: null)
!29 = !{!30, !276, !295, !311, !312, !318, !321, !324, !328, !334, !338, !344, !349, !353, !363, !366, !369, !372, !403, !404, !408, !411, !414, !417, !420, !484, !543, !544, !545, !550, !555, !556, !557, !558, !559, !560, !561, !564, !565, !568, !569, !570, !571, !574, !576, !584, !591, !594, !595, !596, !599, !602, !603, !604, !607, !610, !613, !617, !618, !621, !624, !627, !630, !633, !636, !639, !640, !641, !642, !643, !646, !647, !650, !651, !652, !658, !661, !666, !669, !672, !675, !678}
!30 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !26, baseType: !31, flags: DIFlagProtected, extraData: i32 0)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<unsigned long, std::allocator<unsigned long> >", scope: !28, file: !27, line: 85, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !32, templateParams: !275, identifier: "_ZTSSt12_Vector_baseImSaImEE")
!32 = !{!33, !226, !231, !236, !240, !243, !248, !251, !254, !258, !261, !264, !267, !268, !271, !274}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_M_impl", scope: !31, file: !27, line: 374, baseType: !34, size: 192)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !31, file: !27, line: 133, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !35, identifier: "_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE")
!35 = !{!36, !181, !206, !210, !215, !219, !223}
!36 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !34, baseType: !37, extraData: i32 0)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Tp_alloc_type", scope: !31, file: !27, line: 88, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "other", scope: !40, file: !39, line: 126, baseType: !180)
!39 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/ext/alloc_traits.h", directory: "")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<unsigned long>", scope: !41, file: !39, line: 125, size: 8, flags: DIFlagTypePassByValue, elements: !179, templateParams: !122, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaImEmE6rebindImEE")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<unsigned long>, unsigned long>", scope: !42, file: !39, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !43, templateParams: !177, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaImEmEE")
!42 = !DINamespace(name: "__gnu_cxx", scope: null)
!43 = !{!44, !163, !166, !169, !173, !174, !175, !176}
!44 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !41, baseType: !45, extraData: i32 0)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<unsigned long> >", scope: !28, file: !46, line: 428, size: 8, flags: DIFlagTypePassByValue, elements: !47, templateParams: !161, identifier: "_ZTSSt16allocator_traitsISaImEE")
!46 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/alloc_traits.h", directory: "", checksumkind: CSK_MD5, checksum: "ba5569b3568669c1c77efc18640dd1aa")
!47 = !{!48, !145, !149, !152, !158}
!48 = !DISubprogram(name: "allocate", linkageName: "_ZNSt16allocator_traitsISaImEE8allocateERS0_m", scope: !45, file: !46, line: 481, type: !49, scopeLine: 481, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !54, !144}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "pointer", scope: !45, file: !46, line: 437, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocator_type", scope: !45, file: !46, line: 431, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<unsigned long>", scope: !28, file: !57, line: 130, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !58, templateParams: !122, identifier: "_ZTSSaImE")
!57 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "9c5b773ad00830bea46f2a8fa4ac22e7")
!58 = !{!59, !124, !128, !133, !137, !138, !141}
!59 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !56, baseType: !60, flags: DIFlagPublic, extraData: i32 0)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__allocator_base<unsigned long>", scope: !28, file: !61, line: 47, baseType: !62)
!61 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/x86_64-linux-gnu/c++/13/bits/c++allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "f56d3b48d132e35738b60e08703928ec")
!62 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<unsigned long>", scope: !28, file: !63, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !64, templateParams: !122, identifier: "_ZTSSt15__new_allocatorImE")
!63 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/new_allocator.h", directory: "", checksumkind: CSK_MD5, checksum: "c7892ebb1170c1f49c5be98396a83230")
!64 = !{!65, !69, !74, !78, !115, !118}
!65 = !DISubprogram(name: "__new_allocator", linkageName: "_ZNSt15__new_allocatorImEC4Ev", scope: !62, file: !63, line: 88, type: !66, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!69 = !DISubprogram(name: "__new_allocator", linkageName: "_ZNSt15__new_allocatorImEC4ERKS0_", scope: !62, file: !63, line: 92, type: !70, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !68, !72}
!72 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!74 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__new_allocatorImEaSERKS0_", scope: !62, file: !63, line: 100, type: !75, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !68, !72}
!77 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !62, size: 64)
!78 = !DISubprogram(name: "allocate", linkageName: "_ZNSt15__new_allocatorImE8allocateEmPKv", scope: !62, file: !63, line: 126, type: !79, scopeLine: 126, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!79 = !DISubroutineType(types: !80)
!80 = !{!52, !68, !81, !102}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_type", scope: !82, file: !63, line: 67, baseType: !113, flags: DIFlagPublic)
!82 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<unsigned char>", scope: !28, file: !63, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !83, templateParams: !111, identifier: "_ZTSSt15__new_allocatorIhE")
!83 = !{!84, !88, !93, !97, !104, !107}
!84 = !DISubprogram(name: "__new_allocator", linkageName: "_ZNSt15__new_allocatorIhEC4Ev", scope: !82, file: !63, line: 88, type: !85, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!88 = !DISubprogram(name: "__new_allocator", linkageName: "_ZNSt15__new_allocatorIhEC4ERKS0_", scope: !82, file: !63, line: 92, type: !89, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !87, !91}
!91 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!93 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__new_allocatorIhEaSERKS0_", scope: !82, file: !63, line: 100, type: !94, scopeLine: 100, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !87, !91}
!96 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !82, size: 64)
!97 = !DISubprogram(name: "allocate", linkageName: "_ZNSt15__new_allocatorIhE8allocateEmPKv", scope: !82, file: !63, line: 126, type: !98, scopeLine: 126, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!98 = !DISubroutineType(types: !99)
!99 = !{!100, !87, !81, !102}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!104 = !DISubprogram(name: "deallocate", linkageName: "_ZNSt15__new_allocatorIhE10deallocateEPhm", scope: !82, file: !63, line: 156, type: !105, scopeLine: 156, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !87, !100, !81}
!107 = !DISubprogram(name: "_M_max_size", linkageName: "_ZNKSt15__new_allocatorIhE11_M_max_sizeEv", scope: !82, file: !63, line: 230, type: !108, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!108 = !DISubroutineType(types: !109)
!109 = !{!81, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!111 = !{!112}
!112 = !DITemplateTypeParameter(name: "_Tp", type: !101)
end_hunk_1
