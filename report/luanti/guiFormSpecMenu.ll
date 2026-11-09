Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiFormSpecMenu?download=true
inline.NumInlined: 8823
inline.NumDeleted: 2297
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN15GUIFormSpecMenu13parsePwdFieldEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
bb.ba:                                            ; preds = %bb.az
  %i.kw = load ptr, ptr %13, align 8, !tbaa !326  ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.ba
  %i.kz = load i64, ptr %i.kx, align 8, !tbaa !252
  %i.la = shl i64 %i.kz, 2
  %i.lb = add i64 %i.la, 4
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.lb) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  %i.lc = load ptr, ptr %14, align 8, !tbaa !253  ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.jp
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.le = load i64, ptr %i.jp, align 8, !tbaa !252
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.lg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.lg, ptr %16, align 8, !tbaa !456
  %i.lh = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.lh, align 8, !tbaa !457
  store i32 0, ptr %i.lg, align 8, !tbaa !384
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !335
  %i.ll = load ptr, ptr %i.li, align 8, !tbaa !334
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = sub i64 %i.lm, %i.ln
  %i.lp = sdiv exact i64 %i.lo, 192
  %i.lq = trunc i64 %i.lp to i32
  %i.lr = add i32 %i.lq, 258
  invoke void @_ZN15GUIFormSpecMenu9FieldSpecC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS2_IwS3_IwESaIwEEESD_iiN3gui12ECURSOR_ICONE(ptr noundef nonnull align 8 dereferenceable(188) %15, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %16, i32 noundef %i.lr, i32 noundef 0, i32 noundef 4)
          to label %bb.bb unwind label %bb.bh

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.ls = load ptr, ptr %16, align 8, !tbaa !326  ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.lg
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i129: ; preds = %bb.bb
  %i.lu = load i64, ptr %i.lg, align 8, !tbaa !252
  %i.lv = shl i64 %i.lu, 2
  %i.lw = add i64 %i.lv, 4
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lw) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit131: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.lx = getelementptr inbounds nuw i8, ptr %15, i64 132
  store i8 1, ptr %i.lx, align 4, !tbaa !471
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !380 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !455
  %i.mc = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !460
  %i.me = load ptr, ptr %i.lz, align 8, !tbaa !72
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 248
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = invoke noundef ptr %i.mg(ptr noundef nonnull align 8 dereferenceable(8) %i.lz, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(16) %11, i1 noundef zeroext true, ptr noundef %i.mb, i32 noundef %i.md)
          to label %bb.bc unwind label %bb.bk     ; 14 uses

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit131
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 2120
  %i.mk = load i8, ptr %i.mj, align 8, !tbaa !287, !range !309, !noundef !310
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %bb.bd, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread

bb.bd:                                            ; preds = %bb.bc
  %i.mm = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !251 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !251
  %i.mq = icmp eq i64 %i.mn, %i.mp
  br i1 %i.mq, label %bb.be, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread

bb.be:                                            ; preds = %bb.bd
  %i.mr = icmp eq i64 %i.mn, 0
  br i1 %i.mr, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread246, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit: ; preds = %bb.be
  %i.ms = load ptr, ptr %i.mi, align 8, !tbaa !253
  %i.mt = load ptr, ptr %15, align 8, !tbaa !253
  %bcmp.i.i = call i32 @bcmp(ptr %i.mt, ptr %i.ms, i64 %i.mn)
  %i.mu = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.mu, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread246, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread246: ; preds = %bb.be, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit
  %i.mv = load ptr, ptr %i.ly, align 8, !tbaa !380 ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !72
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8
  %i.mz = invoke noundef zeroext i1 %i.my(ptr noundef nonnull align 8 dereferenceable(8) %i.mv, ptr noundef %i.mh)
          to label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread unwind label %bb.bk ; 0 uses

bb.bf:                                            ; preds = %_Z15unescape_stringIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEERKS6_.exit
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit134

bb.bg:                                            ; preds = %bb.az
  %i.nb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nc = load ptr, ptr %13, align 8, !tbaa !326  ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ne = icmp eq ptr %i.nc, %i.nd
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i132: ; preds = %bb.bg
  %i.nf = load i64, ptr %i.nd, align 8, !tbaa !252
  %i.ng = shl i64 %i.nf, 2
  %i.nh = add i64 %i.ng, 4
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef %i.nh) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit134: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i132, %bb.bf
  %.pn42 = phi { ptr, i32 } [ %i.na, %bb.bf ], [ %i.nb, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i132 ], [ %i.nb, %bb.bg ] ; 2 uses
  %i.ni = load ptr, ptr %14, align 8, !tbaa !253  ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.jp
  br i1 %i.nj, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit134, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sink = phi ptr [ %i.kp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ni, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit134 ]
  %.pn42.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp336, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit134 ]
  %i.nk = load i64, ptr %i.jp, align 8, !tbaa !252
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.nl) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit134, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn42.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp336, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit134 ], [ %.pn42.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit209

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.nm = landingpad { ptr, i32 }
          cleanup
  %i.nn = load ptr, ptr %16, align 8, !tbaa !326  ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.lg
  br i1 %i.no, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i138: ; preds = %bb.bh
  %i.np = load i64, ptr %i.lg, align 8, !tbaa !252
  %i.nq = shl i64 %i.np, 2
  %i.nr = add i64 %i.nq, 4
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nr) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit140: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.ci

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread: ; preds = %bb.bd, %bb.bc, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread246, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit
  %i.ns = load i64, ptr %i.ax, align 8, !tbaa !251
  %.not47 = icmp eq i64 %i.ns, 0
  br i1 %.not47, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread
  %i.nt = load ptr, ptr @g_fontengine, align 8, !tbaa !521 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 1324
  %i.nv = load i8, ptr %i.nu, align 4, !tbaa !527, !range !309, !noundef !310
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 1325
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !528, !range !309, !noundef !310
  store i32 -1, ptr %4, align 4, !tbaa !531
  %i.ny = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 4, ptr %i.ny, align 4, !tbaa !532
  %i.nz = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 %i.nv, ptr %i.nz, align 1, !tbaa !533
  %i.oa = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i8 %i.nx, ptr %i.oa, align 2, !tbaa !534
  %i.ob = getelementptr inbounds nuw i8, ptr %4, i64 7
  store i8 1, ptr %i.ob, align 1, !tbaa !535
  %i.oc = invoke noundef i32 @_ZN10FontEngine13getTextHeightERK8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.nt, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.od = load i32, ptr %i.jm, align 4, !tbaa !500 ; 2 uses
  %i.oe = sub nsw i32 %i.od, %i.oc
  store i32 %i.oe, ptr %i.jm, align 4, !tbaa !500
  store i32 %i.od, ptr %i.jo, align 4, !tbaa !499
  %i.of = load ptr, ptr %i.ly, align 8, !tbaa !380
  %i.og = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !326 ; 2 uses
  %i.oi = call noundef i64 @wcslen(ptr noundef nonnull %i.oh) #37
  %i.oj = load ptr, ptr %i.ma, align 8, !tbaa !455
  %i.ok = invoke noundef ptr @_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentESt17basic_string_viewIwSt11char_traitsIwEERKN4core4rectIiEEbbPNS_11IGUIElementEib(ptr noundef %i.of, i64 %i.oi, ptr nonnull %i.oh, ptr noundef nonnull align 4 dereferenceable(16) %11, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %i.oj, i32 noundef 0, i1 noundef zeroext false)
          to label %bb.bl unwind label %bb.bk     ; 0 uses

bb.bk:                                            ; preds = %bb.bi, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit131, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread246, %bb.bl, %bb.bj
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.bl:                                            ; preds = %bb.bj, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread
  %i.om = load ptr, ptr %i.mh, align 8, !tbaa !72
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 424
  %i.oo = load ptr, ptr %i.on, align 8
  invoke void %i.oo(ptr noundef nonnull align 8 dereferenceable(308) %i.mh, i1 noundef zeroext true, i32 noundef signext 42)
          to label %._crit_edge.i.i142 unwind label %bb.bk

._crit_edge.i.i142:                               ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  %i.op = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.op, ptr %18, align 8, !tbaa !250
  store i64 7236270204641376112, ptr %i.op, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 8, ptr %i.oq, align 8, !tbaa !251
  %i.or = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i8 0, ptr %i.or, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  %i.os = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.os, ptr %19, align 8, !tbaa !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.os, ptr noundef nonnull align 1 dereferenceable(5) @.str.75, i64 5, i1 false)
  %i.ot = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 5, ptr %i.ot, align 8, !tbaa !251
  %i.ou = getelementptr inbounds nuw i8, ptr %19, i64 21
  store i8 0, ptr %i.ou, align 1, !tbaa !252
  invoke void @_ZN15GUIFormSpecMenu25getDefaultStyleForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr dead_on_unwind nonnull writable sret(%class.StyleSpec) align 8 %17, ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.bm unwind label %bb.cc

bb.bm:                                            ; preds = %._crit_edge.i.i142
  %i.ov = load ptr, ptr %19, align 8, !tbaa !253  ; 2 uses
  %i.ow = icmp eq ptr %i.ov, %i.os
  br i1 %i.ow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.bm
  %i.ox = load i64, ptr %i.os, align 8, !tbaa !252
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %i.ov, i64 noundef %i.oy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.oz = load ptr, ptr %18, align 8, !tbaa !253  ; 2 uses
  %i.pa = icmp eq ptr %i.oz, %i.op
  br i1 %i.pa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %i.pb = load i64, ptr %i.op, align 8, !tbaa !252
  %i.pc = add i64 %i.pb, 1
  call void @_ZdlPvm(ptr noundef %i.oz, i64 noundef %i.pc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.pd = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %17, i64 168
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !251 ; 2 uses
  %i.pg = icmp eq i64 %i.pf, 0
  br i1 %i.pg, label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.ph = getelementptr inbounds nuw i8, ptr %17, i64 160
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !253
  %i.pj = invoke noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.pf, ptr %i.pi)
          to label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit unwind label %bb.cd

_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %bb.bn
  %.0.i = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %i.pj, %bb.bn ]
  %i.pk = zext i1 %.0.i to i8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.mh, i64 163
  store i8 %i.pk, ptr %i.pl, align 1, !tbaa !481
  %i.pm = load ptr, ptr %i.mh, align 8, !tbaa !72
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 24
  %i.po = load ptr, ptr %i.pn, align 8
  invoke void %i.po(ptr noundef nonnull align 8 dereferenceable(308) %i.mh)
          to label %_ZN3gui11IGUIElement13setNotClippedEb.exit unwind label %bb.cd, !inline_history !23

_ZN3gui11IGUIElement13setNotClippedEb.exit:       ; preds = %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit
  %i.pp = getelementptr inbounds nuw i8, ptr %17, i64 200
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !251 ; 2 uses
  %i.pr = icmp eq i64 %i.pq, 0
  br i1 %i.pr, label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit160, label %bb.bo

bb.bo:                                            ; preds = %_ZN3gui11IGUIElement13setNotClippedEb.exit
  %i.ps = getelementptr inbounds nuw i8, ptr %17, i64 192
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !253
  %i.pu = invoke noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.pq, ptr %i.pt)
          to label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit160 unwind label %bb.cd

_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit160:    ; preds = %_ZN3gui11IGUIElement13setNotClippedEb.exit, %bb.bo
  %.0.i158 = phi i1 [ true, %_ZN3gui11IGUIElement13setNotClippedEb.exit ], [ %i.pu, %bb.bo ]
  %i.pv = load ptr, ptr %i.mh, align 8, !tbaa !72
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 352
  %i.px = load ptr, ptr %i.pw, align 8
  invoke void %i.px(ptr noundef nonnull align 8 dereferenceable(308) %i.mh, i1 noundef zeroext %.0.i158)
          to label %bb.bp unwind label %bb.cd

bb.bp:                                            ; preds = %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit160
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 -1, ptr %3, align 4
  %i.py = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !251
  %i.qa = icmp eq i64 %i.pz, 0
  br i1 %i.qa, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.qb = invoke noundef zeroext i1 @_Z16parseColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEbh(ptr noundef nonnull align 8 dereferenceable(32) %i.pd, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext false, i8 noundef zeroext -1)
          to label %.noexc161 unwind label %bb.cd ; 0 uses

.noexc161:                                        ; preds = %bb.bq
  %.sroa.0.0.pre.i = load i32, ptr %3, align 4, !tbaa !387
  br label %bb.br

bb.br:                                            ; preds = %.noexc161, %bb.bp
  %.sroa.0.0.i = phi i32 [ -1, %bb.bp ], [ %.sroa.0.0.pre.i, %.noexc161 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.qc = load ptr, ptr %i.mh, align 8, !tbaa !72
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 304
  %i.qe = load ptr, ptr %i.qd, align 8
  invoke void %i.qe(ptr noundef nonnull align 8 dereferenceable(308) %i.mh, i32 %.sroa.0.0.i)
          to label %bb.bs unwind label %bb.cd

bb.bs:                                            ; preds = %bb.br
  %i.qf = invoke noundef ptr @_ZNK9StyleSpec7getFontEv(ptr noundef nonnull align 8 dereferenceable(833) %17)
          to label %bb.bt unwind label %bb.cd

bb.bt:                                            ; preds = %bb.bs
  %i.qg = load ptr, ptr %i.mh, align 8, !tbaa !72
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 280
  %i.qi = load ptr, ptr %i.qh, align 8
  invoke void %i.qi(ptr noundef nonnull align 8 dereferenceable(308) %i.mh, ptr noundef %i.qf)
          to label %bb.bu unwind label %bb.cd

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  %i.qj = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.qk = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.qk, i8 0, i64 36, i1 false)
  store i32 3, ptr %20, align 8, !tbaa !538
  %i.ql = getelementptr inbounds nuw i8, ptr %20, i64 12
  store i32 35, ptr %i.ql, align 4, !tbaa !252
  store i32 0, ptr %i.qj, align 8, !tbaa !252
  %i.qm = getelementptr inbounds nuw i8, ptr %20, i64 20
  store i8 1, ptr %i.qm, align 4
  %i.qn = load ptr, ptr %i.mh, align 8, !tbaa !72
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %i.qp = load ptr, ptr %i.qo, align 8
  %i.qq = invoke noundef zeroext i1 %i.qp(ptr noundef nonnull align 8 dereferenceable(308) %i.mh, ptr noundef nonnull align 8 dereferenceable(56) %20)
          to label %bb.bv unwind label %bb.ce     ; 0 uses

bb.bv:                                            ; preds = %bb.bu
  %i.qr = load ptr, ptr %i.lj, align 8, !tbaa !335 ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !336
  %.not.i162 = icmp eq ptr %i.qr, %i.qt
  br i1 %.not.i162, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN15GUIFormSpecMenu9FieldSpecC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(188) %i.qr, ptr noundef nonnull align 8 dereferenceable(188) %15)
          to label %.noexc163 unwind label %bb.ce

.noexc163:                                        ; preds = %bb.bw
  %i.qu = load ptr, ptr %i.lj, align 8, !tbaa !335
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 192
  store ptr %i.qv, ptr %i.lj, align 8, !tbaa !335
  br label %_ZNSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE9push_backERKS1_.exit

bb.bx:                                            ; preds = %bb.bv
  invoke void @_ZNSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.li, ptr %i.qr, ptr noundef nonnull align 8 dereferenceable(188) %15)
          to label %_ZNSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE9push_backERKS1_.exit unwind label %bb.ce

_ZNSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc163, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.pd) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.qw = getelementptr inbounds nuw i8, ptr %15, i64 152
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !253 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %15, i64 168 ; 2 uses
  %i.qz = icmp eq ptr %i.qx, %i.qy
  br i1 %i.qz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i165: ; preds = %_ZNSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE9push_backERKS1_.exit
  %i.ra = load i64, ptr %i.qy, align 8, !tbaa !252
  %i.rb = add i64 %i.ra, 1
  call void @_ZdlPvm(ptr noundef %i.qx, i64 noundef %i.rb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i166: ; preds = %_ZNSt6vectorIN15GUIFormSpecMenu9FieldSpecESaIS1_EE9push_backERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i165
  %i.rc = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !253 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %15, i64 112 ; 2 uses
  %i.rf = icmp eq ptr %i.rd, %i.re
end_hunk_0
begin_hunk_1_@_ZN15GUIFormSpecMenu13parsePwdFieldEPNS_10parserDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:._crit_edge.i.i
  call void @_ZN15GUIFormSpecMenu9FieldSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(188) dereferenceable(188) %15) #32
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit140
  %.pn51.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn, %bb.ch ], [ %i.nm, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit140 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.uq = load ptr, ptr %12, align 8, !tbaa !326  ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.us = icmp eq ptr %i.uq, %i.ur
  br i1 %i.us, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i207: ; preds = %bb.ci
  %i.ut = load i64, ptr %i.ur, align 8, !tbaa !252
  %i.uu = shl i64 %i.ut, 2
  %i.uv = add i64 %i.uu, 4
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.uv) #33
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit209: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i207, %.body
  %.pn51.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %.body ], [ %.pn51.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i207 ], [ %.pn51.pn.pn.pn, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.cj

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit209, %bb.ac
  %.pn59 = phi { ptr, i32 } [ %i.da, %bb.ac ], [ %.pn51.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit209 ] ; 2 uses
  %i.uw = load ptr, ptr %10, align 8, !tbaa !253  ; 2 uses
  %i.ux = icmp eq ptr %i.uw, %i.an
  br i1 %i.ux, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.cj
  %i.uy = load i64, ptr %i.an, align 8, !tbaa !252
  %i.uz = add i64 %i.uy, 1
  call void @_ZdlPvm(ptr noundef %i.uw, i64 noundef %i.uz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210, %bb.ab
  %.pn59.pn = phi { ptr, i32 } [ %i.cz, %bb.ab ], [ %.pn59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210 ], [ %.pn59, %bb.cj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.va = load ptr, ptr %9, align 8, !tbaa !253   ; 2 uses
  %i.vb = icmp eq ptr %i.va, %i.z
  br i1 %i.vb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  %i.vc = load i64, ptr %i.z, align 8, !tbaa !252
  %i.vd = add i64 %i.vc, 1
  call void @_ZdlPvm(ptr noundef %i.va, i64 noundef %i.vd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213, %bb.aa
  %.pn59.pn.pn = phi { ptr, i32 } [ %i.cy, %bb.aa ], [ %.pn59.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213 ], [ %.pn59.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #32
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %bb.z
  %.pn59.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ], [ %i.cx, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #32
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.y
  %.pn59.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn.pn, %bb.ck ], [ %i.cw, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %.pn59.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn.pn.pn, %bb.cl ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %.pn59.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentESt17basic_string_viewIwSt11char_traitsIwEERKN4core4rectIiEEbbPNS_11IGUIElementEib(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(16) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6, i32 noundef %7, i1 noundef zeroext %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %class.EnrichedString, align 8      ; 10 uses
  %10 = alloca %"class.video::SColor", align 4    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  store i32 -1, ptr %10, align 4, !tbaa !539
  call void @_ZN14EnrichedStringC1ESt17basic_string_viewIwSt11char_traitsIwEERKN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80) %9, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %10)
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc unwind label %bb.g, !inline_history !33

.noexc:                                           ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %6, %bb.a ], [ %i.d, %bb.b ]
  %i.f = invoke noalias noundef nonnull dereferenceable(464) ptr @_Znwm(i64 noundef 464) #35
          to label %.noexc10 unwind label %bb.g   ; 7 uses

.noexc10:                                         ; preds = %.noexc
  invoke void @_ZN3gui10StaticTextC1ERK14EnrichedStringbPNS_15IGUIEnvironmentEPNS_11IGUIElementEiRKN4core4rectIiEEb(ptr noundef nonnull align 8 dereferenceable(464) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %9, i1 noundef zeroext %4, ptr noundef %0, ptr noundef %i.e, i32 noundef %7, ptr noundef nonnull align 4 dereferenceable(16) %3, i1 noundef zeroext %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.noexc10
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(308) %i.f, i1 noundef zeroext %5)
          to label %.noexc11 unwind label %bb.g, !inline_history !33

.noexc11:                                         ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !349
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !349
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentERK14EnrichedStringRKN4core4rectIiEEbbPNS_11IGUIElementEib.exit

bb.d:                                             ; preds = %.noexc11
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !72
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #32, !inline_history !34
  br label %_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentERK14EnrichedStringRKN4core4rectIiEEbbPNS_11IGUIElementEib.exit

bb.e:                                             ; preds = %.noexc10
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 464) #33
  br label %.body

_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentERK14EnrichedStringRKN4core4rectIiEEbbPNS_11IGUIElementEib.exit: ; preds = %bb.d, %.noexc11
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !542  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentERK14EnrichedStringRKN4core4rectIiEEbbPNS_11IGUIElementEib.exit
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !543
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #33
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i:  ; preds = %bb.f, %_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentERK14EnrichedStringRKN4core4rectIiEEbbPNS_11IGUIElementEib.exit
  %i.ab = load ptr, ptr %9, align 8, !tbaa !326   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN14EnrichedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !252
  %i.af = shl i64 %i.ae, 2
  %i.ag = add i64 %i.af, 4
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ag) #33
  br label %_ZN14EnrichedStringD2Ev.exit

_ZN14EnrichedStringD2Ev.exit:                     ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret ptr %i.f

bb.g:                                             ; preds = %bb.c, %.noexc, %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.t, %bb.e ]
  call void @_ZN14EnrichedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15GUIFormSpecMenu15createTextFieldEPNS_10parserDataERNS_9FieldSpecERN4core4rectIiEEb(ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(188) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.FontSpec, align 4           ; 8 uses
  %6 = alloca %"class.video::SColor", align 4     ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %class.StyleSpec, align 8           ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 9 uses
  %10 = alloca %struct.SEvent, align 8            ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !251
  %i.d = icmp ne i64 %i.c, 0                      ; 4 uses
  %or.cond = or i1 %4, %i.d
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !380
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !326  ; 2 uses
  %i.i = tail call noundef i64 @wcslen(ptr noundef nonnull %i.h) #37
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !455
  %i.l = tail call noundef ptr @_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentESt17basic_string_viewIwSt11char_traitsIwEERKN4core4rectIiEEbbPNS_11IGUIElementEib(ptr noundef %i.f, i64 %i.i, ptr nonnull %i.h, ptr noundef nonnull align 4 dereferenceable(16) %3, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %i.k, i32 noundef 0, i1 noundef zeroext false) ; 0 uses
  br label %bb.ao

bb.c:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %4, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.n = load i64, ptr %i.m, align 8, !tbaa !457
  %i.o = icmp ne i64 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, 0
  %or.cond107 = select i1 %i.o, i1 true, i1 %i.r
  br i1 %or.cond107, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.s) #32
  br label %.thread

bb.g:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 132
  store i8 1, ptr %i.u, align 4, !tbaa !471
  br i1 %4, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.f, %bb.e, %bb.g
  %i.v = tail call noalias noundef nonnull dereferenceable(584) ptr @_Znwm(i64 noundef 584) #35 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !326
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !380
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !455
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !460
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !247
  invoke void @_ZN23GUIEditBoxWithScrollBarC1EPKwbPN3gui15IGUIEnvironmentEPNS2_11IGUIElementEiRKN4core4rectIiEEP20ISimpleTextureSourcebb(ptr noundef nonnull align 8 dereferenceable(568) %i.v, ptr noundef %i.x, i1 noundef zeroext true, ptr noundef %i.z, ptr noundef %i.ab, i32 noundef %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef %i.af, i1 noundef zeroext %i.d, i1 noundef zeroext true)
          to label %.critedge.thread unwind label %bb.h

bb.h:                                             ; preds = %.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 584) #33
  br label %bb.ar

.critedge:                                        ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !380 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !326
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !455
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !460
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !72
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 248
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %3, i1 noundef zeroext true, ptr noundef %i.am, i32 noundef %i.ao) ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !72
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !349
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !349
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.d, %.thread, %.critedge
  %i.ba = phi ptr [ @.str.76, %.thread ], [ @.str.75, %.critedge ], [ @.str.75, %bb.d ] ; 3 uses
  %.064 = phi ptr [ %i.v, %.thread ], [ %i.as, %.critedge ], [ null, %bb.d ] ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.bb, ptr %8, align 8, !tbaa !250
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ba) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.bc, ptr %i.a, align 8, !tbaa !254
  %i.bd = icmp ugt i64 %i.bc, 15
  br i1 %i.bd, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.critedge.thread
  %i.be = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.be, ptr %8, align 8, !tbaa !253
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !254
  store i64 %i.bf, ptr %i.bb, align 8, !tbaa !252
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %.critedge.thread
  %i.bg = phi ptr [ %i.be, %.noexc ], [ %i.bb, %.critedge.thread ] ; 2 uses
  switch i64 %i.bc, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %._crit_edge.i.i74
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bh = load i8, ptr %i.ba, align 1, !tbaa !252
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !252
  br label %._crit_edge.i.i74

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr nonnull align 1 %i.ba, i64 %i.bc, i1 false)
  br label %._crit_edge.i.i74

._crit_edge.i.i74:                                ; preds = %bb.j, %bb.i, %._crit_edge.i.i
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !254 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !251
  %i.bk = load ptr, ptr %8, align 8, !tbaa !253
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 0, ptr %i.bl, align 1, !tbaa !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.bm, ptr %9, align 8, !tbaa !250
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bn, align 8, !tbaa !251
  store i8 0, ptr %i.bm, align 8, !tbaa !252
  invoke void @_ZN15GUIFormSpecMenu25getDefaultStyleForElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_(ptr dead_on_unwind nonnull writable sret(%class.StyleSpec) align 8 %7, ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %._crit_edge.i.i74
  %i.bo = load ptr, ptr %9, align 8, !tbaa !253   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bm
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.bq = load i64, ptr %i.bm, align 8, !tbaa !252
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.bs = load ptr, ptr %8, align 8, !tbaa !253   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bb
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = load i64, ptr %i.bb, align 8, !tbaa !252
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %.not = icmp eq ptr %.064, null
  br i1 %.not, label %_ZNK17IReferenceCounted4dropEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  br i1 %i.d, label %bb.m, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2120
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !287, !range !309, !noundef !310
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.n, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !251 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !251
  %i.cd = icmp eq i64 %i.ca, %i.cc
  br i1 %i.cd, label %bb.o, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ce = icmp eq i64 %i.ca, 0
  br i1 %i.ce, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread104, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit: ; preds = %bb.o
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !253
  %i.cg = load ptr, ptr %2, align 8, !tbaa !253
  %bcmp.i.i = call i32 @bcmp(ptr %i.cg, ptr %i.cf, i64 %i.ca)
  %i.ch = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ch, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread104, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread104: ; preds = %bb.o, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !380 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !72
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = invoke noundef zeroext i1 %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull %.064)
          to label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread unwind label %bb.an ; 0 uses

bb.p:                                             ; preds = %.noexc.i
  %i.co = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZN15GUIFormSpecMenu15createTextFieldEPNS_10parserDataERNS_9FieldSpecERN4core4rectIiEEb:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.co, %bb.p ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.aq

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread: ; preds = %bb.n, %bb.m, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread104, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit, %bb.l
  br i1 %4, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread
  %i.cy = load ptr, ptr %.064, align 8, !tbaa !72
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 392
  %i.da = load ptr, ptr %i.cz, align 8
  invoke void %i.da(ptr noundef nonnull align 8 dereferenceable(308) %.064, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.an

bb.s:                                             ; preds = %bb.r
  %i.db = load ptr, ptr %.064, align 8, !tbaa !72
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 376
  %i.dd = load ptr, ptr %i.dc, align 8
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(308) %.064, i1 noundef zeroext true)
          to label %bb.t unwind label %bb.an

bb.t:                                             ; preds = %bb.s
  %i.de = load ptr, ptr %.064, align 8, !tbaa !72
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 368
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(308) %.064, i32 noundef 0, i32 noundef 0)
          to label %bb.x unwind label %bb.an

bb.u:                                             ; preds = %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.di, i8 0, i64 36, i1 false)
  store i32 3, ptr %10, align 8, !tbaa !538
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 35, ptr %i.dj, align 4, !tbaa !252
  store i32 0, ptr %i.dh, align 8, !tbaa !252
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i8 1, ptr %i.dk, align 4
  %i.dl = load ptr, ptr %.064, align 8, !tbaa !72
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = invoke noundef zeroext i1 %i.dn(ptr noundef nonnull align 8 dereferenceable(308) %.064, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %bb.v unwind label %bb.w       ; 0 uses

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.ap

bb.x:                                             ; preds = %bb.t, %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 168
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !251 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !253
  %i.dw = invoke noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.ds, ptr %i.dv)
          to label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit unwind label %bb.an

_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit:       ; preds = %bb.x, %bb.y
  %.0.i = phi i1 [ false, %bb.x ], [ %i.dw, %bb.y ]
  %i.dx = zext i1 %.0.i to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %.064, i64 163
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !481
  %i.dz = load ptr, ptr %.064, align 8, !tbaa !72
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  invoke void %i.eb(ptr noundef nonnull align 8 dereferenceable(308) %.064)
          to label %_ZN3gui11IGUIElement13setNotClippedEb.exit unwind label %bb.an, !inline_history !23

_ZN3gui11IGUIElement13setNotClippedEb.exit:       ; preds = %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i32 -1, ptr %6, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !251
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN3gui11IGUIElement13setNotClippedEb.exit
  %i.ef = invoke noundef zeroext i1 @_Z16parseColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEbh(ptr noundef nonnull align 8 dereferenceable(32) %i.dq, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext false, i8 noundef zeroext -1)
          to label %.noexc89 unwind label %bb.an  ; 0 uses

.noexc89:                                         ; preds = %bb.z
  %.sroa.0.0.pre.i = load i32, ptr %6, align 4, !tbaa !387
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc89, %_ZN3gui11IGUIElement13setNotClippedEb.exit
  %.sroa.0.0.i = phi i32 [ -1, %_ZN3gui11IGUIElement13setNotClippedEb.exit ], [ %.sroa.0.0.pre.i, %.noexc89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.eg = load ptr, ptr %.064, align 8, !tbaa !72
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 304
  %i.ei = load ptr, ptr %i.eh, align 8
  invoke void %i.ei(ptr noundef nonnull align 8 dereferenceable(308) %.064, i32 %.sroa.0.0.i)
          to label %bb.ab unwind label %bb.an

bb.ab:                                            ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 200
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !251 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit92, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !253
  %i.eo = invoke noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.ek, ptr %i.en)
          to label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit92 unwind label %bb.an

_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit92:     ; preds = %bb.ab, %bb.ac
  %.0.i90 = phi i1 [ true, %bb.ab ], [ %i.eo, %bb.ac ] ; 2 uses
  %i.ep = load ptr, ptr %.064, align 8, !tbaa !72
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 352
  %i.er = load ptr, ptr %i.eq, align 8
  invoke void %i.er(ptr noundef nonnull align 8 dereferenceable(308) %.064, i1 noundef zeroext %.0.i90)
          to label %bb.ad unwind label %bb.an

bb.ad:                                            ; preds = %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit92
  %i.es = load ptr, ptr %.064, align 8, !tbaa !72
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 336
  %i.eu = load ptr, ptr %i.et, align 8
  invoke void %i.eu(ptr noundef nonnull align 8 dereferenceable(308) %.064, i1 noundef zeroext %.0.i90)
          to label %bb.ae unwind label %bb.an

bb.ae:                                            ; preds = %bb.ad
  %i.ev = invoke noundef ptr @_ZNK9StyleSpec7getFontEv(ptr noundef nonnull align 8 dereferenceable(833) %7)
          to label %bb.af unwind label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.ew = load ptr, ptr %.064, align 8, !tbaa !72
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 280
  %i.ey = load ptr, ptr %i.ex, align 8
  invoke void %i.ey(ptr noundef nonnull align 8 dereferenceable(308) %.064, ptr noundef %i.ev)
          to label %bb.ag unwind label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.ez = load ptr, ptr %.064, align 8, !tbaa !72
  %i.fa = getelementptr i8, ptr %i.ez, i64 -24
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds i8, ptr %.064, i64 %i.fb ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !349
  %i.ff = add nsw i32 %i.fe, -1                   ; 2 uses
  store i32 %i.ff, ptr %i.fd, align 8, !tbaa !349
  %.not.i = icmp eq i32 %i.ff, 0
  br i1 %.not.i, label %bb.ah, label %_ZNK17IReferenceCounted4dropEv.exit

bb.ah:                                            ; preds = %bb.ag
  %i.fg = load ptr, ptr %i.fc, align 8, !tbaa !72
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(12) %i.fc) #32, !inline_history !9
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.ah, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !457
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %_ZN3gui11IGUIElement13setNotClippedEb.exit98, label %bb.ai

bb.ai:                                            ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %i.fn = load ptr, ptr @g_fontengine, align 8, !tbaa !521 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1324
  %i.fp = load i8, ptr %i.fo, align 4, !tbaa !527, !range !309, !noundef !310
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 1325
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !528, !range !309, !noundef !310
  store i32 -1, ptr %5, align 4, !tbaa !531
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 4, ptr %i.fs, align 4, !tbaa !532
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 5
  store i8 %i.fp, ptr %i.ft, align 1, !tbaa !533
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i8 %i.fr, ptr %i.fu, align 2, !tbaa !534
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 7
  store i8 1, ptr %i.fv, align 1, !tbaa !535
  %i.fw = invoke noundef i32 @_ZN10FontEngine13getTextHeightERK8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.fn, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !500 ; 2 uses
  %i.fz = sub nsw i32 %i.fy, %i.fw
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !500
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.fy, ptr %i.ga, align 4, !tbaa !499
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !380
  %i.gd = load ptr, ptr %i.fj, align 8, !tbaa !326 ; 2 uses
  %i.ge = call noundef i64 @wcslen(ptr noundef nonnull %i.gd) #37
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !455
  %i.gh = invoke noundef ptr @_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentESt17basic_string_viewIwSt11char_traitsIwEERKN4core4rectIiEEbbPNS_11IGUIElementEib(ptr noundef %i.gc, i64 %i.ge, ptr nonnull %i.gd, ptr noundef nonnull align 4 dereferenceable(16) %3, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %i.gg, i32 noundef 0, i1 noundef zeroext false)
          to label %bb.ak unwind label %bb.an     ; 4 uses

bb.ak:                                            ; preds = %bb.aj
  %.not68 = icmp eq ptr %i.gh, null
  br i1 %.not68, label %_ZN3gui11IGUIElement13setNotClippedEb.exit98, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gi = getelementptr inbounds nuw i8, ptr %7, i64 168
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !251 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit96, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gl = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !253
  %i.gn = invoke noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.gj, ptr %i.gm)
          to label %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit96 unwind label %bb.an

_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit96:     ; preds = %bb.al, %bb.am
  %.0.i94 = phi i1 [ false, %bb.al ], [ %i.gn, %bb.am ]
  %i.go = zext i1 %.0.i94 to i8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 163
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !481
  %i.gq = load ptr, ptr %i.gh, align 8, !tbaa !72
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 24
  %i.gs = load ptr, ptr %i.gr, align 8
  invoke void %i.gs(ptr noundef nonnull align 8 dereferenceable(308) %i.gh)
          to label %_ZN3gui11IGUIElement13setNotClippedEb.exit98 unwind label %bb.an, !inline_history !23

bb.an:                                            ; preds = %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit96, %bb.am, %bb.ai, %bb.ac, %bb.z, %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit, %bb.y, %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit92, %bb.ad, %bb.ae, %bb.af, %bb.aa, %bb.t, %bb.s, %bb.r, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES9_RKSt8optionalISA_E.exit.thread104, %bb.aj
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZN3gui11IGUIElement13setNotClippedEb.exit98:     ; preds = %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit96, %bb.ak, %_ZNK17IReferenceCounted4dropEv.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.gu) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN3gui11IGUIElement13setNotClippedEb.exit98, %bb.b
  ret void

bb.ap:                                            ; preds = %bb.an, %bb.w
  %.pn69.pn = phi { ptr, i32 } [ %i.gt, %bb.an ], [ %i.dp, %bb.w ]
  %i.gv = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.gv) #32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %bb.ap ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.h
  %.pn69.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn, %bb.aq ], [ %i.ag, %bb.h ]
  resume { ptr, i32 } %.pn69.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN23GUIEditBoxWithScrollBarC1EPKwbPN3gui15IGUIEnvironmentEPNS2_11IGUIElementEiRKN4core4rectIiEEP20ISimpleTextureSourcebb(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN15GUIFormSpecMenu16parseSimpleFieldEPNS_10parserDataERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(2236) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 17 uses
  %6 = alloca %"class.core::rect", align 4        ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 15 uses
  %11 = alloca %"struct.GUIFormSpecMenu::FieldSpec", align 8 ; 18 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.e = load ptr, ptr %2, align 8, !tbaa !305    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !250
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !253  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !251  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store i64 %i.i, ptr %i.d, align 8, !tbaa !254
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !253
  %i.l = load i64, ptr %i.d, align 8, !tbaa !254
  store i64 %i.l, ptr %i.f, align 8, !tbaa !252
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !252
  store i8 %i.n, ptr %i.m, align 1, !tbaa !252
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.d, align 8, !tbaa !254  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !251
  %i.q = load ptr, ptr %3, align 8, !tbaa !253
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.s = load ptr, ptr %2, align 8, !tbaa !305    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !250
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !253  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !251  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i64 %i.x, ptr %i.c, align 8, !tbaa !254
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i40, label %._crit_edge.i.i39

.noexc.i40:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.s     ; 2 uses

.noexc:                                           ; preds = %.noexc.i40
  store ptr %i.z, ptr %4, align 8, !tbaa !253
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !254
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !252
  br label %._crit_edge.i.i39

._crit_edge.i.i39:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.x, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i39
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !252
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !252
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i39
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i39
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !254 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !251
  %i.af = load ptr, ptr %4, align 8, !tbaa !253
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.ah = load ptr, ptr %2, align 8, !tbaa !305   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.aj, ptr %5, align 8, !tbaa !250
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !253 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !251 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.am, ptr %i.b, align 8, !tbaa !254
  %i.an = icmp ugt i64 %i.am, 15
  br i1 %i.an, label %.noexc.i43, label %._crit_edge.i.i42

.noexc.i43:                                       ; preds = %bb.f
  %i.ao = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc44 unwind label %bb.t   ; 2 uses

.noexc44:                                         ; preds = %.noexc.i43
  store ptr %i.ao, ptr %5, align 8, !tbaa !253
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !254
  store i64 %i.ap, ptr %i.aj, align 8, !tbaa !252
  br label %._crit_edge.i.i42

._crit_edge.i.i42:                                ; preds = %.noexc44, %bb.f
  %i.aq = phi ptr [ %i.ao, %.noexc44 ], [ %i.aj, %bb.f ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN15GUIFormSpecMenu11acceptInputE16FormspecQuitMode:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i440: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i437
  %i.ace = zext nneg i32 %.lobit.i439 to i64
  %i.acf = load ptr, ptr %19, align 8, !tbaa !253, !alias.scope !1075
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.ace ; 4 uses
  %i.ach = icmp samesign ugt i32 %i.abr, 99
  br i1 %i.ach, label %.lr.ph.preheader.i.i444, label %._crit_edge.i.i441

.lr.ph.preheader.i.i444:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i440
  %i.aci = add i32 %.022.i.i438, -1
  br label %.lr.ph.i11.i445

.lr.ph.i11.i445:                                  ; preds = %.lr.ph.i11.i445, %.lr.ph.preheader.i.i444
  %.020.i.i446 = phi i32 [ %i.acl, %.lr.ph.i11.i445 ], [ %i.abr, %.lr.ph.preheader.i.i444 ] ; 3 uses
  %.01819.i.i447 = phi i32 [ %i.acw, %.lr.ph.i11.i445 ], [ %i.aci, %.lr.ph.preheader.i.i444 ] ; 3 uses
  %i.acj = urem i32 %.020.i.i446, 100
  %i.ack = shl nuw nsw i32 %i.acj, 1
  %i.acl = udiv i32 %.020.i.i446, 100             ; 2 uses
  %i.acm = zext nneg i32 %i.ack to i64
  %i.acn = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.acm ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 1
  %i.acp = load i8, ptr %i.aco, align 1, !tbaa !252, !noalias !1075
  %i.acq = zext i32 %.01819.i.i447 to i64
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.acq
  store i8 %i.acp, ptr %i.acr, align 1, !tbaa !252
  %i.acs = load i8, ptr %i.acn, align 2, !tbaa !252, !noalias !1075
  %i.act = add i32 %.01819.i.i447, -1
  %i.acu = zext i32 %i.act to i64
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.acu
  store i8 %i.acs, ptr %i.acv, align 1, !tbaa !252
  %i.acw = add i32 %.01819.i.i447, -2
  %i.acx = icmp samesign ugt i32 %.020.i.i446, 9999
  br i1 %i.acx, label %.lr.ph.i11.i445, label %._crit_edge.i.i441, !llvm.loop !1044

._crit_edge.i.i441:                               ; preds = %.lr.ph.i11.i445, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i440
  %.0.lcssa.i.i442 = phi i32 [ %i.abr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i440 ], [ %i.acl, %.lr.ph.i11.i445 ] ; 3 uses
  %i.acy = icmp samesign ugt i32 %.0.lcssa.i.i442, 9
  br i1 %i.acy, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %._crit_edge.i.i441
  %i.acz = shl nuw nsw i32 %.0.lcssa.i.i442, 1
  %i.ada = zext nneg i32 %i.acz to i64
  %i.adb = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ada ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 1
  %i.add = load i8, ptr %i.adc, align 1, !tbaa !252, !noalias !1075
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acg, i64 1
  store i8 %i.add, ptr %i.ade, align 1, !tbaa !252
  %i.adf = load i8, ptr %i.adb, align 2, !tbaa !252, !noalias !1075
  br label %_ZNSt7__cxx119to_stringEi.exit448

bb.fh:                                            ; preds = %._crit_edge.i.i441
  %i.adg = trunc nuw nsw i32 %.0.lcssa.i.i442 to i8
  %i.adh = or disjoint i8 %i.adg, 48
  br label %_ZNSt7__cxx119to_stringEi.exit448

bb.fi:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i437
  %i.adi = landingpad { ptr, i32 }
          catch ptr null
  %i.adj = extractvalue { ptr, i32 } %i.adi, 0
  call void @__clang_call_terminate(ptr %i.adj) #34
  unreachable

_ZNSt7__cxx119to_stringEi.exit448:                ; preds = %bb.fg, %bb.fh
  %storemerge.i.i443 = phi i8 [ %i.adh, %bb.fh ], [ %i.adf, %bb.fg ]
  store i8 %storemerge.i.i443, ptr %i.acg, align 1, !tbaa !252
  %i.adk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit450 unwind label %bb.fp ; 9 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit450: ; preds = %_ZNSt7__cxx119to_stringEi.exit448
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !253 ; 6 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adk, i64 16 ; 4 uses
  %i.adn = icmp eq ptr %i.adl, %i.adm
  %i.ado = load ptr, ptr %19, align 8, !tbaa !253 ; 6 uses
  %i.adp = icmp eq ptr %i.ado, %i.ek              ; 2 uses
  br i1 %i.adn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i457, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i451

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i457: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit450
  br i1 %i.adp, label %bb.fj, label %.thread.i458

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i451: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit450
  br i1 %i.adp, label %bb.fj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i452

bb.fj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i451, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i457
  %i.adq = load i64, ptr %i.el, align 8, !tbaa !251 ; 3 uses
  %i.adr = icmp ult i64 %i.adq, 16
  call void @llvm.assume(i1 %i.adr)
  %.not21.i454 = icmp eq ptr %19, %i.adk
  br i1 %.not21.i454, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit459, label %bb.fk, !prof !431

bb.fk:                                            ; preds = %bb.fj
  switch i64 %i.adq, label %bb.fm [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i455
    i64 1, label %bb.fl
  ]

bb.fl:                                            ; preds = %bb.fk
  %i.ads = load i8, ptr %i.ado, align 1, !tbaa !252
  store i8 %i.ads, ptr %i.adl, align 1, !tbaa !252
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i455

bb.fm:                                            ; preds = %bb.fk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adl, ptr align 1 %i.ado, i64 %i.adq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i455

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i455: ; preds = %bb.fm, %bb.fl, %bb.fk
  %i.adt = load i64, ptr %i.el, align 8, !tbaa !251 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adk, i64 8
  store i64 %i.adt, ptr %i.adu, align 8, !tbaa !251
  %i.adv = load ptr, ptr %i.adk, align 8, !tbaa !253
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 %i.adt
  store i8 0, ptr %i.adw, align 1, !tbaa !252
  %.pre.i456 = load ptr, ptr %19, align 8, !tbaa !253
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit459

.thread.i458:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i457
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adk, i64 8
  store ptr %i.ado, ptr %i.adk, align 8, !tbaa !253
  %i.ady = load i64, ptr %i.el, align 8, !tbaa !251
  store i64 %i.ady, ptr %i.adx, align 8, !tbaa !251
  %i.adz = load i64, ptr %i.ek, align 8, !tbaa !252
  store i64 %i.adz, ptr %i.adm, align 8, !tbaa !252
  br label %bb.fo

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i452: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i451
  %i.aea = load i64, ptr %i.adm, align 8, !tbaa !252
  store ptr %i.ado, ptr %i.adk, align 8, !tbaa !253
  %i.aeb = load i64, ptr %i.el, align 8, !tbaa !251
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adk, i64 8
  store i64 %i.aeb, ptr %i.aec, align 8, !tbaa !251
  %i.aed = load i64, ptr %i.ek, align 8, !tbaa !252
  store i64 %i.aed, ptr %i.adm, align 8, !tbaa !252
  %.not.i453 = icmp eq ptr %i.adl, null
  br i1 %.not.i453, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i452
  store ptr %i.adl, ptr %19, align 8, !tbaa !253
  store i64 %i.aea, ptr %i.ek, align 8, !tbaa !252
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit459

bb.fo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i452, %.thread.i458
  store ptr %i.ek, ptr %19, align 8, !tbaa !253
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit459

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit459: ; preds = %bb.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i455, %bb.fn, %bb.fo
  %i.aee = phi ptr [ %i.adl, %bb.fn ], [ %i.ek, %bb.fo ], [ %i.ado, %bb.fj ], [ %.pre.i456, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i455 ]
  store i64 0, ptr %i.el, align 8, !tbaa !251
  store i8 0, ptr %i.aee, align 1, !tbaa !252
  %i.aef = load ptr, ptr %19, align 8, !tbaa !253 ; 2 uses
  %i.aeg = icmp eq ptr %i.aef, %i.ek
  br i1 %i.aeg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit459
  %i.aeh = load i64, ptr %i.ek, align 8, !tbaa !252
  %i.aei = add i64 %i.aeh, 1
  call void @_ZdlPvm(ptr noundef %i.aef, i64 noundef %i.aei) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit459, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %.critedge

bb.fp:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit448
  %i.aej = landingpad { ptr, i32 }
          cleanup
  %i.aek = load ptr, ptr %19, align 8, !tbaa !253 ; 2 uses
  %i.ael = icmp eq ptr %i.aek, %i.ek
  br i1 %i.ael, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463: ; preds = %bb.fp
  %i.aem = load i64, ptr %i.ek, align 8, !tbaa !252
  %i.aen = add i64 %i.aem, 1
  call void @_ZdlPvm(ptr noundef %i.aek, i64 noundef %i.aen) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465: ; preds = %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %bb.gd

bb.fq:                                            ; preds = %bb.t
  %i.aeo = getelementptr inbounds nuw i8, ptr %.sroa.0499.0628, i64 128
  %i.aep = load i32, ptr %i.aeo, align 8, !tbaa !460
  %i.aeq = load ptr, ptr %0, align 8, !tbaa !72
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 232
  %i.aes = load ptr, ptr %i.aer, align 8
  %i.aet = invoke noundef ptr %i.aes(ptr noundef nonnull align 8 dereferenceable(308) %0, i32 noundef %i.aep, i1 noundef zeroext true)
          to label %bb.fr unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.fr:                                            ; preds = %bb.fq
  %.not123 = icmp eq ptr %i.aet, null
  br i1 %.not123, label %.critedge, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !72
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 168
  %i.aew = load ptr, ptr %i.aev, align 8
  %i.aex = invoke noundef ptr %i.aew(ptr noundef nonnull align 8 dereferenceable(308) %i.aet)
          to label %bb.ft unwind label %bb.gb     ; 2 uses

bb.ft:                                            ; preds = %bb.fs
  %i.aey = call noundef i64 @wcslen(ptr noundef nonnull %i.aex) #37
  invoke void @_Z12wide_to_utf8B5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.6") align 8 %20, i64 %i.aey, ptr nonnull %i.aex)
          to label %bb.fu unwind label %bb.gb

bb.fu:                                            ; preds = %bb.ft
  %i.aez = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit467 unwind label %bb.gc ; 9 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit467: ; preds = %bb.fu
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !253 ; 6 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aez, i64 16 ; 4 uses
  %i.afc = icmp eq ptr %i.afa, %i.afb
  %i.afd = load ptr, ptr %20, align 8, !tbaa !253 ; 6 uses
  %i.afe = icmp eq ptr %i.afd, %i.fg              ; 2 uses
  br i1 %i.afc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i474, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i468

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i474: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit467
  br i1 %i.afe, label %bb.fv, label %.thread.i475

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i468: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit467
  br i1 %i.afe, label %bb.fv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i469

bb.fv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i468, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i474
  %i.aff = load i64, ptr %i.fh, align 8, !tbaa !251 ; 3 uses
  %i.afg = icmp ult i64 %i.aff, 16
  call void @llvm.assume(i1 %i.afg)
  %.not21.i471 = icmp eq ptr %20, %i.aez
  br i1 %.not21.i471, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit476, label %bb.fw, !prof !431

bb.fw:                                            ; preds = %bb.fv
  switch i64 %i.aff, label %bb.fy [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i472
    i64 1, label %bb.fx
  ]

bb.fx:                                            ; preds = %bb.fw
  %i.afh = load i8, ptr %i.afd, align 1, !tbaa !252
  store i8 %i.afh, ptr %i.afa, align 1, !tbaa !252
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i472

bb.fy:                                            ; preds = %bb.fw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afa, ptr align 1 %i.afd, i64 %i.aff, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i472

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i472: ; preds = %bb.fy, %bb.fx, %bb.fw
  %i.afi = load i64, ptr %i.fh, align 8, !tbaa !251 ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aez, i64 8
  store i64 %i.afi, ptr %i.afj, align 8, !tbaa !251
  %i.afk = load ptr, ptr %i.aez, align 8, !tbaa !253
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 %i.afi
  store i8 0, ptr %i.afl, align 1, !tbaa !252
  %.pre.i473 = load ptr, ptr %20, align 8, !tbaa !253
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit476

.thread.i475:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i474
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aez, i64 8
  store ptr %i.afd, ptr %i.aez, align 8, !tbaa !253
  %i.afn = load i64, ptr %i.fh, align 8, !tbaa !251
  store i64 %i.afn, ptr %i.afm, align 8, !tbaa !251
  %i.afo = load i64, ptr %i.fg, align 8, !tbaa !252
  store i64 %i.afo, ptr %i.afb, align 8, !tbaa !252
  br label %bb.ga

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i469: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i468
  %i.afp = load i64, ptr %i.afb, align 8, !tbaa !252
  store ptr %i.afd, ptr %i.aez, align 8, !tbaa !253
  %i.afq = load i64, ptr %i.fh, align 8, !tbaa !251
  %i.afr = getelementptr inbounds nuw i8, ptr %i.aez, i64 8
  store i64 %i.afq, ptr %i.afr, align 8, !tbaa !251
  %i.afs = load i64, ptr %i.fg, align 8, !tbaa !252
  store i64 %i.afs, ptr %i.afb, align 8, !tbaa !252
  %.not.i470 = icmp eq ptr %i.afa, null
  br i1 %.not.i470, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i469
  store ptr %i.afa, ptr %20, align 8, !tbaa !253
  store i64 %i.afp, ptr %i.fg, align 8, !tbaa !252
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit476

bb.ga:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i469, %.thread.i475
  store ptr %i.fg, ptr %20, align 8, !tbaa !253
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit476

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit476: ; preds = %bb.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i472, %bb.fz, %bb.ga
  %i.aft = phi ptr [ %i.afa, %bb.fz ], [ %i.fg, %bb.ga ], [ %i.afd, %bb.fv ], [ %.pre.i473, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i472 ]
  store i64 0, ptr %i.fh, align 8, !tbaa !251
  store i8 0, ptr %i.aft, align 1, !tbaa !252
  %i.afu = load ptr, ptr %20, align 8, !tbaa !253 ; 2 uses
  %i.afv = icmp eq ptr %i.afu, %i.fg
  br i1 %i.afv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i477

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i477: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit476
  %i.afw = load i64, ptr %i.fg, align 8, !tbaa !252
  %i.afx = add i64 %i.afw, 1
  call void @_ZdlPvm(ptr noundef %i.afu, i64 noundef %i.afx) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit476, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i477
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %.critedge

.loopexit.loopexit.split-lp.loopexit.split-lp:    ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit343.invoke, %bb.fq, %bb.aq, %bb.at, %bb.bz, %bb.cv, %bb.cy, %bb.dc, %bb.ew, %_ZTW13warningstream.exit, %.noexc284, %bb.aw, %bb.az, %bb.by, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit322, %bb.da, %bb.db, %bb.bd, %.noexc490, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc492, %bb.bf, %bb.bb
  %lpad.loopexit.split-lp940 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.gb:                                            ; preds = %bb.ft, %bb.fs
  %i.afy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482

bb.gc:                                            ; preds = %bb.fu
  %i.afz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aga = load ptr, ptr %20, align 8, !tbaa !253 ; 2 uses
  %i.agb = icmp eq ptr %i.aga, %i.fg
  br i1 %i.agb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i480

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i480: ; preds = %bb.gc
  %i.agc = load i64, ptr %i.fg, align 8, !tbaa !252
  %i.agd = add i64 %i.agc, 1
  call void @_ZdlPvm(ptr noundef %i.aga, i64 noundef %i.agd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482: ; preds = %bb.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i480, %bb.gb
  %.pn124 = phi { ptr, i32 } [ %i.afy, %bb.gb ], [ %i.afz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i480 ], [ %i.afz, %bb.gc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.gd

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.i313, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.us.i318, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13.us.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit343.invoke, %bb.ey, %bb.ex, %bb.de, %bb.dd, %bb.cx, %bb.cw, %bb.cb, %bb.ca, %bb.bx, %bb.af, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixERSB_.exit322, %bb.ax, %.noexc492, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, %_ZN15GUIFormSpecMenu8getTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479, %bb.fr, %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306, %_ZN15GUIFormSpecMenu17getDropDownValuesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.age = load ptr, ptr %10, align 8, !tbaa !253 ; 2 uses
  %i.agf = icmp eq ptr %i.age, %i.ei
  br i1 %i.agf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i483

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i483: ; preds = %.critedge
  %i.agg = load i64, ptr %i.ei, align 8, !tbaa !252
  %i.agh = add i64 %i.agg, 1
  call void @_ZdlPvm(ptr noundef %i.age, i64 noundef %i.agh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i483
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.ge

bb.gd:                                            ; preds = %.loopexit.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264
  %.pn159.pn = phi { ptr, i32 } [ %.pn159, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit264 ], [ %.pn157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282 ], [ %i.aej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465 ], [ %i.nq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309 ], [ %.pn136.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390 ], [ %.pn133.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433 ], [ %.pn147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341 ], [ %.pn124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482 ], [ %lpad.loopexit.split-lp940, %.loopexit.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.agi = load ptr, ptr %10, align 8, !tbaa !253 ; 2 uses
  %i.agj = icmp eq ptr %i.agi, %i.ei
  br i1 %i.agj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i486

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i486: ; preds = %bb.gd
  %i.agk = load i64, ptr %i.ei, align 8, !tbaa !252
  %i.agl = add i64 %i.agk, 1
  call void @_ZdlPvm(ptr noundef %i.agi, i64 noundef %i.agl) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488: ; preds = %bb.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i486, %bb.ac
  %.pn159.pn.pn = phi { ptr, i32 } [ %i.hf, %bb.ac ], [ %.pn159.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i486 ], [ %.pn159.pn, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.gh

bb.ge:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485, %bb.p
  %i.agm = getelementptr inbounds nuw i8, ptr %.sroa.0499.0628, i64 192 ; 2 uses
  %.not529 = icmp eq ptr %i.agm, %i.eh
  br i1 %.not529, label %._crit_edge.invoke, label %bb.p

bb.gf:                                            ; preds = %._crit_edge.invoke
  %i.agn = load ptr, ptr %i.h, align 8, !tbaa !614 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.agn, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i494

.lr.ph.i.i.i494:                                  ; preds = %bb.gf, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.ago, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.agn, %bb.gf ] ; 6 uses
  %i.ago = load ptr, ptr %.06.i.i.i, align 8, !tbaa !338 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.agq = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !253 ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.agt = icmp eq ptr %i.agr, %i.ags
  br i1 %i.agt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i494
  %i.agu = load i64, ptr %i.ags, align 8, !tbaa !252
  %i.agv = add i64 %i.agu, 1
  call void @_ZdlPvm(ptr noundef %i.agr, i64 noundef %i.agv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i494, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.agw = load ptr, ptr %i.agp, align 8, !tbaa !253 ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.agy = icmp eq ptr %i.agw, %i.agx
  br i1 %i.agy, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.agz = load i64, ptr %i.agx, align 8, !tbaa !252
  %i.aha = add i64 %i.agz, 1
  call void @_ZdlPvm(ptr noundef %i.agw, i64 noundef %i.aha) #33
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #33
end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_:bb.a
_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i: ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
  br label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i
  %.sink.i.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.b, %bb.g ] ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 32
  %i.r = load i64, ptr %i.p, align 4
  store i64 %i.r, ptr %i.q, align 4
  %i.s = load i32, ptr %1, align 8, !tbaa !666
  store i32 %i.s, ptr %.sink.i.i, align 8, !tbaa !666
  %i.t = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  store ptr %2, ptr %i.u, align 8, !tbaa !566
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !630  ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit
  %i.x = invoke noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.w, ptr noundef nonnull %.sink.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !630
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_M_clone_nodeILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_.exit
  %.030.in45 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03046 = load ptr, ptr %.030.in45, align 8, !tbaa !631 ; 2 uses
  %.not3247 = icmp eq ptr %.03046, null
  br i1 %.not3247, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.u
  %.03049 = phi ptr [ %.030, %bb.u ], [ %.03046, %bb.j ] ; 4 uses
  %.03148 = phi ptr [ %.sink.i.i36, %bb.u ], [ %.sink.i.i, %bb.j ] ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !684  ; 7 uses
  %.not.i.i.i34 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i34, label %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !566 ; 5 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !684
  %.not9.i.i.i35 = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i.i35, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !630
  %i.ae = icmp eq ptr %i.ad, %i.z
  br i1 %i.ae, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.ac, align 8, !tbaa !630
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !631 ; 2 uses
  %.not10.i.i.i37 = icmp eq ptr %i.ag, null
  br i1 %.not10.i.i.i37, label %bb.q, label %.preheader.i.i.i38

.preheader.i.i.i38:                               ; preds = %bb.m, %.preheader.i.i.i38
  %storemerge.i.i.i39 = phi ptr [ %i.ai, %.preheader.i.i.i38 ], [ %i.ag, %bb.m ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i39, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !630 ; 2 uses
  %.not11.i.i.i40 = icmp eq ptr %i.ai, null
  br i1 %.not11.i.i.i40, label %bb.n, label %.preheader.i.i.i38, !llvm.loop !1332

bb.n:                                             ; preds = %.preheader.i.i.i38
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i39, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !631 ; 2 uses
  %.not12.i.i.i41 = icmp eq ptr %i.ak, null
  %spec.store.select.i.i.i42 = select i1 %.not12.i.i.i41, ptr %storemerge.i.i.i39, ptr %i.ak
  store ptr %spec.store.select.i.i.i42, ptr %i.a, align 8, !tbaa !684
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr null, ptr %i.al, align 8, !tbaa !631
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  store ptr null, ptr %3, align 8, !tbaa !683
  br label %bb.q

_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43: ; preds = %.lr.ph
  %i.am = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43
  %.sink.i.i36 = phi ptr [ %i.z, %bb.p ], [ %i.z, %bb.m ], [ %i.z, %bb.n ], [ %i.z, %bb.o ], [ %i.am, %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43 ] ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03049, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink.i.i36, i64 32
  %i.ap = load i64, ptr %i.an, align 4
  store i64 %i.ap, ptr %i.ao, align 4
  %i.aq = load i32, ptr %.03049, align 8, !tbaa !666
  store i32 %i.aq, ptr %.sink.i.i36, align 8, !tbaa !666
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink.i.i36, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.03148, i64 16
  store ptr %.sink.i.i36, ptr %i.as, align 8, !tbaa !631
  %i.at = getelementptr inbounds nuw i8, ptr %.sink.i.i36, i64 8
  store ptr %.03148, ptr %i.at, align 8, !tbaa !566
  %i.au = getelementptr inbounds nuw i8, ptr %.03049, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !630 ; 2 uses
  %.not33 = icmp eq ptr %i.av, null
  br i1 %.not33, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = invoke noundef ptr @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.av, ptr noundef nonnull %.sink.i.i36, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink.i.i36, i64 24
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !630
  br label %bb.u

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43, %bb.r, %bb.h
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          catch ptr null
  %.0 = extractvalue { ptr, i32 } %lpad.loopexit.split-lp59, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %.0) #32 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.sink.i.i)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #36
          to label %bb.y unwind label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.q
  %.030.in = getelementptr inbounds nuw i8, ptr %.03049, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !631 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !1333

bb.v:                                             ; preds = %bb.t, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  resume { ptr, i32 } %i.az

._crit_edge:                                      ; preds = %bb.u, %bb.j
  ret ptr %.sink.i.i

bb.x:                                             ; preds = %bb.v
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #34
  unreachable

bb.y:                                             ; preds = %bb.t
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIwEaSIwEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !456
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !457
  store i32 0, ptr %i.b, align 8, !tbaa !384
  call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  %i.d = load ptr, ptr %2, align 8, !tbaa !326    ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_ZN4core6stringIwE5clearEb.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8, !tbaa !252
  %i.g = shl i64 %i.f, 2
  %i.h = add i64 %i.g, 4
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #33
  br label %_ZN4core6stringIwE5clearEb.exit

_ZN4core6stringIwE5clearEb.exit:                  ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !326
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i64 @wcslen(ptr noundef nonnull %1) #37 ; 5 uses
  %i.l = and i64 %i.k, 4294967295                 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !457
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i32 noundef signext 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = and i64 %i.k, 4294967295                 ; 2 uses
  %.not18 = icmp eq i64 %i.p, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.q = load ptr, ptr %0, align 8, !tbaa !326    ; 7 uses
  %wide.trip.count = and i64 %i.k, 4294967295     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = sub i64 %i.a, %i.r
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.k, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !384
  %wide.load24 = load <4 x i32>, ptr %i.u, align 4, !tbaa !384
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %wide.load, ptr %i.v, align 4, !tbaa !384
  store <4 x i32> %wide.load24, ptr %i.w, align 4, !tbaa !384
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1334

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.z = load i32, ptr %i.y, align 4, !tbaa !384
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.prol
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !384
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1335

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %i.p
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.f
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !457
  %i.ae = icmp ugt i64 %i.ad, %i.l
  br i1 %i.ae, label %bb.g, label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !384
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !384
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !384
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !384
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !384
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.1
  store i32 %i.am, ptr %i.an, align 4, !tbaa !384
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !384
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.2
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !384
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1336

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i32 noundef signext 0)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.c, %_ZN4core6stringIwE5clearEb.exit
  ret ptr %0
}

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIcEaSIcEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !251
  store i8 0, ptr %i.a, align 8, !tbaa !252
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  %i.c = load ptr, ptr %2, align 8, !tbaa !253    ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZN4core6stringIcE5clearEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !252
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #33
  br label %_ZN4core6stringIcE5clearEb.exit

_ZN4core6stringIcE5clearEb.exit:                  ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !253
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37 ; 5 uses
  %i.j = and i64 %i.i, 4294967295                 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !251
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i8 noundef signext 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = and i64 %i.i, 4294967295
  %.not18 = icmp eq i64 %i.n, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %wide.trip.count = and i64 %i.i, 4294967295
  %i.o = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.p = icmp ult i64 %i.o, 3
  br i1 %i.p, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.i, 4294967292
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.r = load i8, ptr %i.q, align 1, !tbaa !252
  %i.s = load ptr, ptr %0, align 8, !tbaa !253
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.epil
  store i8 %i.r, ptr %i.t, align 1, !tbaa !252
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !1337

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.f
  %i.u = load i64, ptr %i.k, align 8, !tbaa !251
  %i.v = icmp ugt i64 %i.u, %i.j
  br i1 %i.v, label %bb.g, label %bb.h
end_hunk_4
