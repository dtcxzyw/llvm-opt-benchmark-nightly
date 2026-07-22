inline.NumInlined: 1466
inline.NumDeleted: 366
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp12PbrtExporter21WriteGeometricObjectsEP6aiNode12aiMatrix4x4tIfERSt3mapIiiSt4lessIiESaISt4pairIKiiEEE:bb.a
  %i.an = fneg float %i.n                         ; 2 uses
  %i.ao = fmul float %i.am, %i.an
  %i.ap = extractelement <4 x float> %i.p, i64 0  ; 6 uses
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ap, float %i.ak)
  %i.ar = extractelement <4 x float> %i.k, i64 0  ; 4 uses
  %i.as = fmul float %i.am, %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.t, float %i.aq)
  %i.au = fmul float %i.ae, %i.al                 ; 2 uses
  %i.av = fneg float %i.ar                        ; 3 uses
  %i.aw = fmul float %i.au, %i.av
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.q, float %i.at)
  %i.ay = fmul float %i.l, %i.au
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ap, float %i.ax)
  %i.ba = extractelement <4 x float> %i.f, i64 0  ; 3 uses
  %i.bb = fmul float %i.al, %i.ba                 ; 2 uses
  %i.bc = fmul float %i.bb, %i.ai
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.t, float %i.az)
  %i.be = fmul float %i.n, %i.bb
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.q, float %i.bd)
  %i.bg = extractelement <4 x float> %i.g, i64 2  ; 3 uses
  %i.bh = fmul float %i.ae, %i.bg                 ; 2 uses
  %i.bi = fmul float %i.ar, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.y, float %i.bf)
  %i.bk = fmul float %i.bh, %i.ab
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.ap, float %i.bj)
  %i.bm = fmul float %i.ba, %i.bg                 ; 2 uses
  %i.bn = fmul float %i.aa, %i.bm
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.t, float %i.bl)
  %i.bp = fmul float %i.bm, %i.an
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.y, float %i.bo)
  %i.br = fmul float %i.i, %i.bg                  ; 2 uses
  %i.bs = fmul float %i.n, %i.br
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.ap, float %i.bq)
  %i.bu = fmul float %i.br, %i.av
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.t, float %i.bt)
  %i.bw = extractelement <4 x float> %i.g, i64 3  ; 3 uses
  %i.bx = fmul float %i.ba, %i.bw                 ; 2 uses
  %i.by = fmul float %i.bx, %i.ab
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.q, float %i.bv)
  %i.ca = fmul float %i.l, %i.bx
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.y, float %i.bz)
  %i.cc = fmul float %i.i, %i.bw                  ; 2 uses
  %i.cd = fmul float %i.cc, %i.ai
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.ap, float %i.cb)
  %i.cf = fmul float %i.ar, %i.cc
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.q, float %i.ce)
  %i.ch = fmul float %i.v, %i.bw                  ; 2 uses
  %i.ci = fmul float %i.ch, %i.av
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.y, float %i.cg)
  %i.ck = fmul float %i.aa, %i.ch
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %i.ck, float %i.ap, float %i.cj)
  %i.cm = fcmp une float %i.cl, 0.000000e+00
  br i1 %i.cm, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cn = load <4 x float>, ptr %2, align 8
  %.sroa.6.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.co = load <4 x float>, ptr %.sroa.6.0..sroa_idx40, align 4
  %.sroa.8.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cp = load <4 x float>, ptr %.sroa.8.0..sroa_idx42, align 8
  %.sroa.10.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cq = load <4 x float>, ptr %.sroa.10.0..sroa_idx44, align 4
  %.sroa.12.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cr = load <4 x float>, ptr %.sroa.12.0..sroa_idx46, align 8
  %.sroa.14.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cs = load <4 x float>, ptr %.sroa.14.0..sroa_idx48, align 4
  %.sroa.16.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ct = load <4 x float>, ptr %.sroa.16.0..sroa_idx50, align 8
  %.sroa.18.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cu = load <4 x float>, ptr %.sroa.18.0..sroa_idx52, align 4
  %.sroa.20.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.cv = load <4 x float>, ptr %.sroa.20.0..sroa_idx54, align 8
  %.sroa.22.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.cw = load <4 x float>, ptr %.sroa.22.0..sroa_idx56, align 4
  %.sroa.24.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cx = load <4 x float>, ptr %.sroa.24.0..sroa_idx58, align 8
  %.sroa.26.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.cy = load <4 x float>, ptr %.sroa.26.0..sroa_idx60, align 4
  %.sroa.28.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.cz = load <4 x float>, ptr %.sroa.28.0..sroa_idx62, align 8
  %.sroa.30.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %2, i64 52
  %.sroa.30.0.copyload65 = load float, ptr %.sroa.30.0..sroa_idx64, align 4
  %.sroa.32.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.32.0.copyload67 = load float, ptr %.sroa.32.0..sroa_idx66, align 8
  %.sroa.34.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %2, i64 60
  %.sroa.34.0.copyload69 = load float, ptr %.sroa.34.0..sroa_idx68, align 4
  %i.da = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = fmul <4 x float> %i.f, %i.da
  %i.dc = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.g, <4 x float> %i.dc, <4 x float> %i.db)
  %i.de = shufflevector <4 x float> %i.cp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.de, <4 x float> %i.dd)
  %i.dg = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> %i.dg, <4 x float> %i.df)
  store <4 x float> %i.dh, ptr %2, align 8
  %i.di = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dj = fmul <4 x float> %i.f, %i.di
  %i.dk = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.g, <4 x float> %i.dk, <4 x float> %i.dj)
  %i.dm = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.dm, <4 x float> %i.dl)
  %i.do = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> %i.do, <4 x float> %i.dn)
  store <4 x float> %i.dp, ptr %.sroa.12.0..sroa_idx46, align 8
  %i.dq = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = fmul <4 x float> %i.f, %i.dq
  %i.ds = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.g, <4 x float> %i.ds, <4 x float> %i.dr)
  %i.du = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.du, <4 x float> %i.dt)
  %i.dw = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> %i.dw, <4 x float> %i.dv)
  store <4 x float> %i.dx, ptr %.sroa.20.0..sroa_idx54, align 8
  %i.dy = insertelement <4 x float> poison, float %.sroa.30.0.copyload65, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ea = fmul <4 x float> %i.f, %i.dz
  %i.eb = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.g, <4 x float> %i.eb, <4 x float> %i.ea)
  %i.ed = insertelement <4 x float> poison, float %.sroa.32.0.copyload67, i64 0
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ef = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> %i.ee, <4 x float> %i.ec)
  %i.eg = insertelement <4 x float> poison, float %.sroa.34.0.copyload69, i64 0
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ei = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.p, <4 x float> %i.eh, <4 x float> %i.ef)
  store <4 x float> %i.ei, ptr %.sroa.28.0..sroa_idx62, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 8
  %.not = icmp eq i32 %i.ek, 0
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 12 uses
  %i.em = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.114, i64 noundef 15) ; 0 uses
  %i.en = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.156, i64 noundef 14) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN6Assimp12PbrtExporter17TransformAsStringB5cxx11ERK12aiMatrix4x4tIfE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(64) %2)
  %i.eo = load ptr, ptr %4, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef %i.eo, i64 noundef %i.eq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.d
  %i.es = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.et = load ptr, ptr %4, align 8               ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ew = load i64, ptr %i.eu, align 8
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ey = load i32, ptr %i.ej, align 8
  %.not75 = icmp eq i32 %i.ey, 0
  br i1 %.not75, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 1128 ; 3 uses
  br label %bb.f

._crit_edge:                                      ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.117, i64 noundef 14) ; 0 uses
  br label %bb.k

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.d
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %4, align 8               ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.e
  %i.fg = load i64, ptr %i.fe, align 8
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.fc

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.fi = load ptr, ptr %i.ez, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = load ptr, ptr %i.fa, align 8
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv
  %i.fn = load i32, ptr %i.fm, align 4            ; 2 uses
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.fn, ptr %i.a, align 4
  %i.fr = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixEOi(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = icmp eq i32 %i.fs, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br i1 %i.ft, label %bb.g, label %._crit_edge.i.i

bb.g:                                             ; preds = %bb.f
  %i.fu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.157, i64 noundef 4) ; 0 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 240 ; 2 uses
  %i.fw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fv) #24
  %i.fx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull %i.fv, i64 noundef %i.fw) ; 0 uses
  call void @_ZN6Assimp12PbrtExporter9WriteMeshEP6aiMesh(ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef %i.fq)
  br label %bb.j

._crit_edge.i.i:                                  ; preds = %bb.f
  %i.fy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.158, i64 noundef 18) ; 0 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fq, i64 236
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.gc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.153, i64 noundef 5) ; 0 uses
  %i.gd = load ptr, ptr %i.fa, align 8
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = add i32 %i.gf, 1
  %i.gh = zext i32 %i.gg to i64
  %i.gi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.el, i64 noundef %i.gh)
  %i.gj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef nonnull @.str.96, i64 noundef 2) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fq, i64 240 ; 2 uses
  %i.gl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gk) #24
  %i.gm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull %i.gk, i64 noundef %i.gl) ; 0 uses
  %i.gn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull @.str.154, i64 noundef 1) ; 0 uses
  %i.go = load ptr, ptr %i.fa, align 8
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = add i32 %i.gq, 1
  %i.gs = zext i32 %i.gr to i64
  %i.gt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.el, i64 noundef %i.gs)
  %i.gu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull @.str.96, i64 noundef 2) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gv = load i32, ptr %i.ej, align 8
  %i.gw = zext i32 %i.gv to i64
  %i.gx = icmp samesign ult i64 %indvars.iv.next, %i.gw
  br i1 %i.gx, label %bb.f, label %._crit_edge, !llvm.loop !100

bb.k:                                             ; preds = %._crit_edge, %bb.c
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8
  %.not76 = icmp eq i32 %i.gz, 0
  br i1 %.not76, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.k
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 1112
  br label %bb.l

._crit_edge74:                                    ; preds = %bb.l, %bb.k
  ret void

bb.l:                                             ; preds = %.lr.ph73, %bb.l
  %indvars.iv78 = phi i64 [ 0, %.lr.ph73 ], [ %indvars.iv.next79, %bb.l ] ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv78
  %i.hd = load ptr, ptr %i.hc, align 8
  call void @_ZN6Assimp12PbrtExporter21WriteGeometricObjectsEP6aiNode12aiMatrix4x4tIfERSt3mapIiiSt4lessIiESaISt4pairIKiiEEE(ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef %i.hd, ptr noundef nonnull byval(%class.aiMatrix4x4t) align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.he = load i32, ptr %i.gy, align 8
  %i.hf = zext i32 %i.he to i64
  %i.hg = icmp samesign ult i64 %indvars.iv.next79, %i.hf
  br i1 %i.hg, label %bb.l, label %._crit_edge74, !llvm.loop !101
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12PbrtExporter12RemoveSuffixENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 46, i64 noundef -1) #24 ; 5 uses
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.167, i64 noundef %i.a, i64 noundef %i.c) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.b
  store i64 %i.a, ptr %i.b, align 8
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.a
  store i8 0, ptr %i.f, align 1
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.d
  store ptr %i.h, ptr %0, align 8
  %i.o = load i64, ptr %i.i, align 8
  store i64 %i.o, ptr %i.g, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.e ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8
  store ptr %i.i, ptr %1, align 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp12PbrtExporter19TextureHasAlphaMaskERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.d = load ptr, ptr %0, align 8
  %i.e = call ptr @assimp_stbi_load(ptr noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 0) ; 9 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.f, i64 noundef %i.h)
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.68, i64 noundef 115) ; 0 uses
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.c, align 4
  switch i32 %i.k, label %bb.l [
    i32 1, label %.preheader
    i32 2, label %.preheader37
    i32 3, label %.loopexit
    i32 4, label %.preheader40
  ]

.preheader40:                                     ; preds = %bb.c
  %i.l = load i32, ptr %i.b, align 4              ; 4 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.preheader39.lr.ph, label %.loopexit

.preheader39.lr.ph:                               ; preds = %.preheader40
  %i.n = load i32, ptr %i.a, align 4              ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.preheader39.us.preheader, label %.loopexit

.preheader39.us.preheader:                        ; preds = %.preheader39.lr.ph
end_hunk_0
