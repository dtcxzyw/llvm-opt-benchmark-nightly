Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/binary_annotator?download=true
inline.NumInlined: 3604
inline.NumDeleted: 1082
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN11flatbuffers15BinaryAnnotator10BuildTableEmNS_17BinarySectionTypeEPKN10reflection6ObjectE:bb.a
  %i.td = getelementptr inbounds nuw i8, ptr %50, i64 152
  %i.te = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.tf = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.tg = getelementptr inbounds nuw i8, ptr %50, i64 32
  %i.th = getelementptr inbounds nuw i8, ptr %51, i64 80
  %i.ti = getelementptr inbounds nuw i8, ptr %51, i64 96 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %51, i64 48
  %i.tk = getelementptr inbounds nuw i8, ptr %51, i64 64 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.tm = getelementptr inbounds nuw i8, ptr %51, i64 24 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.mt, i64 24 ; 3 uses
  %i.to = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 4 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 4 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %61, i64 24
  %i.tt = getelementptr inbounds nuw i8, ptr %61, i64 48 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %61, i64 64 ; 4 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %61, i64 40 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %61, i64 56
  %i.tx = getelementptr inbounds nuw i8, ptr %61, i64 80
  %i.ty = getelementptr inbounds nuw i8, ptr %61, i64 88 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %61, i64 104 ; 4 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %61, i64 96
  %i.ub = getelementptr inbounds nuw i8, ptr %61, i64 120 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %61, i64 136 ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %61, i64 128
  %i.ue = getelementptr inbounds nuw i8, ptr %61, i64 152
  %i.uf = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.ug = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.uh = getelementptr inbounds nuw i8, ptr %61, i64 32
  %i.ui = getelementptr inbounds nuw i8, ptr %62, i64 80
  %i.uj = getelementptr inbounds nuw i8, ptr %62, i64 96 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %62, i64 48
  %i.ul = getelementptr inbounds nuw i8, ptr %62, i64 64 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.un = getelementptr inbounds nuw i8, ptr %62, i64 24 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 4 uses
  %i.up = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 3 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %63, i64 24 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %63, i64 32 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %63, i64 40 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.mt, i64 48 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %58, i64 24
  %i.uv = getelementptr inbounds nuw i8, ptr %58, i64 48 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %58, i64 64 ; 4 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %58, i64 40 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %58, i64 56
  %i.uz = getelementptr inbounds nuw i8, ptr %58, i64 80
  %i.va = getelementptr inbounds nuw i8, ptr %58, i64 88 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %58, i64 104 ; 4 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %58, i64 96
  %i.vd = getelementptr inbounds nuw i8, ptr %58, i64 120 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %58, i64 136 ; 4 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %58, i64 128
  %i.vg = getelementptr inbounds nuw i8, ptr %58, i64 152
  %i.vh = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.vi = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.vj = getelementptr inbounds nuw i8, ptr %58, i64 32
  %i.vk = getelementptr inbounds nuw i8, ptr %59, i64 80
  %i.vl = getelementptr inbounds nuw i8, ptr %59, i64 96 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %59, i64 48
  %i.vn = getelementptr inbounds nuw i8, ptr %59, i64 64 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.vp = getelementptr inbounds nuw i8, ptr %59, i64 24 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 4 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 3 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %60, i64 24 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %60, i64 32 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %60, i64 40 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %56, i64 24
  %i.vw = getelementptr inbounds nuw i8, ptr %56, i64 48 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %56, i64 64 ; 4 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %56, i64 40 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %56, i64 56
  %i.wa = getelementptr inbounds nuw i8, ptr %56, i64 80
  %i.wb = getelementptr inbounds nuw i8, ptr %56, i64 88 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %56, i64 104 ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %56, i64 96
  %i.we = getelementptr inbounds nuw i8, ptr %56, i64 120 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %56, i64 136 ; 4 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %56, i64 128
  %i.wh = getelementptr inbounds nuw i8, ptr %56, i64 152
  %i.wi = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.wj = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.wk = getelementptr inbounds nuw i8, ptr %56, i64 32
  %i.wl = getelementptr inbounds nuw i8, ptr %57, i64 80
  %i.wm = getelementptr inbounds nuw i8, ptr %57, i64 96 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %57, i64 48
  %i.wo = getelementptr inbounds nuw i8, ptr %57, i64 64 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.wq = getelementptr inbounds nuw i8, ptr %57, i64 24 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 4 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 6 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.wu = getelementptr inbounds nuw i8, ptr %46, i64 17
  %i.wv = getelementptr inbounds nuw i8, ptr %47, i64 24
  %i.ww = getelementptr inbounds nuw i8, ptr %47, i64 48 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %47, i64 64 ; 4 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %47, i64 40 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %47, i64 56
  %i.xa = getelementptr inbounds nuw i8, ptr %47, i64 80
  %i.xb = getelementptr inbounds nuw i8, ptr %47, i64 88 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %47, i64 104 ; 4 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %47, i64 96
  %i.xe = getelementptr inbounds nuw i8, ptr %47, i64 120 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %47, i64 136 ; 4 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %47, i64 128
  %i.xh = getelementptr inbounds nuw i8, ptr %47, i64 152
  %i.xi = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.xj = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.xk = getelementptr inbounds nuw i8, ptr %47, i64 32
  %i.xl = getelementptr inbounds nuw i8, ptr %48, i64 80
  %i.xm = getelementptr inbounds nuw i8, ptr %48, i64 96 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %48, i64 48
  %i.xo = getelementptr inbounds nuw i8, ptr %48, i64 64 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.xq = getelementptr inbounds nuw i8, ptr %48, i64 24 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 6 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %23, i64 64 ; 6 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %23, i64 56 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %23, i64 80 ; 4 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %23, i64 96 ; 6 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %23, i64 88 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %23, i64 112 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 8 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.yi = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.yj = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.yk = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.yl = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.ym = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.yn = getelementptr i8, ptr %i.yl, i64 -24
  %i.yo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.yp = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ys = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.yt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.yu = getelementptr i8, ptr %i.ys, i64 -24
  %i.yv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.yw = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.yx = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.yz = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.za = getelementptr inbounds nuw i8, ptr %25, i64 48 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %25, i64 64 ; 4 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %25, i64 40 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %25, i64 56
  %i.ze = getelementptr inbounds nuw i8, ptr %25, i64 80
  %i.zf = getelementptr inbounds nuw i8, ptr %25, i64 88 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %25, i64 104 ; 4 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %25, i64 96
  %i.zi = getelementptr inbounds nuw i8, ptr %25, i64 120 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %25, i64 136 ; 4 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %25, i64 128
  %i.zl = getelementptr inbounds nuw i8, ptr %25, i64 152
  %i.zm = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.zn = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.zo = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.zp = getelementptr inbounds nuw i8, ptr %26, i64 80
  %i.zq = getelementptr inbounds nuw i8, ptr %26, i64 96 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %26, i64 48
  %i.zs = getelementptr inbounds nuw i8, ptr %26, i64 64 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.zu = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.zw = getelementptr inbounds nuw i8, ptr %27, i64 48 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %27, i64 64 ; 4 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %27, i64 40 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %27, i64 56
  %i.aaa = getelementptr inbounds nuw i8, ptr %27, i64 80
  %i.aab = getelementptr inbounds nuw i8, ptr %27, i64 88 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %27, i64 104 ; 4 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %27, i64 96
  %i.aae = getelementptr inbounds nuw i8, ptr %27, i64 120 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %27, i64 136 ; 4 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %27, i64 128
  %i.aah = getelementptr inbounds nuw i8, ptr %27, i64 152
  %i.aai = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.aaj = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.aak = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.aal = getelementptr inbounds nuw i8, ptr %28, i64 80
  %i.aam = getelementptr inbounds nuw i8, ptr %28, i64 96 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %28, i64 48
  %i.aao = getelementptr inbounds nuw i8, ptr %28, i64 64 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.aaq = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  br label %bb.az

.lr.ph:                                           ; preds = %bb.an, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE9push_backERKS3_.exit
  %.sroa.01141.01701 = phi ptr [ %.sroa.01141.1, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE9push_backERKS3_.exit ], [ null, %bb.an ] ; 7 uses
  %.sroa.14.01700 = phi ptr [ %.sroa.14.1, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE9push_backERKS3_.exit ], [ null, %bb.an ] ; 7 uses
  %.sroa.21.01699 = phi ptr [ %.sroa.21.1, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE9push_backERKS3_.exit ], [ null, %bb.an ] ; 2 uses
  %.sroa.01138.01698 = phi ptr [ %i.abh, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE9push_backERKS3_.exit ], [ %i.ng, %bb.an ] ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.sroa.01138.01698, i64 40 ; 2 uses
  %.not.i430 = icmp eq ptr %.sroa.14.01700, %.sroa.21.01699
  br i1 %.not.i430, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.01700, ptr noundef nonnull align 8 dereferenceable(16) %i.aar, i64 16, i1 false), !tbaa.struct !126
  br label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE9push_backERKS3_.exit

bb.aw:                                            ; preds = %.lr.ph
  %i.aas = ptrtoint ptr %.sroa.14.01700 to i64
  %i.aat = ptrtoint ptr %.sroa.01141.01701 to i64
  %i.aau = sub i64 %i.aas, %i.aat                 ; 4 uses
  %i.aav = icmp eq i64 %i.aau, 9223372036854775792
  br i1 %i.aav, label %bb.ax, label %_ZNKSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #35
          to label %.noexc435 unwind label %.loopexit.split-lp1227.loopexit.split-lp

.noexc435:                                        ; preds = %bb.ax
  unreachable

_ZNKSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aw
  %i.aaw = ashr exact i64 %i.aau, 4               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aaw, i64 1)
  %i.aax = add nsw i64 %.sroa.speculated.i.i.i, %i.aaw ; 2 uses
  %i.aay = icmp ult i64 %i.aax, %i.aaw
  %i.aaz = call i64 @llvm.umin.i64(i64 %i.aax, i64 576460752303423487)
  %i.aba = select i1 %i.aay, i64 576460752303423487, i64 %i.aaz ; 3 uses
  %.not.i.i.i431 = icmp ne i64 %i.aba, 0
  call void @llvm.assume(i1 %.not.i.i.i431)
  %i.abb = shl nuw nsw i64 %i.aba, 4
  %i.abc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abb) #36
          to label %.noexc436 unwind label %.loopexit.split-lp1227.loopexit.split-lp ; 5 uses

.noexc436:                                        ; preds = %_ZNKSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 %i.aau
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abd, ptr noundef nonnull align 8 dereferenceable(16) %i.aar, i64 16, i1 false), !tbaa.struct !126
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.01141.01701, %.sroa.14.01700
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i432

.lr.ph.i.i.i.i.i432:                              ; preds = %.noexc436, %.lr.ph.i.i.i.i.i432
  %.012.i.i.i.i.i = phi ptr [ %i.abf, %.lr.ph.i.i.i.i.i432 ], [ %i.abc, %.noexc436 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.abe, %.lr.ph.i.i.i.i.i432 ], [ %.sroa.01141.01701, %.noexc436 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !126, !alias.scope !295
  %i.abe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i433 = icmp eq ptr %i.abe, %.sroa.14.01700
  br i1 %.not.i.i.i.i.i433, label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i432, !llvm.loop !240

_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i432, %.noexc436
  %.0.lcssa.i.i.i.i.i434 = phi ptr [ %i.abc, %.noexc436 ], [ %i.abf, %.lr.ph.i.i.i.i.i432 ]
  %.not.i23.i.i = icmp eq ptr %.sroa.01141.01701, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01141.01701, i64 noundef %i.aau) #33
  br label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ay, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.abg = getelementptr inbounds nuw [16 x i8], ptr %i.abc, i64 %i.aba
  br label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.av
  %.sroa.21.1 = phi ptr [ %i.abg, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.21.01699, %bb.av ] ; 7 uses
  %.0.lcssa.i.i.i.i.i434.pn = phi ptr [ %.0.lcssa.i.i.i.i.i434, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.14.01700, %bb.av ]
  %.sroa.01141.1 = phi ptr [ %i.abc, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.01141.01701, %bb.av ] ; 18 uses
  %.sroa.14.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i434.pn, i64 16 ; 7 uses
  %i.abh = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01138.01698) #31 ; 2 uses
  %.not = icmp eq ptr %i.abh, %i.nh
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit.split-lp1227.loopexit.split-lp:         ; preds = %_ZNKSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.ax
  %lpad.loopexit.split-lp2327 = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge1706:                                  ; preds = %bb.hy, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit.thread"
  %.pre-phi17362226 = phi i64 [ %.pre1735, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit.thread" ], [ %i.nk, %bb.hy ]
  %.sroa.21.0.lcssa21832225 = phi ptr [ %.sroa.21.0.lcssa2184, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit.thread" ], [ %.sroa.21.1, %bb.hy ] ; 3 uses
  %.sroa.01141.0.lcssa22022224 = phi ptr [ %.sroa.01141.0.lcssa2203, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit.thread" ], [ %.sroa.01141.1, %bb.hy ] ; 4 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !115 ; 2 uses
  %i.abk = getelementptr inbounds i8, ptr %i.abj, i64 -160
  %i.abl = load i64, ptr %i.abk, align 8, !tbaa !92
  %i.abm = getelementptr inbounds i8, ptr %i.abj, i64 -152
  %i.abn = load i64, ptr %i.abm, align 8, !tbaa !93
  %i.abo = add i64 %i.abn, %i.abl                 ; 2 uses
  %i.abp = add i64 %i.abo, 1                      ; 2 uses
  %i.abq = icmp ult i64 %i.abp, %spec.select
  br i1 %i.abq, label %bb.ia, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i1007

bb.az:                                            ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit", %bb.hy
  %.01691704 = phi i64 [ 0, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers15BinaryAnnotator6VTable5EntryESt6vectorIS5_SaIS5_EEEEZNS3_10BuildTableEmNS2_17BinarySectionTypeEPKN10reflection6ObjectEE3$_0EvT_SH_T0_.exit" ], [ %i.btt, %bb.hy ] ; 3 uses
  %i.abr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01141.1, i64 %.01691704 ; 2 uses
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !296 ; 30 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.abu = load i16, ptr %i.abt, align 8, !tbaa !130 ; 2 uses
  %i.abv = icmp eq i16 %i.abu, 0
  br i1 %i.abv, label %bb.hy, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.abw = zext i16 %i.abu to i64
  %i.abx = add i64 %1, %i.abw                     ; 31 uses
  %i.aby = load i64, ptr %i.an, align 8, !tbaa !71 ; 11 uses
  %i.abz = icmp ult i64 %i.abx, %i.aby
  br i1 %i.abz, label %bb.bb, label %bb.hy

bb.bb:                                            ; preds = %bb.ba
  %i.aca = icmp eq ptr %i.abs, null
  br i1 %i.aca, label %bb.bc, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i525

bb.bc:                                            ; preds = %bb.bb
  %i.acb = add nuw i64 %.01691704, 1              ; 2 uses
  %i.acc = icmp ult i64 %i.acb, %i.nm
  br i1 %i.acc, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.acd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01141.1, i64 %i.acb
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  %i.acf = load i16, ptr %i.ace, align 8, !tbaa !130
  %i.acg = zext i16 %i.acf to i64
  %i.ach = add i64 %1, %i.acg
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %i.aci = phi i64 [ %i.ach, %bb.bd ], [ %spec.select, %bb.bc ] ; 3 uses
  %i.acj = sub i64 %i.aci, %i.abx                 ; 9 uses
  %i.ack = icmp eq i64 %i.aci, %i.abx
  br i1 %i.ack, label %bb.hy, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  store ptr %i.xr, ptr %21, align 8, !tbaa !84
  store i64 0, ptr %i.xs, align 8, !tbaa !85
  store i8 0, ptr %i.xr, align 8, !tbaa !86
  %i.acl = icmp eq i64 %i.acj, 4
  br i1 %i.acl, label %bb.bg, label %.split

.split:                                           ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  store i32 0, ptr %23, align 8, !tbaa !83
  store ptr %i.xu, ptr %i.xt, align 8, !tbaa !84
  store i64 0, ptr %i.xv, align 8, !tbaa !85
  store i8 0, ptr %i.xu, align 8, !tbaa !86
  store ptr %i.xy, ptr %i.xx, align 8, !tbaa !84
  store i64 0, ptr %i.xz, align 8, !tbaa !85
  store i8 0, ptr %i.xy, align 8, !tbaa !86
  store ptr %i.yb, ptr %i.ya, align 8, !tbaa !84
  store i64 0, ptr %i.yc, align 8, !tbaa !85
  store i8 0, ptr %i.yb, align 8, !tbaa !86
  store i64 0, ptr %i.yd, align 8, !tbaa !87
  store i32 11, ptr %i.xw, align 8, !tbaa !88
  %i.acm = icmp ult i64 %i.acj, %i.aby
  %i.acn = add i64 %i.aci, -1
  %i.aco = icmp ult i64 %i.acn, %i.aby
  %i.acp = and i1 %i.acm, %i.aco
  br i1 %i.acp, label %bb.ci, label %bb.bs

bb.bg:                                            ; preds = %bb.bf
  %i.acq = icmp ugt i64 %i.aby, 4
  %i.acr = add i64 %i.abx, 3                      ; 2 uses
  %i.acs = icmp ult i64 %i.acr, %i.aby
  %i.act = and i1 %i.acq, %i.acs
  br i1 %i.act, label %_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit, label %_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit.thread

_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit: ; preds = %bb.bg
  %i.acu = load ptr, ptr %i.fs, align 8, !tbaa !89
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 %i.abx
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !63
  %i.acx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.4, i64 noundef 35)
          to label %bb.bh unwind label %.loopexit.split-lp1212.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bh:                                            ; preds = %_ZNK11flatbuffers15BinaryAnnotator10ReadScalarIjEESt8optionalIT_Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  %i.acy = zext i32 %i.acw to i64
  %i.acz = add i64 %i.abx, %i.acy
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !297
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %.noexc443 unwind label %bb.br, !noalias !297

.noexc443:                                        ; preds = %bb.bh
  %i.ada = load ptr, ptr %i.ye, align 8, !tbaa !132, !noalias !297 ; 3 uses
  %i.adb = getelementptr i8, ptr %i.ada, i64 -24  ; 3 uses
  %i.adc = load i64, ptr %i.adb, align 8, !noalias !297
  %i.add = getelementptr inbounds i8, ptr %i.ye, i64 %i.adc
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 24 ; 2 uses
  %i.adf = load i32, ptr %i.ade, align 8, !tbaa !304, !noalias !297
  %i.adg = and i32 %i.adf, -75
  %i.adh = or disjoint i32 %i.adg, 8
  store i32 %i.adh, ptr %i.ade, align 8, !tbaa !305, !noalias !297
  %i.adi = load i64, ptr %i.adb, align 8, !noalias !297
  %i.adj = getelementptr inbounds i8, ptr %i.ye, i64 %i.adi
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 24 ; 2 uses
  %i.adl = load i32, ptr %i.adk, align 8, !tbaa !304, !noalias !297
  %i.adm = or i32 %i.adl, 16384
  store i32 %i.adm, ptr %i.adk, align 8, !tbaa !305, !noalias !297
  %i.adn = load i64, ptr %i.adb, align 8, !noalias !297
  %i.ado = getelementptr inbounds i8, ptr %i.ye, i64 %i.adn ; 3 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 225 ; 2 uses
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !312, !range !66, !noalias !297, !noundef !67
  %i.adr = trunc nuw i8 %i.adq to i1
  br i1 %i.adr, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %.noexc443
  %i.ads = getelementptr inbounds nuw i8, ptr %i.ado, i64 240
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !313, !noalias !297 ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.adt, null
  br i1 %.not.i.i.i.i.i.i, label %bb.bj, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZSt16__throw_bad_castv() #35
          to label %.noexc.i442 unwind label %.loopexit.split-lp1217.loopexit.split-lp.loopexit.split-lp, !noalias !297

.noexc.i442:                                      ; preds = %bb.bj
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i: ; preds = %bb.bi
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 56
  %i.adv = load i8, ptr %i.adu, align 8, !tbaa !318, !noalias !297
  %.not.i1.i.i.i.i.i = icmp eq i8 %i.adv, 0
  br i1 %.not.i1.i.i.i.i.i, label %bb.bk, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i

bb.bk:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.adt)
          to label %.noexc5.i unwind label %.loopexit.split-lp1217.loopexit.split-lp.loopexit.split-lp, !noalias !297

.noexc5.i:                                        ; preds = %bb.bk
  %i.adw = load ptr, ptr %i.adt, align 8, !tbaa !132, !noalias !297
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 48
  %i.ady = load ptr, ptr %i.adx, align 8, !noalias !297
  %i.adz = invoke noundef signext i8 %i.ady(ptr noundef nonnull align 8 dereferenceable(570) %i.adt, i8 noundef signext 32)
          to label %.noexc5._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge.i unwind label %.loopexit.split-lp1217.loopexit.split-lp.loopexit.split-lp, !noalias !297, !inline_history !243 ; 0 uses

.noexc5._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge.i: ; preds = %.noexc5.i
  %.pre.pre.i = load ptr, ptr %i.ye, align 8, !tbaa !132, !noalias !297
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i: ; preds = %.noexc5._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge.i, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  %.pre.i = phi ptr [ %.pre.pre.i, %.noexc5._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i_crit_edge.i ], [ %i.ada, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i ]
  store i8 1, ptr %i.adp, align 1, !tbaa !312, !noalias !297
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i, %.noexc443
  %i.aea = phi ptr [ %i.ada, %.noexc443 ], [ %.pre.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i ]
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.ado, i64 224
  store i8 48, ptr %i.aeb, align 8, !tbaa !319, !noalias !297
  %i.aec = getelementptr i8, ptr %i.aea, i64 -24
  %i.aed = load i64, ptr %i.aec, align 8, !noalias !297
  %i.aee = getelementptr inbounds i8, ptr %i.ye, i64 %i.aed
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 16
  store i64 8, ptr %i.aef, align 8, !tbaa !320, !noalias !297
  %i.aeg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ye, i64 noundef %i.acz)
          to label %_ZNSolsEm.exit.i unwind label %.loopexit.split-lp1217.loopexit.split-lp.loopexit.split-lp, !noalias !297 ; 0 uses

_ZNSolsEm.exit.i:                                 ; preds = %bb.bl
end_hunk_0
begin_hunk_1_@_ZN11flatbuffers15BinaryAnnotator10BuildTableEmNS_17BinarySectionTypeEPKN10reflection6ObjectE:bb.a
  call void @_ZdlPvm(ptr noundef %i.bzt, i64 noundef %i.bzx) #33
  br label %_ZSt8_DestroyIN11flatbuffers12BinaryRegionEEvPT_.exit.i.i.i1104

_ZSt8_DestroyIN11flatbuffers12BinaryRegionEEvPT_.exit.i.i.i1104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i1102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i1103
  %i.bzy = getelementptr inbounds nuw i8, ptr %.05.i.i.i1098, i64 160 ; 2 uses
  %.not.i.i.i1105 = icmp eq ptr %i.bzy, %i.bzf
  br i1 %.not.i.i.i1105, label %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i1106, label %.lr.ph.i.i.i1097, !llvm.loop !2

_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i1106: ; preds = %_ZSt8_DestroyIN11flatbuffers12BinaryRegionEEvPT_.exit.i.i.i1104
  %.pr.i1107 = load ptr, ptr %i.byc, align 8, !tbaa !104
  br label %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exit.i1108

_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exit.i1108: ; preds = %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i1106, %bb.ij
  %i.bzz = phi ptr [ %.pr.i1107, %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i1106 ], [ %i.bze, %bb.ij ] ; 3 uses
  %.not.i.i1.i1109 = icmp eq ptr %i.bzz, null
  br i1 %.not.i.i1.i1109, label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit1113, label %bb.ik

bb.ik:                                            ; preds = %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exit.i1108
  %i.caa = load ptr, ptr %i.byg, align 8, !tbaa !106
  %i.cab = ptrtoint ptr %i.caa to i64
  %i.cac = ptrtoint ptr %i.bzz to i64
  %i.cad = sub i64 %i.cab, %i.cac
  call void @_ZdlPvm(ptr noundef nonnull %i.bzz, i64 noundef %i.cad) #33
  br label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit1113

_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit1113: ; preds = %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exit.i1108, %bb.ik
  %i.cae = load ptr, ptr %76, align 8, !tbaa !95  ; 2 uses
  %i.caf = icmp eq ptr %i.cae, %i.bxz
  br i1 %i.caf, label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1016

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1016: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit1113
  %i.cag = load i64, ptr %i.bxz, align 8, !tbaa !86
  %i.cah = add i64 %i.cag, 1
  call void @_ZdlPvm(ptr noundef %i.cae, i64 noundef %i.cah) #33
  br label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit

_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit1113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1016
  %.pre1733 = load ptr, ptr %77, align 8, !tbaa !95 ; 2 uses
  %i.cai = icmp eq ptr %.pre1733, %i.bxj
  br i1 %i.cai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1024, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1022

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1022: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit
  %i.caj = load i64, ptr %i.bxj, align 8, !tbaa !86
  %i.cak = add i64 %i.caj, 1
  call void @_ZdlPvm(ptr noundef %.pre1733, i64 noundef %i.cak) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1024

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1024: ; preds = %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1022
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #30
  %.not.i.i.i1025 = icmp eq ptr %.sroa.01141.0.lcssa22022224, null
  br i1 %.not.i.i.i1025, label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EED2Ev.exit, label %bb.il

bb.il:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1024
  %i.cal = ptrtoint ptr %.sroa.21.0.lcssa21832225 to i64
  %i.cam = sub i64 %i.cal, %.pre-phi17362226
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01141.0.lcssa22022224, i64 noundef %i.cam) #33
  br label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EED2Ev.exit

_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EED2Ev.exit: ; preds = %bb.il, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1024, %bb.ai
  %i.can = load ptr, ptr %18, align 8, !tbaa !104 ; 3 uses
  %i.cao = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cap = load ptr, ptr %i.cao, align 8, !tbaa !105 ; 2 uses
  %.not4.i.i.i1026 = icmp eq ptr %i.can, %i.cap
  br i1 %.not4.i.i.i1026, label %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exit.i1038, label %.lr.ph.i.i.i1027

.lr.ph.i.i.i1027:                                 ; preds = %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EED2Ev.exit, %_ZSt8_DestroyIN11flatbuffers12BinaryRegionEEvPT_.exit.i.i.i1034
  %.05.i.i.i1028 = phi ptr [ %i.cbi, %_ZSt8_DestroyIN11flatbuffers12BinaryRegionEEvPT_.exit.i.i.i1034 ], [ %i.can, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EED2Ev.exit ] ; 7 uses
  %i.caq = getelementptr inbounds nuw i8, ptr %.05.i.i.i1028, i64 120
  %i.car = load ptr, ptr %i.caq, align 8, !tbaa !95 ; 2 uses
  %i.cas = getelementptr inbounds nuw i8, ptr %.05.i.i.i1028, i64 136 ; 2 uses
  %i.cat = icmp eq ptr %i.car, %i.cas
  br i1 %i.cat, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1030, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1029

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1029: ; preds = %.lr.ph.i.i.i1027
  %i.cau = load i64, ptr %i.cas, align 8, !tbaa !86
  %i.cav = add i64 %i.cau, 1
  call void @_ZdlPvm(ptr noundef %i.car, i64 noundef %i.cav) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1030

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1030: ; preds = %.lr.ph.i.i.i1027, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i1029
  %i.caw = getelementptr inbounds nuw i8, ptr %.05.i.i.i1028, i64 88
  %i.cax = load ptr, ptr %i.caw, align 8, !tbaa !95 ; 2 uses
  %i.cay = getelementptr inbounds nuw i8, ptr %.05.i.i.i1028, i64 104 ; 2 uses
  %i.caz = icmp eq ptr %i.cax, %i.cay
  br i1 %i.caz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i1032, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i1031

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i1031: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1030
  %i.cba = load i64, ptr %i.cay, align 8, !tbaa !86
  %i.cbb = add i64 %i.cba, 1
  call void @_ZdlPvm(ptr noundef %i.cax, i64 noundef %i.cbb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i1032

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i1032: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i1030, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i1031
  %i.cbc = getelementptr inbounds nuw i8, ptr %.05.i.i.i1028, i64 48
  %i.cbd = load ptr, ptr %i.cbc, align 8, !tbaa !95 ; 2 uses
  %i.cbe = getelementptr inbounds nuw i8, ptr %.05.i.i.i1028, i64 64 ; 2 uses
  %i.cbf = icmp eq ptr %i.cbd, %i.cbe
  br i1 %i.cbf, label %_ZSt8_DestroyIN11flatbuffers12BinaryRegionEEvPT_.exit.i.i.i1034, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i1033

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i1033: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i1032
  %i.cbg = load i64, ptr %i.cbe, align 8, !tbaa !86
  %i.cbh = add i64 %i.cbg, 1
  call void @_ZdlPvm(ptr noundef %i.cbd, i64 noundef %i.cbh) #33
  br label %_ZSt8_DestroyIN11flatbuffers12BinaryRegionEEvPT_.exit.i.i.i1034

_ZSt8_DestroyIN11flatbuffers12BinaryRegionEEvPT_.exit.i.i.i1034: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i.i1032, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i.i.i1033
  %i.cbi = getelementptr inbounds nuw i8, ptr %.05.i.i.i1028, i64 160 ; 2 uses
  %.not.i.i.i1035 = icmp eq ptr %i.cbi, %i.cap
  br i1 %.not.i.i.i1035, label %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i1036, label %.lr.ph.i.i.i1027, !llvm.loop !2

_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i1036: ; preds = %_ZSt8_DestroyIN11flatbuffers12BinaryRegionEEvPT_.exit.i.i.i1034
  %.pr.i1037 = load ptr, ptr %18, align 8, !tbaa !104
  br label %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exit.i1038

_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exit.i1038: ; preds = %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i1036, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EED2Ev.exit
  %i.cbj = phi ptr [ %.pr.i1037, %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i1036 ], [ %i.can, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i1039 = icmp eq ptr %i.cbj, null
  br i1 %.not.i.i1.i1039, label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit1043, label %bb.im

bb.im:                                            ; preds = %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exit.i1038
  %i.cbk = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.cbl = load ptr, ptr %i.cbk, align 8, !tbaa !106
  %i.cbm = ptrtoint ptr %i.cbl to i64
  %i.cbn = ptrtoint ptr %i.cbj to i64
  %i.cbo = sub i64 %i.cbm, %i.cbn
  call void @_ZdlPvm(ptr noundef nonnull %i.cbj, i64 noundef %i.cbo) #33
  br label %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit1043

_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit1043: ; preds = %_ZSt8_DestroyIPN11flatbuffers12BinaryRegionES1_EvT_S3_RSaIT0_E.exit.i1038, %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %bb.in

bb.in:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev.exit1043, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354
  %i.cbp = load ptr, ptr %i.aj, align 8, !tbaa !95 ; 2 uses
  %i.cbq = icmp eq ptr %i.cbp, %i.ak
  br i1 %i.cbq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1045, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1044

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1044: ; preds = %bb.in
  %i.cbr = load i64, ptr %i.ak, align 8, !tbaa !86
  %i.cbs = add i64 %i.cbr, 1
  call void @_ZdlPvm(ptr noundef %i.cbp, i64 noundef %i.cbs) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1045

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1045: ; preds = %bb.in, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1044
  %i.cbt = load ptr, ptr %i.ag, align 8, !tbaa !95 ; 2 uses
  %i.cbu = icmp eq ptr %i.cbt, %i.ah
  br i1 %i.cbu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i1047, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i1046

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i1046: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1045
  %i.cbv = load i64, ptr %i.ah, align 8, !tbaa !86
  %i.cbw = add i64 %i.cbv, 1
  call void @_ZdlPvm(ptr noundef %i.cbt, i64 noundef %i.cbw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i1047

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i1047: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1045, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i1046
  %i.cbx = load ptr, ptr %i.ac, align 8, !tbaa !95 ; 2 uses
  %i.cby = icmp eq ptr %i.cbx, %i.ad
  br i1 %i.cby, label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit1052, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1048

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1048: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i1047
  %i.cbz = load i64, ptr %i.ad, align 8, !tbaa !86
  %i.cca = add i64 %i.cbz, 1
  call void @_ZdlPvm(ptr noundef %i.cbx, i64 noundef %i.cca) #33
  br label %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit1052

_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit1052: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i1047, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1048
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZN11flatbuffers15BinaryAnnotator15ContainsSectionEm.exit.thread1163

_ZN11flatbuffers15BinaryAnnotator15ContainsSectionEm.exit.thread1163: ; preds = %bb.b, %_ZN11flatbuffers15BinaryAnnotator15ContainsSectionEm.exit, %_ZN11flatbuffers19BinaryRegionCommentD2Ev.exit1052
  ret void

bb.io:                                            ; preds = %.noexc.i.i1011
  %i.ccb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1055

.body1014:                                        ; preds = %bb.ih, %_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EE14_M_move_assignEOS3_St17integral_constantIbLb1EE.exit
  %i.ccc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN11flatbuffers13BinarySectionD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %76) #30
  call void @_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %78) #30
  %i.ccd = load ptr, ptr %77, align 8, !tbaa !95  ; 2 uses
  %i.cce = icmp eq ptr %i.ccd, %i.bxj
  br i1 %i.cce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1055, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1053

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1053: ; preds = %.body1014
  %i.ccf = load i64, ptr %i.bxj, align 8, !tbaa !86
  %i.ccg = add i64 %i.ccf, 1
  call void @_ZdlPvm(ptr noundef %i.ccd, i64 noundef %i.ccg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1055

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1055: ; preds = %.body1014, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1053, %bb.io
  %.pn266.pn = phi { ptr, i32 } [ %i.ccb, %bb.io ], [ %i.ccc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1053 ], [ %i.ccc, %.body1014 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #30
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp1227.loopexit.split-lp, %bb.ar, %bb.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1055, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637, %bb.hz
  %.sroa.21.01677 = phi ptr [ %.sroa.21.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637 ], [ %.sroa.21.0.lcssa21832225, %bb.ie ], [ %.sroa.21.1, %bb.hz ], [ %.sroa.21.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524 ], [ %.sroa.21.0.lcssa21832225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1055 ], [ %.sroa.21.1, %bb.ar ], [ %.sroa.14.01700, %.loopexit.split-lp1227.loopexit.split-lp ]
  %.sroa.01141.01653 = phi ptr [ %.sroa.01141.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637 ], [ %.sroa.01141.0.lcssa22022224, %bb.ie ], [ %.sroa.01141.1, %bb.hz ], [ %.sroa.01141.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524 ], [ %.sroa.01141.0.lcssa22022224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1055 ], [ %.sroa.01141.1, %bb.ar ], [ %.sroa.01141.01701, %.loopexit.split-lp1227.loopexit.split-lp ] ; 3 uses
  %.pn342 = phi { ptr, i32 } [ %.pn325.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637 ], [ %.pn264, %bb.ie ], [ %.pn305.pn.pn.pn.pn, %bb.hz ], [ %.pn337.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524 ], [ %.pn266.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1055 ], [ %i.ok, %bb.ar ], [ %lpad.loopexit.split-lp2327, %.loopexit.split-lp1227.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i1056 = icmp eq ptr %.sroa.01141.01653, null
  br i1 %.not.i.i.i1056, label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EED2Ev.exit1057, label %bb.ip

bb.ip:                                            ; preds = %.body
  %i.cch = ptrtoint ptr %.sroa.21.01677 to i64
  %i.cci = ptrtoint ptr %.sroa.01141.01653 to i64
  %i.ccj = sub i64 %i.cch, %i.cci
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01141.01653, i64 noundef %i.ccj) #33
  br label %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EED2Ev.exit1057

_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EED2Ev.exit1057: ; preds = %bb.ip, %.body, %bb.am, %bb.al
  %.pn342.pn.pn = phi { ptr, i32 } [ %.pn262, %bb.al ], [ %i.mx, %bb.am ], [ %.pn342, %.body ], [ %.pn342, %bb.ip ]
  call void @_ZNSt6vectorIN11flatbuffers12BinaryRegionESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357: ; preds = %bb.z, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EED2Ev.exit1057, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360
  %.pn342.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355 ], [ %i.ff, %bb.k ], [ %.pn251.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360 ], [ %.pn342.pn.pn, %_ZNSt6vectorIN11flatbuffers15BinaryAnnotator6VTable5EntryESaIS3_EED2Ev.exit1057 ], [ %.pn258.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408 ], [ %i.kk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403 ], [ %i.kk, %bb.z ]
  call void @_ZN11flatbuffers19BinaryRegionCommentD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %.pn342.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11flatbuffers15BinaryAnnotator9RootTableEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !85   ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142  ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !63
  %i.i = sext i32 %i.h to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j ; 3 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !97   ; 2 uses
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i16 %i.l, 4
  br i1 %i.m, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZNK10reflection6Schema7objectsEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i16, ptr %i.n, align 2, !tbaa !97   ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNK10reflection6Schema7objectsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !63
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  br label %_ZNK10reflection6Schema7objectsEv.exit

_ZNK10reflection6Schema7objectsEv.exit:           ; preds = %bb.b, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %bb.c
  %i.u = phi ptr [ %i.t, %bb.c ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ], [ null, %bb.b ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.v, ptr %1, align 8, !tbaa !84
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !95   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.d, ptr %i.a, align 8, !tbaa !64
  %i.x = icmp ugt i64 %i.d, 15
  br i1 %i.x, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %_ZNK10reflection6Schema7objectsEv.exit
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.y, ptr %1, align 8, !tbaa !95
  %i.z = load i64, ptr %i.a, align 8, !tbaa !64
  store i64 %i.z, ptr %i.v, align 8, !tbaa !86
  br label %bb.e

._crit_edge.i.i:                                  ; preds = %_ZNK10reflection6Schema7objectsEv.exit
  %cond = icmp eq i64 %i.d, 1
  br i1 %cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !86
  store i8 %i.aa, ptr %i.v, align 8, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.ab = phi ptr [ %i.y, %._crit_edge.i.i.thread ], [ %i.v, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.w, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %bb.d, %bb.e
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !64  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !85
  %i.ae = load ptr, ptr %1, align 8, !tbaa !95
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ah = load i32, ptr %i.u, align 4, !tbaa !150 ; 2 uses
  %.not24.i.i = icmp eq i32 %i.ah, 0
  %.pre = load ptr, ptr %1, align 8               ; 3 uses
  br i1 %.not24.i.i, label %_ZNK11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE11LookupByKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKS3_T_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !85 ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE10KeyCompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiPKvSE_.exit.thread.i, %.lr.ph.i.preheader.i
  %.021.i.i = phi i64 [ %.1.i.i, %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE10KeyCompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiPKvSE_.exit.thread.i ], [ %i.ai, %.lr.ph.i.preheader.i ] ; 2 uses
  %.01620.i.i = phi i64 [ %.117.i.i, %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE10KeyCompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiPKvSE_.exit.thread.i ], [ 0, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.ak = add i64 %.01620.i.i, %.021.i.i
  %i.al = lshr i64 %i.ak, 1                       ; 4 uses
  %i.am = shl i64 %i.al, 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !63
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !63
  %i.as = sext i32 %i.ar to i64
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i.i.i.i = icmp ne i16 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.ax = zext i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !63
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  %i.bd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bc) #30 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.aj) ; 2 uses
  %i.be = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.be, label %_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.bf = call i32 @memcmp(ptr noundef %.pre, ptr noundef nonnull %i.bc, i64 noundef %.sroa.speculated.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.thread6.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.thread.i.i

_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i.i: ; preds = %.lr.ph.i.i
  %i.bg = sub i64 %i.aj, %i.bd                    ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %bb.f, label %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE10KeyCompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiPKvSE_.exit.i

_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.thread6.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %i.bi = sub i64 %i.aj, %i.bd                    ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %bb.f, label %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE10KeyCompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiPKvSE_.exit.i

_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %i.bk = icmp sgt i32 %i.bf, 0
  br i1 %i.bk, label %bb.f, label %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE10KeyCompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiPKvSE_.exit.thread.i

_ZN11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE10KeyCompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiPKvSE_.exit.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.thread6.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.bg, %_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i.i ], [ %i.bi, %_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.thread6.i.i ]
  %i.bl = icmp slt i64 %.pre-phi.i.i, 0
  br i1 %i.bl, label %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE10KeyCompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiPKvSE_.exit.thread.i, label %_ZNK11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE11LookupByKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKS3_T_.exit

bb.f:                                             ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.thread.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.thread6.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i.i
  %i.bm = add nuw i64 %i.al, 1
  br label %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE10KeyCompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiPKvSE_.exit.thread.i

_ZN11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE10KeyCompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiPKvSE_.exit.thread.i: ; preds = %bb.f, %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE10KeyCompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiPKvSE_.exit.i, %_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.thread.i.i
  %.117.i.i = phi i64 [ %i.bm, %bb.f ], [ %.01620.i.i, %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE10KeyCompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiPKvSE_.exit.i ], [ %.01620.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.thread.i.i ] ; 2 uses
  %.1.i.i = phi i64 [ %.021.i.i, %bb.f ], [ %i.al, %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE10KeyCompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiPKvSE_.exit.i ], [ %i.al, %_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.thread.i.i ] ; 2 uses
  %i.bn = icmp ult i64 %.117.i.i, %.1.i.i
  br i1 %i.bn, label %.lr.ph.i.i, label %_ZNK11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE11LookupByKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKS3_T_.exit, !llvm.loop !346

_ZNK11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE11LookupByKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKS3_T_.exit: ; preds = %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE10KeyCompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiPKvSE_.exit.thread.i, %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE10KeyCompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiPKvSE_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.0.i = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.aq, %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE10KeyCompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiPKvSE_.exit.i ], [ null, %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE10KeyCompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiPKvSE_.exit.thread.i ] ; 2 uses
  %i.bo = icmp eq ptr %.pre, %i.v
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK11flatbuffers6VectorINS_6OffsetIN10reflection6ObjectEEEjE11LookupByKeyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKS3_T_.exit
  %i.bp = load i64, ptr %i.v, align 8, !tbaa !86
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.a
  %i.br = icmp ugt i16 %i.l, 12
  br i1 %i.br, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i6, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i6: ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !97 ; 2 uses
  %.not.i.i.i7 = icmp eq i16 %i.bt, 0
  br i1 %.not.i.i.i7, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i6
  %i.bu = zext i16 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !63
  %i.bx = zext i32 %i.bw to i64
end_hunk_1
