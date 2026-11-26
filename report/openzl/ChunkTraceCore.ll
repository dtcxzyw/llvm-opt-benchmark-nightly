Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/ChunkTraceCore?download=true
inline.NumInlined: 803
inline.NumDeleted: 489
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6openzl10visualizer14ChunkTraceCore21createSourceForStreamEPKcRK9ZL_DataIDRNS0_6StreamERSt6vectorINS0_5CodecESaISA_EERmm:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 248 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i8 0, i64 40, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 296 ; 2 uses
  store i64 %5, ptr %i.aa, align 8, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 304
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 312 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 336 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i8 0, i64 48, i1 false)
  %i.af = load i64, ptr %4, align 8, !tbaa !16
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !62
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !65 ; 30 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !66
  %.not.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !14
  %i.al = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.b
  br i1 %i.am, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

bb.g:                                             ; preds = %bb.f
  %i.an = load i64, ptr %i.k, align 8, !tbaa !20  ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.ap, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.f
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !18
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !19
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !19
  %.pre = load i64, ptr %i.k, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.g
  %i.ar = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.an, %bb.g ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !20
  store ptr %i.b, ptr %6, align 8, !tbaa !18
  store i64 0, ptr %i.k, align 8, !tbaa !20
  store i8 0, ptr %i.b, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 64 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 80 ; 3 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !14
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !18  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.r
  br i1 %i.ax, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ay = load i64, ptr %i.s, align 8, !tbaa !20  ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !18
  %i.bb = load i64, ptr %i.r, align 8, !tbaa !19
  store i64 %i.bb, ptr %i.av, align 8, !tbaa !19
  %.pre22 = load i64, ptr %i.s, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i, %bb.h
  %i.bc = phi i64 [ %.pre22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ], [ %i.ay, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !20
  store ptr %i.r, ptr %i.q, align 8, !tbaa !18
  store i64 0, ptr %i.s, align 8, !tbaa !20
  store i8 0, ptr %i.r, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.be, ptr noundef nonnull align 8 dereferenceable(200) %i.t, i64 48, i1 false), !tbaa.struct !68
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !67
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !67
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !69
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.bn = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !67
  store <2 x ptr> %i.bn, ptr %i.bl, align 8, !tbaa !67
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 184
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 184
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !70
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ah, i64 192
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  %i.bt = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !67
  store <2 x ptr> %i.bt, ptr %i.br, align 8, !tbaa !67
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ah, i64 208
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !71
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ah, i64 216 ; 2 uses
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !58  ; 3 uses
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !58
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 224
  %i.ca = load i64, ptr %i.w, align 8, !tbaa !59  ; 2 uses
  store i64 %i.ca, ptr %i.bz, align 8, !tbaa !59
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ah, i64 232 ; 2 uses
  %i.cc = load ptr, ptr %i.x, align 8, !tbaa !72  ; 3 uses
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !73
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !74
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !74
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ah, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !76
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ah, i64 264 ; 4 uses
  store ptr null, ptr %i.ch, align 8, !tbaa !77
  %i.ci = icmp eq ptr %i.by, %i.v
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i
  store ptr %i.ch, ptr %i.bx, align 8, !tbaa !58
  %i.cj = load ptr, ptr %i.v, align 8, !tbaa !77
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !77
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i
  %i.ck = phi ptr [ %i.ch, %bb.i ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6openzl10visualizer5CodecC2EOS1_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !78
  %i.cn = sext i32 %i.cm to i64
  %i.co = urem i64 %i.cn, %i.ca
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.co
  store ptr %i.cb, ptr %i.cp, align 8, !tbaa !79
  br label %_ZN6openzl10visualizer5CodecC2EOS1_.exit

_ZN6openzl10visualizer5CodecC2EOS1_.exit:         ; preds = %bb.j, %bb.k
  store i64 0, ptr %i.z, align 8, !tbaa !80
  store i64 1, ptr %i.w, align 8, !tbaa !59
  store ptr null, ptr %i.v, align 8, !tbaa !77
  store ptr %i.v, ptr %i.u, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ah, i64 272
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 272 ; 2 uses
  %i.cs = load <2 x ptr>, ptr %i.cr, align 8, !tbaa !81
  store <2 x ptr> %i.cs, ptr %i.cq, align 8, !tbaa !81
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ah, i64 288
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 288
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !82
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i8 0, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ah, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ah, i64 312
  %i.cy = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !67
  store <2 x ptr> %i.cy, ptr %i.cx, align 8, !tbaa !67
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ah, i64 328
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 328
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !83
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ah, i64 336
  %i.dd = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !67
  store <2 x ptr> %i.dd, ptr %i.dc, align 8, !tbaa !67
  %i.de = getelementptr inbounds nuw i8, ptr %i.ah, i64 352
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 352
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !83
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !65
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 360
  store ptr %i.di, ptr %i.ag, align 8, !tbaa !65
  br label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit

bb.l:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ah, ptr noundef nonnull align 8 dereferenceable(360) %6)
          to label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit unwind label %bb.t

_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZN6openzl10visualizer5CodecC2EOS1_.exit, %bb.l
  %i.dj = load i64, ptr %4, align 8, !tbaa !16    ; 3 uses
  %i.dk = load ptr, ptr %3, align 8, !tbaa !84
  %i.dl = getelementptr inbounds nuw [360 x i8], ptr %i.dk, i64 %i.dj ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 336 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 344 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !85 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 352 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !83 ; 2 uses
  %.not.i = icmp eq ptr %i.do, %i.dq
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit
  %i.dr = load i32, ptr %1, align 4, !tbaa !78
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !78
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store ptr %i.ds, ptr %i.dn, align 8, !tbaa !85
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit

bb.n:                                             ; preds = %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit
  %i.dt = load ptr, ptr %i.dm, align 8, !tbaa !86 ; 4 uses
  %i.du = ptrtoint ptr %i.do to i64
  %i.dv = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dw = sub i64 %i.du, %i.dv                    ; 5 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775804
  br i1 %i.dx, label %bb.o, label %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
          to label %.noexc18 unwind label %bb.t

.noexc18:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.dy = ashr exact i64 %i.dw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i.i, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 2305843009213693951)
  %i.ec = select i1 %i.ea, i64 2305843009213693951, i64 %i.eb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ec, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ed = shl nuw nsw i64 %i.ec, 2
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #21
          to label %.noexc19 unwind label %bb.t   ; 4 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.dw ; 2 uses
  %i.eg = load i32, ptr %1, align 4, !tbaa !78
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !78
  %i.eh = icmp sgt i64 %i.dw, 0
  br i1 %i.eh, label %bb.p, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.p:                                             ; preds = %.noexc19
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ee, ptr align 4 %i.dt, i64 %i.dw, i1 false)
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.p, %.noexc19
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %7 = ptrtoint ptr %i.dq to i64
  %8 = sub i64 %7, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %8) #22
  %.pre23.pre = load i64, ptr %4, align 8, !tbaa !16
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %.pre23 = phi i64 [ %.pre23.pre, %bb.q ], [ %i.dj, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i ]
  store ptr %i.ee, ptr %i.dm, align 8, !tbaa !86
  store ptr %i.ei, ptr %i.dn, align 8, !tbaa !85
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ec
  store ptr %i.ej, ptr %i.dp, align 8, !tbaa !83
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.m
  %i.ek = phi i64 [ %.pre23, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.dj, %bb.m ]
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.ek, ptr %i.el, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.em = load i64, ptr %4, align 8, !tbaa !16
  %i.en = add i64 %i.em, 1
  store i64 %i.en, ptr %4, align 8, !tbaa !16
  %i.eo = load ptr, ptr %i.ad, align 8, !tbaa !86 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 352
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !83
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = sub i64 %i.er, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.et) #22
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i:       ; preds = %bb.r, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit
  %i.eu = load ptr, ptr %i.ac, align 8, !tbaa !86 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 328
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !83
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ez) #22
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i:      ; preds = %bb.s, %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i
  call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.t) #19
  %i.fa = load ptr, ptr %i.q, align 8, !tbaa !18  ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.r
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i
  %i.fc = load i64, ptr %i.r, align 8, !tbaa !19
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.fe = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.b
  br i1 %i.ff, label %_ZN6openzl10visualizer5CodecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.fg = load i64, ptr %i.b, align 8, !tbaa !19
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #22
  br label %_ZN6openzl10visualizer5CodecD2Ev.exit

_ZN6openzl10visualizer5CodecD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void

bb.t:                                             ; preds = %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %bb.o, %bb.l
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6openzl10visualizer5CodecD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %i.fi
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl10visualizer5CodecD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit:         ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #22
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2:        ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.o) #19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2
  %i.t = load i64, ptr %i.r, align 8, !tbaa !19
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.v = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !19
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl10visualizer14ChunkTraceCore19createSinkForStreamEPKcRK9ZL_DataIDRNS0_6StreamERSt6vectorINS0_5CodecESaISA_EERmm(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(152) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, i64 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.openzl::visualizer::Codec", align 8 ; 45 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !14
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.28) #20
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8, !tbaa !16
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %6, align 8, !tbaa !18
  %i.g = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.g, ptr %i.b, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %0, align 1, !tbaa !19
  store i8 %i.i, ptr %i.h, align 1, !tbaa !19
  br label %bb.e

end_hunk_0
begin_hunk_1_@_ZN6openzl10visualizer14ChunkTraceCore19createSinkForStreamEPKcRK9ZL_DataIDRNS0_6StreamERSt6vectorINS0_5CodecESaISA_EERmm:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 248 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i8 0, i64 40, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 296 ; 2 uses
  store i64 %5, ptr %i.aa, align 8, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 304
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 312 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 336 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i8 0, i64 48, i1 false)
  %i.af = load i64, ptr %4, align 8, !tbaa !16
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !62
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !65 ; 30 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !66
  %.not.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !14
  %i.al = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.b
  br i1 %i.am, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

bb.g:                                             ; preds = %bb.f
  %i.an = load i64, ptr %i.k, align 8, !tbaa !20  ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.ap, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.f
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !18
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !19
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !19
  %.pre = load i64, ptr %i.k, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.g
  %i.ar = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.an, %bb.g ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !20
  store ptr %i.b, ptr %6, align 8, !tbaa !18
  store i64 0, ptr %i.k, align 8, !tbaa !20
  store i8 0, ptr %i.b, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 64 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 80 ; 3 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !14
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !18  ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.r
  br i1 %i.ax, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ay = load i64, ptr %i.s, align 8, !tbaa !20  ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !18
  %i.bb = load i64, ptr %i.r, align 8, !tbaa !19
  store i64 %i.bb, ptr %i.av, align 8, !tbaa !19
  %.pre22 = load i64, ptr %i.s, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i, %bb.h
  %i.bc = phi i64 [ %.pre22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ], [ %i.ay, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !20
  store ptr %i.r, ptr %i.q, align 8, !tbaa !18
  store i64 0, ptr %i.s, align 8, !tbaa !20
  store i8 0, ptr %i.r, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.be, ptr noundef nonnull align 8 dereferenceable(200) %i.t, i64 48, i1 false), !tbaa.struct !68
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !67
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !67
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !69
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.bn = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !67
  store <2 x ptr> %i.bn, ptr %i.bl, align 8, !tbaa !67
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 184
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 184
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !70
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ah, i64 192
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  %i.bt = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !67
  store <2 x ptr> %i.bt, ptr %i.br, align 8, !tbaa !67
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ah, i64 208
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !71
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ah, i64 216 ; 2 uses
  %i.by = load ptr, ptr %i.u, align 8, !tbaa !58  ; 3 uses
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !58
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 224
  %i.ca = load i64, ptr %i.w, align 8, !tbaa !59  ; 2 uses
  store i64 %i.ca, ptr %i.bz, align 8, !tbaa !59
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ah, i64 232 ; 2 uses
  %i.cc = load ptr, ptr %i.x, align 8, !tbaa !72  ; 3 uses
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !73
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !74
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !74
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ah, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !76
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ah, i64 264 ; 4 uses
  store ptr null, ptr %i.ch, align 8, !tbaa !77
  %i.ci = icmp eq ptr %i.by, %i.v
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i
  store ptr %i.ch, ptr %i.bx, align 8, !tbaa !58
  %i.cj = load ptr, ptr %i.v, align 8, !tbaa !77
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !77
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i
  %i.ck = phi ptr [ %i.ch, %bb.i ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6openzl10visualizer5CodecC2EOS1_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !78
  %i.cn = sext i32 %i.cm to i64
  %i.co = urem i64 %i.cn, %i.ca
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.co
  store ptr %i.cb, ptr %i.cp, align 8, !tbaa !79
  br label %_ZN6openzl10visualizer5CodecC2EOS1_.exit

_ZN6openzl10visualizer5CodecC2EOS1_.exit:         ; preds = %bb.j, %bb.k
  store i64 0, ptr %i.z, align 8, !tbaa !80
  store i64 1, ptr %i.w, align 8, !tbaa !59
  store ptr null, ptr %i.v, align 8, !tbaa !77
  store ptr %i.v, ptr %i.u, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ah, i64 272
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 272 ; 2 uses
  %i.cs = load <2 x ptr>, ptr %i.cr, align 8, !tbaa !81
  store <2 x ptr> %i.cs, ptr %i.cq, align 8, !tbaa !81
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ah, i64 288
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 288
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !82
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i8 0, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ah, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ah, i64 312
  %i.cy = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !67
  store <2 x ptr> %i.cy, ptr %i.cx, align 8, !tbaa !67
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ah, i64 328
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 328
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !83
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ah, i64 336
  %i.dd = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !67
  store <2 x ptr> %i.dd, ptr %i.dc, align 8, !tbaa !67
  %i.de = getelementptr inbounds nuw i8, ptr %i.ah, i64 352
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 352
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !83
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !65
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 360
  store ptr %i.di, ptr %i.ag, align 8, !tbaa !65
  br label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit

bb.l:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ah, ptr noundef nonnull align 8 dereferenceable(360) %6)
          to label %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit unwind label %bb.t

_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZN6openzl10visualizer5CodecC2EOS1_.exit, %bb.l
  %i.dj = load i64, ptr %4, align 8, !tbaa !16    ; 3 uses
  %i.dk = load ptr, ptr %3, align 8, !tbaa !84
  %i.dl = getelementptr inbounds nuw [360 x i8], ptr %i.dk, i64 %i.dj ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 312 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 320 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !85 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 328 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !83 ; 2 uses
  %.not.i = icmp eq ptr %i.do, %i.dq
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit
  %i.dr = load i32, ptr %1, align 4, !tbaa !78
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !78
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store ptr %i.ds, ptr %i.dn, align 8, !tbaa !85
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit

bb.n:                                             ; preds = %_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE9push_backEOS2_.exit
  %i.dt = load ptr, ptr %i.dm, align 8, !tbaa !86 ; 4 uses
  %i.du = ptrtoint ptr %i.do to i64
  %i.dv = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dw = sub i64 %i.du, %i.dv                    ; 5 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775804
  br i1 %i.dx, label %bb.o, label %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
          to label %.noexc18 unwind label %bb.t

.noexc18:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.dy = ashr exact i64 %i.dw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i.i, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 2305843009213693951)
  %i.ec = select i1 %i.ea, i64 2305843009213693951, i64 %i.eb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ec, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ed = shl nuw nsw i64 %i.ec, 2
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #21
          to label %.noexc19 unwind label %bb.t   ; 4 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.dw ; 2 uses
  %i.eg = load i32, ptr %1, align 4, !tbaa !78
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !78
  %i.eh = icmp sgt i64 %i.dw, 0
  br i1 %i.eh, label %bb.p, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.p:                                             ; preds = %.noexc19
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ee, ptr align 4 %i.dt, i64 %i.dw, i1 false)
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.p, %.noexc19
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %7 = ptrtoint ptr %i.dq to i64
  %8 = sub i64 %7, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %8) #22
  %.pre23.pre = load i64, ptr %4, align 8, !tbaa !16
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %.pre23 = phi i64 [ %.pre23.pre, %bb.q ], [ %i.dj, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i ]
  store ptr %i.ee, ptr %i.dm, align 8, !tbaa !86
  store ptr %i.ei, ptr %i.dn, align 8, !tbaa !85
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ec
  store ptr %i.ej, ptr %i.dp, align 8, !tbaa !83
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.m
  %i.ek = phi i64 [ %.pre23, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.dj, %bb.m ]
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.ek, ptr %i.el, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.em = load i64, ptr %4, align 8, !tbaa !16
  %i.en = add i64 %i.em, 1
  store i64 %i.en, ptr %4, align 8, !tbaa !16
  %i.eo = load ptr, ptr %i.ad, align 8, !tbaa !86 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 352
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !83
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = sub i64 %i.er, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.et) #22
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i:       ; preds = %bb.r, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit
  %i.eu = load ptr, ptr %i.ac, align 8, !tbaa !86 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 328
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !83
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ez) #22
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i:      ; preds = %bb.s, %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i
  call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.t) #19
  %i.fa = load ptr, ptr %i.q, align 8, !tbaa !18  ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.r
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i
  %i.fc = load i64, ptr %i.r, align 8, !tbaa !19
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.fe = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.b
  br i1 %i.ff, label %_ZN6openzl10visualizer5CodecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.fg = load i64, ptr %i.b, align 8, !tbaa !19
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #22
  br label %_ZN6openzl10visualizer5CodecD2Ev.exit

_ZN6openzl10visualizer5CodecD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void

bb.t:                                             ; preds = %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %bb.o, %bb.l
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6openzl10visualizer5CodecD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %i.fi
}

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl10visualizer14ChunkTraceCore24finalizeUnsourcedStreamsEPKcRSt3mapI9ZL_DataIDNS0_6StreamENS0_25ZL_DataIDCustomComparatorESaISt4pairIKS5_S6_EEERSt6vectorINS0_5CodecESaISF_EERmm(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, i64 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not14 = icmp eq ptr %i.b, %i.c
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.011.015 = phi ptr [ %i.i, %bb.c ], [ %i.b, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 152
  %i.e = load i8, ptr %i.d, align 8, !tbaa !93, !range !94, !noundef !95
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 32
  tail call void @_ZN6openzl10visualizer14ChunkTraceCore21createSourceForStreamEPKcRK9ZL_DataIDRNS0_6StreamERSt6vectorINS0_5CodecESaISA_EERmm(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 8 dereferenceable(152) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.i = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.011.015) #23 ; 2 uses
  %.not = icmp eq ptr %i.i, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl10visualizer14ChunkTraceCore25finalizeUnconsumedStreamsEPKcRSt3mapI9ZL_DataIDNS0_6StreamENS0_25ZL_DataIDCustomComparatorESaISt4pairIKS5_S6_EEERSt6vectorINS0_5CodecESaISF_EERmm(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, i64 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not14 = icmp eq ptr %i.b, %i.c
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.011.015 = phi ptr [ %i.i, %bb.c ], [ %i.b, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 136
  %i.e = load i8, ptr %i.d, align 8, !tbaa !93, !range !94, !noundef !95
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 32
  tail call void @_ZN6openzl10visualizer14ChunkTraceCore19createSinkForStreamEPKcRK9ZL_DataIDRNS0_6StreamERSt6vectorINS0_5CodecESaISA_EERmm(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 8 dereferenceable(152) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.i = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.011.015) #23 ; 2 uses
  %.not = icmp eq ptr %i.i, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6openzl10visualizer14ChunkTraceCore12emptyPreviewB5cxx11E7ZL_Type(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::variant") align 8 captures(none) initializes((0, 25)) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.split, label %_ZNSt6vectorIhSaIhEED2Ev.exit

.split:                                           ; preds = %bb.a
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %1, i1 true)
  switch i32 %i.c, label %_ZNSt6vectorIhSaIhEED2Ev.exit [
    i32 3, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
    i32 2, label %_ZNSt6vectorIlSaIlEED2Ev.exit
  ]

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %.split
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store i8 2, ptr %i.d, align 8, !tbaa !97
  br label %bb.b

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %.split
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.e, align 8, !tbaa !97
  br label %bb.b

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %.split, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, i8 0, i64 25, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !100    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !18 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !19
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !115

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !103
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl10visualizer14ChunkTraceCore16getStreamPreviewB5cxx11EPKv7ZL_TypemmPKj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::variant") align 8 captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %8 = alloca %"class.std::vector.46", align 16   ; 10 uses
  %9 = alloca %"class.std::vector.56", align 16   ; 8 uses
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %.split, label %bb.aq

.split:                                           ; preds = %bb.a
  %i.d = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  switch i32 %i.d, label %bb.aq [
    i32 2, label %bb.b
    i32 3, label %bb.m
    i32 1, label %bb.am
    i32 0, label %bb.am
  ]

bb.b:                                             ; preds = %.split
  %i.e = icmp eq ptr %1, null
  %i.f = icmp eq i64 %4, 0
  %or.cond.i = or i1 %i.e, %i.f
  br i1 %or.cond.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i: ; preds = %bb.b
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %4, i64 100) ; 3 uses
  %i.g = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #21
          to label %.lr.ph.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !124 ; 6 uses

.lr.ph.i:                                         ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.speculated.i ; 4 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %3)
  %i.k = icmp eq i64 %i.j, 1
  %i.l = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %3, i1 true) ; 2 uses
  %switch.i = icmp samesign ult i64 %i.l, 4
  %or.cond26.i = select i1 %i.k, i1 %switch.i, i1 false
  br i1 %or.cond26.i, label %.split.i.i, label %.split.i

.split.i.i:                                       ; preds = %.lr.ph.i, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i ], [ %i.h, %.lr.ph.i ]
  %.sroa.13.0 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i ], [ %i.i, %.lr.ph.i ]
  %i.m = phi ptr [ %i.aq, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i ], [ %i.h, %.lr.ph.i ] ; 6 uses
  %i.n = phi ptr [ %i.ar, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i ], [ %i.i, %.lr.ph.i ] ; 5 uses
  %i.o = phi ptr [ %.sroa.9.0, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i ], [ %i.h, %.lr.ph.i ] ; 4 uses
  %.024.i = phi i64 [ %i.as, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i ], [ 0, %.lr.ph.i ] ; 5 uses
  switch i64 %i.l, label %bb.f [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.c:                                             ; preds = %.split.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.024.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !19, !noalias !124
  %i.r = sext i8 %i.q to i64
  br label %_ZN6openzl10visualizer12_GLOBAL__N_115readNumericDataEmPKhm.exit.i

bb.d:                                             ; preds = %.split.i.i
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.024.i
  %i.t = load i16, ptr %i.s, align 2, !tbaa !126, !noalias !124
  %i.u = sext i16 %i.t to i64
  br label %_ZN6openzl10visualizer12_GLOBAL__N_115readNumericDataEmPKhm.exit.i

bb.e:                                             ; preds = %.split.i.i
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.024.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !78, !noalias !124
  %i.x = sext i32 %i.w to i64
  br label %_ZN6openzl10visualizer12_GLOBAL__N_115readNumericDataEmPKhm.exit.i

bb.f:                                             ; preds = %.split.i.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.024.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !16, !noalias !124
  br label %_ZN6openzl10visualizer12_GLOBAL__N_115readNumericDataEmPKhm.exit.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #19, !noalias !124 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull @.str.24)
          to label %bb.g unwind label %.body.thread.i, !noalias !124

bb.g:                                             ; preds = %.split.i
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #20
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !124

.noexc17.i:                                       ; preds = %bb.g
  unreachable

.body.thread.i:                                   ; preds = %.split.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aa) #19, !noalias !124
  br label %bb.l

_ZN6openzl10visualizer12_GLOBAL__N_115readNumericDataEmPKhm.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.r, %bb.c ], [ %i.u, %bb.d ], [ %i.x, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6openzl10visualizer12_GLOBAL__N_115readNumericDataEmPKhm.exit.i
  store i64 %.0.i.i, ptr %i.o, align 8, !tbaa !16, !noalias !124
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i

bb.i:                                             ; preds = %_ZN6openzl10visualizer12_GLOBAL__N_115readNumericDataEmPKhm.exit.i
  %i.ac = ptrtoint ptr %i.o to i64
  %i.ad = ptrtoint ptr %i.m to i64                ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 5 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.j, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
          to label %.noexc18.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !124

.noexc18.i:                                       ; preds = %bb.j
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.i
  %i.ag = ashr exact i64 %i.ae, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975)
  %i.ak = select i1 %i.ai, i64 1152921504606846975, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #21
          to label %.noexc19.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !124 ; 5 uses

.noexc19.i:                                       ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i64 %.0.i.i, ptr %i.an, align 8, !tbaa !16, !noalias !124
  %i.ao = icmp sgt i64 %i.ae, 0
  br i1 %i.ao, label %bb.k, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i

bb.k:                                             ; preds = %.noexc19.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr align 8 %i.m, i64 %i.ae, i1 false), !noalias !124
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %.noexc19.i
  %10 = ptrtoint ptr %i.n to i64
  %11 = sub i64 %10, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %11) #22, !noalias !124
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak ; 2 uses
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i

_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i:         ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i, %bb.h
  %.sroa.0.1 = phi ptr [ %i.am, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0.0, %bb.h ] ; 2 uses
  %.pn = phi ptr [ %i.an, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i ], [ %i.o, %bb.h ]
  %.sroa.13.1 = phi ptr [ %i.ap, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i ], [ %.sroa.13.0, %bb.h ] ; 2 uses
  %i.aq = phi ptr [ %i.am, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i ], [ %i.m, %bb.h ]
  %i.ar = phi ptr [ %i.ap, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i ], [ %i.n, %bb.h ]
  %.sroa.9.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.as = add nuw nsw i64 %.024.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.as, %.sroa.speculated.i
  br i1 %exitcond.not.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.split.i.i, !llvm.loop !118

.loopexit.split-lp.loopexit.i:                    ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.j, %bb.g, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i
  %i.at = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i ], [ %i.n, %bb.j ], [ %i.i, %bb.g ]
  %i.au = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i ], [ %i.m, %bb.j ], [ %i.h, %bb.g ]
  %lpad.loopexit.split-lp27.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i
  %i.av = phi ptr [ %i.at, %.loopexit.split-lp.loopexit.split-lp.i ], [ %i.n, %.loopexit.split-lp.loopexit.i ]
  %i.aw = phi ptr [ %i.au, %.loopexit.split-lp.loopexit.split-lp.i ], [ %i.m, %.loopexit.split-lp.loopexit.i ] ; 2 uses
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp27.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.split-lp.loopexit.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.l

bb.l:                                             ; preds = %.body.i, %.body.thread.i
  %.pn38.i = phi { ptr, i32 } [ %i.ab, %.body.thread.i ], [ %.pn.i, %.body.i ]
  %i.ax = phi ptr [ %i.h, %.body.thread.i ], [ %i.aw, %.body.i ] ; 2 uses
  %i.ay = phi ptr [ %i.i, %.body.thread.i ], [ %i.av, %.body.i ]
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #22, !noalias !124
  br label %common.resume

common.resume:                                    ; preds = %bb.ao, %bb.ap, %.body.i, %bb.l, %bb.as, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.fu, %bb.as ], [ %.pn.pn.pn.pn.i, %bb.al ], [ %.pn38.i, %bb.l ], [ %.pn.i, %.body.i ], [ %i.fi, %bb.ap ], [ %i.fi, %bb.ao ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i, %bb.b
  %.sroa.0.2 = phi ptr [ null, %bb.b ], [ %.sroa.0.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i ]
  %.sroa.9.1 = phi ptr [ null, %bb.b ], [ %.sroa.9.0, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i ]
  %.sroa.13.2 = phi ptr [ null, %bb.b ], [ %.sroa.13.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i ]
  store ptr %.sroa.0.2, ptr %0, align 8, !tbaa !129
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.1, ptr %i.bc, align 8, !tbaa !130
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.13.2, ptr %i.bd, align 8, !tbaa !131
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.be, align 8, !tbaa !97
  br label %bb.at

bb.m:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.bf = icmp eq ptr %1, null
  %i.bg = icmp eq ptr %5, null
  %or.cond.i11 = or i1 %i.bf, %i.bg
  %i.bh = icmp eq i64 %4, 0
  %or.cond3.i = or i1 %i.bh, %or.cond.i11
  br i1 %or.cond3.i, label %_ZN6openzl10visualizer12_GLOBAL__N_113getStringDataB5cxx11EPKvmPKj.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false), !alias.scope !132
  %i.bi = icmp ugt i64 %4, 288230376151711743
  br i1 %i.bi, label %bb.o, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #20
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.o
  unreachable

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bk = shl nuw nsw i64 %4, 5
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #21
          to label %.lr.ph106.i unwind label %bb.p ; 3 uses

.lr.ph106.i:                                      ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bl, ptr %8, align 16, !tbaa !100
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !101
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %4
  store ptr %i.bn, ptr %i.bj, align 16, !tbaa !103
  %.sroa.speculated.i12 = tail call i64 @llvm.umin.i64(i64 %4, i64 4)
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 13 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i, %bb.o
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i, %.lr.ph106.i
  %.0105.i = phi i64 [ 0, %.lr.ph106.i ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i ] ; 2 uses
  %.022104.i = phi i64 [ 0, %.lr.ph106.i ], [ %i.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0105.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !78, !noalias !132 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !132
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %.022104.i ; 2 uses
  %i.bx = zext i32 %i.bv to i64                   ; 3 uses
  store ptr %i.bo, ptr %6, align 8, !tbaa !14, !noalias !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !132
  store i64 %i.bx, ptr %i.a, align 8, !tbaa !16, !noalias !132
  %i.by = icmp ugt i32 %i.bv, 15
  br i1 %i.by, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.q
  %i.bz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc36.i unwind label %.loopexit73.i ; 2 uses

.noexc36.i:                                       ; preds = %.noexc.i.i
  store ptr %i.bz, ptr %6, align 8, !tbaa !18, !noalias !132
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !132
  store i64 %i.ca, ptr %i.bo, align 8, !tbaa !19, !noalias !132
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc36.i, %bb.q
  %i.cb = phi ptr [ %i.bz, %.noexc36.i ], [ %i.bo, %bb.q ] ; 2 uses
  switch i32 %i.bv, label %bb.s [
    i32 1, label %bb.r
    i32 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %i.cc = load i8, ptr %i.bw, align 1, !tbaa !19, !noalias !132
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !19
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr readonly align 1 %i.bw, i64 %i.bx, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !132 ; 2 uses
  store i64 %i.cd, ptr %i.bp, align 8, !tbaa !20, !noalias !132
  %i.ce = load ptr, ptr %6, align 8, !tbaa !18, !noalias !132
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  store i8 0, ptr %i.cf, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !132
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !132
  store ptr %i.bq, ptr %7, align 8, !tbaa !14, !noalias !132
  store i64 0, ptr %i.br, align 8, !tbaa !20, !noalias !132
  store i8 0, ptr %i.bq, align 8, !tbaa !19, !noalias !132
  %i.cg = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 10, i64 noundef 0) #19
  %.not.i = icmp eq i64 %i.cg, -1
  br i1 %.not.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ch = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 9, i64 noundef 0) #19
  %.not30.i = icmp eq i64 %i.ch, -1
  br i1 %.not30.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ci = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 13, i64 noundef 0) #19
  %.not31.i = icmp eq i64 %i.ci, -1
  br i1 %.not31.i, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.cj = load ptr, ptr %6, align 8, !tbaa !18, !noalias !132 ; 2 uses
  %i.ck = load i64, ptr %i.bp, align 8, !tbaa !20, !noalias !132 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  %.not70102.i = icmp samesign eq i64 %i.ck, 0
  br i1 %.not70102.i, label %.loopexit.i, label %.lr.ph.i13

.loopexit73.i:                                    ; preds = %.noexc.i.i
  %lpad.loopexit75.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i

.lr.ph.i13:                                       ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  %.sroa.062.0103.i = phi ptr [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i ], [ %i.cj, %bb.w ] ; 2 uses
  %i.cm = load i8, ptr %.sroa.062.0103.i, align 1, !tbaa !19 ; 2 uses
  %i.cn = load i64, ptr %i.br, align 8, !tbaa !20, !noalias !132 ; 7 uses
  switch i8 %i.cm, label %bb.aa [
    i8 10, label %bb.x
    i8 9, label %bb.y
    i8 13, label %bb.z
  ]

bb.x:                                             ; preds = %.lr.ph.i13
  %i.co = and i64 %i.cn, -2
  %i.cp = icmp eq i64 %i.co, 4611686018427387902
  br i1 %i.cp, label %.invoke.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i46.invoke.i

.invoke.i:                                        ; preds = %bb.z, %bb.y, %bb.x
end_hunk_1
