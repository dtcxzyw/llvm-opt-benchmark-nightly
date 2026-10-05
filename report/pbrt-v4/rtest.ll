Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/rtest?download=true
inline.NumInlined: 352
inline.NumDeleted: 143
begin_hunk_0_@main:bb.a

bb.bk:                                            ; preds = %bb.bj
  %i.jq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %bb.bm unwind label %bb.cp

bb.bl:                                            ; preds = %bb.bj
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, i8 noundef signext 32)
          to label %bb.bm unwind label %bb.cp     ; 0 uses

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.0.i132 = phi ptr [ %i.jq, %bb.bk ], [ %i.jj, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.js = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !16
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i132, i32 noundef %i.jt)
          to label %bb.bn unwind label %bb.cp     ; 5 uses

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 32, ptr %i.e, align 1, !tbaa !42
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !19
  %i.jw = getelementptr i8, ptr %i.jv, i64 -24
  %i.jx = load i64, ptr %i.jw, align 8
  %i.jy = getelementptr inbounds i8, ptr %i.ju, i64 %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !59
  %.not.i136 = icmp eq i64 %i.ka, 0
  br i1 %.not.i136, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ju, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %bb.bq unwind label %bb.cp

bb.bp:                                            ; preds = %bb.bn
  %i.kc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ju, i8 noundef signext 32)
          to label %bb.bq unwind label %bb.cp     ; 0 uses

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %.0.i137 = phi ptr [ %i.kb, %bb.bo ], [ %i.ju, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !16
  %i.kf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i137, i32 noundef %i.ke)
          to label %bb.br unwind label %bb.cp     ; 5 uses

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 32, ptr %i.d, align 1, !tbaa !42
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !19
  %i.kh = getelementptr i8, ptr %i.kg, i64 -24
  %i.ki = load i64, ptr %i.kh, align 8
  %i.kj = getelementptr inbounds i8, ptr %i.kf, i64 %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !59
  %.not.i141 = icmp eq i64 %i.kl, 0
  br i1 %.not.i141, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.km = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %bb.bu unwind label %bb.cp

bb.bt:                                            ; preds = %bb.br
  %i.kn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, i8 noundef signext 32)
          to label %bb.bu unwind label %bb.cp     ; 0 uses

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %.0.i142 = phi ptr [ %i.km, %bb.bs ], [ %i.kf, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !16
  %i.kq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i142, i32 noundef %i.kp)
          to label %bb.bv unwind label %bb.cp     ; 3 uses

bb.bv:                                            ; preds = %bb.bu
  %i.kr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kq, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147 unwind label %bb.cp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147: ; preds = %bb.bv
  %i.ks = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kq, ptr noundef nonnull @.str.22, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149 unwind label %bb.cp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147
  %i.kt = getelementptr inbounds nuw i8, ptr %i.il, i64 2 ; 4 uses
  %i.ku = load i8, ptr %i.kt, align 2, !tbaa !104
  %i.kv = and i8 %i.ku, 3
  %i.kw = zext nneg i8 %i.kv to i32
  %i.kx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.kq, i32 noundef %i.kw)
          to label %bb.bw unwind label %bb.cp     ; 5 uses

bb.bw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 32, ptr %i.c, align 1, !tbaa !42
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !19
  %i.kz = getelementptr i8, ptr %i.ky, i64 -24
  %i.la = load i64, ptr %i.kz, align 8
  %i.lb = getelementptr inbounds i8, ptr %i.kx, i64 %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !59
  %.not.i150 = icmp eq i64 %i.ld, 0
  br i1 %.not.i150, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.le = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kx, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.bz unwind label %bb.cp

bb.by:                                            ; preds = %bb.bw
  %i.lf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.kx, i8 noundef signext 32)
          to label %bb.bz unwind label %bb.cp     ; 0 uses

bb.bz:                                            ; preds = %bb.bx, %bb.by
  %.0.i151 = phi ptr [ %i.le, %bb.bx ], [ %i.kx, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.lg = load i8, ptr %i.kt, align 2, !tbaa !104
  %i.lh = lshr i8 %i.lg, 2
  %i.li = and i8 %i.lh, 3
  %i.lj = zext nneg i8 %i.li to i32
  %i.lk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i151, i32 noundef %i.lj)
          to label %bb.ca unwind label %bb.cp     ; 5 uses

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !42
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !19
  %i.lm = getelementptr i8, ptr %i.ll, i64 -24
  %i.ln = load i64, ptr %i.lm, align 8
  %i.lo = getelementptr inbounds i8, ptr %i.lk, i64 %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !59
  %.not.i155 = icmp eq i64 %i.lq, 0
  br i1 %.not.i155, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lk, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.cd unwind label %bb.cp

bb.cc:                                            ; preds = %bb.ca
  %i.ls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.lk, i8 noundef signext 32)
          to label %bb.cd unwind label %bb.cp     ; 0 uses

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %.0.i156 = phi ptr [ %i.lr, %bb.cb ], [ %i.lk, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.lt = load i8, ptr %i.kt, align 2, !tbaa !104
  %i.lu = lshr i8 %i.lt, 4
  %i.lv = and i8 %i.lu, 3
  %i.lw = zext nneg i8 %i.lv to i32
  %i.lx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i156, i32 noundef %i.lw)
          to label %bb.ce unwind label %bb.cp     ; 5 uses

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !42
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !19
  %i.lz = getelementptr i8, ptr %i.ly, i64 -24
  %i.ma = load i64, ptr %i.lz, align 8
  %i.mb = getelementptr inbounds i8, ptr %i.lx, i64 %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !59
  %.not.i160 = icmp eq i64 %i.md, 0
  br i1 %.not.i160, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.me = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lx, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.ch unwind label %bb.cp

bb.cg:                                            ; preds = %bb.ce
  %i.mf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.lx, i8 noundef signext 32)
          to label %bb.ch unwind label %bb.cp     ; 0 uses

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  %.0.i161 = phi ptr [ %i.me, %bb.cf ], [ %i.lx, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.mg = load i8, ptr %i.kt, align 2, !tbaa !104
  %i.mh = lshr i8 %i.mg, 6
  %i.mi = zext nneg i8 %i.mh to i32
  %i.mj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i161, i32 noundef %i.mi)
          to label %bb.ci unwind label %bb.cp     ; 3 uses

bb.ci:                                            ; preds = %bb.ch
  %i.mk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mj, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166 unwind label %bb.cp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166: ; preds = %bb.ci
  %i.ml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mj, ptr noundef nonnull @.str.23, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168 unwind label %bb.cp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166
  %i.mm = getelementptr inbounds nuw i8, ptr %i.il, i64 3
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !105
  %i.mo = zext i8 %i.mn to i32
  %i.mp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.mj, i32 noundef %i.mo)
          to label %bb.cj unwind label %bb.cp

bb.cj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168
  %i.mq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.mp, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170 unwind label %bb.cp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170: ; preds = %bb.cj
  %i.mr = load i16, ptr %i.il, align 4, !tbaa !42 ; 4 uses
  %.sroa.0296.0.extract.trunc = trunc i16 %i.mr to i8 ; 3 uses
  %.sroa.11.0.extract.shift = lshr i16 %i.mr, 8   ; 3 uses
  %5 = bitcast i16 %i.mr to <2 x i8>
  %6 = shufflevector <2 x i8> %5, <2 x i8> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.11.0.extract.trunc = trunc nuw i16 %.sroa.11.0.extract.shift to i8 ; 2 uses
  %i.ms = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 48
  %i.mu = load ptr, ptr %i.mt, align 8
  %i.mv = invoke noundef i32 %i.mu(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.ck unwind label %.loopexit.split-lp

bb.ck:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4Ptex4v2_48DataSizeENS0_8DataTypeEE5sizes, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !16
  %i.mz = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 88
  %i.nb = load ptr, ptr %i.na, align 8
  %i.nc = invoke noundef i32 %i.nb(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.cl unwind label %.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ck
  %.sroa.0296.0.extract.trunc.mask = and i16 %i.mr, 255
  %i.nd = zext nneg i16 %.sroa.0296.0.extract.trunc.mask to i32
  %i.ne = shl nuw i32 1, %i.nd
  %i.nf = zext nneg i16 %.sroa.11.0.extract.shift to i32
  %i.ng = shl i32 %i.ne, %i.nf
  %i.nh = mul i32 %i.my, %i.ng
  %i.ni = mul i32 %i.nh, %i.nc
  %i.nj = sext i32 %i.ni to i64
  %i.nk = call noalias ptr @malloc(i64 noundef %i.nj) #19 ; 5 uses
  %i.nl = icmp sgt i8 %.sroa.0296.0.extract.trunc, 0
  %i.nm = icmp sgt i8 %.sroa.11.0.extract.trunc, 0
  %i.nn = select i1 %i.nl, i1 true, i1 %i.nm
  br i1 %i.nn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.11.0372 = phi i8 [ %i.og, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.11.0.extract.trunc, %bb.cl ]
  %.sroa.0296.0371 = phi i8 [ %i.of, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0296.0.extract.trunc, %bb.cl ]
  %i.no = phi <2 x i8> [ %i.oe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %6, %bb.cl ]
  %.sroa.11.0.insert.ext309 = zext i8 %.sroa.11.0372 to i16
  %.sroa.11.0.insert.shift310 = shl nuw i16 %.sroa.11.0.insert.ext309, 8
  %.sroa.0296.0.insert.ext302 = zext i8 %.sroa.0296.0371 to i16
  %.sroa.0296.0.insert.insert304 = or disjoint i16 %.sroa.11.0.insert.shift310, %.sroa.0296.0.insert.ext302 ; 2 uses
  %i.np = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 144
  %i.nr = load ptr, ptr %i.nq, align 8
  invoke void %i.nr(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef %.056375, ptr noundef %i.nk, i32 noundef 0, i16 %.sroa.0296.0.insert.insert304)
          to label %bb.cm unwind label %.loopexit

bb.cm:                                            ; preds = %.lr.ph
  %i.ns = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 48
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = invoke noundef i32 %i.nu(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.cn unwind label %.loopexit

bb.cn:                                            ; preds = %bb.cm
  %i.nw = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 88
  %i.ny = load ptr, ptr %i.nx, align 8
  %i.nz = invoke noundef i32 %i.ny(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %._crit_edge.i.i unwind label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.cn
  store ptr %i.hz, ptr %3, align 8, !tbaa !52
  store i16 8224, ptr %i.hz, align 8
  store i64 2, ptr %i.ia, align 8, !tbaa !17
  store i8 0, ptr %i.if, align 2, !tbaa !42
  invoke void @_Z8DumpDataN4Ptex4v2_43ResENS0_8DataTypeEiPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i16 %.sroa.0296.0.insert.insert304, i32 noundef %i.nv, i32 noundef %i.nz, ptr noundef %i.nk, ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.co unwind label %bb.cq

bb.co:                                            ; preds = %._crit_edge.i.i
  %i.oa = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.ob = icmp eq ptr %i.oa, %i.hz
  br i1 %i.ob, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.co
  %i.oc = load i64, ptr %i.hz, align 8, !tbaa !42
  %i.od = add i64 %i.oc, 1
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.od) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.oe = call <2 x i8> @llvm.usub.sat.v2i8(<2 x i8> %i.no, <2 x i8> splat (i8 1)) ; 4 uses
  %i.of = extractelement <2 x i8> %i.oe, i64 1    ; 2 uses
  %i.og = extractelement <2 x i8> %i.oe, i64 0    ; 2 uses
  %i.oh = icmp sgt <2 x i8> %i.oe, zeroinitializer ; 2 uses
  %i.oi = extractelement <2 x i1> %i.oh, i64 0
  %i.oj = extractelement <2 x i1> %i.oh, i64 1
  %i.ok = select i1 %i.oj, i1 true, i1 %i.oi
  br i1 %i.ok, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !98

bb.cp:                                            ; preds = %bb.cj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit166, %bb.ci, %bb.cg, %bb.cf, %bb.cc, %bb.cb, %bb.by, %bb.bx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit147, %bb.bv, %bb.bt, %bb.bs, %bb.bp, %bb.bo, %bb.bl, %bb.bk, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit128, %bb.bi, %bb.bg, %bb.bf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121, %bb.bd, %bb.bc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168, %bb.ch, %bb.cd, %bb.bz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149, %bb.bu, %bb.bq, %bb.bm, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130, %bb.bh, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119, %bb.bb
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread

.loopexit:                                        ; preds = %.lr.ph, %bb.cm, %bb.cn
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread

.loopexit.split-lp:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit170, %bb.ck, %._crit_edge, %bb.cr, %bb.cs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread

bb.cq:                                            ; preds = %._crit_edge.i.i
  %i.om = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.on = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.oo = icmp eq ptr %i.on, %i.hz
  br i1 %i.oo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.cq
  %i.op = load i64, ptr %i.hz, align 8, !tbaa !42
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.oq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.or = zext i8 %i.og to i16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.cl
  %.sroa.0296.0.lcssa = phi i8 [ %.sroa.0296.0.extract.trunc, %bb.cl ], [ %i.of, %._crit_edge.loopexit ]
  %.sroa.11.0.lcssa = phi i16 [ %.sroa.11.0.extract.shift, %bb.cl ], [ %i.or, %._crit_edge.loopexit ]
  %i.os = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 144
  %i.ou = load ptr, ptr %i.ot, align 8
  invoke void %i.ou(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef %.056375, ptr noundef %i.nk, i32 noundef 0, i16 0)
          to label %bb.cr unwind label %.loopexit.split-lp

bb.cr:                                            ; preds = %._crit_edge
  %.sroa.11.0.insert.shift = shl nuw i16 %.sroa.11.0.lcssa, 8
  %.sroa.0296.0.insert.ext = zext i8 %.sroa.0296.0.lcssa to i16
  %.sroa.0296.0.insert.insert = or disjoint i16 %.sroa.11.0.insert.shift, %.sroa.0296.0.insert.ext
  %i.ov = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 48
  %i.ox = load ptr, ptr %i.ow, align 8
  %i.oy = invoke noundef i32 %i.ox(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.cs unwind label %.loopexit.split-lp

bb.cs:                                            ; preds = %bb.cr
  %i.oz = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 88
  %i.pb = load ptr, ptr %i.pa, align 8
  %i.pc = invoke noundef i32 %i.pb(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %._crit_edge.i.i175 unwind label %.loopexit.split-lp

._crit_edge.i.i175:                               ; preds = %bb.cs
  store ptr %i.ib, ptr %4, align 8, !tbaa !52
  store i16 8224, ptr %i.ib, align 8
  store i64 2, ptr %i.ic, align 8, !tbaa !17
  store i8 0, ptr %i.ig, align 2, !tbaa !42
  invoke void @_Z8DumpDataN4Ptex4v2_43ResENS0_8DataTypeEiPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i16 %.sroa.0296.0.insert.insert, i32 noundef %i.oy, i32 noundef %i.pc, ptr noundef %i.nk, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ct unwind label %bb.cz

bb.ct:                                            ; preds = %._crit_edge.i.i175
  %i.pd = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.pe = icmp eq ptr %i.pd, %i.ib
  br i1 %i.pe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.ct
  %i.pf = load i64, ptr %i.ib, align 8, !tbaa !42
  %i.pg = add i64 %i.pf, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.pg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @free(ptr noundef %i.nk) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) @__const.main.pixel, i64 12, i1 false)
  %i.ph = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 168
  %i.pj = load ptr, ptr %i.pi, align 8
  invoke void %i.pj(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef %.056375, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.h, i32 noundef 3, i32 noundef 3)
          to label %bb.cu unwind label %.loopexit355

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %i.pk = load float, ptr %i.h, align 4, !tbaa !62
  %i.pl = fcmp oeq float %i.pk, 0.000000e+00
  %i.pm = load float, ptr %i.id, align 4
  %i.pn = fcmp oeq float %i.pm, 0.000000e+00
  %or.cond.not66 = select i1 %i.pl, i1 %i.pn, i1 false
  %i.po = load float, ptr %i.ie, align 4
  %i.pp = fcmp oeq float %i.po, 0.000000e+00
  %or.cond6.not = select i1 %or.cond.not66, i1 %i.pp, i1 false
  br i1 %or.cond6.not, label %bb.db, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.pq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.24, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183 unwind label %.loopexit.split-lp356 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183: ; preds = %bb.cv
  %i.pr = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !19
  %i.ps = getelementptr i8, ptr %i.pr, i64 -24
  %i.pt = load i64, ptr %i.ps, align 8
  %i.pu = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.pt
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 240
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i283 = icmp eq ptr %i.pw, null
  br i1 %.not.i.i.i283, label %bb.cw, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i284

bb.cw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183
  invoke void @_ZSt16__throw_bad_castv() #21
          to label %.noexc288 unwind label %.loopexit.split-lp356

.noexc288:                                        ; preds = %bb.cw
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i284: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit183
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 56
  %i.py = load i8, ptr %i.px, align 8, !tbaa !41
  %.not.i1.i.i285 = icmp eq i8 %i.py, 0
  br i1 %.not.i1.i.i285, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i284
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 67
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i286

bb.cy:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i284
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.pw)
          to label %.noexc289 unwind label %.loopexit.split-lp356

.noexc289:                                        ; preds = %bb.cy
  %i.qb = load ptr, ptr %i.pw, align 8, !tbaa !19
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 48
  %i.qd = load ptr, ptr %i.qc, align 8
  %i.qe = invoke noundef signext i8 %i.qd(ptr noundef nonnull align 8 dereferenceable(570) %i.pw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i286 unwind label %.loopexit.split-lp356, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i286: ; preds = %.noexc289, %bb.cx
  %.0.i.i.i287 = phi i8 [ %i.qa, %bb.cx ], [ %i.qe, %.noexc289 ]
  %i.qf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i287)
          to label %.noexc291 unwind label %.loopexit.split-lp356

.noexc291:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i286
end_hunk_0
