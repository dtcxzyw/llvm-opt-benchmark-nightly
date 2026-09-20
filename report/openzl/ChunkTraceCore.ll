Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/ChunkTraceCore?download=true
inline.NumInlined: 803
inline.NumDeleted: 489
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6openzl10visualizer14ChunkTraceCore21createSourceForStreamEPKcRK9ZL_DataIDRNS0_6StreamERSt6vectorINS0_5CodecESaISA_EERmm:bb.a
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
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !83
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
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 7 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775804
  br i1 %i.dx, label %bb.o, label %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
          to label %.noexc18 unwind label %bb.t

.noexc18:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.dy = ashr exact i64 %i.dw, 2
  %mul2.i.i = ashr exact i64 %i.dw, 1
  %7 = call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.dz = icmp ult i64 %7, %i.dy
  %i.ea = call i64 @llvm.umin.i64(i64 %7, i64 2305843009213693951)
  %i.eb = select i1 %i.dz, i64 2305843009213693951, i64 %i.ea ; 2 uses
  %i.ec = shl nuw nsw i64 %i.eb, 2
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #21
          to label %.noexc19 unwind label %bb.t   ; 4 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.dw ; 2 uses
  %i.ef = load i32, ptr %1, align 4, !tbaa !78
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !78
  %i.eg = icmp sgt i64 %i.dw, 0
  br i1 %i.eg, label %bb.p, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.p:                                             ; preds = %.noexc19
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ed, ptr align 4 %i.dt, i64 %i.dw, i1 false)
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.p, %.noexc19
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dw) #22
  %.pre23.pre = load i64, ptr %4, align 8, !tbaa !16
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %.pre23 = phi i64 [ %.pre23.pre, %bb.q ], [ %i.dj, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i ]
  store ptr %i.ed, ptr %i.dm, align 8, !tbaa !86
  store ptr %i.eh, ptr %i.dn, align 8, !tbaa !85
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.eb
  store ptr %i.ei, ptr %i.dp, align 8, !tbaa !83
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.m
  %i.ej = phi i64 [ %.pre23, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.dj, %bb.m ]
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.ej, ptr %i.ek, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.el = load i64, ptr %4, align 8, !tbaa !16
  %i.em = add i64 %i.el, 1
  store i64 %i.em, ptr %4, align 8, !tbaa !16
  %i.en = load ptr, ptr %i.ad, align 8, !tbaa !86 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 352
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !83
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.es) #22
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i:       ; preds = %bb.r, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit
  %i.et = load ptr, ptr %i.ac, align 8, !tbaa !86 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 328
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !83
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #22
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i:      ; preds = %bb.s, %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i
  call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.t) #19
  %i.ez = load ptr, ptr %i.q, align 8, !tbaa !18  ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.r
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i
  %i.fb = load i64, ptr %i.r, align 8, !tbaa !19
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.fd = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.b
  br i1 %i.fe, label %_ZN6openzl10visualizer5CodecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ff = load i64, ptr %i.b, align 8, !tbaa !19
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #22
  br label %_ZN6openzl10visualizer5CodecD2Ev.exit

_ZN6openzl10visualizer5CodecD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void

bb.t:                                             ; preds = %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %bb.o, %bb.l
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6openzl10visualizer5CodecD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %i.fh
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
end_hunk_0
begin_hunk_1_@_ZN6openzl10visualizer14ChunkTraceCore19createSinkForStreamEPKcRK9ZL_DataIDRNS0_6StreamERSt6vectorINS0_5CodecESaISA_EERmm:bb.a
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
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !83
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
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 7 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775804
  br i1 %i.dx, label %bb.o, label %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
          to label %.noexc18 unwind label %bb.t

.noexc18:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.dy = ashr exact i64 %i.dw, 2
  %mul2.i.i = ashr exact i64 %i.dw, 1
  %7 = call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.dz = icmp ult i64 %7, %i.dy
  %i.ea = call i64 @llvm.umin.i64(i64 %7, i64 2305843009213693951)
  %i.eb = select i1 %i.dz, i64 2305843009213693951, i64 %i.ea ; 2 uses
  %i.ec = shl nuw nsw i64 %i.eb, 2
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #21
          to label %.noexc19 unwind label %bb.t   ; 4 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.dw ; 2 uses
  %i.ef = load i32, ptr %1, align 4, !tbaa !78
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !78
  %i.eg = icmp sgt i64 %i.dw, 0
  br i1 %i.eg, label %bb.p, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.p:                                             ; preds = %.noexc19
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ed, ptr align 4 %i.dt, i64 %i.dw, i1 false)
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.p, %.noexc19
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %.not.i17.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dw) #22
  %.pre23.pre = load i64, ptr %4, align 8, !tbaa !16
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %.pre23 = phi i64 [ %.pre23.pre, %bb.q ], [ %i.dj, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i ]
  store ptr %i.ed, ptr %i.dm, align 8, !tbaa !86
  store ptr %i.eh, ptr %i.dn, align 8, !tbaa !85
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.eb
  store ptr %i.ei, ptr %i.dp, align 8, !tbaa !83
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.m
  %i.ej = phi i64 [ %.pre23, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.dj, %bb.m ]
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.ej, ptr %i.ek, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.el = load i64, ptr %4, align 8, !tbaa !16
  %i.em = add i64 %i.el, 1
  store i64 %i.em, ptr %4, align 8, !tbaa !16
  %i.en = load ptr, ptr %i.ad, align 8, !tbaa !86 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 352
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !83
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.es) #22
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i:       ; preds = %bb.r, %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit
  %i.et = load ptr, ptr %i.ac, align 8, !tbaa !86 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 328
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !83
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #22
  br label %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i

_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i:      ; preds = %bb.s, %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit.i
  call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.t) #19
  %i.ez = load ptr, ptr %i.q, align 8, !tbaa !18  ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.r
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i
  %i.fb = load i64, ptr %i.r, align 8, !tbaa !19
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EED2Ev.exit2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.fd = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.b
  br i1 %i.fe, label %_ZN6openzl10visualizer5CodecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ff = load i64, ptr %i.b, align 8, !tbaa !19
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #22
  br label %_ZN6openzl10visualizer5CodecD2Ev.exit

_ZN6openzl10visualizer5CodecD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void

bb.t:                                             ; preds = %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %bb.o, %bb.l
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6openzl10visualizer5CodecD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %i.fh
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
    i32 3, label %bb.l
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
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #21, !noalias !124 ; 6 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.speculated.i ; 4 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %3)
  %i.k = icmp eq i64 %i.j, 1
  %i.l = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %3, i1 true) ; 2 uses
  %switch.i = icmp samesign ult i64 %i.l, 4
  %or.cond26.i = select i1 %i.k, i1 %switch.i, i1 false
  br i1 %or.cond26.i, label %.split.i.i, label %.split.i

.split.i.i:                                       ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i ], [ %i.h, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i ]
  %.sroa.13.0 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i ], [ %i.i, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i ]
  %i.m = phi ptr [ %i.ap, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i ], [ %i.h, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i ] ; 6 uses
  %i.n = phi ptr [ %i.aq, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i ], [ %i.i, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i ] ; 5 uses
  %i.o = phi ptr [ %.sroa.9.0, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i ], [ %i.h, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i ] ; 3 uses
  %.024.i = phi i64 [ %i.ar, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i ], [ 0, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i ] ; 5 uses
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

.split.i:                                         ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 16) #19, !noalias !124 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull @.str.24)
          to label %bb.g unwind label %.body.thread38.i, !noalias !124

bb.g:                                             ; preds = %.split.i
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #20
          to label %.noexc17.i unwind label %.loopexit.split-lp.i, !noalias !124

.noexc17.i:                                       ; preds = %bb.g
  unreachable

.body.thread38.i:                                 ; preds = %.split.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aa) #19, !noalias !124
  br label %.body.i

_ZN6openzl10visualizer12_GLOBAL__N_115readNumericDataEmPKhm.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.r, %bb.c ], [ %i.u, %bb.d ], [ %i.x, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6openzl10visualizer12_GLOBAL__N_115readNumericDataEmPKhm.exit.i
  store i64 %.0.i.i, ptr %i.o, align 8, !tbaa !16, !noalias !124
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i

bb.i:                                             ; preds = %_ZN6openzl10visualizer12_GLOBAL__N_115readNumericDataEmPKhm.exit.i
  %i.ac = ptrtoint ptr %i.n to i64
  %i.ad = ptrtoint ptr %i.m to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 7 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.j, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
          to label %.noexc18.i unwind label %.loopexit.split-lp.i, !noalias !124

.noexc18.i:                                       ; preds = %bb.j
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.i
  %i.ag = ashr exact i64 %i.ae, 3
  %mul2.i.i.i.i = ashr exact i64 %i.ae, 2
  %10 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i.i, i64 1) ; 2 uses
  %i.ah = icmp ult i64 %10, %i.ag
  %i.ai = tail call i64 @llvm.umin.i64(i64 %10, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #21
          to label %.noexc19.i unwind label %.loopexit23.i, !noalias !124 ; 5 uses

.noexc19.i:                                       ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ae ; 2 uses
  store i64 %.0.i.i, ptr %i.am, align 8, !tbaa !16, !noalias !124
  %i.an = icmp sgt i64 %i.ae, 0
  br i1 %i.an, label %bb.k, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i

bb.k:                                             ; preds = %.noexc19.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.m, i64 %i.ae, i1 false), !noalias !124
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %.noexc19.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.ae) #22, !noalias !124
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj ; 2 uses
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i

_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i:         ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i, %bb.h
  %.sroa.0.1 = phi ptr [ %i.al, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0.0, %bb.h ] ; 2 uses
  %.pn = phi ptr [ %i.am, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i ], [ %i.o, %bb.h ]
  %.sroa.13.1 = phi ptr [ %i.ao, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i ], [ %.sroa.13.0, %bb.h ] ; 2 uses
  %i.ap = phi ptr [ %i.al, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i ], [ %i.m, %bb.h ]
  %i.aq = phi ptr [ %i.ao, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i.i ], [ %i.n, %bb.h ]
  %.sroa.9.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.ar = add nuw nsw i64 %.024.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ar, %.sroa.speculated.i
  br i1 %exitcond.not.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %.split.i.i, !llvm.loop !118

.loopexit23.i:                                    ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.j, %bb.g
  %i.as = phi ptr [ %i.i, %bb.g ], [ %i.n, %bb.j ]
  %i.at = phi ptr [ %i.h, %bb.g ], [ %i.m, %bb.j ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit23.i, %.loopexit.split-lp.i, %.body.thread38.i
  %.pn41.i = phi { ptr, i32 } [ %i.ab, %.body.thread38.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit23.i ]
  %i.au = phi ptr [ %i.h, %.body.thread38.i ], [ %i.at, %.loopexit.split-lp.i ], [ %i.m, %.loopexit23.i ] ; 2 uses
  %i.av = phi ptr [ %i.i, %.body.thread38.i ], [ %i.as, %.loopexit.split-lp.i ], [ %i.n, %.loopexit23.i ]
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #22, !noalias !124
  br label %common.resume

common.resume:                                    ; preds = %bb.ao, %bb.ap, %.body.i, %bb.as, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.fs, %bb.as ], [ %.pn.pn.pn.pn.i, %bb.al ], [ %i.fg, %bb.ao ], [ %.pn41.i, %.body.i ], [ %i.fg, %bb.ap ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i, %bb.b
  %.sroa.0.2 = phi ptr [ null, %bb.b ], [ %.sroa.0.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i ]
  %.sroa.9.1 = phi ptr [ null, %bb.b ], [ %.sroa.9.0, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i ]
  %.sroa.13.2 = phi ptr [ null, %bb.b ], [ %.sroa.13.1, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit.i ]
  store ptr %.sroa.0.2, ptr %0, align 8, !tbaa !129
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.1, ptr %i.az, align 8, !tbaa !130
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.13.2, ptr %i.ba, align 8, !tbaa !131
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.bb, align 8, !tbaa !97
  br label %bb.at

bb.l:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.bc = icmp eq ptr %1, null
  %i.bd = icmp eq ptr %5, null
  %or.cond.i11 = or i1 %i.bc, %i.bd
  %i.be = icmp eq i64 %4, 0
  %or.cond3.i = or i1 %i.be, %or.cond.i11
  br i1 %or.cond3.i, label %_ZN6openzl10visualizer12_GLOBAL__N_113getStringDataB5cxx11EPKvmPKj.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false), !alias.scope !132
  %i.bf = icmp ugt i64 %4, 288230376151711743
  br i1 %i.bf, label %bb.n, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #20
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.bh = shl nuw nsw i64 %4, 5
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #21
          to label %.lr.ph103.i unwind label %bb.o ; 3 uses

.lr.ph103.i:                                      ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bi, ptr %8, align 16, !tbaa !100
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !101
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %4
  store ptr %i.bk, ptr %i.bg, align 16, !tbaa !103
  %.sroa.speculated.i12 = tail call i64 @llvm.umin.i64(i64 %4, i64 4)
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 13 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i, %bb.n
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i, %.lr.ph103.i
  %.0102.i = phi i64 [ 0, %.lr.ph103.i ], [ %i.en, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i ] ; 2 uses
  %.022101.i = phi i64 [ 0, %.lr.ph103.i ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0102.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !78, !noalias !132 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !132
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %.022101.i ; 2 uses
  %i.bu = zext i32 %i.bs to i64                   ; 3 uses
  store ptr %i.bl, ptr %6, align 8, !tbaa !14, !noalias !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !132
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !16, !noalias !132
  %i.bv = icmp ugt i32 %i.bs, 15
  br i1 %i.bv, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.p
  %i.bw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc36.i unwind label %.loopexit73.i ; 2 uses

.noexc36.i:                                       ; preds = %.noexc.i.i
  store ptr %i.bw, ptr %6, align 8, !tbaa !18, !noalias !132
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !132
  store i64 %i.bx, ptr %i.bl, align 8, !tbaa !19, !noalias !132
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc36.i, %bb.p
  %i.by = phi ptr [ %i.bw, %.noexc36.i ], [ %i.bl, %bb.p ] ; 2 uses
  switch i32 %i.bs, label %bb.r [
    i32 1, label %bb.q
    i32 0, label %._crit_edge.i.i37.i
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.bz = load i8, ptr %i.bt, align 1, !tbaa !19, !noalias !132
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !19
  br label %._crit_edge.i.i37.i

bb.r:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr readonly align 1 %i.bt, i64 %i.bu, i1 false)
  br label %._crit_edge.i.i37.i

._crit_edge.i.i37.i:                              ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !132 ; 2 uses
  store i64 %i.ca, ptr %i.bm, align 8, !tbaa !20, !noalias !132
  %i.cb = load ptr, ptr %6, align 8, !tbaa !18, !noalias !132
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  store i8 0, ptr %i.cc, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !132
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !132
  store ptr %i.bn, ptr %7, align 8, !tbaa !14, !noalias !132
  store i64 0, ptr %i.bo, align 8, !tbaa !20, !noalias !132
  store i8 0, ptr %i.bn, align 8, !tbaa !19, !noalias !132
  %i.cd = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 10, i64 noundef 0) #19
  %.not.i = icmp eq i64 %i.cd, -1
  br i1 %.not.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %._crit_edge.i.i37.i
  %i.ce = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 9, i64 noundef 0) #19
  %.not30.i = icmp eq i64 %i.ce, -1
  br i1 %.not30.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cf = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 13, i64 noundef 0) #19
  %.not31.i = icmp eq i64 %i.cf, -1
  br i1 %.not31.i, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i37.i
  %i.cg = load ptr, ptr %6, align 8, !tbaa !18, !noalias !132 ; 2 uses
  %i.ch = load i64, ptr %i.bm, align 8, !tbaa !20, !noalias !132 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ch
  %.not7099.i = icmp samesign eq i64 %i.ch, 0
  br i1 %.not7099.i, label %.loopexit.i, label %.lr.ph.i

.loopexit73.i:                                    ; preds = %.noexc.i.i
  %lpad.loopexit75.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i

.lr.ph.i:                                         ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  %.sroa.062.0100.i = phi ptr [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i ], [ %i.cg, %bb.u ] ; 2 uses
  %i.cj = load i8, ptr %.sroa.062.0100.i, align 1, !tbaa !19 ; 2 uses
  %i.ck = load i64, ptr %i.bo, align 8, !tbaa !20, !noalias !132 ; 7 uses
  switch i8 %i.cj, label %bb.y [
    i8 10, label %bb.v
    i8 9, label %bb.w
end_hunk_1
begin_hunk_2_@_ZN6openzl10visualizer14ChunkTraceCore25writeSerializedStreamdumpERSt6vectorIhSaIhEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bu = load i64, ptr %i.bh, align 8, !tbaa !19
  store ptr %i.bj, ptr %1, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = load <2 x i64>, ptr %i.f, align 8, !tbaa !19
  store <2 x i64> %i.bw, ptr %i.bv, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bg, ptr %2, align 8, !tbaa !18
  store i64 %i.bu, ptr %i.e, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.e, ptr %2, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.bx = phi ptr [ %i.bg, %bb.f ], [ %i.e, %bb.g ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.f, align 8, !tbaa !20
  store i8 0, ptr %i.bx, align 1, !tbaa !19
  %i.by = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.e
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ca = load i64, ptr %i.e, align 8, !tbaa !19
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret { i32, i64 } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !181  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !104 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #22
  br label %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !178

_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !180
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #22
  br label %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %i.o, %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit ] ; 2 uses
  %i.p = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !73 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #22
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !179

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !59
  %i.t = shl i64 %i.s, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.t, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !58   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.x = load i64, ptr %i.r, align 8, !tbaa !59
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #22
  br label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !182 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !71
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #22
  br label %_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit

_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit:      ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !183 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !70
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #22
  br label %_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit

_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit:     ; preds = %_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !184 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorI11ZL_IntParamSaIS0_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #22
  br label %_ZNSt6vectorI11ZL_IntParamSaIS0_EED2Ev.exit

_ZNSt6vectorI11ZL_IntParamSaIS0_EED2Ev.exit:      ; preds = %_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit, %bb.f
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !100    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5
  %mul2 = ashr exact i64 %i.f, 4
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.k = select i1 %i.i, i64 288230376151711743, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = shl nuw nsw i64 %i.k, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !14
  %i.r = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !18
  %i.y = load i64, ptr %i.s, align 8, !tbaa !19
  store i64 %i.y, ptr %i.q, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !20
  store ptr %i.s, ptr %2, align 8, !tbaa !18
  store i64 0, ptr %i.aa, align 8, !tbaa !20
  store i8 0, ptr %i.s, align 8, !tbaa !19
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !tbaa !14, !alias.scope !192, !noalias !193
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !193, !noalias !192 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !20, !alias.scope !193, !noalias !192 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !194
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !18, !alias.scope !192, !noalias !193
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !19, !alias.scope !193, !noalias !192
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !19, !alias.scope !192, !noalias !193
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !20, !alias.scope !193, !noalias !192
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.al = phi i64 [ %i.ah, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !20, !alias.scope !192, !noalias !193
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !tbaa !18, !alias.scope !193, !noalias !192
  store i64 0, ptr %i.am, align 8, !tbaa !20, !alias.scope !193, !noalias !192
  store i8 0, ptr %i.ae, align 8, !tbaa !19, !alias.scope !193, !noalias !192
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !188

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i18, align 8, !tbaa !14, !alias.scope !195, !noalias !196
  %i.as = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !18, !alias.scope !196, !noalias !195 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !20, !alias.scope !196, !noalias !195 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !197
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !18, !alias.scope !195, !noalias !196
  %i.az = load i64, ptr %i.at, align 8, !tbaa !19, !alias.scope !196, !noalias !195
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !19, !alias.scope !195, !noalias !196
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !20, !alias.scope !196, !noalias !195
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.ba = phi i64 [ %i.aw, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !20, !alias.scope !195, !noalias !196
  store ptr %i.at, ptr %.0911.i.i.i19, align 8, !tbaa !18, !alias.scope !196, !noalias !195
  store i64 0, ptr %i.bb, align 8, !tbaa !20, !alias.scope !196, !noalias !195
  store i8 0, ptr %i.at, align 8, !tbaa !19, !alias.scope !196, !noalias !195
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !188

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !103
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !100
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !101
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPKhEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !106
  %i.f = load ptr, ptr %0, align 8, !tbaa !107    ; 8 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i64 %i.c, 0
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #20
  unreachable

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #21 ; 4 uses
  %i.m = icmp samesign ugt i64 %i.c, 1
  br i1 %i.m, label %bb.d, label %bb.e, !prof !111

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %1, i64 %i.c, i1 false)
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIPKhEEPhmT_S6_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.n = load i8, ptr %1, align 1, !tbaa !19
  store i8 %i.n, ptr %i.l, align 1, !tbaa !19
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIPKhEEPhmT_S6_.exit

_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIPKhEEPhmT_S6_.exit: ; preds = %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIPKhEEPhmT_S6_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #22
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIPKhEEPhmT_S6_.exit, %bb.f
  store ptr %i.l, ptr %0, align 8, !tbaa !107
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !198
  store ptr %i.p, ptr %i.d, align 8, !tbaa !106
  br label %_ZNSt6vectorIhSaIhEE15_M_erase_at_endEPh.exit

bb.g:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !198
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.h                       ; 5 uses
  %.not = icmp ult i64 %i.t, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = icmp sgt i64 %i.c, 1
  br i1 %i.u, label %bb.i, label %bb.j, !prof !111

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %1, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit

bb.j:                                             ; preds = %bb.h
  %i.v = icmp eq i64 %i.c, 1
  br i1 %i.v, label %bb.k, label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit

bb.k:                                             ; preds = %bb.j
  %i.w = load i8, ptr %1, align 1, !tbaa !19
  store i8 %i.w, ptr %i.f, align 1, !tbaa !19
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit

_ZSt4copyIPKhPhET0_T_S4_S3_.exit:                 ; preds = %bb.i, %bb.j, %bb.k
  %i.x = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !198
  %.not.i16 = icmp eq ptr %i.y, %i.x
  br i1 %.not.i16, label %_ZNSt6vectorIhSaIhEE15_M_erase_at_endEPh.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit
  store ptr %i.x, ptr %i.q, align 8, !tbaa !198
  br label %_ZNSt6vectorIhSaIhEE15_M_erase_at_endEPh.exit

_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.g
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.t ; 3 uses
  %i.z = ptrtoint ptr %.sink.i to i64
  %i.aa = icmp sgt i64 %i.t, 1
  br i1 %i.aa, label %bb.l, label %bb.m, !prof !111

bb.l:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %1, i64 %i.t, i1 false)
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit17

bb.m:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.ab = icmp eq i64 %i.t, 1
  br i1 %i.ab, label %bb.n, label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit17

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %1, align 1, !tbaa !19
  store i8 %i.ac, ptr %i.f, align 1, !tbaa !19
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit17

_ZSt4copyIPKhPhET0_T_S4_S3_.exit17:               ; preds = %bb.l, %bb.m, %bb.n
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !198 ; 3 uses
  %i.ae = sub i64 %i.a, %i.z                      ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.o, label %bb.p, !prof !111

bb.o:                                             ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %.sink.i, i64 %i.ae, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit17
  %i.ag = icmp eq i64 %i.ae, 1
  br i1 %i.ag, label %bb.q, label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i8, ptr %.sink.i, align 1, !tbaa !19
  store i8 %i.ah, ptr %i.ad, align 1, !tbaa !19
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.o, %bb.p, %bb.q
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae
  store ptr %i.ai, ptr %i.q, align 8, !tbaa !198
  br label %_ZNSt6vectorIhSaIhEE15_M_erase_at_endEPh.exit

_ZNSt6vectorIhSaIhEE15_M_erase_at_endEPh.exit:    ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit, %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit
  ret void
}

declare ptr @A1C_ArrayBuilder_add(ptr noundef byval(%struct.A1C_ArrayBuilder) align 8) local_unnamed_addr #6

declare ptr @A1C_MapBuilder_add(ptr noundef byval(%struct.A1C_MapBuilder) align 8) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(360) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !84     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6openzl10visualizer5CodecESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
  unreachable

_ZNKSt6vectorIN6openzl10visualizer5CodecESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 360                 ; 2 uses
  %mul2 = shl nsw i64 %i.h, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2, i64 1) ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 25620477880152155)
  %i.k = select i1 %i.i, i64 25620477880152155, i64 %i.j ; 2 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = mul nuw nsw i64 %i.k, 360
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #21 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  tail call void @_ZN6openzl10visualizer5CodecC2EOS1_(ptr noundef nonnull align 8 dereferenceable(360) %i.p, ptr noundef nonnull align 8 dereferenceable(360) %2) #19
  %i.q = tail call noundef ptr @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.o, ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 360
  %i.s = tail call noundef ptr @_ZNSt6vectorIN6openzl10visualizer5CodecESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.r, ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i16 = icmp eq ptr %i.c, null
  br i1 %.not.i16, label %_ZNSt12_Vector_baseIN6openzl10visualizer5CodecESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6openzl10visualizer5CodecESaIS2_EE12_M_check_lenEmPKc.exit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !66
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.w) #22
  br label %_ZNSt12_Vector_baseIN6openzl10visualizer5CodecESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6openzl10visualizer5CodecESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNKSt6vectorIN6openzl10visualizer5CodecESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !84
  store ptr %i.s, ptr %i.a, align 8, !tbaa !65
  %i.x = getelementptr inbounds nuw [360 x i8], ptr %i.o, i64 %i.k
  store ptr %i.x, ptr %i.t, align 8, !tbaa !66
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl10visualizer5CodecC2EOS1_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !14
  %i.b = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !18
  %i.i = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.i, ptr %i.a, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !20
  store ptr %i.c, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %i.j, align 8, !tbaa !20
  store i8 0, ptr %i.c, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !14
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20   ; 2 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.r, ptr %i.o, align 8, !tbaa !18
  %i.y = load i64, ptr %i.s, align 8, !tbaa !19
  store i64 %i.y, ptr %i.q, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !20
  store ptr %i.s, ptr %i.p, align 8, !tbaa !18
  store i64 0, ptr %i.z, align 8, !tbaa !20
  store i8 0, ptr %i.s, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ac, ptr noundef nonnull align 8 dereferenceable(200) %i.ad, i64 48, i1 false), !tbaa.struct !68
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !67
  store <2 x ptr> %i.ag, ptr %i.ae, align 8, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !69
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !67
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !67
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !70
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !67
  store <2 x ptr> %i.as, ptr %i.aq, align 8, !tbaa !67
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !71
  store ptr %i.av, ptr %i.at, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !58 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !58
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !59 ; 2 uses
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !59
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !72 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !73
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !74
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !74
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !76
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  store ptr null, ptr %i.bk, align 8, !tbaa !77
  %i.bl = load ptr, ptr %i.ax, align 8, !tbaa !58
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 4 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9
  store ptr %i.bk, ptr %i.aw, align 8, !tbaa !58
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !77
  store ptr %i.bo, ptr %i.bk, align 8, !tbaa !77
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9
  %i.bp = phi ptr [ %i.bk, %bb.d ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9 ]
  %.not.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i, label %_ZN6openzl11LocalParamsC2EOS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !78
  %i.bs = sext i32 %i.br to i64
  %i.bt = urem i64 %i.bs, %i.bb
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bt
  store ptr %i.bc, ptr %i.bu, align 8, !tbaa !79
  br label %_ZN6openzl11LocalParamsC2EOS0_.exit

_ZN6openzl11LocalParamsC2EOS0_.exit:              ; preds = %bb.e, %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i64 0, ptr %i.bv, align 8, !tbaa !80
  store i64 1, ptr %i.ba, align 8, !tbaa !59
  store ptr null, ptr %i.bm, align 8, !tbaa !77
  store ptr %i.bm, ptr %i.ax, align 8, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.by = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !81
  store <2 x ptr> %i.by, ptr %i.bw, align 8, !tbaa !81
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !82
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !82
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 296
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.cg = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !67
  store <2 x ptr> %i.cg, ptr %i.ce, align 8, !tbaa !67
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !83
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i8 0, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
end_hunk_2
