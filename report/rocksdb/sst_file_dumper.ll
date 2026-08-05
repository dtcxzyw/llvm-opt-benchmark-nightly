inline.NumInlined: 2585
inline.NumDeleted: 1325
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb13SstFileDumper19ShowCompressionSizeENS_15CompressionTypeERKNS_18CompressionOptionsE:bb.a
  %i.jr = load i8, ptr %i.jn, align 2, !tbaa !30, !noalias !748
  br label %bb.bg

bb.bf:                                            ; preds = %._crit_edge.i.i108
  %i.js = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.jt = or disjoint i8 %i.js, 48
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %storemerge.i.i = phi i8 [ %i.jt, %bb.bf ], [ %i.jr, %bb.be ]
  store i8 %storemerge.i.i, ptr %i.iu, align 1, !tbaa !30
  %i.ju = load ptr, ptr %25, align 8, !tbaa !28
  %i.jv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hv, ptr noundef nonnull @.str.48, ptr noundef %i.ju) #27 ; 0 uses
  %i.jw = load ptr, ptr %25, align 8, !tbaa !28   ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.il
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.bg
  %i.jy = load i64, ptr %i.il, align 8, !tbaa !30
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  %i.ka = load ptr, ptr @stdout, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  %i.kb = load i64, ptr %22, align 8, !tbaa !747  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %i.kc = call i64 @llvm.abs.i64(i64 %i.kb, i1 false) ; 5 uses
  %i.kd = icmp ult i64 %i.kc, 10
  br i1 %i.kd, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i117, label %.lr.ph.i.i114

.lr.ph.i.i114:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %bb.bm
  %.02229.i.i115 = phi i64 [ %i.kk, %bb.bm ], [ %i.kc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ] ; 5 uses
  %.02328.i.i116 = phi i32 [ %i.kl, %bb.bm ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ] ; 4 uses
  %i.ke = icmp ult i64 %.02229.i.i115, 100
  br i1 %i.ke, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph.i.i114
  %i.kf = add i32 %.02328.i.i116, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i117

bb.bi:                                            ; preds = %.lr.ph.i.i114
  %i.kg = icmp ult i64 %.02229.i.i115, 1000
  br i1 %i.kg, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.kh = add i32 %.02328.i.i116, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i117

bb.bk:                                            ; preds = %bb.bi
  %i.ki = icmp ult i64 %.02229.i.i115, 10000
  br i1 %i.ki, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.kj = add i32 %.02328.i.i116, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i117

bb.bm:                                            ; preds = %bb.bk
  %i.kk = udiv i64 %.02229.i.i115, 10000
  %i.kl = add i32 %.02328.i.i116, 4               ; 2 uses
  %i.km = icmp ult i64 %.02229.i.i115, 100000
  br i1 %i.km, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i117, label %.lr.ph.i.i114, !llvm.loop !751

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i117: ; preds = %bb.bm, %bb.bl, %bb.bj, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %.0.i.i118 = phi i32 [ %i.kj, %bb.bl ], [ %i.kf, %bb.bh ], [ %i.kh, %bb.bj ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %i.kl, %bb.bm ] ; 2 uses
  %.lobit.i119 = lshr i64 %i.kb, 63               ; 2 uses
  %i.kn = trunc nuw nsw i64 %.lobit.i119 to i32
  %i.ko = add i32 %.0.i.i118, %i.kn               ; 3 uses
  %i.kp = zext i32 %i.ko to i64                   ; 5 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 8 uses
  store ptr %i.kq, ptr %26, align 8, !tbaa !25, !alias.scope !753
  %i.kr = icmp ugt i32 %i.ko, 15
  br i1 %i.kr, label %.noexc.i127, label %bb.bn

.noexc.i127:                                      ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i117
  %i.ks = add nuw nsw i64 %i.kp, 1
  %i.kt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ks) #29
          to label %.noexc128 unwind label %bb.by ; 2 uses

.noexc128:                                        ; preds = %.noexc.i127
  store ptr %i.kt, ptr %26, align 8, !tbaa !28, !alias.scope !753
  store i64 %i.kp, ptr %i.kq, align 8, !tbaa !30, !alias.scope !753
  br label %bb.bp

bb.bn:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i117
  switch i32 %i.ko, label %bb.bp [
    i32 0, label %bb.bq
    i32 1, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn
  store i8 45, ptr %i.kq, align 8, !tbaa !30, !alias.scope !753
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn, %.noexc128
  %i.ku = phi ptr [ %i.kt, %.noexc128 ], [ %i.kq, %bb.bn ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ku, i8 45, i64 %i.kp, i1 false)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.kv = phi ptr [ %i.kq, %bb.bn ], [ %i.ku, %bb.bp ], [ %i.kq, %bb.bo ]
  %i.kw = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.kp, ptr %i.kw, align 8, !tbaa !31, !alias.scope !753
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kp
  store i8 0, ptr %i.kx, align 1, !tbaa !30
  %i.ky = load ptr, ptr %26, align 8, !tbaa !28, !alias.scope !753
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.lobit.i119 ; 4 uses
  %i.la = icmp ugt i64 %i.kc, 99
  br i1 %i.la, label %.lr.ph.preheader.i.i123, label %._crit_edge.i.i120

.lr.ph.preheader.i.i123:                          ; preds = %bb.bq
  %i.lb = add i32 %.0.i.i118, -1
  br label %.lr.ph.i13.i124

.lr.ph.i13.i124:                                  ; preds = %.lr.ph.i13.i124, %.lr.ph.preheader.i.i123
  %.020.i.i125 = phi i64 [ %i.le, %.lr.ph.i13.i124 ], [ %i.kc, %.lr.ph.preheader.i.i123 ] ; 3 uses
  %.01819.i.i126 = phi i32 [ %i.lo, %.lr.ph.i13.i124 ], [ %i.lb, %.lr.ph.preheader.i.i123 ] ; 3 uses
  %i.lc = urem i64 %.020.i.i125, 100
  %i.ld = shl nuw nsw i64 %i.lc, 1
  %i.le = udiv i64 %.020.i.i125, 100              ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ld ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !30, !noalias !753
  %i.li = zext i32 %.01819.i.i126 to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.li
  store i8 %i.lh, ptr %i.lj, align 1, !tbaa !30
  %i.lk = load i8, ptr %i.lf, align 2, !tbaa !30, !noalias !753
  %i.ll = add i32 %.01819.i.i126, -1
  %i.lm = zext i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.lm
  store i8 %i.lk, ptr %i.ln, align 1, !tbaa !30
  %i.lo = add i32 %.01819.i.i126, -2
  %i.lp = icmp ugt i64 %.020.i.i125, 9999
  br i1 %i.lp, label %.lr.ph.i13.i124, label %._crit_edge.i.i120, !llvm.loop !752

._crit_edge.i.i120:                               ; preds = %.lr.ph.i13.i124, %bb.bq
  %.0.lcssa.i.i121 = phi i64 [ %i.kc, %bb.bq ], [ %i.le, %.lr.ph.i13.i124 ] ; 3 uses
  %i.lq = icmp samesign ugt i64 %.0.lcssa.i.i121, 9
  br i1 %i.lq, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %._crit_edge.i.i120
  %i.lr = shl nuw nsw i64 %.0.lcssa.i.i121, 1
  %i.ls = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.lr ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 1
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !30, !noalias !753
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  store i8 %i.lu, ptr %i.lv, align 1, !tbaa !30
  %i.lw = load i8, ptr %i.ls, align 2, !tbaa !30, !noalias !753
  br label %bb.bt

bb.bs:                                            ; preds = %._crit_edge.i.i120
  %i.lx = trunc nuw nsw i64 %.0.lcssa.i.i121 to i8
  %i.ly = or disjoint i8 %i.lx, 48
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %storemerge.i.i122 = phi i8 [ %i.ly, %bb.bs ], [ %i.lw, %bb.br ]
  store i8 %storemerge.i.i122, ptr %i.kz, align 1, !tbaa !30
  %i.lz = load ptr, ptr %26, align 8, !tbaa !28
  %i.ma = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ka, ptr noundef nonnull @.str.49, ptr noundef %i.lz) #27 ; 0 uses
  %i.mb = load ptr, ptr %26, align 8, !tbaa !28   ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.kq
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.bt
  %i.md = load i64, ptr %i.kq, align 8, !tbaa !30
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  %i.mf = load ptr, ptr %i.e, align 8, !tbaa !735 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !22
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 192
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = invoke noundef i64 %i.mi(ptr noundef nonnull align 8 dereferenceable(33) %i.mf, i32 noundef 107)
          to label %bb.bu unwind label %bb.bz     ; 3 uses

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.mk = load ptr, ptr %i.e, align 8, !tbaa !735 ; 2 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !22
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 192
  %i.mn = load ptr, ptr %i.mm, align 8
  %i.mo = invoke noundef i64 %i.mn(ptr noundef nonnull align 8 dereferenceable(33) %i.mk, i32 noundef 114)
          to label %bb.bv unwind label %bb.ca     ; 3 uses

bb.bv:                                            ; preds = %bb.bu
  %i.mp = add i64 %i.mo, %i.mj                    ; 2 uses
  %spec.select = call i64 @llvm.umax.i64(i64 %i.mp, i64 %i.hb) ; 3 uses
  %i.mq = sub i64 %spec.select, %i.mp             ; 2 uses
  %i.mr = icmp eq i64 %spec.select, 0             ; 3 uses
  %i.ms = uitofp i64 %spec.select to double       ; 2 uses
  %i.mt = insertelement <2 x i64> poison, i64 %i.mj, i64 0
  %i.mu = insertelement <2 x i64> %i.mt, i64 %i.mq, i64 1
  %i.mv = uitofp <2 x i64> %i.mu to <2 x double>
  %i.mw = insertelement <2 x double> poison, double %i.ms, i64 0
  %i.mx = shufflevector <2 x double> %i.mw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.my = fdiv <2 x double> %i.mv, %i.mx
  %27 = fmul <2 x double> %i.my, splat (double 1.000000e+02) ; 2 uses
  %28 = extractelement <2 x double> %27, i64 0
  %i.mz = select i1 %i.mr, double 0.000000e+00, double %28
  %i.na = extractelement <2 x double> %27, i64 1
  %i.nb = select i1 %i.mr, double 0.000000e+00, double %i.na
  %i.nc = uitofp i64 %i.mo to double
  %i.nd = fdiv double %i.nc, %i.ms
  %i.ne = fmul double %i.nd, 1.000000e+02
  %i.nf = select i1 %i.mr, double 0.000000e+00, double %i.ne
  %i.ng = load ptr, ptr @stdout, align 8, !tbaa !230
  %i.nh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ng, ptr noundef nonnull @.str.50, i64 noundef %i.mj, double noundef %i.mz) #27 ; 0 uses
  %i.ni = load ptr, ptr @stdout, align 8, !tbaa !230
  %i.nj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ni, ptr noundef nonnull @.str.51, i64 noundef %i.mq, double noundef %i.nb) #27 ; 0 uses
  %i.nk = load ptr, ptr @stdout, align 8, !tbaa !230
  %i.nl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nk, ptr noundef nonnull @.str.52, i64 noundef %i.mo, double noundef %i.nf) #27 ; 0 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.nm, align 8, !tbaa !425, !alias.scope !756
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !756
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.bw:                                            ; preds = %bb.at
  %i.nn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %bb.ce

bb.bx:                                            ; preds = %.noexc.i109
  %i.no = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  br label %bb.ce

bb.by:                                            ; preds = %.noexc.i127
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %bb.ce

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ca:                                            ; preds = %bb.bu
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

_ZN7rocksdb6StatusC2EOS0_.exit:                   ; preds = %bb.am, %bb.an, %bb.bv
  %i.ns = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !234 ; 2 uses
  %.not.i.i133 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i133, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.nt) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @_ZN7rocksdb15TablePropertiesD2Ev(ptr noundef nonnull align 8 dead_on_return(784) dereferenceable(784) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  %i.nu = getelementptr inbounds nuw i8, ptr %17, i64 160
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !28 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %17, i64 176 ; 2 uses
  %i.nx = icmp eq ptr %i.nv, %i.nw
  br i1 %i.nx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.ny = load i64, ptr %i.nw, align 8, !tbaa !30
  %i.nz = add i64 %i.ny, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.nz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.oa = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !28 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %17, i64 144 ; 2 uses
  %i.od = icmp eq ptr %i.ob, %i.oc
  br i1 %i.od, label %_ZN7rocksdb19TableBuilderOptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.oe = load i64, ptr %i.oc, align 8, !tbaa !30
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.ob, i64 noundef %i.of) #30
  br label %_ZN7rocksdb19TableBuilderOptionsD2Ev.exit

_ZN7rocksdb19TableBuilderOptionsD2Ev.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.og = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.oh = icmp eq ptr %i.og, %i.dm
  br i1 %i.oh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %_ZN7rocksdb19TableBuilderOptionsD2Ev.exit
  %i.oi = load i64, ptr %i.dm, align 8, !tbaa !30
  %i.oj = add i64 %i.oi, 1
  call void @_ZdlPvm(ptr noundef %i.og, i64 noundef %i.oj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %_ZN7rocksdb19TableBuilderOptionsD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %i.ok = load ptr, ptr %15, align 8, !tbaa !759  ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !762 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ok, %i.om
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZSt8_DestroyISt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.or, %_ZSt8_DestroyISt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.ok, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ] ; 2 uses
  %i.on = load ptr, ptr %.05.i.i.i, align 8, !tbaa !763 ; 3 uses
  %.not.i.i.i.i.i.i137 = icmp eq ptr %i.on, null
  br i1 %.not.i.i.i.i.i.i137, label %_ZSt8_DestroyISt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN7rocksdb26InternalTblPropCollFactoryEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb26InternalTblPropCollFactoryEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !22
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load ptr, ptr %i.op, align 8
  call void %i.oq(ptr noundef nonnull align 8 dereferenceable(8) %i.on) #27, !inline_history !765
  br label %_ZSt8_DestroyISt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb26InternalTblPropCollFactoryEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.or = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %i.or, %i.om
  br i1 %.not.i.i.i138, label %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !766

_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %15, align 8, !tbaa !759
  br label %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.os = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ok, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.os, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.ot = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !767
  %i.ov = ptrtoint ptr %i.ou to i64
  %i.ow = ptrtoint ptr %i.os to i64
  %i.ox = sub i64 %i.ov, %i.ow
  call void @_ZdlPvm(ptr noundef nonnull %i.os, i64 noundef %i.ox) #30
  br label %_ZNSt6vectorISt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.oy = getelementptr inbounds nuw i8, ptr %12, i64 136
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !235 ; 2 uses
  %.not.i.i139 = icmp eq ptr %i.oz, null
  br i1 %.not.i.i139, label %_ZN7rocksdb11ReadOptionsD2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.pa = invoke noundef zeroext i1 %i.oz(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i32 noundef 3)
          to label %_ZN7rocksdb11ReadOptionsD2Ev.exit unwind label %bb.cd ; 0 uses

bb.cd:                                            ; preds = %bb.cc
  %i.pb = landingpad { ptr, i32 }
          catch ptr null
  %i.pc = extractvalue { ptr, i32 } %i.pb, 0
  call void @__clang_call_terminate(ptr %i.pc) #31
  unreachable

_ZN7rocksdb11ReadOptionsD2Ev.exit:                ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb26InternalTblPropCollFactoryESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @_ZN7rocksdb16MutableCFOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.pd = getelementptr inbounds nuw i8, ptr %9, i64 600
  call void @_ZN7rocksdb18ImmutableCFOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(275) dereferenceable(275) %i.pd) #27
  call void @_ZN7rocksdb18ImmutableDBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(600) dereferenceable(875) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.b) #27
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

bb.ce:                                            ; preds = %bb.bw, %bb.bx, %bb.by, %bb.ca, %bb.bz
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %i.nr, %bb.ca ], [ %i.nn, %bb.bw ], [ %i.np, %bb.by ], [ %i.no, %bb.bx ], [ %i.nq, %bb.bz ] ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !234 ; 2 uses
  %.not.i.i140 = icmp eq ptr %i.pf, null
  br i1 %.not.i.i140, label %_ZN7rocksdb6StatusD2Ev.exit142, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i141

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i141: ; preds = %bb.ce
  call void @_ZdaPv(ptr noundef nonnull %i.pf) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit142

_ZN7rocksdb6StatusD2Ev.exit142:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i141, %bb.ce, %bb.as
  %.pn49.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gz, %bb.as ], [ %.pn49.pn.pn.pn, %bb.ce ], [ %.pn49.pn.pn.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @_ZN7rocksdb15TablePropertiesD2Ev(ptr noundef nonnull align 8 dead_on_return(784) dereferenceable(784) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  call void @_ZN7rocksdb19TableBuilderOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %17) #27
  br label %bb.cf

bb.cf:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %.pn49.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn.pn, %_ZN7rocksdb6StatusD2Ev.exit142 ], [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.pg = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
end_hunk_0
