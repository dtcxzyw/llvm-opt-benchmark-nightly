Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/EnvmapImage?download=true
inline.NumInlined: 109
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK11EnvmapImage14filteredLookupEN9Imath_3_24Vec3IfEEfi:bb.a

bb.al:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit71
  %i.jk = icmp samesign ugt i32 %i.jf, 2139095039
  br i1 %i.jk, label %bb.am, label %bb.ao, !prof !36

bb.am:                                            ; preds = %bb.al
  %i.jl = or disjoint i16 %i.ji, 31744            ; 2 uses
  %i.jm = icmp eq i32 %i.jf, 2139095040
  br i1 %i.jm, label %_ZN9Imath_3_24halfaSEf.exit75, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jn = lshr i32 %i.jf, 13
  %i.jo = and i32 %i.jn, 1023                     ; 2 uses
  %i.jp = icmp eq i32 %i.jo, 0
  %i.jq = zext i1 %i.jp to i16
  %i.jr = trunc nuw nsw i32 %i.jo to i16
  %i.js = or i16 %i.jr, %i.jq
  %i.jt = or disjoint i16 %i.js, %i.jl
  br label %_ZN9Imath_3_24halfaSEf.exit75

bb.ao:                                            ; preds = %bb.al
  %i.ju = icmp samesign ugt i32 %i.jf, 1199566847
  br i1 %i.ju, label %bb.ap, label %bb.aq, !prof !36

bb.ap:                                            ; preds = %bb.ao
  %i.jv = or disjoint i16 %i.ji, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit75

bb.aq:                                            ; preds = %bb.ao
  %i.jw = add nuw nsw i32 %i.jf, 134221823
  %i.jx = lshr i32 %i.jf, 13
  %i.jy = and i32 %i.jx, 1
  %i.jz = add nuw nsw i32 %i.jw, %i.jy
  %i.ka = lshr i32 %i.jz, 13
  %i.kb = and i32 %i.jg, 32768
  %i.kc = or i32 %i.ka, %i.kb
  %i.kd = trunc i32 %i.kc to i16
  br label %_ZN9Imath_3_24halfaSEf.exit75

bb.ar:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit71
  %i.ke = icmp samesign ult i32 %i.jf, 855638017
  br i1 %i.ke, label %_ZN9Imath_3_24halfaSEf.exit75, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kf = lshr i32 %i.jf, 23                      ; 2 uses
  %i.kg = sub nuw nsw i32 126, %i.kf
  %i.kh = and i32 %i.jf, 8388607
  %i.ki = or disjoint i32 %i.kh, 8388608          ; 2 uses
  %i.kj = add nsw i32 %i.kf, -94
  %i.kk = shl i32 %i.ki, %i.kj                    ; 2 uses
  %i.kl = lshr i32 %i.ki, %i.kg                   ; 2 uses
  %i.km = and i32 %i.jg, 32768
  %i.kn = or i32 %i.kl, %i.km
  %i.ko = trunc nuw i32 %i.kn to i16              ; 2 uses
  %i.kp = icmp ugt i32 %i.kk, -2147483648
  br i1 %i.kp, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kq = icmp ne i32 %i.kk, -2147483648
  %i.kr = and i32 %i.kl, 1
  %.not.i.i.i72 = icmp eq i32 %i.kr, 0
  %or.cond.i.i.i73 = select i1 %i.kq, i1 true, i1 %.not.i.i.i72
  br i1 %or.cond.i.i.i73, label %_ZN9Imath_3_24halfaSEf.exit75, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ks = add nuw i16 %i.ko, 1
  br label %_ZN9Imath_3_24halfaSEf.exit75

_ZN9Imath_3_24halfaSEf.exit75:                    ; preds = %bb.am, %bb.an, %bb.ap, %bb.aq, %bb.ar, %bb.at, %bb.au
  %.033.i.i.i74 = phi i16 [ %i.ji, %bb.ar ], [ %i.jt, %bb.an ], [ %i.jv, %bb.ap ], [ %i.kd, %bb.aq ], [ %i.jl, %bb.am ], [ %i.ks, %bb.au ], [ %i.ko, %bb.at ]
  %i.kt = extractelement <4 x float> %i.fp, i64 3
  %i.ku = fmul float %i.kt, %i.fq                 ; 2 uses
  %i.kv = bitcast float %i.ku to i32
  %i.kw = call float @llvm.fabs.f32(float %i.ku)
  %i.kx = bitcast float %i.kw to i32              ; 10 uses
  %i.ky = lshr i32 %i.kv, 16                      ; 3 uses
  %i.kz = trunc nuw i32 %i.ky to i16
  %i.la = and i16 %i.kz, -32768                   ; 3 uses
  %i.lb = icmp samesign ugt i32 %i.kx, 947912703
  br i1 %i.lb, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit75
  %i.lc = icmp samesign ugt i32 %i.kx, 2139095039
  br i1 %i.lc, label %bb.aw, label %bb.ay, !prof !36

bb.aw:                                            ; preds = %bb.av
  %i.ld = or disjoint i16 %i.la, 31744            ; 2 uses
  %i.le = icmp eq i32 %i.kx, 2139095040
  br i1 %i.le, label %_ZN9Imath_3_24halfaSEf.exit79, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lf = lshr i32 %i.kx, 13
  %i.lg = and i32 %i.lf, 1023                     ; 2 uses
  %i.lh = icmp eq i32 %i.lg, 0
  %i.li = zext i1 %i.lh to i16
  %i.lj = trunc nuw nsw i32 %i.lg to i16
  %i.lk = or i16 %i.lj, %i.li
  %i.ll = or disjoint i16 %i.lk, %i.ld
  br label %_ZN9Imath_3_24halfaSEf.exit79

bb.ay:                                            ; preds = %bb.av
  %i.lm = icmp samesign ugt i32 %i.kx, 1199566847
  br i1 %i.lm, label %bb.az, label %bb.ba, !prof !36

bb.az:                                            ; preds = %bb.ay
  %i.ln = or disjoint i16 %i.la, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit79

bb.ba:                                            ; preds = %bb.ay
  %i.lo = add nuw nsw i32 %i.kx, 134221823
  %i.lp = lshr i32 %i.kx, 13
  %i.lq = and i32 %i.lp, 1
  %i.lr = add nuw nsw i32 %i.lo, %i.lq
  %i.ls = lshr i32 %i.lr, 13
  %i.lt = and i32 %i.ky, 32768
  %i.lu = or i32 %i.ls, %i.lt
  %i.lv = trunc i32 %i.lu to i16
  br label %_ZN9Imath_3_24halfaSEf.exit79

bb.bb:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit75
  %i.lw = icmp samesign ult i32 %i.kx, 855638017
  br i1 %i.lw, label %_ZN9Imath_3_24halfaSEf.exit79, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lx = lshr i32 %i.kx, 23                      ; 2 uses
  %i.ly = sub nuw nsw i32 126, %i.lx
  %i.lz = and i32 %i.kx, 8388607
  %i.ma = or disjoint i32 %i.lz, 8388608          ; 2 uses
  %i.mb = add nsw i32 %i.lx, -94
  %i.mc = shl i32 %i.ma, %i.mb                    ; 2 uses
  %i.md = lshr i32 %i.ma, %i.ly                   ; 2 uses
  %i.me = and i32 %i.ky, 32768
  %i.mf = or i32 %i.md, %i.me
  %i.mg = trunc nuw i32 %i.mf to i16              ; 2 uses
  %i.mh = icmp ugt i32 %i.mc, -2147483648
  br i1 %i.mh, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mi = icmp ne i32 %i.mc, -2147483648
  %i.mj = and i32 %i.md, 1
  %.not.i.i.i76 = icmp eq i32 %i.mj, 0
  %or.cond.i.i.i77 = select i1 %i.mi, i1 true, i1 %.not.i.i.i76
  br i1 %or.cond.i.i.i77, label %_ZN9Imath_3_24halfaSEf.exit79, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.mk = add nuw i16 %i.mg, 1
  br label %_ZN9Imath_3_24halfaSEf.exit79

_ZN9Imath_3_24halfaSEf.exit79:                    ; preds = %bb.aw, %bb.ax, %bb.az, %bb.ba, %bb.bb, %bb.bd, %bb.be
  %.033.i.i.i78 = phi i16 [ %i.la, %bb.bb ], [ %i.ll, %bb.ax ], [ %i.ln, %bb.az ], [ %i.lv, %bb.ba ], [ %i.ld, %bb.aw ], [ %i.mk, %bb.be ], [ %i.mg, %bb.bd ]
  %i.ml = insertelement <4 x i16> poison, i16 %.033.i.i.i, i64 0
  %i.mm = insertelement <4 x i16> %i.ml, i16 %.033.i.i.i70, i64 1
  %i.mn = insertelement <4 x i16> %i.mm, i16 %.033.i.i.i74, i64 2
  %i.mo = insertelement <4 x i16> %i.mn, i16 %.033.i.i.i78, i64 3
  %i.mp = bitcast <4 x i16> %i.mo to i64
  ret i64 %i.mp
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_115dirToPosLatLongERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_2::Vec2.0") align 4 %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) unnamed_addr #0 {
bb.a:
  tail call void @_ZN7Imf_3_410LatLongMap13pixelPositionERKN9Imath_3_23BoxINS1_4Vec2IiEEEERKNS1_4Vec3IfEE(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Vec2.0") align 4 %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(12) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_112dirToPosCubeERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE(ptr dead_on_unwind noalias writable sret(%"class.Imath_3_2::Vec2.0") align 4 %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 4 uses
  %4 = alloca %"class.Imath_3_2::Vec2.0", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN7Imf_3_47CubeMap20faceAndPixelPositionERKN9Imath_3_24Vec3IfEERKNS1_3BoxINS1_4Vec2IiEEEERNS_11CubeMapFaceERNS7_IfEE(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  %i.c = load <2 x float>, ptr %3, align 8, !tbaa !37
  store <2 x float> %i.c, ptr %4, align 8, !tbaa !37
  call void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Vec2.0") align 4 %0, i32 noundef %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dead_on_return %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZNK11EnvmapImage6sampleERKN9Imath_3_24Vec2IfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !81   ; 4 uses
  %i.b = fcmp ult float %i.a, 0.000000e+00
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fptosi float %i.a to i32
  br label %_ZN9Imath_3_25floorIfEEiT_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = fneg float %i.a                          ; 2 uses
  %i.e = fptosi float %i.d to i32                 ; 2 uses
  %i.f = sitofp i32 %i.e to float
  %i.g = fcmp ogt float %i.d, %i.f
  %.neg.i = sext i1 %i.g to i32
  %.neg5.i = sub i32 %.neg.i, %i.e
  br label %_ZN9Imath_3_25floorIfEEiT_.exit

_ZN9Imath_3_25floorIfEEiT_.exit:                  ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %i.c, %bb.b ], [ %.neg5.i, %bb.c ] ; 3 uses
  %i.i = add nsw i32 %i.h, 1                      ; 3 uses
  %i.j = sitofp i32 %i.i to float
  %i.k = fsub float %i.j, %i.a                    ; 9 uses
  %i.l = fsub float 1.000000e+00, %i.k            ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !22   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21   ; 2 uses
  %i.q = icmp slt i32 %i.h, %i.n
  %i.r = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.p)
  %i.s = sub i32 %i.r, %i.n
  %i.t = select i1 %i.q, i32 0, i32 %i.s
  %i.u = icmp slt i32 %i.i, %i.n
  %i.v = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.p)
  %i.w = sub i32 %i.v, %i.n
  %i.x = select i1 %i.u, i32 0, i32 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !82 ; 4 uses
  %i.aa = fcmp ult float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN9Imath_3_25floorIfEEiT_.exit
  %i.ab = fptosi float %i.z to i32
  br label %_ZN9Imath_3_25floorIfEEiT_.exit48

bb.e:                                             ; preds = %_ZN9Imath_3_25floorIfEEiT_.exit
  %i.ac = fneg float %i.z                         ; 2 uses
  %i.ad = fptosi float %i.ac to i32               ; 2 uses
  %i.ae = sitofp i32 %i.ad to float
  %i.af = fcmp ogt float %i.ac, %i.ae
  %.neg.i46 = sext i1 %i.af to i32
  %.neg5.i47 = sub i32 %.neg.i46, %i.ad
  br label %_ZN9Imath_3_25floorIfEEiT_.exit48

_ZN9Imath_3_25floorIfEEiT_.exit48:                ; preds = %bb.d, %bb.e
  %i.ag = phi i32 [ %i.ab, %bb.d ], [ %.neg5.i47, %bb.e ] ; 3 uses
  %i.ah = add nsw i32 %i.ag, 1                    ; 3 uses
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fsub float %i.ai, %i.z                  ; 5 uses
  %i.ak = fsub float 1.000000e+00, %i.aj          ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !24 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %i.ap = icmp slt i32 %i.ag, %i.am
  %i.aq = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.ao)
  %i.ar = sub i32 %i.aq, %i.am
  %i.as = select i1 %i.ap, i32 0, i32 %i.ar
  %i.at = icmp slt i32 %i.ah, %i.am
  %i.au = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.ao)
  %i.av = sub i32 %i.au, %i.am
  %i.aw = select i1 %i.at, i32 0, i32 %i.av
  %i.ax = sext i32 %i.as to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !15 ; 2 uses
  %i.bc = mul nsw i64 %i.bb, %i.ax
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bc ; 2 uses
  %i.be = sext i32 %i.t to i64                    ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 2, !tbaa !26 ; 4 uses
  %.sroa.470.0.extract.shift = lshr i64 %i.bg, 16
  %.sroa.571.0.extract.shift = lshr i64 %i.bg, 32
  %.sroa.672.0.extract.shift = lshr i64 %i.bg, 48
  %i.bh = sext i32 %i.x to i64                    ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 2, !tbaa !26 ; 4 uses
  %.sroa.466.0.extract.shift = lshr i64 %i.bj, 16
  %.sroa.567.0.extract.shift = lshr i64 %i.bj, 32
  %.sroa.668.0.extract.shift = lshr i64 %i.bj, 48
  %i.bk = sext i32 %i.aw to i64
  %i.bl = mul nsw i64 %i.bb, %i.bk
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.be
  %i.bo = load i64, ptr %i.bn, align 2, !tbaa !26 ; 4 uses
  %.sroa.462.0.extract.shift = lshr i64 %i.bo, 16
  %.sroa.563.0.extract.shift = lshr i64 %i.bo, 32
  %.sroa.664.0.extract.shift = lshr i64 %i.bo, 48
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bh
  %i.bq = load i64, ptr %i.bp, align 2, !tbaa !26 ; 4 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.bq, 16
  %.sroa.5.0.extract.shift = lshr i64 %i.bq, 32
  %.sroa.6.0.extract.shift = lshr i64 %i.bq, 48
  %i.br = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !39 ; 16 uses
  %i.bs = and i64 %i.bg, 65535
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !40
  %i.bv = and i64 %i.bj, 65535
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !40
  %i.by = fmul float %i.l, %i.bx
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.k, float %i.by)
  %i.ca = and i64 %i.bo, 65535
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !40
  %i.cd = and i64 %i.bq, 65535
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !40
  %i.cg = fmul float %i.l, %i.cf
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.k, float %i.cg)
  %i.ci = fmul float %i.ak, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.aj, float %i.ci) ; 2 uses
  %i.ck = bitcast float %i.cj to i32
  %i.cl = tail call float @llvm.fabs.f32(float %i.cj)
  %i.cm = bitcast float %i.cl to i32              ; 10 uses
  %i.cn = lshr i32 %i.ck, 16                      ; 3 uses
  %i.co = trunc nuw i32 %i.cn to i16
  %i.cp = and i16 %i.co, -32768                   ; 3 uses
  %i.cq = icmp samesign ugt i32 %i.cm, 947912703
  br i1 %i.cq, label %bb.f, label %bb.l

bb.f:                                             ; preds = %_ZN9Imath_3_25floorIfEEiT_.exit48
  %i.cr = icmp samesign ugt i32 %i.cm, 2139095039
  br i1 %i.cr, label %bb.g, label %bb.i, !prof !36

bb.g:                                             ; preds = %bb.f
  %i.cs = or disjoint i16 %i.cp, 31744            ; 2 uses
  %i.ct = icmp eq i32 %i.cm, 2139095040
  br i1 %i.ct, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cu = lshr i32 %i.cm, 13
  %i.cv = and i32 %i.cu, 1023                     ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  %i.cx = zext i1 %i.cw to i16
  %i.cy = trunc nuw nsw i32 %i.cv to i16
  %i.cz = or i16 %i.cy, %i.cx
  %i.da = or disjoint i16 %i.cz, %i.cs
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.i:                                             ; preds = %bb.f
  %i.db = icmp samesign ugt i32 %i.cm, 1199566847
  br i1 %i.db, label %bb.j, label %bb.k, !prof !36

bb.j:                                             ; preds = %bb.i
  %i.dc = or disjoint i16 %i.cp, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.k:                                             ; preds = %bb.i
  %i.dd = add nuw nsw i32 %i.cm, 134221823
  %i.de = lshr i32 %i.cm, 13
  %i.df = and i32 %i.de, 1
  %i.dg = add nuw nsw i32 %i.dd, %i.df
  %i.dh = lshr i32 %i.dg, 13
  %i.di = and i32 %i.cn, 32768
  %i.dj = or i32 %i.dh, %i.di
  %i.dk = trunc i32 %i.dj to i16
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.l:                                             ; preds = %_ZN9Imath_3_25floorIfEEiT_.exit48
  %i.dl = icmp samesign ult i32 %i.cm, 855638017
  br i1 %i.dl, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = lshr i32 %i.cm, 23                      ; 2 uses
  %i.dn = sub nuw nsw i32 126, %i.dm
  %i.do = and i32 %i.cm, 8388607
  %i.dp = or disjoint i32 %i.do, 8388608          ; 2 uses
  %i.dq = add nsw i32 %i.dm, -94
  %i.dr = shl i32 %i.dp, %i.dq                    ; 2 uses
  %i.ds = lshr i32 %i.dp, %i.dn                   ; 2 uses
  %i.dt = and i32 %i.cn, 32768
  %i.du = or i32 %i.ds, %i.dt
  %i.dv = trunc nuw i32 %i.du to i16              ; 2 uses
  %i.dw = icmp ugt i32 %i.dr, -2147483648
  br i1 %i.dw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dx = icmp ne i32 %i.dr, -2147483648
  %i.dy = and i32 %i.ds, 1
  %.not.i.i.i = icmp eq i32 %i.dy, 0
  %or.cond.i.i.i = select i1 %i.dx, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dz = add nuw i16 %i.dv, 1
  br label %_ZN9Imath_3_24halfaSEf.exit

_ZN9Imath_3_24halfaSEf.exit:                      ; preds = %bb.g, %bb.h, %bb.j, %bb.k, %bb.l, %bb.n, %bb.o
  %.033.i.i.i = phi i16 [ %i.cp, %bb.l ], [ %i.da, %bb.h ], [ %i.dc, %bb.j ], [ %i.dk, %bb.k ], [ %i.cs, %bb.g ], [ %i.dz, %bb.o ], [ %i.dv, %bb.n ]
  %i.ea = and i64 %.sroa.470.0.extract.shift, 65535
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !40
  %i.ed = and i64 %.sroa.466.0.extract.shift, 65535
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ed
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !40
  %i.eg = fmul float %i.l, %i.ef
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.k, float %i.eg)
  %i.ei = and i64 %.sroa.462.0.extract.shift, 65535
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ei
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !40
  %i.el = and i64 %.sroa.4.0.extract.shift, 65535
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.el
  %i.en = load float, ptr %i.em, align 4, !tbaa !40
  %i.eo = fmul float %i.l, %i.en
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.k, float %i.eo)
  %i.eq = fmul float %i.ak, %i.ep
  %i.er = tail call float @llvm.fmuladd.f32(float %i.eh, float %i.aj, float %i.eq) ; 2 uses
  %i.es = bitcast float %i.er to i32
  %i.et = tail call float @llvm.fabs.f32(float %i.er)
  %i.eu = bitcast float %i.et to i32              ; 10 uses
  %i.ev = lshr i32 %i.es, 16                      ; 3 uses
  %i.ew = trunc nuw i32 %i.ev to i16
  %i.ex = and i16 %i.ew, -32768                   ; 3 uses
  %i.ey = icmp samesign ugt i32 %i.eu, 947912703
  br i1 %i.ey, label %bb.p, label %bb.v

bb.p:                                             ; preds = %_ZN9Imath_3_24halfaSEf.exit
  %i.ez = icmp samesign ugt i32 %i.eu, 2139095039
  br i1 %i.ez, label %bb.q, label %bb.s, !prof !36

bb.q:                                             ; preds = %bb.p
  %i.fa = or disjoint i16 %i.ex, 31744            ; 2 uses
  %i.fb = icmp eq i32 %i.eu, 2139095040
  br i1 %i.fb, label %_ZN9Imath_3_24halfaSEf.exit52, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fc = lshr i32 %i.eu, 13
  %i.fd = and i32 %i.fc, 1023                     ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 0
  %i.ff = zext i1 %i.fe to i16
  %i.fg = trunc nuw nsw i32 %i.fd to i16
  %i.fh = or i16 %i.fg, %i.ff
  %i.fi = or disjoint i16 %i.fh, %i.fa
  br label %_ZN9Imath_3_24halfaSEf.exit52

bb.s:                                             ; preds = %bb.p
  %i.fj = icmp samesign ugt i32 %i.eu, 1199566847
  br i1 %i.fj, label %bb.t, label %bb.u, !prof !36

bb.t:                                             ; preds = %bb.s
end_hunk_0
