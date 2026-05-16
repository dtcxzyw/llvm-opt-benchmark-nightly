inline.NumInlined: 1525
inline.NumDeleted: 827
begin_hunk_0_@_ZN8facebook5velox6common15FileInputStream13readNextRangeEv:bb.a

bb.y:                                             ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit
  %i.bd = icmp slt i32 %i.ah, 1
  br i1 %i.bd, label %bb.z, label %bb.ae, !prof !45

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !147
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  store i32 0, ptr %2, align 16, !tbaa !49, !alias.scope !150, !noalias !147
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.ah, ptr %i.bf, align 16, !tbaa !49, !alias.scope !150, !noalias !147
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bh = load i64, ptr %i.be, align 8, !tbaa !145, !noalias !153
  store i64 %i.bh, ptr %i.bg, align 16, !tbaa !49, !alias.scope !150, !noalias !147
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.10, i64 47, i64 1041, ptr nonnull %2)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !147
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6common15FileInputStream13readNextRangeEvE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.10) #31
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ad:                                            ; preds = %bb.aa
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ad
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !49
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ac
  %.pn18 = phi { ptr, i32 } [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bi, %bb.ac ], [ %i.bj, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.ba

bb.ae:                                            ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !154
  %i.br = add i32 %i.bq, 1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !55
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !60
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 3
  %i.cb = urem i64 %i.bs, %i.ca
  %i.cc = trunc nuw i64 %i.cb to i32
  store i32 %i.cc, ptr %i.bp, align 8, !tbaa !154
  br label %bb.ay

bb.af:                                            ; preds = %.critedge
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !15 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !155
  %i.ch = sub i64 %i.ce, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !145
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %i.cj, i64 %i.ch) ; 3 uses
  %i.ck = trunc i64 %.sroa.speculated.i to i32    ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %bb.ag, label %bb.al, !prof !45

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26, !noalias !156
  store i32 0, ptr %1, align 16, !tbaa !49, !alias.scope !159, !noalias !156
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.ck, ptr %i.cm, align 16, !tbaa !49, !alias.scope !159, !noalias !156
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.ce, ptr %i.cn, align 16, !tbaa !49, !alias.scope !159, !noalias !156
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.10, i64 47, i64 1041, ptr nonnull %1)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26, !noalias !156
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6common15FileInputStream13readNextRangeEvE18veloxCheckFailArgs_2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.10) #31
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.ak:                                            ; preds = %bb.ah
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.ak
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !49
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.aj
  %.pn13 = phi { ptr, i32 } [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.co, %bb.aj ], [ %i.cp, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ba

bb.al:                                            ; preds = %bb.af
  %i.cv = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !154
  %i.cz = zext i32 %i.cy to i64
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !60
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !57 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 44
  %i.de = load i8, ptr %i.dd, align 4, !tbaa !115
  %i.df = and i8 %i.de, 2
  %.not.i = icmp eq i8 %i.df, 0
  br i1 %.not.i, label %bb.an, label %bb.am, !prof !117

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs) #31
          to label %.noexc37 unwind label %bb.av

.noexc37:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.dg = and i64 %.sroa.speculated.i, 2147483647
  %i.dh = load i64, ptr %i.cf, align 8, !tbaa !155
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !13 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.dm, align 8, !tbaa !162
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.dn, i8 0, i64 25, i1 false)
  %i.do = load ptr, ptr %i.dj, align 8, !tbaa !11
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = invoke { i64, ptr } %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i64 noundef %i.dh, i64 noundef %i.dg, ptr noundef %i.dl, ptr noundef nonnull align 8 dereferenceable(49) %7)
          to label %bb.ao unwind label %bb.aw     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !169 ; 8 uses
  %.not.i.i.i38 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i38, label %_ZN8facebook5velox13FileIoContextD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 4 uses
  %i.dv = load atomic i64, ptr %i.du acquire, align 8 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 4294967297
  %i.dx = trunc i64 %i.dv to i32                  ; 2 uses
  br i1 %i.dw, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.du, align 8, !tbaa !170
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i32 0, ptr %i.dy, align 4, !tbaa !172
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !11
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #26, !inline_history !173
  %i.ec = load ptr, ptr %i.dt, align 8, !tbaa !11
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #26, !inline_history !173
  br label %_ZN8facebook5velox13FileIoContextD2Ev.exit

bb.ar:                                            ; preds = %bb.ap
  %i.ef = load i8, ptr @__libc_single_threaded, align 1, !tbaa !49
  %.not.i.i.i.i = icmp eq i8 %i.ef, 0
  br i1 %.not.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eg = add nsw i32 %i.dx, -1
  store i32 %i.eg, ptr %i.du, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.eh = atomicrmw volatile add ptr %i.du, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i = phi i32 [ %i.dx, %bb.as ], [ %i.eh, %bb.at ]
  %i.ei = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ei, label %bb.au, label %_ZN8facebook5velox13FileIoContextD2Ev.exit, !prof !45

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #26
  br label %_ZN8facebook5velox13FileIoContextD2Ev.exit

_ZN8facebook5velox13FileIoContextD2Ev.exit:       ; preds = %bb.ao, %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.au
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %i.ej) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.ek = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.el = sub i64 %i.ek, %i.cv
  br label %bb.ay

bb.av:                                            ; preds = %bb.am
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.an
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox13FileIoContextD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pn = phi { ptr, i32 } [ %i.en, %bb.aw ], [ %i.em, %bb.av ]
  %i.eo = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26 ; 0 uses
  br label %bb.ba

bb.ay:                                            ; preds = %bb.ae, %_ZN8facebook5velox13FileIoContextD2Ev.exit
  %.065 = phi i64 [ 0, %bb.ae ], [ %i.el, %_ZN8facebook5velox13FileIoContextD2Ev.exit ]
  %.0 = phi i64 [ %i.ag, %bb.ae ], [ %.sroa.speculated.i, %_ZN8facebook5velox13FileIoContextD2Ev.exit ]
  %i.ep = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.es = load i32, ptr %i.er, align 8, !tbaa !154
  %i.et = zext i32 %i.es to i64
  %i.eu = load ptr, ptr %i.eq, align 8, !tbaa !60
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !57 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 44
  %i.ey = load i8, ptr %i.ex, align 4, !tbaa !115
  %i.ez = and i8 %i.ey, 2
  %.not.i41 = icmp eq i8 %i.ez, 0
  br i1 %.not.i41, label %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit, label %bb.az, !prof !117

bb.az:                                            ; preds = %bb.ay
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs) #31
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit: ; preds = %bb.ay
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !112
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !174
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !145
  store ptr %i.fc, ptr %i.a, align 8, !tbaa !7
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !155
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fh = sub i64 %.065, %i.e
  %i.fi = add i64 %i.fh, %i.ep
  %i.fj = and i64 %.0, 2147483647                 ; 3 uses
  store i64 %i.fj, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !145
  %i.fk = add i64 %i.fe, %i.fj
  store i64 %i.fk, ptr %i.fd, align 8, !tbaa !155
  %i.fl = load <2 x i64>, ptr %i.fg, align 8, !tbaa !145
  %i.fm = insertelement <2 x i64> poison, i64 %i.fj, i64 0
  %i.fn = insertelement <2 x i64> %i.fm, i64 %i.fi, i64 1
  %i.fo = add <2 x i64> %i.fl, %i.fn
  store <2 x i64> %i.fo, ptr %i.fg, align 8, !tbaa !145
  %i.fp = load i32, ptr %i.ff, align 8, !tbaa !175
  %i.fq = add i32 %i.fp, 1
  store i32 %i.fq, ptr %i.ff, align 8, !tbaa !175
  call void @_ZN8facebook5velox6common15FileInputStream19maybeIssueReadaheadEv(ptr noundef nonnull align 8 dereferenceable(152) %0)
  ret void

bb.ba:                                            ; preds = %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.x, %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit30
  %.pn20 = phi { ptr, i32 } [ %i.bc, %bb.x ], [ %.pn18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %bb.ax ], [ %.pn15.pn, %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit30 ], [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ]
  %i.fr = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26 ; 0 uses
  resume { ptr, i32 } %.pn20
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly10SemiFutureImED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  invoke void @_ZN5folly10SemiFutureImE23releaseDeferredExecutorEPNS_7futures6detail4CoreImEE(ptr noundef %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5folly7futures6detail10FutureBaseImED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.b) #26
  br label %_ZN5folly7futures6detail10FutureBaseImED2Ev.exit

_ZN5folly7futures6detail10FutureBaseImED2Ev.exit: ; preds = %bb.b, %bb.c
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #34
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !57 ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = atomicrmw sub ptr %i.e, i32 1 acq_rel, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.sink.split.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %.noexc.i.i.i.i.i unwind label %bb.c, !inline_history !78

.noexc.i.i.i.i.i:                                 ; preds = %.sink.split.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !11
  %..i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 8, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %..i.i.i.i.i.i
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i unwind label %bb.c, !inline_history !78

bb.c:                                             ; preds = %.noexc.i.i.i.i.i, %.sink.split.i.i.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #34
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i: ; preds = %.noexc.i.i.i.i.i, %bb.b, %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !176

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.s = phi ptr [ %.pr, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #32
  br label %_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8facebook5velox6common15FileInputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(152) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6common15FileInputStreamD2Ev:bb.a
  br i1 %.not.i.i.i, label %_ZN5folly10SemiFutureImED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.r) #26
  br label %_ZN5folly10SemiFutureImED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #34
  unreachable

_ZN5folly10SemiFutureImED2Ev.exit:                ; preds = %bb.i, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !60   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly10SemiFutureImED2Ev.exit, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.am, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.v, %_ZN5folly10SemiFutureImED2Ev.exit ] ; 2 uses
  %i.y = load ptr, ptr %.05.i.i.i, align 8, !tbaa !57 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = atomicrmw sub ptr %i.z, i32 1 acq_rel, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.l
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.m, !inline_history !78

.noexc.i.i.i.i.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !79
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !11
  %..i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 8, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %..i.i.i.i.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i unwind label %bb.m, !inline_history !78

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #34
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %bb.l, %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.am, %i.x
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !176

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.u, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN5folly10SemiFutureImED2Ev.exit
  %i.an = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.v, %_ZN5folly10SemiFutureImED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !56
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #32
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !13 ; 3 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8facebook5velox8ReadFileESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN8facebook5velox8ReadFileEEclEPS2_.exit.i

_ZNKSt14default_deleteIN8facebook5velox8ReadFileEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.au) #26, !inline_history !99
  br label %_ZNSt10unique_ptrIN8facebook5velox8ReadFileESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox8ReadFileESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev.exit, %_ZNKSt14default_deleteIN8facebook5velox8ReadFileEEclEPS2_.exit.i
  ret void

bb.o:                                             ; preds = %bb.f, %bb.g, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %bb.d
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #34
  unreachable

bb.p:                                             ; preds = %bb.c
  tail call void @__clang_call_terminate(ptr %i.e) #34
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNR5folly10SemiFutureImE4waitEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::deque", align 8        ; 4 uses
  %2 = alloca %class.anon.172, align 8            ; 4 uses
  %3 = alloca %class.anon.134, align 8            ; 4 uses
  %4 = alloca %"class.folly::Promise", align 8    ; 6 uses
  %5 = alloca %"class.folly::SemiFuture", align 8 ; 5 uses
  %6 = alloca %class.anon.120, align 8            ; 8 uses
  %7 = alloca %"class.folly::ExecutorKeepAlive", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_13FutureInvalidEJEEEvDpT0_() #23
  unreachable

_ZNK5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !177
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit, label %_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit.thread

_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit: ; preds = %_ZNK5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i
  %i.e = tail call noundef ptr @_ZNK5folly7futures6detail19KeepAliveOrDeferred19getDeferredExecutorEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #33 ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %i.h, align 16, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEE10uninitCallES6_SA_SC_RNS1_4DataE, ptr %i.i, align 16, !tbaa !178
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store ptr null, ptr %i.j, align 8, !tbaa !179
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i8 1, ptr %i.k, align 16, !tbaa !180
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 81
  store i8 2, ptr %i.l, align 1, !tbaa !181
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 82
  store i8 0, ptr %i.m, align 2, !tbaa !181
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i32 0, ptr %i.n, align 8, !tbaa !177
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly7futures6detail4CoreImEE, i64 16), ptr %i.g, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.g, ptr %5, align 8, !tbaa !40, !alias.scope !182
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i8 0, ptr %4, align 8, !tbaa !185
  store i8 1, ptr %6, align 8, !tbaa !186
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr null, ptr %i.f, align 8, !tbaa !188
  store ptr %i.g, ptr %i.p, align 8, !tbaa !189
  invoke void @_ZN5folly7futures6detail10FutureBaseImE12setCallback_IZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSC_NS1_18InlineContinuationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 1)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !189  ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i18, label %_ZZNR5folly10SemiFutureImE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i8, ptr %6, align 8, !tbaa !186, !range !84, !noundef !85
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.q) #26
  %.pre.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !189
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = phi ptr [ %.pre.i.i.i, %bb.f ], [ %i.q, %bb.e ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.t)
          to label %_ZZNR5folly10SemiFutureImE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #34
  unreachable

_ZZNR5folly10SemiFutureImE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev.exit: ; preds = %bb.d, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.w = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33
          to label %.noexc19 unwind label %bb.n   ; 17 uses

.noexc19:                                         ; preds = %_ZZNR5folly10SemiFutureImE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5folly7futures6detail12WaitExecutorE, i64 16), ptr %i.w, align 8, !tbaa !11, !noalias !190
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %i.x, i8 0, i64 80, i1 false), !noalias !190
  invoke void @_ZNSt11_Deque_baseIN5folly8FunctionIFvvEEESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(92) %i.x, i64 noundef 0)
          to label %_ZNK5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEE4copyEv.exit unwind label %bb.i, !noalias !190

bb.i:                                             ; preds = %.noexc19
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 120) #32, !noalias !190
  br label %bb.z

_ZNK5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEE4copyEv.exit: ; preds = %.noexc19
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  store i8 0, ptr %i.z, align 8, !tbaa !193, !noalias !190
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  store i32 0, ptr %i.aa, align 8, !tbaa !203, !noalias !190
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  store i64 0, ptr %i.ab, align 8, !tbaa !205, !noalias !190
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  store i64 1, ptr %i.ac, align 8, !tbaa !205, !noalias !190
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !11, !noalias !207
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !207
  %i.ah = call noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #26, !noalias !207, !inline_history !212
  %not..i.i = xor i1 %i.ah, true
  %i.ai = zext i1 %not..i.i to i64
  %spec.select.i.i = or disjoint i64 %i.ad, %i.ai
  store i64 %spec.select.i.i, ptr %7, align 8, !tbaa !122
  invoke void @_ZN5folly7futures6detail16DeferredExecutor11setExecutorENS_17ExecutorKeepAliveINS_8ExecutorEEEb(ptr noundef nonnull align 16 dereferenceable(112) %i.e, ptr noundef nonnull %7, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZNK5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEE4copyEv.exit
  %i.aj = load i64, ptr %7, align 8, !tbaa !122   ; 2 uses
  %i.ak = and i64 %i.aj, -4                       ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %.not.i.i20 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i20, label %.lr.ph, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %7, align 8, !tbaa !145
  %i.am = and i64 %i.aj, 3
  %.not3.i.i = icmp eq i64 %i.am, 0
  br i1 %.not3.i.i, label %bb.l, label %.lr.ph

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #26, !inline_history !146
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k, %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.ar = call noundef zeroext i1 @_ZNK5folly7futures6detail8CoreBase9hasResultEv(ptr noundef nonnull align 16 dereferenceable(136) %i.g) #26
  br i1 %i.ar, label %._crit_edge, label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph, %_ZN5folly7futures6detail12WaitExecutor5driveEv.exit
  invoke void @_ZN5folly6fibers5Baton4waitEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %.noexc26 unwind label %.loopexit

.noexc26:                                         ; preds = %.lr.ph61
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.w, ptr %3, align 8, !tbaa !213
  invoke void @_ZN5folly6fibers16runInMainContextIZNS_7futures6detail12WaitExecutor5driveEvEUlvE_EENS_13invoke_detail6traitsIT_E6resultIEEOS8_(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5folly7futures6detail12WaitExecutor5driveEv.exit unwind label %.loopexit

_ZN5folly7futures6detail12WaitExecutor5driveEv.exit: ; preds = %.noexc26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.as = call noundef zeroext i1 @_ZNK5folly7futures6detail8CoreBase9hasResultEv(ptr noundef nonnull align 16 dereferenceable(136) %i.g) #26
  br i1 %i.as, label %._crit_edge, label %.lr.ph61

bb.m:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZZNR5folly10SemiFutureImE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.z

bb.n:                                             ; preds = %_ZZNR5folly10SemiFutureImE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.o:                                             ; preds = %_ZNK5folly17ExecutorKeepAliveINS_7futures6detail12WaitExecutorEE4copyEv.exit
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aw = load i64, ptr %7, align 8, !tbaa !122   ; 2 uses
  %i.ax = and i64 %i.aw, -4                       ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %.not.i.i28 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i28, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 0, ptr %7, align 8, !tbaa !145
  %i.az = and i64 %i.aw, 3
  %.not3.i.i29 = icmp eq i64 %i.az, 0
  br i1 %.not3.i.i29, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #26, !inline_history !146
  br label %bb.y

.loopexit:                                        ; preds = %.lr.ph61, %.noexc26
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

._crit_edge:                                      ; preds = %_ZN5folly7futures6detail12WaitExecutor5driveEv.exit, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.w, ptr %2, align 8, !tbaa !216
  invoke void @_ZZN5folly7futures6detail12WaitExecutor6detachEvENKUlvE_clEv(ptr dead_on_unwind nonnull writable sret(%"class.std::deque") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.r unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %._crit_edge
  call void @_ZNSt5dequeIN5folly8FunctionIFvvEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.bd = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %_ZN5folly7futures6detail10FutureBaseImE6detachEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.bd) #26
  store ptr null, ptr %0, align 8, !tbaa !40
  br label %_ZN5folly7futures6detail10FutureBaseImE6detachEv.exit

_ZN5folly7futures6detail10FutureBaseImE6detachEv.exit: ; preds = %bb.r, %bb.s
  invoke void @_ZN5folly10SemiFutureImE23releaseDeferredExecutorEPNS_7futures6detail4CoreImEE(ptr noundef null)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseImE6detachEv.exit
  %i.be = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i35, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.be) #26
  store ptr null, ptr %0, align 8, !tbaa !40
  br label %bb.w

bb.v:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseImE6detachEv.exit
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #34
  unreachable

bb.w:                                             ; preds = %bb.t, %bb.u
  store ptr %i.g, ptr %0, align 8, !tbaa !40
  %i.bh = load ptr, ptr %i.w, align 8, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #26, !inline_history !218
  invoke void @_ZN5folly10SemiFutureImE23releaseDeferredExecutorEPNS_7futures6detail4CoreImEE(ptr noundef null)
          to label %_ZN5folly7PromiseImED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #34
  unreachable

_ZN5folly7PromiseImED2Ev.exit:                    ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.aa

bb.y:                                             ; preds = %bb.o, %bb.p, %bb.q, %.loopexit.split-lp, %.loopexit
  %.pn11 = phi { ptr, i32 } [ %i.av, %bb.p ], [ %i.av, %bb.o ], [ %i.av, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bm = load ptr, ptr %i.w, align 8, !tbaa !11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #26, !inline_history !218
  br label %bb.z

bb.z:                                             ; preds = %bb.m, %bb.y, %bb.n, %bb.i
  %.pn11.pn.pn = phi { ptr, i32 } [ %i.at, %bb.m ], [ %i.y, %bb.i ], [ %i.au, %bb.n ], [ %.pn11, %bb.y ]
  call void @_ZN5folly10SemiFutureImED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN5folly7PromiseImED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn11.pn.pn

_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit.thread: ; preds = %_ZNK5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i, %_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit
  tail call void @_ZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit.thread, %_ZN5folly7PromiseImED2Ev.exit
  ret ptr %0
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #34
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

declare void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #9

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8facebook5velox6common15FileInputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6common15FileInputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 152) #32
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare noundef i64 @_ZNK8facebook5velox9ByteRange14availableBytesEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNO5folly10SemiFutureImE3viaENS_17ExecutorKeepAliveINS_8ExecutorEEE(ptr dead_on_unwind noalias writable sret(%"class.folly::Future") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::ExecutorKeepAlive", align 8 ; 6 uses
  %4 = alloca %"class.folly::futures::detail::KeepAliveOrDeferred", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_13FutureInvalidEJEEEvDpT0_() #23
  unreachable

_ZNK5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !177
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZNK5folly7futures6detail10FutureBaseImE11getExecutorEv.exit

bb.c:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i
  %i.e = tail call noundef ptr @_ZNK5folly7futures6detail19KeepAliveOrDeferred20getKeepAliveExecutorEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNK5folly7futures6detail10FutureBaseImE11getExecutorEv.exit

_ZNK5folly7futures6detail10FutureBaseImE11getExecutorEv.exit: ; preds = %_ZNK5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i, %bb.c
  %.0.i.i = phi ptr [ %i.e, %bb.c ], [ null, %_ZNK5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i ]
  %i.f = load i64, ptr %2, align 8, !tbaa !122
  %i.g = and i64 %i.f, -4
  %i.h = inttoptr i64 %i.g to ptr
  tail call void @_ZN5folly13async_tracing16logSemiFutureViaEPNS_8ExecutorES2_(ptr noundef %.0.i.i, ptr noundef %i.h) #26
  %i.i = load i64, ptr %2, align 8, !tbaa !122
  %.not27 = icmp eq i64 %i.i, 0
  br i1 %.not27, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseImE11getExecutorEv.exit
  tail call void @_ZN5folly6detail16throw_exception_INS_16FutureNoExecutorEJEEEvDpT0_() #23
  unreachable

bb.e:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseImE11getExecutorEv.exit
  %i.j = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i8, label %bb.f, label %_ZNK5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i9

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5folly6detail16throw_exception_INS_13FutureInvalidEJEEEvDpT0_() #23
  unreachable

_ZNK5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i9: ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !177
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit: ; preds = %_ZNK5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i9
  %i.n = tail call noundef ptr @_ZNK5folly7futures6detail19KeepAliveOrDeferred19getDeferredExecutorEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #26 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.o = load i64, ptr %2, align 8, !tbaa !122, !noalias !219 ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = and i64 %i.o, -3
  br label %_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE4copyEv.exit

bb.i:                                             ; preds = %bb.g
  %i.r = and i64 %i.o, -4                         ; 3 uses
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE4copyEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11, !noalias !222
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !noalias !222
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #26, !noalias !222, !inline_history !225
  %not..i.i = xor i1 %i.w, true
  %i.x = zext i1 %not..i.i to i64
  %spec.select.i.i = or disjoint i64 %i.r, %i.x
  br label %_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE4copyEv.exit

_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE4copyEv.exit: ; preds = %bb.h, %bb.i, %bb.j
  %storemerge.i = phi i64 [ %i.q, %bb.h ], [ 0, %bb.i ], [ %spec.select.i.i, %bb.j ]
  store i64 %storemerge.i, ptr %3, align 8, !tbaa !122, !alias.scope !219
  invoke void @_ZN5folly7futures6detail16DeferredExecutor11setExecutorENS_17ExecutorKeepAliveINS_8ExecutorEEEb(ptr noundef nonnull align 16 dereferenceable(112) %i.n, ptr noundef nonnull %3, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE4copyEv.exit
  %i.y = load i64, ptr %3, align 8, !tbaa !122    ; 2 uses
  %i.z = and i64 %i.y, -4                         ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %.not.i.i11 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i11, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %3, align 8, !tbaa !145
  %i.ab = and i64 %i.y, 3
  %.not3.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not3.i.i, label %bb.m, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #26, !inline_history !146
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

bb.n:                                             ; preds = %_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE4copyEv.exit
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ag = load i64, ptr %3, align 8, !tbaa !122   ; 2 uses
  %i.ah = and i64 %i.ag, -4                       ; 2 uses
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %.not.i.i12 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i12, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit14, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 0, ptr %3, align 8, !tbaa !145
  %i.aj = and i64 %i.ag, 3
  %.not3.i.i13 = icmp eq i64 %i.aj, 0
  br i1 %.not3.i.i13, label %bb.p, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit14

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #26, !inline_history !146
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit14

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit: ; preds = %_ZNK5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i9, %bb.m, %bb.l, %bb.k, %_ZNK5folly7futures6detail10FutureBaseImE19getDeferredExecutorEv.exit
  %i.an = load ptr, ptr %1, align 8, !tbaa !40    ; 3 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !40
  store ptr null, ptr %1, align 8, !tbaa !40
  %i.ao = load i64, ptr %2, align 8, !tbaa !145
  store i64 0, ptr %2, align 8, !tbaa !145
  store i32 1, ptr %4, align 8, !tbaa !177
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !122
  %.not.i.i.i15 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i15, label %bb.q, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit18

bb.q:                                             ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit
  invoke void @_ZN5folly6detail16throw_exception_INS_13FutureInvalidEJEEEvDpT0_() #23
          to label %.noexc unwind label %_ZN5folly7futures6detail10FutureBaseImED2Ev.exit

.noexc:                                           ; preds = %bb.q
  unreachable

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit18: ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5folly7futures6detail19KeepAliveOrDeferredaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %4) #26 ; 0 uses
  call void @_ZN5folly7futures6detail19KeepAliveOrDeferredD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  ret void

_ZN5folly7futures6detail10FutureBaseImED2Ev.exit: ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7futures6detail19KeepAliveOrDeferredD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit14

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit14: ; preds = %bb.p, %bb.o, %bb.n, %_ZN5folly7futures6detail10FutureBaseImED2Ev.exit
  %.pn = phi { ptr, i32 } [ %i.as, %_ZN5folly7futures6detail10FutureBaseImED2Ev.exit ], [ %i.af, %bb.n ], [ %i.af, %bb.o ], [ %i.af, %bb.p ]
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN5folly23QueuedImmediateExecutor8instanceEv() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13FileIoContextD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox12FileIoTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !172
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !226
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !226
  br label %_ZNSt12__shared_ptrIN8facebook5velox12FileIoTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !49
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8facebook5velox12FileIoTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !45

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN8facebook5velox12FileIoTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox12FileIoTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN8facebook5velox6common15FileInputStream11updateStatsEmm(ptr noundef nonnull align 8 captures(none) dereferenceable(152) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.c = load <2 x i64>, ptr %i.b, align 8, !tbaa !145
  %i.d = insertelement <2 x i64> poison, i64 %1, i64 0
  %i.e = insertelement <2 x i64> %i.d, i64 %2, i64 1
  %i.f = add <2 x i64> %i.c, %i.e
  store <2 x i64> %i.f, ptr %i.b, align 8, !tbaa !145
  %i.g = load i32, ptr %i.a, align 8, !tbaa !175
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.a, align 8, !tbaa !175
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6common15FileInputStream19maybeIssueReadaheadEv(ptr noundef nonnull align 8 captures(none) dereferenceable(152) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.16", align 8    ; 11 uses
  %2 = alloca %"class.folly::SemiFuture", align 8 ; 7 uses
  %3 = alloca %"struct.facebook::velox::FileIoContext", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !117

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6common15FileInputStream19maybeIssueReadaheadEvE18veloxCheckFailArgs) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !tbaa !39, !range !84, !noundef !85
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.aa

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !155  ; 2 uses
  %i.j = sub i64 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !145
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.m, label %bb.aa, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load i32, ptr %i.o, align 8, !tbaa !154
  %i.q = add i32 %i.p, 1
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !60   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = urem i64 %i.r, %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !115
  %i.ae = and i8 %i.ad, 2
  %.not.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i, label %_ZNKSt6vectorIN5folly5RangeIPcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, label %bb.f, !prof !117

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs) #31
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN5folly5RangeIPcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EE12emplace_backIJS2_RKmEEERS3_DpOT_.exit unwind label %bb.v ; 4 uses

_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EE12emplace_backIJS2_RKmEEERS3_DpOT_.exit: ; preds = %_ZNKSt6vectorIN5folly5RangeIPcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !227
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.speculated.i
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !229
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store ptr %i.ai, ptr %1, align 8, !tbaa !230
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !233
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.ap, align 8, !tbaa !162
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.aq, i8 0, i64 25, i1 false)
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr dead_on_unwind nonnull writable sret(%"class.folly::SemiFuture") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(49) %3)
          to label %bb.g unwind label %bb.w

bb.g:                                             ; preds = %_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EE12emplace_backIJS2_RKmEEERS3_DpOT_.exit
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !40
  invoke void @_ZN5folly10SemiFutureImE23releaseDeferredExecutorEPNS_7futures6detail4CoreImEE(ptr noundef %i.au)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i7, label %_ZN5folly10SemiFutureImEaSEOS1_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.av) #26
  store ptr null, ptr %i.a, align 8, !tbaa !40
  br label %_ZN5folly10SemiFutureImEaSEOS1_.exit

bb.j:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #34
  unreachable

_ZN5folly10SemiFutureImEaSEOS1_.exit:             ; preds = %bb.h, %bb.i
  %i.ay = load ptr, ptr %2, align 8, !tbaa !188
  store ptr null, ptr %2, align 8, !tbaa !188
  store ptr %i.ay, ptr %i.a, align 8, !tbaa !40
  invoke void @_ZN5folly10SemiFutureImE23releaseDeferredExecutorEPNS_7futures6detail4CoreImEE(ptr noundef null)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZN5folly10SemiFutureImEaSEOS1_.exit
  %i.az = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i8, label %_ZN5folly10SemiFutureImED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.az) #26
  br label %_ZN5folly10SemiFutureImED2Ev.exit

bb.m:                                             ; preds = %_ZN5folly10SemiFutureImEaSEOS1_.exit
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #34
  unreachable

_ZN5folly10SemiFutureImED2Ev.exit:                ; preds = %bb.k, %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !169 ; 8 uses
  %.not.i.i.i9 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i9, label %_ZN8facebook5velox13FileIoContextD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5folly10SemiFutureImED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.be, align 8, !tbaa !170
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !172
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #26, !inline_history !173
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !11
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #26, !inline_history !173
  br label %_ZN8facebook5velox13FileIoContextD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !49
  %.not.i.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i = phi i32 [ %i.bh, %bb.q ], [ %i.br, %bb.r ]
  %i.bs = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bs, label %bb.s, label %_ZN8facebook5velox13FileIoContextD2Ev.exit, !prof !45

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #26
  br label %_ZN8facebook5velox13FileIoContextD2Ev.exit

_ZN8facebook5velox13FileIoContextD2Ev.exit:       ; preds = %_ZN5folly10SemiFutureImED2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_vvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %i.bt) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !40
  %.not15 = icmp eq ptr %i.bu, null
  br i1 %.not15, label %bb.t, label %bb.y, !prof !45

bb.t:                                             ; preds = %_ZN8facebook5velox13FileIoContextD2Ev.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6common15FileInputStream19maybeIssueReadaheadEvE18veloxCheckFailArgs_0) #31
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %_ZNKSt6vectorIN5folly5RangeIPcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.f
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EE12emplace_backIJS2_RKmEEERS3_DpOT_.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox13FileIoContextD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.ab

bb.x:                                             ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.y:                                             ; preds = %_ZN8facebook5velox13FileIoContextD2Ev.exit
  %i.by = load ptr, ptr %1, align 8, !tbaa !230   ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bz = load ptr, ptr %i.ah, align 8, !tbaa !234
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cc) #32
  br label %_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EED2Ev.exit

_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EED2Ev.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EED2Ev.exit, %bb.d, %bb.c
  ret void

bb.ab:                                            ; preds = %bb.x, %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.x ], [ %i.bw, %bb.w ], [ %i.bv, %bb.v ]
  %i.cd = load ptr, ptr %1, align 8, !tbaa !230   ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EED2Ev.exit12, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !234
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #32
  br label %_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EED2Ev.exit12

_ZNSt6vectorIN5folly5RangeIPcEESaIS3_EED2Ev.exit12: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK8facebook5velox6common15FileInputStream4sizeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK8facebook5velox6common15FileInputStream5atEndEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { i64, i64 } %i.c(ptr noundef nonnull align 8 dereferenceable(152) %0)
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  %i.h = icmp uge i64 %i.e, %i.g
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK8facebook5velox6common15FileInputStream5tellpEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.59", align 16 ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !155  ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq i64 %i.e, %i.g
  br i1 %.not, label %bb.g, label %bb.c, !prof !117

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26, !noalias !235
  store i64 %i.e, ptr %1, align 16, !tbaa !49, !alias.scope !238, !noalias !235
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.g, ptr %i.h, align 16, !tbaa !49, !alias.scope !238, !noalias !235
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.13, i64 11, i64 68, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26, !noalias !235
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6common15FileInputStream5tellpEvE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.13) #31
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.m = load i64, ptr %i.k, align 8, !tbaa !49
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %bb.a
  %i.o = tail call noundef i64 @_ZNK8facebook5velox9ByteRange14availableBytesEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.p = sub i64 %i.e, %i.o
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %.sroa.03.0 = phi i64 [ %i.p, %bb.f ], [ %i.e, %bb.b ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.03.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6common15FileInputStream5seekpESt4fposI11__mbstate_tE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.181", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { i64, i64 } %i.c(ptr noundef nonnull align 8 dereferenceable(152) %0)
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 4 uses
  %.not = icmp slt i64 %1, %i.e
  br i1 %.not, label %bb.b, label %bb.e, !prof !45

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !241
  store i64 %1, ptr %3, align 16, !tbaa !49, !alias.scope !244, !noalias !241
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.e, ptr %i.f, align 16, !tbaa !49, !alias.scope !244, !noalias !241
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.16, i64 61, i64 51, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !241
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6common15FileInputStream5seekpESt4fposI11__mbstate_tEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.16) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

end_hunk_1
begin_hunk_2_@_ZN5folly10SemiFutureImE23releaseDeferredExecutorEPNS_7futures6detail4CoreImEE:bb.a
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load atomic i8, ptr %i.a acquire, align 1
  %i.c = and i8 %i.b, 108
  %.not6 = icmp eq i8 %i.c, 0
  br i1 %.not6, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN5folly7futures6detail8CoreBase21stealDeferredExecutorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.36") align 8 %1, ptr noundef nonnull align 16 dereferenceable(136) %0)
  %i.d = load ptr, ptr %1, align 8, !tbaa !479
  %.not4 = icmp ne ptr %i.d, null
  %i.e = zext i1 %.not4 to i32
  call void @_ZN5folly13async_tracing20logSemiFutureDiscardENS0_18DiscardHasDeferredE(i32 noundef %i.e) #26
  %i.f = load ptr, ptr %1, align 8, !tbaa !479    ; 2 uses
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly7futures6detail16DeferredExecutor6detachEv(ptr noundef nonnull align 16 dereferenceable(112) %i.f)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.g

bb.f:                                             ; preds = %bb.d
  %.pr = load ptr, ptr %1, align 8, !tbaa !479    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5folly7futures6detail13UniqueDeleterclEPNS1_16DeferredExecutorE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.pr)
          to label %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #34
  unreachable

_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit: ; preds = %bb.c, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev.exit
  ret void
}

declare void @_ZN5folly7futures6detail8CoreBase21stealDeferredExecutorEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.36") align 8, ptr noundef nonnull align 16 dereferenceable(136)) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN5folly13async_tracing20logSemiFutureDiscardENS0_18DiscardHasDeferredE(i32 noundef) local_unnamed_addr #9

declare void @_ZN5folly7futures6detail16DeferredExecutor6detachEv(ptr noundef nonnull align 16 dereferenceable(112)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5folly7futures6detail16DeferredExecutorENS2_13UniqueDeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !479    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5folly7futures6detail13UniqueDeleterclEPNS1_16DeferredExecutorE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #34
  unreachable
}

declare void @_ZN5folly7futures6detail13UniqueDeleterclEPNS1_16DeferredExecutorE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7futures6detail10FutureBaseImE12setCallback_IZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSC_NS1_18InlineContinuationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::Function", align 16  ; 11 uses
  %4 = alloca %"class.std::shared_ptr.44", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.44") align 8 %4)
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load atomic i8, ptr %i.b acquire, align 1
  %i.d = and i8 %i.c, 108
  %.not1.i.i = icmp eq i8 %i.d, 0
  br i1 %.not1.i.i, label %_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  invoke void @_ZN5folly6detail16throw_exception_INS_22FutureAlreadyContinuedEJEEEvDpT0_() #23
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i: ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i

bb.d:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i
  invoke void @_ZN5folly6detail16throw_exception_INS_13FutureInvalidEJEEEvDpT0_() #23
          to label %.noexc4 unwind label %bb.p

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i: ; preds = %_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.f = load i8, ptr %1, align 8, !tbaa !185, !range !84, !noundef !85
  store i8 0, ptr %1, align 8, !tbaa !185
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !188
  store ptr null, ptr %i.g, align 8, !tbaa !188
  store ptr null, ptr %3, align 16, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store i8 %i.f, ptr %3, align 16, !tbaa !186
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.h, ptr %i.k, align 8, !tbaa !189
  store ptr @_ZN5folly6detail8function5call_IZNS_7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSF_OSt10shared_ptrINS_14RequestContextEENS4_18InlineContinuationEEUlRNS4_8CoreBaseESD_PNS_17exception_wrapperEE_Lb1ELb0EvJSN_SD_SP_EEET2_DpT3_RNS1_4DataE, ptr %i.i, align 16, !tbaa !178
  store ptr @_ZN5folly6detail8function13DispatchSmall4execIZNS_7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSG_OSt10shared_ptrINS_14RequestContextEENS5_18InlineContinuationEEUlRNS5_8CoreBaseESE_PNS_17exception_wrapperEE_EEmNS1_2OpEPNS1_4DataESU_, ptr %i.j, align 8, !tbaa !179
  invoke void @_ZN5folly7futures6detail8CoreBase12setCallback_EONS_8FunctionIFvRS2_ONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEEEOSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationE(ptr noundef nonnull align 16 dereferenceable(160) %i.e, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !179  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call noundef i64 %i.l(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #26, !inline_history !481 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !179  ; 2 uses
  %.not.i.i5.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i5.i.i, label %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call noundef i64 %i.o(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #26, !inline_history !481 ; 0 uses
  br label %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i

_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.body

bb.i:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !169  ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.r, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.s, align 8, !tbaa !170
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !172
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #26, !inline_history !482
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #26, !inline_history !482
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !49
  %.not.i.i.i6 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.v, %bb.m ], [ %i.af, %bb.n ]
  %i.ag = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ag, label %bb.o, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !45

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #26
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.p:                                             ; preds = %bb.d, %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %i.n, %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i ]
  call void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZNR5folly10SemiFutureImE4waitEvENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_D2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5folly7PromiseImED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !186, !range !84, !noundef !85
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.b) #26
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !189
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %.pre.i.i, %bb.c ], [ %i.b, %bb.b ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.e)
          to label %_ZN5folly7PromiseImED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #34
  unreachable

_ZN5folly7PromiseImED2Ev.exit:                    ; preds = %bb.a, %bb.d
  ret void
}

declare void @_ZN5folly7futures6detail16DeferredExecutor11setExecutorENS_17ExecutorKeepAliveINS_8ExecutorEEEb(ptr noundef nonnull align 16 dereferenceable(112), ptr noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly7PromiseImED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5folly7PromiseImE6detachEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !186, !range !84, !noundef !85
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.b) #26
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !189
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %.pre.i, %bb.c ], [ %i.b, %bb.b ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.e)
          to label %_ZN5folly7PromiseImE6detachEv.exit unwind label %bb.e

_ZN5folly7PromiseImE6detachEv.exit:               ; preds = %bb.d, %bb.a
  ret void

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #34
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::Promise", align 8    ; 6 uses
  %2 = alloca %"class.folly::SemiFuture", align 8 ; 6 uses
  %3 = alloca %"class.folly::fibers::Baton", align 8 ; 6 uses
  %4 = alloca %class.anon.174, align 8            ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK5folly7futures6detail10FutureBaseImE7isReadyEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_13FutureInvalidEJEEEvDpT0_() #23
  unreachable

_ZNK5folly7futures6detail10FutureBaseImE7isReadyEv.exit: ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK5folly7futures6detail8CoreBase9hasResultEv(ptr noundef nonnull align 16 dereferenceable(136) %i.a) #26
  br i1 %i.b, label %bb.m, label %_ZN5folly10SemiFutureImED2Ev.exit

_ZN5folly10SemiFutureImED2Ev.exit:                ; preds = %_ZNK5folly7futures6detail10FutureBaseImE7isReadyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #33 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.e, align 16, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEE10uninitCallES6_SA_SC_RNS1_4DataE, ptr %i.f, align 16, !tbaa !178
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr null, ptr %i.g, align 8, !tbaa !179
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i8 1, ptr %i.h, align 16, !tbaa !180
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 81
  store i8 2, ptr %i.i, align 1, !tbaa !181
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 82
  store i8 0, ptr %i.j, align 2, !tbaa !181
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i32 0, ptr %i.k, align 8, !tbaa !177
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly7futures6detail4CoreImEE, i64 16), ptr %i.d, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.d, ptr %2, align 8, !tbaa !40, !alias.scope !483
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 0, ptr %3, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %3, ptr %4, align 8, !tbaa !486
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %1, align 8, !tbaa !185
  store i8 1, ptr %i.m, align 8, !tbaa !186
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !188
  store ptr %i.d, ptr %i.n, align 8, !tbaa !189
  invoke void @_ZN5folly7futures6detail10FutureBaseImE12setCallback_IZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_NS1_18InlineContinuationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %_ZN5folly10SemiFutureImED2Ev.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !189  ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i12, label %_ZZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_D2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.m, align 8, !tbaa !186, !range !84, !noundef !85
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.o) #26
  %.pre.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !189
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.o, %bb.d ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.r)
          to label %_ZZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_D2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #34
  unreachable

_ZZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_D2Ev.exit: ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.u = load ptr, ptr %0, align 8, !tbaa !40
  invoke void @_ZN5folly10SemiFutureImE23releaseDeferredExecutorEPNS_7futures6detail4CoreImEE(ptr noundef %i.u)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_D2Ev.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i13, label %_ZN5folly10SemiFutureImEaSEOS1_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.v) #26
  store ptr null, ptr %0, align 8, !tbaa !40
  br label %_ZN5folly10SemiFutureImEaSEOS1_.exit

bb.j:                                             ; preds = %_ZZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_D2Ev.exit
end_hunk_2
begin_hunk_3_@_ZNK5folly13FutureInvalid4whatEv:bb.a
}

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #9

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #8

; Function Attrs: nounwind
declare noundef ptr @_ZNK5folly7futures6detail19KeepAliveOrDeferred19getDeferredExecutorEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly7futures6detail4CoreImED2Ev(ptr noundef nonnull align 16 dereferenceable(160) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5folly7futures6detail8CoreBase14destroyDerivedEv(ptr noundef nonnull align 16 dereferenceable(136) %0) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8
  %cond.i = icmp eq i32 %i.c, 1
  %or.cond = select i1 %i.a, i1 %cond.i, i1 false, !prof !488
  br i1 %or.cond, label %bb.b, label %_ZN5folly6detail7TryBaseImED2Ev.exit, !prof !488

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !489
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail7TryBaseImED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #26
  br label %_ZN5folly6detail7TryBaseImED2Ev.exit

_ZN5folly6detail7TryBaseImED2Ev.exit:             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_ZN5folly7futures6detail8CoreBaseD2Ev(ptr noundef nonnull align 16 dead_on_return(136) dereferenceable(136) %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly7futures6detail4CoreImED0Ev(ptr noundef nonnull align 16 dereferenceable(160) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5folly7futures6detail8CoreBase14destroyDerivedEv(ptr noundef nonnull align 16 dereferenceable(160) %0) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8
  %cond.i.i = icmp eq i32 %i.c, 1
  %or.cond.i = select i1 %i.a, i1 %cond.i.i, i1 false, !prof !488
  br i1 %or.cond.i, label %bb.b, label %_ZN5folly7futures6detail4CoreImED2Ev.exit, !prof !488

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !489
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN5folly7futures6detail4CoreImED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #26
  br label %_ZN5folly7futures6detail4CoreImED2Ev.exit

_ZN5folly7futures6detail4CoreImED2Ev.exit:        ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN5folly7futures6detail8CoreBaseD2Ev(ptr noundef nonnull align 16 dead_on_return(136) dereferenceable(160) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function14FunctionTraitsIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEE10uninitCallES6_SA_SC_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(48) %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() #23
  unreachable
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt17bad_function_callJEEEvDpT0_() local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_function_call", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %0, align 8, !tbaa !11
  invoke void @_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt17bad_function_callD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt17bad_function_callEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #22 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.a, align 8, !tbaa !11
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #31
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt17bad_function_callD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5folly7futures6detail8CoreBase14destroyDerivedEv(ptr noundef nonnull align 16 dereferenceable(136)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN5folly7futures6detail8CoreBaseD2Ev(ptr noundef nonnull align 16 dead_on_return(136) dereferenceable(136)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_14PromiseInvalidEJEEEvDpT0_() local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::PromiseInvalid", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.46)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly14PromiseInvalidE, i64 16), ptr %0, align 8, !tbaa !11
  invoke void @_ZN5folly15throw_exceptionINS_14PromiseInvalidEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) #23
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_14PromiseInvalidEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #22 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 2 uses
  tail call void @_ZN5folly14PromiseInvalidC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly14PromiseInvalidE, ptr nonnull @_ZNSt11logic_errorD2Ev) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly14PromiseInvalidC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly14PromiseInvalidE, i64 16), ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly14PromiseInvalidD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly14PromiseInvalid4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr @.str.83
}

declare void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.44") align 8) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !172
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !491
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !491
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !49
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !45

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_22FutureAlreadyContinuedEJEEEvDpT0_() local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::FutureAlreadyContinued", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.46)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly22FutureAlreadyContinuedE, i64 16), ptr %0, align 8, !tbaa !11
  invoke void @_ZN5folly15throw_exceptionINS_22FutureAlreadyContinuedEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) #23
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_22FutureAlreadyContinuedEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #22 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 2 uses
  tail call void @_ZN5folly22FutureAlreadyContinuedC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly22FutureAlreadyContinuedE, ptr nonnull @_ZNSt11logic_errorD2Ev) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly22FutureAlreadyContinuedC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly22FutureAlreadyContinuedE, i64 16), ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly22FutureAlreadyContinuedD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly22FutureAlreadyContinued4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr @.str.84
}

declare void @_ZN5folly7futures6detail8CoreBase12setCallback_EONS_8FunctionIFvRS2_ONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEEEOSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationE(ptr noundef nonnull align 16 dereferenceable(136), ptr noundef nonnull align 16 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function5call_IZNS_7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSF_OSt10shared_ptrINS_14RequestContextEENS4_18InlineContinuationEEUlRNS4_8CoreBaseESD_PNS_17exception_wrapperEE_Lb1ELb0EvJSN_SD_SP_EEET2_DpT3_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(48) %3) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSC_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESA_PNS_17exception_wrapperEE_clESK_SA_SM_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !492
  store i32 2, ptr %i.a, align 8, !tbaa !492
  %cond.i.i.i.i = icmp eq i32 %i.b, 1
  br i1 %cond.i.i.i.i, label %bb.c, label %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i, !prof !493

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !489
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #26
  br label %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i

_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.f = load i64, ptr %2, align 8, !noalias !494
  store i64 %i.f, ptr %i.e, align 16, !alias.scope !494
  store i64 0, ptr %2, align 8, !noalias !494
  store i32 1, ptr %i.a, align 8, !tbaa !142
  br label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSC_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESA_PNS_17exception_wrapperEE_clESK_SA_SM_.exit

_ZZN5folly7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSC_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESA_PNS_17exception_wrapperEE_clESK_SA_SM_.exit: ; preds = %bb.a, %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN5folly7PromiseImE6setTryEONS_3TryImEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function13DispatchSmall4execIZNS_7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSG_OSt10shared_ptrINS_14RequestContextEENS5_18InlineContinuationEEUlRNS5_8CoreBaseESE_PNS_17exception_wrapperEE_EEmNS1_2OpEPNS1_4DataESU_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSC_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESA_PNS_17exception_wrapperEE_D2Ev.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !185, !range !84, !noundef !85
  store i8 0, ptr %1, align 1, !tbaa !185
  store i8 %i.a, ptr %2, align 8, !tbaa !186
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188
  store ptr null, ptr %i.c, align 8, !tbaa !188
  store ptr %i.d, ptr %i.b, align 8, !tbaa !189
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !189  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSC_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESA_PNS_17exception_wrapperEE_D2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %1, align 8, !tbaa !186, !range !84, !noundef !85
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.f) #26
  %.pre.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !189
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %i.f, %bb.d ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.i)
          to label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSC_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESA_PNS_17exception_wrapperEE_D2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #34
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @abort() #34
  unreachable

_ZZN5folly7futures6detail4CoreImE11setCallbackIZNRS_10SemiFutureImE4waitEvEUlONS_17ExecutorKeepAliveINS_8ExecutorEEEOT_E_EEvSC_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESA_PNS_17exception_wrapperEE_D2Ev.exit: ; preds = %bb.f, %bb.c, %bb.a
  ret i64 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7PromiseImE6setTryEONS_3TryImEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::ExecutorKeepAlive", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK5folly7PromiseImE7getCoreEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_14PromiseInvalidEJEEEvDpT0_() #23
  unreachable

_ZNK5folly7PromiseImE7getCoreEv.exit.i:           ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK5folly7futures6detail8CoreBase9hasResultEv(ptr noundef nonnull align 16 dereferenceable(136) %i.b) #26
  br i1 %i.c, label %bb.c, label %_ZNK5folly7PromiseImE16throwIfFulfilledEv.exit

bb.c:                                             ; preds = %_ZNK5folly7PromiseImE7getCoreEv.exit.i
  tail call void @_ZN5folly6detail16throw_exception_INS_23PromiseAlreadySatisfiedEJEEEvDpT0_() #23
  unreachable

_ZNK5folly7PromiseImE16throwIfFulfilledEv.exit:   ; preds = %_ZNK5folly7PromiseImE7getCoreEv.exit.i
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !189  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i64 0, ptr %2, align 8, !tbaa !122
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.f = load i32, ptr %1, align 8, !tbaa !142    ; 2 uses
  store i32 %i.f, ptr %i.e, align 8, !tbaa !142
  switch i32 %i.f, label %_ZN5folly3TryImEC2EOS1_.exit.i.i [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]
end_hunk_3
begin_hunk_4_@_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE:bb.a
  br i1 %.not.i.i, label %_ZN5folly17exception_wrapperD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly6detail7TryBaseImED2Ev.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5folly17exception_wrapperD2Ev.exit

_ZN5folly17exception_wrapperD2Ev.exit:            ; preds = %_ZN5folly6detail7TryBaseImED2Ev.exit, %bb.h
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.l

bb.i:                                             ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit5.i.thread, %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit5.i
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !489
  %.not.i.i.i6 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i6, label %_ZN5folly6detail7TryBaseImED2Ev.exit7, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #26
  br label %_ZN5folly6detail7TryBaseImED2Ev.exit7

_ZN5folly6detail7TryBaseImED2Ev.exit7:            ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit5.i, %bb.i, %bb.j
  %i.aa = load ptr, ptr %4, align 8, !tbaa !489
  %.not.i.i8 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i8, label %_ZN5folly17exception_wrapperD2Ev.exit9, label %bb.k

bb.k:                                             ; preds = %_ZN5folly6detail7TryBaseImED2Ev.exit7
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5folly17exception_wrapperD2Ev.exit9

_ZN5folly17exception_wrapperD2Ev.exit9:           ; preds = %_ZN5folly6detail7TryBaseImED2Ev.exit7, %bb.k
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.k

bb.l:                                             ; preds = %_ZN5folly17exception_wrapperD2Ev.exit, %bb.a
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %0) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly13BrokenPromiseD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5folly13BrokenPromise4whatEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !641
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail28make_exception_ptr_with_arg_4makeIZNKS_26make_exception_ptr_with_fn4makeINS_13BrokenPromiseEJOS5_EEEDaDpOT0_EUlvE_S5_EEvPvSB_(ptr noundef %0, ptr noundef %1) #0 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.a = load ptr, ptr %1, align 8, !tbaa !662, !noalias !659, !nonnull !85, !align !383 ; 2 uses
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly13BrokenPromiseE, i64 16), ptr %0, align 8, !tbaa !11, !alias.scope !659
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !641
  store ptr %i.d, ptr %i.b, align 8, !tbaa !641, !alias.scope !659
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail28make_exception_ptr_with_arg_5dtor_INS_13BrokenPromiseEEEvPv(ptr noundef %0) #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = load ptr, ptr %i.a, align 8
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(24) %0) #26
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7futures6detail10FutureBaseImE12setCallback_IZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_NS1_18InlineContinuationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::Function", align 16  ; 11 uses
  %4 = alloca %"class.std::shared_ptr.44", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.44") align 8 %4)
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load atomic i8, ptr %i.b acquire, align 1
  %i.d = and i8 %i.c, 108
  %.not1.i.i = icmp eq i8 %i.d, 0
  br i1 %.not1.i.i, label %_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  invoke void @_ZN5folly6detail16throw_exception_INS_22FutureAlreadyContinuedEJEEEvDpT0_() #23
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i: ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i

bb.d:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i
  invoke void @_ZN5folly6detail16throw_exception_INS_13FutureInvalidEJEEEvDpT0_() #23
          to label %.noexc4 unwind label %bb.p

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i: ; preds = %_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.f = load ptr, ptr %1, align 8, !tbaa !665, !nonnull !85, !align !383
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !185, !range !84, !noundef !85
  store i8 0, ptr %i.g, align 8, !tbaa !185
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !188
  store ptr null, ptr %i.i, align 8, !tbaa !188
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store ptr %i.f, ptr %3, align 16, !tbaa !486
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %i.h, ptr %i.m, align 8, !tbaa !186
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.j, ptr %i.n, align 16, !tbaa !189
  store ptr @_ZN5folly6detail8function5call_IZNS_7futures6detail4CoreImE11setCallbackIZNS4_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOSB_OSt10shared_ptrINS_14RequestContextEENS4_18InlineContinuationEEUlRNS4_8CoreBaseESG_PNS_17exception_wrapperEE_Lb1ELb0EvJSS_SG_SU_EEET2_DpT3_RNS1_4DataE, ptr %i.k, align 16, !tbaa !178
  store ptr @_ZN5folly6detail8function13DispatchSmall4execIZNS_7futures6detail4CoreImE11setCallbackIZNS5_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOSC_OSt10shared_ptrINS_14RequestContextEENS5_18InlineContinuationEEUlRNS5_8CoreBaseESH_PNS_17exception_wrapperEE_EEmNS1_2OpEPNS1_4DataESZ_, ptr %i.l, align 8, !tbaa !179
  invoke void @_ZN5folly7futures6detail8CoreBase12setCallback_EONS_8FunctionIFvRS2_ONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEEEOSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationE(ptr noundef nonnull align 16 dereferenceable(160) %i.e, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !179  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = call noundef i64 %i.o(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #26, !inline_history !667 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !179  ; 2 uses
  %.not.i.i5.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i5.i.i, label %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call noundef i64 %i.r(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #26, !inline_history !667 ; 0 uses
  br label %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i

_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.body

bb.i:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !169  ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.u, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.v, align 8, !tbaa !170
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !172
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #26, !inline_history !482
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #26, !inline_history !482
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !49
  %.not.i.i.i6 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.m ], [ %i.ai, %bb.n ]
  %i.aj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aj, label %bb.o, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !45

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #26
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.p:                                             ; preds = %bb.d, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.p ], [ %i.q, %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i ]
  call void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly7futures6detail8waitImplINS_10SemiFutureImEEmEEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_D2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5folly7PromiseImED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !186, !range !84, !noundef !85
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.b) #26
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !189
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.pre.i.i, %bb.c ], [ %i.b, %bb.b ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.f)
          to label %_ZN5folly7PromiseImED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #34
  unreachable

_ZN5folly7PromiseImED2Ev.exit:                    ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function5call_IZNS_7futures6detail4CoreImE11setCallbackIZNS4_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOSB_OSt10shared_ptrINS_14RequestContextEENS4_18InlineContinuationEEUlRNS4_8CoreBaseESG_PNS_17exception_wrapperEE_Lb1ELb0EvJSS_SG_SU_EEET2_DpT3_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(48) %3) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_clESP_SD_SR_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !492
  store i32 2, ptr %i.a, align 8, !tbaa !492
  %cond.i.i.i.i = icmp eq i32 %i.b, 1
  br i1 %cond.i.i.i.i, label %bb.c, label %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i, !prof !493

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !489
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #26
  br label %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i

_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.f = load i64, ptr %2, align 8, !noalias !668
  store i64 %i.f, ptr %i.e, align 16, !alias.scope !668
  store i64 0, ptr %2, align 8, !noalias !668
  store i32 1, ptr %i.a, align 8, !tbaa !142
  br label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_clESP_SD_SR_.exit

_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_clESP_SD_SR_.exit: ; preds = %bb.a, %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @_ZN5folly7PromiseImE6setTryEONS_3TryImEE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
  %i.i = load ptr, ptr %3, align 16, !tbaa !665, !nonnull !85, !align !383
  tail call void @_ZN5folly6fibers5Baton4postEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function13DispatchSmall4execIZNS_7futures6detail4CoreImE11setCallbackIZNS5_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOSC_OSt10shared_ptrINS_14RequestContextEENS5_18InlineContinuationEEUlRNS5_8CoreBaseESH_PNS_17exception_wrapperEE_EEmNS1_2OpEPNS1_4DataESZ_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_D2Ev.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !665, !nonnull !85, !align !383
  store ptr %i.a, ptr %2, align 8, !tbaa !486
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !185, !range !84, !noundef !85
  store i8 0, ptr %i.c, align 8, !tbaa !185
  store i8 %i.d, ptr %i.b, align 8, !tbaa !186
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !188
  store ptr null, ptr %i.f, align 8, !tbaa !188
  store ptr %i.g, ptr %i.e, align 8, !tbaa !189
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !189  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_D2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i8, ptr %i.j, align 8, !tbaa !186, !range !84, !noundef !85
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.i) #26
  %.pre.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !189
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %i.i, %bb.d ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.m)
          to label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_D2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #34
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @abort() #34
  unreachable

_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_10SemiFutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_D2Ev.exit: ; preds = %bb.f, %bb.c, %bb.a
  ret i64 0
}

; Function Attrs: nounwind
declare void @_ZN5folly13async_tracing16logSemiFutureViaEPNS_8ExecutorES2_(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN5folly7futures6detail19KeepAliveOrDeferredD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: nounwind
declare noundef ptr @_ZNK5folly7futures6detail19KeepAliveOrDeferred20getKeepAliveExecutorEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_16FutureNoExecutorEJEEEvDpT0_() local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::FutureNoExecutor", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.46)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly16FutureNoExecutorE, i64 16), ptr %0, align 8, !tbaa !11
  invoke void @_ZN5folly15throw_exceptionINS_16FutureNoExecutorEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) #23
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
end_hunk_4
begin_hunk_5_@_ZN5folly7futures6detail13convertFutureImEENS_6FutureIT_EEONS_10SemiFutureIS4_EERKS5_:bb.a
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEEC2EPS1_.exit

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEEC2EPS1_.exit: ; preds = %_ZNK5folly7futures6detail10FutureBaseImE11getExecutorEv.exit, %_ZN5folly14InlineExecutor8instanceEv.exit
  %i.m = phi ptr [ %i.l, %_ZN5folly14InlineExecutor8instanceEv.exit ], [ %i.e, %_ZNK5folly7futures6detail10FutureBaseImE11getExecutorEv.exit ] ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11, !noalias !677
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !noalias !677
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #26, !noalias !677, !inline_history !121
  %not..i.i = xor i1 %i.q, true
  %i.r = zext i1 %not..i.i to i64
  %i.s = ptrtoint ptr %i.m to i64
  %spec.select.i.i = or i64 %i.r, %i.s
  store i64 %spec.select.i.i, ptr %3, align 8, !tbaa !122
  invoke void @_ZNO5folly10SemiFutureImE3viaENS_17ExecutorKeepAliveINS_8ExecutorEEE(ptr dead_on_unwind writable sret(%"class.folly::Future") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEEC2EPS1_.exit
  %i.t = load i64, ptr %3, align 8, !tbaa !122    ; 2 uses
  %i.u = and i64 %i.t, -4                         ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %.not.i.i12 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i12, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %3, align 8, !tbaa !145
  %i.w = and i64 %i.t, 3
  %.not3.i.i = icmp eq i64 %i.w, 0
  br i1 %.not3.i.i, label %bb.f, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #26, !inline_history !146
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.aa = load ptr, ptr %0, align 8, !tbaa !40
  %i.ab = load ptr, ptr %2, align 8, !tbaa !40
  invoke void @_ZN5folly7futures6detail8CoreBase28initCopyInterruptHandlerFromERKS2_(ptr noundef nonnull align 16 dereferenceable(136) %i.aa, ptr noundef nonnull align 16 dereferenceable(136) %i.ab)
          to label %bb.l unwind label %bb.j

bb.g:                                             ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEEC2EPS1_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ad = load i64, ptr %3, align 8, !tbaa !122   ; 2 uses
  %i.ae = and i64 %i.ad, -4                       ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %.not.i.i13 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i13, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit15, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %3, align 8, !tbaa !145
  %i.ag = and i64 %i.ad, 3
  %.not3.i.i14 = icmp eq i64 %i.ag, 0
  br i1 %.not3.i.i14, label %bb.i, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit15

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #26, !inline_history !146
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit15

bb.j:                                             ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.al, null
  br i1 %.not.i.i16, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit15, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.al) #26
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit15

bb.l:                                             ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit
  ret void

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit15: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %i.ac, %bb.g ], [ %i.ac, %bb.h ], [ %i.ak, %bb.j ], [ %i.ak, %bb.k ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7futures6detail10FutureBaseImE12setCallback_IZNS1_8waitImplINS_6FutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_NS1_18InlineContinuationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::Function", align 16  ; 11 uses
  %4 = alloca %"class.std::shared_ptr.44", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.44") align 8 %4)
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load atomic i8, ptr %i.b acquire, align 1
  %i.d = and i8 %i.c, 108
  %.not1.i.i = icmp eq i8 %i.d, 0
  br i1 %.not1.i.i, label %_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  invoke void @_ZN5folly6detail16throw_exception_INS_22FutureAlreadyContinuedEJEEEvDpT0_() #23
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i: ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i

bb.d:                                             ; preds = %_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i
  invoke void @_ZN5folly6detail16throw_exception_INS_13FutureInvalidEJEEEvDpT0_() #23
          to label %.noexc4 unwind label %bb.p

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i: ; preds = %_ZNK5folly7futures6detail10FutureBaseImE16throwIfContinuedEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.f = load ptr, ptr %1, align 8, !tbaa !680, !nonnull !85, !align !383
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !185, !range !84, !noundef !85
  store i8 0, ptr %i.g, align 8, !tbaa !185
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !188
  store ptr null, ptr %i.i, align 8, !tbaa !188
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store ptr %i.f, ptr %3, align 16, !tbaa !486
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %i.h, ptr %i.m, align 8, !tbaa !186
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.j, ptr %i.n, align 16, !tbaa !189
  store ptr @_ZN5folly6detail8function5call_IZNS_7futures6detail4CoreImE11setCallbackIZNS4_8waitImplINS_6FutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOSB_OSt10shared_ptrINS_14RequestContextEENS4_18InlineContinuationEEUlRNS4_8CoreBaseESG_PNS_17exception_wrapperEE_Lb1ELb0EvJSS_SG_SU_EEET2_DpT3_RNS1_4DataE, ptr %i.k, align 16, !tbaa !178
  store ptr @_ZN5folly6detail8function13DispatchSmall4execIZNS_7futures6detail4CoreImE11setCallbackIZNS5_8waitImplINS_6FutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOSC_OSt10shared_ptrINS_14RequestContextEENS5_18InlineContinuationEEUlRNS5_8CoreBaseESH_PNS_17exception_wrapperEE_EEmNS1_2OpEPNS1_4DataESZ_, ptr %i.l, align 8, !tbaa !179
  invoke void @_ZN5folly7futures6detail8CoreBase12setCallback_EONS_8FunctionIFvRS2_ONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEEEOSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationE(ptr noundef nonnull align 16 dereferenceable(160) %i.e, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !179  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = call noundef i64 %i.o(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #26, !inline_history !682 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %_ZN5folly7futures6detail10FutureBaseImE7getCoreEv.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !179  ; 2 uses
  %.not.i.i5.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i5.i.i, label %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call noundef i64 %i.r(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #26, !inline_history !682 ; 0 uses
  br label %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i

_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.body

bb.i:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !169  ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.u, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.v, align 8, !tbaa !170
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !172
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #26, !inline_history !482
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #26, !inline_history !482
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !49
  %.not.i.i.i6 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.m ], [ %i.ai, %bb.n ]
  %i.aj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aj, label %bb.o, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !45

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #26
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.p:                                             ; preds = %bb.d, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.p ], [ %i.q, %_ZN5folly8FunctionIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEED2Ev.exit6.i.i ]
  call void @_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly7futures6detail8waitImplINS_6FutureImEEmEEvRT_ENUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_D2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5folly7PromiseImED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !186, !range !84, !noundef !85
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.b) #26
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !189
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.pre.i.i, %bb.c ], [ %i.b, %bb.b ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.f)
          to label %_ZN5folly7PromiseImED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #34
  unreachable

_ZN5folly7PromiseImED2Ev.exit:                    ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly13async_tracing12logFutureViaEPNS_8ExecutorES2_(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: cold nounwind
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5folly14InlineExecutor13instance_slowEv() local_unnamed_addr #28

declare void @_ZN5folly7futures6detail8CoreBase28initCopyInterruptHandlerFromERKS2_(ptr noundef nonnull align 16 dereferenceable(136), ptr noundef nonnull align 16 dereferenceable(136)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail8function5call_IZNS_7futures6detail4CoreImE11setCallbackIZNS4_8waitImplINS_6FutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOSB_OSt10shared_ptrINS_14RequestContextEENS4_18InlineContinuationEEUlRNS4_8CoreBaseESG_PNS_17exception_wrapperEE_Lb1ELb0EvJSS_SG_SU_EEET2_DpT3_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(48) %3) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_6FutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_clESP_SD_SR_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !492
  store i32 2, ptr %i.a, align 8, !tbaa !492
  %cond.i.i.i.i = icmp eq i32 %i.b, 1
  br i1 %cond.i.i.i.i, label %bb.c, label %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i, !prof !493

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !489
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #26
  br label %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i

_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.f = load i64, ptr %2, align 8, !noalias !683
  store i64 %i.f, ptr %i.e, align 16, !alias.scope !683
  store i64 0, ptr %2, align 8, !noalias !683
  store i32 1, ptr %i.a, align 8, !tbaa !142
  br label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_6FutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_clESP_SD_SR_.exit

_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_6FutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_clESP_SD_SR_.exit: ; preds = %bb.a, %_ZN5folly3TryImE16emplaceExceptionIJNS_17exception_wrapperEEEERS3_DpOT_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @_ZN5folly7PromiseImE6setTryEONS_3TryImEE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
  %i.i = load ptr, ptr %3, align 16, !tbaa !680, !nonnull !85, !align !383
  tail call void @_ZN5folly6fibers5Baton4postEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function13DispatchSmall4execIZNS_7futures6detail4CoreImE11setCallbackIZNS5_8waitImplINS_6FutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOSC_OSt10shared_ptrINS_14RequestContextEENS5_18InlineContinuationEEUlRNS5_8CoreBaseESH_PNS_17exception_wrapperEE_EEmNS1_2OpEPNS1_4DataESZ_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %0, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_6FutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_D2Ev.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !680, !nonnull !85, !align !383
  store ptr %i.a, ptr %2, align 8, !tbaa !486
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !185, !range !84, !noundef !85
  store i8 0, ptr %i.c, align 8, !tbaa !185
  store i8 %i.d, ptr %i.b, align 8, !tbaa !186
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !188
  store ptr null, ptr %i.f, align 8, !tbaa !188
  store ptr %i.g, ptr %i.e, align 8, !tbaa !189
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !189  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_6FutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_D2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i8, ptr %i.j, align 8, !tbaa !186, !range !84, !noundef !85
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly7futures6detail8CoreBase9detachOneEv(ptr noundef nonnull align 16 dereferenceable(136) %i.i) #26
  %.pre.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !189
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %i.i, %bb.d ]
  invoke void @_ZN5folly7futures6detail32coreDetachPromiseMaybeWithResultImEEvRNS1_4CoreIT_EE(ptr noundef nonnull align 16 dereferenceable(160) %i.m)
          to label %_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_6FutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_D2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #34
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @abort() #34
  unreachable

_ZZN5folly7futures6detail4CoreImE11setCallbackIZNS1_8waitImplINS_6FutureImEEmEEvRT_EUlONS_17ExecutorKeepAliveINS_8ExecutorEEEONS_3TryImEEE_EEvOS8_OSt10shared_ptrINS_14RequestContextEENS1_18InlineContinuationEENUlRNS1_8CoreBaseESD_PNS_17exception_wrapperEE_D2Ev.exit: ; preds = %bb.f, %bb.c, %bb.a
  ret i64 0
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_14FutureNotReadyEJEEEvDpT0_() local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.folly::FutureNotReady", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.46)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly14FutureNotReadyE, i64 16), ptr %0, align 8, !tbaa !11
  invoke void @_ZN5folly15throw_exceptionINS_14FutureNotReadyEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) #23
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_14FutureNotReadyEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #22 comdat {
end_hunk_5
