Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/formatter?download=true
inline.NumInlined: 3193
inline.NumDeleted: 1112
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_:bb.a
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !273
  %i.av = load <2 x ptr>, ptr %i.as, align 8, !tbaa !136
  %i.aw = insertelement <4 x ptr> poison, ptr %i.at, i64 0
  %i.ax = insertelement <4 x ptr> %i.aw, ptr %i.au, i64 1
  %i.ay = shufflevector <2 x ptr> %i.av, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.az = shufflevector <4 x ptr> %i.ax, <4 x ptr> %i.ay, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.az, ptr %i.an, align 8, !tbaa !151
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !200, !range !81, !noundef !82
  store i8 %i.bc, ptr %i.ba, align 8, !tbaa !200
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 184 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.bf = load <2 x ptr>, ptr %i.be, align 8, !tbaa !30
  store <2 x ptr> %i.bf, ptr %i.bd, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !33
  %i.bo = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !30
  %i.bp = insertelement <4 x ptr> poison, ptr %i.bm, i64 0
  %i.bq = insertelement <4 x ptr> %i.bp, ptr %i.bn, i64 1
  %i.br = shufflevector <2 x ptr> %i.bo, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x ptr> %i.bq, <4 x ptr> %i.br, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.bs, ptr %i.bg, align 8, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  %i.bt = call noundef nonnull align 8 dereferenceable(232) ptr @_ZN7jsonnet8internal11SortImports10ImportElemaSEOS2_(ptr noundef nonnull align 8 dereferenceable(232) %2, ptr noundef nonnull align 8 dereferenceable(232) %0) #27 ; 0 uses
  %i.bu = ptrtoint ptr %1 to i64
  %i.bv = ptrtoint ptr %0 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = sdiv exact i64 %i.bw, 232
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.by, ptr %5, align 8, !tbaa !270
  %i.bz = load ptr, ptr %4, align 8, !tbaa !143   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.a
  br i1 %i.ca, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i1

bb.c:                                             ; preds = %_ZN7jsonnet8internal11SortImports10ImportElemC2EOS2_.exit
  %i.cb = load i64, ptr %i.m, align 8, !tbaa !144 ; 3 uses
  %i.cc = icmp ult i64 %i.cb, 4
  call void @llvm.assume(i1 %i.cc)
  %i.cd = shl nuw nsw i64 %i.cb, 2
  %i.ce = add nuw nsw i64 %i.cd, 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.by, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.ce, i1 false)
  br label %_ZN7jsonnet8internal11SortImports10ImportElemC2EOS2_.exit2

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i1: ; preds = %_ZN7jsonnet8internal11SortImports10ImportElemC2EOS2_.exit
  store ptr %i.bz, ptr %5, align 8, !tbaa !143
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.cf, ptr %i.by, align 8, !tbaa !49
  %.pre7 = load i64, ptr %i.m, align 8, !tbaa !144
  br label %_ZN7jsonnet8internal11SortImports10ImportElemC2EOS2_.exit2

_ZN7jsonnet8internal11SortImports10ImportElemC2EOS2_.exit2: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i1
  %i.cg = phi i64 [ %i.cb, %bb.c ], [ %.pre7, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i1 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !144
  store ptr %i.a, ptr %4, align 8, !tbaa !143
  store i64 0, ptr %i.m, align 8, !tbaa !144
  store i32 0, ptr %i.a, align 8, !tbaa !146
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cj = load <2 x ptr>, ptr %i.n, align 8, !tbaa !30
  store <2 x ptr> %i.cj, ptr %i.ci, align 8, !tbaa !30
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.cl = load ptr, ptr %i.q, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.cm = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.cn = load <2 x ptr>, ptr %i.u, align 8, !tbaa !30
  %i.co = insertelement <4 x ptr> poison, ptr %i.cl, i64 0
  %i.cp = insertelement <4 x ptr> %i.co, ptr %i.cm, i64 1
  %i.cq = shufflevector <2 x ptr> %i.cn, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cr = shufflevector <4 x ptr> %i.cp, <4 x ptr> %i.cq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.cr, ptr %i.ck, align 8, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.s, i8 0, i64 24, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ct = load <4 x ptr>, ptr %i.ad, align 8, !tbaa !151
  store <4 x ptr> %i.ct, ptr %i.cs, align 8, !tbaa !151
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cu, ptr noundef nonnull align 8 dereferenceable(9) %i.ai, i64 9, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.cw = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !30
  store <2 x ptr> %i.cw, ptr %i.cv, align 8, !tbaa !30
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.cy = load ptr, ptr %i.an, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.cz = load ptr, ptr %i.ap, align 8, !tbaa !273
  %i.da = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !136
  %i.db = insertelement <4 x ptr> poison, ptr %i.cy, i64 0
  %i.dc = insertelement <4 x ptr> %i.db, ptr %i.cz, i64 1
  %i.dd = shufflevector <2 x ptr> %i.da, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.de = shufflevector <4 x ptr> %i.dc, <4 x ptr> %i.dd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.de, ptr %i.cx, align 8, !tbaa !151
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.dg = load i8, ptr %i.ba, align 8, !tbaa !200, !range !81, !noundef !82
  store i8 %i.dg, ptr %i.df, align 8, !tbaa !200
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.di = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !30
  store <2 x ptr> %i.di, ptr %i.dh, align 8, !tbaa !30
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 200
  %i.dk = load ptr, ptr %i.bg, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %i.dl = load ptr, ptr %i.bi, align 8, !tbaa !33
  %i.dm = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !30
  %i.dn = insertelement <4 x ptr> poison, ptr %i.dk, i64 0
  %i.do = insertelement <4 x ptr> %i.dn, ptr %i.dl, i64 1
  %i.dp = shufflevector <2 x ptr> %i.dm, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dq = shufflevector <4 x ptr> %i.do, <4 x ptr> %i.dp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.dq, ptr %i.dj, align 8, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.bx, ptr nofreeobj noundef nonnull align 8 dereferenceable(232) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN7jsonnet8internal11SortImports10ImportElemC2EOS2_.exit2
  call void @_ZN7jsonnet8internal11SortImports10ImportElemD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %5) #27
  call void @_ZN7jsonnet8internal11SortImports10ImportElemD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.e:                                             ; preds = %_ZN7jsonnet8internal11SortImports10ImportElemC2EOS2_.exit2
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7jsonnet8internal11SortImports10ImportElemD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %5) #27
  call void @_ZN7jsonnet8internal11SortImports10ImportElemD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.dr
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr nofreeobj noundef align 8 dereferenceable(232) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.jsonnet::internal::SortImports::ImportElem", align 8 ; 16 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread37
  %.042 = phi i64 [ %i.x, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread37 ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.042, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [232 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [232 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !144  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !144  ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !143
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !143
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, label %.lr.ph.i.i.i.i.i

bb.b:                                             ; preds = %bb.c
  %i.o = add nuw i64 %.01216.i.i.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.o, %.sroa.speculated.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph, %bb.b
  %.01216.i.i.i.i.i = phi i64 [ %i.o, %bb.b ], [ 0, %.lr.ph ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.01216.i.i.i.i.i
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.01216.i.i.i.i.i
  %i.r = load i32, ptr %i.p, align 4, !tbaa !146  ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !146  ; 2 uses
  %i.t = icmp ult i32 %i.r, %i.s
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.u = icmp ult i32 %i.s, %i.r
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread37, label %bb.b

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit: ; preds = %bb.b, %.lr.ph
  %i.v = sub i64 %i.j, %i.l
  %.fr = freeze i64 %i.v
  %i.w = icmp slt i64 %.fr, 0
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread37

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread37

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread37: ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread
  %i.x = phi i64 [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread ], [ %i.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit ], [ %i.e, %bb.c ] ; 4 uses
  %i.y = getelementptr inbounds [232 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr inbounds [232 x i8], ptr %0, i64 %.042
  %i.aa = tail call noundef nonnull align 8 dereferenceable(232) ptr @_ZN7jsonnet8internal11SortImports10ImportElemaSEOS2_(ptr noundef nonnull align 8 dereferenceable(232) %i.z, ptr noundef nonnull align 8 dereferenceable(232) %i.y) #27 ; 0 uses
  %i.ab = icmp slt i64 %i.x, %i.b
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !460

._crit_edge:                                      ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread37, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread37 ] ; 5 uses
  %5 = trunc i64 %2 to i1
  br i1 %5, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ac = add nsw i64 %2, -2
  %i.ad = ashr exact i64 %i.ac, 1
  %i.ae = icmp eq i64 %.0.lcssa, %i.ad
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = shl nsw i64 %.0.lcssa, 1
  %i.ag = or disjoint i64 %i.af, 1                ; 2 uses
  %i.ah = getelementptr inbounds [232 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds [232 x i8], ptr %0, i64 %.0.lcssa
  %i.aj = tail call noundef nonnull align 8 dereferenceable(232) ptr @_ZN7jsonnet8internal11SortImports10ImportElemaSEOS2_(ptr noundef nonnull align 8 dereferenceable(232) %i.ai, ptr noundef nonnull align 8 dereferenceable(232) %i.ah) #27 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.ag, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ak, ptr %4, align 8, !tbaa !270
  %i.al = load ptr, ptr %3, align 8, !tbaa !143   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !144 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 4
  call void @llvm.assume(i1 %i.aq)
  %i.ar = shl nuw nsw i64 %i.ap, 2
  %i.as = add nuw nsw i64 %i.ar, 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.as, i1 false)
  br label %_ZN7jsonnet8internal11SortImports10ImportElemC2EOS2_.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.al, ptr %4, align 8, !tbaa !143
  %i.at = load i64, ptr %i.am, align 8, !tbaa !49
  store i64 %i.at, ptr %i.ak, align 8, !tbaa !49
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !144
  br label %_ZN7jsonnet8internal11SortImports10ImportElemC2EOS2_.exit

_ZN7jsonnet8internal11SortImports10ImportElemC2EOS2_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i
  %i.au = phi i64 [ %i.ap, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !144
  store ptr %i.am, ptr %3, align 8, !tbaa !143
  store i64 0, ptr %i.av, align 8, !tbaa !144
  store i32 0, ptr %i.am, align 8, !tbaa !146
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.az = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !30
  store <2 x ptr> %i.az, ptr %i.ax, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !33
  %i.bg = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !30
  %i.bh = insertelement <4 x ptr> poison, ptr %i.be, i64 0
  %i.bi = insertelement <4 x ptr> %i.bh, ptr %i.bf, i64 1
  %i.bj = shufflevector <2 x ptr> %i.bg, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bk = shufflevector <4 x ptr> %i.bi, <4 x ptr> %i.bj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.bk, ptr %i.ba, align 8, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.bc, i8 0, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bo = load <4 x ptr>, ptr %i.bm, align 8, !tbaa !151
  store <4 x ptr> %i.bo, ptr %i.bl, align 8, !tbaa !151
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bp, ptr noundef nonnull align 8 dereferenceable(9) %i.bq, i64 9, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.bt = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !30
  store <2 x ptr> %i.bt, ptr %i.br, align 8, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !273
  %i.ca = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !136
  %i.cb = insertelement <4 x ptr> poison, ptr %i.by, i64 0
  %i.cc = insertelement <4 x ptr> %i.cb, ptr %i.bz, i64 1
  %i.cd = shufflevector <2 x ptr> %i.ca, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x ptr> %i.cc, <4 x ptr> %i.cd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.ce, ptr %i.bu, align 8, !tbaa !151
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !200, !range !81, !noundef !82
  store i8 %i.ch, ptr %i.cf, align 8, !tbaa !200
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 2 uses
  %i.ck = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !30
  store <2 x ptr> %i.ck, ptr %i.ci, align 8, !tbaa !30
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false)
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !33
  %i.cr = load <2 x ptr>, ptr %i.co, align 8, !tbaa !30
  %i.cs = insertelement <4 x ptr> poison, ptr %i.cp, i64 0
  %i.ct = insertelement <4 x ptr> %i.cs, ptr %i.cq, i64 1
  %i.cu = shufflevector <2 x ptr> %i.cr, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cv = shufflevector <4 x ptr> %i.ct, <4 x ptr> %i.cu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.cv, ptr %i.cl, align 8, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i8 0, i64 24, i1 false)
  %i.cw = icmp sgt i64 %.1, %1
  br i1 %i.cw, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %_ZN7jsonnet8internal11SortImports10ImportElemC2EOS2_.exit, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i
  %.024.i = phi i64 [ %.0925.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i ], [ %.1, %_ZN7jsonnet8internal11SortImports10ImportElemC2EOS2_.exit ] ; 4 uses
  %.0925.in.i = add nsw i64 %.024.i, -1
  %.0925.i = sdiv i64 %.0925.in.i, 2              ; 4 uses
  %i.cx = getelementptr inbounds [232 x i8], ptr %0, i64 %.0925.i ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !144 ; 2 uses
  %i.da = load i64, ptr %i.aw, align 8, !tbaa !144 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.da, i64 %i.cz) ; 2 uses
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !143
  %i.dc = load ptr, ptr %4, align 8, !tbaa !143
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i, label %.lr.ph.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.dd = add nuw i64 %.01216.i.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.dd, %.sroa.speculated.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !11

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i, %bb.h
  %.01216.i.i.i.i.i.i = phi i64 [ %i.dd, %bb.h ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.01216.i.i.i.i.i.i
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.01216.i.i.i.i.i.i
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !146 ; 2 uses
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !146 ; 2 uses
  %i.di = icmp ult i32 %i.dg, %i.dh
  br i1 %i.di, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dj = icmp ult i32 %i.dh, %i.dg
  br i1 %i.dj, label %.loopexit, label %bb.h

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i: ; preds = %bb.h, %.lr.ph.i
  %i.dk = sub i64 %i.cz, %i.da
  %i.dl = icmp slt i64 %i.dk, 0
  br i1 %i.dl, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i, label %.loopexit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i
  %i.dm = getelementptr inbounds [232 x i8], ptr %0, i64 %.024.i
  %i.dn = call noundef nonnull align 8 dereferenceable(232) ptr @_ZN7jsonnet8internal11SortImports10ImportElemaSEOS2_(ptr noundef nonnull align 8 dereferenceable(232) %i.dm, ptr noundef nonnull align 8 dereferenceable(232) %i.cx) #27 ; 0 uses
  %i.do = icmp sgt i64 %.0925.i, %1
  br i1 %i.do, label %.lr.ph.i, label %.loopexit, !llvm.loop !461

.loopexit:                                        ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i, %bb.i, %_ZN7jsonnet8internal11SortImports10ImportElemC2EOS2_.exit
  %.021.i = phi i64 [ %.024.i, %bb.i ], [ %.1, %_ZN7jsonnet8internal11SortImports10ImportElemC2EOS2_.exit ], [ %.024.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.i ], [ %.0925.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEES7_EEbT_RT0_.exit.thread.i ]
  %i.dp = getelementptr inbounds [232 x i8], ptr %0, i64 %.021.i
  %i.dq = call noundef nonnull align 8 dereferenceable(232) ptr @_ZN7jsonnet8internal11SortImports10ImportElemaSEOS2_(ptr noundef nonnull align 8 dereferenceable(232) %i.dp, ptr noundef nonnull align 8 dereferenceable(232) %4) #27 ; 0 uses
  call void @_ZN7jsonnet8internal11SortImports10ImportElemD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %4) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !144  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !144  ; 6 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.b) ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !143    ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !143    ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, label %.lr.ph.i.i.i.i.i

bb.b:                                             ; preds = %bb.c
  %i.g = add nuw i64 %.01216.i.i.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.g, %.sroa.speculated.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !11

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %bb.b
  %.01216.i.i.i.i.i = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.01216.i.i.i.i.i
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01216.i.i.i.i.i
  %i.j = load i32, ptr %i.h, align 4, !tbaa !146  ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !146  ; 2 uses
  %i.l = icmp ult i32 %i.j, %i.k
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN7jsonnet8internal11SortImports10ImportElemESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.m = icmp ult i32 %i.k, %i.j
end_hunk_0
begin_hunk_1_@_ZN7jsonnet8internal14FixIndentation4exprEPNS0_3ASTERKNS1_6IndentEb:bb.a

bb.ag:                                            ; preds = %.lr.ph1106, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit563
  %i.eg = phi i32 [ %i.ea, %.lr.ph1106 ], [ %i.fp, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit563 ]
  %.23731104 = phi i1 [ true, %.lr.ph1106 ], [ false, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit563 ] ; 2 uses
  %.sroa.0992.01103 = phi ptr [ %i.bz, %.lr.ph1106 ], [ %i.gj, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit563 ] ; 7 uses
  br i1 %.23731104, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eh = load i32, ptr %i.am, align 4, !tbaa !93
  %i.ei = add i32 %i.eh, 1
  store i32 %i.ei, ptr %i.am, align 4, !tbaa !93
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ej = xor i1 %.23731104, true                 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0992.01103, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !139 ; 2 uses
  %.not462 = icmp eq ptr %i.el, null
  br i1 %.not462, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.em = load ptr, ptr %.sroa.0992.01103, align 8, !tbaa !30 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0992.01103, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !30 ; 3 uses
  %.not2527.i.i.i516 = icmp eq ptr %i.em, %i.eo
  br i1 %.not2527.i.i.i516, label %._ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit539_crit_edge, label %.lr.ph33.i.i.i517

._ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit539_crit_edge: ; preds = %bb.aj
  %.pre1145 = load i32, ptr %i.am, align 4, !tbaa !93
  br label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit539

.lr.ph33.i.i.i517:                                ; preds = %bb.aj, %bb.ak
  %.sroa.018.031.i.i.i518 = phi ptr [ %i.er, %bb.ak ], [ %i.em, %bb.aj ] ; 3 uses
  %i.ep = load i32, ptr %.sroa.018.031.i.i.i518, align 8, !tbaa !41
  %.not.i.i.i519 = icmp eq i32 %i.ep, 1
  br i1 %.not.i.i.i519, label %bb.ak, label %.sink.split.i.i.i520

.sink.split.i.i.i520:                             ; preds = %.lr.ph33.i.i.i517
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.i518, i64 8
  store i32 %i.eg, ptr %i.eq, align 8, !tbaa !63
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split.i.i.i520, %.lr.ph33.i.i.i517
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.i518, i64 40 ; 2 uses
  %.not26.i.i.i521 = icmp eq ptr %i.er, %i.eo
  br i1 %.not26.i.i.i521, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i522, label %.lr.ph33.i.i.i517

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i522: ; preds = %bb.ak
  %.promoted.i.i.i523 = load i32, ptr %i.am, align 4
  %i.es = zext i1 %i.ej to i8
  br label %.lr.ph.i7.i.i524

.lr.ph.i7.i.i524:                                 ; preds = %bb.an, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i522
  %.06.i.i.i525 = phi i8 [ %.1.i10.i.i531, %bb.an ], [ %i.es, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i522 ] ; 2 uses
  %.sroa.01.05.i.i.i526 = phi ptr [ %i.ff, %bb.an ], [ %i.em, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i522 ] ; 4 uses
  %i.et = phi i32 [ %i.fe, %bb.an ], [ %.promoted.i.i.i523, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i522 ] ; 2 uses
  %i.eu = load i32, ptr %.sroa.01.05.i.i.i526, align 8, !tbaa !41
  switch i32 %i.eu, label %bb.an [
    i32 2, label %bb.al
    i32 0, label %bb.al
    i32 1, label %bb.am
  ]

bb.al:                                            ; preds = %.lr.ph.i7.i.i524, %.lr.ph.i7.i.i524
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i526, i64 8
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !63
  br label %.sink.split.i9.i.i528

bb.am:                                            ; preds = %.lr.ph.i7.i.i524
  %i.ex = zext nneg i8 %.06.i.i.i525 to i32
  %spec.select.i8.i.i527 = add i32 %i.et, %i.ex
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i526, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !43
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !48
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = add i32 %spec.select.i8.i.i527, %i.fc
  br label %.sink.split.i9.i.i528

.sink.split.i9.i.i528:                            ; preds = %bb.am, %bb.al
  %.sink.i.i.i529 = phi i32 [ %i.fd, %bb.am ], [ %i.ew, %bb.al ] ; 2 uses
  %.1.ph.i.i.i530 = phi i8 [ 1, %bb.am ], [ 0, %bb.al ]
  store i32 %.sink.i.i.i529, ptr %i.am, align 4, !tbaa !84
  br label %bb.an

bb.an:                                            ; preds = %.sink.split.i9.i.i528, %.lr.ph.i7.i.i524
  %i.fe = phi i32 [ %i.et, %.lr.ph.i7.i.i524 ], [ %.sink.i.i.i529, %.sink.split.i9.i.i528 ] ; 2 uses
  %.1.i10.i.i531 = phi i8 [ %.06.i.i.i525, %.lr.ph.i7.i.i524 ], [ %.1.ph.i.i.i530, %.sink.split.i9.i.i528 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i526, i64 40 ; 2 uses
  %.not.i11.i.i532 = icmp eq ptr %i.ff, %i.eo
  br i1 %.not.i11.i.i532, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit539, label %.lr.ph.i7.i.i524

_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit539: ; preds = %bb.an, %._ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit539_crit_edge
  %i.fg = phi i32 [ %.pre1145, %._ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit539_crit_edge ], [ %i.fe, %bb.an ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !144
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = add i32 %i.fj, 1
  %i.fl = add i32 %i.fk, %i.fg
  store i32 %i.fl, ptr %i.am, align 4, !tbaa !93
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit539, %bb.ai
  %.0380 = phi i1 [ false, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit539 ], [ %i.ej, %bb.ai ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0992.01103, i64 56
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !147
  call void @_ZN7jsonnet8internal14FixIndentation4exprEPNS0_3ASTERKNS1_6IndentEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.fn, ptr noundef nonnull align 4 dereferenceable(8) %5, i1 noundef zeroext %.0380)
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0992.01103, i64 64
  %i.fp = load i32, ptr %i.eb, align 4, !tbaa !96 ; 3 uses
  %i.fq = load ptr, ptr %i.fo, align 8, !tbaa !30 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0992.01103, i64 72
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !30 ; 3 uses
  %.not2527.i.i.i540 = icmp eq ptr %i.fq, %i.fs
  br i1 %.not2527.i.i.i540, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit563, label %.lr.ph33.i.i.i541

.lr.ph33.i.i.i541:                                ; preds = %bb.ao, %bb.ap
  %.sroa.018.031.i.i.i542 = phi ptr [ %i.fv, %bb.ap ], [ %i.fq, %bb.ao ] ; 3 uses
  %i.ft = load i32, ptr %.sroa.018.031.i.i.i542, align 8, !tbaa !41
  %.not.i.i.i543 = icmp eq i32 %i.ft, 1
  br i1 %.not.i.i.i543, label %bb.ap, label %.sink.split.i.i.i544

.sink.split.i.i.i544:                             ; preds = %.lr.ph33.i.i.i541
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.i542, i64 8
  store i32 %i.fp, ptr %i.fu, align 8, !tbaa !63
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split.i.i.i544, %.lr.ph33.i.i.i541
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.i542, i64 40 ; 2 uses
  %.not26.i.i.i545 = icmp eq ptr %i.fv, %i.fs
  br i1 %.not26.i.i.i545, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i546, label %.lr.ph33.i.i.i541

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i546: ; preds = %bb.ap
  %.promoted.i.i.i547 = load i32, ptr %i.am, align 4
  br label %.lr.ph.i7.i.i548

.lr.ph.i7.i.i548:                                 ; preds = %bb.as, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i546
  %.06.i.i.i549 = phi i8 [ %.1.i10.i.i555, %bb.as ], [ 0, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i546 ] ; 2 uses
  %.sroa.01.05.i.i.i550 = phi ptr [ %i.gi, %bb.as ], [ %i.fq, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i546 ] ; 4 uses
  %i.fw = phi i32 [ %i.gh, %bb.as ], [ %.promoted.i.i.i547, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i546 ] ; 2 uses
  %i.fx = load i32, ptr %.sroa.01.05.i.i.i550, align 8, !tbaa !41
  switch i32 %i.fx, label %bb.as [
    i32 2, label %bb.aq
    i32 0, label %bb.aq
    i32 1, label %bb.ar
  ]

bb.aq:                                            ; preds = %.lr.ph.i7.i.i548, %.lr.ph.i7.i.i548
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i550, i64 8
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !63
  br label %.sink.split.i9.i.i552

bb.ar:                                            ; preds = %.lr.ph.i7.i.i548
  %i.ga = zext nneg i8 %.06.i.i.i549 to i32
  %spec.select.i8.i.i551 = add i32 %i.fw, %i.ga
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i550, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !43
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !48
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = add i32 %spec.select.i8.i.i551, %i.gf
  br label %.sink.split.i9.i.i552

.sink.split.i9.i.i552:                            ; preds = %bb.ar, %bb.aq
  %.sink.i.i.i553 = phi i32 [ %i.gg, %bb.ar ], [ %i.fz, %bb.aq ] ; 2 uses
  %.1.ph.i.i.i554 = phi i8 [ 1, %bb.ar ], [ 0, %bb.aq ]
  store i32 %.sink.i.i.i553, ptr %i.am, align 4, !tbaa !84
  br label %bb.as

bb.as:                                            ; preds = %.sink.split.i9.i.i552, %.lr.ph.i7.i.i548
  %i.gh = phi i32 [ %i.fw, %.lr.ph.i7.i.i548 ], [ %.sink.i.i.i553, %.sink.split.i9.i.i552 ]
  %.1.i10.i.i555 = phi i8 [ %.06.i.i.i549, %.lr.ph.i7.i.i548 ], [ %.1.ph.i.i.i554, %.sink.split.i9.i.i552 ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i550, i64 40 ; 2 uses
  %.not.i11.i.i556 = icmp eq ptr %i.gi, %i.fs
  br i1 %.not.i11.i.i556, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit563, label %.lr.ph.i7.i.i548

_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit563: ; preds = %bb.as, %bb.ao
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0992.01103, i64 88 ; 2 uses
  %.not1085 = icmp eq ptr %i.gj, %i.by
  br i1 %.not1085, label %._crit_edge1107, label %bb.ag

bb.at:                                            ; preds = %._crit_edge1107
  %i.gk = load i32, ptr %i.am, align 4, !tbaa !93
  %i.gl = add i32 %i.gk, 1
  store i32 %i.gl, ptr %i.am, align 4, !tbaa !93
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge1107
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ag, i64 192
  %i.gn = load i32, ptr %2, align 4, !tbaa !95    ; 3 uses
  %i.go = load ptr, ptr %i.gm, align 8, !tbaa !30 ; 16 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ag, i64 200
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !30 ; 3 uses
  %.not2527.i.i = icmp eq ptr %i.go, %i.gq
  br i1 %.not2527.i.i, label %._ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit_crit_edge, label %.lr.ph.i.i564.preheader

.lr.ph.i.i564.preheader:                          ; preds = %bb.au
  %i.gr = ptrtoaddr ptr %i.gq to i64
  %i.gs = ptrtoaddr ptr %i.go to i64
  %i.gt = add i64 %i.gr, -40
  %i.gu = sub i64 %i.gt, %i.gs                    ; 4 uses
  %i.gv = udiv i64 %i.gu, 40
  %i.gw = add nuw nsw i64 %i.gv, 1                ; 8 uses
  %min.iters.check = icmp ult i64 %i.gu, 280
  br i1 %min.iters.check, label %.lr.ph.i.i564.preheader1424, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i564.preheader
  %n.vec = and i64 %i.gw, 1152921504606846968     ; 3 uses
  %i.gx = mul i64 %n.vec, 40
  %i.gy = getelementptr i8, ptr %i.go, i64 %i.gx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ib, %vector.body ]
  %vec.phi1355 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ic, %vector.body ]
  %i.gz = mul i64 %index, 40                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.go, i64 %i.gz
  %i.ha = getelementptr i8, ptr %i.go, i64 %i.gz
  %next.gep1356 = getelementptr i8, ptr %i.ha, i64 40
  %i.hb = getelementptr i8, ptr %i.go, i64 %i.gz
  %next.gep1357 = getelementptr i8, ptr %i.hb, i64 80
  %i.hc = getelementptr i8, ptr %i.go, i64 %i.gz
  %next.gep1358 = getelementptr i8, ptr %i.hc, i64 120
  %i.hd = getelementptr i8, ptr %i.go, i64 %i.gz
  %next.gep1359 = getelementptr i8, ptr %i.hd, i64 160
  %i.he = getelementptr i8, ptr %i.go, i64 %i.gz
  %next.gep1360 = getelementptr i8, ptr %i.he, i64 200
  %i.hf = getelementptr i8, ptr %i.go, i64 %i.gz
  %next.gep1361 = getelementptr i8, ptr %i.hf, i64 240
  %i.hg = getelementptr i8, ptr %i.go, i64 %i.gz
  %next.gep1362 = getelementptr i8, ptr %i.hg, i64 280
  %i.hh = load i32, ptr %next.gep, align 8, !tbaa !41
  %i.hi = load i32, ptr %next.gep1356, align 8, !tbaa !41
  %i.hj = load i32, ptr %next.gep1357, align 8, !tbaa !41
  %i.hk = load i32, ptr %next.gep1358, align 8, !tbaa !41
  %i.hl = insertelement <4 x i32> poison, i32 %i.hh, i64 0
  %i.hm = insertelement <4 x i32> %i.hl, i32 %i.hi, i64 1
  %i.hn = insertelement <4 x i32> %i.hm, i32 %i.hj, i64 2
  %i.ho = insertelement <4 x i32> %i.hn, i32 %i.hk, i64 3
  %i.hp = load i32, ptr %next.gep1359, align 8, !tbaa !41
  %i.hq = load i32, ptr %next.gep1360, align 8, !tbaa !41
  %i.hr = load i32, ptr %next.gep1361, align 8, !tbaa !41
  %i.hs = load i32, ptr %next.gep1362, align 8, !tbaa !41
  %i.ht = insertelement <4 x i32> poison, i32 %i.hp, i64 0
  %i.hu = insertelement <4 x i32> %i.ht, i32 %i.hq, i64 1
  %i.hv = insertelement <4 x i32> %i.hu, i32 %i.hr, i64 2
  %i.hw = insertelement <4 x i32> %i.hv, i32 %i.hs, i64 3
  %i.hx = icmp ne <4 x i32> %i.ho, splat (i32 1)
  %i.hy = icmp ne <4 x i32> %i.hw, splat (i32 1)
  %i.hz = zext <4 x i1> %i.hx to <4 x i32>
  %i.ia = zext <4 x i1> %i.hy to <4 x i32>
  %i.ib = add <4 x i32> %vec.phi, %i.hz           ; 2 uses
  %i.ic = add <4 x i32> %vec.phi1355, %i.ia       ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.id = icmp eq i64 %index.next, %n.vec
  br i1 %i.id, label %middle.block, label %vector.body, !llvm.loop !523

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ic, %i.ib
  %i.ie = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.gw, %n.vec
  br i1 %cmp.n, label %.lr.ph33.i.i.preheader, label %.lr.ph.i.i564.preheader1424

.lr.ph.i.i564.preheader1424:                      ; preds = %.lr.ph.i.i564.preheader, %middle.block
  %.01529.i.i.ph = phi i32 [ 0, %.lr.ph.i.i564.preheader ], [ %i.ie, %middle.block ]
  %.sroa.022.028.i.i.ph = phi ptr [ %i.go, %.lr.ph.i.i564.preheader ], [ %i.gy, %middle.block ]
  br label %.lr.ph.i.i564

._ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit_crit_edge: ; preds = %bb.au
  %.pre1146 = load i32, ptr %i.am, align 4, !tbaa !93
  br label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit

.lr.ph.i.i564:                                    ; preds = %.lr.ph.i.i564.preheader1424, %.lr.ph.i.i564
  %.01529.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i564 ], [ %.01529.i.i.ph, %.lr.ph.i.i564.preheader1424 ]
  %.sroa.022.028.i.i = phi ptr [ %i.ih, %.lr.ph.i.i564 ], [ %.sroa.022.028.i.i.ph, %.lr.ph.i.i564.preheader1424 ] ; 2 uses
  %i.if = load i32, ptr %.sroa.022.028.i.i, align 8, !tbaa !41
  %.not17.i.i = icmp ne i32 %i.if, 1
  %i.ig = zext i1 %.not17.i.i to i32
  %spec.select.i.i = add i32 %.01529.i.i, %i.ig   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.022.028.i.i, i64 40 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.ih, %i.gq
  br i1 %.not25.i.i, label %.lr.ph33.i.i.preheader, label %.lr.ph.i.i564, !llvm.loop !524

.lr.ph33.i.i.preheader:                           ; preds = %.lr.ph.i.i564, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.ie, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i564 ] ; 3 uses
  %i.ii = icmp ult i64 %i.gu, 40
  br i1 %i.ii, label %.lr.ph33.i.i.epil.preheader, label %.lr.ph33.i.i.preheader.new

.lr.ph33.i.i.preheader.new:                       ; preds = %.lr.ph33.i.i.preheader
  %unroll_iter = and i64 %i.gw, 1152921504606846974
  br label %.lr.ph33.i.i

.lr.ph33.i.i:                                     ; preds = %bb.av, %.lr.ph33.i.i.preheader.new
  %.032.i.i = phi i32 [ 0, %.lr.ph33.i.i.preheader.new ], [ %.1.i.i.1, %bb.av ] ; 2 uses
  %.sroa.018.031.i.i = phi ptr [ %i.go, %.lr.ph33.i.i.preheader.new ], [ %i.is, %bb.av ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph33.i.i.preheader.new ], [ %niter.next.1, %bb.av ]
  %i.ij = load i32, ptr %.sroa.018.031.i.i, align 8, !tbaa !41
  %.not.i.i565 = icmp eq i32 %i.ij, 1
  br i1 %.not.i.i565, label %.lr.ph33.i.i.1, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph33.i.i
  %i.ik = add i32 %.032.i.i, 1                    ; 2 uses
  %i.il = icmp ult i32 %i.ik, %spec.select.i.i.lcssa
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i, i64 8
  %..i.i = select i1 %i.il, i32 %i.ec, i32 %i.gn
  store i32 %..i.i, ptr %i.im, align 8, !tbaa !63
  br label %.lr.ph33.i.i.1

.lr.ph33.i.i.1:                                   ; preds = %.sink.split.i.i, %.lr.ph33.i.i
  %.1.i.i = phi i32 [ %.032.i.i, %.lr.ph33.i.i ], [ %i.ik, %.sink.split.i.i ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i, i64 40
  %i.io = load i32, ptr %i.in, align 8, !tbaa !41
  %.not.i.i565.1 = icmp eq i32 %i.io, 1
  br i1 %.not.i.i565.1, label %bb.av, label %.sink.split.i.i.1

.sink.split.i.i.1:                                ; preds = %.lr.ph33.i.i.1
  %i.ip = add i32 %.1.i.i, 1                      ; 2 uses
  %i.iq = icmp ult i32 %i.ip, %spec.select.i.i.lcssa
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i, i64 48
  %..i.i.1 = select i1 %i.iq, i32 %i.ec, i32 %i.gn
  store i32 %..i.i.1, ptr %i.ir, align 8, !tbaa !63
  br label %bb.av

bb.av:                                            ; preds = %.sink.split.i.i.1, %.lr.ph33.i.i.1
  %.1.i.i.1 = phi i32 [ %.1.i.i, %.lr.ph33.i.i.1 ], [ %i.ip, %.sink.split.i.i.1 ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i, i64 80 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.unr-lcssa, label %.lr.ph33.i.i

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.unr-lcssa: ; preds = %bb.av
  %lcmp.mod.not = trunc i64 %i.gw to i1
  br i1 %lcmp.mod.not, label %.lr.ph33.i.i.epil.preheader, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i

.lr.ph33.i.i.epil.preheader:                      ; preds = %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.unr-lcssa, %.lr.ph33.i.i.preheader
  %.032.i.i.epil.init = phi i32 [ 0, %.lr.ph33.i.i.preheader ], [ %.1.i.i.1, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.unr-lcssa ]
  %.sroa.018.031.i.i.epil.init = phi ptr [ %i.go, %.lr.ph33.i.i.preheader ], [ %i.is, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod1434 = trunc i64 %i.gw to i1
  call void @llvm.assume(i1 %lcmp.mod1434)
  %i.it = load i32, ptr %.sroa.018.031.i.i.epil.init, align 8, !tbaa !41
  %.not.i.i565.epil = icmp eq i32 %i.it, 1
  br i1 %.not.i.i565.epil, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i, label %.sink.split.i.i.epil

.sink.split.i.i.epil:                             ; preds = %.lr.ph33.i.i.epil.preheader
  %i.iu = add i32 %.032.i.i.epil.init, 1
  %i.iv = icmp ult i32 %i.iu, %spec.select.i.i.lcssa
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.epil.init, i64 8
  %..i.i.epil = select i1 %i.iv, i32 %i.ec, i32 %i.gn
  store i32 %..i.i.epil, ptr %i.iw, align 8, !tbaa !63
  br label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i: ; preds = %.lr.ph33.i.i.epil.preheader, %.sink.split.i.i.epil, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.unr-lcssa
  %.promoted.i.i = load i32, ptr %i.am, align 4   ; 2 uses
  %i.ix = icmp ult i64 %i.gu, 40
  br i1 %i.ix, label %.lr.ph.i7.i.epil.preheader, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.new

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.new: ; preds = %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i
  %unroll_iter1439 = and i64 %i.gw, 1152921504606846974
  br label %.lr.ph.i7.i

.lr.ph.i7.i:                                      ; preds = %bb.ba, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.new
  %.06.i.i = phi i8 [ 0, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.new ], [ %.1.i10.i.1, %bb.ba ] ; 2 uses
  %.sroa.01.05.i.i = phi ptr [ %i.go, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.new ], [ %i.jw, %bb.ba ] ; 7 uses
  %i.iy = phi i32 [ %.promoted.i.i, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.new ], [ %i.jv, %bb.ba ] ; 2 uses
  %niter1440 = phi i64 [ 0, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.new ], [ %niter1440.next.1, %bb.ba ]
  %i.iz = load i32, ptr %.sroa.01.05.i.i, align 8, !tbaa !41
  switch i32 %i.iz, label %.lr.ph.i7.i.1 [
    i32 2, label %bb.aw
    i32 0, label %bb.aw
    i32 1, label %bb.ax
  ]

bb.aw:                                            ; preds = %.lr.ph.i7.i, %.lr.ph.i7.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !63
  br label %.sink.split.i9.i

bb.ax:                                            ; preds = %.lr.ph.i7.i
  %i.jc = zext nneg i8 %.06.i.i to i32
  %spec.select.i8.i = add i32 %i.iy, %i.jc
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !43
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !48
  %i.jh = trunc i64 %i.jg to i32
  %i.ji = add i32 %spec.select.i8.i, %i.jh
  br label %.sink.split.i9.i

.sink.split.i9.i:                                 ; preds = %bb.ax, %bb.aw
  %.sink.i.i = phi i32 [ %i.ji, %bb.ax ], [ %i.jb, %bb.aw ] ; 2 uses
  %.1.ph.i.i = phi i8 [ 1, %bb.ax ], [ 0, %bb.aw ]
  store i32 %.sink.i.i, ptr %i.am, align 4, !tbaa !84
  br label %.lr.ph.i7.i.1

.lr.ph.i7.i.1:                                    ; preds = %.sink.split.i9.i, %.lr.ph.i7.i
  %i.jj = phi i32 [ %i.iy, %.lr.ph.i7.i ], [ %.sink.i.i, %.sink.split.i9.i ] ; 2 uses
  %.1.i10.i = phi i8 [ %.06.i.i, %.lr.ph.i7.i ], [ %.1.ph.i.i, %.sink.split.i9.i ] ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 40
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !41
  switch i32 %i.jl, label %bb.ba [
    i32 2, label %bb.az
    i32 0, label %bb.az
    i32 1, label %bb.ay
  ]

bb.ay:                                            ; preds = %.lr.ph.i7.i.1
  %i.jm = zext nneg i8 %.1.i10.i to i32
  %spec.select.i8.i.1 = add i32 %i.jj, %i.jm
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 56
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !43
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !48
  %i.jr = trunc i64 %i.jq to i32
  %i.js = add i32 %spec.select.i8.i.1, %i.jr
  br label %.sink.split.i9.i.1

bb.az:                                            ; preds = %.lr.ph.i7.i.1, %.lr.ph.i7.i.1
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 48
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !63
  br label %.sink.split.i9.i.1

.sink.split.i9.i.1:                               ; preds = %bb.az, %bb.ay
  %.sink.i.i.1 = phi i32 [ %i.js, %bb.ay ], [ %i.ju, %bb.az ] ; 2 uses
  %.1.ph.i.i.1 = phi i8 [ 1, %bb.ay ], [ 0, %bb.az ]
  store i32 %.sink.i.i.1, ptr %i.am, align 4, !tbaa !84
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split.i9.i.1, %.lr.ph.i7.i.1
  %i.jv = phi i32 [ %i.jj, %.lr.ph.i7.i.1 ], [ %.sink.i.i.1, %.sink.split.i9.i.1 ] ; 3 uses
  %.1.i10.i.1 = phi i8 [ %.1.i10.i, %.lr.ph.i7.i.1 ], [ %.1.ph.i.i.1, %.sink.split.i9.i.1 ] ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 80 ; 2 uses
  %niter1440.next.1 = add i64 %niter1440, 2       ; 2 uses
  %niter1440.ncmp.1 = icmp eq i64 %niter1440.next.1, %unroll_iter1439
  br i1 %niter1440.ncmp.1, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit.loopexit.unr-lcssa, label %.lr.ph.i7.i

_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit.loopexit.unr-lcssa: ; preds = %bb.ba
  %lcmp.mod1436.not = trunc i64 %i.gw to i1
  br i1 %lcmp.mod1436.not, label %.lr.ph.i7.i.epil.preheader, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit

.lr.ph.i7.i.epil.preheader:                       ; preds = %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit.loopexit.unr-lcssa, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i
  %.06.i.i.epil.init = phi i8 [ 0, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i ], [ %.1.i10.i.1, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit.loopexit.unr-lcssa ]
  %.sroa.01.05.i.i.epil.init = phi ptr [ %i.go, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i ], [ %i.jw, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init = phi i32 [ %.promoted.i.i, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i ], [ %i.jv, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1438 = trunc i64 %i.gw to i1
  call void @llvm.assume(i1 %lcmp.mod1438)
  %i.jx = load i32, ptr %.sroa.01.05.i.i.epil.init, align 8, !tbaa !41
  switch i32 %i.jx, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit [
    i32 2, label %bb.bc
    i32 0, label %bb.bc
    i32 1, label %bb.bb
  ]

bb.bb:                                            ; preds = %.lr.ph.i7.i.epil.preheader
  %i.jy = zext nneg i8 %.06.i.i.epil.init to i32
  %spec.select.i8.i.epil = add i32 %.epil.init, %i.jy
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.epil.init, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !43
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !48
  %i.kd = trunc i64 %i.kc to i32
  %i.ke = add i32 %spec.select.i8.i.epil, %i.kd
  br label %.sink.split.i9.i.epil

bb.bc:                                            ; preds = %.lr.ph.i7.i.epil.preheader, %.lr.ph.i7.i.epil.preheader
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.epil.init, i64 8
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !63
  br label %.sink.split.i9.i.epil

.sink.split.i9.i.epil:                            ; preds = %bb.bc, %bb.bb
  %.sink.i.i.epil = phi i32 [ %i.ke, %bb.bb ], [ %i.kg, %bb.bc ] ; 2 uses
  store i32 %.sink.i.i.epil, ptr %i.am, align 4, !tbaa !84
  br label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit

_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit: ; preds = %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit.loopexit.unr-lcssa, %.sink.split.i9.i.epil, %.lr.ph.i7.i.epil.preheader, %._ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit_crit_edge
  %i.kh = phi i32 [ %.pre1146, %._ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit_crit_edge ], [ %i.jv, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit.loopexit.unr-lcssa ], [ %.epil.init, %.lr.ph.i7.i.epil.preheader ], [ %.sink.i.i.epil, %.sink.split.i9.i.epil ]
  %i.ki = add i32 %i.kh, 1                        ; 2 uses
  store i32 %i.ki, ptr %i.am, align 4, !tbaa !93
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.kk = load i8, ptr %i.kj, align 8, !tbaa !148, !range !81, !noundef !82
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit
  %i.km = getelementptr inbounds nuw i8, ptr %i.ag, i64 216
  %i.kn = load i32, ptr %2, align 4, !tbaa !95
  %i.ko = load ptr, ptr %i.km, align 8, !tbaa !30 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ag, i64 224
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !30 ; 3 uses
  %.not2527.i.i.i566 = icmp eq ptr %i.ko, %i.kq
  br i1 %.not2527.i.i.i566, label %._crit_edge.i.i.i584.thread, label %.lr.ph33.i.i.i567

.lr.ph33.i.i.i567:                                ; preds = %bb.bd, %bb.be
  %.sroa.018.031.i.i.i568 = phi ptr [ %i.kt, %bb.be ], [ %i.ko, %bb.bd ] ; 3 uses
  %i.kr = load i32, ptr %.sroa.018.031.i.i.i568, align 8, !tbaa !41
  %.not.i.i.i569 = icmp eq i32 %i.kr, 1
  br i1 %.not.i.i.i569, label %bb.be, label %.sink.split.i.i.i570

.sink.split.i.i.i570:                             ; preds = %.lr.ph33.i.i.i567
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.i568, i64 8
  store i32 %i.kn, ptr %i.ks, align 8, !tbaa !63
  br label %bb.be

bb.be:                                            ; preds = %.sink.split.i.i.i570, %.lr.ph33.i.i.i567
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.i568, i64 40 ; 2 uses
  %.not26.i.i.i571 = icmp eq ptr %i.kt, %i.kq
  br i1 %.not26.i.i.i571, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i572, label %.lr.ph33.i.i.i567

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i572: ; preds = %bb.be
  %.promoted.i.i.i573 = load i32, ptr %i.am, align 4
  br label %.lr.ph.i7.i.i574

._crit_edge.i.i.i584:                             ; preds = %bb.bh
  %i.ku = trunc nuw i8 %.1.i10.i.i581 to i1
  br i1 %i.ku, label %._crit_edge.i.i.i584.thread, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit589

.lr.ph.i7.i.i574:                                 ; preds = %bb.bh, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i572
  %.06.i.i.i575 = phi i8 [ %.1.i10.i.i581, %bb.bh ], [ 1, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i572 ] ; 2 uses
  %.sroa.01.05.i.i.i576 = phi ptr [ %i.lh, %bb.bh ], [ %i.ko, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i572 ] ; 4 uses
  %i.kv = phi i32 [ %i.lg, %bb.bh ], [ %.promoted.i.i.i573, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i572 ] ; 2 uses
  %i.kw = load i32, ptr %.sroa.01.05.i.i.i576, align 8, !tbaa !41
  switch i32 %i.kw, label %bb.bh [
    i32 2, label %bb.bf
    i32 0, label %bb.bf
    i32 1, label %bb.bg
  ]

bb.bf:                                            ; preds = %.lr.ph.i7.i.i574, %.lr.ph.i7.i.i574
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i576, i64 8
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !63
  br label %.sink.split.i9.i.i578

bb.bg:                                            ; preds = %.lr.ph.i7.i.i574
  %i.kz = zext nneg i8 %.06.i.i.i575 to i32
  %spec.select.i8.i.i577 = add i32 %i.kv, %i.kz
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i576, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !43
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !48
  %i.le = trunc i64 %i.ld to i32
  %i.lf = add i32 %spec.select.i8.i.i577, %i.le
  br label %.sink.split.i9.i.i578

.sink.split.i9.i.i578:                            ; preds = %bb.bg, %bb.bf
  %.sink.i.i.i579 = phi i32 [ %i.lf, %bb.bg ], [ %i.ky, %bb.bf ] ; 2 uses
  %.1.ph.i.i.i580 = phi i8 [ 1, %bb.bg ], [ 0, %bb.bf ]
  store i32 %.sink.i.i.i579, ptr %i.am, align 4, !tbaa !84
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split.i9.i.i578, %.lr.ph.i7.i.i574
  %i.lg = phi i32 [ %i.kv, %.lr.ph.i7.i.i574 ], [ %.sink.i.i.i579, %.sink.split.i9.i.i578 ] ; 3 uses
  %.1.i10.i.i581 = phi i8 [ %.06.i.i.i575, %.lr.ph.i7.i.i574 ], [ %.1.ph.i.i.i580, %.sink.split.i9.i.i578 ] ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i576, i64 40 ; 2 uses
  %.not.i11.i.i582 = icmp eq ptr %i.lh, %i.kq
  br i1 %.not.i11.i.i582, label %._crit_edge.i.i.i584, label %.lr.ph.i7.i.i574

._crit_edge.i.i.i584.thread:                      ; preds = %bb.bd, %._crit_edge.i.i.i584
  %i.li = phi i32 [ %i.lg, %._crit_edge.i.i.i584 ], [ %i.ki, %bb.bd ]
  %i.lj = add i32 %i.li, 1
  br label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit589

_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit589: ; preds = %._crit_edge.i.i.i584, %._crit_edge.i.i.i584.thread
  %i.lk = phi i32 [ %i.lg, %._crit_edge.i.i.i584 ], [ %i.lj, %._crit_edge.i.i.i584.thread ]
  %i.ll = add i32 %i.lk, 10
  store i32 %i.ll, ptr %i.am, align 4, !tbaa !93
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit589, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %common.ret1490

bb.bj:                                            ; preds = %bb.g
  %i.lm = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal10ApplyBraceE, i64 0) #27 ; 3 uses
  %.not417 = icmp eq ptr %i.lm, null
  br i1 %.not417, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 128
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !150 ; 3 uses
  %i.lp = tail call fastcc noundef ptr @_ZN7jsonnet8internalL14left_recursiveEPNS0_3ASTE(ptr noundef readonly %i.lo) ; 2 uses
  %.not7.i.i590 = icmp eq ptr %i.lp, null
  br i1 %.not7.i.i590, label %_ZN7jsonnet8internalL11open_fodderEPNS0_3ASTE.exit595, label %.lr.ph.i.i591

.lr.ph.i.i591:                                    ; preds = %bb.bk, %.lr.ph.i.i591
  %.08.i.i592 = phi ptr [ %i.lq, %.lr.ph.i.i591 ], [ %i.lp, %bb.bk ] ; 2 uses
  %i.lq = tail call fastcc noundef ptr @_ZN7jsonnet8internalL14left_recursiveEPNS0_3ASTE(ptr noundef nonnull %.08.i.i592) ; 2 uses
  %.not.i.i593 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i593, label %_ZN7jsonnet8internalL11open_fodderEPNS0_3ASTE.exit595, label %.lr.ph.i.i591, !llvm.loop !0

_ZN7jsonnet8internalL11open_fodderEPNS0_3ASTE.exit595: ; preds = %.lr.ph.i.i591, %bb.bk
  %.06.lcssa.i.i594 = phi ptr [ %i.lo, %bb.bk ], [ %.08.i.i592, %.lr.ph.i.i591 ] ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.06.lcssa.i.i594, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.ls = zext i1 %3 to i32
  %i.lt = add i32 %i.ae, %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %.06.lcssa.i.i594, i64 88
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !32
  %i.lw = load ptr, ptr %i.lr, align 8, !tbaa !33 ; 2 uses
  %i.lx = icmp eq ptr %i.lv, %i.lw
  br i1 %i.lx, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZN7jsonnet8internalL11open_fodderEPNS0_3ASTE.exit595
  %i.ly = load i32, ptr %i.lw, align 8, !tbaa !41
  %i.lz = icmp eq i32 %i.ly, 1
  br i1 %i.lz, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl, %_ZN7jsonnet8internalL11open_fodderEPNS0_3ASTE.exit595
  %i.ma = load i32, ptr %2, align 4, !tbaa !95
  %i.mb = zext i32 %i.lt to i64
  br label %_ZN7jsonnet8internal14FixIndentation5alignERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit603

bb.bn:                                            ; preds = %bb.bl
  %i.mc = load i64, ptr %2, align 4, !tbaa !84    ; 2 uses
  %.sroa.0.0.extract.trunc.i596 = trunc i64 %i.mc to i32
  %.sroa.3.0.extract.shift.i597 = lshr i64 %i.mc, 32
  br label %_ZN7jsonnet8internal14FixIndentation5alignERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit603

_ZN7jsonnet8internal14FixIndentation5alignERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit603: ; preds = %bb.bm, %bb.bn
  %.sroa.3.0.i598 = phi i64 [ %i.mb, %bb.bm ], [ %.sroa.3.0.extract.shift.i597, %bb.bn ]
  %.sroa.0.0.i599 = phi i32 [ %i.ma, %bb.bm ], [ %.sroa.0.0.extract.trunc.i596, %bb.bn ]
  %.sroa.3.0.insert.shift.i600 = shl nuw i64 %.sroa.3.0.i598, 32
  %.sroa.0.0.insert.ext.i601 = zext i32 %.sroa.0.0.i599 to i64
  %.sroa.0.0.insert.insert.i602 = or disjoint i64 %.sroa.3.0.insert.shift.i600, %.sroa.0.0.insert.ext.i601
  store i64 %.sroa.0.0.insert.insert.i602, ptr %6, align 8
  call void @_ZN7jsonnet8internal14FixIndentation4exprEPNS0_3ASTERKNS1_6IndentEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.lo, ptr noundef nonnull align 4 dereferenceable(8) %6, i1 noundef zeroext %3)
  %i.md = getelementptr inbounds nuw i8, ptr %i.lm, i64 136
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !281
  call void @_ZN7jsonnet8internal14FixIndentation4exprEPNS0_3ASTERKNS1_6IndentEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.me, ptr noundef nonnull align 4 dereferenceable(8) %6, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %common.ret1490

bb.bo:                                            ; preds = %bb.bj
  %i.mf = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal5ArrayE, i64 0) #27 ; 7 uses
  %.not418 = icmp eq ptr %i.mf, null
  br i1 %.not418, label %bb.ct, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 13 uses
end_hunk_1
begin_hunk_2_@_ZN7jsonnet8internal14FixIndentation4exprEPNS0_3ASTERKNS1_6IndentEb:bb.a

bb.bu:                                            ; preds = %bb.bt
  %i.nj = load i32, ptr %i.nh, align 8, !tbaa !41
  %i.nk = icmp eq i32 %i.nj, 1
  br i1 %i.nk, label %_ZN7jsonnet8internal14FixIndentation15newIndentStrongERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit627, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nl = load i32, ptr %2, align 4, !tbaa !95
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !293
  %i.no = add i32 %i.nn, %i.nl
  br label %_ZN7jsonnet8internal14FixIndentation15newIndentStrongERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit627

_ZN7jsonnet8internal14FixIndentation15newIndentStrongERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit627: ; preds = %bb.bt, %bb.bu, %bb.bv
  %.sroa.3.0.i623 = phi i32 [ %i.no, %bb.bv ], [ %i.mt, %bb.bu ], [ %i.mt, %bb.bt ]
  %.sroa.3.0.insert.ext.i624 = zext i32 %.sroa.3.0.i623 to i64
  %.sroa.0.0.insert.insert.i626 = mul nuw i64 %.sroa.3.0.insert.ext.i624, 4294967297
  br label %bb.ca

.critedge1138:                                    ; preds = %bb.bp
  %i.np = getelementptr inbounds nuw i8, ptr %i.mf, i64 160
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.nr = load i8, ptr %i.nq, align 4, !tbaa !532, !range !81, !noundef !82
  %i.ns = zext nneg i8 %i.nr to i32
  %i.nt = add i32 %i.mh, %i.ns
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  br label %bb.bw

bb.bw:                                            ; preds = %.critedge1138, %._crit_edge1114
  %i.nu = phi i32 [ %i.nt, %.critedge1138 ], [ %i.mt, %._crit_edge1114 ]
  %i.nv = phi ptr [ %i.nq, %.critedge1138 ], [ %i.mq, %._crit_edge1114 ]
  %i.nw = phi ptr [ %i.np, %.critedge1138 ], [ %i.mp, %._crit_edge1114 ] ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !32
  %i.nz = load ptr, ptr %i.nw, align 8, !tbaa !33 ; 2 uses
  %i.oa = icmp eq ptr %i.ny, %i.nz
  br i1 %i.oa, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ob = load i32, ptr %i.nz, align 8, !tbaa !41
  %i.oc = icmp eq i32 %i.ob, 1
  br i1 %i.oc, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.od = load i32, ptr %2, align 4, !tbaa !95
  br label %_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit634

bb.bz:                                            ; preds = %bb.bx
  %i.oe = load i32, ptr %2, align 4, !tbaa !95
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.og = load i32, ptr %i.of, align 4, !tbaa !293
  %i.oh = add i32 %i.og, %i.oe                    ; 2 uses
  br label %_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit634

_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit634: ; preds = %bb.by, %bb.bz
  %.sroa.3.0.i628 = phi i32 [ %i.nu, %bb.by ], [ %i.oh, %bb.bz ]
  %.sroa.0.0.i629 = phi i32 [ %i.od, %bb.by ], [ %i.oh, %bb.bz ]
  %.sroa.3.0.insert.ext.i630 = zext i32 %.sroa.3.0.i628 to i64
  %.sroa.3.0.insert.shift.i631 = shl nuw i64 %.sroa.3.0.insert.ext.i630, 32
  %.sroa.0.0.insert.ext.i632 = zext i32 %.sroa.0.0.i629 to i64
  %.sroa.0.0.insert.insert.i633 = or disjoint i64 %.sroa.3.0.insert.shift.i631, %.sroa.0.0.insert.ext.i632
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit634, %_ZN7jsonnet8internal14FixIndentation15newIndentStrongERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit627
  %i.oi = phi ptr [ %i.nv, %_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit634 ], [ %i.mq, %_ZN7jsonnet8internal14FixIndentation15newIndentStrongERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit627 ] ; 2 uses
  %storemerge460 = phi i64 [ %.sroa.0.0.insert.insert.i633, %_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit634 ], [ %.sroa.0.0.insert.insert.i626, %_ZN7jsonnet8internal14FixIndentation15newIndentStrongERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit627 ] ; 2 uses
  store i64 %storemerge460, ptr %7, align 8
  %i.oj = lshr i64 %storemerge460, 32
  %i.ok = trunc nuw i64 %i.oj to i32
  br i1 %.not459, label %._crit_edge1121, label %.lr.ph1120

.lr.ph1120:                                       ; preds = %bb.ca
  %i.ol = getelementptr inbounds nuw i8, ptr %7, i64 4
  br label %bb.cb

._crit_edge1121:                                  ; preds = %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit666, %bb.ca
  %i.om = phi i32 [ %i.ok, %bb.ca ], [ %i.ox, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit666 ] ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.mf, i64 152
  %i.oo = load i8, ptr %i.on, align 8, !tbaa !161, !range !81, !noundef !82
  %i.op = trunc nuw i8 %i.oo to i1
  br i1 %i.op, label %bb.cj, label %bb.ck

bb.cb:                                            ; preds = %.lr.ph1120, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit666
  %.23761118 = phi i1 [ true, %.lr.ph1120 ], [ false, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit666 ]
  %.sroa.0984.01117 = phi ptr [ %i.ml, %.lr.ph1120 ], [ %i.pr, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit666 ] ; 4 uses
  br i1 %.23761118, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.oq = load i32, ptr %i.mg, align 4, !tbaa !93
  %i.or = add i32 %i.oq, 1
  store i32 %i.or, ptr %i.mg, align 4, !tbaa !93
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.os = load i8, ptr %i.oi, align 4, !tbaa !532, !range !81, !noundef !82
  %i.ot = trunc nuw i8 %i.os to i1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %i.ou = phi i1 [ true, %bb.cc ], [ %i.ot, %bb.cd ]
  %i.ov = load ptr, ptr %.sroa.0984.01117, align 8, !tbaa !155
  call void @_ZN7jsonnet8internal14FixIndentation4exprEPNS0_3ASTERKNS1_6IndentEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ov, ptr noundef nonnull align 4 dereferenceable(8) %7, i1 noundef zeroext %i.ou)
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.0984.01117, i64 8
  %i.ox = load i32, ptr %i.ol, align 4, !tbaa !96 ; 2 uses
  %i.oy = load ptr, ptr %i.ow, align 8, !tbaa !30 ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0984.01117, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !30 ; 3 uses
  %.not2527.i.i635 = icmp eq ptr %i.oy, %i.pa
  br i1 %.not2527.i.i635, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit666, label %.lr.ph33.i.i643

.lr.ph33.i.i643:                                  ; preds = %bb.ce, %bb.cf
  %.sroa.018.031.i.i645 = phi ptr [ %i.pd, %bb.cf ], [ %i.oy, %bb.ce ] ; 3 uses
  %i.pb = load i32, ptr %.sroa.018.031.i.i645, align 8, !tbaa !41
  %.not.i.i646 = icmp eq i32 %i.pb, 1
  br i1 %.not.i.i646, label %bb.cf, label %.sink.split.i.i647

.sink.split.i.i647:                               ; preds = %.lr.ph33.i.i643
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i645, i64 8
  store i32 %i.ox, ptr %i.pc, align 8, !tbaa !63
  br label %bb.cf

bb.cf:                                            ; preds = %.sink.split.i.i647, %.lr.ph33.i.i643
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i645, i64 40 ; 2 uses
  %.not26.i.i650 = icmp eq ptr %i.pd, %i.pa
  br i1 %.not26.i.i650, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i651, label %.lr.ph33.i.i643

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i651: ; preds = %bb.cf
  %.promoted.i.i652 = load i32, ptr %i.mg, align 4
  br label %.lr.ph.i7.i653

.lr.ph.i7.i653:                                   ; preds = %bb.ci, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i651
  %.06.i.i654 = phi i8 [ %.1.i10.i660, %bb.ci ], [ 0, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i651 ] ; 2 uses
  %.sroa.01.05.i.i655 = phi ptr [ %i.pq, %bb.ci ], [ %i.oy, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i651 ] ; 4 uses
  %i.pe = phi i32 [ %i.pp, %bb.ci ], [ %.promoted.i.i652, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i651 ] ; 2 uses
  %i.pf = load i32, ptr %.sroa.01.05.i.i655, align 8, !tbaa !41
  switch i32 %i.pf, label %bb.ci [
    i32 2, label %bb.cg
    i32 0, label %bb.cg
    i32 1, label %bb.ch
  ]

bb.cg:                                            ; preds = %.lr.ph.i7.i653, %.lr.ph.i7.i653
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i655, i64 8
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !63
  br label %.sink.split.i9.i657

bb.ch:                                            ; preds = %.lr.ph.i7.i653
  %i.pi = zext nneg i8 %.06.i.i654 to i32
  %spec.select.i8.i656 = add i32 %i.pe, %i.pi
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i655, i64 16
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !43
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !48
  %i.pn = trunc i64 %i.pm to i32
  %i.po = add i32 %spec.select.i8.i656, %i.pn
  br label %.sink.split.i9.i657

.sink.split.i9.i657:                              ; preds = %bb.ch, %bb.cg
  %.sink.i.i658 = phi i32 [ %i.po, %bb.ch ], [ %i.ph, %bb.cg ] ; 2 uses
  %.1.ph.i.i659 = phi i8 [ 1, %bb.ch ], [ 0, %bb.cg ]
  store i32 %.sink.i.i658, ptr %i.mg, align 4, !tbaa !84
  br label %bb.ci

bb.ci:                                            ; preds = %.sink.split.i9.i657, %.lr.ph.i7.i653
  %i.pp = phi i32 [ %i.pe, %.lr.ph.i7.i653 ], [ %.sink.i.i658, %.sink.split.i9.i657 ]
  %.1.i10.i660 = phi i8 [ %.06.i.i654, %.lr.ph.i7.i653 ], [ %.1.ph.i.i659, %.sink.split.i9.i657 ]
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i655, i64 40 ; 2 uses
  %.not.i11.i661 = icmp eq ptr %i.pq, %i.pa
  br i1 %.not.i11.i661, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit666, label %.lr.ph.i7.i653

_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit666: ; preds = %bb.ci, %bb.ce
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.0984.01117, i64 32 ; 2 uses
  %.not1087 = icmp eq ptr %i.pr, %i.mk
  br i1 %.not1087, label %._crit_edge1121, label %bb.cb

bb.cj:                                            ; preds = %._crit_edge1121
  %i.ps = load i32, ptr %i.mg, align 4, !tbaa !93
  %i.pt = add i32 %i.ps, 1
  store i32 %i.pt, ptr %i.mg, align 4, !tbaa !93
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %._crit_edge1121
  %i.pu = getelementptr inbounds nuw i8, ptr %i.mf, i64 160
  %i.pv = load ptr, ptr %i.mj, align 8, !tbaa !162
  %i.pw = load ptr, ptr %i.mi, align 8, !tbaa !163
  %i.px = icmp ne ptr %i.pv, %i.pw                ; 3 uses
  %i.py = load i8, ptr %i.oi, align 4, !tbaa !532, !range !81, !noundef !82
  %i.pz = trunc nuw i8 %i.py to i1
  %i.qa = load i32, ptr %2, align 4, !tbaa !95    ; 3 uses
  %i.qb = load ptr, ptr %i.pu, align 8, !tbaa !30 ; 19 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.mf, i64 168
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !30 ; 4 uses
  %.not2527.i.i667 = icmp eq ptr %i.qb, %i.qd
  br i1 %.not2527.i.i667, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i696, label %.lr.ph.i.i668.preheader

.lr.ph.i.i668.preheader:                          ; preds = %bb.ck
  %i.qe = ptrtoaddr ptr %i.qd to i64
  %i.qf = ptrtoaddr ptr %i.qb to i64
  %i.qg = add i64 %i.qe, -40
  %i.qh = sub i64 %i.qg, %i.qf                    ; 4 uses
  %i.qi = udiv i64 %i.qh, 40
  %i.qj = add nuw nsw i64 %i.qi, 1                ; 6 uses
  %min.iters.check1364 = icmp ult i64 %i.qh, 280
  br i1 %min.iters.check1364, label %.lr.ph.i.i668.preheader1415, label %vector.ph1365

vector.ph1365:                                    ; preds = %.lr.ph.i.i668.preheader
  %n.vec1366 = and i64 %i.qj, 1152921504606846968 ; 3 uses
  %i.qk = mul i64 %n.vec1366, 40
  %i.ql = getelementptr i8, ptr %i.qb, i64 %i.qk
  br label %vector.body1367

vector.body1367:                                  ; preds = %vector.body1367, %vector.ph1365
  %index1368 = phi i64 [ 0, %vector.ph1365 ], [ %index.next1379, %vector.body1367 ] ; 2 uses
  %vec.phi1369 = phi <4 x i32> [ zeroinitializer, %vector.ph1365 ], [ %i.ro, %vector.body1367 ]
  %vec.phi1370 = phi <4 x i32> [ zeroinitializer, %vector.ph1365 ], [ %i.rp, %vector.body1367 ]
  %i.qm = mul i64 %index1368, 40                  ; 8 uses
  %next.gep1371 = getelementptr i8, ptr %i.qb, i64 %i.qm
  %i.qn = getelementptr i8, ptr %i.qb, i64 %i.qm
  %next.gep1372 = getelementptr i8, ptr %i.qn, i64 40
  %i.qo = getelementptr i8, ptr %i.qb, i64 %i.qm
  %next.gep1373 = getelementptr i8, ptr %i.qo, i64 80
  %i.qp = getelementptr i8, ptr %i.qb, i64 %i.qm
  %next.gep1374 = getelementptr i8, ptr %i.qp, i64 120
  %i.qq = getelementptr i8, ptr %i.qb, i64 %i.qm
  %next.gep1375 = getelementptr i8, ptr %i.qq, i64 160
  %i.qr = getelementptr i8, ptr %i.qb, i64 %i.qm
  %next.gep1376 = getelementptr i8, ptr %i.qr, i64 200
  %i.qs = getelementptr i8, ptr %i.qb, i64 %i.qm
  %next.gep1377 = getelementptr i8, ptr %i.qs, i64 240
  %i.qt = getelementptr i8, ptr %i.qb, i64 %i.qm
  %next.gep1378 = getelementptr i8, ptr %i.qt, i64 280
  %i.qu = load i32, ptr %next.gep1371, align 8, !tbaa !41
  %i.qv = load i32, ptr %next.gep1372, align 8, !tbaa !41
  %i.qw = load i32, ptr %next.gep1373, align 8, !tbaa !41
  %i.qx = load i32, ptr %next.gep1374, align 8, !tbaa !41
  %i.qy = insertelement <4 x i32> poison, i32 %i.qu, i64 0
  %i.qz = insertelement <4 x i32> %i.qy, i32 %i.qv, i64 1
  %i.ra = insertelement <4 x i32> %i.qz, i32 %i.qw, i64 2
  %i.rb = insertelement <4 x i32> %i.ra, i32 %i.qx, i64 3
  %i.rc = load i32, ptr %next.gep1375, align 8, !tbaa !41
  %i.rd = load i32, ptr %next.gep1376, align 8, !tbaa !41
  %i.re = load i32, ptr %next.gep1377, align 8, !tbaa !41
  %i.rf = load i32, ptr %next.gep1378, align 8, !tbaa !41
  %i.rg = insertelement <4 x i32> poison, i32 %i.rc, i64 0
  %i.rh = insertelement <4 x i32> %i.rg, i32 %i.rd, i64 1
  %i.ri = insertelement <4 x i32> %i.rh, i32 %i.re, i64 2
  %i.rj = insertelement <4 x i32> %i.ri, i32 %i.rf, i64 3
  %i.rk = icmp ne <4 x i32> %i.rb, splat (i32 1)
  %i.rl = icmp ne <4 x i32> %i.rj, splat (i32 1)
  %i.rm = zext <4 x i1> %i.rk to <4 x i32>
  %i.rn = zext <4 x i1> %i.rl to <4 x i32>
  %i.ro = add <4 x i32> %vec.phi1369, %i.rm       ; 2 uses
  %i.rp = add <4 x i32> %vec.phi1370, %i.rn       ; 2 uses
  %index.next1379 = add nuw i64 %index1368, 8     ; 2 uses
  %i.rq = icmp eq i64 %index.next1379, %n.vec1366
  br i1 %i.rq, label %middle.block1380, label %vector.body1367, !llvm.loop !525

middle.block1380:                                 ; preds = %vector.body1367
  %bin.rdx1381 = add <4 x i32> %i.rp, %i.ro
  %i.rr = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1381) ; 2 uses
  %cmp.n1382 = icmp eq i64 %i.qj, %n.vec1366
  br i1 %cmp.n1382, label %.lr.ph33.i.i675.preheader, label %.lr.ph.i.i668.preheader1415

.lr.ph.i.i668.preheader1415:                      ; preds = %.lr.ph.i.i668.preheader, %middle.block1380
  %.01529.i.i669.ph = phi i32 [ 0, %.lr.ph.i.i668.preheader ], [ %i.rr, %middle.block1380 ]
  %.sroa.022.028.i.i670.ph = phi ptr [ %i.qb, %.lr.ph.i.i668.preheader ], [ %i.ql, %middle.block1380 ]
  br label %.lr.ph.i.i668

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i696: ; preds = %bb.ck
  %.promoted.i12.i697 = load i32, ptr %i.mg, align 4
  br label %._crit_edge.i.i

.lr.ph.i.i668:                                    ; preds = %.lr.ph.i.i668.preheader1415, %.lr.ph.i.i668
  %.01529.i.i669 = phi i32 [ %spec.select.i.i672, %.lr.ph.i.i668 ], [ %.01529.i.i669.ph, %.lr.ph.i.i668.preheader1415 ]
  %.sroa.022.028.i.i670 = phi ptr [ %i.ru, %.lr.ph.i.i668 ], [ %.sroa.022.028.i.i670.ph, %.lr.ph.i.i668.preheader1415 ] ; 2 uses
  %i.rs = load i32, ptr %.sroa.022.028.i.i670, align 8, !tbaa !41
  %.not17.i.i671 = icmp ne i32 %i.rs, 1
  %i.rt = zext i1 %.not17.i.i671 to i32
  %spec.select.i.i672 = add i32 %.01529.i.i669, %i.rt ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.022.028.i.i670, i64 40 ; 2 uses
  %.not25.i.i673 = icmp eq ptr %i.ru, %i.qd
  br i1 %.not25.i.i673, label %.lr.ph33.i.i675.preheader, label %.lr.ph.i.i668, !llvm.loop !526

.lr.ph33.i.i675.preheader:                        ; preds = %.lr.ph.i.i668, %middle.block1380
  %spec.select.i.i672.lcssa = phi i32 [ %i.rr, %middle.block1380 ], [ %spec.select.i.i672, %.lr.ph.i.i668 ] ; 3 uses
  %i.rv = icmp ult i64 %i.qh, 40
  br i1 %i.rv, label %.lr.ph33.i.i675.epil.preheader, label %.lr.ph33.i.i675.preheader.new

.lr.ph33.i.i675.preheader.new:                    ; preds = %.lr.ph33.i.i675.preheader
  %unroll_iter1444 = and i64 %i.qj, 1152921504606846974
  br label %.lr.ph33.i.i675

.lr.ph33.i.i675:                                  ; preds = %bb.cl, %.lr.ph33.i.i675.preheader.new
  %.032.i.i676 = phi i32 [ 0, %.lr.ph33.i.i675.preheader.new ], [ %.1.i.i681.1, %bb.cl ] ; 2 uses
  %.sroa.018.031.i.i677 = phi ptr [ %i.qb, %.lr.ph33.i.i675.preheader.new ], [ %i.sf, %bb.cl ] ; 5 uses
  %niter1445 = phi i64 [ 0, %.lr.ph33.i.i675.preheader.new ], [ %niter1445.next.1, %bb.cl ]
  %i.rw = load i32, ptr %.sroa.018.031.i.i677, align 8, !tbaa !41
  %.not.i.i678 = icmp eq i32 %i.rw, 1
  br i1 %.not.i.i678, label %.lr.ph33.i.i675.1, label %.sink.split.i.i679

.sink.split.i.i679:                               ; preds = %.lr.ph33.i.i675
  %i.rx = add i32 %.032.i.i676, 1                 ; 2 uses
  %i.ry = icmp ult i32 %i.rx, %spec.select.i.i672.lcssa
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i677, i64 8
  %..i.i680 = select i1 %i.ry, i32 %i.om, i32 %i.qa
  store i32 %..i.i680, ptr %i.rz, align 8, !tbaa !63
  br label %.lr.ph33.i.i675.1

.lr.ph33.i.i675.1:                                ; preds = %.sink.split.i.i679, %.lr.ph33.i.i675
  %.1.i.i681 = phi i32 [ %.032.i.i676, %.lr.ph33.i.i675 ], [ %i.rx, %.sink.split.i.i679 ] ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i677, i64 40
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !41
  %.not.i.i678.1 = icmp eq i32 %i.sb, 1
  br i1 %.not.i.i678.1, label %bb.cl, label %.sink.split.i.i679.1

.sink.split.i.i679.1:                             ; preds = %.lr.ph33.i.i675.1
  %i.sc = add i32 %.1.i.i681, 1                   ; 2 uses
  %i.sd = icmp ult i32 %i.sc, %spec.select.i.i672.lcssa
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i677, i64 48
  %..i.i680.1 = select i1 %i.sd, i32 %i.om, i32 %i.qa
  store i32 %..i.i680.1, ptr %i.se, align 8, !tbaa !63
  br label %bb.cl

bb.cl:                                            ; preds = %.sink.split.i.i679.1, %.lr.ph33.i.i675.1
  %.1.i.i681.1 = phi i32 [ %.1.i.i681, %.lr.ph33.i.i675.1 ], [ %i.sc, %.sink.split.i.i679.1 ] ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i677, i64 80 ; 2 uses
  %niter1445.next.1 = add i64 %niter1445, 2       ; 2 uses
  %niter1445.ncmp.1 = icmp eq i64 %niter1445.next.1, %unroll_iter1444
  br i1 %niter1445.ncmp.1, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i683.unr-lcssa, label %.lr.ph33.i.i675

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i683.unr-lcssa: ; preds = %bb.cl
  %lcmp.mod1442.not = trunc i64 %i.qj to i1
  br i1 %lcmp.mod1442.not, label %.lr.ph33.i.i675.epil.preheader, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i683

.lr.ph33.i.i675.epil.preheader:                   ; preds = %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i683.unr-lcssa, %.lr.ph33.i.i675.preheader
  %.032.i.i676.epil.init = phi i32 [ 0, %.lr.ph33.i.i675.preheader ], [ %.1.i.i681.1, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i683.unr-lcssa ]
  %.sroa.018.031.i.i677.epil.init = phi ptr [ %i.qb, %.lr.ph33.i.i675.preheader ], [ %i.sf, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i683.unr-lcssa ] ; 2 uses
  %lcmp.mod1443 = trunc i64 %i.qj to i1
  call void @llvm.assume(i1 %lcmp.mod1443)
  %i.sg = load i32, ptr %.sroa.018.031.i.i677.epil.init, align 8, !tbaa !41
  %.not.i.i678.epil = icmp eq i32 %i.sg, 1
  br i1 %.not.i.i678.epil, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i683, label %.sink.split.i.i679.epil

.sink.split.i.i679.epil:                          ; preds = %.lr.ph33.i.i675.epil.preheader
  %i.sh = add i32 %.032.i.i676.epil.init, 1
  %i.si = icmp ult i32 %i.sh, %spec.select.i.i672.lcssa
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i677.epil.init, i64 8
  %..i.i680.epil = select i1 %i.si, i32 %i.om, i32 %i.qa
  store i32 %..i.i680.epil, ptr %i.sj, align 8, !tbaa !63
  br label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i683

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i683: ; preds = %.lr.ph33.i.i675.epil.preheader, %.sink.split.i.i679.epil, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i683.unr-lcssa
  %.promoted.i.i684 = load i32, ptr %i.mg, align 4 ; 3 uses
  %i.sk = zext i1 %i.px to i8                     ; 2 uses
  %lcmp.mod1447.not = trunc i64 %i.qj to i1
  br i1 %lcmp.mod1447.not, label %.lr.ph.i7.i685.prol, label %.lr.ph.i7.i685.prol.loopexit

.lr.ph.i7.i685.prol:                              ; preds = %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i683
  %i.sl = load i32, ptr %i.qb, align 8, !tbaa !41
  switch i32 %i.sl, label %.lr.ph.i7.i685.prol.loopexit.unr-lcssa [
    i32 2, label %bb.cn
    i32 0, label %bb.cn
    i32 1, label %bb.cm
  ]

bb.cm:                                            ; preds = %.lr.ph.i7.i685.prol
  %i.sm = zext i1 %i.px to i32
  %spec.select.i8.i688.prol = add i32 %.promoted.i.i684, %i.sm
  %i.sn = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !43
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !48
  %i.sr = trunc i64 %i.sq to i32
  %i.ss = add i32 %spec.select.i8.i688.prol, %i.sr
  br label %.sink.split.i9.i689.prol

bb.cn:                                            ; preds = %.lr.ph.i7.i685.prol, %.lr.ph.i7.i685.prol
  %i.st = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.su = load i32, ptr %i.st, align 8, !tbaa !63
  br label %.sink.split.i9.i689.prol

.sink.split.i9.i689.prol:                         ; preds = %bb.cn, %bb.cm
  %.sink.i.i690.prol = phi i32 [ %i.ss, %bb.cm ], [ %i.su, %bb.cn ] ; 2 uses
  %.1.ph.i.i691.prol = phi i8 [ 1, %bb.cm ], [ 0, %bb.cn ]
  store i32 %.sink.i.i690.prol, ptr %i.mg, align 4, !tbaa !84
  br label %.lr.ph.i7.i685.prol.loopexit.unr-lcssa

.lr.ph.i7.i685.prol.loopexit.unr-lcssa:           ; preds = %.sink.split.i9.i689.prol, %.lr.ph.i7.i685.prol
  %i.sv = phi i32 [ %.promoted.i.i684, %.lr.ph.i7.i685.prol ], [ %.sink.i.i690.prol, %.sink.split.i9.i689.prol ] ; 2 uses
  %.1.i10.i692.prol = phi i8 [ %i.sk, %.lr.ph.i7.i685.prol ], [ %.1.ph.i.i691.prol, %.sink.split.i9.i689.prol ] ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.qb, i64 40
  br label %.lr.ph.i7.i685.prol.loopexit

.lr.ph.i7.i685.prol.loopexit:                     ; preds = %.lr.ph.i7.i685.prol.loopexit.unr-lcssa, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i683
  %.lcssa1414.unr = phi i32 [ poison, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i683 ], [ %i.sv, %.lr.ph.i7.i685.prol.loopexit.unr-lcssa ]
  %.1.i10.i692.lcssa.unr = phi i8 [ poison, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i683 ], [ %.1.i10.i692.prol, %.lr.ph.i7.i685.prol.loopexit.unr-lcssa ]
  %.06.i.i686.unr = phi i8 [ %i.sk, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i683 ], [ %.1.i10.i692.prol, %.lr.ph.i7.i685.prol.loopexit.unr-lcssa ]
  %.sroa.01.05.i.i687.unr = phi ptr [ %i.qb, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i683 ], [ %i.sw, %.lr.ph.i7.i685.prol.loopexit.unr-lcssa ]
  %.unr1448 = phi i32 [ %.promoted.i.i684, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i683 ], [ %i.sv, %.lr.ph.i7.i685.prol.loopexit.unr-lcssa ]
  %i.sx = icmp ult i64 %i.qh, 40
  br i1 %i.sx, label %._crit_edge.loopexit.i.i694, label %.lr.ph.i7.i685

._crit_edge.loopexit.i.i694:                      ; preds = %bb.cs, %.lr.ph.i7.i685.prol.loopexit
  %.lcssa1414 = phi i32 [ %.lcssa1414.unr, %.lr.ph.i7.i685.prol.loopexit ], [ %i.tz, %bb.cs ]
  %.1.i10.i692.lcssa = phi i8 [ %.1.i10.i692.lcssa.unr, %.lr.ph.i7.i685.prol.loopexit ], [ %.1.i10.i692.1, %bb.cs ]
  %i.sy = trunc nuw i8 %.1.i10.i692.lcssa to i1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i694, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i696
  %i.sz = phi i32 [ %.promoted.i12.i697, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i696 ], [ %.lcssa1414, %._crit_edge.loopexit.i.i694 ]
  %.0.lcssa.i.i695 = phi i1 [ %i.px, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i696 ], [ %i.sy, %._crit_edge.loopexit.i.i694 ]
  %or.cond.i.i = select i1 %i.pz, i1 %.0.lcssa.i.i695, i1 false
  %i.ta = zext i1 %or.cond.i.i to i32
  %spec.select = add i32 %i.sz, %i.ta
  %i.tb = add i32 %spec.select, 1
  store i32 %i.tb, ptr %i.mg, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %common.ret1490

.lr.ph.i7.i685:                                   ; preds = %.lr.ph.i7.i685.prol.loopexit, %bb.cs
  %.06.i.i686 = phi i8 [ %.1.i10.i692.1, %bb.cs ], [ %.06.i.i686.unr, %.lr.ph.i7.i685.prol.loopexit ] ; 2 uses
  %.sroa.01.05.i.i687 = phi ptr [ %i.ua, %bb.cs ], [ %.sroa.01.05.i.i687.unr, %.lr.ph.i7.i685.prol.loopexit ] ; 7 uses
  %i.tc = phi i32 [ %i.tz, %bb.cs ], [ %.unr1448, %.lr.ph.i7.i685.prol.loopexit ] ; 2 uses
  %i.td = load i32, ptr %.sroa.01.05.i.i687, align 8, !tbaa !41
  switch i32 %i.td, label %.lr.ph.i7.i685.1 [
    i32 2, label %bb.co
    i32 0, label %bb.co
    i32 1, label %bb.cp
  ]

bb.co:                                            ; preds = %.lr.ph.i7.i685, %.lr.ph.i7.i685
  %i.te = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i687, i64 8
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !63
  br label %.sink.split.i9.i689

bb.cp:                                            ; preds = %.lr.ph.i7.i685
  %i.tg = zext nneg i8 %.06.i.i686 to i32
  %spec.select.i8.i688 = add i32 %i.tc, %i.tg
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i687, i64 16
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !43
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !48
  %i.tl = trunc i64 %i.tk to i32
  %i.tm = add i32 %spec.select.i8.i688, %i.tl
  br label %.sink.split.i9.i689

.sink.split.i9.i689:                              ; preds = %bb.cp, %bb.co
  %.sink.i.i690 = phi i32 [ %i.tm, %bb.cp ], [ %i.tf, %bb.co ] ; 2 uses
  %.1.ph.i.i691 = phi i8 [ 1, %bb.cp ], [ 0, %bb.co ]
  store i32 %.sink.i.i690, ptr %i.mg, align 4, !tbaa !84
  br label %.lr.ph.i7.i685.1

.lr.ph.i7.i685.1:                                 ; preds = %.sink.split.i9.i689, %.lr.ph.i7.i685
  %i.tn = phi i32 [ %i.tc, %.lr.ph.i7.i685 ], [ %.sink.i.i690, %.sink.split.i9.i689 ] ; 2 uses
  %.1.i10.i692 = phi i8 [ %.06.i.i686, %.lr.ph.i7.i685 ], [ %.1.ph.i.i691, %.sink.split.i9.i689 ] ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i687, i64 40
  %i.tp = load i32, ptr %i.to, align 8, !tbaa !41
  switch i32 %i.tp, label %bb.cs [
    i32 2, label %bb.cr
    i32 0, label %bb.cr
    i32 1, label %bb.cq
  ]

bb.cq:                                            ; preds = %.lr.ph.i7.i685.1
  %i.tq = zext nneg i8 %.1.i10.i692 to i32
  %spec.select.i8.i688.1 = add i32 %i.tn, %i.tq
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i687, i64 56
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !43
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !48
  %i.tv = trunc i64 %i.tu to i32
  %i.tw = add i32 %spec.select.i8.i688.1, %i.tv
  br label %.sink.split.i9.i689.1

bb.cr:                                            ; preds = %.lr.ph.i7.i685.1, %.lr.ph.i7.i685.1
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i687, i64 48
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !63
  br label %.sink.split.i9.i689.1

.sink.split.i9.i689.1:                            ; preds = %bb.cr, %bb.cq
  %.sink.i.i690.1 = phi i32 [ %i.tw, %bb.cq ], [ %i.ty, %bb.cr ] ; 2 uses
  %.1.ph.i.i691.1 = phi i8 [ 1, %bb.cq ], [ 0, %bb.cr ]
  store i32 %.sink.i.i690.1, ptr %i.mg, align 4, !tbaa !84
  br label %bb.cs

bb.cs:                                            ; preds = %.sink.split.i9.i689.1, %.lr.ph.i7.i685.1
  %i.tz = phi i32 [ %i.tn, %.lr.ph.i7.i685.1 ], [ %.sink.i.i690.1, %.sink.split.i9.i689.1 ] ; 2 uses
  %.1.i10.i692.1 = phi i8 [ %.1.i10.i692, %.lr.ph.i7.i685.1 ], [ %.1.ph.i.i691.1, %.sink.split.i9.i689.1 ] ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i687, i64 80 ; 2 uses
  %.not.i11.i693.1 = icmp eq ptr %i.ua, %i.qd
  br i1 %.not.i11.i693.1, label %._crit_edge.loopexit.i.i694, label %.lr.ph.i7.i685

bb.ct:                                            ; preds = %bb.bo
  %i.ub = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal18ArrayComprehensionE, i64 0) #27 ; 8 uses
  %.not419 = icmp eq ptr %i.ub, null
  br i1 %.not419, label %bb.dm, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 11 uses
  %i.ud = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.ud, ptr %i.uc, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 128
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !170 ; 3 uses
  %i.ug = tail call fastcc noundef ptr @_ZN7jsonnet8internalL14left_recursiveEPNS0_3ASTE(ptr noundef readonly %i.uf) ; 2 uses
  %.not7.i.i699 = icmp eq ptr %i.ug, null
  br i1 %.not7.i.i699, label %_ZN7jsonnet8internalL11open_fodderEPNS0_3ASTE.exit704, label %.lr.ph.i.i700

.lr.ph.i.i700:                                    ; preds = %bb.cu, %.lr.ph.i.i700
  %.08.i.i701 = phi ptr [ %i.uh, %.lr.ph.i.i700 ], [ %i.ug, %bb.cu ] ; 2 uses
  %i.uh = tail call fastcc noundef ptr @_ZN7jsonnet8internalL14left_recursiveEPNS0_3ASTE(ptr noundef nonnull %.08.i.i701) ; 2 uses
  %.not.i.i702 = icmp eq ptr %i.uh, null
  br i1 %.not.i.i702, label %_ZN7jsonnet8internalL11open_fodderEPNS0_3ASTE.exit704, label %.lr.ph.i.i700, !llvm.loop !0

_ZN7jsonnet8internalL11open_fodderEPNS0_3ASTE.exit704: ; preds = %.lr.ph.i.i700, %bb.cu
  %.06.lcssa.i.i703 = phi ptr [ %i.uf, %bb.cu ], [ %.08.i.i701, %.lr.ph.i.i700 ] ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.06.lcssa.i.i703, i64 80
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.uk = load i8, ptr %i.uj, align 4, !tbaa !532, !range !81, !noundef !82 ; 2 uses
  %i.ul = zext nneg i8 %i.uk to i32
  %i.um = add i32 %i.ud, %i.ul
  %i.un = getelementptr inbounds nuw i8, ptr %.06.lcssa.i.i703, i64 88
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !32
  %i.up = load ptr, ptr %i.ui, align 8, !tbaa !33 ; 2 uses
  %i.uq = icmp eq ptr %i.uo, %i.up
  br i1 %i.uq, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_ZN7jsonnet8internalL11open_fodderEPNS0_3ASTE.exit704
  %i.ur = load i32, ptr %i.up, align 8, !tbaa !41
  %i.us = icmp eq i32 %i.ur, 1
  br i1 %i.us, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv, %_ZN7jsonnet8internalL11open_fodderEPNS0_3ASTE.exit704
  %i.ut = load i32, ptr %2, align 4, !tbaa !95
  br label %_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit711

bb.cx:                                            ; preds = %bb.cv
  %i.uu = load i32, ptr %2, align 4, !tbaa !95
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !293
  %i.ux = add i32 %i.uw, %i.uu                    ; 2 uses
  br label %_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit711

_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit711: ; preds = %bb.cw, %bb.cx
  %.sroa.3.0.i705 = phi i32 [ %i.um, %bb.cw ], [ %i.ux, %bb.cx ]
  %.sroa.0.0.i706 = phi i32 [ %i.ut, %bb.cw ], [ %i.ux, %bb.cx ]
  %.sroa.3.0.insert.ext.i707 = zext i32 %.sroa.3.0.i705 to i64
  %.sroa.3.0.insert.shift.i708 = shl nuw i64 %.sroa.3.0.insert.ext.i707, 32
  %.sroa.0.0.insert.ext.i709 = zext i32 %.sroa.0.0.i706 to i64
  %.sroa.0.0.insert.insert.i710 = or disjoint i64 %.sroa.3.0.insert.shift.i708, %.sroa.0.0.insert.ext.i709
  store i64 %.sroa.0.0.insert.insert.i710, ptr %8, align 8
  %i.uy = trunc nuw i8 %i.uk to i1
  call void @_ZN7jsonnet8internal14FixIndentation4exprEPNS0_3ASTERKNS1_6IndentEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.uf, ptr noundef nonnull align 4 dereferenceable(8) %8, i1 noundef zeroext %i.uy)
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ub, i64 136
  %i.va = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !96
  %i.vc = load ptr, ptr %i.uz, align 8, !tbaa !30 ; 3 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ub, i64 144
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !30 ; 3 uses
  %.not2527.i.i.i712 = icmp eq ptr %i.vc, %i.ve
  br i1 %.not2527.i.i.i712, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit735, label %.lr.ph33.i.i.i713

.lr.ph33.i.i.i713:                                ; preds = %_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit711, %bb.cy
  %.sroa.018.031.i.i.i714 = phi ptr [ %i.vh, %bb.cy ], [ %i.vc, %_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit711 ] ; 3 uses
  %i.vf = load i32, ptr %.sroa.018.031.i.i.i714, align 8, !tbaa !41
  %.not.i.i.i715 = icmp eq i32 %i.vf, 1
  br i1 %.not.i.i.i715, label %bb.cy, label %.sink.split.i.i.i716

.sink.split.i.i.i716:                             ; preds = %.lr.ph33.i.i.i713
  %i.vg = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.i714, i64 8
  store i32 %i.vb, ptr %i.vg, align 8, !tbaa !63
  br label %bb.cy

bb.cy:                                            ; preds = %.sink.split.i.i.i716, %.lr.ph33.i.i.i713
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.i714, i64 40 ; 2 uses
  %.not26.i.i.i717 = icmp eq ptr %i.vh, %i.ve
  br i1 %.not26.i.i.i717, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i718, label %.lr.ph33.i.i.i713

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i718: ; preds = %bb.cy
  %.promoted.i.i.i719 = load i32, ptr %i.uc, align 4
  br label %.lr.ph.i7.i.i720

.lr.ph.i7.i.i720:                                 ; preds = %bb.db, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i718
  %.06.i.i.i721 = phi i8 [ %.1.i10.i.i727, %bb.db ], [ 0, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i718 ] ; 2 uses
  %.sroa.01.05.i.i.i722 = phi ptr [ %i.vu, %bb.db ], [ %i.vc, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i718 ] ; 4 uses
  %i.vi = phi i32 [ %i.vt, %bb.db ], [ %.promoted.i.i.i719, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i718 ] ; 2 uses
  %i.vj = load i32, ptr %.sroa.01.05.i.i.i722, align 8, !tbaa !41
  switch i32 %i.vj, label %bb.db [
    i32 2, label %bb.cz
    i32 0, label %bb.cz
    i32 1, label %bb.da
  ]

bb.cz:                                            ; preds = %.lr.ph.i7.i.i720, %.lr.ph.i7.i.i720
  %i.vk = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i722, i64 8
  %i.vl = load i32, ptr %i.vk, align 8, !tbaa !63
  br label %.sink.split.i9.i.i724

bb.da:                                            ; preds = %.lr.ph.i7.i.i720
  %i.vm = zext nneg i8 %.06.i.i.i721 to i32
  %spec.select.i8.i.i723 = add i32 %i.vi, %i.vm
  %i.vn = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i722, i64 16
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !43
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !48
  %i.vr = trunc i64 %i.vq to i32
  %i.vs = add i32 %spec.select.i8.i.i723, %i.vr
  br label %.sink.split.i9.i.i724

.sink.split.i9.i.i724:                            ; preds = %bb.da, %bb.cz
  %.sink.i.i.i725 = phi i32 [ %i.vs, %bb.da ], [ %i.vl, %bb.cz ] ; 2 uses
  %.1.ph.i.i.i726 = phi i8 [ 1, %bb.da ], [ 0, %bb.cz ]
  store i32 %.sink.i.i.i725, ptr %i.uc, align 4, !tbaa !84
  br label %bb.db

bb.db:                                            ; preds = %.sink.split.i9.i.i724, %.lr.ph.i7.i.i720
  %i.vt = phi i32 [ %i.vi, %.lr.ph.i7.i.i720 ], [ %.sink.i.i.i725, %.sink.split.i9.i.i724 ]
  %.1.i10.i.i727 = phi i8 [ %.06.i.i.i721, %.lr.ph.i7.i.i720 ], [ %.1.ph.i.i.i726, %.sink.split.i9.i.i724 ]
  %i.vu = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i722, i64 40 ; 2 uses
  %.not.i11.i.i728 = icmp eq ptr %i.vu, %i.ve
  br i1 %.not.i11.i.i728, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit735, label %.lr.ph.i7.i.i720

_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit735: ; preds = %bb.db, %_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit711
  %i.vv = getelementptr inbounds nuw i8, ptr %i.ub, i64 160
  %i.vw = load i8, ptr %i.vv, align 8, !tbaa !171, !range !81, !noundef !82
  %i.vx = trunc nuw i8 %i.vw to i1
  br i1 %i.vx, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit735
  %i.vy = load i32, ptr %i.uc, align 4, !tbaa !93
  %i.vz = add i32 %i.vy, 1
  store i32 %i.vz, ptr %i.uc, align 4, !tbaa !93
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit735
  %i.wa = getelementptr inbounds nuw i8, ptr %i.ub, i64 168
  call void @_ZN7jsonnet8internal14FixIndentation5specsERSt6vectorINS0_17ComprehensionSpecESaIS3_EERKNS1_6IndentE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.wa, ptr noundef nonnull align 4 dereferenceable(8) %8)
  %i.wb = getelementptr inbounds nuw i8, ptr %i.ub, i64 192
  %i.wc = load i8, ptr %i.uj, align 4, !tbaa !532, !range !81, !noundef !82
  %i.wd = trunc nuw i8 %i.wc to i1
  %i.we = load i32, ptr %i.va, align 4, !tbaa !96 ; 3 uses
  %i.wf = load i32, ptr %2, align 4, !tbaa !95    ; 3 uses
  %i.wg = load ptr, ptr %i.wb, align 8, !tbaa !30 ; 16 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.ub, i64 200
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !30 ; 3 uses
  %.not2527.i.i736 = icmp eq ptr %i.wg, %i.wi
  br i1 %.not2527.i.i736, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i767, label %.lr.ph.i.i737.preheader

.lr.ph.i.i737.preheader:                          ; preds = %bb.dd
  %i.wj = ptrtoaddr ptr %i.wi to i64
  %i.wk = ptrtoaddr ptr %i.wg to i64
  %i.wl = add i64 %i.wj, -40
  %i.wm = sub i64 %i.wl, %i.wk                    ; 4 uses
  %i.wn = udiv i64 %i.wm, 40
  %i.wo = add nuw nsw i64 %i.wn, 1                ; 8 uses
  %min.iters.check1386 = icmp ult i64 %i.wm, 280
  br i1 %min.iters.check1386, label %.lr.ph.i.i737.preheader1410, label %vector.ph1387

vector.ph1387:                                    ; preds = %.lr.ph.i.i737.preheader
  %n.vec1388 = and i64 %i.wo, 1152921504606846968 ; 3 uses
  %i.wp = mul i64 %n.vec1388, 40
  %i.wq = getelementptr i8, ptr %i.wg, i64 %i.wp
  br label %vector.body1389

vector.body1389:                                  ; preds = %vector.body1389, %vector.ph1387
  %index1390 = phi i64 [ 0, %vector.ph1387 ], [ %index.next1401, %vector.body1389 ] ; 2 uses
  %vec.phi1391 = phi <4 x i32> [ zeroinitializer, %vector.ph1387 ], [ %i.xt, %vector.body1389 ]
  %vec.phi1392 = phi <4 x i32> [ zeroinitializer, %vector.ph1387 ], [ %i.xu, %vector.body1389 ]
  %i.wr = mul i64 %index1390, 40                  ; 8 uses
  %next.gep1393 = getelementptr i8, ptr %i.wg, i64 %i.wr
  %i.ws = getelementptr i8, ptr %i.wg, i64 %i.wr
  %next.gep1394 = getelementptr i8, ptr %i.ws, i64 40
  %i.wt = getelementptr i8, ptr %i.wg, i64 %i.wr
  %next.gep1395 = getelementptr i8, ptr %i.wt, i64 80
  %i.wu = getelementptr i8, ptr %i.wg, i64 %i.wr
  %next.gep1396 = getelementptr i8, ptr %i.wu, i64 120
  %i.wv = getelementptr i8, ptr %i.wg, i64 %i.wr
  %next.gep1397 = getelementptr i8, ptr %i.wv, i64 160
  %i.ww = getelementptr i8, ptr %i.wg, i64 %i.wr
  %next.gep1398 = getelementptr i8, ptr %i.ww, i64 200
  %i.wx = getelementptr i8, ptr %i.wg, i64 %i.wr
  %next.gep1399 = getelementptr i8, ptr %i.wx, i64 240
  %i.wy = getelementptr i8, ptr %i.wg, i64 %i.wr
  %next.gep1400 = getelementptr i8, ptr %i.wy, i64 280
  %i.wz = load i32, ptr %next.gep1393, align 8, !tbaa !41
  %i.xa = load i32, ptr %next.gep1394, align 8, !tbaa !41
  %i.xb = load i32, ptr %next.gep1395, align 8, !tbaa !41
  %i.xc = load i32, ptr %next.gep1396, align 8, !tbaa !41
  %i.xd = insertelement <4 x i32> poison, i32 %i.wz, i64 0
  %i.xe = insertelement <4 x i32> %i.xd, i32 %i.xa, i64 1
  %i.xf = insertelement <4 x i32> %i.xe, i32 %i.xb, i64 2
  %i.xg = insertelement <4 x i32> %i.xf, i32 %i.xc, i64 3
  %i.xh = load i32, ptr %next.gep1397, align 8, !tbaa !41
  %i.xi = load i32, ptr %next.gep1398, align 8, !tbaa !41
  %i.xj = load i32, ptr %next.gep1399, align 8, !tbaa !41
  %i.xk = load i32, ptr %next.gep1400, align 8, !tbaa !41
  %i.xl = insertelement <4 x i32> poison, i32 %i.xh, i64 0
  %i.xm = insertelement <4 x i32> %i.xl, i32 %i.xi, i64 1
  %i.xn = insertelement <4 x i32> %i.xm, i32 %i.xj, i64 2
  %i.xo = insertelement <4 x i32> %i.xn, i32 %i.xk, i64 3
  %i.xp = icmp ne <4 x i32> %i.xg, splat (i32 1)
  %i.xq = icmp ne <4 x i32> %i.xo, splat (i32 1)
  %i.xr = zext <4 x i1> %i.xp to <4 x i32>
  %i.xs = zext <4 x i1> %i.xq to <4 x i32>
  %i.xt = add <4 x i32> %vec.phi1391, %i.xr       ; 2 uses
  %i.xu = add <4 x i32> %vec.phi1392, %i.xs       ; 2 uses
  %index.next1401 = add nuw i64 %index1390, 8     ; 2 uses
  %i.xv = icmp eq i64 %index.next1401, %n.vec1388
  br i1 %i.xv, label %middle.block1402, label %vector.body1389, !llvm.loop !527

middle.block1402:                                 ; preds = %vector.body1389
  %bin.rdx1403 = add <4 x i32> %i.xu, %i.xt
  %i.xw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1403) ; 2 uses
  %cmp.n1404 = icmp eq i64 %i.wo, %n.vec1388
  br i1 %cmp.n1404, label %.lr.ph33.i.i744.preheader, label %.lr.ph.i.i737.preheader1410

.lr.ph.i.i737.preheader1410:                      ; preds = %.lr.ph.i.i737.preheader, %middle.block1402
  %.01529.i.i738.ph = phi i32 [ 0, %.lr.ph.i.i737.preheader ], [ %i.xw, %middle.block1402 ]
  %.sroa.022.028.i.i739.ph = phi ptr [ %i.wg, %.lr.ph.i.i737.preheader ], [ %i.wq, %middle.block1402 ]
  br label %.lr.ph.i.i737

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i767: ; preds = %bb.dd
  %.promoted.i12.i768 = load i32, ptr %i.uc, align 4
  br label %._crit_edge.i.i764

.lr.ph.i.i737:                                    ; preds = %.lr.ph.i.i737.preheader1410, %.lr.ph.i.i737
  %.01529.i.i738 = phi i32 [ %spec.select.i.i741, %.lr.ph.i.i737 ], [ %.01529.i.i738.ph, %.lr.ph.i.i737.preheader1410 ]
  %.sroa.022.028.i.i739 = phi ptr [ %i.xz, %.lr.ph.i.i737 ], [ %.sroa.022.028.i.i739.ph, %.lr.ph.i.i737.preheader1410 ] ; 2 uses
  %i.xx = load i32, ptr %.sroa.022.028.i.i739, align 8, !tbaa !41
  %.not17.i.i740 = icmp ne i32 %i.xx, 1
  %i.xy = zext i1 %.not17.i.i740 to i32
  %spec.select.i.i741 = add i32 %.01529.i.i738, %i.xy ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.022.028.i.i739, i64 40 ; 2 uses
  %.not25.i.i742 = icmp eq ptr %i.xz, %i.wi
  br i1 %.not25.i.i742, label %.lr.ph33.i.i744.preheader, label %.lr.ph.i.i737, !llvm.loop !528

.lr.ph33.i.i744.preheader:                        ; preds = %.lr.ph.i.i737, %middle.block1402
  %spec.select.i.i741.lcssa = phi i32 [ %i.xw, %middle.block1402 ], [ %spec.select.i.i741, %.lr.ph.i.i737 ] ; 3 uses
  %i.ya = icmp ult i64 %i.wm, 40
  br i1 %i.ya, label %.lr.ph33.i.i744.epil.preheader, label %.lr.ph33.i.i744.preheader.new

.lr.ph33.i.i744.preheader.new:                    ; preds = %.lr.ph33.i.i744.preheader
  %unroll_iter1452 = and i64 %i.wo, 1152921504606846974
  br label %.lr.ph33.i.i744

.lr.ph33.i.i744:                                  ; preds = %bb.de, %.lr.ph33.i.i744.preheader.new
  %.032.i.i745 = phi i32 [ 0, %.lr.ph33.i.i744.preheader.new ], [ %.1.i.i750.1, %bb.de ] ; 2 uses
  %.sroa.018.031.i.i746 = phi ptr [ %i.wg, %.lr.ph33.i.i744.preheader.new ], [ %i.yk, %bb.de ] ; 5 uses
  %niter1453 = phi i64 [ 0, %.lr.ph33.i.i744.preheader.new ], [ %niter1453.next.1, %bb.de ]
  %i.yb = load i32, ptr %.sroa.018.031.i.i746, align 8, !tbaa !41
  %.not.i.i747 = icmp eq i32 %i.yb, 1
  br i1 %.not.i.i747, label %.lr.ph33.i.i744.1, label %.sink.split.i.i748

.sink.split.i.i748:                               ; preds = %.lr.ph33.i.i744
  %i.yc = add i32 %.032.i.i745, 1                 ; 2 uses
  %i.yd = icmp ult i32 %i.yc, %spec.select.i.i741.lcssa
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i746, i64 8
  %..i.i749 = select i1 %i.yd, i32 %i.we, i32 %i.wf
  store i32 %..i.i749, ptr %i.ye, align 8, !tbaa !63
  br label %.lr.ph33.i.i744.1

.lr.ph33.i.i744.1:                                ; preds = %.sink.split.i.i748, %.lr.ph33.i.i744
  %.1.i.i750 = phi i32 [ %.032.i.i745, %.lr.ph33.i.i744 ], [ %i.yc, %.sink.split.i.i748 ] ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i746, i64 40
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !41
  %.not.i.i747.1 = icmp eq i32 %i.yg, 1
  br i1 %.not.i.i747.1, label %bb.de, label %.sink.split.i.i748.1

.sink.split.i.i748.1:                             ; preds = %.lr.ph33.i.i744.1
  %i.yh = add i32 %.1.i.i750, 1                   ; 2 uses
  %i.yi = icmp ult i32 %i.yh, %spec.select.i.i741.lcssa
  %i.yj = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i746, i64 48
  %..i.i749.1 = select i1 %i.yi, i32 %i.we, i32 %i.wf
  store i32 %..i.i749.1, ptr %i.yj, align 8, !tbaa !63
  br label %bb.de

bb.de:                                            ; preds = %.sink.split.i.i748.1, %.lr.ph33.i.i744.1
  %.1.i.i750.1 = phi i32 [ %.1.i.i750, %.lr.ph33.i.i744.1 ], [ %i.yh, %.sink.split.i.i748.1 ] ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i746, i64 80 ; 2 uses
  %niter1453.next.1 = add i64 %niter1453, 2       ; 2 uses
  %niter1453.ncmp.1 = icmp eq i64 %niter1453.next.1, %unroll_iter1452
  br i1 %niter1453.ncmp.1, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752.unr-lcssa, label %.lr.ph33.i.i744

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752.unr-lcssa: ; preds = %bb.de
  %lcmp.mod1450.not = trunc i64 %i.wo to i1
  br i1 %lcmp.mod1450.not, label %.lr.ph33.i.i744.epil.preheader, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752

.lr.ph33.i.i744.epil.preheader:                   ; preds = %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752.unr-lcssa, %.lr.ph33.i.i744.preheader
  %.032.i.i745.epil.init = phi i32 [ 0, %.lr.ph33.i.i744.preheader ], [ %.1.i.i750.1, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752.unr-lcssa ]
  %.sroa.018.031.i.i746.epil.init = phi ptr [ %i.wg, %.lr.ph33.i.i744.preheader ], [ %i.yk, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752.unr-lcssa ] ; 2 uses
  %lcmp.mod1451 = trunc i64 %i.wo to i1
  call void @llvm.assume(i1 %lcmp.mod1451)
  %i.yl = load i32, ptr %.sroa.018.031.i.i746.epil.init, align 8, !tbaa !41
  %.not.i.i747.epil = icmp eq i32 %i.yl, 1
  br i1 %.not.i.i747.epil, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752, label %.sink.split.i.i748.epil

.sink.split.i.i748.epil:                          ; preds = %.lr.ph33.i.i744.epil.preheader
  %i.ym = add i32 %.032.i.i745.epil.init, 1
  %i.yn = icmp ult i32 %i.ym, %spec.select.i.i741.lcssa
  %i.yo = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i746.epil.init, i64 8
  %..i.i749.epil = select i1 %i.yn, i32 %i.we, i32 %i.wf
  store i32 %..i.i749.epil, ptr %i.yo, align 8, !tbaa !63
  br label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752: ; preds = %.lr.ph33.i.i744.epil.preheader, %.sink.split.i.i748.epil, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752.unr-lcssa
  %.promoted.i.i753 = load i32, ptr %i.uc, align 4 ; 2 uses
  %i.yp = icmp ult i64 %i.wm, 40
  br i1 %i.yp, label %.lr.ph.i7.i754.epil.preheader, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752.new

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752.new: ; preds = %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752
  %unroll_iter1461 = and i64 %i.wo, 1152921504606846974
  br label %.lr.ph.i7.i754

._crit_edge.loopexit.i.i763.unr-lcssa:            ; preds = %bb.dl
  %lcmp.mod1457.not = trunc i64 %i.wo to i1
  br i1 %lcmp.mod1457.not, label %.lr.ph.i7.i754.epil.preheader, label %._crit_edge.loopexit.i.i763

.lr.ph.i7.i754.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i763.unr-lcssa, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752
  %.06.i.i755.epil.init = phi i8 [ 1, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752 ], [ %.1.i10.i761.1, %._crit_edge.loopexit.i.i763.unr-lcssa ] ; 2 uses
  %.sroa.01.05.i.i756.epil.init = phi ptr [ %i.wg, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752 ], [ %i.aad, %._crit_edge.loopexit.i.i763.unr-lcssa ] ; 3 uses
  %.epil.init1456 = phi i32 [ %.promoted.i.i753, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752 ], [ %i.aac, %._crit_edge.loopexit.i.i763.unr-lcssa ] ; 2 uses
  %lcmp.mod1460 = trunc i64 %i.wo to i1
  call void @llvm.assume(i1 %lcmp.mod1460)
  %i.yq = load i32, ptr %.sroa.01.05.i.i756.epil.init, align 8, !tbaa !41
  switch i32 %i.yq, label %._crit_edge.loopexit.i.i763 [
    i32 2, label %bb.dg
    i32 0, label %bb.dg
    i32 1, label %bb.df
  ]

bb.df:                                            ; preds = %.lr.ph.i7.i754.epil.preheader
  %i.yr = zext nneg i8 %.06.i.i755.epil.init to i32
  %spec.select.i8.i757.epil = add i32 %.epil.init1456, %i.yr
  %i.ys = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i756.epil.init, i64 16
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !43
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  %i.yv = load i64, ptr %i.yu, align 8, !tbaa !48
  %i.yw = trunc i64 %i.yv to i32
  %i.yx = add i32 %spec.select.i8.i757.epil, %i.yw
  br label %.sink.split.i9.i758.epil

bb.dg:                                            ; preds = %.lr.ph.i7.i754.epil.preheader, %.lr.ph.i7.i754.epil.preheader
  %i.yy = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i756.epil.init, i64 8
  %i.yz = load i32, ptr %i.yy, align 8, !tbaa !63
  br label %.sink.split.i9.i758.epil

.sink.split.i9.i758.epil:                         ; preds = %bb.dg, %bb.df
  %.sink.i.i759.epil = phi i32 [ %i.yx, %bb.df ], [ %i.yz, %bb.dg ] ; 2 uses
  %.1.ph.i.i760.epil = phi i8 [ 1, %bb.df ], [ 0, %bb.dg ]
  store i32 %.sink.i.i759.epil, ptr %i.uc, align 4, !tbaa !84
  br label %._crit_edge.loopexit.i.i763

._crit_edge.loopexit.i.i763:                      ; preds = %.lr.ph.i7.i754.epil.preheader, %.sink.split.i9.i758.epil, %._crit_edge.loopexit.i.i763.unr-lcssa
  %.lcssa1409 = phi i32 [ %i.aac, %._crit_edge.loopexit.i.i763.unr-lcssa ], [ %.epil.init1456, %.lr.ph.i7.i754.epil.preheader ], [ %.sink.i.i759.epil, %.sink.split.i9.i758.epil ]
  %.1.i10.i761.lcssa = phi i8 [ %.1.i10.i761.1, %._crit_edge.loopexit.i.i763.unr-lcssa ], [ %.06.i.i755.epil.init, %.lr.ph.i7.i754.epil.preheader ], [ %.1.ph.i.i760.epil, %.sink.split.i9.i758.epil ]
  %i.za = and i8 %.1.i10.i761.lcssa, 1
  %i.zb = zext nneg i8 %i.za to i32
  br label %._crit_edge.i.i764

._crit_edge.i.i764:                               ; preds = %._crit_edge.loopexit.i.i763, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i767
  %i.zc = phi i32 [ %.promoted.i12.i768, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i767 ], [ %.lcssa1409, %._crit_edge.loopexit.i.i763 ]
  %.0.lcssa.i.i765 = phi i32 [ 1, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i767 ], [ %i.zb, %._crit_edge.loopexit.i.i763 ]
  %i.zd = select i1 %i.wd, i32 %.0.lcssa.i.i765, i32 0
  %spec.select1335 = add i32 %i.zc, %i.zd
  %i.ze = add i32 %spec.select1335, 1
  store i32 %i.ze, ptr %i.uc, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %common.ret1490

.lr.ph.i7.i754:                                   ; preds = %bb.dl, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752.new
  %.06.i.i755 = phi i8 [ 1, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752.new ], [ %.1.i10.i761.1, %bb.dl ] ; 2 uses
  %.sroa.01.05.i.i756 = phi ptr [ %i.wg, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752.new ], [ %i.aad, %bb.dl ] ; 7 uses
  %i.zf = phi i32 [ %.promoted.i.i753, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752.new ], [ %i.aac, %bb.dl ] ; 2 uses
  %niter1462 = phi i64 [ 0, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i752.new ], [ %niter1462.next.1, %bb.dl ]
  %i.zg = load i32, ptr %.sroa.01.05.i.i756, align 8, !tbaa !41
  switch i32 %i.zg, label %.lr.ph.i7.i754.1 [
    i32 2, label %bb.dh
    i32 0, label %bb.dh
    i32 1, label %bb.di
  ]

bb.dh:                                            ; preds = %.lr.ph.i7.i754, %.lr.ph.i7.i754
  %i.zh = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i756, i64 8
  %i.zi = load i32, ptr %i.zh, align 8, !tbaa !63
  br label %.sink.split.i9.i758

bb.di:                                            ; preds = %.lr.ph.i7.i754
  %i.zj = zext nneg i8 %.06.i.i755 to i32
  %spec.select.i8.i757 = add i32 %i.zf, %i.zj
  %i.zk = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i756, i64 16
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !43
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  %i.zn = load i64, ptr %i.zm, align 8, !tbaa !48
  %i.zo = trunc i64 %i.zn to i32
  %i.zp = add i32 %spec.select.i8.i757, %i.zo
  br label %.sink.split.i9.i758

.sink.split.i9.i758:                              ; preds = %bb.di, %bb.dh
  %.sink.i.i759 = phi i32 [ %i.zp, %bb.di ], [ %i.zi, %bb.dh ] ; 2 uses
  %.1.ph.i.i760 = phi i8 [ 1, %bb.di ], [ 0, %bb.dh ]
  store i32 %.sink.i.i759, ptr %i.uc, align 4, !tbaa !84
  br label %.lr.ph.i7.i754.1

.lr.ph.i7.i754.1:                                 ; preds = %.sink.split.i9.i758, %.lr.ph.i7.i754
  %i.zq = phi i32 [ %i.zf, %.lr.ph.i7.i754 ], [ %.sink.i.i759, %.sink.split.i9.i758 ] ; 2 uses
  %.1.i10.i761 = phi i8 [ %.06.i.i755, %.lr.ph.i7.i754 ], [ %.1.ph.i.i760, %.sink.split.i9.i758 ] ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i756, i64 40
  %i.zs = load i32, ptr %i.zr, align 8, !tbaa !41
  switch i32 %i.zs, label %bb.dl [
    i32 2, label %bb.dk
    i32 0, label %bb.dk
    i32 1, label %bb.dj
  ]

bb.dj:                                            ; preds = %.lr.ph.i7.i754.1
  %i.zt = zext nneg i8 %.1.i10.i761 to i32
  %spec.select.i8.i757.1 = add i32 %i.zq, %i.zt
  %i.zu = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i756, i64 56
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !43
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !48
  %i.zy = trunc i64 %i.zx to i32
  %i.zz = add i32 %spec.select.i8.i757.1, %i.zy
  br label %.sink.split.i9.i758.1

bb.dk:                                            ; preds = %.lr.ph.i7.i754.1, %.lr.ph.i7.i754.1
  %i.aaa = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i756, i64 48
  %i.aab = load i32, ptr %i.aaa, align 8, !tbaa !63
  br label %.sink.split.i9.i758.1

.sink.split.i9.i758.1:                            ; preds = %bb.dk, %bb.dj
  %.sink.i.i759.1 = phi i32 [ %i.zz, %bb.dj ], [ %i.aab, %bb.dk ] ; 2 uses
  %.1.ph.i.i760.1 = phi i8 [ 1, %bb.dj ], [ 0, %bb.dk ]
  store i32 %.sink.i.i759.1, ptr %i.uc, align 4, !tbaa !84
  br label %bb.dl

bb.dl:                                            ; preds = %.sink.split.i9.i758.1, %.lr.ph.i7.i754.1
  %i.aac = phi i32 [ %i.zq, %.lr.ph.i7.i754.1 ], [ %.sink.i.i759.1, %.sink.split.i9.i758.1 ] ; 3 uses
  %.1.i10.i761.1 = phi i8 [ %.1.i10.i761, %.lr.ph.i7.i754.1 ], [ %.1.ph.i.i760.1, %.sink.split.i9.i758.1 ] ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i756, i64 80 ; 2 uses
  %niter1462.next.1 = add i64 %niter1462, 2       ; 2 uses
  %niter1462.ncmp.1 = icmp eq i64 %niter1462.next.1, %unroll_iter1461
  br i1 %niter1462.ncmp.1, label %._crit_edge.loopexit.i.i763.unr-lcssa, label %.lr.ph.i7.i754

bb.dm:                                            ; preds = %bb.ct
  %i.aae = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal6AssertE, i64 0) #27 ; 6 uses
  %.not420 = icmp eq ptr %i.aae, null
  br i1 %.not420, label %bb.dt, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.aag = add i32 %i.ae, 6
  store i32 %i.aag, ptr %i.aaf, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aae, i64 128
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !173 ; 2 uses
  %i.aaj = tail call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN7jsonnet8internalL11open_fodderEPNS0_3ASTE(ptr noundef %i.aai) ; 2 uses
  %i.aak = add i32 %i.ae, 7
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !32
  %i.aan = load ptr, ptr %i.aaj, align 8, !tbaa !33 ; 2 uses
  %i.aao = icmp eq ptr %i.aam, %i.aan
  br i1 %i.aao, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aap = load i32, ptr %i.aan, align 8, !tbaa !41
  %i.aaq = icmp eq i32 %i.aap, 1
  br i1 %i.aaq, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.aar = load i32, ptr %2, align 4, !tbaa !95
  br label %_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit776

bb.dq:                                            ; preds = %bb.do
  %i.aas = load i32, ptr %2, align 4, !tbaa !95
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !293
  %i.aav = add i32 %i.aau, %i.aas                 ; 2 uses
  br label %_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit776

_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit776: ; preds = %bb.dp, %bb.dq
  %.sroa.3.0.i770 = phi i32 [ %i.aak, %bb.dp ], [ %i.aav, %bb.dq ]
  %.sroa.0.0.i771 = phi i32 [ %i.aar, %bb.dp ], [ %i.aav, %bb.dq ]
  %.sroa.3.0.insert.ext.i772 = zext i32 %.sroa.3.0.i770 to i64
  %.sroa.3.0.insert.shift.i773 = shl nuw i64 %.sroa.3.0.insert.ext.i772, 32
  %.sroa.0.0.insert.ext.i774 = zext i32 %.sroa.0.0.i771 to i64
  %.sroa.0.0.insert.insert.i775 = or disjoint i64 %.sroa.3.0.insert.shift.i773, %.sroa.0.0.insert.ext.i774
  store i64 %.sroa.0.0.insert.insert.i775, ptr %9, align 8
  call void @_ZN7jsonnet8internal14FixIndentation4exprEPNS0_3ASTERKNS1_6IndentEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.aai, ptr noundef nonnull align 4 dereferenceable(8) %9, i1 noundef zeroext true)
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aae, i64 160 ; 2 uses
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !174
  %.not458 = icmp eq ptr %i.aax, null
  br i1 %.not458, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit776
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aae, i64 136
  %i.aaz = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !96
  call void @_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.aay, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %i.aba)
  %i.abb = load i32, ptr %i.aaf, align 4, !tbaa !93
  %i.abc = add i32 %i.abb, 1
  store i32 %i.abc, ptr %i.aaf, align 4, !tbaa !93
  %i.abd = load ptr, ptr %i.aaw, align 8, !tbaa !174
  call void @_ZN7jsonnet8internal14FixIndentation4exprEPNS0_3ASTERKNS1_6IndentEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.abd, ptr noundef nonnull align 4 dereferenceable(8) %9, i1 noundef zeroext true)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit776
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aae, i64 168
  %i.abf = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !96
  call void @_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.abe, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %i.abg)
  %i.abh = load i32, ptr %i.aaf, align 4, !tbaa !93
  %i.abi = add i32 %i.abh, 1
  store i32 %i.abi, ptr %i.aaf, align 4, !tbaa !93
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aae, i64 192
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !533
end_hunk_2
begin_hunk_3_@_ZN7jsonnet8internal14FixIndentation4exprEPNS0_3ASTERKNS1_6IndentEb:bb.a
  %i.bfd = icmp ult i64 %i.bev, 16
  call void @llvm.assume(i1 %i.bfd)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i959: ; preds = %bb.kc
  %i.bfe = load i64, ptr %i.bfb, align 8, !tbaa !49
  %i.bff = add i64 %i.bfe, 1
  call void @_ZdlPvm(ptr noundef %i.bfa, i64 noundef %i.bff) #28
  %.pre1151 = load i32, ptr %i.bew, align 4, !tbaa !93
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i960, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i959
  %i.bfg = phi i32 [ %i.bez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i960 ], [ %.pre1151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i959 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.ber, i64 136
  %i.bfi = load ptr, ptr %i.bfh, align 8, !tbaa !243 ; 3 uses
  %i.bfj = call fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZN7jsonnet8internalL11open_fodderEPNS0_3ASTE(ptr noundef %i.bfi) ; 2 uses
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfj, i64 8
  %i.bfl = load ptr, ptr %i.bfk, align 8, !tbaa !32
  %i.bfm = load ptr, ptr %i.bfj, align 8, !tbaa !33 ; 2 uses
  %i.bfn = icmp eq ptr %i.bfl, %i.bfm
  br i1 %i.bfn, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961
  %i.bfo = load i32, ptr %i.bfm, align 8, !tbaa !41
  %i.bfp = icmp eq i32 %i.bfo, 1
  br i1 %i.bfp, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit961
  %i.bfq = load i32, ptr %2, align 4, !tbaa !95
  br label %_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit968

bb.kf:                                            ; preds = %bb.kd
  %i.bfr = load i32, ptr %2, align 4, !tbaa !95
  %i.bfs = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bft = load i32, ptr %i.bfs, align 4, !tbaa !293
  %i.bfu = add i32 %i.bft, %i.bfr                 ; 2 uses
  br label %_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit968

_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit968: ; preds = %bb.ke, %bb.kf
  %.sroa.3.0.i962 = phi i32 [ %i.bfg, %bb.ke ], [ %i.bfu, %bb.kf ]
  %.sroa.0.0.i963 = phi i32 [ %i.bfq, %bb.ke ], [ %i.bfu, %bb.kf ]
  %.sroa.3.0.insert.ext.i964 = zext i32 %.sroa.3.0.i962 to i64
  %.sroa.3.0.insert.shift.i965 = shl nuw i64 %.sroa.3.0.insert.ext.i964, 32
  %.sroa.0.0.insert.ext.i966 = zext i32 %.sroa.0.0.i963 to i64
  %.sroa.0.0.insert.insert.i967 = or disjoint i64 %.sroa.3.0.insert.shift.i965, %.sroa.0.0.insert.ext.i966
  store i64 %.sroa.0.0.insert.insert.i967, ptr %31, align 8
  %i.bfv = call fastcc noundef ptr @_ZN7jsonnet8internalL19left_recursive_deepEPNS0_3ASTE(ptr noundef %i.bfi) ; 2 uses
  %i.bfw = icmp eq ptr %i.bfv, null
  br i1 %i.bfw, label %.critedge472, label %bb.kg

bb.kg:                                            ; preds = %_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit968
  %i.bfx = call ptr @__dynamic_cast(ptr nonnull %i.bfv, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal6DollarE, i64 0) #27
  %i.bfy = icmp eq ptr %i.bfx, null
  br i1 %i.bfy, label %.critedge472, label %bb.kh

.critedge472:                                     ; preds = %_ZN7jsonnet8internal14FixIndentation9newIndentERKSt6vectorINS0_13FodderElementESaIS3_EERKNS1_6IndentEj.exit968, %bb.kg
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %.critedge472
  %.sink1339 = phi i1 [ false, %.critedge472 ], [ true, %bb.kg ]
  call void @_ZN7jsonnet8internal14FixIndentation4exprEPNS0_3ASTERKNS1_6IndentEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bfi, ptr noundef nonnull align 4 dereferenceable(8) %31, i1 noundef zeroext %.sink1339)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  br label %common.ret1490

bb.ki:                                            ; preds = %bb.kb
  %i.bfz = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN7jsonnet8internal3ASTE, ptr nonnull @_ZTIN7jsonnet8internal3VarE, i64 0) #27 ; 2 uses
  %.not445 = icmp eq ptr %i.bfz, null
  br i1 %.not445, label %.thread1082, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfz, i64 128
  %i.bgb = load ptr, ptr %i.bga, align 8, !tbaa !245
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bgb, i64 8
  %i.bgd = load i64, ptr %i.bgc, align 8, !tbaa !144
  %i.bge = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bgf = trunc i64 %i.bgd to i32
  %i.bgg = add i32 %i.ae, %i.bgf
  store i32 %i.bgg, ptr %i.bge, align 4, !tbaa !93
  br label %common.ret1490

.thread1082:                                      ; preds = %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit, %bb.ki
  %i.bgh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.39)
  %i.bgi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPKv(ptr noundef nonnull align 8 dereferenceable(8) %i.bgh, ptr noundef %1)
  %i.bgj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.bgi), !inline_history !5 ; 0 uses
  tail call void @abort() #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !30     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 3 uses
  %.not2527.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not2527.i.i, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i, label %.lr.ph33.i.i

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted.i12.i = load i32, ptr %i.d, align 4
  br label %._crit_edge.i.i

.lr.ph33.i.i:                                     ; preds = %bb.a, %bb.b
  %.sroa.018.031.i.i = phi ptr [ %i.g, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.e = load i32, ptr %.sroa.018.031.i.i, align 8, !tbaa !41
  %.not.i.i = icmp eq i32 %i.e, 1
  br i1 %.not.i.i, label %bb.b, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph33.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i, i64 8
  store i32 %4, ptr %i.f, align 8, !tbaa !63
  br label %bb.b

bb.b:                                             ; preds = %.sink.split.i.i, %.lr.ph33.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i, i64 40 ; 2 uses
  %.not26.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not26.i.i, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i, label %.lr.ph33.i.i

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %.promoted.i.i = load i32, ptr %i.h, align 4
  %i.i = zext i1 %2 to i8
  br label %.lr.ph.i7.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.e
  %i.j = trunc nuw i8 %.1.i10.i to i1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i
  %i.k = phi ptr [ %i.d, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i ], [ %i.h, %._crit_edge.loopexit.i.i ]
  %i.l = phi i32 [ %.promoted.i12.i, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i ], [ %i.x, %._crit_edge.loopexit.i.i ]
  %.0.lcssa.i.i = phi i1 [ %2, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i ], [ %i.j, %._crit_edge.loopexit.i.i ]
  %or.cond.i.i = select i1 %3, i1 %.0.lcssa.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit

.lr.ph.i7.i:                                      ; preds = %bb.e, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i
  %.06.i.i = phi i8 [ %.1.i10.i, %bb.e ], [ %i.i, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i ] ; 2 uses
  %.sroa.01.05.i.i = phi ptr [ %i.y, %bb.e ], [ %i.a, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i ] ; 4 uses
  %i.m = phi i32 [ %i.x, %bb.e ], [ %.promoted.i.i, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i ] ; 2 uses
  %i.n = load i32, ptr %.sroa.01.05.i.i, align 8, !tbaa !41
  switch i32 %i.n, label %bb.e [
    i32 2, label %bb.c
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %.lr.ph.i7.i, %.lr.ph.i7.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !63
  br label %.sink.split.i9.i

bb.d:                                             ; preds = %.lr.ph.i7.i
  %i.q = zext nneg i8 %.06.i.i to i32
  %spec.select.i8.i = add i32 %i.m, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48
  %i.v = trunc i64 %i.u to i32
  %i.w = add i32 %spec.select.i8.i, %i.v
  br label %.sink.split.i9.i

.sink.split.i9.i:                                 ; preds = %bb.d, %bb.c
  %.sink.i.i = phi i32 [ %i.w, %bb.d ], [ %i.p, %bb.c ] ; 2 uses
  %.1.ph.i.i = phi i8 [ 1, %bb.d ], [ 0, %bb.c ]
  store i32 %.sink.i.i, ptr %i.h, align 4, !tbaa !84
  br label %bb.e

bb.e:                                             ; preds = %.sink.split.i9.i, %.lr.ph.i7.i
  %i.x = phi i32 [ %i.m, %.lr.ph.i7.i ], [ %.sink.i.i, %.sink.split.i9.i ] ; 2 uses
  %.1.i10.i = phi i8 [ %.06.i.i, %.lr.ph.i7.i ], [ %.1.ph.i.i, %.sink.split.i9.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 40 ; 2 uses
  %.not.i11.i = icmp eq ptr %i.y, %i.c
  br i1 %.not.i11.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i7.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.z = add i32 %i.l, 1
  store i32 %i.z, ptr %i.k, align 4, !tbaa !84
  br label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit

_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit: ; preds = %._crit_edge.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !30     ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 4 uses
  %.not2527.i = icmp eq ptr %i.a, %i.c
  br i1 %.not2527.i, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = ptrtoaddr ptr %i.a to i64
  %i.f = add i64 %i.d, -40
  %i.g = sub i64 %i.f, %i.e                       ; 4 uses
  %i.h = udiv i64 %i.g, 40
  %i.i = add nuw nsw i64 %i.h, 1                  ; 6 uses
  %min.iters.check = icmp ult i64 %i.g, 280
  br i1 %min.iters.check, label %.lr.ph.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.i, 1152921504606846968      ; 3 uses
  %i.j = mul i64 %n.vec, 40
  %i.k = getelementptr i8, ptr %i.a, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %i.l = mul i64 %index, 40                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.l
  %i.m = getelementptr i8, ptr %i.a, i64 %i.l
  %next.gep17 = getelementptr i8, ptr %i.m, i64 40
  %i.n = getelementptr i8, ptr %i.a, i64 %i.l
  %next.gep18 = getelementptr i8, ptr %i.n, i64 80
  %i.o = getelementptr i8, ptr %i.a, i64 %i.l
  %next.gep19 = getelementptr i8, ptr %i.o, i64 120
  %i.p = getelementptr i8, ptr %i.a, i64 %i.l
  %next.gep20 = getelementptr i8, ptr %i.p, i64 160
  %i.q = getelementptr i8, ptr %i.a, i64 %i.l
  %next.gep21 = getelementptr i8, ptr %i.q, i64 200
  %i.r = getelementptr i8, ptr %i.a, i64 %i.l
  %next.gep22 = getelementptr i8, ptr %i.r, i64 240
  %i.s = getelementptr i8, ptr %i.a, i64 %i.l
  %next.gep23 = getelementptr i8, ptr %i.s, i64 280
  %i.t = load i32, ptr %next.gep, align 8, !tbaa !41
  %i.u = load i32, ptr %next.gep17, align 8, !tbaa !41
  %i.v = load i32, ptr %next.gep18, align 8, !tbaa !41
  %i.w = load i32, ptr %next.gep19, align 8, !tbaa !41
  %i.x = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %i.y = insertelement <4 x i32> %i.x, i32 %i.u, i64 1
  %i.z = insertelement <4 x i32> %i.y, i32 %i.v, i64 2
  %i.aa = insertelement <4 x i32> %i.z, i32 %i.w, i64 3
  %i.ab = load i32, ptr %next.gep20, align 8, !tbaa !41
  %i.ac = load i32, ptr %next.gep21, align 8, !tbaa !41
  %i.ad = load i32, ptr %next.gep22, align 8, !tbaa !41
  %i.ae = load i32, ptr %next.gep23, align 8, !tbaa !41
  %i.af = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %i.ag = insertelement <4 x i32> %i.af, i32 %i.ac, i64 1
  %i.ah = insertelement <4 x i32> %i.ag, i32 %i.ad, i64 2
  %i.ai = insertelement <4 x i32> %i.ah, i32 %i.ae, i64 3
  %i.aj = icmp ne <4 x i32> %i.aa, splat (i32 1)
  %i.ak = icmp ne <4 x i32> %i.ai, splat (i32 1)
  %i.al = zext <4 x i1> %i.aj to <4 x i32>
  %i.am = zext <4 x i1> %i.ak to <4 x i32>
  %i.an = add <4 x i32> %vec.phi, %i.al           ; 2 uses
  %i.ao = add <4 x i32> %vec.phi16, %i.am         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !542

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ao, %i.an
  %i.aq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.lr.ph33.i.preheader, label %.lr.ph.i.preheader24

.lr.ph.i.preheader24:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.01529.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.aq, %middle.block ]
  %.sroa.022.028.i.ph = phi ptr [ %i.a, %.lr.ph.i.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph.i

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread: ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted.i12 = load i32, ptr %i.ar, align 4
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader24, %.lr.ph.i
  %.01529.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.01529.i.ph, %.lr.ph.i.preheader24 ]
  %.sroa.022.028.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.sroa.022.028.i.ph, %.lr.ph.i.preheader24 ] ; 2 uses
  %i.as = load i32, ptr %.sroa.022.028.i, align 8, !tbaa !41
  %.not17.i = icmp ne i32 %i.as, 1
  %i.at = zext i1 %.not17.i to i32
  %spec.select.i = add i32 %.01529.i, %i.at       ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.022.028.i, i64 40 ; 2 uses
  %.not25.i = icmp eq ptr %i.au, %i.c
  br i1 %.not25.i, label %.lr.ph33.i.preheader, label %.lr.ph.i, !llvm.loop !543

.lr.ph33.i.preheader:                             ; preds = %.lr.ph.i, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.aq, %middle.block ], [ %spec.select.i, %.lr.ph.i ] ; 3 uses
  %i.av = icmp ult i64 %i.g, 40
  br i1 %i.av, label %.lr.ph33.i.epil.preheader, label %.lr.ph33.i.preheader.new

.lr.ph33.i.preheader.new:                         ; preds = %.lr.ph33.i.preheader
  %unroll_iter = and i64 %i.i, 1152921504606846974
  br label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %bb.b, %.lr.ph33.i.preheader.new
  %.032.i = phi i32 [ 0, %.lr.ph33.i.preheader.new ], [ %.1.i.1, %bb.b ] ; 2 uses
  %.sroa.018.031.i = phi ptr [ %i.a, %.lr.ph33.i.preheader.new ], [ %i.bf, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph33.i.preheader.new ], [ %niter.next.1, %bb.b ]
  %i.aw = load i32, ptr %.sroa.018.031.i, align 8, !tbaa !41
  %.not.i = icmp eq i32 %i.aw, 1
  br i1 %.not.i, label %.lr.ph33.i.1, label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph33.i
  %i.ax = add i32 %.032.i, 1                      ; 2 uses
  %i.ay = icmp ult i32 %i.ax, %spec.select.i.lcssa
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i, i64 8
  %..i = select i1 %i.ay, i32 %4, i32 %5
  store i32 %..i, ptr %i.az, align 8, !tbaa !63
  br label %.lr.ph33.i.1

.lr.ph33.i.1:                                     ; preds = %.sink.split.i, %.lr.ph33.i
  %.1.i = phi i32 [ %.032.i, %.lr.ph33.i ], [ %i.ax, %.sink.split.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i, i64 40
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !41
  %.not.i.1 = icmp eq i32 %i.bb, 1
  br i1 %.not.i.1, label %bb.b, label %.sink.split.i.1

.sink.split.i.1:                                  ; preds = %.lr.ph33.i.1
  %i.bc = add i32 %.1.i, 1                        ; 2 uses
  %i.bd = icmp ult i32 %i.bc, %spec.select.i.lcssa
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i, i64 48
  %..i.1 = select i1 %i.bd, i32 %4, i32 %5
  store i32 %..i.1, ptr %i.be, align 8, !tbaa !63
  br label %bb.b

bb.b:                                             ; preds = %.sink.split.i.1, %.lr.ph33.i.1
  %.1.i.1 = phi i32 [ %.1.i, %.lr.ph33.i.1 ], [ %i.bc, %.sink.split.i.1 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i, i64 80 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.unr-lcssa, label %.lr.ph33.i

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = trunc i64 %i.i to i1
  br i1 %lcmp.mod.not, label %.lr.ph33.i.epil.preheader, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit

.lr.ph33.i.epil.preheader:                        ; preds = %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.unr-lcssa, %.lr.ph33.i.preheader
  %.032.i.epil.init = phi i32 [ 0, %.lr.ph33.i.preheader ], [ %.1.i.1, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.unr-lcssa ]
  %.sroa.018.031.i.epil.init = phi ptr [ %i.a, %.lr.ph33.i.preheader ], [ %i.bf, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod28 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.bg = load i32, ptr %.sroa.018.031.i.epil.init, align 8, !tbaa !41
  %.not.i.epil = icmp eq i32 %i.bg, 1
  br i1 %.not.i.epil, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit, label %.sink.split.i.epil

.sink.split.i.epil:                               ; preds = %.lr.ph33.i.epil.preheader
  %i.bh = add i32 %.032.i.epil.init, 1
  %i.bi = icmp ult i32 %i.bh, %spec.select.i.lcssa
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.epil.init, i64 8
  %..i.epil = select i1 %i.bi, i32 %4, i32 %5
  store i32 %..i.epil, ptr %i.bj, align 8, !tbaa !63
  br label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit: ; preds = %.lr.ph33.i.epil.preheader, %.sink.split.i.epil, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.unr-lcssa
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %.promoted.i = load i32, ptr %i.bk, align 4     ; 3 uses
  %i.bl = zext i1 %2 to i8                        ; 2 uses
  %lcmp.mod30.not = trunc i64 %i.i to i1
  br i1 %lcmp.mod30.not, label %.lr.ph.i7.prol, label %.lr.ph.i7.prol.loopexit

.lr.ph.i7.prol:                                   ; preds = %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit
  %i.bm = load i32, ptr %i.a, align 8, !tbaa !41
  switch i32 %i.bm, label %.lr.ph.i7.prol.loopexit.unr-lcssa [
    i32 2, label %bb.d
    i32 0, label %bb.d
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i7.prol
  %i.bn = zext i1 %2 to i32
  %spec.select.i8.prol = add i32 %.promoted.i, %i.bn
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !43
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !48
  %i.bs = trunc i64 %i.br to i32
  %i.bt = add i32 %spec.select.i8.prol, %i.bs
  br label %.sink.split.i9.prol

bb.d:                                             ; preds = %.lr.ph.i7.prol, %.lr.ph.i7.prol
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !63
  br label %.sink.split.i9.prol

.sink.split.i9.prol:                              ; preds = %bb.d, %bb.c
  %.sink.i.prol = phi i32 [ %i.bt, %bb.c ], [ %i.bv, %bb.d ] ; 2 uses
  %.1.ph.i.prol = phi i8 [ 1, %bb.c ], [ 0, %bb.d ]
  store i32 %.sink.i.prol, ptr %i.bk, align 4, !tbaa !84
  br label %.lr.ph.i7.prol.loopexit.unr-lcssa

.lr.ph.i7.prol.loopexit.unr-lcssa:                ; preds = %.sink.split.i9.prol, %.lr.ph.i7.prol
  %i.bw = phi i32 [ %.promoted.i, %.lr.ph.i7.prol ], [ %.sink.i.prol, %.sink.split.i9.prol ] ; 2 uses
  %.1.i10.prol = phi i8 [ %i.bl, %.lr.ph.i7.prol ], [ %.1.ph.i.prol, %.sink.split.i9.prol ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %.lr.ph.i7.prol.loopexit

.lr.ph.i7.prol.loopexit:                          ; preds = %.lr.ph.i7.prol.loopexit.unr-lcssa, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit
  %.lcssa.unr = phi i32 [ poison, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit ], [ %i.bw, %.lr.ph.i7.prol.loopexit.unr-lcssa ]
  %.1.i10.lcssa.unr = phi i8 [ poison, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit ], [ %.1.i10.prol, %.lr.ph.i7.prol.loopexit.unr-lcssa ]
  %.06.i.unr = phi i8 [ %i.bl, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit ], [ %.1.i10.prol, %.lr.ph.i7.prol.loopexit.unr-lcssa ]
  %.sroa.01.05.i.unr = phi ptr [ %i.a, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit ], [ %i.bx, %.lr.ph.i7.prol.loopexit.unr-lcssa ]
  %.unr = phi i32 [ %.promoted.i, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit ], [ %i.bw, %.lr.ph.i7.prol.loopexit.unr-lcssa ]
  %i.by = icmp ult i64 %i.g, 40
  br i1 %i.by, label %._crit_edge.loopexit.i, label %.lr.ph.i7

._crit_edge.loopexit.i:                           ; preds = %bb.i, %.lr.ph.i7.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph.i7.prol.loopexit ], [ %i.cz, %bb.i ]
  %.1.i10.lcssa = phi i8 [ %.1.i10.lcssa.unr, %.lr.ph.i7.prol.loopexit ], [ %.1.i10.1, %bb.i ]
  %i.bz = trunc nuw i8 %.1.i10.lcssa to i1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread, %._crit_edge.loopexit.i
  %i.ca = phi ptr [ %i.ar, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread ], [ %i.bk, %._crit_edge.loopexit.i ]
  %i.cb = phi i32 [ %.promoted.i12, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread ], [ %.lcssa, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i1 [ %2, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread ], [ %i.bz, %._crit_edge.loopexit.i ]
  %or.cond.i = select i1 %3, i1 %.0.lcssa.i, i1 false
  br i1 %or.cond.i, label %bb.j, label %_ZN7jsonnet8internalL12fodder_countERjRKSt6vectorINS0_13FodderElementESaIS3_EEbb.exit

.lr.ph.i7:                                        ; preds = %.lr.ph.i7.prol.loopexit, %bb.i
  %.06.i = phi i8 [ %.1.i10.1, %bb.i ], [ %.06.i.unr, %.lr.ph.i7.prol.loopexit ] ; 2 uses
  %.sroa.01.05.i = phi ptr [ %i.da, %bb.i ], [ %.sroa.01.05.i.unr, %.lr.ph.i7.prol.loopexit ] ; 7 uses
  %i.cc = phi i32 [ %i.cz, %bb.i ], [ %.unr, %.lr.ph.i7.prol.loopexit ] ; 2 uses
  %i.cd = load i32, ptr %.sroa.01.05.i, align 8, !tbaa !41
  switch i32 %i.cd, label %.lr.ph.i7.1 [
    i32 2, label %bb.e
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !63
  br label %.sink.split.i9

bb.f:                                             ; preds = %.lr.ph.i7
  %i.cg = zext nneg i8 %.06.i to i32
  %spec.select.i8 = add i32 %i.cc, %i.cg
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !43
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !48
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = add i32 %spec.select.i8, %i.cl
  br label %.sink.split.i9

.sink.split.i9:                                   ; preds = %bb.f, %bb.e
  %.sink.i = phi i32 [ %i.cm, %bb.f ], [ %i.cf, %bb.e ] ; 2 uses
  %.1.ph.i = phi i8 [ 1, %bb.f ], [ 0, %bb.e ]
  store i32 %.sink.i, ptr %i.bk, align 4, !tbaa !84
  br label %.lr.ph.i7.1

.lr.ph.i7.1:                                      ; preds = %.sink.split.i9, %.lr.ph.i7
  %i.cn = phi i32 [ %i.cc, %.lr.ph.i7 ], [ %.sink.i, %.sink.split.i9 ] ; 2 uses
  %.1.i10 = phi i8 [ %.06.i, %.lr.ph.i7 ], [ %.1.ph.i, %.sink.split.i9 ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 40
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !41
  switch i32 %i.cp, label %bb.i [
    i32 2, label %bb.h
    i32 0, label %bb.h
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i7.1
  %i.cq = zext nneg i8 %.1.i10 to i32
  %spec.select.i8.1 = add i32 %i.cn, %i.cq
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !43
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !48
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = add i32 %spec.select.i8.1, %i.cv
  br label %.sink.split.i9.1

bb.h:                                             ; preds = %.lr.ph.i7.1, %.lr.ph.i7.1
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 48
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !63
  br label %.sink.split.i9.1

.sink.split.i9.1:                                 ; preds = %bb.h, %bb.g
  %.sink.i.1 = phi i32 [ %i.cw, %bb.g ], [ %i.cy, %bb.h ] ; 2 uses
  %.1.ph.i.1 = phi i8 [ 1, %bb.g ], [ 0, %bb.h ]
  store i32 %.sink.i.1, ptr %i.bk, align 4, !tbaa !84
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i9.1, %.lr.ph.i7.1
  %i.cz = phi i32 [ %i.cn, %.lr.ph.i7.1 ], [ %.sink.i.1, %.sink.split.i9.1 ] ; 2 uses
  %.1.i10.1 = phi i8 [ %.1.i10, %.lr.ph.i7.1 ], [ %.1.ph.i.1, %.sink.split.i9.1 ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 80 ; 2 uses
  %.not.i11.1 = icmp eq ptr %i.da, %i.c
  br i1 %.not.i11.1, label %._crit_edge.loopexit.i, label %.lr.ph.i7

bb.j:                                             ; preds = %._crit_edge.i
  %i.db = add i32 %i.cb, 1
  store i32 %i.db, ptr %i.ca, align 4, !tbaa !84
  br label %_ZN7jsonnet8internalL12fodder_countERjRKSt6vectorINS0_13FodderElementESaIS3_EEbb.exit

_ZN7jsonnet8internalL12fodder_countERjRKSt6vectorINS0_13FodderElementESaIS3_EEbb.exit: ; preds = %._crit_edge.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal14FixIndentation5specsERSt6vectorINS0_17ComprehensionSpecESaIS3_EERKNS1_6IndentE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 4 uses
  %4 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !280    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !280  ; 2 uses
  %.not98 = icmp eq ptr %i.a, %i.c
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.af, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.af
  %.sroa.086.099 = phi ptr [ %i.a, %.lr.ph ], [ %i.ed, %bb.af ] ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.086.099, i64 8
  %i.h = load i32, ptr %i.d, align 4, !tbaa !96
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !30   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.086.099, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 3 uses
  %.not2527.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not2527.i.i.i, label %._crit_edge.i.i.i.thread, label %.lr.ph33.i.i.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.b
  %.promoted.i12.i.i = load i32, ptr %i.e, align 4
  br label %bb.g

.lr.ph33.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.sroa.018.031.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.i, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %.sroa.018.031.i.i.i, align 8, !tbaa !41
  %.not.i.i.i = icmp eq i32 %i.l, 1
  br i1 %.not.i.i.i, label %bb.c, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph33.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.i, i64 8
  store i32 %i.h, ptr %i.m, align 8, !tbaa !63
  br label %bb.c

bb.c:                                             ; preds = %.sink.split.i.i.i, %.lr.ph33.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.i, i64 40 ; 2 uses
  %.not26.i.i.i = icmp eq ptr %i.n, %i.k
  br i1 %.not26.i.i.i, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i, label %.lr.ph33.i.i.i

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i: ; preds = %bb.c
  %.promoted.i.i.i = load i32, ptr %i.e, align 4
  br label %.lr.ph.i7.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f
  %i.o = trunc nuw i8 %.1.i10.i.i to i1
  br i1 %i.o, label %bb.g, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit

.lr.ph.i7.i.i:                                    ; preds = %bb.f, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i
end_hunk_3
begin_hunk_4_@_ZN7jsonnet8internal14FixIndentation6paramsERSt6vectorINS0_13FodderElementESaIS3_EERS2_INS0_8ArgParamESaIS7_EEbS6_RKNS1_6IndentE:bb.a
  %.1.ph.i.i.i = phi i8 [ 1, %bb.m ], [ 0, %bb.l ]
  store i32 %.sink.i.i.i, ptr %i.x, align 4, !tbaa !84
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i9.i.i, %.lr.ph.i7.i.i
  %i.bt = phi i32 [ %i.bi, %.lr.ph.i7.i.i ], [ %.sink.i.i.i, %.sink.split.i9.i.i ] ; 3 uses
  %.1.i10.i.i = phi i8 [ %.06.i.i.i, %.lr.ph.i7.i.i ], [ %.1.ph.i.i.i, %.sink.split.i9.i.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i, i64 40 ; 2 uses
  %.not.i11.i.i = icmp eq ptr %i.bu, %i.ba
  br i1 %.not.i11.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i7.i.i

bb.o:                                             ; preds = %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i.i.thread, %._crit_edge.i.i.i
  %i.bv = phi i32 [ %.promoted.i12.i.i134, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i.i.thread ], [ %i.bt, %._crit_edge.i.i.i ]
  %i.bw = add i32 %i.bv, 1
  br label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit

_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit: ; preds = %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i.i, %._crit_edge.i.i.i, %bb.o
  %i.bx = phi i32 [ %.promoted.i12.i.i, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i.i ], [ %i.bt, %._crit_edge.i.i.i ], [ %i.bw, %bb.o ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.099.0105, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !139
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !144
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = add i32 %i.bx, %i.cc                    ; 2 uses
  store i32 %i.cd, ptr %i.x, align 4, !tbaa !93
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.099.0105, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !147 ; 2 uses
  %.not = icmp eq ptr %i.cf, null
  br i1 %.not, label %bb.u, label %bb.p

bb.p:                                             ; preds = %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.099.0105, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !30 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.099.0105, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !30 ; 3 uses
  %.not2527.i.i.i22 = icmp eq ptr %i.ch, %i.cj
  br i1 %.not2527.i.i.i22, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit44, label %.lr.ph33.i.i.i23

.lr.ph33.i.i.i23:                                 ; preds = %bb.p, %bb.q
  %.sroa.018.031.i.i.i24 = phi ptr [ %i.cm, %bb.q ], [ %i.ch, %bb.p ] ; 3 uses
  %i.ck = load i32, ptr %.sroa.018.031.i.i.i24, align 8, !tbaa !41
  %.not.i.i.i25 = icmp eq i32 %i.ck, 1
  br i1 %.not.i.i.i25, label %bb.q, label %.sink.split.i.i.i26

.sink.split.i.i.i26:                              ; preds = %.lr.ph33.i.i.i23
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.i24, i64 8
  store i32 %i.ar, ptr %i.cl, align 8, !tbaa !63
  br label %bb.q

bb.q:                                             ; preds = %.sink.split.i.i.i26, %.lr.ph33.i.i.i23
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.i24, i64 40 ; 2 uses
  %.not26.i.i.i27 = icmp eq ptr %i.cm, %i.cj
  br i1 %.not26.i.i.i27, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i28, label %.lr.ph33.i.i.i23

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i28: ; preds = %bb.q
  %.promoted.i.i.i29 = load i32, ptr %i.x, align 4
  br label %.lr.ph.i7.i.i30

.lr.ph.i7.i.i30:                                  ; preds = %bb.t, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i28
  %.06.i.i.i31 = phi i8 [ %.1.i10.i.i37, %bb.t ], [ 0, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i28 ] ; 2 uses
  %.sroa.01.05.i.i.i32 = phi ptr [ %i.cz, %bb.t ], [ %i.ch, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i28 ] ; 4 uses
  %i.cn = phi i32 [ %i.cy, %bb.t ], [ %.promoted.i.i.i29, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i28 ] ; 2 uses
  %i.co = load i32, ptr %.sroa.01.05.i.i.i32, align 8, !tbaa !41
  switch i32 %i.co, label %bb.t [
    i32 2, label %bb.r
    i32 0, label %bb.r
    i32 1, label %bb.s
  ]

bb.r:                                             ; preds = %.lr.ph.i7.i.i30, %.lr.ph.i7.i.i30
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i32, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !63
  br label %.sink.split.i9.i.i34

bb.s:                                             ; preds = %.lr.ph.i7.i.i30
  %i.cr = zext nneg i8 %.06.i.i.i31 to i32
  %spec.select.i8.i.i33 = add i32 %i.cn, %i.cr
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i32, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !43
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !48
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = add i32 %spec.select.i8.i.i33, %i.cw
  br label %.sink.split.i9.i.i34

.sink.split.i9.i.i34:                             ; preds = %bb.s, %bb.r
  %.sink.i.i.i35 = phi i32 [ %i.cx, %bb.s ], [ %i.cq, %bb.r ] ; 2 uses
  %.1.ph.i.i.i36 = phi i8 [ 1, %bb.s ], [ 0, %bb.r ]
  store i32 %.sink.i.i.i35, ptr %i.x, align 4, !tbaa !84
  br label %bb.t

bb.t:                                             ; preds = %.sink.split.i9.i.i34, %.lr.ph.i7.i.i30
  %i.cy = phi i32 [ %i.cn, %.lr.ph.i7.i.i30 ], [ %.sink.i.i.i35, %.sink.split.i9.i.i34 ] ; 2 uses
  %.1.i10.i.i37 = phi i8 [ %.06.i.i.i31, %.lr.ph.i7.i.i30 ], [ %.1.ph.i.i.i36, %.sink.split.i9.i.i34 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i32, i64 40 ; 2 uses
  %.not.i11.i.i38 = icmp eq ptr %i.cz, %i.cj
  br i1 %.not.i11.i.i38, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit44, label %.lr.ph.i7.i.i30

_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit44: ; preds = %bb.t, %bb.p
  %i.da = phi i32 [ %i.cd, %bb.p ], [ %i.cy, %bb.t ]
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.x, align 4, !tbaa !93
  call void @_ZN7jsonnet8internal14FixIndentation4exprEPNS0_3ASTERKNS1_6IndentEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.cf, ptr noundef nonnull align 4 dereferenceable(8) %6, i1 noundef zeroext false)
  %.pre107 = load i32, ptr %i.ao, align 4, !tbaa !96 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit44, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit
  %i.dc = phi i32 [ %.pre107, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit44 ], [ %i.aq, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit ] ; 2 uses
  %i.dd = phi i32 [ %.pre107, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit44 ], [ %i.ar, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.099.0105, i64 64
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !30 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.099.0105, i64 72
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !30 ; 3 uses
  %.not2527.i.i.i45 = icmp eq ptr %i.df, %i.dh
  br i1 %.not2527.i.i.i45, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit67, label %.lr.ph33.i.i.i46

.lr.ph33.i.i.i46:                                 ; preds = %bb.u, %bb.v
  %.sroa.018.031.i.i.i47 = phi ptr [ %i.dk, %bb.v ], [ %i.df, %bb.u ] ; 3 uses
  %i.di = load i32, ptr %.sroa.018.031.i.i.i47, align 8, !tbaa !41
  %.not.i.i.i48 = icmp eq i32 %i.di, 1
  br i1 %.not.i.i.i48, label %bb.v, label %.sink.split.i.i.i49

.sink.split.i.i.i49:                              ; preds = %.lr.ph33.i.i.i46
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.i47, i64 8
  store i32 %i.dd, ptr %i.dj, align 8, !tbaa !63
  br label %bb.v

bb.v:                                             ; preds = %.sink.split.i.i.i49, %.lr.ph33.i.i.i46
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.i47, i64 40 ; 2 uses
  %.not26.i.i.i50 = icmp eq ptr %i.dk, %i.dh
  br i1 %.not26.i.i.i50, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i51, label %.lr.ph33.i.i.i46

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i51: ; preds = %bb.v
  %.promoted.i.i.i52 = load i32, ptr %i.x, align 4
  br label %.lr.ph.i7.i.i53

.lr.ph.i7.i.i53:                                  ; preds = %bb.y, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i51
  %.06.i.i.i54 = phi i8 [ %.1.i10.i.i60, %bb.y ], [ 0, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i51 ] ; 2 uses
  %.sroa.01.05.i.i.i55 = phi ptr [ %i.dx, %bb.y ], [ %i.df, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i51 ] ; 4 uses
  %i.dl = phi i32 [ %i.dw, %bb.y ], [ %.promoted.i.i.i52, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i51 ] ; 2 uses
  %i.dm = load i32, ptr %.sroa.01.05.i.i.i55, align 8, !tbaa !41
  switch i32 %i.dm, label %bb.y [
    i32 2, label %bb.w
    i32 0, label %bb.w
    i32 1, label %bb.x
  ]

bb.w:                                             ; preds = %.lr.ph.i7.i.i53, %.lr.ph.i7.i.i53
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i55, i64 8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !63
  br label %.sink.split.i9.i.i57

bb.x:                                             ; preds = %.lr.ph.i7.i.i53
  %i.dp = zext nneg i8 %.06.i.i.i54 to i32
  %spec.select.i8.i.i56 = add i32 %i.dl, %i.dp
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i55, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !43
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !48
  %i.du = trunc i64 %i.dt to i32
  %i.dv = add i32 %spec.select.i8.i.i56, %i.du
  br label %.sink.split.i9.i.i57

.sink.split.i9.i.i57:                             ; preds = %bb.x, %bb.w
  %.sink.i.i.i58 = phi i32 [ %i.dv, %bb.x ], [ %i.do, %bb.w ] ; 2 uses
  %.1.ph.i.i.i59 = phi i8 [ 1, %bb.x ], [ 0, %bb.w ]
  store i32 %.sink.i.i.i58, ptr %i.x, align 4, !tbaa !84
  br label %bb.y

bb.y:                                             ; preds = %.sink.split.i9.i.i57, %.lr.ph.i7.i.i53
  %i.dw = phi i32 [ %i.dl, %.lr.ph.i7.i.i53 ], [ %.sink.i.i.i58, %.sink.split.i9.i.i57 ]
  %.1.i10.i.i60 = phi i8 [ %.06.i.i.i54, %.lr.ph.i7.i.i53 ], [ %.1.ph.i.i.i59, %.sink.split.i9.i.i57 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i55, i64 40 ; 2 uses
  %.not.i11.i.i61 = icmp eq ptr %i.dx, %i.dh
  br i1 %.not.i11.i.i61, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit67, label %.lr.ph.i7.i.i53

_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit67: ; preds = %bb.y, %bb.u
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.099.0105, i64 88 ; 2 uses
  %.not103 = icmp eq ptr %i.dy, %i.aa
  br i1 %.not103, label %._crit_edge, label %bb.i

bb.z:                                             ; preds = %._crit_edge
  %i.dz = load i32, ptr %i.x, align 4, !tbaa !93
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %i.x, align 4, !tbaa !93
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge
  %i.eb = load i32, ptr %i.a, align 4, !tbaa !96  ; 3 uses
  %i.ec = load ptr, ptr %4, align 8, !tbaa !30    ; 16 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !30 ; 3 uses
  %.not2527.i.i68 = icmp eq ptr %i.ec, %i.ee
  br i1 %.not2527.i.i68, label %._ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit98_crit_edge, label %.lr.ph.i.i69.preheader

.lr.ph.i.i69.preheader:                           ; preds = %bb.aa
  %i.ef = ptrtoaddr ptr %i.ee to i64
  %i.eg = ptrtoaddr ptr %i.ec to i64
  %i.eh = add i64 %i.ef, -40
  %i.ei = sub i64 %i.eh, %i.eg                    ; 4 uses
  %i.ej = udiv i64 %i.ei, 40
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 8 uses
  %min.iters.check = icmp ult i64 %i.ei, 280
  br i1 %min.iters.check, label %.lr.ph.i.i69.preheader151, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i69.preheader
  %n.vec = and i64 %i.ek, 1152921504606846968     ; 3 uses
  %i.el = mul i64 %n.vec, 40
  %i.em = getelementptr i8, ptr %i.ec, i64 %i.el
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fp, %vector.body ]
  %vec.phi143 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fq, %vector.body ]
  %i.en = mul i64 %index, 40                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.ec, i64 %i.en
  %i.eo = getelementptr i8, ptr %i.ec, i64 %i.en
  %next.gep144 = getelementptr i8, ptr %i.eo, i64 40
  %i.ep = getelementptr i8, ptr %i.ec, i64 %i.en
  %next.gep145 = getelementptr i8, ptr %i.ep, i64 80
  %i.eq = getelementptr i8, ptr %i.ec, i64 %i.en
  %next.gep146 = getelementptr i8, ptr %i.eq, i64 120
  %i.er = getelementptr i8, ptr %i.ec, i64 %i.en
  %next.gep147 = getelementptr i8, ptr %i.er, i64 160
  %i.es = getelementptr i8, ptr %i.ec, i64 %i.en
  %next.gep148 = getelementptr i8, ptr %i.es, i64 200
  %i.et = getelementptr i8, ptr %i.ec, i64 %i.en
  %next.gep149 = getelementptr i8, ptr %i.et, i64 240
  %i.eu = getelementptr i8, ptr %i.ec, i64 %i.en
  %next.gep150 = getelementptr i8, ptr %i.eu, i64 280
  %i.ev = load i32, ptr %next.gep, align 8, !tbaa !41
  %i.ew = load i32, ptr %next.gep144, align 8, !tbaa !41
  %i.ex = load i32, ptr %next.gep145, align 8, !tbaa !41
  %i.ey = load i32, ptr %next.gep146, align 8, !tbaa !41
  %i.ez = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %i.fa = insertelement <4 x i32> %i.ez, i32 %i.ew, i64 1
  %i.fb = insertelement <4 x i32> %i.fa, i32 %i.ex, i64 2
  %i.fc = insertelement <4 x i32> %i.fb, i32 %i.ey, i64 3
  %i.fd = load i32, ptr %next.gep147, align 8, !tbaa !41
  %i.fe = load i32, ptr %next.gep148, align 8, !tbaa !41
  %i.ff = load i32, ptr %next.gep149, align 8, !tbaa !41
  %i.fg = load i32, ptr %next.gep150, align 8, !tbaa !41
  %i.fh = insertelement <4 x i32> poison, i32 %i.fd, i64 0
  %i.fi = insertelement <4 x i32> %i.fh, i32 %i.fe, i64 1
  %i.fj = insertelement <4 x i32> %i.fi, i32 %i.ff, i64 2
  %i.fk = insertelement <4 x i32> %i.fj, i32 %i.fg, i64 3
  %i.fl = icmp ne <4 x i32> %i.fc, splat (i32 1)
  %i.fm = icmp ne <4 x i32> %i.fk, splat (i32 1)
  %i.fn = zext <4 x i1> %i.fl to <4 x i32>
  %i.fo = zext <4 x i1> %i.fm to <4 x i32>
  %i.fp = add <4 x i32> %vec.phi, %i.fn           ; 2 uses
  %i.fq = add <4 x i32> %vec.phi143, %i.fo        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !544

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fq, %i.fp
  %i.fs = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ek, %n.vec
  br i1 %cmp.n, label %.lr.ph33.i.i76.preheader, label %.lr.ph.i.i69.preheader151

.lr.ph.i.i69.preheader151:                        ; preds = %.lr.ph.i.i69.preheader, %middle.block
  %.01529.i.i70.ph = phi i32 [ 0, %.lr.ph.i.i69.preheader ], [ %i.fs, %middle.block ]
  %.sroa.022.028.i.i71.ph = phi ptr [ %i.ec, %.lr.ph.i.i69.preheader ], [ %i.em, %middle.block ]
  br label %.lr.ph.i.i69

._ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit98_crit_edge: ; preds = %bb.aa
  %.pre108 = load i32, ptr %i.x, align 4, !tbaa !93
  br label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit98

.lr.ph.i.i69:                                     ; preds = %.lr.ph.i.i69.preheader151, %.lr.ph.i.i69
  %.01529.i.i70 = phi i32 [ %spec.select.i.i73, %.lr.ph.i.i69 ], [ %.01529.i.i70.ph, %.lr.ph.i.i69.preheader151 ]
  %.sroa.022.028.i.i71 = phi ptr [ %i.fv, %.lr.ph.i.i69 ], [ %.sroa.022.028.i.i71.ph, %.lr.ph.i.i69.preheader151 ] ; 2 uses
  %i.ft = load i32, ptr %.sroa.022.028.i.i71, align 8, !tbaa !41
  %.not17.i.i72 = icmp ne i32 %i.ft, 1
  %i.fu = zext i1 %.not17.i.i72 to i32
  %spec.select.i.i73 = add i32 %.01529.i.i70, %i.fu ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.022.028.i.i71, i64 40 ; 2 uses
  %.not25.i.i74 = icmp eq ptr %i.fv, %i.ee
  br i1 %.not25.i.i74, label %.lr.ph33.i.i76.preheader, label %.lr.ph.i.i69, !llvm.loop !545

.lr.ph33.i.i76.preheader:                         ; preds = %.lr.ph.i.i69, %middle.block
  %spec.select.i.i73.lcssa = phi i32 [ %i.fs, %middle.block ], [ %spec.select.i.i73, %.lr.ph.i.i69 ] ; 3 uses
  %i.fw = icmp ult i64 %i.ei, 40
  br i1 %i.fw, label %.lr.ph33.i.i76.epil.preheader, label %.lr.ph33.i.i76.preheader.new

.lr.ph33.i.i76.preheader.new:                     ; preds = %.lr.ph33.i.i76.preheader
  %unroll_iter = and i64 %i.ek, 1152921504606846974
  br label %.lr.ph33.i.i76

.lr.ph33.i.i76:                                   ; preds = %bb.ab, %.lr.ph33.i.i76.preheader.new
  %.032.i.i77 = phi i32 [ 0, %.lr.ph33.i.i76.preheader.new ], [ %.1.i.i81.1, %bb.ab ] ; 2 uses
  %.sroa.018.031.i.i78 = phi ptr [ %i.ec, %.lr.ph33.i.i76.preheader.new ], [ %i.gg, %bb.ab ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph33.i.i76.preheader.new ], [ %niter.next.1, %bb.ab ]
  %i.fx = load i32, ptr %.sroa.018.031.i.i78, align 8, !tbaa !41
  %.not.i.i79 = icmp eq i32 %i.fx, 1
  br i1 %.not.i.i79, label %.lr.ph33.i.i76.1, label %.sink.split.i.i80

.sink.split.i.i80:                                ; preds = %.lr.ph33.i.i76
  %i.fy = add i32 %.032.i.i77, 1                  ; 2 uses
  %i.fz = icmp ult i32 %i.fy, %spec.select.i.i73.lcssa
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i78, i64 8
  %..i.i = select i1 %i.fz, i32 %i.ap, i32 %i.eb
  store i32 %..i.i, ptr %i.ga, align 8, !tbaa !63
  br label %.lr.ph33.i.i76.1

.lr.ph33.i.i76.1:                                 ; preds = %.sink.split.i.i80, %.lr.ph33.i.i76
  %.1.i.i81 = phi i32 [ %.032.i.i77, %.lr.ph33.i.i76 ], [ %i.fy, %.sink.split.i.i80 ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i78, i64 40
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !41
  %.not.i.i79.1 = icmp eq i32 %i.gc, 1
  br i1 %.not.i.i79.1, label %bb.ab, label %.sink.split.i.i80.1

.sink.split.i.i80.1:                              ; preds = %.lr.ph33.i.i76.1
  %i.gd = add i32 %.1.i.i81, 1                    ; 2 uses
  %i.ge = icmp ult i32 %i.gd, %spec.select.i.i73.lcssa
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i78, i64 48
  %..i.i.1 = select i1 %i.ge, i32 %i.ap, i32 %i.eb
  store i32 %..i.i.1, ptr %i.gf, align 8, !tbaa !63
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split.i.i80.1, %.lr.ph33.i.i76.1
  %.1.i.i81.1 = phi i32 [ %.1.i.i81, %.lr.ph33.i.i76.1 ], [ %i.gd, %.sink.split.i.i80.1 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i78, i64 80 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83.unr-lcssa, label %.lr.ph33.i.i76

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83.unr-lcssa: ; preds = %bb.ab
  %lcmp.mod.not = trunc i64 %i.ek to i1
  br i1 %lcmp.mod.not, label %.lr.ph33.i.i76.epil.preheader, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83

.lr.ph33.i.i76.epil.preheader:                    ; preds = %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83.unr-lcssa, %.lr.ph33.i.i76.preheader
  %.032.i.i77.epil.init = phi i32 [ 0, %.lr.ph33.i.i76.preheader ], [ %.1.i.i81.1, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83.unr-lcssa ]
  %.sroa.018.031.i.i78.epil.init = phi ptr [ %i.ec, %.lr.ph33.i.i76.preheader ], [ %i.gg, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83.unr-lcssa ] ; 2 uses
  %lcmp.mod159 = trunc i64 %i.ek to i1
  call void @llvm.assume(i1 %lcmp.mod159)
  %i.gh = load i32, ptr %.sroa.018.031.i.i78.epil.init, align 8, !tbaa !41
  %.not.i.i79.epil = icmp eq i32 %i.gh, 1
  br i1 %.not.i.i79.epil, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83, label %.sink.split.i.i80.epil

.sink.split.i.i80.epil:                           ; preds = %.lr.ph33.i.i76.epil.preheader
  %i.gi = add i32 %.032.i.i77.epil.init, 1
  %i.gj = icmp ult i32 %i.gi, %spec.select.i.i73.lcssa
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i78.epil.init, i64 8
  %..i.i.epil = select i1 %i.gj, i32 %i.ap, i32 %i.eb
  store i32 %..i.i.epil, ptr %i.gk, align 8, !tbaa !63
  br label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83: ; preds = %.lr.ph33.i.i76.epil.preheader, %.sink.split.i.i80.epil, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83.unr-lcssa
  %.promoted.i.i84 = load i32, ptr %i.x, align 4  ; 2 uses
  %i.gl = icmp ult i64 %i.ei, 40
  br i1 %i.gl, label %.lr.ph.i7.i85.epil.preheader, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83.new

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83.new: ; preds = %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83
  %unroll_iter164 = and i64 %i.ek, 1152921504606846974
  br label %.lr.ph.i7.i85

.lr.ph.i7.i85:                                    ; preds = %bb.ag, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83.new
  %.06.i.i86 = phi i8 [ 0, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83.new ], [ %.1.i10.i92.1, %bb.ag ] ; 2 uses
  %.sroa.01.05.i.i87 = phi ptr [ %i.ec, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83.new ], [ %i.hk, %bb.ag ] ; 7 uses
  %i.gm = phi i32 [ %.promoted.i.i84, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83.new ], [ %i.hj, %bb.ag ] ; 2 uses
  %niter165 = phi i64 [ 0, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83.new ], [ %niter165.next.1, %bb.ag ]
  %i.gn = load i32, ptr %.sroa.01.05.i.i87, align 8, !tbaa !41
  switch i32 %i.gn, label %.lr.ph.i7.i85.1 [
    i32 2, label %bb.ac
    i32 0, label %bb.ac
    i32 1, label %bb.ad
  ]

bb.ac:                                            ; preds = %.lr.ph.i7.i85, %.lr.ph.i7.i85
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i87, i64 8
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !63
  br label %.sink.split.i9.i89

bb.ad:                                            ; preds = %.lr.ph.i7.i85
  %i.gq = zext nneg i8 %.06.i.i86 to i32
  %spec.select.i8.i88 = add i32 %i.gm, %i.gq
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i87, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !43
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !48
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = add i32 %spec.select.i8.i88, %i.gv
  br label %.sink.split.i9.i89

.sink.split.i9.i89:                               ; preds = %bb.ad, %bb.ac
  %.sink.i.i90 = phi i32 [ %i.gw, %bb.ad ], [ %i.gp, %bb.ac ] ; 2 uses
  %.1.ph.i.i91 = phi i8 [ 1, %bb.ad ], [ 0, %bb.ac ]
  store i32 %.sink.i.i90, ptr %i.x, align 4, !tbaa !84
  br label %.lr.ph.i7.i85.1

.lr.ph.i7.i85.1:                                  ; preds = %.sink.split.i9.i89, %.lr.ph.i7.i85
  %i.gx = phi i32 [ %i.gm, %.lr.ph.i7.i85 ], [ %.sink.i.i90, %.sink.split.i9.i89 ] ; 2 uses
  %.1.i10.i92 = phi i8 [ %.06.i.i86, %.lr.ph.i7.i85 ], [ %.1.ph.i.i91, %.sink.split.i9.i89 ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i87, i64 40
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !41
  switch i32 %i.gz, label %bb.ag [
    i32 2, label %bb.af
    i32 0, label %bb.af
    i32 1, label %bb.ae
  ]

bb.ae:                                            ; preds = %.lr.ph.i7.i85.1
  %i.ha = zext nneg i8 %.1.i10.i92 to i32
  %spec.select.i8.i88.1 = add i32 %i.gx, %i.ha
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i87, i64 56
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !43
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !48
  %i.hf = trunc i64 %i.he to i32
  %i.hg = add i32 %spec.select.i8.i88.1, %i.hf
  br label %.sink.split.i9.i89.1

bb.af:                                            ; preds = %.lr.ph.i7.i85.1, %.lr.ph.i7.i85.1
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i87, i64 48
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !63
  br label %.sink.split.i9.i89.1

.sink.split.i9.i89.1:                             ; preds = %bb.af, %bb.ae
  %.sink.i.i90.1 = phi i32 [ %i.hg, %bb.ae ], [ %i.hi, %bb.af ] ; 2 uses
  %.1.ph.i.i91.1 = phi i8 [ 1, %bb.ae ], [ 0, %bb.af ]
  store i32 %.sink.i.i90.1, ptr %i.x, align 4, !tbaa !84
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split.i9.i89.1, %.lr.ph.i7.i85.1
  %i.hj = phi i32 [ %i.gx, %.lr.ph.i7.i85.1 ], [ %.sink.i.i90.1, %.sink.split.i9.i89.1 ] ; 3 uses
  %.1.i10.i92.1 = phi i8 [ %.1.i10.i92, %.lr.ph.i7.i85.1 ], [ %.1.ph.i.i91.1, %.sink.split.i9.i89.1 ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i87, i64 80 ; 2 uses
  %niter165.next.1 = add i64 %niter165, 2         ; 2 uses
  %niter165.ncmp.1 = icmp eq i64 %niter165.next.1, %unroll_iter164
  br i1 %niter165.ncmp.1, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit98.loopexit.unr-lcssa, label %.lr.ph.i7.i85

_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit98.loopexit.unr-lcssa: ; preds = %bb.ag
  %lcmp.mod161.not = trunc i64 %i.ek to i1
  br i1 %lcmp.mod161.not, label %.lr.ph.i7.i85.epil.preheader, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit98

.lr.ph.i7.i85.epil.preheader:                     ; preds = %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit98.loopexit.unr-lcssa, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83
  %.06.i.i86.epil.init = phi i8 [ 0, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83 ], [ %.1.i10.i92.1, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit98.loopexit.unr-lcssa ]
  %.sroa.01.05.i.i87.epil.init = phi ptr [ %i.ec, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83 ], [ %i.hk, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit98.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init = phi i32 [ %.promoted.i.i84, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i83 ], [ %i.hj, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit98.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod163 = trunc i64 %i.ek to i1
  call void @llvm.assume(i1 %lcmp.mod163)
  %i.hl = load i32, ptr %.sroa.01.05.i.i87.epil.init, align 8, !tbaa !41
  switch i32 %i.hl, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit98 [
    i32 2, label %bb.ai
    i32 0, label %bb.ai
    i32 1, label %bb.ah
  ]

bb.ah:                                            ; preds = %.lr.ph.i7.i85.epil.preheader
  %i.hm = zext nneg i8 %.06.i.i86.epil.init to i32
  %spec.select.i8.i88.epil = add i32 %.epil.init, %i.hm
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i87.epil.init, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !43
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !48
  %i.hr = trunc i64 %i.hq to i32
  %i.hs = add i32 %spec.select.i8.i88.epil, %i.hr
  br label %.sink.split.i9.i89.epil

bb.ai:                                            ; preds = %.lr.ph.i7.i85.epil.preheader, %.lr.ph.i7.i85.epil.preheader
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i87.epil.init, i64 8
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !63
  br label %.sink.split.i9.i89.epil

.sink.split.i9.i89.epil:                          ; preds = %bb.ai, %bb.ah
  %.sink.i.i90.epil = phi i32 [ %i.hs, %bb.ah ], [ %i.hu, %bb.ai ] ; 2 uses
  store i32 %.sink.i.i90.epil, ptr %i.x, align 4, !tbaa !84
  br label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit98

_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit98: ; preds = %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit98.loopexit.unr-lcssa, %.sink.split.i9.i89.epil, %.lr.ph.i7.i85.epil.preheader, %._ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit98_crit_edge
  %i.hv = phi i32 [ %.pre108, %._ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit98_crit_edge ], [ %i.hj, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbjj.exit98.loopexit.unr-lcssa ], [ %.epil.init, %.lr.ph.i7.i85.epil.preheader ], [ %.sink.i.i90.epil, %.sink.split.i9.i89.epil ]
  %i.hw = add i32 %i.hv, 1
  store i32 %i.hw, ptr %i.x, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7jsonnet8internal14FixIndentation6fieldsERSt6vectorINS0_11ObjectFieldESaIS3_EERKNS1_6IndentEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 4 uses
  %5 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 4 uses
  %6 = alloca %"struct.jsonnet::internal::FixIndentation::Indent", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !96   ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !276    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !276  ; 2 uses
  %.not335342 = icmp eq ptr %i.c, %i.e
  br i1 %.not335342, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 42 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 4
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit300, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit300
  %.0344 = phi i1 [ true, %.lr.ph ], [ false, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit300 ] ; 6 uses
  %.sroa.0319.0343 = phi ptr [ %i.c, %.lr.ph ], [ %i.nh, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit300 ] ; 42 uses
  br i1 %.0344, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.f, align 4, !tbaa !93
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.f, align 4, !tbaa !93
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = load i32, ptr %.sroa.0319.0343, align 8, !tbaa !279
  switch i32 %i.k, label %bb.cc [
    i32 4, label %bb.e
    i32 0, label %bb.bi
    i32 1, label %bb.ab
    i32 3, label %bb.ah
    i32 2, label %bb.ai
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0319.0343, i64 8
  %not..066 = xor i1 %.0344, true
  %i.m = or i1 %3, %not..066                      ; 2 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !96
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !30   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0319.0343, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30   ; 3 uses
  %.not2527.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not2527.i.i.i, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i.i, label %.lr.ph33.i.i.i

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i.i: ; preds = %bb.e
  %.promoted.i12.i.i = load i32, ptr %i.f, align 4 ; 2 uses
  br i1 %i.m, label %bb.j, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit

.lr.ph33.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.018.031.i.i.i = phi ptr [ %i.t, %bb.f ], [ %i.o, %bb.e ] ; 3 uses
  %i.r = load i32, ptr %.sroa.018.031.i.i.i, align 8, !tbaa !41
  %.not.i.i.i = icmp eq i32 %i.r, 1
  br i1 %.not.i.i.i, label %bb.f, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph33.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.i, i64 8
  store i32 %i.n, ptr %i.s, align 8, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i.i.i, %.lr.ph33.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.i, i64 40 ; 2 uses
  %.not26.i.i.i = icmp eq ptr %i.t, %i.q
  br i1 %.not26.i.i.i, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i, label %.lr.ph33.i.i.i

_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i: ; preds = %bb.f
  %.promoted.i.i.i = load i32, ptr %i.f, align 4
  %i.u = zext i1 %i.m to i8
  br label %.lr.ph.i7.i.i

._crit_edge.i.i.i:                                ; preds = %bb.i
  %i.v = trunc nuw i8 %.1.i10.i.i to i1
  br i1 %i.v, label %bb.j, label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit

.lr.ph.i7.i.i:                                    ; preds = %bb.i, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i
  %.06.i.i.i = phi i8 [ %.1.i10.i.i, %bb.i ], [ %i.u, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i ] ; 2 uses
  %.sroa.01.05.i.i.i = phi ptr [ %i.ai, %bb.i ], [ %i.o, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i ] ; 4 uses
  %i.w = phi i32 [ %i.ah, %bb.i ], [ %.promoted.i.i.i, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i ] ; 2 uses
  %i.x = load i32, ptr %.sroa.01.05.i.i.i, align 8, !tbaa !41
  switch i32 %i.x, label %bb.i [
    i32 2, label %bb.g
    i32 0, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph.i7.i.i, %.lr.ph.i7.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !63
  br label %.sink.split.i9.i.i

bb.h:                                             ; preds = %.lr.ph.i7.i.i
  %i.aa = zext nneg i8 %.06.i.i.i to i32
  %spec.select.i8.i.i = add i32 %i.w, %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !48
  %i.af = trunc i64 %i.ae to i32
  %i.ag = add i32 %spec.select.i8.i.i, %i.af
  br label %.sink.split.i9.i.i

.sink.split.i9.i.i:                               ; preds = %bb.h, %bb.g
  %.sink.i.i.i = phi i32 [ %i.ag, %bb.h ], [ %i.z, %bb.g ] ; 2 uses
  %.1.ph.i.i.i = phi i8 [ 1, %bb.h ], [ 0, %bb.g ]
  store i32 %.sink.i.i.i, ptr %i.f, align 4, !tbaa !84
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i9.i.i, %.lr.ph.i7.i.i
  %i.ah = phi i32 [ %i.w, %.lr.ph.i7.i.i ], [ %.sink.i.i.i, %.sink.split.i9.i.i ] ; 3 uses
  %.1.i10.i.i = phi i8 [ %.06.i.i.i, %.lr.ph.i7.i.i ], [ %.1.ph.i.i.i, %.sink.split.i9.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i, i64 40 ; 2 uses
  %.not.i11.i.i = icmp eq ptr %i.ai, %i.q
  br i1 %.not.i11.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i7.i.i

bb.j:                                             ; preds = %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i.i, %._crit_edge.i.i.i
  %i.aj = phi i32 [ %.promoted.i12.i.i, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i.i ], [ %i.ah, %._crit_edge.i.i.i ]
  %i.ak = add i32 %i.aj, 1
  br label %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit

_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit: ; preds = %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i.i, %._crit_edge.i.i.i, %bb.j
  %i.al = phi i32 [ %.promoted.i12.i.i, %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.thread.i.i ], [ %i.ah, %._crit_edge.i.i.i ], [ %i.ak, %bb.j ]
  %i.am = add i32 %i.al, 5                        ; 2 uses
  store i32 %i.am, ptr %i.f, align 4, !tbaa !93
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0319.0343, i64 32
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !96
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !30 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0319.0343, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !30 ; 3 uses
  %.not2527.i.i.i67 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not2527.i.i.i67, label %._crit_edge.i.i.i85.thread, label %.lr.ph33.i.i.i68

.lr.ph33.i.i.i68:                                 ; preds = %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit, %bb.k
  %.sroa.018.031.i.i.i69 = phi ptr [ %i.au, %bb.k ], [ %i.ap, %_ZN7jsonnet8internal14FixIndentation4fillERSt6vectorINS0_13FodderElementESaIS3_EEbbj.exit ] ; 3 uses
  %i.as = load i32, ptr %.sroa.018.031.i.i.i69, align 8, !tbaa !41
  %.not.i.i.i70 = icmp eq i32 %i.as, 1
  br i1 %.not.i.i.i70, label %bb.k, label %.sink.split.i.i.i71

.sink.split.i.i.i71:                              ; preds = %.lr.ph33.i.i.i68
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.i69, i64 8
  store i32 %i.ao, ptr %i.at, align 8, !tbaa !63
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i.i.i71, %.lr.ph33.i.i.i68
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.018.031.i.i.i69, i64 40 ; 2 uses
  %.not26.i.i.i72 = icmp eq ptr %i.au, %i.ar
  br i1 %.not26.i.i.i72, label %_ZN7jsonnet8internal14FixIndentation10setIndentsERSt6vectorINS0_13FodderElementESaIS3_EEjj.exit.i.i73, label %.lr.ph33.i.i.i68

end_hunk_4
