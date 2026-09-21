Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/hud?download=true
inline.NumInlined: 2250
inline.NumDeleted: 686
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3Hud17drawSelectionMeshEv:bb.a
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !542

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %bb.g, %bb.d, %bb.c, %bb.f
  %i.ha = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !69
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(64) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %.loopexit
  ret void
}

declare void @_Z12setMeshColorPN5scene5IMeshEN5video6SColorE(ptr noundef, i32) local_unnamed_addr #3

declare void @_Z20setMeshColorByNormalPN5scene5IMeshEN4core8vector3dIfEEN5video6SColorE(ptr noundef, <2 x float>, float, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147483647, -2147483648) i32 @_ZN3Hud17toggleBlockBoundsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(572) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !367    ; 2 uses
  %i.b = add nsw i32 %i.a, 1
  %i.c = icmp sgt i32 %i.a, 1
  %spec.select = select i1 %i.c, i32 0, i32 %i.b  ; 2 uses
  store i32 %spec.select, ptr %0, align 8, !tbaa !367
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN3Hud18disableBlockBoundsEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(572) initializes((0, 4)) %0) local_unnamed_addr #16 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !367
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Hud15drawBlockBoundsEv(ptr noundef nonnull align 8 dereferenceable(572) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.core::vector3d.4", align 8  ; 5 uses
  %4 = alloca %"class.core::vector3d.4", align 8  ; 5 uses
  %5 = alloca %"class.core::vector3d.4", align 8  ; 5 uses
  %6 = alloca %"class.core::vector3d.4", align 8  ; 5 uses
  %7 = alloca %"class.core::vector3d.4", align 8  ; 5 uses
  %8 = alloca %"class.core::vector3d.4", align 8  ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !367
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(127) %i.g)
  %i.k = load ptr, ptr @g_settings, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 17, ptr %i.b, align 8, !tbaa !76
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.m, ptr %1, align 8, !tbaa !77
  %i.n = load i64, ptr %i.b, align 8, !tbaa !76   ; 3 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.m, ptr noundef nonnull align 1 dereferenceable(17) @.str.20, i64 17, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !22
  %i.p = load ptr, ptr %1, align 8, !tbaa !77
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.r = invoke noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  %.sroa.speculated = call i16 @llvm.umax.i16(i16 %i.r, i16 1)
  %i.s = load ptr, ptr %1, align 8, !tbaa !77     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.l
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.u = load i64, ptr %i.l, align 8, !tbaa !23
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.y = call i48 @_ZN11LocalPlayer18getStandingNodePosEv(ptr noundef nonnull align 8 dereferenceable(864) %i.x) ; 4 uses
  %.sroa.0.0.extract.trunc.i = trunc i48 %i.y to i16 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i48 %i.y, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16 ; 2 uses
  %i.z = sext i16 %.sroa.0.0.extract.trunc.i to i32 ; 2 uses
  %i.aa = add nsw i32 %i.z, -15
  %i.ab = icmp slt i16 %.sroa.0.0.extract.trunc.i, 0
  %i.ac = select i1 %i.ab, i32 %i.aa, i32 %i.z
  %i.ad = sdiv i32 %i.ac, 16                      ; 2 uses
  %i.ae = sext i16 %.sroa.2.0.extract.trunc.i to i32 ; 2 uses
  %i.af = icmp slt i16 %.sroa.2.0.extract.trunc.i, 0
  %i.ag = ashr i48 %i.y, 32
  %i.ah = trunc nsw i48 %i.ag to i32              ; 2 uses
  %i.ai = icmp slt i48 %i.y, 0
  %.sroa.0268.0.extract.trunc = trunc nsw i32 %i.ad to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 624
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !546
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 84
  %.sroa.0.0.copyload.i = load i48, ptr %i.an, align 4 ; 3 uses
  %.sroa.013.0.extract.trunc.i = trunc i48 %.sroa.0.0.copyload.i to i16
  %i.ao = sitofp nsz i16 %.sroa.013.0.extract.trunc.i to float
  %i.ap = fmul nnan nsz float %i.ao, 1.000000e+01
  %i.aq = shl nsw i16 %.sroa.0268.0.extract.trunc, 4
  %i.ar = sitofp nsz i16 %i.aq to float
  %i.as = fmul nnan nsz float %i.ar, 1.000000e+01
  %i.at = fsub nsz float %i.as, %i.ap
  %i.au = add nsw i32 %i.ae, -15
  %i.av = add nsw i32 %i.ah, -15
  %i.aw = select i1 %i.af, i32 %i.au, i32 %i.ae
  %i.ax = select i1 %i.ai, i32 %i.av, i32 %i.ah
  %i.ay = sdiv i32 %i.aw, 16                      ; 3 uses
  %i.az = sdiv i32 %i.ax, 16                      ; 3 uses
  %.sroa.7.0.extract.trunc = trunc nsw i32 %i.ay to i16
  %.sroa.10273.0.extract.trunc = trunc nsw i32 %i.az to i16
  %.sroa.2.0.extract.shift.i97 = lshr i48 %.sroa.0.0.copyload.i, 16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i, 32
  %.sroa.2.0.extract.trunc.i98 = trunc i48 %.sroa.2.0.extract.shift.i97 to i16
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.ba = insertelement <2 x i16> poison, i16 %.sroa.3.0.extract.trunc.i, i64 0
  %i.bb = insertelement <2 x i16> %i.ba, i16 %.sroa.2.0.extract.trunc.i98, i64 1
  %i.bc = sitofp <2 x i16> %i.bb to <2 x float>
  %i.bd = fmul nnan nsz <2 x float> %i.bc, splat (float 1.000000e+01)
  %i.be = insertelement <2 x i16> poison, i16 %.sroa.10273.0.extract.trunc, i64 0
  %i.bf = insertelement <2 x i16> %i.be, i16 %.sroa.7.0.extract.trunc, i64 1
  %i.bg = shl nsw <2 x i16> %i.bf, splat (i16 4)
  %i.bh = sitofp <2 x i16> %i.bg to <2 x float>
  %i.bi = fmul nnan nsz <2 x float> %i.bh, splat (float 1.000000e+01)
  %i.bj = fsub nsz <2 x float> %i.bi, %i.bd
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bl = fadd nsz float %i.at, -5.000000e+00     ; 3 uses
  %i.bm = fadd nsz <4 x float> %i.bk, splat (float -5.000000e+00) ; 3 uses
  %i.bn = load i32, ptr %0, align 8, !tbaa !367
  %i.bo = icmp eq i32 %i.bn, 2
  br i1 %i.bo, label %.noexc.i123, label %.preheader.lr.ph

.noexc.i123:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bp = load ptr, ptr @g_settings, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.bq, ptr %2, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 29, ptr %i.a, align 8, !tbaa !76
  %i.br = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc124 unwind label %bb.e  ; 2 uses

.noexc124:                                        ; preds = %.noexc.i123
  store ptr %i.br, ptr %2, align 8, !tbaa !77
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !76  ; 3 uses
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.br, ptr noundef nonnull align 1 dereferenceable(29) @.str.21, i64 29, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !22
  %i.bu = load ptr, ptr %2, align 8, !tbaa !77
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bs
  store i8 0, ptr %i.bv, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.bw = invoke noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.critedge unwind label %bb.f

.critedge:                                        ; preds = %.noexc124
  %spec.select.i = call i16 @llvm.umin.i16(i16 %i.bw, i16 1000)
  %i.bx = zext nneg i16 %spec.select.i to i32
  %i.by = load ptr, ptr %2, align 8, !tbaa !77    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bq
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %.critedge
  %i.ca = load i64, ptr %i.bq, align 8, !tbaa !23
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cc = phi i32 [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.cd = add nuw nsw i32 %i.cc, 1                ; 3 uses
  %i.ce = mul nuw nsw i32 %i.cd, 160
  %i.cf = sub nsw i32 0, %i.cc                    ; 4 uses
  %i.cg = trunc nsw i32 %i.cf to i16              ; 2 uses
  %i.ch = uitofp nneg i32 %i.ce to float          ; 2 uses
  %i.ci = sitofp nsz i32 %i.cf to float
  %i.cj = fmul nnan nsz float %i.ci, 1.600000e+01
  %i.ck = fmul nnan nsz float %i.cj, 1.000000e+01 ; 2 uses
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cl = zext i16 %.sroa.speculated to i32       ; 5 uses
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cm = insertelement <4 x float> poison, float %i.ck, i64 0
  %i.cn = insertelement <4 x float> %i.cm, float %i.ch, i64 1
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cp = fadd nsz <4 x float> %i.bm, %i.co       ; 4 uses
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cq = fadd nsz float %i.bl, %i.ck
  %.sroa.0.0.vec.insert.i169 = insertelement <2 x float> poison, float %i.cq, i64 0
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cr = fadd nsz float %i.bl, %i.ch
  %.sroa.0.0.vec.insert.i173 = insertelement <2 x float> poison, float %i.cr, i64 0
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cs = extractelement <4 x float> %i.bm, i64 1 ; 2 uses
  %i.ct = shufflevector <4 x float> %i.cp, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.cu = extractelement <4 x float> %i.cp, i64 0
  %i.cv = extractelement <4 x float> %i.cp, i64 2
  %i.cw = extractelement <4 x float> %i.bm, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.cx = phi i32 [ %i.cf, %.preheader.lr.ph ], [ %10, %._crit_edge ] ; 2 uses
  %storemerge298 = phi i16 [ %i.cg, %.preheader.lr.ph ], [ %9, %._crit_edge ] ; 2 uses
  %i.cy = sitofp nsz i16 %storemerge298 to float
  %i.cz = fmul nnan nsz float %i.cy, 1.600000e+01
  %i.da = fmul nnan nsz float %i.cz, 1.000000e+01 ; 2 uses
  %i.db = fadd nsz float %i.bl, %i.da             ; 2 uses
  %.sroa.0.0.vec.insert.i151 = insertelement <2 x float> poison, float %i.db, i64 0 ; 2 uses
  %i.dc = add nsw i32 %i.cx, %i.ad
  %i.dd = srem i32 %i.dc, %i.cl
  %i.de = icmp eq i32 %i.dd, 0                    ; 2 uses
  %i.df = shufflevector <2 x float> %.sroa.0.0.vec.insert.i151, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> %i.cp, <2 x i32> <i32 0, i32 5>
  %i.dh = insertelement <2 x float> %i.ct, float %i.db, i64 0
  %i.di = fadd nsz float %i.cs, %i.da             ; 2 uses
  %.sroa.0.4.vec.insert.i170 = insertelement <2 x float> %.sroa.0.0.vec.insert.i169, float %i.di, i64 1
  %.sroa.0.4.vec.insert.i174 = insertelement <2 x float> %.sroa.0.0.vec.insert.i173, float %i.di, i64 1
  %i.dj = add nsw i32 %i.cx, %i.ay
  br label %bb.g

bb.c:                                             ; preds = %.noexc.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.d:                                             ; preds = %.noexc
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = load ptr, ptr %1, align 8, !tbaa !77    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.l
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.d
  %i.do = load i64, ptr %i.l, align 8, !tbaa !23
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.c
  %.pn = phi { ptr, i32 } [ %i.dk, %bb.c ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %i.dl, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.n

bb.e:                                             ; preds = %.noexc.i123
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.f:                                             ; preds = %.noexc124
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %2, align 8, !tbaa !77    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.bq
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.f
  %i.du = load i64, ptr %i.bq, align 8, !tbaa !23
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.e
  %.pn90 = phi { ptr, i32 } [ %i.dq, %bb.e ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %i.dr, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.n

._crit_edge:                                      ; preds = %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit178"
  %9 = add i16 %storemerge298, 1                  ; 2 uses
  %10 = sext i16 %9 to i32                        ; 2 uses
  %.not = icmp slt i32 %i.cd, %10
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !544

bb.g:                                             ; preds = %.preheader, %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit178"
  %i.dw = phi i32 [ %i.cf, %.preheader ], [ %i.fa, %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit178" ] ; 3 uses
  %storemerge93296 = phi i16 [ %i.cg, %.preheader ], [ %i.ez, %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit178" ] ; 2 uses
  %i.dx = sitofp nsz i16 %storemerge93296 to float
  %i.dy = fmul nnan nsz float %i.dx, 1.600000e+01
  %i.dz = fmul nnan nsz float %i.dy, 1.000000e+01 ; 2 uses
  %i.ea = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.eb = fadd nsz float %i.cs, %i.dz
  %.sroa.0.4.vec.insert.i152 = insertelement <2 x float> %.sroa.0.0.vec.insert.i151, float %i.eb, i64 1 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i152, ptr %3, align 8
  store float %i.cu, ptr %.sroa.223.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store <2 x float> %.sroa.0.4.vec.insert.i152, ptr %4, align 8
  store float %i.cv, ptr %.sroa.219.0..sroa_idx, align 8
  br i1 %i.de, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ec = add nsw i32 %i.dw, %i.ay
  %i.ed = srem i32 %i.ec, %i.cl
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit", label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit"

"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit":   ; preds = %bb.h, %bb.i
  %.sroa.0.0.i = phi i32 [ -256, %bb.i ], [ -65536, %bb.h ]
  %i.ef = load ptr, ptr %i.ea, align 8, !tbaa !69
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 376
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, i32 %.sroa.0.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.ei = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.ej = fadd nsz float %i.cw, %i.dz             ; 4 uses
  store <2 x float> %i.dg, ptr %5, align 8
  store float %i.ej, ptr %.sroa.214.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  store <2 x float> %i.dh, ptr %6, align 8
  store float %i.ej, ptr %.sroa.210.0..sroa_idx, align 8
  br i1 %i.de, label %bb.j, label %bb.k

bb.j:                                             ; preds = %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit"
  %i.ek = add nsw i32 %i.dw, %i.az
  %i.el = srem i32 %i.ek, %i.cl
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit168", label %bb.k

bb.k:                                             ; preds = %bb.j, %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit"
  br label %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit168"

"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit168": ; preds = %bb.j, %bb.k
  %.sroa.0.0.i167 = phi i32 [ -256, %bb.k ], [ -65536, %bb.j ]
  %i.en = load ptr, ptr %i.ei, align 8, !tbaa !69
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 376
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %6, i32 %.sroa.0.0.i167)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.eq = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  store <2 x float> %.sroa.0.4.vec.insert.i170, ptr %7, align 8
  store float %i.ej, ptr %.sroa.25.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  store <2 x float> %.sroa.0.4.vec.insert.i174, ptr %8, align 8
  store float %i.ej, ptr %.sroa.2.0..sroa_idx, align 8
  %i.er = srem i32 %i.dj, %i.cl
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.l, label %bb.m

bb.l:                                             ; preds = %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit168"
  %i.et = add nsw i32 %i.dw, %i.az
  %i.eu = srem i32 %i.et, %i.cl
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit178", label %bb.m

bb.m:                                             ; preds = %bb.l, %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit168"
  br label %"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit178"

"_ZZN3Hud15drawBlockBoundsEvENK3$_0clEss.exit178": ; preds = %bb.l, %bb.m
  %.sroa.0.0.i177 = phi i32 [ -256, %bb.m ], [ -65536, %bb.l ]
  %i.ew = load ptr, ptr %i.eq, align 8, !tbaa !69
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 376
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %8, i32 %.sroa.0.0.i177)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.ez = add i16 %storemerge93296, 1             ; 2 uses
  %i.fa = sext i16 %i.ez to i32                   ; 2 uses
  %.not94 = icmp slt i32 %i.cd, %i.fa
  br i1 %.not94, label %._crit_edge, label %bb.g, !llvm.loop !545

.loopexit:                                        ; preds = %._crit_edge, %bb.a
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %.pn90.pn = phi { ptr, i32 } [ %.pn90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ]
  resume { ptr, i32 } %.pn90.pn
}

declare noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare i48 @_ZN11LocalPlayer18getStandingNodePosEv(ptr noundef nonnull align 8 dereferenceable(864)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Hud19updateSelectionMeshERKN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(572) initializes((144, 150)) %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 2 dereferenceable(6) %1, i64 6, i1 false), !tbaa.struct !364
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.c = load i32, ptr %i.b, align 8, !tbaa !84
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 3 uses
  %.not5 = icmp eq ptr %i.e, null
  br i1 %.not5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !93
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !93
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.d, label %_ZNK17IReferenceCounted4dropEv.exit

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(12) %i.i) #34, !inline_history !1
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.c, %bb.d
  store ptr null, ptr %i.d, align 8, !tbaa !121
  br label %bb.e

bb.e:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !366  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !366  ; 2 uses
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !82   ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !83   ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not.i.i, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i.preheader, label %_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.f
  store ptr %i.v, ptr %i.w, align 8, !tbaa !83
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i.preheader

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i.preheader: ; preds = %_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.f
  %i.y = phi ptr [ %i.x, %bb.f ], [ %i.v, %_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 8 uses
  br label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i

._crit_edge:                                      ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !114
  %.not.i6 = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  store <4 x float> %i.bu, ptr %i.y, align 4, !tbaa !58
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = extractelement <2 x float> %i.bt, i64 0
  store float %i.ab, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !58
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ac = extractelement <2 x float> %i.bt, i64 1
  store float %i.ac, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !58
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !83
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE9push_backERKS2_.exit

bb.h:                                             ; preds = %._crit_edge
  %i.ae = ptrtoint ptr %i.y to i64
  %i.af = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.i, label %_ZNKSt6vectorIN4core8aabbox3dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #33
  unreachable

end_hunk_0
