Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clouds?download=true
inline.NumInlined: 1459
inline.NumDeleted: 513
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6CloudsC2EPN5scene13ISceneManagerEP13IShaderSourceij:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 258
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.be, align 2, !tbaa !65
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  %i.bh = load i16, ptr %i.bg, align 8
  %i.bi = and i16 %i.bh, -4096
  store i16 %i.bi, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 282
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.bj, align 2, !tbaa !65
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  %i.bm = load i16, ptr %i.bl, align 8
  %i.bn = and i16 %i.bm, -4096
  store i16 %i.bn, ptr %i.bl, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 306
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.bo, align 2, !tbaa !65
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 332
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bp, i8 0, i64 20, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bq, align 4, !tbaa !24
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 350
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %.sroa.559.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 412
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.bt, i8 0, i64 21, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i8 0, i64 32, i1 false)
  store i32 %5, ptr %i.bv, align 4, !tbaa !83
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 436
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.bw, i8 0, i64 19, i1 false)
  store <4 x float> splat (float 1.000000e+00), ptr %i.by, align 4, !tbaa !24
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  store i32 0, ptr %i.ca, align 8, !tbaa !84
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  store i32 0, ptr %i.cb, align 4, !tbaa !84
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  store i32 0, ptr %i.cc, align 8, !tbaa !84
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 480
  store <2 x float> zeroinitializer, ptr %i.cd, align 4, !tbaa !24
  store i8 -44, ptr %i.bs, align 2
  store i16 3857, ptr %i.br, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.cf, ptr %7, align 8, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cf, ptr noundef nonnull align 1 dereferenceable(12) @.str, i64 12, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 12, ptr %i.cg, align 8, !tbaa !89
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i8 0, ptr %i.ch, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !94
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !95
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.cl, align 8, !tbaa !96
  %i.cm = load ptr, ptr %3, align 8, !tbaa !19
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = invoke noundef i32 %i.co(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 1, ptr noundef null)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !97
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJifEEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.cr)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #24
  unreachable

.body:                                            ; preds = %._crit_edge.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJifEESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.cv = load ptr, ptr %7, align 8, !tbaa !98    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.cf
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.cx = load ptr, ptr %7, align 8, !tbaa !98    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cf
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.cz = load i64, ptr %i.cf, align 8, !tbaa !65
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.db = load ptr, ptr %3, align 8, !tbaa !19
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke noundef nonnull align 8 dereferenceable(96) ptr %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.cp)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 36
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !107
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 %i.dg, ptr %i.dh, align 8, !tbaa !108
  store float 4.000000e-01, ptr %i.bz, align 4, !tbaa !24
  store i32 -437194497, ptr %i.ca, align 8, !tbaa !109
  store i32 -16777216, ptr %i.cb, align 4, !tbaa !109
  store i32 -3355444, ptr %i.cc, align 8, !tbaa !109
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 472
  store <2 x float> <float 1.600000e+01, float 1.200000e+02>, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !24
  store i32 0, ptr %i.cd, align 4, !tbaa !24
  store i32 -1073741824, ptr %i.ce, align 8, !tbaa !24
  invoke void @_ZN6Clouds12readSettingsEv(ptr noundef nonnull align 8 dereferenceable(484) %0)
          to label %.noexc.i27 unwind label %bb.p

.noexc.i27:                                       ; preds = %bb.h
  %i.di = load ptr, ptr @g_settings, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.dj, ptr %8, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 16, ptr %i.a, align 8, !tbaa !112
  %i.dk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc28 unwind label %bb.q   ; 2 uses

.noexc28:                                         ; preds = %.noexc.i27
  store ptr %i.dk, ptr %8, align 8, !tbaa !98
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !112 ; 3 uses
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dk, ptr noundef nonnull align 1 dereferenceable(16) @.str.1, i64 16, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !89
  %i.dn = load ptr, ptr %8, align 8, !tbaa !98
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl
  store i8 0, ptr %i.do, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN8Settings23registerChangedCallbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvS7_PvES8_(ptr noundef nonnull align 8 dereferenceable(236) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @_ZL24cloud_3d_setting_changedRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPv, ptr noundef nonnull %0)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %.noexc28
  %i.dp = load ptr, ptr %8, align 8, !tbaa !98    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.dj
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.i
  %i.dr = load i64, ptr %i.dj, align 8, !tbaa !65
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.dt = load ptr, ptr @g_settings, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.du, ptr %9, align 8, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.du, ptr noundef nonnull align 1 dereferenceable(11) @.str.2, i64 11, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 11, ptr %i.dv, align 8, !tbaa !89
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 27
  store i8 0, ptr %i.dw, align 1, !tbaa !65
  invoke void @_ZN8Settings23registerChangedCallbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvS7_PvES8_(ptr noundef nonnull align 8 dereferenceable(236) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @_ZL24cloud_3d_setting_changedRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPv, ptr noundef nonnull %0)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.dx = load ptr, ptr %9, align 8, !tbaa !98    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.du
  br i1 %i.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.j
  %i.dz = load i64, ptr %i.du, align 8, !tbaa !65
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.eb = load float, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !113
  %i.ec = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !114
  %i.ed = fmul nsz float %i.ec, 1.000000e+01
  %.scalar = fmul nsz float %i.eb, 1.000000e+01   ; 2 uses
  %i.ee = insertelement <4 x float> <float -1.000000e+07, float poison, float -1.000000e+07, float 1.000000e+07>, float %.scalar, i64 1
  %i.ef = fadd nsz float %.scalar, %i.ed
  %i.eg = load <3 x i16>, ptr %i.bx, align 4, !tbaa !115
  %i.eh = shufflevector <3 x i16> %i.eg, <3 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ei = sitofp nsz <4 x i16> %i.eh to <4 x float>
  %i.ej = fmul nnan nsz <4 x float> %i.ei, splat (float 1.000000e+01) ; 2 uses
  %i.ek = fsub nsz <4 x float> %i.ee, %i.ej
  store <4 x float> %i.ek, ptr %i.bu, align 8, !tbaa !24
  %i.el = insertelement <2 x float> <float poison, float 1.000000e+07>, float %i.ef, i64 0
  %i.em = shufflevector <4 x float> %i.ej, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.en = fsub nsz <2 x float> %i.el, %i.em
  store <2 x float> %i.en, ptr %.sroa.559.0..sroa_idx60, align 8, !tbaa !24
  store i16 0, ptr %i.ab, align 4, !tbaa !54
  %i.eo = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #25
          to label %bb.k unwind label %bb.p       ; 7 uses

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38
  invoke void @_ZN5scene11CMeshBufferIN5video9S3DVertexEEC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.eo)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.ep = load ptr, ptr %i.bt, align 8, !tbaa !116 ; 3 uses
  %.not.i40 = icmp eq ptr %i.ep, null
  br i1 %.not.i40, label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 192 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !118
  %i.es = add nsw i32 %i.er, -1                   ; 2 uses
  store i32 %i.es, ptr %i.eq, align 8, !tbaa !118
  %.not.i.i = icmp eq i32 %i.es, 0
  br i1 %.not.i.i, label %bb.n, label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit

bb.n:                                             ; preds = %bb.m
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 184 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !19
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(12) %i.et) #23, !inline_history !1
  br label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit

_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  store ptr %i.eo, ptr %i.bt, align 8, !tbaa !116
  %i.ex = load ptr, ptr %i.eo, align 8, !tbaa !19
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = invoke noundef ptr %i.ez(ptr noundef nonnull align 8 dereferenceable(8) %i.eo)
          to label %.noexc41 unwind label %bb.p, !inline_history !2

.noexc41:                                         ; preds = %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i32 2, ptr %i.fb, align 8, !tbaa !121
  %i.fc = load ptr, ptr %i.eo, align 8, !tbaa !19
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = invoke noundef ptr %i.fe(ptr noundef nonnull align 8 dereferenceable(8) %i.eo)
          to label %bb.o unwind label %bb.p, !inline_history !2

bb.o:                                             ; preds = %.noexc41
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i32 2, ptr %i.fg, align 8, !tbaa !121
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %.body
  %i.fh = load i64, ptr %i.cf, align 8, !tbaa !65
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.fi) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.u

bb.p:                                             ; preds = %.noexc41, %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.q:                                             ; preds = %.noexc.i27
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.r:                                             ; preds = %.noexc28
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fm = load ptr, ptr %8, align 8, !tbaa !98    ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.dj
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.r
  %i.fo = load i64, ptr %i.dj, align 8, !tbaa !65
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.q
  %.pn19 = phi { ptr, i32 } [ %i.fk, %bb.q ], [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.fl, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.u

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.fq = landingpad { ptr, i32 }
          cleanup
  %i.fr = load ptr, ptr %9, align 8, !tbaa !98    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.du
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.s
  %i.ft = load i64, ptr %i.du, align 8, !tbaa !65
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.u

bb.t:                                             ; preds = %bb.k
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 200) #22
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.p, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.pn23 = phi { ptr, i32 } [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.fv, %bb.t ], [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %.pn19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %i.fj, %bb.p ]
  %i.fw = load ptr, ptr %i.bt, align 8, !tbaa !116 ; 3 uses
  %.not.i.i52 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i52, label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 192 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !118
  %i.fz = add nsw i32 %i.fy, -1                   ; 2 uses
  store i32 %i.fz, ptr %i.fx, align 8, !tbaa !118
  %.not.i.i.i53 = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i.i53, label %bb.w, label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 184 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !19
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(12) %i.ga) #23, !inline_history !3
  br label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit

_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit: ; preds = %bb.u, %bb.v, %bb.w
  call void @_ZN5video9SMaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(127) dereferenceable(127) %i.av) #23
  call void @_ZN5scene10ISceneNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull %i.f) #23
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Clouds12readSettingsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(484) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = load ptr, ptr @g_settings, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 16, ptr %i.a, align 8, !tbaa !112
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %1, align 8, !tbaa !98
  %i.e = load i64, ptr %i.a, align 8, !tbaa !112  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) @.str.1, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !89
  %i.g = load ptr, ptr %1, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.i = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.d       ; 2 uses

bb.a:                                             ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 435 ; 2 uses
  %i.k = zext i1 %i.i to i8
  store i8 %i.k, ptr %i.j, align 1, !tbaa !122
  %i.l = load ptr, ptr %1, align 8, !tbaa !98     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.c
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.n = load i64, ptr %i.c, align 8, !tbaa !65
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #22
  %.pre = load i8, ptr %i.j, align 1, !tbaa !122, !range !123
end_hunk_0
begin_hunk_1_@_ZN6CloudsC1EPN5scene13ISceneManagerEP13IShaderSourceij:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 258
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.at, align 2, !tbaa !65
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.aw = load i16, ptr %i.av, align 8
  %i.ax = and i16 %i.aw, -4096
  store i16 %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 282
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.ay, align 2, !tbaa !65
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %i.bb = load i16, ptr %i.ba, align 8
  %i.bc = and i16 %i.bb, -4096
  store i16 %i.bc, ptr %i.ba, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 306
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.bd, align 2, !tbaa !65
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 332
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.be, i8 0, i64 20, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bf, align 4, !tbaa !24
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 350
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %.sroa.562.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 412
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.bi, i8 0, i64 21, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 32, i1 false)
  store i32 %4, ptr %i.bk, align 4, !tbaa !83
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 436
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.bl, i8 0, i64 19, i1 false)
  store <4 x float> splat (float 1.000000e+00), ptr %i.bn, align 4, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  store i32 0, ptr %i.bp, align 8, !tbaa !84
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  store i32 0, ptr %i.bq, align 4, !tbaa !84
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  store i32 0, ptr %i.br, align 8, !tbaa !84
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 480
  store <2 x float> zeroinitializer, ptr %i.bs, align 4, !tbaa !24
  store i8 -44, ptr %i.bh, align 2
  store i16 3857, ptr %i.bg, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bu, ptr %6, align 8, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bu, ptr noundef nonnull align 1 dereferenceable(12) @.str, i64 12, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 12, ptr %i.bv, align 8, !tbaa !89
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 0, ptr %i.bw, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !94
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !95
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.ca, align 8, !tbaa !96
  %i.cb = load ptr, ptr %2, align 8, !tbaa !19
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke noundef i32 %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef 1, ptr noundef null)
          to label %bb.e unwind label %.body27

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !97
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St7variantIJifEEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.cg)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #24
  unreachable

.body27:                                          ; preds = %._crit_edge.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJifEESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ck = load ptr, ptr %6, align 8, !tbaa !98    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.bu
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.cm = load ptr, ptr %6, align 8, !tbaa !98    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bu
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.co = load i64, ptr %i.bu, align 8, !tbaa !65
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.cq = load ptr, ptr %2, align 8, !tbaa !19
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = invoke noundef nonnull align 8 dereferenceable(96) ptr %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.ce)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 36
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !107
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 %i.cv, ptr %i.cw, align 8, !tbaa !108
  store float 4.000000e-01, ptr %i.bo, align 4, !tbaa !24
  store i32 -437194497, ptr %i.bp, align 8, !tbaa !109
  store i32 -16777216, ptr %i.bq, align 4, !tbaa !109
  store i32 -3355444, ptr %i.br, align 8, !tbaa !109
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 472
  store <2 x float> <float 1.600000e+01, float 1.200000e+02>, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !24
  store i32 0, ptr %i.bs, align 4, !tbaa !24
  store i32 -1073741824, ptr %i.bt, align 8, !tbaa !24
  invoke void @_ZN6Clouds12readSettingsEv(ptr noundef nonnull align 8 dereferenceable(484) %0)
          to label %.noexc.i30 unwind label %bb.p

.noexc.i30:                                       ; preds = %bb.h
  %i.cx = load ptr, ptr @g_settings, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.cy, ptr %7, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 16, ptr %i.a, align 8, !tbaa !112
  %i.cz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc31 unwind label %bb.q   ; 2 uses

.noexc31:                                         ; preds = %.noexc.i30
  store ptr %i.cz, ptr %7, align 8, !tbaa !98
  %i.da = load i64, ptr %i.a, align 8, !tbaa !112 ; 3 uses
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cz, ptr noundef nonnull align 1 dereferenceable(16) @.str.1, i64 16, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.da, ptr %i.db, align 8, !tbaa !89
  %i.dc = load ptr, ptr %7, align 8, !tbaa !98
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.da
  store i8 0, ptr %i.dd, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN8Settings23registerChangedCallbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvS7_PvES8_(ptr noundef nonnull align 8 dereferenceable(236) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @_ZL24cloud_3d_setting_changedRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPv, ptr noundef nonnull %0)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %.noexc31
  %i.de = load ptr, ptr %7, align 8, !tbaa !98    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cy
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.i
  %i.dg = load i64, ptr %i.cy, align 8, !tbaa !65
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.di = load ptr, ptr @g_settings, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.dj, ptr %8, align 8, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.dj, ptr noundef nonnull align 1 dereferenceable(11) @.str.2, i64 11, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 11, ptr %i.dk, align 8, !tbaa !89
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 27
  store i8 0, ptr %i.dl, align 1, !tbaa !65
  invoke void @_ZN8Settings23registerChangedCallbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFvS7_PvES8_(ptr noundef nonnull align 8 dereferenceable(236) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @_ZL24cloud_3d_setting_changedRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPv, ptr noundef nonnull %0)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.dm = load ptr, ptr %8, align 8, !tbaa !98    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.dj
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.j
  %i.do = load i64, ptr %i.dj, align 8, !tbaa !65
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i41: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.dq = load float, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !113
  %i.dr = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !114
  %i.ds = fmul nsz float %i.dr, 1.000000e+01
  %.scalar = fmul nsz float %i.dq, 1.000000e+01   ; 2 uses
  %i.dt = insertelement <4 x float> <float -1.000000e+07, float poison, float -1.000000e+07, float 1.000000e+07>, float %.scalar, i64 1
  %i.du = fadd nsz float %.scalar, %i.ds
  %i.dv = load <3 x i16>, ptr %i.bm, align 4, !tbaa !115
  %i.dw = shufflevector <3 x i16> %i.dv, <3 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dx = sitofp nsz <4 x i16> %i.dw to <4 x float>
  %i.dy = fmul nnan nsz <4 x float> %i.dx, splat (float 1.000000e+01) ; 2 uses
  %i.dz = fsub nsz <4 x float> %i.dt, %i.dy
  store <4 x float> %i.dz, ptr %i.bj, align 8, !tbaa !24
  %i.ea = insertelement <2 x float> <float poison, float 1.000000e+07>, float %i.du, i64 0
  %i.eb = shufflevector <4 x float> %i.dy, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ec = fsub nsz <2 x float> %i.ea, %i.eb
  store <2 x float> %i.ec, ptr %.sroa.562.0..sroa_idx63, align 8, !tbaa !24
  store i16 0, ptr %i.w, align 4, !tbaa !54
  %i.ed = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #25
          to label %bb.k unwind label %bb.p       ; 7 uses

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i41
  invoke void @_ZN5scene11CMeshBufferIN5video9S3DVertexEEC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.ed)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.ee = load ptr, ptr %i.bi, align 8, !tbaa !116 ; 3 uses
  %.not.i43 = icmp eq ptr %i.ee, null
  br i1 %.not.i43, label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 192 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !118
  %i.eh = add nsw i32 %i.eg, -1                   ; 2 uses
  store i32 %i.eh, ptr %i.ef, align 8, !tbaa !118
  %.not.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i, label %bb.n, label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit

bb.n:                                             ; preds = %bb.m
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 184 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !19
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(12) %i.ei) #23, !inline_history !1
  br label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit

_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  store ptr %i.ed, ptr %i.bi, align 8, !tbaa !116
  %i.em = load ptr, ptr %i.ed, align 8, !tbaa !19
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = invoke noundef ptr %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.ed)
          to label %.noexc44 unwind label %bb.p, !inline_history !2

.noexc44:                                         ; preds = %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i32 2, ptr %i.eq, align 8, !tbaa !121
  %i.er = load ptr, ptr %i.ed, align 8, !tbaa !19
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = invoke noundef ptr %i.et(ptr noundef nonnull align 8 dereferenceable(8) %i.ed)
          to label %bb.o unwind label %bb.p, !inline_history !2

bb.o:                                             ; preds = %.noexc44
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i32 2, ptr %i.ev, align 8, !tbaa !121
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %.body27
  %i.ew = load i64, ptr %i.bu, align 8, !tbaa !65
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.ex) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %.body27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.u

bb.p:                                             ; preds = %.noexc44, %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.q:                                             ; preds = %.noexc.i30
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

bb.r:                                             ; preds = %.noexc31
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fb = load ptr, ptr %7, align 8, !tbaa !98    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.cy
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.r
  %i.fd = load i64, ptr %i.cy, align 8, !tbaa !65
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.q
  %.pn19 = phi { ptr, i32 } [ %i.ez, %bb.q ], [ %i.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %i.fa, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.u

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.ff = landingpad { ptr, i32 }
          cleanup
  %i.fg = load ptr, ptr %8, align 8, !tbaa !98    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.dj
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.s
  %i.fi = load i64, ptr %i.dj, align 8, !tbaa !65
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.u

bb.t:                                             ; preds = %bb.k
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef 200) #22
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.p, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %.pn23 = phi { ptr, i32 } [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %i.fk, %bb.t ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %.pn19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %i.ey, %bb.p ]
  %i.fl = load ptr, ptr %i.bi, align 8, !tbaa !116 ; 3 uses
  %.not.i.i55 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i55, label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 192 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !118
  %i.fo = add nsw i32 %i.fn, -1                   ; 2 uses
  store i32 %i.fo, ptr %i.fm, align 8, !tbaa !118
  %.not.i.i.i56 = icmp eq i32 %i.fo, 0
  br i1 %.not.i.i.i56, label %bb.w, label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 184 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !19
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(12) %i.fp) #23, !inline_history !3
  br label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit

_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit: ; preds = %bb.u, %bb.v, %bb.w
  call void @_ZN5video9SMaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(127) dereferenceable(127) %i.ak) #23
  call void @_ZN5scene10ISceneNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT6Clouds, i64 8)) #23
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i, %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23, %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit ], [ %i.ad, %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i ]
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6CloudsD2Ev(ptr noundef nonnull align 8 dereferenceable(484) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !19
  %i.g = load ptr, ptr @g_settings, align 8, !tbaa !111
  %i.h = invoke noundef i64 @_ZN8Settings29deregisterAllChangedCallbacksEPKv(ptr noundef nonnull align 8 dereferenceable(236) %i.g, ptr noundef nonnull %0)
          to label %bb.b unwind label %bb.l       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !116  ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !118
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !118
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 184 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #23, !inline_history !3
  br label %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit

_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !134  ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.s, null
  br i1 %.not.i.i2, label %_ZN5video14SMaterialLayerD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #22
  br label %_ZN5video14SMaterialLayerD2Ev.exit.i

_ZN5video14SMaterialLayerD2Ev.exit.i:             ; preds = %bb.e, %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 288
end_hunk_1
begin_hunk_2_@_ZN6Clouds10updateMeshEv:bb.a
  %i.aba = phi ptr [ %.pre.i, %.noexc457 ], [ %i.aas, %bb.cb ]
  %i.abb = zext i32 %i.aar to i64
  %i.abc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aba, i64 noundef %i.abb)
          to label %_ZN11StreamProxylsIjEERS_OT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsIjEERS_OT_.exit:                ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit455, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.4, ptr %i.a, align 8, !tbaa !156
  %i.abd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aai, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ce unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ce:                                            ; preds = %_ZN11StreamProxylsIjEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !157 ; 5 uses
  %.not.i460 = icmp eq ptr %i.abe, null
  br i1 %.not.i460, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !19
  %i.abg = getelementptr i8, ptr %i.abf, i64 -24
  %i.abh = load i64, ptr %i.abg, align 8          ; 2 uses
  %i.abi = getelementptr inbounds i8, ptr %i.abe, i64 %i.abh
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 32
  %i.abk = load i32, ptr %i.abj, align 8, !tbaa !164
  %i.abl = icmp eq i32 %i.abk, 0
  br i1 %i.abl, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.abe)
          to label %.noexc462 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc462:                                        ; preds = %bb.cg
  %.pre.i461 = load ptr, ptr %i.abd, align 8, !tbaa !157 ; 2 uses
  %.pre742 = load ptr, ptr %.pre.i461, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr i8, ptr %.pre742, i64 -24
  %.pre743 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %.noexc462, %bb.cf
  %i.abm = phi i64 [ %.pre743, %.noexc462 ], [ %i.abh, %bb.cf ]
  %i.abn = phi ptr [ %.pre.i461, %.noexc462 ], [ %i.abe, %bb.cf ] ; 2 uses
  %i.abo = getelementptr inbounds i8, ptr %i.abn, i64 %i.abm
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 240
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !235 ; 6 uses
  %.not.i.i.i467 = icmp eq ptr %i.abq, null
  br i1 %.not.i.i.i467, label %bb.ci, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %.noexc468 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc468:                                        ; preds = %bb.ci
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.ch
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 56
  %i.abs = load i8, ptr %i.abr, align 8, !tbaa !240
  %.not.i1.i.i = icmp eq i8 %i.abs, 0
  br i1 %.not.i1.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abq, i64 67
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !65
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ck:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.abq)
          to label %.noexc469 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc469:                                        ; preds = %bb.ck
  %i.abv = load ptr, ptr %i.abq, align 8, !tbaa !19
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 48
  %i.abx = load ptr, ptr %i.abw, align 8
  %i.aby = invoke noundef signext i8 %i.abx(ptr noundef nonnull align 8 dereferenceable(570) %i.abq, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !216

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc469, %bb.cj
  %.0.i.i.i = phi i8 [ %i.abu, %bb.cj ], [ %i.aby, %.noexc469 ]
  %i.abz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.abn, i8 noundef signext %.0.i.i.i)
          to label %.noexc471 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc471:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.aca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.abz)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.ce, %.noexc471
  %.not.i.i464 = icmp eq ptr %.sroa.0502.0, null
  br i1 %.not.i.i464, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.acb = ptrtoint ptr %.sroa.20512.0 to i64
  %i.acc = ptrtoint ptr %.sroa.0502.0 to i64
  %i.acd = sub i64 %i.acb, %i.acc                 ; 2 uses
  %i.ace = ashr exact i64 %i.acd, 3
  %i.acf = sub nsw i64 0, %i.ace
  %i.acg = getelementptr inbounds [8 x i8], ptr %.sroa.20512.0, i64 %i.acf
  call void @_ZdlPvm(ptr noundef %i.acg, i64 noundef %i.acd) #22
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.cl, %_ZN11StreamProxylsEPFRSoS0_E.exit, %bb.c
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.3, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.2, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.1, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i441, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i431, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i421, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i411, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i401, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i, %bb.h, %_ZNSt6vectorItSaItEE6resizeEm.exit.invoke, %.noexc384.invoke, %.invoke, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i, %._crit_edge636, %.noexc345, %_ZN5scene11IMeshBuffer8setDirtyENS_13E_BUFFER_TYPEE.exit, %.noexc378, %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit, %.noexc380, %bb.av, %bb.ay, %.noexc387, %bb.az, %.noexc390, %_ZTW11tracestream.exit, %.noexc451, %.noexc471, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc469, %bb.ck, %bb.ci, %bb.cg, %_ZN11StreamProxylsIjEERS_OT_.exit, %bb.cd, %bb.cc, %.noexc453, %bb.ca
  %lpad.loopexit.split-lp875 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i465 = icmp eq ptr %.sroa.0502.0, null
  br i1 %.not.i.i465, label %.body, label %bb.cm

bb.cm:                                            ; preds = %.loopexit.split-lp584.thread, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn321.pn845 = phi { ptr, i32 } [ %i.kx, %.loopexit.split-lp584.thread ], [ %lpad.loopexit.split-lp875, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ach = ptrtoint ptr %.sroa.20512.0 to i64
  %i.aci = ptrtoint ptr %.sroa.0502.0 to i64
  %i.acj = sub i64 %i.ach, %i.aci                 ; 2 uses
  %i.ack = ashr exact i64 %i.acj, 3
  %i.acl = sub nsw i64 0, %i.ack
  %i.acm = getelementptr inbounds [8 x i8], ptr %.sroa.20512.0, i64 %i.acl
  call void @_ZdlPvm(ptr noundef %i.acm, i64 noundef %i.acj) #22
  br label %.body

.body:                                            ; preds = %bb.cm, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn321.pn846 = phi { ptr, i32 } [ %.pn321.pn845, %bb.cm ], [ %lpad.loopexit.split-lp875, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn321.pn846
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK6Clouds10gridFilledEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(484) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = sitofp nsz i32 %1 to float
  %i.b = fmul nnan nsz float %i.a, 3.200000e-01
  %i.c = sitofp nsz i32 %2 to float
  %i.d = fmul nnan nsz float %i.c, 3.200000e-01
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.f = load i32, ptr %i.e, align 4, !tbaa !83
  %i.g = tail call nsz noundef float @_Z15noise2d_fractalffiifb(float noundef %i.b, float noundef %i.d, i32 noundef %i.f, i32 noundef 3, float noundef 5.000000e-01, i1 noundef zeroext true)
  %i.h = fdiv nsz float %i.g, 1.750000e+00
  %i.i = tail call nsz float @llvm.fmuladd.f32(float %i.h, float 5.000000e-01, float 5.000000e-01)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.k = load float, ptr %i.j, align 4, !tbaa !146
  %i.l = fcmp nsz olt float %i.i, %i.k
  ret i1 %i.l
}

declare noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Clouds6renderEv(ptr noundef nonnull align 8 dereferenceable(484) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.core::vector3d", align 8    ; 5 uses
  %2 = alloca %"class.video::SColor", align 4     ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 6 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %i.f = alloca i8, align 1                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.h = load float, ptr %i.g, align 4, !tbaa !146
  %i.i = fcmp nsz ugt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k) ; 12 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !52   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %.not = icmp eq i32 %i.t, 16
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6Clouds10updateMeshEv(ptr noundef nonnull align 8 dereferenceable(484) %0)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.w = load float, ptr %i.u, align 8, !tbaa !138
  %i.x = load float, ptr %i.v, align 8, !tbaa !138
  %i.y = fsub nsz float %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.aa = load float, ptr %i.z, align 4, !tbaa !139
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !139
  %i.ad = fsub nsz float %i.aa, %i.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 428
  %.sroa.05.0.copyload = load i48, ptr %i.af, align 4, !tbaa !115 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.05.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.ag = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.ah = fmul nnan nsz float %i.ag, 1.000000e+01
  %i.ai = bitcast i48 %.sroa.05.0.copyload to <3 x i16>
  %i.aj = shufflevector <3 x i16> %i.ai, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.ak = sitofp nsz <2 x i16> %i.aj to <2 x float>
  %i.al = fmul nnan nsz <2 x float> %i.ak, <float 1.000000e+01, float 1.000000e+00> ; 2 uses
  %i.am = insertelement <2 x float> <float poison, float -1.000000e+01>, float %i.y, i64 0 ; 2 uses
  %i.an = fsub nsz <2 x float> %i.am, %i.al
  %i.ao = fmul nnan nsz <2 x float> %i.am, %i.al
  %i.ap = shufflevector <2 x float> %i.an, <2 x float> %i.ao, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ap, ptr %1, align 8, !tbaa !24
  %i.aq = fsub nsz float %i.ad, %i.ah
  store float %i.aq, ptr %i.ae, align 8, !tbaa !165
  %i.ar = load ptr, ptr %0, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 224
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull align 4 dereferenceable(12) %1)
  %i.au = load ptr, ptr %0, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 256
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(218) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 435
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !122, !range !123, !noundef !135
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = fcmp nsz oge float %i.bb, f0x3C23D70A
  %i.bd = select i1 %i.az, i1 %i.bc, i1 false
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 350 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 2
  %i.bh = select i1 %i.bd, i8 16, i8 0
  %i.bi = and i8 %i.bg, -17
  %i.bj = or disjoint i8 %i.bh, %i.bi
  store i8 %i.bj, ptr %i.bf, align 2
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !241
  %i.bn = fmul nsz float %i.bm, 2.550000e+02
  %i.bo = fadd nsz float %i.bn, 5.000000e-01
  %i.bp = call nsz noundef float @llvm.floor.f32(float %i.bo)
  %i.bq = fptosi float %i.bp to i32
  %i.br = load <2 x float>, ptr %i.bk, align 4, !tbaa !24
  %i.bs = fmul nsz <2 x float> %i.br, splat (float 2.550000e+02) ; 2 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = fadd nsz float %i.bt, 5.000000e-01
  %i.bv = call nsz noundef float @llvm.floor.f32(float %i.bu)
  %i.bw = fptosi float %i.bv to i32
  %i.bx = extractelement <2 x float> %i.bs, i64 1
  %i.by = fadd nsz float %i.bx, 5.000000e-01
  %i.bz = call nsz noundef float @llvm.floor.f32(float %i.by)
  %i.ca = fptosi float %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !166
  %i.cd = fmul nsz float %i.cc, 2.550000e+02
  %i.ce = fadd nsz float %i.cd, 5.000000e-01
  %i.cf = call nsz noundef float @llvm.floor.f32(float %i.ce)
  %i.cg = fptosi float %i.cf to i32
  %i.ch = shl i32 %i.bq, 24
  %i.ci = shl i32 %i.bw, 16
  %i.cj = and i32 %i.ci, 16711680
  %i.ck = or disjoint i32 %i.cj, %i.ch
  %i.cl = shl i32 %i.ca, 8
  %i.cm = and i32 %i.cl, 65280
  %i.cn = or disjoint i32 %i.ck, %i.cm
  %i.co = and i32 %i.cg, 255
  %i.cp = or disjoint i32 %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !109
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cs = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %i.cr)
  %i.cv = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 96
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(127) %i.be)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 0, ptr %2, align 4, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 1, ptr %i.a, align 4, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i8 0, ptr %i.e, align 1, !tbaa !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i8 0, ptr %i.f, align 1, !tbaa !244
  %i.da = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 480
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
  %i.dd = load float, ptr %i.b, align 4, !tbaa !24
  %i.de = fcmp nsz olt float %i.dd, 1.000000e+06
  br i1 %i.de, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.df = uitofp i16 %i.cz to float
  %i.dg = fmul nnan nsz float %i.df, 6.400000e+02 ; 2 uses
  %.sroa.01.0.copyload = load i32, ptr %2, align 4, !tbaa !109
  %i.dh = load i32, ptr %i.a, align 4, !tbaa !243
  %i.di = fpext nnan nsz float %i.dg to double
  %i.dj = fmul nnan nsz float %i.dg, 5.000000e-01
  %i.dk = fmul nnan nsz double %i.di, 1.200000e+00
  %i.dl = fptrunc nsz double %i.dk to float
  %i.dm = load float, ptr %i.d, align 4, !tbaa !24
  %i.dn = load i8, ptr %i.e, align 1, !tbaa !244, !range !123, !noundef !135
  %i.do = trunc nuw i8 %i.dn to i1
  %i.dp = load i8, ptr %i.f, align 1, !tbaa !244, !range !123, !noundef !135
  %i.dq = trunc nuw i8 %i.dp to i1
  %i.dr = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 472
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 %.sroa.01.0.copyload, i32 noundef %i.dh, float noundef %i.dj, float noundef %i.dl, float noundef %i.dm, i1 noundef zeroext %i.do, i1 noundef zeroext %i.dq)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !116
  %i.dw = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 448
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.dv)
  %.sroa.0.0.copyload = load i32, ptr %2, align 4, !tbaa !109
  %i.dz = load i32, ptr %i.a, align 4, !tbaa !243
  %i.ea = load float, ptr %i.b, align 4, !tbaa !24
  %i.eb = load float, ptr %i.c, align 4, !tbaa !24
  %i.ec = load float, ptr %i.d, align 4, !tbaa !24
  %i.ed = load i8, ptr %i.e, align 1, !tbaa !244, !range !123, !noundef !135
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = load i8, ptr %i.f, align 1, !tbaa !244, !range !123, !noundef !135
  %i.eg = trunc nuw i8 %i.ef to i1
  %i.eh = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 472
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 %.sroa.0.0.copyload, i32 noundef %i.dz, float noundef %i.ea, float noundef %i.eb, float noundef %i.ec, i1 noundef zeroext %i.ee, i1 noundef zeroext %i.eg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6Clouds4stepEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(484) %0, float noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = fmul nsz float %1, 1.000000e+01
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.d = load <2 x float>, ptr %i.c, align 4, !tbaa !24
  %i.e = insertelement <2 x float> poison, float %i.b, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = fmul nsz <2 x float> %i.f, %i.d
  %i.h = load <2 x float>, ptr %i.a, align 8, !tbaa !24
  %i.i = fadd nsz <2 x float> %i.g, %i.h
  store <2 x float> %i.i, ptr %i.a, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Clouds6updateERKN4core8vector3dIfEERKN5video7SColorfE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(484) initializes((416, 428), (434, 435), (436, 452)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 436
  %.sroa.02.0.copyload = load i32, ptr %i.a, align 4, !tbaa !109 ; 3 uses
  %i.d = and i32 %.sroa.02.0.copyload, 255
  %i.e = uitofp nsz nneg i32 %i.d to float
  %i.f = fmul nnan nsz float %i.e, f0x3B808081    ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.b, align 8, !tbaa !109 ; 4 uses
  %i.g = and i32 %.sroa.0.0.copyload, 255
  %i.h = uitofp nsz nneg i32 %i.g to float
  %i.i = fmul nnan nsz float %i.h, f0x3B808081
  %i.j = lshr i32 %.sroa.0.0.copyload, 24
  %i.k = uitofp nsz nneg i32 %i.j to float
  %i.l = fmul nnan nsz float %i.k, f0x3B808081
  %i.m = lshr i32 %.sroa.0.0.copyload, 16
  %i.n = and i32 %i.m, 255
  %i.o = uitofp nsz nneg i32 %i.n to float
  %i.p = lshr i32 %.sroa.0.0.copyload, 8
  %i.q = and i32 %i.p, 255
  %i.r = uitofp nsz nneg i32 %i.q to float
  %i.s = insertelement <2 x float> poison, float %i.o, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.r, i64 1
  %i.u = fmul nnan nsz <2 x float> %i.t, splat (float f0x3B808081)
  %i.v = load <2 x float>, ptr %2, align 4, !tbaa !24
  %i.w = fmul nsz <2 x float> %i.v, %i.u          ; 2 uses
  %i.x = lshr i32 %.sroa.02.0.copyload, 16
  %i.y = and i32 %i.x, 255
  %i.z = uitofp nsz nneg i32 %i.y to float
  %i.aa = lshr i32 %.sroa.02.0.copyload, 8
  %i.ab = and i32 %i.aa, 255
  %i.ac = uitofp nsz nneg i32 %i.ab to float
  %i.ad = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.ac, i64 1
  %i.af = fmul nnan nsz <2 x float> %i.ae, splat (float f0x3B808081) ; 2 uses
  %i.ag = fcmp nsz olt <2 x float> %i.w, %i.af
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.af, <2 x float> %i.w ; 2 uses
  %i.ai = fcmp nsz olt <2 x float> %i.ah, splat (float 1.000000e+00)
  %i.aj = select <2 x i1> %i.ai, <2 x float> %i.ah, <2 x float> splat (float 1.000000e+00)
  store <2 x float> %i.aj, ptr %i.c, align 4, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !166
  %i.am = fmul nsz float %i.i, %i.al              ; 2 uses
  %i.an = fcmp nsz olt float %i.am, %i.f
  %i.ao = select i1 %i.an, float %i.f, float %i.am ; 2 uses
  %i.ap = fcmp nsz olt float %i.ao, 1.000000e+00
  %i.aq = select i1 %i.ap, float %i.ao, float 1.000000e+00
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 444
  store float %i.aq, ptr %i.ar, align 4, !tbaa !245
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 448
  store float %i.l, ptr %i.as, align 8, !tbaa !246
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 416
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.at, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !167
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 434 ; 2 uses
  store i8 0, ptr %i.au, align 2, !tbaa !247
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 435
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !122, !range !123, !noundef !135
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = fcmp nsz oge float %i.az, f0x3C23D70A
  %i.bb = select i1 %i.ax, i1 %i.ba, i1 false
  br i1 %i.bb, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !168
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 430
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !248
  %i.bg = sitofp i16 %i.bf to float
  %i.bh = tail call nsz float @llvm.fmuladd.f32(float %i.bg, float -1.000000e+01, float %i.bd) ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !249
  %i.bk = fcmp nsz ult float %i.bh, %i.bj
  br i1 %i.bk, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !250
  %i.bn = fcmp nsz ugt float %i.bh, %i.bm
  br i1 %i.bn, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bo = load float, ptr %1, align 4, !tbaa !169
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load float, ptr %i.bq, align 4, !tbaa !165
  %i.bs = load <2 x float>, ptr %i.bp, align 8, !tbaa !24
  %i.bt = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.br, i64 1
  %i.bv = fsub nsz <2 x float> %i.bu, %i.bs
  %i.bw = fdiv nsz <2 x float> %i.bv, splat (float 6.400000e+02)
  %i.bx = fadd nsz <2 x float> %i.bw, splat (float 5.000000e-01)
  %i.by = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.bx)
  %i.bz = fptosi <2 x float> %i.by to <2 x i32>
  %i.ca = sitofp nsz <2 x i32> %i.bz to <2 x float>
  %i.cb = fmul nnan nsz <2 x float> %i.ca, splat (float 3.200000e-01) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !83
  %i.ce = extractelement <2 x float> %i.cb, i64 0
  %i.cf = extractelement <2 x float> %i.cb, i64 1
  %i.cg = tail call nsz noundef float @_Z15noise2d_fractalffiifb(float noundef %i.ce, float noundef %i.cf, i32 noundef %i.cd, i32 noundef 3, float noundef 5.000000e-01, i1 noundef zeroext true)
  %i.ch = fdiv nsz float %i.cg, 1.750000e+00
  %i.ci = tail call nsz float @llvm.fmuladd.f32(float %i.ch, float 5.000000e-01, float 5.000000e-01)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !146
  %i.cl = fcmp nsz olt float %i.ci, %i.ck
  %i.cm = zext i1 %i.cl to i8
  store i8 %i.cm, ptr %i.au, align 2, !tbaa !247
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #12

declare noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef float @_Z15noise2d_fractalffiifb(float noundef, float noundef, i32 noundef, i32 noundef, float noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode9OnAnimateEj(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !56, !range !123, !noundef !135
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ne ptr %i.e, %i.d
  %or.cond.not = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(218) %0)
  %.sroa.04.010 = load ptr, ptr %i.d, align 8, !tbaa !29 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.04.010, %i.d
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.04.012 = phi ptr [ %.sroa.04.0, %.lr.ph ], [ %.sroa.04.010, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.012, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !137  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(218) %i.k, i32 noundef %1)
  %.sroa.04.0 = load ptr, ptr %.sroa.04.012, align 8, !tbaa !29 ; 2 uses
  %.not = icmp eq ptr %.sroa.04.0, %i.d
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5scene10ISceneNode7getNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode7setNameERKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5scene10ISceneNode25getTransformedBoundingBoxEv(ptr dead_on_unwind noalias writable sret(%"class.core::aabbox3d") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 4 dereferenceable(24) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(218) %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !170
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load <6 x float>, ptr %0, align 4, !tbaa !24 ; 10 uses
  %i.k = load <3 x float>, ptr %i.g, align 8, !tbaa !24 ; 2 uses
  %i.l = shufflevector <3 x float> %i.k, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.m = load <3 x float>, ptr %i.e, align 8, !tbaa !24
  %i.n = shufflevector <3 x float> %i.m, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.o = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> zeroinitializer
  %i.p = fmul nsz <4 x float> %i.o, %i.n          ; 2 uses
  %i.q = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.r = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.s = fmul nsz <4 x float> %i.r, %i.n          ; 2 uses
  %i.t = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 0>
  %i.u = fcmp nsz olt <4 x float> %i.p, %i.s      ; 2 uses
  %i.v = load <3 x float>, ptr %i.h, align 8, !tbaa !24
  %i.w = shufflevector <3 x float> %i.v, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.x = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.y = fmul nsz <4 x float> %i.x, %i.w          ; 2 uses
  %i.z = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison> ; 2 uses
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ab = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.ac = fmul nsz <4 x float> %i.ab, %i.w        ; 2 uses
  %i.ad = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.ae = fcmp nsz olt <4 x float> %i.y, %i.ac    ; 2 uses
  %i.af = load <3 x float>, ptr %i.i, align 8, !tbaa !24
  %i.ag = shufflevector <3 x float> %i.af, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.ah = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ai = fmul nsz <4 x float> %i.ah, %i.ag       ; 2 uses
  %i.aj = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison> ; 2 uses
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.al = shufflevector <6 x float> %i.j, <6 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.am = fmul nsz <4 x float> %i.al, %i.ag       ; 2 uses
  %i.an = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.ao = fcmp nsz olt <4 x float> %i.ai, %i.am   ; 2 uses
  %.v = select <4 x i1> %i.u, <4 x float> %i.q, <4 x float> %i.t
  %i.ap = fmul nsz <4 x float> %.v, %i.n
  %.v1 = select <4 x i1> %i.ae, <4 x float> %i.aa, <4 x float> %i.ad
  %i.aq = fmul nsz <4 x float> %.v1, %i.w
  %.v2 = select <4 x i1> %i.ao, <4 x float> %i.ak, <4 x float> %i.an
  %i.ar = fmul nsz <4 x float> %.v2, %i.ag
  %i.as = fadd nsz <4 x float> %i.l, %i.ap
  %i.at = fadd nsz <4 x float> %i.aq, %i.as
  %i.au = fadd nsz <4 x float> %i.ar, %i.at
  store <4 x float> %i.au, ptr %0, align 4, !tbaa !24
  %i.av = shufflevector <4 x i1> %i.u, <4 x i1> poison, <2 x i32> <i32 1, i32 2>
  %i.aw = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ax = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ay = select <2 x i1> %i.av, <2 x float> %i.aw, <2 x float> %i.ax
  %i.az = shufflevector <4 x i1> %i.ae, <4 x i1> poison, <2 x i32> <i32 1, i32 2>
  %i.ba = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bb = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bc = select <2 x i1> %i.az, <2 x float> %i.ba, <2 x float> %i.bb
  %i.bd = shufflevector <4 x i1> %i.ao, <4 x i1> poison, <2 x i32> <i32 1, i32 2>
  %i.be = shufflevector <4 x float> %i.am, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bf = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bg = select <2 x i1> %i.bd, <2 x float> %i.be, <2 x float> %i.bf
  %i.bh = shufflevector <3 x float> %i.k, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bi = fadd nsz <2 x float> %i.bh, %i.ay
  %i.bj = fadd nsz <2 x float> %i.bc, %i.bi
  %i.bk = fadd nsz <2 x float> %i.bg, %i.bj
  store <2 x float> %i.bk, ptr %i.f, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !174    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 2 uses
  %i.h = icmp ult i64 %i.g, 8
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw nsw i64 8, %i.g
  tail call void @_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %i.i)
  br label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 96
  br i1 %.not, label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, %i.j
  br i1 %.not.i.i.i, label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit, label %_ZSt8_DestroyIPN4core8vector3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4core8vector3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.d
  store ptr %i.j, ptr %i.a, align 8, !tbaa !173
  br label %_ZN4core5arrayINS_8vector3dIfEEE8set_usedEj.exit

end_hunk_2
begin_hunk_3_@_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE:bb.a
  %i.di = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.db, <2 x float> %i.df)
  %i.dj = load <2 x float>, ptr %i.bf, align 8, !tbaa !24
  %i.dk = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dj, <2 x float> %i.di)
  %i.dn = load <2 x float>, ptr %i.bg, align 8, !tbaa !24
  %i.do = fadd nsz <2 x float> %i.dm, %i.dn
  %i.dp = load float, ptr %i.bh, align 8, !tbaa !24
  %i.dq = load float, ptr %i.bi, align 8, !tbaa !24
  %i.dr = fmul nsz float %i.cz, %i.dq
  %i.ds = tail call nsz float @llvm.fmuladd.f32(float %i.cy, float %i.dp, float %i.dr)
  %i.dt = load float, ptr %i.bj, align 8, !tbaa !24
  %i.du = tail call nsz float @llvm.fmuladd.f32(float %i.da, float %i.dt, float %i.ds)
  %i.dv = load float, ptr %i.bk, align 8, !tbaa !24
  %i.dw = fadd nsz float %i.dv, %i.du
  store <2 x float> %i.do, ptr %i.x, align 4, !tbaa !24
  store float %i.dw, ptr %i.cx, align 4, !tbaa !24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 44 ; 2 uses
  %i.dz = load float, ptr %i.aa, align 4, !tbaa !169 ; 2 uses
  %i.ea = load float, ptr %i.dx, align 4, !tbaa !168 ; 2 uses
  %i.eb = load float, ptr %i.dy, align 4, !tbaa !165 ; 2 uses
  %i.ec = load <2 x float>, ptr %i.bd, align 8, !tbaa !24
  %i.ed = load <2 x float>, ptr %i.be, align 8, !tbaa !24
  %i.ee = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fmul nsz <2 x float> %i.ef, %i.ed
  %i.eh = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ec, <2 x float> %i.eg)
  %i.ek = load <2 x float>, ptr %i.bf, align 8, !tbaa !24
  %i.el = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.ek, <2 x float> %i.ej)
  %i.eo = load <2 x float>, ptr %i.bg, align 8, !tbaa !24
  %i.ep = fadd nsz <2 x float> %i.en, %i.eo
  %i.eq = load float, ptr %i.bh, align 8, !tbaa !24
  %i.er = load float, ptr %i.bi, align 8, !tbaa !24
  %i.es = fmul nsz float %i.ea, %i.er
  %i.et = tail call nsz float @llvm.fmuladd.f32(float %i.dz, float %i.eq, float %i.es)
  %i.eu = load float, ptr %i.bj, align 8, !tbaa !24
  %i.ev = tail call nsz float @llvm.fmuladd.f32(float %i.eb, float %i.eu, float %i.et)
  %i.ew = load float, ptr %i.bk, align 8, !tbaa !24
  %i.ex = fadd nsz float %i.ew, %i.ev
  store <2 x float> %i.ep, ptr %i.aa, align 4, !tbaa !24
  store float %i.ex, ptr %i.dy, align 4, !tbaa !24
  %i.ey = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.ez = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  %i.fa = load float, ptr %i.ad, align 4, !tbaa !169 ; 2 uses
  %i.fb = load float, ptr %i.ey, align 4, !tbaa !168 ; 2 uses
  %i.fc = load float, ptr %i.ez, align 4, !tbaa !165 ; 2 uses
  %i.fd = load <2 x float>, ptr %i.bd, align 8, !tbaa !24
  %i.fe = load <2 x float>, ptr %i.be, align 8, !tbaa !24
  %i.ff = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = fmul nsz <2 x float> %i.fg, %i.fe
  %i.fi = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.fd, <2 x float> %i.fh)
  %i.fl = load <2 x float>, ptr %i.bf, align 8, !tbaa !24
  %i.fm = insertelement <2 x float> poison, float %i.fc, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fl, <2 x float> %i.fk)
  %i.fp = load <2 x float>, ptr %i.bg, align 8, !tbaa !24
  %i.fq = fadd nsz <2 x float> %i.fo, %i.fp
  %i.fr = load float, ptr %i.bh, align 8, !tbaa !24
  %i.fs = load float, ptr %i.bi, align 8, !tbaa !24
  %i.ft = fmul nsz float %i.fb, %i.fs
  %i.fu = tail call nsz float @llvm.fmuladd.f32(float %i.fa, float %i.fr, float %i.ft)
  %i.fv = load float, ptr %i.bj, align 8, !tbaa !24
  %i.fw = tail call nsz float @llvm.fmuladd.f32(float %i.fc, float %i.fv, float %i.fu)
  %i.fx = load float, ptr %i.bk, align 8, !tbaa !24
  %i.fy = fadd nsz float %i.fx, %i.fw
  store <2 x float> %i.fq, ptr %i.ad, align 4, !tbaa !24
  store float %i.fy, ptr %i.ez, align 4, !tbaa !24
  %i.fz = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.o, i64 68 ; 2 uses
  %i.gb = load float, ptr %i.ae, align 4, !tbaa !169 ; 2 uses
  %i.gc = load float, ptr %i.fz, align 4, !tbaa !168 ; 2 uses
  %i.gd = load float, ptr %i.ga, align 4, !tbaa !165 ; 2 uses
  %i.ge = load <2 x float>, ptr %i.bd, align 8, !tbaa !24
  %i.gf = load <2 x float>, ptr %i.be, align 8, !tbaa !24
  %i.gg = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fmul nsz <2 x float> %i.gh, %i.gf
  %i.gj = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.ge, <2 x float> %i.gi)
  %i.gm = load <2 x float>, ptr %i.bf, align 8, !tbaa !24
  %i.gn = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.gm, <2 x float> %i.gl)
  %i.gq = load <2 x float>, ptr %i.bg, align 8, !tbaa !24
  %i.gr = fadd nsz <2 x float> %i.gp, %i.gq
  %i.gs = load float, ptr %i.bh, align 8, !tbaa !24
  %i.gt = load float, ptr %i.bi, align 8, !tbaa !24
  %i.gu = fmul nsz float %i.gc, %i.gt
  %i.gv = tail call nsz float @llvm.fmuladd.f32(float %i.gb, float %i.gs, float %i.gu)
  %i.gw = load float, ptr %i.bj, align 8, !tbaa !24
  %i.gx = tail call nsz float @llvm.fmuladd.f32(float %i.gd, float %i.gw, float %i.gv)
  %i.gy = load float, ptr %i.bk, align 8, !tbaa !24
  %i.gz = fadd nsz float %i.gy, %i.gx
  store <2 x float> %i.gr, ptr %i.ae, align 4, !tbaa !24
  store float %i.gz, ptr %i.ga, align 4, !tbaa !24
  %i.ha = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  %i.hb = getelementptr inbounds nuw i8, ptr %i.o, i64 80 ; 2 uses
  %i.hc = load float, ptr %i.af, align 4, !tbaa !169 ; 2 uses
  %i.hd = load float, ptr %i.ha, align 4, !tbaa !168 ; 2 uses
  %i.he = load float, ptr %i.hb, align 4, !tbaa !165 ; 2 uses
  %i.hf = load <2 x float>, ptr %i.bd, align 8, !tbaa !24
  %i.hg = load <2 x float>, ptr %i.be, align 8, !tbaa !24
  %i.hh = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = fmul nsz <2 x float> %i.hi, %i.hg
  %i.hk = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hl, <2 x float> %i.hf, <2 x float> %i.hj)
  %i.hn = load <2 x float>, ptr %i.bf, align 8, !tbaa !24
  %i.ho = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.hn, <2 x float> %i.hm)
  %i.hr = load <2 x float>, ptr %i.bg, align 8, !tbaa !24
  %i.hs = fadd nsz <2 x float> %i.hq, %i.hr
  %i.ht = load float, ptr %i.bh, align 8, !tbaa !24
  %i.hu = load float, ptr %i.bi, align 8, !tbaa !24
  %i.hv = fmul nsz float %i.hd, %i.hu
  %i.hw = tail call nsz float @llvm.fmuladd.f32(float %i.hc, float %i.ht, float %i.hv)
  %i.hx = load float, ptr %i.bj, align 8, !tbaa !24
  %i.hy = tail call nsz float @llvm.fmuladd.f32(float %i.he, float %i.hx, float %i.hw)
  %i.hz = load float, ptr %i.bk, align 8, !tbaa !24
  %i.ia = fadd nsz float %i.hz, %i.hy
  store <2 x float> %i.hs, ptr %i.af, align 4, !tbaa !24
  store float %i.ia, ptr %i.hb, align 4, !tbaa !24
  %i.ib = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.ic = getelementptr inbounds nuw i8, ptr %i.o, i64 92 ; 2 uses
  %i.id = load float, ptr %i.az, align 4, !tbaa !169 ; 2 uses
  %i.ie = load float, ptr %i.ib, align 4, !tbaa !168 ; 2 uses
  %i.if = load float, ptr %i.ic, align 4, !tbaa !165 ; 2 uses
  %i.ig = load <2 x float>, ptr %i.bd, align 8, !tbaa !24
  %i.ih = load <2 x float>, ptr %i.be, align 8, !tbaa !24
  %i.ii = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = fmul nsz <2 x float> %i.ij, %i.ih
  %i.il = insertelement <2 x float> poison, float %i.id, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.im, <2 x float> %i.ig, <2 x float> %i.ik)
  %i.io = load <2 x float>, ptr %i.bf, align 8, !tbaa !24
  %i.ip = insertelement <2 x float> poison, float %i.if, i64 0
  %i.iq = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ir = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iq, <2 x float> %i.io, <2 x float> %i.in)
  %i.is = load <2 x float>, ptr %i.bg, align 8, !tbaa !24
  %i.it = fadd nsz <2 x float> %i.ir, %i.is
  %i.iu = load float, ptr %i.bh, align 8, !tbaa !24
  %i.iv = load float, ptr %i.bi, align 8, !tbaa !24
  %i.iw = fmul nsz float %i.ie, %i.iv
  %i.ix = tail call nsz float @llvm.fmuladd.f32(float %i.id, float %i.iu, float %i.iw)
  %i.iy = load float, ptr %i.bj, align 8, !tbaa !24
  %i.iz = tail call nsz float @llvm.fmuladd.f32(float %i.if, float %i.iy, float %i.ix)
  %i.ja = load float, ptr %i.bk, align 8, !tbaa !24
  %i.jb = fadd nsz float %i.ja, %i.iz
  store <2 x float> %i.it, ptr %i.az, align 4, !tbaa !24
  store float %i.jb, ptr %i.ic, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.g = load float, ptr %i.f, align 4, !tbaa !165
  %i.h = fmul nsz float %i.g, f0x3C8EFA35
  %i.i = fpext nsz float %i.h to double
  %sincos39.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.i) ; 2 uses
  %sin40.i.i = extractvalue { double, double } %sincos39.i.i, 0 ; 4 uses
  %cos41.i.i = extractvalue { double, double } %sincos39.i.i, 1 ; 5 uses
  %i.j = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.k = insertelement <2 x double> %i.j, double %sin40.i.i, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = fneg nsz double %sin40.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = fneg nsz double %cos41.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load <2 x float>, ptr %i.e, align 4, !tbaa !24
  %i.t = fmul nsz <2 x float> %i.s, splat (float f0x3C8EFA35)
  %i.u = fpext nsz <2 x float> %i.t to <2 x double>
  %i.v = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.u) ; 2 uses
  %i.w = extractvalue { <2 x double>, <2 x double> } %i.v, 0 ; 5 uses
  %i.x = extractvalue { <2 x double>, <2 x double> } %i.v, 1 ; 5 uses
  %i.y = extractelement <2 x double> %i.x, i64 0  ; 2 uses
  %i.z = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aa = fmul nsz <2 x double> %i.z, %i.k
  %i.ab = fptrunc nsz <2 x double> %i.aa to <2 x float> ; 5 uses
  store <2 x float> %i.ab, ptr %0, align 4, !tbaa !24
  %i.ac = extractelement <2 x double> %i.w, i64 1
  %i.ad = fptrunc nsz double %i.ac to float
  %i.ae = fneg nsz float %i.ad                    ; 4 uses
  store float %i.ae, ptr %i.l, align 4, !tbaa !24
  %i.af = shufflevector <2 x double> %i.w, <2 x double> %i.x, <2 x i32> <i32 1, i32 2>
  %i.ag = fmul nsz <2 x double> %i.af, %i.w       ; 3 uses
  %i.ah = fmul nsz double %i.y, %i.m
  %i.ai = extractelement <2 x double> %i.ag, i64 0
  %i.aj = tail call nsz double @llvm.fmuladd.f64(double %i.ai, double %cos41.i.i, double %i.ah)
  %i.ak = fptrunc nsz double %i.aj to float       ; 3 uses
  store float %i.ak, ptr %i.n, align 4, !tbaa !24
  %i.al = fmul nsz double %i.y, %cos41.i.i
  %i.am = extractelement <2 x double> %i.w, i64 0 ; 2 uses
  %i.an = fmul nsz double %i.am, %sin40.i.i
  %i.ao = extractelement <2 x double> %i.ag, i64 1
  %i.ap = tail call nsz double @llvm.fmuladd.f64(double %i.ao, double %cos41.i.i, double %i.an)
  %i.aq = fptrunc nsz double %i.ap to float       ; 3 uses
  store float %i.aq, ptr %i.p, align 4, !tbaa !24
  %i.ar = fmul nsz double %i.am, %i.q
  %i.as = insertelement <2 x double> poison, double %sin40.i.i, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = insertelement <2 x double> poison, double %i.al, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.ar, i64 1
  %i.aw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.at, <2 x double> %i.av) ; 2 uses
  %i.ax = shufflevector <2 x double> %i.x, <2 x double> %i.w, <2 x i32> <i32 1, i32 2>
  %i.ay = fmul nsz <2 x double> %i.x, %i.ax       ; 2 uses
  %i.az = shufflevector <2 x double> %i.aw, <2 x double> %i.ay, <2 x i32> <i32 0, i32 3>
  %i.ba = fptrunc nsz <2 x double> %i.az to <2 x float> ; 4 uses
  store <2 x float> %i.ba, ptr %i.d, align 4, !tbaa !24
  %i.bb = shufflevector <2 x double> %i.aw, <2 x double> %i.ay, <2 x i32> <i32 1, i32 2>
  %i.bc = fptrunc nsz <2 x double> %i.bb to <2 x float> ; 4 uses
  store <2 x float> %i.bc, ptr %i.r, align 4, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bf = load <2 x float>, ptr %i.bd, align 8, !tbaa !24 ; 5 uses
  store <2 x float> %i.bf, ptr %i.be, align 4, !tbaa !24
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !165 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store float %i.bh, ptr %i.bi, align 4, !tbaa !24
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !169 ; 4 uses
  %i.bl = fcmp nsz oeq float %i.bk, 1.000000e+00
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !168 ; 2 uses
  %i.bo = fcmp nsz oeq float %i.bn, 1.000000e+00
  %or.cond = select i1 %i.bl, i1 %i.bo, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !165
  %i.br = fcmp nsz une float %i.bq, 1.000000e+00
  br i1 %i.br, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.b

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.a, %_ZNK4core8vector3dIfEneERKS1_.exit
  %i.bs = phi float [ 1.000000e+00, %_ZNK4core8vector3dIfEneERKS1_.exit ], [ %i.bn, %bb.a ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !165 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.4788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bv = fmul nsz float %i.ak, 0.000000e+00      ; 2 uses
  %i.bw = fmul nsz <2 x float> %i.ba, zeroinitializer ; 3 uses
  %i.bx = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ca = insertelement <2 x float> %i.bz, float %i.bv, i64 0
  %i.cb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.by, <2 x float> %i.ca)
  %i.cc = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cd = insertelement <2 x float> %i.cc, float %i.aq, i64 0 ; 3 uses
  %i.ce = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> zeroinitializer, <2 x float> %i.cb)
  %i.cf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> zeroinitializer, <2 x float> %i.ce)
  store <2 x float> %i.cf, ptr %0, align 4, !tbaa !24
  %i.cg = extractelement <2 x float> %i.bw, i64 1
  %i.ch = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.bk, float %i.cg)
  %i.ci = extractelement <2 x float> %i.bc, i64 1 ; 3 uses
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float 0.000000e+00, float %i.ch)
  %i.ck = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.cj)
  store float %i.ck, ptr %i.l, align 4, !tbaa !24
  %i.cl = fmul nsz float %i.bk, 0.000000e+00
  store float %i.cl, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !24
  %i.cm = extractelement <2 x float> %i.ab, i64 0
  %i.cn = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cq = insertelement <2 x float> %i.cp, float %i.ak, i64 0
  %i.cr = fmul nsz <2 x float> %i.co, %i.cq
  %i.cs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> zeroinitializer, <2 x float> %i.cr)
  %i.ct = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> zeroinitializer, <2 x float> %i.cs)
  %i.cu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> zeroinitializer, <2 x float> %i.ct)
  store <2 x float> %i.cu, ptr %i.n, align 4, !tbaa !24
  %i.cv = extractelement <2 x float> %i.ba, i64 1
  %i.cw = fmul nsz float %i.bs, %i.cv
  %i.cx = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float 0.000000e+00, float %i.cw)
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float 0.000000e+00, float %i.cx)
  %i.cz = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.cy)
  store float %i.cz, ptr %i.o, align 4, !tbaa !24
  %i.da = fmul nsz float %i.bs, 0.000000e+00
  store float %i.da, ptr %.sroa.3172.0..sroa_idx, align 4, !tbaa !24
  %i.db = tail call nsz float @llvm.fmuladd.f32(float %i.cm, float 0.000000e+00, float %i.bv) ; 2 uses
  %i.dc = fmul nsz float %i.bu, 0.000000e+00
  store float %i.dc, ptr %.sroa.4788.0..sroa_idx, align 4, !tbaa !24
  %i.dd = tail call nsz float @llvm.fmuladd.f32(float %i.aq, float 0.000000e+00, float %i.db)
  %i.de = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.df = insertelement <2 x float> %i.de, float %i.ae, i64 1
  %i.dg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> zeroinitializer, <2 x float> %i.bw) ; 3 uses
  %i.dh = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dk = insertelement <2 x float> %i.dj, float %i.db, i64 0
  %i.dl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.di, <2 x float> %i.dk)
  %i.dm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> zeroinitializer, <2 x float> %i.dl)
  store <2 x float> %i.dm, ptr %i.p, align 4, !tbaa !24
  %i.dn = extractelement <2 x float> %i.dg, i64 1
  %i.do = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float %i.bu, float %i.dn)
  %i.dp = tail call nsz float @llvm.fmuladd.f32(float %i.bh, float 0.000000e+00, float %i.do)
  store float %i.dp, ptr %i.c, align 4, !tbaa !24
  %i.dq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> zeroinitializer, <2 x float> %i.dg) ; 2 uses
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ds = insertelement <2 x float> %i.dr, float %i.dd, i64 0
  %i.dt = fadd nsz <2 x float> %i.bf, %i.ds
  store <2 x float> %i.dt, ptr %i.be, align 4, !tbaa !24
  %i.du = extractelement <2 x float> %i.dq, i64 1
  %i.dv = fadd nsz float %i.du, %i.bh
  store float %i.dv, ptr %i.bi, align 4, !tbaa !24
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !24
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !56, !range !123, !noundef !135
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !56, !range !123, !noundef !135
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(218) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(218) %0, i1 noundef zeroext %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.a, ptr %i.b, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5scene10ISceneNode5getIDEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode5setIDEi(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode8addChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %1, %0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %1, ptr noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !118
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !118
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !137
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.p) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
end_hunk_3
