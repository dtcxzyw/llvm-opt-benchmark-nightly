Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/wieldmesh?download=true
inline.NumInlined: 2216
inline.NumDeleted: 845
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK5scene10ISceneNode15getSceneManagerEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N5scene10ISceneNodeD1Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZTv0_n24_N5scene10ISceneNodeD0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(24) ptr @_ZNK18WieldMeshSceneNode14getBoundingBoxEv(ptr noundef nonnull align 8 dereferenceable(352) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  ret ptr %i.a
}

; Function Attrs: nofree nounwind uwtable
define internal void @__cxx_global_var_init() #14 section ".text.startup" comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev, ptr nonnull @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr nonnull @__dso_handle) #27 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !612    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit

_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #27, !inline_history !610
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !87, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !87
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !59     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !60
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #29
  br label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull ptr @_ZL19createExtrusionMeshii(i32 noundef %0, i32 noundef %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [8 x %"struct.video::S3DVertex"], align 16 ; 43 uses
  %i.a = alloca [12 x i16], align 16              ; 4 uses
  %3 = alloca [8 x %"struct.video::S3DVertex"], align 16 ; 59 uses
  %i.b = alloca [12 x i16], align 16              ; 4 uses
  %4 = alloca [8 x %"struct.video::S3DVertex"], align 16 ; 59 uses
  %i.c = alloca [12 x i16], align 16              ; 4 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #26 ; 11 uses
  invoke void @_ZN5scene11CMeshBufferIN5video9S3DVertexEEC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.d)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store <4 x float> <float -5.000000e-01, float 5.000000e-01, float -5.000000e-01, float 0.000000e+00>, ptr %2, align 16, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %i.e, align 16, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 -1, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 28
  store <2 x float> zeroinitializer, ptr %i.g, align 4, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i16 0, ptr %i.h, align 4, !tbaa !617
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float -5.000000e-01, float 0.000000e+00>, ptr %i.i, align 8, !tbaa !88
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %i.j, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 -1, ptr %i.k, align 16, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 68
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.l, align 4, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 76
  store i16 0, ptr %i.m, align 4, !tbaa !617
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 80
  store <4 x float> <float 5.000000e-01, float -5.000000e-01, float -5.000000e-01, float 0.000000e+00>, ptr %i.n, align 16, !tbaa !88
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 96
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %i.o, align 16, !tbaa !88
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i32 -1, ptr %i.p, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 108
  store <2 x float> splat (float 1.000000e+00), ptr %i.q, align 4, !tbaa !88
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 116
  store i16 0, ptr %i.r, align 4, !tbaa !617
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 120
  store <4 x float> <float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float 0.000000e+00>, ptr %i.s, align 8, !tbaa !88
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 136
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %i.t, align 8, !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i32 -1, ptr %i.u, align 16, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 148
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.v, align 4, !tbaa !88
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 156
  store i16 0, ptr %i.w, align 4, !tbaa !617
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 160
  store <4 x float> <float -5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00>, ptr %i.x, align 16, !tbaa !88
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 176
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.y, align 16, !tbaa !88
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i32 -1, ptr %i.z, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 188
  store <2 x float> zeroinitializer, ptr %i.aa, align 4, !tbaa !88
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 196
  store i16 0, ptr %i.ab, align 4, !tbaa !617
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 200
  store <4 x float> <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 0.000000e+00>, ptr %i.ac, align 8, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 216
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.ad, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 224
  store i32 -1, ptr %i.ae, align 16, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 228
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.af, align 4, !tbaa !88
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 236
  store i16 0, ptr %i.ag, align 4, !tbaa !617
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 240
  store <4 x float> <float 5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 0.000000e+00>, ptr %i.ah, align 16, !tbaa !88
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 256
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.ai, align 16, !tbaa !88
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 264
  store i32 -1, ptr %i.aj, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 268
  store <2 x float> splat (float 1.000000e+00), ptr %i.ak, align 4, !tbaa !88
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 276
  store i16 0, ptr %i.al, align 4, !tbaa !617
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 280
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00>, ptr %i.am, align 8, !tbaa !88
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 296
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.an, align 8, !tbaa !88
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 304
  store i32 -1, ptr %i.ao, align 16, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 308
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ap, align 4, !tbaa !88
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 316
  store i16 0, ptr %i.aq, align 4, !tbaa !617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZL19createExtrusionMeshii.indices.13, i64 24, i1 false)
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %2, i32 noundef 8, ptr noundef nonnull %i.a, i32 noundef 12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.au = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.av = insertelement <2 x i32> %i.au, i32 %1, i64 1
  %i.aw = sitofp <2 x i32> %i.av to <2 x float>
  %i.ax = fdiv nsz <2 x float> splat (float 1.000000e+00), %i.aw ; 2 uses
  %i.ay = icmp sgt i32 %0, 0
  br i1 %i.ay, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.az = extractelement <2 x float> %i.ax, i64 0 ; 3 uses
  %i.ba = fpext nsz float %i.az to double
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 140
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 148
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 156
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 164
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 180
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 188
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 196
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 204
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 220
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 228
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 236
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 244
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 260
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 268
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 276
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 280
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 284
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 300
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 308
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 316
  %5 = insertelement <2 x double> poison, double %i.ba, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %bb.b
  %i.de = icmp sgt i32 %1, 0
  br i1 %i.de, label %.lr.ph124, label %._crit_edge

.lr.ph124:                                        ; preds = %.preheader
  %i.df = extractelement <2 x float> %i.ax, i64 1 ; 3 uses
  %i.dg = fpext nsz float %i.df to double
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 116
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 148
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 156
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 164
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 188
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 196
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 204
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 236
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 244
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 268
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 276
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 280
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 284
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 288
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 304
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 308
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 312
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 316
  %7 = insertelement <2 x double> poison, double %i.dg, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.fk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 200) #29
  resume { ptr, i32 } %i.fk

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.094122 = phi i32 [ 0, %.lr.ph ], [ %i.fu, %bb.d ] ; 3 uses
  %i.fl = uitofp nsz nneg i32 %.094122 to float
  %i.fm = fmul nsz float %i.az, %i.fl
  %i.fn = fadd nsz float %i.fm, -5.000000e-01     ; 5 uses
  %i.fo = fadd nsz float %i.az, %i.fn             ; 4 uses
  %i.fp = uitofp nsz nneg i32 %.094122 to double
  %9 = insertelement <2 x double> poison, double %i.fp, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = fadd nnan nsz <2 x double> %10, <double 1.000000e-01, double 9.000000e-01>
  %12 = fmul nsz <2 x double> %11, %6             ; 2 uses
  %13 = extractelement <2 x double> %12, i64 0
  %14 = fptrunc nsz double %13 to float           ; 4 uses
  %15 = extractelement <2 x double> %12, i64 1
  %i.fq = fptrunc nsz double %15 to float         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store float %i.fn, ptr %3, align 16, !tbaa !194
  store <4 x float> <float -5.000000e-01, float -5.000000e-01, float -1.000000e+00, float 0.000000e+00>, ptr %i.bb, align 4, !tbaa !88
  store float 0.000000e+00, ptr %i.bc, align 4, !tbaa !159
  store i32 -1, ptr %i.bd, align 8, !tbaa !18
  store float %14, ptr %i.be, align 4, !tbaa !618
  store float 1.000000e+00, ptr %i.bf, align 16, !tbaa !619
  store i16 0, ptr %i.bg, align 4, !tbaa !617
  store float %i.fn, ptr %i.bh, align 8, !tbaa !194
  store <4 x float> <float -5.000000e-01, float 5.000000e-01, float -1.000000e+00, float 0.000000e+00>, ptr %i.bi, align 4, !tbaa !88
  store float 0.000000e+00, ptr %i.bj, align 4, !tbaa !159
  store i32 -1, ptr %i.bk, align 16, !tbaa !18
  store float %i.fq, ptr %i.bl, align 4, !tbaa !618
  store float 1.000000e+00, ptr %i.bm, align 8, !tbaa !619
  store i16 0, ptr %i.bn, align 4, !tbaa !617
  store float %i.fn, ptr %i.bo, align 16, !tbaa !194
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float -1.000000e+00, float 0.000000e+00>, ptr %i.bp, align 4, !tbaa !88
  store float 0.000000e+00, ptr %i.bq, align 4, !tbaa !159
  store i32 -1, ptr %i.br, align 8, !tbaa !18
  store float %i.fq, ptr %i.bs, align 4, !tbaa !618
  store float 0.000000e+00, ptr %i.bt, align 16, !tbaa !619
  store i16 0, ptr %i.bu, align 4, !tbaa !617
  store float %i.fn, ptr %i.bv, align 8, !tbaa !194
  store <4 x float> <float 5.000000e-01, float -5.000000e-01, float -1.000000e+00, float 0.000000e+00>, ptr %i.bw, align 4, !tbaa !88
  store float 0.000000e+00, ptr %i.bx, align 4, !tbaa !159
  store i32 -1, ptr %i.by, align 16, !tbaa !18
  store float %14, ptr %i.bz, align 4, !tbaa !618
  store float 0.000000e+00, ptr %i.ca, align 8, !tbaa !619
  store i16 0, ptr %i.cb, align 4, !tbaa !617
  store float %i.fo, ptr %i.cc, align 16, !tbaa !194
  store <4 x float> <float -5.000000e-01, float -5.000000e-01, float 1.000000e+00, float 0.000000e+00>, ptr %i.cd, align 4, !tbaa !88
  store float 0.000000e+00, ptr %i.ce, align 4, !tbaa !159
  store i32 -1, ptr %i.cf, align 8, !tbaa !18
  store float %14, ptr %i.cg, align 4, !tbaa !618
  store float 1.000000e+00, ptr %i.ch, align 16, !tbaa !619
  store i16 0, ptr %i.ci, align 4, !tbaa !617
  store float %i.fo, ptr %i.cj, align 8, !tbaa !194
  store <4 x float> <float 5.000000e-01, float -5.000000e-01, float 1.000000e+00, float 0.000000e+00>, ptr %i.ck, align 4, !tbaa !88
  store float 0.000000e+00, ptr %i.cl, align 4, !tbaa !159
  store i32 -1, ptr %i.cm, align 16, !tbaa !18
  store float %14, ptr %i.cn, align 4, !tbaa !618
  store float 0.000000e+00, ptr %i.co, align 8, !tbaa !619
  store i16 0, ptr %i.cp, align 4, !tbaa !617
  store float %i.fo, ptr %i.cq, align 16, !tbaa !194
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 0.000000e+00>, ptr %i.cr, align 4, !tbaa !88
  store float 0.000000e+00, ptr %i.cs, align 4, !tbaa !159
  store i32 -1, ptr %i.ct, align 8, !tbaa !18
  store float %i.fq, ptr %i.cu, align 4, !tbaa !618
  store float 0.000000e+00, ptr %i.cv, align 16, !tbaa !619
  store i16 0, ptr %i.cw, align 4, !tbaa !617
  store float %i.fo, ptr %i.cx, align 8, !tbaa !194
  store <4 x float> <float -5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 0.000000e+00>, ptr %i.cy, align 4, !tbaa !88
  store float 0.000000e+00, ptr %i.cz, align 4, !tbaa !159
  store i32 -1, ptr %i.da, align 16, !tbaa !18
  store float %i.fq, ptr %i.db, align 4, !tbaa !618
  store float 1.000000e+00, ptr %i.dc, align 8, !tbaa !619
  store i16 0, ptr %i.dd, align 4, !tbaa !617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZL19createExtrusionMeshii.indices.13, i64 24, i1 false)
  %i.fr = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 72
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull %i.b, i32 noundef 12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.fu = add nuw nsw i32 %.094122, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.fu, %0
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !613

bb.e:                                             ; preds = %.lr.ph124, %bb.e
  %.095123 = phi i32 [ 0, %.lr.ph124 ], [ %i.ge, %bb.e ] ; 3 uses
  %i.fv = uitofp nsz nneg i32 %.095123 to float
  %i.fw = fmul nsz float %i.df, %i.fv
  %i.fx = fsub nsz float 5.000000e-01, %i.fw      ; 5 uses
  %i.fy = fsub nsz float %i.fx, %i.df             ; 4 uses
  %i.fz = uitofp nsz nneg i32 %.095123 to double
  %16 = insertelement <2 x double> poison, double %i.fz, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = fadd nnan nsz <2 x double> %17, <double 1.000000e-01, double 9.000000e-01>
  %19 = fmul nsz <2 x double> %18, %8             ; 2 uses
  %20 = extractelement <2 x double> %19, i64 0
  %21 = fptrunc nsz double %20 to float           ; 4 uses
  %22 = extractelement <2 x double> %19, i64 1
  %i.ga = fptrunc nsz double %22 to float         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store float -5.000000e-01, ptr %4, align 16, !tbaa !194
  store float %i.fy, ptr %i.dh, align 4, !tbaa !195
  store <4 x float> <float -5.000000e-01, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %i.di, align 8, !tbaa !88
  store i32 -1, ptr %i.dj, align 8, !tbaa !18
  store float 0.000000e+00, ptr %i.dk, align 4, !tbaa !618
  store float %21, ptr %i.dl, align 16, !tbaa !619
  store i16 0, ptr %i.dm, align 4, !tbaa !617
  store float 5.000000e-01, ptr %i.dn, align 8, !tbaa !194
  store float %i.fy, ptr %i.do, align 4, !tbaa !195
  store <4 x float> <float -5.000000e-01, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %i.dp, align 16, !tbaa !88
  store i32 -1, ptr %i.dq, align 16, !tbaa !18
  store float 1.000000e+00, ptr %i.dr, align 4, !tbaa !618
  store float %21, ptr %i.ds, align 8, !tbaa !619
  store i16 0, ptr %i.dt, align 4, !tbaa !617
  store float 5.000000e-01, ptr %i.du, align 16, !tbaa !194
  store float %i.fy, ptr %i.dv, align 4, !tbaa !195
  store <4 x float> <float 5.000000e-01, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %i.dw, align 8, !tbaa !88
  store i32 -1, ptr %i.dx, align 8, !tbaa !18
  store float 1.000000e+00, ptr %i.dy, align 4, !tbaa !618
  store float %i.ga, ptr %i.dz, align 16, !tbaa !619
  store i16 0, ptr %i.ea, align 4, !tbaa !617
  store float -5.000000e-01, ptr %i.eb, align 8, !tbaa !194
  store float %i.fy, ptr %i.ec, align 4, !tbaa !195
  store <4 x float> <float 5.000000e-01, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %i.ed, align 16, !tbaa !88
  store i32 -1, ptr %i.ee, align 16, !tbaa !18
  store float 0.000000e+00, ptr %i.ef, align 4, !tbaa !618
  store float %i.ga, ptr %i.eg, align 8, !tbaa !619
  store i16 0, ptr %i.eh, align 4, !tbaa !617
  store float -5.000000e-01, ptr %i.ei, align 16, !tbaa !194
  store float %i.fx, ptr %i.ej, align 4, !tbaa !195
  store <4 x float> <float -5.000000e-01, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.ek, align 8, !tbaa !88
  store i32 -1, ptr %i.el, align 8, !tbaa !18
  store float 0.000000e+00, ptr %i.em, align 4, !tbaa !618
  store float %21, ptr %i.en, align 16, !tbaa !619
  store i16 0, ptr %i.eo, align 4, !tbaa !617
  store float -5.000000e-01, ptr %i.ep, align 8, !tbaa !194
  store float %i.fx, ptr %i.eq, align 4, !tbaa !195
  store <4 x float> <float 5.000000e-01, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.er, align 16, !tbaa !88
  store i32 -1, ptr %i.es, align 16, !tbaa !18
  store float 0.000000e+00, ptr %i.et, align 4, !tbaa !618
  store float %i.ga, ptr %i.eu, align 8, !tbaa !619
  store i16 0, ptr %i.ev, align 4, !tbaa !617
  store float 5.000000e-01, ptr %i.ew, align 16, !tbaa !194
  store float %i.fx, ptr %i.ex, align 4, !tbaa !195
  store <4 x float> <float 5.000000e-01, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.ey, align 8, !tbaa !88
  store i32 -1, ptr %i.ez, align 8, !tbaa !18
  store float 1.000000e+00, ptr %i.fa, align 4, !tbaa !618
  store float %i.ga, ptr %i.fb, align 16, !tbaa !619
  store i16 0, ptr %i.fc, align 4, !tbaa !617
  store float 5.000000e-01, ptr %i.fd, align 8, !tbaa !194
  store float %i.fx, ptr %i.fe, align 4, !tbaa !195
  store <4 x float> <float -5.000000e-01, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.ff, align 16, !tbaa !88
  store i32 -1, ptr %i.fg, align 16, !tbaa !18
  store float 1.000000e+00, ptr %i.fh, align 4, !tbaa !618
  store float %21, ptr %i.fi, align 8, !tbaa !619
  store i16 0, ptr %i.fj, align 4, !tbaa !617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZL19createExtrusionMeshii.indices.13, i64 24, i1 false)
  %i.gb = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 72
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %4, i32 noundef 8, ptr noundef nonnull %i.c, i32 noundef 12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ge = add nuw nsw i32 %.095123, 1             ; 2 uses
  %exitcond125.not = icmp eq i32 %i.ge, %1
  br i1 %exitcond125.not, label %._crit_edge, label %bb.e, !llvm.loop !614

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.gf = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26 ; 7 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 80
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 88
  store i32 1, ptr %i.gh, align 8, !tbaa !144
  store ptr getelementptr inbounds nuw inrange(-24, 112) (i8, ptr @_ZTVN5scene5SMeshE, i64 24), ptr %i.gf, align 8, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene5SMeshE, i64 160), ptr %i.gg, align 8, !tbaa !63
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gi, i8 0, i64 72, i1 false)
  call void @_ZN5scene5SMesh13addMeshBufferEPNS_11IMeshBufferE(ptr noundef nonnull align 8 dereferenceable(96) %i.gf, ptr noundef nonnull %i.d)
  %i.gj = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.gk = getelementptr i8, ptr %i.gj, i64 -24
  %i.gl = load i64, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds i8, ptr %i.d, i64 %i.gl ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !144
  %i.gp = add nsw i32 %i.go, -1                   ; 2 uses
  store i32 %i.gp, ptr %i.gn, align 8, !tbaa !144
  %.not.i = icmp eq i32 %i.gp, 0
  br i1 %.not.i, label %bb.f, label %_ZNK17IReferenceCounted4dropEv.exit

bb.f:                                             ; preds = %._crit_edge
  %i.gq = load ptr, ptr %i.gm, align 8, !tbaa !63
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(12) %i.gm) #27, !inline_history !2
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %._crit_edge, %bb.f
  call void @_Z9scaleMeshPN5scene5IMeshEN4core8vector3dIfEE(ptr noundef nonnull %i.gf, <2 x float> splat (float 1.000000e+00), float 1.000000e-01)
  ret ptr %i.gf
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN5scene5IMeshESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !18     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18
  %i.g = icmp slt i32 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !183 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIiPN5scene5IMeshESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit, label %bb.b, !llvm.loop !4

_ZNSt3mapIiPN5scene5IMeshESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIiPN5scene5IMeshESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !18
  %i.k = icmp slt i32 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5scene5IMeshEESt10_Select1stIS5_ESt4lessIiESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIiPN5scene5IMeshESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIiPN5scene5IMeshESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i32, ptr %1, align 4, !tbaa !18
  store i32 %i.n, ptr %i.m, align 8, !tbaa !620
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !185
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN5scene5IMeshEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIiSt4pairIKiPN5scene5IMeshEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i32, ptr %i.m, align 8, !tbaa !18
  %i.v = load i32, ptr %i.t, align 4, !tbaa !18
  %i.w = icmp slt i32 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.x = phi i1 [ %i.w, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #27
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !149
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !149
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5scene5IMeshEESt10_Select1stIS5_ESt4lessIiESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

_ZNSt8_Rb_treeIiSt4pairIKiPN5scene5IMeshEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #29
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #29
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5scene5IMeshEESt10_Select1stIS5_ESt4lessIiESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

_ZNSt8_Rb_treeIiSt4pairIKiPN5scene5IMeshEESt10_Select1stIS5_ESt4lessIiESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit: ; preds = %bb.g, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ac
}

declare noundef ptr @_Z14createCubeMeshN4core8vector3dIfEE(<2 x float>, float) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapIiPN5scene5IMeshESt4lessIiESaISt4pairIKiS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiPN5scene5IMeshEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiPN5scene5IMeshEESt10_Select1stIS5_ESt4lessIiESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #30
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiPN5scene5IMeshEESt10_Select1stIS5_ESt4lessIiESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18ExtrusionMeshCacheD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV18ExtrusionMeshCache, i64 16), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not9 = icmp eq ptr %i.c, %i.d
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK17IReferenceCounted4dropEv.exit5, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !158  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !144
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !144
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.b, label %_ZNK17IReferenceCounted4dropEv.exit

bb.b:                                             ; preds = %._crit_edge
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.j) #27, !inline_history !2
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %._crit_edge, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiPN5scene5IMeshEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.r)
          to label %_ZNSt3mapIiPN5scene5IMeshESt4lessIiESaISt4pairIKiS2_EEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
end_hunk_0
