Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/image_test?download=true
inline.NumInlined: 4995
inline.NumDeleted: 987
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 97
begin_hunk_0_@_ZN16Image_ExrIO_Test8TestBodyEv:bb.a
  %56 = alloca %"class.testing::Message", align 8 ; 16 uses
  %57 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %58 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %60 = alloca %"class.testing::Message", align 8 ; 8 uses
  %61 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call fastcc void @_ZL14GetFloatPixelsN4pbrt6Point2IiEEi(ptr dead_on_unwind noalias writable align 8 %11, i64 210453397520, i32 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i32 0, ptr %i.f, align 4, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 1, ptr %i.o, align 4, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 2, ptr %i.p, align 4, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 15 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 128 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %22, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %22, i64 140
  %i.aq = getelementptr inbounds nuw i8, ptr %22, i64 160
  %i.ar = getelementptr inbounds nuw i8, ptr %22, i64 172
  %i.as = getelementptr inbounds nuw i8, ptr %22, i64 180
  %i.at = getelementptr inbounds nuw i8, ptr %22, i64 188
  %i.au = getelementptr inbounds nuw i8, ptr %22, i64 200
  %i.av = getelementptr inbounds nuw i8, ptr %22, i64 216 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %22, i64 224 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %22, i64 232
  %i.ay = getelementptr inbounds nuw i8, ptr %22, i64 240
  %i.az = getelementptr inbounds nuw i8, ptr %22, i64 248
  %i.ba = getelementptr inbounds nuw i8, ptr %22, i64 264 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %22, i64 272 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %22, i64 280
  %i.bd = getelementptr inbounds nuw i8, ptr %22, i64 288
  %i.be = getelementptr inbounds nuw i8, ptr %22, i64 296
  %i.bf = getelementptr inbounds nuw i8, ptr %22, i64 192
  %i.bg = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %28, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %28, i64 152
  %i.bp = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %43, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %43, i64 48 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %43, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %43, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %43, i64 80 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %43, i64 72
  %i.bz = getelementptr inbounds nuw i8, ptr %42, i64 40 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %48, i64 40 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %48, i64 32 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %42, i64 32 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %28, i64 408 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %28, i64 424 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %28, i64 360 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %28, i64 376 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %22, i64 256 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %22, i64 208 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %13, i64 17
  %i.db = getelementptr inbounds nuw i8, ptr %13, i64 49
  %i.dc = getelementptr inbounds nuw i8, ptr %13, i64 81
  %i.dd = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %43, i64 17
  %i.dl = getelementptr inbounds nuw i8, ptr %43, i64 49
  %i.dm = getelementptr inbounds nuw i8, ptr %43, i64 81
  %i.dn = getelementptr inbounds nuw i8, ptr %43, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %43, i64 80 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %43, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %43, i64 48 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %59, i64 24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a, %_ZN4pbrt13ImageMetadataD2Ev.exit
  %.055.idx1585 = phi i64 [ 0, %bb.a ], [ %.055.add, %_ZN4pbrt13ImageMetadataD2Ev.exit ] ; 2 uses
  %.055.ptr = getelementptr inbounds nuw i8, ptr %i.f, i64 %.055.idx1585
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.dt = load i32, ptr %.055.ptr, align 4, !tbaa !75 ; 2 uses
  store i32 %i.dt, ptr %i.g, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store ptr %i.q, ptr %13, align 8, !tbaa !31
  store i8 82, ptr %i.q, align 8, !tbaa !32
  store i64 1, ptr %i.r, align 8, !tbaa !34
  store i8 0, ptr %i.da, align 1, !tbaa !32
  store ptr %i.t, ptr %i.s, align 8, !tbaa !31
  store i8 71, ptr %i.t, align 8, !tbaa !32
  store i64 1, ptr %i.u, align 8, !tbaa !34
  store i8 0, ptr %i.db, align 1, !tbaa !32
  store ptr %i.w, ptr %i.v, align 8, !tbaa !31
  store i8 66, ptr %i.w, align 8, !tbaa !32
  store i64 1, ptr %i.x, align 8, !tbaa !34
  store i8 0, ptr %i.dc, align 1, !tbaa !32
  %i.du = load i64, ptr @_ZN4pbrt13ColorEncoding6LinearE, align 8, !tbaa !27
  store i64 %i.du, ptr %14, align 8, !tbaa !27
  %i.dv = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #25
  %i.dw = ptrtoint ptr %i.dv to i64
  invoke void @_ZN4pbrt5ImageC1ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152) %12, i32 noundef %i.dt, i64 210453397520, ptr nonnull %13, i64 3, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %14, i64 %i.dw)
          to label %.preheader1592 unwind label %bb.c

.preheader1592:                                   ; preds = %._crit_edge.i.i
  %i.dx = load ptr, ptr %i.dd, align 8, !tbaa !35 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.de
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.preheader1592
  %i.dz = load i64, ptr %i.de, align 8, !tbaa !32
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.preheader1592, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.eb = load ptr, ptr %i.df, align 8, !tbaa !35 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.dg
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ed = load i64, ptr %i.dg, align 8, !tbaa !32
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  %i.ef = load ptr, ptr %13, align 8, !tbaa !35   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.dh
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.eh = load i64, ptr %i.dh, align 8, !tbaa !32
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store i64 0, ptr %15, align 8
  store i64 210453397520, ptr %i.y, align 8
  %i.ej = load ptr, ptr %i.z, align 8, !tbaa !66  ; 3 uses
  %i.ek = load i64, ptr %i.aa, align 8, !tbaa !64
  invoke void @_ZN4pbrt5Image10CopyRectInERKNS_7Bounds2IiEEN4pstd4spanIKfEE(ptr noundef nonnull align 8 dereferenceable(152) %12, ptr noundef nonnull align 4 dereferenceable(16) %15, ptr %i.ej, i64 %i.ek)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %.preheader1033

.preheader1033:                                   ; preds = %bb.b, %.thread1001
  %.0581580 = phi i32 [ 0, %bb.b ], [ %i.qm, %.thread1001 ] ; 7 uses
  %.0591579 = phi i32 [ 0, %bb.b ], [ %65, %.thread1001 ]
  br label %.preheader1021

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !35 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %bb.c
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !32
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !35 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !32
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.1
  %i.ey = load ptr, ptr %13, align 8, !tbaa !35   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.1
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !32
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.2
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.ny

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.nx

.preheader1021:                                   ; preds = %.preheader1033, %.critedge217
  %.0571578 = phi i32 [ 0, %.preheader1033 ], [ %i.ql, %.critedge217 ] ; 7 uses
  %.1601577 = phi i32 [ %.0591579, %.preheader1033 ], [ %65, %.critedge217 ]
  br label %bb.e

bb.e:                                             ; preds = %.preheader1021, %bb.cp
  %indvars.iv1593 = phi i64 [ 0, %.preheader1021 ], [ %indvars.iv.next, %bb.cp ] ; 7 uses
  %.2611574 = phi i32 [ %.1601577, %.preheader1021 ], [ %65, %bb.cp ] ; 3 uses
  %i.fe = load i32, ptr %i.g, align 4, !tbaa !75
  switch i32 %i.fe, label %bb.cp [
    i32 2, label %.preheader.preheader.i642
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %63 = sext i32 %.2611574 to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %63
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !77 ; 2 uses
  %i.fh = call float @llvm.fabs.f32(float %i.fg)  ; 2 uses
  %i.fi = bitcast float %i.fh to i32              ; 5 uses
  %i.fj = icmp samesign ugt i32 %i.fi, 1199570943
  br i1 %i.fj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fk = icmp samesign ugt i32 %i.fi, 2139095040
  %i.fl = select i1 %i.fk, i32 32256, i32 31744
  br label %_ZN4pbrt4HalfC2Ef.exit

bb.h:                                             ; preds = %bb.f
  %i.fm = icmp samesign ult i32 %i.fi, 947912704
  br i1 %i.fm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fn = fadd float %i.fh, 5.000000e-01
  %i.fo = bitcast float %i.fn to i32
  br label %_ZN4pbrt4HalfC2Ef.exit

bb.j:                                             ; preds = %bb.h
  %i.fp = lshr i32 %i.fi, 13
  %i.fq = and i32 %i.fp, 1
  %i.fr = add nuw nsw i32 %i.fi, 134221823
  %i.fs = add nuw nsw i32 %i.fr, %i.fq
  %i.ft = lshr i32 %i.fs, 13
  br label %_ZN4pbrt4HalfC2Ef.exit

_ZN4pbrt4HalfC2Ef.exit:                           ; preds = %bb.g, %bb.i, %bb.j
  %.sroa.0.0.i = phi i32 [ %i.fl, %bb.g ], [ %i.fo, %bb.i ], [ %i.ft, %bb.j ]
  %i.fu = bitcast float %i.fg to i32
  %i.fv = lshr i32 %i.fu, 16
  %i.fw = and i32 %i.fv, 32768
  %i.fx = or i32 %.sroa.0.0.i, %i.fw              ; 2 uses
  %i.fy = shl i32 %i.fx, 13                       ; 3 uses
  %i.fz = and i32 %i.fy, 536862720                ; 2 uses
  %i.ga = and i32 %i.fy, 260046848                ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 260046848
  br i1 %i.gb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4pbrt4HalfC2Ef.exit
  %i.gc = or i32 %i.fz, 1879048192
  br label %.preheader.preheader.i

bb.l:                                             ; preds = %_ZN4pbrt4HalfC2Ef.exit
  %i.gd = and i32 %i.fy, 268427264
  %i.ge = add nuw nsw i32 %i.gd, 939524096
  %i.gf = icmp eq i32 %i.ga, 0
  br i1 %i.gf, label %bb.m, label %.preheader.preheader.i

bb.m:                                             ; preds = %bb.l
  %i.gg = or i32 %i.fz, 947912704
  %i.gh = bitcast i32 %i.gg to float
  %i.gi = fadd float %i.gh, f0xB8800000
  %i.gj = bitcast float %i.gi to i32
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.0.0.i240 = phi i32 [ %i.gc, %bb.k ], [ %i.gj, %bb.m ], [ %i.ge, %bb.l ]
  %i.gk = shl i32 %i.fx, 16
  %i.gl = and i32 %i.gk, -2147483648
  %i.gm = or i32 %.sroa.0.0.i240, %i.gl           ; 2 uses
  store i32 %i.gm, ptr %i.h, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %.sroa.04.0.copyload.i = load i64, ptr %i.ab, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.04.0.copyload.i to i32 ; 5 uses
  %.sroa.9.0.extract.shift.i = lshr i64 %.sroa.04.0.copyload.i, 32
  %.sroa.9.0.extract.trunc.i = trunc nuw i64 %.sroa.9.0.extract.shift.i to i32 ; 2 uses
  %i.gn = icmp slt i32 %.0571578, %.sroa.0.0.extract.trunc.i
  %i.go = add nsw i32 %.sroa.0.0.extract.trunc.i, -1
  %..i.i = call i32 @llvm.smin.i32(i32 %.0571578, i32 %i.go)
  %.sroa.0902.0 = select i1 %i.gn, i32 %.0571578, i32 %..i.i ; 3 uses
  %i.gp = icmp slt i32 %.0581580, %.sroa.9.0.extract.trunc.i
  %i.gq = add nsw i32 %.sroa.9.0.extract.trunc.i, -1
  %..i.1.i = call i32 @llvm.smin.i32(i32 %.0581580, i32 %i.gq)
  %.sroa.14.2 = select i1 %i.gp, i32 %.0581580, i32 %..i.1.i ; 3 uses
  %i.gr = load i32, ptr %12, align 8, !tbaa !89
  %i.gs = bitcast i32 %i.gm to float              ; 2 uses
  switch i32 %i.gr, label %bb.v [
    i32 0, label %bb.n
    i32 1, label %bb.q
    i32 2, label %bb.u
  ]

bb.n:                                             ; preds = %.preheader.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.gt = load i64, ptr %i.ac, align 8, !tbaa !40
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = mul nsw i32 %.sroa.14.2, %.sroa.0.0.extract.trunc.i
  %i.gw = add nsw i32 %i.gv, %.sroa.0902.0
  %i.gx = mul nsw i32 %i.gw, %i.gu
  %i.gy = sext i32 %i.gx to i64
  %i.gz = load ptr, ptr %i.ag, align 8, !tbaa !70
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.gy
  %i.hb = getelementptr i8, ptr %i.ha, i64 %indvars.iv1593 ; 3 uses
  %i.hc = load i64, ptr %i.af, align 8, !tbaa !27 ; 2 uses
  %i.hd = and i64 %i.hc, 144115188075855871
  %i.he = inttoptr i64 %i.hd to ptr               ; 2 uses
  %i.hf = lshr i64 %i.hc, 57
  %i.hg = trunc nuw nsw i64 %i.hf to i32
  switch i32 %i.hg, label %bb.p [
    i32 1, label %.lr.ph.i.i.i.i.i.i
    i32 2, label %bb.o
  ]

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.n
  %i.hh = load i8, ptr %i.hb, align 1, !tbaa !32
  %i.hi = uitofp i8 %i.hh to float
  %i.hj = fdiv float %i.hi, 2.550000e+02
  store float %i.hj, ptr %i.e, align 4, !tbaa !77
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.he, ptr %i.hb, i64 1, ptr nonnull %i.e, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i unwind label %.loopexit.split-lp1023.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  invoke void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.he, ptr %i.hb, i64 1, ptr nonnull %i.e, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i unwind label %.loopexit.split-lp1023.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i: ; preds = %bb.p, %bb.o, %.lr.ph.i.i.i.i.i.i
  %i.hk = load float, ptr %i.e, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.pre = load float, ptr %i.h, align 4, !tbaa !77, !noalias !349
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.q:                                             ; preds = %.preheader.preheader.i
  %i.hl = load i64, ptr %i.ac, align 8, !tbaa !40
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = mul nsw i32 %.sroa.14.2, %.sroa.0.0.extract.trunc.i
  %i.ho = add nsw i32 %i.hn, %.sroa.0902.0
  %i.hp = mul nsw i32 %i.ho, %i.hm
  %i.hq = sext i32 %i.hp to i64
  %i.hr = load ptr, ptr %i.ae, align 8, !tbaa !69
  %i.hs = getelementptr [2 x i8], ptr %i.hr, i64 %i.hq
  %i.ht = getelementptr [2 x i8], ptr %i.hs, i64 %indvars.iv1593
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !92 ; 2 uses
  %i.hv = zext i16 %i.hu to i32
  %i.hw = shl nuw nsw i32 %i.hv, 13               ; 4 uses
  %i.hx = and i32 %i.hw, 260046848                ; 2 uses
  %i.hy = icmp eq i32 %i.hx, 260046848
  br i1 %i.hy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hz = or i32 %i.hw, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i

bb.s:                                             ; preds = %bb.q
  %i.ia = and i32 %i.hw, 268427264
  %i.ib = add nuw nsw i32 %i.ia, 939524096
  %i.ic = icmp eq i32 %i.hx, 0
  br i1 %i.ic, label %bb.t, label %_ZNK4pbrt4HalfcvfEv.exit.i

bb.t:                                             ; preds = %bb.s
  %i.id = or i32 %i.hw, 947912704
  %i.ie = bitcast i32 %i.id to float
  %i.if = fadd float %i.ie, f0xB8800000
  %i.ig = bitcast float %i.if to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i

_ZNK4pbrt4HalfcvfEv.exit.i:                       ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.0.0.i.i = phi i32 [ %i.hz, %bb.r ], [ %i.ig, %bb.t ], [ %i.ib, %bb.s ]
  %.signext.i.i = sext i16 %i.hu to i32
  %i.ih = and i32 %.signext.i.i, -2147483648
  %i.ii = or i32 %.sroa.0.0.i.i, %i.ih
  %i.ij = bitcast i32 %i.ii to float
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.u:                                             ; preds = %.preheader.preheader.i
  %i.ik = load i64, ptr %i.ac, align 8, !tbaa !40
  %i.il = trunc i64 %i.ik to i32
  %i.im = mul nsw i32 %.sroa.14.2, %.sroa.0.0.extract.trunc.i
  %i.in = add nsw i32 %i.im, %.sroa.0902.0
  %i.io = mul nsw i32 %i.in, %i.il
  %i.ip = sext i32 %i.io to i64
  %i.iq = load ptr, ptr %i.ad, align 8, !tbaa !66
  %i.ir = getelementptr [4 x i8], ptr %i.iq, i64 %i.ip
  %i.is = getelementptr [4 x i8], ptr %i.ir, i64 %indvars.iv1593
  %i.it = load float, ptr %i.is, align 4, !tbaa !77
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.v:                                             ; preds = %.preheader.preheader.i
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.254, i32 noundef 273, ptr noundef nonnull @.str.264) #28
          to label %.noexc245 unwind label %.loopexit.split-lp1023.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc245:                                        ; preds = %bb.v
  unreachable

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit: ; preds = %bb.u, %_ZNK4pbrt4HalfcvfEv.exit.i, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i
  %i.iu = phi float [ %.pre, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i ], [ %i.gs, %_ZNK4pbrt4HalfcvfEv.exit.i ], [ %i.gs, %bb.u ]
  %.0.i = phi float [ %i.hk, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i ], [ %i.ij, %_ZNK4pbrt4HalfcvfEv.exit.i ], [ %i.it, %bb.u ] ; 2 uses
  store float %.0.i, ptr %i.i, align 4, !tbaa !77
  %i.iv = fcmp oeq float %i.iu, %.0.i
  br i1 %i.iv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit unwind label %.loopexit.split-lp1023.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !349
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %.noexc635 unwind label %.loopexit.split-lp1023.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc635:                                        ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !349
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.z, !noalias !349

_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc635
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.56, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, i1 noundef zeroext false)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.iw = load ptr, ptr %10, align 8, !tbaa !35, !noalias !349 ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.ah
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.y
  %i.iy = load i64, ptr %i.ah, align 8, !tbaa !32, !noalias !349
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !349
  %i.ja = load ptr, ptr %9, align 8, !tbaa !35, !noalias !349 ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.ai
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.jc = load i64, ptr %i.ai, align 8, !tbaa !32, !noalias !349
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !349
  br label %_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit

bb.z:                                             ; preds = %.noexc635
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i

bb.aa:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.jf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jg = load ptr, ptr %10, align 8, !tbaa !35, !noalias !349 ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.ah
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i: ; preds = %bb.aa
  %i.ji = load i64, ptr %i.ah, align 8, !tbaa !32, !noalias !349
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i, %bb.z
  %.pn.i = phi { ptr, i32 } [ %i.je, %bb.z ], [ %i.jf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i ], [ %i.jf, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !349
  %i.jk = load ptr, ptr %9, align 8, !tbaa !35, !noalias !349 ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.ai
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i
  %i.jm = load i64, ptr %i.ai, align 8, !tbaa !32, !noalias !349
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !349
  br label %.body

_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit: ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  %i.jo = load i8, ptr %16, align 8, !tbaa !45, !range !46, !noundef !47
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %.critedge, label %bb.ab

.loopexit.split-lp1023.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.w, %bb.p, %bb.o, %bb.v
  %lpad.loopexit.split-lp1823 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp1023.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i ], [ %lpad.loopexit.split-lp1823, %.loopexit.split-lp1023.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  br label %_ZN7testing15AssertionResultD2Ev.exit254

bb.ab:                                            ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ac unwind label %bb.ao

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.jq = load ptr, ptr %i.aj, align 8, !tbaa !48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !35
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ad, %bb.ac
  %i.js = phi ptr [ %i.jr, %bb.ad ], [ @.str.253, %bb.ac ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 346, ptr noundef %i.js)
          to label %bb.ae unwind label %bb.ap

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.af unwind label %bb.aq

bb.af:                                            ; preds = %bb.ae
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.jt = load ptr, ptr %17, align 8, !tbaa !51
  %.not.i.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ju = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.aj

.noexc.i.i:                                       ; preds = %bb.ag
  br i1 %i.ju, label %bb.ah, label %_ZN7testing7MessageD2Ev.exit

bb.ah:                                            ; preds = %.noexc.i.i
  %i.jv = load ptr, ptr %17, align 8, !tbaa !51   ; 3 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %_ZN7testing7MessageD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jx = load ptr, ptr %i.jv, align 8, !tbaa !53
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(128) %i.jv) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

bb.aj:                                            ; preds = %bb.ag
  %i.ka = landingpad { ptr, i32 }
          catch ptr null
  %i.kb = extractvalue { ptr, i32 } %i.ka, 0
  call void @__clang_call_terminate(ptr %i.kb) #27
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.af, %.noexc.i.i, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.kc = load ptr, ptr %i.aj, align 8, !tbaa !48
  %.not.i.i.i247 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i247, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.kd = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i248 unwind label %bb.an

.noexc.i.i248:                                    ; preds = %bb.ak
  br i1 %i.kd, label %bb.al, label %_ZN7testing15AssertionResultD2Ev.exit

bb.al:                                            ; preds = %.noexc.i.i248
  %i.ke = load ptr, ptr %i.aj, align 8, !tbaa !48 ; 4 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kg = load ptr, ptr %i.ke, align 8, !tbaa !35 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 2 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.am
  %i.kj = load i64, ptr %i.kh, align 8, !tbaa !32
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.an:                                            ; preds = %bb.ak
  %i.kl = landingpad { ptr, i32 }
          catch ptr null
  %i.km = extractvalue { ptr, i32 } %i.kl, 0
  call void @__clang_call_terminate(ptr %i.km) #27
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %.noexc.i.i248, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %.loopexit1034.sink.split

bb.ao:                                            ; preds = %bb.ab
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ap:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ae
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #25
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn146 = phi { ptr, i32 } [ %i.kp, %bb.aq ], [ %i.ko, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #25
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %.pn146.pn = phi { ptr, i32 } [ %.pn146, %bb.ar ], [ %i.kn, %bb.ao ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.kq = load ptr, ptr %i.aj, align 8, !tbaa !48
  %.not.i.i.i249 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i.i249, label %_ZN7testing15AssertionResultD2Ev.exit254, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kr = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i250 unwind label %bb.aw

.noexc.i.i250:                                    ; preds = %bb.at
  br i1 %i.kr, label %bb.au, label %_ZN7testing15AssertionResultD2Ev.exit254

bb.au:                                            ; preds = %.noexc.i.i250
  %i.ks = load ptr, ptr %i.aj, align 8, !tbaa !48 ; 4 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %_ZN7testing15AssertionResultD2Ev.exit254, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ku = load ptr, ptr %i.ks, align 8, !tbaa !35 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251: ; preds = %bb.av
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !32
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i252: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251
  call void @_ZdlPvm(ptr noundef nonnull %i.ks, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit254

bb.aw:                                            ; preds = %bb.at
  %i.kz = landingpad { ptr, i32 }
          catch ptr null
  %i.la = extractvalue { ptr, i32 } %i.kz, 0
  call void @__clang_call_terminate(ptr %i.la) #27
  unreachable

_ZN7testing15AssertionResultD2Ev.exit254:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i252, %bb.au, %.noexc.i.i250, %bb.as, %.body
  %.pn146.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn146.pn, %bb.as ], [ %.pn146.pn, %.noexc.i.i250 ], [ %.pn146.pn, %bb.au ], [ %.pn146.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i252 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.nx

.preheader.preheader.i642:                        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %64 = sext i32 %.2611574 to i64
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  %.sroa.04.0.copyload.i256 = load i64, ptr %i.ab, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i636 = trunc i64 %.sroa.04.0.copyload.i256 to i32 ; 5 uses
  %.sroa.9.0.extract.shift.i637 = lshr i64 %.sroa.04.0.copyload.i256, 32
  %.sroa.9.0.extract.trunc.i638 = trunc nuw i64 %.sroa.9.0.extract.shift.i637 to i32 ; 2 uses
  %i.lc = icmp slt i32 %.0571578, %.sroa.0.0.extract.trunc.i636
  %i.ld = add nsw i32 %.sroa.0.0.extract.trunc.i636, -1
  %..i.i645 = call i32 @llvm.smin.i32(i32 %.0571578, i32 %i.ld)
  %.sroa.0920.0 = select i1 %i.lc, i32 %.0571578, i32 %..i.i645 ; 3 uses
  %i.le = icmp slt i32 %.0581580, %.sroa.9.0.extract.trunc.i638
  %i.lf = add nsw i32 %.sroa.9.0.extract.trunc.i638, -1
  %..i.1.i651 = call i32 @llvm.smin.i32(i32 %.0581580, i32 %i.lf)
  %.sroa.14928.2 = select i1 %i.le, i32 %.0581580, i32 %..i.1.i651 ; 3 uses
  %i.lg = load i32, ptr %12, align 8, !tbaa !89
  switch i32 %i.lg, label %bb.bf [
    i32 0, label %bb.ax
    i32 1, label %bb.ba
    i32 2, label %bb.be
  ]

bb.ax:                                            ; preds = %.preheader.preheader.i642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.lh = load i64, ptr %i.ac, align 8, !tbaa !40
  %i.li = trunc i64 %i.lh to i32
  %i.lj = mul nsw i32 %.sroa.14928.2, %.sroa.0.0.extract.trunc.i636
  %i.lk = add nsw i32 %i.lj, %.sroa.0920.0
  %i.ll = mul nsw i32 %i.lk, %i.li
  %i.lm = sext i32 %i.ll to i64
  %i.ln = load ptr, ptr %i.ag, align 8, !tbaa !70
  %i.lo = getelementptr i8, ptr %i.ln, i64 %i.lm
  %i.lp = getelementptr i8, ptr %i.lo, i64 %indvars.iv1593 ; 3 uses
  %i.lq = load i64, ptr %i.af, align 8, !tbaa !27 ; 2 uses
  %i.lr = and i64 %i.lq, 144115188075855871
  %i.ls = inttoptr i64 %i.lr to ptr               ; 2 uses
  %i.lt = lshr i64 %i.lq, 57
  %i.lu = trunc nuw nsw i64 %i.lt to i32
  switch i32 %i.lu, label %bb.az [
    i32 1, label %.lr.ph.i.i.i.i.i.i274
    i32 2, label %bb.ay
  ]

.lr.ph.i.i.i.i.i.i274:                            ; preds = %bb.ax
  %i.lv = load i8, ptr %i.lp, align 1, !tbaa !32
  %i.lw = uitofp i8 %i.lv to float
  %i.lx = fdiv float %i.lw, 2.550000e+02
  store float %i.lx, ptr %i.d, align 4, !tbaa !77
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i273

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ls, ptr %i.lp, i64 1, ptr nonnull %i.d, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i273 unwind label %.loopexit.split-lp1028.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ax
  invoke void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.ls, ptr %i.lp, i64 1, ptr nonnull %i.d, i64 1)
          to label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i273 unwind label %.loopexit.split-lp1028.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i273: ; preds = %bb.az, %bb.ay, %.lr.ph.i.i.i.i.i.i274
  %i.ly = load float, ptr %i.d, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit279

bb.ba:                                            ; preds = %.preheader.preheader.i642
  %i.lz = load i64, ptr %i.ac, align 8, !tbaa !40
  %i.ma = trunc i64 %i.lz to i32
  %i.mb = mul nsw i32 %.sroa.14928.2, %.sroa.0.0.extract.trunc.i636
  %i.mc = add nsw i32 %i.mb, %.sroa.0920.0
  %i.md = mul nsw i32 %i.mc, %i.ma
  %i.me = sext i32 %i.md to i64
  %i.mf = load ptr, ptr %i.ae, align 8, !tbaa !69
  %i.mg = getelementptr [2 x i8], ptr %i.mf, i64 %i.me
  %i.mh = getelementptr [2 x i8], ptr %i.mg, i64 %indvars.iv1593
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !92 ; 2 uses
  %i.mj = zext i16 %i.mi to i32
  %i.mk = shl nuw nsw i32 %i.mj, 13               ; 4 uses
  %i.ml = and i32 %i.mk, 260046848                ; 2 uses
  %i.mm = icmp eq i32 %i.ml, 260046848
  br i1 %i.mm, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.mn = or i32 %i.mk, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i266

bb.bc:                                            ; preds = %bb.ba
  %i.mo = and i32 %i.mk, 268427264
  %i.mp = add nuw nsw i32 %i.mo, 939524096
  %i.mq = icmp eq i32 %i.ml, 0
  br i1 %i.mq, label %bb.bd, label %_ZNK4pbrt4HalfcvfEv.exit.i266

bb.bd:                                            ; preds = %bb.bc
  %i.mr = or i32 %i.mk, 947912704
  %i.ms = bitcast i32 %i.mr to float
  %i.mt = fadd float %i.ms, f0xB8800000
  %i.mu = bitcast float %i.mt to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i266

_ZNK4pbrt4HalfcvfEv.exit.i266:                    ; preds = %bb.bd, %bb.bc, %bb.bb
  %.sroa.0.0.i.i267 = phi i32 [ %i.mn, %bb.bb ], [ %i.mu, %bb.bd ], [ %i.mp, %bb.bc ]
  %.signext.i.i268 = sext i16 %i.mi to i32
  %i.mv = and i32 %.signext.i.i268, -2147483648
  %i.mw = or i32 %.sroa.0.0.i.i267, %i.mv
  %i.mx = bitcast i32 %i.mw to float
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit279

bb.be:                                            ; preds = %.preheader.preheader.i642
  %i.my = load i64, ptr %i.ac, align 8, !tbaa !40
  %i.mz = trunc i64 %i.my to i32
  %i.na = mul nsw i32 %.sroa.14928.2, %.sroa.0.0.extract.trunc.i636
  %i.nb = add nsw i32 %i.na, %.sroa.0920.0
  %i.nc = mul nsw i32 %i.nb, %i.mz
  %i.nd = sext i32 %i.nc to i64
  %i.ne = load ptr, ptr %i.ad, align 8, !tbaa !66
  %i.nf = getelementptr [4 x i8], ptr %i.ne, i64 %i.nd
  %i.ng = getelementptr [4 x i8], ptr %i.nf, i64 %indvars.iv1593
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !77
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit279

bb.bf:                                            ; preds = %.preheader.preheader.i642
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.254, i32 noundef 273, ptr noundef nonnull @.str.264) #28
          to label %.noexc278 unwind label %.loopexit.split-lp1028.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc278:                                        ; preds = %bb.bf
  unreachable

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit279: ; preds = %bb.be, %_ZNK4pbrt4HalfcvfEv.exit.i266, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i273
  %.0.i257 = phi float [ %i.ly, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i273 ], [ %i.mx, %_ZNK4pbrt4HalfcvfEv.exit.i266 ], [ %i.nh, %bb.be ] ; 2 uses
  store float %.0.i257, ptr %i.j, align 4, !tbaa !77
  %i.ni = load float, ptr %i.lb, align 4, !tbaa !77, !noalias !350
  %i.nj = fcmp oeq float %i.ni, %.0.i257
  br i1 %i.nj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit279
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %19)
          to label %_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit281 unwind label %.loopexit.split-lp1028.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit279
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !350
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %i.lb)
          to label %.noexc678 unwind label %.loopexit.split-lp1028.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc678:                                        ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !350
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i668 unwind label %bb.bj, !noalias !350

_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i668: ; preds = %.noexc678
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %19, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.56, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext false)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i668
  %i.nk = load ptr, ptr %8, align 8, !tbaa !35, !noalias !350 ; 2 uses
  %i.nl = icmp eq ptr %i.nk, %i.ak
  br i1 %i.nl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i672, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i671

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i671: ; preds = %bb.bi
  %i.nm = load i64, ptr %i.ak, align 8, !tbaa !32, !noalias !350
  %i.nn = add i64 %i.nm, 1
  call void @_ZdlPvm(ptr noundef %i.nk, i64 noundef %i.nn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i672

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i672: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i671
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !350
  %i.no = load ptr, ptr %7, align 8, !tbaa !35, !noalias !350 ; 2 uses
  %i.np = icmp eq ptr %i.no, %i.al
  br i1 %i.np, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i674, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i673

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i673: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i672
  %i.nq = load i64, ptr %i.al, align 8, !tbaa !32, !noalias !350
  %i.nr = add i64 %i.nq, 1
  call void @_ZdlPvm(ptr noundef %i.no, i64 noundef %i.nr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i674

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i674: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i672, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i673
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !350
  br label %_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit281

bb.bj:                                            ; preds = %.noexc678
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i663

bb.bk:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i668
  %i.nt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nu = load ptr, ptr %8, align 8, !tbaa !35, !noalias !350 ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.ak
  br i1 %i.nv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i663, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i669

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i669: ; preds = %bb.bk
  %i.nw = load i64, ptr %i.ak, align 8, !tbaa !32, !noalias !350
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.nx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i663

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i663: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i669, %bb.bj
  %.pn.i664 = phi { ptr, i32 } [ %i.ns, %bb.bj ], [ %i.nt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i669 ], [ %i.nt, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !350
  %i.ny = load ptr, ptr %7, align 8, !tbaa !35, !noalias !350 ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.al
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i666, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i665

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i665: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i663
  %i.oa = load i64, ptr %i.al, align 8, !tbaa !32, !noalias !350
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.ob) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i666

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i666: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i663, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i665
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !350
  br label %.body679

_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit281: ; preds = %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  %i.oc = load i8, ptr %19, align 8, !tbaa !45, !range !46, !noundef !47
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %.critedge215, label %bb.bl

.loopexit.split-lp1028.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bh, %bb.bg, %bb.az, %bb.ay, %bb.bf
  %lpad.loopexit.split-lp1826 = landingpad { ptr, i32 }
          cleanup
  br label %.body679

.body679:                                         ; preds = %.loopexit.split-lp1028.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i666
  %eh.lpad-body680 = phi { ptr, i32 } [ %.pn.i664, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i666 ], [ %lpad.loopexit.split-lp1826, %.loopexit.split-lp1028.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  br label %_ZN7testing15AssertionResultD2Ev.exit298

bb.bl:                                            ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit281
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bm unwind label %bb.by

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.oe = load ptr, ptr %i.am, align 8, !tbaa !48 ; 2 uses
  %.not.i.i282 = icmp eq ptr %i.oe, null
  br i1 %.not.i.i282, label %_ZNK7testing15AssertionResult15failure_messageEv.exit283, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !35
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit283

_ZNK7testing15AssertionResult15failure_messageEv.exit283: ; preds = %bb.bn, %bb.bm
  %i.og = phi ptr [ %i.of, %bb.bn ], [ @.str.253, %bb.bm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 348, ptr noundef %i.og)
          to label %bb.bo unwind label %bb.bz

bb.bo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit283
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bp unwind label %bb.ca

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  %i.oh = load ptr, ptr %20, align 8, !tbaa !51
  %.not.i.i.i284 = icmp eq ptr %i.oh, null
  br i1 %.not.i.i.i284, label %_ZN7testing7MessageD2Ev.exit286, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.oi = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i285 unwind label %bb.bt

.noexc.i.i285:                                    ; preds = %bb.bq
  br i1 %i.oi, label %bb.br, label %_ZN7testing7MessageD2Ev.exit286

bb.br:                                            ; preds = %.noexc.i.i285
  %i.oj = load ptr, ptr %20, align 8, !tbaa !51   ; 3 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %_ZN7testing7MessageD2Ev.exit286, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ol = load ptr, ptr %i.oj, align 8, !tbaa !53
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.on = load ptr, ptr %i.om, align 8
  call void %i.on(ptr noundef nonnull align 8 dereferenceable(128) %i.oj) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit286

bb.bt:                                            ; preds = %bb.bq
  %i.oo = landingpad { ptr, i32 }
          catch ptr null
  %i.op = extractvalue { ptr, i32 } %i.oo, 0
  call void @__clang_call_terminate(ptr %i.op) #27
  unreachable

_ZN7testing7MessageD2Ev.exit286:                  ; preds = %bb.bp, %.noexc.i.i285, %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  %i.oq = load ptr, ptr %i.am, align 8, !tbaa !48
  %.not.i.i.i287 = icmp eq ptr %i.oq, null
  br i1 %.not.i.i.i287, label %_ZN7testing15AssertionResultD2Ev.exit292, label %bb.bu

bb.bu:                                            ; preds = %_ZN7testing7MessageD2Ev.exit286
  %i.or = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i288 unwind label %bb.bx

.noexc.i.i288:                                    ; preds = %bb.bu
  br i1 %i.or, label %bb.bv, label %_ZN7testing15AssertionResultD2Ev.exit292

bb.bv:                                            ; preds = %.noexc.i.i288
  %i.os = load ptr, ptr %i.am, align 8, !tbaa !48 ; 4 uses
  %i.ot = icmp eq ptr %i.os, null
  br i1 %i.ot, label %_ZN7testing15AssertionResultD2Ev.exit292, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ou = load ptr, ptr %i.os, align 8, !tbaa !35 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 16 ; 2 uses
  %i.ow = icmp eq ptr %i.ou, %i.ov
  br i1 %i.ow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i289: ; preds = %bb.bw
  %i.ox = load i64, ptr %i.ov, align 8, !tbaa !32
  %i.oy = add i64 %i.ox, 1
  call void @_ZdlPvm(ptr noundef %i.ou, i64 noundef %i.oy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i290: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i289
  call void @_ZdlPvm(ptr noundef nonnull %i.os, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit292

bb.bx:                                            ; preds = %bb.bu
  %i.oz = landingpad { ptr, i32 }
          catch ptr null
  %i.pa = extractvalue { ptr, i32 } %i.oz, 0
  call void @__clang_call_terminate(ptr %i.pa) #27
  unreachable

_ZN7testing15AssertionResultD2Ev.exit292:         ; preds = %_ZN7testing7MessageD2Ev.exit286, %.noexc.i.i288, %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i290
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %.loopexit1034.sink.split

bb.by:                                            ; preds = %bb.bl
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit283
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bo
  %i.pd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #25
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pn142 = phi { ptr, i32 } [ %i.pd, %bb.ca ], [ %i.pc, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #25
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.by
  %.pn142.pn = phi { ptr, i32 } [ %.pn142, %bb.cb ], [ %i.pb, %bb.by ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  %i.pe = load ptr, ptr %i.am, align 8, !tbaa !48
  %.not.i.i.i293 = icmp eq ptr %i.pe, null
  br i1 %.not.i.i.i293, label %_ZN7testing15AssertionResultD2Ev.exit298, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pf = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i294 unwind label %bb.cg

.noexc.i.i294:                                    ; preds = %bb.cd
  br i1 %i.pf, label %bb.ce, label %_ZN7testing15AssertionResultD2Ev.exit298

bb.ce:                                            ; preds = %.noexc.i.i294
  %i.pg = load ptr, ptr %i.am, align 8, !tbaa !48 ; 4 uses
  %i.ph = icmp eq ptr %i.pg, null
  br i1 %i.ph, label %_ZN7testing15AssertionResultD2Ev.exit298, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.pi = load ptr, ptr %i.pg, align 8, !tbaa !35 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 16 ; 2 uses
  %i.pk = icmp eq ptr %i.pi, %i.pj
  br i1 %i.pk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i295: ; preds = %bb.cf
  %i.pl = load i64, ptr %i.pj, align 8, !tbaa !32
  %i.pm = add i64 %i.pl, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i296: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i295
  call void @_ZdlPvm(ptr noundef nonnull %i.pg, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit298

bb.cg:                                            ; preds = %bb.cd
  %i.pn = landingpad { ptr, i32 }
          catch ptr null
  %i.po = extractvalue { ptr, i32 } %i.pn, 0
  call void @__clang_call_terminate(ptr %i.po) #27
  unreachable

_ZN7testing15AssertionResultD2Ev.exit298:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i296, %bb.ce, %.noexc.i.i294, %bb.cc, %.body679
  %.pn142.pn.pn = phi { ptr, i32 } [ %eh.lpad-body680, %.body679 ], [ %.pn142.pn, %bb.cc ], [ %.pn142.pn, %.noexc.i.i294 ], [ %.pn142.pn, %bb.ce ], [ %.pn142.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i296 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.nx

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit
  %i.pp = load ptr, ptr %i.aj, align 8, !tbaa !48
  %.not.i.i.i299 = icmp eq ptr %i.pp, null
  br i1 %.not.i.i.i299, label %_ZN7testing15AssertionResultD2Ev.exit304, label %bb.ch

bb.ch:                                            ; preds = %.critedge
  %i.pq = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i300 unwind label %bb.ck

.noexc.i.i300:                                    ; preds = %bb.ch
  br i1 %i.pq, label %bb.ci, label %_ZN7testing15AssertionResultD2Ev.exit304

bb.ci:                                            ; preds = %.noexc.i.i300
  %i.pr = load ptr, ptr %i.aj, align 8, !tbaa !48 ; 4 uses
  %i.ps = icmp eq ptr %i.pr, null
  br i1 %i.ps, label %_ZN7testing15AssertionResultD2Ev.exit304, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.pt = load ptr, ptr %i.pr, align 8, !tbaa !35 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 16 ; 2 uses
  %i.pv = icmp eq ptr %i.pt, %i.pu
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i301: ; preds = %bb.cj
  %i.pw = load i64, ptr %i.pu, align 8, !tbaa !32
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pt, i64 noundef %i.px) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i302: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i301
  call void @_ZdlPvm(ptr noundef nonnull %i.pr, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit304

bb.ck:                                            ; preds = %bb.ch
  %i.py = landingpad { ptr, i32 }
          catch ptr null
  %i.pz = extractvalue { ptr, i32 } %i.py, 0
  call void @__clang_call_terminate(ptr %i.pz) #27
  unreachable

_ZN7testing15AssertionResultD2Ev.exit304:         ; preds = %.critedge, %.noexc.i.i300, %bb.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i302
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.cp

.critedge215:                                     ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIffEENS_15AssertionResultEPKcS6_RKT_RKT0_.exit281
  %i.qa = load ptr, ptr %i.am, align 8, !tbaa !48
  %.not.i.i.i305 = icmp eq ptr %i.qa, null
  br i1 %.not.i.i.i305, label %_ZN7testing15AssertionResultD2Ev.exit310, label %bb.cl

bb.cl:                                            ; preds = %.critedge215
  %i.qb = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i306 unwind label %bb.co

.noexc.i.i306:                                    ; preds = %bb.cl
  br i1 %i.qb, label %bb.cm, label %_ZN7testing15AssertionResultD2Ev.exit310

bb.cm:                                            ; preds = %.noexc.i.i306
  %i.qc = load ptr, ptr %i.am, align 8, !tbaa !48 ; 4 uses
  %i.qd = icmp eq ptr %i.qc, null
  br i1 %i.qd, label %_ZN7testing15AssertionResultD2Ev.exit310, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.qe = load ptr, ptr %i.qc, align 8, !tbaa !35 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 16 ; 2 uses
  %i.qg = icmp eq ptr %i.qe, %i.qf
  br i1 %i.qg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i307: ; preds = %bb.cn
  %i.qh = load i64, ptr %i.qf, align 8, !tbaa !32
  %i.qi = add i64 %i.qh, 1
  call void @_ZdlPvm(ptr noundef %i.qe, i64 noundef %i.qi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i308: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i307
  call void @_ZdlPvm(ptr noundef nonnull %i.qc, i64 noundef 32) #26
  br label %_ZN7testing15AssertionResultD2Ev.exit310

bb.co:                                            ; preds = %bb.cl
  %i.qj = landingpad { ptr, i32 }
          catch ptr null
  %i.qk = extractvalue { ptr, i32 } %i.qj, 0
  call void @__clang_call_terminate(ptr %i.qk) #27
  unreachable

_ZN7testing15AssertionResultD2Ev.exit310:         ; preds = %.critedge215, %.noexc.i.i306, %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i308
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit310, %bb.e, %_ZN7testing15AssertionResultD2Ev.exit304
  %indvars.iv.next = add nuw nsw i64 %indvars.iv1593, 1 ; 2 uses
  %65 = add nsw i32 %.2611574, 1                  ; 3 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %.critedge217, label %bb.e, !llvm.loop !337

.critedge217:                                     ; preds = %bb.cp
  %i.ql = add nuw nsw i32 %.0571578, 1            ; 2 uses
  %exitcond1598.not = icmp eq i32 %i.ql, 16
  br i1 %exitcond1598.not, label %.thread1001, label %.preheader1021, !llvm.loop !338

.thread1001:                                      ; preds = %.critedge217
  %i.qm = add nuw nsw i32 %.0581580, 1            ; 2 uses
  %exitcond1599.not.a = icmp eq i32 %i.qm, 49
  br i1 %exitcond1599.not.a, label %._crit_edge.i.i311, label %.preheader1033, !llvm.loop !339

._crit_edge.i.i311:                               ; preds = %.thread1001
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  store i8 0, ptr %i.an, align 4, !tbaa !121
  store i8 0, ptr %i.ao, align 8, !tbaa !123
  store i8 0, ptr %i.ap, align 4, !tbaa !123
  store i8 0, ptr %i.aq, align 8, !tbaa !125
  store i8 0, ptr %i.ar, align 4, !tbaa !127
  store i8 0, ptr %i.as, align 4, !tbaa !129
  store i8 0, ptr %i.at, align 4, !tbaa !121
  store i32 0, ptr %i.av, align 8, !tbaa !130
  store ptr null, ptr %i.aw, align 8, !tbaa !117
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !114
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !115
  store i64 0, ptr %i.az, align 8, !tbaa !116
  store i32 0, ptr %i.ba, align 8, !tbaa !130
  store ptr null, ptr %i.bb, align 8, !tbaa !117
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !114
  store ptr %i.ba, ptr %i.bd, align 8, !tbaa !115
  store i64 0, ptr %i.be, align 8, !tbaa !116
  %i.qn = load ptr, ptr @_ZN4pbrt13RGBColorSpace10ACES2065_1E, align 8, !tbaa !119
  store ptr %i.qn, ptr %i.bf, align 8, !tbaa !119
  store i8 1, ptr %i.au, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  store ptr %i.bg, ptr %24, align 8, !tbaa !31
  store i64 8248453967725684084, ptr %i.bg, align 8
  store i64 8, ptr %i.bh, align 8, !tbaa !34
  store i8 0, ptr %i.di, align 8, !tbaa !32
  %i.qo = invoke noundef zeroext i1 @_ZNK4pbrt5Image5WriteENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_13ImageMetadataE(ptr noundef nonnull align 8 dereferenceable(152) %12, ptr nofree noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(304) %22)
          to label %bb.cq unwind label %bb.cr     ; 2 uses

bb.cq:                                            ; preds = %._crit_edge.i.i311
  %i.qp = zext i1 %i.qo to i8
  store i8 %i.qp, ptr %23, align 8, !tbaa !45
  store ptr null, ptr %i.bi, align 8, !tbaa !48
  %i.qq = load ptr, ptr %24, align 8, !tbaa !35   ; 2 uses
  %i.qr = icmp eq ptr %i.qq, %i.bg
  br i1 %i.qr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i316, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i316: ; preds = %bb.cq
  br i1 %i.qo, label %bb.dh, label %bb.cs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317: ; preds = %bb.cq
  %i.qs = load i64, ptr %i.bg, align 8, !tbaa !32
  %i.qt = add i64 %i.qs, 1
  call void @_ZdlPvm(ptr noundef %i.qq, i64 noundef %i.qt) #26
  %.pre1612 = load i8, ptr %23, align 8, !tbaa !45, !range !46
  %i.qu = trunc nuw i8 %.pre1612 to i1
  br i1 %i.qu, label %bb.dh, label %bb.cs

bb.cr:                                            ; preds = %._crit_edge.i.i311
  %i.qv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qw = load ptr, ptr %24, align 8, !tbaa !35   ; 2 uses
  %i.qx = icmp eq ptr %i.qw, %i.bg
  br i1 %i.qx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %bb.cr
  %i.qy = load i64, ptr %i.bg, align 8, !tbaa !32
  %i.qz = add i64 %i.qy, 1
  call void @_ZdlPvm(ptr noundef %i.qw, i64 noundef %i.qz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

bb.cs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.ct unwind label %bb.db

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33)
          to label %bb.cu unwind label %bb.dc

bb.cu:                                            ; preds = %bb.ct
  %i.ra = load ptr, ptr %27, align 8, !tbaa !35
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef 354, ptr noundef %i.ra)
          to label %bb.cv unwind label %bb.dd

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.cw unwind label %bb.de

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #25
  %i.rb = load ptr, ptr %27, align 8, !tbaa !35   ; 2 uses
  %i.rc = icmp eq ptr %i.rb, %i.bj
  br i1 %i.rc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321: ; preds = %bb.cw
  %i.rd = load i64, ptr %i.bj, align 8, !tbaa !32
  %i.re = add i64 %i.rd, 1
  call void @_ZdlPvm(ptr noundef %i.rb, i64 noundef %i.re) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  %i.rf = load ptr, ptr %25, align 8, !tbaa !51
  %.not.i.i.i324 = icmp eq ptr %i.rf, null
  br i1 %.not.i.i.i324, label %_ZN7testing7MessageD2Ev.exit326, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323
  %i.rg = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i325 unwind label %bb.da

.noexc.i.i325:                                    ; preds = %bb.cx
  br i1 %i.rg, label %bb.cy, label %_ZN7testing7MessageD2Ev.exit326

bb.cy:                                            ; preds = %.noexc.i.i325
  %i.rh = load ptr, ptr %25, align 8, !tbaa !51   ; 3 uses
  %i.ri = icmp eq ptr %i.rh, null
  br i1 %i.ri, label %_ZN7testing7MessageD2Ev.exit326, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.rj = load ptr, ptr %i.rh, align 8, !tbaa !53
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rl = load ptr, ptr %i.rk, align 8
  call void %i.rl(ptr noundef nonnull align 8 dereferenceable(128) %i.rh) #25, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit326

bb.da:                                            ; preds = %bb.cx
  %i.rm = landingpad { ptr, i32 }
          catch ptr null
  %i.rn = extractvalue { ptr, i32 } %i.rm, 0
  call void @__clang_call_terminate(ptr %i.rn) #27
  unreachable

_ZN7testing7MessageD2Ev.exit326:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323, %.noexc.i.i325, %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %bb.dh

bb.db:                                            ; preds = %bb.cs
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.dc:                                            ; preds = %bb.ct
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329

bb.dd:                                            ; preds = %bb.cu
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.de:                                            ; preds = %bb.cv
  %i.rr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #25
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.pn153 = phi { ptr, i32 } [ %i.rr, %bb.de ], [ %i.rq, %bb.dd ] ; 2 uses
  %i.rs = load ptr, ptr %27, align 8, !tbaa !35   ; 2 uses
  %i.rt = icmp eq ptr %i.rs, %i.bj
  br i1 %i.rt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327: ; preds = %bb.df
  %i.ru = load i64, ptr %i.bj, align 8, !tbaa !32
  %i.rv = add i64 %i.ru, 1
  call void @_ZdlPvm(ptr noundef %i.rs, i64 noundef %i.rv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327, %bb.dc
  %.pn153.pn = phi { ptr, i32 } [ %i.rp, %bb.dc ], [ %.pn153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327 ], [ %.pn153, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #25
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, %bb.db
  %.pn153.pn.pn = phi { ptr, i32 } [ %.pn153.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329 ], [ %i.ro, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

bb.dh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317, %_ZN7testing7MessageD2Ev.exit326
  %i.rw = load ptr, ptr %i.bi, align 8, !tbaa !48
  %.not.i.i.i330 = icmp eq ptr %i.rw, null
  br i1 %.not.i.i.i330, label %_ZN7testing15AssertionResultD2Ev.exit335, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.rx = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i331 unwind label %bb.dl

.noexc.i.i331:                                    ; preds = %bb.di
end_hunk_0
