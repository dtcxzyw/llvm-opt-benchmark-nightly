inline.NumInlined: 131
inline.NumDeleted: 82
begin_hunk_0_@_ZN6hermes2vmlsERN4llvh11raw_ostreamENS0_11HermesValueE:bb.a
  br i1 %.not171172, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.al
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.gb = getelementptr inbounds nuw i8, ptr %7, i64 21
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 22
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph, %_ZN4llvh11raw_ostreamlsEPKc.exit94
  %.sroa.0149.0173 = phi ptr [ %i.fx, %.lr.ph ], [ %i.gj, %_ZN4llvh11raw_ostreamlsEPKc.exit94 ]
  %i.gd = load ptr, ptr %i.eg, align 8, !tbaa !9
  %i.ge = load ptr, ptr %i.ei, align 8, !tbaa !14 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gg = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.4, i64 noundef 1) #7
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit94

bb.ao:                                            ; preds = %bb.am
  store i8 32, ptr %i.ge, align 1
  %i.gh = load ptr, ptr %i.ei, align 8, !tbaa !14
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  store ptr %i.gi, ptr %i.ei, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit94

_ZN4llvh11raw_ostreamlsEPKc.exit94:               ; preds = %bb.an, %bb.ao
  %.0.i.i93 = phi ptr [ %i.gg, %bb.an ], [ %0, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.gj = getelementptr inbounds i8, ptr %.sroa.0149.0173, i64 -1 ; 3 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !37
  %i.gl = zext i8 %i.gk to i64
  store i64 %i.gl, ptr %7, align 8, !tbaa !15, !alias.scope !46
  store i64 0, ptr %i.fy, align 8, !tbaa !21, !alias.scope !46
  store i32 2, ptr %i.fz, align 8, !tbaa !22, !alias.scope !46
  store i8 1, ptr %i.ga, align 4, !tbaa !23, !alias.scope !46
  store i8 0, ptr %i.gb, align 1, !tbaa !24, !alias.scope !46
  store i8 1, ptr %i.gc, align 2, !tbaa !25, !alias.scope !46
  %i.gm = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i93, ptr noundef nonnull align 8 dereferenceable(23) %7) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  %.not171 = icmp eq ptr %i.gj, %i.fv
  br i1 %.not171, label %.loopexit, label %bb.am, !llvm.loop !49

.loopexit:                                        ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit94, %bb.al, %_ZN4llvh11raw_ostreamlsEPKc.exit90
  %i.gn = load ptr, ptr %i.ei, align 8, !tbaa !14 ; 3 uses
  %i.go = load ptr, ptr %i.eg, align 8, !tbaa !9
  %.not.i95 = icmp ult ptr %i.gn, %i.go
  br i1 %.not.i95, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.loopexit
  %i.gp = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext 93) #7
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.aq:                                            ; preds = %.loopexit
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  store ptr %i.gq, ptr %i.ei, align 8, !tbaa !14
  store i8 93, ptr %i.gn, align 1, !tbaa !37
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.ar:                                            ; preds = %bb.a, %bb.a
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !9
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !14 ; 2 uses
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = icmp ult i64 %i.gx, 13
  br i1 %i.gy, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gz = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.10, i64 noundef 13) #7
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit101

bb.at:                                            ; preds = %bb.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.gu, ptr noundef nonnull align 1 dereferenceable(13) @.str.10, i64 13, i1 false)
  %i.ha = load ptr, ptr %i.gt, align 8, !tbaa !14
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 13
  store ptr %i.hb, ptr %i.gt, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit101

_ZN4llvh11raw_ostreamlsEPKc.exit101:              ; preds = %bb.as, %bb.at
  %.0.i.i100 = phi ptr [ %i.gz, %bb.as ], [ %0, %bb.at ]
  %i.hc = and i64 %1, 4294967295
  %i.hd = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i100, i64 noundef %i.hc) #7 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !9
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 24 ; 3 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !14 ; 2 uses
  %i.hi = icmp eq ptr %i.hf, %i.hh
  br i1 %i.hi, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit101
  %i.hj = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.hd, ptr noundef nonnull @.str.5, i64 noundef 1) #7
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.av:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit101
  store i8 93, ptr %i.hh, align 1
  %i.hk = load ptr, ptr %i.hg, align 8, !tbaa !14
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1
  store ptr %i.hl, ptr %i.hg, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.aw:                                            ; preds = %bb.a
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !9
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !14 ; 2 uses
  %i.hq = ptrtoint ptr %i.hn to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = icmp ult i64 %i.hs, 8
  br i1 %i.ht, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hu = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.11, i64 noundef 8) #7 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit109

bb.ay:                                            ; preds = %bb.aw
  store i64 2336364775232590683, ptr %i.hp, align 1
  %i.hv = load ptr, ptr %i.ho, align 8, !tbaa !14
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  store ptr %i.hw, ptr %i.ho, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit109

_ZN4llvh11raw_ostreamlsEPKc.exit109:              ; preds = %bb.ax, %bb.ay
  %i.hx = phi ptr [ %.pre, %bb.ax ], [ %i.hw, %bb.ay ] ; 2 uses
  %.0.i.i108 = phi ptr [ %i.hu, %bb.ax ], [ %0, %bb.ay ] ; 4 uses
  %i.hy = and i64 %1, 268435456
  %.not170 = icmp eq i64 %i.hy, 0
  %.str.12..str.13 = select i1 %.not170, ptr @.str.13, ptr @.str.12 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.0.i.i108, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !9
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %i.hx to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = icmp ult i64 %i.id, 10
  br i1 %i.ie, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit109
  %i.if = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i108, ptr noundef nonnull %.str.12..str.13, i64 noundef 10) #7 ; 2 uses
  %.phi.trans.insert174 = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %.pre175 = load ptr, ptr %.phi.trans.insert174, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit114

bb.ba:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit109
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i.i108, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.hx, ptr noundef nonnull align 1 dereferenceable(10) %.str.12..str.13, i64 10, i1 false)
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !14
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 10 ; 2 uses
  store ptr %i.ii, ptr %i.ig, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit114

_ZN4llvh11raw_ostreamlsEPKc.exit114:              ; preds = %bb.az, %bb.ba
  %i.ij = phi ptr [ %.pre175, %bb.az ], [ %i.ii, %bb.ba ] ; 3 uses
  %.0.i.i113 = phi ptr [ %i.if, %bb.az ], [ %.0.i.i108, %bb.ba ] ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.0.i.i113, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !9
  %.not.i115 = icmp ult ptr %i.ij, %i.il
  br i1 %.not.i115, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit114
  %i.im = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i113, i8 noundef zeroext 32) #7
  br label %_ZN4llvh11raw_ostreamlsEc.exit117

bb.bc:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit114
  %i.in = getelementptr inbounds nuw i8, ptr %.0.i.i113, i64 24
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  store ptr %i.io, ptr %i.in, align 8, !tbaa !14
  store i8 32, ptr %i.ij, align 1, !tbaa !37
  br label %_ZN4llvh11raw_ostreamlsEc.exit117

_ZN4llvh11raw_ostreamlsEc.exit117:                ; preds = %bb.bb, %bb.bc
  %.0.i116 = phi ptr [ %i.im, %bb.bb ], [ %.0.i.i113, %bb.bc ]
  %i.ip = and i64 %1, 268435455
  %i.iq = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i116, i64 noundef %i.ip) #7 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !9
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 24 ; 3 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !14 ; 2 uses
  %i.iv = icmp eq ptr %i.is, %i.iu
  br i1 %i.iv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit117
  %i.iw = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.iq, ptr noundef nonnull @.str.5, i64 noundef 1) #7
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.be:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit117
  store i8 93, ptr %i.iu, align 1
  %i.ix = load ptr, ptr %i.it, align 8, !tbaa !14
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 1
  store ptr %i.iy, ptr %i.it, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.bf:                                            ; preds = %bb.a
  %i.iz = trunc nuw i64 %1 to i1
  %i.ja = select i1 %i.iz, ptr @.str.14, ptr @.str.15 ; 2 uses
  %8 = xor i64 %1, 5                              ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !9
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !14 ; 2 uses
  %i.jf = ptrtoint ptr %i.jc to i64
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = sub i64 %i.jf, %i.jg
  %i.ji = icmp ugt i64 %8, %i.jh
  br i1 %i.ji, label %bb.bg, label %9

bb.bg:                                            ; preds = %bb.bf
  %i.jj = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.ja, i64 noundef %8) #7
  br label %_ZN4llvh11raw_ostreamlsEc.exit

9:                                                ; preds = %bb.bf
  %.not.i2.i124 = icmp eq i64 %1, 5
  br i1 %.not.i2.i124, label %_ZN4llvh11raw_ostreamlsEc.exit, label %bb.bh

bb.bh:                                            ; preds = %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.je, ptr nonnull align 1 %i.ja, i64 %8, i1 false)
  %i.jk = load ptr, ptr %i.jd, align 8, !tbaa !14
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %8
  store ptr %i.jl, ptr %i.jd, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.bi:                                            ; preds = %bb.a
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !9
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !14 ; 2 uses
  %i.jq = ptrtoint ptr %i.jn to i64
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = sub i64 %i.jq, %i.jr
  %i.jt = icmp ult i64 %i.js, 9
  br i1 %i.jt, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ju = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.16, i64 noundef 9) #7
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.bk:                                            ; preds = %bb.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.jp, ptr noundef nonnull align 1 dereferenceable(9) @.str.16, i64 9, i1 false)
  %i.jv = load ptr, ptr %i.jo, align 8, !tbaa !14
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 9
  store ptr %i.jw, ptr %i.jo, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.bl:                                            ; preds = %bb.a
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !9
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !14 ; 2 uses
  %i.kb = ptrtoint ptr %i.jy to i64
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = sub i64 %i.kb, %i.kc
  %i.ke = icmp ult i64 %i.kd, 4
  br i1 %i.ke, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.kf = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.17, i64 noundef 4) #7
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.bn:                                            ; preds = %bb.bl
  store i32 1819047278, ptr %i.ka, align 1
  %i.kg = load ptr, ptr %i.jz, align 8, !tbaa !14
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  store ptr %i.kh, ptr %i.jz, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.bo:                                            ; preds = %bb.a
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !9
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !14 ; 2 uses
  %i.km = ptrtoint ptr %i.kj to i64
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = icmp ult i64 %i.ko, 5
  br i1 %i.kp, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.kq = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.18, i64 noundef 5) #7
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.bq:                                            ; preds = %bb.bo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.kl, ptr noundef nonnull align 1 dereferenceable(5) @.str.18, i64 5, i1 false)
  %i.kr = load ptr, ptr %i.kk, align 8, !tbaa !14
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 5
  store ptr %i.ks, ptr %i.kk, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.br:                                            ; preds = %bb.a
  %i.kt = bitcast i64 %1 to double                ; 4 uses
  %i.ku = tail call double @llvm.fabs.f64(double %i.kt)
  %or.cond = fcmp ugt double %i.ku, f0x43E0000000000000
  br i1 %or.cond, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kv = fptosi double %i.kt to i64              ; 2 uses
  %i.kw = sitofp i64 %i.kv to double
  %i.kx = fcmp oeq double %i.kt, %i.kw
  br i1 %i.kx, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ky = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.19)
  %i.kz = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36) %i.ky, i64 noundef %i.kv) #7
  %i.la = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %i.kz, ptr noundef nonnull @.str.5)
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.bu:                                            ; preds = %bb.bs, %bb.br
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !9
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !14 ; 2 uses
  %i.lf = ptrtoint ptr %i.lc to i64
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = sub i64 %i.lf, %i.lg
  %i.li = icmp ult i64 %i.lh, 8
  br i1 %i.li, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.lj = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.19, i64 noundef 8) #7
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit142

bb.bw:                                            ; preds = %bb.bu
  store i64 2334391151994299483, ptr %i.le, align 1
  %i.lk = load ptr, ptr %i.ld, align 8, !tbaa !14
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store ptr %i.ll, ptr %i.ld, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit142

_ZN4llvh11raw_ostreamlsEPKc.exit142:              ; preds = %bb.bv, %bb.bw
  %.0.i.i141 = phi ptr [ %i.lj, %bb.bv ], [ %0, %bb.bw ]
  %i.lm = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEd(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i141, double noundef %i.kt) #7 ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !9
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 24 ; 3 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !14 ; 2 uses
  %i.lr = icmp eq ptr %i.lo, %i.lq
  br i1 %i.lr, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit142
  %i.ls = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.lm, ptr noundef nonnull @.str.5, i64 noundef 1) #7
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.by:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit142
  store i8 93, ptr %i.lq, align 1
  %i.lt = load ptr, ptr %i.lp, align 8, !tbaa !14
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 1
  store ptr %i.lu, ptr %i.lp, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.by, %bb.bx, %bb.bq, %bb.bp, %bb.bn, %bb.bm, %bb.bk, %bb.bj, %bb.bh, %9, %bb.bg, %bb.be, %bb.bd, %bb.av, %bb.au, %bb.aq, %bb.ap, %bb.ad, %bb.ac, %bb.bt, %_ZN4llvh11raw_ostreamlsEPKc.exit58
  %.1 = phi ptr [ %i.lm, %bb.by ], [ %.0.i.i57, %_ZN4llvh11raw_ostreamlsEPKc.exit58 ], [ %0, %bb.bn ], [ %0, %bb.ad ], [ %0, %bb.aq ], [ %i.kq, %bb.bp ], [ %0, %bb.bq ], [ %0, %9 ], [ %i.ls, %bb.bx ], [ %i.la, %bb.bt ], [ %i.ec, %bb.ac ], [ %i.gp, %bb.ap ], [ %i.hj, %bb.au ], [ %i.hd, %bb.av ], [ %i.iw, %bb.bd ], [ %i.iq, %bb.be ], [ %i.jj, %bb.bg ], [ %0, %bb.bh ], [ %i.ju, %bb.bj ], [ %0, %bb.bk ], [ %i.kf, %bb.bm ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %_ZN4llvh9StringRefC2EPKc.exit

_ZN4llvh9StringRefC2EPKc.exit:                    ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %1, i64 noundef %i.a) #7
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.c:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  %.not.i2 = icmp eq i64 %i.a, 0
  br i1 %.not.i2, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.a
  store ptr %i.l, ptr %i.d, align 8, !tbaa !14
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %0, %bb.d ], [ %0, %bb.c ], [ %0, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZN6hermes2vm11cellKindStrENS0_8CellKindE(i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(23)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6hermes34convertUTF16ToUTF8WithReplacementsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIDsEEm(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream13write_escapedENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(36), ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEd(ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36), i8 noundef zeroext) local_unnamed_addr #2

declare { ptr, i64 } @_ZN6hermes6bigint17dropExtraSignBitsEN4llvh8ArrayRefIhEE(ptr, i64) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !11, i64 16}
!10 = !{!"_ZTSN4llvh11raw_ostreamE", !11, i64 8, !11, i64 16, !11, i64 24, !13, i64 32}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !5, i64 0}
!14 = !{!10, !11, i64 24}
!15 = !{!16, !8, i64 0}
!16 = !{!"_ZTSN4llvh15FormattedNumberE", !8, i64 0, !8, i64 8, !4, i64 16, !17, i64 20, !17, i64 21, !17, i64 22}
!17 = !{!"bool", !5, i64 0}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZN4llvh10format_hexEmjb: argument 0"}
!20 = distinct !{!20, !"_ZN4llvh10format_hexEmjb"}
!21 = !{!16, !8, i64 8}
!22 = !{!16, !4, i64 16}
!23 = !{!16, !17, i64 20}
!24 = !{!16, !17, i64 21}
!25 = !{!16, !17, i64 22}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN4llvh10format_hexEmjb: argument 0"}
!28 = distinct !{!28, !"_ZN4llvh10format_hexEmjb"}
!29 = !{!30, !12, i64 0}
!30 = !{!"_ZTSN4llvh15SmallVectorBaseE", !12, i64 0, !4, i64 8, !4, i64 12}
!31 = !{!30, !4, i64 8}
!32 = !{!30, !4, i64 12}
!33 = !{!34, !11, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!35 = !{!36, !8, i64 8}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !34, i64 0, !8, i64 8, !5, i64 16}
!37 = !{!5, !5, i64 0}
!38 = !{!36, !11, i64 0}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN4llvh10format_hexEmjb: argument 0"}
!41 = distinct !{!41, !"_ZN4llvh10format_hexEmjb"}
!42 = !{!43, !4, i64 4}
!43 = !{!"_ZTSN6hermes2vm15BigIntPrimitiveE", !44, i64 0, !4, i64 4}
!44 = !{!"_ZTSN6hermes2vm23VariableSizeRuntimeCellE", !45, i64 0}
!45 = !{!"_ZTSN6hermes2vm6GCCellE", !5, i64 0}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN4llvh10format_hexEmjb: argument 0"}
!48 = distinct !{!48, !"_ZN4llvh10format_hexEmjb"}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
end_hunk_0
