Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN16QCPColorGradient17updateColorBufferEv:bb.a
  %i.jo = call noundef float @_ZNK6QColor11saturationFEv(ptr noundef nonnull align 4 dereferenceable_or_null(14) %2) #51
  %i.jp = call noundef float @_ZNK6QColor11saturationFEv(ptr noundef nonnull align 4 dereferenceable_or_null(14) %3) #51
  %i.jq = call noundef float @_ZNK6QColor6valueFEv(ptr noundef nonnull align 4 dereferenceable_or_null(14) %2) #51
  %i.jr = call noundef float @_ZNK6QColor6valueFEv(ptr noundef nonnull align 4 dereferenceable_or_null(14) %3) #51
  %i.js = insertelement <2 x float> poison, float %i.jo, i64 0
  %i.jt = insertelement <2 x float> %i.js, float %i.jq, i64 1
  %i.ju = fpext <2 x float> %i.jt to <2 x double>
  %i.jv = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.jw = insertelement <2 x float> %i.jv, float %i.jr, i64 1
  %i.jx = fpext <2 x float> %i.jw to <2 x double>
  %i.jy = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.jz = shufflevector <2 x double> %i.jy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ka = fmul <2 x double> %i.jz, %i.jx
  %i.kb = insertelement <2 x double> poison, double %i.jn, i64 0
  %i.kc = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %i.ju, <2 x double> %i.ka)
  %i.ke = fptrunc <2 x double> %i.kd to <2 x float> ; 2 uses
  %i.kf = extractelement <2 x float> %i.ke, i64 0
  %i.kg = extractelement <2 x float> %i.ke, i64 1
  %i.kh = call { i64, i64 } @_ZN6QColor8fromHsvFEffff(float noundef %i.jm, float noundef %i.kf, float noundef %i.kg, float noundef 1.000000e+00) ; 2 uses
  %.fca.0.extract10 = extractvalue { i64, i64 } %i.kh, 0
  %.fca.1.extract11 = extractvalue { i64, i64 } %i.kh, 1
  store i64 %.fca.0.extract10, ptr %4, align 8
  %.sroa.213.0.extract.trunc = trunc i64 %.fca.1.extract11 to i48
  store i48 %.sroa.213.0.extract.trunc, ptr %.sroa.213.0..sroa_idx, align 8
  %i.ki = call noundef i32 @_ZNK6QColor3rgbEv(ptr noundef nonnull align 4 dereferenceable_or_null(14) %4) #51 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  %i.kj = call noundef float @_ZNK6QColor6alphaFEv(ptr noundef nonnull align 4 dereferenceable_or_null(14) %2) #51
  %i.kk = fpext float %i.kj to double
  %i.kl = call noundef float @_ZNK6QColor6alphaFEv(ptr noundef nonnull align 4 dereferenceable_or_null(14) %3) #51
  %i.km = fpext float %i.kl to double
  %i.kn = fmul double %i.cw, %i.km
  %i.ko = call double @llvm.fmuladd.f64(double %i.jn, double %i.kk, double %i.kn) ; 4 uses
  %i.kp = lshr i32 %i.ki, 16
  %i.kq = and i32 %i.kp, 255
  %i.kr = uitofp nneg i32 %i.kq to double
  %i.ks = fmul double %i.ko, %i.kr
  %i.kt = fptosi double %i.ks to i32
  %i.ku = lshr i32 %i.ki, 8
  %i.kv = and i32 %i.ku, 255
  %i.kw = uitofp nneg i32 %i.kv to double
  %i.kx = fmul double %i.ko, %i.kw
  %i.ky = fptosi double %i.kx to i32
  %i.kz = and i32 %i.ki, 255
  %i.la = uitofp nneg i32 %i.kz to double
  %i.lb = fmul double %i.ko, %i.la
  %i.lc = fptosi double %i.lb to i32
  %i.ld = fmul double %i.ko, 2.550000e+02
  %i.le = fptosi double %i.ld to i32
  %i.lf = shl i32 %i.le, 24
  %i.lg = shl i32 %i.kt, 16
  %i.lh = and i32 %i.lg, 16711680
  %i.li = or disjoint i32 %i.lh, %i.lf
  %i.lj = shl i32 %i.ky, 8
  %i.lk = and i32 %i.lj, 65280
  %i.ll = or disjoint i32 %i.li, %i.lk
  %i.lm = and i32 %i.lc, 255
  %i.ln = or disjoint i32 %i.ll, %i.lm
  %i.lo = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i.i.i161 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i.i161, label %_ZN5QListIjE6detachEv.exit.i165, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i162

_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i162: ; preds = %bb.w
  %i.lp = load atomic i32, ptr %i.lo monotonic, align 4
  %i.lq = icmp sgt i32 %i.lp, 1
  br i1 %i.lq, label %_ZN5QListIjE6detachEv.exit.i165, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i163

_ZN5QListIjE6detachEv.exit.i165:                  ; preds = %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i162, %bb.w
  call void @_ZN17QArrayDataPointerIjE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %i.a, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre.i166 = load ptr, ptr %i.a, align 8        ; 2 uses
  %.not.i.i.i.i.i167 = icmp eq ptr %.pre.i166, null
  br i1 %.not.i.i.i.i.i167, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i164, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i163

_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i163: ; preds = %_ZN5QListIjE6detachEv.exit.i165, %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i162
  %i.lr = phi ptr [ %.pre.i166, %_ZN5QListIjE6detachEv.exit.i165 ], [ %i.lo, %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i162 ]
  %i.ls = load atomic i32, ptr %i.lr monotonic, align 4
  %i.lt = icmp sgt i32 %i.ls, 1
  br i1 %i.lt, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i164, label %_ZN5QListIjEixEx.exit168

_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i164: ; preds = %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i163, %_ZN5QListIjE6detachEv.exit.i165
  call void @_ZN17QArrayDataPointerIjE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %i.a, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIjEixEx.exit168

_ZN5QListIjEixEx.exit168:                         ; preds = %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i163, %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i164
  %i.lu = load ptr, ptr %i.ag, align 8
  %i.lv = getelementptr [4 x i8], ptr %i.lu, i64 %indvars.iv
  store i32 %i.ln, ptr %i.lv, align 4
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  %i.lw = call noundef float @_ZNK6QColor11saturationFEv(ptr noundef nonnull align 4 dereferenceable_or_null(14) %2) #51
  %i.lx = call noundef float @_ZNK6QColor11saturationFEv(ptr noundef nonnull align 4 dereferenceable_or_null(14) %3) #51
  %i.ly = call noundef float @_ZNK6QColor6valueFEv(ptr noundef nonnull align 4 dereferenceable_or_null(14) %2) #51
  %i.lz = call noundef float @_ZNK6QColor6valueFEv(ptr noundef nonnull align 4 dereferenceable_or_null(14) %3) #51
  %i.ma = insertelement <2 x float> poison, float %i.lw, i64 0
  %i.mb = insertelement <2 x float> %i.ma, float %i.ly, i64 1
  %i.mc = fpext <2 x float> %i.mb to <2 x double>
  %i.md = insertelement <2 x float> poison, float %i.lx, i64 0
  %i.me = insertelement <2 x float> %i.md, float %i.lz, i64 1
  %i.mf = fpext <2 x float> %i.me to <2 x double>
  %i.mg = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.mh = shufflevector <2 x double> %i.mg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mi = fmul <2 x double> %i.mh, %i.mf
  %i.mj = insertelement <2 x double> poison, double %i.jn, i64 0
  %i.mk = shufflevector <2 x double> %i.mj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ml = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mk, <2 x double> %i.mc, <2 x double> %i.mi)
  %i.mm = fptrunc <2 x double> %i.ml to <2 x float> ; 2 uses
  %i.mn = extractelement <2 x float> %i.mm, i64 0
  %i.mo = extractelement <2 x float> %i.mm, i64 1
  %i.mp = call { i64, i64 } @_ZN6QColor8fromHsvFEffff(float noundef %i.jm, float noundef %i.mn, float noundef %i.mo, float noundef 1.000000e+00) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i64 } %i.mp, 0
  %.fca.1.extract = extractvalue { i64, i64 } %i.mp, 1
  store i64 %.fca.0.extract, ptr %5, align 8
  %.sroa.2.0.extract.trunc = trunc i64 %.fca.1.extract to i48
  store i48 %.sroa.2.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 8
  %i.mq = call noundef i32 @_ZNK6QColor3rgbEv(ptr noundef nonnull align 4 dereferenceable_or_null(14) %5) #51
  %i.mr = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i.i.i169 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i.i169, label %_ZN5QListIjE6detachEv.exit.i173, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i170

_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i170: ; preds = %bb.x
  %i.ms = load atomic i32, ptr %i.mr monotonic, align 4
  %i.mt = icmp sgt i32 %i.ms, 1
  br i1 %i.mt, label %_ZN5QListIjE6detachEv.exit.i173, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i171

_ZN5QListIjE6detachEv.exit.i173:                  ; preds = %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i170, %bb.x
  call void @_ZN17QArrayDataPointerIjE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %i.a, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre.i174 = load ptr, ptr %i.a, align 8        ; 2 uses
  %.not.i.i.i.i.i175 = icmp eq ptr %.pre.i174, null
  br i1 %.not.i.i.i.i.i175, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i172, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i171

_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i171: ; preds = %_ZN5QListIjE6detachEv.exit.i173, %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i170
  %i.mu = phi ptr [ %.pre.i174, %_ZN5QListIjE6detachEv.exit.i173 ], [ %i.mr, %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i170 ]
  %i.mv = load atomic i32, ptr %i.mu monotonic, align 4
  %i.mw = icmp sgt i32 %i.mv, 1
  br i1 %i.mw, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i172, label %_ZN5QListIjEixEx.exit176

_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i172: ; preds = %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i171, %_ZN5QListIjE6detachEv.exit.i173
  call void @_ZN17QArrayDataPointerIjE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %i.a, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIjEixEx.exit176

_ZN5QListIjEixEx.exit176:                         ; preds = %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i171, %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i172
  %i.mx = load ptr, ptr %i.ag, align 8
  %i.my = getelementptr [4 x i8], ptr %i.mx, i64 %indvars.iv
  store i32 %i.mq, ptr %i.my, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %bb.y

bb.y:                                             ; preds = %_ZN5QListIjEixEx.exit176, %_ZN5QListIjEixEx.exit168
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph.i141.preheader, %bb.y, %_ZN5QListIjEixEx.exit160, %_ZN5QListIjEixEx.exit152, %_ZN5QListIjEixEx.exit139, %_ZN5QListIjEixEx.exit131, %_ZN5QListIjEixEx.exit, %_ZN5QListIjEixEx.exit121
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mz = load i32, ptr %0, align 8
  %i.na = sext i32 %i.mz to i64
  %i.nb = icmp slt i64 %indvars.iv.next, %i.na
  br i1 %i.nb, label %bb.e, label %.loopexit, !llvm.loop !866

_ZNK4QMapId6QColorE4sizeEv.exit178:               ; preds = %_ZNK4QMapId6QColorE4sizeEv.exit
  %i.nc = icmp eq i64 %i.o, 1
  br i1 %i.nc, label %_ZNK4QMapId6QColorE10constBeginEv.exit181, label %.loopexit.sink.split

_ZNK4QMapId6QColorE10constBeginEv.exit181:        ; preds = %_ZNK4QMapId6QColorE4sizeEv.exit178
  %i.nd = getelementptr i8, ptr %i.m, i64 32
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = getelementptr i8, ptr %i.ne, i64 40
  %i.ng = tail call noundef i32 @_ZNK6QColor3rgbEv(ptr noundef align 4 dereferenceable_or_null(14) %i.nf) #51 ; 3 uses
  %i.nh = load ptr, ptr %i.l, align 8             ; 2 uses
  %.not.i.i182 = icmp eq ptr %i.nh, null
  br i1 %.not.i.i182, label %_ZNK4QMapId6QColorE10constBeginEv.exit184, label %bb.aa

bb.aa:                                            ; preds = %_ZNK4QMapId6QColorE10constBeginEv.exit181
  %i.ni = getelementptr i8, ptr %i.nh, i64 32
  %i.nj = load ptr, ptr %i.ni, align 8
  br label %_ZNK4QMapId6QColorE10constBeginEv.exit184

_ZNK4QMapId6QColorE10constBeginEv.exit184:        ; preds = %_ZNK4QMapId6QColorE10constBeginEv.exit181, %bb.aa
  %.sroa.0.0.i.i183 = phi ptr [ %i.nj, %bb.aa ], [ null, %_ZNK4QMapId6QColorE10constBeginEv.exit181 ]
  %i.nk = getelementptr i8, ptr %.sroa.0.0.i.i183, i64 40
  %i.nl = tail call noundef float @_ZNK6QColor6alphaFEv(ptr noundef align 4 dereferenceable_or_null(14) %i.nk) #51
  %i.nm = fpext float %i.nl to double
  %i.nn = lshr i32 %i.ng, 16
  %i.no = lshr i32 %i.ng, 8
  %i.np = and i32 %i.ng, 255
  %i.nq = uitofp nneg i32 %i.np to double
  %i.nr = and i32 %i.no, 255
  %i.ns = and i32 %i.nn, 255
  %i.nt = uitofp nneg i32 %i.nr to double
  %i.nu = uitofp nneg i32 %i.ns to double
  %i.nv = insertelement <4 x double> poison, double %i.nm, i64 0
  %i.nw = shufflevector <4 x double> %i.nv, <4 x double> poison, <4 x i32> zeroinitializer
  %i.nx = insertelement <4 x double> poison, double %i.nu, i64 0
  %i.ny = insertelement <4 x double> %i.nx, double %i.nt, i64 1
  %i.nz = insertelement <4 x double> <double poison, double poison, double poison, double 2.550000e+02>, double %i.nq, i64 2
  %i.oa = shufflevector <4 x double> %i.ny, <4 x double> %i.nz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ob = fmul <4 x double> %i.nw, %i.oa
  %i.oc = fptosi <4 x double> %i.ob to <4 x i32>
  %6 = shufflevector <4 x i32> %i.oc, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %7 = trunc <4 x i32> %6 to <4 x i8>
  %8 = bitcast <4 x i8> %7 to i32
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %_ZNK4QMapId6QColorE4sizeEv.exit178, %_ZN5QListIjE6resizeEx.exit, %_ZNK4QMapId6QColorE10constBeginEv.exit184
  %.sink = phi i32 [ %8, %_ZNK4QMapId6QColorE10constBeginEv.exit184 ], [ -16777216, %_ZN5QListIjE6resizeEx.exit ], [ -16777216, %_ZNK4QMapId6QColorE4sizeEv.exit178 ]
  %i.od = tail call noundef align 8 dereferenceable(24) ptr @_ZN5QListIjE4fillEjx(ptr noundef align 8 dereferenceable_or_null(24) %i.a, i32 noundef %.sink, i64 noundef -1) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.z, %.loopexit.sink.split, %_ZNK16QCPColorGradient13stopsUseAlphaEv.exit
  %i.oe = getelementptr i8, ptr %0, i64 72
  store i8 0, ptr %i.oe, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
declare noundef i32 @_ZNK6QColor4rgbaEv(ptr noundef align 4 dereferenceable_or_null(14)) local_unnamed_addr #6

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16QCPColorGradient8colorizeEPKdPKhRK8QCPRangePjiib(ptr noundef align 8 dereferenceable_or_null(73) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class.QString, align 8             ; 9 uses
  %9 = alloca %class.QString, align 8             ; 9 uses
  %10 = alloca %class.QString, align 8            ; 9 uses
  %11 = alloca %class.QString, align 8            ; 9 uses
  %12 = alloca %class.QString, align 8            ; 9 uses
  %13 = alloca %class.QString, align 8            ; 9 uses
  %14 = alloca %class.QDebug, align 8             ; 10 uses
  %15 = alloca %class.QMessageLogger, align 8     ; 7 uses
  %16 = alloca %class.QDebug, align 8             ; 10 uses
  %17 = alloca %class.QMessageLogger, align 8     ; 7 uses
  %18 = alloca %class.QDebug, align 8             ; 10 uses
  %19 = alloca %class.QMessageLogger, align 8     ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #51
  store i32 2, ptr %15, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %15, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.b, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %14, ptr noundef nonnull align 8 dereferenceable_or_null(32) %15)
  %i.c = load ptr, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %13, i64 112, ptr nonnull @__PRETTY_FUNCTION__._ZN16QCPColorGradient8colorizeEPKdPKhRK8QCPRangePjiib)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.b
  %i.d = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %.noexc
  %i.e = load ptr, ptr %13, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.c
  %i.f = atomicrmw sub ptr %i.e, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.f, 1
  br i1 %.not.i.i.i, label %bb.d, label %_ZN7QStringD2Ev.exit.i

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.g = load ptr, ptr %13, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.g, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.d, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #51
  %i.h = load ptr, ptr %14, align 8               ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 48
  %i.j = load i8, ptr %i.i, align 8, !range !175, !noundef !176
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %_ZN6QDebuglsEPKc.exit

bb.e:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.l = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.h, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit_crit_edge unwind label %bb.m ; 0 uses

._ZN6QDebuglsEPKc.exit_crit_edge:                 ; preds = %bb.e
  %.pre139 = load ptr, ptr %14, align 8
  br label %_ZN6QDebuglsEPKc.exit

bb.f:                                             ; preds = %.noexc
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %13, align 8               ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.f
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.o, 1
  br i1 %.not.i.i4.i, label %bb.g, label %_ZN7QStringD2Ev.exit5.i

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.p = load ptr, ptr %13, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.p, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.g, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #51
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.q = phi ptr [ %.pre139, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.h, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %12, i64 26, ptr nonnull @.str.139)
          to label %.noexc67 unwind label %bb.m

.noexc67:                                         ; preds = %_ZN6QDebuglsEPKc.exit
  %i.r = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %.noexc67
  %i.s = load ptr, ptr %12, align 8               ; 2 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i63, label %_ZN7QStringD2Ev.exit.i66, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i64

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i64:  ; preds = %bb.h
  %i.t = atomicrmw sub ptr %i.s, i32 1 acq_rel, align 4
  %.not.i.i.i65 = icmp eq i32 %i.t, 1
  br i1 %.not.i.i.i65, label %bb.i, label %_ZN7QStringD2Ev.exit.i66

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i64
  %i.u = load ptr, ptr %12, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.u, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i66

_ZN7QStringD2Ev.exit.i66:                         ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i64, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  %i.v = load ptr, ptr %14, align 8               ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 48
  %i.x = load i8, ptr %i.w, align 8, !range !175, !noundef !176
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.j, label %_ZN6QDebuglsEPKc.exit71

bb.j:                                             ; preds = %_ZN7QStringD2Ev.exit.i66
  %i.z = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.v, i8 noundef signext 32)
          to label %_ZN6QDebuglsEPKc.exit71 unwind label %bb.m ; 0 uses

bb.k:                                             ; preds = %.noexc67
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %12, align 8              ; 2 uses
  %.not.i.i.i2.i59 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i2.i59, label %_ZN7QStringD2Ev.exit5.i62, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i60

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i60: ; preds = %bb.k
  %i.ac = atomicrmw sub ptr %i.ab, i32 1 acq_rel, align 4
  %.not.i.i4.i61 = icmp eq i32 %i.ac, 1
  br i1 %.not.i.i4.i61, label %bb.l, label %_ZN7QStringD2Ev.exit5.i62

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i60
  %i.ad = load ptr, ptr %12, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ad, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i62

_ZN7QStringD2Ev.exit5.i62:                        ; preds = %bb.l, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i60, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #51
  br label %.body

_ZN6QDebuglsEPKc.exit71:                          ; preds = %_ZN7QStringD2Ev.exit.i66, %bb.j
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %14) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #51
  br label %.loopexit

bb.m:                                             ; preds = %bb.j, %_ZN6QDebuglsEPKc.exit, %bb.e, %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %_ZN7QStringD2Ev.exit5.i62, %_ZN7QStringD2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %_ZN7QStringD2Ev.exit5.i ], [ %i.ae, %bb.m ], [ %i.aa, %_ZN7QStringD2Ev.exit5.i62 ]
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %14) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #51
  br label %bb.bh

bb.n:                                             ; preds = %bb.a
  %.not55 = icmp eq ptr %2, null
  br i1 %.not55, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #51
  store i32 2, ptr %17, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %17, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.af, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.ag, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %16, ptr noundef nonnull align 8 dereferenceable_or_null(32) %17)
  %i.ah = load ptr, ptr %16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %11, i64 112, ptr nonnull @__PRETTY_FUNCTION__._ZN16QCPColorGradient8colorizeEPKdPKhRK8QCPRangePjiib)
          to label %.noexc80 unwind label %bb.z

.noexc80:                                         ; preds = %bb.o
  %i.ai = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %11)
end_hunk_0
begin_hunk_1_@_ZN16QCPColorGradient8colorizeEPKdPKhRK8QCPRangePjiib:bb.a
  br label %_ZN7QStringD2Ev.exit5.i101

_ZN7QStringD2Ev.exit5.i101:                       ; preds = %bb.ag, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i99, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  br label %.body108

_ZN6QDebuglsEPKc.exit110:                         ; preds = %._ZN6QDebuglsEPKc.exit110_crit_edge, %_ZN7QStringD2Ev.exit.i105
  %i.ca = phi ptr [ %.pre, %._ZN6QDebuglsEPKc.exit110_crit_edge ], [ %i.br, %_ZN7QStringD2Ev.exit.i105 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %8, i64 30, ptr nonnull @.str.140)
          to label %.noexc119 unwind label %bb.am

.noexc119:                                        ; preds = %_ZN6QDebuglsEPKc.exit110
  %i.cb = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.ah unwind label %bb.ak     ; 0 uses

bb.ah:                                            ; preds = %.noexc119
  %i.cc = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i.i115 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i115, label %_ZN7QStringD2Ev.exit.i118, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i116

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i116: ; preds = %bb.ah
  %i.cd = atomicrmw sub ptr %i.cc, i32 1 acq_rel, align 4
  %.not.i.i.i117 = icmp eq i32 %i.cd, 1
  br i1 %.not.i.i.i117, label %bb.ai, label %_ZN7QStringD2Ev.exit.i118

bb.ai:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i116
  %i.ce = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ce, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i118

_ZN7QStringD2Ev.exit.i118:                        ; preds = %bb.ai, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i116, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  %i.cf = load ptr, ptr %18, align 8              ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 48
  %i.ch = load i8, ptr %i.cg, align 8, !range !175, !noundef !176
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.aj, label %_ZN6QDebuglsEPKc.exit123

bb.aj:                                            ; preds = %_ZN7QStringD2Ev.exit.i118
  %i.cj = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.cf, i8 noundef signext 32)
          to label %_ZN6QDebuglsEPKc.exit123 unwind label %bb.am ; 0 uses

bb.ak:                                            ; preds = %.noexc119
  %i.ck = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i.i.i2.i111 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i2.i111, label %_ZN7QStringD2Ev.exit5.i114, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i112

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i112: ; preds = %bb.ak
  %i.cm = atomicrmw sub ptr %i.cl, i32 1 acq_rel, align 4
  %.not.i.i4.i113 = icmp eq i32 %i.cm, 1
  br i1 %.not.i.i4.i113, label %bb.al, label %_ZN7QStringD2Ev.exit5.i114

bb.al:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i112
  %i.cn = load ptr, ptr %8, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cn, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i114

_ZN7QStringD2Ev.exit5.i114:                       ; preds = %bb.al, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i112, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  br label %.body108

_ZN6QDebuglsEPKc.exit123:                         ; preds = %_ZN7QStringD2Ev.exit.i118, %bb.aj
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %18) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #51
  br label %.loopexit

bb.am:                                            ; preds = %bb.aj, %_ZN6QDebuglsEPKc.exit110, %bb.ae, %bb.ab
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body108

.body108:                                         ; preds = %bb.am, %_ZN7QStringD2Ev.exit5.i114, %_ZN7QStringD2Ev.exit5.i101
  %eh.lpad-body109 = phi { ptr, i32 } [ %i.bw, %_ZN7QStringD2Ev.exit5.i101 ], [ %i.co, %bb.am ], [ %i.ck, %_ZN7QStringD2Ev.exit5.i114 ]
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %18) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #51
  br label %bb.bh

bb.an:                                            ; preds = %bb.aa
  %i.cp = getelementptr i8, ptr %0, i64 72
  %i.cq = load i8, ptr %i.cp, align 8, !range !175, !noundef !176
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZN16QCPColorGradient17updateColorBufferEv(ptr noundef align 8 dereferenceable_or_null(73) %0)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.cs = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = icmp ne i32 %i.ct, 0
  %i.cv = load i32, ptr %0, align 8
  %i.cw = add i32 %i.cv, -1
  %i.cx = sitofp i32 %i.cw to double
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cz = load double, ptr %i.cy, align 8         ; 2 uses
  %i.da = load double, ptr %3, align 8            ; 2 uses
  br i1 %7, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.db = fsub double %i.cz, %i.da
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.dc = fdiv double %i.cz, %i.da
  %i.dd = tail call noundef double @log(double noundef %i.dc) #51
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sink = phi double [ %i.dd, %bb.ar ], [ %i.db, %bb.aq ]
  %i.de = fdiv double %i.cx, %.sink
  %i.df = icmp sgt i32 %5, 0
  br i1 %i.df, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.as
  %i.dg = getelementptr i8, ptr %0, i64 40
  %i.dh = getelementptr i8, ptr %0, i64 56        ; 3 uses
  %i.di = getelementptr i8, ptr %0, i64 24
  %i.dj = getelementptr i8, ptr %0, i64 48        ; 4 uses
  %i.dk = getelementptr i8, ptr %0, i64 64
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph, %bb.bg
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bg ] ; 3 uses
  %i.dl = trunc nuw nsw i64 %indvars.iv to i32
  %i.dm = mul i32 %6, %i.dl
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %1, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8         ; 3 uses
  %i.dq = fcmp uno double %i.dp, 0.000000e+00
  %or.cond = select i1 %i.cu, i1 %i.dq, i1 false
  br i1 %or.cond, label %bb.bc, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dr = load double, ptr %3, align 8            ; 2 uses
  br i1 %7, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ds = fsub double %i.dp, %i.dr
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.dt = fdiv double %i.dp, %i.dr
  %i.du = tail call noundef double @log(double noundef %i.dt) #51
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.dv = phi double [ %i.ds, %bb.av ], [ %i.du, %bb.aw ]
  %i.dw = fmul double %i.de, %i.dv
  %i.dx = fptosi double %i.dw to i64              ; 2 uses
  %i.dy = load i8, ptr %i.dg, align 8, !range !175, !noundef !176
  %i.dz = trunc nuw i8 %i.dy to i1
  %i.ea = load i32, ptr %0, align 8               ; 2 uses
  br i1 %i.dz, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eb = add i32 %i.ea, -1
  %i.ec = sext i32 %i.eb to i64
  %i.ed = tail call i64 @llvm.smin.i64(i64 %i.ec, i64 %i.dx)
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.ed, i64 0)
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.ee = sext i32 %i.ea to i64                   ; 2 uses
  %i.ef = srem i64 %i.dx, %i.ee                   ; 2 uses
  %i.eg = icmp slt i64 %i.ef, 0
  %i.eh = select i1 %i.eg, i64 %i.ee, i64 0
  %spec.select = add nsw i64 %i.eh, %i.ef
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0 = phi i64 [ %.sroa.speculated, %bb.ay ], [ %spec.select, %bb.az ]
  %i.ei = getelementptr i8, ptr %2, i64 %i.dn
  %i.ej = load i8, ptr %i.ei, align 1             ; 2 uses
  %i.ek = icmp eq i8 %i.ej, -1
  %i.el = load ptr, ptr %i.dh, align 8
  %i.em = getelementptr [4 x i8], ptr %i.el, i64 %.0
  %i.en = load i32, ptr %i.em, align 4            ; 5 uses
  br i1 %i.ek, label %.sink.split, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.eo = uitofp i8 %i.ej to float
  %i.ep = fdiv nnan float %i.eo, 2.550000e+02
  %i.eq = lshr i32 %i.en, 24
  %i.er = lshr i32 %i.en, 8
  %i.es = lshr i32 %i.en, 16
  %i.et = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %i.eu = insertelement <4 x i32> %i.et, i32 %i.er, i64 1
  %i.ev = insertelement <4 x i32> %i.eu, i32 %i.en, i64 2
  %i.ew = insertelement <4 x i32> %i.ev, i32 %i.eq, i64 3
  %i.ex = and <4 x i32> %i.ew, <i32 255, i32 255, i32 255, i32 -1>
  %i.ey = uitofp <4 x i32> %i.ex to <4 x float>
  %i.ez = insertelement <4 x float> poison, float %i.ep, i64 0
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> zeroinitializer
  %20 = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %21 = fmul <4 x float> %i.fa, %20
  %22 = fptosi <4 x float> %21 to <4 x i32>
  %23 = trunc <4 x i32> %22 to <4 x i8>
  %24 = bitcast <4 x i8> %23 to i32
  br label %.sink.split

bb.bc:                                            ; preds = %bb.at
  %i.fb = load i32, ptr %i.cs, align 4
  switch i32 %i.fb, label %bb.bg [
    i32 1, label %bb.bd
    i32 2, label %bb.be
    i32 3, label %.sink.split
    i32 4, label %bb.bf
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.fc = load ptr, ptr %i.dj, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i: ; preds = %bb.bd
  %i.fd = load atomic i32, ptr %i.fc monotonic, align 4
  %i.fe = icmp sgt i32 %i.fd, 1
  br i1 %i.fe, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i, label %_ZN5QListIjE5firstEv.exit

_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i, %bb.bd
  tail call void @_ZN17QArrayDataPointerIjE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %i.dj, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIjE5firstEv.exit

_ZN5QListIjE5firstEv.exit:                        ; preds = %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i
  %i.ff = load ptr, ptr %i.dh, align 8
  %i.fg = load i32, ptr %i.ff, align 4
  br label %.sink.split

bb.be:                                            ; preds = %bb.bc
  %i.fh = load ptr, ptr %i.dj, align 8            ; 2 uses
  %.not.i.i.i.i.i124 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i.i124, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i126, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i125

_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i125: ; preds = %bb.be
  %i.fi = load atomic i32, ptr %i.fh monotonic, align 4
  %i.fj = icmp sgt i32 %i.fi, 1
  br i1 %i.fj, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i126, label %_ZN5QListIjE4lastEv.exit

_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i126: ; preds = %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i125, %bb.be
  tail call void @_ZN17QArrayDataPointerIjE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %i.dj, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIjE4lastEv.exit

_ZN5QListIjE4lastEv.exit:                         ; preds = %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i125, %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i126
  %i.fk = load ptr, ptr %i.dh, align 8
  %i.fl = load i64, ptr %i.dk, align 8
  %i.fm = getelementptr [4 x i8], ptr %i.fk, i64 %i.fl
  %i.fn = getelementptr i8, ptr %i.fm, i64 -4
  %i.fo = load i32, ptr %i.fn, align 4
  br label %.sink.split

bb.bf:                                            ; preds = %bb.bc
  %i.fp = tail call noundef i32 @_ZNK6QColor4rgbaEv(ptr noundef align 4 dereferenceable_or_null(14) %i.di) #51
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bc, %bb.ba, %bb.bf, %_ZN5QListIjE4lastEv.exit, %_ZN5QListIjE5firstEv.exit, %bb.bb
  %.sink159 = phi i32 [ %i.fp, %bb.bf ], [ %24, %bb.bb ], [ %i.fg, %_ZN5QListIjE5firstEv.exit ], [ %i.fo, %_ZN5QListIjE4lastEv.exit ], [ %i.en, %bb.ba ], [ 0, %bb.bc ]
  %i.fq = getelementptr [4 x i8], ptr %4, i64 %indvars.iv
  store i32 %.sink159, ptr %i.fq, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %.sink.split, %bb.bc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.at, !llvm.loop !867

.loopexit:                                        ; preds = %bb.bg, %bb.as, %_ZN6QDebuglsEPKc.exit123, %_ZN6QDebuglsEPKc.exit97, %_ZN6QDebuglsEPKc.exit71
  ret void

bb.bh:                                            ; preds = %.body108, %.body82, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body109, %.body108 ], [ %eh.lpad-body83, %.body82 ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef i32 @_ZN16QCPColorGradient5colorEdRK8QCPRangeb(ptr noundef align 8 dereferenceable_or_null(73) %0, double noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !range !175, !noundef !176
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN16QCPColorGradient17updateColorBufferEv(ptr noundef align 8 dereferenceable_or_null(73) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp ne i32 %i.e, 0
  %i.g = fcmp uno double %1, 0.000000e+00
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  switch i32 %i.e, label %bb.h [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.o
    i32 4, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i: ; preds = %bb.e
  %i.j = load atomic i32, ptr %i.i monotonic, align 4
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i, label %_ZN5QListIjE5firstEv.exit

_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i, %bb.e
  tail call void @_ZN17QArrayDataPointerIjE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %i.h, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIjE5firstEv.exit

_ZN5QListIjE5firstEv.exit:                        ; preds = %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i
  %i.l = getelementptr i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load i32, ptr %i.m, align 4
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i14, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i16, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i15

_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i15: ; preds = %bb.f
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i16, label %_ZN5QListIjE4lastEv.exit

_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i16: ; preds = %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i15, %bb.f
  tail call void @_ZN17QArrayDataPointerIjE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %i.o, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIjE4lastEv.exit

_ZN5QListIjE4lastEv.exit:                         ; preds = %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i15, %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i16
  %i.s = getelementptr i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %0, i64 64
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr [4 x i8], ptr %i.t, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -4
  %i.y = load i32, ptr %i.x, align 4
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %0, i64 24
  %i.aa = tail call noundef i32 @_ZNK6QColor4rgbaEv(ptr noundef align 4 dereferenceable_or_null(14) %i.z) #51
  br label %bb.o

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.ab = load i32, ptr %0, align 8
  %i.ac = add i32 %i.ab, -1
  %i.ad = sitofp i32 %i.ac to double
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load double, ptr %i.ae, align 8         ; 2 uses
  %i.ag = load double, ptr %2, align 8            ; 4 uses
  br i1 %3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = fsub double %i.af, %i.ag
  %i.ai = fsub double %1, %i.ag
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aj = fdiv double %i.af, %i.ag
  %i.ak = tail call noundef double @log(double noundef %i.aj) #51
  %i.al = fdiv double %1, %i.ag
  %i.am = tail call noundef double @log(double noundef %i.al) #51
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi double [ %i.ah, %bb.i ], [ %i.ak, %bb.j ]
  %i.an = phi double [ %i.ai, %bb.i ], [ %i.am, %bb.j ]
  %i.ao = fdiv double %i.ad, %.pn
  %i.ap = fmul double %i.ao, %i.an
  %i.aq = fptosi double %i.ap to i32              ; 2 uses
  %i.ar = getelementptr i8, ptr %0, i64 40
  %i.as = load i8, ptr %i.ar, align 8, !range !175, !noundef !176
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = load i32, ptr %0, align 8               ; 3 uses
  br i1 %i.at, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = add i32 %i.au, -1
  %i.aw = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.aq)
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.aw, i32 0)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ax = srem i32 %i.aq, %i.au                   ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  %i.az = select i1 %i.ay, i32 %i.au, i32 0
  %spec.select = add i32 %i.az, %i.ax
  br label %bb.n

end_hunk_1
begin_hunk_2_@_ZN17QArrayDataPointerIP13QCPPolarGraphE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS1_:bb.a
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = add i64 %i.f, 23
  %i.h = and i64 %i.g, -8
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.i, %i.h
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, %i.k
  %i.o = sub i64 %i.c, %i.n
  br label %_ZNK17QArrayDataPointerIP13QCPPolarGraphE14freeSpaceAtEndEv.exit

_ZNK17QArrayDataPointerIP13QCPPolarGraphE14freeSpaceAtEndEv.exit: ; preds = %bb.a, %_ZNK17QArrayDataPointerIP13QCPPolarGraphE16freeSpaceAtBeginEv.exit.i
  %.0.i24 = phi i64 [ %i.k, %_ZNK17QArrayDataPointerIP13QCPPolarGraphE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.p = phi i64 [ %i.c, %_ZNK17QArrayDataPointerIP13QCPPolarGraphE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ] ; 3 uses
  %.0.i20 = phi i64 [ %i.o, %_ZNK17QArrayDataPointerIP13QCPPolarGraphE16freeSpaceAtBeginEv.exit.i ], [ 0, %bb.a ]
  %i.q = icmp ne i32 %1, 0
  %.not = icmp slt i64 %.0.i24, %2
  %or.cond = or i1 %i.q, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerIP13QCPPolarGraphE14freeSpaceAtEndEv.exit
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = mul i64 %i.s, 3
  %i.u = shl i64 %i.p, 1
  %i.v = icmp slt i64 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %.thread

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerIP13QCPPolarGraphE14freeSpaceAtEndEv.exit
  %i.w = icmp ne i32 %1, 1
  %.not18 = icmp slt i64 %.0.i20, %2
  %or.cond19 = or i1 %i.w, %.not18
  br i1 %or.cond19, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = mul i64 %i.y, 3
  %i.aa = icmp slt i64 %i.z, %i.p
  br i1 %i.aa, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = add i64 %2, %i.y
  %i.ac = sub i64 %i.p, %i.ab
  %i.ad = sdiv i64 %i.ac, 2
  %i.ae = tail call noundef i64 @llvm.smax.i64(i64 %i.ad, i64 0)
  %i.af = add i64 %i.ae, %2
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.ag = phi i64 [ %i.s, %bb.b ], [ %i.y, %bb.e ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.b ], [ %i.af, %bb.e ]
  %i.ah = sub i64 %.0, %.0.i24                    ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %.idx.i = shl i64 %i.ah, 3                      ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.idx.i ; 3 uses
  %i.al = getelementptr i8, ptr %0, i64 16
  %i.am = icmp eq i64 %i.ag, 0
  br i1 %i.am, label %_ZN9QtPrivate20q_relocate_overlap_nIP13QCPPolarGraphxEEvPT_T0_S4_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = icmp eq i64 %.idx.i, 0
  %i.ao = icmp eq ptr %i.aj, null
  %or.cond.i.i = or i1 %i.ao, %i.an
  %i.ap = icmp eq ptr %i.ak, null
  %or.cond3.i.i = or i1 %i.ap, %or.cond.i.i
  br i1 %or.cond3.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nIP13QCPPolarGraphxEEvPT_T0_S4_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = shl i64 %i.ag, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ak, ptr noundef nonnull align 1 %i.aj, i64 noundef %i.aq, i1 noundef false) #51
  br label %_ZN9QtPrivate20q_relocate_overlap_nIP13QCPPolarGraphxEEvPT_T0_S4_.exit.i

_ZN9QtPrivate20q_relocate_overlap_nIP13QCPPolarGraphxEEvPT_T0_S4_.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %.not.i21 = icmp eq ptr %3, null
  br i1 %.not.i21, label %_ZN17QArrayDataPointerIP13QCPPolarGraphE8relocateExPPKS1_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN9QtPrivate20q_relocate_overlap_nIP13QCPPolarGraphxEEvPT_T0_S4_.exit.i
  %i.ar = load ptr, ptr %3, align 8               ; 3 uses
  %i.as = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.at = load i64, ptr %i.al, align 8
  %i.au = getelementptr [8 x i8], ptr %i.as, i64 %i.at
  %i.av = icmp uge ptr %i.ar, %i.as
  %i.aw = icmp ult ptr %i.ar, %i.au
  %spec.select.i.i = and i1 %i.av, %i.aw
  br i1 %spec.select.i.i, label %bb.j, label %_ZN17QArrayDataPointerIP13QCPPolarGraphE8relocateExPPKS1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr [8 x i8], ptr %i.ar, i64 %i.ah
  store ptr %i.ax, ptr %3, align 8
  br label %_ZN17QArrayDataPointerIP13QCPPolarGraphE8relocateExPPKS1_.exit

_ZN17QArrayDataPointerIP13QCPPolarGraphE8relocateExPPKS1_.exit: ; preds = %_ZN9QtPrivate20q_relocate_overlap_nIP13QCPPolarGraphxEEvPT_T0_S4_.exit.i, %bb.i, %bb.j
  store ptr %i.ak, ptr %i.ai, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d, %_ZN17QArrayDataPointerIP13QCPPolarGraphE8relocateExPPKS1_.exit
  %.015 = phi i1 [ true, %_ZN17QArrayDataPointerIP13QCPPolarGraphE8relocateExPPKS1_.exit ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.015
}

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN15QtSharedPointer33ExternalRefCountWithCustomDeleterI16QCPDataContainerI12QCPGraphDataENS_13NormalDeleterEE7deleterEPNS_20ExternalRefCountDataE(ptr noundef %0) #5 comdat align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN15QtSharedPointer13CustomDeleterI16QCPDataContainerI12QCPGraphDataENS_13NormalDeleterEE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN16QCPDataContainerI12QCPGraphDataED2Ev.exit.i, label %_ZN17QArrayDataPointerI12QCPGraphDataE5derefEv.exit.i.i.i.i

_ZN17QArrayDataPointerI12QCPGraphDataE5derefEv.exit.i.i.i.i: ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.e, i32 1 acq_rel, align 4
  %.not.i.i.i.i = icmp eq i32 %i.f, 1
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN16QCPDataContainerI12QCPGraphDataED2Ev.exit.i

bb.c:                                             ; preds = %_ZN17QArrayDataPointerI12QCPGraphDataE5derefEv.exit.i.i.i.i
  %i.g = load ptr, ptr %i.d, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.g, i64 noundef 16, i64 noundef 8) #51
  br label %_ZN16QCPDataContainerI12QCPGraphDataED2Ev.exit.i

_ZN16QCPDataContainerI12QCPGraphDataED2Ev.exit.i: ; preds = %bb.c, %_ZN17QArrayDataPointerI12QCPGraphDataE5derefEv.exit.i.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #53
  br label %_ZN15QtSharedPointer13CustomDeleterI16QCPDataContainerI12QCPGraphDataENS_13NormalDeleterEE7executeEv.exit

_ZN15QtSharedPointer13CustomDeleterI16QCPDataContainerI12QCPGraphDataENS_13NormalDeleterEE7executeEv.exit: ; preds = %bb.a, %_ZN16QCPDataContainerI12QCPGraphDataED2Ev.exit.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.copysign.v2f64(<2 x double>, <2 x double>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.copysign.v4f64(<4 x double>, <4 x double>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #25

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress noreturn nounwind null_pointer_is_valid sspstrong memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { mustprogress nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind null_pointer_is_valid sspstrong uwtable "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress norecurse nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress norecurse nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress norecurse nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nofree nounwind null_pointer_is_valid willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #46 = { mustprogress noinline null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { cold noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { nobuiltin nounwind null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #50 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #51 = { nounwind }
attributes #52 = { noreturn nounwind }
attributes #53 = { builtin nounwind }
attributes #54 = { builtin allocsize(0) }
attributes #55 = { nounwind willreturn memory(read) }
attributes #56 = { nounwind willreturn memory(none) }
attributes #57 = { allocsize(0) }
attributes #58 = { cold noreturn }
attributes #59 = { noreturn }
attributes #60 = { nounwind allocsize(0) }

!llvm.module.flags = !{!169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = distinct !{!0, !177}
!1 = distinct !{null}
!2 = distinct !{!2, !177}
!3 = distinct !{!3, !177}
!4 = distinct !{!4, !177}
!5 = distinct !{!5, !177}
!6 = distinct !{!6, !177}
!7 = distinct !{!7, !177}
!8 = distinct !{!8, !177}
!9 = distinct !{!9, !177}
!10 = distinct !{!10, !177}
!11 = distinct !{!11, !177}
!12 = distinct !{!12, !177}
!13 = distinct !{null, null}
!14 = distinct !{!14, !177}
!15 = distinct !{!15, !177}
!16 = distinct !{!16, !177}
!17 = distinct !{!17, !177}
!18 = distinct !{!18, !177}
!19 = distinct !{!19, !177}
!20 = distinct !{!20, !177}
!21 = distinct !{!21, !177}
!22 = distinct !{!22, !177}
!23 = distinct !{!23, !177}
!24 = distinct !{!24, !177}
!25 = distinct !{!25, !177}
!26 = distinct !{null}
!27 = distinct !{!27, !177}
!28 = distinct !{!28, !177}
!29 = distinct !{!29, !177}
!30 = distinct !{!30, !177}
!31 = distinct !{!31, !177}
!32 = distinct !{!32, !177}
!33 = distinct !{!33, !177}
!34 = distinct !{!34, !177}
!35 = distinct !{!35, !177}
!36 = distinct !{!36, !177}
!37 = distinct !{!37, !177}
!38 = distinct !{!38, !177}
!39 = distinct !{!39, !177}
!40 = distinct !{!40, !177}
!41 = distinct !{!41, !177}
!42 = distinct !{!42, !177}
!43 = distinct !{!43, !177}
!44 = distinct !{ptr @_ZN22QCPAbstractPlottable1DI12QCPGraphDataED2Ev, null}
!45 = distinct !{!45, !177}
!46 = distinct !{!46, !177}
!47 = distinct !{!47, !177}
!48 = distinct !{!48, !177}
!49 = distinct !{!49, !177}
!50 = distinct !{!50, !177}
!51 = distinct !{!51, !177}
!52 = distinct !{!52, !177}
!53 = distinct !{!53, !177}
!54 = distinct !{!54, !177}
!55 = distinct !{!55, !177}
!56 = distinct !{!56, !177}
!57 = distinct !{!57, !177}
!58 = distinct !{!58, !177}
!59 = distinct !{ptr @_ZN22QCPAbstractPlottable1DI12QCPCurveDataED2Ev, null}
!60 = distinct !{!60, !177}
!61 = distinct !{!61, !177}
!62 = distinct !{!62, !177}
!63 = distinct !{!63, !177}
!64 = distinct !{!64, !177}
!65 = distinct !{!65, !177}
!66 = distinct !{!66, !177}
!67 = distinct !{ptr @_ZN22QCPAbstractPlottable1DI11QCPBarsDataED2Ev, null}
!68 = distinct !{!68, !177}
!69 = distinct !{!69, !177}
!70 = distinct !{!70, !177}
!71 = distinct !{!71, !177}
!72 = distinct !{!72, !177}
!73 = distinct !{!73, !177}
!74 = distinct !{!74, !177}
!75 = distinct !{!75, !177}
!76 = distinct !{!76, !177}
!77 = distinct !{!77, !177}
!78 = distinct !{!78, !177}
!79 = distinct !{!79, !177}
!80 = distinct !{!80, !177}
!81 = distinct !{!81, !177}
!82 = distinct !{!82, !177}
!83 = distinct !{!83, !177}
!84 = distinct !{ptr @_ZN22QCPAbstractPlottable1DI16QCPFinancialDataED2Ev, null}
!85 = distinct !{!85, !177}
!86 = distinct !{!86, !177}
!87 = distinct !{!87, !177}
!88 = distinct !{!88, !177}
!89 = distinct !{!89, !177}
!90 = distinct !{!90, !177}
!91 = distinct !{!91, !177}
!92 = distinct !{!92, !177}
!93 = distinct !{!93, !177}
!94 = distinct !{!94, !177}
!95 = distinct !{!95, !177}
!96 = distinct !{!96, !177}
!97 = distinct !{!97, !177}
!98 = distinct !{!98, !177}
!99 = distinct !{!99, !177}
!100 = distinct !{!100, !177}
!101 = distinct !{!101, !177}
!102 = distinct !{!102, !177}
!103 = distinct !{!103, !177}
!104 = distinct !{!104, !177}
!105 = distinct !{!105, !177}
!106 = distinct !{!106, !177}
!107 = distinct !{!107, !177}
!108 = distinct !{!108, !177}
!109 = distinct !{!109, !177}
!110 = distinct !{!110, !177}
!111 = distinct !{!111, !177}
!112 = distinct !{!112, !177}
!113 = distinct !{!113, !177}
!114 = distinct !{!114, !177}
!115 = distinct !{!115, !177}
!116 = distinct !{!116, !177}
!117 = distinct !{!117, !177}
!118 = distinct !{!118, !177}
!119 = distinct !{!119, !177}
!120 = distinct !{!120, !177}
!121 = distinct !{null, null}
!122 = distinct !{null, null}
!123 = distinct !{!123, !177}
!124 = distinct !{!124, !177}
!125 = distinct !{!125, !177}
!126 = distinct !{!126, !177}
!127 = distinct !{!127, !177}
!128 = distinct !{!128, !177}
!129 = distinct !{!129, !177}
end_hunk_2
